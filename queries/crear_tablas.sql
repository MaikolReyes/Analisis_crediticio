CREATE TABLE [clientes]
(
    [id] int PRIMARY KEY IDENTITY(1, 1),
    [nombre] varchar(50),
    [edad] int,
    [dni] varchar(15) UNIQUE,
    [email] varchar(100),
    [genero] varchar(20),
    [ingresos] decimal(10,2),
    [ocupacion] varchar(50),
    [ciudad] varchar(50)
)
GO

CREATE TABLE [creditos]
(
    [id] int PRIMARY KEY IDENTITY(1, 1),
    [cliente_id] int,
    [fecha_otorgamiento] date,
    [monto] decimal(10,2),
    [tasa_interes] decimal(5,2),
    [plazo_meses] int,
    [estado_credito] varchar(20),
    [tipo_credito] varchar(50)
)
GO

CREATE TABLE [pagos]
(
    [id] int PRIMARY KEY IDENTITY(1, 1),
    [credito_id] int,
    [fecha_pago] date,
    [monto_pagado] decimal(10,2),
    [fecha_esperada] date,
    [estado_pago] varchar(50)
)
GO

ALTER TABLE [creditos] ADD FOREIGN KEY ([cliente_id]) REFERENCES [clientes] ([id])
GO

ALTER TABLE [pagos] ADD FOREIGN KEY ([credito_id]) REFERENCES [creditos] ([id])
GO
