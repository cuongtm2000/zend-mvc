-- phpMyAdmin SQL Dump
-- version 3.4.5
-- http://www.phpmyadmin.net
--
-- Host: localhost
-- Generation Time: Jul 31, 2012 at 05:35 PM
-- Server version: 5.5.16
-- PHP Version: 5.3.8

SET SQL_MODE="NO_AUTO_VALUE_ON_ZERO";
SET time_zone = "+00:00";


/*!40101 SET @OLD_CHARACTER_SET_CLIENT=@@CHARACTER_SET_CLIENT */;
/*!40101 SET @OLD_CHARACTER_SET_RESULTS=@@CHARACTER_SET_RESULTS */;
/*!40101 SET @OLD_COLLATION_CONNECTION=@@COLLATION_CONNECTION */;
/*!40101 SET NAMES utf8 */;

--
-- Database: `cms`
--

-- --------------------------------------------------------

--
-- Table structure for table `hoiit_configs`
--

CREATE TABLE IF NOT EXISTS `hoiit_configs` (
  `config_name` varchar(30) NOT NULL,
  `config_value` int(11) NOT NULL,
  `config_desc` varchar(100) DEFAULT NULL,
  `hoiit_modules_module_id` varchar(30) NOT NULL,
  PRIMARY KEY (`config_name`),
  KEY `fk_hoiit_configs_hoiit_modules1` (`hoiit_modules_module_id`)
) ENGINE=InnoDB DEFAULT CHARSET=utf8;

--
-- Dumping data for table `hoiit_configs`
--

INSERT INTO `hoiit_configs` (`config_name`, `config_value`, `config_desc`, `hoiit_modules_module_id`) VALUES
('adv_bottom_height', 222, NULL, 'adv'),
('adv_bottom_width', 222, NULL, 'adv'),
('adv_center_height', 222, NULL, 'adv'),
('adv_center_width', 222, NULL, 'adv'),
('adv_left_height', 222, NULL, 'adv'),
('adv_left_width', 222, NULL, 'adv'),
('adv_right_height', 222, NULL, 'adv'),
('adv_right_width', 222, NULL, 'adv'),
('adv_top_height', 222, NULL, 'adv'),
('adv_top_width', 222, NULL, 'adv'),
('products_cat_height_thumb', 200, NULL, 'products'),
('products_cat_width_thumb', 200, NULL, 'products'),
('products_height_desc', 700, NULL, 'products'),
('products_height_full', 700, NULL, 'products'),
('products_height_thumb', 220, NULL, 'products'),
('products_width_desc', 520, NULL, 'products'),
('products_width_full', 520, NULL, 'products'),
('products_width_thumb', 220, NULL, 'products');

-- --------------------------------------------------------

--
-- Table structure for table `hoiit_functions`
--

CREATE TABLE IF NOT EXISTS `hoiit_functions` (
  `function_value` varchar(30) NOT NULL,
  `function_name` varchar(45) NOT NULL,
  `function_class` varchar(30) NOT NULL,
  `function_call` varchar(30) DEFAULT NULL,
  `hoiit_modules_module_id` varchar(30) NOT NULL,
  PRIMARY KEY (`function_value`),
  KEY `fk_hoiit_functions_hoiit_modules` (`hoiit_modules_module_id`)
) ENGINE=InnoDB DEFAULT CHARSET=utf8;

--
-- Dumping data for table `hoiit_functions`
--

INSERT INTO `hoiit_functions` (`function_value`, `function_name`, `function_class`, `function_call`, `hoiit_modules_module_id`) VALUES
('about_home', 'About', '', 'firstHotRecord', 'about'),
('adv_left', 'Adv', '', 'listItemsLeft', 'adv'),
('adv_right', 'Adv', '', 'listItemsRight', 'adv'),
('counter', 'Counter', 'Counter.Counter', 'publishAssets', 'counter'),
('list_support', 'Support', '', 'listItem', 'support'),
('menu_about', 'About', '', 'listItem', 'about'),
('menu_products', 'ProductsCat', '', 'listItem', 'products'),
('news_hot', 'News', '', 'listItemsHot', 'news'),
('news_new', 'News', '', 'listItemsNew', 'news');

-- --------------------------------------------------------

--
-- Table structure for table `hoiit_groups`
--

CREATE TABLE IF NOT EXISTS `hoiit_groups` (
  `group_id` varchar(45) NOT NULL,
  `group_name` varchar(100) NOT NULL,
  PRIMARY KEY (`group_id`)
) ENGINE=InnoDB DEFAULT CHARSET=utf8;

--
-- Dumping data for table `hoiit_groups`
--

INSERT INTO `hoiit_groups` (`group_id`, `group_name`) VALUES
('administrator', 'Administrator');

-- --------------------------------------------------------

--
-- Table structure for table `hoiit_langs`
--

CREATE TABLE IF NOT EXISTS `hoiit_langs` (
  `lang_id` varchar(45) NOT NULL,
  `lang_name` varchar(200) NOT NULL,
  `lang_admin` tinyint(1) NOT NULL DEFAULT '0',
  `hoiit_languages_language_id` varchar(2) NOT NULL,
  PRIMARY KEY (`lang_id`,`hoiit_languages_language_id`),
  KEY `fk_hoiit_langs_hoiit_languages1` (`hoiit_languages_language_id`)
) ENGINE=InnoDB DEFAULT CHARSET=utf8;

--
-- Dumping data for table `hoiit_langs`
--

INSERT INTO `hoiit_langs` (`lang_id`, `lang_name`, `lang_admin`, `hoiit_languages_language_id`) VALUES
('about', 'About us', 0, 'en'),
('about', 'Giới thiệu', 0, 'vi'),
('action', 'Thao tác', 1, 'vi'),
('add_new', 'Thêm mới', 1, 'vi'),
('add_row', 'Thêm dòng', 1, 'vi'),
('adv', 'Adv', 0, 'en'),
('adv', 'Quảng cáo', 0, 'vi'),
('cancel', 'Cancel', 1, 'en'),
('cancel', 'Hủy bỏ', 1, 'vi'),
('cat_title', 'Danh mục', 1, 'vi'),
('counter', 'Counter', 0, 'en'),
('counter', 'Thống kê truy cập', 0, 'vi'),
('create_date', 'Ngày tạo', 1, 'vi'),
('default', 'Trang chủ', 0, 'vi'),
('delete', 'Xóa', 1, 'vi'),
('edit', 'Chỉnh sửa', 0, 'vi'),
('hidden', 'Ẩn', 1, 'vi'),
('news', 'Tin tức', 0, 'vi'),
('no_record', 'Không tồn tại mẫu tin', 0, 'vi'),
('order', 'Order', 1, 'en'),
('order', 'Thứ tự', 1, 'vi'),
('products', 'Products', 0, 'en'),
('products', 'Sản phẩm', 0, 'vi'),
('show', 'Hiển thị', 1, 'vi'),
('sort', 'Sắp xếp', 1, 'vi'),
('support', 'Support', 0, 'en'),
('support', 'Hỗ trợ trực tuyến', 0, 'vi'),
('synchronous', 'Đồng bộ', 1, 'vi'),
('title', 'Title', 1, 'en'),
('title', 'Tiêu đề', 1, 'vi'),
('view', 'Lượt xem', 1, 'vi');

-- --------------------------------------------------------

--
-- Table structure for table `hoiit_languages`
--

CREATE TABLE IF NOT EXISTS `hoiit_languages` (
  `language_id` varchar(2) NOT NULL,
  `language_name` varchar(45) NOT NULL,
  `language_sort` tinyint(4) NOT NULL DEFAULT '1',
  PRIMARY KEY (`language_id`)
) ENGINE=InnoDB DEFAULT CHARSET=utf8;

--
-- Dumping data for table `hoiit_languages`
--

INSERT INTO `hoiit_languages` (`language_id`, `language_name`, `language_sort`) VALUES
('en', 'English', 2),
('vi', 'Việt Nam', 1);

-- --------------------------------------------------------

--
-- Table structure for table `hoiit_modules`
--

CREATE TABLE IF NOT EXISTS `hoiit_modules` (
  `module_id` varchar(30) NOT NULL,
  `module_title` varchar(100) NOT NULL,
  `module_url` varchar(100) DEFAULT NULL,
  `module_sort` tinyint(4) NOT NULL,
  `module_type` tinyint(1) NOT NULL DEFAULT '0',
  PRIMARY KEY (`module_id`)
) ENGINE=InnoDB DEFAULT CHARSET=utf8;

--
-- Dumping data for table `hoiit_modules`
--

INSERT INTO `hoiit_modules` (`module_id`, `module_title`, `module_url`, `module_sort`, `module_type`) VALUES
('about', 'Danh sách|Cấu hình Url', 'about|about/url', 2, 1),
('adv', 'Danh sách|Cấu hình upload', 'adv|adv/upload', 5, 1),
('counter', 'Counter', NULL, 4, 0),
('default', 'Default', NULL, 1, 1),
('news', 'Danh mục|Danh sách|Cấu hình upload|Cấu hình Url', 'news/cat|news|news/upload|news/url', 4, 1),
('products', 'Danh mục|Danh sách|Cấu hình upload|Cấu hình Url', 'products/cat|products|products/upload|products/url', 3, 1),
('support', 'Danh sách', 'support', 6, 1);

-- --------------------------------------------------------

--
-- Table structure for table `hoiit_module_about`
--

CREATE TABLE IF NOT EXISTS `hoiit_module_about` (
  `record_id` int(11) NOT NULL AUTO_INCREMENT,
  `pic_thumb` varchar(100) DEFAULT NULL,
  `created` timestamp NOT NULL DEFAULT CURRENT_TIMESTAMP,
  `record_order` int(11) DEFAULT NULL,
  `hot` tinyint(1) NOT NULL DEFAULT '0',
  `field1` varchar(100) DEFAULT NULL,
  `field2` varchar(100) DEFAULT NULL,
  `enable` tinyint(1) NOT NULL DEFAULT '0',
  PRIMARY KEY (`record_id`)
) ENGINE=InnoDB  DEFAULT CHARSET=utf8 AUTO_INCREMENT=48 ;

--
-- Dumping data for table `hoiit_module_about`
--

INSERT INTO `hoiit_module_about` (`record_id`, `pic_thumb`, `created`, `record_order`, `hot`, `field1`, `field2`, `enable`) VALUES
(46, NULL, '2012-07-16 03:15:05', 1, 0, NULL, NULL, 1),
(47, NULL, '2012-07-16 03:20:52', 2, 1, NULL, NULL, 1);

-- --------------------------------------------------------

--
-- Table structure for table `hoiit_module_about_languages`
--

CREATE TABLE IF NOT EXISTS `hoiit_module_about_languages` (
  `record_id` int(11) NOT NULL,
  `language_id` varchar(2) NOT NULL,
  `title` varchar(100) NOT NULL,
  `content` text NOT NULL,
  `tag` varchar(100) NOT NULL,
  `description` varchar(250) DEFAULT NULL,
  `hit` int(11) NOT NULL DEFAULT '0',
  `extra_field1` varchar(100) DEFAULT NULL,
  `extra_field2` varchar(100) DEFAULT NULL,
  PRIMARY KEY (`record_id`,`language_id`),
  KEY `fk_hoiit_about_has_hoiit_languages_hoiit_languages1` (`language_id`),
  KEY `fk_hoiit_about_has_hoiit_languages_hoiit_about1` (`record_id`)
) ENGINE=InnoDB DEFAULT CHARSET=utf8;

--
-- Dumping data for table `hoiit_module_about_languages`
--

INSERT INTO `hoiit_module_about_languages` (`record_id`, `language_id`, `title`, `content`, `tag`, `description`, `hit`, `extra_field1`, `extra_field2`) VALUES
(46, 'en', '', '<p>asdas</p>', '', 'dasd', 150, NULL, NULL),
(46, 'vi', 'Welcome to Yiiproject.com', '<p>Welcome to Yiiproject.com Welcome to Yiiproject.comWelcome to Yiiproject.comWelcome to Yiiproject.comWelcome to Yiiproject.comWelcome to Yiiproject.comWelcome to Yiiproject.comWelcome to Yiiproject.comWelcome to Yiiproject.comWelcome to Yiiproject.comWelcome to Yiiproject.comWelcome to Yiiproject.comWelcome to Yiiproject.comWelcome to Yiiproject.comWelcome to Yiiproject.comWelcome to Yiiproject.comWelcome to Yiiproject.comWelcome to Yiiproject.comWelcome to Yiiproject.comWelcome to Yiiproject.comWelcome to</p>\r\n<h3>Welcome to Yiiproject.com</h3>\r\n<p>Yiiproject.comWelcome to Yiiproject.comWelcome to Yiiproject.comWelcome to Yiiproject.comWelcome to Yiiproject.comWelcome to Yiiproject.comWelcome to Yiiproject.comWelcome to Yiiproject.comWelcome to Yiiproject.comWelcome to Yiiproject.comWelcome to Yiiproject.comWelcome to Yiiproject.comWelcome to Yiiproject.comWelcome to Yiiproject.com Welcome to Yiiproject.comWelcome to Yiiproject.comWelcome to Yiiproject.comWelcome to Yiiproject.com Welcome to Yiiproject.com</p>', 'welcome-to-yiiprojectcom', 'das', 150, NULL, NULL),
(47, 'en', 'About', '<p>Con tnet</p>', 'about', 'dasdsadsads', 150, NULL, NULL),
(47, 'vi', 'Gioi thieu', '<p>Noi dung</p>', 'gioi-thieu', 'asdasdsd', 150, NULL, NULL);

-- --------------------------------------------------------

--
-- Table structure for table `hoiit_module_advs`
--

CREATE TABLE IF NOT EXISTS `hoiit_module_advs` (
  `record_id` int(11) NOT NULL AUTO_INCREMENT,
  `title` varchar(100) NOT NULL,
  `pic_thumb` varchar(100) NOT NULL,
  `url` varchar(200) DEFAULT NULL,
  `create_date` timestamp NOT NULL DEFAULT CURRENT_TIMESTAMP,
  `start_date` timestamp NOT NULL DEFAULT '0000-00-00 00:00:00',
  `end_date` timestamp NOT NULL DEFAULT '0000-00-00 00:00:00',
  `hits` int(11) NOT NULL DEFAULT '0',
  `record_order` int(11) DEFAULT NULL,
  `position` varchar(45) NOT NULL,
  `type` varchar(45) DEFAULT NULL,
  `click` varchar(45) NOT NULL DEFAULT '0',
  `enable` tinyint(1) NOT NULL DEFAULT '1',
  PRIMARY KEY (`record_id`)
) ENGINE=InnoDB  DEFAULT CHARSET=utf8 AUTO_INCREMENT=20 ;

--
-- Dumping data for table `hoiit_module_advs`
--

INSERT INTO `hoiit_module_advs` (`record_id`, `title`, `pic_thumb`, `url`, `create_date`, `start_date`, `end_date`, `hits`, `record_order`, `position`, `type`, `click`, `enable`) VALUES
(15, 'Quảng cáo Logo', 'quang-cao-logo.jpg', 'http://dos.vn', '2012-07-20 00:22:52', '2012-07-19 17:00:00', '2012-07-22 17:00:00', 0, 3, 'left', '_bank', '0', 1),
(16, 'Logo right', 'logo-right.png', '', '2012-07-20 01:45:53', '2012-07-19 17:00:00', '2012-08-12 17:00:00', 0, 2, 'right', '_bank', '0', 1),
(17, 'Quảng cáo', 'quang-cao.jpg', '', '2012-07-20 01:51:12', '2012-07-19 17:00:00', '2012-07-20 17:00:00', 0, 1, 'left', '_bank', '0', 1),
(18, 'Quảng cáo', 'quang-cao1.jpg', '', '2012-07-20 01:54:15', '2012-07-19 17:00:00', '2012-08-06 17:00:00', 0, 4, 'left', '_bank', '0', 1),
(19, 'Quảng cáo Logo', 'quang-cao-logo1.jpg', '', '2012-07-22 02:16:26', '2012-07-30 17:00:00', '2012-08-20 17:00:00', 0, 5, 'left', '_bank', '0', 1);

-- --------------------------------------------------------

--
-- Table structure for table `hoiit_module_menus`
--

CREATE TABLE IF NOT EXISTS `hoiit_module_menus` (
  `menu_id` smallint(6) NOT NULL AUTO_INCREMENT,
  `parent_id` smallint(6) NOT NULL DEFAULT '0',
  `menu_type` tinyint(1) NOT NULL DEFAULT '1',
  `menu_target` enum('_self','_blank') DEFAULT NULL,
  `menu_sort` smallint(6) NOT NULL DEFAULT '0',
  `menu_homepage` tinyint(1) NOT NULL DEFAULT '0',
  `menu_activated` tinyint(1) NOT NULL DEFAULT '0',
  PRIMARY KEY (`menu_id`)
) ENGINE=InnoDB  DEFAULT CHARSET=utf8 AUTO_INCREMENT=31 ;

--
-- Dumping data for table `hoiit_module_menus`
--

INSERT INTO `hoiit_module_menus` (`menu_id`, `parent_id`, `menu_type`, `menu_target`, `menu_sort`, `menu_homepage`, `menu_activated`) VALUES
(27, 0, 1, '', 27, 1, 1),
(28, 0, 1, '', 28, 0, 1),
(29, 0, 1, '', 29, 0, 1),
(30, 28, 0, '', 30, 0, 1);

-- --------------------------------------------------------

--
-- Table structure for table `hoiit_module_menus_languages`
--

CREATE TABLE IF NOT EXISTS `hoiit_module_menus_languages` (
  `menu_id` smallint(6) NOT NULL,
  `language_id` varchar(2) NOT NULL,
  `menu_name` varchar(100) NOT NULL,
  `menu_url` varchar(255) NOT NULL,
  `menu_description` varchar(255) DEFAULT NULL,
  PRIMARY KEY (`menu_id`,`language_id`),
  KEY `fk_hoiit_module_menus_has_hoiit_languages_hoiit_languages1` (`language_id`),
  KEY `fk_hoiit_module_menus_has_hoiit_languages_hoiit_module_menus1` (`menu_id`)
) ENGINE=InnoDB DEFAULT CHARSET=utf8;

--
-- Dumping data for table `hoiit_module_menus_languages`
--

INSERT INTO `hoiit_module_menus_languages` (`menu_id`, `language_id`, `menu_name`, `menu_url`, `menu_description`) VALUES
(27, 'en', 'Home page', 'home-page', 'Home page description'),
(27, 'vi', 'Trang chủ', 'trang-chu', 'Trang chu mô tả'),
(28, 'en', 'About us', '', 'Desctip about'),
(28, 'vi', 'Giới thiệu', 'gioi-thieu', 'Mo ta gioi thieu'),
(29, 'en', 'Products', '', ''),
(29, 'vi', 'Sản phẩm', 'san-pham', ''),
(30, 'en', '', '', ''),
(30, 'vi', 'Sub', 'gioi-thieu/welcome-to-yiiprojectcom.html', '');

-- --------------------------------------------------------

--
-- Table structure for table `hoiit_module_news`
--

CREATE TABLE IF NOT EXISTS `hoiit_module_news` (
  `record_id` int(11) NOT NULL AUTO_INCREMENT,
  `postdate` timestamp NOT NULL DEFAULT CURRENT_TIMESTAMP,
  `pic_thumb` varchar(100) DEFAULT NULL,
  `pic_desc` varchar(500) DEFAULT NULL,
  `record_order` int(11) DEFAULT NULL,
  `hot` tinyint(1) NOT NULL DEFAULT '0',
  `specials` tinyint(1) DEFAULT NULL,
  `field1` varchar(45) DEFAULT NULL,
  `field2` varchar(45) DEFAULT NULL,
  `field3` varchar(45) DEFAULT NULL,
  `field4` varchar(45) DEFAULT NULL,
  `enable` tinyint(1) NOT NULL DEFAULT '1',
  `hoiit_module_item_cat_cat_id` int(11) NOT NULL,
  PRIMARY KEY (`record_id`),
  KEY `fk_hoiit_module_news_hoiit_module_news_cat_1` (`hoiit_module_item_cat_cat_id`)
) ENGINE=InnoDB  DEFAULT CHARSET=utf8 AUTO_INCREMENT=2 ;

--
-- Dumping data for table `hoiit_module_news`
--

INSERT INTO `hoiit_module_news` (`record_id`, `postdate`, `pic_thumb`, `pic_desc`, `record_order`, `hot`, `specials`, `field1`, `field2`, `field3`, `field4`, `enable`, `hoiit_module_item_cat_cat_id`) VALUES
(1, '2012-07-25 06:18:56', NULL, NULL, 1, 1, NULL, NULL, NULL, NULL, NULL, 1, 16);

-- --------------------------------------------------------

--
-- Table structure for table `hoiit_module_news_cat`
--

CREATE TABLE IF NOT EXISTS `hoiit_module_news_cat` (
  `cat_id` int(11) NOT NULL AUTO_INCREMENT,
  `cat_parent_id` int(11) NOT NULL DEFAULT '0',
  `cat_created` timestamp NOT NULL DEFAULT CURRENT_TIMESTAMP,
  `pic_thumb` varchar(100) DEFAULT NULL,
  `pic_desc` varchar(200) DEFAULT NULL,
  `cat_hot` tinyint(1) DEFAULT NULL,
  `cat_order` int(11) DEFAULT NULL,
  `cat_extra1` varchar(100) DEFAULT NULL,
  `cat_extra2` varchar(100) DEFAULT NULL,
  `cat_enable` tinyint(1) NOT NULL DEFAULT '1',
  PRIMARY KEY (`cat_id`)
) ENGINE=InnoDB  DEFAULT CHARSET=utf8 AUTO_INCREMENT=17 ;

--
-- Dumping data for table `hoiit_module_news_cat`
--

INSERT INTO `hoiit_module_news_cat` (`cat_id`, `cat_parent_id`, `cat_created`, `pic_thumb`, `pic_desc`, `cat_hot`, `cat_order`, `cat_extra1`, `cat_extra2`, `cat_enable`) VALUES
(15, 16, '2012-07-25 04:16:17', NULL, NULL, 0, 15, NULL, NULL, 1),
(16, 0, '2012-07-25 06:11:55', 'danh-muc.jpg', NULL, 0, 16, NULL, NULL, 1);

-- --------------------------------------------------------

--
-- Table structure for table `hoiit_module_news_cat_languages`
--

CREATE TABLE IF NOT EXISTS `hoiit_module_news_cat_languages` (
  `cat_id` int(11) NOT NULL,
  `language_id` varchar(2) NOT NULL,
  `cat_title` varchar(100) NOT NULL,
  `preview` text,
  `tag` varchar(100) NOT NULL,
  `description` varchar(250) DEFAULT NULL,
  PRIMARY KEY (`cat_id`,`language_id`),
  KEY `fk_hoiit_module_news_cat_has_hoiit_languages_hoiit_languages1` (`language_id`),
  KEY `fk_hoiit_module_news_cat_has_hoiit_languages_hoiit_module_ne1` (`cat_id`)
) ENGINE=InnoDB DEFAULT CHARSET=utf8;

--
-- Dumping data for table `hoiit_module_news_cat_languages`
--

INSERT INTO `hoiit_module_news_cat_languages` (`cat_id`, `language_id`, `cat_title`, `preview`, `tag`, `description`) VALUES
(15, 'en', '', '', '', ''),
(15, 'vi', 'An', '', 'an', ''),
(16, 'en', '', '', '', ''),
(16, 'vi', 'Danh muc', '', 'danh-muc', '');

-- --------------------------------------------------------

--
-- Table structure for table `hoiit_module_news_languages`
--

CREATE TABLE IF NOT EXISTS `hoiit_module_news_languages` (
  `record_id` int(11) NOT NULL,
  `language_id` varchar(2) NOT NULL,
  `title` varchar(100) NOT NULL,
  `preview` text,
  `content` varchar(45) NOT NULL,
  `tag` varchar(100) NOT NULL,
  `description` varchar(250) DEFAULT NULL,
  `hit` int(11) NOT NULL DEFAULT '0',
  `extra_field1` varchar(100) DEFAULT NULL,
  `extra_field2` varchar(100) DEFAULT NULL,
  PRIMARY KEY (`record_id`,`language_id`),
  KEY `fk_hoiit_module_news_has_hoiit_languages_hoiit_languages1` (`language_id`),
  KEY `fk_hoiit_module_news_has_hoiit_languages_hoiit_module_news1` (`record_id`)
) ENGINE=InnoDB DEFAULT CHARSET=utf8;

--
-- Dumping data for table `hoiit_module_news_languages`
--

INSERT INTO `hoiit_module_news_languages` (`record_id`, `language_id`, `title`, `preview`, `content`, `tag`, `description`, `hit`, `extra_field1`, `extra_field2`) VALUES
(1, 'en', '', '', '', '', '', 0, NULL, NULL),
(1, 'vi', 'Tieu de "bac"', '', '<p>asdasdsa</p>', 'tieu-de-bac', '', 0, NULL, NULL);

-- --------------------------------------------------------

--
-- Table structure for table `hoiit_module_pcounter_save`
--

CREATE TABLE IF NOT EXISTS `hoiit_module_pcounter_save` (
  `save_name` varchar(10) NOT NULL,
  `save_value` int(11) NOT NULL
) ENGINE=InnoDB DEFAULT CHARSET=utf8;

--
-- Dumping data for table `hoiit_module_pcounter_save`
--

INSERT INTO `hoiit_module_pcounter_save` (`save_name`, `save_value`) VALUES
('day_time', 2456140),
('max_count', 1),
('counter', 20),
('yesterday', 1);

-- --------------------------------------------------------

--
-- Table structure for table `hoiit_module_pcounter_users`
--

CREATE TABLE IF NOT EXISTS `hoiit_module_pcounter_users` (
  `user_ip` varchar(39) NOT NULL,
  `user_time` int(11) NOT NULL
) ENGINE=InnoDB DEFAULT CHARSET=utf8;

--
-- Dumping data for table `hoiit_module_pcounter_users`
--

INSERT INTO `hoiit_module_pcounter_users` (`user_ip`, `user_time`) VALUES
('''::1''', 1343747199),
('''127.0.0.1''', 1343701326);

-- --------------------------------------------------------

--
-- Table structure for table `hoiit_module_products`
--

CREATE TABLE IF NOT EXISTS `hoiit_module_products` (
  `record_id` int(11) NOT NULL AUTO_INCREMENT,
  `postdate` timestamp NOT NULL DEFAULT CURRENT_TIMESTAMP,
  `pic_thumb` varchar(100) DEFAULT NULL,
  `pic_full` varchar(100) DEFAULT NULL,
  `pic_desc` varchar(500) DEFAULT NULL,
  `record_order` int(11) DEFAULT NULL,
  `unit` varchar(45) DEFAULT NULL,
  `hot` tinyint(1) NOT NULL DEFAULT '0',
  `specials` tinyint(1) DEFAULT NULL,
  `field1` varchar(45) DEFAULT NULL,
  `field2` varchar(45) DEFAULT NULL,
  `field3` varchar(45) DEFAULT NULL,
  `field4` varchar(45) DEFAULT NULL,
  `enable` tinyint(1) NOT NULL DEFAULT '1',
  `hoiit_module_item_cat_cat_id` int(11) NOT NULL,
  PRIMARY KEY (`record_id`),
  KEY `fk_hoiit_module_products_hoiit_module_products_cat1` (`hoiit_module_item_cat_cat_id`)
) ENGINE=InnoDB  DEFAULT CHARSET=utf8 AUTO_INCREMENT=4 ;

--
-- Dumping data for table `hoiit_module_products`
--

INSERT INTO `hoiit_module_products` (`record_id`, `postdate`, `pic_thumb`, `pic_full`, `pic_desc`, `record_order`, `unit`, `hot`, `specials`, `field1`, `field2`, `field3`, `field4`, `enable`, `hoiit_module_item_cat_cat_id`) VALUES
(1, '2012-07-31 03:58:20', '', '', NULL, 1, '', 0, NULL, NULL, NULL, NULL, NULL, 1, 5),
(2, '2012-07-31 04:54:34', '', '', NULL, 2, '', 0, NULL, NULL, NULL, NULL, NULL, 1, 5),
(3, '2012-07-31 04:54:43', '', '', NULL, 3, '', 0, NULL, NULL, NULL, NULL, NULL, 1, 5);

-- --------------------------------------------------------

--
-- Table structure for table `hoiit_module_products_cat`
--

CREATE TABLE IF NOT EXISTS `hoiit_module_products_cat` (
  `cat_id` int(11) NOT NULL AUTO_INCREMENT,
  `cat_parent_id` int(11) NOT NULL DEFAULT '0',
  `cat_created` timestamp NOT NULL DEFAULT CURRENT_TIMESTAMP,
  `pic_thumb` varchar(100) DEFAULT NULL,
  `pic_desc` varchar(200) DEFAULT NULL,
  `cat_hot` tinyint(1) DEFAULT NULL,
  `cat_order` int(11) DEFAULT NULL,
  `cat_extra1` varchar(100) DEFAULT NULL,
  `cat_extra2` varchar(100) DEFAULT NULL,
  `cat_enable` tinyint(1) NOT NULL DEFAULT '1',
  PRIMARY KEY (`cat_id`)
) ENGINE=InnoDB  DEFAULT CHARSET=utf8 AUTO_INCREMENT=8 ;

--
-- Dumping data for table `hoiit_module_products_cat`
--

INSERT INTO `hoiit_module_products_cat` (`cat_id`, `cat_parent_id`, `cat_created`, `pic_thumb`, `pic_desc`, `cat_hot`, `cat_order`, `cat_extra1`, `cat_extra2`, `cat_enable`) VALUES
(4, 0, '2012-07-25 04:20:15', 'ddddsd.jpg', NULL, 0, 4, NULL, NULL, 1),
(5, 0, '2012-07-25 06:28:10', 'sddsffsdsd.jpg', NULL, 0, 5, NULL, NULL, 1),
(6, 5, '2012-07-30 13:45:47', '', NULL, 0, 6, NULL, NULL, 1),
(7, 0, '2012-07-31 04:00:12', '', NULL, 0, 7, NULL, NULL, 1);

-- --------------------------------------------------------

--
-- Table structure for table `hoiit_module_products_cat_languages`
--

CREATE TABLE IF NOT EXISTS `hoiit_module_products_cat_languages` (
  `cat_id` int(11) NOT NULL,
  `language_id` varchar(2) NOT NULL,
  `cat_title` varchar(100) NOT NULL,
  `preview` text,
  `tag` varchar(100) NOT NULL,
  `description` varchar(250) DEFAULT NULL,
  PRIMARY KEY (`cat_id`,`language_id`),
  KEY `fk_hoiit_module_products_cat_has_hoiit_languages_hoiit_langua1` (`language_id`),
  KEY `fk_hoiit_module_products_cat_has_hoiit_languages_hoiit_module1` (`cat_id`)
) ENGINE=InnoDB DEFAULT CHARSET=utf8;

--
-- Dumping data for table `hoiit_module_products_cat_languages`
--

INSERT INTO `hoiit_module_products_cat_languages` (`cat_id`, `language_id`, `cat_title`, `preview`, `tag`, `description`) VALUES
(4, 'en', '', '', '', ''),
(4, 'vi', 'Danh muc 2', '', 'danh-muc-2', 'sdsdsdsd'),
(5, 'en', '', '', '', ''),
(5, 'vi', 'Danh mục', '', 'danh-muc', ''),
(6, 'en', '', '', '', ''),
(6, 'vi', 'Sub cat', '', 'sub-cat', ''),
(7, 'en', '', '', '', ''),
(7, 'vi', 'dfdfdfdfdf', '', 'dfdfdfdfdf', '');

-- --------------------------------------------------------

--
-- Table structure for table `hoiit_module_products_languages`
--

CREATE TABLE IF NOT EXISTS `hoiit_module_products_languages` (
  `record_id` int(11) NOT NULL,
  `language_id` varchar(2) NOT NULL,
  `title` varchar(100) NOT NULL,
  `preview` text,
  `content` text NOT NULL,
  `tag` varchar(100) NOT NULL,
  `description` varchar(250) DEFAULT NULL,
  `hit` int(11) NOT NULL,
  `extra_field1` varchar(100) DEFAULT NULL,
  `extra_field2` varchar(100) DEFAULT NULL,
  PRIMARY KEY (`record_id`,`language_id`),
  KEY `fk_hoiit_module_products_has_hoiit_languages_hoiit_languages1` (`language_id`),
  KEY `fk_hoiit_module_products_has_hoiit_languages_hoiit_module_pro1` (`record_id`)
) ENGINE=InnoDB DEFAULT CHARSET=utf8;

--
-- Dumping data for table `hoiit_module_products_languages`
--

INSERT INTO `hoiit_module_products_languages` (`record_id`, `language_id`, `title`, `preview`, `content`, `tag`, `description`, `hit`, `extra_field1`, `extra_field2`) VALUES
(1, 'en', 'asdad', '', '', 'asdad', '', 0, NULL, NULL),
(1, 'vi', 'asdasdasd', '<p>asdasd sa</p>', '<p>asdasd</p>', 'asdasdasd', '', 0, NULL, NULL),
(2, 'en', '', '', '', '', '', 0, NULL, NULL),
(2, 'vi', 'ddssd', '<p>dsds</p>', '<p>sddsds</p>', 'ddssd', '', 0, NULL, NULL),
(3, 'en', '', '', '', '', '', 0, NULL, NULL),
(3, 'vi', 'dsdds', '<p>dsds</p>', '<p>sddsd</p>', 'dsdds', '', 0, NULL, NULL);

-- --------------------------------------------------------

--
-- Table structure for table `hoiit_module_supports`
--

CREATE TABLE IF NOT EXISTS `hoiit_module_supports` (
  `support_id` int(11) NOT NULL AUTO_INCREMENT,
  `support_name` varchar(45) NOT NULL,
  `support_phone` varchar(45) DEFAULT NULL,
  `support_value` varchar(45) NOT NULL,
  `support_order` smallint(6) DEFAULT '0',
  `support_type` varchar(45) NOT NULL,
  PRIMARY KEY (`support_id`)
) ENGINE=InnoDB  DEFAULT CHARSET=utf8 AUTO_INCREMENT=26 ;

--
-- Dumping data for table `hoiit_module_supports`
--

INSERT INTO `hoiit_module_supports` (`support_id`, `support_name`, `support_phone`, `support_value`, `support_order`, `support_type`) VALUES
(24, 'An', '0929001001', 'thanhansoft', 1, 'yahoo'),
(25, 'Nguyễn An', '0929001001', 'grouplaptrinh', 2, 'skype');

-- --------------------------------------------------------

--
-- Table structure for table `hoiit_positions`
--

CREATE TABLE IF NOT EXISTS `hoiit_positions` (
  `pos_id` varchar(30) NOT NULL,
  `pos_sort` tinyint(4) NOT NULL,
  `pos_activated` varchar(45) NOT NULL,
  `module_id` varchar(30) NOT NULL,
  `action_id` varchar(30) DEFAULT NULL,
  `controller_id` varchar(30) DEFAULT NULL,
  `hoiit_functions_function_value` varchar(30) NOT NULL,
  KEY `fk_hoiit_positions_hoiit_functions1` (`hoiit_functions_function_value`)
) ENGINE=InnoDB DEFAULT CHARSET=utf8;

--
-- Dumping data for table `hoiit_positions`
--

INSERT INTO `hoiit_positions` (`pos_id`, `pos_sort`, `pos_activated`, `module_id`, `action_id`, `controller_id`, `hoiit_functions_function_value`) VALUES
('left', 1, '1', 'products', NULL, NULL, 'menu_products'),
('left', 2, '1', 'products', NULL, NULL, 'list_support'),
('left', 3, '1', 'products', NULL, NULL, 'adv_left'),
('right', 4, '1', 'products', NULL, NULL, 'adv_right'),
('left', 1, '1', 'about', NULL, NULL, 'adv_left'),
('right', 2, '1', 'about', NULL, NULL, 'counter'),
('right', 3, '1', 'about', NULL, NULL, 'menu_about'),
('right', 1, '1', 'default', NULL, NULL, 'news_hot'),
('right', 2, '1', 'default', NULL, NULL, 'news_new'),
('left', 3, '1', 'default', NULL, NULL, 'menu_about'),
('left', 4, '1', 'default', NULL, NULL, 'list_support'),
('left', 5, '1', 'default', NULL, NULL, 'menu_products'),
('left', 6, '1', 'default', NULL, NULL, 'counter'),
('center', 7, '1', 'default', NULL, NULL, 'about_home'),
('right', 8, '1', 'default', NULL, NULL, 'adv_right'),
('left', 9, '1', 'default', NULL, NULL, 'adv_left');

-- --------------------------------------------------------

--
-- Table structure for table `hoiit_settings`
--

CREATE TABLE IF NOT EXISTS `hoiit_settings` (
  `setting_name` varchar(30) NOT NULL,
  `setting_value` varchar(1000) NOT NULL,
  PRIMARY KEY (`setting_name`)
) ENGINE=InnoDB DEFAULT CHARSET=utf8;

--
-- Dumping data for table `hoiit_settings`
--

INSERT INTO `hoiit_settings` (`setting_name`, `setting_value`) VALUES
('default_language', 'vi'),
('description', 'Description'),
('keywords', 'Keywords'),
('title', 'Welcome to YiiProject');

-- --------------------------------------------------------

--
-- Table structure for table `hoiit_templates`
--

CREATE TABLE IF NOT EXISTS `hoiit_templates` (
  `template_id` varchar(30) NOT NULL,
  `template_name` varchar(45) NOT NULL,
  `template_date` timestamp NOT NULL DEFAULT CURRENT_TIMESTAMP,
  `template_desc` varchar(100) DEFAULT NULL,
  `template_author` varchar(45) DEFAULT NULL,
  `template_web` varchar(100) DEFAULT NULL,
  `template_admin` tinyint(1) NOT NULL,
  `template_activated` tinyint(1) NOT NULL DEFAULT '0',
  PRIMARY KEY (`template_id`)
) ENGINE=InnoDB DEFAULT CHARSET=utf8;

--
-- Dumping data for table `hoiit_templates`
--

INSERT INTO `hoiit_templates` (`template_id`, `template_name`, `template_date`, `template_desc`, `template_author`, `template_web`, `template_admin`, `template_activated`) VALUES
('default', 'Default', '2012-06-30 14:47:02', NULL, 'Yii project', 'http://yiiproject.com', 0, 0),
('home', 'Home', '2012-07-04 10:54:29', NULL, 'Yii project', 'http://yiiproject.com', 0, 0),
('toys', 'Toys Store', '2012-07-27 04:55:47', NULL, NULL, NULL, 0, 1),
('yiiproject', 'YiiProject', '2012-07-26 13:47:49', NULL, 'Yii project', NULL, 0, 0);

-- --------------------------------------------------------

--
-- Table structure for table `hoiit_urls`
--

CREATE TABLE IF NOT EXISTS `hoiit_urls` (
  `url_pattern` varchar(100) NOT NULL,
  `url_route` varchar(100) NOT NULL,
  `url_param` varchar(200) DEFAULT NULL,
  `url_sort` smallint(6) DEFAULT '1',
  `url_type` tinyint(1) NOT NULL DEFAULT '0',
  `hoiit_modules_module_id` varchar(30) NOT NULL,
  `hoiit_languages_language_id` varchar(2) NOT NULL,
  PRIMARY KEY (`url_pattern`),
  KEY `fk_hoiit_urls_hoiit_modules1` (`hoiit_modules_module_id`),
  KEY `fk_hoiit_urls_hoiit_languages1` (`hoiit_languages_language_id`)
) ENGINE=InnoDB DEFAULT CHARSET=utf8;

--
-- Dumping data for table `hoiit_urls`
--

INSERT INTO `hoiit_urls` (`url_pattern`, `url_route`, `url_param`, `url_sort`, `url_type`, `hoiit_modules_module_id`, `hoiit_languages_language_id`) VALUES
('(gioi-thieu)/<id:[-a-z0-9]+>', 'about/default/view', 'urlSuffix=>.html', 0, 0, 'about', 'vi'),
('gioi-thieu', 'about/default/index', '', 1, 1, 'about', 'vi'),
('home-page', 'default/default/index', NULL, NULL, 1, 'default', 'en'),
('news', 'news/default/index', '', 1, 1, 'news', 'en'),
('san-pham', 'products/default/index', '', 3, 1, 'products', 'vi'),
('san-pham/<cid:[-a-z0-9]+>', 'products/default/cats', '', 2, 0, 'products', 'vi'),
('san-pham/<cid:[-a-z0-9]+>/<id:[-a-z0-9]+>', 'products/default/view', 'urlSuffix=>.html', 0, 0, 'products', 'vi'),
('san-pham/<cid:[-a-z0-9]+>/trang/<page:\\d+>', 'products/default/cats', '', 1, 0, 'products', 'vi'),
('tin-tuc', 'news/default/index', '', 0, 1, 'news', 'vi'),
('trang-chu', 'default/default/index', NULL, NULL, 1, 'default', 'vi');

-- --------------------------------------------------------

--
-- Table structure for table `hoiit_users`
--

CREATE TABLE IF NOT EXISTS `hoiit_users` (
  `user_id` varchar(45) NOT NULL,
  `user_email` varchar(100) NOT NULL,
  `user_pass` varchar(45) NOT NULL,
  `user_picture` varchar(45) DEFAULT NULL,
  `user_display` varchar(100) NOT NULL,
  `user_registered` timestamp NOT NULL DEFAULT CURRENT_TIMESTAMP,
  `user_lastvisit` timestamp NULL DEFAULT NULL,
  `user_activation_key` varchar(45) DEFAULT NULL,
  `user_enable` tinyint(1) NOT NULL,
  `hoiit_groups_group_id` varchar(45) NOT NULL,
  PRIMARY KEY (`user_id`),
  KEY `fk_hoiit_users_hoiit_groups1` (`hoiit_groups_group_id`)
) ENGINE=InnoDB DEFAULT CHARSET=utf8;

--
-- Dumping data for table `hoiit_users`
--

INSERT INTO `hoiit_users` (`user_id`, `user_email`, `user_pass`, `user_picture`, `user_display`, `user_registered`, `user_lastvisit`, `user_activation_key`, `user_enable`, `hoiit_groups_group_id`) VALUES
('thanhansoft', 'thanhansoft@gmail.com', '14e1b600b1fd579f47433b88e8d85291', NULL, 'Thanhansoft', '2012-07-03 15:49:55', '2012-07-03 15:49:55', NULL, 1, 'administrator');

--
-- Constraints for dumped tables
--

--
-- Constraints for table `hoiit_configs`
--
ALTER TABLE `hoiit_configs`
  ADD CONSTRAINT `fk_hoiit_configs_hoiit_modules1` FOREIGN KEY (`hoiit_modules_module_id`) REFERENCES `hoiit_modules` (`module_id`) ON DELETE NO ACTION ON UPDATE NO ACTION;

--
-- Constraints for table `hoiit_functions`
--
ALTER TABLE `hoiit_functions`
  ADD CONSTRAINT `fk_hoiit_functions_hoiit_modules` FOREIGN KEY (`hoiit_modules_module_id`) REFERENCES `hoiit_modules` (`module_id`) ON DELETE NO ACTION ON UPDATE NO ACTION;

--
-- Constraints for table `hoiit_langs`
--
ALTER TABLE `hoiit_langs`
  ADD CONSTRAINT `fk_hoiit_langs_hoiit_languages1` FOREIGN KEY (`hoiit_languages_language_id`) REFERENCES `hoiit_languages` (`language_id`) ON DELETE NO ACTION ON UPDATE NO ACTION;

--
-- Constraints for table `hoiit_module_about_languages`
--
ALTER TABLE `hoiit_module_about_languages`
  ADD CONSTRAINT `fk_hoiit_about_has_hoiit_languages_hoiit_about1` FOREIGN KEY (`record_id`) REFERENCES `hoiit_module_about` (`record_id`) ON DELETE NO ACTION ON UPDATE NO ACTION,
  ADD CONSTRAINT `fk_hoiit_about_has_hoiit_languages_hoiit_languages1` FOREIGN KEY (`language_id`) REFERENCES `hoiit_languages` (`language_id`) ON DELETE NO ACTION ON UPDATE NO ACTION;

--
-- Constraints for table `hoiit_module_menus_languages`
--
ALTER TABLE `hoiit_module_menus_languages`
  ADD CONSTRAINT `fk_hoiit_module_menus_has_hoiit_languages_hoiit_languages1` FOREIGN KEY (`language_id`) REFERENCES `hoiit_languages` (`language_id`) ON DELETE NO ACTION ON UPDATE NO ACTION,
  ADD CONSTRAINT `fk_hoiit_module_menus_has_hoiit_languages_hoiit_module_menus1` FOREIGN KEY (`menu_id`) REFERENCES `hoiit_module_menus` (`menu_id`) ON DELETE NO ACTION ON UPDATE NO ACTION;

--
-- Constraints for table `hoiit_module_news`
--
ALTER TABLE `hoiit_module_news`
  ADD CONSTRAINT `fk_hoiit_module_news_hoiit_module_news_cat_1` FOREIGN KEY (`hoiit_module_item_cat_cat_id`) REFERENCES `hoiit_module_news_cat` (`cat_id`) ON DELETE NO ACTION ON UPDATE NO ACTION;

--
-- Constraints for table `hoiit_module_news_cat_languages`
--
ALTER TABLE `hoiit_module_news_cat_languages`
  ADD CONSTRAINT `fk_hoiit_module_news_cat__has_hoiit_languages_hoiit_languages1` FOREIGN KEY (`language_id`) REFERENCES `hoiit_languages` (`language_id`) ON DELETE NO ACTION ON UPDATE NO ACTION,
  ADD CONSTRAINT `fk_hoiit_module_news_cat__has_hoiit_languages_hoiit_module_ne1` FOREIGN KEY (`cat_id`) REFERENCES `hoiit_module_news_cat` (`cat_id`) ON DELETE NO ACTION ON UPDATE NO ACTION;

--
-- Constraints for table `hoiit_module_news_languages`
--
ALTER TABLE `hoiit_module_news_languages`
  ADD CONSTRAINT `fk_hoiit_module_news_has_hoiit_languages_hoiit_languages1` FOREIGN KEY (`language_id`) REFERENCES `hoiit_languages` (`language_id`) ON DELETE NO ACTION ON UPDATE NO ACTION,
  ADD CONSTRAINT `fk_hoiit_module_news_has_hoiit_languages_hoiit_module_news1` FOREIGN KEY (`record_id`) REFERENCES `hoiit_module_news` (`record_id`) ON DELETE NO ACTION ON UPDATE NO ACTION;

--
-- Constraints for table `hoiit_module_products`
--
ALTER TABLE `hoiit_module_products`
  ADD CONSTRAINT `fk_hoiit_module_products_hoiit_module_products_cat1` FOREIGN KEY (`hoiit_module_item_cat_cat_id`) REFERENCES `hoiit_module_products_cat` (`cat_id`) ON DELETE NO ACTION ON UPDATE NO ACTION;

--
-- Constraints for table `hoiit_module_products_cat_languages`
--
ALTER TABLE `hoiit_module_products_cat_languages`
  ADD CONSTRAINT `fk_hoiit_module_products_cat_has_hoiit_languages_hoiit_langua1` FOREIGN KEY (`language_id`) REFERENCES `hoiit_languages` (`language_id`) ON DELETE NO ACTION ON UPDATE NO ACTION,
  ADD CONSTRAINT `fk_hoiit_module_products_cat_has_hoiit_languages_hoiit_module1` FOREIGN KEY (`cat_id`) REFERENCES `hoiit_module_products_cat` (`cat_id`) ON DELETE NO ACTION ON UPDATE NO ACTION;

--
-- Constraints for table `hoiit_module_products_languages`
--
ALTER TABLE `hoiit_module_products_languages`
  ADD CONSTRAINT `fk_hoiit_module_products_has_hoiit_languages_hoiit_languages1` FOREIGN KEY (`language_id`) REFERENCES `hoiit_languages` (`language_id`) ON DELETE NO ACTION ON UPDATE NO ACTION,
  ADD CONSTRAINT `fk_hoiit_module_products_has_hoiit_languages_hoiit_module_pro1` FOREIGN KEY (`record_id`) REFERENCES `hoiit_module_products` (`record_id`) ON DELETE NO ACTION ON UPDATE NO ACTION;

--
-- Constraints for table `hoiit_positions`
--
ALTER TABLE `hoiit_positions`
  ADD CONSTRAINT `fk_hoiit_positions_hoiit_functions1` FOREIGN KEY (`hoiit_functions_function_value`) REFERENCES `hoiit_functions` (`function_value`) ON DELETE NO ACTION ON UPDATE NO ACTION;

--
-- Constraints for table `hoiit_urls`
--
ALTER TABLE `hoiit_urls`
  ADD CONSTRAINT `fk_hoiit_urls_hoiit_languages1` FOREIGN KEY (`hoiit_languages_language_id`) REFERENCES `hoiit_languages` (`language_id`) ON DELETE NO ACTION ON UPDATE NO ACTION,
  ADD CONSTRAINT `fk_hoiit_urls_hoiit_modules1` FOREIGN KEY (`hoiit_modules_module_id`) REFERENCES `hoiit_modules` (`module_id`) ON DELETE NO ACTION ON UPDATE NO ACTION;

--
-- Constraints for table `hoiit_users`
--
ALTER TABLE `hoiit_users`
  ADD CONSTRAINT `fk_hoiit_users_hoiit_groups1` FOREIGN KEY (`hoiit_groups_group_id`) REFERENCES `hoiit_groups` (`group_id`) ON DELETE NO ACTION ON UPDATE NO ACTION;

/*!40101 SET CHARACTER_SET_CLIENT=@OLD_CHARACTER_SET_CLIENT */;
/*!40101 SET CHARACTER_SET_RESULTS=@OLD_CHARACTER_SET_RESULTS */;
/*!40101 SET COLLATION_CONNECTION=@OLD_COLLATION_CONNECTION */;
