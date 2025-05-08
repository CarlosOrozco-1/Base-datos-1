-- MySQL Workbench Forward Engineering

SET @OLD_UNIQUE_CHECKS=@@UNIQUE_CHECKS, UNIQUE_CHECKS=0;
SET @OLD_FOREIGN_KEY_CHECKS=@@FOREIGN_KEY_CHECKS, FOREIGN_KEY_CHECKS=0;
SET @OLD_SQL_MODE=@@SQL_MODE, SQL_MODE='ONLY_FULL_GROUP_BY,STRICT_TRANS_TABLES,NO_ZERO_IN_DATE,NO_ZERO_DATE,ERROR_FOR_DIVISION_BY_ZERO,NO_ENGINE_SUBSTITUTION';

-- -----------------------------------------------------
-- Schema base-tienda
-- -----------------------------------------------------
CREATE SCHEMA IF NOT EXISTS `base_tienda` DEFAULT CHARACTER SET utf8;
USE `base_tienda`;

-- -----------------------------------------------------
-- Tabla: clientes
-- -----------------------------------------------------
CREATE TABLE IF NOT EXISTS `clientes` (
  `id_cliente` INT NOT NULL AUTO_INCREMENT,
  `nombre` VARCHAR(45) NOT NULL,
  `apellido` VARCHAR(45) NOT NULL,
  `edad` TINYINT UNSIGNED NULL,
  `sexo` ENUM('Masculino', 'Femenino') NULL, -- Solo permite dos opciones.
  PRIMARY KEY (`id_cliente`)
) ENGINE = InnoDB;

-- -----------------------------------------------------
-- Tabla: sucursales
-- -----------------------------------------------------
CREATE TABLE IF NOT EXISTS `sucursales` (
  `id_sucursal` INT NOT NULL AUTO_INCREMENT,
  `nombre` VARCHAR(45) NOT NULL,
  `direccion` VARCHAR(100) NOT NULL,
  PRIMARY KEY (`id_sucursal`)
) ENGINE = InnoDB;

-- -----------------------------------------------------
-- Tabla: vendedores
-- -----------------------------------------------------
CREATE TABLE IF NOT EXISTS `vendedores` (
  `id_vendedor` INT NOT NULL AUTO_INCREMENT,
  `nombre` VARCHAR(45) NOT NULL,
  `apellido` VARCHAR(45) NOT NULL,
  `id_sucursal` INT NOT NULL,
  PRIMARY KEY (`id_vendedor`),
  INDEX (`id_sucursal`),
  CONSTRAINT `fk_vendedor_sucursal` -- asegura la integridad de los datos
    FOREIGN KEY (`id_sucursal`)
    REFERENCES `sucursales` (`id_sucursal`)
    ON DELETE NO ACTION
    ON UPDATE NO ACTION
) ENGINE = InnoDB;

-- -----------------------------------------------------
-- Tabla: proveedores
-- -----------------------------------------------------
CREATE TABLE IF NOT EXISTS `proveedores` (
  `id_proveedor` INT NOT NULL AUTO_INCREMENT,
  `nombre` VARCHAR(45) NOT NULL,
  `apellido` VARCHAR(45) NOT NULL,
  `direccion` VARCHAR(100) NULL,
  PRIMARY KEY (`id_proveedor`)
) ENGINE = InnoDB;

-- -----------------------------------------------------
-- Tabla: productos
-- -----------------------------------------------------
CREATE TABLE IF NOT EXISTS `productos` (
  `id_producto` INT NOT NULL AUTO_INCREMENT,
  `modelo` VARCHAR(45) NOT NULL,
  `marca` VARCHAR(45) NOT NULL,
  `precio` DECIMAL(10,2) NOT NULL,
  `id_proveedor` INT NOT NULL,
  PRIMARY KEY (`id_producto`),
  INDEX (`id_proveedor`),
  CONSTRAINT `fk_producto_proveedor`
    FOREIGN KEY (`id_proveedor`)
    REFERENCES `proveedores` (`id_proveedor`)
    ON DELETE NO ACTION
    ON UPDATE NO ACTION
) ENGINE = InnoDB;

-- -----------------------------------------------------
-- Tabla: ventas
-- -----------------------------------------------------
CREATE TABLE IF NOT EXISTS `ventas` (
  `id_venta` INT NOT NULL AUTO_INCREMENT,
  `id_cliente` INT NOT NULL,
  `id_producto` INT NOT NULL,
  `id_vendedor` INT NOT NULL,
  `fecha` DATETIME NOT NULL DEFAULT CURRENT_TIMESTAMP, -- fecha ingresada automaticamente al insertar un registro
  PRIMARY KEY (`id_venta`),
  INDEX (`id_cliente`),
  INDEX (`id_producto`),
  INDEX (`id_vendedor`),
  CONSTRAINT `fk_venta_cliente`
    FOREIGN KEY (`id_cliente`)
    REFERENCES `clientes` (`id_cliente`)
    ON DELETE NO ACTION
    ON UPDATE NO ACTION,
  CONSTRAINT `fk_venta_producto`
    FOREIGN KEY (`id_producto`)
    REFERENCES `productos` (`id_producto`)
    ON DELETE NO ACTION
    ON UPDATE NO ACTION,
  CONSTRAINT `fk_venta_vendedor`
    FOREIGN KEY (`id_vendedor`)
    REFERENCES `vendedores` (`id_vendedor`)
    ON DELETE NO ACTION
    ON UPDATE NO ACTION
) ENGINE = InnoDB;

-- Restaurar variables del sistema
SET SQL_MODE=@OLD_SQL_MODE;
SET FOREIGN_KEY_CHECKS=@OLD_FOREIGN_KEY_CHECKS;
SET UNIQUE_CHECKS=@OLD_UNIQUE_CHECKS;
