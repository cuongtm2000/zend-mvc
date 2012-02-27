-- -----------------------------------------------------
-- Table  `dos_module_products_cat`
-- -----------------------------------------------------
CREATE  TABLE IF NOT EXISTS  `dos_module_products_cat` (
  `cat_id` INT(11) NOT NULL AUTO_INCREMENT ,
  `cat_parent_id` INT(11) NOT NULL DEFAULT '0' ,
  `cat_title` VARCHAR(100) NOT NULL ,
  `cat_titleen` VARCHAR(100) NULL DEFAULT NULL ,
  `preview` TEXT NULL DEFAULT NULL ,
  `previewen` TEXT NULL DEFAULT NULL ,
  `tag` VARCHAR(100) NOT NULL ,
  `description` VARCHAR(250) NOT NULL ,
  `pic_full` VARCHAR(100) NULL DEFAULT NULL ,
  `pic_desc` VARCHAR(200) NULL DEFAULT NULL ,
  `cat_order` INT(11) NOT NULL ,
  `cat_extra1` VARCHAR(45) NULL DEFAULT NULL ,
  `cat_extra2` VARCHAR(45) NULL DEFAULT NULL ,
  `cat_enable` TINYINT(1) NOT NULL DEFAULT '1' ,
  `dos_usernames_username` VARCHAR(45) NOT NULL ,
  PRIMARY KEY (`cat_id`) )
ENGINE = InnoDB
AUTO_INCREMENT = 3
DEFAULT CHARACTER SET = utf8;


-- -----------------------------------------------------
-- Table  `dos_module_usernames`
-- -----------------------------------------------------
CREATE  TABLE IF NOT EXISTS  `dos_module_usernames` (
  `username` VARCHAR(45) NOT NULL ,
  `password` VARCHAR(45) NOT NULL ,
  `create_date` TIMESTAMP NOT NULL DEFAULT CURRENT_TIMESTAMP ,
  `full_name` VARCHAR(150) NULL DEFAULT NULL ,
  `email` VARCHAR(45) NULL DEFAULT NULL ,
  `birthday` DATE NULL DEFAULT NULL ,
  `address` VARCHAR(200) NULL DEFAULT NULL ,
  `cmnd` VARCHAR(10) NULL DEFAULT NULL ,
  `phone` VARCHAR(15) NULL DEFAULT NULL ,
  `bank_number` VARCHAR(20) NULL DEFAULT NULL ,
  `bank_name` VARCHAR(100) NULL DEFAULT NULL ,
  `user_gioithieu` VARCHAR(45) NOT NULL ,
  `balance` VARCHAR(45) NOT NULL DEFAULT '0' ,
  `user_group` VARCHAR(45) NOT NULL ,
  `level` INT NOT NULL DEFAULT 0 ,
  `enable` TINYINT(1) NOT NULL ,
  PRIMARY KEY (`username`) )
ENGINE = InnoDB
DEFAULT CHARACTER SET = utf8;


-- -----------------------------------------------------
-- Table  `dos_module_products`
-- -----------------------------------------------------
CREATE  TABLE IF NOT EXISTS  `dos_module_products` (
  `record_id` INT(11) NOT NULL AUTO_INCREMENT ,
  `title` VARCHAR(100) NOT NULL ,
  `titleen` VARCHAR(100) NULL DEFAULT NULL ,
  `postdate` TIMESTAMP NOT NULL DEFAULT CURRENT_TIMESTAMP ,
  `pic_thumb` VARCHAR(100) NULL DEFAULT NULL ,
  `pic_full` VARCHAR(100) NULL DEFAULT NULL ,
  `pic_desc` VARCHAR(200) NULL DEFAULT NULL ,
  `preview` TEXT NULL DEFAULT NULL ,
  `previewen` TEXT NULL DEFAULT NULL ,
  `detail` TEXT NOT NULL ,
  `detailen` TEXT NULL DEFAULT NULL ,
  `tag` VARCHAR(100) NOT NULL ,
  `description` VARCHAR(250) NOT NULL ,
  `hits` INT(11) NOT NULL DEFAULT '0' ,
  `record_order` INT(11) NOT NULL DEFAULT '1' ,
  `unit` INT(11) NULL DEFAULT NULL ,
  `hot` TINYINT(1) NOT NULL DEFAULT '0' ,
  `specials` TINYINT(1) NULL DEFAULT NULL ,
  `extra_field1` VARCHAR(100) NULL DEFAULT NULL ,
  `extra_field2` VARCHAR(100) NULL DEFAULT NULL ,
  `extra_field3` VARCHAR(100) NULL DEFAULT NULL ,
  `extra_field4` VARCHAR(100) NULL DEFAULT NULL ,
  `enable` TINYINT(1) NOT NULL DEFAULT '1' ,
  `dos_module_item_cat_cat_id` INT(11) NOT NULL ,
  `dos_module_usernames_username` VARCHAR(45) NOT NULL ,
  PRIMARY KEY (`record_id`) ,
  INDEX `fk_dos_module_products_dos_module_products_cat1` (`dos_module_item_cat_cat_id` ASC) ,
  INDEX `fk_dos_module_products_dos_module_usernames1` (`dos_module_usernames_username` ASC) ,
  CONSTRAINT `fk_dos_module_products_dos_module_products_cat10`
    FOREIGN KEY (`dos_module_item_cat_cat_id` )
    REFERENCES  `dos_module_products_cat` (`cat_id` )
    ON DELETE NO ACTION
    ON UPDATE NO ACTION,
  CONSTRAINT `fk_dos_module_products_dos_module_usernames10`
    FOREIGN KEY (`dos_module_usernames_username` )
    REFERENCES  `dos_module_usernames` (`username` )
    ON DELETE NO ACTION
    ON UPDATE NO ACTION)
ENGINE = InnoDB
AUTO_INCREMENT = 2
DEFAULT CHARACTER SET = utf8;


-- -----------------------------------------------------
-- Table  `dos_module_abouts`
-- -----------------------------------------------------
CREATE  TABLE IF NOT EXISTS  `dos_module_abouts` (
  `record_id` INT(11) NOT NULL AUTO_INCREMENT ,
  `title` VARCHAR(100) NOT NULL ,
  `titleen` VARCHAR(100) NULL DEFAULT NULL ,
  `content` TEXT NOT NULL ,
  `contenten` TEXT NULL DEFAULT NULL ,
  `hit` INT(11) NOT NULL DEFAULT '0' ,
  `created` TIMESTAMP NOT NULL DEFAULT CURRENT_TIMESTAMP ,
  `record_order` SMALLINT(6) NOT NULL DEFAULT '1' ,
  `hot` TINYINT(1) NOT NULL DEFAULT '0' ,
  `extra_field1` VARCHAR(45) NULL DEFAULT NULL ,
  `extra_field2` VARCHAR(45) NULL DEFAULT NULL ,
  `tag` VARCHAR(100) NOT NULL ,
  `description` VARCHAR(250) NOT NULL ,
  `activated` TINYINT(1) NOT NULL DEFAULT '1' ,
  PRIMARY KEY (`record_id`) ,
  INDEX `tag` (`tag` ASC) )
ENGINE = InnoDB
AUTO_INCREMENT = 138
DEFAULT CHARACTER SET = utf8;


-- -----------------------------------------------------
-- Table  `dos_module_banners`
-- -----------------------------------------------------
CREATE  TABLE IF NOT EXISTS  `dos_module_banners` (
  `banner_id` INT(11) NOT NULL AUTO_INCREMENT ,
  `banner_date` TIMESTAMP NOT NULL DEFAULT CURRENT_TIMESTAMP ,
  `banner_name` VARCHAR(45) NOT NULL ,
  `banner_url` VARCHAR(45) NOT NULL ,
  `banner_link` VARCHAR(200) NULL DEFAULT NULL ,
  `banner_order` INT(11) NOT NULL DEFAULT '1' ,
  `banner_type` VARCHAR(10) NOT NULL ,
  `position` VARCHAR(20) NOT NULL ,
  `enable` TINYINT(1) NOT NULL DEFAULT '1' ,
  PRIMARY KEY (`banner_id`) )
ENGINE = InnoDB
AUTO_INCREMENT = 7
DEFAULT CHARACTER SET = utf8;


-- -----------------------------------------------------
-- Table  `dos_module_advs`
-- -----------------------------------------------------
CREATE  TABLE IF NOT EXISTS  `dos_module_advs` (
  `record_id` INT(11) NOT NULL AUTO_INCREMENT ,
  `title` VARCHAR(100) NOT NULL ,
  `titleen` VARCHAR(100) NULL DEFAULT NULL ,
  `pic_thumb` VARCHAR(50) NOT NULL ,
  `url` VARCHAR(200) NOT NULL ,
  `create_date` TIMESTAMP NOT NULL DEFAULT CURRENT_TIMESTAMP ,
  `start_date` TIMESTAMP NOT NULL DEFAULT '0000-00-00 00:00:00' ,
  `end_date` TIMESTAMP NOT NULL DEFAULT '0000-00-00 00:00:00' ,
  `hits` INT(11) NOT NULL DEFAULT '0' ,
  `record_order` INT(11) NULL DEFAULT '1' ,
  `position` VARCHAR(45) NOT NULL ,
  `type` VARCHAR(45) NULL DEFAULT NULL ,
  `enable` TINYINT(1) NOT NULL DEFAULT '1' ,
  PRIMARY KEY (`record_id`) )
ENGINE = InnoDB
AUTO_INCREMENT = 3
DEFAULT CHARACTER SET = utf8;


-- -----------------------------------------------------
-- Table  `dos_module_contacts`
-- -----------------------------------------------------
CREATE  TABLE IF NOT EXISTS  `dos_module_contacts` (
  `record_id` INT(11) NOT NULL AUTO_INCREMENT ,
  `title` VARCHAR(100) NOT NULL ,
  `titleen` VARCHAR(100) NULL DEFAULT NULL ,
  `content` TEXT NOT NULL ,
  `contenten` TEXT NULL DEFAULT NULL ,
  `create_date` TIMESTAMP NOT NULL DEFAULT CURRENT_TIMESTAMP ,
  `record_order` SMALLINT(6) NOT NULL DEFAULT '1' ,
  `hit` INT(11) NOT NULL DEFAULT '0' ,
  `hot` TINYINT(1) NOT NULL DEFAULT '0' ,
  `tag` VARCHAR(100) NOT NULL ,
  `description` VARCHAR(250) NOT NULL ,
  `enable` VARCHAR(45) NOT NULL DEFAULT '1' ,
  PRIMARY KEY (`record_id`) )
ENGINE = InnoDB
AUTO_INCREMENT = 4
DEFAULT CHARACTER SET = utf8;


-- -----------------------------------------------------
-- Table  `dos_module_menus`
-- -----------------------------------------------------
CREATE  TABLE IF NOT EXISTS  `dos_module_menus` (
  `menu` VARCHAR(50) NOT NULL ,
  `menuen` VARCHAR(50) NULL DEFAULT NULL ,
  `url` VARCHAR(100) NULL DEFAULT NULL ,
  `target` VARCHAR(20) NULL DEFAULT NULL ,
  `position` TINYINT(4) NULL DEFAULT NULL )
ENGINE = InnoDB
DEFAULT CHARACTER SET = utf8;


-- -----------------------------------------------------
-- Table  `dos_module_pcounter_save`
-- -----------------------------------------------------
CREATE  TABLE IF NOT EXISTS  `dos_module_pcounter_save` (
  `save_name` VARCHAR(10) NOT NULL ,
  `save_value` INT(11) NOT NULL )
ENGINE = InnoDB
DEFAULT CHARACTER SET = utf8;


-- -----------------------------------------------------
-- Table  `dos_module_pcounter_users`
-- -----------------------------------------------------
CREATE  TABLE IF NOT EXISTS  `dos_module_pcounter_users` (
  `user_ip` VARCHAR(39) NOT NULL ,
  `user_time` INT(11) NOT NULL )
ENGINE = InnoDB
DEFAULT CHARACTER SET = utf8;


-- -----------------------------------------------------
-- Table  `dos_module_supports`
-- -----------------------------------------------------
CREATE  TABLE IF NOT EXISTS  `dos_module_supports` (
  `support_id` INT(11) NOT NULL AUTO_INCREMENT ,
  `support_name` VARCHAR(45) NOT NULL ,
  `support_phone` VARCHAR(45) NULL DEFAULT NULL ,
  `support_value` VARCHAR(45) NOT NULL ,
  `support_order` SMALLINT(6) NOT NULL ,
  `support_type` VARCHAR(20) NOT NULL ,
  PRIMARY KEY (`support_id`) )
ENGINE = InnoDB
AUTO_INCREMENT = 14
DEFAULT CHARACTER SET = utf8;


-- -----------------------------------------------------
-- Table  `dos_module_tables`
-- -----------------------------------------------------
CREATE  TABLE IF NOT EXISTS  `dos_module_tables` (
  `left_child` VARCHAR(45) NULL DEFAULT NULL ,
  `right_child` VARCHAR(45) NULL DEFAULT NULL ,
  `four_child` VARCHAR(180) NULL DEFAULT NULL ,
  `priority` VARCHAR(45) NULL DEFAULT NULL ,
  `upgrade_date` DATETIME NULL DEFAULT NULL ,
  `dos_module_usernames_username` VARCHAR(45) NOT NULL ,
  INDEX `fk_dos_module_table_dos_module_usernames1` (`dos_module_usernames_username` ASC) ,
  CONSTRAINT `fk_dos_module_table_dos_module_usernames10`
    FOREIGN KEY (`dos_module_usernames_username` )
    REFERENCES  `dos_module_usernames` (`username` )
    ON DELETE NO ACTION
    ON UPDATE NO ACTION)
ENGINE = InnoDB;
