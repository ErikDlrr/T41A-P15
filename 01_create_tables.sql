
DROP TABLE IF EXISTS empleados;
DROP TABLE IF EXISTS departamentos;
DROP TABLE IF EXISTS productos;

CREATE TABLE productos (
    id SERIAL PRIMARY KEY,
    nombre TEXT,
    precio NUMERIC(10, 2),
    stock INT
);

CREATE TABLE departamentos (
    id INT PRIMARY KEY,
    nombre TEXT
);

CREATE TABLE empleados (
    id SERIAL PRIMARY KEY,
    nombre TEXT,
    departamento_id INT REFERENCES departamentos(id)
);
