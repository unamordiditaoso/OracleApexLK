# Instalación de APEX On-Premise

Este repositorio contiene guías e instrucciones para la instalación y configuración de **Oracle Application Express (APEX)** on-premise junto con **Oracle REST Data Services (ORDS)** y **Apache Tomcat**. Se detallan los pasos básicos, así como las complicaciones más frecuentes que pueden surgir durante el proceso.

## Requisitos Previos

1. **Oracle APEX**\
   Versión recomendada acorde a la base de datos Oracle instalada.
2. **Oracle REST Data Services (ORDS)**\
   Utilizado para exponer APEX a través de servicios REST.
3. **Apache Tomcat**\
   Servidor web para alojar ORDS.
4. **Base de Datos Oracle**\
   Idealmente la misma versión o superior a la requerida por APEX.

## Pasos de Instalación Básica

1. **Instalar APEX**

   - Descarga la versión de APEX que necesites.
   - Descomprime el archivo en la ruta preferida (ejemplo: `C:\apex`).
   - Ejecuta los scripts `apexins.sql` y `apxchpwd.sql` siguiendo la documentación oficial.

2. **Instalar ORDS**

   - Descarga ORDS y descomprime el contenido (ejemplo: `C:\ords`).
   - Configura ORDS para conectarse a tu base de datos Oracle (ejecuta `java -jar ords.war install`).
   - **Atención**: El puerto por defecto de ORDS suele ser **8080**. Si vas a usarlo junto a Tomcat, deberás cambiarlo.

3. **Instalar y Configurar Tomcat**

   - Descarga e instala Tomcat (ejemplo: `C:\Tomcat`).
   - Para desplegar ORDS en Tomcat, copia `ords.war` al directorio `webapps` de Tomcat.
   - **Atención**: Tomcat también usa el puerto **8080** por defecto.\
     Debes asegurarte de que ORDS y Tomcat no estén en el mismo puerto.
     - Por ejemplo, puedes dejar Tomcat en **8080** y configurar ORDS en **8081**, o viceversa.

## Complicaciones Frecuentes

1. **Rutas de Carpetas Diferentes según Usuario**\
   Al instalar APEX on-premise y descomprimir sus archivos, la ruta puede variar dependiendo de si usas la cuenta de administrador o una cuenta de usuario distinta. Esto también aplica a las carpetas donde se ubican ORDS y Tomcat.

   - Se recomienda unificar la ruta de instalación (por ejemplo, usar siempre `C:\apex`, `C:\ords` y `C:\tomcat`), o documentar claramente las diferencias si hay varios entornos.

2. **Puertos Duplicados (8080)**\
   ORDS y Tomcat comparten el mismo puerto por defecto (**8080**). Si ambos se inician sin modificar este parámetro, se generará un conflicto.

   - La solución es modificar el puerto en al menos uno de ellos. Por ejemplo:
     - Tomcat en `server.xml`: `<Connector port="8080" ... />` -> Cambiar a otro puerto (p. ej. `8585`).
     - ORDS en el archivo de configuración o al momento de la instalación.

3. **Conexión entre Aplicaciones**\
   Al conectar APEX con ORDS y Tomcat, es fundamental asegurarse de que cada servicio (APEX, ORDS, Tomcat) reconozca y tenga acceso a las rutas adecuadas. Los archivos de configuración de ORDS deben apuntar correctamente a la base de datos Oracle y a la ruta de APEX.
