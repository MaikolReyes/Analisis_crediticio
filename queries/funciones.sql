-- 1.Funcion que calcula el porcentaje de clientes en un estado de pago específico

-- CREATE FUNCTION calcular_porcentaje_clientes_estado(
--     @estado_pago_input VARCHAR(20)
-- )
-- RETURNS DECIMAL(5, 2)
-- AS
-- BEGIN
--     DECLARE @resultado DECIMAL(5,2);

--     SELECT @resultado = ROUND(
--         (SELECT COUNT(DISTINCT c.id)
--         FROM clientes c
--             JOIN creditos cr ON cr.cliente_id = c.id
--             JOIN pagos p ON p.credito_id = cr.id
--         WHERE p.estado_pago = @estado_pago_input) * 100.0 /
--         (SELECT COUNT(*)
--         FROM clientes),
--         2
--     );

--     RETURN @resultado;
-- END;


-- Clientes Morosos, Adelantados y Puntuales

SELECT dbo.calcular_porcentaje_clientes_estado('Moroso') AS Porcentaje_Morosos;

SELECT dbo.calcular_porcentaje_clientes_estado('Adelantado') AS Porcentaje_Adelantados;

SELECT dbo.calcular_porcentaje_clientes_estado('Puntual') AS Porcentaje_Puntuales;


