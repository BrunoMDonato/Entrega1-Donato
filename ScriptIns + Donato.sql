/*************************
Creacion Base de Datos
*************************/
CREATE SCHEMA IF NOT EXISTS Lubricentro;
USE Lubricentro;

/*************************
Creacion de Tablas
*************************/

-- Table: cliente
CREATE TABLE cliente (
	id_cliente INT UNSIGNED NOT NULL AUTO_INCREMENT,
    nombre_apellido VARCHAR (200) NOT NULL,
    telefono INT UNSIGNED NOT NULL,
	dni INT UNSIGNED NOT NULL,
    PRIMARY KEY (id_cliente)
);	

-- Table: auto
CREATE TABLE auto(
	id_auto INT UNSIGNED NOT NULL AUTO_INCREMENT,
    marca VARCHAR (200) NOT NULL,
    modelo VARCHAR (200) NOT NULL,
    kms INT UNSIGNED NOT NULL,
    id_cliente INT UNSIGNED NOT NULL,
    PRIMARY KEY (id_auto),
    FOREIGN KEY (id_cliente) REFERENCES cliente(id_cliente)
);	

-- Table: trabajo
CREATE TABLE trabajo (
	id_trabajo INT UNSIGNED NOT NULL AUTO_INCREMENT,
    num_empleado INT UNSIGNED NOT NULL,
    id_auto INT UNSIGNED NOT NULL,
    PRIMARY KEY (id_trabajo),
    FOREIGN KEY (id_auto) REFERENCES auto(id_auto)
);	

-- Table: producto
CREATE TABLE producto (
	id_producto INT UNSIGNED NOT NULL AUTO_INCREMENT,
    litros INT UNSIGNED NOT NULL,
    marca VARCHAR (100) NOT NULL,
    id_trabajo INT UNSIGNED NOT NULL,
    PRIMARY KEY (id_producto),
    FOREIGN KEY (id_trabajo) REFERENCES trabajo(id_trabajo)
    );	

-- Table: chequeo
CREATE TABLE chequeo (
	id_chequeo INT UNSIGNED NOT NULL AUTO_INCREMENT,
    revisado BOOLEAN NOT NULL DEFAULT 0,
    id_trabajo INT UNSIGNED NOT NULL,
    PRIMARY KEY (id_chequeo ),
    FOREIGN KEY (id_trabajo) REFERENCES trabajo(id_trabajo)
);	



INSERT INTO cliente (`id_cliente`, `nombre_apellido`, `telefono`, `dni`) values (1, 'Juan Perez', '1125415896', '25148963');
INSERT INTO cliente (`id_cliente`, `nombre_apellido`, `telefono`, `dni`) values (2, 'Luis Mando', '1121452896', '37947965');
INSERT INTO cliente (`id_cliente`, `nombre_apellido`, `telefono`, `dni`) values (3, 'Pedro Miro', '1187456952', '14258520');
INSERT INTO cliente (`id_cliente`, `nombre_apellido`, `telefono`, `dni`) values (4, 'Pepe Anchi', '1158745963', '25412014');
INSERT INTO cliente (`id_cliente`, `nombre_apellido`, `telefono`, `dni`) values (5, 'Franco Diot', '1158632145', '35210014');
INSERT INTO cliente (`id_cliente`, `nombre_apellido`, `telefono`, `dni`) values (6, 'Mario Barro', '1165485214', '25874102');
INSERT INTO cliente (`id_cliente`, `nombre_apellido`, `telefono`, `dni`) values (7, 'Miguel Ito', '1142588547', '24125552');
INSERT INTO cliente (`id_cliente`, `nombre_apellido`, `telefono`, `dni`) values (8, 'Debora Fruiz', '1147852145', '30123210');
INSERT INTO cliente (`id_cliente`, `nombre_apellido`, `telefono`, `dni`) values (9, 'Cristian Alorda', '1152159875', '32587410');
INSERT INTO cliente (`id_cliente`, `nombre_apellido`, `telefono`, `dni`) values (10, 'Diego Lopez', '1143698521', '36251447');
INSERT INTO cliente (`id_cliente`, `nombre_apellido`, `telefono`, `dni`) values (11, 'Carlos Maro', '1140232022', '30120007');
INSERT INTO cliente (`id_cliente`, `nombre_apellido`, `telefono`, `dni`) values (12, 'Patricia Luiz', '1144520369', '11456220');
INSERT INTO cliente (`id_cliente`, `nombre_apellido`, `telefono`, `dni`) values (13, 'Natali Hide', '1145200036', '25020274');
INSERT INTO cliente (`id_cliente`, `nombre_apellido`, `telefono`, `dni`) values (14, 'Vanina Poli', '1147785520', '25141474');
INSERT INTO cliente (`id_cliente`, `nombre_apellido`, `telefono`, `dni`) values (15, 'Guido Turin', '1145693000', '21000369');



INSERT INTO auto (`id_auto`, `marca`, `modelo`, `kms`, `id_cliente`) values (1, 'Volkswagen', 'Gol', '25000', '15');
INSERT INTO auto (`id_auto`, `marca`, `modelo`, `kms`, `id_cliente`) values (2, 'Ford', 'Focus', '65000', '12');
INSERT INTO auto (`id_auto`, `marca`, `modelo`, `kms`, `id_cliente`) values (3, 'Renault', 'Sandero', '22000', '10');
INSERT INTO auto (`id_auto`, `marca`, `modelo`, `kms`, `id_cliente`) values (4, 'Volkswagen', 'Gol', '45000', '8');
INSERT INTO auto (`id_auto`, `marca`, `modelo`, `kms`, `id_cliente`) values (5, 'Ford', 'Fiesta', '65000', '7');
INSERT INTO auto (`id_auto`, `marca`, `modelo`, `kms`, `id_cliente`) values (6, 'Renault', 'Megane', '36000', '2');
INSERT INTO auto (`id_auto`, `marca`, `modelo`, `kms`, `id_cliente`) values (7, 'Renault', 'Clio', '98000', '1');
INSERT INTO auto (`id_auto`, `marca`, `modelo`, `kms`, `id_cliente`) values (8, 'Volkswagen', 'Polo', '10000', '6');
INSERT INTO auto (`id_auto`, `marca`, `modelo`, `kms`, `id_cliente`) values (9, 'Renault', 'Sandero', '24500', '9');
INSERT INTO auto (`id_auto`, `marca`, `modelo`, `kms`, `id_cliente`) values (10, 'Ford', 'Ka', '23000', '3');
INSERT INTO auto (`id_auto`, `marca`, `modelo`, `kms`, `id_cliente`) values (11, 'Chevrolet', 'Onix', '55000', '4');
INSERT INTO auto (`id_auto`, `marca`, `modelo`, `kms`, `id_cliente`) values (12, 'Volkswagen', 'Passat', '59000', '5');
INSERT INTO auto (`id_auto`, `marca`, `modelo`, `kms`, `id_cliente`) values (13, 'Ford', 'Mondeo', '70000', '11');
INSERT INTO auto (`id_auto`, `marca`, `modelo`, `kms`, `id_cliente`) values (14, 'Chevrolet', 'Onix', '68000', '13');
INSERT INTO auto (`id_auto`, `marca`, `modelo`, `kms`, `id_cliente`) values (15, 'Ford', 'Fiesta', '88000', '14');



INSERT INTO trabajo (`id_trabajo`, `num_empleado`, `id_auto`) values (1, '8521', '14');
INSERT INTO trabajo (`id_trabajo`, `num_empleado`, `id_auto`) values (2, '6544', '4');
INSERT INTO trabajo (`id_trabajo`, `num_empleado`, `id_auto`) values (3, '5654', '1');
INSERT INTO trabajo (`id_trabajo`, `num_empleado`, `id_auto`) values (4, '2344', '3');
INSERT INTO trabajo (`id_trabajo`, `num_empleado`, `id_auto`) values (5, '2343', '2');
INSERT INTO trabajo (`id_trabajo`, `num_empleado`, `id_auto`) values (6, '5858', '15');
INSERT INTO trabajo (`id_trabajo`, `num_empleado`, `id_auto`) values (7, '5454', '12');
INSERT INTO trabajo (`id_trabajo`, `num_empleado`, `id_auto`) values (8, '4575', '11');
INSERT INTO trabajo (`id_trabajo`, `num_empleado`, `id_auto`) values (9, '1455', '10');
INSERT INTO trabajo (`id_trabajo`, `num_empleado`, `id_auto`) values (10, '7854', '6');
INSERT INTO trabajo (`id_trabajo`, `num_empleado`, `id_auto`) values (11, '4455', '7');
INSERT INTO trabajo (`id_trabajo`, `num_empleado`, `id_auto`) values (12, '1121', '8');
INSERT INTO trabajo (`id_trabajo`, `num_empleado`, `id_auto`) values (13, '1023', '5');
INSERT INTO trabajo (`id_trabajo`, `num_empleado`, `id_auto`) values (14, '7450', '9');
INSERT INTO trabajo (`id_trabajo`, `num_empleado`, `id_auto`) values (15, '9630', '13');



INSERT INTO producto (`id_producto`, `litros`, `marca`, `id_trabajo`) values (1, '5', 'Elaion', '13');
INSERT INTO producto (`id_producto`, `litros`, `marca`, `id_trabajo`) values (2, '3', 'Castrol', '11');
INSERT INTO producto (`id_producto`, `litros`, `marca`, `id_trabajo`) values (3, '5', 'Motul', '12');
INSERT INTO producto (`id_producto`, `litros`, `marca`, `id_trabajo`) values (4, '4', 'Elaion', '1');
INSERT INTO producto (`id_producto`, `litros`, `marca`, `id_trabajo`) values (5, '5', 'Motul', '3');
INSERT INTO producto (`id_producto`, `litros`, `marca`, `id_trabajo`) values (6, '5', 'Motul', '4');
INSERT INTO producto (`id_producto`, `litros`, `marca`, `id_trabajo`) values (7, '5', 'Castrol', '6');
INSERT INTO producto (`id_producto`, `litros`, `marca`, `id_trabajo`) values (8, '3', 'Elaion', '9');
INSERT INTO producto (`id_producto`, `litros`, `marca`, `id_trabajo`) values (9, '5', 'Castrol', '7');
INSERT INTO producto (`id_producto`, `litros`, `marca`, `id_trabajo`) values (10, '4', 'Elaion', '15');
INSERT INTO producto (`id_producto`, `litros`, `marca`, `id_trabajo`) values (11, '3', 'Castrol', '8');
INSERT INTO producto (`id_producto`, `litros`, `marca`, `id_trabajo`) values (12, '6', 'Elaion', '2');
INSERT INTO producto (`id_producto`, `litros`, `marca`, `id_trabajo`) values (13, '6', 'Castrol', '14');
INSERT INTO producto (`id_producto`, `litros`, `marca`, `id_trabajo`) values (14, '5', 'Elaion', '5');
INSERT INTO producto (`id_producto`, `litros`, `marca`, `id_trabajo`) values (15, '3', 'Motul', '10');



INSERT INTO chequeo (`id_chequeo`, `revisado`, `id_trabajo`) values (1, '0', '10');	
INSERT INTO chequeo (`id_chequeo`, `revisado`, `id_trabajo`) values (2, '0', '9');	
INSERT INTO chequeo (`id_chequeo`, `revisado`, `id_trabajo`) values (3, '0', '1');	
INSERT INTO chequeo (`id_chequeo`, `revisado`, `id_trabajo`) values (4, '1', '12');	
INSERT INTO chequeo (`id_chequeo`, `revisado`, `id_trabajo`) values (5, '1', '13');	
INSERT INTO chequeo (`id_chequeo`, `revisado`, `id_trabajo`) values (6, '1', '15');	
INSERT INTO chequeo (`id_chequeo`, `revisado`, `id_trabajo`) values (7, '0', '3');	
INSERT INTO chequeo (`id_chequeo`, `revisado`, `id_trabajo`) values (8, '1', '8');	
INSERT INTO chequeo (`id_chequeo`, `revisado`, `id_trabajo`) values (9, '1', '7');	
INSERT INTO chequeo (`id_chequeo`, `revisado`, `id_trabajo`) values (10, '0', '6');	
INSERT INTO chequeo (`id_chequeo`, `revisado`, `id_trabajo`) values (11, '1', '14');	
INSERT INTO chequeo (`id_chequeo`, `revisado`, `id_trabajo`) values (12, '0', '2');	
INSERT INTO chequeo (`id_chequeo`, `revisado`, `id_trabajo`) values (13, '1', '4');	
INSERT INTO chequeo (`id_chequeo`, `revisado`, `id_trabajo`) values (14, '0', '5');	
INSERT INTO chequeo (`id_chequeo`, `revisado`, `id_trabajo`) values (15, '1', '11');	


