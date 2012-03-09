-- phpMyAdmin SQL Dump
-- version 3.4.5
-- http://www.phpmyadmin.net
--
-- Host: localhost
-- Generation Time: Mar 09, 2012 at 05:23 AM
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
('phone', 'Điện thoại: 0618 850 747', NULL, 0),
('products', 'Sản phẩm', 'Products', 0),
('services', 'Dịch vụ', 'Services', 0),
('supports', 'Hỗ trợ trực tuyến', 'Online support', 0);

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
('products', 'products/cats|products', 'Danh mục|Danh sách', 3, 1),
('services', 'services', 'Danh sách', 4, 1),
('supports', 'supports', 'Danh sách', 6, 0);

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
('products', 'viptamnhinviet'),
('services', 'viptamnhinviet'),
('supports', 'viptamnhinviet');

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
(3, 'Tiêu đề giới thiệu', NULL, '<p>\r\n	Chi tiết Tiêu đề giới thiệuChi tiết Tiêu đề giới thiệuChi tiết Tiêu đề giới thiệuChi tiết Tiêu đề giới thiệuChi tiết Tiêu đề giới thiệuChi tiết Tiêu đề giới thiệuChi tiết Tiêu đề giới thiệuChi tiết Tiêu đề giới thiệuChi tiết Tiêu đề giới thiệuChi tiết Tiêu đề giới thiệuChi tiết Tiêu đề giới thiệuChi tiết Tiêu đề giới thiệuChi tiết Tiêu đề giới thiệu</p>\r\n<p>\r\n	Chi tiết Tiêu đề giới thiệuChi tiết Tiêu đề giới thiệuChi tiết Tiêu đề giới thiệuChi tiết Tiêu đề giới thiệuChi tiết Tiêu đề giới thiệuChi tiết Tiêu đề giới thiệuChi tiết Tiêu đề giới thiệuChi tiết Tiêu đề giới thiệuChi tiết Tiêu đề giới thiệuChi tiết Tiêu đề giới thiệuChi tiết Tiêu đề giới thiệuChi tiết Tiêu đề giới thiệuChi tiết Tiêu đề giới thiệuChi tiết Tiêu đề giới thiệuChi tiết Tiêu đề giới thiệuChi tiết Tiêu đề giới thiệuChi tiết Tiêu đề giới thiệuChi tiết Tiêu đề giới thiệuChi tiết Tiêu đề giới thiệuChi tiết Tiêu đề giới thiệuChi tiết Tiêu đề giới thiệuChi tiết Tiêu đề giới thiệuChi tiết Tiêu đề giới thiệuChi tiết Tiêu đề giới thiệuChi tiết Tiêu đề giới thiệuChi tiết Tiêu đề giới thiệuChi tiết Tiêu đề giới thiệu</p>\r\n<p>\r\n	Chi tiết Tiêu đề giới thiệuChi tiết Tiêu đề giới thiệuChi tiết Tiêu đề giới thiệuChi tiết Tiêu đề giới thiệuChi tiết Tiêu đề giới thiệu</p>\r\n', NULL, 99, '2012-03-07 03:25:14', 2, 0, NULL, NULL, 'tieu-de-gioi-thieu', 'Mô tả', 1);

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
) ENGINE=InnoDB  DEFAULT CHARSET=utf8 AUTO_INCREMENT=2 ;

--
-- Dumping data for table `dos_module_advs`
--

INSERT INTO `dos_module_advs` (`record_id`, `title`, `titleen`, `pic_thumb`, `url`, `create_date`, `start_date`, `end_date`, `hits`, `record_order`, `position`, `type`, `enable`) VALUES
(1, 'Tieu de', NULL, 'tieu-de.gif', 'http://grouplaptrinh.com', '2012-03-07 15:20:30', '2012-03-06 17:00:00', '2012-03-09 17:00:00', 0, 1, 'top', '_bank', 1);

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
) ENGINE=InnoDB  DEFAULT CHARSET=utf8 AUTO_INCREMENT=5 ;

--
-- Dumping data for table `dos_module_banners`
--

INSERT INTO `dos_module_banners` (`banner_id`, `banner_date`, `banner_name`, `banner_url`, `banner_link`, `banner_order`, `banner_type`, `position`, `enable`) VALUES
(2, '2012-03-07 14:38:03', 'Banner', 'banner.jpg', 'http://hoiit.com', 1, 'banners', 'default', 1),
(3, '2012-03-07 14:38:15', 'Banner 2', 'banner-2.jpg', 'http://hoiit.com', 2, 'banners', 'default', 1),
(4, '2012-03-07 14:38:50', 'Banner 3', 'banner-3.jpg', 'http://hoiit.com', 3, 'banners', 'about', 1);

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
-- Table structure for table `dos_module_pcounter_save`
--

CREATE TABLE IF NOT EXISTS `dos_module_pcounter_save` (
  `save_name` varchar(10) NOT NULL,
  `save_value` int(11) NOT NULL
) ENGINE=InnoDB DEFAULT CHARSET=utf8;

-- --------------------------------------------------------

--
-- Table structure for table `dos_module_pcounter_users`
--

CREATE TABLE IF NOT EXISTS `dos_module_pcounter_users` (
  `user_ip` varchar(39) NOT NULL,
  `user_time` int(11) NOT NULL
) ENGINE=InnoDB DEFAULT CHARSET=utf8;

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
  `unit` int(11) DEFAULT NULL,
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
) ENGINE=InnoDB  DEFAULT CHARSET=utf8 AUTO_INCREMENT=7 ;

--
-- Dumping data for table `dos_module_products`
--

INSERT INTO `dos_module_products` (`record_id`, `title`, `titleen`, `postdate`, `pic_thumb`, `pic_full`, `pic_desc`, `preview`, `previewen`, `detail`, `detailen`, `tag`, `description`, `hits`, `record_order`, `unit`, `hot`, `specials`, `extra_field1`, `extra_field2`, `extra_field3`, `extra_field4`, `enable`, `dos_module_item_cat_cat_id`, `dos_module_usernames_username`) VALUES
(5, 'asdasdasdsaas asdas', NULL, '2012-03-08 09:46:11', 'asdasdasdsaas-asdas-thumb-3.jpg', 'asdasdasdsaas-asdas.jpg', NULL, NULL, NULL, '<p>\r\n	dasda dsasdas</p>\r\n', NULL, 'asdasdasdsaas-asdas', 'asd dasdas asd', 0, 1, NULL, 1, 0, NULL, NULL, NULL, NULL, 1, 10, 'viptamnhinviet'),
(6, 'San pham', NULL, '2012-03-09 00:24:04', 'san-pham-thumb-4.jpg', 'san-pham-2.jpg', NULL, NULL, NULL, '<p>\r\n	Chi itet</p>\r\n', NULL, 'san-pham', 'Mô tả', 0, 2, NULL, 0, NULL, NULL, NULL, NULL, NULL, 1, 10, 'viptamnhinviet');

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
) ENGINE=InnoDB  DEFAULT CHARSET=utf8 AUTO_INCREMENT=11 ;

--
-- Dumping data for table `dos_module_products_cat`
--

INSERT INTO `dos_module_products_cat` (`cat_id`, `cat_parent_id`, `cat_title`, `cat_titleen`, `preview`, `previewen`, `tag`, `description`, `pic_full`, `pic_desc`, `cat_order`, `cat_extra1`, `cat_extra2`, `cat_enable`) VALUES
(4, 7, 'Danh mục 1', NULL, NULL, NULL, 'danh-muc-1', 'Danh muc 1', 'danh-muc-1.jpg', NULL, 3, NULL, NULL, 1),
(5, 0, 'Danh mục 2', NULL, NULL, NULL, 'danh-muc-2', 'Danh mục 2', 'danh-muc-2.jpg', NULL, 2, NULL, NULL, 1),
(6, 0, 'Danh mục 3', NULL, NULL, NULL, 'danh-muc-3', 'Danh mục 3', 'danh-muc-3.jpg', NULL, 1, NULL, NULL, 1),
(7, 0, 'Danh mục 4', NULL, NULL, NULL, 'danh-muc-4', 'Danh mục 4', 'danh-muc-4.jpg', NULL, 4, NULL, NULL, 1),
(8, 0, 'asdasdasdas', NULL, NULL, NULL, 'asdasdasdas', 'asdasdsa', 'asdasdasdas.png', NULL, 5, NULL, NULL, 1),
(9, 0, 'asdasdasda', NULL, NULL, NULL, 'asdasdasda', 'asdasdasdsa', 'asdasdasda.png', NULL, 6, NULL, NULL, 1),
(10, 0, 'Danh mục', NULL, NULL, NULL, 'danh-muc', 'afasfasf', 'dasfa.png', NULL, 7, NULL, NULL, 1);

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
('grouplaptrinh', 'b7a659e0c28c88b3ee01adf805fc228f', '2012-02-25 08:57:48', NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, '', '0', 'administrator', 0, 1),
('viptamnhinviet', 'e10adc3949ba59abbe56e057f20f883e', '2012-03-04 14:30:34', 'Viptamnhinviet', 'aaa@aa.ccc', '1980-01-01', '', '2165454549', '12316546754', 'ACB', '', 'grouplaptrinh', '0', 'user', 0, 1);

--
-- Constraints for dumped tables
--

--
-- Constraints for table `dos_modules_has_dos_usernames`
--
ALTER TABLE `dos_modules_has_dos_usernames`
  ADD CONSTRAINT `fk_dos_modules_has_dos_usernames_dos_modules1` FOREIGN KEY (`dos_modules_module_id`) REFERENCES `dos_modules` (`module_id`) ON DELETE NO ACTION ON UPDATE NO ACTION,
  ADD CONSTRAINT `fk_dos_modules_has_dos_usernames_dos_usernames1` FOREIGN KEY (`dos_usernames_username`) REFERENCES `dos_module_usernames` (`username`) ON DELETE NO ACTION ON UPDATE NO ACTION;

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

/*!40101 SET CHARACTER_SET_CLIENT=@OLD_CHARACTER_SET_CLIENT */;
/*!40101 SET CHARACTER_SET_RESULTS=@OLD_CHARACTER_SET_RESULTS */;
/*!40101 SET COLLATION_CONNECTION=@OLD_COLLATION_CONNECTION */;
