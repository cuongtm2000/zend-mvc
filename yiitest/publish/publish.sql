-- phpMyAdmin SQL Dump
-- version 3.4.5
-- http://www.phpmyadmin.net
--
-- Host: localhost
-- Generation Time: Sep 04, 2012 at 04:47 AM
-- Server version: 5.5.16
-- PHP Version: 5.3.8

SET SQL_MODE="NO_AUTO_VALUE_ON_ZERO";
SET time_zone = "+00:00";


/*!40101 SET @OLD_CHARACTER_SET_CLIENT=@@CHARACTER_SET_CLIENT */;
/*!40101 SET @OLD_CHARACTER_SET_RESULTS=@@CHARACTER_SET_RESULTS */;
/*!40101 SET @OLD_COLLATION_CONNECTION=@@COLLATION_CONNECTION */;
/*!40101 SET NAMES utf8 */;

--
-- Database: `publish`
--

-- --------------------------------------------------------

--
-- Table structure for table `dos_bussiness`
--

CREATE TABLE IF NOT EXISTS `dos_bussiness` (
  `bussiness_id` varchar(100) NOT NULL,
  `bussiness_name` varchar(100) NOT NULL,
  `cat_parent_id` varchar(100) NOT NULL,
  PRIMARY KEY (`bussiness_id`)
) ENGINE=InnoDB DEFAULT CHARSET=utf8;

--
-- Dumping data for table `dos_bussiness`
--

INSERT INTO `dos_bussiness` (`bussiness_id`, `bussiness_name`, `cat_parent_id`) VALUES
('am-thuc-drink', 'Ẩm thực - Đồ uống', 'root'),
('bds-kien-truc-xay-dung', 'BĐS - kiến trúc - xây dựng', 'root'),
('co-khi-may-moc-thiet-bi', 'Cơ khí - Máy móc - Thiết bị', 'root'),
('cong-nghe-thong-tin-vien-thong', 'Công nghệ thông tin - viễn thông', 'root'),
('du-lich', 'Du lịch', 'root'),
('giao-duc-dao-tao', 'Giáo dục - đào tạo', 'root'),
('hoa-tuoi', 'Hoa tươi', 'root'),
('luat-ke-toan', 'Luật - kế toán', 'root'),
('nha-hang-cafe', 'Nhà hàng - Cafe', 'root'),
('noi-that-ngoai-that', 'Nội thất - Ngoại thất', 'root'),
('tham-my-vien', 'Thẩm mỹ viện', 'root'),
('thoi-trang', 'Thời trang', 'root'),
('tranh-anh-qua-luu-niem', 'Tranh ảnh - quà lưu niệm', 'root');

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
('advs_left_height', 287, '', '200612'),
('advs_left_width', 215, '', '200612'),
('banner_height', 281, '', '200612'),
('banner_width', 723, '', '200612'),
('logo_height', 53, '', '200612'),
('logo_width', 242, '', '200612'),
('max_image_height', 920, '', '200612'),
('max_image_width', 680, '', '200612'),
('news_cat_height', 107, '', '200612'),
('news_cat_width', 143, '', '200612'),
('news_height_thumb', 107, '', '200612'),
('news_num_paging_cat', 10, '', '200612'),
('news_num_paging_hot', 6, '', '200612'),
('news_num_paging_index', 10, '', '200612'),
('news_num_paging_new', 6, '', '200612'),
('news_width_thumb', 143, '', '200612'),
('products_cat_height', 160, '', '200612'),
('products_cat_width', 160, '', '200612'),
('products_height', 920, '', '200612'),
('products_height_thumb', 260, '', '200612'),
('products_num_paging_cat', 20, '', '200612'),
('products_num_paging_hot', 20, '', '200612'),
('products_num_paging_new', 20, '', '200612'),
('products_num_paging_other', 4, '', '200612'),
('products_width', 690, '', '200612'),
('products_width_thumb', 160, '', '200612'),
('services_height', 100, '', '200612'),
('services_width', 143, '', '200612'),
('video_height_thumb', 160, '', '200612'),
('video_num_paging_cat', 8, '', '200612'),
('video_num_paging_index', 8, '', '200612'),
('video_width_thumb', 160, '', '200612');

-- --------------------------------------------------------

--
-- Table structure for table `dos_features`
--

CREATE TABLE IF NOT EXISTS `dos_features` (
  `feature_id` varchar(45) NOT NULL,
  `feature_name` varchar(45) NOT NULL,
  PRIMARY KEY (`feature_id`)
) ENGINE=InnoDB DEFAULT CHARSET=utf8;

--
-- Dumping data for table `dos_features`
--

INSERT INTO `dos_features` (`feature_id`, `feature_name`) VALUES
('gioi-thieu-dich-vu', 'Giới thiệu dịch vụ'),
('gioi-thieu-san-pham', 'Giới thiệu sản phẩm');

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
('addcart', 'Đặt hàng', 'Add to Cart', 0),
('address1', 'Địa chỉ công ty', 'Company address', 0),
('address2', 'Địa chỉ chi nhánh', 'Branch Address', 0),
('add_new', 'Thêm mới', 'Add new', 1),
('add_row', 'Thêm dòng', 'Add row', 1),
('advs', 'Quảng cáo', 'Adv', 0),
('banner', 'Logo &amp; Banner', 'Logo &amp; Banner', 0),
('cancel', 'Hủy bỏ', 'Cancel', 1),
('cart', 'Giỏ hàng', 'Cart', 0),
('cat_parent', 'Phân loại', 'Category', 1),
('cat_title', 'Danh mục', 'Category', 0),
('cat_titleen', 'Danh mục En', 'Category', 1),
('company_name', 'Công ty cổ phần Thương Hội', 'Thuong Hoi JSC', 0),
('company_name_footer', 'Công ty cổ phần Thương Hội', 'Thuong Hoi JSC', 0),
('company_phone', 'Phone: 0929001001 (An)', 'Phone: 0929001001 (An)', 0),
('contact', 'Liên hệ', 'Contact', 0),
('contactSuccess', 'Cảm ơn bạn đã liên hệ với chúng tôi. Nhân viên chúng tôi sẽ liên hệ với bạn trong thời gian sớm nhất.', 'Thank you for contacting us. We will respond to you as soon as possible.', 0),
('contact_msg', 'Quý khách có thể liên hệ với chúng tôi bằng cách điền đầy đủ thông tin vào mẫu sau:', 'Complete the form below to contact us:', 0),
('content', 'Nội dung', 'Content', 1),
('contenten', 'Nội dung En', 'Content En', 1),
('copyright', 'Copyright © 2012 by Dos.vn', 'Copyright © 2012 by Dos.vn', 0),
('counter', 'Thống kê truy cập', 'Online counter', 0),
('create_date', 'Ngày tạo', 'Create date', 1),
('default', 'Trang chủ', 'Home page', 0),
('delete', 'Xóa', 'Delete', 1),
('description', 'Mô tả', 'Decription', 0),
('descriptionen', 'Mô tả En', 'Description', 1),
('detail', 'Chi tiết', 'Detail', 0),
('developed', 'Phát triển bởi', 'Developed by', 0),
('edit', 'Chỉnh sửa', 'Edit', 1),
('en', 'English', 'English', 0),
('hidden', 'Ẩn', 'Hidden', 1),
('hot', 'Nổi bật', 'Hot', 0),
('new', 'Mới', 'New', 0),
('news', 'Tin tức & sự kiện', 'News & Events', 0),
('normal', 'Bình thường', 'Normal', 1),
('no_record', 'Không tồn tại mẫu tin', 'No record', 0),
('order', 'Thứ tự', 'Order', 1),
('other', 'Khác', 'Other', 0),
('picture', 'Hình ảnh', 'Picture', 1),
('pic_desc', 'Hình mô tả', 'Picture decription', 0),
('pic_full', 'Hình lớn', 'Picture large', 1),
('pic_thumb', 'Hình thu nhỏ', 'Picture thumbnail', 1),
('preview', 'Giới thiệu sơ lược', 'Preview', 1),
('previewen', 'Giới thiệu sơ lược En', 'Preview', 1),
('products', 'Sản phẩm', 'Products', 0),
('read_more', 'Xem tiếp', 'Read more', 0),
('remove_pic', 'Xóa ảnh này', 'Delete this picture', 1),
('services', 'Dịch vụ', 'Services', 0),
('show', 'Hiển thị', 'Show', 1),
('sort', 'Sắp xếp', 'Sort', 1),
('supports', 'Hỗ trợ trực tuyến', 'Online support', 0),
('synchronous', 'Đồng bộ', 'Synchronous', 1),
('tag', 'Liên kết', 'Link', 1),
('tagen', 'Liên kết En', 'Link', 1),
('title', 'Tiêu đề', 'Title', 1),
('titleen', 'Tiêu đề En', 'Title En', 1),
('update', 'Cập nhật', 'Update', 1),
('vi', 'Tiếng Việt', 'Tiếng Việt', 0),
('video', 'Video', 'Video', 0),
('views', 'Lượt xem', 'Views', 1);

-- --------------------------------------------------------

--
-- Table structure for table `dos_loadfiles`
--

CREATE TABLE IF NOT EXISTS `dos_loadfiles` (
  `dos_templates_template` varchar(6) NOT NULL,
  `dos_modules_module_id` varchar(20) NOT NULL,
  `loadfiles` varchar(200) NOT NULL,
  `typefile` varchar(45) NOT NULL,
  PRIMARY KEY (`dos_templates_template`,`dos_modules_module_id`,`typefile`),
  KEY `fk_dos_templates_has_dos_modules1_dos_modules1` (`dos_modules_module_id`),
  KEY `fk_dos_templates_has_dos_modules1_dos_templates1` (`dos_templates_template`)
) ENGINE=InnoDB DEFAULT CHARSET=utf8;

--
-- Dumping data for table `dos_loadfiles`
--

INSERT INTO `dos_loadfiles` (`dos_templates_template`, `dos_modules_module_id`, `loadfiles`, `typefile`) VALUES
('200612', 'products', 'scroll.css|jquery.fancybox.css', 'css'),
('200612', 'products', 'jcarousellite_1.0.1.js|scroller.js|jquery.fancybox.js|jquery.scroll-1.4.2-min.js|jquery.serialScroll-1.2.2-min.js|product.js', 'javascript'),
('200612', 'video', 'prettyPhoto.css', 'css'),
('200612', 'video', 'jquery.prettyPhoto.js', 'javascript');

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
('advs', 'advs', 'Danh sách', 8, 0),
('banner', 'banner', 'Danh sách', 9, 0),
('contact', 'contact', 'Danh sách', 7, 1),
('default', '', '', 1, 1),
('news', 'news/cats|news', 'Danh mục|Danh sách', 5, 1),
('products', 'products/cats|products', 'Danh mục|Danh sách', 3, 1),
('services', 'services', 'Danh sách', 4, 1),
('supports', 'supports', 'Danh sách', 10, 0),
('video', 'video/cats|video', 'Danh mục|Danh sách', 6, 1);

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
('about', 'isuzubienhoa'),
('advs', 'isuzubienhoa'),
('banner', 'isuzubienhoa'),
('contact', 'isuzubienhoa'),
('news', 'isuzubienhoa'),
('products', 'isuzubienhoa'),
('services', 'isuzubienhoa'),
('supports', 'isuzubienhoa'),
('video', 'isuzubienhoa');

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
  `tagen` varchar(100) DEFAULT NULL,
  `description` varchar(250) DEFAULT NULL,
  `descriptionen` varchar(250) DEFAULT NULL,
  `activated` tinyint(1) NOT NULL DEFAULT '1',
  `dos_usernames_username` varchar(45) NOT NULL,
  PRIMARY KEY (`record_id`),
  KEY `fk_dos_module_abouts_dos_usernames1` (`dos_usernames_username`),
  KEY `tag` (`tag`)
) ENGINE=InnoDB DEFAULT CHARSET=utf8 AUTO_INCREMENT=1 ;

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
) ENGINE=InnoDB  DEFAULT CHARSET=utf8 AUTO_INCREMENT=662 ;

--
-- Dumping data for table `dos_module_advs`
--

INSERT INTO `dos_module_advs` (`record_id`, `title`, `titleen`, `pic_thumb`, `url`, `create_date`, `start_date`, `end_date`, `hits`, `record_order`, `position`, `type`, `enable`, `dos_usernames_username`) VALUES
(657, 'Quảng cáo', '', 'quang-cao.jpeg', 'http://dos.vn', '2012-09-01 02:15:57', '2012-08-31 16:00:00', '2012-10-30 16:00:00', 0, 2, 'left', '_bank', 0, 'isuzubienhoa'),
(658, 'Quảng cáo 1', '', 'quang-cao-1.jpg', 'http://dos.vn', '2012-09-01 02:23:30', '2012-08-31 16:00:00', '2012-10-30 16:00:00', 0, 1, 'left', '_bank', 1, 'isuzubienhoa'),
(659, 'Quảng cáo 2', '', 'quang-cao-2.jpg', 'http://dos.vn', '2012-09-01 02:23:49', '2012-08-31 16:00:00', '2012-10-30 16:00:00', 0, 3, 'left', '_bank', 1, 'isuzubienhoa'),
(660, 'Quảng cáo 3', '', 'quang-cao-3.jpg', 'http://dos.vn', '2012-09-01 02:24:10', '2012-08-31 16:00:00', '2012-10-30 16:00:00', 0, 4, 'left', '_bank', 1, 'isuzubienhoa'),
(661, 'Quảng cáo 4', '', 'quang-cao-4.jpg', 'http://dos.vn', '2012-09-01 02:30:31', '2012-08-31 16:00:00', '2012-10-30 16:00:00', 0, 5, 'left', '_bank', 1, 'isuzubienhoa');

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
) ENGINE=InnoDB  DEFAULT CHARSET=utf8 AUTO_INCREMENT=2943 ;

--
-- Dumping data for table `dos_module_banners`
--

INSERT INTO `dos_module_banners` (`banner_id`, `banner_date`, `banner_name`, `banner_url`, `banner_link`, `banner_order`, `banner_type`, `position`, `enable`, `dos_usernames_username`) VALUES
(2928, '2012-09-01 00:59:30', 'logo-isuzubienhoa', 'logo-isuzubienhoa.png', '', 1, 'logo', 'default', 1, 'isuzubienhoa'),
(2929, '2012-09-01 02:05:40', 'Banner 1', 'banner-1.jpg', '', 2, 'banners', 'default', 1, 'isuzubienhoa'),
(2930, '2012-09-01 02:06:00', 'Banner 2', 'banner-2.jpg', '', 3, 'banners', 'default', 1, 'isuzubienhoa'),
(2931, '2012-09-01 02:06:24', 'Banner 3', 'banner-3.jpg', '', 4, 'banners', 'products', 1, 'isuzubienhoa'),
(2932, '2012-09-01 02:06:40', 'Banner 4', 'banner-4.jpg', '', 5, 'banners', 'about', 1, 'isuzubienhoa'),
(2933, '2012-09-01 02:07:02', 'Banner 5', 'banner-5.jpg', '', 6, 'banners', 'services', 1, 'isuzubienhoa'),
(2934, '2012-09-01 02:07:19', 'Banner 6', 'banner-6.jpg', '', 7, 'banners', 'products', 1, 'isuzubienhoa'),
(2935, '2012-09-01 02:07:42', 'Banner 7', 'banner-7.jpg', '', 8, 'banners', 'news', 1, 'isuzubienhoa'),
(2936, '2012-09-01 02:08:02', 'Banner 8', 'banner-8.jpg', '', 9, 'banners', 'video', 1, 'isuzubienhoa'),
(2937, '2012-09-01 02:08:19', 'Banner 9', 'banner-9.jpg', '', 10, 'banners', 'about', 1, 'isuzubienhoa'),
(2938, '2012-09-01 02:08:36', 'Banner 10', 'banner-10.jpg', '', 11, 'banners', 'contact', 1, 'isuzubienhoa'),
(2939, '2012-09-01 02:09:08', 'Banner 11', 'banner-11.jpg', '', 12, 'banners', 'default', 1, 'isuzubienhoa'),
(2940, '2012-09-01 02:09:26', 'Banner 12', 'banner-12.jpg', '', 13, 'banners', 'products', 1, 'isuzubienhoa'),
(2941, '2012-09-01 02:10:04', 'Banner 13', 'banner-13.jpg', '', 14, 'banners', 'services', 1, 'isuzubienhoa'),
(2942, '2012-09-01 02:24:44', 'Banner 14', 'banner-14.jpg', '', 15, 'banners', 'default', 0, 'isuzubienhoa');

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
  `tagen` varchar(100) DEFAULT NULL,
  `description` varchar(250) DEFAULT NULL,
  `descriptionen` varchar(250) DEFAULT NULL,
  `enable` varchar(45) NOT NULL DEFAULT '1',
  `dos_usernames_username` varchar(45) NOT NULL,
  PRIMARY KEY (`record_id`),
  KEY `fk_dos_module_contacts_dos_usernames1` (`dos_usernames_username`)
) ENGINE=InnoDB DEFAULT CHARSET=utf8 AUTO_INCREMENT=1 ;

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
  `title` varchar(100) DEFAULT NULL,
  `titleen` varchar(100) DEFAULT NULL,
  `description` varchar(250) DEFAULT NULL,
  `descriptionen` varchar(250) DEFAULT NULL,
  `dos_usernames_username` varchar(45) NOT NULL,
  KEY `fk_dos_module_menus_dos_usernames1` (`dos_usernames_username`)
) ENGINE=InnoDB DEFAULT CHARSET=utf8;

--
-- Dumping data for table `dos_module_menus`
--

INSERT INTO `dos_module_menus` (`menu`, `menuen`, `url`, `target`, `position`, `title`, `titleen`, `description`, `descriptionen`, `dos_usernames_username`) VALUES
('Trang chủ', '', 'default', '', 1, '', '', '', '', 'isuzubienhoa'),
('Giới thiệu', '', 'about', '', 2, '', '', '', '', 'isuzubienhoa'),
('Sản phẩm', '', 'products', '', 3, '', '', '', '', 'isuzubienhoa'),
('Khuyến mãi', '', 'services', '', 4, '', '', '', '', 'isuzubienhoa'),
('Tin tức & sự kiện', '', 'news', '', 5, '', '', '', '', 'isuzubienhoa'),
('Video', '', 'video', '', 6, '', '', '', '', 'isuzubienhoa'),
('Liên hệ', '', 'contact', '', 7, '', '', '', '', 'isuzubienhoa');

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
  `content` text NOT NULL,
  `contenten` text,
  `tag` varchar(100) NOT NULL,
  `tagen` varchar(100) DEFAULT NULL,
  `description` varchar(250) DEFAULT NULL,
  `descriptionen` varchar(250) DEFAULT NULL,
  `hits` int(11) NOT NULL DEFAULT '0',
  `record_order` int(11) NOT NULL DEFAULT '1',
  `hot` tinyint(1) NOT NULL DEFAULT '0',
  `extra_field1` varchar(100) DEFAULT NULL,
  `extra_field2` varchar(100) DEFAULT NULL,
  `enable` tinyint(1) NOT NULL DEFAULT '1',
  `dos_module_item_cat_cat_id` int(11) NOT NULL,
  PRIMARY KEY (`record_id`),
  KEY `fk_dos_module_news_dos_module_news_cat1` (`dos_module_item_cat_cat_id`)
) ENGINE=InnoDB  DEFAULT CHARSET=utf8 AUTO_INCREMENT=476 ;

--
-- Dumping data for table `dos_module_news`
--

INSERT INTO `dos_module_news` (`record_id`, `title`, `titleen`, `postdate`, `pic_thumb`, `preview`, `previewen`, `content`, `contenten`, `tag`, `tagen`, `description`, `descriptionen`, `hits`, `record_order`, `hot`, `extra_field1`, `extra_field2`, `enable`, `dos_module_item_cat_cat_id`) VALUES
(470, 'Xe Isuzu D-MAX pickup mới giá từ 14.499 bảng Anh', '', '2012-09-01 02:36:17', 'xe-isuzu-d-max-pickup-moi-gia-tu-14-499-bang-anh.jpg', '<p style="text-align:justify;">Thế hệ mới của mẫu xe tải Isuzu D-MAX pickup sẽ có giá từ 14.499 bảng Anh tới 21.499 bảng khi nó được tung ra bán tại thị trường Anh trong tháng 6 này, sau khi nó được giới thiệu trước toàn thế giới ở triển lãm xe thương mại 2012 diễn ra ở Birmingham vào ngày 24/4 năm nay</p>', '', '<p style="text-align:justify;"><strong><img style="margin:5px 10px;float:left;" src="/public/userfiles/image/isuzubienhoa/image/tt.jpg" alt="" width="314" height="235" />Thế hệ mới của mẫu xe tải Isuzu D-MAX pickup sẽ có giá từ 14.499 bảng Anh tới 21.499 bảng khi nó được tung ra bán tại thị trường Anh trong tháng 6 này, sau khi nó được giới thiệu trước toàn thế giới ở triển lãm xe thương mại 2012 diễn ra ở Birmingham vào ngày 24/4 năm nay</strong></p>\n<p style="text-align:justify;">Mẫu D-MAX đời 2012 trên, gần giống với mẫu Chevrolet Colorado mới, lần đầu tiên có bốn phiên bản ở Anh. Cụ thể, phiên bản tiêu chuẩn có giá từ 14.499 bảng, được trang bị các thiết bị tiêu chuẩn như điều hòa không khí, đèn chạy ban ngày, cửa sổ điều khiển điện, có túi khí đằng trước, bên cạnh.</p>\n<p style="text-align:justify;">Cao hơn một chút là phiên bản Eiger có giá từ 18.499 bảng, được bổ sung thêm đèn pha kiểu máy chiếu, kết nối Bluetooth và iPod, bánh xe 16 inch làm bằng hợp kim, giảm chấn cùng màu thân xe trong khi phiên bản Yukon có giá 18.999 bảng, có vô lăng bọc da trên đó có hệ thống điều khiển hành trình và âm thanh, hệ thống âm thanh sáu loa, bánh xe 17 inch.</p>\n<p style="text-align:justify;">Phiên bản cao cấp Utah có giá 21.499 bảng. Phiên bản này có thêm nội thất bọc da, ghế ngồi trước có sưởi, điều hòa không khí tự động, bộ cảm biến đỗ sau. Phiên bản này sử dụng số tự động.</p>\n<p style="text-align:justify;">Tại Anh, mẫu D-MAX mới trên sử dụng động cơ diesel twin-turbo 2.5, hộp số sàn sáu cấp hoặc hộp số tự động năm cấp. Động cơ tuân thủ theo tiêu chuẩn khí thải Euro5 bốn xylanh này có công suất 161 sức ngựa và mômen xoắn cực đại 400 Nm tại 1.400 vòng/phút.</p>\n<p style="text-align:justify;">Ngoài ra, mẫu xe này còn trang bị hệ thống chuyển cầu điện tử “shift-on-the-fly” mới, cho phép người lái có thể điều chỉnh sang trạng thái truyền động hai bánh hoặc bốn bánh trong khi đang đi với tận tốc lên tới 96 km/giờ.</p>\n<p style="text-align:justify;">Mẫu D-MAX này có khả năng kéo ba tấn và khả năng tải là 1.000 kg.</p>\n<p style="text-align:justify;"><strong> </strong></p>', '', 'xe-isuzu-d-max-pickup-moi-gia-tu-14499-bang-anh', '', '', '', 0, 4, 0, '', '', 1, 355),
(471, 'Những loại ôtô được hưởng lệ phí trước bạ 2%', '', '2012-09-01 02:38:09', 'nhung-loai-oto-duoc-huong-le-phi-truoc-ba-2.JPG', '<p style="text-align:justify;">Bộ Tài chính cho biết, căn cứ theo Nghị định số 45/2011/NĐ-CP ngày 17/6/2011 của Chính phủ về lệ phí trước bạ quy định, ô tô, rơ moóc hoặc sơ mi rơ moóc được kéo bởi ô tô có mức thu là 2%.</p>', '', '<p style="text-align:justify;"><strong><img style="float:left;margin:5px 10px;" src="/public/userfiles/image/isuzubienhoa/image/tt2.JPG" alt="" width="300" height="204" />Bộ Tài chính cho biết, căn cứ theo Nghị định số 45/2011/NĐ-CP ngày 17/6/2011 của Chính phủ về lệ phí trước bạ quy định, ô tô, rơ moóc hoặc sơ mi rơ moóc được kéo bởi ô tô có mức thu là 2%.</strong></p>\n<p style="text-align:justify;">Bộ Tài chính đã có Công văn số 2824/BTC-TCT giải đáp chính sách về lệ phí trước bạ để các cục thuế địa phương xác định lại cho đúng tỷ lệ lệ phí trước bạ đối với xe ô tô.</p>\n<p style="text-align:justify;">Đối với ô tô chở người dưới 10 chỗ ngồi (kể cả lái xe) nộp lệ phí trước bạ theo mức từ 10% đến 20%. Căn cứ quy định mức thu lệ phí trước bạ này, Hội đồng nhân dân tỉnh, thành phố trực thuộc Trung ương quyết định cụ thể mức thu lệ phí trước bạ đối với ô tô chở người dưới 10 chỗ ngồi (kể cả lái xe) cho phù hợp với điều kiện thực tế của địa phương.</p>\n<p style="text-align:justify;">Theo Thông tư 124/2011/TT-BTC ngày 31/8/2011 của Bộ Tài chính về lệ phí trước bạ quy định tỷ lệ (%) lệ phí trước bạ thì ô tô, rơ moóc hoặc sơ mi rơ moóc được kéo bởi ô tô là 2%. Riêng đối với ô tô chở người dưới 10 chỗ (kể cả lái xe) bao gồm cả trường hợp ô tô bán tải vừa chở người, vừa chở hàng thì nộp lệ phí trước bạ theo tỷ lệ từ 10% đến 20%. Và cũng căn cứ quy định này, Hội đồng nhân dân tỉnh, thành phố trực thuộc Trung ương quyết định cụ thể mức thu lệ phí trước bạ đối với ô tô chở người dưới 10 chỗ ngồi (kể cả lái xe) cho phù hợp với điều kiện thực tế của địa phương.</p>\n<p style="text-align:justify;">Như vậy, theo Thông tư 124/2011/TT-BTC thì các loại ô tô thuộc diện chịu lệ phí trước bạ từ 10% đến 20% bao gồm: Ô tô chở người, ô tô Pick up chở người và ô tô Van chở người có số chỗ ngồi bao gồm cả lái xe từ 4 chỗ đến dưới 10 chỗ ngồi.</p>\n<p style="text-align:justify;">Trường hợp ô tô của các tổ chức, cá nhân không phải là xe ô tô chở người, ô tô Pick up chở người và ô tô Van chở người có số chỗ ngồi bao gồm cả lái xe từ 4 chỗ đến dưới 10 chỗ ngồi nhưng đã nộp lệ phí trước bạ theo tỷ lệ 10% đến 20% thì được hoàn lại số tiền đã nộp thừa theo quy định.</p>\n<p style="text-align:justify;">Bộ Tài chính đề nghị các cục thuế địa phương căn cứ đơn yêu cầu và hồ sơ cụ thể của từng trường hợp để làm thủ tục hoàn lại số tiền nộp thừa của các tổ chức, cá nhân theo đúng quy định của pháp luật.</p>\n<p style="text-align:justify;"><strong> </strong></p>', '', 'nhung-loai-oto-duoc-huong-le-phi-truoc-ba-2', '', '', '', 0, 1, 0, '', '', 1, 355),
(472, 'Ô tô bay đầu tiên thế giới... giá 26 tỷ đồng', '', '2012-09-01 02:39:38', '-to-bay-dau-tien-the-gioi----gia-26-ty-dong.JPG', '<p style="text-align:justify;">Với chiếc Aerocar, chỉ trong 10 phút, người lái có thể thực hiện ước mơ chạy trên đường chuyển sang bay trên không, nhưng để "tậu" nó thì giá không rẻ chút nào, khoảng 800.000 bảng Anh (tương đương 26 tỷ đồng).</p>', '', '<p style="text-align:justify;"><strong><img style="float:right;margin:5px 10px;" src="/public/userfiles/image/isuzubienhoa/image/tt3.JPG" alt="" width="300" height="191" />Với chiếc Aerocar, chỉ trong 10 phút, người lái có thể thực hiện ước mơ chạy trên đường chuyển sang bay trên không, nhưng để "tậu" nó thì giá không rẻ chút nào, khoảng 800.000 bảng Anh (tương đương 26 tỷ đồng).</strong></p>\n<p style="text-align:justify;">Aerocar là 1 trong 6 chiếc ô tô bay từng được sản xuất bởi nhà phát minh Moulton “Molt” Taylor. Ông lần đầu tiên thiết kế loại xe này vào năm 1946 và 3 năm sau thì hoàn thành, là chiếc xe bay đầu tiên trên thế giới có thể đạt tốc độ 60 km/h trên mặt đất và 110 km/h ở độ cao 12.000 m.</p>\n<p>Vào tháng 11/1946, Aerocar không thể cất cánh trong lần bay thử nghiệm đầu tiên. Tuy nhiên, chỉ một tháng sau đó, sau khi sửa đổi một số chi tiết, xe có thể bay lượn trên bầu trời Longview, Washington (Mỹ) và thế là, Moulton “Molt” Taylor bắt đầu nhận được nguồn tài trợ từ các nhà đầu tư quan tâm.</p>\n<p>Ba mô hình ô tô bay đầu tiên của nhà phát minh Taylor đã được bán với giá 15.800 bảng Anh. Nhưng để sản xuất hàng loạt, hãng đã thất bại vì không nhận được đủ số đơn đặt hàng - ít nhất phải 500 đơn.</p>\n<p>"Chiếc Aerocar do Molt Taylor chế tạo là chiếc xe bay đầu tiên được chứng nhận bởi Cục Hàng không Liên bang Mỹ”, Ron Twellman, người phụ trách tại Bảo tàng EAA AirVenture (Mỹ) cho biết.</p>\n<p style="text-align:justify;"><strong> </strong></p>', '', 'o-to-bay-dau-tien-the-gioi-gia-26-ty-dong', '', '', '', 0, 3, 0, '', '', 1, 356),
(473, 'Hành trình siêu xe 2012: Sau hoãn là...hủy !', '', '2012-09-01 02:43:00', 'hanh-trinh-sieu-xe-2012-sau-hoan-la---huy-.jpg', '<p style="text-align:justify;">Một thành viên ban tổ chức cho biết, Hành trình siêu xe 2012 (Car &amp; Passion) tiếp tục hoãn lần 2 vô hạn định. Mặc dù chưa có thông tin chính thức nhưng nhiều nguồn tin cho hay chương trình năm nay bị hủy do khó khăn kinh tế.</p>', '', '<p style="text-align:justify;"> </p>\n<p style="text-align:justify;"><strong>Một thành viên ban tổ chức cho biết, Hành trình siêu xe 2012 (Car &amp; Passion) tiếp tục hoãn lần 2 vô hạn định. Mặc dù chưa có thông tin chính thức nhưng nhiều nguồn tin cho hay chương trình năm nay bị hủy do khó khăn kinh tế.</strong></p>\n<p style="text-align:justify;">Như vậy, sau hai lần trì hoãn, thời gian của năm 2012 chỉ còn 4 tháng phía trước mà chưa có lịch trình cụ thể, nên thông tin hủy chương trình cũng được củng cố thêm. Theo kế hoạch ban đầu, Car &amp; Passion được tổ chức đúng dịp giải phóng miền Nam 30/4/2012 nhưng vì một số lý do khách quan, Ban tổ chức đã ấn định lùi chương trình vào dịp trước Quốc khánh, tức là khởi hành ngày 25/8, tiếp tục hội ngộ tại Đà Nẵng và kết thúc vào 30/8.</p>\n<p style="text-align:justify;">Tuy nhiên cho tới hôm nay, 31/8, khi thời gian của kế hoạch lần 2 đã trôi qua, chương trình vẫn chưa diễn ra và Ban tổ chức Car &amp; Passion 2012 cũng chưa công bố nguyên nhân. Một thành viên của ban tổ chức xác nhận, kế hoạch lần 2 đã bị hoãn nhưng không khẳng định chương trình có bị hủy hay không.</p>\n<p style="text-align:center;"><img src="/public/userfiles/image/isuzubienhoa/image/tt4.jpg" alt="" width="480" height="319" /></p>\n<p style="text-align:center;"><em>Hành trình siêu xe 2011 đã để lại ấn tượng tốt. ảnh carpassion</em></p>\n<p style="text-align:justify;">Hiện tại, nhiều diễn đàn ô tô, mạng xã hội đã thông tin chương trình bị hủy. Trên trang web chính thức của chương trình, thông tin mới nhất đã có cách đây vài tháng và thời gian dự kiến diễn ra (25-30/8) đã qua.</p>\n<p style="text-align:justify;">Dù không nói rõ cụ thể nguyên nhân nhưng một số nguồn tin cho hay, khó khăn nhất vẫn là vấn đề kinh tế. Nằm trong khó khăn chung của nền kinh tế cả nước, nhiều doanh nghiệp, đơn vị thành viên CLB siêu xe cũng gặp không ít khó khăn, bản thân công ty Quốc Cường Gia Lai do ông Nguyễn Quốc Cường - biệt danh Cường đô la, chủ tịch CLB siêu xe Việt Nam - cũng gặp không ít khó khăn trong hoạt động kinh doanh, cổ phiếu sụt giảm. Trong bối cảnh đó, một thành viên ban tổ chức cho hay, việc cố tổ chức chương trình không chỉ đứng trước nguy cơ thất bại, lợi bất cập hại...</p>\n<p style="text-align:justify;"><strong> </strong></p>\n<p> </p>', '', 'hanh-trinh-sieu-xe-2012-sau-hoan-lahuy-', '', '', '', 0, 2, 0, '', '', 1, 356),
(474, 'Siêu xe sexy nhất thế giới', '', '2012-09-01 02:49:34', 'sieu-xe-sexy-nhat-the-gioi.jpg', '<p style="text-align:justify;">Danh hiệu này được trao cho siêu xe Pagani Huayra, trị giá 840.000 Bảng Anh, tương đương gần 28 tỷ đồng.</p>', '', '<p style="text-align:justify;"><strong>Danh hiệu này được trao cho siêu xe Pagani Huayra, trị giá 840.000 Bảng Anh, tương đương gần 28 tỷ đồng.</strong></p>\n<p style="text-align:justify;">Dựa trên hệ khung gầm bằng sợi các-bon đúc liền, chiếc Huayra nặng 1.350 kg này sử dụng động cơ turbo kép V12 dung tích 6 lít của hãng độ Mercedes AMG, cho công suất cực đại tới 730 mã lực và tăng tốc từ 0-100 km/h chỉ vẻn vẹn 3,2 giây. Tốc độ tối đa của siêu xe này có thể đạt được là 376 km/h.</p>\n<p style="text-align:center;"><img src="/public/userfiles/image/isuzubienhoa/image/tt5.jpg" alt="" width="480" height="290" /></p>\n<p style="text-align:center;"><img src="/public/userfiles/image/isuzubienhoa/image/tt5.1.jpg" alt="" width="480" height="341" /></p>\n<p style="text-align:center;"><img src="/public/userfiles/image/isuzubienhoa/image/tt5.2.jpg" alt="" width="480" height="318" /></p>\n<p style="text-align:center;"><img src="/public/userfiles/image/isuzubienhoa/image/tt5.3.jpg" alt="" width="480" height="587" /></p>', '', 'sieu-xe-sexy-nhat-the-gioi', '', '', '', 0, 6, 0, '', '', 1, 355),
(475, 'Ô tô nhập khẩu không chính hãng lại về Việt Nam', '', '2012-09-01 02:51:45', '-to-nhap-khau-khong-chinh-hang-lai-ve-viet-nam.jpg', '<p style="text-align:justify;">Bộ Công Thương sắp ban hành quy định cho phép các lô hàng xe ô tô chở người từ 9 chỗ ngồi trở xuống nhập khẩu và thanh toán trước ngày ban hành Thông tư 20 được phép nhập về Việt Nam</p>', '', '<p style="text-align:justify;"><strong>Bộ Công Thương sắp ban hành quy định cho phép các lô hàng xe ô tô chở người từ 9 chỗ ngồi trở xuống nhập khẩu và thanh toán trước ngày ban hành Thông tư 20 được phép nhập về Việt Nam.</strong></p>\n<p style="text-align:justify;">Mới đây, Phó Thủ tướng Hoàng Trung Hải đã đồng ý về nguyên tắc các doanh nghiệp được tiếp tục nhập khẩu xe ô tô theo hợp đồng đã ký mà thanh toán một phần hoặc toàn bộ hợp đồng trước ngày ban hành Thông tư 20/2011/TT-BCT của Bộ Công Thương(12/5/2011).</p>\n<p style="text-align:justify;">Thực hiện ý kiến chỉ đạo này, Bộ Công Thương đang xin ý kiến của Ngân hàng Nhà nước và Tổng cục Hải quan để hoàn thiện quy định cho phép doanh nghiệp được nhập xe theo hợp đồng đã ký. Nguyên tắc được đưa ra với các trường hợp này là khi làm thủ tục nhập khẩu, ngoài các giấy tờ thông thường theo quy định, doanh nghiệp phải nộp bổ sung chứng từ thanh toán lô hàng của Ngân hàng thương mại có thời điểm thanh toán trước ngày 12/5/2011. Trường hợp thanh toán cho nhiều lô hàng, giao nhiều đợt khác nhau cần đảm bảo số lượng xe nhập khẩu có giá trị tương ứng với số tiền đã thanh toán và phù hợp với hợp đồng nhập khẩu đã ký.</p>\n<p style="text-align:justify;">Khó cho doanh nghiệp nếu nhập xe theo đúng chủng loại, số lượng đã đặt cọc.</p>\n<p style="text-align:center;"><em> </em></p>\n<p style="text-align:center;"><img src="/public/userfiles/image/isuzubienhoa/image/tt6.jpg" alt="" width="480" height="355" /><br /><em>Ảnh có tính minh họa.</em></p>\n<p style="text-align:justify;">Ngoài ra, dự kiến Bộ Công Thương còn yêu cầu có thêm văn bản của người bán gửi cho người mua thể hiện việc đã nhận tiền của người mua trước ngày 12/5/2011 (cụ thể hợp đồng, chứng từ thanh toán, số tiền), số lượng xe chưa giao theo chứng từ thanh toán; xác nhận không đồng ý hoàn lại tiền mà người mua đã chuyển nhưng chưa giao hàng.</p>\n<p style="text-align:justify;">Tuy nhiên, theo đại diện một số doanh nghiệp nhập khẩu xe ô tô, việc cho phép nhập khẩu theo đúng số lượng, chủng loại xe đã ký theo hợp đồng sẽ làm nảy sinh nhiều khó khăn, bất cập.</p>\n<p style="text-align:justify;">Đại diện công ty cổ phần Xe Hàn cho hay, hiện công ty đang còn tồn tại Hợp đồng nhập khẩu ký với đối tác ngày 14/02/2011, từ thời điểm ký hợp đồng đến nay đã được gần 20 tháng và trong 20 tháng này thị trường ô tô thế giới đã có rất nhiều thay đổi, một số model xe trong hợp đồng đã ký đối tác không thể cung cấp được vì những model này hiện không còn được sản xuất nữa.</p>\n<p style="text-align:justify;">Bên cạnh đó, khi ký kết hợp đồng mua xe thì yếu tố đầu tiên phải xem xét đến là nhu cầu của thị trường nhưng trong 20 tháng qua, thị trường xe ô tô đã xảy ra rất nhiều biến động, một số model xe trong hợp đồng đã ký không còn phù hợp với thị hiếu của khách hàng nên nếu nhập về sẽ không tiêu thụ được hoặc chỉ tiêu thụ được rất ít.</p>\n<p style="text-align:justify;">Trước khó khăn này, công ty Xe Hàn đề nghị Bộ Công Thương cho phép được điều chỉnh số lượng, chủng loại xe trong phạm vi giá trị hợp đồng đã ký cho phù hợp với thị trường.</p>', '', 'o-to-nhap-khau-khong-chinh-hang-lai-ve-viet-nam', '', '', '', 0, 5, 0, '', '', 1, 356);

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
  `tagen` varchar(100) DEFAULT NULL,
  `description` varchar(250) DEFAULT NULL,
  `descriptionen` varchar(250) DEFAULT NULL,
  `pic_full` varchar(100) DEFAULT NULL,
  `cat_order` int(11) NOT NULL,
  `cat_extra1` varchar(45) DEFAULT NULL,
  `cat_extra2` varchar(45) DEFAULT NULL,
  `cat_enable` tinyint(1) NOT NULL DEFAULT '1',
  `dos_usernames_username` varchar(45) NOT NULL,
  PRIMARY KEY (`cat_id`),
  KEY `fk_dos_module_news_cat_dos_usernames1` (`dos_usernames_username`)
) ENGINE=InnoDB  DEFAULT CHARSET=utf8 AUTO_INCREMENT=357 ;

--
-- Dumping data for table `dos_module_news_cat`
--

INSERT INTO `dos_module_news_cat` (`cat_id`, `cat_parent_id`, `cat_title`, `cat_titleen`, `preview`, `previewen`, `tag`, `tagen`, `description`, `descriptionen`, `pic_full`, `cat_order`, `cat_extra1`, `cat_extra2`, `cat_enable`, `dos_usernames_username`) VALUES
(355, 0, 'Thế giới xe', '', '', '', 'the-gioi-xe', '', '', '', '', 1, '', '', 1, 'isuzubienhoa'),
(356, 0, 'Văn hóa xe', '', '', '', 'van-hoa-xe', '', '', '', '', 2, '', '', 1, 'isuzubienhoa');

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
('day_time', 2456175),
('max_count', 0),
('counter', 0),
('yesterday', 0);

-- --------------------------------------------------------

--
-- Table structure for table `dos_module_pcounter_users`
--

CREATE TABLE IF NOT EXISTS `dos_module_pcounter_users` (
  `user_ip` varchar(39) NOT NULL,
  `user_time` int(11) NOT NULL
) ENGINE=InnoDB DEFAULT CHARSET=utf8;

--
-- Dumping data for table `dos_module_pcounter_users`
--

INSERT INTO `dos_module_pcounter_users` (`user_ip`, `user_time`) VALUES
('''127.0.0.1''', 1346725840);

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
  `content` text NOT NULL,
  `contenten` text,
  `tag` varchar(100) NOT NULL,
  `tagen` varchar(100) DEFAULT NULL,
  `description` varchar(250) DEFAULT NULL,
  `descriptionen` varchar(250) DEFAULT NULL,
  `hits` int(11) NOT NULL DEFAULT '0',
  `record_order` int(11) NOT NULL DEFAULT '1',
  `unit` varchar(45) DEFAULT NULL,
  `hot` tinyint(1) NOT NULL DEFAULT '0',
  `specials` tinyint(1) DEFAULT NULL,
  `extra_field1` varchar(100) DEFAULT NULL,
  `extra_field2` varchar(100) DEFAULT NULL,
  `extra_field3` varchar(100) DEFAULT NULL,
  `extra_field4` varchar(100) DEFAULT NULL,
  `enable` tinyint(1) NOT NULL DEFAULT '1',
  `dos_module_item_cat_cat_id` int(11) NOT NULL,
  PRIMARY KEY (`record_id`),
  KEY `fk_dos_module_products_dos_module_products_cat1` (`dos_module_item_cat_cat_id`)
) ENGINE=InnoDB  DEFAULT CHARSET=utf8 AUTO_INCREMENT=9277 ;

--
-- Dumping data for table `dos_module_products`
--

INSERT INTO `dos_module_products` (`record_id`, `title`, `titleen`, `postdate`, `pic_thumb`, `pic_full`, `pic_desc`, `preview`, `previewen`, `content`, `contenten`, `tag`, `tagen`, `description`, `descriptionen`, `hits`, `record_order`, `unit`, `hot`, `specials`, `extra_field1`, `extra_field2`, `extra_field3`, `extra_field4`, `enable`, `dos_module_item_cat_cat_id`) VALUES
(9265, 'Dmax X Limited', '', '2012-09-01 01:26:04', 'dmax-x-limited-thumb.jpg', 'dmax-x-limited.jpg', 'dmax-x-limited-desc-1.jpg|dmax-x-limited-desc-2.jpg|dmax-x-limited-desc-3.jpg|dmax-x-limited-desc-4.jpg|dmax-x-limited-desc-5.png|dmax-x-limited-desc-6.jpg', '<p><strong><span style="color:#ff0000;">Phong cách thể thao – Nâng tầm đẳng cấp</span></strong></p>\n<p> - Trang bị cản trước và cản sau kiểu mới, thể thao và mạnh mẽ.</p>\n<p> -  Tem xe X-Limited phong cách, tinh tế với tâm điểm logo Isuzu màu đỏ sang trọng.</p>\n<p> - Trang bị phim cách nhiệt chính hãng.</p>\n<p> - Bộ mâm xe màu đen khói sang trọng, lịch lãm.</p>\n<p> - Bộ ghế da hai màu đỏ đen cao cấp, tiện nghi (tùy chọn thêm)</p>\n<p><strong><span style="color:#ff0000;"> </span></strong></p>', '', '<p>Liên hệ Isuzu Biên Hòa</p>', '', 'dmax-x-limited', '', '', '', 0, 12, '', 0, 0, '', '', '', '', 1, 1668),
(9266, 'LS AT (4×2) – xe nhập khẩu', '', '2012-09-01 01:35:59', 'ls-at-42--xe-nhap-khau-thumb.jpg', 'ls-at-42--xe-nhap-khau.jpeg', 'ls-at-42--xe-nhap-khau-desc-1.jpg|ls-at-42--xe-nhap-khau-desc-2.jpg|ls-at-42--xe-nhap-khau-desc-3.jpg|ls-at-42--xe-nhap-khau-desc-4.jpg', '<p>- Trang bị cản trước và cản sau kiểu mới, thể thao và mạnh mẽ. </p>\n<p>- Trang bị phim cách nhiệt chính hãng.</p>\n<p>- Bộ mâm xe màu đen khói sang trọng, lịch lãm.</p>\n<p>- Bộ ghế da hai màu đỏ đen cao cấp, tiện nghi (tùy chọn thêm)</p>', '', '<p>Liên hệ Isuzu Biên Hòa</p>', '', 'ls-at-42-xe-nhap-khau', '', '', '', 0, 11, '', 0, 0, '', '', '', '', 1, 1668),
(9267, 'S MT (4×4)', '', '2012-09-01 01:39:54', 's-mt-44-thumb.jpg', 's-mt-44.jpg', '', '<p>- Trang bị cản trước và cản sau kiểu mới, thể thao và mạnh mẽ.</p>\n<p>- Trang bị phim cách nhiệt chính hãng.</p>\n<p>- Bộ mâm xe màu đen khói sang trọng, lịch lãm.</p>\n<p>- Bộ ghế da hai màu đỏ đen cao cấp, tiện nghi (tùy chọn thêm)</p>', '', '<p>Liên hệ Isuzu Biên Hòa</p>', '', 's-mt-44', '', '', '', 0, 10, '', 0, 0, '', '', '', '', 1, 1668),
(9268, 'LS MT (4×4)', '', '2012-09-01 01:46:55', 'ls-mt-44-thumb.jpg', 'ls-mt-44.jpeg', 'ls-mt-44-desc-1.jpg|ls-mt-44-desc-2.jpg|ls-mt-44-desc-3.jpg|ls-mt-44-desc-4.jpg', '<p>- Trang bị cản trước và cản sau kiểu mới, thể thao và mạnh mẽ.</p>\n<p>- Trang bị phim cách nhiệt chính hãng.</p>\n<p>- Bộ mâm xe màu đen khói sang trọng, lịch lãm.</p>\n<p>- Bộ ghế da hai màu đỏ đen cao cấp, tiện nghi (tùy chọn thêm)</p>', '', '<p>Liên hệ Isuzu Biên Hòa</p>', '', 'ls-mt-44', '', '', '', 0, 9, '', 0, 0, '', '', '', '', 1, 1668),
(9269, 'QKR55F (sát-xi ngắn)', '', '2012-09-01 01:49:09', 'qkr55f-sat-xi-ngan-thumb.jpg', 'qkr55f-sat-xi-ngan.jpg', '', '<p>Tổng trọng tải: 3,550 kg</p>\n<p>Tải trọng: 1,400 kg</p>', '', '<p>Liên hệ Isuzu Biên Hòa</p>', '', 'qkr55f-sat-xi-ngan', '', '', '', 0, 1, '', 0, 0, '', '', '', '', 1, 1669),
(9270, 'QKR55H (sát-xi dài)', '', '2012-09-01 01:50:19', 'qkr55h-sat-xi-dai-thumb.jpg', 'qkr55h-sat-xi-dai.jpg', '', '<p>Tổng trọng tải: 4,700 kg</p>\n<p>Tải trọng: 1,900 kg</p>\n<p> </p>', '', '<p>Liên hệ Isuzu Biên Hòa</p>', '', 'qkr55h-sat-xi-dai', '', '', '', 0, 2, '', 0, 0, '', '', '', '', 1, 1669),
(9271, 'NLR55E', '', '2012-09-01 01:52:17', 'nlr55e-thumb.jpg', 'nlr55e.jpg', '', '<p>Tổng trọng tải: 3,400 kg</p>\n<p>Tải trọng: 1,300 kg</p>', '', '<p>Liên hệ Isuzu Biên Hòa</p>', '', 'nlr55e', '', '', '', 0, 3, '', 0, 0, '', '', '', '', 1, 1670),
(9272, 'FRR90N', '', '2012-09-01 01:54:13', 'frr90n-thumb.png', 'frr90n.png', '', '<p>Tổng trọng tải: 10,400 kg</p>\n<p>Tải trọng: 6,200 kg</p>', '', '<p>Liên hệ Isuzu Biên Hòa</p>', '', 'frr90n', '', '', '', 0, 4, '', 0, 0, '', '', '', '', 1, 1670),
(9273, 'GVR34UL-WDN (Xe đầu kéo)', '', '2012-09-01 02:00:46', 'gvr34ul-wdn-xe-dau-keo-thumb.jpg', 'gvr34ul-wdn-xe-dau-keo.jpg', '', '<p>Tổng trọng tải (Xe &amp; Rơ-moóc): 40,000 kg</p>\n<p>Theo thiết kế</p>', '', '<p style="text-align:center;"><img src="/public/userfiles/image/isuzubienhoa/image/a.jpg" alt="" width="558" height="543" /></p>', '', 'gvr34ul-wdn-xe-dau-keo', '', '', '', 0, 5, '', 0, 0, '', '', '', '', 1, 1671),
(9274, 'FVM34-T', '', '2012-09-01 02:01:46', 'fvm34-t-thumb.jpg', 'fvm34-t.gif', '', '<p>Tổng trọng tải: 24,300 kg</p>\n<p>Tải trọng: 16,100 kg</p>', '', '<p>Liên hệ Isuzu Biên Hòa</p>', '', 'fvm34-t', '', '', '', 0, 6, '', 0, 0, '', '', '', '', 1, 1671),
(9275, 'FVZ34U-P (Xe ben tự đỗ)', '', '2012-09-01 02:05:35', 'fvz34u-p-xe-ben-tu-do-thumb.jpg', 'fvz34u-p-xe-ben-tu-do.jpg', '', '<p>- Tổng trọng tải: 24,950 kg</p>\n<p>- Theo thiết kế</p>', '', '<p style="text-align:center;"><img src="/public/userfiles/image/isuzubienhoa/image/b.jpg" alt="" width="543" height="545" /></p>', '', 'fvz34u-p-xe-ben-tu-do', '', '', '', 0, 7, '', 0, 0, '', '', '', '', 1, 1671),
(9276, 'EXR51E (Xe đầu kéo)', '', '2012-09-01 02:07:35', 'exr51e-xe-dau-keo-thumb.jpg', 'exr51e-xe-dau-keo.jpg', '', '<p>- Tổng trọng tải (Xe &amp; Rơ-moóc): 43,000 kg</p>\n<p>- Theo thiết kế</p>', '', '<p style="text-align:center;"><img src="/public/userfiles/image/isuzubienhoa/image/c.jpg" alt="" width="546" height="605" /></p>', '', 'exr51e-xe-dau-keo', '', '', '', 0, 8, '', 0, 0, '', '', '', '', 1, 1671);

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
  `tagen` varchar(100) DEFAULT NULL,
  `description` varchar(250) DEFAULT NULL,
  `descriptionen` varchar(250) DEFAULT NULL,
  `pic_full` varchar(100) DEFAULT NULL,
  `pic_desc` varchar(200) DEFAULT NULL,
  `cat_order` int(11) NOT NULL,
  `cat_extra1` varchar(45) DEFAULT NULL,
  `cat_extra2` varchar(45) DEFAULT NULL,
  `cat_enable` tinyint(1) NOT NULL DEFAULT '1',
  `dos_usernames_username` varchar(45) NOT NULL,
  PRIMARY KEY (`cat_id`),
  KEY `fk_dos_module_products_cat_dos_usernames1` (`dos_usernames_username`)
) ENGINE=InnoDB  DEFAULT CHARSET=utf8 AUTO_INCREMENT=1672 ;

--
-- Dumping data for table `dos_module_products_cat`
--

INSERT INTO `dos_module_products_cat` (`cat_id`, `cat_parent_id`, `cat_title`, `cat_titleen`, `preview`, `previewen`, `tag`, `tagen`, `description`, `descriptionen`, `pic_full`, `pic_desc`, `cat_order`, `cat_extra1`, `cat_extra2`, `cat_enable`, `dos_usernames_username`) VALUES
(1668, 0, 'D-Max (Xe bán tải)', '', '', '', 'd-max-xe-ban-tai', '', '', '', 'd-max-xe-ban-tai.jpg', '', 4, '', '', 1, 'isuzubienhoa'),
(1669, 0, 'Xe tải Q-series', '', '', '', 'xe-tai-q-series', '', '', '', 'xe-tai-q-series.jpg', '', 4, '', '', 1, 'isuzubienhoa'),
(1670, 0, 'Xe tải Forward', '', '', '', 'xe-tai-forward', '', '', '', 'xe-tai-forward.jpg', '', 4, '', '', 1, 'isuzubienhoa'),
(1671, 0, 'Xe tải nặng Forward', '', '', '', 'xe-tai-nang-forward', '', '', '', 'xe-tai-nang-forward.jpg', '', 4, '', '', 1, 'isuzubienhoa');

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
  `tagen` varchar(100) DEFAULT NULL,
  `description` varchar(250) DEFAULT NULL,
  `descriptionen` varchar(250) DEFAULT NULL,
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
  `support_nameen` varchar(45) DEFAULT NULL,
  `support_phone` varchar(45) DEFAULT NULL,
  `support_value` varchar(45) NOT NULL,
  `support_order` smallint(6) NOT NULL,
  `support_type` varchar(20) NOT NULL,
  `dos_usernames_username` varchar(45) NOT NULL,
  PRIMARY KEY (`support_id`),
  KEY `fk_dos_module_supports_dos_usernames1` (`dos_usernames_username`)
) ENGINE=InnoDB  DEFAULT CHARSET=utf8 AUTO_INCREMENT=302 ;

--
-- Dumping data for table `dos_module_supports`
--

INSERT INTO `dos_module_supports` (`support_id`, `support_name`, `support_nameen`, `support_phone`, `support_value`, `support_order`, `support_type`, `dos_usernames_username`) VALUES
(300, 'Hỗ trợ Khách hàng 1', '', '', 'maioanh7887', 1, 'yahoo', 'isuzubienhoa'),
(301, 'Hỗ trợ Khách hàng 2', '', '', 'maioanh7887', 1, 'yahoo', 'isuzubienhoa');

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
  `tagen` varchar(100) DEFAULT NULL,
  `description` varchar(250) DEFAULT NULL,
  `descriptionen` varchar(250) DEFAULT NULL,
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
) ENGINE=InnoDB DEFAULT CHARSET=utf8 AUTO_INCREMENT=1 ;

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
  `tagen` varchar(100) DEFAULT NULL,
  `description` varchar(250) DEFAULT NULL,
  `descriptionen` varchar(250) DEFAULT NULL,
  `cat_order` int(11) NOT NULL,
  `cat_enable` tinyint(1) NOT NULL DEFAULT '1',
  `dos_usernames_username` varchar(45) NOT NULL,
  PRIMARY KEY (`cat_id`),
  KEY `fk_dos_module_video_cat_dos_usernames1` (`dos_usernames_username`)
) ENGINE=InnoDB DEFAULT CHARSET=utf8 AUTO_INCREMENT=1 ;

-- --------------------------------------------------------

--
-- Table structure for table `dos_module_webs`
--

CREATE TABLE IF NOT EXISTS `dos_module_webs` (
  `web_name` varchar(45) NOT NULL,
  `web_value` text,
  `dos_usernames_username` varchar(45) NOT NULL,
  KEY `fk_dos_module_webs_dos_usernames1` (`dos_usernames_username`)
) ENGINE=InnoDB DEFAULT CHARSET=utf8;

--
-- Dumping data for table `dos_module_webs`
--

INSERT INTO `dos_module_webs` (`web_name`, `web_value`, `dos_usernames_username`) VALUES
('keywords', 'Isuzubienhoa - Chuyên cung cấp các loại xe D-Max, Xe Tải Q-series, Xe Tải Forward, Xe tải nặng Forward, uy tính, chất lượng', 'isuzubienhoa'),
('description', 'Isuzubienhoa - Chuyên cung cấp các loại xe D-Max, Xe Tải Q-series, Xe Tải Forward, Xe tải nặng Forward, uy tính, chất lượng', 'isuzubienhoa'),
('title', 'ISUZU BIEN HOA -  Isuzubienhoa.com', 'isuzubienhoa'),
('analytics', '<script type="text/javascript">\r\n\r\n  var _gaq = _gaq || [];\r\n  _gaq.push([''_setAccount'', ''UA-30151015-10'']);\r\n  _gaq.push([''_trackPageview'']);\r\n\r\n  (function() {\r\n    var ga = document.createElement(''script''); ga.type = ''text/javascript''; ga.async = true;\r\n    ga.src = (''https:'' == document.location.protocol ? ''https://ssl'' : ''http://www'') + ''.google-analytics.com/ga.js'';\r\n    var s = document.getElementsByTagName(''script'')[0]; s.parentNode.insertBefore(ga, s);\r\n  })();\r\n\r\n</script>', 'isuzubienhoa');

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
) ENGINE=InnoDB  DEFAULT CHARSET=utf8 AUTO_INCREMENT=64 ;

--
-- Dumping data for table `dos_provinces`
--

INSERT INTO `dos_provinces` (`province_id`, `province_name`, `dos_nationals_national`) VALUES
(1, 'An Giang', 'VND'),
(2, 'Bà rịa - Vũng tàu', 'VND'),
(3, 'Bạc Liêu', 'VND'),
(4, 'Bắc Cạn', 'VND'),
(5, 'Bắc Giang', 'VND'),
(6, 'Bắc Ninh', 'VND'),
(7, 'Bến Tre', 'VND'),
(8, 'Bình Dương', 'VND'),
(9, 'Bình Định', 'VND'),
(10, 'Bình Phước', 'VND'),
(11, 'Bình Thuận', 'VND'),
(12, 'Cà Mau', 'VND'),
(13, 'Cao Bằng', 'VND'),
(14, 'Cần Thơ', 'VND'),
(15, 'Đà  Nẵng', 'VND'),
(16, 'Đăk Lăk', 'VND'),
(17, 'Đắk Nông', 'VND'),
(18, 'Điện Biên', 'VND'),
(19, 'Đồng Nai', 'VND'),
(20, 'Đồng Tháp', 'VND'),
(21, 'Gia Lai', 'VND'),
(22, 'Hà Giang', 'VND'),
(23, 'Hà Nam', 'VND'),
(24, 'Hà Nội', 'VND'),
(25, 'Hà Tĩnh', 'VND'),
(26, 'Hải Dương', 'VND'),
(27, 'Hải Phòng', 'VND'),
(28, 'Hậu Giang', 'VND'),
(29, 'Hòa Bình', 'VND'),
(30, 'Thành phố Hồ Chí Minh', 'VND'),
(31, 'Hưng Yên', 'VND'),
(32, 'Khánh Hoà', 'VND'),
(33, 'Kiên Giang', 'VND'),
(34, 'Kon Tum', 'VND'),
(35, 'Lai Châu', 'VND'),
(36, 'Lạng Sơn', 'VND'),
(37, 'Lào Cai', 'VND'),
(38, 'Lâm Đồng', 'VND'),
(39, 'Long An', 'VND'),
(40, 'Nam Định', 'VND'),
(41, 'Nghệ An', 'VND'),
(42, 'Ninh Bình', 'VND'),
(43, 'Ninh Thuận', 'VND'),
(44, 'Phú Thọ', 'VND'),
(45, 'Phú Yên', 'VND'),
(46, 'Quảng Bình', 'VND'),
(47, 'Quảng Nam', 'VND'),
(48, 'Quảng Ngãi', 'VND'),
(49, 'Quảng Ninh', 'VND'),
(50, 'Quảng Trị', 'VND'),
(51, 'Sóc Trăng', 'VND'),
(52, 'Sơn La', 'VND'),
(53, 'Tây Ninh', 'VND'),
(54, 'Thái Bình', 'VND'),
(55, 'Thái Nguyên', 'VND'),
(56, 'Thanh Hoá', 'VND'),
(57, 'Thừa Thiên-Huế', 'VND'),
(58, 'Tiền Giang', 'VND'),
(59, 'Trà Vinh', 'VND'),
(60, 'Tuyên Quang', 'VND'),
(61, 'Vĩnh Long', 'VND'),
(62, 'Vĩnh Phúc', 'VND'),
(63, 'Yên Bái', 'VND');

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
('200612', 'Mẫu Sách: 200612', '2012-06-19 22:26:45', 'Chuyên bán các loại sách cho sinh viên, giá cả bình dân');

-- --------------------------------------------------------

--
-- Table structure for table `dos_templates_has_dos_bussiness`
--

CREATE TABLE IF NOT EXISTS `dos_templates_has_dos_bussiness` (
  `dos_templates_template` varchar(6) NOT NULL,
  `dos_bussiness_bussiness_id` varchar(100) NOT NULL,
  PRIMARY KEY (`dos_templates_template`,`dos_bussiness_bussiness_id`),
  KEY `fk_dos_templates_has_dos_bussiness_dos_bussiness1` (`dos_bussiness_bussiness_id`),
  KEY `fk_dos_templates_has_dos_bussiness_dos_templates1` (`dos_templates_template`)
) ENGINE=InnoDB DEFAULT CHARSET=utf8;

--
-- Dumping data for table `dos_templates_has_dos_bussiness`
--

INSERT INTO `dos_templates_has_dos_bussiness` (`dos_templates_template`, `dos_bussiness_bussiness_id`) VALUES
('200612', 'giao-duc-dao-tao');

-- --------------------------------------------------------

--
-- Table structure for table `dos_templates_has_dos_features`
--

CREATE TABLE IF NOT EXISTS `dos_templates_has_dos_features` (
  `dos_templates_template` varchar(6) NOT NULL,
  `dos_features_feature_id` varchar(45) NOT NULL,
  `hot` tinyint(1) NOT NULL DEFAULT '0',
  PRIMARY KEY (`dos_templates_template`,`dos_features_feature_id`),
  KEY `fk_dos_templates_has_dos_features_dos_features1` (`dos_features_feature_id`),
  KEY `fk_dos_templates_has_dos_features_dos_templates1` (`dos_templates_template`)
) ENGINE=InnoDB DEFAULT CHARSET=utf8;

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
('200612', 'about', 'advs_left'),
('200612', 'about', 'list_supports'),
('200612', 'about', 'menu_about'),
('200612', 'contact', 'advs_left'),
('200612', 'contact', 'list_supports'),
('200612', 'contact', 'menu_products'),
('200612', 'default', 'about_home'),
('200612', 'default', 'advs_left'),
('200612', 'default', 'list_supports'),
('200612', 'default', 'menu_products'),
('200612', 'default', 'products_new'),
('200612', 'news', 'advs_left'),
('200612', 'news', 'list_supports'),
('200612', 'news', 'menu_news'),
('200612', 'products', 'advs_left'),
('200612', 'products', 'list_supports'),
('200612', 'products', 'menu_products'),
('200612', 'services', 'advs_left'),
('200612', 'services', 'list_supports'),
('200612', 'services', 'menu_services'),
('200612', 'video', 'advs_left'),
('200612', 'video', 'list_supports'),
('200612', 'video', 'menu_video');

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
  `expired` timestamp NOT NULL DEFAULT '0000-00-00 00:00:00',
  `import` tinyint(1) NOT NULL DEFAULT '0',
  `agent_sale` varchar(8) NOT NULL,
  `agent_tech` varchar(8) DEFAULT NULL,
  `activated` tinyint(1) NOT NULL,
  `dos_templates_template` varchar(6) NOT NULL,
  `dos_provinces_province_id` int(11) NOT NULL,
  `dos_bussiness_bussiness_id` varchar(100) NOT NULL,
  PRIMARY KEY (`username`),
  KEY `fk_dos_usernames_dos_templates1` (`dos_templates_template`),
  KEY `fk_dos_usernames_dos_provinces1` (`dos_provinces_province_id`),
  KEY `fk_dos_usernames_dos_bussiness1` (`dos_bussiness_bussiness_id`)
) ENGINE=InnoDB DEFAULT CHARSET=utf8;

--
-- Dumping data for table `dos_usernames`
--

INSERT INTO `dos_usernames` (`username`, `email`, `password`, `created`, `fullname`, `phone`, `company`, `role`, `language`, `code`, `expired`, `import`, `agent_sale`, `agent_tech`, `activated`, `dos_templates_template`, `dos_provinces_province_id`, `dos_bussiness_bussiness_id`) VALUES
('isuzubienhoa', 'maioanh@thuonghoi.com', 'e10adc3949ba59abbe56e057f20f883e', '2012-09-01 00:40:06', '', '0987522003', '', 'user', 'vi', '', '2012-11-29 16:00:00', 0, '87522003', '', 1, '200612', 19, 'co-khi-may-moc-thiet-bi');

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
('company_name', 'CHUYÊN CUNG CẤP XE TẢI ISUZU', '', 'isuzubienhoa'),
('company_name_footer', 'CHUYÊN CUNG CẤP XE TẢI ISUZU', '', 'isuzubienhoa'),
('company_phone', 'Hotline: 0987 001 001', '', 'isuzubienhoa'),
('contact', 'Đơn giá', '', 'isuzubienhoa'),
('services', 'Khuyến mãi', '', 'isuzubienhoa');

-- --------------------------------------------------------

--
-- Table structure for table `dos_values`
--

CREATE TABLE IF NOT EXISTS `dos_values` (
  `value_name` varchar(20) NOT NULL,
  `module` varchar(20) NOT NULL,
  `module_id` varchar(20) NOT NULL,
  `function_name` varchar(20) NOT NULL,
  PRIMARY KEY (`value_name`)
) ENGINE=InnoDB DEFAULT CHARSET=utf8;

--
-- Dumping data for table `dos_values`
--

INSERT INTO `dos_values` (`value_name`, `module`, `module_id`, `function_name`) VALUES
('about_home', 'about', 'About', 'homeRecord'),
('advs_bottom', 'advs', 'Advs', 'listItemsBottom'),
('advs_center', 'advs', 'Advs', 'listItemsCenter'),
('advs_left', 'advs', 'Advs', 'listItemsLeft'),
('advs_right', 'advs', 'Advs', 'listItemsRight'),
('advs_top', 'advs', 'Advs', 'listItemsTop'),
('list_supports', 'supports', 'Supports', 'listItem'),
('menu_about', 'about', 'About', 'listMenu'),
('menu_news', 'news', 'NewsCat', 'listCats'),
('menu_products', 'products', 'ProductsCat', 'listCats'),
('menu_services', 'services', 'Services', 'listMenu'),
('menu_video', 'video', 'VideoCat', 'listCats'),
('news_hot', 'news', 'News', 'listItemsHot'),
('news_new', 'news', 'News', 'listItemsNew'),
('products_hot', 'products', 'Products', 'listItemHot'),
('products_new', 'products', 'Products', 'listItemNew'),
('video_hot', 'video', 'Video', 'itemHot');

--
-- Constraints for dumped tables
--

--
-- Constraints for table `dos_configs`
--
ALTER TABLE `dos_configs`
  ADD CONSTRAINT `fk_dos_configs_dos_templates1` FOREIGN KEY (`dos_templates_template`) REFERENCES `dos_templates` (`template`) ON DELETE NO ACTION ON UPDATE NO ACTION;

--
-- Constraints for table `dos_loadfiles`
--
ALTER TABLE `dos_loadfiles`
  ADD CONSTRAINT `fk_dos_templates_has_dos_modules1_dos_modules1` FOREIGN KEY (`dos_modules_module_id`) REFERENCES `dos_modules` (`module_id`) ON DELETE NO ACTION ON UPDATE NO ACTION,
  ADD CONSTRAINT `fk_dos_templates_has_dos_modules1_dos_templates1` FOREIGN KEY (`dos_templates_template`) REFERENCES `dos_templates` (`template`) ON DELETE NO ACTION ON UPDATE NO ACTION;

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
-- Constraints for table `dos_module_news`
--
ALTER TABLE `dos_module_news`
  ADD CONSTRAINT `fk_dos_module_news_dos_module_news_cat1` FOREIGN KEY (`dos_module_item_cat_cat_id`) REFERENCES `dos_module_news_cat` (`cat_id`) ON DELETE NO ACTION ON UPDATE NO ACTION;

--
-- Constraints for table `dos_module_news_cat`
--
ALTER TABLE `dos_module_news_cat`
  ADD CONSTRAINT `fk_dos_module_news_cat_dos_usernames1` FOREIGN KEY (`dos_usernames_username`) REFERENCES `dos_usernames` (`username`) ON DELETE NO ACTION ON UPDATE NO ACTION;

--
-- Constraints for table `dos_module_products`
--
ALTER TABLE `dos_module_products`
  ADD CONSTRAINT `fk_dos_module_products_dos_module_products_cat1` FOREIGN KEY (`dos_module_item_cat_cat_id`) REFERENCES `dos_module_products_cat` (`cat_id`) ON DELETE NO ACTION ON UPDATE NO ACTION;

--
-- Constraints for table `dos_module_products_cat`
--
ALTER TABLE `dos_module_products_cat`
  ADD CONSTRAINT `fk_dos_module_products_cat_dos_usernames1` FOREIGN KEY (`dos_usernames_username`) REFERENCES `dos_usernames` (`username`) ON DELETE NO ACTION ON UPDATE NO ACTION;

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
-- Constraints for table `dos_module_video`
--
ALTER TABLE `dos_module_video`
  ADD CONSTRAINT `fk_dos_module_video_dos_module_video_cat1` FOREIGN KEY (`dos_module_item_cat_cat_id`) REFERENCES `dos_module_video_cat` (`cat_id`) ON DELETE NO ACTION ON UPDATE NO ACTION;

--
-- Constraints for table `dos_module_video_cat`
--
ALTER TABLE `dos_module_video_cat`
  ADD CONSTRAINT `fk_dos_module_video_cat_dos_usernames1` FOREIGN KEY (`dos_usernames_username`) REFERENCES `dos_usernames` (`username`) ON DELETE NO ACTION ON UPDATE NO ACTION;

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
-- Constraints for table `dos_templates_has_dos_bussiness`
--
ALTER TABLE `dos_templates_has_dos_bussiness`
  ADD CONSTRAINT `fk_dos_templates_has_dos_bussiness_dos_bussiness1` FOREIGN KEY (`dos_bussiness_bussiness_id`) REFERENCES `dos_bussiness` (`bussiness_id`) ON DELETE NO ACTION ON UPDATE NO ACTION,
  ADD CONSTRAINT `fk_dos_templates_has_dos_bussiness_dos_templates1` FOREIGN KEY (`dos_templates_template`) REFERENCES `dos_templates` (`template`) ON DELETE NO ACTION ON UPDATE NO ACTION;

--
-- Constraints for table `dos_templates_has_dos_features`
--
ALTER TABLE `dos_templates_has_dos_features`
  ADD CONSTRAINT `fk_dos_templates_has_dos_features_dos_features1` FOREIGN KEY (`dos_features_feature_id`) REFERENCES `dos_features` (`feature_id`) ON DELETE NO ACTION ON UPDATE NO ACTION,
  ADD CONSTRAINT `fk_dos_templates_has_dos_features_dos_templates1` FOREIGN KEY (`dos_templates_template`) REFERENCES `dos_templates` (`template`) ON DELETE NO ACTION ON UPDATE NO ACTION;

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
  ADD CONSTRAINT `fk_dos_usernames_dos_bussiness1` FOREIGN KEY (`dos_bussiness_bussiness_id`) REFERENCES `dos_bussiness` (`bussiness_id`) ON DELETE NO ACTION ON UPDATE NO ACTION,
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
