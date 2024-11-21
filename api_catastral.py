# url del api: http://127.0.0.1:8000/docs

from fastapi import FastAPI
from pydantic import BaseModel
import pandas as pd

# Cargar el dataset
data = {
    "ID": range(1, 101),
    "Dirección": [f"Calle {i}" for i in range(1, 101)],
    "Valor Catastral (EUR)": [i * 1000 for i in range(100, 200)],
    "Superficie (m²)": [i * 10 for i in range(50, 150)],
    "Año de Construcción": [2000 + (i % 21) for i in range(1, 101)],
    "Año Última Reforma": [2005 + (i % 18) for i in range(1, 101)]
}
df = pd.DataFrame(data)

# Crear la app de FastAPI
app = FastAPI()

# Modelo de datos para insertar nuevos registros
class Property(BaseModel):
    ID: int
    Dirección: str
    Valor_Catastral_EUR: int
    Superficie_m2: int
    Año_de_Construcción: int
    Año_Ultima_Reforma: int

@app.get("/")
def read_root():
    return {"message": "Bienvenido a la API Catastral"}

@app.get("/properties/")
def get_properties(skip: int = 0, limit: int = 10):
    """
    Obtener propiedades con paginación.
    """
    return df.iloc[skip: skip + limit].to_dict(orient="records")

@app.get("/properties/{property_id}")
def get_property(property_id: int):
    """
    Obtener una propiedad por ID.
    """
    property_data = df[df["ID"] == property_id]
    if property_data.empty:
        return {"error": "Propiedad no encontrada"}
    return property_data.to_dict(orient="records")[0]

@app.post("/properties/")
def add_property(property: Property):
    """
    Agregar una nueva propiedad.
    """
    global df
    new_property = {
        "ID": property.ID,
        "Dirección": property.Dirección,
        "Valor Catastral (EUR)": property.Valor_Catastral_EUR,
        "Superficie (m²)": property.Superficie_m2,
        "Año de Construcción": property.Año_de_Construcción,
        "Año Última Reforma": property.Año_Ultima_Reforma,
    }
    df = pd.concat([df, pd.DataFrame([new_property])], ignore_index=True)
    return {"message": "Propiedad agregada exitosamente"}
