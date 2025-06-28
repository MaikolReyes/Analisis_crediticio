
-- Tablas Principales
SELECT * FROM clientes;
SELECT * FROM pagos;
SELECT * FROM creditos;

-- 1. Monto Total de Créditos
SELECT SUM(monto) FROM creditos;

-- 2. Monto Total Pagado
SELECT SUM(monto_pagado) FROM pagos;

-- 3. Beneficio Obtenidos
SELECT
    (SELECT SUM(monto_pagado) FROM pagos) - (SELECT SUM(monto) FROM creditos) AS beneficio;

-- 4. Cantidad de Créditos Activos
SELECT COUNT(*)
FROM creditos
WHERE estado = 'Activo';

-- 5. Cantidad de Créditos por Tipo
SELECT tipo_credito, COUNT(*)
FROM creditos
GROUP BY tipo_credito;

-- 6.cantidad de Créditos por Cliente
SELECT cliente_id, COUNT(*) AS creditos_otorgados
FROM creditos
GROUP BY cliente_id;