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
-- Table `mydb`.`Role`
-- -----------------------------------------------------
CREATE TABLE IF NOT EXISTS `mydb`.`Role` (
  `id` INT NOT NULL AUTO_INCREMENT,
  `name` VARCHAR(155) NOT NULL,
  `description` VARCHAR(500) NOT NULL,
  PRIMARY KEY (`id`),
  UNIQUE INDEX `name_UNIQUE` (`name` ASC) VISIBLE,
  UNIQUE INDEX `description_UNIQUE` (`description` ASC) VISIBLE)
ENGINE = InnoDB;


-- -----------------------------------------------------
-- Table `mydb`.`Access`
-- -----------------------------------------------------
CREATE TABLE IF NOT EXISTS `mydb`.`Access` (
  `id` INT NOT NULL AUTO_INCREMENT,
  `Role_id` INT NOT NULL,
  PRIMARY KEY (`id`),
  INDEX `fk_Access_Role1_idx` (`Role_id` ASC) VISIBLE,
  CONSTRAINT `fk_Access_Role1`
    FOREIGN KEY (`Role_id`)
    REFERENCES `mydb`.`Role` (`id`)
    ON DELETE RESTRICT
    ON UPDATE CASCADE)
ENGINE = InnoDB;


-- -----------------------------------------------------
-- Table `mydb`.`Source`
-- -----------------------------------------------------
CREATE TABLE IF NOT EXISTS `mydb`.`Source` (
  `id` INT NOT NULL AUTO_INCREMENT,
  `template` VARCHAR(300) NOT NULL,
  PRIMARY KEY (`id`))
ENGINE = InnoDB;


-- -----------------------------------------------------
-- Table `mydb`.`Query`
-- -----------------------------------------------------
CREATE TABLE IF NOT EXISTS `mydb`.`Query` (
  `id` INT NOT NULL AUTO_INCREMENT,
  `title` VARCHAR(155) NOT NULL,
  `description` VARCHAR(500) NOT NULL,
  `created` DATETIME(4) NOT NULL,
  `modified` DATETIME(4) NOT NULL,
  `Access_id` INT NOT NULL,
  `Source_id` INT NOT NULL,
  PRIMARY KEY (`id`),
  INDEX `fk_Query_Access1_idx` (`Access_id` ASC) VISIBLE,
  INDEX `fk_Query_Source1_idx` (`Source_id` ASC) VISIBLE,
  CONSTRAINT `fk_Query_Access1`
    FOREIGN KEY (`Access_id`)
    REFERENCES `mydb`.`Access` (`id`)
    ON DELETE RESTRICT
    ON UPDATE CASCADE,
  CONSTRAINT `fk_Query_Source1`
    FOREIGN KEY (`Source_id`)
    REFERENCES `mydb`.`Source` (`id`)
    ON DELETE RESTRICT
    ON UPDATE CASCADE)
ENGINE = InnoDB;


-- -----------------------------------------------------
-- Table `mydb`.`Result`
-- -----------------------------------------------------
CREATE TABLE IF NOT EXISTS `mydb`.`Result` (
  `id` INT NOT NULL AUTO_INCREMENT,
  `name` VARCHAR(155) NOT NULL,
  `description` VARCHAR(300) NOT NULL,
  `Query_id` INT NOT NULL,
  PRIMARY KEY (`id`),
  INDEX `fk_Result_Query1_idx` (`Query_id` ASC) VISIBLE,
  CONSTRAINT `fk_Result_Query1`
    FOREIGN KEY (`Query_id`)
    REFERENCES `mydb`.`Query` (`id`)
    ON DELETE RESTRICT
    ON UPDATE CASCADE)
ENGINE = InnoDB;


-- -----------------------------------------------------
-- Table `mydb`.`User`
-- -----------------------------------------------------
CREATE TABLE IF NOT EXISTS `mydb`.`User` (
  `id` INT NOT NULL AUTO_INCREMENT,
  `name` VARCHAR(155) NOT NULL,
  `email` VARCHAR(155) NOT NULL,
  `login` VARCHAR(155) NOT NULL,
  `password` VARCHAR(155) NOT NULL,
  `Access_id` INT NOT NULL,
  PRIMARY KEY (`id`),
  UNIQUE INDEX `email_UNIQUE` (`email` ASC) VISIBLE,
  UNIQUE INDEX `login_UNIQUE` (`login` ASC) VISIBLE,
  INDEX `fk_User_Access_idx` (`Access_id` ASC) VISIBLE,
  CONSTRAINT `fk_User_Access`
    FOREIGN KEY (`Access_id`)
    REFERENCES `mydb`.`Access` (`id`)
    ON DELETE RESTRICT
    ON UPDATE CASCADE)
ENGINE = InnoDB;


SET SQL_MODE=@OLD_SQL_MODE;
SET FOREIGN_KEY_CHECKS=@OLD_FOREIGN_KEY_CHECKS;
SET UNIQUE_CHECKS=@OLD_UNIQUE_CHECKS;
