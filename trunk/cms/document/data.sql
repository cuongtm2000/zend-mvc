CREATE  TABLE IF NOT EXISTS `hoiit_modules` (
  `module_id` VARCHAR(30) NOT NULL ,
  `module_title` VARCHAR(45) NOT NULL ,
  `module_sort` TINYINT NOT NULL ,
  PRIMARY KEY (`module_id`) )
ENGINE = InnoDB;
CREATE  TABLE IF NOT EXISTS `hoiit_functions` (
  `function_value` VARCHAR(30) NOT NULL ,
  `function_name` VARCHAR(45) NOT NULL ,
  `functiol_call` VARCHAR(30) NOT NULL ,
  `hoiit_modules_module_id` VARCHAR(30) NOT NULL ,
  PRIMARY KEY (`function_value`) ,
  INDEX `fk_hoiit_functions_hoiit_modules` (`hoiit_modules_module_id` ASC) ,
  CONSTRAINT `fk_hoiit_functions_hoiit_modules`
    FOREIGN KEY (`hoiit_modules_module_id` )
    REFERENCES `hoiit_modules` (`module_id` )
    ON DELETE NO ACTION
    ON UPDATE NO ACTION)
ENGINE = InnoDB;
CREATE  TABLE IF NOT EXISTS `hoiit_configs` (
  `config_name` VARCHAR(30) NOT NULL ,
  `config_value` INT NOT NULL ,
  `config_desc` VARCHAR(100) NULL ,
  `hoiit_functions_function_value` VARCHAR(30) NOT NULL ,
  PRIMARY KEY (`config_name`) ,
  INDEX `fk_hoiit_configs_hoiit_functions1` (`hoiit_functions_function_value` ASC) ,
  CONSTRAINT `fk_hoiit_configs_hoiit_functions1`
    FOREIGN KEY (`hoiit_functions_function_value` )
    REFERENCES `hoiit_functions` (`function_value` )
    ON DELETE NO ACTION
    ON UPDATE NO ACTION)
ENGINE = InnoDB;
CREATE  TABLE IF NOT EXISTS `hoiit_positions` (
  `pos_id` VARCHAR(30) NOT NULL ,
  `pos_sort` TINYINT NOT NULL ,
  `pos_activated` VARCHAR(45) NOT NULL ,
  `module_id` VARCHAR(30) NOT NULL ,
  `hoiit_functions_function_value` VARCHAR(30) NOT NULL ,
  PRIMARY KEY (`pos_id`) ,
  INDEX `fk_hoiit_positions_hoiit_functions1` (`hoiit_functions_function_value` ASC) ,
  CONSTRAINT `fk_hoiit_positions_hoiit_functions1`
    FOREIGN KEY (`hoiit_functions_function_value` )
    REFERENCES `hoiit_functions` (`function_value` )
    ON DELETE NO ACTION
    ON UPDATE NO ACTION)
ENGINE = InnoDB;
CREATE  TABLE IF NOT EXISTS `hoiit_templates` (
  `template_id` VARCHAR(30) NOT NULL ,
  `template_name` VARCHAR(45) NOT NULL ,
  `template_date` TIMESTAMP NOT NULL DEFAULT CURRENT_TIMESTAMP ,
  `template_desc` VARCHAR(100) NULL ,
  `template_author` VARCHAR(45) NULL ,
  `template_web` VARCHAR(100) NULL ,
  `template_activated` TINYINT(1) NOT NULL DEFAULT 0 ,
  PRIMARY KEY (`template_id`) )
ENGINE = InnoDB;
CREATE  TABLE IF NOT EXISTS `hoiit_settings` (
  `setting_name` VARCHAR(30) NOT NULL ,
  `setting_value` INT NOT NULL ,
  `setting_desc` VARCHAR(100) NULL ,
  `hoiit_templates_template_id` VARCHAR(30) NOT NULL ,
  PRIMARY KEY (`setting_name`) ,
  INDEX `fk_hoiit_settings_hoiit_templates1` (`hoiit_templates_template_id` ASC) ,
  CONSTRAINT `fk_hoiit_settings_hoiit_templates1`
    FOREIGN KEY (`hoiit_templates_template_id` )
    REFERENCES `hoiit_templates` (`template_id` )
    ON DELETE NO ACTION
    ON UPDATE NO ACTION)
ENGINE = InnoDB;