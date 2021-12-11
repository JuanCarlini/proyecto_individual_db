CREATE SCHEMA `proyectoindividualdb` ;

CREATE TABLE `proyectoindividualdb`.`categorias` (
  `id` INT NOT NULL AUTO_INCREMENT,
  `nombre` VARCHAR(50) NOT NULL,
  PRIMARY KEY (`id`));


CREATE TABLE `proyectoindividualdb`.`notas` (
  `id` INT NOT NULL AUTO_INCREMENT,
  `usuario_id` INT NOT NULL,
  `titulo` VARCHAR(100) NOT NULL,
  `creacion` DATE NOT NULL,
  `modificacion` DATE NOT NULL,
  `descripcion` DATE NOT NULL,
  `eliminar` TINYINT(4) NOT NULL,
  PRIMARY KEY (`id`),
  FOREIGN KEY (`usuario_id`));


CREATE TABLE `proyectoindividualdb`.`notas_categorias` (
  `id` int NOT NULL AUTO_INCREMENT,
  `nota_id` int NOT NULL,
  `categoria_id` int NOT NULL,
  PRIMARY KEY (`id`),
  FOREIGN KEY (`nota_id`),
  FOREIGN KEY (`categoria_id`));

CREATE TABLE `proyectoindividualdb`.`usuarios` (
  `id` int NOT NULL AUTO_INCREMENT,
  `nombre` varchar NOT NULL,
  `email` varchar NOT NULL,
  PRIMARY KEY (`id`)
)

