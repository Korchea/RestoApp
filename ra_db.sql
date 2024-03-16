-- MySQL Workbench Forward Engineering

SET @OLD_UNIQUE_CHECKS=@@UNIQUE_CHECKS, UNIQUE_CHECKS=0;
SET @OLD_FOREIGN_KEY_CHECKS=@@FOREIGN_KEY_CHECKS, FOREIGN_KEY_CHECKS=0;
SET @OLD_SQL_MODE=@@SQL_MODE, SQL_MODE='ONLY_FULL_GROUP_BY,STRICT_TRANS_TABLES,NO_ZERO_IN_DATE,NO_ZERO_DATE,ERROR_FOR_DIVISION_BY_ZERO,NO_ENGINE_SUBSTITUTION';

-- -----------------------------------------------------
-- Schema RestoAppDB
-- -----------------------------------------------------

-- -----------------------------------------------------
-- Schema RestoAppDB
-- -----------------------------------------------------
CREATE SCHEMA IF NOT EXISTS `RestoAppDB` DEFAULT CHARACTER SET utf8 ;
USE `RestoAppDB` ;

-- -----------------------------------------------------
-- Table `RestoAppDB`.`ingrediente`
-- -----------------------------------------------------
CREATE TABLE IF NOT EXISTS `RestoAppDB`.`ingrediente` (
  `id` INT NOT NULL AUTO_INCREMENT,
  `nombre` VARCHAR(45) NOT NULL,
  `cantidad` DECIMAL(4) NOT NULL,
  PRIMARY KEY (`id`),
  UNIQUE INDEX `nombre_UNIQUE` (`nombre` ASC) VISIBLE)
ENGINE = InnoDB;


-- -----------------------------------------------------
-- Table `RestoAppDB`.`receta`
-- -----------------------------------------------------
CREATE TABLE IF NOT EXISTS `RestoAppDB`.`receta` (
  `id` INT NOT NULL AUTO_INCREMENT,
  `nombre` VARCHAR(45) NOT NULL,
  `precio` INT NOT NULL,
  `descripcion` VARCHAR(60) NOT NULL,
  `ingrediente_id` INT NOT NULL,
  `extras` VARCHAR(45) NOT NULL,
  PRIMARY KEY (`id`, `ingrediente_id`),
  INDEX `fk_receta_ingrediente1_idx` (`ingrediente_id` ASC) VISIBLE,
  CONSTRAINT `fk_receta_ingrediente1`
    FOREIGN KEY (`ingrediente_id`)
    REFERENCES `RestoAppDB`.`ingrediente` (`id`)
    ON DELETE NO ACTION
    ON UPDATE NO ACTION)
ENGINE = InnoDB;


-- -----------------------------------------------------
-- Table `RestoAppDB`.`carta`
-- -----------------------------------------------------
CREATE TABLE IF NOT EXISTS `RestoAppDB`.`carta` (
  `id` INT NOT NULL AUTO_INCREMENT,
  `receta_id` INT NOT NULL,
  PRIMARY KEY (`id`, `receta_id`),
  INDEX `fk_carta_receta_idx` (`receta_id` ASC) VISIBLE,
  CONSTRAINT `fk_carta_receta`
    FOREIGN KEY (`receta_id`)
    REFERENCES `RestoAppDB`.`receta` (`id`)
    ON DELETE NO ACTION
    ON UPDATE NO ACTION)
ENGINE = InnoDB;


-- -----------------------------------------------------
-- Table `RestoAppDB`.`mesa`
-- -----------------------------------------------------
CREATE TABLE IF NOT EXISTS `RestoAppDB`.`mesa` (
  `id` INT NOT NULL AUTO_INCREMENT,
  `comensales` VARCHAR(45) NOT NULL,
  `carta_id` INT NOT NULL,
  `carta_receta_id` INT NOT NULL,
  PRIMARY KEY (`id`, `carta_id`, `carta_receta_id`),
  INDEX `fk_mesa_carta1_idx` (`carta_id` ASC, `carta_receta_id` ASC) VISIBLE,
  CONSTRAINT `fk_mesa_carta1`
    FOREIGN KEY (`carta_id` , `carta_receta_id`)
    REFERENCES `RestoAppDB`.`carta` (`id` , `receta_id`)
    ON DELETE NO ACTION
    ON UPDATE NO ACTION)
ENGINE = InnoDB;


-- -----------------------------------------------------
-- Table `RestoAppDB`.`recibo`
-- -----------------------------------------------------
CREATE TABLE IF NOT EXISTS `RestoAppDB`.`recibo` (
  `id` INT NOT NULL AUTO_INCREMENT,
  `mesa_id` INT NOT NULL,
  `mesa_carta_id` INT NOT NULL,
  `mesa_carta_receta_id` INT NOT NULL,
  `pago` INT NOT NULL,
  `fecha` DATETIME NOT NULL,
  PRIMARY KEY (`id`, `mesa_id`, `mesa_carta_id`, `mesa_carta_receta_id`),
  INDEX `fk_recibo_mesa1_idx` (`mesa_id` ASC, `mesa_carta_id` ASC, `mesa_carta_receta_id` ASC) VISIBLE,
  CONSTRAINT `fk_recibo_mesa1`
    FOREIGN KEY (`mesa_id` , `mesa_carta_id` , `mesa_carta_receta_id`)
    REFERENCES `RestoAppDB`.`mesa` (`id` , `carta_id` , `carta_receta_id`)
    ON DELETE NO ACTION
    ON UPDATE NO ACTION)
ENGINE = InnoDB;


-- -----------------------------------------------------
-- Table `RestoAppDB`.`recibo_has_receta`
-- -----------------------------------------------------
CREATE TABLE IF NOT EXISTS `RestoAppDB`.`recibo_has_receta` (
  `recibo_id` INT NOT NULL,
  `receta_id` INT NOT NULL,
  `receta_ingrediente_id` INT NOT NULL,
  PRIMARY KEY (`recibo_id`, `receta_id`, `receta_ingrediente_id`),
  INDEX `fk_recibo_has_receta_receta1_idx` (`receta_id` ASC, `receta_ingrediente_id` ASC) VISIBLE,
  INDEX `fk_recibo_has_receta_recibo1_idx` (`recibo_id` ASC) VISIBLE,
  CONSTRAINT `fk_recibo_has_receta_recibo1`
    FOREIGN KEY (`recibo_id`)
    REFERENCES `RestoAppDB`.`recibo` (`id`)
    ON DELETE NO ACTION
    ON UPDATE NO ACTION,
  CONSTRAINT `fk_recibo_has_receta_receta1`
    FOREIGN KEY (`receta_id` , `receta_ingrediente_id`)
    REFERENCES `RestoAppDB`.`receta` (`id` , `ingrediente_id`)
    ON DELETE NO ACTION
    ON UPDATE NO ACTION)
ENGINE = InnoDB;


SET SQL_MODE=@OLD_SQL_MODE;
SET FOREIGN_KEY_CHECKS=@OLD_FOREIGN_KEY_CHECKS;
SET UNIQUE_CHECKS=@OLD_UNIQUE_CHECKS;
