-- phpMyAdmin SQL Dump
-- version 3.4.9
-- http://www.phpmyadmin.net
--
-- Host: localhost
-- Generation Time: Feb 09, 2012 at 01:31 PM
-- Server version: 5.5.8
-- PHP Version: 5.3.5

SET SQL_MODE="NO_AUTO_VALUE_ON_ZERO";
SET time_zone = "+00:00";


/*!40101 SET @OLD_CHARACTER_SET_CLIENT=@@CHARACTER_SET_CLIENT */;
/*!40101 SET @OLD_CHARACTER_SET_RESULTS=@@CHARACTER_SET_RESULTS */;
/*!40101 SET @OLD_COLLATION_CONNECTION=@@COLLATION_CONNECTION */;
/*!40101 SET NAMES utf8 */;

--
-- Database: `mvc`
--

-- --------------------------------------------------------

--
-- Table structure for table `dos_module_about`
--

CREATE TABLE IF NOT EXISTS `dos_module_about` (
  `record_id` int(11) NOT NULL AUTO_INCREMENT,
  `title` varchar(45) DEFAULT NULL,
  `titleen` varchar(45) DEFAULT NULL,
  `titlefr` varchar(45) DEFAULT NULL,
  `titlekr` varchar(45) DEFAULT NULL,
  `content` text,
  `contenten` text,
  `contentfr` text,
  `contentkr` text,
  `tag` varchar(100) NOT NULL,
  `description` varchar(250) NOT NULL,
  `hits` int(11) DEFAULT '1',
  `posted_date` timestamp NULL DEFAULT CURRENT_TIMESTAMP,
  `record_order` int(11) DEFAULT '1',
  `extra_field1` varchar(45) DEFAULT NULL,
  `extra_field2` varchar(45) DEFAULT NULL,
  `hot` tinyint(1) NOT NULL DEFAULT '0',
  `enable` tinyint(1) DEFAULT '1',
  PRIMARY KEY (`record_id`)
) ENGINE=InnoDB  DEFAULT CHARSET=utf8 AUTO_INCREMENT=30 ;

--
-- Dumping data for table `dos_module_about`
--

INSERT INTO `dos_module_about` (`record_id`, `title`, `titleen`, `titlefr`, `titlekr`, `content`, `contenten`, `contentfr`, `contentkr`, `tag`, `description`, `hits`, `posted_date`, `record_order`, `extra_field1`, `extra_field2`, `hot`, `enable`) VALUES
(27, 'Lĩnh vực hoạt động', '', '', '', '<p>\n	Công ty TNHH MTV Than Phúc An hoạt động lĩnh vực chủ yếu liên quan đến than đá các loại ....</p>\n', '', '', '', 'linh-vuc-hoat-dong', '', 884, '2011-08-16 02:32:39', 1, '', '', 0, 1),
(28, 'Giới thiệu chung', '', '', '', '<p style="text-align:justify;">\n	Kính thưa quý khách hàng !</p>\n<p style="text-align:justify;">\n	Như chúng ta đã biết Quảng Ninh - nổi tiếng với du lịch, nổi tiếng với non nước, hang động, đảo đá Vịnh Hạ Long, nổi tiếng với than - vàng đen Tổ quốc. Bởi thế, Quảng Ninh đã được Bác Hồ gọi bằng một cái tên đầy thân thương - đất Mỏ. Nhắc đến than, người ta không chỉ nghĩ đến ngành công nghiệp khai thác và năng lượng từ than đá</p>\n<p style="text-align:justify;">\n	Than Phúc An đang xúc tiến mở rộng quy mô sản xuất, mạng lưới phân phối, và tìm đối tác xuất khẩu sản phẩm này.</p>\n<p style="text-align:justify;">\n	Hãy đến với chúng tôi</p>\n<p style="text-align:justify;">\n	Vui lòng liên hệ để biết thêm chi tiết:</p>\n<p style="text-align:justify;">\n	<span style="color:#0000cd;"><strong>CÔNG TY TNHH MTV THAN PHÚC AN</strong></span></p>\n<p>\n	Địa chỉ: xã Hóa An - Biên Hòa - Đồng Nai</p>\n<p>\n	Điện thoại: 0613 955 688</p>\n<p style="text-align:justify;">\n	Email: thanphucan@gmail.com</p>\n<p style="text-align:justify;">\n	 </p>\n', '', '', '', 'gioi-thieu-chung', '', 1036, '2011-08-16 03:35:14', 1, '', '', 1, 1);

-- --------------------------------------------------------

--
-- Table structure for table `dos_module_adv`
--

CREATE TABLE IF NOT EXISTS `dos_module_adv` (
  `record_id` int(11) NOT NULL AUTO_INCREMENT,
  `pic_thumb` varchar(50) NOT NULL DEFAULT '',
  `title` varchar(50) NOT NULL DEFAULT '',
  `titleen` varchar(50) DEFAULT NULL,
  `titlefr` varchar(50) DEFAULT NULL,
  `titlekr` varchar(50) DEFAULT NULL,
  `url` varchar(500) DEFAULT NULL,
  `description` varchar(1000) DEFAULT NULL,
  `create_date` timestamp NULL DEFAULT CURRENT_TIMESTAMP,
  `start_date` timestamp NULL DEFAULT NULL,
  `end_date` timestamp NULL DEFAULT NULL,
  `hits` int(11) NOT NULL DEFAULT '0',
  `record_order` int(11) DEFAULT '1',
  `position` varchar(45) DEFAULT NULL,
  `type` varchar(45) DEFAULT NULL,
  `enable` tinyint(1) NOT NULL DEFAULT '1',
  PRIMARY KEY (`record_id`)
) ENGINE=InnoDB  DEFAULT CHARSET=utf8 AUTO_INCREMENT=9 ;

--
-- Dumping data for table `dos_module_adv`
--

INSERT INTO `dos_module_adv` (`record_id`, `pic_thumb`, `title`, `titleen`, `titlefr`, `titlekr`, `url`, `description`, `create_date`, `start_date`, `end_date`, `hits`, `record_order`, `position`, `type`, `enable`) VALUES
(7, 'img6.png', 'Adv right', '', '', NULL, 'http://grouplaptrinh.com', '', '2011-10-05 03:28:56', '2011-10-28 17:00:00', '2011-11-04 17:00:00', 0, 3, 'right', '_bank', 1),
(8, 'img5.png', 'Adv left', 'd', '', 'ddd', 'http://grouplaptrinh.com', '', '2011-10-29 03:37:26', '2011-10-28 17:00:00', '2011-11-01 17:00:00', 0, 4, 'left', '_bank', 1);

-- --------------------------------------------------------

--
-- Table structure for table `dos_module_banner`
--

CREATE TABLE IF NOT EXISTS `dos_module_banner` (
  `banner_id` int(11) NOT NULL AUTO_INCREMENT,
  `banner_date` timestamp NOT NULL DEFAULT CURRENT_TIMESTAMP,
  `banner_name` varchar(45) NOT NULL,
  `banner_url` varchar(45) DEFAULT NULL,
  `banner_link` varchar(200) DEFAULT NULL,
  `banner_order` int(11) NOT NULL DEFAULT '1',
  `enable` tinyint(1) NOT NULL DEFAULT '1',
  `position` varchar(45) NOT NULL,
  `page_position` varchar(45) NOT NULL,
  `banner_size` varchar(9) DEFAULT NULL,
  PRIMARY KEY (`banner_id`)
) ENGINE=InnoDB  DEFAULT CHARSET=utf8 AUTO_INCREMENT=13 ;

--
-- Dumping data for table `dos_module_banner`
--

INSERT INTO `dos_module_banner` (`banner_id`, `banner_date`, `banner_name`, `banner_url`, `banner_link`, `banner_order`, `enable`, `position`, `page_position`, `banner_size`) VALUES
(9, '2012-02-08 06:48:58', 'Banner', 'banner.jpg', '', 1, 1, 'banner', 'default', '951x332'),
(10, '2012-02-08 06:49:20', 'Banner 1', 'banner1.jpg', '', 2, 1, 'banner', 'default', '951x332'),
(11, '2012-02-08 06:55:10', 'Banner 2', 'banner2.jpg', '', 3, 1, 'banner', 'default', '951x332'),
(12, '2012-02-08 08:41:12', 'Logo', 'logo.png', '', 4, 1, 'logo', 'default', '155x108');

-- --------------------------------------------------------

--
-- Table structure for table `dos_module_conference`
--

CREATE TABLE IF NOT EXISTS `dos_module_conference` (
  `record_id` int(11) NOT NULL AUTO_INCREMENT,
  `title` varchar(45) DEFAULT NULL,
  `titleen` varchar(45) DEFAULT NULL,
  `titlefr` varchar(45) DEFAULT NULL,
  `content` text,
  `contenten` text,
  `contentfr` text,
  `hits` int(11) DEFAULT '1',
  `posted_date` timestamp NULL DEFAULT CURRENT_TIMESTAMP,
  `record_order` int(11) DEFAULT '1',
  `extra_field1` varchar(45) DEFAULT NULL,
  `extra_field2` varchar(45) DEFAULT NULL,
  `hot` tinyint(1) NOT NULL DEFAULT '0',
  `enable` tinyint(1) DEFAULT '1',
  PRIMARY KEY (`record_id`)
) ENGINE=InnoDB  DEFAULT CHARSET=utf8 AUTO_INCREMENT=32 ;

--
-- Dumping data for table `dos_module_conference`
--

INSERT INTO `dos_module_conference` (`record_id`, `title`, `titleen`, `titlefr`, `content`, `contenten`, `contentfr`, `hits`, `posted_date`, `record_order`, `extra_field1`, `extra_field2`, `hot`, `enable`) VALUES
(30, 'Tiệc hoi nghi', '', '', '&lt;p&gt;\r\n	testing&lt;/p&gt;\r\n', '', '', 13, '2011-09-09 07:23:38', 1, '', '', 0, 1),
(31, 'dasdsadsa', '', '', '&lt;p&gt;\r\n	test&lt;/p&gt;\r\n', '', '', 1, '2011-09-09 07:23:51', 2, '', '', 0, 1);

-- --------------------------------------------------------

--
-- Table structure for table `dos_module_contact`
--

CREATE TABLE IF NOT EXISTS `dos_module_contact` (
  `record_id` int(11) NOT NULL AUTO_INCREMENT,
  `create_date` timestamp NOT NULL DEFAULT CURRENT_TIMESTAMP,
  `title` varchar(70) NOT NULL,
  `titleen` varchar(70) DEFAULT NULL,
  `titlefr` varchar(70) DEFAULT NULL,
  `titlekr` varchar(70) DEFAULT NULL,
  `content` varchar(1000) NOT NULL,
  `contenten` varchar(5000) DEFAULT NULL,
  `contentfr` varchar(5000) DEFAULT NULL,
  `contentkr` varchar(5000) DEFAULT NULL,
  `hot` tinyint(1) NOT NULL DEFAULT '0',
  `enable` tinyint(1) NOT NULL DEFAULT '1',
  PRIMARY KEY (`record_id`)
) ENGINE=InnoDB  DEFAULT CHARSET=utf8 AUTO_INCREMENT=11 ;

--
-- Dumping data for table `dos_module_contact`
--

INSERT INTO `dos_module_contact` (`record_id`, `create_date`, `title`, `titleen`, `titlefr`, `titlekr`, `content`, `contenten`, `contentfr`, `contentkr`, `hot`, `enable`) VALUES
(7, '2011-06-17 03:52:09', 'Liên hệ với chúng tôi', '', '', '', '<p>\n	<span style="color:#ff0000;"><strong>TẬP ĐOÀN CÔNG NGHIỆP THAN KHOÁNG SẢN VN TKV</strong></span></p>\n<p>\n	<span style="color:#0000cd;"><strong>CÔNG TY TNHH MTV THAN PHÚC AN</strong></span></p>\n<p>\n	Địa chỉ: xã Hóa An - Biên Hòa - Đồng Nai</p>\n<p>\n	Điện thoại: 0613 955 688</p>\n<p>\n	Email: thanphucan@gmail.com</p>\n', '<p>\n	<strong><span style="color:#0000cd;">PHUC AN STONE COAL COMPANY  LIMITED</span></strong></p>\n<p>\n	Address: Hoa An - Bien Hoa - Dong Nai</p>\n<p>\n	Tel: 0613 955 688</p>\n<p>\n	Email: thanphucan@gmail.com</p>\n', '', '', 0, 1),
(10, '2012-02-08 08:41:42', 'Liên hệ', 'Contact', '', '접촉', '<p style="text-align:center;">\n	<strong>CÔNG TY TNHH MTV THAN PHÚC AN</strong></p>\n<p style="text-align:center;">\n	Địa chỉ: xã Hóa An - Biên Hòa - Đồng Nai</p>\n<p style="text-align:center;">\n	Điện thoại: 0613 955 688</p>\n', '<p style="text-align:center;">\n	<strong>PHUC AN </strong><strong>STONE COAL</strong><strong> COMPANY  LIMITED</strong></p>\n<p style="text-align:center;">\n	<strong>Address: Hoa An - Bien Hoa - Dong Nai</strong></p>\n<p style="text-align:center;">\n	<strong>Tel: 0613 955 688</strong></p>\n', '', '', 1, 1);

-- --------------------------------------------------------

--
-- Table structure for table `dos_module_experiences`
--

CREATE TABLE IF NOT EXISTS `dos_module_experiences` (
  `record_id` int(11) NOT NULL AUTO_INCREMENT,
  `pic_thumb` varchar(45) DEFAULT NULL,
  `title` varchar(100) NOT NULL,
  `titleen` varchar(100) DEFAULT NULL,
  `titlefr` varchar(100) DEFAULT NULL,
  `preview` text NOT NULL,
  `previewen` text,
  `previewfr` text,
  `content` text NOT NULL,
  `contenten` text,
  `contentfr` text,
  `author` varchar(45) DEFAULT NULL,
  `hits` int(11) NOT NULL DEFAULT '1',
  `postdate` timestamp NULL DEFAULT CURRENT_TIMESTAMP,
  `record_order` int(11) NOT NULL DEFAULT '1',
  `record_type` tinyint(1) NOT NULL DEFAULT '0',
  `extra_field1` varchar(45) DEFAULT NULL,
  `extra_field2` varchar(45) DEFAULT NULL,
  `enable` tinyint(1) NOT NULL DEFAULT '1',
  `dos_module_experiences_cat_cat_id` int(11) NOT NULL,
  PRIMARY KEY (`record_id`),
  KEY `fk_dos_module_experiences_dos_module_experiences_cat` (`dos_module_experiences_cat_cat_id`)
) ENGINE=InnoDB  DEFAULT CHARSET=utf8 AUTO_INCREMENT=10 ;

--
-- Dumping data for table `dos_module_experiences`
--

INSERT INTO `dos_module_experiences` (`record_id`, `pic_thumb`, `title`, `titleen`, `titlefr`, `preview`, `previewen`, `previewfr`, `content`, `contenten`, `contentfr`, `author`, `hits`, `postdate`, `record_order`, `record_type`, `extra_field1`, `extra_field2`, `enable`, `dos_module_experiences_cat_cat_id`) VALUES
(4, NULL, 'asfasf', '', '', '&lt;p&gt;\r\n	asdasf&lt;/p&gt;\r\n', '', '', '&lt;p&gt;\r\n	test&lt;/p&gt;\r\n', '', '', NULL, 1, '2011-10-11 09:19:00', 1, 0, NULL, NULL, 1, 12),
(5, 'longchau_new.png', 'tests', '', '', '&lt;p&gt;\r\n	dsfsdfsdf&lt;/p&gt;\r\n', '', '', '&lt;p&gt;\r\n	sdfsdf&lt;/p&gt;\r\n', '', '', NULL, 1, '2011-10-11 09:24:20', 2, 0, NULL, NULL, 1, 14),
(6, NULL, 'asd asdas', '', '', '&lt;p&gt;\r\n	dasddasd&lt;/p&gt;\r\n', '', '', '&lt;p&gt;\r\n	asdasdas&lt;/p&gt;\r\n', '', '', NULL, 1, '2011-10-11 09:34:00', 3, 0, NULL, NULL, 1, 14),
(7, NULL, 'qweqweqw', '', '', '&lt;p&gt;\r\n	qweqweqwe&lt;/p&gt;\r\n', '', '', '&lt;p&gt;\r\n	qweqwewe&lt;/p&gt;\r\n', '', '', NULL, 1, '2011-10-12 04:28:23', 4, 0, NULL, NULL, 1, 14),
(8, NULL, 'qweqwe', '', '', '&lt;p&gt;\r\n	qweqweqwe&lt;/p&gt;\r\n', '', '', '&lt;p&gt;\r\n	qweqweqwe&lt;/p&gt;\r\n', '', '', NULL, 1, '2011-10-12 04:28:35', 5, 0, NULL, NULL, 1, 14),
(9, NULL, 'qweqweqw', '', '', '&lt;p&gt;\r\n	 qweqwe qwe&lt;/p&gt;\r\n', '', '', '&lt;p&gt;\r\n	qweqweqweqw&lt;/p&gt;\r\n', '', '', NULL, 1, '2011-10-12 04:28:42', 6, 0, NULL, NULL, 1, 14);

-- --------------------------------------------------------

--
-- Table structure for table `dos_module_experiences_cat`
--

CREATE TABLE IF NOT EXISTS `dos_module_experiences_cat` (
  `cat_id` int(11) NOT NULL AUTO_INCREMENT,
  `cat_parent_id` int(11) NOT NULL DEFAULT '0',
  `cat_title` varchar(45) NOT NULL,
  `cat_titleen` varchar(45) DEFAULT NULL,
  `cat_titlefr` varchar(45) DEFAULT NULL,
  `cat_order` int(11) NOT NULL DEFAULT '1',
  `cat_enable` tinyint(1) NOT NULL DEFAULT '1',
  PRIMARY KEY (`cat_id`)
) ENGINE=InnoDB  DEFAULT CHARSET=utf8 AUTO_INCREMENT=15 ;

--
-- Dumping data for table `dos_module_experiences_cat`
--

INSERT INTO `dos_module_experiences_cat` (`cat_id`, `cat_parent_id`, `cat_title`, `cat_titleen`, `cat_titlefr`, `cat_order`, `cat_enable`) VALUES
(12, 0, 'Experiences', '', '', 1, 1),
(14, 0, 'Danh mục', '', '', 2, 1);

-- --------------------------------------------------------

--
-- Table structure for table `dos_module_gallery`
--

CREATE TABLE IF NOT EXISTS `dos_module_gallery` (
  `record_id` int(11) NOT NULL AUTO_INCREMENT,
  `postdate` timestamp NOT NULL DEFAULT CURRENT_TIMESTAMP,
  `pic_thumb` varchar(45) DEFAULT NULL,
  `pic_full` varchar(45) DEFAULT NULL,
  `title` varchar(100) DEFAULT NULL,
  `titleen` varchar(100) DEFAULT NULL,
  `titlefr` varchar(100) DEFAULT NULL,
  `hits` int(11) DEFAULT '0',
  `record_order` int(11) DEFAULT '1',
  `enable` tinyint(1) NOT NULL DEFAULT '1',
  `dos_module_gallery_cat_cat_id` int(11) NOT NULL,
  PRIMARY KEY (`record_id`),
  KEY `fk_dos_module_gallery_dos_module_gallery_cat` (`dos_module_gallery_cat_cat_id`)
) ENGINE=InnoDB  DEFAULT CHARSET=utf8 AUTO_INCREMENT=3 ;

--
-- Dumping data for table `dos_module_gallery`
--

INSERT INTO `dos_module_gallery` (`record_id`, `postdate`, `pic_thumb`, `pic_full`, `title`, `titleen`, `titlefr`, `hits`, `record_order`, `enable`, `dos_module_gallery_cat_cat_id`) VALUES
(1, '2011-09-07 14:29:47', 'longchau_new.png', 'longchau_new1.png', 'test', '', '', 0, 1, 1, 20),
(2, '2011-09-23 01:52:36', NULL, NULL, 'asaf', '', '', 0, 2, 1, 18);

-- --------------------------------------------------------

--
-- Table structure for table `dos_module_gallery_cat`
--

CREATE TABLE IF NOT EXISTS `dos_module_gallery_cat` (
  `cat_id` int(11) NOT NULL AUTO_INCREMENT,
  `cat_parent_id` int(11) NOT NULL DEFAULT '0',
  `pic_thumb` varchar(45) DEFAULT NULL,
  `pic_full` varchar(45) DEFAULT NULL,
  `cat_title` varchar(45) NOT NULL,
  `cat_titleen` varchar(45) DEFAULT NULL,
  `cat_titlefr` varchar(45) DEFAULT NULL,
  `preview` text,
  `previewen` text,
  `previewfr` text,
  `cat_order` int(11) NOT NULL DEFAULT '1',
  `cat_extra1` varchar(45) DEFAULT NULL,
  `cat_hot` tinyint(1) NOT NULL,
  `cat_enable` tinyint(1) NOT NULL DEFAULT '1',
  PRIMARY KEY (`cat_id`)
) ENGINE=InnoDB  DEFAULT CHARSET=utf8 AUTO_INCREMENT=22 ;

--
-- Dumping data for table `dos_module_gallery_cat`
--

INSERT INTO `dos_module_gallery_cat` (`cat_id`, `cat_parent_id`, `pic_thumb`, `pic_full`, `cat_title`, `cat_titleen`, `cat_titlefr`, `preview`, `previewen`, `previewfr`, `cat_order`, `cat_extra1`, `cat_hot`, `cat_enable`) VALUES
(17, 0, NULL, NULL, 'Đã tổ chức cưới', '', '', '', '', '', 1, NULL, 1, 1),
(18, 0, NULL, NULL, 'Sắp tới', '', '', '', '', '', 2, NULL, 1, 1),
(19, 17, 'image5.jpg', NULL, 'Binh - Minh', '', '', '', '', '', 3, NULL, 0, 1),
(20, 17, 'image3.jpg', NULL, 'Hong - Oanh', '', '', '', '', '', 4, NULL, 0, 1),
(21, 18, 'image1.jpg', NULL, 'Ong - Ba', '', '', '', '', '', 5, NULL, 0, 1);

-- --------------------------------------------------------

--
-- Table structure for table `dos_module_handbook`
--

CREATE TABLE IF NOT EXISTS `dos_module_handbook` (
  `record_id` int(11) NOT NULL AUTO_INCREMENT,
  `pic_thumb` varchar(45) DEFAULT NULL,
  `title` varchar(100) NOT NULL,
  `titleen` varchar(100) DEFAULT NULL,
  `titlefr` varchar(100) DEFAULT NULL,
  `preview` text NOT NULL,
  `previewen` text,
  `previewfr` text,
  `content` text NOT NULL,
  `contenten` text,
  `contentfr` text,
  `author` varchar(45) DEFAULT NULL,
  `hits` int(11) NOT NULL DEFAULT '1',
  `postdate` timestamp NULL DEFAULT CURRENT_TIMESTAMP,
  `record_order` int(11) NOT NULL DEFAULT '1',
  `record_type` tinyint(1) NOT NULL DEFAULT '0',
  `extra_field1` varchar(45) DEFAULT NULL,
  `extra_field2` varchar(45) DEFAULT NULL,
  `enable` tinyint(1) NOT NULL DEFAULT '1',
  `dos_module_handbook_cat_cat_id` int(11) NOT NULL,
  PRIMARY KEY (`record_id`),
  KEY `fk_dos_module_handbook_dos_module_handbook_cat` (`dos_module_handbook_cat_cat_id`)
) ENGINE=InnoDB  DEFAULT CHARSET=utf8 AUTO_INCREMENT=6 ;

--
-- Dumping data for table `dos_module_handbook`
--

INSERT INTO `dos_module_handbook` (`record_id`, `pic_thumb`, `title`, `titleen`, `titlefr`, `preview`, `previewen`, `previewfr`, `content`, `contenten`, `contentfr`, `author`, `hits`, `postdate`, `record_order`, `record_type`, `extra_field1`, `extra_field2`, `enable`, `dos_module_handbook_cat_cat_id`) VALUES
(5, NULL, 'Enter your replacement text here...', '', '', '&lt;p&gt;\r\n	Enter your replacement text here... Enter your replacement text here... Enter your replacement text here... Enter your replacement text here... Enter your replacement text here... Enter your replacement text here... Enter your replacement text here... Enter your replacement text here... Enter your replacement text here... Enter your replacement text here... Enter your replacement text here... Enter your replacement text here... Enter your replacement text here... Enter your replacement text here... &lt;/p&gt;\r\n', '', '', '&lt;p&gt;\r\n	Enter your replacement text here... Enter your replacement text here... Enter your replacement text here... Enter your replacement text here... Enter your replacement text here... Enter your replacement text here... Enter your replacement text here... Enter your replacement text here... Enter your replacement text here... Enter your replacement text here... Enter your replacement text here... Enter your replacement text here... Enter your replacement text here... Enter your replacement text here... &lt;/p&gt;\r\n&lt;p&gt;\r\n	Enter your replacement text here... Enter your replacement text here... Enter your replacement text here... Enter your replacement text here... Enter your replacement text here... Enter your replacement text here... Enter your replacement text here... Enter your replacement text here... Enter your replacement text here... Enter your replacement text here... Enter your replacement text here... Enter your replacement text here... Enter your replacement text here... Enter your replacement text here... &lt;/p&gt;\r\n', '', '', NULL, 1, '2011-09-12 03:46:55', 1, 0, NULL, NULL, 1, 14);

-- --------------------------------------------------------

--
-- Table structure for table `dos_module_handbook_cat`
--

CREATE TABLE IF NOT EXISTS `dos_module_handbook_cat` (
  `cat_id` int(11) NOT NULL AUTO_INCREMENT,
  `cat_parent_id` int(11) NOT NULL DEFAULT '0',
  `cat_title` varchar(45) NOT NULL,
  `cat_titleen` varchar(45) DEFAULT NULL,
  `cat_titlefr` varchar(45) DEFAULT NULL,
  `cat_order` int(11) NOT NULL DEFAULT '1',
  `cat_enable` tinyint(1) NOT NULL DEFAULT '1',
  PRIMARY KEY (`cat_id`)
) ENGINE=InnoDB  DEFAULT CHARSET=utf8 AUTO_INCREMENT=15 ;

--
-- Dumping data for table `dos_module_handbook_cat`
--

INSERT INTO `dos_module_handbook_cat` (`cat_id`, `cat_parent_id`, `cat_title`, `cat_titleen`, `cat_titlefr`, `cat_order`, `cat_enable`) VALUES
(14, 0, 'Danh mục', '', '', 1, 1);

-- --------------------------------------------------------

--
-- Table structure for table `dos_module_job`
--

CREATE TABLE IF NOT EXISTS `dos_module_job` (
  `record_id` int(11) NOT NULL AUTO_INCREMENT,
  `title` varchar(45) NOT NULL,
  `titleen` varchar(45) DEFAULT NULL,
  `titlefr` varchar(45) DEFAULT NULL,
  `content` text NOT NULL,
  `contenten` text,
  `contentfr` text,
  `pic_full` varchar(100) DEFAULT NULL,
  `hits` int(11) DEFAULT '1',
  `posted_date` timestamp NULL DEFAULT CURRENT_TIMESTAMP,
  `record_order` int(11) DEFAULT '1',
  `extra_field1` varchar(45) DEFAULT NULL,
  `extra_field2` varchar(45) DEFAULT NULL,
  `hot` tinyint(1) NOT NULL DEFAULT '0',
  `enable` tinyint(1) DEFAULT '1',
  PRIMARY KEY (`record_id`)
) ENGINE=InnoDB  DEFAULT CHARSET=utf8 AUTO_INCREMENT=17 ;

--
-- Dumping data for table `dos_module_job`
--

INSERT INTO `dos_module_job` (`record_id`, `title`, `titleen`, `titlefr`, `content`, `contenten`, `contentfr`, `pic_full`, `hits`, `posted_date`, `record_order`, `extra_field1`, `extra_field2`, `hot`, `enable`) VALUES
(16, 'test', '', '', '&lt;p&gt;\r\n	test&lt;/p&gt;\r\n', '', '', NULL, 105, '2011-09-12 07:49:51', 1, '', '', 0, 1);

-- --------------------------------------------------------

--
-- Table structure for table `dos_module_news`
--

CREATE TABLE IF NOT EXISTS `dos_module_news` (
  `record_id` int(11) NOT NULL AUTO_INCREMENT,
  `pic_thumb` varchar(45) DEFAULT NULL,
  `title` varchar(100) NOT NULL,
  `titleen` varchar(100) DEFAULT NULL,
  `titlefr` varchar(100) DEFAULT NULL,
  `titlekr` varchar(100) DEFAULT NULL,
  `preview` text NOT NULL,
  `previewen` text,
  `previewfr` text,
  `previewkr` text,
  `content` text NOT NULL,
  `contenten` text,
  `contentfr` text,
  `contentkr` text,
  `tag` varchar(100) NOT NULL,
  `description` varchar(250) NOT NULL,
  `author` varchar(45) DEFAULT NULL,
  `hits` int(11) NOT NULL DEFAULT '1',
  `postdate` timestamp NULL DEFAULT CURRENT_TIMESTAMP,
  `record_order` int(11) NOT NULL DEFAULT '1',
  `record_type` tinyint(1) NOT NULL DEFAULT '0',
  `extra_field1` varchar(45) DEFAULT NULL,
  `extra_field2` varchar(45) DEFAULT NULL,
  `enable` tinyint(1) NOT NULL DEFAULT '1',
  `dos_module_item_cat_cat_id` int(11) NOT NULL,
  PRIMARY KEY (`record_id`),
  KEY `fk_dos_module_news_dos_module_news_cat` (`dos_module_item_cat_cat_id`)
) ENGINE=InnoDB  DEFAULT CHARSET=utf8 AUTO_INCREMENT=9 ;

--
-- Dumping data for table `dos_module_news`
--

INSERT INTO `dos_module_news` (`record_id`, `pic_thumb`, `title`, `titleen`, `titlefr`, `titlekr`, `preview`, `previewen`, `previewfr`, `previewkr`, `content`, `contenten`, `contentfr`, `contentkr`, `tag`, `description`, `author`, `hits`, `postdate`, `record_order`, `record_type`, `extra_field1`, `extra_field2`, `enable`, `dos_module_item_cat_cat_id`) VALUES
(7, NULL, 'PHÁT HIỆN THAN ĐÁ CỔ NIÊN ĐẠI HƠN 4.000 NĂM', '', '', '', '<p style="text-align:justify;">\n	Trong đợt khai quật từ đầu năm 2009 đến nay tại di chỉ Bí Lấp và động Đông Trong II, đoàn khai quật khảo cổ học tại Vân Đồn (Quảng Ninh) phát hiện được 2 viên than đá cổ của tiền sử Hạ Long sử dụng, có niên đại khoảng 4.000 đến 4.200 năm.</p>\n', '', '', '', '<p style="text-align:justify;">\n	Trong đợt khai quật từ đầu năm 2009 đến nay tại di chỉ Bí Lấp và động Đông Trong II, đoàn khai quật khảo cổ học tại Vân Đồn (Quảng Ninh) phát hiện được 2 viên than đá cổ của tiền sử Hạ Long sử dụng, có niên đại khoảng 4.000 đến 4.200 năm.</p>\n<p>\n	 </p>\n<p style="text-align:justify;">\n	Than đá hình bình hành và hình thoi, có kích thước 4,5 (6,5) x 4,0 x 3,5 cm. Đây là những viên than được người tiền sử Hạ Long sử dụng như một loại đá quý chôn theo người chết.</p>\n<p style="text-align:justify;">\n	Đoàn khai quật khảo cổ học tại Vân Đồn xác định được ít nhất 7 ngôi mộ cổ tại địa điểm trên. Các di cốt trong mộ không được chôn theo tư thế giải phẫu, mà chỉ là những đống xương đã gãy vụn co cụm lại từng chỗ.<br /><br />\n	Các di cốt bao gồm những mảnh sọ, răng lẻ cùng nhiều xương chi khác. Hầu hết mộ táng này chôn cải táng, không có biên mộ, có táng tục chôn trong nồi vò gốm và chôn kèm theo đồ tùy táng là những công cụ lao động và đồ trang sức.<br /><br />\n	Tại ngôi mộ số 4, các nhà khảo cổ đã phát hiện thấy hai viên đá cổ nói trên.</p>\n<p>\n	 </p>\n<p style="text-align:justify;">\n	Ngoài ra trong mộ cũng có nhiều viên thổ hoàng, loại khoáng chất thường được người xưa nghiền nhỏ, hòa nước để bôi vào cơ thể người sống hoặc người chết với ý niệm làm đẹp cơ thể.<br /><br />\n	Dựa vào các di tích, di vật thu được dưới và trên bề mặt cho thấy đây là một di tích điển hình thuộc văn hóa Hạ Long nổi tiếng, phân bố rộng rãi ở miền duyên hải Đông Bắc./.</p>\n', '', '', '', 'phat-hien-than-da-co-nien-dai-hon-4000-nam', '', NULL, 2, '2012-02-08 10:15:20', 1, 0, NULL, NULL, 1, 13),
(8, NULL, 'THAN MIỀN NAM SẼ KHÔNG SỐT TRONG DỊP CUỐI NĂM', '', '', '', '<p>\n	Bên cạnh đó, lượng than khai thác tại ba mỏ than Đèo Nai, Cọc Sáu và Thống Nhất (dự kiến năm 2003 khoảng 270.000 tấn) chủ yếu dành để cung cấp cho Công ty phân đạm và hóa chất Hà Bắc khoảng 110.000 tấn/năm. Trong khi đó, tỷ lệ than cục thu hồi được từ khai thác than nguyên khai chỉ từ 3-5%, vì vậy Tổng Công ty Than Việt Nam không thể đáp ứng nhu cầu cho tất cả các khách hàng.</p>\n', '', '', '', '<p>\n	Phó Tổng Giám đốc Tổng Công ty Than Việt Nam, Ông Hoàng Văn Thái cho biết TCT đang tập trung khắc phục sự mất cân đối giữa cung và cầu ở các tỉnh phía Nam, đảm bảo cung ứng đủ than cho các cơ sở sản xuất, không để tình trạng \\"sốt\\" than miền nam vào dịp cuối năm đồng thời đã chỉ đạo các đơn vị trực thuộc chuyển gần 30.000 tấn than vào thị trường miền Nam. TCT than đang tiến hành cân đối nguồn hàng để đảm bảo cung cấp than cục cho sản xuất phân đạm và xuất khẩu theo đúng kế hoạch. Riêng công ty than Hà Tu, Núi Béo sẽ được hỗ trợ kinh phí vận chuyển (khoảng 10.000 đồng/tấn) để đảm bảo cung ứng than kịp thời cho các khách hàng nhận than bằng tàu biển.</p>\n<p style="text-align:justify;">\n	 </p>\n<p>\n	Thời gian gần đây, lợi dụng sự mất cân đối cục bộ giữa cung và cầu trong ngành than, các doanh nghiệp tư nhân đã đẩy giá bán than lên tới 1,4 triệu đồng/tấn, tăng 200-300.000 đồng/tấn so với quy định, khiến thị trường than mien nam đang lâm vào cơn \\"sốt\\". Theo ông Thái, nguyên nhân đầu tiên khiến nhu cầu than cục ở miền Nam trở nên căng thẳng, đặc biệt vào dịp cuối năm là do thời tiết xấu nên một số chuyến tàu nhận và giao hàng không đúng thời gian. Trong khi đó, nhiều tỉnh phía Nam đang bước vào mùa mưa, nhu cầu sao sấy nông sản, thực phẩm tăng lên, dẫn đến nhu cầu than tăng cao. Mặt khác theo yêu cầu của UBND TP.HCM, ngay từ đầu năm Công ty Chế biến và kinh doanh than mien nam phải bán gấp 20.000 tấn than tại kho Tân Cảng (có 1.500 tấn than cục) để di dời kho nên vào thời điểm này công ty không thể tiếp nhận than.</p>\n<p>\n	Bên cạnh đó, lượng than khai thác tại ba mỏ than Đèo Nai, Cọc Sáu và Thống Nhất (dự kiến năm 2003 khoảng 270.000 tấn) chủ yếu dành để cung cấp cho Công ty phân đạm và hóa chất Hà Bắc khoảng 110.000 tấn/năm. Trong khi đó, tỷ lệ than cục thu hồi được từ khai thác than nguyên khai chỉ từ 3-5%, vì vậy Tổng Công ty Than Việt Nam không thể đáp ứng nhu cầu cho tất cả các khách hàng.</p>\n<p style="text-align:justify;">\n	 </p>\n<p>\n	Theo TCT Than Việt Nam, nhu cầu tiêu thụ than ở các tỉnh phía Nam tăng khoảng 5%/năm. Riêng năm nay dự kiến tiêu thụ than ở phía Nam là 356.800 tấn, tăng trên 40% so với năm 2002. Trong đó, than cục là 107.900 tấn, tăng gần 47%. Các ngành sản xuất có mức tiêu thụ than lớn là xi măng (khoảng 200.000 tấn), sao sấy nông sản, thực phẩm, làm chất đốt sinh hoạt. Tính đến đầu tháng 10/2003, các đơn vị trên đã bán ra 80.300 tấn than cục.</p>\n<p>\n	Một nguyên nhân khác dẫn đến tình trạng khan hiếm than ở thị trường miền Nam là do TCT Than Việt Nam chỉ có 3 đơn vị chế biến và kinh doanh than là Công ty Chế biến và kinh doanh than miền Nam, Công ty Than Đông Bắc, Công ty Đầu tư, thương mại và dịch vụ, chiếm 50% thị phần. Phần còn lại là do các đơn vị kinh doanh than thuộc các thành phần kinh tế khác nắm giữ, nên khả năng quản lý và kiểm soát thị trường của CTC Than Việt Nam bị hạn chế.</p>\n', '', '', '', 'than-mien-nam-se-khong-sot-trong-dip-cuoi-nam', '', NULL, 3, '2012-02-08 10:19:24', 2, 0, NULL, NULL, 1, 13);

-- --------------------------------------------------------

--
-- Table structure for table `dos_module_news_cat`
--

CREATE TABLE IF NOT EXISTS `dos_module_news_cat` (
  `cat_id` int(11) NOT NULL AUTO_INCREMENT,
  `cat_parent_id` int(11) NOT NULL DEFAULT '0',
  `cat_title` varchar(45) NOT NULL,
  `cat_titleen` varchar(45) DEFAULT NULL,
  `cat_titlefr` varchar(45) DEFAULT NULL,
  `cat_titlekr` varchar(45) DEFAULT NULL,
  `tag` varchar(100) NOT NULL,
  `description` varchar(250) NOT NULL,
  `cat_order` int(11) NOT NULL DEFAULT '1',
  `cat_enable` tinyint(1) NOT NULL DEFAULT '1',
  PRIMARY KEY (`cat_id`)
) ENGINE=InnoDB  DEFAULT CHARSET=utf8 AUTO_INCREMENT=17 ;

--
-- Dumping data for table `dos_module_news_cat`
--

INSERT INTO `dos_module_news_cat` (`cat_id`, `cat_parent_id`, `cat_title`, `cat_titleen`, `cat_titlefr`, `cat_titlekr`, `tag`, `description`, `cat_order`, `cat_enable`) VALUES
(11, 0, 'Tuyển dụng', '', '', '', 'tuyen-dung', '', 1, 1),
(13, 0, 'Tin tức chuyên ngành', '', '', '', 'tin-tuc-chuyen-nganh', '', 3, 1),
(14, 0, 'Tin thế giới', '', '', '', 'tin-the-gioi', '', 4, 1),
(15, 0, 'Tin trong nước', '', '', '', 'tin-trong-nuoc', '', 5, 1),
(16, 0, 'Tin công ty', '', '', '', 'tin-cong-ty', '', 6, 1);

-- --------------------------------------------------------

--
-- Table structure for table `dos_module_payment`
--

CREATE TABLE IF NOT EXISTS `dos_module_payment` (
  `record_id` int(11) NOT NULL AUTO_INCREMENT,
  `title` varchar(45) DEFAULT NULL,
  `titleen` varchar(45) DEFAULT NULL,
  `titlefr` varchar(45) DEFAULT NULL,
  `content` text,
  `contenten` text,
  `contentfr` text,
  `hits` int(11) DEFAULT '1',
  `posted_date` timestamp NULL DEFAULT CURRENT_TIMESTAMP,
  `record_order` int(11) DEFAULT '1',
  `extra_field1` varchar(45) DEFAULT NULL,
  `extra_field2` varchar(45) DEFAULT NULL,
  `hot` tinyint(1) NOT NULL DEFAULT '0',
  `enable` tinyint(1) DEFAULT '1',
  PRIMARY KEY (`record_id`)
) ENGINE=InnoDB  DEFAULT CHARSET=utf8 AUTO_INCREMENT=4 ;

--
-- Dumping data for table `dos_module_payment`
--

INSERT INTO `dos_module_payment` (`record_id`, `title`, `titleen`, `titlefr`, `content`, `contenten`, `contentfr`, `hits`, `posted_date`, `record_order`, `extra_field1`, `extra_field2`, `hot`, `enable`) VALUES
(3, 'Thanh toán', '', '', '&lt;p&gt;\r\n	Bạn sẽ thanh toán 30% trước khi đến nhận phòng tại Resort.&lt;br /&gt;\r\n	Thanh toán qua tài khoản:&lt;/p&gt;\r\n&lt;p style=&quot;margin-left:40px;&quot;&gt;\r\n	Tên ngân hàng: Ngân hàng thương mại cổ phần Kỹ thương Việt Nam - TechComBank&lt;br /&gt;\r\n	Số Tài Khoản: 115 2006 2718 019&lt;br /&gt;\r\n	Chủ tài khoản: Công ty CP Cadasa.&lt;/p&gt;\r\n&lt;p&gt;\r\n	&lt;span style=&quot;color:rgb(255,0,0);&quot;&gt;Chúng tôi sẽ giữ chỗ bạn trong vòng 48h, Nếu bạn không đến nhận phòng hoặc chưa chuyển khoản 30%, hệ thống sẽ tự động xóa.&lt;/span&gt;&lt;/p&gt;\r\n', '', '', 1, '2011-06-26 16:53:41', 1, '', '', 0, 1);

-- --------------------------------------------------------

--
-- Table structure for table `dos_module_philosophy`
--

CREATE TABLE IF NOT EXISTS `dos_module_philosophy` (
  `record_id` int(11) NOT NULL AUTO_INCREMENT,
  `title` varchar(45) DEFAULT NULL,
  `titleen` varchar(45) DEFAULT NULL,
  `titlefr` varchar(45) DEFAULT NULL,
  `content` text,
  `contenten` text,
  `contentfr` text,
  `hits` int(11) DEFAULT '1',
  `posted_date` timestamp NULL DEFAULT CURRENT_TIMESTAMP,
  `record_order` int(11) DEFAULT '1',
  `extra_field1` varchar(45) DEFAULT NULL,
  `extra_field2` varchar(45) DEFAULT NULL,
  `hot` tinyint(1) NOT NULL DEFAULT '0',
  `enable` tinyint(1) DEFAULT '1',
  PRIMARY KEY (`record_id`)
) ENGINE=InnoDB  DEFAULT CHARSET=utf8 AUTO_INCREMENT=31 ;

--
-- Dumping data for table `dos_module_philosophy`
--

INSERT INTO `dos_module_philosophy` (`record_id`, `title`, `titleen`, `titlefr`, `content`, `contenten`, `contentfr`, `hits`, `posted_date`, `record_order`, `extra_field1`, `extra_field2`, `hot`, `enable`) VALUES
(29, 'Tieu de', '', '', '&lt;p&gt;\r\n	Chi tiet&lt;/p&gt;\r\n', '', '', 42, '2011-09-21 02:21:27', 1, '', '', 0, 1),
(30, 'testing', '', '', '&lt;p&gt;\r\n	Testing&lt;/p&gt;\r\n', '', '', 14, '2011-09-21 02:21:41', 2, '', '', 0, 1);

-- --------------------------------------------------------

--
-- Table structure for table `dos_module_product`
--

CREATE TABLE IF NOT EXISTS `dos_module_product` (
  `record_id` int(11) NOT NULL AUTO_INCREMENT,
  `postdate` timestamp NOT NULL DEFAULT CURRENT_TIMESTAMP,
  `pic_thumb` varchar(45) DEFAULT NULL,
  `pic_full` varchar(45) DEFAULT NULL,
  `pic_desc` varchar(1000) DEFAULT NULL,
  `title` varchar(100) NOT NULL,
  `titleen` varchar(100) DEFAULT NULL,
  `titlefr` varchar(100) DEFAULT NULL,
  `titlekr` varchar(100) DEFAULT NULL,
  `preview` text,
  `previewen` text,
  `previewfr` text,
  `previewkr` text,
  `detail` text NOT NULL,
  `detailen` text,
  `detailfr` text,
  `detailkr` text,
  `tag` varchar(100) NOT NULL,
  `description` varchar(250) NOT NULL,
  `hits` int(11) DEFAULT '0',
  `record_order` int(11) DEFAULT '1',
  `extra_field1` varchar(200) DEFAULT NULL,
  `extra_field2` varchar(200) DEFAULT NULL,
  `extra_field3` varchar(200) DEFAULT NULL,
  `extra_field4` varchar(200) DEFAULT NULL,
  `unit` int(11) NOT NULL DEFAULT '0',
  `hot` tinyint(1) DEFAULT '0',
  `specials` tinyint(1) NOT NULL DEFAULT '0',
  `enable` tinyint(1) DEFAULT '1',
  `dos_module_product_cat_cat_id` int(11) NOT NULL,
  PRIMARY KEY (`record_id`),
  KEY `fk_dos_module_product_dos_module_product_cat` (`dos_module_product_cat_cat_id`)
) ENGINE=InnoDB  DEFAULT CHARSET=utf8 AUTO_INCREMENT=27 ;

--
-- Dumping data for table `dos_module_product`
--

INSERT INTO `dos_module_product` (`record_id`, `postdate`, `pic_thumb`, `pic_full`, `pic_desc`, `title`, `titleen`, `titlefr`, `titlekr`, `preview`, `previewen`, `previewfr`, `previewkr`, `detail`, `detailen`, `detailfr`, `detailkr`, `tag`, `description`, `hits`, `record_order`, `extra_field1`, `extra_field2`, `extra_field3`, `extra_field4`, `unit`, `hot`, `specials`, `enable`, `dos_module_product_cat_cat_id`) VALUES
(16, '2011-10-29 07:27:39', 'images.jpg', NULL, NULL, 'CỤC 1', '', '', '', '<table border="1" cellpadding="1" cellspacing="1" style="width:500px;"><tbody><tr><td>\n				<p style="text-align:center;">\n					<strong>CỠ HẠT </strong></p>\n				<p style="text-align:center;">\n					(mm)</p>\n			</td>\n			<td>\n				<p style="text-align:center;">\n					<strong>NHIỆT LƯỢNG </strong></p>\n				<p style="text-align:center;">\n					(cal/g)</p>\n			</td>\n			<td>\n				<p style="text-align:center;">\n					<strong>ĐỘ TRO </strong></p>\n				<p style="text-align:center;">\n					(%)</p>\n			</td>\n		</tr><tr><td style="text-align:center;">\n				<p>\n					<strong>100 - 250</strong></p>\n			</td>\n			<td style="text-align:center;">\n				<strong>8.200 max</strong></td>\n			<td style="text-align:center;">\n				<strong>13 max</strong></td>\n		</tr></tbody></table><p>\n	 </p>\n<p>\n	 </p>\n<br /><p>\n	 </p>\n<p>\n	 </p>\n', '', '', '', '<table border="1" cellpadding="1" cellspacing="1" style="width:500px;"><tbody><tr><td>\n				<p style="text-align:center;">\n					<strong>CỠ HẠT </strong></p>\n				<p style="text-align:center;">\n					(mm)</p>\n			</td>\n			<td>\n				<p style="text-align:center;">\n					<strong>NHIỆT LƯỢNG </strong></p>\n				<p style="text-align:center;">\n					(cal/g)</p>\n			</td>\n			<td style="text-align:center;">\n				<p>\n					<strong>ĐỘ TRO </strong></p>\n				<p>\n					(%)</p>\n			</td>\n		</tr><tr><td style="text-align:center;">\n				<p>\n					<b>100 - 250</b></p>\n			</td>\n			<td style="text-align:center;">\n				<strong>8.200 max</strong></td>\n			<td style="text-align:center;">\n				<strong>13 max</strong></td>\n		</tr></tbody></table><p>\n	 </p>\n', '', '', '', 'cuc-1', '', 29, 1, '', '', '', '', 0, 0, 0, 1, 7),
(17, '2012-02-03 15:29:15', 'images-1.jpg', NULL, NULL, 'CỤC 1 LỞ', '', '', '', '<table border="1" cellpadding="1" cellspacing="1" style="width:500px;"><tbody><tr><td style="text-align:center;">\n				<p>\n					<strong>CỠ HẠT </strong></p>\n				<p>\n					<strong>(mm)</strong></p>\n			</td>\n			<td style="text-align:center;">\n				<p>\n					<strong>NHIỆT LƯỢNG </strong></p>\n				<p>\n					<strong>(cal/g)</strong></p>\n			</td>\n			<td style="text-align:center;">\n				<p>\n					<strong>ĐỘ TRO </strong></p>\n				<p>\n					<strong>(%)</strong></p>\n			</td>\n		</tr><tr><td style="text-align:center;">\n				<p>\n					<strong>100 - 150</strong></p>\n			</td>\n			<td style="text-align:center;">\n				<strong>8.200 max</strong></td>\n			<td style="text-align:center;">\n				<strong>13 max</strong></td>\n		</tr></tbody></table><p>\n	 </p>\n<br /><p>\n	 </p>\n<br /><p>\n	 </p>\n<br /><p>\n	 </p>\n', '', '', '', '<table border="1" cellpadding="1" cellspacing="1" style="width:500px;"><tbody><tr><td style="text-align:center;">\n				<p>\n					<strong>CỠ HẠT </strong></p>\n				<p>\n					(mm)</p>\n			</td>\n			<td style="text-align:center;">\n				<p>\n					<strong>NHIỆT LƯỢNG </strong></p>\n				<p>\n					(cal/g)</p>\n			</td>\n			<td style="text-align:center;">\n				<p>\n					<strong>ĐỘ TRO</strong></p>\n				<p>\n					(%)</p>\n			</td>\n		</tr><tr><td style="text-align:center;">\n				<p>\n					<strong>100 - 150</strong></p>\n			</td>\n			<td style="text-align:center;">\n				<strong>8.200 max</strong></td>\n			<td style="text-align:center;">\n				<strong>13 max</strong></td>\n		</tr></tbody></table><p>\n	 </p>\n<br /><p>\n	 </p>\n<br /><p>\n	 </p>\n<br /><p>\n	 </p>\n', '', '', '', 'cuc-1-lo', '', 8, 2, '', '', '', '', 0, 0, 0, 1, 7),
(19, '2012-02-08 09:31:49', 'images-25.jpg', NULL, NULL, 'CỤC 2', '', '', '', '<table border="1" cellpadding="1" cellspacing="1" style="width:500px;"><tbody><tr><td style="text-align:center;">\n				<p>\n					<strong>CỠ HẠT </strong></p>\n				<p>\n					<strong>(mm)</strong></p>\n			</td>\n			<td style="text-align:center;">\n				<p>\n					<strong>NHIỆT LƯỢNG </strong></p>\n				<p>\n					<strong>(cal/g)</strong></p>\n			</td>\n			<td style="text-align:center;">\n				<p>\n					<strong>ĐỘ TRO </strong></p>\n				<p>\n					<strong>(%)</strong></p>\n			</td>\n		</tr><tr><td style="text-align:center;">\n				<p>\n					<strong>50 - 100</strong></p>\n			</td>\n			<td style="text-align:center;">\n				<strong>8.200 max</strong></td>\n			<td style="text-align:center;">\n				<strong>13 max</strong></td>\n		</tr></tbody></table><p>\n	 </p>\n<br /><p>\n	 </p>\n<br /><p>\n	 </p>\n<br /><p>\n	 </p>\n', '', '', '', '<table border="1" cellpadding="1" cellspacing="1" style="width:500px;"><tbody><tr><td style="text-align:center;">\n				<strong>CỠ HẠT (mm)</strong></td>\n			<td style="text-align:center;">\n				<strong>NHIỆT LƯỢNG (cal/g)</strong></td>\n			<td style="text-align:center;">\n				<strong>ĐỘ TRO (%)</strong></td>\n		</tr><tr><td style="text-align:center;">\n				<p>\n					<strong>50 - 100</strong></p>\n			</td>\n			<td style="text-align:center;">\n				<strong>8.200 max</strong></td>\n			<td style="text-align:center;">\n				<strong>13 max</strong></td>\n		</tr></tbody></table><p>\n	 </p>\n<br /><p>\n	 </p>\n<br /><p>\n	 </p>\n<br /><p>\n	 </p>\n', '', '', '', 'cuc-2', '', 3, 3, '', '', '', '', 0, 0, 0, 1, 7),
(20, '2012-02-08 09:35:38', 'download.jpg', NULL, '', 'CỤC 3', '', '', '', '<table border="1" cellpadding="1" cellspacing="1" style="width:500px;"><tbody><tr><td style="text-align:center;">\n				<p>\n					<strong>CỠ HẠT </strong></p>\n				<p>\n					<strong>(mm)</strong></p>\n			</td>\n			<td style="text-align:center;">\n				<p>\n					<strong>NHIỆT LƯỢNG </strong></p>\n				<p>\n					<strong>(cal/g)</strong></p>\n			</td>\n			<td style="text-align:center;">\n				<p>\n					<strong>ĐỘ TRO</strong></p>\n				<p>\n					<strong>(%)</strong></p>\n			</td>\n		</tr><tr><td style="text-align:center;">\n				<strong>25 - 100</strong></td>\n			<td style="text-align:center;">\n				<p>\n					<strong>8.200 max</strong></p>\n			</td>\n			<td style="text-align:center;">\n				<strong>13 max</strong></td>\n		</tr></tbody></table><p>\n	 </p>\n<br /><p>\n	 </p>\n<br /><p>\n	 </p>\n<br /><p>\n	 </p>\n', '', '', '', '<table border="1" cellpadding="1" cellspacing="1" style="width:500px;"><tbody><tr><td style="text-align:center;">\n				<p>\n					<strong>CỠ HẠT </strong></p>\n				<p>\n					<strong>(mm)</strong></p>\n			</td>\n			<td style="text-align:center;">\n				<p>\n					<strong>NHIỆT LƯỢNG </strong></p>\n				<p>\n					<strong>(cal/g)</strong></p>\n			</td>\n			<td style="text-align:center;">\n				<p>\n					<strong>ĐỘ TRO</strong></p>\n				<p>\n					<strong>(%)</strong></p>\n			</td>\n		</tr><tr><td style="text-align:center;">\n				<p>\n					<strong>25 - 100</strong></p>\n			</td>\n			<td style="text-align:center;">\n				<strong>8.200 max</strong></td>\n			<td style="text-align:center;">\n				<strong>13 max</strong></td>\n		</tr></tbody></table><p>\n	 </p>\n<br /><p>\n	 </p>\n<br /><p>\n	 </p>\n<br /><p>\n	 </p>\n', '', '', '', 'cuc-3', '', 1, 4, '', '', '', '', 0, 0, 0, 1, 7),
(21, '2012-02-08 09:39:15', 'download-1.jpg', NULL, '', 'CÁM MIỂNG', '', '', '', '<table border="1" cellpadding="1" cellspacing="1" style="width:500px;"><tbody><tr><td style="text-align:center;">\n				<p>\n					<strong>CỠ HẠT </strong></p>\n				<p>\n					<strong>(mm)</strong></p>\n			</td>\n			<td style="text-align:center;">\n				<p>\n					<strong>NHIỆT LƯỢNG </strong></p>\n				<p>\n					<strong>(cal/g)</strong></p>\n			</td>\n			<td style="text-align:center;">\n				<p>\n					<strong>ĐỘ TRO</strong></p>\n				<p>\n					<strong>(%)</strong></p>\n			</td>\n		</tr><tr><td style="text-align:center;">\n				<p>\n					<strong>0 - 15</strong></p>\n			</td>\n			<td style="text-align:center;">\n				<strong>7.500 max</strong></td>\n			<td style="text-align:center;">\n				<strong>13 max</strong></td>\n		</tr></tbody></table><p>\n	 </p>\n<br /><p>\n	 </p>\n<br /><p>\n	 </p>\n', '', '', '', '<table border="1" cellpadding="1" cellspacing="1" style="width:500px;"><tbody><tr><td style="text-align:center;">\n				<p>\n					<strong>CỠ HẠT </strong></p>\n				<p>\n					<strong>(mm)</strong></p>\n			</td>\n			<td style="text-align:center;">\n				<p>\n					<strong>NHIỆT LƯỢNG </strong></p>\n				<p>\n					<strong>(cal/g)</strong></p>\n			</td>\n			<td style="text-align:center;">\n				<p>\n					<strong>ĐỘ TRO </strong></p>\n				<p>\n					<strong>(%)</strong></p>\n			</td>\n		</tr><tr><td style="text-align:center;">\n				<strong>0 - 15</strong></td>\n			<td style="text-align:center;">\n				<p>\n					<strong>7.500 max</strong></p>\n			</td>\n			<td style="text-align:center;">\n				<strong>13 max</strong></td>\n		</tr></tbody></table><p>\n	 </p>\n<br /><br /><p>\n	 </p>\n<br /><p>\n	 </p>\n<br /><p>\n	 </p>\n', '', '', '', 'cam-mieng', '', 2, 5, '', '', '', '', 0, 0, 0, 1, 11),
(22, '2012-02-08 09:44:31', 'download-2.jpg', NULL, '', 'CÁM 3A', '', '', '', '<p style="text-align:center;">\n	<strong>CÁM 3A</strong></p>\n<table border="1" cellpadding="1" cellspacing="1" style="margin-left:auto;margin-right:auto;width:500px;"><tbody><tr><td style="text-align:center;">\n				<strong>CỠ HẠT (mm)</strong></td>\n			<td style="text-align:center;">\n				<strong>NHIỆT LƯỢNG (cal/g)</strong></td>\n			<td style="text-align:center;">\n				<strong>ĐỘ TRO (%)</strong></td>\n		</tr><tr><td style="text-align:center;">\n				<strong>0 - 15</strong></td>\n			<td style="text-align:center;">\n				<strong>7.350 max</strong></td>\n			<td style="text-align:center;">\n				<strong>13 max</strong></td>\n		</tr></tbody></table><p style="text-align:center;">\n	 </p>\n<p>\n	 </p>\n<br /><p>\n	 </p>\n', '', '', '', '<p style="text-align:center;">\n	<strong>CÁM 3A</strong></p>\n<table border="1" cellpadding="1" cellspacing="1" style="margin-left:auto;margin-right:auto;width:500px;"><tbody><tr><td style="text-align:center;">\n				<strong>CỠ HẠT (mm)</strong></td>\n			<td style="text-align:center;">\n				<strong>NHIỆT LƯỢNG (cal/g)</strong></td>\n			<td style="text-align:center;">\n				<strong>ĐỘ TRO (%)</strong></td>\n		</tr><tr><td style="text-align:center;">\n				<strong>0 - 15</strong></td>\n			<td style="text-align:center;">\n				<strong>7.350 max</strong></td>\n			<td style="text-align:center;">\n				<strong>13 max</strong></td>\n		</tr></tbody></table><p>\n	 </p>\n<p>\n	<br />\n	  <br />\n	 </p>\n', '', '', '', 'cam-3a', '', 0, 6, '', '', '', '', 0, 0, 0, 1, 11),
(23, '2012-02-08 09:44:31', 'download-3.jpg', NULL, NULL, 'CÁM 3B', '', '', '', '<p style="text-align:center;">\n	<strong>CÁM 3B</strong></p>\n<table border="1" cellpadding="1" cellspacing="1" style="margin-left:auto;margin-right:auto;width:500px;"><tbody><tr><td style="text-align:center;">\n				<strong>CỠ HẠT (mm)</strong></td>\n			<td style="text-align:center;">\n				<strong>NHIỆT LƯỢNG (cal/g)</strong></td>\n			<td style="text-align:center;">\n				<strong>ĐỘ TRO (%)</strong></td>\n		</tr><tr><td style="text-align:center;">\n				<strong>0 - 15</strong></td>\n			<td style="text-align:center;">\n				<strong>7.050 max</strong></td>\n			<td style="text-align:center;">\n				<strong>13 max</strong></td>\n		</tr></tbody></table><p>\n	 </p>\n', '', '', '', '<p style="text-align:center;">\n	<strong>CÁM 3B</strong></p>\n<table border="1" cellpadding="1" cellspacing="1" style="margin-left:auto;margin-right:auto;width:500px;"><tbody><tr><td style="text-align:center;">\n				<strong>CỠ HẠT (mm)</strong></td>\n			<td style="text-align:center;">\n				<strong>NHIỆT LƯỢNG (cal/g)</strong></td>\n			<td style="text-align:center;">\n				<strong>ĐỘ TRO (%)</strong></td>\n		</tr><tr><td style="text-align:center;">\n				<strong>0 - 15</strong></td>\n			<td style="text-align:center;">\n				<strong>7.050 max</strong></td>\n			<td style="text-align:center;">\n				<strong>13 max</strong></td>\n		</tr></tbody></table><p>\n	 </p>\n<p>\n	<br />\n	  <br />\n	 </p>\n', '', '', '', 'cam-3b', '', 1, 7, '', '', '', '', 0, 0, 0, 1, 11),
(24, '2012-02-08 09:44:32', 'download-41.jpg', NULL, NULL, 'CÁM 4A  ', '', '', '', '<p style="text-align:center;">\n	<strong>CÁM 4A</strong></p>\n<table border="1" cellpadding="1" cellspacing="1" style="margin-left:auto;margin-right:auto;width:500px;"><tbody><tr><td style="text-align:center;">\n				<strong>CỠ HẠT (mm)</strong></td>\n			<td style="text-align:center;">\n				<strong>NHIỆT LƯỢNG (cal/g)</strong></td>\n			<td style="text-align:center;">\n				<strong>ĐỘ TRO (%)</strong></td>\n		</tr><tr><td style="text-align:center;">\n				<strong>0 - 15</strong></td>\n			<td style="text-align:center;">\n				<strong>6.560 max</strong></td>\n			<td style="text-align:center;">\n				<strong>22 max</strong></td>\n		</tr></tbody></table><p style="text-align:center;">\n	 </p>\n<p>\n	 </p>\n<br /><p>\n	 </p>\n<p>\n	 </p>\n', '', '', '', '<p style="text-align:center;">\n	<strong>CÁM 4A</strong></p>\n<table border="1" cellpadding="1" cellspacing="1" style="margin-left:auto;margin-right:auto;width:500px;"><tbody><tr><td style="text-align:center;">\n				<strong>CỠ HẠT (mm)</strong></td>\n			<td style="text-align:center;">\n				<strong>NHIỆT LƯỢNG (cal/g)</strong></td>\n			<td style="text-align:center;">\n				<strong>ĐỘ TRO (%)</strong></td>\n		</tr><tr><td style="text-align:center;">\n				<strong>0 - 15</strong></td>\n			<td style="text-align:center;">\n				<strong>6.560 max</strong></td>\n			<td style="text-align:center;">\n				<strong>22 max</strong></td>\n		</tr></tbody></table><p>\n	 </p>\n<p>\n	<br />\n	  <br />\n	 </p>\n', '', '', '', 'cam-4a', '', 21, 8, '', '', '', '', 0, 0, 0, 1, 11),
(25, '2012-02-08 09:54:02', 'images-4.jpg', NULL, '', 'CÁM 4B', '', '', '', '<p style="text-align:center;">\n	<strong>CÁM 4B</strong></p>\n<table border="1" cellpadding="1" cellspacing="1" style="margin-left:auto;margin-right:auto;width:500px;"><tbody><tr><td style="text-align:center;">\n				<strong>CỠ HẠT (mm)</strong></td>\n			<td style="text-align:center;">\n				<strong>NHIỆT LƯỢNG (cal/g)</strong></td>\n			<td style="text-align:center;">\n				<strong>ĐỘ TRO (%)</strong></td>\n		</tr><tr><td style="text-align:center;">\n				<strong>0 - 15</strong></td>\n			<td style="text-align:center;">\n				<strong>6.050 max</strong></td>\n			<td style="text-align:center;">\n				<strong>26 max</strong></td>\n		</tr></tbody></table><p>\n	 </p>\n<p>\n	 </p>\n<br /><p>\n	 </p>\n', '', '', '', '<p style="text-align:center;">\n	<strong>CÁM 4B</strong></p>\n<table border="1" cellpadding="1" cellspacing="1" style="margin-left:auto;margin-right:auto;width:500px;"><tbody><tr><td style="text-align:center;">\n				<p>\n					<strong>CỠ HẠT </strong></p>\n				<p>\n					<strong>(mm)</strong></p>\n			</td>\n			<td style="text-align:center;">\n				<p>\n					<strong>NHIỆT LƯỢNG </strong></p>\n				<p>\n					<strong>(cal/g)</strong></p>\n			</td>\n			<td style="text-align:center;">\n				<p>\n					<strong>ĐỘ TRO</strong></p>\n				<p>\n					<strong>(%)</strong></p>\n			</td>\n		</tr><tr><td style="text-align:center;">\n				<p>\n					<strong>0 - 15</strong></p>\n			</td>\n			<td style="text-align:center;">\n				<strong>6.050 max </strong></td>\n			<td style="text-align:center;">\n				<strong>26 max</strong></td>\n		</tr></tbody></table><p>\n	 </p>\n<p>\n	 </p>\n<p>\n	  <br />\n	 </p>\n', '', '', '', 'cam-4b', '', 2, 9, '', '', '', '', 0, 0, 0, 1, 11),
(26, '2012-02-08 09:57:59', 'images-5.jpg', NULL, '', 'CÁM 5', '', '', '', '<p style="text-align:center;">\n	<strong>CÁM 5</strong></p>\n<table border="1" cellpadding="1" cellspacing="1" style="margin-left:auto;margin-right:auto;width:500px;"><tbody><tr><td style="text-align:center;">\n				<strong>CỠ HẠT (mm)</strong></td>\n			<td style="text-align:center;">\n				<strong>NHIỆT LƯỢNG (cal/g)</strong></td>\n			<td style="text-align:center;">\n				<strong>ĐỘ TRO (%)</strong></td>\n		</tr><tr><td style="text-align:center;">\n				<strong>0 - 15</strong></td>\n			<td style="text-align:center;">\n				<strong>5.500 max</strong></td>\n			<td style="text-align:center;">\n				<strong>36 max</strong></td>\n		</tr></tbody></table><p>\n	 </p>\n<br /><p>\n	 </p>\n<br /><p>\n	 </p>\n', '', '', '', '<p style="text-align:center;">\n	<strong>CÁM 5</strong></p>\n<table border="1" cellpadding="1" cellspacing="1" style="margin-left:auto;margin-right:auto;width:500px;"><tbody><tr><td style="text-align:center;">\n				<p>\n					<strong>CỠ HẠT </strong></p>\n				<p>\n					<strong>(mm) </strong></p>\n			</td>\n			<td style="text-align:center;">\n				<p>\n					<strong>NHIỆT LƯỢNG </strong></p>\n				<p>\n					<strong>(cal/g)</strong></p>\n			</td>\n			<td style="text-align:center;">\n				<p>\n					<strong>ĐỘ TRO </strong></p>\n				<p>\n					<strong>(%)</strong></p>\n			</td>\n		</tr><tr><td style="text-align:center;">\n				<p>\n					<strong>0 - 15</strong></p>\n			</td>\n			<td style="text-align:center;">\n				<strong>5.500 max</strong></td>\n			<td style="text-align:center;">\n				<strong>36 max</strong></td>\n		</tr></tbody></table><p>\n	 </p>\n', '', '', '', 'cam-5', '', 0, 10, '', '', '', '', 0, 0, 0, 1, 11);

-- --------------------------------------------------------

--
-- Table structure for table `dos_module_product_cat`
--

CREATE TABLE IF NOT EXISTS `dos_module_product_cat` (
  `cat_id` int(11) NOT NULL AUTO_INCREMENT,
  `cat_parent_id` int(11) NOT NULL DEFAULT '0',
  `pic_thumb` varchar(45) DEFAULT NULL,
  `pic_full` varchar(45) DEFAULT NULL,
  `pic_desc` varchar(1000) DEFAULT NULL,
  `cat_title` varchar(45) NOT NULL,
  `cat_titleen` varchar(45) DEFAULT NULL,
  `cat_titlefr` varchar(45) DEFAULT NULL,
  `cat_titlekr` varchar(45) DEFAULT NULL,
  `tag` varchar(100) NOT NULL,
  `description` varchar(250) NOT NULL,
  `preview` text,
  `previewen` text,
  `previewfr` text,
  `previewkr` text,
  `cat_order` int(11) NOT NULL DEFAULT '1',
  `cat_extra1` varchar(45) DEFAULT NULL,
  `cat_extra2` varchar(45) DEFAULT NULL,
  `cat_extra3` varchar(45) DEFAULT NULL,
  `cat_extra4` varchar(45) DEFAULT NULL,
  `cat_enable` tinyint(1) NOT NULL DEFAULT '1',
  PRIMARY KEY (`cat_id`)
) ENGINE=InnoDB  DEFAULT CHARSET=utf8 AUTO_INCREMENT=12 ;

--
-- Dumping data for table `dos_module_product_cat`
--

INSERT INTO `dos_module_product_cat` (`cat_id`, `cat_parent_id`, `pic_thumb`, `pic_full`, `pic_desc`, `cat_title`, `cat_titleen`, `cat_titlefr`, `cat_titlekr`, `tag`, `description`, `preview`, `previewen`, `previewfr`, `previewkr`, `cat_order`, `cat_extra1`, `cat_extra2`, `cat_extra3`, `cat_extra4`, `cat_enable`) VALUES
(7, 0, NULL, NULL, NULL, 'THAN CỤC', '', '', '', 'than-cuc', '', '', '', '', '', 2, '', '', '', '', 1),
(11, 0, NULL, NULL, '', 'THAN CÁM', '', '', '', 'than-cam', '', '', '', '', '', 3, '', '', '', '', 1);

-- --------------------------------------------------------

--
-- Table structure for table `dos_module_promotions`
--

CREATE TABLE IF NOT EXISTS `dos_module_promotions` (
  `record_id` int(11) NOT NULL AUTO_INCREMENT,
  `title` varchar(45) DEFAULT NULL,
  `titleen` varchar(45) DEFAULT NULL,
  `titlefr` varchar(45) DEFAULT NULL,
  `content` text,
  `contenten` text,
  `contentfr` text,
  `pic_full` varchar(100) DEFAULT NULL,
  `hits` int(11) DEFAULT '1',
  `posted_date` timestamp NULL DEFAULT CURRENT_TIMESTAMP,
  `record_order` int(11) DEFAULT '1',
  `extra_field1` varchar(45) DEFAULT NULL,
  `extra_field2` varchar(45) DEFAULT NULL,
  `hot` tinyint(1) NOT NULL DEFAULT '0',
  `enable` tinyint(1) DEFAULT '1',
  PRIMARY KEY (`record_id`)
) ENGINE=InnoDB  DEFAULT CHARSET=utf8 AUTO_INCREMENT=4 ;

--
-- Dumping data for table `dos_module_promotions`
--

INSERT INTO `dos_module_promotions` (`record_id`, `title`, `titleen`, `titlefr`, `content`, `contenten`, `contentfr`, `pic_full`, `hits`, `posted_date`, `record_order`, `extra_field1`, `extra_field2`, `hot`, `enable`) VALUES
(2, 'Nội bật', '', '', '&lt;p&gt;\r\n	Bật quá&lt;/p&gt;\r\n', '', '', '2s4.jpg', 107, '2011-09-12 08:02:16', 1, '', '', 1, 1),
(3, 'test', '', '', '&lt;p&gt;\r\n	test&lt;/p&gt;\r\n', '', '', NULL, 10, '2011-09-12 08:35:13', 2, '', '', 0, 1);

-- --------------------------------------------------------

--
-- Table structure for table `dos_module_services`
--

CREATE TABLE IF NOT EXISTS `dos_module_services` (
  `record_id` int(11) NOT NULL AUTO_INCREMENT,
  `title` varchar(45) DEFAULT NULL,
  `titleen` varchar(45) DEFAULT NULL,
  `titlefr` varchar(45) DEFAULT NULL,
  `titlekr` varchar(45) DEFAULT NULL,
  `content` text,
  `contenten` text,
  `contentfr` text,
  `contentkr` text,
  `tag` varchar(100) NOT NULL,
  `description` varchar(250) NOT NULL,
  `hits` int(11) DEFAULT '1',
  `posted_date` timestamp NULL DEFAULT CURRENT_TIMESTAMP,
  `record_order` int(11) DEFAULT '1',
  `extra_field1` varchar(45) DEFAULT NULL,
  `extra_field2` varchar(45) DEFAULT NULL,
  `hot` tinyint(1) NOT NULL DEFAULT '0',
  `enable` tinyint(1) DEFAULT '1',
  PRIMARY KEY (`record_id`)
) ENGINE=InnoDB  DEFAULT CHARSET=utf8 AUTO_INCREMENT=32 ;

--
-- Dumping data for table `dos_module_services`
--

INSERT INTO `dos_module_services` (`record_id`, `title`, `titleen`, `titlefr`, `titlekr`, `content`, `contenten`, `contentfr`, `contentkr`, `tag`, `description`, `hits`, `posted_date`, `record_order`, `extra_field1`, `extra_field2`, `hot`, `enable`) VALUES
(30, 'Dịch vụ giao hàng', '', '', '', '<p>\n	Chúng tôi có dịch vụ giao hàng tận nơi với số lượng lớn cho quý khách ...</p>\n', '', '', '', 'dich-vu-giao-hang', '', 18, '2012-02-02 16:56:53', 1, '', '', 0, 1),
(31, 'Cung cấp than đá các loại', '', '', '', '<p>\n	Chuyên cung cấp các loại than trong và ngoài nước ...</p>\n', '<p>\n	asd</p>\n', '', '<p>\n	asd</p>\n', 'cung-cap-than-da-cac-loai', '', 4, '2012-02-08 07:18:32', 2, '', '', 0, 1);

-- --------------------------------------------------------

--
-- Table structure for table `dos_module_studies`
--

CREATE TABLE IF NOT EXISTS `dos_module_studies` (
  `record_id` int(11) NOT NULL AUTO_INCREMENT,
  `pic_thumb` varchar(45) DEFAULT NULL,
  `title` varchar(100) NOT NULL,
  `titleen` varchar(100) DEFAULT NULL,
  `titlefr` varchar(100) DEFAULT NULL,
  `preview` text NOT NULL,
  `previewen` text,
  `previewfr` text,
  `content` text NOT NULL,
  `contenten` text,
  `contentfr` text,
  `author` varchar(45) DEFAULT NULL,
  `hits` int(11) NOT NULL DEFAULT '1',
  `postdate` timestamp NULL DEFAULT CURRENT_TIMESTAMP,
  `record_order` int(11) NOT NULL DEFAULT '1',
  `record_type` tinyint(1) NOT NULL DEFAULT '0',
  `extra_field1` varchar(45) DEFAULT NULL,
  `extra_field2` varchar(45) DEFAULT NULL,
  `enable` tinyint(1) NOT NULL DEFAULT '1',
  `dos_module_studies_cat_cat_id` int(11) NOT NULL,
  PRIMARY KEY (`record_id`),
  KEY `fk_dos_module_studies_dos_module_studies_cat` (`dos_module_studies_cat_cat_id`)
) ENGINE=InnoDB  DEFAULT CHARSET=utf8 AUTO_INCREMENT=4 ;

--
-- Dumping data for table `dos_module_studies`
--

INSERT INTO `dos_module_studies` (`record_id`, `pic_thumb`, `title`, `titleen`, `titlefr`, `preview`, `previewen`, `previewfr`, `content`, `contenten`, `contentfr`, `author`, `hits`, `postdate`, `record_order`, `record_type`, `extra_field1`, `extra_field2`, `enable`, `dos_module_studies_cat_cat_id`) VALUES
(1, 'image4.jpg', 'asdas', '', '', '&lt;p&gt;\r\n	asdas&lt;/p&gt;\r\n', '', '', '&lt;p&gt;\r\n	asdasdasd&lt;/p&gt;\r\n', '', '', NULL, 1, '2011-09-22 13:26:58', 1, 0, NULL, NULL, 1, 12),
(2, 'image3.jpg', 'asdasd', '', '', '&lt;p&gt;\r\n	asdasas dasdas dsdadas&lt;/p&gt;\r\n', '', '', '&lt;p&gt;\r\n	adadasd&lt;/p&gt;\r\n', '', '', NULL, 1, '2011-09-22 13:27:05', 1, 0, NULL, NULL, 1, 12),
(3, NULL, 'sasafass', '', '', '&lt;p&gt;\r\n	asfasfasf&lt;/p&gt;\r\n', '', '', '&lt;p&gt;\r\n	asfasfsafs&lt;/p&gt;\r\n', '', '', NULL, 1, '2011-09-24 03:24:01', 1, 0, NULL, NULL, 1, 12);

-- --------------------------------------------------------

--
-- Table structure for table `dos_module_studies_cat`
--

CREATE TABLE IF NOT EXISTS `dos_module_studies_cat` (
  `cat_id` int(11) NOT NULL AUTO_INCREMENT,
  `cat_parent_id` int(11) NOT NULL DEFAULT '0',
  `cat_title` varchar(45) NOT NULL,
  `cat_titleen` varchar(45) DEFAULT NULL,
  `cat_titlefr` varchar(45) DEFAULT NULL,
  `cat_order` int(11) NOT NULL DEFAULT '1',
  `cat_enable` tinyint(1) NOT NULL DEFAULT '1',
  PRIMARY KEY (`cat_id`)
) ENGINE=InnoDB  DEFAULT CHARSET=utf8 AUTO_INCREMENT=13 ;

--
-- Dumping data for table `dos_module_studies_cat`
--

INSERT INTO `dos_module_studies_cat` (`cat_id`, `cat_parent_id`, `cat_title`, `cat_titleen`, `cat_titlefr`, `cat_order`, `cat_enable`) VALUES
(12, 0, 'test 123', '', '', 1, 1);

-- --------------------------------------------------------

--
-- Table structure for table `dos_module_support`
--

CREATE TABLE IF NOT EXISTS `dos_module_support` (
  `support_id` int(11) NOT NULL AUTO_INCREMENT,
  `support_name` varchar(45) DEFAULT NULL,
  `support_phone` varchar(45) DEFAULT NULL,
  `support_value` varchar(45) NOT NULL,
  `support_order` smallint(6) NOT NULL DEFAULT '1',
  `support_type` varchar(45) NOT NULL DEFAULT 'yahoo',
  `support_part` tinyint(1) NOT NULL DEFAULT '0',
  PRIMARY KEY (`support_id`)
) ENGINE=InnoDB  DEFAULT CHARSET=utf8 AUTO_INCREMENT=52 ;

--
-- Dumping data for table `dos_module_support`
--

INSERT INTO `dos_module_support` (`support_id`, `support_name`, `support_phone`, `support_value`, `support_order`, `support_type`, `support_part`) VALUES
(50, '0987 001 001', '', 'hongvietsoft', 1, 'yahoo', 1),
(51, '0929 001 001', '', 'thanhansoft', 1, 'yahoo', 1);

-- --------------------------------------------------------

--
-- Table structure for table `dos_module_termsofuse`
--

CREATE TABLE IF NOT EXISTS `dos_module_termsofuse` (
  `record_id` int(11) NOT NULL AUTO_INCREMENT,
  `title` varchar(45) DEFAULT NULL,
  `titleen` varchar(45) DEFAULT NULL,
  `titlefr` varchar(45) DEFAULT NULL,
  `content` text,
  `contenten` text,
  `contentfr` text,
  `hits` int(11) DEFAULT '1',
  `posted_date` timestamp NULL DEFAULT CURRENT_TIMESTAMP,
  `record_order` int(11) DEFAULT '1',
  `extra_field1` varchar(45) DEFAULT NULL,
  `extra_field2` varchar(45) DEFAULT NULL,
  `hot` tinyint(1) NOT NULL DEFAULT '0',
  `enable` tinyint(1) DEFAULT '1',
  PRIMARY KEY (`record_id`)
) ENGINE=InnoDB  DEFAULT CHARSET=utf8 AUTO_INCREMENT=31 ;

--
-- Dumping data for table `dos_module_termsofuse`
--

INSERT INTO `dos_module_termsofuse` (`record_id`, `title`, `titleen`, `titlefr`, `content`, `contenten`, `contentfr`, `hits`, `posted_date`, `record_order`, `extra_field1`, `extra_field2`, `hot`, `enable`) VALUES
(29, 'Them moi', '', '', '&lt;p&gt;\r\n	Moi them&lt;/p&gt;\r\n', '', '', 37, '2011-09-21 02:34:27', 1, '', '', 0, 1),
(30, 'Testing', '', '', '&lt;p&gt;\r\n	123 Nam sau bay tam&lt;/p&gt;\r\n', '', '', 9, '2011-09-21 02:34:40', 2, '', '', 0, 1);

-- --------------------------------------------------------

--
-- Table structure for table `dos_module_video`
--

CREATE TABLE IF NOT EXISTS `dos_module_video` (
  `record_id` int(11) NOT NULL AUTO_INCREMENT,
  `postdate` timestamp NOT NULL DEFAULT CURRENT_TIMESTAMP,
  `title` varchar(45) NOT NULL,
  `titleen` varchar(45) DEFAULT NULL,
  `titlefr` varchar(45) DEFAULT NULL,
  `pic_full` varchar(100) DEFAULT NULL,
  `url` varchar(100) NOT NULL,
  `record_order` int(11) DEFAULT '1',
  `hits` int(11) DEFAULT '1',
  `extra_field1` varchar(45) DEFAULT NULL,
  `extra_field2` varchar(45) DEFAULT NULL,
  `hot` tinyint(1) NOT NULL DEFAULT '0',
  `enable` tinyint(1) NOT NULL DEFAULT '1',
  `dos_module_video_cat_cat_id` int(11) NOT NULL,
  PRIMARY KEY (`record_id`),
  KEY `fk_dos_module_video_dos_module_video_cat` (`dos_module_video_cat_cat_id`)
) ENGINE=InnoDB  DEFAULT CHARSET=utf8 AUTO_INCREMENT=3 ;

--
-- Dumping data for table `dos_module_video`
--

INSERT INTO `dos_module_video` (`record_id`, `postdate`, `title`, `titleen`, `titlefr`, `pic_full`, `url`, `record_order`, `hits`, `extra_field1`, `extra_field2`, `hot`, `enable`, `dos_module_video_cat_cat_id`) VALUES
(2, '2011-09-08 15:16:23', 'Video file', '', '', NULL, 'http://www.youtube.com/watch?v=0Y9qP8xz4lE', 1, 1, NULL, NULL, 0, 1, 5);

-- --------------------------------------------------------

--
-- Table structure for table `dos_module_video_cat`
--

CREATE TABLE IF NOT EXISTS `dos_module_video_cat` (
  `cat_id` int(11) NOT NULL AUTO_INCREMENT,
  `cat_parent_id` int(11) DEFAULT '0',
  `pic_thumb` varchar(45) DEFAULT NULL,
  `cat_title` varchar(45) NOT NULL,
  `cat_titleen` varchar(45) DEFAULT NULL,
  `cat_titlefr` varchar(45) DEFAULT NULL,
  `cat_order` varchar(45) DEFAULT '1',
  `cat_enable` tinyint(1) NOT NULL DEFAULT '1',
  PRIMARY KEY (`cat_id`)
) ENGINE=InnoDB  DEFAULT CHARSET=utf8 AUTO_INCREMENT=6 ;

--
-- Dumping data for table `dos_module_video_cat`
--

INSERT INTO `dos_module_video_cat` (`cat_id`, `cat_parent_id`, `pic_thumb`, `cat_title`, `cat_titleen`, `cat_titlefr`, `cat_order`, `cat_enable`) VALUES
(4, 0, NULL, 'Video', NULL, NULL, '1', 1),
(5, 4, NULL, 'Sub video', NULL, NULL, '2', 1);

-- --------------------------------------------------------

--
-- Table structure for table `dos_module_weblink`
--

CREATE TABLE IF NOT EXISTS `dos_module_weblink` (
  `record_id` int(11) unsigned NOT NULL AUTO_INCREMENT,
  `cat_id` smallint(5) unsigned DEFAULT NULL,
  `title` varchar(255) DEFAULT NULL,
  `titleen` varchar(255) DEFAULT NULL,
  `titlefr` varchar(255) DEFAULT NULL,
  `url` varchar(255) NOT NULL,
  `hits` int(11) unsigned NOT NULL DEFAULT '0',
  `posted_date` timestamp NULL DEFAULT CURRENT_TIMESTAMP,
  `record_order` int(11) unsigned NOT NULL DEFAULT '1',
  `enable` tinyint(1) unsigned NOT NULL DEFAULT '1',
  PRIMARY KEY (`record_id`)
) ENGINE=InnoDB  DEFAULT CHARSET=utf8 AUTO_INCREMENT=4 ;

--
-- Dumping data for table `dos_module_weblink`
--

INSERT INTO `dos_module_weblink` (`record_id`, `cat_id`, `title`, `titleen`, `titlefr`, `url`, `hits`, `posted_date`, `record_order`, `enable`) VALUES
(3, NULL, 'Web', '', '', 'http://grouplaptrinh.com', 0, '2011-10-15 02:58:29', 1, 1);

-- --------------------------------------------------------

--
-- Table structure for table `dos_module_wedding`
--

CREATE TABLE IF NOT EXISTS `dos_module_wedding` (
  `record_id` int(11) NOT NULL AUTO_INCREMENT,
  `title` varchar(45) DEFAULT NULL,
  `titleen` varchar(45) DEFAULT NULL,
  `titlefr` varchar(45) DEFAULT NULL,
  `content` text,
  `contenten` text,
  `contentfr` text,
  `hits` int(11) DEFAULT '1',
  `posted_date` timestamp NULL DEFAULT CURRENT_TIMESTAMP,
  `record_order` int(11) DEFAULT '1',
  `extra_field1` varchar(45) DEFAULT NULL,
  `extra_field2` varchar(45) DEFAULT NULL,
  `hot` tinyint(1) NOT NULL DEFAULT '0',
  `enable` tinyint(1) DEFAULT '1',
  PRIMARY KEY (`record_id`)
) ENGINE=InnoDB  DEFAULT CHARSET=utf8 AUTO_INCREMENT=7 ;

--
-- Dumping data for table `dos_module_wedding`
--

INSERT INTO `dos_module_wedding` (`record_id`, `title`, `titleen`, `titlefr`, `content`, `contenten`, `contentfr`, `hits`, `posted_date`, `record_order`, `extra_field1`, `extra_field2`, `hot`, `enable`) VALUES
(6, 'test', '', '', '&lt;p&gt;\r\n	testing&lt;/p&gt;\r\n', '', '', 68, '2011-09-09 04:00:09', 1, '', '', 0, 1);

-- --------------------------------------------------------

--
-- Table structure for table `dos_sys_configs`
--

CREATE TABLE IF NOT EXISTS `dos_sys_configs` (
  `config_name` varchar(45) NOT NULL,
  `config_value` varchar(45) NOT NULL,
  `config_choices` varchar(45) DEFAULT NULL,
  PRIMARY KEY (`config_name`)
) ENGINE=InnoDB DEFAULT CHARSET=utf8;

--
-- Dumping data for table `dos_sys_configs`
--

INSERT INTO `dos_sys_configs` (`config_name`, `config_value`, `config_choices`) VALUES
('adv_height', '205', 'Quảng cáo - chiều cao'),
('adv_width', '200', 'Quảng cáo - chiều ngang'),
('banner_height', '332', 'Banner - Chiều cao'),
('banner_width', '951', 'Banner - Chiều ngang'),
('experiences_height_thumb', '115', 'Kinh nghiệm - Thu nhỏ - Chiều cao'),
('experiences_width_thumb', '200', 'Kinh nghiệm - Thu nhỏ - Chiều ngang'),
('gallery_height', '525', 'Gallery - Chiều cao'),
('gallery_height_cat', '124', 'Gallery - Danh mục - Chiều cao'),
('gallery_height_thumb', '72', 'Gallery - Thu nhỏ - Chiều cao'),
('gallery_width', '700', 'Gallery - Chiều ngang'),
('gallery_width_cat', '165', 'Gallery - Danh mục - Chiều ngang'),
('gallery_width_thumb', '90', 'Gallery - Thu nhỏ - Chiều ngang'),
('handbook_height_thumb', '215', 'Cẩm nang - Thu nhỏ - Chiều cao'),
('handbook_width_thumb', '200', 'Cẩm nang - Thu nhỏ - Chiều ngang'),
('job_height_thumb', '91', 'Công việc - Thu nhỏ - Chiều cao'),
('job_width_thumb', '145', 'Công việc - Thu nhỏ - Chiều ngang'),
('logo_height', '106', 'Logo - Chiều cao'),
('logo_width', '683', 'Logo - Chiều ngang'),
('news_height_thumb', '115', 'Tin tức - Thu nhỏ - Chiều cao'),
('news_width_thumb', '200', 'Tin tức - Thu nhỏ - Chiều ngang'),
('product_height', '251', 'Sản phẩm - Chiều cao'),
('product_height_cat', '204', 'Sản phẩm - Danh mục - Chiều cao'),
('product_height_cat_thumb', '147', 'Sản phẩm - Danh mục - Thu nhỏ - Chiều cao'),
('product_height_thumb', '121', 'Sản phẩm - Thu nhỏ - Chiều cao'),
('product_width', '401', 'Sản phẩm - Chiều ngang'),
('product_width_cat', '200', 'Sản phẩm - Danh mục - Chiều ngang'),
('product_width_cat_thumb', '177', 'Sản phẩm - Danh mục - Thu nhỏ - Chiều ngang'),
('product_width_thumb', '152', 'Sản phẩm - Thu nhỏ - Chiều ngang'),
('promotions_height_thumb', '109', 'Khuyến mãi - Thu nhỏ- Chiều cao'),
('promotions_width_thumb', '107', 'Khuyến mãi - Thu nhỏ- Chiều ngang'),
('services_height_thumb', '98', 'Dịch vụ - Thu nhỏ - Chiều cao'),
('services_width_thumb', '158', 'Dịch vụ - Thu nhỏ - Chiều ngang'),
('studies_height_thumb', '98', ''),
('studies_width_thumb', '158', ''),
('sys_key', 'OE3GsQrrfmGbhzyh0MV/LC1tR3EaISrnIYVjq9+w2ZE=', ''),
('sys_num_pagerange', '5', ''),
('sys_num_paging', '8', 'Phân trang'),
('sys_size_upload', '5000', 'Kích cỡ upload'),
('video_height', '124', 'Video - Chiều cao'),
('video_height_cat_thumb', '124', 'Video - Danh mục - Thu nhỏ - Chiều cao'),
('video_width', '165', 'Video - Chiều ngang'),
('video_width_cat_thumb', '165', 'Video - Danh mục - Thu nhỏ - Chiều ngang');

-- --------------------------------------------------------

--
-- Table structure for table `dos_sys_functions`
--

CREATE TABLE IF NOT EXISTS `dos_sys_functions` (
  `function_id` smallint(6) NOT NULL AUTO_INCREMENT,
  `model_name` varchar(20) NOT NULL,
  `model_load` varchar(45) DEFAULT NULL,
  `action` varchar(45) DEFAULT NULL,
  `varname` varchar(45) DEFAULT NULL,
  `function_load` varchar(45) DEFAULT NULL,
  PRIMARY KEY (`function_id`),
  KEY `fk_dos_sys_functions_dos_sys_modules` (`model_name`)
) ENGINE=InnoDB  DEFAULT CHARSET=utf8 AUTO_INCREMENT=14142 ;

--
-- Dumping data for table `dos_sys_functions`
--

INSERT INTO `dos_sys_functions` (`function_id`, `model_name`, `model_load`, `action`, `varname`, `function_load`) VALUES
(14118, 'about', 'About_Model_About', 'index', 'menu_about', 'getListmenu'),
(14119, 'about', 'About_Model_About', 'view', 'menu_about', 'getListmenu'),
(14120, 'account', 'Webadmin_Model_Account', 'add', 'menu_account', 'getListmenu'),
(14121, 'account', 'Webadmin_Model_Account', 'changepass', 'menu_account', 'getListmenu'),
(14122, 'account', 'Webadmin_Model_Account', 'index', 'menu_account', 'getListmenu'),
(14123, 'default', 'Product_Model_Product', 'index', 'menu_product_special', 'listHotItem'),
(14124, 'default', 'About_Model_About', 'index', 'menu_about_home', 'getHomeRecord'),
(14125, 'news', 'News_Model_NewsCat', 'cat', 'menu_news', 'getListmenu'),
(14126, 'news', 'News_Model_NewsCat', 'index', 'menu_news', 'getListmenu'),
(14127, 'news', 'News_Model_News', 'index', 'list_news_new', 'listItemsHot'),
(14128, 'news', 'News_Model_NewsCat', 'view', 'menu_news', 'getListmenu'),
(14129, 'product', 'Product_Model_ProductCat', 'index', 'menu_product_cat', 'getListCat'),
(14130, 'services', 'Services_Model_Services', 'index', 'menu_services', 'getListmenu'),
(14131, 'services', 'Services_Model_Services', 'view', 'menu_services', 'getListmenu'),
(14132, 'setup', 'Webadmin_Model_Setup', 'config', 'menu_setup', 'getListmenu'),
(14133, 'setup', 'Webadmin_Model_Setup', 'function', 'menu_setup', 'getListmenu'),
(14134, 'setup', 'Webadmin_Model_Setup', 'index', 'menu_setup', 'getListmenu'),
(14135, 'setup', 'Webadmin_Model_Setup', 'lang', 'menu_setup', 'getListmenu'),
(14136, 'setup', 'Webadmin_Model_Setup', 'menu', 'menu_setup', 'getListmenu'),
(14137, 'setup', 'Webadmin_Model_Setup', 'title', 'menu_setup', 'getListmenu'),
(14138, 'setup', 'Webadmin_Model_Setup', 'web', 'menu_setup', 'getListmenu'),
(14139, 'tool', 'Webadmin_Model_Tool', 'analytics', 'menu_tool', 'getListmenu'),
(14140, 'tool', 'Webadmin_Model_Tool', 'index', 'menu_tool', 'getListmenu'),
(14141, 'tool', 'Webadmin_Model_Tool', 'seo', 'menu_tool', 'getListmenu');

-- --------------------------------------------------------

--
-- Table structure for table `dos_sys_groups`
--

CREATE TABLE IF NOT EXISTS `dos_sys_groups` (
  `group_name` varchar(45) NOT NULL,
  PRIMARY KEY (`group_name`)
) ENGINE=InnoDB DEFAULT CHARSET=utf8;

--
-- Dumping data for table `dos_sys_groups`
--

INSERT INTO `dos_sys_groups` (`group_name`) VALUES
('administrator'),
('member');

-- --------------------------------------------------------

--
-- Table structure for table `dos_sys_groups_has_dos_sys_models`
--

CREATE TABLE IF NOT EXISTS `dos_sys_groups_has_dos_sys_models` (
  `dos_sys_groups_group_name` varchar(45) NOT NULL,
  `dos_sys_models_model_id` varchar(45) NOT NULL,
  `permission` varchar(45) NOT NULL,
  PRIMARY KEY (`dos_sys_groups_group_name`,`dos_sys_models_model_id`),
  KEY `fk_dos_sys_groups_has_dos_sys_models_dos_sys_models` (`dos_sys_models_model_id`),
  KEY `fk_dos_sys_groups_has_dos_sys_models_dos_sys_groups` (`dos_sys_groups_group_name`)
) ENGINE=InnoDB DEFAULT CHARSET=utf8;

--
-- Dumping data for table `dos_sys_groups_has_dos_sys_models`
--

INSERT INTO `dos_sys_groups_has_dos_sys_models` (`dos_sys_groups_group_name`, `dos_sys_models_model_id`, `permission`) VALUES
('member', 'about', 'allow'),
('member', 'adv', 'allow'),
('member', 'banner', 'allow'),
('member', 'contact', 'allow'),
('member', 'news', 'allow'),
('member', 'product', 'allow'),
('member', 'services', 'allow'),
('member', 'support', 'allow');

-- --------------------------------------------------------

--
-- Table structure for table `dos_sys_langs`
--

CREATE TABLE IF NOT EXISTS `dos_sys_langs` (
  `lang_name` varchar(30) NOT NULL,
  `lang` varchar(200) DEFAULT NULL,
  `langen` varchar(200) DEFAULT NULL,
  `langfr` varchar(200) DEFAULT NULL,
  `langkr` varchar(200) DEFAULT NULL,
  PRIMARY KEY (`lang_name`)
) ENGINE=InnoDB DEFAULT CHARSET=utf8;

--
-- Dumping data for table `dos_sys_langs`
--

INSERT INTO `dos_sys_langs` (`lang_name`, `lang`, `langen`, `langfr`, `langkr`) VALUES
('about', 'Giới thiệu', 'Home', '', '홈'),
('about_coperation', 'GIỚI THIỆU TẬP ĐOÀN', 'About', '', '소개'),
('about_extra1', 'Thông tin phụ 1', '', '', ''),
('about_extra2', 'Thông tin phụ 2', '', '', ''),
('action', 'Thao tác', '', '', ''),
('adv', 'Quảng cáo', '', '', ''),
('adv_description', 'Mô tả quảng cáo', '', '', ''),
('adv_end_date', 'Ngày kết thúc', '', '', ''),
('adv_position', 'Vị trí', '', '', ''),
('adv_position_center', 'Ở giữa', '', '', ''),
('adv_position_left', 'Bên trái', '', '', ''),
('adv_position_right', 'Bên phải', '', '', ''),
('adv_position_right_bottom', 'Bên phải - Dưới', '', '', ''),
('adv_position_right_top', 'Bên phải - Trên', '', '', ''),
('adv_start_date', 'Ngày bắt đầu', '', '', ''),
('adv_type', 'Loại quảng cáo', '', '', ''),
('adv_type_current', 'Trang hiện tại', '', '', ''),
('adv_type_new', 'Trang mới', '', '', ''),
('adv_url', 'Liên kết', '', '', ''),
('banner', 'Logo &amp; Banner', '', '', ''),
('banner_link', 'Liên kết', '', '', ''),
('banner_position', 'Vị trí hiển thị', '', '', ''),
('booking', 'Đặt Phòng', '', '', ''),
('catparent', 'Phân loại cha', '', '', ''),
('conference', 'Tiệc &amp; Hội nghị', '', '', ''),
('confirmdel', 'Bạn có chắc chắn xóa', '', '', ''),
('contact', 'Liên hệ', 'Contact', '', '접촉'),
('contact_msg', 'Quý khách có thể liên hệ với chúng tôi bằng cách điền đầy đủ thông tin vào mẫu sau:', '', '', ''),
('contact_success', 'Liên hệ thành công', '', '', ''),
('copyright', 'Copyright © 2011 by Azweb.vn. All rights reserved', '', '', ''),
('counter', 'Thống kê truy cập', '', '', ''),
('counter_online', 'Đang truy cập', 'Online', '', ''),
('counter_today', 'Truy cập trong ngày', 'Access during the day', '', ''),
('counter_total', 'Tổng số lượt truy cập', 'Visitor', '', ''),
('createdate', 'Ngày tạo', '', '', ''),
('default', 'Trang chủ', '', '', ''),
('detail', 'Chi tiết', 'Detail', '', ''),
('developed', 'Developed by', '', '', ''),
('end', 'Cuối cùng', '', '', ''),
('experiences', 'Kinh nghiệm', '', '', ''),
('gallery', 'Hình ảnh', '', '', ''),
('handbook', 'Cẩm nang', '', '', ''),
('hit', 'Lần xem', '', '', ''),
('home', 'Trang chủ', '', '', ''),
('inbox', 'Hộp thư', '', '', ''),
('job', 'Tuyển dụng', '', '', ''),
('job_extra1', 'Thông tin phụ 1', '', '', ''),
('job_extra2', 'Thông tin phụ 2', '', '', ''),
('logout', 'Thoát', '', '', ''),
('namecat', 'Tên phân loại', '', '', ''),
('news', 'Tin tức', 'News', '', '뉴스'),
('news_tophit', 'Tin tức xem nhiều nhất', '', '', ''),
('next', 'Tiếp', '', '', ''),
('norecord', 'Không tồn tại mẫu tin', '', '', ''),
('payment', 'Thanh toán', '', '', ''),
('picture_thumb', 'Hình thu nhỏ', '', '', ''),
('previous', 'Lùi', '', '', ''),
('product', 'Sản phẩm', 'Products', '', '제품'),
('productnum', 'Số sản phẩm', '', '', ''),
('product_cartitem', 'Thông tin giỏ hàng', '', '', ''),
('product_cat_extra1', 'Thông tin phụ 1', '', '', ''),
('product_cat_extra2', 'Thông tin phụ 2', '', '', ''),
('product_cat_extra3', 'Thông tin phụ 3', '', '', ''),
('product_cat_extra4', 'Thông tin phụ 4', '', '', ''),
('product_detail', 'Chi tiết sản phẩm', '', '', ''),
('product_extra1', 'Thông tin phụ 1', '', '', ''),
('product_extra2', 'Thông tin phụ 2', '', '', ''),
('product_extra3', 'Thông tin phụ 3', '', '', ''),
('product_extra4', 'Thông tin phụ 4', '', '', ''),
('product_hot', 'Sản phẩm nổi bật', 'Hot Product', '', '핫 제품'),
('product_new', 'Sản phẩm mới', '', '', ''),
('product_ordering', 'Thông tin đặt hàng', '', '', ''),
('product_other', 'Sản phẩm khác', '', '', ''),
('product_specials', 'Sản phẩm đặc biệt', '', '', ''),
('product_tophit', 'Sản phẩm xem nhiều nhất', '', '', ''),
('product_unit', 'Đơn giá', '', '', ''),
('promotions', 'Khuyến mãi', '', '', ''),
('root', 'Gốc', '', '', ''),
('sale_booking', 'Phòng đặt vé', '', '', ''),
('sale_business', 'Phòng kinh doanh', '', '', ''),
('services', 'Dịch vụ', 'Services', '', '서비스'),
('services_extra1', 'Thông tin phụ 1', '', '', ''),
('services_extra2', 'Thông tin phụ 2', '', '', ''),
('setup', 'Cài đặt &amp; cấu hình', '', '', ''),
('start', 'Đầu tiên', '', '', ''),
('statistics', 'Thống kê truy cập', 'Statistics', '', '통계'),
('support', 'Hỗ trợ trực tuyến', 'Support', '', '지원'),
('sys_account', 'Tài khoản của tôi', '', '', ''),
('sys_active', 'Hiển thị', '', '', ''),
('sys_add', 'Thêm mới', '', '', ''),
('sys_addcat', 'Thêm phân loại', '', '', ''),
('sys_addpost', 'Thêm bài viết', '', '', ''),
('sys_addrow', 'Thêm dòng', '', '', ''),
('sys_cancel', 'Hủy bỏ', '', '', ''),
('sys_delete', 'Xóa', '', '', ''),
('sys_detail', 'Chi tiết', '', '', ''),
('sys_edit', 'Chỉnh sửa', '', '', ''),
('sys_editcat', 'Sửa phân loại', '', '', ''),
('sys_editpost', 'Sửa bài viết', '', '', ''),
('sys_erroraccess', 'Bạn không có quyền truy cập vì chức năng này dùng để cấu hình thông số cho web', '', '', ''),
('sys_func_static', 'Thống kê chức năng', '', '', ''),
('sys_hidden', 'Ẩn', '', '', ''),
('sys_hot', 'Nổi bật', '', '', ''),
('sys_lang', 'Cấu hình ngôn ngữ', '', '', ''),
('sys_menu', 'Cấu hình menu', '', '', ''),
('sys_nohot', 'Không nổi bật', '', '', ''),
('sys_nospecials', 'Không đặc biệt', '', '', ''),
('sys_order', 'Thứ tự', '', '', ''),
('sys_picture', 'Hình ảnh', '', '', ''),
('sys_preview', 'Mô tả', '', '', ''),
('sys_save', 'Lưu', '', '', ''),
('sys_sort', 'Sắp xếp', '', '', ''),
('sys_specials', 'Hiển trên trang chủ', '', '', ''),
('sys_title', 'Tiêu đề', '', '', ''),
('sys_tool', 'Công cụ &amp; Báo cáo', '', '', ''),
('sys_web', 'Cấu hình website', '', '', ''),
('video', 'Video', '', '', ''),
('video_url', 'Link video', '', '', ''),
('weblink', 'Liên kết web', '', '', ''),
('weblink_name', 'Tên website', '', '', ''),
('weblink_url', 'Địa chỉ web', '', '', ''),
('welcome_chat', 'Xin chào, tôi muốn hỏi về sản phẩm - dịch vụ của công ty bạn', 'Hello, I want to ask about products and services your company', '', '안녕하세요, 전 제품 및 서비스 회사에 대해 묻고 싶은');

-- --------------------------------------------------------

--
-- Table structure for table `dos_sys_models`
--

CREATE TABLE IF NOT EXISTS `dos_sys_models` (
  `model_id` varchar(45) NOT NULL,
  `record_order` tinyint(4) DEFAULT NULL,
  PRIMARY KEY (`model_id`)
) ENGINE=InnoDB DEFAULT CHARSET=utf8;

--
-- Dumping data for table `dos_sys_models`
--

INSERT INTO `dos_sys_models` (`model_id`, `record_order`) VALUES
('about', 1),
('adv', 10),
('banner', 11),
('conference', 14),
('contact', 2),
('experiences', 17),
('gallery', 6),
('handbook', 15),
('job', 7),
('news', 5),
('payment', 8),
('philosophy', 2),
('product', 3),
('promotions', 13),
('services', 4),
('studies', 16),
('support', 9),
('termsofuse', 12),
('video', 10),
('weblink', 18),
('wedding', 13);

-- --------------------------------------------------------

--
-- Table structure for table `dos_sys_modules`
--

CREATE TABLE IF NOT EXISTS `dos_sys_modules` (
  `moduleid` varchar(20) NOT NULL,
  `module` varchar(50) NOT NULL,
  `moduleen` varchar(50) NOT NULL,
  `modulefr` varchar(50) DEFAULT NULL,
  `modulekr` varchar(50) DEFAULT NULL,
  `url` varchar(100) NOT NULL,
  `target` varchar(20) DEFAULT NULL,
  `position` tinyint(4) DEFAULT '0',
  PRIMARY KEY (`moduleid`)
) ENGINE=InnoDB DEFAULT CHARSET=utf8;

--
-- Dumping data for table `dos_sys_modules`
--

INSERT INTO `dos_sys_modules` (`moduleid`, `module`, `moduleen`, `modulefr`, `modulekr`, `url`, `target`, `position`) VALUES
('about', 'Giới thiệu', 'About', '', '소개', 'gioi-thieu', '', 1),
('contact', 'Liên hệ', 'Contact Us', '', '접촉', 'lien-he', '', 5),
('default', 'Trang chủ', 'Home', '', '홈', 'trang-chu', '', 0),
('news', 'Tin tức', 'News', '', '뉴스', 'tin-tuc', '', 4),
('product', 'Sản phẩm', 'Products', '', '제품', 'san-pham', '', 2),
('services', 'Dịch vụ', 'Services', '', '서비스', 'dich-vu', '', 3);

-- --------------------------------------------------------

--
-- Table structure for table `dos_sys_seos`
--

CREATE TABLE IF NOT EXISTS `dos_sys_seos` (
  `seo_name` varchar(45) NOT NULL,
  `seo_content` text NOT NULL,
  PRIMARY KEY (`seo_name`)
) ENGINE=InnoDB DEFAULT CHARSET=utf8;

--
-- Dumping data for table `dos_sys_seos`
--

INSERT INTO `dos_sys_seos` (`seo_name`, `seo_content`) VALUES
('google_analytic', '<script type="text/javascript">\r\n\r\n  var _gaq = _gaq || [];\r\n  _gaq.push([''_setAccount'', ''UA-25177991-36'']);\r\n  _gaq.push([''_trackPageview'']);\r\n\r\n  (function() {\r\n    var ga = document.createElement(''script''); ga.type = ''text/javascript''; ga.async = true;\r\n    ga.src = (''https:'' == document.location.protocol ? ''https://ssl'' : ''http://www'') + ''.google-analytics.com/ga.js'';\r\n    var s = document.getElementsByTagName(''script'')[0]; s.parentNode.insertBefore(ga, s);\r\n  })();\r\n\r\n</script>');

-- --------------------------------------------------------

--
-- Table structure for table `dos_sys_statistics`
--

CREATE TABLE IF NOT EXISTS `dos_sys_statistics` (
  `session_id` varchar(9) NOT NULL,
  `time` int(11) NOT NULL,
  PRIMARY KEY (`session_id`)
) ENGINE=InnoDB DEFAULT CHARSET=utf8;

--
-- Dumping data for table `dos_sys_statistics`
--

INSERT INTO `dos_sys_statistics` (`session_id`, `time`) VALUES
('5yjd4ktnc', 1328790632);

-- --------------------------------------------------------

--
-- Table structure for table `dos_sys_users`
--

CREATE TABLE IF NOT EXISTS `dos_sys_users` (
  `username` varchar(45) NOT NULL DEFAULT '',
  `email` varchar(45) NOT NULL,
  `password` varchar(45) NOT NULL,
  `full_name` varchar(150) NOT NULL,
  `user_group` varchar(45) NOT NULL,
  `forgot_code` varchar(8) DEFAULT NULL,
  `enable` tinyint(1) NOT NULL,
  PRIMARY KEY (`username`)
) ENGINE=InnoDB DEFAULT CHARSET=utf8;

--
-- Dumping data for table `dos_sys_users`
--

INSERT INTO `dos_sys_users` (`username`, `email`, `password`, `full_name`, `user_group`, `forgot_code`, `enable`) VALUES
('grouplaptrinh', 'info@grouplaptrinh.com', 'b7a659e0c28c88b3ee01adf805fc228f', 'GroupLapTrinh', 'administrator', NULL, 1),
('thanda', 'info@thanda.vn', '3455e01f73bf6766b83db458bb3fa9a3', 'Thanda.vn', 'member', NULL, 1);

-- --------------------------------------------------------

--
-- Table structure for table `dos_sys_webs`
--

CREATE TABLE IF NOT EXISTS `dos_sys_webs` (
  `web_name` varchar(45) NOT NULL,
  `web_value` varchar(200) NOT NULL,
  PRIMARY KEY (`web_name`)
) ENGINE=InnoDB DEFAULT CHARSET=utf8;

--
-- Dumping data for table `dos_sys_webs`
--

INSERT INTO `dos_sys_webs` (`web_name`, `web_value`) VALUES
('admin_email', 'thanhansoft@gmail.com'),
('admin_name', 'Thanhansoft'),
('description', 'Web - Dịch vụ - Azweb.vn'),
('email_subject', 'Liên hệ từ website'),
('keywords', 'Web - Dịch vụ - Azweb.vn'),
('timestamp_today', '1328720400'),
('titleweb', 'Azweb.vn'),
('total_visit', '291'),
('total_visit_today', '53'),
('type', '1');

--
-- Constraints for dumped tables
--

--
-- Constraints for table `dos_module_experiences`
--
ALTER TABLE `dos_module_experiences`
  ADD CONSTRAINT `fk_dos_module_experiences_dos_module_experiences_cat` FOREIGN KEY (`dos_module_experiences_cat_cat_id`) REFERENCES `dos_module_experiences_cat` (`cat_id`) ON DELETE NO ACTION ON UPDATE NO ACTION;

--
-- Constraints for table `dos_module_gallery`
--
ALTER TABLE `dos_module_gallery`
  ADD CONSTRAINT `fk_dos_module_gallery_dos_module_gallery_cat` FOREIGN KEY (`dos_module_gallery_cat_cat_id`) REFERENCES `dos_module_gallery_cat` (`cat_id`) ON DELETE NO ACTION ON UPDATE NO ACTION;

--
-- Constraints for table `dos_module_handbook`
--
ALTER TABLE `dos_module_handbook`
  ADD CONSTRAINT `fk_dos_module_handbook_dos_module_handbook_cat` FOREIGN KEY (`dos_module_handbook_cat_cat_id`) REFERENCES `dos_module_handbook_cat` (`cat_id`) ON DELETE NO ACTION ON UPDATE NO ACTION;

--
-- Constraints for table `dos_module_product`
--
ALTER TABLE `dos_module_product`
  ADD CONSTRAINT `fk_dos_module_product_dos_module_product_cat` FOREIGN KEY (`dos_module_product_cat_cat_id`) REFERENCES `dos_module_product_cat` (`cat_id`) ON DELETE NO ACTION ON UPDATE NO ACTION;

--
-- Constraints for table `dos_module_studies`
--
ALTER TABLE `dos_module_studies`
  ADD CONSTRAINT `fk_dos_module_studies_dos_module_studies_cat` FOREIGN KEY (`dos_module_studies_cat_cat_id`) REFERENCES `dos_module_studies_cat` (`cat_id`) ON DELETE NO ACTION ON UPDATE NO ACTION;

--
-- Constraints for table `dos_module_video`
--
ALTER TABLE `dos_module_video`
  ADD CONSTRAINT `fk_dos_module_video_dos_module_video_cat` FOREIGN KEY (`dos_module_video_cat_cat_id`) REFERENCES `dos_module_video_cat` (`cat_id`) ON DELETE NO ACTION ON UPDATE NO ACTION;

--
-- Constraints for table `dos_sys_groups_has_dos_sys_models`
--
ALTER TABLE `dos_sys_groups_has_dos_sys_models`
  ADD CONSTRAINT `fk_dos_sys_groups_has_dos_sys_models_dos_sys_groups` FOREIGN KEY (`dos_sys_groups_group_name`) REFERENCES `dos_sys_groups` (`group_name`) ON DELETE NO ACTION ON UPDATE NO ACTION,
  ADD CONSTRAINT `fk_dos_sys_groups_has_dos_sys_models_dos_sys_models` FOREIGN KEY (`dos_sys_models_model_id`) REFERENCES `dos_sys_models` (`model_id`) ON DELETE NO ACTION ON UPDATE NO ACTION;

/*!40101 SET CHARACTER_SET_CLIENT=@OLD_CHARACTER_SET_CLIENT */;
/*!40101 SET CHARACTER_SET_RESULTS=@OLD_CHARACTER_SET_RESULTS */;
/*!40101 SET COLLATION_CONNECTION=@OLD_COLLATION_CONNECTION */;
