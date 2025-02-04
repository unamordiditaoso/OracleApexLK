# APEX On-Premise

Este repositorio contiene guías e instrucciones para la instalación y configuración de **Oracle Application Express (APEX)** on-premise junto con **Oracle REST Data Services (ORDS)** y **Apache Tomcat**. Se detallan los pasos básicos, así como las complicaciones más frecuentes que pueden surgir durante el proceso.

## Requisitos de Instalación

- **Oracle APEX 24.2**
- **Oracle Database 21c Express**
- **Oracle REST Data Services 24.4.0.345.1601**
- **Java 21 LTS**
- **Tomcat 9**

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
   - **Atención**: El puerto por defecto de ORDS suele ser **8080**. Si se va a usar junto a Tomcat, se deberá cambiarlo.

3. **Instalar y Configurar Tomcat**

   - Descarga e instala Tomcat (ejemplo: `C:\Tomcat`).
   - Para desplegar ORDS en Tomcat, copia `ords.war` al directorio `webapps` de Tomcat.
   - **Atención**: Tomcat también usa el puerto **8080** por defecto.\
     Debes asegurarte de que ORDS y Tomcat no estén en el mismo puerto.
     - Por ejemplo, se puede dejar Tomcat en **8080** y configurar ORDS en **8585**, o viceversa.

## Complicaciones Frecuentes

1. **Rutas de Carpetas Diferentes según Usuario**\
   Al instalar APEX on-premise y descomprimir sus archivos, la ruta puede variar dependiendo de si se usa la cuenta de administrador o una cuenta de usuario distinta. Esto también aplica a las carpetas donde se ubican ORDS y Tomcat.

   - Se recomienda unificar la ruta de instalación (por ejemplo, usar siempre `C:\apex`, `C:\ords` y `C:\tomcat`), o documentar claramente las diferencias si hay varios entornos.

2. **Puertos Duplicados (8080)**\
   ORDS y Tomcat comparten el mismo puerto por defecto (**8080**). Si ambos se inician sin modificar este parámetro, se generará un conflicto.

   - La solución es modificar el puerto en al menos uno de ellos. Por ejemplo:
     - Tomcat en `server.xml`: `<Connector port="8080" ... />` -> Cambiar a otro puerto (p. ej. `8585`).
     - ORDS en el archivo de configuración o al momento de la instalación.

3. **Conexión entre Aplicaciones**\
   Al conectar APEX con ORDS y Tomcat, es fundamental asegurarse de que cada servicio (APEX, ORDS, Tomcat) reconozca y tenga acceso a las rutas adecuadas. Los archivos de configuración de ORDS deben apuntar correctamente a la base de datos Oracle y a la ruta de APEX.

4. **Instalación Bloqueada y Error con el Listener**\
   En uno de los portátiles de empresa, la instalación en la base de datos se quedó bloqueada. Al intentar borrar todo para reiniciar la instalación, se produjo un error con el listener que impedía continuar el proceso.

---

## Pasos de Instalación Detallados

### DESCARGAR SOFTWARE

1. **Base de Datos Oracle XE 21c**\
   [Descarga](https://www.oracle.com/es/database/technologies/xe-downloads.html)
2. **Oracle APEX 24.2**\
   [Descarga](https://www.oracle.com/tools/downloads/apex-downloads/)
3. **Oracle REST Data Services 24.4.0.345.1601**\
   [Descarga](https://www.oracle.com/database/sqldeveloper/technologies/db-actions/download/)
4. **JDK para Windows (JDK21 LTS)**\
   [Descarga](https://www.oracle.com/java/technologies/downloads/#jdk22-windows)
5. **Tomcat 9**\
   [Descarga](https://tomcat.apache.org/download-90.cgi)

---

### PASO 1: INSTALAR LA BASE DE DATOS ORACLE XE 21C

(Instalar según el asistente y configuración deseada.)

---

### PASO 2: INSTALAR ORACLE APEX 24.1

Nos ubicamos en la carpeta `C:/apex`

Abrimos SQL\*Plus e iniciamos sesión como SYS DBA:

```
SQL> ALTER SESSION SET CONTAINER = XEPDB1;
SQL> SHOW CON_NAME;

CON_NAME
------------------------------
XEPDB1

SQL> SHOW USER;
USER is "SYS"  
```

Crear tablespace para APEX:

```
CREATE TABLESPACE APEX datafile 'C:\app\Admin\product\21c\oradata\XE\XEPDB1\apex_data01.dbf' SIZE 1G 
EXTENT MANAGEMENT LOCAL AUTOALLOCATE SEGMENT SPACE MANAGEMENT AUTO;
```

Ejecutar el script de instalación de APEX:

```
@apexins.sql APEX APEX TEMP /i/
```

Luego:

```
SQL> ALTER SESSION SET CONTAINER = XEPDB1;
SQL> @apxchpwd.sql
```

Usuario administrador: [ADMIN]\
Email: (opcional)\
Pass: (contraseña deseada)

Configurar el APEX\_PUBLIC\_USER:

```
SQL> ALTER USER APEX_PUBLIC_USER ACCOUNT UNLOCK;
SQL> ALTER USER APEX_PUBLIC_USER IDENTIFIED BY Oracle99;
SQL> CREATE PROFILE APEX_USER_PROFILE LIMIT PASSWORD_LIFE_TIME UNLIMITED;
SQL> ALTER USER APEX_PUBLIC_USER PROFILE APEX_USER_PROFILE;

SQL> EXEC DBMS_XDB.SETHTTPPORT(0);

BEGIN
    DBMS_NETWORK_ACL_ADMIN.APPEND_HOST_ACE(
        host => '*',
        ace => xs$ace_type(privilege_list => xs$name_list('connect'),
                           principal_name => 'APEX_240100',
                           principal_type => xs_acl.ptype_db)
    );
END;
/

SQL> SHOW PARAMETER job_queue_processe;
SQL> ALTER SYSTEM SET JOB_QUEUE_PROCESSES = 20;

SQL> @apex_rest_config.sql
```

Instalar el paquete en español si se desea:

```
ALTER SESSION SET CONTAINER = XEPDB1;
@C:\apex\builder\es\load_es.sql
```

---

### PASO 3: INSTALAR JDK 17

Abrir el asistente e instalarlo en el entorno Windows.

---

### PASO 4: INSTALAR EL ORDS

Copiar la carpeta `images` de `C:\apex\images` y pegarla en `C:\ords`.

Crear la carpeta `config` en `C:\ords`.

Ingresar a SQL\*Plus como SYS DBA:

```
SQL> ALTER SESSION SET CONTAINER = XEPDB1;
SQL> CREATE TABLESPACE ORDS datafile 'C:\app\User\product\21c\oradata\XE\XEPDB1\ords_data01.dbf' 
SIZE 1G EXTENT MANAGEMENT LOCAL AUTOALLOCATE SEGMENT SPACE MANAGEMENT AUTO;
```

Salir de SQL\*Plus y, desde CMD:

```
c:\ords\bin>ords --config C:\ords\config install
```

Archivos estáticos: `c:\ords\images`

Para inicializar el ORDS en modo standalone:

```
c:\ords\bin>ords --config C:\ords\config serve
```

---

## Conclusiones

- La instalación no es intuitiva.
- Solo se puede acceder a Workspaces creados en la red local.
- Interfaz idéntica a la usada en la versión de Cloud.
- Entorno muy útil para aprendizaje.

