-- phpMyAdmin SQL Dump
-- version 3.5.2.2
-- http://www.phpmyadmin.net
--
-- Host: 127.0.0.1
-- Generation Time: Dec 06, 2012 at 10:40 AM
-- Server version: 5.5.27
-- PHP Version: 5.4.7

SET SQL_MODE="NO_AUTO_VALUE_ON_ZERO";
SET time_zone = "+00:00";


/*!40101 SET @OLD_CHARACTER_SET_CLIENT=@@CHARACTER_SET_CLIENT */;
/*!40101 SET @OLD_CHARACTER_SET_RESULTS=@@CHARACTER_SET_RESULTS */;
/*!40101 SET @OLD_COLLATION_CONNECTION=@@COLLATION_CONNECTION */;
/*!40101 SET NAMES utf8 */;

--
-- Database: `sotaichinh`
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
('adv_left_width', '195', NULL, 'adv'),
('adv_right_height', '500', NULL, 'adv'),
('adv_right_width', '230', NULL, 'adv'),
('adv_top_height', '222', NULL, 'adv'),
('adv_top_width', '222', NULL, 'adv'),
('banner_height', '265', NULL, 'banner'),
('banner_height_default', '265', NULL, 'banner'),
('banner_width', '480', NULL, 'banner'),
('banner_width_default', '480', NULL, 'banner'),
('contact_email_received', 'datxanhhoancau@gmail.com', NULL, 'contact'),
('contact_host', 'smtp.gmail.com', NULL, 'contact'),
('contact_password', 'assas', NULL, 'contact'),
('contact_port', '465', NULL, 'contact'),
('contact_send_mail_smtp', '1', NULL, 'contact'),
('contact_username', 'datxanhhoancau', NULL, 'contact'),
('document_cat_height_thumb', '100', NULL, 'document'),
('document_cat_width_thumb', '150', NULL, 'document'),
('document_height_thumb', '100', NULL, 'document'),
('document_num_item_cat', '5', NULL, 'document'),
('document_num_item_hot', '7', NULL, 'document'),
('document_num_item_index', '3', NULL, 'document'),
('document_num_item_new', '7', NULL, 'document'),
('document_width_thumb', '150', NULL, 'document'),
('jobs_cat_height_thumb', '200', NULL, 'jobs'),
('jobs_cat_width_thumb', '200', NULL, 'jobs'),
('jobs_height_thumb', '200', NULL, 'jobs'),
('jobs_num_item_cat', '3', NULL, 'jobs'),
('jobs_num_item_hot', '7', '', 'jobs'),
('jobs_num_item_index', '3', NULL, 'jobs'),
('jobs_num_item_new', '7', NULL, 'jobs'),
('jobs_width_thumb', '200', NULL, 'jobs'),
('logo_height', '114', NULL, 'banner'),
('logo_width', '403', NULL, 'banner'),
('news_cat_height_thumb', '100', NULL, 'news'),
('news_cat_width_thumb', '150', NULL, 'news'),
('news_height_thumb', '100', NULL, 'news'),
('news_num_item_cat', '5', NULL, 'news'),
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
('projects_height_thumb', '193', NULL, 'projects'),
('projects_num_item_cat', '5', NULL, 'projects'),
('projects_num_item_hot', '7', NULL, 'projects'),
('projects_num_item_index', '5', NULL, 'projects'),
('projects_num_item_new', '18', NULL, 'projects'),
('projects_width_desc', '520', NULL, 'projects'),
('projects_width_thumb', '300', NULL, 'projects'),
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
('document_hot', 'Document', '', 'listItemsHot', 'document'),
('document_list_first', 'Document', '', 'ListFirst', 'document'),
('document_new', 'Document', '', 'listItemsNew', 'document'),
('list_support', 'Support', '', 'listItem', 'support'),
('menu_about', 'About', '', 'listItem', 'about'),
('menu_document', 'DocumentCat', '', 'listItem', 'document'),
('menu_document_index', 'DocumentsCat', '', 'listItem', 'document'),
('menu_jobs', 'JobsCat', '', 'listItem', 'jobs'),
('menu_news', 'NewsCat', '', 'listItem', 'news'),
('menu_new_index', 'NewsCat', '', 'listItem', 'news'),
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
('contact', 'Contact', 0, 'en'),
('contact', 'Liên hệ', 0, 'vi'),
('counterSession', 'Thống kê truy cập', 0, 'vi'),
('create_date', 'Created date', 1, 'en'),
('create_date', 'Ngày tạo', 1, 'vi'),
('default', 'Home page', 0, 'en'),
('default', 'Trang chủ', 0, 'vi'),
('delete', 'Delete', 1, 'en'),
('delete', 'Xóa', 1, 'vi'),
('document', 'Tài liệu chuyên ngành', 0, 'vi'),
('edit', 'Edit', 0, 'en'),
('edit', 'Chỉnh sửa', 0, 'vi'),
('hidden', 'Hidden', 1, 'en'),
('hidden', 'Ẩn', 1, 'vi'),
('hot', 'nổi bật', 0, 'vi'),
('jobs', 'Văn bản mới ban hành', 0, 'vi'),
('new', 'mới nhất', 0, 'vi'),
('news', 'News', 0, 'en'),
('news', 'Tin tức & sự kiện', 0, 'vi'),
('no_record', 'Không tồn tại mẫu tin', 0, 'vi'),
('order', 'Order', 1, 'en'),
('order', 'Thứ tự', 1, 'vi'),
('other', 'khác', 0, 'vi'),
('partners', 'Partners', 1, 'en'),
('partners', 'Đối tác', 0, 'vi'),
('poll', 'Bình chọn', 0, 'en'),
('poll', 'Bình chọn', 0, 'vi'),
('products', 'Products', 0, 'en'),
('products', 'Sản phẩm', 0, 'vi'),
('projects', 'Projects', 0, 'en'),
('projects', 'Thành tự và định hướng', 0, 'vi'),
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
('contact', 'Danh sách|Cấu hình', 'contact|contact/config', 2, 1, 1),
('counterSession', 'CounterSession', NULL, 4, 0, 0),
('default', 'Default', NULL, 1, 1, 1),
('document', 'Danh mục|Danh sách|Cấu hình', 'document/cat|document|document/config', 4, 1, 1),
('jobs', 'Danh mục|Danh sách|Cấu hình', 'jobs/cat|jobs|jobs/config', 4, 1, 1),
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
('home-page', 'default', 'en'),
('jobs', 'jobs', 'en'),
('news', 'news', 'en'),
('poll', 'poll', 'en'),
('products', 'products', 'en'),
('projects', 'projects', 'en'),
('gioi-thieu', 'about', 'vi'),
('khao-sat-y-kien', 'poll', 'vi'),
('lien-he', 'contact', 'vi'),
('san-pham', 'products', 'vi'),
('tai-lieu-chuyen-nganh', 'document', 'vi'),
('thanh-tuu-dinh-huong', 'projects', 'vi'),
('tin-tuc', 'news', 'vi'),
('trang-chu', 'default', 'vi'),
('van-ban-moi-ban-hanh', 'jobs', 'vi');

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
) ENGINE=InnoDB  DEFAULT CHARSET=utf8 AUTO_INCREMENT=5 ;

--
-- Dumping data for table `hoiit_module_about`
--

INSERT INTO `hoiit_module_about` (`record_id`, `pic_thumb`, `created`, `record_order`, `hot`, `field1`, `field2`, `enable`) VALUES
(2, NULL, '2012-11-10 01:53:41', 11, 0, NULL, NULL, 1),
(3, NULL, '2012-11-10 01:54:55', 12, 1, NULL, NULL, 1),
(4, NULL, '2012-11-10 06:58:16', 10, 0, NULL, NULL, 1);

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
(2, 'vi', 'Thông điệp của chủ tịch HĐQT', '<p style="text-align:justify;"><br />Ngay từ khi thành lập, Đất Xanh đã đặt ra phương châm hoạt động: luôn mang đến cho khách hàng những “Sản phẩm tốt nhất – Dịch vụ tốt nhất” , không ngừng sáng tạo, kiên định, nỗ lực trong mọi hoàn cảnh.</p>\r\n<p style="text-align:justify;">Trải qua hàng loạt những biến động của thị trường, Đất Xanh vẫn luôn đứng vững và phát triển, khẳng định vị thế của mình trên thị trường bất động sản Việt Nam, giữ vững niềm tin trong tâm trí khách hàng và các đối tác.</p>\r\n<p style="text-align:justify;">Với chiến lược đa ngành nghề, đa sở hữu và đa quốc gia theo xu thế chung về hội nhập và cạnh tranh toàn cầu, đáp ứng tốt nhất sự thay đổi , vận hành và phát triển nền kinh tế toàn cầu. Với chiến lược này Đất Xanh chủ trương liên doanh, liên kết , hợp tác với các tổ chức Tài Chính, Ngân hàng, Công Nghệ, Nhân Lực ...nhằm tối ưu hóa sức cạnh tranh trên thị trường.</p>\r\n<p style="text-align:justify;">Với đội ngũ lãnh đạo và nhân viên trẻ, năng động, chuyên nghiệp được đào tạo bài bản và không ngừng nâng cấp và thử thách cùng sự tin tưởng của quý đối tác , quý khách hàng và các cổ đông, Chúng tôi tin chắc rằng Đất Xanh có đủ cơ sở để đạt những mục tiêu mà chiến lược đã đề ra .</p>\r\n<p style="text-align:justify;">Đất Xanh dần trở thành một trong những tập đoàn kinh tế hàng đầu Việt Nam và vươn ra thế giới trong một tương lai gần nhất .</p>\r\n<p style="text-align:justify;">Đất Xanh cam kết sẽ tiếp tục mang đến cho Qúy khách hàng những sản phẩm tốt nhất – Dịch vụ tốt nhất, Quý đối tác và Các cổ đông nhiều lợi ích hơn nữa, tiếp tục đồng hành cùng Qúy khách hàng, Quý đối tác và Các cổ đông trong những chặng đường phát triển tiếp theo .</p>\r\n<p style="text-align:justify;">Trân trọng,</p>\r\n<p style="text-align:right;"> <strong>Chủ Tịch Hội Đồng Quản Trị</strong></p>\r\n<p style="text-align:right;"><strong>LƯƠNG TRÍ THÌN</strong></p>', 'thong-diep-cua-chu-tich-hdqt', 'Ngay từ khi thành lập, Đất Xanh đã đặt ra phương châm hoạt động: luôn mang đến cho khách hàng những “Sản phẩm tốt nhất – Dịch vụ tốt nhất” , không ngừng sáng tạo, kiên định, nỗ lực trong mọi hoàn cảnh.', 273, NULL, NULL),
(3, 'vi', 'Công ty cổ phần Đất Xanh Hoàn Cầu', '<p><strong>                                   CÔNG TY CỔ PHẦN ĐẦU TƯ VÀ PHÁT TRIỂN ĐẤT XANH HOÀN CẦU</strong></p>\r\n<p><span style="font-size:12pt;"><strong>C</strong></span>ông ty cổ phần đầu tư và phát triển Đất Xanh Hoàn Cầu thành lập 15/01/2010, nhằm mục tiêu kế thừa và phát triển những thành tựu mà Tổng công ty Đất Xanh đã đạt được trong suốt thời gian qua, luôn lấy lợi ích khách hàng làm mục tiêu phấn đấu và phát triển.</p>\r\n<p><img src="/sotaichinh/public/userfiles/image/109.JPG" alt="" width="640" height="480" /></p>', 'cong-ty-co-phan-dat-xanh-hoan-cau', 'Tầm nhìn, sứ mệnh, giá trị cốt lõi', 97, NULL, NULL),
(4, 'vi', 'Lịch sử hình thành và phát triển', '<p style="text-align:justify;"><strong>Năm 2003:</strong></p>\n<p style="text-align:justify;">- Thành lập công ty TNHH Dịch Vụ và Xây dựng Địa ốc Đất Xanh với vốn điều lệ ban đầu là 0,8 tỷ đồng và 10 nhân viên.<br />- Thời gian này, Đất Xanh chuyên về hoạt động môi giới các dự án Bất động sản.</p>\n<p style="text-align:justify;"><strong>Năm 2004 :</strong></p>\n<p style="text-align:justify;">- Thành lập chi nhánh Đất Xanh đầu tiên tại Quận 7</p>\n<p style="text-align:justify;"><strong>Năm 2005:</strong></p>\n<p style="text-align:justify;">- Thành lập chi nhánh Đất Xanh tại Quận Thủ Đức<br />- Phát triển mô hình siêu thị căn hộ chung cư đầu tiên tại Việt Nam.</p>\n<p style="text-align:justify;"><strong>Năm 2006:</strong></p>\n<p style="text-align:justify;">- Thành lập chi nhánh Đất Xanh tại Mỹ Phước - Bình Dương.<br />- Hình thành phương thức bán hàng mới (phương thức bán hàng tập trung), tiên phong trong vấn đề minh bạch hóa thông tin sản phẩm Bất động sản. Các dự án do Đất Xanh phân phối gây được tiếng vang lớn trên thị trường. Đất Xanh dần chiếm lĩnh toàn bộ thị trường Bất động sản Bình Dương.</p>\n<p style="text-align:justify;"><strong>Năm 2007:</strong></p>\n<p style="text-align:justify;">- Thành lập Công ty Cổ phần Đầu tư Đất Xanh<br />- Đất Xanh Chuyển đổi thành công ty cổ phần, tiếp tục thành lập chi nhánh Đất Xanh tại Trung Tâm Bình Dương (TX Thủ Dầu Một) .<br />- Bằng kinh nghiệm vững chắc về phân phối, quản lý, phát triển dự án Bất động sản, đội ngũ nhân sự chuyên nghiệp – tài năng cùng với sự gia tăng tiềm lực về tài chính...Đất Xanh chính thức mở rộng hoạt động sang lĩnh vực đầu tư. Hàng loạt dự án qui mô lớn có diện tích hàng trăm ha với số vốn đầu tư lên đến hàng ngàn tỷ đồng do Đất Xanh làm chủ và hợp tác đầu tư như: Khu đô thị Dịch vụ - Du lịch – Sinh thái Giang Điền, Khu đô thị Thung Lũng Xanh, The Morning Star Plaza, Phú Gia Hưng Apartment, Sunview Apartmentđược khách hàng đón nhận nồng nhiệt bởi uy tín và chất lượng của sản phẩm. Hoạt động đầu tư đóng vai trò chủ lực trong chiến lược kinh doanh của Đất Xanh.</p>\n<p style="text-align:justify;"><strong>Năm 2008:</strong></p>\n<p style="text-align:justify;">- Thành lập Chi Nhánh Đất Xanh tại Đồng Nai.<br />- Phát triển thị trường BDS tại Đồng Nai và BRVT</p>\n<p style="text-align:justify;"><strong>Năm 2009:</strong></p>\n<p style="text-align:justify;">- Mua lại công Ty TNHH Hà Thuận Hùng<br />- Thành lập Công Ty Cổ Phần Đất Xanh Tây Bắc<br />- Chuyển đổi các chi nhánh lên công ty cổ phần.<br />- Ngày 22/12/2009 cổ phiếu của công ty Cổ phần Dịch vụ và Xây dựng Địa ốc Đất Xanh với mã số DXG chính thức niêm yết trên sàn giao dịch chứng khoán TP.HCM đưa công ty Đất Xanh trở thành công ty đại chúng.<br />- Tái cấu trúc mô hình Tổng công ty</p>\n<p style="text-align:justify;"><strong>Năm 2010 :</strong></p>\n<p style="text-align:justify;">- Thành lập công ty cổ phần Đất Xanh miền Bắc<br />- Thành lập công ty cổ phần BDS Long Điền<br />- Đất Xanh trở thành công ty Bất động sản có hệ thống phân phối mạnh nhất Việt Nam với gần 20 chi nhánh, công ty thành viên, công ty liên kết, công ty liên doanh, hoạt động tại tất cả các khu vực giao dịch địa ốc sôi động.<br />- Tiến hành triển khai một chương trình toàn diện về Phát triển nguồn nhân lực, cơ sở vật chất, tài chính....Mọi hoạt động của công ty đều được tin học hóa bằng các phần mềm hiện đại cho phép nhà quản lý tối ưu hoá quy trình hoạt động doanh nghiệp theo tiêu chuẩn quốc tế, tạo điều kiện thuận lợi trong giao dịch sản phẩm, tiết kiệm thời gian và chi phí cho khách hàng...<br />- Đất Xanh khởi công xây dựng Khu đô thị Thương Mai- Dịch Vụ- Du Lịch Suối Son với quy mô 117 ha tại Đồng Nai ...<br />- Mở rộng hoạt động kinh doanh sang các lĩnh vực : Xây dựng, Đầu tư tài chính, sản xuất vật liệu xây dựng..</p>\n<p style="text-align:justify;"><strong>Năm 2011:</strong></p>\n<p style="text-align:justify;">- Tái cơ cấu Đất Xanh lên mô hình tập đoàn Đất Xanh (DXG)<br />- Thành lập Công ty cổ phần Đất Xanh miền Trung<br />- Thành lập Tổng công ty Đất Xanh Đầu tư (DXI)<br />- Thành lập Tổng công ty Đất Xanh Dịch vụ (DXS)<br />- Thành lập Tổng công ty Đất Xanh Xây dựng (DXC)<br />- Tiếp tục phát huy thế mạnh trong lĩnh vực đầu tư Bất động sản, triển khai đầu tư hàng loạt các dự án ở những vị trí chiến lược trên toàn quốc (Arisen, Bình Dương Riverside, Khu đô thị Paradise, Biên Hòa Tower ...), mở rộng phạm vi địa bàn, hình thức đầu tư, liên kết với các đối tác, cung cấp những sản phẩm Bất động sản đa dạng có chất lượng cao, cùng những tiện ích hiện đại...nhằm đáp ứng kịp thời nhu cầu an cư và đầu tư của khách hàng.<br />- Phát triển thị trường BDS Australia.</p>\n<p style="text-align:justify;"><em> </em></p>\n<p style="text-align:justify;"><em>Trải qua 8 năm hình thành và phát triển, đến nay tổng số vốn kinh doanh của Đất Xanh đã đạt hơn 3.000 tỉ đồng với trên 1.500 nhân viên và hơn 20 công ty thành viên, liên kết...</em><br /><em>Bằng sự nỗ lực không ngừng, Đất Xanh không dừng lại ở những thành công đã đạt được mà tiếp tục tiến về phía trước, chinh phục những đỉnh cao mới.</em></p>', 'lich-su-hinh-thanh-va-phat-trien', 'Lịch sử hình thành và phát triển\nBằng sự nỗ lực không ngừng, Đất Xanh không dừng lại ở những thành công đã đạt được mà tiếp tục tiến về phía trước, chinh phục những đỉnh cao mới.', 31, NULL, NULL);

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
) ENGINE=InnoDB DEFAULT CHARSET=utf8 AUTO_INCREMENT=1 ;

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
) ENGINE=InnoDB  DEFAULT CHARSET=utf8 AUTO_INCREMENT=81 ;

--
-- Dumping data for table `hoiit_module_banners`
--

INSERT INTO `hoiit_module_banners` (`banner_id`, `banner_date`, `banner_name`, `banner_picture`, `banner_link`, `banner_order`, `banner_type`, `banner_click`, `module_id`, `enable`) VALUES
(58, '2012-08-07 09:42:19', '', NULL, NULL, NULL, 'logo', 0, NULL, 1),
(73, '2012-11-10 08:13:04', 'home-4', 'home-4.png', '', 11, 'banner', 0, 'default', 1),
(77, '2012-11-10 08:16:09', 'home-8', 'home-8.png', '', 10, 'banner', 0, 'default', 1),
(80, '2012-11-26 09:06:59', 'Căn hộ 4s riverside linh đông', 'can-ho-4s-riverside-linh-dong.jpg', 'http://datxanhhoancau.com.vn/du-an/du-an-can-ho/can-ho-4s-riverside-linh-dong.html', 12, 'banner', 0, 'default', 1);

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
('fm70wplt3', 1354786825);

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
('max_visit_day', 1354579200),
('max_visit_value', 167),
('time_start_today', 1354748400),
('today_visited', 2),
('total_visited', 1349),
('yesterday_visited', 48);

-- --------------------------------------------------------

--
-- Table structure for table `hoiit_module_document`
--

CREATE TABLE IF NOT EXISTS `hoiit_module_document` (
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
  KEY `fk_hoiit_module_document_hoiit_module_document_cat_1` (`hoiit_module_item_cat_cat_id`)
) ENGINE=InnoDB  DEFAULT CHARSET=utf8 AUTO_INCREMENT=23 ;

--
-- Dumping data for table `hoiit_module_document`
--

INSERT INTO `hoiit_module_document` (`record_id`, `postdate`, `pic_thumb`, `pic_desc`, `record_order`, `hot`, `specials`, `field1`, `field2`, `field3`, `field4`, `enable`, `hoiit_module_item_cat_cat_id`) VALUES
(22, '2012-12-06 09:36:16', 'hoc-test.jpg', NULL, 22, 0, NULL, NULL, NULL, NULL, NULL, 1, 7);

-- --------------------------------------------------------

--
-- Table structure for table `hoiit_module_document_cat`
--

CREATE TABLE IF NOT EXISTS `hoiit_module_document_cat` (
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
-- Dumping data for table `hoiit_module_document_cat`
--

INSERT INTO `hoiit_module_document_cat` (`cat_id`, `cat_parent_id`, `cat_created`, `pic_thumb`, `pic_desc`, `cat_hot`, `cat_order`, `cat_extra1`, `cat_extra2`, `cat_enable`) VALUES
(7, 0, '2012-12-06 09:35:48', 'tai-lieu-hoc.JPG', NULL, 0, 7, NULL, NULL, 1);

-- --------------------------------------------------------

--
-- Table structure for table `hoiit_module_document_cat_languages`
--

CREATE TABLE IF NOT EXISTS `hoiit_module_document_cat_languages` (
  `cat_id` int(11) NOT NULL,
  `language_id` varchar(2) NOT NULL,
  `cat_title` varchar(100) NOT NULL,
  `preview` text,
  `tag` varchar(100) NOT NULL,
  `description` varchar(250) DEFAULT NULL,
  PRIMARY KEY (`cat_id`,`language_id`),
  KEY `fk_hoiit_module_docu_cat_has_hoiit_languages_hoiit_languages1` (`language_id`),
  KEY `fk_hoiit_module_docu_cat_has_hoiit_languages_hoiit_module_ne1` (`cat_id`)
) ENGINE=InnoDB DEFAULT CHARSET=utf8;

--
-- Dumping data for table `hoiit_module_document_cat_languages`
--

INSERT INTO `hoiit_module_document_cat_languages` (`cat_id`, `language_id`, `cat_title`, `preview`, `tag`, `description`) VALUES
(7, 'vi', 'Tài liệu học', '', 'tai-lieu-hoc', 'menu_document');

-- --------------------------------------------------------

--
-- Table structure for table `hoiit_module_document_languages`
--

CREATE TABLE IF NOT EXISTS `hoiit_module_document_languages` (
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
  KEY `fk_hoiit_module_docu_has_hoiit_languages_hoiit_languages1` (`language_id`),
  KEY `fk_hoiit_module_docu_has_hoiit_languages_hoiit_module_docu1` (`record_id`)
) ENGINE=InnoDB DEFAULT CHARSET=utf8;

--
-- Dumping data for table `hoiit_module_document_languages`
--

INSERT INTO `hoiit_module_document_languages` (`record_id`, `language_id`, `title`, `preview`, `content`, `tag`, `description`, `hit`, `extra_field1`, `extra_field2`) VALUES
(22, 'vi', 'Học test', '<p>Học test</p>', '<p>Học test</p>', 'hoc-test', 'Học test', 0, NULL, NULL);

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
) ENGINE=InnoDB DEFAULT CHARSET=utf8 AUTO_INCREMENT=1 ;

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
) ENGINE=InnoDB  DEFAULT CHARSET=utf8 AUTO_INCREMENT=2 ;

--
-- Dumping data for table `hoiit_module_jobs_cat`
--

INSERT INTO `hoiit_module_jobs_cat` (`cat_id`, `cat_parent_id`, `cat_created`, `pic_thumb`, `pic_desc`, `cat_hot`, `cat_order`, `cat_extra1`, `cat_extra2`, `cat_enable`) VALUES
(1, 0, '2012-12-06 07:00:07', '', NULL, 0, 1, NULL, NULL, 1);

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
(1, 'vi', 'Văn bản mới ban hành', '', 'van-ban-moi-ban-hanh', '');

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
) ENGINE=InnoDB  DEFAULT CHARSET=utf8 AUTO_INCREMENT=49 ;

--
-- Dumping data for table `hoiit_module_menus`
--

INSERT INTO `hoiit_module_menus` (`menu_id`, `parent_id`, `menu_type`, `menu_target`, `menu_sort`, `menu_homepage`, `menu_activated`) VALUES
(35, 0, 1, '', 1, 1, 1),
(36, 0, 1, '', 38, 0, 1),
(37, 0, 1, '', 3, 0, 1),
(38, 0, 1, '', 2, 0, 1),
(41, 0, 1, '', 40, 0, 1),
(42, 42, 1, '', 41, 0, 1),
(45, 0, 1, '', 47, 0, 1),
(48, 0, 1, '', 48, 0, 1);

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
(35, 'vi', 'Trang chủ', 'trang-chu', 'Kinh doanh bất động sản, Tư vấn - môi giới bất động sản, tư vấn đầu tư, xây dựng, trang trí nội thất, lập dự án đầu tư, chuẩn bị mặt bằng'),
(36, 'vi', 'Thành tựu và định hướng', 'thanh-tuu-dinh-huong', 'Mo ta dự án'),
(37, 'vi', 'Tin tức', 'tin-tuc', 'Tin tức'),
(38, 'vi', 'Giới thiệu', 'gioi-thieu', ''),
(41, 'vi', 'Văn bản mới ban hành', 'van-ban-moi-ban-hanh', 'Mô tả Văn bản mới ban hành'),
(42, 'vi', 'Quản lý sản phẩm', 'quan-ly-san-pham', ''),
(45, 'vi', 'Liên hệ', 'lien-he', 'Liên hệ'),
(48, 'vi', 'Tài liệu chuyên ngành', 'tai-lieu-chuyen-nganh', '');

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
) ENGINE=InnoDB  DEFAULT CHARSET=utf8 AUTO_INCREMENT=22 ;

--
-- Dumping data for table `hoiit_module_news`
--

INSERT INTO `hoiit_module_news` (`record_id`, `postdate`, `pic_thumb`, `pic_desc`, `record_order`, `hot`, `specials`, `field1`, `field2`, `field3`, `field4`, `enable`, `hoiit_module_item_cat_cat_id`) VALUES
(9, '2012-11-14 08:04:42', 'tap-the-dan-dau-mo-loi-thanh-cong.jpg', NULL, 9, 0, NULL, NULL, NULL, NULL, NULL, 1, 4),
(10, '2012-11-15 01:31:40', 'tap-doan-at-xanh-to-chuc-le-ky-niem-9-nam-thanh-lap.jpg', NULL, 10, 0, NULL, NULL, NULL, NULL, NULL, 1, 4),
(11, '2012-11-15 01:36:20', 'khong-danh-cung-thang.jpg', NULL, 11, 0, NULL, NULL, NULL, NULL, NULL, 1, 3),
(12, '2012-11-25 03:15:36', 'cong-bo-du-an-can-ho-ven-song-sai-gon--thanh-toan-chi-gan-1m2thang.jpg', NULL, 25, 1, NULL, NULL, NULL, NULL, NULL, 1, 4),
(15, '2012-12-03 09:04:25', 'trinh-chinh-phu-tiep-tuc-ho-tro-ho-ngheo-ve-nha-o.png', NULL, 13, 0, NULL, NULL, NULL, NULL, NULL, 1, 4),
(16, '2012-12-03 09:27:39', 'sap-co-vn-index-cho-bat-dong-san.jpg', NULL, 15, 0, NULL, NULL, NULL, NULL, NULL, 1, 3),
(17, '2012-12-03 09:39:15', 'can-ho-gia-re-tieu-thu-tot.JPG', NULL, 19, 0, NULL, NULL, NULL, NULL, NULL, 1, 3),
(18, '2012-12-04 01:15:11', 'kho-cham-dut-ngay-tinh-trang-lang-phi-dat-o-ha-noi.jpg', NULL, 17, 0, NULL, NULL, NULL, NULL, NULL, 1, 4),
(20, '2012-12-04 02:59:47', 'go-ba-nut-that-pha-bang-cho-bs.jpg', NULL, 16, 0, NULL, NULL, NULL, NULL, NULL, 1, 3),
(21, '2012-12-04 03:21:23', 'ha-noi-noi-dieu-kien-mua-nha-thu-nhap-thap.jpg', NULL, 20, 0, NULL, NULL, NULL, NULL, NULL, 1, 4);

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
) ENGINE=InnoDB  DEFAULT CHARSET=utf8 AUTO_INCREMENT=7 ;

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
(3, 'vi', 'Tin thị trường BĐS', '', 'tin-thi-truong-bds', 'Tin thị trường'),
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
(9, 'vi', 'Tập thể dẫn đầu - mở lối thành công', '<p>Là một trong những đơn vị tiên phong và cung cấp các giải pháp bất động sản hàng đầu tại thị trường TP.HCM, công ty CP ĐT&amp;PT Đất Xanh Hoàn Cầu đã từng bước khẳng định mình và tạo được sự khác biệt với hàng loạt dự án được phát triển thành công, đáp ứng nhu cầu về nhà ở cho đa số người dân. Chính yếu tố con người là nền tảng để Đất Xanh Hoàn Cầu làm được những điều đó.</p>', '<p style="text-align:justify;"><span style="font-size:10pt;"><strong>Là một trong những đơn vị tiên phong và cung cấp các giải pháp bất động sản hàng đầu tại thị trường TP.HCM, công ty CP ĐT&amp;PT Đất Xanh Hoàn Cầu đã từng bước khẳng định mình và tạo được sự khác biệt với hàng loạt dự án được phát triển thành công, đáp ứng nhu cầu về nhà ở cho đa số người dân. Chính yếu tố con người là nền tảng để Đất Xanh Hoàn Cầu làm được những điều đó.</strong></span></p>\r\n<p style="text-align:justify;"><br /><span style="font-size:10pt;">Năm 2012 có thể nói là một năm không thuận lợi đối với thị trường bất động sản với hàng loạt dự án chậm triển khai, nhiều doanh nghiệp đứng trên bờ vực phá sản và gặp không ít khó khăn để tồn tại và tìm ra một hướng đi riêng. Tuy nhiên Đất Xanh Hoàn Cầu không chỉ tồn tại mà còn từng bước khẳng định mình với hàng loạt dự án đã được phát triển thành công và đạt được sự tin tưởng của cộng đồng, phục vụ cho nhu cầu ở thật như Phú Gia Hưng, M-Star Plaza, Sunview 3….</span></p>\r\n<p style="text-align:justify;"><br /><span style="font-size:10pt;">Với nhiệm vụ phát triển dự án chủ lực tại tuyến TP.HCM cũng như khu vực phía Nam, Đất Xanh Hoàn Cầu đã không ngừng hoàn thiện, cải tiến và nâng cao chất lượng dịch vụ thông qua việc nâng cao chất lượng đội ngũ. Bên cạnh đó, Đất Xanh Hoàn Cầu cũng xác định mục tiêu phát triển kinh doanh gắn liền với an sinh xã hội, đáp ứng tối đa nhu cầu an cư và đầu tư của khách hàng. Thông qua các giải pháp và chính sách marketing chuyên nghiệp, tập trung các sản phẩm chủ lực phục vụ nhu cầu ở thật của khách hàng, vị thế của Đất Xanh Hoàn Cầu không ngừng được nâng cao và xứng đáng là đơn vị tiên phong trong tập đoàn Đất Xanh và trở thành đối tác tin cậy của khách hàng và nhà đầu tư.</span></p>\r\n<p style="text-align:justify;"><br /><span style="font-size:10pt;">Đất Xanh Hoàn Cầu là nơi quy tụ được những nhân viên tận tâm, nhiệt huyết và tràn đầy sức trẻ. Trong 2012 vừa qua, Công ty đã thực hiện nhiều chương trình đào tạo, trẻ hóa đội ngũ, nâng cao chất lượng đầu vào và đặc biệt chính là xây dựng một môi trường làm việc thân thiện, vì tập thể, luôn tiên phong và đổi mới trong mọi hoạt động. Chính những điều đó đã tạo nên một tập thể Đất Xanh Hoàn Cầu vững mạnh, chất lượng dịch vụ không ngừng nâng cao, đồng thời với định hướng trở thành một trong những nhà phát triển và cung cấp giải pháp bất động sản hàng đầu tại Việt Nam, Đất Xanh Hoàn Cầu hy vọng sẽ đáp ứng được sự tin cậy và kỳ vọng của khách hàng và đối tác trong và ngoài nước, nhằm mang lại sự phát triển bền vững tương lai và cùng Tập đoàn Đất Xanh vươn ra biển lớn.</span></p>\r\n<p style="text-align:right;"><span style="font-size:10pt;"><em><strong>Kính Thiên</strong></em></span></p>', 'tap-the-dan-dau-mo-loi-thanh-cong', 'Là một trong những đơn vị tiên phong và cung cấp các giải pháp bất động sản hàng đầu tại thị trường TP.HCM, công ty CP ĐT&amp;PT Đất Xanh Hoàn Cầu đã từng bước khẳng định mình và tạo được sự khác biệt, đặc biệt chính là yếu tố con người.', 0, NULL, NULL),
(10, 'vi', 'Tập đoàn Đất Xanh tổ chức lễ kỷ niệm 9 năm thành lập', '<p style="text-align:justify;"><span style="font-size:10pt;">Tối ngày 13/11/2012, tại nhà hàng Him Lam 234 Ngô Tất Tố, P.22, Bình Thạnh Hồ Chí Minh. Tập đoàn Đất Xanh đã long trọng tổ chức lễ kỷ niệm 9 năm thành lập tập đoàn (13/11/2003 – 12/11/2012) với chủ đề “Tôi là người Đất Xanh”và vòng chung kết cuộc thi Hoa khôi Đất Xanh 2012</span></p>', '<p style="text-align:justify;">Tối ngày 13/11/2012, tại nhà hàng Him Lam 234 Ngô Tất Tố, P.22, Bình Thạnh Hồ Chí Minh. Tập đoàn Đất Xanh đã long trọng tổ chức lễ kỷ niệm 9 năm thành lập tập đoàn (13/11/2003 – 12/11/2012) với chủ đề “Tôi là người Đất Xanh” và vòng chung kết cuộc thi Hoa khôi Đất Xanh 2012. Buổi lễ có sự tham dự của lãnh đạo tập đoàn Đất Xanh, lãnh đạo các công ty thành viên, cùng toàn thể nhân viên làm việc tại văn phòng tập đoàn Đất Xanh. Đặc biệt trong lễ kỷ niệm còn có sự tham dự của người đẹp Chung Thục Quyên (top 15 của vòng chung kết Hoa hậu siêu Quốc gia 2009) và người đẹp Dương Thùy Trang trong vai trò ban giám khảo cuộc thi Hoa khôi Đất Xanh.</p>\r\n<p style="text-align:justify;">Mở đầu buổi lễ, thay mặt Ban lãnh đạo Tập đoàn Đất Xanh ông Lương Trí Thìn chủ tịch HĐQT kiêm Tổng giám đốc đã phát biểu khái quát lịch sử hình thành và phát triển của Tập đoàn Đất Xanh. "Cách đây tròn 9 năm, ngày 13 tháng 11 năm 2003, Công ty TNHH Dịch vụ và Xây dựng địa ốc Đất Xanh ra đời đã đánh dấu thời điểm thương hiệu Đất Xanh chính thức có mặt trên thị trường bất động sản. Trải qua gần 1 thập kỷ hình thành và phát triển với biết bao thử thách, đến nay Tập đoàn Đất Xanh đã được biết đến trên thị trường và trở thành một thương hiệu mạnh và uy tín. Đó là thành quả của tất cả chúng ta, những người đã và đang gắn bó cùng Đất Xanh trong suốt chặng đường phát triển qua. Hy vọng, với những thành quả đã đạt được, tập đoàn Đất Xanh sẽ tiếp tục phát triển và vươn lên những tầm cao mới” ông Lương Trí Thìn chia sẻ.</p>\r\n<p style="text-align:justify;">Lễ kỷ niệm 9 năm thành lập tập đoàn Đất Xanh cũng là dịp để ghi nhận sự đóng góp của các cán bộ nhân viên cho sự lớn mạnh của Tập đoàn. Có 22 cán bộ và nhân viên xuất sắc có thời gian gắn bó trên 5 năm đã được vinh danh trong buổi lễ.</p>\r\n<p style="text-align:justify;">Trong không gian lung linh pháo sáng, rực rỡ ánh đèn, ban lãnh đạo tập đoàn Đất Xanh đã đại diện toàn thể cán bộ nhân viên tiến hành nghi thức đốt nến, cắt bánh sinh nhật và khui rượu sâm banh để chúc mừng lễ kỷ niệm 9 năm thành lập Tập đoàn Đất Xanh.</p>\r\n<p style="text-align:justify;"> </p>\r\n<p style="text-align:justify;">Tiếp theo lễ kỷ niệm đã diễn ra vòng thi chung kết cuộc thi hoa khôi Đất Xanh 2012. Cuộc thi Hoa khôi Đất Xanh với chủ đề “Tự tin để tỏa sáng” đã được tổ chức vòng sơ tuyển và chọn ra 12 thí sinh xuất sắc tham dự vòng thi chung kết. Sau khi trải qua hai vòng thi diễn catwalk và thi tài năng Ban giám khảo đã chọn ra 5 thí sinh xuất sắc tham dự vòng thi ứng xử. Với vẻ đẹp nữ tính và có câu trả lời thông minh trong phần thi ứng xử, thể hiện được sự tự tin của người nhân viên kinh doanh và niềm tự hào <strong>“Tôi là người Đất Xanh”</strong> thí sinh Phan Ánh Tuyết thuộc đơn vị sàn 27 đã xứng đáng trở thành hoa khôi Đất Xanh 2012.</p>\r\n<p style="text-align:justify;"> </p>\r\n<p style="text-align:justify;">Lễ kỷ niệm 9 năm thành lập tập đoàn Đất Xanh đã được diễn ra thành công trong không khí trang trọng, ấm cúng và thân mật. Toàn thể thể khách mời có mặt đã cảm nhận được niềm tự hào “Tôi là người Đất Xanh”</p>\r\n<p style="text-align:right;"><strong>Thu Hiền</strong></p>\r\n<p style="text-align:justify;"> </p>', 'tap-doan-dat-xanh-to-chuc-le-ky-niem-9-nam-thanh-lap', 'Tối ngày 13/11/2012, tại nhà hàng Him Lam 234 Ngô Tất Tố, P.22, Bình Thạnh Hồ Chí Minh. Tập đoàn Đất Xanh đã long trọng tổ chức lễ kỷ niệm 9 năm thành lập tập đoàn (13/11/2003 – 12/11/2012) với chủ đề “Tôi là người Đất Xanh”', 0, NULL, NULL),
(11, 'vi', 'Không đánh cũng thắng', '<p><span style="font-size:10pt;">Sau sự cố ACB, nhiều ngân hàng đã “bất chiến tự nhiên thành” khi huy động được một lượng vốn đáng kể.</span></p>', '<p style="text-align:justify;"><strong><span style="font-size:10pt;">Không có tình trạng rút tiền hàng loạt ra khỏi Sacombank”, ông Nguyễn Hoàng Minh, Phó Giám Đốc Ngân hàng Nhà nước Chi nhánh TP.HCM, đã chia sẻ sau sự kiện ông Đặng Văn Thành, nguyên Chủ tịch Hội đồng Quản trị Sacombank, xin từ nhiệm chức danh thành viên Hội đồng Quản trị của ngân hàng này.</span></strong></p>\r\n<p style="text-align:justify;"><span style="font-size:10pt;">Thị trường dường như phản ứng với Sacombank theo cách nhẹ nhàng hơn nhiều so với vụ Ngân hàng Á Châu (ACB). Chỉ trong vòng 2 ngày (21-22.8), ACB bị rút tới hơn 8.000 tỉ đồng. Còn tính đến cuối quý III/2012, số dư tiền gửi khách hàng của ACB đã giảm tới hơn 15% so với cuối quý II.</span></p>\r\n<p style="text-align:justify;"><span style="font-size:10pt;">Trong khi đó, ở các ngân hàng khác, đặc biệt là ngân hàng lớn, tiền gửi lại tăng lên khá mạnh. Theo báo cáo tài chính chưa soát xét của ngân hàng mẹ Vietcombank, lượng tiền gửi của khách hàng trong quý III tăng hơn 8,1% so với quý II. Trong đó, đóng góp nhiều nhất vẫn là tiền gửi có kỳ hạn với tốc độ tăng đến hơn 11%. Đây cũng là quý có tốc độ tăng trưởng tiền gửi cao nhất trong năm nay.</span></p>\r\n<p style="text-align:justify;"><span style="font-size:10pt;">Một ngân hàng lớn khác là VietinBank cũng có dấu hiệu tương tự. Trong báo cáo kết quả hoạt động kinh doanh quý III, VietinBank cho biết đã huy động một lượng lớn vốn từ dân cư, chiếm tới 45% tổng vốn huy động. Kết quả là trong quý này, tiền gửi vào VietinBank đã tăng 7,3% so với quý trước. Theo một nhân viên tín dụng làm việc tại chi nhánh VietinBank ở Tân Bình (không muốn nêu tên), có thời điểm gần cuối tháng 8, chi nhánh này đã huy động được tới 300-400 tỉ đồng.</span></p>\r\n<p style="text-align:justify;"><span style="font-size:10pt;">Trong khi các ngân hàng lớn như VietinBank, Vietcombank chứng kiến một lượng tiền lớn đổ về trong quý III thì ở các ngân hàng nhỏ, tình hình huy động vốn vẫn không có sự thay đổi đáng kể. Thậm chí, một lãnh đạo ngân hàng nhỏ ở TP.HCM (không muốn nêu tên) cho biết: “Lượng tiền huy động của Ngân hàng trong quý III/2012 ít chứ không nhiều”.</span></p>\r\n<p style="text-align:justify;"><span style="font-size:10pt;">Xét về tăng trưởng tiền gửi trong quý III/2012, Sacombank và LienVietPostBank xếp vào hàng có mức tăng cao nhất (hơn 11%). Tuy nhiên, tốc độ tăng trưởng cao không có nghĩa là lượng tiền gửi vào lớn. Chẳng hạn, Ngân hàng Đầu tư và Phát triển Việt Nam (BIDV) trong quý III chỉ tăng trưởng 3,6%, tương ứng với đó là hơn 10.000 tỉ đồng, cao hơn cả Sacombank, dù ngân hàng này tăng trưởng tiền gửi tới hơn 11%.</span></p>\r\n<p style="text-align:justify;"><span style="font-size:10pt;">Sau sự cố ACB, nhiều ngân hàng đã “bất chiến tự nhiên thành” khi đã tăng được đáng kể vốn huy động chỉ trong một thời gian ngắn. Nhưng điều đáng quan tâm hơn là cuộc chiến huy động tiền gửi vẫn đang tiếp tục diễn ra.</span></p>\r\n<p style="text-align:justify;"><span style="font-size:10pt;">Lượng vốn huy động tại các ngân hàng vẫn không ngừng tăng lên. Theo Ngân hàng Nhà nước, tính đến ngày 19.10, lượng vốn huy động đã tăng 14,02% so với cuối năm ngoái. Các ngân hàng quy mô lớn vẫn là lựa chọn đầu tiên của người gửi tiền. Phải chăng đây là tín hiệu cho việc “đi đêm” sẽ còn diễn ra, một khi các ngân hàng nhỏ không còn ưu thế nào ngoài công cụ lãi suất.</span></p>\r\n<p style="text-align:right;"><em><strong><span style="font-size:10pt;">Theo Thanh Phong - Nhịp Cầu Đầu Tư</span></strong></em></p>', 'khong-danh-cung-thang', 'Sau sự cố ACB, nhiều ngân hàng đã “bất chiến tự nhiên thành” khi huy động được một lượng vốn đáng kể.', 0, NULL, NULL),
(12, 'vi', 'Công bố dự án căn hộ ven sông Sài Gòn , thanh toán chỉ gần 1m2/tháng', '<p><span style="color:#000000;font-size:11pt;"><strong>C</strong></span>ông ty Cổ phần ĐT&amp;PT Đất Xanh Hoàn Cầu ( Thành viên của Tập đoàn Đất Xanh ) chính thức công bố dự án mới ven sông Sài Gòn. Đây là dự án được mong chờ nhất trong giai đoạn hiện nay.</p>', '<p> </p>\r\n<p><span style="color:#000000;font-size:11pt;"><strong>C</strong></span>ông ty Cổ phần ĐT&amp;PT Đất Xanh Hoàn Cầu ( Thành viên của Tập đoàn Đất Xanh ) chính thức công bố dự án mới ven sông Sài Gòn. Đây là dự án được mong chờ nhất trong giai đoạn hiện nay, với phương thức thanh toán đột phá chỉ gần 1m2/tháng, khách hàng đã có thể sở hữu ngay một căn hộ tuyệt đẹp đáng mơ ước.</p>\r\n<p>Ông <strong>Đỗ Văn Mạnh – TGĐ Công ty Cổ phần Đất Xanh Hoàn Cầu</strong> cho biết: “Tìm được một nơi an cư lý tưởng không còn đơn giản chỉ là sống trong một không gian đẹp và đầy ắp tiện nghi. Đó phải là nơi vừa tiết kiệm thời gian di chuyển giữa cuộc sống bộn bề, tấp nập vừa phải đảm bảo được chất lượng, tính nhân văn, thẩm mỹ và thân thiện với môi trường. Việc công bố dự án này thật sự có ý nghĩa trong việc thực hiện các chính sách phát triển kinh tế – xã hội của TP.HCM nói chung và quận Thủ Đức nói riêng, thông qua việc cung cấp công trình căn hộ chất lượng cao cấp nhưng có mức giá trung bình đi kèm hệ thống thương mại, dịch vụ hiện đại, đáp ứng nhu cầu của người dân tại đây.”</p>\r\n<p>Tọa lạc gần trung tâm thành phố, cách trung tâm quận 1 chỉ 5 km, tiếp nối với đường vành đai Tân Sơn Nhất - Bình Lợi, cách sân bay Tân Sơn Nhất 5km, đây cũng là một dự án đặc biệt hiếm có vì vị trí giao thông thuận lợi cho cả đường bộ lẫn đường thủy. nhằm mang lại cho những khách hàng có nhu cầu mua nhà vào dịp cuối năm, Đất Xanh Hoàn Cầu đã đưa ra mức giá và phương thức thanh toán đột phá trên thị trường hiện nay, theo đó, chỉ từ 12,1 triệu/m2 và chỉ cần thanh toán gần 1m2/ tháng, khách hàng đã có thể sở hữu cho mình một căn hộ theo phong cách resort chất lượng cao nằm ven sông Sài Gòn với hàng loạt các tiện nghi vượt trội như hồ bơi, vườn nướng BBQ, công viên ven sông, khu vui chơi trẻ em, khu thương mại, bến du thuyền và cano bus…</p>\r\n<p>Theo khảo sát của Tập đoàn Đất Xanh, hiện nay, đối tượng khách hàng trẻ tuổi, đặc biệt là những trí thức trẻ tuổi đang có xu hướng thiên về lựa chọn căn hộ cho nhu cầu ở, bởi lẽ họ - đa phần là người trẻ tuổi có thể tùy túi tiền mà lựa chọn căn hộ phù hợp và hơn nữa là muốn hướng đến một không gian sống được quy hoạch đồng bộ.</p>\r\n<p>Thoáng mát, trong lành, đầy đủ tiện ích, ấm cúng và hiện đại - hòa mình vào không gian đó, mỗi khi về nhà là mỗi lần bạn cảm nhận được sự quây quần đầm ấm và tận hưởng được những phút giây thật sự thư giãn cho riêng mình. Với tất cả những gì chúng tôi làm là muốn mang lại cho gia đình bạn một cuộc sống hạnh phúc và yên lành nhất tại căn hộ ven sông Sài Gòn này.</p>\r\n<p>                                                                                                                                              Hạnh Nguyễn.</p>', 'cong-bo-du-an-can-ho-ven-song-sai-gon-thanh-toan-chi-gan-1m2thang', 'Công ty Cổ phần ĐT&amp;PT Đất Xanh Hoàn Cầu ( Thành viên của Tập đoàn Đất Xanh ) chính thức công bố dự án mới ven sông Sài Gòn .', 0, NULL, NULL),
(15, 'vi', 'Trình Chỉnh phủ tiếp tục hỗ trợ hộ nghèo về nhà ở', '<p><strong><span style="font-size:11pt;">S</span>au 3 năm triển khai chính sách hỗ trợ hộ nghèo về nhà ở, các địa phương đã hỗ trợ trên 515.000 hộ, giai đoạn 2 tiếp tục hỗ trợ 500.000 hộ, cần 19.000 tỷ đồng.</strong></p>\r\n<p> </p>\r\n<p> </p>\r\n<p> </p>', '<p><strong><span style="font-size:11pt;">S</span></strong>au 3 năm triển khai chính sách hỗ trợ hộ nghèo về nhà ở, các địa phương đã hỗ trợ trên 515.000 hộ, giai đoạn 2 tiếp tục hỗ trợ 500.000 hộ, cần 19.000 tỷ đồng.</p>\r\n<p>                                </p>\r\n<p>Chính sách hỗ trợ hộ nghèo về nhà ở (chương trình 167) được Thủ tướng phê duyệt từ cuối năm 2008. Sau 3 năm thực hiện (2009-2012) đến nay các địa phương đã hoàn thành hỗ trợ nhà ở cho trên 515.000 hộ nghèo, đạt tỷ lệ 104% so với số hộ phê duyệt ban đầu, đạt 95,5% so với số hộ thực tế phải hỗ trợ sau khi rà soát điều chỉnh.</p>\r\n<p>Bộ Xây dựng vừa hoàn tất Dự thảo, trình Chính phủ phê duyệt và ban hành chính sách tiếp tục hỗ trợ hộ nghèo về nhà ở theo chuẩn hộ nghèo áp dụng cho giai đoạn 2011-2015 (Chương trình 167 giai đoạn 2). Mục tiêu trong giai đoạn này là tiếp tục hỗ trợ nhà ở cho khoảng 500.000 hộ nghèo.</p>\r\n<p>Nâng mức hỗ trợ, mở rộng đối tượng thụ hưởng</p>\r\n<p>Về cơ bản cơ chế và chính sách hỗ trợ vẫn được áp dựng tương tự giai đoạn 1, có điều chỉnh bổ sung về mức hỗ trợ và mức vay cần tăng lên để đảm bảo phù hợp hơn với giá cả hiện nay.</p>\r\n<p>Theo phân tích của Bộ Xây dựng tại tờ trình Chính phủ. Hiện nay giá vật liệu xây dựng tăng 64% sau 4 năm, chi phí nhân công cũng tăng. Vì vậy, để xây dựng căn nhà có diện tích 24m2, tuổi thọ trên 10 năm cần 36-37 triệu đồng, trong đó chi phí vật liệu khoảng 24-25 triệu đồng và chi phí nhân công khoảng 12 triệu đồng.</p>\r\n<p>Chương trình 167 giai đoạn 1 để xây dựng căn nhà tương tự chi phí khoảng 23-24 triệu đồng, trong đó chi phí vật liệu chính khoảng 15-16 triệu đồng, chi phí vật liệu phụ và nhân công khoảng 8 triệu đồng.</p>\r\n<p>Vì vậy, chính sách mới điều chỉnh mức hỗ trợ với mức 10 triệu đồng/hộ (những hộ cư trú tại vùng khó khăn theo Quyết định 30 thì Ngân sách nhà nước hỗ trợ với mức 12 triệu đồng/hộ, những hộ cư trú tại các thôn, bản đặc biệt khó khăn thì Ngân sách nhà nước hỗ trợ với mức 14 triệu đồng/hộ).</p>\r\n<p>Đối với những hộ đã được hỗ trợ nhà ở theo các chính sách khác nhưng nhà ở bị hư hỏng, xuống cấp thì Ngân sách nhà nước hỗ trợ với mức 5 triệu đồng/hộ; đối với những hộ có nhà ở đã bị sập đổ do thiên tai thì thì Ngân sách nhà nước hỗ trợ 10 triệu đồng/hộ; đối với những hộ khu vực miền Trung thuộc diện được hỗ trợ chòi phòng tránh lũ, lụt theo Quyết định 716 nhưng có khó khăn về nhà ở thì Ngân sách nhà nước hỗ trợ với mức 5 triệu đồng/hộ.</p>\r\n<p>Tất cả những hộ thuộc diện đối tượng nêu trên nếu có nhu cầu thì được vay ưu đãi với mức tối đa 15 triệu đồng/hộ. Ngoài vốn Ngân sách nhà nước và vốn vay thì các hộ gia đình tham gia đóng góp và huy động từ cộng đồng khoảng 12 triệu đồng/hộ.</p>\r\n<p>Cần nguồn vốn gần 19.000 tỷ đồng</p>\r\n<p>Theo thông kế, hiện cả nước có khoảng 510.000 hộ nghèo đang khó khăn về nhà ở, khoảng 47% vùng không khó khăn, khoảng 25% số hộ cư trú tại vùng khó khăn theo Quyết định 30, khoảng 28% số hộ cư trú tại các thôn (bản) đặc biệt khó khăn (tương đương 143.200 hộ).</p>\r\n<p>Căn cứ mức hỗ trợ, mức vay đề xuất và số hộ thuộc diện đối tượng xác định nói trên, dự kiến tổng cộng vốn Ngân sách Nhà nước cần 5.052,8 tỷ đồng, trong đó Ngân sách trung ương hỗ trợ khoảng 4.724,4 tỷ đồng, ngân sách địa phương hỗ trợ khoảng 328,4 tỷ đồng.</p>\r\n<p>Bên cạnh đó với mức vay 15 triệu đồng/hộ thì cần khoảng 7.660 tỷ đồng từ ngân hàng chính sách. Ngoài ra, vốn huy động từ cộng đồng và đóng góp của hộ gia đình cần khoảng 6.128 tỷ đồng.</p>\r\n<p>Đối với nguồn vốn cho vay, ngân sách trung ương cấp 50% trên tổng số vốn vay cho ngân hàng Chính sách xã hội, 50% còn lại do ngân hàng Chính sách xã hội huy động.</p>\r\n<p>Người dân được vay mức tối đa 15 triệu đồng/hộ, lãi suất vay 3%/năm. Thời hạn vay là 10 năm, trong đó thời gian ân hạn là 5 năm. Thời gian trả nợ là 5 năm, mức trả nợ mỗi năm tối thiểu là 20% tổng số vốn đã vay.</p>\r\n<p>                                                                                                                                      Theo TTVN</p>', 'trinh-chinh-phu-tiep-tuc-ho-tro-ho-ngheo-ve-nha-o', 'Sau 3 năm triển khai chính sách hỗ trợ hộ nghèo về nhà ở, các địa phương đã hỗ trợ trên 515.000 hộ, giai đoạn 2 tiếp tục hỗ trợ 500.000 hộ, cần 19.000 tỷ đồng.', 0, NULL, NULL),
(16, 'vi', 'Sắp có ''VN-Index'' cho bất động sản', '<p><span style="font-size:11pt;"><strong>D</strong></span>ự kiến quý I/2013, chỉ số về giá và lượng giao dịch bất động sản trên thị trường TP HCM sẽ được công bố.</p>', '<p><span style="font-size:11pt;"><strong>D</strong></span>ự kiến quý I/2013, chỉ số về giá và lượng giao dịch bất động sản trên thị trường TP HCM sẽ được công bố.</p>\r\n<p>Lâu nay các cá nhân, tổ chức, báo chí quan tâm đến số liệu về lượng giao dịch, giá cả trên thị trường bất động sản hầu hết tìm đến các doanh nghiệp ngoại như CBRE, Savills… Những đơn vị này gần như đang nắm hệ thống dữ liệu ngành bất động sản Việt Nam.</p>\r\n<p>Sự ra đời sắp tới của chỉ số đánh giá bất động sản tại TP HCM (theo Quyết định 51, có hiệu lực từ ngày 29/11) được kỳ vọng sẽ giúp thị trường minh bạch và phát triển hơn. Chỉ số này gồm thống kê giá giao dịch và lượng giao dịch ngành địa ốc.</p>\r\n<p>Bà Nguyễn Thị Thanh Hương, Ủy viên Ban Chấp hành Hiệp hội Bất động sản Đồng Nai, nhận xét chỉ số bất động sản có giá trị tương tự nhiệt kế đo lường thị trường ở các khu vực khác nhau. Ngoài ra, có chỉ số bất động sản, Nhà nước có đủ thông tin, cơ sở để điều tiết thị trường và hoạch định chính sách phù hợp cho cả ngắn và trung hạn.</p>\r\n<p> </p>\r\n<p><span style="font-size:8pt;"><em>Có số liệu chính xác từ các bộ chỉ số thị trường, doanh nghiệp bất động sản sẽ dễ tính toán<br /> phương án đầu tư, kinh doanh.</em></span></p>\r\n<p>Theo bà Hương, nhà đầu tư cũng căn cứ vào đó đo lường nhu cầu thị trường, lên chiến lược kinh doanh phân khúc sản phẩm phù hợp. Cuối cùng, khách hàng cũng có cơ sở để nhận diện độ nhạy, sức hút từng phân khúc sản phẩm và ra quyết định phù hợp.</p>\r\n<p>Tuy nhiên, bà Hương lưu ý, thị trường bất động sản Việt Nam luôn có độ sai lệch giữa giá trị giao dịch trên giấy tờ và thực tế, đặc biệt là sản phẩm nhà ở riêng lẻ hay nhà, đất dự án giao dịch lại. Do đó, "cần có cơ chế kiểm định thông tin và xử lý mức sai lệch để đảm bảo tính minh bạch cùng độ tin cậy của chỉ số", bà nói thêm.</p>\r\n<p>Ông Lê Hữu Nghĩa, Tổng giám đốc Công ty Bất động sản Lê Thành, cũng khẳng định các số liệu thật là điều doanh nghiệp luôn rất cần. "Nếu có các số liệu chính xác về thị trường địa ốc và được công bố công khai thì quá tốt. Lúc đó doanh nghiệp sẽ có con số chính thức để tính toán trong đầu tư, xây dựng, chẳng hạn thấy căn hộ dư thừa thì né ngay và chuyển sang làm dự án đất nền", ông Nghĩa nêu ví dụ.</p>\r\n<p>Tuy nhiên, nguồn để Sở Xây dựng làm cơ sở dữ liệu như giá, số lượng giao dịch ngoài thị trường để tính toán chỉ số hiện vẫn là vấn đề quan tâm của nhiều doanh nghiệp. Theo một cán bộ thuộc Ban Chỉ đạo Chính sách nhà ở và Thị trường bất động sản TP HCM, trước mắt, Sở Xây dựng sẽ chủ trì việc tính ra các chỉ số.</p>\r\n<p>Và để chính xác hơn, Sở có thể thuê các tổ chức, cá nhân có năng lực trong lĩnh vực định giá bất động sản, nhằm thực hiện một số phần việc hoặc toàn bộ công việc thu thập số liệu để tính chỉ số. Khi có kết quả sơ bộ, Sở có trách nhiệm thẩm định, đánh giá các số liệu về độ phù hợp, chính xác, sau đó mới công bố chính thức.</p>\r\n<p>Cũng theo Quyết định 51, khi tính chỉ số thị trường bất động sản, các sở, ngành như tư pháp, tài nguyên, thuế, hiệp hội bất động sản, sàn giao dịch có trách nhiệm cung cấp thông tin, số liệu để tính. Cụ thể, Sở Tư pháp cung cấp số liệu hợp đồng công chứng giao dịch nhà đất, Sở Tài nguyên và Môi trường hỗ trợ số liệu cấp giấy chứng nhận quyền sử dụng và tài sản trên đất, Cục Thuế đưa thống kê thu thuế chuyển nhượng. Cuối cùng, các sàn phải cung cấp thông tin được giao dịch qua sàn.</p>\r\n<p>Tuy nhiên, ông Lê Hoàng Châu, Chủ tịch hiệp hội Bất động sản TP HCM lại cho rằng, bước đầu người dân và doanh nghiệp chỉ nên dùng các chỉ số thị trường chủ yếu để tham khảo. Theo ông, phương pháp tính toán và thu thập số liệu các con số chưa đầy đủ, chưa chính xác và rất khó biết giá các giao dịch thực tế ngoài thị trường.</p>\r\n<p>"Tôi biết có giao dịch trị giá 10 tỷ đồng nhưng các bên mua bán bắt tay khai thuế chỉ 7 tỷ đồng. Trường hợp như vậy khá nhiều nên rất khó thu thập thông tin chính xác để làm căn cứ tính chỉ số thị trường", ông cho biết. Ông cũng cũng chia sẻ, sớm nhất vào quý I/2013, TP HCM sẽ công bố các chỉ số về thị trường bất động sản như giá trị giao dịch, số lượng giao dịch.</p>\r\n<p>                                                                                                                  Theo Pháp Luật TP HCM</p>', 'sap-co-vn-index-cho-bat-dong-san', 'Dự kiến quý I/2013, chỉ số về giá và lượng giao dịch bất động sản trên thị trường TP HCM sẽ được công bố.', 0, NULL, NULL),
(17, 'vi', 'Căn hộ giá rẻ tiêu thụ tốt', '<p><span style="font-size:11pt;"><strong>C</strong></span>ác doanh nghiệp TP HCM đua nhau giành thị phần căn hộ giá rẻ, xu hướng của thị trường địa ốc năm 2013 sẽ ra sao… là những điểm nhấn của bất động sản tuần này.</p>', '<p><span style="font-size:12pt;"><strong>C</strong></span>ác doanh nghiệp TP HCM đua nhau giành thị phần căn hộ giá rẻ, xu hướng của thị trường địa ốc năm 2013 sẽ ra sao… là những điểm nhấn của bất động sản tuần này.</p>\r\n<p>Theo khảo sát của VnExpress.net, tại TP HCM các dự án chào bán 550-750 triệu đồng một căn hộ, xây đúng tiến độ khá hút khách.</p>\r\n<p>Giữa tháng 10, Công ty Nhà Hòa Bình (Hoa Binh House) tung dự án MBBabylon (quận Tân Phú) và đã bán hết 100 căn giai đoạn một khi dự án này xây đến tầng thứ 7. Có giá 15,5 triệu đồng mỗi m2, căn nhỏ nhất khoảng 730 triệu đồng, dự án do Công ty cổ phần đầu tư và xây dựng Investco làm chủ đầu tư, sẽ mở bán đợt kế tiếp vào giữa tháng 12.</p>\r\n<p> </p>\r\n<p><span style="font-size:8pt;">Chú thích ảnh: Tại TP HCM, những căn hộ giá 600-700 triệu đang được tiêu thụ khá chạy.</span></p>\r\n<p>Trước đó, Công ty Dịch vụ thương mại địa ốc Hoàng Quân, Tập đoàn Nam Long, Địa ốc Khang Gia, Địa ốc Đất Xanh… cũng đã tung ra các căn hộ 2 phòng ngủ, diện tích 50 đến 60m2 có giá thấp nhất khoảng trên 600 triệu. Những căn hộ này đều giao dịch khá thành công.</p>\r\n<p>Chủ tịch Hiệp hội Bất động sản TP HCM, Lê Hoàng Châu cho rằng bức tranh thị trường địa ốc không phải chỉ toàn màu xám, có không ít dự án bán được hàng nhờ đáp ứng đúng nhu cầu thật, giá hợp lý.</p>\r\n<p>Nhiều dự báo trái chiều về chu kỳ mới của địa ốc</p>\r\n<p>Chuyên gia kinh tế Đinh Thế Hiển dự báo thị trường địa ốc có thể đi vào chu kỳ mới trong năm 2013-2014. Cơ sở dự báo của dự báo đó theo ông Hiển là giá nhà đang đi xuống, tỷ giá USD ổn định, lãi suất hạ nhiệt, hơn nữa Chính phủ đang có động thái cân nhắc các gói hỗ trợ địa ốc.</p>\r\n<p>Trong khi đó, Chuyên gia đầu tư Trần Lê Khánh lại "vẽ" ra ba kịch bản cho thị trường nhà đất. Trong đó, kịch bản ảm đạm nhất là nếu nền kinh tế phục hồi chậm thì giá sẽ giảm thêm 10-15%, nếu nguồn cung mới hạn chế, hàng tồn kho sẽ tiêu thụ trong 3 năm.</p>\r\n<p>Dưới góc nhìn của doanh nghiệp, Chủ tịch C.T Group, Trần Kim Chung tỏ ra bi quan hơn. "Hiện nay tất cả các ngành đều chịu ảnh hưởng, dầu khí còn lo thì dân lấy đâu ra tiền mua nhà đất", ông Chung nói.</p>\r\n<p>Tổng giám đốc Công ty cổ phần phát triển nhà Hoàng Anh (HAGL Land), Lê Hùng cũng nhận định lúc này còn quá sớm để kỳ vọng vào kịch bản phục hồi của thị trường địa ốc “Tôi nhận thấy năm 2013 vẫn chưa có yếu tố nào là động lực kéo bất động sản phục hồi. Thị trường vẫn còn khó dài dài".</p>\r\n<p>HUD mắc sai phạm tại dự án chung cư Linh Đàm</p>\r\n<p>Thanh tra thành phố Hà Nội kết luận Tổng công ty Đầu tư Phát triển nhà và Đô thị (HUD) đã mắc nhiều sai phạm trong quá trình đầu tư xây dựng dự án khu dịch vụ và nhà ở hồ Linh Đàm. Kết luận cho biết HUD thực hiện sai quy hoạch, vị phạm các thủ tục về tài chính, thuế và sử dụng sai mục đích nhiều lô đất theo quy định.</p>\r\n<p>Cụ thể, thanh tra phát hiện HUD không lập kế hoạch sử dụng đất hàng năm và xin phép xây dựng đối với một số dự án cụ thể. Tổng công ty cũng sai phạm khi thực hiện việc chuyển nhượng hạ tầng cho một số nhà đầu tư thứ cấp lúc chưa giải phóng xong mặt bằng. Một số chủ đầu tư khác đã nhận bàn giao đất từ HUD từ năm 2010 nhưng đến nay vẫn chưa xây dựng công trình. Một số chủ đầu thứ cấp khác xây vượt tầng cao và mật đô xây dựng so với quy hoạch được duyệt.</p>\r\n<p>HUD còn một số sai sót trong việc thực hiện nghĩa vụ tài chính đối với nhà nước, như nộp thiếu tiền sử dụng đất, thuế thu nhập doanh nghiệp đối với phần tài sản cố định, chưa nộp phí xây dựng.</p>\r\n<p>                                                                                                                               Nguồn vnexpress</p>', 'can-ho-gia-re-tieu-thu-tot', 'Các doanh nghiệp TP HCM đua nhau giành thị phần căn hộ giá rẻ, xu hướng của thị trường địa ốc năm 2013 sẽ ra sao… là những điểm nhấn của bất động sản tuần này.', 0, NULL, NULL),
(18, 'vi', 'Khó chấm dứt ngay tình trạng lãng phí đất ở Hà Nội', '<p><span style="font-size:11pt;"><strong>T</strong></span>rao đổi với báo chí bên lề kỳ họp HĐND Hà Nội, ông Vũ Văn Hậu, Giám đốc Sở Tài nguyên Môi trường cho rằng, tình trạng lãng phí đất đai hiện nay ở thủ đô chỉ có thể khắc phục dần chứ khó có thể chấm dứt được ngay.</p>', '<p><strong><span style="font-size:11pt;">T</span>rao đổi với báo chí bên lề kỳ họp HĐND Hà Nội, ông Vũ Văn Hậu, Giám đốc Sở Tài nguyên Môi trường cho rằng, tình trạng lãng phí đất đai hiện nay ở thủ đô chỉ có thể khắc phục dần chứ khó có thể chấm dứt được ngay.</strong></p>\n<p>- Qua giám sát, HĐND Hà Nội phát hiện hàng loạt dự án chậm triển khai, để hoang hóa, có nơi tới 10 năm, Sở Tài nguyên Môi trường nhìn nhận thực trạng này như thế nào?</p>\n<p>- Chúng tôi đã kiểm điểm nội dung này và nhận thấy còn một số hạn chế yếu kém. Điều đó được thể hiện qua quy hoạch sử dụng đất tính khả thi chưa cao. Hơn nữa, triển khai một số nội dung còn chậm, nhiều chủ đầu tư được chọn để thực hiện dự án cũng chưa đủ năng lực. Trong khi đó hậu kiểm lại không đạt chất lượng. Chúng tôi cũng đã rút kinh nghiệm những vấn đề này.</p>\n<p>           <img src="/public/userfiles/image/datxanhhoancau/oh.jpg" alt="" width="480" height="329" /></p>\n<p>           <span style="font-size:8pt;">Giám đốc Sở TNMT Vũ Văn Hậu. Ảnh: N.H. </span></p>\n<p>- Năm nào Hà Nội cũng lập các đoàn kiểm tra đi kiểm soát nhưng tại sao vẫn để tình trạng đất giao “không đúng người”?</p>\n<p>- Có người bảo Hà Nội giao đất quá dễ dàng nhưng không phải vậy. Việc khuyến khích đầu tư xây dựng để phát triển kinh tế - xã hội là cần thiết. Còn theo luật khi quy hoạch được duyệt, dự án được duyệt thì không lý gì ngành tài nguyên không giao đất. Tuy nhiên, trong quá trình thẩm tra thì đúng là có chuyện năng lực đầu tư còn yếu. Điều này sẽ được giải quyết trong thời gian tới.</p>\n<p>- Đối với những dự án để hoang hóa quá lâu hoặc chủ đầu tư không đủ năng lực thực hiện, thành phố có chế tài gì?</p>\n<p>- Theo tôi, cần phải kiểm tra quyết liệt để chấn chỉnh tình trạng sử dụng đất sai mục đích, đảm bảo tính hiệu quả của dự án và cũng có những biện pháp tháo gỡ khó khăn cho doanh nghiệp. Những trường hợp đã giải quyết thấu tình đạt lý rồi mà doanh nghiệp không triển khai tiếp, Sở sẽ dứt khoát trình thành phố thu hồi đem đấu giá hoặc giao cho làm các công trình công cộng bức xúc mà thành phố đang cần.</p>\n<p>-Còn việc một số doanh nghiệp phản ánh họ bỏ ra chi phí lớn để có được dự án rồi lại bị thu hồi gây thiệt hại lớn là chuyện của họ, không thể trách Nhà nước được. Ở đây doanh nghiệp đã sai sót ngay từ đầu, không nắm được khả năng tài chính, nghĩa vụ tài chính của mình mà cứ lao vào làm, đến khi không làm được thì phải tự trách mình.</p>\n<p>           <img src="/public/userfiles/image/datxanhhoancau/datvcb2.jpg" alt="" width="495" height="327" /></p>\n<p><span style="font-size:8pt;">            Khu đất rộng hơn 5.000 m2 của Vietcombank (khoanh đỏ) bị bỏ hoang ở quận Cầu Giấy. Cạnh đó, rất <br />            nhiều khu đất trống bị biến thành sân bóng, bãi đỗ xe, nhà hàng... Ảnh: Anh Tuấn.</span></p>\n<p>- Vậy, theo ông để khắc phục tình trạng lãng đất đai trên địa bàn, thời gian tới thành phố cần phải có những biện pháp gì?</p>\n<p>- Thành phố phải tìm ngay biện pháp khắc phục nhưng theo tôi, chỉ có thể khắc phục dần dần chứ làm được ngay là rất khó. Quan điểm của chúng tôi là đầu tiên phải tháo gỡ cho các chủ đầu tư, các doanh nghiệp. Nhiều khi nhìn vấn đề phải toàn diện, trong điều kiện khó khăn như hiện nay chúng ta phải thấy được khó khăn của doanh nghiệp vì họ đã đầu tư vào đây thời gian lại kéo dài mà chúng ta cứ thu hồi lại ngay thì có đền bù cho họ không, đền bù thế nào?</p>\n<p>-Tất cả những chính sách liên quan đến đất đai đều phải chi tiết. Chúng tôi đang làm việc với Bộ TNMT về những loại đất bị thu hồi trong đó có vi phạm về việc không triển khai dự án, chậm tiến độ. Song, hiện tại chưa có văn bản hướng dẫn.</p>\n<p>-Về phần mình, Sở TNMT đã trình quy hoạch sử dụng đất năm đến 2020, kế hoạch sử dụng đất đến 2015 đồng thời tham mưu cho Thành phố một số chính sách để sửa đổi, ví dụ khi chọn chủ đầu tư có năng lực về tổ chức thực hiện, đặc biệt là năng lực về tài chính.</p>\n<p>-Theo báo cáo của UBND Hà Nội, năm 2012, công tác kiểm tra xử lý vi phạm về đất đai được triển khai tích cực. Thanh tra, xử lý nghiêm vi phạm pháp luật về đất đai, đặc biệt các dự án chậm triển khai, sử dụng sai mục đích và thời gian quy định; qua đó, thu hồi trên 800 ha đất của 7 tổ chức, đơn vị; đồng thời, đang xem xét xử lý thu hồi đối với 23 chủ đầu tư đang bỏ hoang hóa 33 khu đất với diện tích gần 50 ha.</p>\n<p>-Công tác giải phóng mặt bằng tiếp tục được đẩy mạnh. Trong tổng số 10.600 ha đất tại 1.092 dự án liên quan đến thu hồi đất, giải phóng mặt bằng, dự kiến hoàn thành 213 dự án; thu hồi và bàn giao là 1.338 ha đất; chi trả cho 28.592 hộ dân trên 9.500 tỷ đồng tiền bồi thường, hỗ trợ giải phóng mặt bằng và tái định cư 1.220 hộ dân.</p>\n<p>                                                                                                                              Nguồn vnexpress</p>\n<p> </p>\n<p> </p>', 'kho-cham-dut-ngay-tinh-trang-lang-phi-dat-o-ha-noi', 'Trao đổi với báo chí bên lề kỳ họp HĐND Hà Nội, ông Vũ Văn Hậu, Giám đốc Sở Tài nguyên Môi trường cho rằng, tình trạng lãng phí đất đai hiện nay ở thủ đô chỉ có thể khắc phục dần chứ khó có thể chấm dứt được ngay.', 0, NULL, NULL);
INSERT INTO `hoiit_module_news_languages` (`record_id`, `language_id`, `title`, `preview`, `content`, `tag`, `description`, `hit`, `extra_field1`, `extra_field2`) VALUES
(20, 'vi', 'Gỡ ba nút thắt “phá băng” cho BĐS?', '<p><span style="font-size:11pt;"><strong>V</strong></span>iệc “phá băng” thị trường BĐS có thể thực hiện được thông qua việc điều chỉnh cơ chế tiền sử dụng đất và áp dụng các chính sách hữu hiệu khuyến khích các loại hình nhà ở vừa túi tiền, bao gồm cả các loại hình nhà ở xã hội như Quốc hội đã nêu.</p>', '<p><strong>Việc “phá băng” thị trường BĐS có thể thực hiện được thông qua việc điều chỉnh cơ chế tiền sử dụng đất và áp dụng các chính sách hữu hiệu khuyến khích các loại hình nhà ở vừa túi tiền, bao gồm cả các loại hình nhà ở</strong><strong> xã hội như Quốc hội đã nêu.</strong></p>\r\n<p><strong> </strong></p>\r\n<p><span style="font-size:8pt;">                    Phát triển loại hình nhà ở vừa túi tiền là một trong những biện pháp "phá băng" cho BĐS (Hình minh hoạ)</span></p>\r\n<p style="text-align:left;">Xin giới thiệu tiếp bài hai trong loạt bài “Những biện pháp “phá băng” cho nền kinh tế” của Tiến sỹ Lương Hoài Nam.</p>\r\n<p style="text-align:left;">Giảm thời gian “chạy” dự án</p>\r\n<p style="text-align:left;">Thứ nhất, cơ chế tiền sử dụng đất hiện hành theo Thông tư 93/2011/TT-BTC (sửa đổi, bổ sung Thông tư 117/2004/TT-BTC hướng dẫn thi hành Nghị định 198/2004/NĐ-CP) là một trong những nguyên nhân gây nên sự bế tắc, đình trệ các dự án BĐS, uy hiếp khả năng tồn tại của hàng loạt doanh nghiệp BĐS, tăng nợ xấu của hệ thống ngân hàng, gây bất ổn kinh tế vĩ mô.</p>\r\n<p style="text-align:left;">Điểm bất cập của cơ chế Thông tư 93 (mục 1.5.1) về nguyên tắc, cách thức tính tiền sử dụng đất theo “giá chuyển nhượng quyền sử dụng đất thực tế trên thị trường trong điều kiện bình thường” làm cho cả các doanh nghiệp BĐS và các cơ quan nhà nước liên quan lâm vào tình thế bị động, không thể tính toán, dự báo được tiền sử dụng đất sẽ là bao nhiêu cho một dự án BĐS cụ thể.</p>\r\n<p style="text-align:left;">Thời gian từ thời điểm lập dự án trình các cơ quan có thẩm quyền đến thời điểm tính tiền sử dụng đất kéo dài nhiều năm (dự án nhỏ 2-3 năm, dự án trung bình 4-5 năm, dự án lớn 7-8 năm, cá biệt có những dự án 2 thời điểm này cách nhau 10-20 năm như Khu đô thị Phú Mỹ Hưng ở TP HCM). Doanh nghiệp khi quyết định đầu tư một dự án BĐS cần tính toán được giá thành sản phẩm BĐS và đối chiếu với giá bán dự kiến xem khả năng lãi lỗ thế nào. Tuy nhiên, theo cơ chế Thông tư 93 về tiền sử dụng đất (cấu thành giá thành sản phẩm BĐS) thì doanh nghiệp không thể tính được giá thành sản phẩm hình thành trong tương lai là bao nhiêu để quyết định đầu tư.</p>\r\n<p style="text-align:left;">Doanh nghiệp phải lập hồ sơ xin dự án, thiết kế quy hoạch, tiến hành đền bù giải phóng mặt bằng, thực hiện tái định cư, xây dựng cơ sở hạ tầng … trong nhiều năm, với các khoản chi phí khổng lồ, sau đó mới lập hồ sơ xin đóng tiền sử dụng đất.</p>\r\n<p style="text-align:left;">Tiếp đó, theo Thông tư 93, “Sở Tài chính thuê tổ chức có chức năng thẩm định giá xác định giá đất; trên cơ sở giá đất do Tổ chức thẩm định giá xác định, Sở Tài chính chủ trì phối hợp với Sở Tài nguyên và Môi trường, Cục Thuế và cơ quan có liên quan thẩm định trình Ủy ban nhân dân cấp tỉnh quyết định giá đất tính thu tiền sử dụng đất cho từng trường hợp cụ thể” rồi thông báo cho doanh nghiệp số tiền sử dụng đất phải đóng. Số tiền sử dụng đất được xác định theo cách này có thể cao đến mức làm cho dự án đầu tư theo ý đồ, quy hoạch phát triển ban đầu hoàn toàn mất tính khả thi về thị trường. Nếu doanh nghiệp đóng tiền sử dụng đất thì cũng không đầu tư tiếp được (giá thành quá cao so với khả năng chấp nhận của thị trường), nhưng chậm đóng tiền sử dụng đất thì dự án có thể bị thu hồi sau khi doanh nghiệp đã phải bỏ ra rất nhiều chi phí trong giai đoạn trước (thiết kế quy hoạch, đền bù giải phóng mặt bằng, tái định cư, xây dựng cơ sở hạ tầng…).</p>\r\n<p style="text-align:left;">Doanh nghiệp BĐS bị lâm vào vòng luẩn quẩn, tiến thoái lưỡng nan, dự án đầu tư bị đình trệ không triển khai tiếp được, vốn bị đọng, nợ ngân hàng đến hạn không trả được.</p>\r\n<p style="text-align:left;">Giảm tiền đất cho dự án</p>\r\n<p style="text-align:left;">Việc thay thế cơ chế khung giá đất do UBND tỉnh, thành phố ban hành (áp dụng trước năm 2006) bằng cơ chế “giá chuyển nhượng quyền sử dụng đất thực tế trên thị trường trong điều kiện bình thường” trên thực tế là một bước tụt lùi.</p>\r\n<p style="text-align:left;">Khác với các loại hàng hóa khác, giá đất có biên độ giao động rất lớn. Hai lô đất sát cạnh nhau, với các điều kiện khác cơ bản như nhau, nhưng một lô giáp sông, lô kia giáp khu rác thải thì giá của hai mảnh đất này rất khác nhau. Cùng một lô đất, nếu thuê các tổ chức định giá độc lập thì kết quả định giá của các tổ chức khác nhau cũng luôn luôn khác nhau, thậm chí lệch nhau 1,5-2 lần, cho nên nhiều khi UBND tỉnh, thành phố không thể quyết định được giá nào là “giá thị trường” của lô đất. Thực tế này đồng thời cũng làm phát sinh nguy cơ tiêu cực về tiền sử dụng đất từ cả hai phía.</p>\r\n<p style="text-align:left;">Một điểm bất cập khác của cơ chế tiền sử dụng đất hiện hành là, mặc dù theo nguyên tắc doanh nghiệp trả giá đất theo “giá thị trường”, nhưng nhà nước lại không cho phép khấu trừ hàng loạt chi phí thực tế của doanh nghiệp (tiền hỗ trợ, đền bù ngoài phương án bồi thường; tiền đền bù phần đất hạ tầng công cộng; chi phí vốn; chi phí quản lý…), vì vậy tổng chi phí thực tế mà doanh nghiệp chi cho lô đất dự án cao hơn nhiều so với mức được khấu trừ theo quy định.</p>\r\n<p style="text-align:left;">Nên xem xét ban hành cơ chế mới, theo đó quy định tiền sử dụng đất ở mức 10-20% khung giá đất nhà nước, ổn định trong 5 năm và có biên độ điều chỉnh tối đa cho giai đoạn tiếp theo được công bố công khai để các doanh nghiệp chủ tính toán bài toán đầu tư của họ. Ngoài ra, trong điều kiện thị trường vốn vẫn còn nhiều khó khăn, có thể nghiên cứu việc cho phép các doanh nghiệp BĐS trả tiền sử dụng đất bằng sản phẩm (đất sạch hoặc sản phẩm nhà ở).</p>\r\n<p style="text-align:left;">Đất đai là hàng hóa “siêu đặc biệt” thuộc độc quyền nhà nước. Về nguyên tắc quản lý vĩ mô, giá các hàng hóa thuộc độc quyền nhà nước phải do nhà nước quyết định và được bình ổn, không thể để thả nổi theo thị trường, ảnh hưởng dây chuyền đến giá các hàng hóa khác, gây bất ổn định vĩ mô.</p>\r\n<p style="text-align:left;">Việc quy định tiền sử dụng đất theo phần trăm khung giá đất nhà nước hoàn toàn phù hợp với các nguyên tắc, quy định của Luật giá 2012.</p>\r\n<p style="text-align:left;">Trong đợt khủng hoảng thị trường BĐS từ năm 2010 đến nay, các sản phẩm BĐS bị tồn đọng (chưa bán được, hoặc đã được bán nhưng chưa được sử dụng), chủ yếu là các loại sản phẩm căn hộ và nhà đất (biệt thự, nhà phố) cao cấp, diện tích lớn, vượt quá sức mua của đông đảo người dân. Trong khi đó, các loại sản phẩm giá trung bình, diện tích trung bình (affordable housing – nhà ở vừa túi tiền) thì người dân vẫn có nhu cầu rất lớn và có khả năng mua, nhưng nguồn cung các loại sản phẩm nhà ở này lại hạn chế. Hai lý do chính là:</p>\r\n<p style="text-align:left;">Việc giá đất tăng (trong đó có tiền sử dụng đất tăng do Nghị định 69 và các Thông tư 117, 93) đẩy các doanh nghiệp BĐS về phía các sản phẩm cao cấp dành cho các đối tượng người mua nhiều tiền (để dự án có thể đạt hiệu quả đầu tư mong đợi). Ở Việt Nam số người này vốn còn ít, khi nền kinh tế gặp khủng hoảng thì lại càng ít hơn nữa. Đây là nguyên nhân chính dẫn đến tình trạng tồn đọng hơn 100,000 căn hộ cao cấp (xây xong nhưng chưa bán được) trong cả nước.</p>\r\n<p style="text-align:left;">Tập trung phát triển nhà ở vừa tiền</p>\r\n<p style="text-align:left;">Các cơ chế, chính sách hiện hành của nhà nước không có sự hỗ trợ, khuyến khích cho các loại sản phẩm nhà ở vừa túi tiền. Thậm chí, đầu tư căn hộ thương mại vừa túi tiền còn khó khăn hơn cho doanh nghiệp BĐS trong việc xin duyệt các thông số quy hoạch (hạn chế mật độ dân số, hạn chế diện tích căn hộ thương mại tối thiểu 45 m2…).</p>\r\n<p style="text-align:left;">Để khuyến khích các doanh nghiệp BĐS đầu tư các dự án nhà ở vừa túi tiền, phù hợp với thực trạng nền kinh tế và thu nhập người dân Việt Nam, nhà nước nên ban hành một số chính sách hỗ trợ, khuyến khích đối với các doanh nghiệp BĐS và người mua nhà, cụ thể:</p>\r\n<p style="text-align:left;">Cho phép các doanh nghiệp BĐS có năng lực, kinh nghiệm đầu tư nhà ở vừa túi tiền (diện tích tối đa 70 m2/căn, bằng diện tích tối đa quy định cho nhà ở dành cho người thu nhập thấp trên quỹ đất 20% dành cho nhà ở xã hội (các dự án từ 10ha trở lên) trên dự án của mình và của các chủ đầu tư khác.</p>\r\n<p style="text-align:left;">Hiện nay thực trạng sử dụng quỹ đất 20% dành cho nhà ở xã hội khá lãng phí. Các doanh nghiệp BĐS không mặn mà với chương trình nhà ở cho người có thu nhập thấp, học sinh, sinh viên, công nhân… Đến nay, kết quả phát triển nhà ở xã hội rất khiêm tốn, cho thấy chương trình này cần được “xã hội hóa” một cách thực sự, mang lại hiệu quả đầu tư hợp lý các doanh nghiệp BĐS bằng các chính sách hỗ trợ thiết thực, trực tiếp của nhà nước cho các doanh nghiệp BĐS và người mua nhà thì mới có thể thành công.</p>\r\n<p style="text-align:left;">Khi cho phép các doanh nghiệp BĐS được quyền khai thác quỹ đất 20% để phát triển nhà ở vừa túi tiền, nhà nước có thể quy định cụ thể diện tích tối thiểu, diện tích tối đa, giá bán tối đa (theo địa bàn), đối tượng mua nhà, hình thức, mức độ hỗ trợ chủ đầu tư và người mua nhà… phù hợp với các chính sách an sinh xã hội của nhà nước</p>\r\n<p style="text-align:left;">- Miễn hoàn toàn hoặc tối thiểu giảm 50% tiền sử dụng đất cho các dự án căn hộ có diện tích trung bình tối đa 70 m2/căn.</p>\r\n<p style="text-align:left;">Nếu nhà nước giảm 50% tiền sử dụng đất cho chủ đầu tư dự án nhà ở vừa túi tiền thì 50% tiền sử dụng đất còn lại nhà nước có thể sử dụng để trợ giá trực tiếp đến tận người mua nhà theo các tiêu chí của nhà nước quy định và danh sách được chủ đầu tư duyệt (đối với các dự án nhà ở xã hội theo Nghị quyết 18 thì nhà nước miễn 100% tiền sử dụng đất).</p>\r\n<p style="text-align:left;">- Ưu tiên cung cấp các nguồn tín dụng lãi suất thấp cho cả chủ đầu tư và người mua nhà đối với các dự án nhà ở vừa túi tiền (diện tích tối đa 70 m2/căn).</p>\r\n<p style="text-align:left;">- Quy định trách nhiệm của chính quyền địa phương hỗ trợ mạnh mẽ các doanh nghiệp BĐS khi đầu tư các dự án nhà ở vừa túi tiền (diện tích tối đa 70 m2/căn) trong việc xét duyệt dự án, thông số quy hoạch, cấp phép xây dựng (kể cả các dự án mới và các dự án chuyển đổi từ căn hộ cao cấp, trung cấp sang căn hộ “vừa túi tiền”).</p>\r\n<p style="text-align:left;">Đặc biệt, áp dụng chung diện tích tối thiểu nhà ở thương mại và nhà ở xã hội.</p>\r\n<p style="text-align:left;">Hiện tại diện tích tối thiểu nhà ở thương mại là 45 m2/căn, nhà ở xã hội là 30 m2/căn. Nên quy định chung cho cả 2 loại nhà ở là 20 m2/căn. Mỹ, Nhật Bản, Trung Quốc, Ấn Độ và các nước khác vẫn cho phép xây dựng căn hộ hiện đại nhưng có diện tích nhỏ dành cho người độc thân, vợ chồng mới cưới…, Việt Nam ta không nhất thiết phải “chơi trội”. Về vấn đề này, trong một cuộc họp gần đây về vấn đề BĐS, Thủ tướng Chính phủ đã có ý kiến cần phải khuyến khích các dự án căn hộ nhỏ phù hợp với túi tiền của người dân, các địa phương không nên lấy lý do tắc đường, thiếu trường học, bệnh viện… để cản trở các dự án căn hộ diện tích nhỏ.</p>\r\n<p>                                                                                                                   Tiến sỹ Lương Hoài Nam</p>\r\n<p>                                                                                                                         Theo Vietnamnet</p>', 'go-ba-nut-that-pha-bang-cho-bds', 'Việc “phá băng” thị trường BĐS có thể thực hiện được thông qua việc điều chỉnh cơ chế tiền sử dụng đất và áp dụng các chính sách hữu hiệu khuyến khích các loại hình nhà ở vừa túi tiền, bao gồm cả các loại hình nhà ở xã hội như Quốc hội đã nêu.', 0, NULL, NULL),
(21, 'vi', 'Hà Nội ''nới'' điều kiện mua nhà thu nhập thấp', '<p><span style="font-size:11pt;"><strong>Đ</strong></span>ể số đông người thu nhập thấp có thể tiếp cận được với nhà thu nhập thấp, Sở Xây dựng đề nghị mở rộng đối tượng được mua cũng như mở rộng điều kiện được mua cho cả những người có diện tích nhà ở trung bình 10m2/người (trước đây là dưới 5m2/người)...</p>', '<p><strong>Để số đông người thu nhập thấp có thể tiếp cận được với nhà thu nhập thấp, Sở Xây dựng đề nghị mở rộng đối tượng được mua cũng như mở rộng điều kiện được mua cho cả những người có diện tích nhà ở trung bình 10m2/người (trước đây là dưới 5m2/người)...</strong></p>\r\n<p>Lãnh đạo Công ty cổ phần Xây dựng số 3 Hà Nội cho biết, đến thời điểm này, Công ty mới bán được 300 căn trên tổng số 420 căn hộ thu nhập thấp (TNT) tại khu đô thị mới Sài Đồng (quận Long Biên, Hà Nội).</p>\r\n<p>Cũng tại dự án này, Công ty cổ phần Đầu tư và Phát triển nhà Hà Nội số 5 hiện còn tồn đọng 60 căn. Theo các chủ đầu tư, với giá bán từ 10,6 đến 13 triệu đồng/1m2 (đã bao gồm VAT), dù đã chia thành nhiều đợt nộp tiền nhưng trong bối cảnh kinh tế khó khăn, đặc biệt là thị trường bất động sản biến động và giảm sâu như hiện nay, nhiều khách hàng buộc phải trả lại căn hộ vì không lo được tiền.</p>\r\n<p> </p>\r\n<p><span style="font-size:8pt;"><strong>     Nhà thu nhập thấp sẽ giúp nhiều người dân có cơ hội mua nhà. Ảnh minh họa</strong></span></p>\r\n<p> Phó Giám đốc Sở Xây dựng Nguyễn Quốc Tuấn cho biết, nhu cầu về nhà TNT của thành phố, kể cả trước mắt và lâu dài vẫn rất lớn và nếu chính sách đối với quỹ nhà này rộng mở hơn, hấp dẫn hơn với nhà đầu tư, đây sẽ là quỹ nhà đáp ứng nguyện vọng của đông đảo người dân.</p>\r\n<p> Trước mắt, để số đông người TNT có thể tiếp cận được với nhà TNT, Sở Xây dựng đề nghị mở rộng đối tượng được mua, rút ngắn thời gian được phép chuyển nhượng (từ 10 năm xuống còn 5 năm) và mở rộng điều kiện được mua cho cả những người có diện tích nhà ở trung bình 10m2/người (trước đây là dưới 5m2/người)...</p>\r\n<p> Cũng theo ông Tuấn, hiện nay, TP Hà Nội đã và đang triển khai đầu tư xây dựng 11 dự án nhà ở cho người TNT với gần 15.000 căn hộ .</p>\r\n<p>                                                                                                                                      <strong>Theo CAND</strong></p>\r\n<p> </p>', 'ha-noi-noi-dieu-kien-mua-nha-thu-nhap-thap', 'Để số đông người thu nhập thấp có thể tiếp cận được với nhà thu nhập thấp, Sở Xây dựng đề nghị mở rộng đối tượng được mua cũng như mở rộng điều kiện được mua cho cả những người có diện tích nhà ở trung bình 10m2/người (trước đây là dưới 5m2/người)...', 0, NULL, NULL);

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
) ENGINE=InnoDB  DEFAULT CHARSET=utf8 AUTO_INCREMENT=4 ;

--
-- Dumping data for table `hoiit_module_poll`
--

INSERT INTO `hoiit_module_poll` (`record_id`, `question`, `begin_date`, `end_date`, `record_order`, `create_date`, `enable`) VALUES
(2, 'Bạn biết đến Đất Xanh Hoàn Cầu qua nguồn nào', 1344297600, 1376697599, 1, '2012-08-08 02:06:57', 1),
(3, 'Bạn biết đến Đất Xanh Hoàn Cầu qua nguồn nào?', 1353024000, 1416614399, 2, '2012-11-24 06:35:23', 0);

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
) ENGINE=InnoDB  DEFAULT CHARSET=utf8 AUTO_INCREMENT=7 ;

--
-- Dumping data for table `hoiit_module_poll_rows`
--

INSERT INTO `hoiit_module_poll_rows` (`id`, `answer`, `url`, `num_vote`, `vote_id`) VALUES
(1, 'Người thân giới thiệu', '', 1, 2),
(2, 'Tờ rơi, banner ngoài trời', '', 1, 2),
(3, 'trang web khác', '', 3, 2),
(4, 'Tìm kiếm Google', '', 1, 2),
(5, 'Khác', '', 0, 2),
(6, 'Người thân giới thiệu', '', 0, 3);

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
) ENGINE=InnoDB DEFAULT CHARSET=utf8 AUTO_INCREMENT=1 ;

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
) ENGINE=InnoDB DEFAULT CHARSET=utf8 AUTO_INCREMENT=1 ;

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
) ENGINE=InnoDB  DEFAULT CHARSET=utf8 AUTO_INCREMENT=30 ;

--
-- Dumping data for table `hoiit_module_supports`
--

INSERT INTO `hoiit_module_supports` (`support_id`, `support_name`, `support_phone`, `support_value`, `support_order`, `support_type`) VALUES
(28, 'An', '0929001001', 'datxanhhoancau', 1, 'yahoo'),
(29, 'Nguyễn An', '0929001001', 'grouplaptrinh', 2, 'skype');

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
) ENGINE=InnoDB DEFAULT CHARSET=utf8 AUTO_INCREMENT=1 ;

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
) ENGINE=InnoDB DEFAULT CHARSET=utf8 AUTO_INCREMENT=1 ;

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
('left', 1, '1', 'jobs', '', '', 'menu_jobs'),
('footer', 1, '1', 'contact', '', '', 'counter_session'),
('left', 2, '1', 'contact', '', '', 'menu_projects'),
('footer', 1, '1', 'about', '', '', 'counter_session'),
('left', 2, '1', 'about', '', '', 'menu_about'),
('left', 3, '1', 'about', '', '', 'adv_left'),
('left', 1, '1', 'default', '', '', 'menu_news'),
('center', 2, '1', 'default', '', '', 'menu_new_index'),
('footer', 3, '1', 'default', '', '', 'counter_session'),
('left', 4, '1', 'default', '', '', 'adv_left'),
('right', 5, '1', 'default', '', '', 'news_new'),
('center', 1, '1', 'news', 'index', '', 'menu_new_index'),
('footer', 2, '1', 'news', '', '', 'counter_session'),
('left', 3, '1', 'news', '', '', 'menu_news'),
('left', 4, '1', 'news', '', '', 'adv_left'),
('left', 1, '1', 'document', '', '', 'menu_document'),
('footer', 2, '1', 'document', '', '', 'counter_session'),
('left', 3, '1', 'document', '', '', 'adv_left');

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
('keywords', 'Kinh doanh bất động sản, Tư vấn - môi giới bất động sản, tư vấn đầu tư, lập dự án đầu tư, phát triển dự án, căn hộ thành phố, đất nền dự án'),
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
('sotaichinh', 'Đất xanh hoàn cầu', '2012-07-26 13:47:49', NULL, 'Yii project', NULL, 0, 1);

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
('<document:(tai-lieu-chuyen-nganh)>', 'document/default/index', '', 5, 1, 'document', 'vi'),
('<document:(tai-lieu-chuyen-nganh)>/<cid:[-a-z0-9]+>', 'document/default/cats', '', 3, 0, 'document', 'vi'),
('<document:(tai-lieu-chuyen-nganh)>/<cid:[-a-z0-9]+>/<id:[-a-z0-9]+>', 'document/default/view', 'urlSuffix=>.html', 6, 0, 'document', 'vi'),
('<document:(tai-lieu-chuyen-nganh)>/<cid:[-a-z0-9]+>/trang/<page:\\d+>', 'document/default/cats', '', 2, 0, 'document', 'vi'),
('<document:(tai-lieu-chuyen-nganh)>/trang/<page:\\d+>', 'document/default/index', '', 4, 0, 'document', 'vi'),
('<jobs:(van-ban-moi-ban-hanh)>', 'jobs/default/index', '', 4, 1, 'jobs', 'vi'),
('<jobs:(van-ban-moi-ban-hanh)>/<cid:[-a-z0-9]+>', 'jobs/default/cats', '', 3, 0, 'jobs', 'vi'),
('<jobs:(van-ban-moi-ban-hanh)>/<cid:[-a-z0-9]+>/<id:[-a-z0-9]+>', 'jobs/default/view', 'urlSuffix=>.html', 0, 0, 'jobs', 'vi'),
('<jobs:(van-ban-moi-ban-hanh)>/<cid:[-a-z0-9]+>/trang/<page:\\d+>', 'jobs/default/cats', '', 2, 0, 'jobs', 'vi'),
('<jobs:(van-ban-moi-ban-hanh)>/trang/<page:\\d+>', 'jobs/default/index', '', 1, 0, 'jobs', 'vi'),
('<lang:[a-z]{2}>/about-us/<id:[-a-z0-9]+>', 'about/default/view', 'urlSuffix=>.html', 0, 0, 'about', 'en'),
('<news:(tin-tuc)>', 'news/default/index', '', 5, 1, 'news', 'vi'),
('<news:(tin-tuc)>/<cid:[-a-z0-9]+>', 'news/default/cats', '', 3, 0, 'news', 'vi'),
('<news:(tin-tuc)>/<cid:[-a-z0-9]+>/<id:[-a-z0-9]+>', 'news/default/view', 'urlSuffix=>.html', 6, 0, 'news', 'vi'),
('<news:(tin-tuc)>/<cid:[-a-z0-9]+>/trang/<page:\\d+>', 'news/default/cats', '', 2, 0, 'news', 'vi'),
('<news:(tin-tuc)>/trang/<page:\\d+>', 'news/default/index', '', 4, 0, 'news', 'vi'),
('<products:(san-pham)>', 'products/default/index', '', 3, 1, 'products', 'vi'),
('<products:(san-pham)>/<cid:[-a-z0-9]+>', 'products/default/cats', '', 2, 0, 'products', 'vi'),
('<products:(san-pham)>/<cid:[-a-z0-9]+>/<id:[-a-z0-9]+>', 'products/default/view', 'urlSuffix=>.html', 0, 0, 'products', 'vi'),
('<products:(san-pham)>/<cid:[-a-z0-9]+>/trang/<page:\\d+>', 'products/default/cats', '', 1, 0, 'products', 'vi'),
('<projects:(thanh-tuu-dinh-huong)>', 'projects/default/index', '', 4, 1, 'projects', 'vi'),
('<projects:(thanh-tuu-dinh-huong)>/<cid:[-a-z0-9]+>', 'projects/default/cats', '', 2, 0, 'projects', 'vi'),
('<projects:(thanh-tuu-dinh-huong)>/<cid:[-a-z0-9]+>/<id:[-a-z0-9]+>', 'projects/default/view', 'urlSuffix=>.html', 5, 0, 'projects', 'vi'),
('<projects:(thanh-tuu-dinh-huong)>/<cid:[-a-z0-9]+>/trang/<page:\\d+>', 'projects/default/cats', '', 1, 0, 'projects', 'vi'),
('<projects:(thanh-tuu-dinh-huong)>/trang/<page:\\d+>', 'projects/default/index', '', 3, 1, 'projects', 'vi'),
('about-us', 'about/default/index', '', 2, 1, 'about', 'en'),
('contact', 'contact/default/index', '', 0, 1, 'contact', 'en'),
('gioi-thieu', 'about/default/index', '', 2, 1, 'about', 'vi'),
('gioi-thieu/<id:[-a-z0-9]+>', 'about/default/view', 'urlSuffix=>.html', 1, 0, 'about', 'vi'),
('home-page', 'default/default/index', NULL, NULL, 1, 'default', 'en'),
('lien-he', 'contact/default/index', '', 1, 1, 'contact', 'vi'),
('products', 'products/default/index', '', 4, 1, 'products', 'en'),
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
-- Constraints for table `hoiit_module_document`
--
ALTER TABLE `hoiit_module_document`
  ADD CONSTRAINT `fk_hoiit_module_docu_hoiit_module_docu_cat_1` FOREIGN KEY (`hoiit_module_item_cat_cat_id`) REFERENCES `hoiit_module_document_cat` (`cat_id`) ON DELETE NO ACTION ON UPDATE NO ACTION;

--
-- Constraints for table `hoiit_module_document_cat_languages`
--
ALTER TABLE `hoiit_module_document_cat_languages`
  ADD CONSTRAINT `fk_hoiit_module_docu_cat__has_hoiit_languages_hoiit_languages1` FOREIGN KEY (`language_id`) REFERENCES `hoiit_languages` (`language_id`) ON DELETE NO ACTION ON UPDATE NO ACTION,
  ADD CONSTRAINT `fk_hoiit_module_docu_cat__has_hoiit_languages_hoiit_module_ne1` FOREIGN KEY (`cat_id`) REFERENCES `hoiit_module_document_cat` (`cat_id`) ON DELETE NO ACTION ON UPDATE NO ACTION;

--
-- Constraints for table `hoiit_module_document_languages`
--
ALTER TABLE `hoiit_module_document_languages`
  ADD CONSTRAINT `fk_hoiit_module_docu_has_hoiit_languages_hoiit_languages1` FOREIGN KEY (`language_id`) REFERENCES `hoiit_languages` (`language_id`) ON DELETE NO ACTION ON UPDATE NO ACTION,
  ADD CONSTRAINT `fk_hoiit_module_docu_has_hoiit_languages_hoiit_module_docu1` FOREIGN KEY (`record_id`) REFERENCES `hoiit_module_document` (`record_id`) ON DELETE NO ACTION ON UPDATE NO ACTION;

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
