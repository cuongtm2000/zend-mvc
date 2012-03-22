-- phpMyAdmin SQL Dump
-- version 3.4.5
-- http://www.phpmyadmin.net
--
-- Host: localhost
-- Generation Time: Mar 22, 2012 at 02:08 AM
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
(3, 'Tiêu đề giới thiệu', NULL, '<p>\r\n	Chi tiết Tiêu đề giới thiệuChi tiết Tiêu đề giới thiệuChi tiết Tiêu đề giới thiệuChi tiết Tiêu đề giới thiệuChi tiết Tiêu đề giới thiệuChi tiết Tiêu đề giới thiệuChi tiết Tiêu đề giới thiệuChi tiết Tiêu đề giới thiệuChi tiết Tiêu đề giới thiệuChi tiết Tiêu đề giới thiệuChi tiết Tiêu đề giới thiệuChi tiết Tiêu đề giới thiệuChi tiết Tiêu đề giới thiệu</p>\r\n<p>\r\n	Chi tiết Tiêu đề giới thiệuChi tiết Tiêu đề giới thiệuChi tiết Tiêu đề giới thiệuChi tiết Tiêu đề giới thiệuChi tiết Tiêu đề giới thiệuChi tiết Tiêu đề giới thiệuChi tiết Tiêu đề giới thiệuChi tiết Tiêu đề giới thiệuChi tiết Tiêu đề giới thiệuChi tiết Tiêu đề giới thiệuChi tiết Tiêu đề giới thiệuChi tiết Tiêu đề giới thiệuChi tiết Tiêu đề giới thiệuChi tiết Tiêu đề giới thiệuChi tiết Tiêu đề giới thiệuChi tiết Tiêu đề giới thiệuChi tiết Tiêu đề giới thiệuChi tiết Tiêu đề giới thiệuChi tiết Tiêu đề giới thiệuChi tiết Tiêu đề giới thiệuChi tiết Tiêu đề giới thiệuChi tiết Tiêu đề giới thiệuChi tiết Tiêu đề giới thiệuChi tiết Tiêu đề giới thiệuChi tiết Tiêu đề giới thiệuChi tiết Tiêu đề giới thiệuChi tiết Tiêu đề giới thiệu</p>\r\n<p>\r\n	Chi tiết Tiêu đề giới thiệuChi tiết Tiêu đề giới thiệuChi tiết Tiêu đề giới thiệuChi tiết Tiêu đề giới thiệuChi tiết Tiêu đề giới thiệu</p>\r\n', NULL, 154, '2012-03-07 03:25:14', 2, 0, NULL, NULL, 'tieu-de-gioi-thieu', 'Mô tả', 1);

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
) ENGINE=InnoDB  DEFAULT CHARSET=utf8 AUTO_INCREMENT=6 ;

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
) ENGINE=InnoDB  DEFAULT CHARSET=utf8 AUTO_INCREMENT=40 ;

--
-- Dumping data for table `dos_module_log`
--

INSERT INTO `dos_module_log` (`record_id`, `log_type`, `detail`, `time`, `sender`, `receiver`, `value`) VALUES
(24, 'gioithieu', 'Thành viên admin được kích hoạt. Người giới thiệu:viptamnhinviet', '2012-03-20 17:17:02', 'Hệ thống', 'grouplaptrinh', 0),
(25, 'gioithieu', 'Thành viên admin1 được kích hoạt. Người giới thiệu:viptamnhinviet', '2012-03-20 17:17:02', 'Hệ thống', 'grouplaptrinh', 0),
(26, 'gioithieu', 'Thành viên admin2 được kích hoạt. Người giới thiệu:admin', '2012-03-20 17:19:25', 'Hệ thống', 'grouplaptrinh', 0),
(27, 'gioithieu', 'Thành viên admin3 được kích hoạt. Người giới thiệu:admin', '2012-03-20 17:19:25', 'Hệ thống', 'grouplaptrinh', 0),
(28, 'gioithieu', 'Thành viên admin5 được kích hoạt. Người giới thiệu:admin1', '2012-03-20 17:21:54', 'Hệ thống', 'grouplaptrinh', 0),
(29, 'tangcap', 'Hoa hồng đạt cấp 1', '2012-03-20 17:22:51', '', 'viptamnhinviet', 2000),
(30, 'gioithieu', 'Thành viên admin6 được kích hoạt. Người giới thiệu:admin2', '2012-03-20 17:27:17', 'Công ty', 'grouplaptrinh', 0),
(31, 'gioithieu', 'Thành viên admin7 được kích hoạt. Người giới thiệu:admin2', '2012-03-20 17:32:09', 'Công ty', 'grouplaptrinh', 0),
(32, 'gioithieu', 'Thành viên admin8 được kích hoạt. Người giới thiệu:admin3', '2012-03-20 18:04:21', 'Công ty', 'grouplaptrinh', 0),
(33, 'gioithieu', 'Thành viên admin9 được kích hoạt. Người giới thiệu:admin3', '2012-03-20 18:07:52', 'Công ty', 'grouplaptrinh', 0),
(34, 'tangcap', 'Hoa hồng đạt cấp 1', '2012-03-20 18:16:15', '', 'admin', 2000),
(35, 'gioithieu', 'Thành viên admin11 được kích hoạt. Người giới thiệu:admin4', '2012-03-20 18:32:45', 'Công ty', 'grouplaptrinh', 0),
(36, 'gioithieu', 'Thành viên admin12 được kích hoạt. Người giới thiệu:admin5', '2012-03-20 18:32:45', 'Công ty', 'grouplaptrinh', 0),
(37, 'tangcap', 'Hoa hồng đạt cấp 1', '2012-03-20 18:32:45', '', 'admin2', 2000),
(38, 'gioithieu', 'Thành viên admin14 được kích hoạt. Người giới thiệu:admin6', '2012-03-20 18:44:24', 'Công ty', 'grouplaptrinh', 0),
(39, 'gioithieu', 'Thành viên admin15 được kích hoạt. Người giới thiệu:admin6', '2012-03-20 18:44:24', 'Công ty', 'grouplaptrinh', 0);

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
('day_time', 2456009),
('max_count', 1),
('counter', 11),
('yesterday', 1);

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
('''127.0.0.1''', 1332378483);

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
) ENGINE=InnoDB  DEFAULT CHARSET=utf8 AUTO_INCREMENT=41 ;

--
-- Dumping data for table `dos_module_products`
--

INSERT INTO `dos_module_products` (`record_id`, `title`, `titleen`, `postdate`, `pic_thumb`, `pic_full`, `pic_desc`, `preview`, `previewen`, `detail`, `detailen`, `tag`, `description`, `hits`, `record_order`, `unit`, `hot`, `specials`, `extra_field1`, `extra_field2`, `extra_field3`, `extra_field4`, `enable`, `dos_module_item_cat_cat_id`, `dos_module_usernames_username`) VALUES
(18, 'Máy Công nghệ O3 (Ozone)', NULL, '2012-03-19 00:43:49', 'may-cong-nghe-o3-ozone-thumb.jpg', 'may-cong-nghe-o3-ozone.jpg', NULL, NULL, NULL, '<p>\n	<span style="font-size:14px;">* Công dụng:<br />\n	1. Ngâm rửa rau quả<br />\n	2. Xử lý nước kim loại nặng<br />\n	3. Khử mùi cá, hải sản và thịt<br />\n	4. Khử mùi không khí<br />\n	5. Rửa chén bát và ly cốc<br />\n	6. Rửa tay<br />\n	7. Dùng sát trùng và vệ sinh chống lão hóa da</span></p>\n<p style="text-align:center;">\n	<br /><span style="font-size:14px;"><span style="color:#ff0000;">LIÊN HỆ CÔNG TY CỔ PHẦN TM - DV VIP TẦM NHÌN VIỆT<br />\n	ĐC: LÔ L4, ĐƯỜNG 4, KP1, P.BỬU LONG, ĐỒNG NAI, BIÊN HÒA<br />\n	EMAIL: viptamnhinviet@gmail.com<br />\n	WEB: VIPTAMNHINVIET.COM<br />\n	ĐT: 0618850747</span></span></p>\n', NULL, 'may-cong-nghe-o3-ozone', 'sản phẩm liên kết', 0, 4, 1299000, 1, 1, NULL, NULL, NULL, NULL, 1, 11, 'viptamnhinviet'),
(19, 'IC đổi nguồn điện (Khi mất điện)', NULL, '2012-03-19 01:06:04', 'ic-doi-nguon-dien-khi-mat-dien-thumb.jpg', '', NULL, NULL, NULL, '<p>\n	<span style="font-size:14px;"><span style="color:#ff0000;">IC ĐỔI NGUỒN ĐIỆN TRÊN XE MÁY, ÔTÔ, GHE THUYỀN, BÌNH ACCU RỜI (12VDC - 220VAC</span> chống giật)<br />\n	Cơ chế hoạt động:  IC Đổi nguồn điện 12VDC sang 220VAC Công suất 20W (INVERTER )<br />\n	- Khi dùng, bật công tắc điện đèn left sáng báo có điện là bạn có thể sử dụng và có thể sử dụng khi tắt máy không bật công tắc khóa xe.<br />\n	Sử dụng:  Gắn vào vị trí bất kỳ thích hợp, tốt nhất là ở dưới yên xe hoặc có thể mua bình accu sử dụng lâu dài.... Dây đỏ gắn vào cọc dương của bình Accu, dây đen gắn vào cọc âm của bình Accu (dây đỏ cho vào dương bình và dây đen vào âm bình).<br />\n	Chức năng và hiệu quả ưu việt của sản phẩm duy nhất trên thế giới do các bạn khuyết tật Việt nam sản xuất:<br />\n	1.Khi gia đình bị cúp điện hoặc về những vùng nông thôn không có điện,đi dã ngoại...Bạn chỉ cần mua bóng đèn 2U 220VAC 7W - 15W là có thể sử dụng thỏa mái tự nhiên có nguồn điện chiếu sáng từ 4 tiếng đến 6 tiếng. Nếu muốn kéo xa chỉ cần mua thêm dây ổ cắm tại các tiệm điện.<br />\n	2. Bạn có ĐTDĐ nhưng sử dụng nhiều, Pin yếu hoặc quên sạc ĐTDĐ nên mất liên lạc ảnh hưởng lớn đến công việc của bạn. Bạn chỉ cần trong cốp xe bao giờ cũng có cục sạc theo máy. Khi cần sử dụng chỉ cắm sạc vào Bộ đổi nguồn ICEVN như cắm vào điện gia đình và sử dụng thỏa mái khi đã sạc đầy máy tự động ngắt nguồn...<br />\n	3. Bạn đi công tác xa hoặc dã ngoại yên tâm sử dụng các loại máy MP3-MP4, Radio mini..sử dụng như đang ở gia đình dùng điện lưới quốc gia..<br /><span style="color:#ff0000;">BẢO HÀNH 12 THÁNG (HOÀN TOÀN ĐỔI MỚI)</span></span></p>\n<p style="text-align:center;">\n	<br /><span style="font-size:14px;"><span style="color:#ff0000;">LIÊN HỆ CÔNG TY CỔ PHẦN TM - DV VIP TẦM NHÌN VIỆT<br />\n	ĐC: LÔ L4, ĐƯỜNG 4, KP1, P.BỬU LONG, ĐỒNG NAI, BIÊN HÒA<br />\n	EMAIL: viptamnhinviet@gmail.com<br />\n	WEB: VIPTAMNHINVIET.COM<br />\n	ĐT: 0618850747</span></span></p>\n', NULL, 'ic-doi-nguon-dien-khi-mat-dien', 'sản phẩm', 0, 5, 99000, 1, 1, NULL, NULL, NULL, NULL, 1, 11, 'viptamnhinviet'),
(20, 'IC Chống trộm xe máy', NULL, '2012-03-19 01:30:43', 'ic-chong-trom-xe-may-thumb.jpg', '', NULL, NULL, NULL, '<p>\n	<span style="font-size:14px;">CHỨC NĂNG:</span></p>\n<p>\n	<span style="font-size:14px;">* Chống chìa vạn năng ( vam phá khoá ):<br />\n	- Với chức năng này khi xe của bạn bị bẻ khoá bằng chìa vạn năng ( hoặc vam ) hệ thống sẽ ngắt nguồn điện đồng thời còi báo động và xe không nổ máy được.<br />\n	* Báo động khi bị bẻ khoá:<br />\n	- Khi xe của bạn bị bẻ khoá lập tức hệ thống sẽ báo động cho bạn biết.<br />\n	* Chống cướp xe:<br />\n	- Bạn vô ý để chìa khóa ở trên xe hoặc khi đang đi đường mà bị cướp xe chộm có khoá xe cũng không thể đi được khi chưa mở khoá từ ra và còi sẽ báo động (hú).<br />\n	- Vì Chế độ khóa tự động chống trộm này được sử dụng khi ta tắt máy xe thì lập tức chế độ bảo vệ tự động bật lên.<br />\n	* Trộm có chìa khóa cũng không đi được.</span></p>\n<p>\n	<span style="font-size:14px;">ĐẶC ĐIỂM:</span></p>\n<p>\n	<span style="font-size:14px;">- Sản phẩm được lập trình trên chip điện tử nên tránh bị kẻ gian dùng nam châm phá<br />\n	- Công tắc mở khóa là chạm vào điểm bí mật nên không sợ bị chạm khi rửa xe, và chịu được thời tiết mưa nắng bên ngoài.<br />\n	- Động tác giải mã đơn giản như vô tình chạm điểm bí mật nên không ai nghĩ rằng xe đang được bảo vệ.<br />\n	- Không hao bình, không bị hú còi khi đụng vào xe.<br />\n	- An toàn, đơn giản, dễ dàng lắp ráp.<br />\n	  - Bảo hành 06 tháng (Hoàn toàn đổi mới)   </span></p>\n<p>\n	<span style="font-size:14px;">                                                                                                                        </span></p>\n<p style="text-align:center;">\n	<span style="color:#ff0000;"><span style="font-size:14px;">LIÊN HỆ CÔNG TY CỔ PHẦN TM - DV VIP TẦM NHÌN VIỆT<br />\n	ĐC: LÔ L4, ĐƯỜNG 4, KP1, P.BỬU LONG, ĐỒNG NAI, BIÊN HÒA<br />\n	EMAIL: viptamnhinviet@gmail.com<br />\n	WEB: VIPTAMNHINVIET.COM<br />\n	ĐT: 0618850747<br />\n	 </span></span></p>\n', NULL, 'ic-chong-trom-xe-may', 'SẢN PHẨM', 0, 6, 149000, 1, 1, NULL, NULL, NULL, NULL, 1, 11, 'viptamnhinviet'),
(21, 'Sản phẩm mới Ổ cắm chống sét', NULL, '2012-03-19 01:34:37', 'san-pham-moi--cam-chong-set-thumb.jpg', '', NULL, NULL, NULL, '<p>\n	<span style="font-size:14px;"><span style="color:#ff0000;">Sau 5 năm nghiên cứu, Công ty CP Thanh Niên Việt Nam đã chế tạo thành công ổ cắm PC Care (đã đăng ký bằng sáng chế Quốc tế, đơn chấp nhận ngày 19/11/2008) với tính năng vượt trội so với các sản phẩm cùng loai như sau:</span><br />\n	- Nhịp đàn hồi theo dạng hai vòng cung có rãnh giữa kẹp chặt phích cắm điện đa năng (Tuyệt đối không làm lỏng phích cắm điện đa năng) nên không gây ra hiện tượng chập chờn di chuyển, tạo tia lửa điện gây cháy máy tính và các thiết bị điện tử khác.<br />\n	- Trong sản phẩm thiết bị có hạn chế chống sốc và sét máy tính bằng tụ (Giám định KHHS của Bộ Công an 672/C21B số ngày 17/2/2006).<br />\n	- Vỏ bằng nhựa chống cháy.<br />\n	- Bảo vệ, nâng tuổi thọ cho các thiết bị điện.</span></p>\n<p style="text-align:center;">\n	<br /><span style="font-size:14px;"><span style="color:#ff0000;">LIÊN HỆ CÔNG TY CỔ PHẦN TM - DV VIP TẦM NHÌN VIỆT<br />\n	ĐC: LÔ L4, ĐƯỜNG 4, KP1, P.BỬU LONG, ĐỒNG NAI, BIÊN HÒA<br />\n	EMAIL: viptamnhinviet@gmail.com<br />\n	WEB: VIPTAMNHINVIET.COM<br />\n	ĐT: 0618850747</span></span></p>\n', NULL, 'san-pham-moi-o-cam-chong-set', 'sản phẩm', 0, 7, 119000, 1, 1, NULL, NULL, NULL, NULL, 1, 12, 'viptamnhinviet'),
(22, 'Đèn năng lượng mặt trời', NULL, '2012-03-19 01:38:05', 'en-nang-luong-mat-troi-thumb.jpg', '', NULL, NULL, NULL, '<p>\n	<span style="font-size:14px;">Đèn năng lượng mặt trời, trang trí nhà, ban công, hàng rào, sân vườn, biệt thự, khách sạn, resort...<br />\n	Đèn tự nạp điện bằng năng lượng mặt trời, tự động bật khi trời tối, không phí điện, hiện đại, thân thiện môi trường, đèn LED siêu sáng, chịu nước. Màu sáng trắng, đỏ, vàng, xanh và đổi màu theo yêu cầu của khách hàng...<br />\n	- Cường độ ánh sáng cao.<br />\n	- Thời gian sạc 6 - 8 giờ<br />\n	- Thời gian chiếu sáng : 24 giờ<br />\n	- Không dây dẫn<br />\n	- Lắp đặt đơn giản, thuận tiện</span></p>\n<p style="text-align:center;">\n	<br /><span style="font-size:14px;"><span style="color:#ff0000;">LIÊN HỆ CÔNG TY CỔ PHẦN TM - DV VIP TẦM NHÌN VIỆT<br />\n	ĐC: LÔ L4, ĐƯỜNG 4, KP1, P.BỬU LONG, ĐỒNG NAI, BIÊN HÒA<br />\n	EMAIL: viptamnhinviet@gmail.com<br />\n	WEB: VIPTAMNHINVIET.COM<br />\n	ĐT: 0618850747</span></span></p>\n', NULL, 'den-nang-luong-mat-troi', 'sản phẩm', 0, 8, 499000, 1, 1, NULL, NULL, NULL, NULL, 1, 12, 'viptamnhinviet'),
(23, ' Công nghệ tiết kiệm gas', NULL, '2012-03-19 01:48:30', 'cong-nghe-tiet-kiem-gas-thumb.jpg', 'cong-nghe-tiet-kiem-gas.jpg', NULL, NULL, NULL, '<p>\n	<br /><span style="font-size:14px;">Chúng tôi chuyên cung cấp các sản phẩm mang tính giải pháp cao về tiết kiệm năng lượng ứng dụng trong đời sống sinh hoạt hàng ngày hoặc sản xuất kinh doanh của Quý khách hàng.</span></p>\n<p>\n	<span style="font-size:14px;">Chúng tôi xin trân trọng giới thiệu đến Quý khách hàng một dòng sản phẩm mới sau :<br />\n	Thiết bị tiết kiệm gas – EcoMaX.</span></p>\n<p>\n	<span style="font-size:14px;">EcoMaX là thiết bị được lắp đặt vào bếp gas công nghiệp hoặc bếp gas gia đình nhằm tác động trực tiếp lên chuỗi phân tử Hydrocacbon trong gas làm cho Oxy dễ tiếp xúc với gas hơn, nhờ đó gas dễ cháy và cháy triệt để hơn. Với những tính năng đạt được sau :</span></p>\n<p>\n	<span style="font-size:14px;">            - Ngọn lửa cháy xanh và đều hơn.<br />\n	            - Tăng hiệu suất nhiệt của bếp gas.<br />\n	            - Giảm thời gian đun nấu.<br />\n	            - Giảm mùi gas sống. Giảm khí thải độc hại.<br />\n	            - Tiết kiệm đến 30% gas.<br />\n	            - An toàn hơn với bộ phận chống cháy ngược được thiết kế bên trong.<br />\n	            - Dễ dàng lắp đặt, không cần bảo trì.<br />\n	            - Được chế tạo bằng thép không rỉ.</span></p>\n<p>\n	<strong><span style="font-size:14px;">EcoMaX – Tiết kiệm 30% chi phí cho bạn.<br />\n	+ Sản phẩm được bảo hiểm trên phạm vi toàn quốc bởi bảo hiểm Viễn Đông.</span></strong></p>\n<p>\n	<strong><span style="font-size:14px;"><img alt="" src="/public/userfiles/images/viptamnhinviet/images/20111116_1414358.jpg" style="width:700px;height:963px;" /></span></strong></p>\n<br /><p>\n	<img alt="" src="/public/userfiles/images/viptamnhinviet/images/2011-11-16_141410.jpg" style="width:700px;height:983px;" /></p>\n<p>\n	<img alt="" src="/public/userfiles/images/viptamnhinviet/images/2011-11-16_141504.jpg" style="width:700px;height:973px;" /></p>\n<p style="text-align:center;">\n	<span style="font-size:18px;"><strong>GIẢI PHÁP BÀI TOÁN KINH TẾ</strong></span></p>\n<p>\n	<br /><br />\n	  <span style="font-size:14px;">1. Đối với hộ gia đình, quán ăn nhỏ, ...                                                                                                                                                      <br />\n	        Dùng bình gas 12 kg dùng sản phẩm: Ecogas-E25 = 390.000đMỗi tháng bạn tốn 340.000đ cho 01 bình gas . Khi bạn dùng Sản phẩm thiết bị tiết kiệm gas Ecogas giúp bạn tiết kiệm 35% lượng gas tương đương:                                                          <br />\n	       119.000đ / tháng x 12 tháng = 1.428.000đ/năm.<br />\n	       Sản phẩm bảo hành 2 năm và độ bền lên đến 15 năm. Vậy trong 15 năm bạn chỉ phải bỏ ra 390.000đ cho sản phẩm. Nhưng sẽ giúp ta kiết kiệm được:                                                          <br />\n	       1.428.000đ x 15 năm = 21.420.000đ/15 năm.<br />\n	   2. Đối với nhà hàng, khách sạn.  bếp ăn công nghiệp…                                                                                                                                                                                                                                <br />\n	        Dùng Ecogas-E32 = 990.000đ; EcogaS E50= 1.500.000đ.Cơ quan của bạn (nhà hàng , khách sạn, bếp ăn công nghiệp, lò nung, sấy…) phải chi trả tương đối lớn cho chi phí dùng gas hàng năm. Vậy khi dùng sản phẩm Ecogas E32 và E50 giúp bạn tiết kiệm được 35% lượng gas tiêu thụ tương đương hàng năm có thể giúp tiết kiệm được một khoảng tiền không hề nhỏ. Vậy với thời gian bảo hành 02 năm và độ bền của sản phẩm là 15 năm thì sẽ giúp bạn tiết kiệm lớn đến bao nhiêu ??? THIẾT BỊ TIẾT KIỆM GAS ECOGAS giúp bạn tiết kiệm đến 35% lượng gas tiêu thụ. Một giải pháp tiết kiệm năng lượng và mang đến lợi ích cực lớn về kinh tế.<br />\n	GIÁ BÁN LẺ CÔNG BỐ TRÊN TOÀN QUỐC 390.000VNĐ MỘT THIẾT BỊ<br />\n	CÔNG TY CẦN NHIỀU ĐẠI LÍ PHÂN PHỐI TRÊN TOÀN QUỐC</span></p>\n<p style="text-align:center;">\n	<br /><span style="font-size:14px;"><span style="color:#ff0000;">LIÊN HỆ CÔNG TY CỔ PHẦN TM - DV VIP TẦM NHÌN VIỆT<br />\n	ĐC: LÔ L4, ĐƯỜNG 4, KP1, P.BỬU LONG, BIÊN HÒA, ĐỒNG NAI<br />\n	EMAIL: viptamnhinviet@gmail.com<br />\n	WEB: VIPTAMNHINVIET.COM    <br />\n	ĐT: 0618850747</span></span></p>\n', NULL, 'cong-nghe-tiet-kiem-gas', 'sản phẩm liên kết', 0, 9, 390000, 1, 1, NULL, NULL, NULL, NULL, 1, 11, 'viptamnhinviet'),
(24, 'Bếp điện quang _ bếp hồng ngoại', NULL, '2012-03-19 01:59:54', 'bep-dien-quang--bep-hong-ngoai-thumb.jpg', 'bep-dien-quang--bep-hong-ngoai.jpg', NULL, NULL, NULL, '<p>\n	<span style="font-size:14px;">Rubiluck - hc12 :<br />\n	Công suất      : 0,2 kw - 1,8 kw<br />\n	Điện áp           : 80 - 230 V<br />\n	Trọng lượng   : 2,5 kg<br />\n	Tần số             : 50HZ<br /><span style="color:#0000cd;">Giá bán trên thị trường: 3 999 000 VNĐ</span><br /><span style="color:#ff0000;">Giá bán tại công ty vip tầm nhìn việt chỉ còn: 3 200 000 VNĐ<br />\n	Hiện nay công ty khuyến mãi tặng kèm bộ sản phẩm.<br />\n	"Bộ nồi Orison 3cái-3D, N16 + N20+<br />\n	N 24, nắp inox, quai đũa, đích soán dẫn nhiệt nhanh thức ăn chín điều tiết kiệm gas và điện, sử dụng các loại bếp"</span></span></p>\n<p>\n	<span style="font-size:14px;"><span style="color:#ff0000;"><img alt="" src="/public/userfiles/images/viptamnhinviet/images/Picture3.jpg" style="width:550px;height:325px;" /></span></span></p>\n<p style="text-align:left;">\n	<span style="font-size:14px;"><span style="color:#ff0000;">Sản phẩm được bảo hành lên đến 24 tháng, bảo trì vĩnh viễn</span>.<br />\n	Bếp hồng ngoại Rubiluck là dòng sản phẩm chất lượng cao điều khiển bằng phím cảm ứng.<br />\n	Họa tiết hoa văn trống đồng trang nhã, đậm đà bản sắc dân tộc Việt .<br />\n	Với 8 chức năng :  Nướng, chiên - xào, nấu lẩu, nấu súp, đun nước, giữ ấm, khóa phím, hẹn giờ.<br /><span style="color:#ff0000;">Đặc biệt</span> với chức năng nướng rất tốt , có thể dùng để nướng thịt, nướng mực, quay gà và không kén nồi đã tạo sự khác biệt cao giữa bếp hồng ngoại với bếp điện từ.<br />\n	Mặt bếp cấu tạo bằng vật liệu chuyên biệt có độ bền cao, chịu được nhiệt độ lên tới 800 độ C.<br />\n	Có chức năng tự bảo vệ khi quá dòng, quá nhiệt .<br /><span style="color:#ff0000;">Đặc biệt</span> với công nghệ dùng sợi đốt carbon giúp tuổi thọ sản phẩm gấp nhiều lần so với sản phẩm cùng loại khác.<br />\n	Mặt bếp liền với phím bấm cảm ứng thể hiện đẳng cấp vượt trội,<br />\n	Chức năng khóa trẻ em tự động sau 8 giây giúp bảo vệ an toàn tuyệt đối<br />\n	Chức năng hẹn giờ giúp các bà nội trợ chủ động thời gian với các món hầm và kho.<br />\n	Mặt điều khiển thoáng với những tùy chọn kèm hình ảnh giúp dễ dàng sử dụng.<br />\n	Nấu được tất cả các nồi, kể cả nồi đất .</span></p>\n<p style="text-align:center;">\n	<br /><br /><span style="font-size:14px;">                     L<span style="color:#ff0000;">IÊN HỆ CÔNG TY CỔ PHẦN TM - DV VIP TẦM NHÌN VIỆT<br />\n	                     ĐC: LÔ L4, ĐƯỜNG N1, KP1, P.BỬU LONG, ĐỒNG NAI, BIÊN HÒA<br />\n	                     EMAIL: viptamnhinviet@gmail.com<br />\n	                     WEB: VIPTAMNHINVIET.COM<br />\n	                     ĐT: 0618850747</span></span></p>\n', NULL, 'bep-dien-quang-bep-hong-ngoai', 'sản phẩm liên kết', 0, 10, 3200000, 1, 1, NULL, NULL, NULL, NULL, 1, 12, 'viptamnhinviet'),
(25, 'Quả Giặt Sinh Học Biowashball THUỴ SỸ', NULL, '2012-03-19 02:16:02', 'qua-giat-sinh-hoc-biowashball-thu-s-thumb.jpg', 'qua-giat-sinh-hoc-biowashball-thu-s.jpg', NULL, NULL, NULL, '<p>\n	<br /><span style="font-size:14px;">- 1000 lần = 3 năm sử dụng.<br /><span style="color:#ff0000;">- Giặt không dùng bột giặt.</span><br />\n	- Tiết kiệm chi phí.<br />\n	- Diệt khuẩn , bảo vệ da.<br />\n	- Thân thiện môi trường.<br />\n	- Bảo vệ quần áo không bị phai mục ví hoá chất.<br /><span style="color:#ff0000;">- Đã được tổng cục đo lường tiêu chuẩn chất lượng VIỆT NAM xác nhận về khả năng giặt tẩy vượt trội.</span><br /><span style="color:#ff0000;">- Biowashball càng giặt càng sạch.</span><br /><strong>Tính năng vượt trội, lợi ích vô biên !</strong><br /><strong>- Tiết kiệm tiền bạc, thời gian</strong>: Với tuổi thọ 3 năm, tương đương 120Kg Bột Giặt, giá bán lẻ chính hãng là 490.000 đồng một quả như hiện nay, thì Biowashball giúp gia đình bạn tiết kiệm tới 80% chi phí so với cách giặt tẩy thông thường. Người ta tính rằng tại Mỹ, bình quân một gia đình sẽ tiết kiệm được ít nhất 1.000 USD chi phí bột giặt mỗi năm nếu sử dụng Biowashball. Đó là chưa tính đến tiết kiệm về điện nước, vì Biowashball sử dụng ít điện và nước hơn.<br /><br /><strong>- Cách sử dụng:</strong> Cho quả giặt Biowashball cùng đồ cần giặt vào trong lòng máy giặt, chọn quy trình giặt cho máy giặt giống như giặt với bột giặt ( hiệu quả cao ở chế độ giặt ngâm, và vẫn dùng nước xả cho thơm  ). Sau khi máy giặt bơm đủ nước vào lòng máy, bạn có thể sử dụng chức năng Pause (tạm dừng) để ngâm đồ trong vòng 30 phút cho hiệu quả giặt cao hơn. Đối với vết bẩn khó giặt ở cổ áo, tay áo nên vò trước hoặc cho 1 ít bột giặt để giặt sạch chúng. Một quả giặt chỉ giặt được &lt;5Kg quần áo cho mỗi lần giặt, để giặt từ 5-8kg quần áo bạn phải dùng 2 quả hoặc kết hợp thêm bột giặt. Dùng cho tất cả các loại máy giặt gia đình.<br /><br />\n	- Có thể được sử dụng để giặt tay (giặt tay ngâm 1 giờ với bóng trước khi giặt)</span></p>\n<p>\n	<span style="font-size:14px;">- Bảo vệ sức khỏe, không gây dị ứng cho da : Biowashball loại bỏ liên kết đến phản ứng gây dị ứng trên da do các hoá chất còn lưu lại trên quần áo sau khi giặt.<br /><br />\n	- Bạn cũng có thể đặt một trong Biowashball tủ lạnh của bạn để duy trì sự tươi mát của trái cây của bạn, rau, thịt và cá.</span></p>\n<p>\n	<span style="font-size:14px;"><strong>- Diệt khuẩn </strong>: Những hạt gốm nhỏ bên trong Biowashball phát ra tia hồng ngoại xa với bước sóng dài cùng với các tia ion âm hút bay vết bẩn ra khỏi sợi vải đồng thời diệt khuẩn giúp tiêu diệt các loại vi khuẩn bám trên quần áo và khử mùi hôi. Biowashball có khả năng diệt trên 5.000 loại Vi khuẩn .</span></p>\n<p>\n	<span style="font-size:14px;">- Kéo dài tuổi thọ quần áo, giữ màu sắc luôn tươi mới : Vì không chịu tác động của hoá chất, nên không có tác dụng phụ ảnh hưởng đến các đặc tính hoá lý và thẩm mỹ của quần áo.<br />\n	 <br />\n	- Bảo vệ môi trường, không gây ô nhiễm : Biowashball giúp bảo vệ nước và đất nước vì chúng không chứa Phosphates mà làm tổn hại môi trường.</span></p>\n<p>\n	<span style="font-size:14px;">- Giúp quần áo không bị hôi do thiếu ánh sáng trong mùa đông.</span></p>\n<p>\n	<br /><span style="font-size:14px;"><strong>- Nguyên tắc hoạt động</strong>: Tia hồng ngoại xa phát ra từ các hạt gốm, chia nhỏ các phân tử nước, chất bẩn, dầu và các chất béo (dầu thức ăn), nhiên liệu ( xăng , dầu máy, dầu lửa)… và đồng thời kích thích, làm tăng hoạt động của các phân tử này -&gt; Nước sẽ thấm sâu vào các sợi vải (tăng tính thấm của nước) các chất bẩn mất dần liên kết và giảm khả năng bám dính trên quần áo. Đồng thời, với lực hút của các ion- được tạo ra trong môi trường PH 10 (tương tự bột giặt) giúp đánh bật các chất bẩn đã mất dần liên kết nói trên ra khỏi quần áo, giúp cho quần áo trở nên mềm mại, tươi sáng, thơm mát.</span></p>\n<p>\n	<span style="font-size:14px;">- Biowashball có hình dạng là một quả cầu nhựa mềm, với kích thước 100 x 90mm, lõi của Biowashball là các loại hạt gốm chứa rất nhiều TM (tổng hợp hiệu ứng câu trúc phân tử - Total effective Micro organisms):<br />\n	- Với 4 loại hạt gốm đặc biệt phát ra ion  (-) và bức xạ hồng ngoại xa, Biowashball đánh bật các vết bẩn cứng đầu nhất mà không cần sử dụng hoá chất giặt tẩy ( tiết kiệm chi phí rất lớn) đồng thời bảo vệ da , môi trường, bảo vệ quần áo không bị phai - mục và diệt khuẩn ký sinh trên quần áo.<br /><span style="color:#ff0000;"><strong>*Lưu ý</strong></span>: Trước khi sử dụng phải khởi động quả giặt bằng cách phơi dưới ánh nắng mặt trời từ 2- 4 tiếng, sau mỗi tháng phải lập lại quá trình trên.<br /><br /><span style="font-size:18px;"><span style="color:#ff0000;">Biowashball THUỴ SỸ</span></span></span></p>\n<p style="text-align:center;">\n	<span style="font-size:14px;">   <img alt="" src="/public/userfiles/images/viptamnhinviet/images/Tinh%20nang%20cua%20cac%20hat%20gom%20.jpg" style="width:700px;height:824px;" /><span style="color:#0000cd;"><span style="font-size:18px;"><strong>Giấy chứng nhận của cơ quan chức năng VIỆT NAM và HÀN QUỐC.</strong></span></span></span></p>\n<p>\n	<img alt="" src="/public/userfiles/images/viptamnhinviet/images/Giay%20chung%20nhan%20biowashball.jpg" style="width:700px;height:963px;" /></p>\n<p>\n	<img alt="" src="/public/userfiles/images/viptamnhinviet/images/2007-12_BIOWASHBALL_CE.jpg" style="width:700px;height:1041px;" /><br style="font-size:14px;text-align:center;" /><span style="font-size:14px;"><span style="color:#0000cd;"><span style="font-size:18px;">Hỏi - Đáp VỀ SẢN PHẨM</span><br />\n	“Đây là sản phẩm tốt nhất mà tôi từng sử dụng. Nó làm sạch quần áo, và tôi thích sự chống khuẩn trong thực tế của nó. Nhờ sản phẩm vĩ đại và thân thiện với môi trường như thế này khiến tôi thực sự không thể nghĩ rằng lại có một sản phẩm nào tốt hơn với mọi người như thế. Nó sẽ tiết kiệm rất nhiều tiền bạc cho chúng ta.”<br />\n	Michelle Williams<br />\n	Lansing, MI</span><br />\n	....................................................................................................................................<br />\n	     Biowasball có giặt sạch quần áo như bột giặt giống như quảng cáo hay không ?<br />\n	     Biowashball là sản phẩm giặt tẩy công nghệ sinh học tiến tiến, đã được bán rộng rãi tại 30 Quốc gia như : Mỹ, Anh, Pháp, Đức, Thụy Sỹ, Úc, Đan Mạch , Singapore, HongKong.... trên 3 năm qua, hàng triệu người sử dụng đều rất hài lòng với Biowashball. Nếu không có chất lượng hay thông tin sai sự thật  thì sản phẩm không thể bán rộng rãi và được ưa chuộng ở các nước tiên tiến có hệ thống pháp lý bảo vệ quyền lợi khách hàng cao như Mỹ và Châu Âu được, Quí khách có thể tham khảo các thông tin Biowashball trên thế giới mà chúng tôi đã hệ thống  tại đây  hoặc thông qua các công cụ tìm kiếm .  Tổng Cục Đo Lường Chất Lượng Việt Nam đã kiểm nghiệm và chứng nhận kết quả giặt tẩy của Biowashball  chi tiết ...<br />\n	....................................................................................................................................<br />\n	     Sản phẩm có phiếu bảo hành đi kèm , nếu có thì  bảo hành bao lâu ?<br />\n	     Mỗi sản phẩm quả giặt Biowashball đều có 01 phiếu bảo hành đi kèm, khách hàng phải giữ phiếu để đảm bảo thực hiện việc bảo hành theo đúng quy định, sản phẩm được bảo hành 12 tháng .<br />\n	....................................................................................................................................<br />\n	     Quả giặt Biowashball giúp bảo vệ môi trường?<br />\n	     Quả giặt sinh học Biowashball rất thân thiện với môi trường. Do không chứa các hóa chất độc hại nên các chất mà quả bóng thải ra sẽ không gây hại cho nguồn nước, đất và sông ngòi. Vỏ nhựa đặc biệt bên ngoài Biowashball cũng được nghiên cứu với mục đích bảo vệ môi trường và sức khỏe con người với khả năng tái sinh và đạt tiêu chuẩn an toàn sử dụng của nhiều quốc gia trên thế giới.<br />\n	....................................................................................................................................<br />\n	     Tại sao quả giặt Biowashball lại giặt sạch quần áo mà không dùng bột giặt ?<br />\n	     Tia hồng ngoại xa phát ra từ các hạt gốm, chia nhỏ các phân tử nước, chất bẩn, dầu và các chất béo (dầu thức ăn), nhiên liệu ( xăng , dầu máy, dầu lửa)… và đồng thời kích thích, làm tăng hoạt động của các phân tử này -&gt; Nước sẽ thấm sâu vào các sợi vải (tăng tính thấm của nước) các chất bẩn mất dần liên kết và giảm khả năng bám dính trên quần áo. Đồng thời, với lực hút của các ion- được tạo ra trong môi trường PH 10 (tương tự bột giặt) giúp đánh bật các chất bẩn đã mất dần liên kết nói trên ra khỏi quần áo.<br />\n	....................................................................................................................................<br />\n	     Sử dụng quả giặt Biowashball như thế nào?<br />\n	     Rất đơn giản, chỉ cần đưa quả cầu giặt Biowashball cùng quần áo vào trong lồng giặt, chọn chu trình giặt  và bấm nút. Thế là xong! Bỏ quả giặt ra khỏi lồng giặt và để ở nơi khô ráo sau khi giặt. Phơi quả giặt 2- 3 h sau mỗi tháng sử dụng.<br />\n	....................................................................................................................................<br />\n	     Sử dụng quả giặt Biowashball có lợi gì cho sức khỏe?<br />\n	     Các kiểm nghiệm tại các tổ chức có uy tín cho thấy Biowashball đạt được các chỉ số rất cao về khả năng làm sạch, độ trắng, tính diệt khuẩn, và an toàn với sức khoẻ. Do không dùng hóa chất kết hợp cùng các hạt gốm có tác dụng diệt khuẩn giúp bảo vệ làn da của bạn, đặc biệt làn da nhậy cảm của phụ nữ và trẻ em.<br />\n	....................................................................................................................................<br />\n	     Có thể sử dụng quả giặt Biowashball để giặt quần áo của trẻ em được không?<br />\n	     Rất tốt khi sử dụng Biowashball để giặt quần áo trẻ em vì Biowashball không chứa hóa chất và diệt khuẩn, khử mùi quần áo, bảo vệ làn da trẻ em.<br />\n	....................................................................................................................................<br />\n	     Khi sử dụng quả giặt Biowashball có được dùng thêm nước xả vải không?<br />\n	     Quả giặt Biowashball tạo ra mùi thơm mát tự nhiên, và làm mềm sợi vải sau khi giặt, tuy nhiên chúng ta có thể sử dụng bình thường với nước xả vải mà mình thích như đối với bột giặt.<br />\n	....................................................................................................................................<br />\n	     Biowashball có thể sử dụng với tất cả các loại máy giặt ?<br />\n	     Quả bóng giặt Biowashball được thiết kế dùng cho tất cả các loại máy giặt gia đình : cửa đứng, cửa ngang và mày giặt công nghiệp.<br />\n	....................................................................................................................................<br />\n	     Quả bóng giặt có thể sử dụng khi giặt tay không?<br />\n	     Quả giặt Biowashball có thể dùng khi giặt tay, bạn có thể ngâm quần áo với quả giặt Biowashball 30 phút trước khi giũ quần áo. <br />\n	....................................................................................................................................<br />\n	     Có làm ảnh hưởng đến quần áo khi giặt ?<br />\n	     Quả giặt Biowashball không những không làm ảnh hưởng gì đến quần áo khi giặt mà trái lại còn bảo vệ quần áo của bạn luôn tươi mới không bị bạc phai, sờn màu do không tiếp xúc với hóa chất.<br />\n	....................................................................................................................................<br />\n	     Giữ quần áo không bị phai màu ?<br />\n	     Với phương pháp giặt tẩy hoàn toàn sạch, không có hóa chất, Quả giặt Biowashball bảo vệ quần áo không bị phai màu do chất tẩy rửa.<br />\n	....................................................................................................................................<br />\n	     Có gây tiếng ồn khi sử dụng và ảnh hưởng đến máy giặt không?<br />\n	     Hoàn toàn yên lặng như khi bạn sử dụng hàng ngày với bột giặt, không va đập, không gây bất cứ ảnh hưởng nào đến máy giặt của bạn.<br />\n	....................................................................................................................................<br />\n	     Có thể tái sử dụng nước giặt quần áo sau khi giặt ?<br />\n	     Do không sử dụng hóa chất, nước giặt quần áo ( khi không sử dụng nước xả vải) có thể được sử dụng để tưới cây, xả nhà vệ sinh… do không chứa chất hóa học và không gây ô nhiễm.<br />\n	....................................................................................................................................<br />\n	     Tuổi thọ của quả giặt Biowashball là 3 năm sử dụng ?<br />\n	      Mỗi quả giặt Biowashball có thể sử dụng trên 1000 lần giặt, nếu ngày nào chúng ta cũng giặt 1 lần thì sẽ sử dụng liên tục được khoảng 3 năm. Đương nhiên sử dụng với tần suất ít hơn thì tuổi thọ của Biowashball sẽ được lâu hơn.<br />\n	....................................................................................................................................<br />\n	     Tôi nghe nói cho Biowashball vào tủ lạnh giúp thực phẩm tươi lâu, làm sao Biowashball có thể làm được việc này và nó có độc hại gì cho thực phẩm hay không ?<br />\n	      Biowashball chứa các hạt gốm phát ra tia ion âm có bước sóng dài, các bước sóng này có lợi cho con người trong y khoa còn có thể sự dụng trị bệnh, nhờ vậy mà nó có khả năng diệt khuẩn và khử mùi, để trong tủ lạnh vi khuẩn bị tiêu diệt do đó mà thực phẩm của bạn tươi lâu, tủ lạnh không còn mùi hôi. Buổi tối không giặt mình tranh thủ cho vào tủ lạnh thì còn ai thông minh và hữu ích như Biowashball nữa!<br />\n	....................................................................................................................................<br />\n	     Chế độ bảo dưỡng cho quả bóng giặt này thế nào?<br />\n	     Bỏ quả giặt ra khỏi lồng giặt và để ở nơi khô ráo sau khi giặt. Phơi quả giặt (như phơi quần áo) 2- 3 h sau mỗi tháng sử dụng, hoặc phơi thường xuyên sau khi tranh thủ để trong tủ lạnh  .<br />\n	....................................................................................................................................<br />\n	     Sao tôi thấy quảng cáo là Biowashball nhập khẩu từ Châu Âu mà trên sản phẩm lại ghi "made in Korea " ?<br />\n	     Sản phẩm Biowashball thuộc quyền sở hữu của tập Đoàn Emker Thụy Sỹ và được sản xuất theo tiêu chuẩn-chất lượng Châu Âu, được chúng tôi nhập khẩu trực tiếp từ Châu Âu. Vì nhà máy sản xuất Biowashball đặt tại Hàn Quốc, về nguyên tắc bắt buộc trên sản phẩm phải ghi rõ sản xuất tại Hàn Quốc (made in Korea).</span></p>\n<p style="text-align:center;">\n	<br /><br /><span style="font-size:14px;">                <span style="color:#ff0000;">   LIÊN HỆ CÔNG TY CỔ PHẦN TM - DV VIP TẦM NHÌN VIỆT<br />\n	                     ĐC: LÔ L4, ĐƯỜNG N1, KP1, P.BỬU LONG, ĐỒNG NAI, BIÊN HÒA<br />\n	                     EMAIL: viptamnhinviet@gmail.com<br />\n	                     WEB: viptamnhinviet.com<br />\n	                     ĐT: 0618 850 747</span></span></p>\n', NULL, 'qua-giat-sinh-hoc-biowashball-thuy-sy', 'sản phẩm liên kết', 0, 11, 450000, 1, 1, NULL, NULL, NULL, NULL, 1, 12, 'viptamnhinviet'),
(26, 'Hộp bẫy gián !', NULL, '2012-03-19 02:42:24', 'hop-bay-gian--thumb.jpg', '', NULL, NULL, NULL, '<p>\n	<span style="font-size:14px;"> Gián là loại côn trùng có hại cho sinh hoạt hàng ngày và sức khỏe của con người vì chúng có tập tính sống ở những nơi bẩn thỉu, hủy hoại và làm thức ăn bị nhiễm khuẩn, đồng thời có thể gặm nhấm làm hư hỏng một số vật dụng như quần áo, vải vóc, bìa gáy sách vở...<br />\n	   Đặc biệt, gián có mùi hôi rất khó chịu và đọng lại rất lâu trên những vật dụng mà nó đi qua khiến cho bạn ghê người. Vì vậy hộp bẫy gián này là một giải pháp giúp bạn loại bỏ được loài côn trùng này.<br />\n	   Hộp bẫy gián này là nghiên cứu mới nhất cho phép bẫy gián một cách an toàn, hiệu quả mà không dùng đến bất kỳ chất hóa học hay dùng đến điện và đặc biệt là không gây ô nhiễm.</span></p>\n<p>\n	<span style="font-size:14px;"><img alt="" src="/public/userfiles/images/viptamnhinviet/images/1277484383-hop-bay-gian-2.jpg" style="width:500px;height:426px;" /></span></p>\n<p>\n	<span style="font-size:14px;">   Chỉ cần đặt một ít thức ăn như bánh, kẹo vào giữa hộp bẫy gián, tự động gián sẽ chui vào hộp và lập tức bị xập bẫy, không ra được. Bạn có thể đặt hộp bẫy gián này ở trong tủ, trong phòng ngủ hay trong nhà vệ sinh… và bất kỳ đâu có gián.<br /><strong>Giá bán sản phẩm:  55.000 - 90.000 tùy số lượng<br />\n	Chi tiết liên hệ Mrs.Cầm 0919071888(Chi nhánh viptamnhinviet Phan Thiết)<br />\n	Chi tiết liên hệ Mrs.Quỳnh 0917486575(Sài Gòn)</strong></span></p>\n', NULL, 'hop-bay-gian-', 'sản phẩm', 0, 12, NULL, 0, 0, NULL, NULL, NULL, NULL, 1, 11, 'viptamnhinviet'),
(27, 'Máy cắt lông xù và hút bụi quần áo !', NULL, '2012-03-19 02:49:05', 'may-cat-long-xu-va-hut-bui-quan-ao--thumb.JPG', '', NULL, NULL, NULL, '<p>\n	<span style="font-size:14px;">Điểm nổi bật<br />\n	    Sản phẩm rất thích hợp với các sản phẩm len, dạ, chất liệu cotton,...<br />\n	    Dễ sử dụng, an toàn.<br />\n	    Kiểu dáng đẹp, màu sắc trang nhã, trẻ trung.<br />\n	    Thiết kế nhỏ gọn, với kích thước 8cm x 8cm x 4cm.<br />\n	    Dùng năng lượng pin tiểu.<br />\n	    Sản phẩm có thể dùng làm quà tặng.<br />\n	    Xuất xứ: Trung Quốc.<br />\n	    Sản phẩm bảo hành 03 tháng, 1 đổi 1 trong vòng 1 tháng nếu sản phẩm bị lỗi do nhà sản xuất.<br />\n	Giới thiệu chi tiết<br />\n	Máy cắt lông xù trên quần áo được thiết kế nhỏ gọn, giúp bạn dễ dàng cắt sạch đi những phần lông bị xù trên quần áo. Rất đơn giản, bạn chỉ cần bật máy lên và chà nhẹ lên chỗ áo quần cần cắt lông bị xù. Sau khi dùng xong chỉ cần tháo nắp hộp ra và đổ rác.<br />\n	Sản phẩm sẽ giúp cho đồ của chúng ta trở lại như mới sau khi được cắt sạch những phần lông bị xù trên áo len, khăn choàng, vớ, chăn...Với những chiếc áo có lông quá dài, bạn có thể tháo rời chiếc nắp đậy để việc cắt lông được dễ dàng và hiệu quả hơn.</span></p>\n<p>\n	<span style="font-size:14px;"><img alt="" src="/public/userfiles/images/viptamnhinviet/images/extendImage_2585_s2.jpg" style="width:496px;height:300px;" /></span></p>\n<p>\n	<span style="font-size:14px;"><img alt="" src="/public/userfiles/images/viptamnhinviet/images/extendImage_2585_3.JPG" style="width:496px;height:300px;" /><br /><br /><strong>Chi tiết liên hệ Mrs.Cầm 0919071888(Chi nhánh viptamnhinviet Phan Thiết)<br />\n	Chi tiết liên hệ Mrs.Quỳnh 0917486575(Sài Gòn)<br />\n	Giá thị trường: 200.000<br />\n	Giá bán sản phẩm: 125.000</strong></span></p>\n', NULL, 'may-cat-long-xu-va-hut-bui-quan-ao-', 'sản phẩm', 0, 13, 125000, 0, 0, NULL, NULL, NULL, NULL, 1, 11, 'viptamnhinviet'),
(28, 'Iphone mới 100% sắp về, giá sốc', NULL, '2012-03-19 02:51:52', 'iphone-moi-100-sap-ve-gia-soc-thumb.jpg', 'iphone-moi-100-sap-ve-gia-soc.jpg', NULL, NULL, NULL, '<p>\n	 </p>\n<p>\n	<span style="font-size:14px;">Điểm nổi bật<br />\n	   Kiểu dáng Kiểu thẳng<br />\n	Số sim sử dụng 2 Loại màn hình Cảm ứng<br />\n	Kích thước màn hình 3.5inch<br />\n	Thẻ nhớ hỗ trợ MicroSD Tính năng nổi bật<br />\n	• Chụp ảnh• Ghi âm• Quay Video<br />\n	Kết nối không dây • Bluetooth<br />\n	• GPRS• Kiểu khác<br />\n	Cổng giao tiếp • USB• MicroUSB<br />\n	nguyên hộp: pin, sạc, tai nghe,<br />\n	cáp kết nối máy tính, sách hướng dẩn...<br />\n	Hàng bảo hành 1 năm</span></p>\n<p>\n	<strong><span style="font-size:14px;">Chi tiết liên hệ Mrs.Cầm 0919071888(Chi nhánh viptamnhinviet Phan Thiết)<br />\n	Chi tiết liên hệ Mrs.Quỳnh 0917486575 (Sài Gòn)<br />\n	Giao hàng tận nơi<br />\n	Giá bán: 1.500.000-1.600.000</span></strong></p>\n', NULL, 'iphone-moi-100-sap-ve-gia-soc', 'sản phẩm', 0, 14, 1500000, 0, 0, NULL, NULL, NULL, NULL, 1, 11, 'viptamnhinviet'),
(30, 'RELACORE là thương hiệu giảm cân của Mỹ nổi tiếng trên toàn thế giới.', NULL, '2012-03-19 18:49:32', 'relacore-la-thuong-hieu-giam-can-cua-my-noi-tieng-tren-toan-the-gioi--thumb.jpg', '', NULL, NULL, NULL, '<p style="text-align:center;">\n	<img alt="" src="/public/userfiles/images/viptamnhinviet/images/relacore-giam-can4%20(1).jpg" style="width:413px;height:550px;" /></p>\n<p>\n	RELACORE là thương hiệu giảm cân của Mỹ nổi tiếng trên toàn thế giới. RELACORE là sản phẩm giảm cân đặc biệt dành cho những người khó xuống cân, với 1 hàm lượng giảm cân cực mạnh, giúp bạn giảm được 4 - 10kg chỉ trong một thời gian rất ngắn đạt tỷ lệ giảm cân 99% thành công. Ngoài thành phần dinh dưỡng bổ sung dồi dào, ngoài công dụng giảm cân,  còn giúp tăng cường sức khỏe, phòng chống bệnh tật...</p>\n<p style="text-align:center;">\n	<img alt="" src="/public/userfiles/images/viptamnhinviet/images/Picture1.jpg" style="width:500px;height:401px;" /></p>\n<p>\n	Thành phần chính:<br />\n	vitamin C - Canxi- B1- B2- biotin, pantotheniccacid, magnesium, relacore, magnolia v.v...<br />\n	Cách sử dụng: mỗi ngày một viên, dùng trước bữa sáng 30 phút.<br />\n	Hiệu quả: Với 1 hộp 30 viên bạn có thể giảm từ 4 đến 10 kg<br />\n	Sản phẩm thực sự tốt và hiệu quả.Đặc biệt với những ai siêu béo và đã dung nhiều loại sản phẩm khác mà ko hiệu qủa.<br />\n	LIÊN HỆ MUA HÀNG<br />\n	EMAIL: trungnam_nguyen9@yahoo.com<br />\n	ĐT: 0987 976 879 ( A NAM)</p>\n<p>\n	 </p>\n', NULL, 'relacore ', 'RELACORE là thương hiệu giảm cân của Mỹ nổi tiếng trên toàn thế giới. RELACORE là sản phẩm giảm cân đặc biệt dành cho những người khó xuống cân, với 1 hàm lượng giảm cân cực mạnh, giúp bạn giảm được 4 - 10kg chỉ trong một thời gian rất ngắn…', 0, 16, 380000, 0, 0, NULL, NULL, NULL, NULL, 1, 18, 'viptamnhinviet'),
(32, 'Sản phẩm mới COLLAGEN', NULL, '2012-03-19 19:15:13', 'san-pham-moi-collagen-thumb.jpg', '', NULL, NULL, NULL, '<p style="text-align:center;">\n	<img alt="" src="/public/userfiles/images/viptamnhinviet/images/collagen7.jpg" style="width:545px;height:550px;" /></p>\n<p style="text-align:center;">\n	 </p>\n<p style="text-align:center;">\n	<img alt="" src="/public/userfiles/images/viptamnhinviet/images/COLLAGEN(2).jpg" style="width:397px;height:550px;" /></p>\n<p style="text-align:center;">\n	 </p>\n<p style="text-align:center;">\n	<img alt="" src="/public/userfiles/images/viptamnhinviet/images/COLLAGEN(3).jpg" style="width:391px;height:550px;" /></p>\n<p style="text-align:center;">\n	<strong>LIÊN HỆ MUA HÀNG<br />\n	EMAIL: trungnam_nguyen9@yahoo.com<br />\n	ĐT: 0987 976 879 ( A NAM )</strong></p>\n', NULL, 'san-pham-moi-collagen', 'sản phẩm mới collagen', 0, 17, 750000, 0, 0, NULL, NULL, NULL, NULL, 1, 11, 'viptamnhinviet'),
(33, 'Máy uốn tóc Hello Kitty', NULL, '2012-03-19 19:26:03', 'may-uon-toc-hello-kitty-thumb.jpg', '', NULL, NULL, NULL, '<p>\n	   Bạn luôn muốn thay đổi phong cách cho mái tóc của mình? Bạn đang sở hữu một mái tóc thẳng dài? Đôi lúc bạn muốn có một mái tóc uốn sang trọng, trẻ trung với nhiều kiểu khác nhau?... rất đơn giảm, chỉ cần một Máy uốn tóc Hello Kitty nhỏ nhắn, xinh xắn là bạn có thể hoàn toàn tự tin khi xuống phố hay xuất hiện bất cứ nơi đâu.<br />\n	 Với kích thước nhỏ, gọn, nhẹ… Máy uốn tóc Hello Kitty  có thể trở thành người bạn, luôn có mặt trong túi xách để cùng bạn “đi du lịch” hay đến bất kì nơi đâu. </p>\n<p style="text-align:center;">\n	<img alt="" src="/public/userfiles/images/viptamnhinviet/images/khuyen-mai-vang_vn-may-duoi-toc-07122011-content-004.jpg" style="width:500px;height:350px;" /></p>\n<p>\n	Mẫu mã đẹp, đáng yêu cùng gam màu hồng nữ tính. Kiểu dáng mèo Kitty xinh xắn dễ thương, Máy uốn tóc Hello Kitty là dụng cụ làm đẹp đáng yêu dành cho phái nữ. Hãy cùng thay đổi phong cách cho máy tóc bạn nhé!</p>\n<p style="text-align:center;">\n	<img alt="" src="/public/userfiles/images/viptamnhinviet/images/khuyen-mai-vang_vn-may-duoi-toc-07122011-content-001.jpg" style="width:500px;height:350px;" /><br />\n	 Cách thực hiện:</p>\n<p>\n	Bước 1: Trước tiên gội đầu sạch, sau đó sấy cho tóc khô vừa.<br />\n	Bước 2: Bạn chia phần tóc ở phía sau đỉnh đầu và cố định bằng kẹp. Nếu tóc nhiều thì nhớ chọn loạI kẹp to để giữ cho tóc không bị bung ra.<br />\n	Bước 3: Dùng Máy uốn tóc Hello Kitty để uốn lần lượt mỗi bên tóc từ đuôi tóc trở ngược vào trong. Mỗi lần uốn ta chỉ uốn một vòng rưỡi máy uốn trong thời gian 3 giây.<br />\n	Bước 4: Chia đều mỗi phần tóc của mỗi bên tóc làm 2, uốn thêm lần nữa giống thao tác ở bước 3. Nhẹ nhàng lấy máy uốn ra khỏi tóc.<br />\n	Bước 5: Tiếp tục uốn phần tóc ở đỉnh đầu theo hướng cuộn ngược trở lại. Chú ý cầm chắc máy uốn, điều phối tay linh hoạt và di chuyển máy một cách nhẹ nhàng.<br />\n	Kết thúc, xịt keo làm bóng, mượt tóc.<br />\n	Bạn sẽ sở hữu ngay một mái tóc như ý, thỏa sức tung tăng làm điệu cùng Hello Kitty nhé!<br /><strong>Giá bán sản phẩm: 160.000 VNĐ<br />\n	Chi tiết liên hệ Mrs Cầm 0919.071.888 (chi nhánh viptamnhinviet Phan Thiết)<br />\n	Chi tiết liên hệ Mrs Quỳnh 0917.486.575 (Sài Gòn)</strong></p>\n', NULL, 'may-uon-toc-hello-kitty', ' Với kích thước nhỏ, gọn, nhẹ… Máy uốn tóc Hello Kitty  có thể trở thành người bạn, luôn có mặt trong túi xách để cùng bạn “đi du lịch” hay đến bất kì nơi đâu. ', 0, 18, 160000, 0, 0, NULL, NULL, NULL, NULL, 1, 24, 'viptamnhinviet');
INSERT INTO `dos_module_products` (`record_id`, `title`, `titleen`, `postdate`, `pic_thumb`, `pic_full`, `pic_desc`, `preview`, `previewen`, `detail`, `detailen`, `tag`, `description`, `hits`, `record_order`, `unit`, `hot`, `specials`, `extra_field1`, `extra_field2`, `extra_field3`, `extra_field4`, `enable`, `dos_module_item_cat_cat_id`, `dos_module_usernames_username`) VALUES
(34, 'Bình bơm dầu gội tự động!', NULL, '2012-03-19 19:38:04', 'binh-bom-dau-goi-tu-dong-thumb.jpg', '', NULL, NULL, NULL, '<p>\n	       Bạn sẽ chưa thể hình dung ra được sự thú vị, tiện lợi của sản phẩm máy bơm xà phòng, sữa tắm... tự động nếu như chưa được biết và thử dùng...</p>\n<p style="text-align:center;">\n	<img alt="" src="/public/userfiles/images/viptamnhinviet/images/st1018-new.jpg" style="width:375px;height:350px;" /></p>\n<p>\n	       Hãy hình dung về một sản phẩm tự động hoàn toàn khiến ngôi nhà của bạn trở nên gọn gàng, sạch sẽ, hiện đại và thông minh hơn, cuộc sống thêm đơn giản và tiện lợi hơn nhờ những tiến bộ của công nghệ dễ dàng áp dụng ngay trong nhà bạn... Tất cả những điều tuyệt vời đó sẽ là của bạn với sản phẩm bình bơm chất lỏng thông minh hoàn toàn tự động<br />\n	Với thiết kế nhỏ gọn, trang trọng, bạn có thể sử dụng sản phẩm cho rất nhiều mục đích khác nhau như đựng các loại kem dưỡng da, chống nắng... trên bàn trang điểm, hay dùng đựng các loại xà phòng rửa tay, dầu gội, sữa tắm...</p>\n<p style="text-align:center;">\n	<img alt="" src="/public/userfiles/images/viptamnhinviet/images/compact-sensor-pump-white__SL600_(1).jpg" style="width:341px;height:550px;" /></p>\n<p>\n	        Bạn hãy hình dung về sự tiện lợi cụ thể như khi bạn dùng kem chống nắng hay sữa tắm, bạn sẽ phải đổ thật nhiều kem trong 1 lần duy nhất, cách làm như vậy sẽ khiến lượng kem đó thừa hoặc thiếu gây lãng phí và khó khăn trong lúc sử dụng nếu phải lấy thêm trong tình huống tay bạn đã đầy bọt xà phòng, hơn thế bạn chỉ có thể sử dụng 1 tay để thoa kem bởi tay còn lại đã phải giữ kem liên tục trong suốt quá trình sử dụng<br />\n	Sản phẩm sử dụng pin tiểu AAA thông dụng nên rất tiện lợi khi cần thay thế và đã loại bỏ sự phức tạp và vướng víu của dây điện nguồn nên bạn hoàn toàn cho thể yên tâm sử dụng ngay cả trong môi trường có độ ẩm cao như nhà tắm mà không lo ngại về vấn đề an toàn điện<br />\n	Bình bơm dung dịch tự động, đơn giản, thuận tiện, tiết kiệm, luôn sạch sẽ và khô ráo sẽ là một sự lựa chọn thông minh cho cuộc sống hiện tại và tiện nghi, một món quà tuyệt vời cho mọi phụ nữ và gia đình...<br /><strong>Giá bán sản phẩm: 270.000<br />\n	Chi tiết liên hệ Mrs Cầm 0919.071.888 (chi nhánh viptamnhinviet Phan Thiết)<br />\n	Chi tiết liên hệ Mrs Quỳnh 0917.486.575 (Sài Gòn)<br />\n	 </strong></p>\n', NULL, 'binh-bom-dau-goi-tu-dong', 'Với thiết kế nhỏ gọn, trang trọng, bạn có thể sử dụng sản phẩm cho rất nhiều mục đích khác nhau như đựng các loại kem dưỡng da, chống nắng... trên bàn trang điểm, hay dùng đựng các loại xà phòng rửa tay, dầu gội, sữa tắm...', 0, 19, 270000, 0, 0, NULL, NULL, NULL, NULL, 1, 11, 'viptamnhinviet'),
(35, 'Tinh dầu thông đỏ', NULL, '2012-03-19 19:51:55', 'tinh-dau-thong-do-thumb.jpg', '', NULL, NULL, NULL, '<p style="text-align:center;">\n	<img alt="" src="/public/userfiles/images/viptamnhinviet/images/pine20power20gold_211.jpg" style="width:300px;height:300px;" /></p>\n<p>\n	Sản phẩm hỗ trợ đa chức năng, được mệnh danh là "thần dược tự nhiên"<br />\n	Thành phần: Red Pine Needle Oil for Food 98%, Vitamin E 2%.Tinh dầu thông đỏ<br />\n	Công dụng: Hỗ trợ tích cực trong điều trị bệnh cao huyết áp, mỡ trong máu, tiểu đường, đau đầu, stress… loại trừ chất độc ở gan (đối với người uống rượu bia nhiều), ở phổi (người hút thuốc nhiều), trợ giúp tuần hoàn và dẫn truyền thần kinh trong các trường hợp đau dây thần kinh, kháng viêm, tê tay chân, chứng rụng tóc (không rõ nguyên nhân).</p>\n<p style="text-align:center;">\n	 <img alt="" src="/public/userfiles/images/viptamnhinviet/images/pine20power20gold_21.jpg" style="width:300px;height:300px;" /><br />\n	Đặc biệt:<br />\n	    Hỗ trợ hiệu quả cho Bệnh nhân tiểu đường.<br />\n	    Hỗ trợ hiệu quả trong điều trị Viêm xoang mãn tính, Tai biến.<br />\n	    Đào thải Cholesterol trong Gan, máu nhanh chóng.<br />\n	    Hiệu quả loại trừ được độc tố cho người uống rượu bia nhiều. Tác dụng hiệu quả trong Sơ gan, bụng to.<br />\n	    Có hiệu quả cao trong việc ngăn ngừa và hỗ trợ ung thư gan, vú, dạ dày và phổi…<br />\n	    Có hiệu quả cao trong việc hỗ trợ điều trị yếu sinh lý, nâng cao sinh lực cho đàn ông.<br />\n	    Bị nám da, sạm da do rối loạn nội tiết tố trong cơ thể.<br />\n	    Đặc biệt phụ nữ có vòng eo to lớn có thể sử dụng để giúp săn chắc và thon gọn trong thời gian ngắn.<br />\n	Trình bày: 450mg/ viên dạng nang mềm - hộp 100 viên.<br />\n	Cách dùng: Ngày uống 1 lần (hoặc nhiều hơn tuỳ thuộc vào thể trạng từng người) với mỗi lần 1 viên.<br /><strong>LIÊN HỆ MUA HÀNG<br />\n	ĐT: 01634900468 ( A TRƯỞNG )<br />\n	EMAIL: hoangnuyenspa@gmail.com</strong></p>\n', NULL, 'tinh-dau-thong-do', 'Sản phẩm hỗ trợ đa chức năng, được mệnh danh là "thần dược tự nhiên"', 0, 20, 0, 0, 0, NULL, NULL, NULL, NULL, 1, 20, 'viptamnhinviet'),
(36, 'Máy cạo râu', NULL, '2012-03-19 19:56:58', 'may-cao-rau-thumb.jpg', '', NULL, NULL, NULL, '<p>\n	Điểm Nổi Bật<br />\n	    Được thiết kế nhỏ gọn, kích thước 10 x 5.5cm, Boteng Shaver nằm gọn trong bàn tay bạn, tạo cảm giác chắc chắn khi sử dụng.<br />\n	    Lưỡi dao cạo được bảo vệ bên dưới lớp lưới chắc chắn cho bạn tránh khỏi những vết thương do lưỡi dao cạo gây ra.<br />\n	    Boteng Shaver sử dụng pin sạc nên bạn có thể sạc nhiều lần, và thời gian sử dụng liên tục.<br />\n	    Tặng kèm 1 bộ vệ sinh máy và 1 bộ dao cạo thay thế.<br />\n	    Nhanh chóng, thuận tiện khi bạn đi du lịch hay công tác.<br />\n	    Thiết kế sang trọng để là món quà đáng yêu.</p>\n<p style="text-align:center;">\n	<img alt="" src="/public/userfiles/images/viptamnhinviet/images/May-Cao-Rau-Boteng-Shaver_2012224143652680.jpg" style="width:480px;height:297px;" /></p>\n<p>\n	Phần lớn nam giới đều cạo râu mỗi ngày nên cũng ảnh hưởng đến da mặt. Vì vậy, bạn cần có biện pháp chăm sóc da và dưỡng da để tránh cho da không bị khô, rát đặc biệt với những người có da nhạy cảm. Được thiết kế nhỏ gọn, kích thước 10 x 5.5cm, Boteng Shaver nằm gọn trong bàn tay bạn, tạo cảm giác chắc chắn khi sử dụng. Thêm nữa, với chiếc gương được thiết kế ngay trên thân máy, chính điều đó cho phép bạn có thể dễ dàng mang theo sử dụng trong bất cứ trường hợp nào và vô cùng thoải mái.</p>\n<p style="text-align:center;">\n	<img alt="" src="/public/userfiles/images/viptamnhinviet/images/May-Cao-Rau-Boteng-Shaver_201222414365050.jpg" style="width:480px;height:297px;" /></p>\n<p>\n	Lưỡi dao cạo được bảo vệ bên dưới lớp lưới chắc chắn cho bạn tránh khỏi những vết thương do lưỡi dao cạo gây ra. Động cơ của máy quay với tốc độ cao vì được làm bằng hợp kim Bạc Pd.<br /><strong>Giá bán sản phẩm: 150.000<br />\n	Chi tiết liên hệ Mrs Cầm 0919.071.888 (chi nhánh viptamnhinviet Phan Thiết)<br />\n	Chi tiết liên hệ Mrs Quỳnh 0917.486.575 (Sài Gòn)</strong><br /><br />\n	 </p>\n', NULL, 'may-cao-rau', ' Được thiết kế nhỏ gọn, kích thước 10 x 5.5cm, Boteng Shaver nằm gọn trong bàn tay bạn, tạo cảm giác chắc chắn khi sử dụng.', 0, 21, 150000, 0, 0, NULL, NULL, NULL, NULL, 1, 18, 'viptamnhinviet'),
(37, 'Thác nước phong thủy !', NULL, '2012-03-19 20:02:56', 'thac-nuoc-phong-thuy--thumb.jpg', '', NULL, NULL, NULL, '<p>\n	     Mang lại "Mưa thuận gió hòa" cho gia chủ. Cực kỳ bắt mắt, thu hút với tiếng nước chảy róc rách và những dòng nước tự đổi màu huyền ảo nhờ hệ thống đèn Led 7 màu phản chiếu trên những tầng sóng lung linh ... Một món đồ độc đáo dựa trên thuật Phong Thủy, với ý nghĩa cầu mong sự no đủ, sung túc và phát đạt "tiền vào như nước". Tiếng nước chảy róc rách, êm dịu như một dòng suối nhỏ mang lại cho không gian nội thất không khí của thiên nhiên thật gần gũi, thật thư thái tâm hồn ...<br />\n	Thác nước Âm Dương Ngũ Hành là sản phẩm mang ý nghĩa Phong Thủy, cầu "Mưa thuận gió hòa" cho gia chủ. Theo phong thủy, vạn vật đều được sinh ra và phải trải qua năm thái trạng cơ bản của tạo hóa là: Kim - Thủy - Hỏa - Mộc - Thổ. Thuyết Ngũ Hành thể hiện sự giao hoa, tương tác của vạn vật trong vũ trụ. Mối quan hệ ràng buộc và tất yếu này được thể hiện qua 2 vòng quan hệ tuần hoàn:<br />\n	  Trong mối quan hệ Sinh thì Mộc sinh Hỏa; Hỏa sinh Thổ; Thổ sinh Kim, Kim sinh Thủy, Thủy sinh Mộc.<br />\n	  Trong mối quan hệ Khắc thì Mộc khắc Thổ, Thổ khắc Thủy, Thủy khắc Hỏa, Hỏa khắc Kim, Kim khắc Mộc.</p>\n<p>\n	        Dựa trên nền tảng là thuyết Phong Thủy, sản phẩm được tạo ra để thể hiện, biểu trưng cho quy luật quan hệ tương tác khép kín và vĩnh hằng, những dòng nước chảy tuần hoàn của thác nước cũng nói nên điều này. Trong bộ sản phẩm còn có 5 viên đá ngũ sắc tượng trưng cho 5 vật chất, 5 trạng thái, 5 mối ràng buộc tất yếu của thuyết "Âm - Dương - Ngũ - Hành", mang ý nghĩa cầu toàn, cầu "Mưa thuận gió hòa" cho gia chủ.<br />\n	Nếu bạn chưa phải là người sùng bái Phong Thủy thì sản phẩm cũng là một món quà thú vị mang lại sự mới lạ cho ngôi nhà của bạn. Không gian nội thất sẽ trở nên cuốn hút và sống động hơn nhờ tiếng nước chảy róc rách rât tự nhiên, rất êm tai. Những dòng nước chảy tuần hoàn, gợn sóng lung linh với hiệu ứng ánh sáng huyền ảo tự động đổi màu nhờ bộ đèn Led 3 màu siêu tiết kiệm điện. Chắc chắn không gian sẽ trở nên lôi cuốn hơn bao giờ hết!<br /><strong><img alt="" src="/public/userfiles/images/viptamnhinviet/images/180611150447-thac-nuoc-phong-thuy.jpg" style="width:413px;height:550px;" /></strong></p>\n<p>\n	<strong>Giá bán sản phẩm: 250.000</strong></p>\n<p>\n	<strong>Chi tiết liên hệ Mrs Cầm 0919.071.888 (chi nhánh viptamnhinviet Phan Thiết)<br />\n	Chi tiết liên hệ Mrs Quỳnh 0917.486.575 (Sài Gòn)<br />\n	 </strong></p>\n', NULL, 'thac-nuoc-phong-thuy-', '  Mang lại "Mưa thuận gió hòa" cho gia chủ', 0, 22, 250000, 0, 0, NULL, NULL, NULL, NULL, 1, 21, 'viptamnhinviet'),
(38, ' Bộ nước hoa Fujiyama Gentleman - Pháp', NULL, '2012-03-19 20:09:27', 'bo-nuoc-hoa-fujiyama-gentleman-phap-thumb.JPG', '', NULL, NULL, NULL, '<p style="text-align:center;">\n	<img alt="" src="/public/userfiles/images/viptamnhinviet/images/dscn0592255b1255d15.JPG" style="width:320px;height:240px;" /></p>\n<p>\n	<strong>Giá bán: 1tr5<br />\n	Liên hệ: Nguyễn Thanh Phong<br />\n	Địa chỉ: 612 Nguyễn An Ninh, P8, Vũng Tàu (Khu Angel House, bùng binh Nguyễn An Ninh + 3 tháng 2)<br />\n	SĐT: 01212.945.007<br />\n	Email: phongthanhnguyen.vt@gmail.com<br />\n	Ym: KetNoiTheGioiAo</strong></p>\n', NULL, 'bo-nuoc-hoa-fujiyama-gentleman-phap', ' Bộ nước hoa Fujiyama Gentleman - Pháp', 0, 23, 1500000, 0, 0, NULL, NULL, NULL, NULL, 1, 11, 'viptamnhinviet'),
(39, 'Công nghệ tiết kiệm xăng ,dầu .', NULL, '2012-03-19 20:58:05', 'cong-nghe-tiet-kiem-xang-dau---thumb.jpg', '', NULL, NULL, NULL, '<p style="text-align:center;">\n	<strong>SẢN PHẨM CÔNG NGHỆ TIẾT KIỆM XĂNG, DẦU</strong></p>\n<p>\n	 </p>\n<p style="text-align:center;">\n	<strong>GIẢM TIẾT KIỆM 15% - 25% NHIÊN LIỆU BẰNG CÔNG NGHỆ NANO CỦA MỸ</strong></p>\n<p>\n	 </p>\n<p style="text-align:center;">\n	<strong>ĐÂY LÀ MỘT TRONG NHỮNG CÔNG NGHỆ NỔI TIẾNG ĐƯỢC NHẬP KHẨU TỪ MỸ VỀ VIỆT NAM.</strong></p>\n<p style="text-align:center;">\n	<strong><img alt="" src="/public/userfiles/images/viptamnhinviet/images/Untitled-2.jpg" style="width:317px;height:550px;" /></strong></p>\n<p style="text-align:center;">\n	<strong>MPG - Xăng 4ml</strong></p>\n<p style="text-align:center;">\n	<strong>Cách sử dụng: dùng cho động cơ xăng</strong></p>\n<p style="text-align:center;">\n	<strong>Pha 1 lọ cho 3L đến 4L xăng<br />\n	Giá: 6.000 VNĐ/lọ</strong></p>\n<p style="text-align:center;">\n	<img alt="" src="/public/userfiles/images/viptamnhinviet/images/Untitled-3.jpg" style="width:303px;height:550px;" /></p>\n<p style="text-align:center;">\n	MPG - Xăng, Dầu 10ml<br />\n	Cách sử dụng: dùng cho động cơ xăng, dầu<br />\n	Pha 1 lọ cho 20L đến 25L xăng, dầu Diesel<br />\n	Giá: 17.000 VNĐ/lọ</p>\n<p style="text-align:center;">\n	<img alt="" src="/public/userfiles/images/viptamnhinviet/images/Dau30ml_450x377.png" style="width:450px;height:377px;" /></p>\n<p style="text-align:center;">\n	 MPG - Dầu 30ml</p>\n<p style="text-align:center;">\n	Cách sử dụng: dùng cho động cơ dầu<br />\n	Pha 1 lọ cho 80L đến 100L dầu Diesel</p>\n<p style="text-align:center;">\n	Giá: 68.000 VNĐ/lọ</p>\n<p>\n	 </p>\n<p style="text-align:center;">\n	<strong>       PHÂN TÍCH SẢN PHẨM MPG       </strong>                                                                    </p>\n<p style="text-align:center;">\n	 </p>\n<p>\n	<img alt="" src="/public/userfiles/images/viptamnhinviet/images/2011-11-16_125715.jpg" style="width:398px;height:204px;" /></p>\n<p>\n	      Lợi ích đầu tiên là khả năng của lớp màng được tạo ra bởi MPG để chống lại sự hình thành của lớp lắng đọng có hại. Điều này đặc biệt quan trọng trong việc nhìn nhận của các ảnh hưởng mà sự điều chỉnh của EPA đã có trong ngành công nghiệp xe hơi. Để tuân theo chỉ thị của EPA để giảm lượng khí thải, các nhà sản xuất nhiên liệu đã bỏ Chì và Lưu huỳnh cho thêm ôxy vào nhiên liệu. Hậu quả là sự hình thành của lớp lắng đọng độc hại có thể thấm vào nhiên liệu và tạo ra các vấn đề về hoạt động. Giảm phạm vi của các lớp lắng đọng đó là một lợi ích khác của sản phẩm của chúng tôi.</p>\n<p>\n	<img alt="" src="/public/userfiles/images/viptamnhinviet/images/2011-11-16_125757.jpg" style="width:438px;height:215px;" /></p>\n<p>\n	  Lợi ích thứ hai, MPG thay đổi bề mặt hấp thụ nhiệt đặc trưng của kim loại. Hỗn hợp nhiên liệu và không khí tạo ra năng lượng ở trạng thái của nhiệt năng có thể tạo ra sự giãn nở để hạ pít tông xuống, và lớp màng mỏng chống lại việc di chuyển của sự tản nhiệt. Việc này có hiệu quả trực tiếp trong việc đốt cháy ở nhiệt độ cao hơn, sự giãn nở tốt hơn và mạnh mẽ hơn.</p>\n<p style="text-align:center;">\n	<img alt="" src="/public/userfiles/images/viptamnhinviet/images/2011-11-16_125923.jpg" style="width:177px;height:389px;" /><br />\n	      Lợi ích thứ 3 của lớp màng là bằng cách hoạt động như là một tiền thân của sự kích thích để phản ứng lại với thành phần chất xúc tác trong MPG. Các hợp chất hoạt động của MPG trong sự kết hợp với nhiệt trong xy lanh gây ra một phản ứng xúc tác để phát huy tốt hơn trong việc phân tán các chất hóa học và tốt hơn trong việc đốt cháy. Sự phản ứng kích thích cũng là một sự tỏa nhiệt và tạo ra nhiệt năng. Nói chung, tất cả 3 lợi ích trên cho kết quả trong tổng số của 30% đến 40% khả năng mở rộng hơn trong xy lanh với một lượng nhiên liệu như nhau. Lớp màng MPG cung cấp là một ảnh hưởng của bề mặt được đánh bóng cho phép phân phối nhiên liệu tốt hơn. Nó có thể được so sánh như việc nước đọng lại trên lớp sơn được đánh bóng. Lớp màng rất nhỏ thu hút nhiên liệu lỏng cho kết quả tốt hơn trong việc phân phối nhiên liệu để tạo thành việc tích điện để sinh ra nhiều năng lượng hơn.</p>\n<p>\n	<br />\n	   Ngoài ra, cũng có lẽ là quan trọng nhất đó là việc làm giảm khí thải, kết quả từ việc sử dụng MPG. Quá trình xúc tác được tìm thấy trong các bộ chuyển xúc tác ở trong hệ thống thoát khí được bắt đầu ở trong xy lanh nổ, nó làm giảm sự hình thành của khí nitơ ôxít (NOX). Công việc của bộ chuyển đổi được giảm xuống, và tuổi thọ của bộ chuyển đổi được tăng lên.</p>\n<p>\n	 </p>\n<p>\n	 </p>\n<p>\n	<strong>HỒ SƠ PHÁP LÝ VỀ SẢN PHẨM MPG</strong></p>\n<p>\n	 </p>\n<p style="text-align:center;">\n	<img alt="" src="/public/userfiles/images/viptamnhinviet/images/HSPL_01_683x966.jpg" style="width:389px;height:550px;" /></p>\n<p style="text-align:center;">\n	<img alt="" src="/public/userfiles/images/viptamnhinviet/images/HSPL_02_683x966.jpg" style="width:389px;height:550px;" /></p>\n<p style="text-align:center;">\n	<img alt="" src="/public/userfiles/images/viptamnhinviet/images/HSPL_03_683x966.jpg" style="width:389px;height:550px;" /></p>\n<p style="text-align:center;">\n	<img alt="" src="/public/userfiles/images/viptamnhinviet/images/HSPL_04m_683x966.jpg" style="width:389px;height:550px;" /></p>\n<p style="text-align:center;">\n	<img alt="" src="/public/userfiles/images/viptamnhinviet/images/HSPL_06m_683x966.jpg" style="width:389px;height:550px;" /></p>\n<p style="text-align:center;">\n	<img alt="" src="/public/userfiles/images/viptamnhinviet/images/HSPL_07m_683x966.jpg" style="width:389px;height:550px;" /></p>\n<p style="text-align:center;">\n	<img alt="" src="/public/userfiles/images/viptamnhinviet/images/HSPL_08_683x966.jpg" style="width:389px;height:550px;" /></p>\n<p style="text-align:center;">\n	<img alt="" src="/public/userfiles/images/viptamnhinviet/images/HSPL_09_683x966.jpg" style="width:389px;height:550px;" /></p>\n<p style="text-align:center;">\n	<img alt="" src="/public/userfiles/images/viptamnhinviet/images/HSPL_11n.jpg" style="width:389px;height:550px;" /></p>\n<p style="text-align:center;">\n	<img alt="" src="/public/userfiles/images/viptamnhinviet/images/HSPL_12_683x966.jpg" style="width:389px;height:550px;" /></p>\n<p style="text-align:center;">\n	<img alt="" src="/public/userfiles/images/viptamnhinviet/images/HSPL_13_683x966.jpg" style="width:389px;height:550px;" /></p>\n<p style="text-align:center;">\n	<img alt="" src="/public/userfiles/images/viptamnhinviet/images/HSPL_14n_n.jpg" style="width:389px;height:550px;" /></p>\n<p style="text-align:center;">\n	<img alt="" src="/public/userfiles/images/viptamnhinviet/images/HSPL_15n_n.jpg" style="width:389px;height:550px;" /></p>\n<p style="text-align:center;">\n	<img alt="" src="/public/userfiles/images/viptamnhinviet/images/HSPL_16_683x966.jpg" style="width:389px;height:550px;" /></p>\n<p style="text-align:center;">\n	<img alt="" src="/public/userfiles/images/viptamnhinviet/images/HSPL_17_683x966.jpg" style="width:389px;height:550px;" /></p>\n<p style="text-align:center;">\n	 </p>\n<p>\n	<strong>LÝ DO SỬ DỤNG LIÊN TỤC SẢN PHẨM MPG TỪ 3</strong></p>\n<p>\n	<strong>BÌNH NHIÊN LIỆU MỚI CÓ KẾT QUẢ</strong></p>\n<p>\n	<br /><strong>1. TÁC DỤNG CỦA BÌNH NHIÊN LIỆU THỨ I:</strong></p>\n<br /><p>\n	LÀM SẠCH ĐỘNG CƠ (BằNG CÁCH TIÊU HỦY VÀ LOẠI BỎ HẾT LƯỢNG NITƠ ÔXÍT (NO), MONOXÍT CÁCBON (CO) VÀ NHỮNG CẶN NHIÊN LIÊU KHÔNG CHÁY ĐƯỢC “LỚP MUỐI ĐEN”, RA KHỎI BUỒNG ĐỐT.TĂNG HIỆU QUẢ ĐỐT CHÁY NHIÊN LIỆU. GIẢM DẦN LƯỢNG KHÍ THẢI.TIẾT KIỆM ĐƯỢC TỪ 7% ĐẾN 10% LƯỢNG NHIÊN LIỆU TIÊU THỤ, TÙY THUỘC VÀO TỪNG LOẠI ĐỘNG CƠ.</p>\n<p>\n	<br /><strong>2. TÁC DỤNG CỦA BÌNH NHIÊN LIỆU THỨ 2 VÀ THỨ 3:</strong></p>\n<br /><p>\n	SAU KHI LÀM SẠCH ĐỘNG CƠ, MPG SẼ TẠO RA LỚP MÀNG CỰC MỎNG ĐỂ BẢO VỆ ĐỘNG CƠ.<br />\n	LỚP MÀNG MỎNG BẢO VỆ ĐỘNG CƠ CÓ TÁC DỤNG:</p>\n<p>\n	<br />\n	-  LÀM KÍN VÀ NHẴN BỀ MẶT PÍTTÔNG, XILANH</p>\n<br /><p>\n	-  TẠO ĐỘ TRƠN LÁNG TRONG BUỒNG ĐỐT, GIÚP ĐỘNG CƠ HOẠT ĐỘNG</p>\n<p>\n	<br />\n	-  GIẢM MA SÁT KHI ĐỘNG CƠ HOẠT ĐỘNG</p>\n<br /><p>\n	-  TẠO RA LỚP MÀNG CÁCH NHIỆT VÀ CÓ TÁC DỤNG NGĂN CẢN SỰ TRUYỀN NHIỆT XUỐNG PÍTTÔNG, XILANH. LÀM GIẢM NHIỆT ĐỘ TỪ BUỐNG ĐỐT RA NGOÀI NÊN ĐỘNG CƠ SẼ BỚT NÓNG VÀ LÀM CHO NHIÊN LIỆU Ở ĐÓ NGUỘI ĐI.</p>\n<p>\n	<br />\n	-  TĂNG HIỆU SUẤT ĐỐT CHÁY NHIÊN LIỆU, GIẢM THỜI GIAN ĐỐT CHÁY NHIÊN LIỆU.<br />\n	CÔNG SUẤT HOẠT ĐỘNG CỦA ĐỘNG CƠ SẼ TĂNG LÊN. GIẢM TIÊU HAO NHIÊN LIỆU<br />\n	GIẢM LƯỢNG KHÍ THẢI. KÉO DÀI TUỔI THỌ ĐỘNG CƠ.</p>\n<br /><p>\n	-  TIẾT KIỆM ĐƯỢC TỪ 12% - 18% LƯỢNG NHIÊN LIỆU TIÊU THỤ, TÙY VÀO LOẠI ĐỘNG CƠ.</p>\n<p>\n	<br /><strong>3. TÁC DỤNG CỦA BÌNH NHIÊN LIỆU THỪ 4 TRỞ LÊN:</strong></p>\n<br /><p>\n	-  SAU KHI TẠO RA LỚP MÀNG BẢO VỆ ĐỘNG CƠ, GIẢM NHIỆT LƯỢNG CỦA BUỒNG ĐỐT RA BÊN -  -  -  NGOÀI DO ĐÓ LƯỢNG TIÊU HAO NHIÊN LIỆU SẼ GIẢM.<br />\n	-  CÔNG SUẤT HOẠT ĐỘNG CỦA ĐỘNG CƠ TĂNG LÊN.<br />\n	-  TĂNG HIỆU QUẢ ĐỐT CHÁY NHIÊN LIỆU LÊN MỨC TỐI ĐA.</p>\n<p>\n	<img alt="" src="/public/userfiles/images/viptamnhinviet/images/Xang_A92_20800_m(1)(1).jpg" style="width:700px;height:426px;" /></p>\n<p>\n	<img alt="" src="/public/userfiles/images/viptamnhinviet/images/Dau_Diesel_20400m%20(1).jpg" style="width:700px;height:252px;" /></p>\n<p>\n	<strong>MỘT SỐ KẾT QUẢ THÔNG SỐ KỸ THUẬT<br />\n	VỀ VIỆC THỬ NGHIỆM SẢN PHẨM FFI</strong></p>\n<p style="text-align:center;">\n	<img alt="" src="/public/userfiles/images/viptamnhinviet/images/Thu_nghiem_683_1(1).jpg" style="width:367px;height:550px;" /></p>\n<p style="text-align:center;">\n	<img alt="" src="/public/userfiles/images/viptamnhinviet/images/Thu_nghiem_683_2.jpg" style="width:367px;height:550px;" /></p>\n<p style="text-align:center;">\n	<img alt="" src="/public/userfiles/images/viptamnhinviet/images/Thu_nghiem_683_3.jpg" style="width:367px;height:550px;" /></p>\n<p style="text-align:center;">\n	<img alt="" src="/public/userfiles/images/viptamnhinviet/images/Thu_nghiem_683_4.jpg" style="width:367px;height:550px;" /></p>\n<p style="text-align:center;">\n	<img alt="" src="/public/userfiles/images/viptamnhinviet/images/Thu_nghiem_683_5.jpg" style="width:367px;height:550px;" /></p>\n<p style="text-align:center;">\n	<img alt="" src="/public/userfiles/images/viptamnhinviet/images/Thu_nghiem_683_6.jpg" style="width:367px;height:550px;" /></p>\n<p>\n	 </p>\n<p>\n	 </p>\n<p style="text-align:center;">\n	<strong>LIÊN HỆ: CÔNG TY VIP TẦM NHÌN VIỆT</strong></p>\n<p style="text-align:center;">\n	<strong>EMAIL: viptamnhinviet@gmail.com</strong></p>\n<p style="text-align:center;">\n	<strong>WEB: VIPTAMNHINVIET.COM</strong></p>\n<p style="text-align:center;">\n	<strong>ĐT: 0618850747</strong></p>\n<p style="text-align:center;">\n	<strong>ĐỊA CHỈ: LÔ L4, ĐƯỜNG N1, KP1, P.BỬU LONG, BIÊN HÒA, ĐỒNG NAI.</strong></p>\n<p>\n	 </p>\n<p>\n	 </p>\n<p>\n	 </p>\n<p>\n	 </p>\n', NULL, 'cong-nghe-tiet-kiem-xang-dau-', 'SẢN PHẨM CÔNG NGHỆ TIẾT KIỆM XĂNG, DẦU\n\n\n\nGIẢM TIẾT KIỆM 15% - 25% NHIÊN LIỆU BẰNG CÔNG NGHỆ NANO CỦA MỸ\n\n\n\nĐÂY LÀ MỘT TRONG NHỮNG CÔNG NGHỆ NỔI TIẾNG ĐƯỢC NHẬP KHẨU TỪ MỸ VỀ VIỆT NAM.\n', 0, 24, 0, 0, 0, NULL, NULL, NULL, NULL, 1, 12, 'viptamnhinviet');

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
) ENGINE=InnoDB  DEFAULT CHARSET=utf8 AUTO_INCREMENT=27 ;

--
-- Dumping data for table `dos_module_products_cat`
--

INSERT INTO `dos_module_products_cat` (`cat_id`, `cat_parent_id`, `cat_title`, `cat_titleen`, `preview`, `previewen`, `tag`, `description`, `pic_full`, `pic_desc`, `cat_order`, `cat_extra1`, `cat_extra2`, `cat_enable`) VALUES
(11, 0, 'Danh mục', NULL, NULL, NULL, 'danh-muc', 'Mô tả danh mục', 'danh-muc.jpg', NULL, 1, NULL, NULL, 1),
(12, 0, ' VIP Tầm Nhìn Việt', NULL, NULL, NULL, 'vip-tam-nhin-viet', 'sản phẩm công ty', '', NULL, 2, NULL, NULL, 1),
(13, 0, ' Laptop - Máy Vi Tính', NULL, NULL, NULL, 'laptop-may-vi-tinh', 'sản phẩm liên kết', '', NULL, 3, NULL, NULL, 1),
(14, 0, 'Điện thoại -IPAD', NULL, NULL, NULL, 'dien-thoai-ipad', 'sản phẩm liên kết', '', NULL, 4, NULL, NULL, 1),
(15, 0, 'Ôtô - Xe máy', NULL, NULL, NULL, 'oto-xe-may', 'sản phẩm liên kết', '', NULL, 5, NULL, NULL, 1),
(16, 0, ' Điện tử - Điện lạnh', NULL, NULL, NULL, 'dien-tu-dien-lanh', 'thành viên', '', NULL, 6, NULL, NULL, 1),
(17, 0, 'Thời Trang, Trang Sức', NULL, NULL, NULL, 'thoi-trang-trang-suc', 'thành viên', '', NULL, 7, NULL, NULL, 1),
(18, 0, ' Mỹ Phẩm, Làm Đẹp', NULL, NULL, NULL, 'my-pham-lam-dep', 'thành viên', '', NULL, 8, NULL, NULL, 1),
(19, 0, ' Thực Phẩm, Đồ Uống', NULL, NULL, NULL, 'thuc-pham-do-uong', 'thành viên', '', NULL, 9, NULL, NULL, 1),
(20, 0, ' Y Tế, Dược Phẩm', NULL, NULL, NULL, 'y-te-duoc-pham', 'thành viên', '', NULL, 10, NULL, NULL, 1),
(21, 0, ' Nội Thất - Ngoại Thất', NULL, NULL, NULL, 'noi-that-ngoai-that', 'thành viên', '', NULL, 11, NULL, NULL, 1),
(22, 0, 'Bất Động Sản', NULL, NULL, NULL, 'bat-dong-san', 'thành viên', '', NULL, 12, NULL, NULL, 1),
(23, 0, ' Rao Vặt', NULL, NULL, NULL, 'rao-vat', 'thành viên', '', NULL, 13, NULL, NULL, 1),
(24, 0, 'Đồ Dùng Sinh Hoạt', NULL, NULL, NULL, 'do-dung-sinh-hoat', 'thành viên', '', NULL, 14, NULL, NULL, 1),
(25, 0, 'Sản Phẩm Khác', NULL, NULL, NULL, 'san-pham-khac', 'thành viên', '', NULL, 15, NULL, NULL, 1),
(26, 0, 'Sản Phẩm Hot', NULL, NULL, NULL, 'san-pham-hot', 'thành viên', '', NULL, 16, NULL, NULL, 1);

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
  `priority` int(11) DEFAULT NULL,
  `upgrade_date` datetime DEFAULT NULL,
  `dos_module_usernames_username` varchar(45) NOT NULL,
  PRIMARY KEY (`dos_module_usernames_username`)
) ENGINE=InnoDB DEFAULT CHARSET=utf8;

--
-- Dumping data for table `dos_module_tables`
--

INSERT INTO `dos_module_tables` (`left_child`, `right_child`, `four_child`, `priority`, `upgrade_date`, `dos_module_usernames_username`) VALUES
('', '', '', 0, '2012-03-21 01:16:15', 'admin'),
('admin5', 'admin4', '', 3, '2012-03-21 00:22:51', 'admin1'),
('', '', '', 0, NULL, 'admin10'),
('', '', '', 0, NULL, 'admin11'),
('', '', '', 0, NULL, 'admin12'),
('', '', '', 0, NULL, 'admin13'),
('', '', '', 0, NULL, 'admin14'),
('', '', '', 0, NULL, 'admin15'),
('', '', '', 0, '2012-03-21 01:32:45', 'admin2'),
('admin8', 'admin9', 'admin14|admin15', 1, '2012-03-21 01:07:52', 'admin3'),
('admin11', '', '', 0, NULL, 'admin4'),
('admin12', '', '', 0, NULL, 'admin5'),
('admin14', 'admin15', '', 2, '2012-03-21 01:44:24', 'admin6'),
('', '', '', 0, NULL, 'admin7'),
('', '', '', 0, NULL, 'admin8'),
('', '', '', 0, NULL, 'admin9'),
('', '', '', 0, '2012-03-21 00:22:51', 'viptamnhinviet');

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
  `balance` int(11) NOT NULL DEFAULT '0',
  `user_group` varchar(45) NOT NULL,
  `level` int(11) NOT NULL DEFAULT '0',
  `enable` tinyint(1) NOT NULL,
  PRIMARY KEY (`username`)
) ENGINE=InnoDB DEFAULT CHARSET=utf8;

--
-- Dumping data for table `dos_module_usernames`
--

INSERT INTO `dos_module_usernames` (`username`, `password`, `create_date`, `full_name`, `email`, `birthday`, `address`, `cmnd`, `phone`, `bank_number`, `bank_name`, `user_gioithieu`, `balance`, `user_group`, `level`, `enable`) VALUES
('admin', 'e10adc3949ba59abbe56e057f20f883e', '2012-03-20 17:16:02', '', 'aaa@aa.ccc', '1980-01-26', '', '2165454549', '', '', '', 'viptamnhinviet', 0, 'user', 0, 1),
('admin1', 'e10adc3949ba59abbe56e057f20f883e', '2012-03-20 17:16:53', '', 'aaa@aa.ccc', '1987-01-14', '', '2165454549', '', '', '', 'viptamnhinviet', 0, 'user', 0, 1),
('admin10', 'e10adc3949ba59abbe56e057f20f883e', '2012-03-20 18:16:05', '', 'aaa@aa.ccc', '1987-01-20', '', '2165454549', '', '', '', 'admin4', 0, 'user', 0, 1),
('admin11', 'e10adc3949ba59abbe56e057f20f883e', '2012-03-20 18:31:56', '', 'aaa@aa.ccc', '1987-01-27', '', '2165454549', '', '', '', 'admin4', 0, 'user', 0, 1),
('admin12', 'e10adc3949ba59abbe56e057f20f883e', '2012-03-20 18:32:13', '', 'aaa@aa.ccc', '1987-01-19', '', '2165454549', '', '', '', 'admin5', 0, 'user', 0, 1),
('admin13', 'e10adc3949ba59abbe56e057f20f883e', '2012-03-20 18:32:32', '', 'aaa@aa.ccc', '1987-01-20', '', '2165454549', '', '', '', 'admin5', 0, 'user', 0, 1),
('admin14', 'e10adc3949ba59abbe56e057f20f883e', '2012-03-20 18:43:59', '', 'aaa@aa.ccc', '1987-01-19', '', '2165454549', '', '', '', 'admin6', 0, 'user', 0, 1),
('admin15', 'e10adc3949ba59abbe56e057f20f883e', '2012-03-20 18:44:10', '', 'aaa@aa.ccc', '1987-01-22', '', '2165454549', '', '', '', 'admin6', 0, 'user', 0, 1),
('admin2', 'e10adc3949ba59abbe56e057f20f883e', '2012-03-20 17:19:00', '', 'aaa@aa.ccc', '1987-01-20', '', '2165454549', '', '', '', 'admin', 0, 'user', 0, 1),
('admin3', 'e10adc3949ba59abbe56e057f20f883e', '2012-03-20 17:19:15', '', 'aaa@aa.ccc', '1987-01-21', '', '2165454549', '', '', '', 'admin', 0, 'user', 0, 1),
('admin4', 'e10adc3949ba59abbe56e057f20f883e', '2012-03-20 17:21:08', '', 'aaa@aa.ccc', '1987-01-20', '', '2165454549', '', '', '', 'admin1', 0, 'user', 0, 1),
('admin5', 'e10adc3949ba59abbe56e057f20f883e', '2012-03-20 17:21:37', '', 'aaa@aa.ccc', '1987-01-07', '', '2165454549', '', '', '', 'admin1', 0, 'user', 0, 1),
('admin6', 'e10adc3949ba59abbe56e057f20f883e', '2012-03-20 17:27:11', '', 'aaa@aa.ccc', '1987-01-14', '', '2165454549', '', '', '', 'admin2', 0, 'user', 0, 1),
('admin7', 'e10adc3949ba59abbe56e057f20f883e', '2012-03-20 17:31:31', '', 'aaa@aa.ccc', '1987-01-21', '', '2165454549', '', '', '', 'admin2', 0, 'user', 0, 1),
('admin8', 'e10adc3949ba59abbe56e057f20f883e', '2012-03-20 18:04:08', '', 'aaa@aa.ccc', '1987-01-26', '', '2165454549', '', '', '', 'admin3', 0, 'user', 0, 1),
('admin9', 'e10adc3949ba59abbe56e057f20f883e', '2012-03-20 18:07:46', '', 'aaa@aa.ccc', '1987-01-19', '', '2165454549', '', '', '', 'admin3', 0, 'user', 0, 1),
('viptamnhinviet', 'e10adc3949ba59abbe56e057f20f883e', '2012-03-04 14:30:34', 'Viptamnhinviet', 'aaa@aa.ccc', '1980-01-01', '', '2165454549', '12316546754', 'ACB', '', '', 0, 'administrator', 1, 1);

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
