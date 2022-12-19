--  creacion de base de datos 
drop database if exists db_grupo_9_22550;

-- creacion de base 
create database if not exists db_grupo_9_22550;

-- creacion de tablas
use db_grupo_9_22550;

CREATE TABLE IF NOT EXISTS  USUARIO (
    id INT(11) auto_increment NOT NULL,
    nombre varchar(40) NOT NULL,
    apellido varchar(40) NOT NULL,
    email varchar(30) NOT NULL,
    contrasenia varchar(20) NOT NULL,
    ciudad varchar(40) NOT NULL,
    direccion varchar(40) NOT NULL,
    telefono varchar(40) NOT NULL,
    
    PRIMARY KEY (id)
) ;


-- insersion de algunos registros 

INSERT INTO db_grupo_9_22550.USUARIO
(nombre, apellido, email, contrasenia, ciudad, direccion, telefono)
VALUES ('Luciano', 'Tolosa', 'email_1@mail.com.ar', '1234', 'Buenos Aires', 'direccion 101', '15 10101010'),
('Agustin', 'Ferraro','email_2@mail.com.ar', '1234', 'Salta', 'direccion 202', '15 20202020'),
('Sebastian', 'Farah','email_3@mail.com.ar', '1234', 'Buenos Aires', 'direccion 303', '15 30303030'),
('Sergio', 'Carmona', 'email_4@mail.com.ar', '1234', 'Bragado', 'direccion 404', '15 40404040'),
('Jorgito', 'Dibasitsta', 'email_5@mail.com.ar', '1234', 'Coronel Suarez', 'direccion 505', '15 50505050');