CREATE DATABASE librarydb

CREATE TABLE `mydb`.`authors` (
  `authorid` INT NOT NULL AUTO_INCREMENT,
  `name` VARCHAR(45) NOT NULL,
  `country` VARCHAR(45) NOT NULL,
  PRIMARY KEY (`authorid`));
  
  CREATE TABLE `librarydb`.`books` (
  `bookid` INT NOT NULL AUTO_INCREMENT,
  `title` VARCHAR(45) NOT NULL,
  `genre` VARCHAR(45) NOT NULL,
  `authorid` INT NOT NULL,
  PRIMARY KEY (`bookid`),
  INDEX `authorid_idx` (`authorid` ASC) VISIBLE,
  CONSTRAINT `authorid`
    FOREIGN KEY (`authorid`)
    REFERENCES `librarydb`.`authors` (`authorid`)
    ON DELETE NO ACTION
    ON UPDATE NO ACTION);
    
 CREATE TABLE `librarydb`.`members` (
  `memberid` INT NOT NULL AUTO_INCREMENT,
  `membername` VARCHAR(45) NOT NULL,
  `joindate` DATE NOT NULL,
  PRIMARY KEY (`memberid`));
  
  CREATE TABLE `librarydb`.`borrowings` (
  `borrowid` INT NOT NULL AUTO_INCREMENT,
  `memberid` INT NOT NULL,
  `bookid` INT NOT NULL,
  `borrowdate` DATE NOT NULL,
  `returndate` DATE NOT NULL,
  PRIMARY KEY (`borrowid`),
  INDEX `memberid_idx` (`memberid` ASC) VISIBLE,
  INDEX `bookid_idx` (`bookid` ASC) VISIBLE,
  CONSTRAINT `memberid`
    FOREIGN KEY (`memberid`)
    REFERENCES `librarydb`.`members` (`memberid`)
    ON DELETE NO ACTION
    ON UPDATE NO ACTION,
  CONSTRAINT `bookid`
    FOREIGN KEY (`bookid`)
    REFERENCES `librarydb`.`books` (`bookid`)
    ON DELETE NO ACTION
    ON UPDATE NO ACTION);