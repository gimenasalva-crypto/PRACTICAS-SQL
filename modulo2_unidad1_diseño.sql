-- =====================================================
-- Práctica: Diseño de tablas - Sistema de gestión de ventas
-- Archivo: modulo2_unidad1_diseno.sql
-- Autora: Salva, María Gimena
-- Motor: SQL Server (SSMS)
-- =====================================================

-- Trabajamos dentro de la base de datos de práctica
USE Practica;
GO

-- -----------------------------------------------------
-- Tabla: clientes
-- -----------------------------------------------------
CREATE TABLE clientes (
    -- INT: número entero, ideal para identificadores que no llevan decimales
    id_cliente      INT,
    -- VARCHAR(100): texto de largo variable de hasta 100 caracteres;
    -- solo ocupa el espacio que realmente usa el nombre
    nombre          VARCHAR(100),
    -- VARCHAR(MAX): texto largo sin un límite fijo, apto para una biografía o notas
    perfil_bio      VARCHAR(MAX),
    -- DATE: guarda solo la fecha (año-mes-día), sin hora
    fecha_registro  DATE
);
GO

-- -----------------------------------------------------
-- Tabla: productos
-- -----------------------------------------------------
CREATE TABLE productos (
    -- INT: número entero para identificar cada producto
    id_producto     INT,
    -- VARCHAR(255): texto de hasta 255 caracteres para describir el producto
    descripcion     VARCHAR(255),
    -- DECIMAL(10,2): hasta 10 dígitos en total, 2 de ellos decimales.
    -- Se usa DECIMAL y no FLOAT porque FLOAT redondea y puede dar errores con dinero
    precio          DECIMAL(10,2),
    -- BIT: número pequeño que solo acepta 0 o 1 (1 = activo / a la venta, 0 = inactivo).
    -- Ocupa menos espacio que un texto y evita valores inconsistentes como "si", "Sí" o "SI"
    esta_activo     BIT
);
GO
