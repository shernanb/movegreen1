CREATE DATABASE movegreen;
USE movegreen;

CREATE TABLE usuario (
id_usuario INT PRIMARY KEY IDENTITY(1,1),
nro_doc INT NOT NULL UNIQUE,
nombre VARCHAR(50)NOT NULL,
apellido VARCHAR(50)NOT NULL,
email VARCHAR(50)NOT NULL,
telefono VARCHAR(50) NOT NULL,
direccion VARCHAR(50) NOT NULL,
fecha_registro DATETIME NOT NULL
);

CREATE TABLE vehiculo (
id_vehiculo INT PRIMARY KEY IDENTITY(1,1),
nro_vehiculo INT NOT NULL UNIQUE,
tipo VARCHAR(50)NOT NULL,
marca VARCHAR(50)NOT NULL,
modelo VARCHAR(50)NOT NULL,
estado VARCHAR(50) NOT NULL,
id_reserva_vehiculo_fk int,
ubicacion_actual VARCHAR(50) NOT NULL,	
fecha_adquisicion DATETIME NOT NULL,
);

CREATE TABLE reserva_vehiculo (
    id_reserva_vehiculo INT PRIMARY KEY IDENTITY(1,1),
    id_vehiculo_fk INT,
    id_usuario_fk INT,
    FOREIGN KEY(id_vehiculo_fk) REFERENCES vehiculo(id_vehiculo),
    FOREIGN KEY(id_vehiculo_fk) REFERENCES usuario(id_usuario)
);


CREATE TABLE devoluciones (
id_devolucion INT PRIMARY KEY IDENTITY(1,1),
id_vehiculo_fk INT,
fecha_devolucion DATETIME NOT NULL,
fecha_fin DATETIME NOT NULL,
FOREIGN KEY(id_vehiculo_fk) REFERENCES vehiculo (id_vehiculo)
);

CREATE TABLE mantenimiento (
id_mantenimiento INT PRIMARY KEY IDENTITY(1,1),
id_vehiculo_fk INT,
fecha_mantenimiento DATETIME NOT NULL,
descripcion VARCHAR(50),
costo DECIMAL(10,2)
FOREIGN KEY(id_vehiculo_fk) REFERENCES vehiculo (id_vehiculo)
);

select * from usuario;
select * from vehiculo;
select * from reserva_vehiculo;
select * from devoluciones;
select * from mantenimiento;




