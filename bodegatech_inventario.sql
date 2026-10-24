-- ══════════════════════════════════════════
-- BodegaTech — Script de Inventario
-- Autora: Salva, María Gimena
-- Fecha: 24/10/2026
-- Motor: SQL Server (SSMS)
-- ══════════════════════════════════════════

-- Trabajamos dentro de la base de datos de práctica
USE PRACTICA;
GO

-- ── SECCIÓN DDL ──────────────────────────
-- DDL (Data Definition Language): define la ESTRUCTURA de la tabla

-- DROP TABLE: elimina la tabla si ya existe,
-- así el script se puede volver a ejecutar sin errores
DROP TABLE IF EXISTS inventario;
GO

-- CREATE TABLE: crea la tabla inventario con su clave primaria
CREATE TABLE inventario (
    -- INT: número entero; PRIMARY KEY garantiza que cada producto tenga un id único y no vacío
    id_producto      INT PRIMARY KEY,
    -- VARCHAR(100): texto de largo variable, ocupa solo el espacio que usa cada nombre
    nombre_producto  VARCHAR(100),
    -- VARCHAR(50): las categorías son textos cortos
    categoria        VARCHAR(50),
    -- DECIMAL(10,2): precio exacto con 2 decimales; no se usa FLOAT porque redondea y genera errores con dinero
    precio_unitario  DECIMAL(10,2),
    -- INT: las unidades en stock son cantidades enteras
    stock_actual     INT,
    -- INT: el umbral de reposición también es una cantidad entera
    stock_minimo     INT,
    -- DATE: guarda solo la fecha de ingreso, sin hora
    fecha_ingreso    DATE,
    -- TINYINT: número pequeño (0 a 255) para indicar 1 = disponible, 0 = descontinuado.
    -- En SQL Server se escribe TINYINT sin el (1), que es propio de MySQL
    activo           TINYINT
);
GO

-- ── SECCIÓN DML ──────────────────────────
-- DML (Data Manipulation Language): carga y modifica los DATOS

-- INSERT INTO: carga de los 10 productos iniciales
-- Se indican los nombres de las columnas para asegurar que cada valor vaya a su lugar
INSERT INTO inventario (id_producto, nombre_producto, categoria, precio_unitario, stock_actual, stock_minimo, fecha_ingreso, activo)
VALUES
    (1,  'Laptop Pro 15',       'Computación',    1200.00, 15, 3,  '2024-01-10', 1),
    (2,  'Mouse Inalámbrico',   'Accesorios',       28.00, 80, 10, '2024-01-10', 1),
    (3,  'Monitor 4K 27"',      'Computación',     450.00, 12, 2,  '2024-01-15', 1),
    (4,  'Teclado Mecánico',    'Accesorios',       95.00, 40, 5,  '2024-01-15', 1),
    (5,  'Laptop Basic 14',     'Computación',     650.00, 20, 3,  '2024-02-01', 1),
    (6,  'Auriculares BT Pro',  'Audio',           120.00, 35, 5,  '2024-02-01', 1),
    (7,  'Hub USB-C 7 puertos', 'Accesorios',       45.00, 60, 10, '2024-02-10', 1),
    (8,  'Webcam HD 1080p',     'Accesorios',       85.00, 25, 5,  '2024-02-10', 1),
    (9,  'SSD Externo 1TB',     'Almacenamiento',  130.00, 18, 3,  '2024-03-01', 1),
    (10, 'Parlante Bluetooth',  'Audio',            60.00, 45, 8,  '2024-03-01', 1);
GO

-- UPDATE ventas del día: se descuentan las unidades vendidas del stock actual
-- Cada UPDATE lleva WHERE para modificar solo el producto indicado

-- Laptop Pro 15: vendió 3 unidades (15 - 3 = 12)
UPDATE inventario
SET stock_actual = stock_actual - 3
WHERE id_producto = 1;

-- Mouse Inalámbrico: vendió 12 unidades (80 - 12 = 68)
UPDATE inventario
SET stock_actual = stock_actual - 12
WHERE id_producto = 2;

-- Auriculares BT Pro: vendió 5 unidades (35 - 5 = 30)
UPDATE inventario
SET stock_actual = stock_actual - 5
WHERE id_producto = 6;
GO

-- UPDATE producto descontinuado: la Webcam HD 1080p pasa a inactiva
UPDATE inventario
SET activo = 0
WHERE id_producto = 8;
GO

-- SELECT validaciones
-- Ver la tabla completa para confirmar que los datos se cargaron
SELECT * FROM inventario;
