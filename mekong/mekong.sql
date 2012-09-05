-- phpMyAdmin SQL Dump
-- version 3.4.5
-- http://www.phpmyadmin.net
--
-- Host: localhost
-- Generation Time: Sep 05, 2012 at 04:33 AM
-- Server version: 5.5.16
-- PHP Version: 5.3.8

SET SQL_MODE="NO_AUTO_VALUE_ON_ZERO";
SET time_zone = "+00:00";


/*!40101 SET @OLD_CHARACTER_SET_CLIENT=@@CHARACTER_SET_CLIENT */;
/*!40101 SET @OLD_CHARACTER_SET_RESULTS=@@CHARACTER_SET_RESULTS */;
/*!40101 SET @OLD_COLLATION_CONNECTION=@@COLLATION_CONNECTION */;
/*!40101 SET NAMES utf8 */;

--
-- Database: `mekong`
--

-- --------------------------------------------------------

--
-- Table structure for table `hoiit_configs`
--

CREATE TABLE IF NOT EXISTS `hoiit_configs` (
  `config_name` varchar(30) NOT NULL,
  `config_value` varchar(45) NOT NULL,
  `config_desc` varchar(100) DEFAULT NULL,
  `hoiit_modules_module_id` varchar(30) NOT NULL,
  PRIMARY KEY (`config_name`),
  KEY `fk_hoiit_configs_hoiit_modules1` (`hoiit_modules_module_id`)
) ENGINE=InnoDB DEFAULT CHARSET=utf8;

--
-- Dumping data for table `hoiit_configs`
--

INSERT INTO `hoiit_configs` (`config_name`, `config_value`, `config_desc`, `hoiit_modules_module_id`) VALUES
('adv_bottom_height', '222', NULL, 'adv'),
('adv_bottom_width', '222', NULL, 'adv'),
('adv_center_height', '222', NULL, 'adv'),
('adv_center_width', '222', NULL, 'adv'),
('adv_left_height', '222', NULL, 'adv'),
('adv_left_width', '222', NULL, 'adv'),
('adv_right_height', '222', NULL, 'adv'),
('adv_right_width', '222', NULL, 'adv'),
('adv_top_height', '222', NULL, 'adv'),
('adv_top_width', '222', NULL, 'adv'),
('banner_height', '275', NULL, 'banner'),
('banner_width', '520', NULL, 'banner'),
('contact_email_received', 'thanhansoft@gmail.com', NULL, 'contact'),
('contact_host', 'smtp.gmail.com', NULL, 'contact'),
('contact_password', 'assas', NULL, 'contact'),
('contact_port', '465', NULL, 'contact'),
('contact_send_mail_smtp', '1', NULL, 'contact'),
('contact_username', 'thanhansoft', NULL, 'contact'),
('logo_height', '114', NULL, 'banner'),
('logo_width', '403', NULL, 'banner'),
('news_cat_height_thumb', '200', NULL, 'news'),
('news_cat_width_thumb', '200', NULL, 'news'),
('news_height_thumb', '200', NULL, 'news'),
('news_num_item_cat', '3', NULL, 'news'),
('news_num_item_hot', '7', '', 'news'),
('news_num_item_index', '3', NULL, 'news'),
('news_num_item_new', '7', NULL, 'news'),
('news_width_thumb', '200', NULL, 'news'),
('products_cat_height_thumb', '200', NULL, 'products'),
('products_cat_width_thumb', '200', NULL, 'products'),
('products_height_desc', '700', NULL, 'products'),
('products_height_full', '700', NULL, 'products'),
('products_height_thumb', '220', NULL, 'products'),
('products_width_desc', '520', NULL, 'products'),
('products_width_full', '520', NULL, 'products'),
('products_width_thumb', '220', NULL, 'products');

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
('menu_news', 'NewsCat', '', 'listItem', 'news'),
('menu_products', 'ProductsCat', '', 'listItem', 'products'),
('news_hot', 'News', '', 'listItemsHot', 'news'),
('news_list_first', 'News', '', 'ListFirst', 'news'),
('news_new', 'News', '', 'listItemsNew', 'news'),
('new_poll', 'Poll', '', 'getFirstItem', 'poll');

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
('action', 'Action', 1, 'en'),
('action', 'Thao tác', 1, 'vi'),
('add_new', 'Add new', 1, 'en'),
('add_new', 'Thêm mới', 1, 'vi'),
('add_row', 'Thêm dòng', 1, 'vi'),
('adv', 'Adv', 0, 'en'),
('adv', 'Quảng cáo', 0, 'vi'),
('banner', 'Banner', 1, 'en'),
('banner', 'Banner', 1, 'vi'),
('cancel', 'Cancel', 1, 'en'),
('cancel', 'Hủy bỏ', 1, 'vi'),
('cat_title', 'Cat title', 0, 'en'),
('cat_title', 'Danh mục', 0, 'vi'),
('contact', 'Contact', 0, 'en'),
('contact', 'Liên hệ', 0, 'vi'),
('counter', 'Counter', 0, 'en'),
('counter', 'Thống kê truy cập', 0, 'vi'),
('create_date', 'Created date', 1, 'en'),
('create_date', 'Ngày tạo', 1, 'vi'),
('default', 'Home page', 0, 'en'),
('default', 'Trang chủ', 0, 'vi'),
('delete', 'Delete', 1, 'en'),
('delete', 'Xóa', 1, 'vi'),
('edit', 'Edit', 0, 'en'),
('edit', 'Chỉnh sửa', 0, 'vi'),
('factory', 'Factory', 0, 'en'),
('factory', 'Nhà máy', 0, 'vi'),
('hidden', 'Hidden', 1, 'en'),
('hidden', 'Ẩn', 1, 'vi'),
('news', 'News', 0, 'en'),
('news', 'Tin tức & sự kiện', 0, 'vi'),
('no_record', 'Không tồn tại mẫu tin', 0, 'vi'),
('order', 'Order', 1, 'en'),
('order', 'Thứ tự', 1, 'vi'),
('poll', 'Bình chọn', 0, 'en'),
('poll', 'Bình chọn', 0, 'vi'),
('products', 'Products', 0, 'en'),
('products', 'Sản phẩm', 0, 'vi'),
('show', 'Show', 1, 'en'),
('show', 'Hiển thị', 1, 'vi'),
('sort', 'Sort', 1, 'en'),
('sort', 'Sắp xếp', 1, 'vi'),
('support', 'Support', 0, 'en'),
('support', 'Hỗ trợ trực tuyến', 0, 'vi'),
('synchronous', 'Synchronous', 1, 'en'),
('synchronous', 'Đồng bộ', 1, 'vi'),
('title', 'Title', 1, 'en'),
('title', 'Tiêu đề', 1, 'vi'),
('view', 'View', 1, 'en'),
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
  `module_page` tinyint(1) NOT NULL,
  PRIMARY KEY (`module_id`)
) ENGINE=InnoDB DEFAULT CHARSET=utf8;

--
-- Dumping data for table `hoiit_modules`
--

INSERT INTO `hoiit_modules` (`module_id`, `module_title`, `module_url`, `module_sort`, `module_type`, `module_page`) VALUES
('about', 'Danh sách|Cấu hình Url', 'about|about/url', 2, 1, 1),
('adv', 'Danh sách|Cấu hình', 'adv|adv/config', 5, 1, 0),
('banner', 'Danh sách Banner|Danh sách Logo|Cấu hình', 'banner|banner/logo|banner/config', 6, 1, 0),
('contact', 'Danh sách|Cấu hình|Cấu hình Url', 'contact|contact/config|contact/url', 2, 1, 1),
('counter', 'Counter', NULL, 4, 0, 0),
('default', 'Default', NULL, 1, 1, 1),
('factory', 'Danh sách|Cấu hình Url', 'factory|factory/url', 2, 1, 1),
('news', 'Danh mục|Danh sách|Cấu hình|Cấu hình Url', 'news/cat|news|news/config|news/url', 4, 1, 1),
('poll', 'Danh sách|Cấu hình Url', 'poll|poll/url', 7, 1, 1),
('products', 'Danh mục|Danh sách|Cấu hình|Cấu hình Url', 'products/cat|products|products/config|products/url', 3, 1, 1),
('support', 'Danh sách', 'support', 6, 1, 0);

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
) ENGINE=InnoDB  DEFAULT CHARSET=utf8 AUTO_INCREMENT=4 ;

--
-- Dumping data for table `hoiit_module_about`
--

INSERT INTO `hoiit_module_about` (`record_id`, `pic_thumb`, `created`, `record_order`, `hot`, `field1`, `field2`, `enable`) VALUES
(1, NULL, '2012-09-05 02:21:48', 2, 1, NULL, NULL, 1),
(2, NULL, '2012-09-05 02:26:51', 1, 1, NULL, NULL, 1),
(3, NULL, '2012-09-05 02:31:34', 3, 0, NULL, NULL, 1);

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
(1, 'en', 'About uPVC door', '<p><img style="float:left;margin:0 10px 8px 0;" src="/mekong/public/userfiles/image/img.png" alt="" width="123" height="98" />Produced by the European quality standards, product of uPVC branded MEKONGSTAR window is synchronized set of components, including: uPVC profile bars box-like structure, is divided into the hollow cavity fitted with steel corereinforcement to increase the bearing capacity for the door, combined with double rings and glass box inert gas is pumped to ensure high-sealed, with good sound insulation. In addition, high-grade uPVC material has the advantages such as: no warping, shrinkage, small painting, routine maintenance, high fire resistance, oxidation, aging or stained gold in terms of solar radiation or acid rain. Therefore, the door retains the original beauty during use. These advantages allow the door to long-term economic efficiency for the user by saving energy costs and routine maintenance.</p>', 'about-upvc-door', 'Produced by the European quality standards, product of uPVC branded MEKONGSTAR window is synchronized set of components, including: uPVC profile bars box-like structure', 0, NULL, NULL),
(1, 'vi', 'Giới thiệu cửa uPVC', '<p><img style="float:left;margin:0 10px 8px 0;" src="/mekong/public/userfiles/image/img.png" alt="" width="123" height="98" />Được sản xuất theo tiêu chuẩn chất lượng châu Âu, sản phẩm cửa uPVC mang thương hiệu MEKONGSTAR WINDOW là tập hợp đồng bộ của các linh kiện gồm: thanh profile uPVC có cấu trúc dạng hộp, được chia thành nhiều khoang rỗng có lắp lõi thép gia cường để tăng khả năng chịu lực cho bộ cửa, kết hợp với hệ gioăng kép và hộp kính được bơm khí trơ đảm bảo độ kín khít cao, có tính cách âm, cách nhiệt tốt. Ngoài ra, vật liệu uPVC cao cấp còn có những ưu điểm khác như: không cong vênh, co ngót, ít phải sơn sửa, bảo dưỡng định kỳ, khả năng chống cháy cao, không bị oxy hóa, không bị lão hóa hay ố vàng trong điều kiện bức xạ mặt trời hay mưa a xít. Chính vì vậy, cửa luôn giữ được vẻ đẹp ban đầu trong suốt thời gian sử dụng. Những ưu điểm này cho phép cửa đem lại hiệu quả kinh tế lâu dài cho người sử dụng nhờ tiết kiệm chi phí điện năng và bảo dưỡng định kỳ.</p>', 'gioi-thieu-cua-upvc', 'Được sản xuất theo tiêu chuẩn chất lượng châu Âu, sản phẩm cửa uPVC mang thương hiệu MEKONGSTAR WINDOW là tập hợp đồng bộ của các linh kiện gồm: thanh profile uPVC có cấu trúc dạng hộp', 0, NULL, NULL),
(2, 'en', 'Advantages of uPVC', '<p><img style="float:left;margin:0 10px 8px 0;" src="/mekong/public/userfiles/image/img.png" alt="" width="123" height="98" />Produced by the European quality standards, product of uPVC branded MEKONGSTAR window is synchronized set of components, including: uPVC profile bars box-like structure, is divided into the hollow cavity fitted with steel corereinforcement to increase the bearing capacity for the door, combined with double rings and glass box inert gas is pumped to ensure high-sealed, with good sound insulation. In addition, high-grade uPVC material has the advantages such as: no warping, shrinkage, small painting, routine maintenance, high fire resistance, oxidation, aging or stained gold in terms of solar radiation or acid rain. Therefore, the door retains the original beauty during use. These advantages allow the door to long-term economic efficiency for the user by saving energy costs and routine maintenance.</p>', 'advantages-of-upvc', 'Produced by the European quality standards, product of uPVC branded MEKONGSTAR window is synchronized set of components, including: uPVC profile bars box-like structure', 0, NULL, NULL),
(2, 'vi', 'Ưu Việt cửa uPVC', '<p><img style="float:left;margin:0 10px 8px 0;" src="/mekong/public/userfiles/image/img.png" alt="" width="123" height="98" />Được sản xuất theo tiêu chuẩn chất lượng châu Âu, sản phẩm cửa uPVC mang thương hiệu MEKONGSTAR WINDOW là tập hợp đồng bộ của các linh kiện gồm: thanh profile uPVC có cấu trúc dạng hộp, được chia thành nhiều khoang rỗng có lắp lõi thép gia cường để tăng khả năng chịu lực cho bộ cửa, kết hợp với hệ gioăng kép và hộp kính được bơm khí trơ đảm bảo độ kín khít cao, có tính cách âm, cách nhiệt tốt. Ngoài ra, vật liệu uPVC cao cấp còn có những ưu điểm khác như: không cong vênh, co ngót, ít phải sơn sửa, bảo dưỡng định kỳ, khả năng chống cháy cao, không bị oxy hóa, không bị lão hóa hay ố vàng trong điều kiện bức xạ mặt trời hay mưa a xít. Chính vì vậy, cửa luôn giữ được vẻ đẹp ban đầu trong suốt thời gian sử dụng. Những ưu điểm này cho phép cửa đem lại hiệu quả kinh tế lâu dài cho người sử dụng nhờ tiết kiệm chi phí điện năng và bảo dưỡng định kỳ.</p>', 'uu-viet-cua-upvc', 'Được sản xuất theo tiêu chuẩn chất lượng châu Âu, sản phẩm cửa uPVC mang thương hiệu MEKONGSTAR WINDOW là tập hợp đồng bộ của các linh kiện gồm: thanh profile uPVC có cấu trúc dạng hộp', 0, NULL, NULL),
(3, 'en', 'About MekongStar', '<p>MekongStar specialized in manufacturing all kinds of doors are manufactured according to European standards of quality, brand products uPVC door MEKONGSTAR WINDOW synchronized set of components, including: uPVC profile bars box-like structure, which is divided intomany empty cabins fitted with steel core to increase the bearing capacity for the door, combined with double rings and glass box inert gas is pumped to ensure high-sealed, with good sound insulation. In addition, high-grade uPVC material has the advantages such as: no warping, shrinkage, small painting, routine maintenance, high fire resistance, oxidation, aging or stained gold in terms of solar radiation or acid rain. Therefore, the door retains the original beauty during use. These advantages allow the door to long-term economic efficiency for the user by saving energy costs and routine maintenance.</p>', 'about-mekongstar', 'MekongStar specialized in manufacturing all kinds of doors are manufactured according to European standards of quality, brand products uPVC door MEKONGSTAR WINDOW', 0, NULL, NULL),
(3, 'vi', 'Giới thiệu về MekongStar', '<p>MekongStar chuyên sản xuất các loại cửa được sản xuất theo tiêu chuẩn chất lượng châu Âu, sản phẩm cửa uPVC mang thương hiệu MEKONGSTAR WINDOW là tập hợp đồng bộ của các linh kiện gồm: thanh profile uPVC có cấu trúc dạng hộp, được chia thành nhiều khoang rỗng có lắp lõi thép gia cường để tăng khả năng chịu lực cho bộ cửa, kết hợp với hệ gioăng kép và hộp kính được bơm khí trơ đảm bảo độ kín khít cao, có tính cách âm, cách nhiệt tốt. Ngoài ra, vật liệu uPVC cao cấp còn có những ưu điểm khác như: không cong vênh, co ngót, ít phải sơn sửa, bảo dưỡng định kỳ, khả năng chống cháy cao, không bị oxy hóa, không bị lão hóa hay ố vàng trong điều kiện bức xạ mặt trời hay mưa a xít. Chính vì vậy, cửa luôn giữ được vẻ đẹp ban đầu trong suốt thời gian sử dụng. Những ưu điểm này cho phép cửa đem lại hiệu quả kinh tế lâu dài cho người sử dụng nhờ tiết kiệm chi phí điện năng và bảo dưỡng định kỳ.</p>', 'gioi-thieu-ve-mekongstar', 'MekongStar chuyên sản xuất các loại cửa được sản xuất theo tiêu chuẩn chất lượng châu Âu, sản phẩm cửa uPVC mang thương hiệu MEKONGSTAR WINDOW là tập hợp đồng bộ của các linh kiện gồm', 2, NULL, NULL);

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
  `click` int(11) NOT NULL DEFAULT '0',
  `enable` tinyint(1) NOT NULL DEFAULT '1',
  PRIMARY KEY (`record_id`)
) ENGINE=InnoDB  DEFAULT CHARSET=utf8 AUTO_INCREMENT=20 ;

--
-- Dumping data for table `hoiit_module_advs`
--

INSERT INTO `hoiit_module_advs` (`record_id`, `title`, `pic_thumb`, `url`, `create_date`, `start_date`, `end_date`, `hits`, `record_order`, `position`, `type`, `click`, `enable`) VALUES
(15, 'Quảng cáo Logo', 'quang-cao-logo.jpg', 'http://dos.vn', '2012-07-20 00:22:52', '2012-07-19 17:00:00', '2012-07-22 17:00:00', 0, 3, 'left', '_bank', 0, 1),
(16, 'Logo right', 'logo-right.png', '', '2012-07-20 01:45:53', '2012-07-19 17:00:00', '2012-08-12 17:00:00', 0, 2, 'right', '_bank', 0, 1),
(17, 'Quảng cáo', 'quang-cao.jpg', '', '2012-07-20 01:51:12', '2012-07-19 17:00:00', '2012-07-20 17:00:00', 0, 1, 'left', '_bank', 0, 1),
(18, 'Quảng cáo', 'quang-cao1.jpg', '', '2012-07-20 01:54:15', '2012-07-19 16:00:00', '2012-09-25 16:00:00', 0, 4, 'right', '_bank', 0, 1),
(19, 'Quảng cáo Logo', 'quang-cao-logo1.jpg', '', '2012-07-22 02:16:26', '2012-07-30 16:00:00', '2012-09-18 16:00:00', 0, 5, 'left', '_bank', 0, 1);

-- --------------------------------------------------------

--
-- Table structure for table `hoiit_module_banners`
--

CREATE TABLE IF NOT EXISTS `hoiit_module_banners` (
  `banner_id` int(11) NOT NULL AUTO_INCREMENT,
  `banner_date` timestamp NOT NULL DEFAULT CURRENT_TIMESTAMP,
  `banner_name` varchar(100) NOT NULL,
  `banner_picture` varchar(100) DEFAULT NULL,
  `banner_link` varchar(200) DEFAULT NULL,
  `banner_order` int(11) DEFAULT NULL,
  `banner_type` enum('logo','banner') NOT NULL,
  `banner_click` int(11) DEFAULT '0',
  `module_id` varchar(30) DEFAULT NULL,
  `enable` tinyint(1) NOT NULL DEFAULT '1',
  PRIMARY KEY (`banner_id`)
) ENGINE=InnoDB  DEFAULT CHARSET=utf8 AUTO_INCREMENT=59 ;

--
-- Dumping data for table `hoiit_module_banners`
--

INSERT INTO `hoiit_module_banners` (`banner_id`, `banner_date`, `banner_name`, `banner_picture`, `banner_link`, `banner_order`, `banner_type`, `banner_click`, `module_id`, `enable`) VALUES
(58, '2012-08-07 09:42:19', '', NULL, NULL, NULL, 'logo', 0, NULL, 1);

-- --------------------------------------------------------

--
-- Table structure for table `hoiit_module_contacts`
--

CREATE TABLE IF NOT EXISTS `hoiit_module_contacts` (
  `record_id` int(11) NOT NULL AUTO_INCREMENT,
  `created` timestamp NOT NULL DEFAULT CURRENT_TIMESTAMP,
  `record_order` int(11) DEFAULT NULL,
  `hot` tinyint(1) DEFAULT NULL,
  `enable` tinyint(1) NOT NULL DEFAULT '1',
  PRIMARY KEY (`record_id`)
) ENGINE=InnoDB  DEFAULT CHARSET=utf8 AUTO_INCREMENT=3 ;

--
-- Dumping data for table `hoiit_module_contacts`
--

INSERT INTO `hoiit_module_contacts` (`record_id`, `created`, `record_order`, `hot`, `enable`) VALUES
(2, '2012-08-07 01:08:47', 2, 0, 1);

-- --------------------------------------------------------

--
-- Table structure for table `hoiit_module_contacts_languages`
--

CREATE TABLE IF NOT EXISTS `hoiit_module_contacts_languages` (
  `record_id` int(11) NOT NULL,
  `language_id` varchar(2) NOT NULL,
  `title` varchar(100) NOT NULL,
  `content` text NOT NULL,
  `tag` varchar(100) NOT NULL,
  `description` varchar(250) DEFAULT NULL,
  `hit` int(11) DEFAULT '0',
  PRIMARY KEY (`record_id`,`language_id`),
  KEY `fk_hoiit_module_contacts_has_hoiit_languages_hoiit_languages1` (`language_id`),
  KEY `fk_hoiit_module_contacts_has_hoiit_languages_hoiit_module_con1` (`record_id`)
) ENGINE=InnoDB DEFAULT CHARSET=utf8;

--
-- Dumping data for table `hoiit_module_contacts_languages`
--

INSERT INTO `hoiit_module_contacts_languages` (`record_id`, `language_id`, `title`, `content`, `tag`, `description`, `hit`) VALUES
(2, 'en', 'Contact us', '', 'contact-us', 'sdds', 0),
(2, 'vi', 'Liên hệ với chúng tôi', '<p>dssdds</p>', 'lien-he-voi-chung-toi', 'sdsd', 0);

-- --------------------------------------------------------

--
-- Table structure for table `hoiit_module_factory`
--

CREATE TABLE IF NOT EXISTS `hoiit_module_factory` (
  `record_id` int(11) NOT NULL AUTO_INCREMENT,
  `pic_thumb` varchar(100) DEFAULT NULL,
  `created` timestamp NOT NULL DEFAULT CURRENT_TIMESTAMP,
  `record_order` int(11) DEFAULT NULL,
  `hot` tinyint(1) NOT NULL DEFAULT '0',
  `field1` varchar(100) DEFAULT NULL,
  `field2` varchar(100) DEFAULT NULL,
  `enable` tinyint(1) NOT NULL DEFAULT '0',
  PRIMARY KEY (`record_id`)
) ENGINE=InnoDB  DEFAULT CHARSET=utf8 AUTO_INCREMENT=57 ;

--
-- Dumping data for table `hoiit_module_factory`
--

INSERT INTO `hoiit_module_factory` (`record_id`, `pic_thumb`, `created`, `record_order`, `hot`, `field1`, `field2`, `enable`) VALUES
(56, NULL, '2012-09-04 15:23:58', 56, 0, NULL, NULL, 1);

-- --------------------------------------------------------

--
-- Table structure for table `hoiit_module_factory_languages`
--

CREATE TABLE IF NOT EXISTS `hoiit_module_factory_languages` (
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
-- Dumping data for table `hoiit_module_factory_languages`
--

INSERT INTO `hoiit_module_factory_languages` (`record_id`, `language_id`, `title`, `content`, `tag`, `description`, `hit`, `extra_field1`, `extra_field2`) VALUES
(56, 'en', 'Factory', '<p>The factory Eurowindow are equipped with advanced production lines, modern and imported from leading vendors of the Federal Republic of Germany, Italy, Finland and Spain.</p>\r\n<p>The main lines are:</p>\r\n<p><strong>+</strong> Production line windows, doors, walls uPVC;<br /><strong>+</strong> Production line of aluminum doors, aluminum and glass curtain wall. large, chain paint, PVDF &amp; Powder Coating; timber production line aluminum doors.<br /><strong>+</strong> Production line pine wood, fire resistant wooden door. Laminate flooring production lines;<br /><strong>+</strong> Glass production line, glass, safety glass, glass cutting and glass production, large glass box.</p>\r\n<p>There are also some other auxiliary lines, such as: necklaces paste laminate, frosted glass production equipment. economic patterns, systems and equipment in mechanical processing, aluminum cladding and assembly equipment automatic security doors.</p>\r\n<p style="text-align:center;"><img src="/mekong/public/userfiles/image/img-nhamay.png" alt="" width="595" height="395" /></p>\r\n<p style="text-align:center;"><img src="/mekong/public/userfiles/image/img-nhamay-2.png" alt="" width="598" height="325" /></p>\r\n<p style="text-align:center;"><img src="/mekong/public/userfiles/image/img-nhamay-3.png" alt="" width="595" height="249" /></p>', 'factory', 'The factory Eurowindow are equipped with advanced production lines, modern and imported from leading vendors of the Federal Republic of Germany, Italy, Finland and Spain.', 1, NULL, NULL),
(56, 'vi', 'Nhà máy', '<p>Các nhà máy của Eurowindow đều được trang bị dây chuyên sản xuất tiên tiến, hiện đại, đồng bộ được nhập khẩu từ các nhà cung cấp hàng đầu của CHLB Đức, Italia, Phần Lan và Tây Ban Nha.</p>\r\n<p><strong>Các dây chuyền chính gồm:</strong></p>\r\n<p><strong>+</strong> Dây chuyền sản xuất cửa sổ, cửa đi, vách ngăn uPVC;<br /><strong>+</strong> Dây chuyền sản xuất cửa nhôm, hệ vách nhôm kính. lớn, dây chuyền sơn, PVDF &amp; Powder Coating; Dây chuyền sản xuất cửa nhôm gỗ.<br /><strong>+</strong> Dây chuyền sản xuất gỗ thông phòng, cửa gỗ chống cháy. Dây chuyền sản xuất gỗ ván sàn;<br /><strong>+</strong> Dây chuyền sản xuất kính, kính cường lực, kính an toàn, cắt kính và sản xuất hộp kính, hộp kính khổ lớn.</p>\r\n<p>Ngoài ra còn có một số dây chuyền phụ trợ khác như: dây chuyền dán laminate, thiết bị sản xuất kính mờ. kinh hoa văn, hệ thống máy móc thiết bị gia công cơ khí, tấm ốp nhôm và các thiết bị lắp ráp cửa an toàn, cửa tự động.</p>\r\n<p style="text-align:center;"><img src="/mekong/public/userfiles/image/img-nhamay.png" alt="" width="595" height="395" /></p>\r\n<p style="text-align:center;"><img src="/mekong/public/userfiles/image/img-nhamay-2.png" alt="" width="598" height="325" /></p>\r\n<p style="text-align:center;"><img src="/mekong/public/userfiles/image/img-nhamay-3.png" alt="" width="595" height="249" /></p>', 'nha-may', 'Các nhà máy của Eurowindow đều được trang bị dây chuyên sản xuất tiên tiến, hiện đại, đồng bộ được nhập khẩu từ các nhà cung cấp hàng đầu của CHLB Đức, Italia, Phần Lan và Tây Ban Nha.', 18, NULL, NULL);

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
) ENGINE=InnoDB  DEFAULT CHARSET=utf8 AUTO_INCREMENT=34 ;

--
-- Dumping data for table `hoiit_module_menus`
--

INSERT INTO `hoiit_module_menus` (`menu_id`, `parent_id`, `menu_type`, `menu_target`, `menu_sort`, `menu_homepage`, `menu_activated`) VALUES
(27, 0, 1, '', 1, 1, 1),
(28, 0, 1, '', 2, 0, 1),
(29, 0, 1, '', 5, 0, 1),
(31, 0, 1, '', 32, 0, 1),
(32, 0, 1, '', 33, 0, 1),
(33, 0, 1, '', 3, 0, 1);

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
(28, 'en', 'About us', 'about-us', 'Desctip about'),
(28, 'vi', 'Giới thiệu', 'gioi-thieu', 'Mo ta gioi thieu'),
(29, 'en', 'Products', 'products', 'English'),
(29, 'vi', 'Sản phẩm', 'san-pham', ''),
(31, 'en', 'News', 'news', 'dasdsadsad'),
(31, 'vi', 'Tin tức & sự kiện', 'tin-tuc', 'Co mo ta tin tuc'),
(32, 'en', 'Contact', 'contact', ''),
(32, 'vi', 'Liên hệ', 'lien-he', ''),
(33, 'en', 'Factory', 'factory', ''),
(33, 'vi', 'Nhà máy', 'nha-may', '');

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
) ENGINE=InnoDB  DEFAULT CHARSET=utf8 AUTO_INCREMENT=9 ;

--
-- Dumping data for table `hoiit_module_news`
--

INSERT INTO `hoiit_module_news` (`record_id`, `postdate`, `pic_thumb`, `pic_desc`, `record_order`, `hot`, `specials`, `field1`, `field2`, `field3`, `field4`, `enable`, `hoiit_module_item_cat_cat_id`) VALUES
(1, '2012-07-25 06:18:56', 'tieu-de-bac.jpg', NULL, 3, 1, NULL, NULL, NULL, NULL, NULL, 1, 16),
(2, '2012-08-01 01:35:08', '', NULL, 2, 0, NULL, NULL, NULL, NULL, NULL, 1, 16),
(3, '2012-08-01 01:35:15', '', NULL, 1, 0, NULL, NULL, NULL, NULL, NULL, 1, 16),
(4, '2012-08-01 03:20:22', 'che-bung-bau-kheo-nhu-sao-viet.jpg', NULL, 4, 0, NULL, NULL, NULL, NULL, NULL, 1, 16),
(5, '2012-08-01 03:20:33', 'bi-kip-giam-dau-dau-khi-mang-thai.jpg', NULL, 5, 0, NULL, NULL, NULL, NULL, NULL, 1, 16),
(6, '2012-08-08 03:13:09', 'chon-giay-nang-niu-doi-chan-ba-bau.jpg', NULL, 6, 0, NULL, NULL, NULL, NULL, NULL, 1, 16),
(7, '2012-08-08 07:39:59', 'vu-nhat-duoc-22-trieu-eu-la-tien-gia.jpg', NULL, 7, 0, NULL, NULL, NULL, NULL, NULL, 1, 17),
(8, '2012-08-08 07:43:26', 'la-chan-ten-lua-my-trung-chay-dua-ky-1.jpg', NULL, 8, 0, NULL, NULL, NULL, NULL, NULL, 1, 17);

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
) ENGINE=InnoDB  DEFAULT CHARSET=utf8 AUTO_INCREMENT=20 ;

--
-- Dumping data for table `hoiit_module_news_cat`
--

INSERT INTO `hoiit_module_news_cat` (`cat_id`, `cat_parent_id`, `cat_created`, `pic_thumb`, `pic_desc`, `cat_hot`, `cat_order`, `cat_extra1`, `cat_extra2`, `cat_enable`) VALUES
(16, 0, '2012-07-25 06:11:55', 'tin-tuc-cho-ba-bau.jpg', NULL, 0, 16, NULL, NULL, 1),
(17, 0, '2012-08-08 07:37:28', 'tin-tuc-trong-ngay.jpg', NULL, 0, 17, NULL, NULL, 1),
(18, 17, '2012-08-09 02:14:55', '', NULL, 0, 18, NULL, NULL, 1),
(19, 17, '2012-09-05 02:14:15', '', NULL, 0, 19, NULL, NULL, 1);

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
(16, 'en', 'News for pregnant women', '', 'news-for-pregnant-women', 'News for pregnant women'),
(16, 'vi', 'Tin tức cho bà bầu', '', 'tin-tuc-cho-ba-bau', 'Tin tức cho bà bầu'),
(17, 'en', 'News of the day', '', 'news-of-the-day', ''),
(17, 'vi', 'Tin tức trong ngày', '', 'tin-tuc-trong-ngay', ''),
(18, 'en', '', '', '', ''),
(18, 'vi', 'Tin tức 24h trong ngày', '', 'tin-tuc-24h-trong-ngay', ''),
(19, 'en', '', '', '', ''),
(19, 'vi', 'Tin tức 60s', '', 'tin-tuc-60s', '');

-- --------------------------------------------------------

--
-- Table structure for table `hoiit_module_news_languages`
--

CREATE TABLE IF NOT EXISTS `hoiit_module_news_languages` (
  `record_id` int(11) NOT NULL,
  `language_id` varchar(2) NOT NULL,
  `title` varchar(100) NOT NULL,
  `preview` text,
  `content` text NOT NULL,
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
(1, 'en', '', '', '', '', 'fsdfdfsdfsdf', 0, NULL, NULL),
(1, 'vi', 'Tieu de "bac"', '<p>sdfsdfsdfsdf</p>', '<p>asdasdsa</p>', 'tieu-de-bac', 'sdfsd', 0, NULL, NULL),
(2, 'en', '', '<p>asd</p>', '', '', '', 0, NULL, NULL),
(2, 'vi', 'asdas', '<p>dasdas</p>', '<p>asdsad</p>', 'asdas', '', 0, NULL, NULL),
(3, 'en', '', '', '', '', '', 0, NULL, NULL),
(3, 'vi', 'asdasdssdd', '<p>dasdsads</p>', '<p>asdsa</p>', 'asdasdssdd', '', 0, NULL, NULL),
(4, 'en', 'Cover your belly like a star Vietnamese smart', '<p>Smart dresses that pregnant women are showing that the body is very neat fashion.</p>', '<p><strong>Smart dresses that pregnant women are showing that the body is very neat fashion.</strong></p>\r\n<p>When pregnant, though no longer owns the slim body, sexy as before but has always kept a beautiful fashion pictures for his appearances in public. No longer hugging dresses, sexy rather starry Vietnamese often choose their own design style skirt goes well, baggy belly that just obscures the beauty can still fashionable, so smooth is also being considered as a in the mainstream of the fashion world today. In addition, the vignette style skirt or dress in dark colors is also an effective public service to mask the bloated belly, but when looked through, it was hardly recognizable.</p>\r\n<p>Let''s learn overheard Vietnamese pregnant women in showbiz they cleverly hide belly like circumstances:</p>', 'cover-your-belly-like-a-star-vietnamese-smart', 'Smart dresses that pregnant women are showing that the body is very neat fashion.', 0, NULL, NULL),
(4, 'vi', 'Che bụng bầu khéo như sao Việt', '<p>Những chiếc váy thông minh giúp các bà bầu khoe được cơ thể gọn gàng mà vẫn thật thời trang.</p>', '<p><strong>Những chiếc váy thông minh giúp các bà bầu khoe được cơ thể gọn gàng mà vẫn thật thời trang.</strong></p>\r\n<p>Khi mang bầu, dù không còn sở hữu thân hình thon gọn, gợi cảm như trước kia nhưng các người đẹp vẫn luôn giữ một hình ảnh thời trang cho mình khi xuất hiện trước công chúng. Không còn là những bộ đầm ôm sát, sexy thay vào đấy sao Việt thường xuyên chọn cho mình các kiểu váy dáng suôn, thụng vừa che lấp bụng bầu mà vẫn thể hiện nét đẹp thời thượng, bởi váy suôn cũng đang được xem là một trong những trào lưu của thời trang thế giới hiện nay. Bên cạnh đó, các kiểu váy in họa tiết hoặc váy tối màu cũng là một công vụ hữu hiệu nhằm che đi chiếc bụng bầu cồng kềnh mà khi nhìn qua, người ta khó có thể nhận ra được.</p>\r\n<p>Hãy cùng học lỏm các bà bầu trong showbiz Việt xem họ khéo léo che bụng bầu như thế nào nhé:</p>\r\n<p style="text-align:center;"><img style="margin-top:5px;margin-bottom:5px;" src="/cms/public/userfiles/image/1344330556-1.jpg" alt="" width="259" height="550" /></p>\r\n<p style="text-align:center;"><img style="margin-top:5px;margin-bottom:5px;" src="/cms/public/userfiles/image/1344330556-2.jpg" alt="" width="470" height="550" /></p>\r\n<p style="text-align:center;"><img style="margin-top:5px;margin-bottom:5px;" src="/cms/public/userfiles/image/1344330556-6.jpg" alt="" width="409" height="550" /></p>\r\n<p style="text-align:left;"> </p>', 'che-bung-bau-kheo-nhu-sao-viet', 'Những chiếc váy thông minh giúp các bà bầu khoe được cơ thể gọn gàng mà vẫn thật thời trang.', 0, NULL, NULL),
(5, 'en', 'Tip pain of pregnancy', '<p>Headaches are fairly common disease in women, especially women who work office.</p>', '<p>Headaches are fairly common disease in women, especially women who work office.</p>\r\n<p>There are many ways to prevent headaches during pregnancy, without medication, try some of the following measures:</p>\r\n<p>- Determining causes of headache. You should monitor your diet, activity and headaches for a few days to determine the cause and try to avoid headache triggers.</p>\r\n<p>- Exercise daily. Try walking or aerobic exercise all in accordance with your health.</p>\r\n<p>- Control strain. Look for a healthy solution to control stress in life as a reasonable allocation of work and spend more time with loved ones.</p>\r\n<p>- Try eating small meals. The small and regular meals help you maintain stable blood sugar and prevent headaches.</p>\r\n<p>- Drink plenty of water. Providing enough water for your body gives you a sense of euphoria.</p>\r\n<p style="text-align:center;"><img style="margin-top:5px;margin-bottom:5px;" src="/cms/public/userfiles/image/1344333382-babaudaudau1.jpg" alt="" width="500" height="381" /></p>\r\n<p>- Go to bed on time. Sleep disturbances and lack of sleep will lead to headaches during pregnancy. You should go to bed early and wake up on time every day, including weekends.</p>\r\n<p>- Consider biofeedback therapy. With mind-body techniques, you can learn how to control body functions - such as muscle tension, heart rate and blood pressure-to prevent headaches and pain. If you want to try biofeedback therapy to treat headaches during pregnancy, please consult your therapist.</p>\r\n<p><strong>When pain strikes, you go:</strong></p>\r\n<p>- Rest. You are in a dark room, quiet and close your eyes to rest.</p>\r\n<p>- Chuom warm. Apply a warm pad (or a warm towel) on the face, eyes and temples of you or put a piece of ice behind the neck.</p>\r\n<p>- Try massage. Please bother someone shoulder and neck massage to relieve stress, or self-massage temples.</p>\r\n<p>If these measures are not effective, go to the doctor to treat headaches during pregnancy.</p>\r\n<p>Most pregnant women can use acetaminophen and some other drugs to stop headaches. Your doctor can diagnose and prescribe medications for you.</p>', 'tip-pain-of-pregnancy', 'Headaches are fairly common disease in women, especially women who work office.', 0, NULL, NULL),
(5, 'vi', 'Bí kíp giảm đau đầu khi mang thai', '<p>Đau đầu là chứng bệnh khá thường gặp ở thai phụ, nhất là những phụ nữ làm việc văn phòng.</p>', '<p>Đau đầu là chứng bệnh khá thường gặp ở thai phụ, nhất là những phụ nữ làm việc văn phòng.</p>\r\n<p>Có rất nhiều cách phòng ngừa chứng đau đầu trong thời kỳ mang thai mà không cần dùng thuốc, bạn hãy thử một số biện pháp sau:</p>\r\n<p>- Xác định nguyên nhân gây đau đầu. Bạn nên theo dõi các bữa ăn, hoạt động và cơn đau đầu trong một vài ngày để xác định nguyên nhân và cố gắng tránh các yếu tố gây đau đầu.</p>\r\n<p>- Tập luyện hàng ngày. Hãy thử đi bộ hoặc luyện tập các bài aerobic phù hợp với sức khỏe của bạn.</p>\r\n<p>- Kiểm soát căng thẳng. Hãy tìm các giải pháp lành mạnh để kiểm soát áp lực trong cuộc sống như phân bổ công việc hợp lý và giành nhiều thời gian bên cạnh người thân.</p>\r\n<p>- Ăn thành nhiều bữa nhỏ. Các bữa ăn nhỏ và đều đặn giúp bạn duy trì lượng đường huyết ổn định và ngăn ngừa cơn đau đầu.</p>\r\n<p>- Uống nhiều nước. Cung cấp đủ lượng nước cho cơ thể sẽ mang lại cho bạn cảm giác sảng khoái.</p>\r\n<p style="text-align:center;"><img style="margin-top:5px;margin-bottom:5px;" src="/cms/public/userfiles/image/1344333382-babaudaudau1.jpg" alt="" width="500" height="381" /></p>\r\n<p style="text-align:left;">- Đi ngủ đúng giờ. Ngủ chập chờn và thiếu ngủ sẽ dẫn đến đau đầu trong thời kỳ mang thai. Bạn nên đi ngủ sớm và thức dậy đúng giờ hàng ngày, kể cả ngày cuối tuần.</p>\r\n<p>- Xem xét liệu pháp phản hồi sinh học. Với kỹ thuật tâm-thể, bạn có thể học cách kiểm soát các chức năng cơ thể - như căng cơ, nhịp tim và huyết áp- để phòng ngừa đau đầu và giảm đau. Nếu bạn muốn thử liệu pháp phản hồi sinh học để chữa trị cơn đau đầu trong thời kỳ mang thai, hãy xin tư vấn của bác sĩ trị liệu.</p>\r\n<p><strong>Khi cơn đau đầu tấn công, bạn hãy:</strong></p>\r\n<p>- Nghỉ ngơi. Bạn hãy nằm trong phòng tối, yên tĩnh và nhắm mắt lại để nghỉ ngơi.</p>\r\n<p>- Chườm ấm. Đắp một miếng gạc ấm (hoặc một khăn ấm) lên mặt, mắt và thái dương của bạn hoặc đặt một miếng chườm lạnh phía sau cổ.</p>\r\n<p>- Thử xoa bóp. Bạn hãy phiền ai đó xoa bóp vai và cổ để giảm căng thẳng, hoặc tự xoa bóp thái dương.</p>\r\n<p>Nếu những biện pháp trên không hiệu quả, bạn hãy đến gặp bác sĩ để điều trị chứng đau đầu trong thời kỳ mang thai.</p>\r\n<p>Hầu hết phụ nữ mang thai có thể sử dụng thuốc acetaminophen và một số loại thuốc khác để chấm dứt cơn đau đầu. Bác sĩ có thể khám và kê đơn loại thuốc phù hợp với bạn.</p>', 'bi-kip-giam-dau-dau-khi-mang-thai', 'Đau đầu là chứng bệnh khá thường gặp ở thai phụ, nhất là những phụ nữ làm việc văn phòng.', 0, NULL, NULL),
(6, 'en', 'Choose shoes cherish her ​​legs elected', '<p>Choose a suitable pair of shoes will make her feel safe voting and comfortable pregnancy.</p>', '<p>The selection of shoes during pregnancy is extremely important especially for pregnant mothers often have to travel a lot. We all know that during pregnancy, body weight increased significantly and this means that elected her legs also increase the size to support the body safely.</p>\r\n<p>According to researchers, foot size women during pregnancy will change and this much to the difficulty in choosing the appropriate shoes. In addition, safety shoes is also essential for pregnant women are often out of sight down the leg by the belly, so walking is easy to be tripped or slipped.</p>', 'choose-shoes-cherish-her-legs-elected', 'Choose a suitable pair of shoes will make her feel safe voting and comfortable pregnancy.', 0, NULL, NULL),
(6, 'vi', 'Chọn giày nâng niu đôi chân bà bầu', '<p>Chọn được một đôi giày phù hợp sẽ khiến mẹ bầu có cảm giác an toàn và thoải mái khi bầu bí.</p>', '<div><span style="font-size:11pt;">Việc chọn giày dép trong thời gian mang bầu là vô cùng quan trọng nhất là với những mẹ bầu thường xuyên phải đi lại nhiều. Chúng ta đều biết trong thời gian mang bầu, trọng lượng cơ thể sẽ tăng lên đáng kể và điều này đồng nghĩa với việc đôi chân mẹ bầu cũng tăng kích cỡ để nâng đỡ cơ thể một cách an toàn.</span></div>\r\n<div><span style="font-size:11pt;">Theo các nhà nghiên cứu, kích cỡ chân chị em trong thời gian mang thai sẽ thay đổi nhiều và điều này tạo lên sự khó khăn trong việc chọn được đôi giày phù hợp. Ngoài ra, sự an toàn của đôi giày cũng là điều rất cần thiết vì khi mang thai chị em thường bị khuất tầm nhìn xuống chân bởi bụng bầu, vì vậy khi đi lại rất dễ bị vấp hoặc trượt chân.</span></div>\r\n<p style="text-align:center;"><img style="margin-top:5px;margin-bottom:5px;" src="/cms/public/userfiles/image/1344332156-babau.jpg" alt="" width="500" height="333" /></p>\r\n<p style="text-align:left;"><span style="font-size:11pt;"><strong>Vì sao chân lại phình to khi mang thai?</strong></span></p>\r\n<p>Có 3 lí do dưới đây khiến chân bà bầu phình to ra:</p>\r\n<p>Lí do thứ nhất là chân của bạn bị to ra do chứng phù – là một trong những triệu chứng bạn thường gặp trong thai kì. Nguyên nhân của chứng phù là do sự trữ nước. Chân bạn càng to hơn nếu như bạn lại diện một đôi tất dày. Chính vì vậy mà đôi giày đang đi không thể nào mà đi nổi nữa. Tuy nhiên, không phải là do uống nhiều nước khiến bạn như thế đâu. Bạn không nên cắt giảm lượng nước uống vào. Mỗi ngày uống khoảng 8 ly nước, chứng phù sẽ giảm.</p>\r\n<p>Lí do thứ hai là chắc chắn trong thai kì, bạn tăng cân tới mức “khủng” rồi cho nên chân to ra là điều dĩ nhiên. Cần phải có được một chế độ ăn cân bằng theo hướng dẫn của các chuyên gia dinh dưỡng để sau sinh, chân bạn trở lại bình thường.</p>\r\n<p>Lí do cuối cùng là do hormone gọi là relaxin. Để chuẩn bị cho sự ra đời của bé yêu, cơ thể bạn sẽ làm lỏng các gân, cơ khiến cho bé có không gian trong bụng để phát triển, cũng là để cơ thể bạn có độ đàn hồi vào thời gian bé “chui” ra. Thật không may là hormone relaxin không chỉ có ở chỗ cần có mà còn có ở chỗ không cần có ấy là ở đôi chân của bạn. Chân bạn cũng sẽ bị to ra.</p>\r\n<p style="text-align:center;"><img style="margin-top:5px;margin-bottom:5px;" src="/cms/public/userfiles/image/1344332198-babau4.jpg" alt="" width="366" height="550" /></p>\r\n<p style="text-align:left;"><span style="font-size:11pt;"><strong>Lưu ý khi chọn giầy cho bà bầu</strong></span></p>\r\n<p><span style="font-size:11pt;">- Kích cỡ: Ở mỗi tư thế khác nhau, chân sẽ dãn nở theo chiều hướng khác nhau, vì thế nên cân nhắc kĩ đến số size của giày, tốt nhất là nên chọn đôi to hơn chân khoảng 10mm.</span></p>\r\n<p><span style="font-size:11pt;">- Kiểu dáng: Nên chọn những đôi có mõm tròn, to, rộng, ôm chân, chất liệu giày mềm giúp các bà mẹ đi lại thuận tiện.</span></p>\r\n<p><span style="font-size:11pt;">Bạn cũng nên chọn những đôi giầy có quai dán hoặc dây buộc có độ co dãn cao, tạo sự nhanh chóng khi mang tháo cũng là ưu tiên số 1.</span></p>\r\n<p><span style="font-size:11pt;">- Thời gian thay giày: Giày đi trong 6 tháng đầu và 3 tháng cuối cũng không giống nhau. Ở những tháng cuối, các bà mẹ nên chọn đôi có phần bảo vệ gót, tránh hiện tượng đau chân và tạo sự an toàn cho mẹ và bé.</span></p>\r\n<p><span style="font-size:11pt;">- Lưu ý đến độ cao của gót: Độ cao lý tưởng cho gót là 15 - 30mm. Dù cho những đôi giày cao gót thời trang luôn hấp dẫn nhưng với trọng lượng cơ thể ngày 1 tăng, bước đi ngày 1 nặng nề, đi giày gót cao có thể ảnh hưởng đến lòng bàn chân và các khớp gối.</span></p>\r\n<p><span style="font-size:11pt;">- Cuối cùng đó là độ ma sát của đế giày: Nên chọn đôi có độ ma sát cao, tạo sự tự tin, vững chắc trong mỗi bước đi.</span></p>', 'chon-giay-nang-niu-doi-chan-ba-bau', 'Chọn được một đôi giày phù hợp sẽ khiến mẹ bầu có cảm giác an toàn và thoải mái khi bầu bí.', 0, NULL, NULL),
(7, 'en', 'Department for "pick up" is 22 million: Property is counterfeit money', '<p>On 7/8, from Phan Thiet Police (Binh Thuan) said polymer assessment results captured in the field of construction residential areas north of Xuan An (Ward Spring Security) gave results counterfeit money</p>', '<p><img style="float:left;margin:5px;" src="/cms/public/userfiles/image/1344410472_tien-roi.jpg" alt="" width="200" height="200" />On 7/8, from Phan Thiet Police (Binh Thuan) said polymer assessment results captured in the field of construction residential areas north of Xuan An (Ward Spring Security) gave results counterfeit money</p>\r\n<p>To date, the collection and submission of the people themselves have seized more than 22 million (including two par value 500 thousand and 200 thousand). Detection characteristics of money and can have many different materials with real money in circulation. At the same time as the money you hand creases. Has not yet determined how much money people found to be occupied ...</p>\r\n<p>As previously reported, on 1/8, while the vehicle draw construction residential North Spring Security, workers discovered a bag of money. Then the workers and people have picked up an enormous amount of money different denominations of 500 thousand and 200 thousand dollars.</p>', 'department-for-pick-up-is-22-million-property-is-counterfeit-money', 'On 7/8, from Phan Thiet Police (Binh Thuan) said polymer assessment results captured in the field of construction residential areas north of Xuan An (Ward Spring Security) gave results counterfeit money', 0, NULL, NULL),
(7, 'vi', 'Vụ "nhặt" được 22 triệu: Đều là tiền giả', '<p>Ngày 7/8, tin từ Công an TP.Phan Thiết (Bình Thuận) cho biết: Kết quả giám định tiền polymer thu giữ được tại hiện trường thi công khu dân cư bắc Xuân An (phường Xuân An) đã cho kết quả là tiền giả</p>', '<p><img style="float:left;margin:5px;" src="/cms/public/userfiles/image/1344410472_tien-roi.jpg" alt="" width="200" height="200" />Ngày 7/8, tin từ Công an TP.Phan Thiết (Bình Thuận) cho biết: Kết quả giám định tiền polymer thu giữ được tại hiện trường thi công khu dân cư bắc Xuân An (phường Xuân An) đã cho kết quả là tiền giả</p>\r\n<p>Đến nay, qua thu gom và người dân tự giao nộp đã thu giữ được trên 22 triệu đồng (bao gồm cả hai mệnh giá 500 ngàn đồng và 200 ngàn đồng). Đặc điểm của tiền phát hiện có nhiều điểm và có chất liệu khác so với tiền thật đang lưu hành. Đồng thời khi dùng tay vò thì tiền nhăn lại. Đến nay vẫn chưa xác định còn bao nhiêu tiền phát hiện đang được người dân chiếm giữ...</p>\r\n<p>Như đã đưa tin, ngày 1/8, trong lúc dùng xe múc thi công khu dân cư bắc Xuân An, các công nhân phát hiện một túi tiền. Sau đó công nhân và người dân đã nhặt lấy đi một lượng lớn tiền loại mệnh giá 500 ngàn đồng và 200 ngàn đồng.</p>', 'vu-nhat-duoc-22-trieu-deu-la-tien-gia', 'Ngày 7/8, tin từ Công an TP.Phan Thiết (Bình Thuận) cho biết: Kết quả giám định tiền polymer thu giữ được tại hiện trường thi công khu dân cư bắc Xuân An (phường Xuân An) đã cho kết quả là tiền giả', 0, NULL, NULL),
(8, 'en', 'Missile shield: U.S. - China racing (Term 1)', '<p>March / 2012, revealed the Pentagon, the U.S. will deploy a global missile defense, including its Asia - Pacific with missile interceptor base located in the sea and the base in the U.S. west coast region.</p>', '<p>March / 2012, revealed the Pentagon, the U.S. will deploy a global missile defense, including its Asia - Pacific with missile interceptor base located in the sea and the base in the U.S. west coast region.</p>\r\n<p>Americans are hoping to win the absolute advantage in all aspects of Asian regions - Pacific, especially showing his strength with China. However, Washington does not want and can not direct military confrontation with Beijing, but only want to prevent, restrain, which encircle China "have won according to orbit."</p>\r\n<p>Beijing expressed concern</p>\r\n<p>Related to missile defense in Asia - Pacific, Assistant Secretary of Defense on issues of global strategy, said Ms. Madelyn Creedon, the effort to build this system are located in the tripartite dialogue mechanism , one with Japan and Australia, one with Japan and South Korea.</p>\r\n<p>According to the Pentagon, the missile defense shield could help combat the threat from Iran and North Korea with its neighbors and help protect America against all attacks by long-range missile that two country can develop in the future.</p>\r\n<p>After the statement of the U.S., China immediately expressed concern, saying plans to deploy missile defense system in Asia of the U.S. imbalance will make the military balance in this area. To maintain a deterrent force reliable, Beijing can not modernize its nuclear arsenal to meet the practical requirements of modern warfare.<br />The Tigers Major General Zhu, Chinese Academy of National Defense said that the "missile defense system would undermine strategic stability." The general soon became famous in 2005 when the event loudly declared, if the U.S. military intervention on the issue of conflict resolution between the mainland and Taiwan, Beijing might use nuclear weapons, for that, "China needs to improve viability, the ability to phase through to its nuclear weapons; if not, we can not ensure the reliability of nuclear deterrence."</p>\r\n<p>Over the next three U.S. defense department, China is implementing 130-195 ballistic missiles carrying nuclear warheads. Forecast vague figures proved American intelligence about nuclear weapons storage China is inaccurate or does not want to publish the real numbers. So far, Chinese military officials have not given any information mentioned specifically linked to Beijing will use any measures to modernize its nuclear arsenal to be able to deal successfully with the missile shield the U.S. plans to deploy in the area in the future.</p>\r\n<p>War without guns?</p>\r\n<p>According to today''s Russia, if the U.S. could make China a year wasted hundreds of billions of dollars to strengthen the military was an arms race with them, can lead to the weakening of the economy and the consequences social evil that Washington does not take a gun, a gun.</p>\r\n<p>China''s GDP in 2011 was nearly 7,500 billion, only half of Americans (15 100 billion). Furthermore, many economic experts believe that, to assess an economic substance, must come from the GDP per capita. As reported by the World Bank (WB) in 2005, some countries have per capita incomes greater than China''s 127 countries.</p>\r\n<p>In 2009, per capita income of China reached only $ 3,650, lower than 124 countries around the world. Data from the International Monetary Fund (IMF) in 2009 also showed that per capita GDP of U.S. $ 46,000, then Japan for about $ 40,000, while China''s is $ 4000, while China''s GDP and Japan is nearly equal to each other. So, while China now ranks as the second largest economy in the world but with far inferior resources, to cope with my test is still a long way.</p>', 'missile-shield-us-china-racing-term-1', 'March / 2012, revealed the Pentagon, the U.S. will deploy a global missile defense, including its Asia - Pacific with missile interceptor base located in the sea and the base in the U.S. west coast region.', 0, NULL, NULL),
(8, 'vi', 'Lá chắn tên lửa: Mỹ - Trung chạy đua (Kỳ 1)', '<p>Tháng 3/2012, Lầu Năm Góc tiết lộ, Mỹ sẽ triển khai hệ thống phòng thủ tên lửa toàn cầu của mình trong đó có châu Á - TBD với các tên lửa đánh chặn bố trí tại các căn cứ trên biển và các căn cứ ở khu vực bờ tây nước Mỹ.</p>', '<p>Tháng 3/2012, Lầu Năm Góc tiết lộ, Mỹ sẽ triển khai hệ thống phòng thủ tên lửa toàn cầu của mình trong đó có châu Á - TBD với các tên lửa đánh chặn bố trí tại các căn cứ trên biển và các căn cứ ở khu vực bờ tây nước Mỹ.</p>\r\n<p>Mỹ đang hy vọng giành được ưu thế tuyệt đối về mọi mặt ở khu vực châu Á - TBD, đặc biệt là thể hiện sức mạnh của mình với Trung Quốc. Tuy nhiên, Washington không muốn và có thể không đối đầu quân sự trực tiếp với Bắc Kinh mà chỉ muốn ngăn chặn, kiềm chế, bao vây khiến Trung Quốc "phải uốn theo quỹ đạo của mình".</p>\r\n<p>Bắc Kinh bày tỏ lo ngại</p>\r\n<p>Liên quan đến lá chắn tên lửa châu Á - TBD, trợ lý Bộ trưởng Quốc phòng Mỹ về các vấn đề chiến lược toàn cầu bà Madelyn Creedon cho biết, các nỗ lực xây dựng hệ thống này được đặt trong cơ chế đối thoại ba bên, một với Nhật Bản và Australia, một với Nhật Bản và Hàn Quốc.</p>\r\n<p>Theo Lầu Năm Góc, những lá chắn phòng thủ tên lửa này có thể giúp chống lại những mối đe dọa từ Iran và CHDCND Triều Tiên với các nước láng giềng và giúp bảo vệ Mỹ trước mọi cuộc tấn công bằng tên lửa tầm xa mà hai nước có thể phát triển trong tương lai.</p>\r\n<p>Sau tuyên bố của Mỹ, Trung Quốc ngay lập tức bày tỏ sự lo ngại khi cho rằng, kế hoạch triển khai hệ thống phòng thủ tên lửa của Mỹ tại châu Á sẽ làm mất thăng bằng cán cân quân sự ở khu vực này. Để duy trì một lực lượng răn đe đáng tin cậy, Bắc Kinh không thể không hiện đại hóa kho vũ khí hạt nhân của mình để đáp ứng với yêu cầu thực tiễn của chiến tranh hiện đại.</p>\r\n<p style="text-align:center;"><img style="margin-top:5px;margin-bottom:5px;" src="/cms/public/userfiles/image/1344402826-chay-dua-1.jpg" alt="" width="400" height="268" /></p>\r\n<p style="text-align:left;">Thiếu tướng Chu Thành Hổ, Học viện Quốc phòng Trung Quốc nhận định, "hệ thống phòng thủ tên lửa sẽ phá hoại sự ổn định chiến lược". Viên tướng sớm nổi tiếng với sự kiện năm 2005 khi lớn tiếng tuyên bố, nếu như Mỹ can thiệp quân sự vào vấn đề giải quyết xung đột giữa Đại Lục và Đài Loan thì Bắc Kinh có thể sẽ sử dụng vũ khí hạt nhân, cho rằng, "Trung Quốc cần phải nâng cao khả năng tồn tại, khả năng xuyên phá cho vũ khí hạt nhân của mình; nếu không, chúng ta không thể bảo đảm độ tin cậy của răn đe hạt nhân".</p>\r\n<p>Theo tính toán của Bộ Quốc phòng Mỹ, Trung Quốc hiện đang triển khai 130 - 195 tên lửa đạn đạo mang đầu đạn hạt nhân. Dự đoán mơ hồ này chứng tỏ số liệu tình báo của Mỹ về kho vũ khí hạt nhân của Trung Quốc là không chính xác hoặc không muốn công bố con số thực sự. Cho đến nay, giới chức quân sự Trung Quốc vẫn chưa đưa ra bất cứ thông tin đề cập cụ thể đến việc Bắc Kinh sẽ sử dụng biện pháp nào để hiện đại hóa kho vũ khí hạt nhân của mình để có thể đối phó thành công với lá chắn tên lửa mà Mỹ dự định triển khai ở khu vực này trong tương lai.</p>\r\n<p>Cuộc chiến không tiếng súng?</p>\r\n<p>Theo báo Nước Nga ngày nay, nếu Mỹ có thể làm cho Trung Quốc hao phí mỗi năm hàng trăm tỷ USD để tăng cường quân bị chạy đua vũ trang với mình, có thể dẫn đến sự suy yếu của nền kinh tế và các hệ quả xấu về mặt xã hội mà Washington không tốn một khẩu súng, một viên đạn nào.</p>\r\n<p>Tổng GDP của Trung Quốc năm 2011 là gần 7.500 tỷ USD, chỉ bằng một nửa của Mỹ (15.100 tỷ). Hơn nữa, nhiều chuyên gia kinh tế cho rằng, để đánh giá thực chất một nền kinh tế, phải xuất phát từ GDP tính theo đầu người. Theo báo cáo của Ngân hàng Thế giới (WB) năm 2005, số nước có thu nhập bình quân đầu người lớn hơn Trung Quốc là 127 nước.</p>\r\n<p>Năm 2009, thu nhập bình quân đầu người của Trung Quốc chỉ đạt 3.650 USD, còn thấp hơn 124 nước trên thế giới. Số liệu của Quỹ tiền tệ quốc tế (IMF) năm 2009 cũng cho thấy GDP bình quân đầu người của Mỹ là 46.000 USD, sau đó là Nhật khoảng 40.000 USD, còn của Trung Quốc chỉ là 4.000 USD, trong khi GDP của Trung Quốc và Nhật Bản gần tương đương với nhau. Vì vậy, tuy hiện nay Trung Quốc được xếp hạng là nền kinh tế lớn thứ hai trên thế giới nhưng với tiềm lực thua kém quá xa, để đối đầu với Mỹ thì vẫn còn là một chặng đường dài.</p>', 'la-chan-ten-lua-my-trung-chay-dua-ky-1', 'March / 2012, revealed the Pentagon, the U.S. will deploy a global missile defense, including its Asia - Pacific with missile interceptor base located in the sea and the base in the U.S. west coast region.', 0, NULL, NULL);

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
('day_time', 2456176),
('max_count', 1),
('counter', 2),
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
('''127.0.0.1''', 1346812337);

-- --------------------------------------------------------

--
-- Table structure for table `hoiit_module_poll`
--

CREATE TABLE IF NOT EXISTS `hoiit_module_poll` (
  `record_id` int(11) NOT NULL AUTO_INCREMENT,
  `question` varchar(255) NOT NULL,
  `begin_date` int(11) NOT NULL,
  `end_date` int(11) NOT NULL,
  `record_order` smallint(6) DEFAULT '1',
  `create_date` timestamp NOT NULL DEFAULT CURRENT_TIMESTAMP,
  `enable` tinyint(4) NOT NULL DEFAULT '1',
  PRIMARY KEY (`record_id`)
) ENGINE=InnoDB  DEFAULT CHARSET=utf8 AUTO_INCREMENT=3 ;

--
-- Dumping data for table `hoiit_module_poll`
--

INSERT INTO `hoiit_module_poll` (`record_id`, `question`, `begin_date`, `end_date`, `record_order`, `create_date`, `enable`) VALUES
(2, 'Bạn tích con khỉ nào nhất', 1344376800, 1345327199, 1, '2012-08-08 02:06:57', 1);

-- --------------------------------------------------------

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
) ENGINE=InnoDB  DEFAULT CHARSET=utf8 AUTO_INCREMENT=4 ;

--
-- Dumping data for table `hoiit_module_poll_rows`
--

INSERT INTO `hoiit_module_poll_rows` (`id`, `answer`, `url`, `num_vote`, `vote_id`) VALUES
(1, 'Khỉ gió', '', 1, 2),
(2, 'Khỉ lửa', '', 1, 2),
(3, 'Khỉ đột', '', 0, 2);

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
) ENGINE=InnoDB  DEFAULT CHARSET=utf8 AUTO_INCREMENT=7 ;

--
-- Dumping data for table `hoiit_module_products`
--

INSERT INTO `hoiit_module_products` (`record_id`, `postdate`, `pic_thumb`, `pic_full`, `pic_desc`, `record_order`, `unit`, `hot`, `specials`, `field1`, `field2`, `field3`, `field4`, `enable`, `hoiit_module_item_cat_cat_id`) VALUES
(1, '2012-07-31 03:58:20', 'xe-day-3-banh-cho-be-thumb.jpg', 'xe-day-3-banh-cho-be.jpg', NULL, 1, '175000', 0, NULL, NULL, NULL, NULL, NULL, 1, 5),
(2, '2012-07-31 04:54:34', 'car-racer-bac-speedster-thumb.jpg', 'car-racer-bac-speedster.jpg', NULL, 2, '45000', 0, NULL, NULL, NULL, NULL, NULL, 1, 5),
(3, '2012-07-31 04:54:43', 'famosa-magic-fairy-quad-bike-thumb.jpg', 'famosa-magic-fairy-quad-bike.jpg', NULL, 3, '250000', 0, NULL, NULL, NULL, NULL, NULL, 1, 5),
(4, '2012-08-08 02:58:58', 'peppa-pig-standard-playhouse-thumb.jpg', 'peppa-pig-standard-playhouse.jpg', NULL, 4, '110000', 0, NULL, NULL, NULL, NULL, NULL, 1, 7),
(5, '2012-08-08 03:00:43', 'maxi-cosi-cabriofix-infant-carrier-thumb.jpg', 'maxi-cosi-cabriofix-infant-carrier.jpg', NULL, 5, '145000', 0, NULL, NULL, NULL, NULL, NULL, 1, 5),
(6, '2012-08-08 03:02:20', 'kids-toy-piano-thumb.jpg', 'kids-toy-piano.jpg', NULL, 6, '98000', 0, NULL, NULL, NULL, NULL, NULL, 1, 5);

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
) ENGINE=InnoDB  DEFAULT CHARSET=utf8 AUTO_INCREMENT=14 ;

--
-- Dumping data for table `hoiit_module_products_cat`
--

INSERT INTO `hoiit_module_products_cat` (`cat_id`, `cat_parent_id`, `cat_created`, `pic_thumb`, `pic_desc`, `cat_hot`, `cat_order`, `cat_extra1`, `cat_extra2`, `cat_enable`) VALUES
(5, 0, '2012-07-25 06:28:10', 'giay-dep.jpg', NULL, 0, 5, NULL, NULL, 1),
(6, 5, '2012-07-30 13:45:47', '', NULL, 0, 6, NULL, NULL, 1),
(7, 0, '2012-07-31 04:00:12', '', NULL, 0, 7, NULL, NULL, 1),
(8, 6, '2012-08-09 02:56:41', '', NULL, 0, 8, NULL, NULL, 1),
(9, 5, '2012-08-09 04:01:21', '', NULL, 0, 9, NULL, NULL, 1),
(10, 5, '2012-08-09 07:34:14', '', NULL, 0, 10, NULL, NULL, 1),
(11, 10, '2012-08-09 07:34:33', '', NULL, 0, 11, NULL, NULL, 1),
(12, 10, '2012-08-09 07:34:43', '', NULL, 0, 12, NULL, NULL, 1),
(13, 6, '2012-08-09 10:10:45', '', NULL, 0, 13, NULL, NULL, 1);

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
(5, 'en', 'Footwear', '', 'footwear', 'Footwear'),
(5, 'vi', 'Giày dép', '', 'giay-dep', 'Giày dép'),
(6, 'en', '', '', '', ''),
(6, 'vi', 'Sub cat', '', 'sub-cat', ''),
(7, 'en', 'Outdoor Toys', '', 'outdoor-toys', 'Outdoor Toys'),
(7, 'vi', 'Ngoài trời đồ chơi', '', 'ngoai-troi-do-choi', 'Ngoài trời đồ chơi'),
(8, 'en', '', '', '', ''),
(8, 'vi', 'Sub sub', '', 'sub-sub', ''),
(9, 'en', '', '', '', ''),
(9, 'vi', 'Khi', '', 'khi', ''),
(10, 'en', '', '', '', ''),
(10, 'vi', 'Xe hơi', '', 'xe-hoi', ''),
(11, 'en', '', '', '', ''),
(11, 'vi', 'Xe có hơi', '', 'xe-co-hoi', ''),
(12, 'en', '', '', '', ''),
(12, 'vi', 'Xe hết hơi', '', 'xe-het-hoi', ''),
(13, 'en', '', '', '', ''),
(13, 'vi', 'Sub sub cat', '', 'sub-sub-cat', '');

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
(1, 'en', 'Quinny Buzz 3-wheeler pushchair', '<p>Pretty pink battery operated quad bike with fairy motifs, which is operated with a foot accelerator. It comes complete with a 6V rechargeable battery and charger and has a maximum speed of 2km/h</p>', '<p>Delivery<br />Home delivery only. Delivery to most customers in the UK is within 5 working days. Please note, we can only deliver this item to mainland UK addresses.</p>\r\n<p>This product is only available for delivery to mainland UK</p>\r\n<p>No Quibble Returns<br />ELC are happy to refund or exchange any unused merchandise returned within 28 days of purchase upon production of your receipt, as long as they are returned in an unused condition and in their original packaging. Please see Terms and Conditions for details</p>', 'quinny-buzz-3-wheeler-pushchair', 'Pretty pink battery operated quad bike with fairy motifs, which is operated with a foot accelerator. It comes complete with a 6V rechargeable battery and charger and has a maximum speed of 2km/h', 0, NULL, NULL),
(1, 'vi', 'Xe đẩy 3 bánh cho bé', '<p>Pin hoạt động khá màu hồng xe đạp quad với các họa tiết cổ tích, mà là hoạt động với một máy gia tốc chân. Nó đi kèm với một pin sạc và bộ sạc 6V và có tốc độ tối đa là 2km / h</p>', '<p>Trang chủ Giao hàng tận nơi chỉ phát. Giao hàng tận nơi hầu hết khách hàng tại Vương quốc Anh trong vòng 5 ngày làm việc. Xin lưu ý, chúng tôi chỉ có thể cung cấp mặt hàng này vào đất liền địa chỉ Vương quốc Anh. Sản phẩm này chỉ có sẵn để giao hàng cho đại lục Vương quốc Anh Không có Trả về phân minh ELC là hạnh phúc hoàn lại hoặc trao đổi bất kỳ hàng hóa không sử dụng trở lại trong vòng 28 ngày kể từ ngày mua khi sản xuất nhận của bạn, miễn là họ được trả về trong một điều kiện không sử dụng và trong bao bì gốc của họ. Xin vui lòng xem Điều khoản và Điều kiện để biết thêm chi tiết</p>', 'xe-day-3-banh-cho-be', 'Pin hoạt động khá màu hồng xe đạp quad với các họa tiết cổ tích, mà là hoạt động với một máy gia tốc chân. Nó đi kèm với một pin sạc và bộ sạc 6V và có tốc độ tối đa là 2km / h', 0, NULL, NULL),
(2, 'en', 'Car Racer bạc Speedster', '<p>Pretty pink battery operated quad bike with fairy motifs, which is operated with a foot accelerator. It comes complete with a 6V rechargeable battery and charger and has a maximum speed of 2km/h</p>', '<p>Delivery<br />Home delivery only. Delivery to most customers in the UK is within 5 working days. Please note, we can only deliver this item to mainland UK addresses.</p>\r\n<p>This product is only available for delivery to mainland UK</p>\r\n<p>No Quibble Returns<br />ELC are happy to refund or exchange any unused merchandise returned within 28 days of purchase upon production of your receipt, as long as they are returned in an unused condition and in their original packaging. Please see Terms and Conditions for details</p>', 'car-racer-bac-speedster', '', 0, NULL, NULL),
(2, 'vi', 'Car Racer bạc Speedster', '<p>Pin hoạt động khá màu hồng xe đạp quad với các họa tiết cổ tích, mà là hoạt động với một máy gia tốc chân. Nó đi kèm với một pin sạc và bộ sạc 6V và có tốc độ tối đa là 2km / h</p>', '<p>Trang chủ Giao hàng tận nơi chỉ phát. Giao hàng tận nơi hầu hết khách hàng tại Vương quốc Anh trong vòng 5 ngày làm việc. Xin lưu ý, chúng tôi chỉ có thể cung cấp mặt hàng này vào đất liền địa chỉ Vương quốc Anh. Sản phẩm này chỉ có sẵn để giao hàng cho đại lục Vương quốc Anh Không có Trả về phân minh ELC là hạnh phúc hoàn lại hoặc trao đổi bất kỳ hàng hóa không sử dụng trở lại trong vòng 28 ngày kể từ ngày mua khi sản xuất nhận của bạn, miễn là họ được trả về trong một điều kiện không sử dụng và trong bao bì gốc của họ. Xin vui lòng xem Điều khoản và Điều kiện để biết thêm chi tiết</p>', 'car-racer-bac-speedster', '', 0, NULL, NULL),
(3, 'en', 'Famosa Magic Fairy Quad Bike', '', '', 'famosa-magic-fairy-quad-bike', '', 0, NULL, NULL),
(3, 'vi', 'Famosa Magic Fairy Quad Bike', '<p>Pin hoạt động khá màu hồng xe đạp quad với các họa tiết cổ tích, mà là hoạt động với một máy gia tốc chân. Nó đi kèm với một pin sạc và bộ sạc 6V và có tốc độ tối đa là 2km / h</p>', '<p>Trang chủ Giao hàng tận nơi chỉ phát. Giao hàng tận nơi hầu hết khách hàng tại Vương quốc Anh trong vòng 5 ngày làm việc. Xin lưu ý, chúng tôi chỉ có thể cung cấp mặt hàng này vào đất liền địa chỉ Vương quốc Anh. Sản phẩm này chỉ có sẵn để giao hàng cho đại lục Vương quốc Anh Không có Trả về phân minh ELC là hạnh phúc hoàn lại hoặc trao đổi bất kỳ hàng hóa không sử dụng trở lại trong vòng 28 ngày kể từ ngày mua khi sản xuất nhận của bạn, miễn là họ được trả về trong một điều kiện không sử dụng và trong bao bì gốc của họ. Xin vui lòng xem Điều khoản và Điều kiện để biết thêm chi tiết</p>', 'famosa-magic-fairy-quad-bike', '', 0, NULL, NULL),
(4, 'en', 'Peppa Pig Standard Playhouse', '<p>Pretty pink battery operated quad bike with fairy motifs, which is operated with a foot accelerator. It comes complete with a 6V rechargeable battery and charger and has a maximum speed of 2km/h</p>', '<p>Delivery<br />Home delivery only. Delivery to most customers in the UK is within 5 working days. Please note, we can only deliver this item to mainland UK addresses.</p>\r\n<p>This product is only available for delivery to mainland UK</p>\r\n<p>No Quibble Returns<br />ELC are happy to refund or exchange any unused merchandise returned within 28 days of purchase upon production of your receipt, as long as they are returned in an unused condition and in their original packaging. Please see Terms and Conditions for details</p>', 'peppa-pig-standard-playhouse', 'Pretty pink battery operated quad bike with fairy motifs, which is operated with a foot accelerator. It comes complete with a 6V rechargeable battery and charger and has a maximum speed of 2km/h', 0, NULL, NULL),
(4, 'vi', 'Peppa Pig Standard Playhouse', '<p>Pin hoạt động khá màu hồng xe đạp quad với các họa tiết cổ tích, mà là hoạt động với một máy gia tốc chân. Nó đi kèm với một pin sạc và bộ sạc 6V và có tốc độ tối đa là 2km / h</p>', '<p>Trang chủ Giao hàng tận nơi chỉ phát. Giao hàng tận nơi hầu hết khách hàng tại Vương quốc Anh trong vòng 5 ngày làm việc. Xin lưu ý, chúng tôi chỉ có thể cung cấp mặt hàng này vào đất liền địa chỉ Vương quốc Anh. Sản phẩm này chỉ có sẵn để giao hàng cho đại lục Vương quốc Anh Không có Trả về phân minh ELC là hạnh phúc hoàn lại hoặc trao đổi bất kỳ hàng hóa không sử dụng trở lại trong vòng 28 ngày kể từ ngày mua khi sản xuất nhận của bạn, miễn là họ được trả về trong một điều kiện không sử dụng và trong bao bì gốc của họ. Xin vui lòng xem Điều khoản và Điều kiện để biết thêm chi tiết</p>', 'peppa-pig-standard-playhouse', 'Pin hoạt động khá màu hồng xe đạp quad với các họa tiết cổ tích, mà là hoạt động với một máy gia tốc chân. Nó đi kèm với một pin sạc và bộ sạc 6V và có tốc độ tối đa là 2km / h', 0, NULL, NULL),
(5, 'en', 'Maxi-Cosi CabrioFix Infant Carrier', '<p>Pretty pink battery operated quad bike with fairy motifs, which is operated with a foot accelerator. It comes complete with a 6V rechargeable battery and charger and has a maximum speed of 2km/h</p>', '<p>Delivery<br />Home delivery only. Delivery to most customers in the UK is within 5 working days. Please note, we can only deliver this item to mainland UK addresses.</p>\r\n<p>This product is only available for delivery to mainland UK</p>\r\n<p>No Quibble Returns<br />ELC are happy to refund or exchange any unused merchandise returned within 28 days of purchase upon production of your receipt, as long as they are returned in an unused condition and in their original packaging. Please see Terms and Conditions for details</p>', 'maxi-cosi-cabriofix-infant-carrier', 'Pretty pink battery operated quad bike with fairy motifs, which is operated with a foot accelerator. It comes complete with a 6V rechargeable battery and charger and has a maximum speed of 2km/h', 0, NULL, NULL),
(5, 'vi', 'Maxi-Cosi CabrioFix Infant Carrier', '<p>Pretty pink battery operated quad bike with fairy motifs, which is operated with a foot accelerator. It comes complete with a 6V rechargeable battery and charger and has a maximum speed of 2km/h</p>', '<p>Trang chủ Giao hàng tận nơi chỉ phát. Giao hàng tận nơi hầu hết khách hàng tại Vương quốc Anh trong vòng 5 ngày làm việc. Xin lưu ý, chúng tôi chỉ có thể cung cấp mặt hàng này vào đất liền địa chỉ Vương quốc Anh. Sản phẩm này chỉ có sẵn để giao hàng cho đại lục Vương quốc Anh Không có Trả về phân minh ELC là hạnh phúc hoàn lại hoặc trao đổi bất kỳ hàng hóa không sử dụng trở lại trong vòng 28 ngày kể từ ngày mua khi sản xuất nhận của bạn, miễn là họ được trả về trong một điều kiện không sử dụng và trong bao bì gốc của họ. Xin vui lòng xem Điều khoản và Điều kiện để biết thêm chi tiết</p>', 'maxi-cosi-cabriofix-infant-carrier', 'Pretty pink battery operated quad bike with fairy motifs, which is operated with a foot accelerator. It comes complete with a 6V rechargeable battery and charger and has a maximum speed of 2km/h', 0, NULL, NULL),
(6, 'en', 'Kids Toy Piano', '<p>Pretty pink battery operated quad bike with fairy motifs, which is operated with a foot accelerator. It comes complete with a 6V rechargeable battery and charger and has a maximum speed of 2km/h</p>', '<p>Delivery<br />Home delivery only. Delivery to most customers in the UK is within 5 working days. Please note, we can only deliver this item to mainland UK addresses.</p>\r\n<p>This product is only available for delivery to mainland UK</p>\r\n<p>No Quibble Returns<br />ELC are happy to refund or exchange any unused merchandise returned within 28 days of purchase upon production of your receipt, as long as they are returned in an unused condition and in their original packaging. Please see Terms and Conditions for details</p>', 'kids-toy-piano', 'Pretty pink battery operated quad bike with fairy motifs, which is operated with a foot accelerator. It comes complete with a 6V rechargeable battery and charger and has a maximum speed of 2km/h', 0, NULL, NULL),
(6, 'vi', 'Kids Toy Piano', '<p>Pin hoạt động khá màu hồng xe đạp quad với các họa tiết cổ tích, mà là hoạt động với một máy gia tốc chân. Nó đi kèm với một pin sạc và bộ sạc 6V và có tốc độ tối đa là 2km / h</p>', '<p>Trang chủ Giao hàng tận nơi chỉ phát. Giao hàng tận nơi hầu hết khách hàng tại Vương quốc Anh trong vòng 5 ngày làm việc. Xin lưu ý, chúng tôi chỉ có thể cung cấp mặt hàng này vào đất liền địa chỉ Vương quốc Anh. Sản phẩm này chỉ có sẵn để giao hàng cho đại lục Vương quốc Anh Không có Trả về phân minh ELC là hạnh phúc hoàn lại hoặc trao đổi bất kỳ hàng hóa không sử dụng trở lại trong vòng 28 ngày kể từ ngày mua khi sản xuất nhận của bạn, miễn là họ được trả về trong một điều kiện không sử dụng và trong bao bì gốc của họ. Xin vui lòng xem Điều khoản và Điều kiện để biết thêm chi tiết</p>', 'kids-toy-piano', 'Pin hoạt động khá màu hồng xe đạp quad với các họa tiết cổ tích, mà là hoạt động với một máy gia tốc chân. Nó đi kèm với một pin sạc và bộ sạc 6V và có tốc độ tối đa là 2km / h', 0, NULL, NULL);

-- --------------------------------------------------------

--
-- Table structure for table `hoiit_module_service`
--

CREATE TABLE IF NOT EXISTS `hoiit_module_service` (
  `record_id` int(11) NOT NULL AUTO_INCREMENT,
  `pic_thumb` varchar(100) DEFAULT NULL,
  `created` timestamp NOT NULL DEFAULT CURRENT_TIMESTAMP,
  `record_order` int(11) DEFAULT NULL,
  `hot` tinyint(1) NOT NULL DEFAULT '0',
  `field1` varchar(100) DEFAULT NULL,
  `field2` varchar(100) DEFAULT NULL,
  `enable` tinyint(1) NOT NULL DEFAULT '0',
  PRIMARY KEY (`record_id`)
) ENGINE=InnoDB  DEFAULT CHARSET=utf8 AUTO_INCREMENT=57 ;

--
-- Dumping data for table `hoiit_module_service`
--

INSERT INTO `hoiit_module_service` (`record_id`, `pic_thumb`, `created`, `record_order`, `hot`, `field1`, `field2`, `enable`) VALUES
(56, NULL, '2012-09-04 15:23:58', 56, 0, NULL, NULL, 1);

-- --------------------------------------------------------

--
-- Table structure for table `hoiit_module_service_languages`
--

CREATE TABLE IF NOT EXISTS `hoiit_module_service_languages` (
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
-- Dumping data for table `hoiit_module_service_languages`
--

INSERT INTO `hoiit_module_service_languages` (`record_id`, `language_id`, `title`, `content`, `tag`, `description`, `hit`, `extra_field1`, `extra_field2`) VALUES
(56, 'en', 'Factory', '<p>sadflhashd''kfl</p>\r\n<p>dshf</p>\r\n<ul><li>shkd</li>\r\n<li>hfhk</li>\r\n<li>ádhf</li>\r\n<li>dshfhasdhf</li>\r\n<li>shk</li>\r\n</ul><p>adhf</p>\r\n<ol><li>sdfHladsfds</li>\r\n<li>hfhds</li>\r\n<li>hf</li>\r\n<li>shad</li>\r\n<li>fh</li>\r\n</ol><p>sad</p>', 'factory', '', 1, NULL, NULL),
(56, 'vi', 'Nhà máy', '<p>ssafgdfgh/hdsf/gh/dfshgdsfhg<br />H</p>\r\n<p>gh</p>\r\n<ol><li>dfh</li>\r\n<li>gdsfh</li>\r\n<li>g</li>\r\n<li>hdfhkgshdf</li>\r\n<li>ghkldsfhg</li>\r\n<li>dsfh</li>\r\n<li>gh</li>\r\n<li>dsf</li>\r\n<li>gdsf</li>\r\n<li>g</li>\r\n<li>dsf</li>\r\n</ol>', 'nha-may', '', 4, NULL, NULL);

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
('right', 1, '1', 'poll', NULL, NULL, 'adv_right'),
('left', 2, '1', 'poll', NULL, NULL, 'list_support'),
('right', 1, '1', 'factory', NULL, NULL, 'adv_left'),
('right', 2, '1', 'factory', NULL, NULL, 'adv_right'),
('right', 3, '1', 'factory', NULL, NULL, 'list_support'),
('right', 4, '1', 'factory', NULL, NULL, 'counter'),
('right', 1, '1', 'about', NULL, NULL, 'adv_left'),
('right', 2, '1', 'about', NULL, NULL, 'adv_right'),
('right', 3, '1', 'about', NULL, NULL, 'list_support'),
('right', 4, '1', 'about', NULL, NULL, 'counter'),
('right', 1, '1', 'news', NULL, NULL, 'menu_news'),
('right', 2, '1', 'news', NULL, NULL, 'adv_left'),
('right', 3, '1', 'news', NULL, NULL, 'adv_right'),
('right', 1, '1', 'contact', NULL, NULL, 'adv_left'),
('right', 2, '1', 'contact', NULL, NULL, 'adv_right'),
('right', 3, '1', 'contact', NULL, NULL, 'list_support'),
('right', 4, '1', 'contact', NULL, NULL, 'counter'),
('left', 1, '1', 'default', NULL, NULL, 'about_home'),
('right', 2, '1', 'default', NULL, NULL, 'news_new'),
('right', 3, '1', 'default', NULL, NULL, 'adv_left'),
('right', 4, '1', 'default', NULL, NULL, 'adv_right'),
('right', 5, '1', 'default', NULL, NULL, 'list_support'),
('right', 6, '1', 'default', NULL, NULL, 'counter');

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
('hotline', ''),
('keywords', 'Keywords'),
('slogan', 'Thế giới đồ chơi cho khỉ'),
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
('home', 'Home', '2012-07-04 10:54:29', NULL, 'Yii project', 'http://yiiproject.com', 0, 0),
('mekong', 'Ngôi sao Mekong', '2012-09-04 03:51:58', NULL, NULL, NULL, 0, 1),
('toys', 'Toys Store', '2012-07-27 04:55:47', NULL, NULL, NULL, 0, 0),
('wedding', 'Wedding Pink', '2012-08-07 04:55:47', NULL, NULL, NULL, 0, 0),
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
('<lang:[a-z]{2}>/about-us/<id:[-a-z0-9]+>', 'about/default/view', 'urlSuffix=>.html', 0, 0, 'about', 'en'),
('about-us', 'about/default/index', '', 2, 1, 'about', 'en'),
('contact', 'contact/default/index', '', 0, 1, 'contact', 'en'),
('factory', 'factory/default/index', '', 2, 1, 'factory', 'en'),
('gioi-thieu', 'about/default/index', '', 2, 1, 'about', 'vi'),
('gioi-thieu/<id:[-a-z0-9]+>', 'about/default/view', 'urlSuffix=>.html', 1, 0, 'about', 'vi'),
('home-page', 'default/default/index', NULL, NULL, 1, 'default', 'en'),
('lien-he', 'contact/default/index', '', 1, 1, 'contact', 'vi'),
('news', 'news/default/index', '', 5, 1, 'news', 'en'),
('nha-may', 'factory/default/index', '', 2, 1, 'factory', 'vi'),
('products', 'products/default/index', '', 4, 1, 'products', 'en'),
('san-pham', 'products/default/index', '', 3, 1, 'products', 'vi'),
('san-pham/<cid:[-a-z0-9]+>', 'products/default/cats', '', 2, 0, 'products', 'vi'),
('san-pham/<cid:[-a-z0-9]+>/<id:[-a-z0-9]+>', 'products/default/view', 'urlSuffix=>.html', 0, 0, 'products', 'vi'),
('san-pham/<cid:[-a-z0-9]+>/trang/<page:\\d+>', 'products/default/cats', '', 1, 0, 'products', 'vi'),
('tin-tuc', 'news/default/index', '', 4, 1, 'news', 'vi'),
('tin-tuc/<cid:[-a-z0-9]+>', 'news/default/cats', '', 3, 0, 'news', 'vi'),
('tin-tuc/<cid:[-a-z0-9]+>/<id:[-a-z0-9]+>', 'news/default/view', 'urlSuffix=>.html', 0, 0, 'news', 'vi'),
('tin-tuc/<cid:[-a-z0-9]+>/trang/<page:\\d+>', 'news/default/cats', '', 2, 0, 'news', 'vi'),
('tin-tuc/trang/<page:\\d+>', 'news/default/index', '', 1, 0, 'news', 'vi'),
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
-- Constraints for table `hoiit_module_contacts_languages`
--
ALTER TABLE `hoiit_module_contacts_languages`
  ADD CONSTRAINT `fk_hoiit_module_contacts_has_hoiit_languages_hoiit_languages1` FOREIGN KEY (`language_id`) REFERENCES `hoiit_languages` (`language_id`) ON DELETE NO ACTION ON UPDATE NO ACTION,
  ADD CONSTRAINT `fk_hoiit_module_contacts_has_hoiit_languages_hoiit_module_con1` FOREIGN KEY (`record_id`) REFERENCES `hoiit_module_contacts` (`record_id`) ON DELETE NO ACTION ON UPDATE NO ACTION;

--
-- Constraints for table `hoiit_module_factory_languages`
--
ALTER TABLE `hoiit_module_factory_languages`
  ADD CONSTRAINT `hoiit_module_factory_languages_ibfk_1` FOREIGN KEY (`language_id`) REFERENCES `hoiit_languages` (`language_id`),
  ADD CONSTRAINT `hoiit_module_factory_languages_ibfk_2` FOREIGN KEY (`record_id`) REFERENCES `hoiit_module_factory` (`record_id`);

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
-- Constraints for table `hoiit_module_poll_rows`
--
ALTER TABLE `hoiit_module_poll_rows`
  ADD CONSTRAINT `hoiit_module_poll_rows_ibfk_1` FOREIGN KEY (`vote_id`) REFERENCES `hoiit_module_poll` (`record_id`) ON DELETE CASCADE ON UPDATE CASCADE;

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
-- Constraints for table `hoiit_module_service_languages`
--
ALTER TABLE `hoiit_module_service_languages`
  ADD CONSTRAINT `hoiit_module_service_languages_ibfk_1` FOREIGN KEY (`record_id`) REFERENCES `hoiit_module_service` (`record_id`),
  ADD CONSTRAINT `hoiit_module_service_languages_ibfk_2` FOREIGN KEY (`language_id`) REFERENCES `hoiit_languages` (`language_id`);

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
