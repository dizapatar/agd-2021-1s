CREATE TABLE `persona` (
  `id` <type>,
  `rango_edad` <type>
);

CREATE TABLE `municipio` (
  `id` <type>,
  `codigo_departamento` <type>,
  `codigo_municipio` <type>,
  `nombre` <type>
);

CREATE TABLE `accidente` (
  `id` <type>,
  `fecha` <type>,
  `ano` <type>,
  `fkid_municipio` <type>,
  `fkid_departamento` <type>,
  `id_vehiculo` <type>
);

CREATE TABLE `departamento` (
  `id` <type>,
  `codigo` <type>,
  `nombre` <type>
);

CREATE TABLE `vehiculo` (
  `id` <type>,
  `fk_tipo_de_vehiculo` <type>
);

CREATE TABLE `tipo_vehiculo` (
  `id` <type>,
  `nombre` <type>
);

CREATE TABLE `objeto_de_colision` (
  `id` <type>,
  `nombre` <type>
);

CREATE TABLE `vehiculo_objeto_de_colision` (
  `id` <type>,
  `fkid_vehiculo` <type>,
  `fkid_objeto_de_colision` <type>
);

