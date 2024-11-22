#http://127.0.0.1:8000/docs#/


from fastapi import FastAPI, HTTPException, Query
from pydantic import BaseModel
import pandas as pd
import os

# Ruta al archivo CSV
CSV_FILE_PATH = "dataset_catastral.csv"

# Verificar si el archivo CSV existe
if os.path.exists(CSV_FILE_PATH):
    df = pd.read_csv(CSV_FILE_PATH)
else:
    raise FileNotFoundError(f"El archivo {CSV_FILE_PATH} no existe.")

# Crear la aplicación FastAPI
app = FastAPI()

# Modelo para nuevas propiedades
class Property(BaseModel):
    Dirección: str
    Valor_Catastral_EUR: int
    Superficie_m2: int
    Año_de_Construcción: int
    Año_Ultima_Reforma: int


@app.get("/", summary="Bienvenida")
def read_root():
    """
    Mensaje de bienvenida a la API.
    """
    return {"message": "Bienvenido a la API Catastral"}

@app.get("/properties/search-by-name", summary="Buscar propiedades por dirección")
def search_properties(
    keyword: str = Query("", description="Término para buscar en direcciones")
):
    """
    Buscar propiedades que coincidan parcialmente con el término dado en la dirección.
    """
    # Asegurarse de que la columna 'Dirección' no tenga valores nulos
    df["Dirección"] = df["Dirección"].fillna("")

    # Filtrar el DataFrame basado en el término de búsqueda
    filtered_df = df[df["Dirección"].str.contains(keyword, case=False, na=False)]

    # Si no hay resultados, devolver un mensaje claro
    if filtered_df.empty:
        raise HTTPException(status_code=404, detail="No se encontraron propiedades con la dirección indicada.")

    return filtered_df.to_dict(orient="records")

@app.get("/properties/{property_id}", summary="Obtener propiedad por ID")
def get_property(property_id: int):
    """
    Obtener una propiedad específica por su ID.
    """
    property_data = df[df["ID"] == property_id]
    if property_data.empty:
        raise HTTPException(status_code=404, detail="Propiedad no encontrada")
    return property_data.to_dict(orient="records")[0]

@app.get("/properties/", summary="Listar propiedades con paginación")
def get_properties(
    skip: int = Query(0, description="Número de registros a omitir"),
    limit: int = Query(10, description="Cantidad máxima de registros a devolver"),
    sort_by: str = Query("ID", description="Columna por la que ordenar los resultados"),
    order: str = Query("asc", description="Orden (asc o desc)")
):
    """
    Obtener propiedades con soporte para paginación y ordenamiento.
    """
    if sort_by not in df.columns:
        raise HTTPException(status_code=400, detail=f"Columna '{sort_by}' no válida")
    sorted_df = df.sort_values(by=sort_by, ascending=(order == "asc"))
    total = len(sorted_df)
    items = sorted_df.iloc[skip: skip + limit].to_dict(orient="records")
    return {"total": total, "skip": skip, "limit": limit, "items": items}


@app.post("/properties/", summary="Añadir una nueva propiedad")
def add_property(property: Property):
    """
    Agregar una nueva propiedad al archivo CSV con generación automática del ID.
    """
    global df

    # Calcular el próximo ID automáticamente
    if df.empty:
        next_id = 1
    else:
        next_id = df["ID"].max() + 1

    # Crear una lista con los valores de la nueva propiedad
    new_row = [
        next_id,
        property.Dirección,
        property.Valor_Catastral_EUR,
        property.Superficie_m2,
        property.Año_de_Construcción,
        property.Año_Ultima_Reforma,
    ]

    # Escribir directamente la nueva fila en el archivo CSV
    with open(CSV_FILE_PATH, mode="a", encoding="utf-8") as file:
        file.write(",".join(map(str, new_row)) + "\n")
    
    # Actualizar el DataFrame en memoria
    df.loc[len(df)] = new_row

    return {"message": f"Propiedad agregada exitosamente con ID {next_id}."}