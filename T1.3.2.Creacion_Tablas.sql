CREATE TABLE `accidente`  (
  `id` int NOT NULL,
  `fecha` date NULL,
  `ano` int NULL,
  `fkid_departamento` varchar(255) NULL,
  `fkid_municipio` varchar(255) NULL,
  `id_vehiculo` varchar(255) NULL,
  PRIMARY KEY (`id`)
);

CREATE TABLE `departamento`  (
  `id` int NOT NULL,
  `nombre` varchar(255) NULL,
  `codigo` varchar(5) NULL,
  PRIMARY KEY (`id`)
);

CREATE TABLE `municipio`  (
  `id` int NOT NULL,
  `codigo_departamento` varchar(5) NOT NULL,
  `codigo` varchar(5) NOT NULL,
  `nombre` varchar(255) NOT NULL,
  PRIMARY KEY (`id`)
);

CREATE TABLE `objeto_de_colision`  (
  `id` int NOT NULL,
  `nombre` varchar(255) NOT NULL,
  PRIMARY KEY (`id`)
);

CREATE TABLE `persona`  (
  `id` int NOT NULL,
  `rango_edad` varchar(50) NOT NULL,
  PRIMARY KEY (`id`)
);

CREATE TABLE `tipo_vehiculo`  (
  `id` int NOT NULL,
  `nombre` varchar(255) NOT NULL,
  PRIMARY KEY (`id`)
);

CREATE TABLE `vehiculo`  (
  `id` int NOT NULL,
  `fk_dipo_de_vehiculo` int NOT NULL,
  PRIMARY KEY (`id`)
);

CREATE TABLE `vehiculo_objeto_de_colision`  (
  `id` int NOT NULL,
  `fkid_vehiculo` int NULL,
  `fkid_objecto_de_colision` int NULL,
  PRIMARY KEY (`id`)
);

ALTER TABLE `accidente` ADD CONSTRAINT `fk_Accidente_Persona_1` FOREIGN KEY (`id`) REFERENCES `persona` (`rango_edad`);
ALTER TABLE `departamento` ADD CONSTRAINT `fk_Departamento_Accidente_1` FOREIGN KEY (`id`) REFERENCES `accidente` (`fkid_departamento`);
ALTER TABLE `departamento` ADD CONSTRAINT `fk_Departamento_Municipio_1` FOREIGN KEY (`id`) REFERENCES `municipio` (`codigo_departamento`);
ALTER TABLE `municipio` ADD CONSTRAINT `fk_Municipio_Accidente_1` FOREIGN KEY (`id`) REFERENCES `accidente` (`fkid_municipio`);
ALTER TABLE `objeto_de_colision` ADD CONSTRAINT `fk_ObjetoDeColision_Vehiculo_Objeto_de_Colision_1` FOREIGN KEY (`id`) REFERENCES `vehiculo_objeto_de_colision` (`fkid_objecto_de_colision`);
ALTER TABLE `tipo_vehiculo` ADD CONSTRAINT `fk_TipoVehiculo_Vehiculo_1` FOREIGN KEY (`id`) REFERENCES `vehiculo` (`fk_dipo_de_vehiculo`);
ALTER TABLE `vehiculo` ADD CONSTRAINT `fk_Vehiculo_Vehiculo_Objeto_de_Colision_1` FOREIGN KEY (`id`) REFERENCES `vehiculo_objeto_de_colision` (`fkid_vehiculo`);
ALTER TABLE `vehiculo` ADD CONSTRAINT `fk_Vehiculo_Accidente_1` FOREIGN KEY (`id`) REFERENCES `accidente` (`id_vehiculo`);

