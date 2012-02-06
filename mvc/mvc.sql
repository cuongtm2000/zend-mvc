-- phpMyAdmin SQL Dump
-- version 3.4.9
-- http://www.phpmyadmin.net
--
-- Host: localhost
-- Generation Time: Feb 06, 2012 at 04:48 AM
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
  `content` text,
  `contenten` text,
  `contentfr` text,
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
) ENGINE=InnoDB  DEFAULT CHARSET=utf8 AUTO_INCREMENT=29 ;

--
-- Dumping data for table `dos_module_about`
--

INSERT INTO `dos_module_about` (`record_id`, `title`, `titleen`, `titlefr`, `content`, `contenten`, `contentfr`, `tag`, `description`, `hits`, `posted_date`, `record_order`, `extra_field1`, `extra_field2`, `hot`, `enable`) VALUES
(27, 'Enter your replacement text here...', '', '', '<p>\r\n	Enter your replacement text here... Enter your replacement text here... Enter your replacement text here... Enter your replacement text here... Enter your replacement text here... Enter your replacement text here... Enter your replacement text here... Enter your replacement text here... Enter your replacement text here... Enter your replacement text here... Enter your replacement text here... Enter your replacement text here... Enter your replacement text here... Enter your replacement text here... </p>\r\n<p>\r\n	Enter your replacement text here... Enter your replacement text here... Enter your replacement text here... Enter your replacement text here... Enter your replacement text here... Enter your replacement text here... Enter your replacement text here... Enter your replacement text here... Enter your replacement text here... Enter your replacement text here... Enter your replacement text here... Enter your replacement text here... Enter your replacement text here... Enter your replacement text here... </p>\r\n', '', '', 'enter-your-replacement-text-here', '', 867, '2011-08-16 02:32:39', 1, '', '', 0, 1),
(28, 'Enter your replacement text here...', '', '', '<p>\r\n	Enter your replacement text here... Enter your replacement text here... Enter your replacement text here... Enter your replacement text here... Enter your replacement text here... Enter your replacement text here... Enter your replacement text here... Enter your replacement text here... Enter your replacement text here... Enter your replacement text here... Enter your replacement text here... Enter your replacement text here... Enter your replacement text here... Enter your replacement text here... </p>\r\n', '', '', 'enter-your-replacement-text-here', '', 885, '2011-08-16 03:35:14', 1, '', '', 1, 1);

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

INSERT INTO `dos_module_adv` (`record_id`, `pic_thumb`, `title`, `titleen`, `titlefr`, `url`, `description`, `create_date`, `start_date`, `end_date`, `hits`, `record_order`, `position`, `type`, `enable`) VALUES
(7, 'img6.png', 'Adv right', '', '', 'http://grouplaptrinh.com', '', '2011-10-05 03:28:56', '2011-10-28 17:00:00', '2011-11-04 17:00:00', 0, 3, 'right', '_bank', 1),
(8, 'img5.png', 'Adv left', '', '', 'http://grouplaptrinh.com', '', '2011-10-29 03:37:26', '2011-10-28 17:00:00', '2011-11-01 17:00:00', 0, 4, 'left', '_bank', 1);

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
) ENGINE=InnoDB  DEFAULT CHARSET=utf8 AUTO_INCREMENT=9 ;

--
-- Dumping data for table `dos_module_banner`
--

INSERT INTO `dos_module_banner` (`banner_id`, `banner_date`, `banner_name`, `banner_url`, `banner_link`, `banner_order`, `enable`, `position`, `page_position`, `banner_size`) VALUES
(5, '2011-09-20 04:04:36', 'Banner 3', 'banner1.jpg', '', 3, 1, 'banner', 'default', ''),
(6, '2011-09-20 04:10:16', 'Banner 2', 'banner7.jpg', '', 2, 1, 'banner', 'default', ''),
(8, '2011-10-29 00:11:09', 'Banner 4', 'banner2.jpg', '', 4, 1, 'banner', 'default', '1005x433');

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
  `content` varchar(1000) NOT NULL,
  `contenten` varchar(5000) DEFAULT NULL,
  `contentfr` varchar(5000) DEFAULT NULL,
  `hot` tinyint(1) NOT NULL DEFAULT '0',
  `enable` tinyint(1) NOT NULL DEFAULT '1',
  PRIMARY KEY (`record_id`)
) ENGINE=InnoDB  DEFAULT CHARSET=utf8 AUTO_INCREMENT=9 ;

--
-- Dumping data for table `dos_module_contact`
--

INSERT INTO `dos_module_contact` (`record_id`, `create_date`, `title`, `titleen`, `titlefr`, `content`, `contenten`, `contentfr`, `hot`, `enable`) VALUES
(7, '2011-06-17 03:52:09', 'Liên hệ với chúng tôi', '', '', '&lt;p&gt;\r\n	test&lt;/p&gt;\r\n', '', '', 0, 1),
(8, '2011-10-06 08:44:49', 'Liên hệ', '', '', '&lt;p&gt;\r\n	Luật Văn Phòng&lt;br /&gt;\r\n	1234 Tòa Án New York, Suite 140&lt;br /&gt;\r\n	Điện Thoại: (813) 246-2358&lt;br /&gt;\r\n	Fax: (813) 247-9815&lt;br /&gt;\r\n	Website: Azweb.Com&lt;/p&gt;\r\n', '', '', 1, 1);

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
  `preview` text NOT NULL,
  `previewen` text,
  `previewfr` text,
  `content` text NOT NULL,
  `contenten` text,
  `contentfr` text,
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
) ENGINE=InnoDB  DEFAULT CHARSET=utf8 AUTO_INCREMENT=6 ;

--
-- Dumping data for table `dos_module_news`
--

INSERT INTO `dos_module_news` (`record_id`, `pic_thumb`, `title`, `titleen`, `titlefr`, `preview`, `previewen`, `previewfr`, `content`, `contenten`, `contentfr`, `tag`, `description`, `author`, `hits`, `postdate`, `record_order`, `record_type`, `extra_field1`, `extra_field2`, `enable`, `dos_module_item_cat_cat_id`) VALUES
(3, NULL, 'Thử nghiệm', '', '', '<p>\r\n	sdsad</p>\r\n', '', '', '<p>\r\n	sdasd</p>\r\n', '', '', 'thu-nghiem', '', NULL, 9, '2011-09-23 01:48:31', 2, 0, NULL, NULL, 1, 11),
(5, NULL, 'bai viet 1', 'Post 1', '', '<p>\r\n	<br />\r\n	Field_name Min_value Max_value Min_length Max_length Empties_or_zeros Nulls Avg_value_or_avg_length Std Optimal_fieldtype<br />\r\n	mvc.dos_module_services.record_id 29 30 2 2 0 0 29.5000 0.5000 ENUM(''29'',''30'') NOT NULL<br />\r\n	mvc.dos_module_services.title abcdedd Dịch vụ cung cấp thư ký 7 31 0 0 19.0000 NULL ENUM(''abcdedd'',''Dịch vụ cung cấp thư ký'') NOT NULL<br />\r\n	mvc.dos_module_services.titleen   0 0 2 0 0.0000 NULL CHAR(0) NOT NULL<br />\r\n	mvc.dos_module_services.titlefr   0 0 2 0 0.0000 NULL CHAR(0) NOT NULL<br />\r\n	mvc.dos_module_services.content</p>\r\n<p>\r\n	<br />\r\n	   abcdeabcde</p>\r\n<br /><p>\r\n	<br />\r\n	   Tỷ phú Warren Buffett sẽ hát mừng năm mới TQ... 22 644 0 0 333.0000 NULL ENUM(''</p>\r\n<p>\r\n	<br />\r\n	   abcdeabcde</p>\r\n<br /><p>\r\n	'',''</p>\r\n<p>\r\n	<br />\r\n	   Tỷ phú Warren...<br />\r\n	mvc.dos_module_services.contenten </p>\r\n<p>\r\n	<br />\r\n	   EN</p>\r\n<br /><p>\r\n	<br />\r\n	   Tỷ phú Warren Buffett sẽ hát m... 0 658 1 0 329.0000 NULL ENUM('''',''</p>\r\n<p>\r\n	<br />\r\n	   EN</p>\r\n<br /><p>\r\n	<br />\r\n	   Tỷ phú Warren Buffett...<br />\r\n	mvc.dos_module_services.contentfr </p>\r\n<p>\r\n	<br />\r\n	   KR</p>\r\n<br /><p>\r\n	<br />\r\n	   </p>\r\n<br /><p>\r\n	<br />\r\n	   Tỷ phú Warren Buf... 0 672 1 0 336.0000 NULL ENUM('''',''</p>\r\n<p>\r\n	<br />\r\n	   KR</p>\r\n<br /><p>\r\n	<br />\r\n	   </p>\r\n<br /><p>\r\n	<br />\r\n	   Tỷ phú W...<br />\r\n	mvc.dos_module_services.tag abcdedd dich-vu-cung-cap-thu-ky 7 23 0 0 15.0000 NULL ENUM(''abcdedd'',''dich-vu-cung-cap-thu-ky'') NOT NULL<br />\r\n	mvc.dos_module_services.description   0 0 2 0 0.0000 NULL CHAR(0) NOT NULL<br />\r\n	mvc.dos_module_services.hits 6 37 1 2 0 0 21.5000 15.5000 ENUM(''6'',''37'') NOT NULL<br />\r\n	mvc.dos_module_services.posted_date 2012-01-11 23:26:18 2012-02-02 23:56:53 19 19 0 0 19.0000 NULL ENUM(''2012-01-11 23:26:18'',''2012-02-02 23:56:53'') ...<br />\r\n	mvc.dos_module_services.record_order 1 2 1 1 0 0 1.5000 0.5000 ENUM(''1'',''2'') NOT NULL<br />\r\n	mvc.dos_module_services.extra_field1   0 0 2 0 0.0000 NULL CHAR(0) NOT NULL<br />\r\n	mvc.dos_module_services.extra_field2   0 0 2 0 0.0000 NULL CHAR(0) NOT NULL<br />\r\n	mvc.dos_module_services.hot 0 0 1 1 2 0 0.0000 0.0000 ENUM(''0'') NOT NULL<br />\r\n	mvc.dos_module_services.enable 1 1 1 1 0 0 1.0000 0.0000 ENUM(''1'') NOT NULL</p>\r\n<p>\r\n	Query results operations</p>\r\n', '<p>\r\n	<br />\r\n	Field_name Min_value Max_value Min_length Max_length Empties_or_zeros Nulls Avg_value_or_avg_length Std Optimal_fieldtype<br />\r\n	mvc.dos_module_services.record_id 29 30 2 2 0 0 29.5000 0.5000 ENUM(''29'',''30'') NOT NULL<br />\r\n	mvc.dos_module_services.title abcdedd Dịch vụ cung cấp thư ký 7 31 0 0 19.0000 NULL ENUM(''abcdedd'',''Dịch vụ cung cấp thư ký'') NOT NULL<br />\r\n	mvc.dos_module_services.titleen   0 0 2 0 0.0000 NULL CHAR(0) NOT NULL<br />\r\n	mvc.dos_module_services.titlefr   0 0 2 0 0.0000 NULL CHAR(0) NOT NULL<br />\r\n	mvc.dos_module_services.content</p>\r\n<p>\r\n	<br />\r\n	   abcdeabcde</p>\r\n<br /><p>\r\n	<br />\r\n	   Tỷ phú Warren Buffett sẽ hát mừng năm mới TQ... 22 644 0 0 333.0000 NULL ENUM(''</p>\r\n<p>\r\n	<br />\r\n	   abcdeabcde</p>\r\n<br /><p>\r\n	'',''</p>\r\n<p>\r\n	<br />\r\n	   Tỷ phú Warren...<br />\r\n	mvc.dos_module_services.contenten </p>\r\n<p>\r\n	<br />\r\n	   EN</p>\r\n<br /><p>\r\n	<br />\r\n	   Tỷ phú Warren Buffett sẽ hát m... 0 658 1 0 329.0000 NULL ENUM('''',''</p>\r\n<p>\r\n	<br />\r\n	   EN</p>\r\n<br /><p>\r\n	<br />\r\n	   Tỷ phú Warren Buffett...<br />\r\n	mvc.dos_module_services.contentfr </p>\r\n<p>\r\n	<br />\r\n	   KR</p>\r\n<br /><p>\r\n	<br />\r\n	   </p>\r\n<br /><p>\r\n	<br />\r\n	   Tỷ phú Warren Buf... 0 672 1 0 336.0000 NULL ENUM('''',''</p>\r\n<p>\r\n	<br />\r\n	   KR</p>\r\n<br /><p>\r\n	<br />\r\n	   </p>\r\n<br /><p>\r\n	<br />\r\n	   Tỷ phú W...<br />\r\n	mvc.dos_module_services.tag abcdedd dich-vu-cung-cap-thu-ky 7 23 0 0 15.0000 NULL ENUM(''abcdedd'',''dich-vu-cung-cap-thu-ky'') NOT NULL<br />\r\n	mvc.dos_module_services.description   0 0 2 0 0.0000 NULL CHAR(0) NOT NULL<br />\r\n	mvc.dos_module_services.hits 6 37 1 2 0 0 21.5000 15.5000 ENUM(''6'',''37'') NOT NULL<br />\r\n	mvc.dos_module_services.posted_date 2012-01-11 23:26:18 2012-02-02 23:56:53 19 19 0 0 19.0000 NULL ENUM(''2012-01-11 23:26:18'',''2012-02-02 23:56:53'') ...<br />\r\n	mvc.dos_module_services.record_order 1 2 1 1 0 0 1.5000 0.5000 ENUM(''1'',''2'') NOT NULL<br />\r\n	mvc.dos_module_services.extra_field1   0 0 2 0 0.0000 NULL CHAR(0) NOT NULL<br />\r\n	mvc.dos_module_services.extra_field2   0 0 2 0 0.0000 NULL CHAR(0) NOT NULL<br />\r\n	mvc.dos_module_services.hot 0 0 1 1 2 0 0.0000 0.0000 ENUM(''0'') NOT NULL<br />\r\n	mvc.dos_module_services.enable 1 1 1 1 0 0 1.0000 0.0000 ENUM(''1'') NOT NULL</p>\r\n<p>\r\n	Query results operations</p>\r\n', '<p>\r\n	<br />\r\n	Field_name Min_value Max_value Min_length Max_length Empties_or_zeros Nulls Avg_value_or_avg_length Std Optimal_fieldtype<br />\r\n	mvc.dos_module_services.record_id 29 30 2 2 0 0 29.5000 0.5000 ENUM(''29'',''30'') NOT NULL<br />\r\n	mvc.dos_module_services.title abcdedd Dịch vụ cung cấp thư ký 7 31 0 0 19.0000 NULL ENUM(''abcdedd'',''Dịch vụ cung cấp thư ký'') NOT NULL<br />\r\n	mvc.dos_module_services.titleen   0 0 2 0 0.0000 NULL CHAR(0) NOT NULL<br />\r\n	mvc.dos_module_services.titlefr   0 0 2 0 0.0000 NULL CHAR(0) NOT NULL<br />\r\n	mvc.dos_module_services.content</p>\r\n<p>\r\n	<br />\r\n	   abcdeabcde</p>\r\n<br /><p>\r\n	<br />\r\n	   Tỷ phú Warren Buffett sẽ hát mừng năm mới TQ... 22 644 0 0 333.0000 NULL ENUM(''</p>\r\n<p>\r\n	<br />\r\n	   abcdeabcde</p>\r\n<br /><p>\r\n	'',''</p>\r\n<p>\r\n	<br />\r\n	   Tỷ phú Warren...<br />\r\n	mvc.dos_module_services.contenten </p>\r\n<p>\r\n	<br />\r\n	   EN</p>\r\n<br /><p>\r\n	<br />\r\n	   Tỷ phú Warren Buffett sẽ hát m... 0 658 1 0 329.0000 NULL ENUM('''',''</p>\r\n<p>\r\n	<br />\r\n	   EN</p>\r\n<br /><p>\r\n	<br />\r\n	   Tỷ phú Warren Buffett...<br />\r\n	mvc.dos_module_services.contentfr </p>\r\n<p>\r\n	<br />\r\n	   KR</p>\r\n<br /><p>\r\n	<br />\r\n	   </p>\r\n<br /><p>\r\n	<br />\r\n	   Tỷ phú Warren Buf... 0 672 1 0 336.0000 NULL ENUM('''',''</p>\r\n<p>\r\n	<br />\r\n	   KR</p>\r\n<br /><p>\r\n	<br />\r\n	   </p>\r\n<br /><p>\r\n	<br />\r\n	   Tỷ phú W...<br />\r\n	mvc.dos_module_services.tag abcdedd dich-vu-cung-cap-thu-ky 7 23 0 0 15.0000 NULL ENUM(''abcdedd'',''dich-vu-cung-cap-thu-ky'') NOT NULL<br />\r\n	mvc.dos_module_services.description   0 0 2 0 0.0000 NULL CHAR(0) NOT NULL<br />\r\n	mvc.dos_module_services.hits 6 37 1 2 0 0 21.5000 15.5000 ENUM(''6'',''37'') NOT NULL<br />\r\n	mvc.dos_module_services.posted_date 2012-01-11 23:26:18 2012-02-02 23:56:53 19 19 0 0 19.0000 NULL ENUM(''2012-01-11 23:26:18'',''2012-02-02 23:56:53'') ...<br />\r\n	mvc.dos_module_services.record_order 1 2 1 1 0 0 1.5000 0.5000 ENUM(''1'',''2'') NOT NULL<br />\r\n	mvc.dos_module_services.extra_field1   0 0 2 0 0.0000 NULL CHAR(0) NOT NULL<br />\r\n	mvc.dos_module_services.extra_field2   0 0 2 0 0.0000 NULL CHAR(0) NOT NULL<br />\r\n	mvc.dos_module_services.hot 0 0 1 1 2 0 0.0000 0.0000 ENUM(''0'') NOT NULL<br />\r\n	mvc.dos_module_services.enable 1 1 1 1 0 0 1.0000 0.0000 ENUM(''1'') NOT NULL</p>\r\n<p>\r\n	Query results operations</p>\r\n', '<p>\r\n	<br />\r\n	Field_name Min_value Max_value Min_length Max_length Empties_or_zeros Nulls Avg_value_or_avg_length Std Optimal_fieldtype<br />\r\n	mvc.dos_module_services.record_id 29 30 2 2 0 0 29.5000 0.5000 ENUM(''29'',''30'') NOT NULL<br />\r\n	mvc.dos_module_services.title abcdedd Dịch vụ cung cấp thư ký 7 31 0 0 19.0000 NULL ENUM(''abcdedd'',''Dịch vụ cung cấp thư ký'') NOT NULL<br />\r\n	mvc.dos_module_services.titleen   0 0 2 0 0.0000 NULL CHAR(0) NOT NULL<br />\r\n	mvc.dos_module_services.titlefr   0 0 2 0 0.0000 NULL CHAR(0) NOT NULL<br />\r\n	mvc.dos_module_services.content</p>\r\n<p>\r\n	<br />\r\n	   abcdeabcde</p>\r\n<br /><p>\r\n	<br />\r\n	   Tỷ phú Warren Buffett sẽ hát mừng năm mới TQ... 22 644 0 0 333.0000 NULL ENUM(''</p>\r\n<p>\r\n	<br />\r\n	   abcdeabcde</p>\r\n<br /><p>\r\n	'',''</p>\r\n<p>\r\n	<br />\r\n	   Tỷ phú Warren...<br />\r\n	mvc.dos_module_services.contenten </p>\r\n<p>\r\n	<br />\r\n	   EN</p>\r\n<br /><p>\r\n	<br />\r\n	   Tỷ phú Warren Buffett sẽ hát m... 0 658 1 0 329.0000 NULL ENUM('''',''</p>\r\n<p>\r\n	<br />\r\n	   EN</p>\r\n<br /><p>\r\n	<br />\r\n	   Tỷ phú Warren Buffett...<br />\r\n	mvc.dos_module_services.contentfr </p>\r\n<p>\r\n	<br />\r\n	   KR</p>\r\n<br /><p>\r\n	<br />\r\n	   </p>\r\n<br /><p>\r\n	<br />\r\n	   Tỷ phú Warren Buf... 0 672 1 0 336.0000 NULL ENUM('''',''</p>\r\n<p>\r\n	<br />\r\n	   KR</p>\r\n<br /><p>\r\n	<br />\r\n	   </p>\r\n<br /><p>\r\n	<br />\r\n	   Tỷ phú W...<br />\r\n	mvc.dos_module_services.tag abcdedd dich-vu-cung-cap-thu-ky 7 23 0 0 15.0000 NULL ENUM(''abcdedd'',''dich-vu-cung-cap-thu-ky'') NOT NULL<br />\r\n	mvc.dos_module_services.description   0 0 2 0 0.0000 NULL CHAR(0) NOT NULL<br />\r\n	mvc.dos_module_services.hits 6 37 1 2 0 0 21.5000 15.5000 ENUM(''6'',''37'') NOT NULL<br />\r\n	mvc.dos_module_services.posted_date 2012-01-11 23:26:18 2012-02-02 23:56:53 19 19 0 0 19.0000 NULL ENUM(''2012-01-11 23:26:18'',''2012-02-02 23:56:53'') ...<br />\r\n	mvc.dos_module_services.record_order 1 2 1 1 0 0 1.5000 0.5000 ENUM(''1'',''2'') NOT NULL<br />\r\n	mvc.dos_module_services.extra_field1   0 0 2 0 0.0000 NULL CHAR(0) NOT NULL<br />\r\n	mvc.dos_module_services.extra_field2   0 0 2 0 0.0000 NULL CHAR(0) NOT NULL<br />\r\n	mvc.dos_module_services.hot 0 0 1 1 2 0 0.0000 0.0000 ENUM(''0'') NOT NULL<br />\r\n	mvc.dos_module_services.enable 1 1 1 1 0 0 1.0000 0.0000 ENUM(''1'') NOT NULL</p>\r\n<p>\r\n	Query results operations</p>\r\n', '<p>\r\n	<br />\r\n	Field_name Min_value Max_value Min_length Max_length Empties_or_zeros Nulls Avg_value_or_avg_length Std Optimal_fieldtype<br />\r\n	mvc.dos_module_services.record_id 29 30 2 2 0 0 29.5000 0.5000 ENUM(''29'',''30'') NOT NULL<br />\r\n	mvc.dos_module_services.title abcdedd Dịch vụ cung cấp thư ký 7 31 0 0 19.0000 NULL ENUM(''abcdedd'',''Dịch vụ cung cấp thư ký'') NOT NULL<br />\r\n	mvc.dos_module_services.titleen   0 0 2 0 0.0000 NULL CHAR(0) NOT NULL<br />\r\n	mvc.dos_module_services.titlefr   0 0 2 0 0.0000 NULL CHAR(0) NOT NULL<br />\r\n	mvc.dos_module_services.content</p>\r\n<p>\r\n	<br />\r\n	   abcdeabcde</p>\r\n<br /><p>\r\n	<br />\r\n	   Tỷ phú Warren Buffett sẽ hát mừng năm mới TQ... 22 644 0 0 333.0000 NULL ENUM(''</p>\r\n<p>\r\n	<br />\r\n	   abcdeabcde</p>\r\n<br /><p>\r\n	'',''</p>\r\n<p>\r\n	<br />\r\n	   Tỷ phú Warren...<br />\r\n	mvc.dos_module_services.contenten </p>\r\n<p>\r\n	<br />\r\n	   EN</p>\r\n<br /><p>\r\n	<br />\r\n	   Tỷ phú Warren Buffett sẽ hát m... 0 658 1 0 329.0000 NULL ENUM('''',''</p>\r\n<p>\r\n	<br />\r\n	   EN</p>\r\n<br /><p>\r\n	<br />\r\n	   Tỷ phú Warren Buffett...<br />\r\n	mvc.dos_module_services.contentfr </p>\r\n<p>\r\n	<br />\r\n	   KR</p>\r\n<br /><p>\r\n	<br />\r\n	   </p>\r\n<br /><p>\r\n	<br />\r\n	   Tỷ phú Warren Buf... 0 672 1 0 336.0000 NULL ENUM('''',''</p>\r\n<p>\r\n	<br />\r\n	   KR</p>\r\n<br /><p>\r\n	<br />\r\n	   </p>\r\n<br /><p>\r\n	<br />\r\n	   Tỷ phú W...<br />\r\n	mvc.dos_module_services.tag abcdedd dich-vu-cung-cap-thu-ky 7 23 0 0 15.0000 NULL ENUM(''abcdedd'',''dich-vu-cung-cap-thu-ky'') NOT NULL<br />\r\n	mvc.dos_module_services.description   0 0 2 0 0.0000 NULL CHAR(0) NOT NULL<br />\r\n	mvc.dos_module_services.hits 6 37 1 2 0 0 21.5000 15.5000 ENUM(''6'',''37'') NOT NULL<br />\r\n	mvc.dos_module_services.posted_date 2012-01-11 23:26:18 2012-02-02 23:56:53 19 19 0 0 19.0000 NULL ENUM(''2012-01-11 23:26:18'',''2012-02-02 23:56:53'') ...<br />\r\n	mvc.dos_module_services.record_order 1 2 1 1 0 0 1.5000 0.5000 ENUM(''1'',''2'') NOT NULL<br />\r\n	mvc.dos_module_services.extra_field1   0 0 2 0 0.0000 NULL CHAR(0) NOT NULL<br />\r\n	mvc.dos_module_services.extra_field2   0 0 2 0 0.0000 NULL CHAR(0) NOT NULL<br />\r\n	mvc.dos_module_services.hot 0 0 1 1 2 0 0.0000 0.0000 ENUM(''0'') NOT NULL<br />\r\n	mvc.dos_module_services.enable 1 1 1 1 0 0 1.0000 0.0000 ENUM(''1'') NOT NULL</p>\r\n<p>\r\n	Query results operations</p>\r\n', '<p>\r\n	<br />\r\n	Field_name Min_value Max_value Min_length Max_length Empties_or_zeros Nulls Avg_value_or_avg_length Std Optimal_fieldtype<br />\r\n	mvc.dos_module_services.record_id 29 30 2 2 0 0 29.5000 0.5000 ENUM(''29'',''30'') NOT NULL<br />\r\n	mvc.dos_module_services.title abcdedd Dịch vụ cung cấp thư ký 7 31 0 0 19.0000 NULL ENUM(''abcdedd'',''Dịch vụ cung cấp thư ký'') NOT NULL<br />\r\n	mvc.dos_module_services.titleen   0 0 2 0 0.0000 NULL CHAR(0) NOT NULL<br />\r\n	mvc.dos_module_services.titlefr   0 0 2 0 0.0000 NULL CHAR(0) NOT NULL<br />\r\n	mvc.dos_module_services.content</p>\r\n<p>\r\n	<br />\r\n	   abcdeabcde</p>\r\n<br /><p>\r\n	<br />\r\n	   Tỷ phú Warren Buffett sẽ hát mừng năm mới TQ... 22 644 0 0 333.0000 NULL ENUM(''</p>\r\n<p>\r\n	<br />\r\n	   abcdeabcde</p>\r\n<br /><p>\r\n	'',''</p>\r\n<p>\r\n	<br />\r\n	   Tỷ phú Warren...<br />\r\n	mvc.dos_module_services.contenten </p>\r\n<p>\r\n	<br />\r\n	   EN</p>\r\n<br /><p>\r\n	<br />\r\n	   Tỷ phú Warren Buffett sẽ hát m... 0 658 1 0 329.0000 NULL ENUM('''',''</p>\r\n<p>\r\n	<br />\r\n	   EN</p>\r\n<br /><p>\r\n	<br />\r\n	   Tỷ phú Warren Buffett...<br />\r\n	mvc.dos_module_services.contentfr </p>\r\n<p>\r\n	<br />\r\n	   KR</p>\r\n<br /><p>\r\n	<br />\r\n	   </p>\r\n<br /><p>\r\n	<br />\r\n	   Tỷ phú Warren Buf... 0 672 1 0 336.0000 NULL ENUM('''',''</p>\r\n<p>\r\n	<br />\r\n	   KR</p>\r\n<br /><p>\r\n	<br />\r\n	   </p>\r\n<br /><p>\r\n	<br />\r\n	   Tỷ phú W...<br />\r\n	mvc.dos_module_services.tag abcdedd dich-vu-cung-cap-thu-ky 7 23 0 0 15.0000 NULL ENUM(''abcdedd'',''dich-vu-cung-cap-thu-ky'') NOT NULL<br />\r\n	mvc.dos_module_services.description   0 0 2 0 0.0000 NULL CHAR(0) NOT NULL<br />\r\n	mvc.dos_module_services.hits 6 37 1 2 0 0 21.5000 15.5000 ENUM(''6'',''37'') NOT NULL<br />\r\n	mvc.dos_module_services.posted_date 2012-01-11 23:26:18 2012-02-02 23:56:53 19 19 0 0 19.0000 NULL ENUM(''2012-01-11 23:26:18'',''2012-02-02 23:56:53'') ...<br />\r\n	mvc.dos_module_services.record_order 1 2 1 1 0 0 1.5000 0.5000 ENUM(''1'',''2'') NOT NULL<br />\r\n	mvc.dos_module_services.extra_field1   0 0 2 0 0.0000 NULL CHAR(0) NOT NULL<br />\r\n	mvc.dos_module_services.extra_field2   0 0 2 0 0.0000 NULL CHAR(0) NOT NULL<br />\r\n	mvc.dos_module_services.hot 0 0 1 1 2 0 0.0000 0.0000 ENUM(''0'') NOT NULL<br />\r\n	mvc.dos_module_services.enable 1 1 1 1 0 0 1.0000 0.0000 ENUM(''1'') NOT NULL</p>\r\n<p>\r\n	Query results operations</p>\r\n', 'bai-viet-1', '', NULL, 12, '2012-02-02 18:44:29', 3, 1, NULL, NULL, 1, 15);

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
  `tag` varchar(100) NOT NULL,
  `description` varchar(250) NOT NULL,
  `cat_order` int(11) NOT NULL DEFAULT '1',
  `cat_enable` tinyint(1) NOT NULL DEFAULT '1',
  PRIMARY KEY (`cat_id`)
) ENGINE=InnoDB  DEFAULT CHARSET=utf8 AUTO_INCREMENT=16 ;

--
-- Dumping data for table `dos_module_news_cat`
--

INSERT INTO `dos_module_news_cat` (`cat_id`, `cat_parent_id`, `cat_title`, `cat_titleen`, `cat_titlefr`, `tag`, `description`, `cat_order`, `cat_enable`) VALUES
(11, 13, 'Test ', '', '', 'test', '', 1, 1),
(13, 0, 'Sản phẩm loại 2.2', '', '', 'san-pham-loai-22', '', 3, 1),
(14, 0, 'Sản phẩm loại 3', 'Cat 3', '3 CAT', 'san-pham-loai-3', '', 4, 1),
(15, 0, 'Sản phẩm loại vv', '', '', 'san-pham-loai-vv', '', 5, 1);

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
  `preview` text,
  `previewen` text,
  `previewfr` text,
  `detail` text NOT NULL,
  `detailen` text,
  `detailfr` text,
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
) ENGINE=InnoDB  DEFAULT CHARSET=utf8 AUTO_INCREMENT=18 ;

--
-- Dumping data for table `dos_module_product`
--

INSERT INTO `dos_module_product` (`record_id`, `postdate`, `pic_thumb`, `pic_full`, `pic_desc`, `title`, `titleen`, `titlefr`, `preview`, `previewen`, `previewfr`, `detail`, `detailen`, `detailfr`, `tag`, `description`, `hits`, `record_order`, `extra_field1`, `extra_field2`, `extra_field3`, `extra_field4`, `unit`, `hot`, `specials`, `enable`, `dos_module_product_cat_cat_id`) VALUES
(11, '2011-10-29 03:53:39', 'img11.jpg', NULL, NULL, 'Sản phẩm 3', '', '', '', '', '', '<p>\r\n	testing</p>\r\n', '', '', 'san-pham-3', '', 0, 1, '', '', '', '', 0, 0, 0, 1, 9),
(12, '2011-10-29 04:04:04', 'img12.jpg', NULL, NULL, 'Sản phẩm 7', '', '', '', '', '', '<p>\r\n	testing</p>\r\n', '', '', 'san-pham-7', '', 2, 2, '', '', '', '', 0, 0, 0, 1, 9),
(13, '2011-10-29 04:18:13', NULL, NULL, NULL, 'San pham cua abc', '', '', '<p>\r\n	adas</p>\r\n', '', '', '<p>\r\n	Overview|QuickStart|APIs|Reference Guide|Translations|Multimedia<br />\r\n	The Request Object<br />\r\n	Zend_Controller<br />\r\n	Programmer''s Reference Guide<br />\r\n	The Dispatcher<br />\r\n	The Standard Router<br />\r\n	Introduction</p>\r\n<p>\r\n	Zend_Controller_Router_Rewrite is the standard framework router. Routing is the process of taking a URI endpoint (that part of the URI which comes after the base URL) and decomposing it into parameters to determine which module, controller, and action of that controller should receive the request. This values of the module, controller, action and other parameters are packaged into a Zend_Controller_Request_Http object which is then processed by Zend_Controller_Dispatcher_Standard. Routing occurs only once: when the request is initially received and before the first controller is dispatched.</p>\r\n<p>\r\n	Zend_Controller_Router_Rewrite is designed to allow for mod_rewrite-like functionality using pure PHP structures. It is very loosely based on Ruby on Rails routing and does not require any prior knowledge of webserver URL rewriting. It is designed to work with a single Apache mod_rewrite rule (one of):</p>\r\n<p>\r\n	RewriteEngine on</p>\r\n', '', '', 'san-pham-cua-abc', '', 0, 3, '', '', '', '', 0, 0, 0, 1, 9),
(14, '2011-10-29 07:27:13', NULL, NULL, NULL, 'Thu viet bai ', '', '', '<p>\r\n	dadasd</p>\r\n', '', '', '<div style="width:80%;">\r\n	<h3>\r\n		Title goes here</h3>\r\n	<table border="1" cellpadding="0" cellspacing="0" style="width:150px;float:right;"><caption style="border:solid 1px #000000;">\r\n			<strong>Table title</strong></caption>\r\n		<tbody><tr><td>\r\n					 </td>\r\n				<td>\r\n					 </td>\r\n				<td>\r\n					 </td>\r\n			</tr><tr><td>\r\n					 </td>\r\n				<td>\r\n					 </td>\r\n				<td>\r\n					 </td>\r\n			</tr><tr><td>\r\n					 </td>\r\n				<td>\r\n					 </td>\r\n				<td>\r\n					 </td>\r\n			</tr></tbody></table><p>\r\n		       </p>\r\n	<div class="tent-product">\r\n		<br />\r\n		                       \r\n		<div class="product-img">\r\n			<br />\r\n			                            <a href="" title="&lt;?php echo $value[''cat_title'' . LANG] ?&gt;"><br />\r\n			                                <img alt="&lt;?php echo $value[''cat_title'' . LANG] ?&gt;" src="" /><br />\r\n			                            </a><br />\r\n			                       </div>\r\n		<div class="clear">\r\n			 </div>\r\n		<p>\r\n			 </p>\r\n		<p>\r\n			                       </p>\r\n		<h2 class="title-pro">\r\n			<br />\r\n			                            <a href="" title="&lt;?php echo $value[''cat_title'' . LANG] ?&gt;"><br />\r\n			                               <br />\r\n			                            </a><br />\r\n			                       </h2>\r\n		<br />\r\n		                       \r\n		<p class="bton-pro">\r\n			<br />\r\n			                            <a class="bton-detail" href="" title="&lt;?php echo $value[''cat_title'' . LANG] ?&gt;"><br />\r\n			                                Chi tiết<br />\r\n			                            </a><br />\r\n			                            <a class="bton-order" href="order.html" title="ĐẶT HÀNG"><br />\r\n			                                ĐẶT HÀNG</a></p>\r\n		<a class="bton-order" href="order.html" title="ĐẶT HÀNG"> </a></div>\r\n	<a class="bton-order" href="order.html" title="ĐẶT HÀNG"> </a></div>\r\n', '', '', 'thu-viet-bai', '', 0, 4, '', '', '', '', 0, 1, 0, 1, 9),
(15, '2011-10-29 07:27:22', NULL, NULL, NULL, 'tai khoan', '', '', '<p>\r\n	asdasd</p>\r\n', '', '', '<p>\r\n	asdasd</p>\r\n', '', '', 'tai-khoan', '', 0, 5, '', '', '', '', 0, 0, 1, 1, 9),
(16, '2011-10-29 07:27:39', 'img5.jpg', NULL, NULL, 'asdas ', '', '', '<p>\r\n	asdasd</p>\r\n', '', '', '<p>\r\n	asdasd</p>\r\n', '', '', 'asdas', '', 0, 6, '', '', '', '', 0, 0, 0, 1, 7),
(17, '2012-02-03 15:29:15', NULL, NULL, NULL, 'Sản phẩm than đá  ', 'Coat', '', '<p>\r\n	sscs</p>\r\n', '', '', '<p>\r\n	sccccccccccccccccccccccccccccccccccccccccccc</p>\r\n', '', '', 'san-pham-than-da', '', 0, 7, '', '', '', '', 0, 0, 0, 1, 7);

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
  `tag` varchar(100) NOT NULL,
  `description` varchar(250) NOT NULL,
  `preview` text,
  `previewen` text,
  `previewfr` text,
  `cat_order` int(11) NOT NULL DEFAULT '1',
  `cat_extra1` varchar(45) DEFAULT NULL,
  `cat_extra2` varchar(45) DEFAULT NULL,
  `cat_extra3` varchar(45) DEFAULT NULL,
  `cat_extra4` varchar(45) DEFAULT NULL,
  `cat_enable` tinyint(1) NOT NULL DEFAULT '1',
  PRIMARY KEY (`cat_id`)
) ENGINE=InnoDB  DEFAULT CHARSET=utf8 AUTO_INCREMENT=10 ;

--
-- Dumping data for table `dos_module_product_cat`
--

INSERT INTO `dos_module_product_cat` (`cat_id`, `cat_parent_id`, `pic_thumb`, `pic_full`, `pic_desc`, `cat_title`, `cat_titleen`, `cat_titlefr`, `tag`, `description`, `preview`, `previewen`, `previewfr`, `cat_order`, `cat_extra1`, `cat_extra2`, `cat_extra3`, `cat_extra4`, `cat_enable`) VALUES
(6, 0, NULL, NULL, NULL, 'Danh mục ff', '', '', 'danh-muc-ff', '', '<p>\r\n	teteset</p>\r\n', '', '', 1, '', '', '', '', 1),
(7, 0, NULL, NULL, NULL, 'Danh mục cde', '', '', 'danh-muc-cde', '', '', '', '', 2, '', '', '', '', 1),
(8, 6, NULL, NULL, NULL, 'Danh mục con ', '', '', 'danh-muc-con', '', '<p>\r\n	testsetestse</p>\r\n', '', '', 3, '', '', '', '', 1),
(9, 6, 'img2.jpg', NULL, NULL, 'Danh mục abc', '', '', 'danh-muc-abc', '', '<p>\r\n	test</p>\r\n', '', '', 4, '', '', '', '', 1);

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
  `content` text,
  `contenten` text,
  `contentfr` text,
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
) ENGINE=InnoDB  DEFAULT CHARSET=utf8 AUTO_INCREMENT=31 ;

--
-- Dumping data for table `dos_module_services`
--

INSERT INTO `dos_module_services` (`record_id`, `title`, `titleen`, `titlefr`, `content`, `contenten`, `contentfr`, `tag`, `description`, `hits`, `posted_date`, `record_order`, `extra_field1`, `extra_field2`, `hot`, `enable`) VALUES
(29, 'abcdedd', '', '', '<p>\r\n	abcdeabcde</p>\r\n', '', '', 'abcdedd', '', 41, '2012-01-11 16:26:18', 1, '', '', 0, 1),
(30, 'Dịch vụ cung cấp thư ký', '', '', '<p>\r\n	Tỷ phú Warren Buffett sẽ hát mừng năm mới TQ<br />\r\n	Nhà đầu tư huyền thoại thế giới Warren Buffett dự kiến sẽ góp mặt tại Lễ hội Mùa Xuân truyền thống của Trung Quốc trong một gala trực tuyến bằng một tiết mục âm nhạc.</p>\r\n<p>\r\n	Tôn vinh quốc gia, DN uy tín trên truyền thông quốc tế<br />\r\n	CEO Nokia phủ nhận tin ''bán mình'' cho Microsoft<br />\r\n	Ấn Độ: Mất một phần ba tỷ phú vì khủng hoảng<br />\r\n	Petrolimex: Đề nghị khởi tố nhân viên "rút ruột" xăng dầu<br />\r\n	Khởi kiện đòi lại thương hiệu c</p>\r\n', '<p>\r\n	EN</p>\r\n<p>\r\n	Tỷ phú Warren Buffett sẽ hát mừng năm mới TQ<br />\r\n	Nhà đầu tư huyền thoại thế giới Warren Buffett dự kiến sẽ góp mặt tại Lễ hội Mùa Xuân truyền thống của Trung Quốc trong một gala trực tuyến bằng một tiết mục âm nhạc.</p>\r\n<p>\r\n	Tôn vinh quốc gia, DN uy tín trên truyền thông quốc tế<br />\r\n	CEO Nokia phủ nhận tin ''bán mình'' cho Microsoft<br />\r\n	Ấn Độ: Mất một phần ba tỷ phú vì khủng hoảng<br />\r\n	Petrolimex: Đề nghị khởi tố nhân viên "rút ruột" xăng dầu<br />\r\n	Khởi kiện đòi lại thương hiệu c</p>\r\n', '<p>\r\n	KR</p>\r\n<p>\r\n	 </p>\r\n<p>\r\n	Tỷ phú Warren Buffett sẽ hát mừng năm mới TQ<br />\r\n	Nhà đầu tư huyền thoại thế giới Warren Buffett dự kiến sẽ góp mặt tại Lễ hội Mùa Xuân truyền thống của Trung Quốc trong một gala trực tuyến bằng một tiết mục âm nhạc.</p>\r\n<p>\r\n	Tôn vinh quốc gia, DN uy tín trên truyền thông quốc tế<br />\r\n	CEO Nokia phủ nhận tin ''bán mình'' cho Microsoft<br />\r\n	Ấn Độ: Mất một phần ba tỷ phú vì khủng hoảng<br />\r\n	Petrolimex: Đề nghị khởi tố nhân viên "rút ruột" xăng dầu<br />\r\n	Khởi kiện đòi lại thương hiệu c</p>\r\n', 'dich-vu-cung-cap-thu-ky', '', 6, '2012-02-02 16:56:53', 2, '', '', 0, 1);

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
) ENGINE=InnoDB  DEFAULT CHARSET=utf8 AUTO_INCREMENT=48 ;

--
-- Dumping data for table `dos_module_support`
--

INSERT INTO `dos_module_support` (`support_id`, `support_name`, `support_phone`, `support_value`, `support_order`, `support_type`, `support_part`) VALUES
(46, '0987 001001', '', 'hongvietsoft', 1, 'yahoo', 1),
(47, '0929 001001', '', 'thanhansoft', 1, 'yahoo', 1);

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
('adv_height', '300', 'Quảng cáo - chiều cao'),
('adv_width', '185', 'Quảng cáo - chiều ngang'),
('banner_height', '432', 'Banner - Chiều cao'),
('banner_width', '1005', 'Banner - Chiều ngang'),
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
('product_height_cat', '200', 'Sản phẩm - Danh mục - Chiều cao'),
('product_height_cat_thumb', '147', 'Sản phẩm - Danh mục - Thu nhỏ - Chiều cao'),
('product_height_thumb', '147', 'Sản phẩm - Thu nhỏ - Chiều cao'),
('product_width', '401', 'Sản phẩm - Chiều ngang'),
('product_width_cat', '288', 'Sản phẩm - Danh mục - Chiều ngang'),
('product_width_cat_thumb', '177', 'Sản phẩm - Danh mục - Thu nhỏ - Chiều ngang'),
('product_width_thumb', '177', 'Sản phẩm - Thu nhỏ - Chiều ngang'),
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
) ENGINE=InnoDB  DEFAULT CHARSET=utf8 AUTO_INCREMENT=14070 ;

--
-- Dumping data for table `dos_sys_functions`
--

INSERT INTO `dos_sys_functions` (`function_id`, `model_name`, `model_load`, `action`, `varname`, `function_load`) VALUES
(14046, 'default', 'Product_Model_Product', 'index', 'menu_product_special', 'listSpecials'),
(14047, 'about', 'About_Model_About', 'index', 'menu_about', 'getListmenu'),
(14048, 'about', 'About_Model_About', 'view', 'menu_about', 'getListmenu'),
(14049, 'account', 'Webadmin_Model_Account', 'add', 'menu_account', 'getListmenu'),
(14050, 'account', 'Webadmin_Model_Account', 'changepass', 'menu_account', 'getListmenu'),
(14051, 'account', 'Webadmin_Model_Account', 'index', 'menu_account', 'getListmenu'),
(14052, 'default', 'About_Model_About', 'index', 'menu_about_home', 'getHomeRecord'),
(14053, 'news', 'News_Model_NewsCat', 'cat', 'menu_news', 'getListmenu'),
(14054, 'news', 'News_Model_NewsCat', 'index', 'menu_news', 'getListmenu'),
(14055, 'news', 'News_Model_News', 'index', 'list_news_new', 'listItemsHot'),
(14056, 'news', 'News_Model_NewsCat', 'view', 'menu_news', 'getListmenu'),
(14057, 'product', 'Product_Model_Product', 'index', 'menu_product_hot', 'listHotItem'),
(14058, 'services', 'Services_Model_Services', 'index', 'menu_services', 'getListmenu'),
(14059, 'services', 'Services_Model_Services', 'view', 'menu_services', 'getListmenu'),
(14060, 'setup', 'Webadmin_Model_Setup', 'config', 'menu_setup', 'getListmenu'),
(14061, 'setup', 'Webadmin_Model_Setup', 'function', 'menu_setup', 'getListmenu'),
(14062, 'setup', 'Webadmin_Model_Setup', 'index', 'menu_setup', 'getListmenu'),
(14063, 'setup', 'Webadmin_Model_Setup', 'lang', 'menu_setup', 'getListmenu'),
(14064, 'setup', 'Webadmin_Model_Setup', 'menu', 'menu_setup', 'getListmenu'),
(14065, 'setup', 'Webadmin_Model_Setup', 'title', 'menu_setup', 'getListmenu'),
(14066, 'setup', 'Webadmin_Model_Setup', 'web', 'menu_setup', 'getListmenu'),
(14067, 'tool', 'Webadmin_Model_Tool', 'analytics', 'menu_tool', 'getListmenu'),
(14068, 'tool', 'Webadmin_Model_Tool', 'index', 'menu_tool', 'getListmenu'),
(14069, 'tool', 'Webadmin_Model_Tool', 'seo', 'menu_tool', 'getListmenu');

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
('member', 'services', 'deny'),
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
  PRIMARY KEY (`lang_name`)
) ENGINE=InnoDB DEFAULT CHARSET=utf8;

--
-- Dumping data for table `dos_sys_langs`
--

INSERT INTO `dos_sys_langs` (`lang_name`, `lang`, `langen`, `langfr`) VALUES
('about', 'Giới thiệu', 'Introduction', '소개'),
('about_coperation', 'GIỚI THIỆU TẬP ĐOÀN', '', ''),
('about_extra1', 'Thông tin phụ 1', '', ''),
('about_extra2', 'Thông tin phụ 2', '', ''),
('action', 'Thao tác', '', ''),
('adv', 'Quảng cáo', '', ''),
('adv_description', 'Mô tả quảng cáo', '', ''),
('adv_end_date', 'Ngày kết thúc', '', ''),
('adv_position', 'Vị trí', '', ''),
('adv_position_center', 'Ở giữa', '', ''),
('adv_position_left', 'Bên trái', '', ''),
('adv_position_right', 'Bên phải', '', ''),
('adv_position_right_bottom', 'Bên phải - Dưới', '', ''),
('adv_position_right_top', 'Bên phải - Trên', '', ''),
('adv_start_date', 'Ngày bắt đầu', '', ''),
('adv_type', 'Loại quảng cáo', '', ''),
('adv_type_current', 'Trang hiện tại', '', ''),
('adv_type_new', 'Trang mới', '', ''),
('adv_url', 'Liên kết', '', ''),
('banner', 'Logo &amp; Banner', '', ''),
('banner_link', 'Liên kết', '', ''),
('banner_position', 'Vị trí hiển thị', '', ''),
('booking', 'Đặt Phòng', '', ''),
('catparent', 'Phân loại cha', '', ''),
('conference', 'Tiệc &amp; Hội nghị', '', ''),
('confirmdel', 'Bạn có chắc chắn xóa', '', ''),
('contact', 'Liên hệ', 'Contact', ''),
('contact_msg', 'Quý khách có thể liên hệ với chúng tôi bằng cách điền đầy đủ thông tin vào mẫu sau:', '', ''),
('contact_success', 'Liên hệ thành công', '', ''),
('copyright', 'Copyright © 2011 by Azweb.vn. All rights reserved', '', ''),
('counter', 'Thống kê truy cập', '', ''),
('counter_online', 'Đang truy cập', '', ''),
('counter_today', 'Truy cập trong ngày', '', ''),
('counter_total', 'Tổng số lượt truy cập', '', ''),
('createdate', 'Ngày tạo', '', ''),
('default', 'Trang chủ', '', ''),
('detail', 'Chi tiết', 'Detail', ''),
('developed', 'Developed by', '', ''),
('end', 'Cuối cùng', '', ''),
('experiences', 'Kinh nghiệm', '', ''),
('gallery', 'Hình ảnh', '', ''),
('handbook', 'Cẩm nang', '', ''),
('hit', 'Lần xem', '', ''),
('home', 'Trang chủ', '', ''),
('inbox', 'Hộp thư', '', ''),
('job', 'Tuyển dụng', '', ''),
('job_extra1', 'Thông tin phụ 1', '', ''),
('job_extra2', 'Thông tin phụ 2', '', ''),
('logout', 'Thoát', '', ''),
('namecat', 'Tên phân loại', '', ''),
('news', 'Tin tức', '', ''),
('news_tophit', 'Tin tức xem nhiều nhất', '', ''),
('next', 'Tiếp', '', ''),
('norecord', 'Không tồn tại mẫu tin', '', ''),
('payment', 'Thanh toán', '', ''),
('picture_thumb', 'Hình thu nhỏ', '', ''),
('previous', 'Lùi', '', ''),
('product', 'Sản phẩm', '', ''),
('productnum', 'Số sản phẩm', '', ''),
('product_cartitem', 'Thông tin giỏ hàng', '', ''),
('product_cat_extra1', 'Thông tin phụ 1', '', ''),
('product_cat_extra2', 'Thông tin phụ 2', '', ''),
('product_cat_extra3', 'Thông tin phụ 3', '', ''),
('product_cat_extra4', 'Thông tin phụ 4', '', ''),
('product_detail', 'Chi tiết sản phẩm', '', ''),
('product_extra1', 'Thông tin phụ 1', '', ''),
('product_extra2', 'Thông tin phụ 2', '', ''),
('product_extra3', 'Thông tin phụ 3', '', ''),
('product_extra4', 'Thông tin phụ 4', '', ''),
('product_hot', 'Sản phẩm nổi bật', '', ''),
('product_new', 'Sản phẩm mới', '', ''),
('product_ordering', 'Thông tin đặt hàng', '', ''),
('product_other', 'Sản phẩm khác', '', ''),
('product_specials', 'Sản phẩm đặc biệt', '', ''),
('product_tophit', 'Sản phẩm xem nhiều nhất', '', ''),
('product_unit', 'Đơn giá', '', ''),
('promotions', 'Khuyến mãi', '', ''),
('root', 'Gốc', '', ''),
('sale_booking', 'Phòng đặt vé', '', ''),
('sale_business', 'Phòng kinh doanh', '', ''),
('services', 'Dịch vụ', '', ''),
('services_extra1', 'Thông tin phụ 1', '', ''),
('services_extra2', 'Thông tin phụ 2', '', ''),
('setup', 'Cài đặt &amp; cấu hình', '', ''),
('start', 'Đầu tiên', '', ''),
('statistics', 'Thống kê truy cập', 'Statistics', '통계량'),
('support', 'Hỗ trợ trực tuyến', 'Support', '지원'),
('sys_account', 'Tài khoản của tôi', '', ''),
('sys_active', 'Hiển thị', '', ''),
('sys_add', 'Thêm mới', '', ''),
('sys_addcat', 'Thêm phân loại', '', ''),
('sys_addpost', 'Thêm bài viết', '', ''),
('sys_addrow', 'Thêm dòng', '', ''),
('sys_cancel', 'Hủy bỏ', '', ''),
('sys_delete', 'Xóa', '', ''),
('sys_detail', 'Chi tiết', '', ''),
('sys_edit', 'Chỉnh sửa', '', ''),
('sys_editcat', 'Sửa phân loại', '', ''),
('sys_editpost', 'Sửa bài viết', '', ''),
('sys_erroraccess', 'Bạn không có quyền truy cập vì chức năng này dùng để cấu hình thông số cho web', '', ''),
('sys_func_static', 'Thống kê chức năng', '', ''),
('sys_hidden', 'Ẩn', '', ''),
('sys_hot', 'Nổi bật', '', ''),
('sys_lang', 'Cấu hình ngôn ngữ', '', ''),
('sys_menu', 'Cấu hình menu', '', ''),
('sys_nohot', 'Không nổi bật', '', ''),
('sys_nospecials', 'Không đặc biệt', '', ''),
('sys_order', 'Thứ tự', '', ''),
('sys_picture', 'Hình ảnh', '', ''),
('sys_preview', 'Mô tả', '', ''),
('sys_save', 'Lưu', '', ''),
('sys_sort', 'Sắp xếp', '', ''),
('sys_specials', 'Hiển trên trang chủ', '', ''),
('sys_title', 'Tiêu đề', '', ''),
('sys_tool', 'Công cụ &amp; Báo cáo', '', ''),
('sys_web', 'Cấu hình website', '', ''),
('video', 'Video', '', ''),
('video_url', 'Link video', '', ''),
('weblink', 'Liên kết web', '', ''),
('weblink_name', 'Tên website', '', ''),
('weblink_url', 'Địa chỉ web', '', ''),
('welcome_chat', 'Xin chào, tôi muốn hỏi về sản phẩm - dịch vụ của công ty bạn', '', '');

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
  `url` varchar(100) NOT NULL,
  `target` varchar(20) DEFAULT NULL,
  `position` tinyint(4) DEFAULT '0',
  PRIMARY KEY (`moduleid`)
) ENGINE=InnoDB DEFAULT CHARSET=utf8;

--
-- Dumping data for table `dos_sys_modules`
--

INSERT INTO `dos_sys_modules` (`moduleid`, `module`, `moduleen`, `modulefr`, `url`, `target`, `position`) VALUES
('about', 'Giới thiệu', '', '', 'gioi-thieu', '', 1),
('contact', 'Liên hệ', '', '', 'lien-he', '', 5),
('default', 'Trang chủ', '', '', 'trang-chu', '', 0),
('news', 'Tin tức', '', '', 'tin-tuc', '', 4),
('product', 'Sản phẩm', '', '', 'san-pham', '', 2),
('services', 'Dịch vụ', '', '', 'dich-vu', '', 3);

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
('google_analytic', '<script type="text/javascript">\r\n\r\n  var _gaq = _gaq || [];\r\n  _gaq.push([''_setAccount'', ''UA-25177991-7'']);\r\n  _gaq.push([''_trackPageview'']);\r\n\r\n  (function() {\r\n    var ga = document.createElement(''script''); ga.type = ''text/javascript''; ga.async = true;\r\n    ga.src = (''https:'' == document.location.protocol ? ''https://ssl'' : ''http://www'') + ''.google-analytics.com/ga.js'';\r\n    var s = document.getElementsByTagName(''script'')[0]; s.parentNode.insertBefore(ga, s);\r\n  })();\r\n\r\n</script>');

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
('bnfm0uo14', 1328499901);

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
('golden', 'thanhansoft@gmail.com', '7d2b88f5977b8a31c6193b4c81a43daf', 'Golden', 'member', '16026d60', 1),
('grouplaptrinh', 'info@grouplaptrinh.com', 'b7a659e0c28c88b3ee01adf805fc228f', 'GroupLapTrinh', 'administrator', NULL, 1),
('khoisudoanhnghiep', 'info@khoisudoanhnghiep.vn', 'eec6b2109b7e59c6a969aa1852d2c875', 'Khoisudoanhnghiep', 'member', NULL, 1),
('thanhansoft', 'thanhansoft@yahoo.com', 'e10adc3949ba59abbe56e057f20f883e', 'Thanhansoft', 'member', NULL, 1);

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
('timestamp_today', '1328461200'),
('titleweb', 'Azweb.vn'),
('total_visit', '143'),
('total_visit_today', '3'),
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
