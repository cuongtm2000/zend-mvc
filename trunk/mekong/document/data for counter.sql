CREATE TABLE IF NOT EXISTS `hoiit_module_counter_session` (
  `session_id` varchar(9) NOT NULL,
  `session_time` int(11) NOT NULL,
  PRIMARY KEY (`session_id`)
) ENGINE=InnoDB DEFAULT CHARSET=utf8;


CREATE TABLE IF NOT EXISTS `hoiit_module_counter_value` (
  `save_name` varchar(32) NOT NULL,
  `save_value` int(11) NOT NULL,
  PRIMARY KEY (`save_name`)
) ENGINE=InnoDB DEFAULT CHARSET=utf8;
