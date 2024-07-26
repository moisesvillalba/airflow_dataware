-- Crear tabla de Dimensión Producto
CREATE TABLE dimension_producto (
    id_producto SERIAL PRIMARY KEY,
    nombre_producto VARCHAR(255) NOT NULL
);

-- Crear tabla de Dimensión Cliente
CREATE TABLE dimension_cliente (
    id_cliente SERIAL PRIMARY KEY,
    nombre_cliente VARCHAR(255) NOT NULL
);

-- Crear tabla de Dimensión Fecha
CREATE TABLE dimension_fecha (
    id_fecha SERIAL PRIMARY KEY,
    fecha DATE NOT NULL,
    mes INTEGER NOT NULL,
    año INTEGER NOT NULL
);

-- Crear tabla de Hechos Ventas
CREATE TABLE hechos_ventas (
    id_venta SERIAL PRIMARY KEY,
    id_producto INTEGER REFERENCES dimension_producto(id_producto),
    id_cliente INTEGER REFERENCES dimension_cliente(id_cliente),
    id_fecha INTEGER REFERENCES dimension_fecha(id_fecha),
    cantidad INTEGER NOT NULL,
    total DECIMAL(10, 2) NOT NULL
);
