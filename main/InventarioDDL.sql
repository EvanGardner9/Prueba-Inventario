CREATE TABLE Login (
    Name varchar(255),
    Password varchar(255)
);
TRUNCATE TABLE Login;

ALTER TABLE Login
ADD VALUE varchar;

CREATE TABLE Medicamentos(
    ID INT Unique Auto,
    Descripcion varchar(255),
    Lote varchar(255),
    Caducidad date,
    fechaDeRegistro date
);
TRUNCATE TABLE Medicamentos;

CREATE TABLE Reports(
    ID Foreign key (Medicamentos.ID),
    Tipo varchar(255),
    FechaMovimiento date,
    Registro varchar(255),
    Cantidad numeric,
    Sumatoria numeric
);
TRUNCATE TABLE Reports;
