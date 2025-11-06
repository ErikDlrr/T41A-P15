-- Ej 3
CREATE OR REPLACE FUNCTION obtener_productos_stock_bajo(
    cantidad_minima INT
)
RETURNS TABLE(
    id_producto INT,
    nombre_producto TEXT,
    stock_actual INT
) AS $$
BEGIN
    RETURN QUERY
    SELECT id, nombre, stock
    FROM productos
    WHERE stock < cantidad_minima;
END;
$$ LANGUAGE plpgsql;
