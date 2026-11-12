# Proyecto de Logística - Pre-Entrega SQL Server

## Descripción del Proyecto
Este proyecto implementa una base de datos relacional llamada `LogisticaDB` orientada al control y seguimiento de operaciones logísticas. Permite administrar depósitos (almacenes), personal de transporte y el estado de los envíos de carga.

## Estructura del Repositorio
- `README.md`: Documentación general del proyecto.
- `scripts/01_tablas_base.sql`: Script DDL para la creación de la base de datos, tablas, tipos de datos, claves primarias y restricciones (`PRIMARY KEY`, `FOREIGN KEY`, `NOT NULL`).
- `scripts/02_consultas_iniciales.sql`: Script DML con la inserción de registros de prueba (mínimo 5 por tabla) y las consultas de validación (`SELECT`, filtros con `WHERE`, operadores lógicos y manejo de `IS NULL`).

## Pasos para la Ejecución
1. Conectar la instancia de SQL Server (ej. `.\SQLEXPRESS`) en Visual Studio Code utilizando la extensión `mssql`.
2. Ejecutar de forma secuencial el archivo `01_tablas_base.sql`.
3. Ejecutar el archivo `02_consultas_iniciales.sql` para poblar las tablas y verificar las consultas analíticas.