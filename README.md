# Prácticas SQL — Analista de Datos

**Autora:** Salva, María Gimena
**Motor:** SQL Server (SQL Server Management Studio)

Repositorio con las prácticas de SQL del curso de Analista de Datos.

## Contenido

| Archivo | Práctica | Qué hace |
|---|---|---|
| `modulo2_unidad1_diseno.sql` | Diseño de tablas | Crea las tablas `clientes` y `productos` de un sistema de ventas (DDL), con comentarios que justifican cada tipo de dato. |
| `bodegatech_inventario.sql` | DDL y DML: inventario de BodegaTech | Crea la tabla `inventario` con clave primaria, carga 10 productos, registra las ventas del día, marca un producto como descontinuado y valida la carga con `SELECT`. |
| `capturas/` | Evidencia | Capturas de la ejecución de cada script en SSMS. |

## Cómo ejecutar los scripts

1. Abrir SQL Server Management Studio y conectarse al servidor.
2. Crear la base de datos de práctica (una sola vez):
   ```sql
   CREATE DATABASE PRACTICA;
   ```
3. Abrir el script (`Archivo → Abrir → Archivo…`) y presionar **Ejecutar** (F5).
4. Los scripts comienzan con `USE PRACTICA;`, por lo que las tablas se crean dentro de esa base.

## Validación

Ambos scripts fueron ejecutados contra SQL Server Express (versión 17) y finalizaron sin errores de sintaxis. Las capturas de la ejecución están en la carpeta `capturas/`.

Resultado esperado de `bodegatech_inventario.sql`:

- 10 productos cargados.
- Stocks finales: Laptop Pro 15 = 12, Mouse Inalámbrico = 68, Auriculares BT Pro = 30.
- Webcam HD 1080p con `activo = 0`.
