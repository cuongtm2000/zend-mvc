INSERT INTO `cms`.`hoiit_modules` (`module_id`, `module_title`, `module_url`, `module_sort`, `module_type`, `module_page`) VALUES ('poll', 'Danh sách', 'poll', '7', '1', '0');


INSERT INTO `hoiit_functions` (`function_value`, `function_name`, `function_class`, `function_call`, `hoiit_modules_module_id`) VALUES('new_poll', 'Poll', '', 'getFirstItem', 'poll');

INSERT INTO `hoiit_langs` (`lang_id`, `lang_name`, `lang_admin`, `hoiit_languages_language_id`) VALUES('poll', 'Bình chọn', 0, 'vi');

CREATE TABLE IF NOT EXISTS `hoiit_module_poll` (
  `record_id` int(11) NOT NULL AUTO_INCREMENT,
  `question` varchar(255) NOT NULL,
  `begin_date` int(11) NOT NULL,
  `end_date` int(11) NOT NULL,
  `record_order` smallint(6) DEFAULT '1',
  `create_date` timestamp NOT NULL DEFAULT CURRENT_TIMESTAMP,
  `enable` tinyint(4) NOT NULL DEFAULT '1',
  PRIMARY KEY (`record_id`)
) ENGINE=InnoDB  DEFAULT CHARSET=utf8 AUTO_INCREMENT=2 ;

--
--
-- Table structure for table `hoiit_module_poll_rows`
--

CREATE TABLE IF NOT EXISTS `hoiit_module_poll_rows` (
  `id` int(11) NOT NULL AUTO_INCREMENT,
  `answer` varchar(255) NOT NULL,
  `url` varchar(255) DEFAULT NULL,
  `num_vote` int(11) NOT NULL DEFAULT '0',
  `vote_id` int(11) NOT NULL,
  PRIMARY KEY (`id`),
  KEY `vote_id` (`vote_id`)
) ENGINE=InnoDB DEFAULT CHARSET=utf8 AUTO_INCREMENT=1 ;

INSERT INTO `hoiit_positions` (`pos_id`, `pos_sort`, `pos_activated`, `module_id`, `action_id`, `controller_id`, `hoiit_functions_function_value`) VALUES ('right', 6, '1', 'default', NULL, NULL, 'new_poll');

ALTER TABLE `hoiit_module_poll_rows`
  ADD CONSTRAINT `hoiit_module_poll_rows_ibfk_1` FOREIGN KEY (`vote_id`) REFERENCES `hoiit_module_poll` (`record_id`) ON DELETE CASCADE ON UPDATE CASCADE;

