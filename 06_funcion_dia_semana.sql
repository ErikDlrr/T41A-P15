CREATE OR REPLACE FUNCTION obtener_dia_semana(fecha_dada DATE)
RETURNS TEXT AS $$
BEGIN
    RETURN to_char(fecha_dada, 'TMDay');
END;
$$ LANGUAGE plpgsql;
