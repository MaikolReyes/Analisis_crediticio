-- 1.Vista de clientes con mas de 2 Créditos Otorgados
-- Esta vista devuelve los clientes que tienen más de 2 créditos otorgados.
CREATE VIEW clientes_con_mas_creditos AS
SELECT cliente_id, COUNT(*) AS creditos_otorgados 
FROM creditos
GROUP BY cliente_id 
HAVING COUNT(*) > 2;