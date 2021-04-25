CREATE TABLE `Accidente`  (
  `id` int NOT NULL,
  `fecha` date NULL,
  `ano` int NULL,
  `fkid_departamento` varchar(255) NULL,
  `fkid_municipio` varchar(255) NULL,
  `id_vehiculo` varchar(255) NULL,
  PRIMARY KEY (`id`)
);

CREATE TABLE `Departamento`  (
  `id` int NOT NULL,
  `codigo_departamento` varchar(5) NULL,
  `codigo_municipio` varchar(5) NULL,
  `nombre` varchar(255) NULL,
  PRIMARY KEY (`id`)
);

CREATE TABLE `Municipio`  (
  `id` int NOT NULL,
  `codigo_departamento` varchar(5) NOT NULL,
  `codigo_municipio` varchar(5) NOT NULL,
  `nombre` varchar(255) NOT NULL,
  PRIMARY KEY (`id`)
);

CREATE TABLE `ObjetoDeColision`  (
  `id` int NOT NULL,
  `nombre` varchar(255) NOT NULL,
  PRIMARY KEY (`id`)
);

CREATE TABLE `Persona`  (
  `id` int NOT NULL,
  `rango_edad` varchar(50) NOT NULL,
  PRIMARY KEY (`id`)
);

CREATE TABLE `TipoVehiculo`  (
  `id` int NOT NULL,
  `nombre` varchar(255) NOT NULL,
  PRIMARY KEY (`id`)
);

CREATE TABLE `Vehiculo`  (
  `id` int NOT NULL,
  `fk_dipo_de_vehiculo` int NOT NULL,
  PRIMARY KEY (`id`)
);

CREATE TABLE `Vehiculo_Objeto_de_Colision`  (
  `id` int NOT NULL,
  `fkid_vehiculo` int NULL,
  `fkid_objecto_de_colision` int NULL,
  PRIMARY KEY (`id`)
);

ALTER TABLE `Accidente` ADD CONSTRAINT `fk_Accidente_Persona_1` FOREIGN KEY (`id`) REFERENCES `Persona` (`rango_edad`);
ALTER TABLE `Departamento` ADD CONSTRAINT `fk_Departamento_Accidente_1` FOREIGN KEY (`id`) REFERENCES `Accidente` (`fkid_departamento`);
ALTER TABLE `Departamento` ADD CONSTRAINT `fk_Departamento_Municipio_1` FOREIGN KEY (`id`) REFERENCES `Municipio` (`codigo_departamento`);
ALTER TABLE `Municipio` ADD CONSTRAINT `fk_Municipio_Accidente_1` FOREIGN KEY (`id`) REFERENCES `Accidente` (`fkid_municipio`);
ALTER TABLE `ObjetoDeColision` ADD CONSTRAINT `fk_ObjetoDeColision_Vehiculo_Objeto_de_Colision_1` FOREIGN KEY (`id`) REFERENCES `Vehiculo_Objeto_de_Colision` (`fkid_objecto_de_colision`);
ALTER TABLE `TipoVehiculo` ADD CONSTRAINT `fk_TipoVehiculo_Vehiculo_1` FOREIGN KEY (`id`) REFERENCES `Vehiculo` (`fk_dipo_de_vehiculo`);
ALTER TABLE `Vehiculo` ADD CONSTRAINT `fk_Vehiculo_Vehiculo_Objeto_de_Colision_1` FOREIGN KEY (`id`) REFERENCES `Vehiculo_Objeto_de_Colision` (`fkid_vehiculo`);
ALTER TABLE `Vehiculo` ADD CONSTRAINT `fk_Vehiculo_Accidente_1` FOREIGN KEY (`id`) REFERENCES `Accidente` (`id_vehiculo`);