-- phpMyAdmin SQL Dump
-- version 3.5.2.2
-- http://www.phpmyadmin.net
--
-- Host: 127.0.0.1
-- Generation Time: Nov 10, 2012 at 03:34 AM
-- Server version: 5.5.27
-- PHP Version: 5.4.7

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
('adv_bottom_height', '61', NULL, 'adv'),
('adv_bottom_width', '64', NULL, 'adv'),
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
('contact_email_received', 'datxanhhoancau@gmail.com', NULL, 'contact'),
('contact_host', 'smtp.gmail.com', NULL, 'contact'),
('contact_password', 'assas', NULL, 'contact'),
('contact_port', '465', NULL, 'contact'),
('contact_send_mail_smtp', '1', NULL, 'contact'),
('contact_username', 'datxanhhoancau', NULL, 'contact'),
('jobs_cat_height_thumb', '200', NULL, 'jobs'),
('jobs_cat_width_thumb', '200', NULL, 'jobs'),
('jobs_height_thumb', '200', NULL, 'jobs'),
('jobs_num_item_cat', '3', NULL, 'jobs'),
('jobs_num_item_hot', '7', '', 'jobs'),
('jobs_num_item_index', '3', NULL, 'jobs'),
('jobs_num_item_new', '7', NULL, 'jobs'),
('jobs_width_thumb', '200', NULL, 'jobs'),
('lands_cat_height_thumb', '200', NULL, 'lands'),
('lands_cat_width_thumb', '165', NULL, 'lands'),
('lands_height_desc', '700', NULL, 'lands'),
('lands_height_full', '500', NULL, 'lands'),
('lands_height_thumb', '300', NULL, 'lands'),
('lands_num_item_index', '15', NULL, 'lands'),
('lands_num_item_new', '7', NULL, 'lands'),
('lands_width_desc', '500', NULL, 'lands'),
('lands_width_full', '500', NULL, 'lands'),
('lands_width_thumb', '300', NULL, 'lands'),
('logo_height', '114', NULL, 'banner'),
('logo_width', '403', NULL, 'banner'),
('news_cat_height_thumb', '100', NULL, 'news'),
('news_cat_width_thumb', '150', NULL, 'news'),
('news_height_thumb', '100', NULL, 'news'),
('news_num_item_cat', '3', NULL, 'news'),
('news_num_item_hot', '7', NULL, 'news'),
('news_num_item_index', '3', NULL, 'news'),
('news_num_item_new', '7', NULL, 'news'),
('news_width_thumb', '150', NULL, 'news'),
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
('projects_height_desc', '700', NULL, 'projects'),
('projects_height_thumb', '125', NULL, 'projects'),
('projects_num_item_cat', '5', NULL, 'projects'),
('projects_num_item_hot', '7', NULL, 'projects'),
('projects_num_item_index', '5', NULL, 'projects'),
('projects_num_item_new', '7', NULL, 'projects'),
('projects_width_desc', '520', NULL, 'projects'),
('projects_width_thumb', '165', NULL, 'projects'),
('video_cat_height_thumb', '200', NULL, 'video'),
('video_cat_width_thumb', '200', NULL, 'video'),
('video_height_thumb', '220', NULL, 'video'),
('video_width_thumb', '220', NULL, 'video');

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
('adv_bottom', 'Adv', '', 'listItemsBottom', 'adv'),
('adv_left', 'Adv', '', 'listItemsLeft', 'adv'),
('adv_right', 'Adv', '', 'listItemsRight', 'adv'),
('counter_session', 'CounterSession', 'CounterSession.Counter', 'publishAssets', 'counterSession'),
('lands_new', 'Lands', '', 'listItemsNew', 'lands'),
('lands_search', 'Lands', '', 'searchLands', 'lands'),
('list_support', 'Support', '', 'listItem', 'support'),
('menu_about', 'About', '', 'listItem', 'about'),
('menu_jobs', 'JobsCat', '', 'listItem', 'jobs'),
('menu_lands', 'LandsCat', '', 'listItem', 'lands'),
('menu_news', 'NewsCat', '', 'listItem', 'news'),
('menu_products', 'ProductsCat', '', 'listItem', 'products'),
('menu_projects', 'ProjectsCat', '', 'listItem', 'projects'),
('news_hot', 'News', '', 'listItemsHot', 'news'),
('news_list_first', 'News', '', 'ListFirst', 'news'),
('news_new', 'News', '', 'listItemsNew', 'news'),
('new_poll', 'Poll', '', 'getFirstItem', 'poll'),
('projects_hot', 'Projects', '', 'listItemsHot', 'projects'),
('projects_hot_horizontal', 'Projects', '', 'listItemsHot', 'projects'),
('projects_new', 'Projects', '', 'listItemsNew', 'projects'),
('video_hot', 'Video', '', 'itemHot', 'video');

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
('code', 'Quản lý sản phẩm', 0, 'vi'),
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
('partners', 'Partners', 1, 'en'),
('partners', 'Đối tác tiêu biểu', 0, 'vi'),
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
('video', 'Video', 0, 'vi'),
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
('code', 'Danh sách', 'code', 2, 1, 1),
('contact', 'Danh sách|Cấu hình', 'contact|contact/config', 2, 1, 1),
('counterSession', 'CounterSession', NULL, 4, 0, 0),
('default', 'Default', NULL, 1, 1, 1),
('jobs', 'Danh mục|Danh sách|Cấu hình', 'jobs/cat|jobs|jobs/config', 4, 1, 1),
('lands', 'Danh mục|Danh sách|Cấu hình|Thành viên', 'lands/cat|lands|lands/config|lands/member', 3, 1, 1),
('news', 'Danh mục|Danh sách|Cấu hình', 'news/cat|news|news/config', 4, 1, 1),
('poll', 'Danh sách', 'poll', 7, 1, 1),
('products', 'Danh mục|Danh sách|Cấu hình', 'products/cat|products|products/config', 3, 1, 1),
('projects', 'Danh mục|Danh sách|Cấu hình', 'projects/cat|projects|projects/config', 4, 1, 1),
('support', 'Danh sách', 'support', 6, 1, 0),
('video', 'Danh mục|Danh sách|Cấu hình', 'video/cat|video|video/config', 3, 1, 1);

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
('jobs', 'jobs', 'en'),
('news', 'news', 'en'),
('poll', 'poll', 'en'),
('products', 'products', 'en'),
('projects', 'projects', 'en'),
('du-an', 'projects', 'vi'),
('gioi-thieu', 'about', 'vi'),
('khao-sat-y-kien', 'poll', 'vi'),
('lien-he', 'contact', 'vi'),
('quan-ly-san-pham', 'code', 'vi'),
('san-giao-dich', 'lands', 'vi'),
('san-pham', 'products', 'vi'),
('tin-tuc', 'news', 'vi'),
('trang-chu', 'default', 'vi'),
('tuyen-dung', 'jobs', 'vi');

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
(2, NULL, '2012-11-10 01:53:41', 2, 0, NULL, NULL, 1),
(3, NULL, '2012-11-10 01:54:55', 1, 0, NULL, NULL, 1);

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
(2, 'vi', 'Thông điệp của chủ tịch HĐQT', '<p>Ngay từ khi thành lập, Đất Xanh đã đặt ra phương châm hoạt động: luôn mang đến cho khách hàng những “Sản phẩm tốt nhất – Dịch vụ tốt nhất” , không ngừng sáng tạo, kiên định, nỗ lực trong mọi hoàn cảnh.</p>\r\n<p>Trải qua hàng loạt những biến động của thị trường, Đất Xanh vẫn luôn đứng vững và phát triển, khẳng định vị thế của mình trên thị trường bất động sản Việt Nam, giữ vững niềm tin trong tâm trí khách hàng và các đối tác.</p>\r\n<p>Với chiến lược đa ngành nghề, đa sở hữu và đa quốc gia theo xu thế chung về hội nhập và cạnh tranh toàn cầu, đáp ứng tốt nhất sự thay đổi , vận hành và phát triển nền kinh tế toàn cầu. Với chiến lược này Đất Xanh chủ trương liên doanh, liên kết , hợp tác với các tổ chức Tài Chính, Ngân hàng, Công Nghệ, Nhân Lực ...nhằm tối ưu hóa sức cạnh tranh trên thị trường.</p>\r\n<p>Với đội ngũ lãnh đạo và nhân viên trẻ, năng động, chuyên nghiệp được đào tạo bài bản và không ngừng nâng cấp và thử thách cùng sự tin tưởng của quý đối tác , quý khách hàng và các cổ đông, Chúng tôi tin chắc rằng Đất Xanh có đủ cơ sở để đạt những mục tiêu mà chiến lược đã đề ra .</p>\r\n<p>Đất Xanh dần trở thành một trong những tập đoàn kinh tế hàng đầu Việt Nam và vươn ra thế giới trong một tương lai gần nhất .</p>\r\n<p>Đất Xanh cam kết sẽ tiếp tục mang đến cho Qúy khách hàng những sản phẩm tốt nhất – Dịch vụ tốt nhất, Quý đối tác và Các cổ đông nhiều lợi ích hơn nữa, tiếp tục đồng hành cùng Qúy khách hàng, Quý đối tác và Các cổ đông trong những chặng đường phát triển tiếp theo .</p>\r\n<p>Trân trọng,</p>', 'thong-diep-cua-chu-tich-hdqt', 'Ngay từ khi thành lập, Đất Xanh đã đặt ra phương châm hoạt động: luôn mang đến cho khách hàng những “Sản phẩm tốt nhất – Dịch vụ tốt nhất” , không ngừng sáng tạo, kiên định, nỗ lực trong mọi hoàn cảnh.', 2, NULL, NULL),
(3, 'vi', 'Tầm nhìn, sứ mệnh, giá trị cốt lõi', '<p><strong>1. Tầm Nhìn</strong><br />Trở thành một tập đoàn đa ngành nghề, đa sở hữu và đa quốc gia.</p>\r\n<p><strong>2. Sứ Mệnh</strong><br />Đất Xanh hoạt động nhằm cung cấp sản phẩm chất lượng và dịch vụ thương mại tốt nhất, tạo ra giá trị gia tăng cho khách hàng, lợi ích cho nhà đầu tư, cổ đông. Không ngừng nâng cao mức sống cho nhân viên đem lại giá trị lợi ích cho các cổ đông, đóng góp tích cực cho công đồng, góp phần vào sự phát triển kinh tế xã hội của đất nước</p>\r\n<p><strong>3. Giá Trị Cốt Lõi</strong><br />- Sản phẩm hoàn hảo<br />- Dịch vụ hoàn hảo<br />- Chuyên nghiệp - Sáng tạo - Hiệu quả<br />- Đoàn kết và tạo môi trường làm việc thân thiện</p>\r\n<p><strong>4. Triết Lý Kinh Doanh</strong><br />- Luôn thấu hiểu, tạo niềm tin và gìn giữ uy tín với Khách hàng, đối tác và cổ đông<br />- Liên tục đổi mới nhằm đáp ứng tốt nhất nhu cầu của Khách hàng<br />- Thông tin minh bạch kịp thời, chia sẻ thành công cùng Khách hàng, đối tác và cổ đông</p>', 'tam-nhin-su-menh-gia-tri-cot-loi', 'Tầm nhìn, sứ mệnh, giá trị cốt lõi', 3, NULL, NULL);

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
) ENGINE=InnoDB  DEFAULT CHARSET=utf8 AUTO_INCREMENT=7 ;

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
(58, '2012-08-07 09:42:19', '', NULL, NULL, NULL, 'logo', 0, NULL, 1);

-- --------------------------------------------------------

--
-- Table structure for table `hoiit_module_code`
--

CREATE TABLE IF NOT EXISTS `hoiit_module_code` (
  `record_id` int(11) NOT NULL AUTO_INCREMENT,
  `title` varchar(100) NOT NULL,
  `created` timestamp NOT NULL DEFAULT CURRENT_TIMESTAMP,
  `record_order` int(11) DEFAULT NULL,
  `record_type` varchar(45) NOT NULL DEFAULT '0',
  PRIMARY KEY (`record_id`)
) ENGINE=InnoDB  DEFAULT CHARSET=utf8 AUTO_INCREMENT=8 ;

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
('2tkfze96m', 1352513458),
('um5er8n46', 1352514854);

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
('max_visit_day', 1352415600),
('max_visit_value', 13),
('time_start_today', 1352502000),
('today_visited', 4),
('total_visited', 45),
('yesterday_visited', 13);

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
) ENGINE=InnoDB  DEFAULT CHARSET=utf8 AUTO_INCREMENT=6 ;

--
-- Dumping data for table `hoiit_module_jobs`
--

INSERT INTO `hoiit_module_jobs` (`record_id`, `postdate`, `pic_thumb`, `pic_desc`, `record_order`, `hot`, `specials`, `field1`, `field2`, `field3`, `field4`, `enable`, `hoiit_module_item_cat_cat_id`) VALUES
(5, '2012-11-10 02:17:13', 'chinh-sach-nhan-su.JPG', NULL, 5, 0, NULL, NULL, NULL, NULL, NULL, 1, 5);

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
) ENGINE=InnoDB  DEFAULT CHARSET=utf8 AUTO_INCREMENT=6 ;

--
-- Dumping data for table `hoiit_module_jobs_cat`
--

INSERT INTO `hoiit_module_jobs_cat` (`cat_id`, `cat_parent_id`, `cat_created`, `pic_thumb`, `pic_desc`, `cat_hot`, `cat_order`, `cat_extra1`, `cat_extra2`, `cat_enable`) VALUES
(5, 0, '2012-11-10 02:14:57', '', NULL, 0, 5, NULL, NULL, 1);

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

--
-- Dumping data for table `hoiit_module_jobs_cat_languages`
--

INSERT INTO `hoiit_module_jobs_cat_languages` (`cat_id`, `language_id`, `cat_title`, `preview`, `tag`, `description`) VALUES
(5, 'vi', 'Chính sách tuyển dụng', '', 'chinh-sach-tuyen-dung', '');

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

--
-- Dumping data for table `hoiit_module_jobs_languages`
--

INSERT INTO `hoiit_module_jobs_languages` (`record_id`, `language_id`, `title`, `preview`, `content`, `tag`, `description`, `hit`, `extra_field1`, `extra_field2`) VALUES
(5, 'vi', 'Chính sách nhân sự', '<p>Chính sách nhân sự đất xanh hoàn cầu</p>', '<p>1. Đào tạo và phát triển<br />Đào tạo và phát triển là phương châm của Đất Xanh nhằm tạo ra những nhân tài, những nhà quản lý tài ba.<br />Những ngày đầu đến với Đất Xanh, bạn sẽ được tham gia vào lớp huấn luyện hội nhập cùng những giảng viên là Ban lãnh đạo của Tập đoàn.<br />Bên cạnh đó Tập đoàn còn tổ chức các lớp nâng cao kỹ năng nghề nghiệp được tổ chức theo định kỳ trong và ngoài nước nhằm bổ sung và nâng cao chuyên môn cho nhân viên và đào tạo cán bộ quản lý kế thừa.</p>\r\n<p>2. Môi trường làm việc Trẻ - Năng động</p>\r\n<p>Chúng tôi không ngừng cải thiện môi trường làm việc, điều kiện làm việc để tạo sự thoái mái nhất cho CBNV khi làm việc tại Đất Xanh</p>\r\n<p>Khi bạn đến với Đất Xanh bạn sẽ ngạc nhiên về một đội ngũ trẻ - năng động – nhiệt huyết – tự tin và đặc biệt rất hòa đồng và thân thiện.</p>\r\n<p>3. Tăng lương và khen thưởng:</p>\r\n<p>Tăng lương: Định kỳ xét tăng lương theo định kỳ 6 tháng/lần. Tỷ lệ xét tăng lương dựa trên hiệu quả làm việc của 6 tháng liền kề.<br />Khen thưởng: Thưởng tháng lương thứ 13 luôn luôn đứng đầu so với các Công ty cùng ngành nghề; thưởng theo thành tích công tác hàng tháng và đột xuất theo kết quả làm việc. Ngoài ra, thưởng định kỳ các dịp lễ, tết: Tết dương lịch, Lễ độc lập, Lễ quốc khánh 2/9,…</p>\r\n<p>4. Phúc lợi ngoài lương:</p>\r\n<p><br />1. Đào tạo và phát triển<br />Đào tạo và phát triển là phương châm của Đất Xanh nhằm tạo ra những nhân tài, những nhà quản lý tài ba.<br />Những ngày đầu đến với Đất Xanh, bạn sẽ được tham gia vào lớp huấn luyện hội nhập cùng những giảng viên là Ban lãnh đạo của Tập đoàn.<br />Bên cạnh đó Tập đoàn còn tổ chức các lớp nâng cao kỹ năng nghề nghiệp được tổ chức theo định kỳ trong và ngoài nước nhằm bổ sung và nâng cao chuyên môn cho nhân viên và đào tạo cán bộ quản lý kế thừa.</p>\r\n<p>2. Môi trường làm việc Trẻ - Năng động</p>\r\n<p>Chúng tôi không ngừng cải thiện môi trường làm việc, điều kiện làm việc để tạo sự thoái mái nhất cho CBNV khi làm việc tại Đất Xanh</p>\r\n<p>Khi bạn đến với Đất Xanh bạn sẽ ngạc nhiên về một đội ngũ trẻ - năng động – nhiệt huyết – tự tin và đặc biệt rất hòa đồng và thân thiện.</p>\r\n<p>3. Tăng lương và khen thưởng:</p>\r\n<p>Tăng lương: Định kỳ xét tăng lương theo định kỳ 6 tháng/lần. Tỷ lệ xét tăng lương dựa trên hiệu quả làm việc của 6 tháng liền kề.<br />Khen thưởng: Thưởng tháng lương thứ 13 luôn luôn đứng đầu so với các Công ty cùng ngành nghề; thưởng theo thành tích công tác hàng tháng và đột xuất theo kết quả làm việc. Ngoài ra, thưởng định kỳ các dịp lễ, tết: Tết dương lịch, Lễ độc lập, Lễ quốc khánh 2/9,…</p>\r\n<p>4. Phúc lợi ngoài lương:</p>\r\n<p>Ngoài khoản thu nhập từ tiền lương, chúng tôi còn có các trợ cấp, ưu đãi và tặng quà cho CBNV như sau:<br />Tặng quà Tết nguyên đán; tết trung thu; Nhân viên Nữ vào ngày Quốc tế Phụ Nữ 8/3, 20/10; Ngày Quốc tế thiếu nhi 1/6 (cho con của CBNV: từ 1 tuổi đến 15 tuổi, không giới hạn số con)<br />Ngoài ra, các nhân viên còn được phụ cấp thêm tiền ăn trưa, chi phí gởi xe và tùy theo cấp bậc nhân viên còn có các khoản phụ cấp như: chi phí điện thoại di động, máy điện thoại di động, công tác phí, chi phí đi lại</p>\r\n<p>Nhằm ổn định đời sống, yên tâm công tác và gắn bó lâu dài của CBNV với Tập Đoàn. Mục tiêu của chính sách phúc lợi đảm bảo lợi ích xứng đáng hài hòa tùy theo khả năng đóng góp của CBNV với Tập Đoàn.</p>\r\n<p>Hỗ trợ nhà ở: Mua nhà của Tập Đoàn với giá có thể giảm đến 15% so với giá bán của thị trường. CBNV chỉ phải trả trước 50% giá trị căn nhà theo tiến độ xây dựng, 50% còn lại trả góp trong vòng 5 năm kể từ ngày nhận nhà mà không phải trả lãi suất.</p>\r\n<p>Tặng nhà: Dành cho những CBNV có nhiều thành tích, có sự gắn bó lâu dài với Tập Đoàn.<br />Thưởng cổ phiếu cho CBNV: Dành cho những CBNV có nhiều thành tích, có sự gắn bó lâu dài với Tập Đoàn.<br />Cung cấp các dịch vụ thể thao miễn phí hàng tuần cho CBNV và thường xuyên tổ chức các cuộc tranh tài về thể thao để CBNV giao lưu và rèn luyện sức khỏe.</p>\r\n<p>5. Du lịch:</p>\r\n<p>Chính sách du lịch trong nước và ngoài nước: 1-2 lần/năm, tùy theo từng thời điểm kinh doanh của Tập Đoàn.</p>\r\n<p>6. Chia sẻ trách nhiệm với xã hội</p>\r\n<p>Tinh thần nhân ái với tất cả mọi người trong một cộng đồng xã hội. Điều làm nên phẩm chất của một con người là tấm lòng yêu thương cao thượng. Hãy thể hiện là một con người của một xã hội hiện đại với những hoạt động xã hội nhằm tạo thêm niềm vui cho tất cả mọi người khốn khó quanh ta. Phẩm chất đạo đức quí giá này được Đất Xanh trân trọng và đó cũng là một trong những giá trị mà chúng tôi mong muốn cho từng các thành viên trong Đại gia đình Đất Xanh.</p>', 'chinh-sach-nhan-su', 'Chính sách nhân sự đất xanh hoàn cầu', 0, NULL, NULL);

-- --------------------------------------------------------

--
-- Table structure for table `hoiit_module_lands`
--

CREATE TABLE IF NOT EXISTS `hoiit_module_lands` (
  `record_id` int(11) NOT NULL AUTO_INCREMENT,
  `postdate` timestamp NOT NULL DEFAULT CURRENT_TIMESTAMP,
  `pic_thumb` varchar(100) DEFAULT NULL,
  `pic_full` varchar(100) DEFAULT NULL,
  `pic_desc` varchar(500) DEFAULT NULL,
  `record_order` int(11) DEFAULT NULL,
  `price` int(11) DEFAULT NULL,
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
) ENGINE=InnoDB  DEFAULT CHARSET=utf8 AUTO_INCREMENT=8 ;

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
) ENGINE=InnoDB  DEFAULT CHARSET=utf8 AUTO_INCREMENT=8 ;

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

-- --------------------------------------------------------

--
-- Table structure for table `hoiit_module_lands_languages`
--

CREATE TABLE IF NOT EXISTS `hoiit_module_lands_languages` (
  `record_id` int(11) NOT NULL,
  `language_id` varchar(2) NOT NULL,
  `title` varchar(100) NOT NULL,
  `preview` text NOT NULL,
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
  `user_role` varchar(45) NOT NULL,
  `enable` tinyint(1) NOT NULL DEFAULT '1',
  PRIMARY KEY (`username`),
  KEY `province` (`province`)
) ENGINE=InnoDB DEFAULT CHARSET=utf8;

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
) ENGINE=InnoDB  DEFAULT CHARSET=utf8 AUTO_INCREMENT=43 ;

--
-- Dumping data for table `hoiit_module_menus`
--

INSERT INTO `hoiit_module_menus` (`menu_id`, `parent_id`, `menu_type`, `menu_target`, `menu_sort`, `menu_homepage`, `menu_activated`) VALUES
(35, 0, 1, '', 1, 1, 1),
(36, 0, 1, '', 38, 0, 1),
(37, 0, 1, '', 2, 0, 1),
(38, 0, 1, '', 3, 0, 1),
(39, 0, 1, '', 42, 0, 1),
(40, 0, 1, '', 39, 0, 1),
(41, 0, 1, '', 40, 0, 1),
(42, 0, 1, '', 41, 0, 1);

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
(40, 'vi', 'Sàn giao dịch', 'san-giao-dich', ''),
(41, 'vi', 'Tuyển dụng', 'tuyen-dung', 'Mô tả tuyển dụng'),
(42, 'vi', 'Quản lý sản phẩm', 'quan-ly-san-pham', '');

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
) ENGINE=InnoDB  DEFAULT CHARSET=utf8 AUTO_INCREMENT=5 ;

--
-- Dumping data for table `hoiit_module_news`
--

INSERT INTO `hoiit_module_news` (`record_id`, `postdate`, `pic_thumb`, `pic_desc`, `record_order`, `hot`, `specials`, `field1`, `field2`, `field3`, `field4`, `enable`, `hoiit_module_item_cat_cat_id`) VALUES
(3, '2012-11-10 01:59:46', 'bianfishco-co-tong-giam-doc-moi.jpg', NULL, 3, 0, NULL, NULL, NULL, NULL, NULL, 1, 3),
(4, '2012-11-10 02:13:34', 'hoa-khoi-at-xanh-2012-tu-tin-de-toa-sang.jpg', NULL, 4, 0, NULL, NULL, NULL, NULL, NULL, 1, 4);

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
) ENGINE=InnoDB  DEFAULT CHARSET=utf8 AUTO_INCREMENT=5 ;

--
-- Dumping data for table `hoiit_module_news_cat`
--

INSERT INTO `hoiit_module_news_cat` (`cat_id`, `cat_parent_id`, `cat_created`, `pic_thumb`, `pic_desc`, `cat_hot`, `cat_order`, `cat_extra1`, `cat_extra2`, `cat_enable`) VALUES
(3, 0, '2012-11-10 01:57:08', '', NULL, 0, 4, NULL, NULL, 1),
(4, 0, '2012-11-10 01:57:17', '', NULL, 0, 3, NULL, NULL, 1);

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
(3, 'vi', 'Tin thị trường', '', 'tin-thi-truong', 'Tin thị trường'),
(4, 'vi', 'Tin tiêu điểm', '', 'tin-tieu-diem', 'Tin tiêu điểm');

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
(3, 'vi', 'Bianfishco có tổng giám đốc mới', '<p>(ĐTCK) Ngày 7/11, HĐQT CTCP Thủy sản Bình An (Bianfishco) đã có nghị quyết bổ nhiệm ông Nguyễn Tất Thắng làm Tổng giám đốc Công ty.</p>', '<p><strong>(ĐTCK) Ngày 7/11, HĐQT CTCP Thủy sản Bình An (Bianfishco) đã có nghị quyết bổ nhiệm ông Nguyễn Tất Thắng làm Tổng giám đốc Công ty.</strong></p>\r\n<p style="text-align:center;"><strong><img src="/datxanh/public/userfiles/image/2012110907ba.jpg" alt="" width="620" height="337" /><br /></strong></p>\r\n<p>Sinh năm 1960, ông Nguyễn Tất Thắng có nhiều năm quản lý, điều hành các doanh nghiệp sản xuất quy mô lớn.<br />Ngày 7/11/2012, Bianfishco tiếp tục trả nợ nông dân, nâng tổng số tiền trả nợ chi trả lên hơn 178 tỷ đồng, tương ứng 75% tổng số nợ nông dân. Hoạt động của Bianfishco đang dần hồi sinh, đi vào ổn định. Các hộ nông dân nuôi cá đã tin tưởng và tiếp tục cung cấp nguyên liệu đầu vào cho Bianfishco.</p>\r\n<p>Sau đại hội cổ đông ngày 17/10, một tuần sau ông Trần Văn Trí (áo xanh đậm) từ nhiệm Tổng giám đốc, giao quyền điều hành Công ty Bình An cho bầu Hiển (cầm micro). Hiện Công ty Bình An đã có Tổng giám đốc mới. Ảnh: Vnexpress</p>\r\n<p>Trong tháng 10/2012, lần đầu tiên Bianfishco trực tiếp mua cá tra với số lượng lớn để chế biến đông lạnh xuất khẩu. Hợp đồng ký kết lên đến 700 tấn cá tra nguyên liệu, đáp ứng nguồn nguyên liệu chế biến theo các đơn đặt hàng của đối tác ngoại.</p>\r\n<p>Hiện Nhà máy đang chế biến với công suất 2 container/ngày, phục vụ 70 đơn hàng xuất khẩu đã ký kết với các khách hàng ở thị trường Mỹ, Trung Đông, châu Âu, dự kiến, đến 31/12/2012 sẽ xuất khẩu 300 container vào các thị trường trên.</p>\r\n<p>Bên cạnh thị trường xuất khẩu, Bianfishco chú trọng phát triển thị trường tiêu thụ trong nước. Đây là hướng đi mới nhằm đa dạng hóa thị trường, tăng nguồn thu cho Bianfishco.</p>', 'bianfishco-co-tong-giam-doc-moi', 'Bên cạnh thị trường xuất khẩu, Bianfishco chú trọng phát triển thị trường tiêu thụ trong nước. Đây là hướng đi mới nhằm đa dạng hóa thị trường, tăng nguồn thu cho Bianfishco.', 0, NULL, NULL),
(4, 'vi', 'Hoa khôi Đất Xanh 2012: Tự tin để tỏa sáng', '<p>Vừa qua, Tập đoàn Đất Xanh đã tổ chức vòng sơ tuyển cuộc thi Hoa khôi Đất Xanh 2012 với chủ đề “Tự tin để tỏa sáng”</p>', '<p>Vừa qua, Tập đoàn Đất Xanh đã tổ chức vòng sơ tuyển cuộc thi Hoa khôi Đất Xanh 2012 với chủ đề “Tự tin để tỏa sáng”. Vòng thi sơ tuyển đã quy tụ được hơn 25 thí sinh thuộc các đơn vị thành viên và đông đảo cổ động viên tham gia cổ vũ cho các thí sinh. Tham gia chấm thi vòng sơ tuyển có bà Phạm Thị Minh Hiếu, Giám đốc sàn 27 Đinh Bộ Lĩnh, Ông Thạch Mạnh Sang, Giám đốc Nhân sự Tập đoàn Đất Xanh và Ông Lê Vĩnh Lữ, giám đốc Marketing Tập đoàn Đất Xanh.</p>', 'hoa-khoi-dat-xanh-2012-tu-tin-de-toa-sang', 'Vừa qua, Tập đoàn Đất Xanh đã tổ chức vòng sơ tuyển cuộc thi Hoa khôi Đất Xanh 2012 với chủ đề “Tự tin để tỏa sáng”', 0, NULL, NULL);

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
) ENGINE=InnoDB  DEFAULT CHARSET=utf8 AUTO_INCREMENT=16 ;

--
-- Dumping data for table `hoiit_module_projects`
--

INSERT INTO `hoiit_module_projects` (`record_id`, `postdate`, `pic_thumb`, `pic_desc`, `record_order`, `hot`, `specials`, `field1`, `field2`, `field3`, `field4`, `enable`, `hoiit_module_item_cat_cat_id`) VALUES
(13, '2012-11-10 02:21:15', 'sunview-3-apartment.jpg', NULL, 13, 0, NULL, NULL, '', NULL, NULL, 1, 4),
(14, '2012-11-10 02:27:36', 'gold-hill.jpg', 'gold-hill-desc-1.jpg|gold-hill-desc-2.jpg|gold-hill-desc-3.jpg', 14, 0, NULL, 'gold-hill-slide-1.jpg|gold-hill-slide-2.jpg|gold-hill-slide-3.jpg|gold-hill-slide-4.jpg|gold-hill-slide-5.jpg|gold-hill-slide-6.jpg', 'http://youtu.be/mFcHOQq5gDA', NULL, NULL, 1, 4),
(15, '2012-11-10 02:34:09', 'ph-gia-hng-apartment.jpg', 'ph-gia-hng-apartment--desc-1.jpg|ph-gia-hng-apartment--desc-2.jpg|ph-gia-hng-apartment--desc-3.jpg|ph-gia-hng-apartment--desc-4.jpg|ph-gia-hng-apartment--desc-5.jpg', 15, 0, NULL, 'ph-gia-hng-apartment--slide-1.jpg|ph-gia-hng-apartment--slide-2.jpg|ph-gia-hng-apartment--slide-3.jpg', 'http://youtu.be/ey-7fIRaXQI', NULL, NULL, 1, 4);

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
) ENGINE=InnoDB  DEFAULT CHARSET=utf8 AUTO_INCREMENT=5 ;

--
-- Dumping data for table `hoiit_module_projects_cat`
--

INSERT INTO `hoiit_module_projects_cat` (`cat_id`, `cat_parent_id`, `cat_created`, `pic_thumb`, `pic_desc`, `cat_hot`, `cat_order`, `cat_extra1`, `cat_extra2`, `cat_enable`) VALUES
(4, 0, '2012-11-10 02:18:39', 'du-an-lam-chu-dau-tu.jpg', NULL, 0, 4, NULL, NULL, 1);

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
(4, 'vi', 'Dự án làm chủ đầu tư', '', 'du-an-lam-chu-dau-tu', 'Dự án làm chủ đầu tư');

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
(13, 'vi', 'Sunview 3 Apartment', '<p>Sunview 3 - Khu thương mại tại tầng 1 cung cấp tổ hợp mua sắm cho gia đình bạn. Hơn thế nữa, hồ bơi, nhà trẻ, phòng tập thể thao….cùng hơn 4000m2 khuôn viên đất công viên và giao thông nội khu tạo nên tiện ích hiếm có ở một dự án cao ốc nội thành.</p>', '<p>Diện tích đất: 6400m2<br />Diện tích sàn xây dựng: 43,332 m2<br />Mật độ xây dựng 46,5%<br />Gồm 3 block có 619 căn hộ</p>\r\n<p>Diện tích căn hộ từ: 45 m2 – 81m2Khu thương mại tại tầng 1 cung cấp tổ hợp mua sắm cho gia đình bạn. Hơn thế nữa, nhà trẻ, phòng tập thể thao….cùng hơn 4000m2 khuôn viên đất công viên và giao thông nội khu tạo nên tiện ích hiếm có ở một dự án cao ốc nội thành.</p>\r\n<p>Căn hộ SUNVIEW 3 được thiết kế tầng hầm với 5,423 m2 rộng thoáng đủ sức chứa các loại xe hơi và xe gắn máy của cư dân.<br />Hệ thống quản lý chuyên nghiệp. Thang máy ngoại nhập tốc độ cao. Thiết bị phòng cháy chữa cháy đạt tiêu chuẩn. Hệ thống thông gió và điều hòa không khí được trang bị cho cả tòa nhà. Hệ thống xử lý rác thải khoa học.<br />Hệ thống cáp truyền hình, internet, điện thoại được lắp đặt sẵn tại các căn hộ.<br />An ninh tòa nhà được đảm bảo 24/24 bởi đội ngũ nhân viên chuyên nghiệp và tận tình.</p>\r\n<p>PHONG CÁCH SỐNG:</p>\r\n<p>Lấy cảm hứng từ vầng hào quang rực rỡ và nguồn nặng lượng sống bất diệt của mặt trời, chung cư SUNVIEW 3 có lối thiết kế sang trọng, mang đậm phong cách hiện đại và năng động của đảo quốc Singapore.<br />Các căn hộ đều có tính riêng biệt về không gian nhờsự khéo léo trong bố trí các cửa sổ và ban công.<br />Không gian thông thoáng với chiều cao thoải mái tới 3,3m và khoảng không gian cộng thêm ở cửa sổ để các căn hộ đều được tận dụng tối đa ánh sáng tự nhiên. Thiết bị nội thất trong căn hộ là sản phẩm chất lượng cao và kiểu dáng sang trọng, khiến chủ nhân<br />luôn có cảm giác hài lòng nhất.</p>\r\n<p>THÔNG TIN LIÊN HỆ :</p>\r\n<p>08.35 114 114<br />08.37 113 113<br />08.62 98 98 98<br />08.38 266 366<br />08.62 52 52 52<br />08. 39 80 79 79<br />0933 674 114</p>', '<p>VỊ TRÍ ĐẮC ĐỊA:</p>\r\n<p>Tọa lạc tại trung tâm hành chính Quận Gò Vấp,TP. Hồ Chí Minh. Dự án SUNVIEW 3 nằm trong khu dân cư hiện hữu, hệ thống giao thông thuận lợi và kết nối nhanh chóng đến: Trung tâm văn hóa thể dục thể thao Gò Vấp, siêu thị Big C, trường ĐH Hồng Bàng, ĐH Công nghiệp TP.HCM, công viên Làng Hoa, sân bay Tân Sơn Nhất, trường mẫu giáo, tiểu học, trung học Nguyễn Công Trứ, bệnh viện quốc tế Hồng Đức, Vũ Anh,...</p>\r\n<p style="text-align:center;"><img src="/datxanh/public/userfiles/image/sodo.jpg" alt="" width="508" height="513" /></p>\r\n<p style="text-align:left;"> </p>', 'sunview-3-apartment', 'Sunview 3 - Khu thương mại tại tầng 1 cung cấp tổ hợp mua sắm cho gia đình bạn. Hơn thế nữa, hồ bơi, nhà trẻ, phòng tập thể thao….cùng hơn 4000m2 khuôn viên đất công viên và giao thông nội khu tạo nên tiện ích hiếm có ở một dự án cao ốc nội thành.', 0, NULL, NULL),
(14, 'vi', 'Gold Hill', '<p>Tọa lạc tại trung tâm thị trấn Trảng Bom, Dự án Gold Hill thừa hưởng được các lợi thế từ vùng quy hoạch mang lại. Nằm liền kề sân Gofl Đồng Nai rộng 260ha và Hồ Sông Mây với 360ha mặt nước, điều hòa không khí cho cả khu vực.</p>', '<p style="text-align:center;"><strong>GOLD HILL - Nơi chốn bình yên, bến đổ hạnh phúc</strong></p>\r\n<p>Gold Hill tọa lạc tại đường Ngô Quyền, thị trấn Trảng Bom, tỉnh Đồng Nai. Tổng diện tích dự án là 26,5 ha.<br />Trong đó:<br />Nhà liên kế TM: 23.11%<br />Nhà liên kế vườn: 18.38% (*)<br />Biệt thự song lập : 13.18%<br />Biệt thự đơn lập: 7.44%<br />Công viên cây xanh: 6.75%<br />Các công trình công cộng: 6.25%<br />Đất giao thông nội bộ: 24.89%</p>\r\n<p>(*) Khu nhà liên kế vườn được định vị cao cấp, thiết kế bởi các vật liệu thân thiện môi trường, đầy đủ trang thiết bị hiện đại và bố trí giữa những mảng xanh công viên, thảm cỏ dịu mát.</p>\r\n<p>Dự án Gold Hill có vị trí chiến lược, nằm trong khu đô thị vệ tinh kiểu mẫu, là cửa ngõ phía Đông Tp. Biên Hòa, kết nối giao thông thuận tiện tới Tp.HCM và các tỉnh lân cận.</p>\r\n<p>Trong năm 2012, Tập Đoàn Đất Xanh đã tập trung và kiến tạo Khu Đô thị Gold Hill trở thành tâm điểm của chiến lược phát triển đô thị Trảng Bom lên thị xã trong tương lai của tỉnh Đồng Nai.</p>\r\n<p>Website dự án: WWW.GOLDHILL.VN<br />Hotline: 0938. 11. 06. 06</p>', '<p>Tọa lạc tại trung tâm thị trấn Trảng Bom, Dự án Gold Hill thừa hưởng được các lợi thế từ vùng quy hoạch mang lại.<br />Nằm liền kề sân Gofl Đồng Nai rộng 260ha và Hồ Sông Mây với 360ha mặt nước, điều hòa không khí cho cả khu vực.<br />Gold Hill có vị trí vô cùng thuận tiện về giao thông khi cách quốc lộ 1A 700m, cách Tp. Biên Hòa 8km, cách Tp. HCM 45km.<br />Hơn nữa, Gold Hill nằm trong khu vực và cách dự án trọng điểm như đường cao tốc Tp. Hồ Chí Minh - Long<br />Thành - Dầu Giây – 12km, sân bay quốc tế Long Thành - 13km, đường vành đai 4 khoảng 6km.<br />Xung quanh dự án, đầy đủ các tiện ích hiện hữu như: trường THPT Thống Nhất A là trường điểm của huyện, các trường THPT tư thục như: THPT Trần Đại Nghĩa, THPT Trần Quốc Tuấn, THPT Văn Lang; UBND huyện Trảng<br />Bom; Bệnh viện đa khoa Trảng Bom; Trung tâm TDTT; Khu thương mại dịch vụ; Nhà hàng; Spa; Ngân hàng,…</p>', 'gold-hill', 'Tọa lạc tại trung tâm thị trấn Trảng Bom, Dự án Gold Hill thừa hưởng được các lợi thế từ vùng quy hoạch mang lại. Nằm liền kề sân Gofl Đồng Nai rộng 260ha và Hồ Sông Mây với 360ha mặt nước, điều hòa không khí cho cả khu vực.', 0, NULL, NULL),
(15, 'vi', 'PHÚ GIA HƯNG APARTMENT', '<p>Tọa lạc gần trung tâm Quận Gò Vấp, liền kề với khu dân cư hiện hữu, Phú Gia Hưng Apartment có một vị trí đắc địa, giao thông thuận tiện và đầy đủ các tiện ích xung quanh.</p>', '<p>Tổng Quan Dự Án</p>\r\n<p>- Tổng diện tích dự án: 4.533,1m2<br />- Diện tích đất xây dựng: 1. 414 m2<br />- Mật độ xây dựng: 31%<br />- Các công trình công cộng và cây xanh : 69%<br />- Tổng diện tích sàn xây dựng: 23.562,2 m2<br />- Quy mô: 1 khối nhà cao 14 tầng + 1 tầng lửng + 1 tầng hầm<br />- Tổng số căn hộ: 234 căn hộ<br />- Địa điểm : Phường 15 – Quận Gò Vấp - TP.HCM.<br />- Chủ đầu tư: Công ty Hà Thuận Hùng – Thành viên của Dat Xanh Corporation</p>', '<p>Sơ đồ vị trí dự án</p>\r\n<p>Tọa lạc gần trung tâm Quận Gò Vấp, liền kề với khu dân cư hiện hữu, Phú Gia Hưng Apartment có một vị trí đắc địa, giao thông thuận tiện và đầy đủ các tiện ích xung quanh</p>\r\n<p style="text-align:center;"><img src="/datxanh/public/userfiles/image/VITRI_550.jpg" alt="" width="550" height="390" /></p>\r\n<p>Vị trí chiến lược</p>\r\n<p>- Tọa lạc gần trung tâm Quận Gò Vấp.<br />- Liền kề khu quy hoạch Sài Gòn Coop.<br />- Cách bệnh viện đa khoa Gò Vấp 500m.<br />- Cách trung tâm văn hóa Quận Gò Vấp 1km.<br />- Cách siêu thị Big C, siêu thị Coop Mart và nhà sách Văn Lang khoảng 1km.<br />- Cách nhà thiếu nhi Quận Gò Vấp 1,5km.<br />- Cách trường đại học Hồng Bàng 2km.<br />- Cách bệnh viện đa khoa quốc tế Vũ Anh 2km.<br />- Cách sân bay Tân Sơn Nhất khoảng 3km<br />- Cách trung tâm Quận 1 khoảng 6km.</p>\r\n<p style="text-align:center;"><img src="/datxanh/public/userfiles/image/VITRICHIENLUOC.jpg" alt="" width="550" height="390" /></p>', 'phu-gia-hung-apartment', '', 0, NULL, NULL);

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
(24, 'An', '0929001001', 'datxanhhoancau', 1, 'yahoo'),
(25, 'Nguyễn An', '0929001001', 'grouplaptrinh', 2, 'skype');

-- --------------------------------------------------------

--
-- Table structure for table `hoiit_module_video`
--

CREATE TABLE IF NOT EXISTS `hoiit_module_video` (
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
  KEY `fk_hoiit_module_video_hoiit_module_video_cat1` (`hoiit_module_item_cat_cat_id`)
) ENGINE=InnoDB  DEFAULT CHARSET=utf8 AUTO_INCREMENT=8 ;

-- --------------------------------------------------------

--
-- Table structure for table `hoiit_module_video_cat`
--

CREATE TABLE IF NOT EXISTS `hoiit_module_video_cat` (
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
-- Table structure for table `hoiit_module_video_cat_languages`
--

CREATE TABLE IF NOT EXISTS `hoiit_module_video_cat_languages` (
  `cat_id` int(11) NOT NULL,
  `language_id` varchar(2) NOT NULL,
  `cat_title` varchar(100) NOT NULL,
  `preview` text,
  `tag` varchar(100) NOT NULL,
  `description` varchar(250) DEFAULT NULL,
  PRIMARY KEY (`cat_id`,`language_id`),
  KEY `fk_hoiit_module_video_cat_has_hoiit_languages_hoiit_langua1` (`language_id`),
  KEY `fk_hoiit_module_video_cat_has_hoiit_languages_hoiit_module1` (`cat_id`)
) ENGINE=InnoDB DEFAULT CHARSET=utf8;

-- --------------------------------------------------------

--
-- Table structure for table `hoiit_module_video_languages`
--

CREATE TABLE IF NOT EXISTS `hoiit_module_video_languages` (
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
  KEY `fk_hoiit_module_video_has_hoiit_languages_hoiit_languages1` (`language_id`),
  KEY `fk_hoiit_module_video_has_hoiit_languages_hoiit_module_pro1` (`record_id`)
) ENGINE=InnoDB DEFAULT CHARSET=utf8;

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
('left', 1, '1', 'products', NULL, NULL, 'list_support'),
('left', 2, '1', 'products', NULL, NULL, 'adv_left'),
('right', 3, '1', 'products', NULL, NULL, 'adv_right'),
('footer', 1, '1', 'projects', NULL, NULL, 'counter_session'),
('left', 2, '1', 'projects', NULL, NULL, 'menu_projects'),
('left', 3, '1', 'projects', NULL, NULL, 'adv_left'),
('footer', 1, '1', 'contact', NULL, NULL, 'counter_session'),
('left', 2, '1', 'contact', NULL, NULL, 'menu_projects'),
('left', 3, '1', 'contact', NULL, NULL, 'list_support'),
('left', 1, '1', 'news', '', '', 'menu_news'),
('left', 2, '1', 'news', '', '', 'adv_left'),
('left', 1, '1', 'jobs', '', '', 'menu_jobs'),
('footer', 1, '1', 'code', '', '', 'counter_session'),
('left', 2, '1', 'code', '', '', 'projects_hot'),
('right', 1, '1', 'default', '', '', 'lands_new'),
('bottom', 2, '1', 'default', '', '', 'adv_bottom'),
('center', 3, '1', 'default', '', '', 'projects_new'),
('footer', 4, '1', 'default', '', '', 'counter_session'),
('left', 5, '1', 'default', '', '', 'lands_search'),
('left', 6, '1', 'default', '', '', 'adv_left'),
('right', 7, '1', 'default', '', '', 'news_new'),
('center', 1, '1', 'lands', '', '', 'projects_hot_horizontal'),
('left', 2, '1', 'lands', '', '', 'menu_lands'),
('left', 3, '1', 'lands', '', '', 'lands_search'),
('right', 4, '1', 'lands', 'index', 'default', 'adv_right'),
('left', 1, '1', 'about', '', '', 'menu_about'),
('left', 2, '1', 'about', '', '', 'adv_left');

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
('<jobs:(tuyen-dung)>', 'jobs/default/index', '', 4, 1, 'jobs', 'vi'),
('<jobs:(tuyen-dung)>/<cid:[-a-z0-9]+>', 'jobs/default/cats', '', 3, 0, 'jobs', 'vi'),
('<jobs:(tuyen-dung)>/<cid:[-a-z0-9]+>/<id:[-a-z0-9]+>', 'jobs/default/view', 'urlSuffix=>.html', 0, 0, 'jobs', 'vi'),
('<jobs:(tuyen-dung)>/<cid:[-a-z0-9]+>/trang/<page:\\d+>', 'jobs/default/cats', '', 2, 0, 'jobs', 'vi'),
('<jobs:(tuyen-dung)>/trang/<page:\\d+>', 'jobs/default/index', '', 1, 0, 'jobs', 'vi'),
('<lands:(san-giao-dich)>', 'lands/default/index', '', 4, 1, 'lands', 'vi'),
('<lands:(san-giao-dich)>/<cid:[-a-z0-9]+>', 'lands/default/cats', '', 3, 0, 'lands', 'vi'),
('<lands:(san-giao-dich)>/<cid:[-a-z0-9]+>/<id:[-a-z0-9]+>', 'lands/default/view', 'urlSuffix=>.html', 5, 0, 'lands', 'vi'),
('<lands:(san-giao-dich)>/<cid:[-a-z0-9]+>/trang/<page:\\d+>', 'lands/default/cats', '', 2, 0, 'lands', 'vi'),
('<lands:(san-giao-dich)>/dang-ky', 'lands/default/register', '', 1, 0, 'lands', 'vi'),
('<lands:(san-giao-dich)>/dang-ky-thanh-cong', 'lands/default/success', '', 1, 0, 'lands', 'vi'),
('<lands:(san-giao-dich)>/dang-nhap', 'lands/default/login', '', 1, 0, 'lands', 'vi'),
('<lands:(san-giao-dich)>/dang-tin', 'lands/default/add', '', 1, 0, 'lands', 'vi'),
('<lands:(san-giao-dich)>/danh-sach-tin-dang', 'lands/default/listpost', '', 1, 0, 'lands', 'vi'),
('<lands:(san-giao-dich)>/thoat', 'lands/default/logout', '', 1, 0, 'lands', 'vi'),
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
('quan-ly-san-pham', 'code/default/index', '', 0, 0, 'code', 'vi'),
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
('datxanhhoancau', 'datxanhhoancau@gmail.com', '14e1b600b1fd579f47433b88e8d85291', NULL, 'datxanhhoancau', '2012-07-03 15:49:55', '2012-07-03 15:49:55', NULL, 1, 'administrator');

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
-- Constraints for table `hoiit_module_video`
--
ALTER TABLE `hoiit_module_video`
  ADD CONSTRAINT `fk_hoiit_module_video_hoiit_module_video_cat1` FOREIGN KEY (`hoiit_module_item_cat_cat_id`) REFERENCES `hoiit_module_video_cat` (`cat_id`) ON DELETE NO ACTION ON UPDATE NO ACTION;

--
-- Constraints for table `hoiit_module_video_cat_languages`
--
ALTER TABLE `hoiit_module_video_cat_languages`
  ADD CONSTRAINT `fk_hoiit_module_video_cat_has_hoiit_languages_hoiit_langua1` FOREIGN KEY (`language_id`) REFERENCES `hoiit_languages` (`language_id`) ON DELETE NO ACTION ON UPDATE NO ACTION,
  ADD CONSTRAINT `fk_hoiit_module_video_cat_has_hoiit_languages_hoiit_module1` FOREIGN KEY (`cat_id`) REFERENCES `hoiit_module_video_cat` (`cat_id`) ON DELETE NO ACTION ON UPDATE NO ACTION;

--
-- Constraints for table `hoiit_module_video_languages`
--
ALTER TABLE `hoiit_module_video_languages`
  ADD CONSTRAINT `fk_hoiit_module_video_has_hoiit_languages_hoiit_languages1` FOREIGN KEY (`language_id`) REFERENCES `hoiit_languages` (`language_id`) ON DELETE NO ACTION ON UPDATE NO ACTION,
  ADD CONSTRAINT `fk_hoiit_module_video_has_hoiit_languages_hoiit_module_pro1` FOREIGN KEY (`record_id`) REFERENCES `hoiit_module_video` (`record_id`) ON DELETE NO ACTION ON UPDATE NO ACTION;

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
