# BodegaTech — Inventario en SQL

**Autora:** Salva, María Gimena

**Motor:** SQL Server (SQL Server Management Studio)

## Descripción

Práctica de DDL y DML: migración del inventario de BodegaTech a una base de datos SQL.

El script `bodegatech_inventario.sql`:

- **DDL:** elimina la tabla si existe (`DROP TABLE IF EXISTS`) y crea la tabla `inventario` con clave primaria en `id_producto`.
- **DML:** carga los 10 productos (`INSERT INTO`), registra las ventas del día (`UPDATE` con `WHERE`), marca la Webcam HD 1080p como descontinuada y valida la carga con `SELECT * FROM inventario`.

## Cómo ejecutarlo

1. Abrir SQL Server Management Studio y conectarse al servidor.
2. Tener creada la base de datos `PRACTICA` (`CREATE DATABASE PRACTICA;`).
3. Abrir `bodegatech_inventario.sql` y presionar **Ejecutar** (F5).

## Validación

El script fue ejecutado en SQL Server Express (versión 17) sin errores de sintaxis. La captura de la ejecución es el archivo `ejecucion_bodegatech.png`.

Resultado obtenido:

- 10 productos cargados.
- Stocks finales: Laptop Pro 15 = 12, Mouse Inalámbrico = 68, Auriculares BT Pro = 30.
- Webcam HD 1080p con `activo = 0`.
