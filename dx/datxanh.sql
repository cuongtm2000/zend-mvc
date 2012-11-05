-- phpMyAdmin SQL Dump
-- version 3.5.2.2
-- http://www.phpmyadmin.net
--
-- Host: localhost
-- Generation Time: Nov 05, 2012 at 04:19 AM
-- Server version: 5.5.16
-- PHP Version: 5.3.8

SET SQL_MODE="NO_AUTO_VALUE_ON_ZERO";
SET time_zone = "+00:00";


/*!40101 SET @OLD_CHARACTER_SET_CLIENT=@@CHARACTER_SET_CLIENT */;
/*!40101 SET @OLD_CHARACTER_SET_RESULTS=@@CHARACTER_SET_RESULTS */;
/*!40101 SET @OLD_COLLATION_CONNECTION=@@COLLATION_CONNECTION */;
/*!40101 SET NAMES utf8 */;

--
-- Database: `datxanh`
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
('adv_left_height', '500', NULL, 'adv'),
('adv_left_width', '222', NULL, 'adv'),
('adv_right_height', '500', NULL, 'adv'),
('adv_right_width', '230', NULL, 'adv'),
('adv_top_height', '222', NULL, 'adv'),
('adv_top_width', '222', NULL, 'adv'),
('banner_height', '184', NULL, 'banner'),
('banner_height_default', '270', NULL, 'banner'),
('banner_width', '940', NULL, 'banner'),
('banner_width_default', '930', NULL, 'banner'),
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
('products_width_thumb', '220', NULL, 'products'),
('projects_cat_height_thumb', '165', NULL, 'projects'),
('projects_cat_width_thumb', '165', NULL, 'projects'),
('projects_height_thumb', '300', NULL, 'projects'),
('projects_num_item_cat', '5', NULL, 'projects'),
('projects_num_item_hot', '7', NULL, 'projects'),
('projects_num_item_index', '5', NULL, 'projects'),
('projects_num_item_new', '7', NULL, 'projects'),
('projects_width_thumb', '300', NULL, 'projects');

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
('counter_session', 'CounterSession', 'CounterSession.Counter', 'publishAssets', 'counterSession'),
('lands_search', 'Lands', '', 'searchLands', 'lands'),
('list_support', 'Support', '', 'listItem', 'support'),
('menu_about', 'About', '', 'listItem', 'about'),
('menu_news', 'NewsCat', '', 'listItem', 'news'),
('menu_products', 'ProductsCat', '', 'listItem', 'products'),
('menu_projects', 'ProjectsCat', '', 'listItem', 'projects'),
('news_hot', 'News', '', 'listItemsHot', 'news'),
('news_list_first', 'News', '', 'ListFirst', 'news'),
('news_new', 'News', '', 'listItemsNew', 'news'),
('new_poll', 'Poll', '', 'getFirstItem', 'poll'),
('projects_hot', 'Projects', '', 'listItemsHot', 'projects'),
('projects_new', 'Projects', '', 'listItemsNew', 'projects');

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
('counterSession', 'Thống kê truy cập', 0, 'vi'),
('create_date', 'Created date', 1, 'en'),
('create_date', 'Ngày tạo', 1, 'vi'),
('default', 'Home page', 0, 'en'),
('default', 'Trang chủ', 0, 'vi'),
('delete', 'Delete', 1, 'en'),
('delete', 'Xóa', 1, 'vi'),
('edit', 'Edit', 0, 'en'),
('edit', 'Chỉnh sửa', 0, 'vi'),
('hidden', 'Hidden', 1, 'en'),
('hidden', 'Ẩn', 1, 'vi'),
('hot', 'nổi bật', 0, 'vi'),
('jobs', 'Tuyển dụng', 0, 'vi'),
('lands', 'Sàn giao dịch', 0, 'vi'),
('new', 'mới', 0, 'vi'),
('news', 'News', 0, 'en'),
('news', 'Tin tức & sự kiện', 0, 'vi'),
('no_record', 'Không tồn tại mẫu tin', 0, 'vi'),
('order', 'Order', 1, 'en'),
('order', 'Thứ tự', 1, 'vi'),
('other', 'khác', 0, 'vi'),
('poll', 'Bình chọn', 0, 'en'),
('poll', 'Bình chọn', 0, 'vi'),
('products', 'Products', 0, 'en'),
('products', 'Sản phẩm', 0, 'vi'),
('projects', 'Projects', 0, 'en'),
('projects', 'Dự án', 0, 'vi'),
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
('about', 'Danh sách', 'about', 2, 1, 1),
('adv', 'Danh sách|Cấu hình', 'adv|adv/config', 5, 1, 0),
('banner', 'Danh sách Banner|Danh sách Logo|Cấu hình', 'banner|banner/logo|banner/config', 6, 1, 0),
('contact', 'Danh sách|Cấu hình', 'contact|contact/config', 2, 1, 1),
('counterSession', 'CounterSession', NULL, 4, 0, 0),
('default', 'Default', NULL, 1, 1, 1),
('jobs', 'Danh mục|Danh sách|Cấu hình', 'jobs/cat|jobs|jobs/config', 4, 1, 1),
('lands', 'Danh mục|Danh sách|Cấu hình|Thành viên', 'lands/cat|lands|lands/config|lands/member', 3, 1, 1),
('news', 'Danh mục|Danh sách|Cấu hình', 'news/cat|news|news/config', 4, 1, 1),
('poll', 'Danh sách', 'poll', 7, 1, 1),
('products', 'Danh mục|Danh sách|Cấu hình', 'products/cat|products|products/config', 3, 1, 1),
('projects', 'Danh mục|Danh sách|Cấu hình', 'projects/cat|projects|projects/config', 4, 1, 1),
('support', 'Danh sách', 'support', 6, 1, 0);

-- --------------------------------------------------------

--
-- Table structure for table `hoiit_modules_links`
--

CREATE TABLE IF NOT EXISTS `hoiit_modules_links` (
  `link_id` varchar(100) NOT NULL,
  `module_id` varchar(30) NOT NULL,
  `language_id` varchar(2) NOT NULL,
  PRIMARY KEY (`link_id`,`module_id`,`language_id`),
  KEY `fk_hoiit_modules_links_hoiit_modules1` (`module_id`),
  KEY `fk_hoiit_modules_links_hoiit_languages1` (`language_id`)
) ENGINE=InnoDB DEFAULT CHARSET=utf8;

--
-- Dumping data for table `hoiit_modules_links`
--

INSERT INTO `hoiit_modules_links` (`link_id`, `module_id`, `language_id`) VALUES
('about-us', 'about', 'en'),
('contact', 'contact', 'en'),
('exchange', 'lands', 'en'),
('home-page', 'default', 'en'),
('news', 'news', 'en'),
('poll', 'poll', 'en'),
('products', 'products', 'en'),
('projects', 'projects', 'en'),
('du-an', 'projects', 'vi'),
('gioi-thieu', 'about', 'vi'),
('khao-sat-y-kien', 'poll', 'vi'),
('lien-he', 'contact', 'vi'),
('san-giao-dich', 'lands', 'vi'),
('san-pham', 'products', 'vi'),
('tin-tuc', 'news', 'vi'),
('trang-chu', 'default', 'vi');

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
) ENGINE=InnoDB  DEFAULT CHARSET=utf8 AUTO_INCREMENT=2 ;

--
-- Dumping data for table `hoiit_module_about`
--

INSERT INTO `hoiit_module_about` (`record_id`, `pic_thumb`, `created`, `record_order`, `hot`, `field1`, `field2`, `enable`) VALUES
(1, NULL, '2012-11-03 07:18:09', 1, 0, NULL, NULL, 1);

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
(1, 'vi', 'Giới thiệu đất xanh', '<p>Ngay từ khi thành lập, Đất Xanh đã đặt ra phương châm hoạt động: luôn mang đến cho khách hàng những "Sản phẩm tốt nhất – Dịch vụ tốt nhất" , không ngừng sáng tạo, kiên định, nỗ lực trong mọi hoàn cảnh.</p>\r\n<p>Trải qua hàng loạt những biến động của thị trường, Đất Xanh vẫn luôn đứng vững và phát triển, khẳng định vị thế của mình trên thị trường bất động sản Việt Nam, giữ vững niềm tin trong tâm trí khách hàng và các đối tác.</p>\r\n<p>Với chiến lược đa ngành nghề, đa sở hữu và đa quốc gia theo xu thế chung về hội nhập và cạnh tranh toàn cầu, đáp ứng tốt nhất sự thay đổi , vận hành và phát triển nền kinh tế toàn cầu. Với chiến lược này Đất Xanh chủ trương liên doanh, liên kết , hợp tác với các tổ chức Tài Chính, Ngân hàng, Công Nghệ, Nhân Lực ...nhằm tối ưu hóa sức cạnh tranh trên thị trường.</p>\r\n<p>Với đội ngũ lãnh đạo và nhân viên trẻ, năng động, chuyên nghiệp được đào tạo bài bản và không ngừng nâng cấp và thử thách cùng sự tin tưởng của quý đối tác , quý khách hàng và các cổ đông, Chúng tôi tin chắc rằng Đất Xanh có đủ cơ sở để đạt những mục tiêu mà chiến lược đã đề ra .</p>\r\n<p>Đất Xanh dần trở thành một trong những tập đoàn kinh tế hàng đầu Việt Nam và vươn ra thế giới trong một tương lai gần nhất .</p>\r\n<p>Đất Xanh cam kết sẽ tiếp tục mang đến cho Qúy khách hàng những sản phẩm tốt nhất – Dịch vụ tốt nhất, Quý đối tác và Các cổ đông nhiều lợi ích hơn nữa, tiếp tục đồng hành cùng Qúy khách hàng, Quý đối tác và Các cổ đông trong những chặng đường phát triển tiếp theo .</p>\r\n<p>Trân trọng,</p>', 'gioi-thieu-dat-xanh', 'Ngay từ khi thành lập, Đất Xanh đã đặt ra phương châm hoạt động: luôn mang đến cho khách hàng những "Sản phẩm tốt nhất – Dịch vụ tốt nhất" , không ngừng sáng tạo, kiên định, nỗ lực trong mọi hoàn cảnh', 26, NULL, NULL);

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
) ENGINE=InnoDB  DEFAULT CHARSET=utf8 AUTO_INCREMENT=4 ;

--
-- Dumping data for table `hoiit_module_advs`
--

INSERT INTO `hoiit_module_advs` (`record_id`, `title`, `pic_thumb`, `url`, `create_date`, `start_date`, `end_date`, `hits`, `record_order`, `position`, `type`, `click`, `enable`) VALUES
(1, 'Quảng cáo trái', 'quang-cao-trai.jpg', '', '2012-11-03 01:53:13', '2012-11-02 17:00:00', '2012-11-30 17:00:00', 0, 1, 'left', '_bank', 0, 1),
(2, 'Quảng cáo trái', 'quang-cao-trai-4.jpg', '', '2012-11-03 02:00:36', '2012-11-02 17:00:00', '2012-12-07 17:00:00', 0, 2, 'left', '_bank', 0, 1),
(3, 'Quảng cáo bên phải', 'quang-cao-ben-phai.jpg', '', '2012-11-03 09:28:47', '2012-11-02 17:00:00', '2012-11-30 17:00:00', 0, 3, 'right', '_bank', 0, 1);

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
) ENGINE=InnoDB  DEFAULT CHARSET=utf8 AUTO_INCREMENT=63 ;

--
-- Dumping data for table `hoiit_module_banners`
--

INSERT INTO `hoiit_module_banners` (`banner_id`, `banner_date`, `banner_name`, `banner_picture`, `banner_link`, `banner_order`, `banner_type`, `banner_click`, `module_id`, `enable`) VALUES
(58, '2012-08-07 09:42:19', '', NULL, NULL, NULL, 'logo', 0, NULL, 1),
(62, '2012-11-03 03:22:46', 'Banner dự án', 'banner-du-an.jpg', '', 1, 'banner', 0, 'default', 1);

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
) ENGINE=InnoDB DEFAULT CHARSET=utf8 AUTO_INCREMENT=1 ;

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

-- --------------------------------------------------------

--
-- Table structure for table `hoiit_module_counter_session`
--

CREATE TABLE IF NOT EXISTS `hoiit_module_counter_session` (
  `session_id` varchar(9) NOT NULL,
  `session_time` int(11) NOT NULL,
  PRIMARY KEY (`session_id`)
) ENGINE=InnoDB DEFAULT CHARSET=utf8;

--
-- Dumping data for table `hoiit_module_counter_session`
--

INSERT INTO `hoiit_module_counter_session` (`session_id`, `session_time`) VALUES
('9irm6qkxd', 1352077842);

-- --------------------------------------------------------

--
-- Table structure for table `hoiit_module_counter_value`
--

CREATE TABLE IF NOT EXISTS `hoiit_module_counter_value` (
  `save_name` varchar(32) NOT NULL,
  `save_value` int(11) NOT NULL,
  PRIMARY KEY (`save_name`)
) ENGINE=InnoDB DEFAULT CHARSET=utf8;

--
-- Dumping data for table `hoiit_module_counter_value`
--

INSERT INTO `hoiit_module_counter_value` (`save_name`, `save_value`) VALUES
('max_visit_day', 1351897200),
('max_visit_value', 6),
('time_start_today', 1352070000),
('today_visited', 1),
('total_visited', 13),
('yesterday_visited', 2);

-- --------------------------------------------------------

--
-- Table structure for table `hoiit_module_jobs`
--

CREATE TABLE IF NOT EXISTS `hoiit_module_jobs` (
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
  KEY `fk_hoiit_module_jobs_hoiit_module_jobs_cat_1` (`hoiit_module_item_cat_cat_id`)
) ENGINE=InnoDB  DEFAULT CHARSET=utf8 AUTO_INCREMENT=3 ;

-- --------------------------------------------------------

--
-- Table structure for table `hoiit_module_jobs_cat`
--

CREATE TABLE IF NOT EXISTS `hoiit_module_jobs_cat` (
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
) ENGINE=InnoDB  DEFAULT CHARSET=utf8 AUTO_INCREMENT=3 ;

-- --------------------------------------------------------

--
-- Table structure for table `hoiit_module_jobs_cat_languages`
--

CREATE TABLE IF NOT EXISTS `hoiit_module_jobs_cat_languages` (
  `cat_id` int(11) NOT NULL,
  `language_id` varchar(2) NOT NULL,
  `cat_title` varchar(100) NOT NULL,
  `preview` text,
  `tag` varchar(100) NOT NULL,
  `description` varchar(250) DEFAULT NULL,
  PRIMARY KEY (`cat_id`,`language_id`),
  KEY `fk_hoiit_module_jobs_cat_has_hoiit_languages_hoiit_languages1` (`language_id`),
  KEY `fk_hoiit_module_jobs_cat_has_hoiit_languages_hoiit_module_ne1` (`cat_id`)
) ENGINE=InnoDB DEFAULT CHARSET=utf8;

-- --------------------------------------------------------

--
-- Table structure for table `hoiit_module_jobs_languages`
--

CREATE TABLE IF NOT EXISTS `hoiit_module_jobs_languages` (
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
  KEY `fk_hoiit_module_jobs_has_hoiit_languages_hoiit_languages1` (`language_id`),
  KEY `fk_hoiit_module_jobs_has_hoiit_languages_hoiit_module_jobs1` (`record_id`)
) ENGINE=InnoDB DEFAULT CHARSET=utf8;

-- --------------------------------------------------------

--
-- Table structure for table `hoiit_module_lands`
--

CREATE TABLE IF NOT EXISTS `hoiit_module_lands` (
  `record_id` int(11) NOT NULL DEFAULT '0',
  `postdate` timestamp NOT NULL DEFAULT '0000-00-00 00:00:00',
  `pic_thumb` varchar(100) DEFAULT NULL,
  `pic_full` varchar(100) DEFAULT NULL,
  `pic_desc` varchar(500) DEFAULT NULL,
  `record_order` int(11) DEFAULT NULL,
  `price` varchar(45) DEFAULT NULL,
  `hot` tinyint(1) NOT NULL DEFAULT '0',
  `specials` tinyint(1) DEFAULT NULL,
  `contact_name` varchar(45) DEFAULT NULL,
  `contact_tel` varchar(45) DEFAULT NULL,
  `enable` tinyint(1) NOT NULL DEFAULT '1',
  `hoiit_module_item_cat_cat_id` int(11) NOT NULL,
  `hoiit_module_item_type_type_id` int(11) NOT NULL,
  `hoiit_module_lands_provinces_province_id` int(11) NOT NULL,
  `username` varchar(45) CHARACTER SET latin1 NOT NULL,
  `hits` int(11) NOT NULL,
  `keys` varchar(45) CHARACTER SET latin1 NOT NULL,
  PRIMARY KEY (`record_id`),
  KEY `fk_cat_id` (`hoiit_module_item_cat_cat_id`),
  KEY `hoiit_module_item_type_type_id` (`hoiit_module_item_type_type_id`),
  KEY `hoiit_module_lands_provinces_province_id` (`hoiit_module_lands_provinces_province_id`),
  KEY `username` (`username`)
) ENGINE=InnoDB DEFAULT CHARSET=utf8;

-- --------------------------------------------------------

--
-- Table structure for table `hoiit_module_lands_cat`
--

CREATE TABLE IF NOT EXISTS `hoiit_module_lands_cat` (
  `cat_id` int(11) NOT NULL AUTO_INCREMENT,
  `cat_parent_id` int(11) NOT NULL DEFAULT '0',
  `cat_created` timestamp NOT NULL DEFAULT '0000-00-00 00:00:00',
  `pic_thumb` varchar(100) DEFAULT NULL,
  `pic_desc` varchar(200) DEFAULT NULL,
  `cat_hot` tinyint(1) DEFAULT NULL,
  `cat_order` int(11) DEFAULT NULL,
  `cat_extra1` varchar(100) DEFAULT NULL,
  `cat_extra2` varchar(100) DEFAULT NULL,
  `cat_enable` tinyint(1) NOT NULL DEFAULT '1',
  PRIMARY KEY (`cat_id`)
) ENGINE=InnoDB  DEFAULT CHARSET=utf8 AUTO_INCREMENT=6 ;

--
-- Dumping data for table `hoiit_module_lands_cat`
--

INSERT INTO `hoiit_module_lands_cat` (`cat_id`, `cat_parent_id`, `cat_created`, `pic_thumb`, `pic_desc`, `cat_hot`, `cat_order`, `cat_extra1`, `cat_extra2`, `cat_enable`) VALUES
(4, 0, '0000-00-00 00:00:00', '', NULL, 0, 4, NULL, NULL, 1),
(5, 0, '0000-00-00 00:00:00', '', NULL, 0, 5, NULL, NULL, 1);

-- --------------------------------------------------------

--
-- Table structure for table `hoiit_module_lands_cat_languages`
--

CREATE TABLE IF NOT EXISTS `hoiit_module_lands_cat_languages` (
  `cat_id` int(11) NOT NULL,
  `language_id` varchar(2) NOT NULL,
  `cat_title` varchar(100) NOT NULL,
  `preview` text,
  `tag` varchar(100) NOT NULL,
  `description` varchar(250) DEFAULT NULL,
  PRIMARY KEY (`cat_id`,`language_id`),
  UNIQUE KEY `cat_id` (`cat_id`),
  KEY `language_id` (`language_id`)
) ENGINE=InnoDB DEFAULT CHARSET=utf8;

--
-- Dumping data for table `hoiit_module_lands_cat_languages`
--

INSERT INTO `hoiit_module_lands_cat_languages` (`cat_id`, `language_id`, `cat_title`, `preview`, `tag`, `description`) VALUES
(4, 'vi', 'Căn hộ', '', 'can-ho', ''),
(5, 'vi', 'Đất nền', '', 'dat-nen', '');

-- --------------------------------------------------------

--
-- Table structure for table `hoiit_module_lands_languages`
--

CREATE TABLE IF NOT EXISTS `hoiit_module_lands_languages` (
  `record_id` int(11) NOT NULL,
  `language_id` varchar(2) NOT NULL,
  `title` varchar(100) NOT NULL,
  `preview` text CHARACTER SET latin1 NOT NULL,
  `content` text NOT NULL,
  `tag` varchar(100) NOT NULL,
  `description` varchar(250) DEFAULT NULL,
  PRIMARY KEY (`record_id`,`language_id`),
  KEY `language_id` (`language_id`)
) ENGINE=InnoDB DEFAULT CHARSET=utf8;

-- --------------------------------------------------------

--
-- Table structure for table `hoiit_module_lands_provinces`
--

CREATE TABLE IF NOT EXISTS `hoiit_module_lands_provinces` (
  `province_id` int(11) NOT NULL AUTO_INCREMENT,
  `province_name` varchar(45) NOT NULL,
  PRIMARY KEY (`province_id`)
) ENGINE=InnoDB  DEFAULT CHARSET=utf8 AUTO_INCREMENT=64 ;

--
-- Dumping data for table `hoiit_module_lands_provinces`
--

INSERT INTO `hoiit_module_lands_provinces` (`province_id`, `province_name`) VALUES
(1, 'An Giang'),
(2, 'Bà rịa - Vũng tàu'),
(3, 'Bạc Liêu'),
(4, 'Bắc Cạn'),
(5, 'Bắc Giang'),
(6, 'Bắc Ninh'),
(7, 'Bến Tre'),
(8, 'Bình Dương'),
(9, 'Bình Định'),
(10, 'Bình Phước'),
(11, 'Bình Thuận'),
(12, 'Cà Mau'),
(13, 'Cao Bằng'),
(14, 'Cần Thơ'),
(15, 'Đà  Nẵng'),
(16, 'Đăk Lăk'),
(17, 'Đắk Nông'),
(18, 'Điện Biên'),
(19, 'Đồng Nai'),
(20, 'Đồng Tháp'),
(21, 'Gia Lai'),
(22, 'Hà Giang'),
(23, 'Hà Nam'),
(24, 'Hà Nội'),
(25, 'Hà Tĩnh'),
(26, 'Hải Dương'),
(27, 'Hải Phòng'),
(28, 'Hậu Giang'),
(29, 'Hòa Bình'),
(30, 'Thành phố Hồ Chí Minh'),
(31, 'Hưng Yên'),
(32, 'Khánh Hoà'),
(33, 'Kiên Giang'),
(34, 'Kon Tum'),
(35, 'Lai Châu'),
(36, 'Lạng Sơn'),
(37, 'Lào Cai'),
(38, 'Lâm Đồng'),
(39, 'Long An'),
(40, 'Nam Định'),
(41, 'Nghệ An'),
(42, 'Ninh Bình'),
(43, 'Ninh Thuận'),
(44, 'Phú Thọ'),
(45, 'Phú Yên'),
(46, 'Quảng Bình'),
(47, 'Quảng Nam'),
(48, 'Quảng Ngãi'),
(49, 'Quảng Ninh'),
(50, 'Quảng Trị'),
(51, 'Sóc Trăng'),
(52, 'Sơn La'),
(53, 'Tây Ninh'),
(54, 'Thái Bình'),
(55, 'Thái Nguyên'),
(56, 'Thanh Hoá'),
(57, 'Thừa Thiên-Huế'),
(58, 'Tiền Giang'),
(59, 'Trà Vinh'),
(60, 'Tuyên Quang'),
(61, 'Vĩnh Long'),
(62, 'Vĩnh Phúc'),
(63, 'Yên Bái');

-- --------------------------------------------------------

--
-- Table structure for table `hoiit_module_lands_type`
--

CREATE TABLE IF NOT EXISTS `hoiit_module_lands_type` (
  `type_id` int(11) NOT NULL AUTO_INCREMENT,
  `type_name` varchar(45) CHARACTER SET latin1 NOT NULL,
  `type_created` timestamp NOT NULL DEFAULT CURRENT_TIMESTAMP,
  `type_order` int(11) NOT NULL,
  `type_enable` tinyint(1) NOT NULL DEFAULT '1',
  PRIMARY KEY (`type_id`),
  UNIQUE KEY `type_order_2` (`type_order`)
) ENGINE=InnoDB  DEFAULT CHARSET=utf8 AUTO_INCREMENT=3 ;

--
-- Dumping data for table `hoiit_module_lands_type`
--

INSERT INTO `hoiit_module_lands_type` (`type_id`, `type_name`, `type_created`, `type_order`, `type_enable`) VALUES
(1, 'Mua bán', '0000-00-00 00:00:00', 2, 1),
(2, 'Cho thuê', '0000-00-00 00:00:00', 1, 1);

-- --------------------------------------------------------

--
-- Table structure for table `hoiit_module_lands_users`
--

CREATE TABLE IF NOT EXISTS `hoiit_module_lands_users` (
  `username` varchar(45) CHARACTER SET latin1 NOT NULL,
  `password` varchar(32) NOT NULL,
  `fullname` varchar(45) NOT NULL,
  `email` varchar(45) NOT NULL,
  `phone` int(11) NOT NULL,
  `province` int(11) NOT NULL,
  `address` varchar(100) DEFAULT NULL,
  `sexual` varchar(10) DEFAULT NULL,
  `date_created` timestamp NOT NULL DEFAULT CURRENT_TIMESTAMP,
  `enable` tinyint(1) NOT NULL DEFAULT '1',
  PRIMARY KEY (`username`),
  KEY `province` (`province`)
) ENGINE=InnoDB DEFAULT CHARSET=utf8;

--
-- Dumping data for table `hoiit_module_lands_users`
--

INSERT INTO `hoiit_module_lands_users` (`username`, `password`, `fullname`, `email`, `phone`, `province`, `address`, `sexual`, `date_created`, `enable`) VALUES
('ninh', '14e1b600b1fd579f47433b88e8d85291', 'ninh', 'khangninh2005@yahoo.com', 2147483647, 19, '', NULL, '2012-11-02 16:58:43', 1),
('ninh1', '453e41d218e071ccfb2d1c99ce23906a', 'dong nai', 'khangninh2005@yahoo.com', 2147483647, 15, '', 'Nam', '2012-11-02 17:12:08', 1);

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
) ENGINE=InnoDB  DEFAULT CHARSET=utf8 AUTO_INCREMENT=41 ;

--
-- Dumping data for table `hoiit_module_menus`
--

INSERT INTO `hoiit_module_menus` (`menu_id`, `parent_id`, `menu_type`, `menu_target`, `menu_sort`, `menu_homepage`, `menu_activated`) VALUES
(35, 0, 1, '', 1, 1, 1),
(36, 0, 1, '', 38, 0, 1),
(37, 0, 1, '', 2, 0, 1),
(38, 0, 1, '', 3, 0, 1),
(39, 0, 1, '', 40, 0, 1),
(40, 0, 1, '', 39, 0, 1);

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
(35, 'vi', 'Trang chủ', 'trang-chu', 'Mo ta'),
(36, 'vi', 'Dự án', 'du-an', 'Mo ta dự án'),
(37, 'vi', 'Tin tức', 'tin-tuc', 'Tin tức'),
(38, 'vi', 'Giới thiệu', 'gioi-thieu', ''),
(39, 'vi', 'Liên hệ', 'lien-he', ''),
(40, 'vi', 'Sàn giao dịch', 'san-giao-dich', '');

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
) ENGINE=InnoDB  DEFAULT CHARSET=utf8 AUTO_INCREMENT=3 ;

--
-- Dumping data for table `hoiit_module_news`
--

INSERT INTO `hoiit_module_news` (`record_id`, `postdate`, `pic_thumb`, `pic_desc`, `record_order`, `hot`, `specials`, `field1`, `field2`, `field3`, `field4`, `enable`, `hoiit_module_item_cat_cat_id`) VALUES
(1, '2012-11-04 06:49:02', 'sadas.jpg', NULL, 2, 0, NULL, NULL, NULL, NULL, NULL, 1, 2),
(2, '2012-11-04 06:59:27', '', NULL, 1, 0, NULL, NULL, NULL, NULL, NULL, 1, 2);

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
) ENGINE=InnoDB  DEFAULT CHARSET=utf8 AUTO_INCREMENT=3 ;

--
-- Dumping data for table `hoiit_module_news_cat`
--

INSERT INTO `hoiit_module_news_cat` (`cat_id`, `cat_parent_id`, `cat_created`, `pic_thumb`, `pic_desc`, `cat_hot`, `cat_order`, `cat_extra1`, `cat_extra2`, `cat_enable`) VALUES
(1, 0, '2012-11-04 06:29:09', '', NULL, 0, 1, NULL, NULL, 1),
(2, 0, '2012-11-04 06:29:16', '', NULL, 0, 2, NULL, NULL, 1);

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
(1, 'vi', 'Tin thị trường', '', 'tin-thi-truong', ''),
(2, 'vi', 'Tiêu điểm', '', 'tieu-diem', '');

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
(1, 'vi', 'sadas', '<p>dasdsa</p>', '<p>asdasdasd</p>', 'sadas', 'asdasdasd', 0, NULL, NULL),
(2, 'vi', 'ssaassasasa', '<p>asasasssasasa</p>', '<p>assasa</p>', 'ssaassasasa', 'saassasa', 0, NULL, NULL);

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
('day_time', 2456234),
('max_count', 2),
('counter', 4),
('yesterday', 2);

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
('''::1''', 1351816108);

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
) ENGINE=InnoDB DEFAULT CHARSET=utf8 AUTO_INCREMENT=1 ;

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
) ENGINE=InnoDB DEFAULT CHARSET=utf8 AUTO_INCREMENT=1 ;

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

-- --------------------------------------------------------

--
-- Table structure for table `hoiit_module_projects`
--

CREATE TABLE IF NOT EXISTS `hoiit_module_projects` (
  `record_id` int(11) NOT NULL AUTO_INCREMENT,
  `postdate` timestamp NOT NULL DEFAULT CURRENT_TIMESTAMP,
  `pic_thumb` varchar(100) DEFAULT NULL,
  `pic_desc` varchar(500) DEFAULT NULL,
  `record_order` int(11) DEFAULT NULL,
  `hot` tinyint(1) NOT NULL DEFAULT '0',
  `specials` tinyint(1) DEFAULT NULL,
  `field1` varchar(500) DEFAULT NULL,
  `field2` varchar(500) DEFAULT NULL,
  `field3` varchar(500) DEFAULT NULL,
  `field4` varchar(500) DEFAULT NULL,
  `enable` tinyint(1) NOT NULL DEFAULT '1',
  `hoiit_module_item_cat_cat_id` int(11) NOT NULL,
  PRIMARY KEY (`record_id`),
  KEY `fk_hoiit_module_pro_hoiit_module_pro_cat_1` (`hoiit_module_item_cat_cat_id`)
) ENGINE=InnoDB  DEFAULT CHARSET=utf8 AUTO_INCREMENT=6 ;

--
-- Dumping data for table `hoiit_module_projects`
--

INSERT INTO `hoiit_module_projects` (`record_id`, `postdate`, `pic_thumb`, `pic_desc`, `record_order`, `hot`, `specials`, `field1`, `field2`, `field3`, `field4`, `enable`, `hoiit_module_item_cat_cat_id`) VALUES
(4, '2012-11-01 08:12:31', 'ban-nha-cap-4.jpg', 'ban-nha-cap-4-desc-1.jpg', 4, 1, NULL, '', '', NULL, NULL, 1, 2),
(5, '2012-11-02 23:51:33', 'ban-nha-cap-3.jpg', 'ban-nha-cap-3-desc-1.png|ban-nha-cap-3-desc-2.png', 5, 0, NULL, 'ban-nha-cap-3-slide-1.png', 'http://www.youtube.com/watch?v=IXywPCS-sFo', NULL, NULL, 1, 2);

-- --------------------------------------------------------

--
-- Table structure for table `hoiit_module_projects_cat`
--

CREATE TABLE IF NOT EXISTS `hoiit_module_projects_cat` (
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
) ENGINE=InnoDB  DEFAULT CHARSET=utf8 AUTO_INCREMENT=4 ;

--
-- Dumping data for table `hoiit_module_projects_cat`
--

INSERT INTO `hoiit_module_projects_cat` (`cat_id`, `cat_parent_id`, `cat_created`, `pic_thumb`, `pic_desc`, `cat_hot`, `cat_order`, `cat_extra1`, `cat_extra2`, `cat_enable`) VALUES
(1, 0, '2012-11-01 05:33:52', '', NULL, 0, 1, NULL, NULL, 1),
(2, 0, '2012-11-02 01:39:03', '', NULL, 0, 2, NULL, NULL, 1),
(3, 1, '2012-11-02 01:39:59', '', NULL, 0, 3, NULL, NULL, 1);

-- --------------------------------------------------------

--
-- Table structure for table `hoiit_module_projects_cat_languages`
--

CREATE TABLE IF NOT EXISTS `hoiit_module_projects_cat_languages` (
  `cat_id` int(11) NOT NULL,
  `language_id` varchar(2) NOT NULL,
  `cat_title` varchar(100) NOT NULL,
  `preview` text,
  `tag` varchar(100) NOT NULL,
  `description` varchar(250) DEFAULT NULL,
  PRIMARY KEY (`cat_id`,`language_id`),
  KEY `fk_hoiit_module_pro_cat_has_hoiit_languages_hoiit_languages1` (`language_id`),
  KEY `fk_hoiit_module_pro_cat_has_hoiit_languages_hoiit_module_ne1` (`cat_id`)
) ENGINE=InnoDB DEFAULT CHARSET=utf8;

--
-- Dumping data for table `hoiit_module_projects_cat_languages`
--

INSERT INTO `hoiit_module_projects_cat_languages` (`cat_id`, `language_id`, `cat_title`, `preview`, `tag`, `description`) VALUES
(1, 'vi', 'Dự án', '', 'du-an', ''),
(2, 'vi', 'Dự án bự', '', 'du-an-bu', ''),
(3, 'vi', 'Dự án con', '', 'du-an-con', '');

-- --------------------------------------------------------

--
-- Table structure for table `hoiit_module_projects_languages`
--

CREATE TABLE IF NOT EXISTS `hoiit_module_projects_languages` (
  `record_id` int(11) NOT NULL,
  `language_id` varchar(2) NOT NULL,
  `title` varchar(100) NOT NULL,
  `preview` text,
  `content` text NOT NULL,
  `detail` text,
  `tag` varchar(100) NOT NULL,
  `description` varchar(250) DEFAULT NULL,
  `hit` int(11) NOT NULL DEFAULT '0',
  `extra_field1` varchar(100) DEFAULT NULL,
  `extra_field2` varchar(100) DEFAULT NULL,
  PRIMARY KEY (`record_id`,`language_id`),
  KEY `fk_hoiit_module_pro_has_hoiit_languages_hoiit_languages1` (`language_id`),
  KEY `fk_hoiit_module_pro_has_hoiit_languages_hoiit_module_pro1` (`record_id`)
) ENGINE=InnoDB DEFAULT CHARSET=utf8;

--
-- Dumping data for table `hoiit_module_projects_languages`
--

INSERT INTO `hoiit_module_projects_languages` (`record_id`, `language_id`, `title`, `preview`, `content`, `detail`, `tag`, `description`, `hit`, `extra_field1`, `extra_field2`) VALUES
(4, 'vi', 'Bán nhà cấp 4', '<p>Thong tin chi tiet can xem truoc</p>\r\n<p>Thong tin chi tiet can xem truoc</p>', '<p>Phần nội dung nhà ở can thiet de biet</p>', '<p><img src="/datxanh/public/userfiles/image/projects/ban-nha-cap-4.jpg" alt="" width="300" height="191" /></p>\r\n<p>so do vi tri</p>', 'ban-nha-cap-4', '', 0, NULL, NULL),
(5, 'vi', 'Bán nhà cấp 3', '<p>Bán nhà cấp 3 Bán nhà cấp 3 Bán nhà cấp 3</p>', '<p>Bán nhà cấp 3 Bán nhà cấp 3Bán nhà cấp 3 Bán nhà cấp 3Bán nhà cấp 3 Bán nhà cấp 3Bán nhà cấp 3 Bán nhà cấp 3Bán nhà cấp 3 Bán nhà cấp 3Bán nhà cấp 3 Bán nhà cấp 3Bán nhà cấp 3 Bán nhà cấp 3Bán nhà cấp 3 Bán nhà cấp 3Bán nhà cấp 3 Bán nhà cấp 3Bán nhà cấp 3 Bán nhà cấp 3Bán nhà cấp 3 Bán nhà cấp 3Bán nhà cấp 3 Bán nhà cấp 3Bán nhà cấp 3 Bán nhà cấp 3Bán nhà cấp 3 Bán nhà cấp 3Bán nhà cấp 3 Bán nhà cấp 3Bán nhà cấp 3 Bán nhà cấp 3Bán nhà cấp 3 Bán nhà cấp 3</p>', '<p>Bán nhà cấp 3 Bán nhà cấp 3</p>', 'ban-nha-cap-3', '', 0, NULL, NULL);

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
('right', 1, '1', 'poll', NULL, NULL, 'adv_right'),
('left', 2, '1', 'poll', NULL, NULL, 'list_support'),
('left', 1, '1', 'about', NULL, NULL, 'menu_about'),
('left', 1, '1', 'products', NULL, NULL, 'list_support'),
('left', 2, '1', 'products', NULL, NULL, 'adv_left'),
('right', 3, '1', 'products', NULL, NULL, 'adv_right'),
('footer', 1, '1', 'projects', NULL, NULL, 'counter_session'),
('left', 2, '1', 'projects', NULL, NULL, 'menu_projects'),
('left', 3, '1', 'projects', NULL, NULL, 'adv_left'),
('footer', 1, '1', 'contact', NULL, NULL, 'counter_session'),
('left', 2, '1', 'contact', NULL, NULL, 'menu_projects'),
('left', 3, '1', 'contact', NULL, NULL, 'list_support'),
('center', 1, '1', 'lands', '', '', 'projects_hot'),
('left', 2, '1', 'lands', '', '', 'lands_search'),
('center', 1, '1', 'default', '', '', 'projects_new'),
('footer', 2, '1', 'default', '', '', 'counter_session'),
('left', 3, '1', 'default', '', '', 'lands_search'),
('left', 4, '1', 'default', '', '', 'adv_left'),
('right', 5, '1', 'default', '', '', 'news_new'),
('left', 1, '1', 'news', '', '', 'menu_news'),
('left', 2, '1', 'news', '', '', 'adv_left');

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
('keywords', 'Kinh doanh bất động sản, Tư vấn - môi giới bất động sản, tư vấn đầu tư, xây dựng, trang trí nội thất, lập dự án đầu tư, chuẩn bị mặt bằng'),
('num_language', 'vi'),
('slogan', 'Thế giới đồ chơi cho khỉ'),
('title', 'Đất xanh hoàn cầu');

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
('datxanh', 'Đất xanh hoàn cầu', '2012-07-26 13:47:49', NULL, 'Yii project', NULL, 0, 1),
('toys', 'Toys Store', '2012-07-27 04:55:47', NULL, NULL, NULL, 0, 0),
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
('<lands:(san-giao-dich)>', 'lands/default/index', '', 3, 1, 'lands', 'vi'),
('<lands:(san-giao-dich)>/<cid:[-a-z0-9]+>', 'lands/default/cats', '', 2, 0, 'lands', 'vi'),
('<lands:(san-giao-dich)>/<cid:[-a-z0-9]+>/<id:[-a-z0-9]+>', 'lands/default/view', 'urlSuffix=>.html', 0, 0, 'lands', 'vi'),
('<lands:(san-giao-dich)>/<cid:[-a-z0-9]+>/trang/<page:\\d+>', 'lands/default/cats', '', 1, 0, 'lands', 'vi'),
('<lang:[a-z]{2}>/about-us/<id:[-a-z0-9]+>', 'about/default/view', 'urlSuffix=>.html', 0, 0, 'about', 'en'),
('<news:(tin-tuc)>', 'news/default/index', '', 4, 1, 'news', 'vi'),
('<news:(tin-tuc)>/<cid:[-a-z0-9]+>', 'news/default/cats', '', 3, 0, 'news', 'vi'),
('<news:(tin-tuc)>/<cid:[-a-z0-9]+>/<id:[-a-z0-9]+>', 'news/default/view', 'urlSuffix=>.html', 0, 0, 'news', 'vi'),
('<news:(tin-tuc)>/<cid:[-a-z0-9]+>/trang/<page:\\d+>', 'news/default/cats', '', 2, 0, 'news', 'vi'),
('<news:(tin-tuc)>/trang/<page:\\d+>', 'news/default/index', '', 1, 0, 'news', 'vi'),
('<products:(san-pham)>', 'products/default/index', '', 3, 1, 'products', 'vi'),
('<products:(san-pham)>/<cid:[-a-z0-9]+>', 'products/default/cats', '', 2, 0, 'products', 'vi'),
('<products:(san-pham)>/<cid:[-a-z0-9]+>/<id:[-a-z0-9]+>', 'products/default/view', 'urlSuffix=>.html', 0, 0, 'products', 'vi'),
('<products:(san-pham)>/<cid:[-a-z0-9]+>/trang/<page:\\d+>', 'products/default/cats', '', 1, 0, 'products', 'vi'),
('<projects:(du-an)>', 'projects/default/index', '', 4, 1, 'projects', 'vi'),
('<projects:(du-an)>/<cid:[-a-z0-9]+>', 'projects/default/cats', '', 2, 0, 'projects', 'vi'),
('<projects:(du-an)>/<cid:[-a-z0-9]+>/<id:[-a-z0-9]+>', 'projects/default/view', 'urlSuffix=>.html', 5, 0, 'projects', 'vi'),
('<projects:(du-an)>/<cid:[-a-z0-9]+>/trang/<page:\\d+>', 'projects/default/cats', '', 1, 0, 'projects', 'vi'),
('<projects:(du-an)>/trang/<page:\\d+>', 'projects/default/index', '', 3, 1, 'projects', 'vi'),
('about-us', 'about/default/index', '', 2, 1, 'about', 'en'),
('contact', 'contact/default/index', '', 0, 1, 'contact', 'en'),
('gioi-thieu', 'about/default/index', '', 2, 1, 'about', 'vi'),
('gioi-thieu/<id:[-a-z0-9]+>', 'about/default/view', 'urlSuffix=>.html', 1, 0, 'about', 'vi'),
('home-page', 'default/default/index', NULL, NULL, 1, 'default', 'en'),
('lien-he', 'contact/default/index', '', 1, 1, 'contact', 'vi'),
('news', 'news/default/index', '', 5, 1, 'news', 'en'),
('products', 'products/default/index', '', 4, 1, 'products', 'en'),
('san-giao-dich', 'lands/default/index', '', 4, 1, 'lands', 'en'),
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
-- Constraints for table `hoiit_modules_links`
--
ALTER TABLE `hoiit_modules_links`
  ADD CONSTRAINT `fk_hoiit_modules_links_hoiit_languages1` FOREIGN KEY (`language_id`) REFERENCES `hoiit_languages` (`language_id`) ON DELETE NO ACTION ON UPDATE NO ACTION,
  ADD CONSTRAINT `fk_hoiit_modules_links_hoiit_modules1` FOREIGN KEY (`module_id`) REFERENCES `hoiit_modules` (`module_id`) ON DELETE NO ACTION ON UPDATE NO ACTION;

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
-- Constraints for table `hoiit_module_jobs`
--
ALTER TABLE `hoiit_module_jobs`
  ADD CONSTRAINT `fk_hoiit_module_jobs_hoiit_module_jobs_cat_1` FOREIGN KEY (`hoiit_module_item_cat_cat_id`) REFERENCES `hoiit_module_jobs_cat` (`cat_id`) ON DELETE NO ACTION ON UPDATE NO ACTION;

--
-- Constraints for table `hoiit_module_jobs_cat_languages`
--
ALTER TABLE `hoiit_module_jobs_cat_languages`
  ADD CONSTRAINT `fk_hoiit_module_jobs_cat__has_hoiit_languages_hoiit_languages1` FOREIGN KEY (`language_id`) REFERENCES `hoiit_languages` (`language_id`) ON DELETE NO ACTION ON UPDATE NO ACTION,
  ADD CONSTRAINT `fk_hoiit_module_jobs_cat__has_hoiit_languages_hoiit_module_ne1` FOREIGN KEY (`cat_id`) REFERENCES `hoiit_module_jobs_cat` (`cat_id`) ON DELETE NO ACTION ON UPDATE NO ACTION;

--
-- Constraints for table `hoiit_module_jobs_languages`
--
ALTER TABLE `hoiit_module_jobs_languages`
  ADD CONSTRAINT `fk_hoiit_module_jobs_has_hoiit_languages_hoiit_languages1` FOREIGN KEY (`language_id`) REFERENCES `hoiit_languages` (`language_id`) ON DELETE NO ACTION ON UPDATE NO ACTION,
  ADD CONSTRAINT `fk_hoiit_module_jobs_has_hoiit_languages_hoiit_module_jobs1` FOREIGN KEY (`record_id`) REFERENCES `hoiit_module_jobs` (`record_id`) ON DELETE NO ACTION ON UPDATE NO ACTION;

--
-- Constraints for table `hoiit_module_lands`
--
ALTER TABLE `hoiit_module_lands`
  ADD CONSTRAINT `hoiit_module_lands_ibfk_1` FOREIGN KEY (`hoiit_module_item_cat_cat_id`) REFERENCES `hoiit_module_lands_cat` (`cat_id`),
  ADD CONSTRAINT `hoiit_module_lands_ibfk_2` FOREIGN KEY (`hoiit_module_item_type_type_id`) REFERENCES `hoiit_module_lands_type` (`type_id`),
  ADD CONSTRAINT `hoiit_module_lands_ibfk_3` FOREIGN KEY (`hoiit_module_lands_provinces_province_id`) REFERENCES `hoiit_module_lands_provinces` (`province_id`),
  ADD CONSTRAINT `hoiit_module_lands_ibfk_4` FOREIGN KEY (`username`) REFERENCES `hoiit_module_lands_users` (`username`);

--
-- Constraints for table `hoiit_module_lands_cat_languages`
--
ALTER TABLE `hoiit_module_lands_cat_languages`
  ADD CONSTRAINT `hoiit_module_lands_cat_languages_ibfk_1` FOREIGN KEY (`cat_id`) REFERENCES `hoiit_module_lands_cat` (`cat_id`),
  ADD CONSTRAINT `hoiit_module_lands_cat_languages_ibfk_3` FOREIGN KEY (`language_id`) REFERENCES `hoiit_languages` (`language_id`);

--
-- Constraints for table `hoiit_module_lands_languages`
--
ALTER TABLE `hoiit_module_lands_languages`
  ADD CONSTRAINT `hoiit_module_lands_languages_ibfk_1` FOREIGN KEY (`record_id`) REFERENCES `hoiit_module_lands` (`record_id`),
  ADD CONSTRAINT `hoiit_module_lands_languages_ibfk_3` FOREIGN KEY (`language_id`) REFERENCES `hoiit_languages` (`language_id`);

--
-- Constraints for table `hoiit_module_lands_users`
--
ALTER TABLE `hoiit_module_lands_users`
  ADD CONSTRAINT `hoiit_module_lands_users_ibfk_1` FOREIGN KEY (`province`) REFERENCES `hoiit_module_lands_provinces` (`province_id`);

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
-- Constraints for table `hoiit_module_projects`
--
ALTER TABLE `hoiit_module_projects`
  ADD CONSTRAINT `fk_hoiit_module_pro_hoiit_module_pro_cat_1` FOREIGN KEY (`hoiit_module_item_cat_cat_id`) REFERENCES `hoiit_module_projects_cat` (`cat_id`) ON DELETE NO ACTION ON UPDATE NO ACTION;

--
-- Constraints for table `hoiit_module_projects_cat_languages`
--
ALTER TABLE `hoiit_module_projects_cat_languages`
  ADD CONSTRAINT `fk_hoiit_module_pro_cat__has_hoiit_languages_hoiit_languages1` FOREIGN KEY (`language_id`) REFERENCES `hoiit_languages` (`language_id`) ON DELETE NO ACTION ON UPDATE NO ACTION,
  ADD CONSTRAINT `fk_hoiit_module_pro_cat__has_hoiit_languages_hoiit_module_ne1` FOREIGN KEY (`cat_id`) REFERENCES `hoiit_module_projects_cat` (`cat_id`) ON DELETE NO ACTION ON UPDATE NO ACTION;

--
-- Constraints for table `hoiit_module_projects_languages`
--
ALTER TABLE `hoiit_module_projects_languages`
  ADD CONSTRAINT `fk_hoiit_module_pro_has_hoiit_languages_hoiit_languages1` FOREIGN KEY (`language_id`) REFERENCES `hoiit_languages` (`language_id`) ON DELETE NO ACTION ON UPDATE NO ACTION,
  ADD CONSTRAINT `fk_hoiit_module_pro_has_hoiit_languages_hoiit_module_pro1` FOREIGN KEY (`record_id`) REFERENCES `hoiit_module_projects` (`record_id`) ON DELETE NO ACTION ON UPDATE NO ACTION;

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
