-- MySQL Script generated by MySQL Workbench
-- Mon Sep 11 09:51:15 2023
-- Model: New Model    Version: 1.0
-- MySQL Workbench Forward Engineering

SET @OLD_UNIQUE_CHECKS=@@UNIQUE_CHECKS, UNIQUE_CHECKS=0;
SET @OLD_FOREIGN_KEY_CHECKS=@@FOREIGN_KEY_CHECKS, FOREIGN_KEY_CHECKS=0;
SET @OLD_SQL_MODE=@@SQL_MODE, SQL_MODE='ONLY_FULL_GROUP_BY,STRICT_TRANS_TABLES,NO_ZERO_IN_DATE,NO_ZERO_DATE,ERROR_FOR_DIVISION_BY_ZERO,NO_ENGINE_SUBSTITUTION';

-- -----------------------------------------------------
-- Schema mydb
-- -----------------------------------------------------

-- -----------------------------------------------------
-- Schema mydb
-- -----------------------------------------------------
CREATE SCHEMA IF NOT EXISTS `mydb` DEFAULT CHARACTER SET utf8 ;
USE `mydb` ;

-- -----------------------------------------------------
-- Table `mydb`.`Producto`
-- -----------------------------------------------------
DROP TABLE IF EXISTS `mydb`.`Producto` ;

CREATE TABLE IF NOT EXISTS `mydb`.`Producto` (
  `id` INT(20) NOT NULL AUTO_INCREMENT,
  `nombre` VARCHAR(45) NOT NULL,
  `descripcion` VARCHAR(100) NOT NULL,
  `precio` DOUBLE NULL,
  `stock` INT(50) NULL,
  PRIMARY KEY (`id`))
ENGINE = InnoDB;


-- -----------------------------------------------------
-- Table `mydb`.`Cliente`
-- -----------------------------------------------------
DROP TABLE IF EXISTS `mydb`.`Cliente` ;

CREATE TABLE IF NOT EXISTS `mydb`.`Cliente` (
  `id` INT(20) NOT NULL AUTO_INCREMENT,
  `nombre` VARCHAR(45) NOT NULL,
  `telefono` VARCHAR(15) NOT NULL,
  `correo_electronico` VARCHAR(45) NOT NULL,
  PRIMARY KEY (`id`))
ENGINE = InnoDB;


-- -----------------------------------------------------
-- Table `mydb`.`Empleado`
-- -----------------------------------------------------
DROP TABLE IF EXISTS `mydb`.`Empleado` ;

CREATE TABLE IF NOT EXISTS `mydb`.`Empleado` (
  `id` INT(20) NOT NULL AUTO_INCREMENT,
  `nombre` VARCHAR(45) NOT NULL,
  `cargo` VARCHAR(45) NOT NULL,
  `fecha_contratacion` DATE NOT NULL,
  `salario` DOUBLE NULL,
  PRIMARY KEY (`id`))
ENGINE = InnoDB;


-- -----------------------------------------------------
-- Table `mydb`.`Pedido`
-- -----------------------------------------------------
DROP TABLE IF EXISTS `mydb`.`Pedido` ;

CREATE TABLE IF NOT EXISTS `mydb`.`Pedido` (
  `id` INT(20) NOT NULL AUTO_INCREMENT,
  `fecha_pedido` DATE NULL,
  `lista_pedido` VARCHAR(45) NOT NULL,
  `total` INT NULL,
  `Empleado_id` INT(20) NOT NULL,
  PRIMARY KEY (`id`),
  INDEX `fk_Pedido_Empleado1_idx` (`Empleado_id` ASC) VISIBLE,
  CONSTRAINT `id_cliente`
    FOREIGN KEY (`id`)
    REFERENCES `mydb`.`Cliente` (`id`)
    ON DELETE NO ACTION
    ON UPDATE NO ACTION,
  CONSTRAINT `id_producto`
    FOREIGN KEY (`id`)
    REFERENCES `mydb`.`Producto` (`id`)
    ON DELETE NO ACTION
    ON UPDATE NO ACTION,
  CONSTRAINT `fk_Pedido_Empleado1`
    FOREIGN KEY (`Empleado_id`)
    REFERENCES `mydb`.`Empleado` (`id`)
    ON DELETE NO ACTION
    ON UPDATE NO ACTION)
ENGINE = InnoDB;


-- -----------------------------------------------------
-- Table `mydb`.`Proveedor`
-- -----------------------------------------------------
DROP TABLE IF EXISTS `mydb`.`Proveedor` ;

CREATE TABLE IF NOT EXISTS `mydb`.`Proveedor` (
  `id` INT(20) NOT NULL AUTO_INCREMENT,
  `nombre` VARCHAR(45) NOT NULL,
  `contacto` VARCHAR(15) NOT NULL,
  `lista_suministro` VARCHAR(45) NOT NULL,
  `Producto_id` INT(20) NOT NULL,
  PRIMARY KEY (`id`),
  INDEX `fk_Proveedor_Producto1_idx` (`Producto_id` ASC) VISIBLE,
  CONSTRAINT `fk_Proveedor_Producto1`
    FOREIGN KEY (`Producto_id`)
    REFERENCES `mydb`.`Producto` (`id`)
    ON DELETE NO ACTION
    ON UPDATE NO ACTION)
ENGINE = InnoDB;


-- -----------------------------------------------------
-- Table `mydb`.`Producto_has_Empleado`
-- -----------------------------------------------------
DROP TABLE IF EXISTS `mydb`.`Producto_has_Empleado` ;

CREATE TABLE IF NOT EXISTS `mydb`.`Producto_has_Empleado` (
  `Producto_id` INT(20) NOT NULL,
  `Empleado_id` INT(20) NOT NULL,
  PRIMARY KEY (`Producto_id`, `Empleado_id`),
  INDEX `fk_Producto_has_Empleado_Empleado1_idx` (`Empleado_id` ASC) VISIBLE,
  INDEX `fk_Producto_has_Empleado_Producto1_idx` (`Producto_id` ASC) VISIBLE,
  CONSTRAINT `fk_Producto_has_Empleado_Producto1`
    FOREIGN KEY (`Producto_id`)
    REFERENCES `mydb`.`Producto` (`id`)
    ON DELETE NO ACTION
    ON UPDATE NO ACTION,
  CONSTRAINT `fk_Producto_has_Empleado_Empleado1`
    FOREIGN KEY (`Empleado_id`)
    REFERENCES `mydb`.`Empleado` (`id`)
    ON DELETE NO ACTION
    ON UPDATE NO ACTION)
ENGINE = InnoDB;


SET SQL_MODE=@OLD_SQL_MODE;
SET FOREIGN_KEY_CHECKS=@OLD_FOREIGN_KEY_CHECKS;
SET UNIQUE_CHECKS=@OLD_UNIQUE_CHECKS;
