-- MySQL Workbench Forward Engineering

SET @OLD_UNIQUE_CHECKS=@@UNIQUE_CHECKS, UNIQUE_CHECKS=0;
SET @OLD_FOREIGN_KEY_CHECKS=@@FOREIGN_KEY_CHECKS, FOREIGN_KEY_CHECKS=0;
SET @OLD_SQL_MODE=@@SQL_MODE, SQL_MODE='ONLY_FULL_GROUP_BY,STRICT_TRANS_TABLES,NO_ZERO_IN_DATE,NO_ZERO_DATE,ERROR_FOR_DIVISION_BY_ZERO,NO_ENGINE_SUBSTITUTION';

-- -----------------------------------------------------
-- Schema mydb
-- -----------------------------------------------------
-- -----------------------------------------------------
-- Schema sportan
-- -----------------------------------------------------

-- -----------------------------------------------------
-- Schema sportan
-- -----------------------------------------------------
CREATE SCHEMA IF NOT EXISTS `sportan` DEFAULT CHARACTER SET latin1 ;
USE `sportan` ;

-- -----------------------------------------------------
-- Table `sportan`.`catalogo`
-- -----------------------------------------------------
CREATE TABLE IF NOT EXISTS `sportan`.`catalogo` (
  `id_catalogo` INT(11) NOT NULL AUTO_INCREMENT,
  `nombre_catalogo` VARCHAR(20) NULL DEFAULT NULL,
  PRIMARY KEY (`id_catalogo`))
ENGINE = InnoDB
AUTO_INCREMENT = 13
DEFAULT CHARACTER SET = utf8mb4;


-- -----------------------------------------------------
-- Table `sportan`.`ciudad`
-- -----------------------------------------------------
CREATE TABLE IF NOT EXISTS `sportan`.`ciudad` (
  `cod_ciudad` INT(11) NOT NULL AUTO_INCREMENT,
  `nombre_ciudad` VARCHAR(15) NULL DEFAULT NULL,
  PRIMARY KEY (`cod_ciudad`))
ENGINE = InnoDB
AUTO_INCREMENT = 16
DEFAULT CHARACTER SET = utf8mb4;


-- -----------------------------------------------------
-- Table `sportan`.`estado_producto`
-- -----------------------------------------------------
CREATE TABLE IF NOT EXISTS `sportan`.`estado_producto` (
  `id_estado_producto` INT(11) NOT NULL AUTO_INCREMENT,
  `nombre_estado_producto` VARCHAR(15) NULL DEFAULT NULL,
  PRIMARY KEY (`id_estado_producto`))
ENGINE = InnoDB
DEFAULT CHARACTER SET = utf8mb4;


-- -----------------------------------------------------
-- Table `sportan`.`producto`
-- -----------------------------------------------------
CREATE TABLE IF NOT EXISTS `sportan`.`producto` (
  `id_producto` INT(11) NOT NULL AUTO_INCREMENT,
  `nombre_producto` VARCHAR(30) NULL DEFAULT NULL,
  `descripcion_producto` VARCHAR(140) NULL DEFAULT NULL,
  `precio_unitario` DECIMAL(10,0) NULL DEFAULT NULL,
  `id_estado_producto` INT(11) NULL DEFAULT NULL,
  `doc_vendedor` INT(11) NULL DEFAULT NULL,
  `id_catalogo` INT(11) NULL DEFAULT NULL,
  PRIMARY KEY (`id_producto`),
  INDEX `id_estado_producto` (`id_estado_producto` ASC) ,
  INDEX `id_catalogo` (`id_catalogo` ASC) ,
  CONSTRAINT `producto_ibfk_1`
    FOREIGN KEY (`id_estado_producto`)
    REFERENCES `sportan`.`estado_producto` (`id_estado_producto`),
  CONSTRAINT `producto_ibfk_2`
    FOREIGN KEY (`id_catalogo`)
    REFERENCES `sportan`.`catalogo` (`id_catalogo`))
ENGINE = InnoDB
DEFAULT CHARACTER SET = utf8mb4;


-- -----------------------------------------------------
-- Table `sportan`.`fotos_producto`
-- -----------------------------------------------------
CREATE TABLE IF NOT EXISTS `sportan`.`fotos_producto` (
  `id_producto` INT(11) NULL DEFAULT NULL,
  `foto` VARCHAR(250) NULL DEFAULT NULL,
  INDEX `id_producto` (`id_producto` ASC) ,
  CONSTRAINT `fotos_producto_ibfk_1`
    FOREIGN KEY (`id_producto`)
    REFERENCES `sportan`.`producto` (`id_producto`))
ENGINE = InnoDB
DEFAULT CHARACTER SET = utf8mb4;


-- -----------------------------------------------------
-- Table `sportan`.`genero`
-- -----------------------------------------------------
CREATE TABLE IF NOT EXISTS `sportan`.`genero` (
  `cod_genero` INT(11) NOT NULL AUTO_INCREMENT,
  `nombre_genero` VARCHAR(15) NULL DEFAULT NULL,
  PRIMARY KEY (`cod_genero`))
ENGINE = InnoDB
AUTO_INCREMENT = 4
DEFAULT CHARACTER SET = utf8mb4;


-- -----------------------------------------------------
-- Table `sportan`.`pagos`
-- -----------------------------------------------------
CREATE TABLE IF NOT EXISTS `sportan`.`pagos` (
  `id_pago` INT(11) NOT NULL AUTO_INCREMENT,
  `tipo_pago` VARCHAR(20) NULL DEFAULT NULL,
  PRIMARY KEY (`id_pago`))
ENGINE = InnoDB
AUTO_INCREMENT = 4
DEFAULT CHARACTER SET = utf8mb4;


-- -----------------------------------------------------
-- Table `sportan`.`orden_pedido`
-- -----------------------------------------------------
CREATE TABLE IF NOT EXISTS `sportan`.`orden_pedido` (
  `id_orden` INT(11) NOT NULL AUTO_INCREMENT,
  `numero_orden` INT(11) NULL DEFAULT NULL,
  `precio_total` DECIMAL(10,0) NULL DEFAULT NULL,
  `cantidad_producto` INT(11) NULL DEFAULT NULL,
  `doc_vendedor` INT(11) NULL DEFAULT NULL,
  `doc_comprador` INT(11) NULL DEFAULT NULL,
  `id_producto` INT(11) NULL DEFAULT NULL,
  `id_tipo_pago` INT(11) NULL DEFAULT NULL,
  PRIMARY KEY (`id_orden`),
  INDEX `id_tipo_pago` (`id_tipo_pago` ASC) ,
  INDEX `id_producto` (`id_producto` ASC) ,
  CONSTRAINT `orden_pedido_ibfk_1`
    FOREIGN KEY (`id_tipo_pago`)
    REFERENCES `sportan`.`pagos` (`id_pago`),
  CONSTRAINT `orden_pedido_ibfk_2`
    FOREIGN KEY (`id_producto`)
    REFERENCES `sportan`.`producto` (`id_producto`))
ENGINE = InnoDB
DEFAULT CHARACTER SET = utf8mb4;


-- -----------------------------------------------------
-- Table `sportan`.`tipo_solicitud`
-- -----------------------------------------------------
CREATE TABLE IF NOT EXISTS `sportan`.`tipo_solicitud` (
  `id_tipo_solicitud` INT(11) NOT NULL AUTO_INCREMENT,
  `nombre_solicitud` VARCHAR(20) NULL DEFAULT NULL,
  PRIMARY KEY (`id_tipo_solicitud`))
ENGINE = InnoDB
DEFAULT CHARACTER SET = utf8mb4;


-- -----------------------------------------------------
-- Table `sportan`.`usuario_solicitud`
-- -----------------------------------------------------
CREATE TABLE IF NOT EXISTS `sportan`.`usuario_solicitud` (
  `cod_user_solicitud` INT(11) NOT NULL AUTO_INCREMENT,
  `nombre_usuario` VARCHAR(20) NULL DEFAULT NULL,
  PRIMARY KEY (`cod_user_solicitud`))
ENGINE = InnoDB
DEFAULT CHARACTER SET = utf8mb4;


-- -----------------------------------------------------
-- Table `sportan`.`solicitudes`
-- -----------------------------------------------------
CREATE TABLE IF NOT EXISTS `sportan`.`solicitudes` (
  `numero_solicitud` INT(11) NOT NULL AUTO_INCREMENT,
  `nombre_persona` VARCHAR(30) NULL DEFAULT NULL,
  `correo` VARCHAR(30) NULL DEFAULT NULL,
  `cod_tipo_user` INT(11) NULL DEFAULT NULL,
  `id_respuesta` INT(11) NULL DEFAULT NULL,
  `id_tipo_solicitud` INT(11) NULL DEFAULT NULL,
  PRIMARY KEY (`numero_solicitud`),
  INDEX `id_tipo_solicitud` (`id_tipo_solicitud` ASC) ,
  INDEX `cod_tipo_user` (`cod_tipo_user` ASC) ,
  CONSTRAINT `solicitudes_ibfk_1`
    FOREIGN KEY (`id_tipo_solicitud`)
    REFERENCES `sportan`.`tipo_solicitud` (`id_tipo_solicitud`),
  CONSTRAINT `solicitudes_ibfk_2`
    FOREIGN KEY (`cod_tipo_user`)
    REFERENCES `sportan`.`usuario_solicitud` (`cod_user_solicitud`))
ENGINE = InnoDB
DEFAULT CHARACTER SET = utf8mb4;


-- -----------------------------------------------------
-- Table `sportan`.`respuesta_solicitud`
-- -----------------------------------------------------
CREATE TABLE IF NOT EXISTS `sportan`.`respuesta_solicitud` (
  `id_solicitud` INT(11) NULL DEFAULT NULL,
  `respuesta_solicitud` VARCHAR(250) NULL DEFAULT NULL,
  INDEX `id_solicitud` (`id_solicitud` ASC) ,
  CONSTRAINT `respuesta_solicitud_ibfk_1`
    FOREIGN KEY (`id_solicitud`)
    REFERENCES `sportan`.`solicitudes` (`numero_solicitud`))
ENGINE = InnoDB
DEFAULT CHARACTER SET = utf8mb4;


-- -----------------------------------------------------
-- Table `sportan`.`rol`
-- -----------------------------------------------------
CREATE TABLE IF NOT EXISTS `sportan`.`rol` (
  `id_rol` INT(11) NOT NULL AUTO_INCREMENT,
  `nombre_rol` VARCHAR(15) NULL DEFAULT NULL,
  PRIMARY KEY (`id_rol`))
ENGINE = InnoDB
AUTO_INCREMENT = 4
DEFAULT CHARACTER SET = utf8mb4;


-- -----------------------------------------------------
-- Table `sportan`.`usuarios`
-- -----------------------------------------------------
CREATE TABLE IF NOT EXISTS `sportan`.`usuarios` (
  `id_usuario` INT(11) NOT NULL AUTO_INCREMENT,
  `nombres_user` VARCHAR(30) NULL DEFAULT NULL,
  `apellidos_user` VARCHAR(30) NULL DEFAULT NULL,
  `correo` VARCHAR(30) NULL DEFAULT NULL,
  `num_telefono` VARCHAR(11) NULL DEFAULT NULL,
  `fecha_nacimiento` DATE NULL DEFAULT NULL,
  `contraseña` VARCHAR(15) NULL DEFAULT NULL,
  `cod_ciudad` INT(11) NULL DEFAULT NULL,
  `cod_genero` INT(11) NULL DEFAULT NULL,
  `id_rol` INT(11) NULL DEFAULT NULL,
  PRIMARY KEY (`id_usuario`),
  INDEX `cod_ciudad` (`cod_ciudad` ASC) ,
  INDEX `cod_genero` (`cod_genero` ASC) ,
  INDEX `id_rol` (`id_rol` ASC) ,
  CONSTRAINT `usuarios_ibfk_1`
    FOREIGN KEY (`cod_ciudad`)
    REFERENCES `sportan`.`ciudad` (`cod_ciudad`),
  CONSTRAINT `usuarios_ibfk_2`
    FOREIGN KEY (`cod_genero`)
    REFERENCES `sportan`.`genero` (`cod_genero`),
  CONSTRAINT `usuarios_ibfk_4`
    FOREIGN KEY (`id_rol`)
    REFERENCES `sportan`.`rol` (`id_rol`))
ENGINE = InnoDB
AUTO_INCREMENT = 2
DEFAULT CHARACTER SET = utf8mb4;


SET SQL_MODE=@OLD_SQL_MODE;
SET FOREIGN_KEY_CHECKS=@OLD_FOREIGN_KEY_CHECKS;
SET UNIQUE_CHECKS=@OLD_UNIQUE_CHECKS;
