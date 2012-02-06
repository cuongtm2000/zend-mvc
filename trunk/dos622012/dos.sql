-- phpMyAdmin SQL Dump
-- version 3.4.5
-- http://www.phpmyadmin.net
--
-- Host: localhost
-- Generation Time: Feb 06, 2012 at 11:45 AM
-- Server version: 5.5.16
-- PHP Version: 5.3.8

SET SQL_MODE="NO_AUTO_VALUE_ON_ZERO";
SET time_zone = "+00:00";


/*!40101 SET @OLD_CHARACTER_SET_CLIENT=@@CHARACTER_SET_CLIENT */;
/*!40101 SET @OLD_CHARACTER_SET_RESULTS=@@CHARACTER_SET_RESULTS */;
/*!40101 SET @OLD_COLLATION_CONNECTION=@@COLLATION_CONNECTION */;
/*!40101 SET NAMES utf8 */;

--
-- Database: `dos`
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
  PRIMARY KEY (`config_name`,`dos_templates_template`),
  KEY `fk_dos_configs_dos_templates1` (`dos_templates_template`)
) ENGINE=InnoDB DEFAULT CHARSET=utf8;

--
-- Dumping data for table `dos_configs`
--

INSERT INTO `dos_configs` (`config_name`, `config_value`, `config_desc`, `dos_templates_template`) VALUES
('advs_height', 200, NULL, '111120'),
('advs_width', 224, NULL, '111120'),
('banner_height', 320, NULL, '060212'),
('banner_height', 297, NULL, '111120'),
('banner_width', 980, NULL, '060212'),
('banner_width', 709, NULL, '111120'),
('logo_height', 65, NULL, '111120'),
('logo_width', 310, NULL, '111120'),
('products_height', 650, NULL, '111120'),
('products_height_thumb', 167, NULL, '111120'),
('products_width', 700, NULL, '111120'),
('products_width_thumb', 167, NULL, '111120'),
('product_cats_height', 150, NULL, '111120'),
('product_cats_width', 169, NULL, '111120'),
('services_height', 110, NULL, '111120'),
('services_width', 192, NULL, '111120');

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
('actions', 'Thao tác', 'Actions', 1),
('add_new', 'Thêm mới', 'Add new', 1),
('add_row', 'Thêm dòng', 'Add row', 1),
('advs', 'Quảng cáo', 'Adv', 0),
('banner', 'Logo &amp; Banner', 'Logo &amp; Banner', 0),
('cancel', 'Hủy bỏ', 'Cancel', 1),
('contact', 'Liên hệ', 'Contact', 0),
('content', 'Chi tiết', 'Content', 1),
('contenten', 'Chi tiết En', 'Content En', 1),
('counter', 'Thống kê truy cập', 'Online counter', 0),
('create_date', 'Ngày tạo', 'Create date', 1),
('default', 'Trang chủ', 'Home page', 0),
('delete', 'Xóa', 'Delete', 1),
('edit', 'Chỉnh sửa', 'Edit', 1),
('hidden', 'Ẩn', 'Hidden', 1),
('hot', 'Nổi bật', 'Hot', 1),
('normal', 'Bình thường', 'Normal', 1),
('no_record', 'Không tồn tại mẫu tin', 'No record', 0),
('order', 'Thứ tự', 'Order', 1),
('products', 'Sản phẩm', 'Products', 0),
('services', 'Dịch vụ', 'Services', 0),
('show', 'Hiển thị', 'Show', 1),
('sort', 'Sắp xếp', 'Sort', 1),
('supports', 'Hỗ trợ trực tuyến', 'Online support', 0),
('synchronous', 'Đồng bộ', 'Synchronous', 1),
('tag', 'liên kết', 'Link', 1),
('title', 'Tiêu đề', 'Title', 1),
('titleen', 'Tiêu đề EN', 'Title EN', 1),
('update', 'Cập nhật', 'Update', 1),
('views', 'Lượt xem', 'Views', 1);

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
('banner', 'banner', 'Danh sách', 5, 0),
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
('about', 'bao'),
('about', 'dos'),
('about', 'mvc'),
('about', 'root'),
('about', 'test'),
('about', 'thanhan'),
('about', 'thanhansoft'),
('about', 'vanhong'),
('advs', 'bao'),
('advs', 'dos'),
('advs', 'mvc'),
('advs', 'root'),
('advs', 'test'),
('advs', 'thanhan'),
('advs', 'thanhansoft'),
('advs', 'vanhong'),
('banner', 'bao'),
('banner', 'dos'),
('banner', 'mvc'),
('banner', 'root'),
('banner', 'test'),
('banner', 'thanhan'),
('banner', 'thanhansoft'),
('banner', 'vanhong'),
('contact', 'bao'),
('contact', 'dos'),
('contact', 'mvc'),
('contact', 'root'),
('contact', 'test'),
('contact', 'thanhan'),
('contact', 'thanhansoft'),
('contact', 'vanhong'),
('products', 'bao'),
('products', 'dos'),
('products', 'mvc'),
('products', 'root'),
('products', 'test'),
('products', 'thanhan'),
('products', 'thanhansoft'),
('products', 'vanhong'),
('services', 'bao'),
('services', 'dos'),
('services', 'mvc'),
('services', 'root'),
('services', 'test'),
('services', 'thanhan'),
('services', 'thanhansoft'),
('services', 'vanhong'),
('supports', 'dos'),
('supports', 'mvc'),
('supports', 'root'),
('supports', 'test'),
('supports', 'thanhan'),
('supports', 'thanhansoft'),
('supports', 'vanhong');

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
  `dos_usernames_username` varchar(45) NOT NULL,
  PRIMARY KEY (`record_id`),
  KEY `fk_dos_module_abouts_dos_usernames1` (`dos_usernames_username`),
  KEY `tag` (`tag`)
) ENGINE=InnoDB  DEFAULT CHARSET=utf8 AUTO_INCREMENT=135 ;

--
-- Dumping data for table `dos_module_abouts`
--

INSERT INTO `dos_module_abouts` (`record_id`, `title`, `titleen`, `content`, `contenten`, `hit`, `created`, `record_order`, `hot`, `extra_field1`, `extra_field2`, `tag`, `description`, `activated`, `dos_usernames_username`) VALUES
(119, 'tiêu', NULL, '<p>\r\n	tiêu đề</p>\r\n', NULL, 45, '2011-12-19 15:00:29', 1, 0, NULL, NULL, 'tieu', 'chi iết', 1, 'test'),
(120, 'tiêu đềsas', 'title', '<p>\r\n	tieu deas</p>\r\n', '<p>\r\n	chi testsetsetes</p>\r\n', 5, '2011-12-23 14:50:21', 2, 0, NULL, NULL, 'tieu-desas', 'testsetestse', 1, 'test'),
(121, 'home', '', '<p>\r\n	You have no items in your shopping cart.You have no items in your shopping cart.You have no items in your shopping cart.You have no items in your shopping cart.You have no items in your shopping cart.You have no items in your shopping cart.You have no items in your shopping cart.</p>\r\n', '<p>\r\n	asass</p>\r\n', 267, '2012-01-07 03:31:48', 3, 1, NULL, NULL, 'home', 'asaassasa', 1, 'test'),
(122, 'adasdasd', 'dasdas', '<p>\r\n	sdasdsa</p>\r\n', '', 0, '2012-01-23 02:32:56', 4, 0, NULL, NULL, 'adasdasd', 'asdsad', 1, 'test'),
(123, 'adasd', '', '<p>\r\n	sdasd</p>\r\n', '', 0, '2012-01-23 02:33:02', 5, 0, NULL, NULL, 'adasd', 'asdasd', 1, 'test'),
(124, 'asdasdas', '', '<p>\r\n	asdasdasd</p>\r\n', '', 0, '2012-01-23 02:33:07', 6, 0, NULL, NULL, 'asdasdas', 'asdasd', 1, 'test'),
(125, 'adadsa', '', '<p>\r\n	adasds</p>\r\n', '', 0, '2012-01-23 02:33:13', 7, 0, NULL, NULL, 'adadsa', 'asdasd', 1, 'test'),
(126, 'asdasd', '', '<p>\r\n	asdasds</p>\r\n', '', 0, '2012-01-23 02:33:18', 8, 0, NULL, NULL, 'asdasd', 'asdasd', 1, 'test'),
(127, 'dasdasdas', '', '<p>\r\n	asd</p>\r\n', '<p>\r\n	asdasd</p>\r\n', 0, '2012-01-23 02:33:25', 9, 0, NULL, NULL, 'dasdasdas', 'asdasd', 1, 'test'),
(128, 'adasd', '', '<p>\r\n	dasdasds</p>\r\n', '<p>\r\n	asdas</p>\r\n', 0, '2012-01-23 02:33:32', 10, 0, NULL, NULL, 'adasd-2', 'dasdsa', 1, 'test'),
(129, 'asdadas', '', '<p>\r\n	adas</p>\r\n', '', 0, '2012-01-23 02:33:38', 11, 0, NULL, NULL, 'asdadas', 'asdsad', 1, 'test'),
(130, 'asdasd', '', '<p>\r\n	asdasd</p>\r\n', '', 0, '2012-01-23 02:33:44', 12, 0, NULL, NULL, 'asdasd-2', 'asd', 1, 'test'),
(131, 'asdasd', '', '<p>\r\n	asdas</p>\r\n', '', 0, '2012-01-23 02:33:51', 13, 0, NULL, NULL, 'asdasd-2', 'asdasd', 1, 'test'),
(132, 'asda', '', '<p>\r\n	adsa</p>\r\n', '', 0, '2012-01-23 02:33:57', 14, 0, NULL, NULL, 'asda', 'asda', 1, 'test'),
(133, 'asdas', '', '<p>\r\n	asdasd</p>\r\n', '', 0, '2012-01-23 02:34:04', 15, 0, NULL, NULL, 'asdas', 'sd', 1, 'test'),
(134, 'asdas', '', '<p>\r\n	asda</p>\r\n', '', 39, '2012-01-23 02:34:10', 16, 0, NULL, NULL, 'asdas-2', 'sd', 1, 'test');

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
  `dos_usernames_username` varchar(45) NOT NULL,
  PRIMARY KEY (`record_id`),
  KEY `fk_dos_module_advs_dos_usernames1` (`dos_usernames_username`)
) ENGINE=InnoDB  DEFAULT CHARSET=utf8 AUTO_INCREMENT=19 ;

--
-- Dumping data for table `dos_module_advs`
--

INSERT INTO `dos_module_advs` (`record_id`, `title`, `titleen`, `pic_thumb`, `url`, `create_date`, `start_date`, `end_date`, `hits`, `record_order`, `position`, `type`, `enable`, `dos_usernames_username`) VALUES
(17, 'Quảng cáo', NULL, 'anti-virus-software.jpg', 'http://grouplaptrinh.com', '2012-01-06 03:50:48', '2012-01-05 17:00:00', '2012-01-13 17:00:00', 0, 1, 'left', '_bank', 1, 'test'),
(18, '12312', NULL, 'logo.jpg', 'http://grouplaptrinh.com', '2012-01-06 04:10:06', '2012-01-05 17:00:00', '2012-01-30 17:00:00', 0, 2, 'left', '_bank', 1, 'test');

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
  `dos_usernames_username` varchar(45) NOT NULL,
  PRIMARY KEY (`banner_id`),
  KEY `fk_dos_module_banners_dos_usernames1` (`dos_usernames_username`)
) ENGINE=InnoDB  DEFAULT CHARSET=utf8 AUTO_INCREMENT=10 ;

--
-- Dumping data for table `dos_module_banners`
--

INSERT INTO `dos_module_banners` (`banner_id`, `banner_date`, `banner_name`, `banner_url`, `banner_link`, `banner_order`, `banner_type`, `position`, `enable`, `dos_usernames_username`) VALUES
(1, '2012-01-10 09:56:42', 'Banner cafe tự động', 'banner-cafe-tu-dong.jpg', 'http://grouplaptrinh.com', 1, 'banner', 'default', 1, 'test'),
(2, '2012-01-10 09:57:28', 'Banner cafe tự nhập', 'tu-nhap.jpg', 'http://grouplaptrinh.com', 2, 'banner', 'default', 1, 'test'),
(4, '2012-02-01 04:08:53', 'Logo', 'logo.png', '', 1, 'logo', 'default', 1, 'thanhansoft'),
(5, '2012-02-01 04:45:20', 'Banner', 'banner.jpg', '', 1, 'banner', 'default', 1, 'root'),
(6, '2012-02-06 03:31:50', 'Banner', 'banner.jpg', 'http://grouplaptrinh.com', 1, 'banner', 'default', 1, 'mvc'),
(7, '2012-02-06 03:32:08', 'Banner 1', 'banner-1.jpg', '', 2, 'banner', 'default', 1, 'mvc'),
(8, '2012-02-06 03:32:15', 'banner 2', 'banner-2.jpg', '', 3, 'banner', 'default', 1, 'mvc'),
(9, '2012-02-06 03:32:27', 'Banner 3', 'banner-3.jpg', '', 4, 'banner', 'default', 1, 'mvc');

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
  `dos_usernames_username` varchar(45) NOT NULL,
  PRIMARY KEY (`record_id`),
  KEY `fk_dos_module_contacts_dos_usernames1` (`dos_usernames_username`)
) ENGINE=InnoDB  DEFAULT CHARSET=utf8 AUTO_INCREMENT=3 ;

--
-- Dumping data for table `dos_module_contacts`
--

INSERT INTO `dos_module_contacts` (`record_id`, `title`, `titleen`, `content`, `contenten`, `create_date`, `record_order`, `hit`, `hot`, `tag`, `description`, `enable`, `dos_usernames_username`) VALUES
(1, 'Tieu de', '', '<p>\r\n	Chi tiet</p>\r\n', '', '2012-02-02 02:30:54', 1, 0, 1, '', 'test', '1', 'test'),
(2, 'Tieu đề nguyend', 'Title', '<p>\r\n	Chi tiet</p>\r\n', '<p>\r\n	Chi tiet</p>\r\n', '2012-02-02 02:32:02', 2, 0, 0, '', 'test', '1', 'test');

-- --------------------------------------------------------

--
-- Table structure for table `dos_module_menus`
--

CREATE TABLE IF NOT EXISTS `dos_module_menus` (
  `menu` varchar(50) NOT NULL,
  `menuen` varchar(50) DEFAULT NULL,
  `url` varchar(100) DEFAULT NULL,
  `target` varchar(20) DEFAULT NULL,
  `position` tinyint(4) DEFAULT NULL,
  `dos_usernames_username` varchar(45) NOT NULL,
  KEY `fk_dos_module_menus_dos_usernames1` (`dos_usernames_username`)
) ENGINE=InnoDB DEFAULT CHARSET=utf8;

--
-- Dumping data for table `dos_module_menus`
--

INSERT INTO `dos_module_menus` (`menu`, `menuen`, `url`, `target`, `position`, `dos_usernames_username`) VALUES
('Trang chủ', NULL, 'default', NULL, 1, 'thanhansoft'),
('Giới thiệu', NULL, 'about', NULL, 2, 'thanhansoft'),
('Dịch vụ', NULL, 'services', NULL, 3, 'thanhansoft'),
('Sản phẩm', NULL, 'products', NULL, 4, 'thanhansoft'),
('Trang chủ', NULL, 'default', NULL, 1, 'root'),
('Giới thiệu', NULL, 'about', NULL, 2, 'root'),
('Sản phẩm', NULL, 'products', NULL, 3, 'root'),
('Dịch vụ', NULL, 'services', NULL, 4, 'root'),
('Liên hệ', NULL, 'contact', NULL, 5, 'root'),
('Trang chủ', NULL, 'default', NULL, 1, 'bao'),
('Giới thiệu', NULL, 'about', NULL, 2, 'bao'),
('Sản phẩm', NULL, 'products', NULL, 3, 'bao'),
('Dịch vụ', NULL, 'services', NULL, 4, 'bao'),
('Liên hệ', NULL, 'contact', NULL, 5, 'bao'),
('Trang chủ', NULL, 'default', NULL, 1, 'vanhong'),
('Giới thiệu', NULL, 'about', NULL, 2, 'vanhong'),
('Sản phẩm', NULL, 'products', NULL, 3, 'vanhong'),
('Dịch vụ', NULL, 'services', NULL, 4, 'vanhong'),
('Liên hệ', NULL, 'contact', NULL, 5, 'vanhong'),
('Trang chủ', 'Home page', 'default', '', 1, 'test'),
('Giới thiệu', 'About us', 'about', '', 2, 'test'),
('Sản phẩm', 'Products', 'products', '', 3, 'test'),
('Dịch vụ', 'Services', 'services', '', 4, 'test'),
('Liên hệ', 'Contact', 'contact', '', 5, 'test'),
('Trang chủ', NULL, 'default', NULL, 1, 'thanhan'),
('Giới thiệu', NULL, 'about', NULL, 2, 'thanhan'),
('Sản phẩm', NULL, 'products', NULL, 3, 'thanhan'),
('Dịch vụ', NULL, 'services', NULL, 4, 'thanhan'),
('Liên hệ', NULL, 'contact', NULL, 5, 'thanhan'),
('Trang chủ', NULL, 'default', NULL, 1, 'mvc'),
('Giới thiệu', NULL, 'about', NULL, 2, 'mvc'),
('Sản phẩm', NULL, 'products', NULL, 3, 'mvc'),
('Dịch vụ', NULL, 'services', NULL, 4, 'mvc'),
('Liên hệ', NULL, 'contact', NULL, 5, 'mvc'),
('Trang chủ', NULL, 'default', NULL, 1, 'dos'),
('Giới thiệu', NULL, 'about', NULL, 2, 'dos'),
('Sản phẩm', NULL, 'products', NULL, 3, 'dos'),
('Dịch vụ', NULL, 'services', NULL, 4, 'dos'),
('Liên hệ', NULL, 'contact', NULL, 5, 'dos');

-- --------------------------------------------------------

--
-- Table structure for table `dos_module_pcounter_save`
--

CREATE TABLE IF NOT EXISTS `dos_module_pcounter_save` (
  `save_name` varchar(10) NOT NULL,
  `save_value` int(11) NOT NULL,
  `dos_usernames_username` varchar(45) NOT NULL,
  KEY `fk_dos_module_pcounter_save_dos_usernames1` (`dos_usernames_username`)
) ENGINE=InnoDB DEFAULT CHARSET=utf8;

--
-- Dumping data for table `dos_module_pcounter_save`
--

INSERT INTO `dos_module_pcounter_save` (`save_name`, `save_value`, `dos_usernames_username`) VALUES
('day_time', 2455964, 'test'),
('max_count', 1, 'test'),
('counter', 30, 'test'),
('yesterday', 0, 'test'),
('day_time', 2455959, 'thanhansoft'),
('max_count', 0, 'thanhansoft'),
('counter', 0, 'thanhansoft'),
('yesterday', 0, 'thanhansoft'),
('day_time', 2455959, 'bao'),
('max_count', 0, 'bao'),
('counter', 0, 'bao'),
('yesterday', 0, 'bao'),
('day_time', 2455959, 'root'),
('max_count', 0, 'root'),
('counter', 0, 'root'),
('yesterday', 0, 'root');

-- --------------------------------------------------------

--
-- Table structure for table `dos_module_pcounter_users`
--

CREATE TABLE IF NOT EXISTS `dos_module_pcounter_users` (
  `user_ip` varchar(39) NOT NULL,
  `user_time` int(11) NOT NULL,
  `dos_usernames_username` varchar(45) NOT NULL,
  KEY `fk_dos_module_pcounter_users_dos_usernames1` (`dos_usernames_username`)
) ENGINE=InnoDB DEFAULT CHARSET=utf8;

--
-- Dumping data for table `dos_module_pcounter_users`
--

INSERT INTO `dos_module_pcounter_users` (`user_ip`, `user_time`, `dos_usernames_username`) VALUES
('''127.0.0.1''', 1328499917, 'test');

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
  `specials` tinyint(1) DEFAULT NULL,
  `extra_field1` varchar(100) DEFAULT NULL,
  `extra_field2` varchar(100) DEFAULT NULL,
  `extra_field3` varchar(100) DEFAULT NULL,
  `extra_field4` varchar(100) DEFAULT NULL,
  `enable` tinyint(1) NOT NULL DEFAULT '1',
  `dos_module_product_cats_cat_id` int(11) NOT NULL,
  PRIMARY KEY (`record_id`),
  KEY `fk_dos_module_products_dos_module_product_cats1` (`dos_module_product_cats_cat_id`)
) ENGINE=InnoDB  DEFAULT CHARSET=utf8 AUTO_INCREMENT=2 ;

--
-- Dumping data for table `dos_module_products`
--

INSERT INTO `dos_module_products` (`record_id`, `title`, `titleen`, `postdate`, `pic_thumb`, `pic_full`, `pic_desc`, `preview`, `previewen`, `detail`, `detailen`, `tag`, `description`, `hits`, `record_order`, `unit`, `hot`, `specials`, `extra_field1`, `extra_field2`, `extra_field3`, `extra_field4`, `enable`, `dos_module_product_cats_cat_id`) VALUES
(1, 'Sản phẩm', NULL, '2012-01-07 13:57:05', 'c1.jpg', 'c1-pr.jpg', 'c2-pr.jpg|c3-pr.jpg|c4-pr.jpg|c5-pr.jpg', NULL, NULL, '<p>\r\n	chi tiết</p>\r\n', NULL, 'san-pham', 'mo ta', 0, 1, NULL, 0, NULL, NULL, NULL, NULL, NULL, 1, 29);

-- --------------------------------------------------------

--
-- Table structure for table `dos_module_product_cats`
--

CREATE TABLE IF NOT EXISTS `dos_module_product_cats` (
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
  `dos_usernames_username` varchar(45) NOT NULL,
  PRIMARY KEY (`cat_id`),
  KEY `fk_dos_module_product_cats_dos_usernames1` (`dos_usernames_username`)
) ENGINE=InnoDB  DEFAULT CHARSET=utf8 AUTO_INCREMENT=32 ;

--
-- Dumping data for table `dos_module_product_cats`
--

INSERT INTO `dos_module_product_cats` (`cat_id`, `cat_parent_id`, `cat_title`, `cat_titleen`, `preview`, `previewen`, `tag`, `description`, `pic_full`, `pic_desc`, `cat_order`, `cat_extra1`, `cat_extra2`, `cat_enable`, `dos_usernames_username`) VALUES
(27, 29, 'Con 3', NULL, NULL, NULL, 'con-3', 'test', 'outsourced-software-testing-services.jpg', NULL, 5, NULL, NULL, 1, 'test'),
(28, 0, 'Danh mục', NULL, NULL, NULL, 'danh-muc', 'danh mục', '', NULL, 6, NULL, NULL, 1, 'test'),
(29, 0, 'Danh mục 2', NULL, NULL, NULL, 'danh-muc-2', 'test', '', NULL, 7, NULL, NULL, 1, 'test'),
(30, 29, 'Con 2', NULL, NULL, NULL, 'con-2', 'test', 'logo.jpg', NULL, 8, NULL, NULL, 1, 'test'),
(31, 28, 'asdasd', NULL, NULL, NULL, 'asdasd', 'test', 'anti-virus-software.jpg', NULL, 9, NULL, NULL, 1, 'test');

-- --------------------------------------------------------

--
-- Table structure for table `dos_module_services`
--

CREATE TABLE IF NOT EXISTS `dos_module_services` (
  `record_id` int(11) NOT NULL AUTO_INCREMENT,
  `title` varchar(100) NOT NULL,
  `titleen` varchar(100) DEFAULT NULL,
  `preview` text,
  `previewen` text,
  `content` text NOT NULL,
  `contenten` text,
  `pic_full` varchar(100) DEFAULT NULL,
  `hit` int(11) NOT NULL DEFAULT '1',
  `created` timestamp NULL DEFAULT CURRENT_TIMESTAMP,
  `record_order` int(11) NOT NULL DEFAULT '1',
  `hot` tinyint(1) NOT NULL DEFAULT '0',
  `extra_field1` varchar(45) DEFAULT NULL,
  `extra_field2` varchar(45) DEFAULT NULL,
  `tag` varchar(100) NOT NULL,
  `description` varchar(250) NOT NULL,
  `activated` tinyint(1) NOT NULL DEFAULT '1',
  `dos_usernames_username` varchar(45) NOT NULL,
  PRIMARY KEY (`record_id`),
  KEY `fk_dos_module_services_dos_usernames1` (`dos_usernames_username`)
) ENGINE=InnoDB DEFAULT CHARSET=utf8 AUTO_INCREMENT=1 ;

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
  `dos_usernames_username` varchar(45) NOT NULL,
  PRIMARY KEY (`support_id`),
  KEY `fk_dos_module_supports_dos_usernames1` (`dos_usernames_username`)
) ENGINE=InnoDB  DEFAULT CHARSET=utf8 AUTO_INCREMENT=14 ;

--
-- Dumping data for table `dos_module_supports`
--

INSERT INTO `dos_module_supports` (`support_id`, `support_name`, `support_phone`, `support_value`, `support_order`, `support_type`, `dos_usernames_username`) VALUES
(13, 'Nguyễn An', '0929001001', 'thanhansoft', 1, 'yahoo', 'test');

-- --------------------------------------------------------

--
-- Table structure for table `dos_module_webs`
--

CREATE TABLE IF NOT EXISTS `dos_module_webs` (
  `web_name` varchar(45) NOT NULL,
  `web_value` varchar(1000) DEFAULT NULL,
  `dos_usernames_username` varchar(45) NOT NULL,
  KEY `fk_dos_module_webs_dos_usernames1` (`dos_usernames_username`)
) ENGINE=InnoDB DEFAULT CHARSET=utf8;

--
-- Dumping data for table `dos_module_webs`
--

INSERT INTO `dos_module_webs` (`web_name`, `web_value`, `dos_usernames_username`) VALUES
('keywords', 'Tu khoa', 'test'),
('description', 'Mo ta', 'test'),
('title', 'Tieu de', 'test');

-- --------------------------------------------------------

--
-- Table structure for table `dos_nationals`
--

CREATE TABLE IF NOT EXISTS `dos_nationals` (
  `national` varchar(3) NOT NULL,
  `national_name` varchar(45) NOT NULL,
  PRIMARY KEY (`national`)
) ENGINE=InnoDB DEFAULT CHARSET=utf8;

--
-- Dumping data for table `dos_nationals`
--

INSERT INTO `dos_nationals` (`national`, `national_name`) VALUES
('VND', 'Việt Nam');

-- --------------------------------------------------------

--
-- Table structure for table `dos_provinces`
--

CREATE TABLE IF NOT EXISTS `dos_provinces` (
  `province_id` int(11) NOT NULL AUTO_INCREMENT,
  `province_name` varchar(45) NOT NULL,
  `dos_nationals_national` varchar(3) NOT NULL,
  PRIMARY KEY (`province_id`),
  KEY `fk_dos_provinces_dos_nationals` (`dos_nationals_national`)
) ENGINE=InnoDB  DEFAULT CHARSET=utf8 AUTO_INCREMENT=3 ;

--
-- Dumping data for table `dos_provinces`
--

INSERT INTO `dos_provinces` (`province_id`, `province_name`, `dos_nationals_national`) VALUES
(2, 'Đồng Nai', 'VND');

-- --------------------------------------------------------

--
-- Table structure for table `dos_templates`
--

CREATE TABLE IF NOT EXISTS `dos_templates` (
  `template` varchar(6) NOT NULL,
  `template_name` varchar(45) NOT NULL,
  `created` timestamp NOT NULL DEFAULT CURRENT_TIMESTAMP,
  `description` varchar(1000) DEFAULT NULL,
  PRIMARY KEY (`template`)
) ENGINE=InnoDB DEFAULT CHARSET=utf8;

--
-- Dumping data for table `dos_templates`
--

INSERT INTO `dos_templates` (`template`, `template_name`, `created`, `description`) VALUES
('060212', 'Mẫu số 060212', '2012-02-06 02:51:59', NULL),
('111120', 'Mẫu số 111120', '2011-11-21 02:40:10', NULL);

-- --------------------------------------------------------

--
-- Table structure for table `dos_templates_has_dos_modules`
--

CREATE TABLE IF NOT EXISTS `dos_templates_has_dos_modules` (
  `dos_templates_template` varchar(6) NOT NULL,
  `dos_modules_module_id` varchar(20) NOT NULL,
  `dos_values_value_name` varchar(20) NOT NULL,
  PRIMARY KEY (`dos_templates_template`,`dos_modules_module_id`,`dos_values_value_name`),
  KEY `fk_dos_templates_has_dos_modules_dos_modules1` (`dos_modules_module_id`),
  KEY `fk_dos_templates_has_dos_modules_dos_templates1` (`dos_templates_template`),
  KEY `fk_dos_templates_has_dos_modules_dos_values1` (`dos_values_value_name`)
) ENGINE=InnoDB DEFAULT CHARSET=utf8;

--
-- Dumping data for table `dos_templates_has_dos_modules`
--

INSERT INTO `dos_templates_has_dos_modules` (`dos_templates_template`, `dos_modules_module_id`, `dos_values_value_name`) VALUES
('111120', 'about', 'menu_about'),
('111120', 'default', 'about_home'),
('111120', 'default', 'advs_left'),
('111120', 'default', 'list_supports'),
('111120', 'default', 'products_new'),
('111120', 'products', 'menu_products'),
('111120', 'services', 'menu_services');

-- --------------------------------------------------------

--
-- Table structure for table `dos_usernames`
--

CREATE TABLE IF NOT EXISTS `dos_usernames` (
  `username` varchar(45) NOT NULL,
  `email` varchar(45) NOT NULL,
  `password` varchar(45) NOT NULL,
  `created` timestamp NOT NULL DEFAULT CURRENT_TIMESTAMP,
  `fullname` varchar(45) DEFAULT NULL,
  `phone` varchar(15) DEFAULT NULL,
  `company` varchar(100) DEFAULT NULL,
  `role` varchar(45) NOT NULL,
  `language` varchar(20) NOT NULL,
  `code` varchar(15) DEFAULT NULL,
  `activated` tinyint(1) NOT NULL,
  `dos_templates_template` varchar(6) NOT NULL,
  `dos_provinces_province_id` int(11) NOT NULL,
  PRIMARY KEY (`username`),
  KEY `fk_dos_usernames_dos_templates1` (`dos_templates_template`),
  KEY `fk_dos_usernames_dos_provinces1` (`dos_provinces_province_id`)
) ENGINE=InnoDB DEFAULT CHARSET=utf8;

--
-- Dumping data for table `dos_usernames`
--

INSERT INTO `dos_usernames` (`username`, `email`, `password`, `created`, `fullname`, `phone`, `company`, `role`, `language`, `code`, `activated`, `dos_templates_template`, `dos_provinces_province_id`) VALUES
('bao', 'groupitsoft@gmail.com', 'e10adc3949ba59abbe56e057f20f883e', '2012-02-01 04:42:45', NULL, NULL, NULL, 'user', 'vi', NULL, 1, '111120', 2),
('dos', 'thanhansoft@gmail.com', '1960fdca5ecf16c0ddb74fdc814ee348', '2012-02-06 09:58:28', NULL, NULL, NULL, 'administrator', 'vi', NULL, 1, '111120', 2),
('mvc', 'thanhansoft@gmail.com', 'e10adc3949ba59abbe56e057f20f883e', '2012-02-06 02:57:33', NULL, NULL, NULL, 'user', 'vi', NULL, 1, '060212', 2),
('root', 'groupitsoft@gmail.com', 'e10adc3949ba59abbe56e057f20f883e', '2012-02-01 04:38:10', NULL, NULL, NULL, 'user', 'vi', NULL, 1, '111120', 2),
('test', 'thanhansoft@gmail.com', 'e10adc3949ba59abbe56e057f20f883e', '2011-11-21 02:40:55', 'Nguyễn An', '0929001001', 'ThuongHoi', 'user', 'vi', NULL, 1, '111120', 2),
('thanhan', 'thanhansoft@gmail.com', 'e10adc3949ba59abbe56e057f20f883e', '2012-02-04 02:35:42', NULL, NULL, NULL, 'user', 'vi', 'Z43dCG5', 1, '111120', 2),
('thanhansoft', 'thanhansoft@gmail.com', 'e10adc3949ba59abbe56e057f20f883e', '2012-02-01 03:57:44', NULL, NULL, NULL, 'user', 'vi', NULL, 1, '111120', 2),
('vanhong', 'info@thuonghoi.com', 'cafaa18efcc58e9c99e4cdd79fb7672d', '2012-02-01 07:38:42', NULL, NULL, NULL, 'user', 'vi', NULL, 1, '111120', 2);

-- --------------------------------------------------------

--
-- Table structure for table `dos_usernames_has_dos_modules`
--

CREATE TABLE IF NOT EXISTS `dos_usernames_has_dos_modules` (
  `dos_usernames_username` varchar(45) NOT NULL,
  `dos_modules_module_id` varchar(20) NOT NULL,
  `dos_values_value_name` varchar(20) NOT NULL,
  PRIMARY KEY (`dos_usernames_username`,`dos_modules_module_id`,`dos_values_value_name`),
  KEY `fk_dos_usernames_has_dos_modules_dos_modules1` (`dos_modules_module_id`),
  KEY `fk_dos_usernames_has_dos_modules_dos_usernames1` (`dos_usernames_username`),
  KEY `fk_dos_usernames_has_dos_modules_dos_values1` (`dos_values_value_name`)
) ENGINE=InnoDB DEFAULT CHARSET=utf8;

-- --------------------------------------------------------

--
-- Table structure for table `dos_user_langs`
--

CREATE TABLE IF NOT EXISTS `dos_user_langs` (
  `lang_name` varchar(30) NOT NULL,
  `lang` varchar(200) NOT NULL,
  `langen` varchar(200) DEFAULT NULL,
  `dos_usernames_username` varchar(45) NOT NULL,
  PRIMARY KEY (`lang_name`),
  KEY `fk_dos_user_langs_dos_usernames1` (`dos_usernames_username`)
) ENGINE=InnoDB DEFAULT CHARSET=utf8;

--
-- Dumping data for table `dos_user_langs`
--

INSERT INTO `dos_user_langs` (`lang_name`, `lang`, `langen`, `dos_usernames_username`) VALUES
('about', 'Giới thiệu của tui', 'About us', 'test');

-- --------------------------------------------------------

--
-- Table structure for table `dos_values`
--

CREATE TABLE IF NOT EXISTS `dos_values` (
  `value_name` varchar(20) NOT NULL,
  `module_id` varchar(20) NOT NULL,
  `function_name` varchar(20) NOT NULL,
  PRIMARY KEY (`value_name`)
) ENGINE=InnoDB DEFAULT CHARSET=utf8;

--
-- Dumping data for table `dos_values`
--

INSERT INTO `dos_values` (`value_name`, `module_id`, `function_name`) VALUES
('about_home', 'About', 'homeRecord'),
('advs_left', 'Advs', 'listItemsLeft'),
('list_supports', 'Supports', 'listItem'),
('menu_about', 'About', 'listMenu'),
('menu_products', 'ProductCats', 'listItem'),
('menu_services', 'Services', 'listMenu'),
('products_new', 'Products', 'listItemNew');

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
  ADD CONSTRAINT `fk_dos_modules_has_dos_usernames_dos_usernames1` FOREIGN KEY (`dos_usernames_username`) REFERENCES `dos_usernames` (`username`) ON DELETE NO ACTION ON UPDATE NO ACTION;

--
-- Constraints for table `dos_module_abouts`
--
ALTER TABLE `dos_module_abouts`
  ADD CONSTRAINT `fk_dos_module_abouts_dos_usernames1` FOREIGN KEY (`dos_usernames_username`) REFERENCES `dos_usernames` (`username`) ON DELETE NO ACTION ON UPDATE NO ACTION;

--
-- Constraints for table `dos_module_advs`
--
ALTER TABLE `dos_module_advs`
  ADD CONSTRAINT `fk_dos_module_advs_dos_usernames1` FOREIGN KEY (`dos_usernames_username`) REFERENCES `dos_usernames` (`username`) ON DELETE NO ACTION ON UPDATE NO ACTION;

--
-- Constraints for table `dos_module_banners`
--
ALTER TABLE `dos_module_banners`
  ADD CONSTRAINT `fk_dos_module_banners_dos_usernames1` FOREIGN KEY (`dos_usernames_username`) REFERENCES `dos_usernames` (`username`) ON DELETE NO ACTION ON UPDATE NO ACTION;

--
-- Constraints for table `dos_module_contacts`
--
ALTER TABLE `dos_module_contacts`
  ADD CONSTRAINT `fk_dos_module_contacts_dos_usernames1` FOREIGN KEY (`dos_usernames_username`) REFERENCES `dos_usernames` (`username`) ON DELETE NO ACTION ON UPDATE NO ACTION;

--
-- Constraints for table `dos_module_menus`
--
ALTER TABLE `dos_module_menus`
  ADD CONSTRAINT `fk_dos_module_menus_dos_usernames1` FOREIGN KEY (`dos_usernames_username`) REFERENCES `dos_usernames` (`username`) ON DELETE NO ACTION ON UPDATE NO ACTION;

--
-- Constraints for table `dos_module_pcounter_save`
--
ALTER TABLE `dos_module_pcounter_save`
  ADD CONSTRAINT `fk_dos_module_pcounter_save_dos_usernames1` FOREIGN KEY (`dos_usernames_username`) REFERENCES `dos_usernames` (`username`) ON DELETE NO ACTION ON UPDATE NO ACTION;

--
-- Constraints for table `dos_module_pcounter_users`
--
ALTER TABLE `dos_module_pcounter_users`
  ADD CONSTRAINT `fk_dos_module_pcounter_users_dos_usernames1` FOREIGN KEY (`dos_usernames_username`) REFERENCES `dos_usernames` (`username`) ON DELETE NO ACTION ON UPDATE NO ACTION;

--
-- Constraints for table `dos_module_products`
--
ALTER TABLE `dos_module_products`
  ADD CONSTRAINT `fk_dos_module_products_dos_module_product_cats1` FOREIGN KEY (`dos_module_product_cats_cat_id`) REFERENCES `dos_module_product_cats` (`cat_id`) ON DELETE NO ACTION ON UPDATE NO ACTION;

--
-- Constraints for table `dos_module_product_cats`
--
ALTER TABLE `dos_module_product_cats`
  ADD CONSTRAINT `fk_dos_module_product_cats_dos_usernames1` FOREIGN KEY (`dos_usernames_username`) REFERENCES `dos_usernames` (`username`) ON DELETE NO ACTION ON UPDATE NO ACTION;

--
-- Constraints for table `dos_module_services`
--
ALTER TABLE `dos_module_services`
  ADD CONSTRAINT `fk_dos_module_services_dos_usernames1` FOREIGN KEY (`dos_usernames_username`) REFERENCES `dos_usernames` (`username`) ON DELETE NO ACTION ON UPDATE NO ACTION;

--
-- Constraints for table `dos_module_supports`
--
ALTER TABLE `dos_module_supports`
  ADD CONSTRAINT `fk_dos_module_supports_dos_usernames1` FOREIGN KEY (`dos_usernames_username`) REFERENCES `dos_usernames` (`username`) ON DELETE NO ACTION ON UPDATE NO ACTION;

--
-- Constraints for table `dos_module_webs`
--
ALTER TABLE `dos_module_webs`
  ADD CONSTRAINT `fk_dos_module_webs_dos_usernames1` FOREIGN KEY (`dos_usernames_username`) REFERENCES `dos_usernames` (`username`) ON DELETE NO ACTION ON UPDATE NO ACTION;

--
-- Constraints for table `dos_provinces`
--
ALTER TABLE `dos_provinces`
  ADD CONSTRAINT `fk_dos_provinces_dos_nationals` FOREIGN KEY (`dos_nationals_national`) REFERENCES `dos_nationals` (`national`) ON DELETE NO ACTION ON UPDATE NO ACTION;

--
-- Constraints for table `dos_templates_has_dos_modules`
--
ALTER TABLE `dos_templates_has_dos_modules`
  ADD CONSTRAINT `fk_dos_templates_has_dos_modules_dos_modules1` FOREIGN KEY (`dos_modules_module_id`) REFERENCES `dos_modules` (`module_id`) ON DELETE NO ACTION ON UPDATE NO ACTION,
  ADD CONSTRAINT `fk_dos_templates_has_dos_modules_dos_templates1` FOREIGN KEY (`dos_templates_template`) REFERENCES `dos_templates` (`template`) ON DELETE NO ACTION ON UPDATE NO ACTION,
  ADD CONSTRAINT `fk_dos_templates_has_dos_modules_dos_values1` FOREIGN KEY (`dos_values_value_name`) REFERENCES `dos_values` (`value_name`) ON DELETE NO ACTION ON UPDATE NO ACTION;

--
-- Constraints for table `dos_usernames`
--
ALTER TABLE `dos_usernames`
  ADD CONSTRAINT `fk_dos_usernames_dos_provinces1` FOREIGN KEY (`dos_provinces_province_id`) REFERENCES `dos_provinces` (`province_id`) ON DELETE NO ACTION ON UPDATE NO ACTION,
  ADD CONSTRAINT `fk_dos_usernames_dos_templates1` FOREIGN KEY (`dos_templates_template`) REFERENCES `dos_templates` (`template`) ON DELETE NO ACTION ON UPDATE NO ACTION;

--
-- Constraints for table `dos_usernames_has_dos_modules`
--
ALTER TABLE `dos_usernames_has_dos_modules`
  ADD CONSTRAINT `fk_dos_usernames_has_dos_modules_dos_modules1` FOREIGN KEY (`dos_modules_module_id`) REFERENCES `dos_modules` (`module_id`) ON DELETE NO ACTION ON UPDATE NO ACTION,
  ADD CONSTRAINT `fk_dos_usernames_has_dos_modules_dos_usernames1` FOREIGN KEY (`dos_usernames_username`) REFERENCES `dos_usernames` (`username`) ON DELETE NO ACTION ON UPDATE NO ACTION,
  ADD CONSTRAINT `fk_dos_usernames_has_dos_modules_dos_values1` FOREIGN KEY (`dos_values_value_name`) REFERENCES `dos_values` (`value_name`) ON DELETE NO ACTION ON UPDATE NO ACTION;

--
-- Constraints for table `dos_user_langs`
--
ALTER TABLE `dos_user_langs`
  ADD CONSTRAINT `fk_dos_user_langs_dos_usernames1` FOREIGN KEY (`dos_usernames_username`) REFERENCES `dos_usernames` (`username`) ON DELETE NO ACTION ON UPDATE NO ACTION;

/*!40101 SET CHARACTER_SET_CLIENT=@OLD_CHARACTER_SET_CLIENT */;
/*!40101 SET CHARACTER_SET_RESULTS=@OLD_CHARACTER_SET_RESULTS */;
/*!40101 SET COLLATION_CONNECTION=@OLD_COLLATION_CONNECTION */;
