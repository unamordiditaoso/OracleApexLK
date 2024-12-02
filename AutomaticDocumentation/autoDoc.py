import os
from transformers import pipeline

# Configuración
input_path = "f100/application/pages"
output_path = "f100/application/documentation"
os.makedirs(output_path, exist_ok=True)

# Carga del modelo de HuggingFace para generación de documentación
# Usaremos un modelo más grande para mejores resultados
doc_generator = pipeline("summarization", model="t5-base")

# Función para procesar y documentar un archivo SQL
def document_sql(file_number):
    input_filename = f"page_000{file_number:02d}.sql"
    output_filename = f"doc_page_000{file_number:02d}.md"

    input_filepath = os.path.join(input_path, input_filename)
    output_filepath = os.path.join(output_path, output_filename)

    if not os.path.exists(input_filepath):
        print(f"Archivo no encontrado: {input_filename}")
        return

    # Leer el contenido del archivo SQL
    with open(input_filepath, "r", encoding="utf-8") as file:
        sql_content = file.read()

    # Generar una introducción personalizada
    intro = f"# Documentación del archivo {input_filename}\n\n"
    intro += (
        "Este documento proporciona una descripción detallada de las funciones de {input_filename}, "
        "procedimientos y estructuras presentes en el archivo SQL. A continuación, "
        "se presenta el análisis y explicación del contenido.\n\n"
    )

    # Preprocesar el contenido SQL en bloques más pequeños
    sql_blocks = [sql_content[i:i + 1024] for i in range(0, len(sql_content), 1024)]
    summarized_blocks = []

    for block in sql_blocks:
        try:
            summary = doc_generator(block, max_length=320, min_length=50, do_sample=False)
            summarized_blocks.append(summary[0]['summary_text'])
        except Exception as e:
            summarized_blocks.append(f"[Error procesando bloque]: {str(e)}")

    # Combinar la introducción con los bloques resumidos
    documentation = intro + "\n".join([f"### Bloque {i + 1}\n{block}\n" for i, block in enumerate(summarized_blocks)])

    # Guardar la documentación generada
    with open(output_filepath, "w", encoding="utf-8") as file:
        file.write(documentation)

    print(f"Documentación generada para: {input_filename}")

# Procesar todos los archivos
for file_number in range(14):
    document_sql(file_number)

print("Proceso finalizado.")