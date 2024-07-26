-- New script in docker postgres.
-- Date: 25 jul 2024
-- Time: 22:43:06
-- 1. Creación de la tabla de dimensiones de tiempo (dim_tiempo)
CREATE TABLE dim_tiempo (
    fecha DATE PRIMARY KEY,
    dia INT NOT NULL,
    dia_semana INT NOT NULL,
    mes INT NOT NULL,
    trimestre INT NOT NULL,
    anio INT NOT NULL
);

-- 2. Creación de la tabla de dimensiones de producto (dim_producto)
CREATE TABLE dim_producto (
    id_producto SERIAL PRIMARY KEY,
    nombre_producto VARCHAR(255) NOT NULL,
    categoria_producto VARCHAR(255) NOT NULL,
    precio DECIMAL(10,2) NOT NULL
);

-- 3. Creación de la tabla de dimensiones de cliente (dim_cliente)
CREATE TABLE dim_cliente (
    id_cliente SERIAL PRIMARY KEY,
    nombre_cliente VARCHAR(255) NOT NULL,
    email VARCHAR(255) NOT NULL,
    ciudad VARCHAR(255) NOT NULL,
    pais VARCHAR(255) NOT NULL
);

-- 4. Creación de la tabla de dimensiones de ubicación geográfica (dim_ubicacion_geografica)
CREATE TABLE dim_ubicacion_geografica (
    id_ubicacion SERIAL PRIMARY KEY,
    ciudad VARCHAR(255) NOT NULL,
    estado_provincia VARCHAR(255) NOT NULL,
    pais VARCHAR(255) NOT NULL
);

-- 5. Creación de la tabla de hechos de ventas (fact_ventas)
CREATE TABLE fact_ventas (
    id_venta SERIAL PRIMARY KEY,
    fecha DATE REFERENCES dim_tiempo(fecha),
    id_producto INT REFERENCES dim_producto(id_producto),
    id_cliente INT REFERENCES dim_cliente(id_cliente),
    id_ubicacion INT REFERENCES dim_ubicacion_geografica(id_ubicacion),
    cantidad INT NOT NULL,
    precio_unitario DECIMAL(10,2) NOT NULL,
    monto_total DECIMAL(10,2) NOT NULL,
    CONSTRAINT check_monto_total CHECK (monto_total = cantidad * precio_unitario)
);

-- 6. Creación de la tabla de hechos de visitas web (fact_visitas_web)
CREATE TABLE fact_visitas_web (
    id_visita SERIAL PRIMARY KEY,
    fecha DATE REFERENCES dim_tiempo(fecha),
    id_cliente INT REFERENCES dim_cliente(id_cliente), -- Si es posible identificar al cliente
    id_ubicacion INT REFERENCES dim_ubicacion_geografica(id_ubicacion),
    pagina_visitada VARCHAR(255) NOT NULL,
    tiempo_en_pagina INT NOT NULL
);

-- 7. Creación de la tabla de hechos de clics en anuncios (fact_clics_anuncios)
CREATE TABLE fact_clics_anuncios (
    id_clic SERIAL PRIMARY KEY,
    fecha DATE REFERENCES dim_tiempo(fecha),
    id_cliente INT REFERENCES dim_cliente(id_cliente), -- Si es posible identificar al cliente
    id_ubicacion INT REFERENCES dim_ubicacion_geografica(id_ubicacion),
    id_anuncio INT, -- Referencia a la tabla de anuncios (si existe)
    id_campana INT -- Referencia a la tabla de campañas (si existe)
);

-- 8. Creación de la tabla de hechos de interacciones de usuario (fact_interacciones_usuarios)
CREATE TABLE fact_interacciones_usuarios (
    id_interaccion SERIAL PRIMARY KEY,
    fecha DATE REFERENCES dim_tiempo(fecha),
    id_cliente INT REFERENCES dim_cliente(id_cliente),
    tipo_interaccion VARCHAR(255) NOT NULL, -- Ej: 'compra', 'registro', 'descarga', etc.
    detalle_interaccion TEXT -- Descripción más detallada de la interacción
);

-- Índices adicionales para mejorar el rendimiento de las consultas
CREATE INDEX idx_fact_ventas_fecha ON fact_ventas(fecha);
CREATE INDEX idx_fact_visitas_web_fecha ON fact_visitas_web(fecha);
CREATE INDEX idx_fact_clics_anuncios_fecha ON fact_clics_anuncios(fecha);
CREATE INDEX idx_fact_interacciones_usuarios_fecha ON fact_interacciones_usuarios(fecha);


CREATE INDEX idx_dim_cliente_nombre ON dim_cliente(nombre_cliente);
CREATE INDEX idx_dim_producto_categoria ON dim_producto(categoria_producto);
