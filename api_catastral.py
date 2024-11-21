# url del api: http://127.0.0.1:8000/docs

from fastapi import FastAPI
import pandas as pd

# Cargar el archivo CSV
df = pd.read_csv("dataset_catastral.csv")

app = FastAPI()

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
