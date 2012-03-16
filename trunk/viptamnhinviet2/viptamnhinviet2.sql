-- phpMyAdmin SQL Dump
-- version 3.4.5
-- http://www.phpmyadmin.net
--
-- Host: localhost
-- Generation Time: Mar 16, 2012 at 09:03 AM
-- Server version: 5.5.16
-- PHP Version: 5.3.8

SET SQL_MODE="NO_AUTO_VALUE_ON_ZERO";
SET time_zone = "+00:00";


/*!40101 SET @OLD_CHARACTER_SET_CLIENT=@@CHARACTER_SET_CLIENT */;
/*!40101 SET @OLD_CHARACTER_SET_RESULTS=@@CHARACTER_SET_RESULTS */;
/*!40101 SET @OLD_COLLATION_CONNECTION=@@COLLATION_CONNECTION */;
/*!40101 SET NAMES utf8 */;

--
-- Database: `viptamnhinviet2`
--

-- --------------------------------------------------------

--
-- Table structure for table `dos_configs`
--

CREATE TABLE IF NOT EXISTS `dos_configs` (
  `config_name` varchar(30) NOT NULL,
  `config_value` int(11) NOT NULL,
  `config_desc` varchar(50) DEFAULT NULL,
  `dos_templates_template` varchar(6) NOT NULL,
  PRIMARY KEY (`config_name`),
  KEY `fk_dos_configs_dos_templates1` (`dos_templates_template`)
) ENGINE=InnoDB DEFAULT CHARSET=utf8;

--
-- Dumping data for table `dos_configs`
--

INSERT INTO `dos_configs` (`config_name`, `config_value`, `config_desc`, `dos_templates_template`) VALUES
('advs_bottom_height', 145, NULL, '080312'),
('advs_bottom_width', 992, NULL, '080312'),
('advs_center_height', 80, NULL, '080312'),
('advs_center_width', 770, NULL, '080312'),
('advs_left_height', 300, NULL, '080312'),
('advs_left_width', 200, NULL, '080312'),
('advs_top_height', 75, NULL, '080312'),
('advs_top_width', 660, NULL, '080312'),
('banner_height', 255, NULL, '080312'),
('banner_width', 686, NULL, '080312'),
('logo_height', 67, NULL, '080312'),
('logo_width', 148, NULL, '080312'),
('news_cat_height', 100, NULL, '080312'),
('news_cat_width', 145, NULL, '080312'),
('news_height_thumb', 100, NULL, '080312'),
('news_width_thumb', 145, NULL, '080312'),
('products_cat_height', 141, NULL, '080312'),
('products_cat_width', 143, NULL, '080312'),
('products_height', 500, NULL, '080312'),
('products_height_thumb', 141, NULL, '080312'),
('products_width', 740, NULL, '080312'),
('products_width_thumb', 143, NULL, '080312'),
('video_cat_height_thumb', 100, NULL, '080312'),
('video_cat_width_thumb', 145, NULL, '080312'),
('video_height_thumb', 255, NULL, '080312'),
('video_width_thumb', 300, NULL, '080312');

-- --------------------------------------------------------

--
-- Table structure for table `dos_langs`
--

CREATE TABLE IF NOT EXISTS `dos_langs` (
  `lang_name` varchar(30) NOT NULL,
  `lang` varchar(200) NOT NULL,
  `langen` varchar(200) DEFAULT NULL,
  `admin` tinyint(1) NOT NULL DEFAULT '0',
  PRIMARY KEY (`lang_name`)
) ENGINE=InnoDB DEFAULT CHARSET=utf8;

--
-- Dumping data for table `dos_langs`
--

INSERT INTO `dos_langs` (`lang_name`, `lang`, `langen`, `admin`) VALUES
('about', 'Giới thiệu', 'About us', 0),
('address', 'Trụ sở: Lô L4,KP.1, P.Bửu Long, Biên Hòa, Đồng Nai', NULL, 0),
('advs', 'Quảng cáo', 'Adv', 0),
('banners', 'Logo &amp; Banner', 'Logo &amp; Banner', 0),
('contact', 'Liên hệ', 'Contact', 0),
('copyright', 'Bản quyền 2012 thuộc về <strong>CÔNG TY CỔ PHẦN TM - DV VIP TẦM NHÌN VIỆT</strong>', NULL, 0),
('default', 'Trang chủ', 'Home page', 0),
('fax', 'Fax: <span>0618 850 747</span>', NULL, 0),
('news', 'Tin tức &amp; sự kiện', NULL, 0),
('phone', 'Điện thoại: 0618 850 747', NULL, 0),
('products', 'Sản phẩm', 'Products', 0),
('services', 'Dịch vụ', 'Services', 0),
('supports', 'Hỗ trợ trực tuyến', 'Online support', 0),
('video', 'Video', 'Video', 0);

-- --------------------------------------------------------

--
-- Table structure for table `dos_modules`
--

CREATE TABLE IF NOT EXISTS `dos_modules` (
  `module_id` varchar(20) NOT NULL,
  `module_url` varchar(45) DEFAULT NULL,
  `module_title` varchar(45) DEFAULT NULL,
  `module_sort` tinyint(4) NOT NULL,
  `module_type` tinyint(1) NOT NULL,
  PRIMARY KEY (`module_id`)
) ENGINE=InnoDB DEFAULT CHARSET=utf8;

--
-- Dumping data for table `dos_modules`
--

INSERT INTO `dos_modules` (`module_id`, `module_url`, `module_title`, `module_sort`, `module_type`) VALUES
('about', 'about', 'Danh sách', 2, 1),
('advs', 'advs', 'Danh sách', 7, 0),
('banners', 'banners', 'Danh sách', 5, 0),
('contact', 'contact', 'Danh sách', 8, 1),
('default', NULL, NULL, 1, 1),
('news', 'news/cats|news', 'Danh mục|Danh sách', 9, 1),
('products', 'products/cats|products', 'Danh mục|Danh sách', 3, 1),
('services', 'services', 'Danh sách', 4, 1),
('supports', 'supports', 'Danh sách', 6, 0),
('video', 'video/cats|video', 'Danh mục|Danh sách', 10, 1);

-- --------------------------------------------------------

--
-- Table structure for table `dos_modules_has_dos_usernames`
--

CREATE TABLE IF NOT EXISTS `dos_modules_has_dos_usernames` (
  `dos_modules_module_id` varchar(20) NOT NULL,
  `dos_usernames_username` varchar(45) NOT NULL,
  PRIMARY KEY (`dos_modules_module_id`,`dos_usernames_username`),
  KEY `fk_dos_modules_has_dos_usernames_dos_usernames1` (`dos_usernames_username`),
  KEY `fk_dos_modules_has_dos_usernames_dos_modules1` (`dos_modules_module_id`)
) ENGINE=InnoDB DEFAULT CHARSET=utf8;

--
-- Dumping data for table `dos_modules_has_dos_usernames`
--

INSERT INTO `dos_modules_has_dos_usernames` (`dos_modules_module_id`, `dos_usernames_username`) VALUES
('about', 'viptamnhinviet'),
('advs', 'viptamnhinviet'),
('banners', 'viptamnhinviet'),
('contact', 'viptamnhinviet'),
('news', 'viptamnhinviet'),
('products', 'viptamnhinviet'),
('services', 'viptamnhinviet'),
('supports', 'viptamnhinviet'),
('video', 'viptamnhinviet');

-- --------------------------------------------------------

--
-- Table structure for table `dos_module_abouts`
--

CREATE TABLE IF NOT EXISTS `dos_module_abouts` (
  `record_id` int(11) NOT NULL AUTO_INCREMENT,
  `title` varchar(100) NOT NULL,
  `titleen` varchar(100) DEFAULT NULL,
  `content` text NOT NULL,
  `contenten` text,
  `hit` int(11) NOT NULL DEFAULT '0',
  `created` timestamp NOT NULL DEFAULT CURRENT_TIMESTAMP,
  `record_order` smallint(6) NOT NULL DEFAULT '1',
  `hot` tinyint(1) NOT NULL DEFAULT '0',
  `extra_field1` varchar(45) DEFAULT NULL,
  `extra_field2` varchar(45) DEFAULT NULL,
  `tag` varchar(100) NOT NULL,
  `description` varchar(250) NOT NULL,
  `activated` tinyint(1) NOT NULL DEFAULT '1',
  PRIMARY KEY (`record_id`),
  KEY `tag` (`tag`)
) ENGINE=InnoDB  DEFAULT CHARSET=utf8 AUTO_INCREMENT=4 ;

--
-- Dumping data for table `dos_module_abouts`
--

INSERT INTO `dos_module_abouts` (`record_id`, `title`, `titleen`, `content`, `contenten`, `hit`, `created`, `record_order`, `hot`, `extra_field1`, `extra_field2`, `tag`, `description`, `activated`) VALUES
(2, 'Giới thiệu', NULL, '<p>\r\n	Chi tiết</p>\r\n', NULL, 15, '2012-03-07 03:24:59', 1, 0, NULL, NULL, 'gioi-thieu', 'Mô tả', 1),
(3, 'Tiêu đề giới thiệu', NULL, '<p>\r\n	Chi tiết Tiêu đề giới thiệuChi tiết Tiêu đề giới thiệuChi tiết Tiêu đề giới thiệuChi tiết Tiêu đề giới thiệuChi tiết Tiêu đề giới thiệuChi tiết Tiêu đề giới thiệuChi tiết Tiêu đề giới thiệuChi tiết Tiêu đề giới thiệuChi tiết Tiêu đề giới thiệuChi tiết Tiêu đề giới thiệuChi tiết Tiêu đề giới thiệuChi tiết Tiêu đề giới thiệuChi tiết Tiêu đề giới thiệu</p>\r\n<p>\r\n	Chi tiết Tiêu đề giới thiệuChi tiết Tiêu đề giới thiệuChi tiết Tiêu đề giới thiệuChi tiết Tiêu đề giới thiệuChi tiết Tiêu đề giới thiệuChi tiết Tiêu đề giới thiệuChi tiết Tiêu đề giới thiệuChi tiết Tiêu đề giới thiệuChi tiết Tiêu đề giới thiệuChi tiết Tiêu đề giới thiệuChi tiết Tiêu đề giới thiệuChi tiết Tiêu đề giới thiệuChi tiết Tiêu đề giới thiệuChi tiết Tiêu đề giới thiệuChi tiết Tiêu đề giới thiệuChi tiết Tiêu đề giới thiệuChi tiết Tiêu đề giới thiệuChi tiết Tiêu đề giới thiệuChi tiết Tiêu đề giới thiệuChi tiết Tiêu đề giới thiệuChi tiết Tiêu đề giới thiệuChi tiết Tiêu đề giới thiệuChi tiết Tiêu đề giới thiệuChi tiết Tiêu đề giới thiệuChi tiết Tiêu đề giới thiệuChi tiết Tiêu đề giới thiệuChi tiết Tiêu đề giới thiệu</p>\r\n<p>\r\n	Chi tiết Tiêu đề giới thiệuChi tiết Tiêu đề giới thiệuChi tiết Tiêu đề giới thiệuChi tiết Tiêu đề giới thiệuChi tiết Tiêu đề giới thiệu</p>\r\n', NULL, 155, '2012-03-07 03:25:14', 2, 0, NULL, NULL, 'tieu-de-gioi-thieu', 'Mô tả', 1);

-- --------------------------------------------------------

--
-- Table structure for table `dos_module_advs`
--

CREATE TABLE IF NOT EXISTS `dos_module_advs` (
  `record_id` int(11) NOT NULL AUTO_INCREMENT,
  `title` varchar(100) NOT NULL,
  `titleen` varchar(100) DEFAULT NULL,
  `pic_thumb` varchar(50) NOT NULL,
  `url` varchar(200) NOT NULL,
  `create_date` timestamp NOT NULL DEFAULT CURRENT_TIMESTAMP,
  `start_date` timestamp NOT NULL DEFAULT '0000-00-00 00:00:00',
  `end_date` timestamp NOT NULL DEFAULT '0000-00-00 00:00:00',
  `hits` int(11) NOT NULL DEFAULT '0',
  `record_order` int(11) DEFAULT '1',
  `position` varchar(45) NOT NULL,
  `type` varchar(45) DEFAULT NULL,
  `enable` tinyint(1) NOT NULL DEFAULT '1',
  PRIMARY KEY (`record_id`)
) ENGINE=InnoDB  DEFAULT CHARSET=utf8 AUTO_INCREMENT=4 ;

--
-- Dumping data for table `dos_module_advs`
--

INSERT INTO `dos_module_advs` (`record_id`, `title`, `titleen`, `pic_thumb`, `url`, `create_date`, `start_date`, `end_date`, `hits`, `record_order`, `position`, `type`, `enable`) VALUES
(2, 'Top', NULL, 'top.gif', 'http://grouplaptrinh.com', '2012-03-09 08:15:48', '2012-03-08 17:00:00', '2012-03-15 17:00:00', 0, 1, 'top', '_bank', 1),
(3, 'Left', NULL, 'left.jpg', 'http://grouplaptrinh.com', '2012-03-09 08:19:11', '2012-03-08 17:00:00', '2012-03-21 17:00:00', 0, 2, 'left', '_bank', 1);

-- --------------------------------------------------------

--
-- Table structure for table `dos_module_banners`
--

CREATE TABLE IF NOT EXISTS `dos_module_banners` (
  `banner_id` int(11) NOT NULL AUTO_INCREMENT,
  `banner_date` timestamp NOT NULL DEFAULT CURRENT_TIMESTAMP,
  `banner_name` varchar(45) NOT NULL,
  `banner_url` varchar(45) NOT NULL,
  `banner_link` varchar(200) DEFAULT NULL,
  `banner_order` int(11) NOT NULL DEFAULT '1',
  `banner_type` varchar(10) NOT NULL,
  `position` varchar(20) NOT NULL,
  `enable` tinyint(1) NOT NULL DEFAULT '1',
  PRIMARY KEY (`banner_id`)
) ENGINE=InnoDB  DEFAULT CHARSET=utf8 AUTO_INCREMENT=9 ;

--
-- Dumping data for table `dos_module_banners`
--

INSERT INTO `dos_module_banners` (`banner_id`, `banner_date`, `banner_name`, `banner_url`, `banner_link`, `banner_order`, `banner_type`, `position`, `enable`) VALUES
(8, '2012-03-12 01:54:34', 'Banner', 'banner.png', '', 1, 'banner', 'default', 1);

-- --------------------------------------------------------

--
-- Table structure for table `dos_module_contacts`
--

CREATE TABLE IF NOT EXISTS `dos_module_contacts` (
  `record_id` int(11) NOT NULL AUTO_INCREMENT,
  `title` varchar(100) NOT NULL,
  `titleen` varchar(100) DEFAULT NULL,
  `content` text NOT NULL,
  `contenten` text,
  `create_date` timestamp NOT NULL DEFAULT CURRENT_TIMESTAMP,
  `record_order` smallint(6) NOT NULL DEFAULT '1',
  `hit` int(11) NOT NULL DEFAULT '0',
  `hot` tinyint(1) NOT NULL DEFAULT '0',
  `tag` varchar(100) NOT NULL,
  `description` varchar(250) NOT NULL,
  `enable` varchar(45) NOT NULL DEFAULT '1',
  PRIMARY KEY (`record_id`)
) ENGINE=InnoDB  DEFAULT CHARSET=utf8 AUTO_INCREMENT=3 ;

--
-- Dumping data for table `dos_module_contacts`
--

INSERT INTO `dos_module_contacts` (`record_id`, `title`, `titleen`, `content`, `contenten`, `create_date`, `record_order`, `hit`, `hot`, `tag`, `description`, `enable`) VALUES
(2, 'Tiêu đề', '', '<p>\r\n	Chi tiet</p>\r\n', '', '2012-03-08 01:34:22', 1, 0, 0, 'tieu-de', 'Mô tả', '1');

-- --------------------------------------------------------

--
-- Table structure for table `dos_module_log`
--

CREATE TABLE IF NOT EXISTS `dos_module_log` (
  `record_id` int(11) NOT NULL AUTO_INCREMENT,
  `log_type` varchar(45) DEFAULT '0',
  `detail` varchar(320) NOT NULL,
  `time` timestamp NOT NULL DEFAULT CURRENT_TIMESTAMP,
  `sender` varchar(45) NOT NULL,
  `receiver` varchar(45) NOT NULL,
  `value` float NOT NULL,
  PRIMARY KEY (`record_id`)
) ENGINE=InnoDB  DEFAULT CHARSET=utf8 AUTO_INCREMENT=3 ;

--
-- Dumping data for table `dos_module_log`
--

INSERT INTO `dos_module_log` (`record_id`, `log_type`, `detail`, `time`, `sender`, `receiver`, `value`) VALUES
(1, '0', 'thử nghiệm', '2012-02-27 08:16:06', 'grouplaptrinh', '', 0),
(2, '0', '', '2012-02-27 08:16:50', '', '', 0);

-- --------------------------------------------------------

--
-- Table structure for table `dos_module_menus`
--

CREATE TABLE IF NOT EXISTS `dos_module_menus` (
  `menu` varchar(50) NOT NULL,
  `menuen` varchar(50) DEFAULT NULL,
  `url` varchar(100) DEFAULT NULL,
  `target` varchar(20) DEFAULT NULL,
  `position` tinyint(4) DEFAULT NULL
) ENGINE=InnoDB DEFAULT CHARSET=utf8;

-- --------------------------------------------------------

--
-- Table structure for table `dos_module_news`
--

CREATE TABLE IF NOT EXISTS `dos_module_news` (
  `record_id` int(11) NOT NULL AUTO_INCREMENT,
  `title` varchar(100) NOT NULL,
  `titleen` varchar(100) DEFAULT NULL,
  `postdate` timestamp NOT NULL DEFAULT CURRENT_TIMESTAMP,
  `pic_thumb` varchar(100) DEFAULT NULL,
  `preview` text,
  `previewen` text,
  `detail` text NOT NULL,
  `detailen` text,
  `tag` varchar(100) NOT NULL,
  `description` varchar(250) NOT NULL,
  `hits` int(11) NOT NULL DEFAULT '0',
  `record_order` int(11) NOT NULL DEFAULT '1',
  `hot` tinyint(1) NOT NULL DEFAULT '0',
  `extra_field1` varchar(100) DEFAULT NULL,
  `extra_field2` varchar(100) DEFAULT NULL,
  `enable` tinyint(1) NOT NULL DEFAULT '1',
  `dos_module_item_cat_cat_id` int(11) NOT NULL,
  PRIMARY KEY (`record_id`),
  KEY `fk_dos_module_news_dos_module_news_cat1` (`dos_module_item_cat_cat_id`)
) ENGINE=InnoDB  DEFAULT CHARSET=utf8 AUTO_INCREMENT=5 ;

--
-- Dumping data for table `dos_module_news`
--

INSERT INTO `dos_module_news` (`record_id`, `title`, `titleen`, `postdate`, `pic_thumb`, `preview`, `previewen`, `detail`, `detailen`, `tag`, `description`, `hits`, `record_order`, `hot`, `extra_field1`, `extra_field2`, `enable`, `dos_module_item_cat_cat_id`) VALUES
(1, 'Bài viết', NULL, '2012-03-15 08:50:17', '', '<p>\r\n	Mo ta</p>\r\n', NULL, '<p>\r\n	Chi tie</p>\r\n', NULL, 'bai-viet', 'adsadsad', 0, 1, 0, NULL, NULL, 1, 11),
(2, 'sad sad', NULL, '2012-03-15 08:50:25', '', '<p>\r\n	asdasd</p>\r\n', NULL, '<p>\r\n	asdasd</p>\r\n', NULL, 'sad-sad', 'asd asdasd', 0, 2, 0, NULL, NULL, 1, 11),
(3, 'fgdfgdf', NULL, '2012-03-15 08:54:28', '', '<p>\r\n	gdfgdfg</p>\r\n', NULL, '<p>\r\n	g dfgdfg</p>\r\n', NULL, 'fgdfgdf', 'dfg dfgdfg', 0, 3, 0, NULL, NULL, 1, 11),
(4, 'dfg dfg', NULL, '2012-03-15 08:56:16', 'dfg-dfg.jpg', '<p>\r\n	dfgdfgdf g</p>\r\n', NULL, '<p>\r\n	dfgdfg</p>\r\n', NULL, 'dfg-dfg', 'dfg dgdf g', 0, 4, 0, NULL, NULL, 1, 11);

-- --------------------------------------------------------

--
-- Table structure for table `dos_module_news_cat`
--

CREATE TABLE IF NOT EXISTS `dos_module_news_cat` (
  `cat_id` int(11) NOT NULL AUTO_INCREMENT,
  `cat_parent_id` int(11) NOT NULL DEFAULT '0',
  `cat_title` varchar(100) NOT NULL,
  `cat_titleen` varchar(100) DEFAULT NULL,
  `preview` text,
  `previewen` text,
  `tag` varchar(100) NOT NULL,
  `description` varchar(250) NOT NULL,
  `pic_full` varchar(100) DEFAULT NULL,
  `cat_order` int(11) NOT NULL,
  `cat_extra1` varchar(45) DEFAULT NULL,
  `cat_extra2` varchar(45) DEFAULT NULL,
  `cat_enable` tinyint(1) NOT NULL DEFAULT '1',
  PRIMARY KEY (`cat_id`)
) ENGINE=InnoDB  DEFAULT CHARSET=utf8 AUTO_INCREMENT=12 ;

--
-- Dumping data for table `dos_module_news_cat`
--

INSERT INTO `dos_module_news_cat` (`cat_id`, `cat_parent_id`, `cat_title`, `cat_titleen`, `preview`, `previewen`, `tag`, `description`, `pic_full`, `cat_order`, `cat_extra1`, `cat_extra2`, `cat_enable`) VALUES
(11, 0, 'asdasd', NULL, NULL, NULL, 'asdasd', 'sdaddasdsad', '', 2, NULL, NULL, 1);

-- --------------------------------------------------------

--
-- Table structure for table `dos_module_pcounter_save`
--

CREATE TABLE IF NOT EXISTS `dos_module_pcounter_save` (
  `save_name` varchar(10) NOT NULL,
  `save_value` int(11) NOT NULL
) ENGINE=InnoDB DEFAULT CHARSET=utf8;

--
-- Dumping data for table `dos_module_pcounter_save`
--

INSERT INTO `dos_module_pcounter_save` (`save_name`, `save_value`) VALUES
('day_time', 2456003),
('max_count', 2),
('counter', 7),
('yesterday', 2),
('max_time', 0);

-- --------------------------------------------------------

--
-- Table structure for table `dos_module_pcounter_users`
--

CREATE TABLE IF NOT EXISTS `dos_module_pcounter_users` (
  `user_ip` varchar(39) NOT NULL,
  `user_time` int(10) unsigned NOT NULL,
  UNIQUE KEY `user_ip` (`user_ip`)
) ENGINE=InnoDB DEFAULT CHARSET=utf8;

--
-- Dumping data for table `dos_module_pcounter_users`
--

INSERT INTO `dos_module_pcounter_users` (`user_ip`, `user_time`) VALUES
('''127.0.0.1''', 1331884744);

-- --------------------------------------------------------

--
-- Table structure for table `dos_module_products`
--

CREATE TABLE IF NOT EXISTS `dos_module_products` (
  `record_id` int(11) NOT NULL AUTO_INCREMENT,
  `title` varchar(100) NOT NULL,
  `titleen` varchar(100) DEFAULT NULL,
  `postdate` timestamp NOT NULL DEFAULT CURRENT_TIMESTAMP,
  `pic_thumb` varchar(100) DEFAULT NULL,
  `pic_full` varchar(100) DEFAULT NULL,
  `pic_desc` varchar(200) DEFAULT NULL,
  `preview` text,
  `previewen` text,
  `detail` text NOT NULL,
  `detailen` text,
  `tag` varchar(100) NOT NULL,
  `description` varchar(250) NOT NULL,
  `hits` int(11) NOT NULL DEFAULT '0',
  `record_order` int(11) NOT NULL DEFAULT '1',
  `unit` int(11) DEFAULT '0',
  `hot` tinyint(1) NOT NULL DEFAULT '0',
  `specials` tinyint(1) DEFAULT '0',
  `extra_field1` varchar(100) DEFAULT NULL,
  `extra_field2` varchar(100) DEFAULT NULL,
  `extra_field3` varchar(100) DEFAULT NULL,
  `extra_field4` varchar(100) DEFAULT NULL,
  `enable` tinyint(1) NOT NULL DEFAULT '1',
  `dos_module_item_cat_cat_id` int(11) NOT NULL,
  `dos_module_usernames_username` varchar(45) NOT NULL,
  PRIMARY KEY (`record_id`),
  KEY `fk_dos_module_products_dos_module_products_cat1` (`dos_module_item_cat_cat_id`),
  KEY `fk_dos_module_products_dos_module_usernames1` (`dos_module_usernames_username`)
) ENGINE=InnoDB  DEFAULT CHARSET=utf8 AUTO_INCREMENT=18 ;

--
-- Dumping data for table `dos_module_products`
--

INSERT INTO `dos_module_products` (`record_id`, `title`, `titleen`, `postdate`, `pic_thumb`, `pic_full`, `pic_desc`, `preview`, `previewen`, `detail`, `detailen`, `tag`, `description`, `hits`, `record_order`, `unit`, `hot`, `specials`, `extra_field1`, `extra_field2`, `extra_field3`, `extra_field4`, `enable`, `dos_module_item_cat_cat_id`, `dos_module_usernames_username`) VALUES
(15, 'San pham', NULL, '2012-03-11 07:02:57', 'san-pham-thumb.jpg', '', NULL, NULL, NULL, '<p>\r\n	Chi tiết</p>\r\n', NULL, 'san-pham', 'Mô tả', 0, 1, 0, 0, 0, NULL, NULL, NULL, NULL, 1, 11, 'viptamnhinviet'),
(16, 'Sản phẩm 2', NULL, '2012-03-11 07:03:24', 'san-pham-2-thumb.jpg', 'san-pham-2.jpg', NULL, NULL, NULL, '<p>\r\n	Chi tiết</p>\r\n', NULL, 'san-pham-2', 'Mô tả', 0, 2, 0, 1, 1, NULL, NULL, NULL, NULL, 1, 11, 'viptamnhinviet'),
(17, 'hhhhhhhh', NULL, '2012-03-12 04:00:45', '', '', NULL, NULL, NULL, '<p>\r\n	hhhhh</p>\r\n', NULL, 'hhhhhhhh', 'jkjhkhjk', 0, 3, 0, 0, 0, NULL, NULL, NULL, NULL, 1, 11, 'viptamnhinviet');

-- --------------------------------------------------------

--
-- Table structure for table `dos_module_products_cat`
--

CREATE TABLE IF NOT EXISTS `dos_module_products_cat` (
  `cat_id` int(11) NOT NULL AUTO_INCREMENT,
  `cat_parent_id` int(11) NOT NULL DEFAULT '0',
  `cat_title` varchar(100) NOT NULL,
  `cat_titleen` varchar(100) DEFAULT NULL,
  `preview` text,
  `previewen` text,
  `tag` varchar(100) NOT NULL,
  `description` varchar(250) NOT NULL,
  `pic_full` varchar(100) DEFAULT NULL,
  `pic_desc` varchar(200) DEFAULT NULL,
  `cat_order` int(11) NOT NULL,
  `cat_extra1` varchar(45) DEFAULT NULL,
  `cat_extra2` varchar(45) DEFAULT NULL,
  `cat_enable` tinyint(1) NOT NULL DEFAULT '1',
  PRIMARY KEY (`cat_id`)
) ENGINE=InnoDB  DEFAULT CHARSET=utf8 AUTO_INCREMENT=12 ;

--
-- Dumping data for table `dos_module_products_cat`
--

INSERT INTO `dos_module_products_cat` (`cat_id`, `cat_parent_id`, `cat_title`, `cat_titleen`, `preview`, `previewen`, `tag`, `description`, `pic_full`, `pic_desc`, `cat_order`, `cat_extra1`, `cat_extra2`, `cat_enable`) VALUES
(11, 0, 'Danh mục', NULL, NULL, NULL, 'danh-muc', 'Mô tả danh mục', 'danh-muc.jpg', NULL, 1, NULL, NULL, 1);

-- --------------------------------------------------------

--
-- Table structure for table `dos_module_supports`
--

CREATE TABLE IF NOT EXISTS `dos_module_supports` (
  `support_id` int(11) NOT NULL AUTO_INCREMENT,
  `support_name` varchar(45) NOT NULL,
  `support_phone` varchar(45) DEFAULT NULL,
  `support_value` varchar(45) NOT NULL,
  `support_order` smallint(6) NOT NULL,
  `support_type` varchar(20) NOT NULL,
  PRIMARY KEY (`support_id`)
) ENGINE=InnoDB  DEFAULT CHARSET=utf8 AUTO_INCREMENT=3 ;

--
-- Dumping data for table `dos_module_supports`
--

INSERT INTO `dos_module_supports` (`support_id`, `support_name`, `support_phone`, `support_value`, `support_order`, `support_type`) VALUES
(2, 'Nguyễn An', '0929001001', 'thanhansoft', 1, 'yahoo');

-- --------------------------------------------------------

--
-- Table structure for table `dos_module_tables`
--

CREATE TABLE IF NOT EXISTS `dos_module_tables` (
  `left_child` varchar(45) DEFAULT NULL,
  `right_child` varchar(45) DEFAULT NULL,
  `four_child` varchar(180) DEFAULT NULL,
  `priority` varchar(45) DEFAULT NULL,
  `upgrade_date` datetime DEFAULT NULL,
  `dos_module_usernames_username` varchar(45) NOT NULL,
  PRIMARY KEY (`dos_module_usernames_username`)
) ENGINE=InnoDB DEFAULT CHARSET=utf8;

--
-- Dumping data for table `dos_module_tables`
--

INSERT INTO `dos_module_tables` (`left_child`, `right_child`, `four_child`, `priority`, `upgrade_date`, `dos_module_usernames_username`) VALUES
(NULL, NULL, NULL, NULL, NULL, 'admin11');

-- --------------------------------------------------------

--
-- Table structure for table `dos_module_usernames`
--

CREATE TABLE IF NOT EXISTS `dos_module_usernames` (
  `username` varchar(45) NOT NULL,
  `password` varchar(45) NOT NULL,
  `create_date` timestamp NOT NULL DEFAULT CURRENT_TIMESTAMP,
  `full_name` varchar(150) DEFAULT NULL,
  `email` varchar(45) DEFAULT NULL,
  `birthday` date DEFAULT NULL,
  `address` varchar(200) DEFAULT NULL,
  `cmnd` varchar(10) DEFAULT NULL,
  `phone` varchar(15) DEFAULT NULL,
  `bank_number` varchar(20) DEFAULT NULL,
  `bank_name` varchar(100) DEFAULT NULL,
  `user_gioithieu` varchar(45) NOT NULL,
  `balance` varchar(45) NOT NULL DEFAULT '0',
  `user_group` varchar(45) NOT NULL,
  `level` int(11) NOT NULL DEFAULT '0',
  `enable` tinyint(1) NOT NULL,
  PRIMARY KEY (`username`)
) ENGINE=InnoDB DEFAULT CHARSET=utf8;

--
-- Dumping data for table `dos_module_usernames`
--

INSERT INTO `dos_module_usernames` (`username`, `password`, `create_date`, `full_name`, `email`, `birthday`, `address`, `cmnd`, `phone`, `bank_number`, `bank_name`, `user_gioithieu`, `balance`, `user_group`, `level`, `enable`) VALUES
('admin', 'admin', '2012-02-22 15:19:39', '', '', '0000-00-00', '', '', '', '', '', 'grouplaptrinh', '0', '', 1, 1),
('admin1', 'q', '2012-02-22 16:10:09', '', '', '0000-00-00', '', '', '', '', '', 'viptamnhinviet', '0', '', 0, 1),
('admin11', '453e41d218e071ccfb2d1c99ce23906a', '2012-03-01 07:21:29', '', 'aaa@aa.ccc', '1980-01-23', '', '2165454549', '', '', '', 'admin3', '0', 'user', 0, 1),
('admin2', 'aa7b65c231f7cd2e0ab4fa9c26ccdaf5', '2012-02-25 06:15:35', 'Lê Hữu Ninh', 'aaa@aa.ccc', '0000-00-00', '', '2165454549', '', '', '', 'admin', '0', 'user', 0, 1),
('admin3', 'aa7b65c231f7cd2e0ab4fa9c26ccdaf5', '2012-02-25 06:29:18', 'NInh', 'aaa@aa.ccc', '0000-00-00', '', '2165454549', '', '', '', 'admin1', '0', 'user', 0, 0),
('admin4', 'aa7b65c231f7cd2e0ab4fa9c26ccdaf5', '2012-02-25 06:33:59', 'NInh', 'aaa@aa.ccc', '0000-00-00', '', '2165454549', '', '', '', 'admin1', '0', 'user', 0, 1),
('grouplaptrinh', 'b7a659e0c28c88b3ee01adf805fc228f', '2012-02-25 08:57:48', NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, '', '0', 'user', 0, 1),
('viptamnhinviet', 'e10adc3949ba59abbe56e057f20f883e', '2012-03-04 14:30:34', 'Viptamnhinviet', 'aaa@aa.ccc', '1980-01-01', '', '2165454549', '12316546754', 'ACB', '', 'grouplaptrinh', '0', 'administrator', 0, 1);

-- --------------------------------------------------------

--
-- Table structure for table `dos_module_video`
--

CREATE TABLE IF NOT EXISTS `dos_module_video` (
  `record_id` int(11) NOT NULL AUTO_INCREMENT,
  `title` varchar(100) NOT NULL,
  `titleen` varchar(100) DEFAULT NULL,
  `postdate` timestamp NOT NULL DEFAULT CURRENT_TIMESTAMP,
  `tag` varchar(100) NOT NULL,
  `description` varchar(250) DEFAULT NULL,
  `pic_thumb` varchar(100) DEFAULT NULL,
  `url` varchar(100) NOT NULL,
  `record_order` int(11) NOT NULL,
  `hits` int(11) NOT NULL DEFAULT '0',
  `extra_field1` varchar(45) DEFAULT NULL,
  `extra_field2` varchar(45) DEFAULT NULL,
  `hot` tinyint(1) NOT NULL DEFAULT '0',
  `enable` tinyint(1) NOT NULL DEFAULT '1',
  `dos_module_item_cat_cat_id` int(11) NOT NULL,
  PRIMARY KEY (`record_id`),
  KEY `fk_dos_module_video_dos_module_video_cat1` (`dos_module_item_cat_cat_id`)
) ENGINE=InnoDB  DEFAULT CHARSET=utf8 AUTO_INCREMENT=2 ;

--
-- Dumping data for table `dos_module_video`
--

INSERT INTO `dos_module_video` (`record_id`, `title`, `titleen`, `postdate`, `tag`, `description`, `pic_thumb`, `url`, `record_order`, `hits`, `extra_field1`, `extra_field2`, `hot`, `enable`, `dos_module_item_cat_cat_id`) VALUES
(1, 'Asus demo', NULL, '2012-03-15 06:52:16', 'asus-demo', '', 'asus-demo.jpg', 'http://www.youtube.com/watch?v=_ioNXTAo1Pc', 1, 0, NULL, NULL, 1, 1, 11);

-- --------------------------------------------------------

--
-- Table structure for table `dos_module_video_cat`
--

CREATE TABLE IF NOT EXISTS `dos_module_video_cat` (
  `cat_id` int(11) NOT NULL AUTO_INCREMENT,
  `cat_parent_id` int(11) NOT NULL DEFAULT '0',
  `pic_thumb` varchar(100) DEFAULT NULL,
  `cat_title` varchar(100) NOT NULL,
  `cat_titleen` varchar(100) DEFAULT NULL,
  `tag` varchar(100) NOT NULL,
  `description` varchar(250) DEFAULT NULL,
  `cat_order` int(11) NOT NULL,
  `cat_enable` tinyint(1) NOT NULL DEFAULT '1',
  PRIMARY KEY (`cat_id`)
) ENGINE=InnoDB  DEFAULT CHARSET=utf8 AUTO_INCREMENT=12 ;

--
-- Dumping data for table `dos_module_video_cat`
--

INSERT INTO `dos_module_video_cat` (`cat_id`, `cat_parent_id`, `pic_thumb`, `cat_title`, `cat_titleen`, `tag`, `description`, `cat_order`, `cat_enable`) VALUES
(11, 0, 'danh-muc.png', 'Danh mục', NULL, 'danh-muc', 'Mô tả', 1, 1);

-- --------------------------------------------------------

--
-- Table structure for table `dos_templates`
--

CREATE TABLE IF NOT EXISTS `dos_templates` (
  `template` varchar(6) NOT NULL,
  `template_name` varchar(45) NOT NULL,
  `created` timestamp NOT NULL DEFAULT CURRENT_TIMESTAMP,
  `description` text,
  `publish` tinyint(1) NOT NULL DEFAULT '0',
  PRIMARY KEY (`template`)
) ENGINE=InnoDB DEFAULT CHARSET=utf8;

--
-- Dumping data for table `dos_templates`
--

INSERT INTO `dos_templates` (`template`, `template_name`, `created`, `description`, `publish`) VALUES
('080312', 'Mẫu web công ty Vip Tầm Nhìn Việt', '2012-03-09 04:28:40', 'Mẫu web công ty Vip Tầm Nhìn Việt', 1);

--
-- Constraints for dumped tables
--

--
-- Constraints for table `dos_configs`
--
ALTER TABLE `dos_configs`
  ADD CONSTRAINT `fk_dos_configs_dos_templates1` FOREIGN KEY (`dos_templates_template`) REFERENCES `dos_templates` (`template`) ON DELETE NO ACTION ON UPDATE NO ACTION;

--
-- Constraints for table `dos_modules_has_dos_usernames`
--
ALTER TABLE `dos_modules_has_dos_usernames`
  ADD CONSTRAINT `fk_dos_modules_has_dos_usernames_dos_modules1` FOREIGN KEY (`dos_modules_module_id`) REFERENCES `dos_modules` (`module_id`) ON DELETE NO ACTION ON UPDATE NO ACTION,
  ADD CONSTRAINT `fk_dos_modules_has_dos_usernames_dos_usernames1` FOREIGN KEY (`dos_usernames_username`) REFERENCES `dos_module_usernames` (`username`) ON DELETE NO ACTION ON UPDATE NO ACTION;

--
-- Constraints for table `dos_module_news`
--
ALTER TABLE `dos_module_news`
  ADD CONSTRAINT `fk_dos_module_news_dos_module_news_cat1` FOREIGN KEY (`dos_module_item_cat_cat_id`) REFERENCES `dos_module_news_cat` (`cat_id`) ON DELETE NO ACTION ON UPDATE NO ACTION;

--
-- Constraints for table `dos_module_products`
--
ALTER TABLE `dos_module_products`
  ADD CONSTRAINT `fk_dos_module_products_dos_module_products_cat10` FOREIGN KEY (`dos_module_item_cat_cat_id`) REFERENCES `dos_module_products_cat` (`cat_id`) ON DELETE NO ACTION ON UPDATE NO ACTION,
  ADD CONSTRAINT `fk_dos_module_products_dos_module_usernames10` FOREIGN KEY (`dos_module_usernames_username`) REFERENCES `dos_module_usernames` (`username`) ON DELETE NO ACTION ON UPDATE NO ACTION;

--
-- Constraints for table `dos_module_tables`
--
ALTER TABLE `dos_module_tables`
  ADD CONSTRAINT `fk_dos_module_table_dos_module_usernames10` FOREIGN KEY (`dos_module_usernames_username`) REFERENCES `dos_module_usernames` (`username`) ON DELETE NO ACTION ON UPDATE NO ACTION;

--
-- Constraints for table `dos_module_video`
--
ALTER TABLE `dos_module_video`
  ADD CONSTRAINT `fk_dos_module_video_dos_module_video_cat1` FOREIGN KEY (`dos_module_item_cat_cat_id`) REFERENCES `dos_module_video_cat` (`cat_id`) ON DELETE NO ACTION ON UPDATE NO ACTION;

/*!40101 SET CHARACTER_SET_CLIENT=@OLD_CHARACTER_SET_CLIENT */;
/*!40101 SET CHARACTER_SET_RESULTS=@OLD_CHARACTER_SET_RESULTS */;
/*!40101 SET COLLATION_CONNECTION=@OLD_COLLATION_CONNECTION */;
