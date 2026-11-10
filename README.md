# Mi-primera-base-de-datos

# Mi primera base de datos en PostgreSQL con Docker y DataGrip

## 1. Introducción

El objetivo de esta práctica es instalar y ejecutar PostgreSQL mediante Docker, configurar DataGrip como entorno de trabajo y crear una primera base de datos desde una consola SQL.

## 2. Herramientas utilizadas

- Docker Desktop.
- PostgreSQL (imagen oficial de Docker).
- DataGrip de JetBrains.
- Windows PowerShell.

## 3. Ejecución de PostgreSQL con Docker

Para crear e iniciar el contenedor de PostgreSQL se utilizó el siguiente comando:

```powershell
docker run --name postgres-principiante -e POSTGRES_PASSWORD=yourpassword -p 5435:5432 -d postgres
```

**Descripción del comando:**

- `--name`: asigna el nombre postgres-principiante al contenedor.
- `POSTGRES_PASSWORD`: establece la contraseña del usuario postgres.
- `-p 5435:5432`: conecta el puerto 5435 del equipo con el puerto 5432 del contenedor.
- `-d`: ejecuta el contenedor en segundo plano.
- `postgres`: utiliza la imagen oficial de PostgreSQL.

Para comprobar que el contenedor está funcionando:

```powershell
docker ps
```

## 4. Configuración de DataGrip

Se creó una nueva conexión de tipo PostgreSQL en DataGrip con los siguientes parámetros:

| Parámetro | Configuración |
|---|---|
| Host | localhost |
| Port | 5435 |
| User | postgres |
| Password | yourpassword |
| Database | postgres |

Después se utilizó la opción **Test Connection** para comprobar que la conexión funcionara correctamente.

## 5. Creación de la primera base de datos

Desde una nueva consola SQL en DataGrip se ejecutó:

```sql
CREATE DATABASE my_first_database
WITH TEMPLATE template0;
```

El comando permitió crear una base de datos independiente utilizando `template0` como plantilla.

## 6. Verificación de la base de datos

Para comprobar que la base de datos fue creada correctamente se ejecutó:

```sql
SELECT datname
FROM pg_database
WHERE datname = 'my_first_database';
```

El resultado esperado es la aparición del nombre `my_first_database`.

## 7. Conclusión

Mediante esta práctica se logró iniciar PostgreSQL utilizando Docker, configurar una conexión desde DataGrip y crear una primera base de datos mediante instrucciones SQL. También se comprobó que el contenedor estuviera activo y que la base de datos existiera correctamente.

