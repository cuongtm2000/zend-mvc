-- phpMyAdmin SQL Dump
-- version 3.4.5
-- http://www.phpmyadmin.net
--
-- Host: localhost
-- Generation Time: May 22, 2012 at 05:47 AM
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
('advs_bottom_height', 32, '', '020512'),
('advs_bottom_width', 980, '', '020512'),
('advs_left_height', 220, '', '020512'),
('advs_left_width', 200, '', '020512'),
('advs_top_height', 146, '', '020512'),
('advs_top_width', 250, '', '020512'),
('banner_height', 290, '', '020512'),
('banner_width', 725, '', '020512'),
('logo_height', 110, '', '020512'),
('logo_width', 285, '', '020512'),
('max_image_height', 670, '', '020512'),
('max_image_width', 720, '', '020512'),
('news_cat_height', 100, '', '020512'),
('news_cat_width', 143, '', '020512'),
('news_height_thumb', 100, '', '020512'),
('news_num_paging_cat', 10, '', '020512'),
('news_num_paging_hot', 6, '', '020512'),
('news_num_paging_index', 10, '', '020512'),
('news_num_paging_new', 6, '', '020512'),
('news_width_thumb', 143, '', '020512'),
('products_cat_height', 198, '', '020512'),
('products_cat_width', 170, '', '020512'),
('products_height', 500, '', '020512'),
('products_height_thumb', 198, '', '020512'),
('products_num_paging_cat', 20, '', '020512'),
('products_num_paging_hot', 20, '', '020512'),
('products_num_paging_new', 20, '', '020512'),
('products_num_paging_other', 4, '', '020512'),
('products_width', 500, '', '020512'),
('products_width_thumb', 170, '', '020512'),
('services_height', 170, '', '020512'),
('services_width', 170, '', '020512'),
('video_height_thumb', 150, '', '020512'),
('video_num_paging_cat', 16, '', '020512'),
('video_num_paging_index', 16, '', '020512'),
('video_width_thumb', 170, '', '020512');

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
('020512', 'products', 'scroll.css|jquery.fancybox.css', 'css'),
('020512', 'products', 'jcarousellite_1.0.1.js|scroller.js|jquery.fancybox.js|jquery.scroll-1.4.2-min.js|jquery.serialScroll-1.2.2-min.js|product.js|jquery.simplyscroll.vertical.js', 'javascript'),
('020512', 'video', 'prettyPhoto.css', 'css'),
('020512', 'video', 'jquery.prettyPhoto.js', 'javascript');

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
('about', 'smooth-hair'),
('advs', 'smooth-hair'),
('banner', 'smooth-hair'),
('contact', 'smooth-hair'),
('news', 'smooth-hair'),
('products', 'smooth-hair'),
('services', 'smooth-hair'),
('supports', 'smooth-hair');

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
) ENGINE=InnoDB  DEFAULT CHARSET=utf8 AUTO_INCREMENT=109 ;

--
-- Dumping data for table `dos_module_advs`
--

INSERT INTO `dos_module_advs` (`record_id`, `title`, `titleen`, `pic_thumb`, `url`, `create_date`, `start_date`, `end_date`, `hits`, `record_order`, `position`, `type`, `enable`, `dos_usernames_username`) VALUES
(99, 'Quảng cáo', '', 'quang-cao.jpg', 'http://smooth-hair.com', '2012-05-18 01:57:31', '2012-05-17 17:00:00', '2012-06-29 17:00:00', 0, 1, 'top', '_bank', 1, 'smooth-hair'),
(100, 'Quảng cáo 1', '', 'quang-cao-1.jpg', 'http://smooth-hair.com', '2012-05-18 01:58:41', '2012-04-30 17:00:00', '2012-06-29 17:00:00', 0, 9, 'left', '_bank', 1, 'smooth-hair'),
(101, 'Quảng cáo 2', '', 'quang-cao-2.jpg', 'http://smooth-hair.com', '2012-05-18 01:59:19', '2012-05-01 17:00:00', '2012-06-29 17:00:00', 0, 8, 'left', '_bank', 1, 'smooth-hair'),
(102, 'Quảng cáo 3', '', 'quang-cao-3.jpg', 'http://smooth-hair.com', '2012-05-18 01:59:48', '2012-04-30 17:00:00', '2012-06-29 17:00:00', 0, 7, 'left', '_bank', 1, 'smooth-hair'),
(103, 'Quảng cáo 4', '', 'quang-cao-4.jpg', 'http://smooth-hair.com', '2012-05-18 02:00:13', '2012-04-30 17:00:00', '2012-06-29 17:00:00', 0, 6, 'left', '_bank', 1, 'smooth-hair'),
(104, 'Quảng cáo 5', '', 'quang-cao-5.jpg', 'http://smooth-hair.com', '2012-05-18 02:00:44', '2012-04-30 17:00:00', '2012-06-29 17:00:00', 0, 5, 'left', '_bank', 1, 'smooth-hair'),
(105, 'Quảng cáo 6', '', 'quang-cao-6.jpg', 'http://smooth-hair.com', '2012-05-18 02:01:19', '2012-04-30 17:00:00', '2012-06-29 17:00:00', 0, 4, 'left', '_bank', 1, 'smooth-hair'),
(106, 'Quảng cáo 7', '', 'quang-cao-7.jpg', 'http://smooth-hair.com', '2012-05-18 02:01:57', '2012-04-30 17:00:00', '2012-06-29 17:00:00', 0, 3, 'left', '_bank', 1, 'smooth-hair'),
(107, 'Quảng cáo 8', '', 'quang-cao-8.jpg', 'http://smooth-hair.com', '2012-05-18 02:02:23', '2012-04-30 17:00:00', '2012-06-29 17:00:00', 0, 2, 'left', '_bank', 1, 'smooth-hair'),
(108, 'quangcao 9', '', 'quangcao-9.jpg', 'http://mauweb.dos.vn/san-pham', '2012-05-18 02:42:02', '2012-05-17 17:00:00', '2012-06-17 17:00:00', 0, 10, 'top', '_bank', 1, 'smooth-hair');

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
) ENGINE=InnoDB  DEFAULT CHARSET=utf8 AUTO_INCREMENT=535 ;

--
-- Dumping data for table `dos_module_banners`
--

INSERT INTO `dos_module_banners` (`banner_id`, `banner_date`, `banner_name`, `banner_url`, `banner_link`, `banner_order`, `banner_type`, `position`, `enable`, `dos_usernames_username`) VALUES
(506, '2012-05-17 04:00:23', 'Banner ', 'banner.jpg', '', 4, 'banners', 'default', 1, 'smooth-hair'),
(507, '2012-05-17 04:00:40', 'Banner 1', 'banner-1.jpg', '', 2, 'banners', 'default', 1, 'smooth-hair'),
(508, '2012-05-17 04:00:59', 'Banner 2', 'banner-2.jpg', '', 1, 'banners', 'default', 1, 'smooth-hair'),
(509, '2012-05-17 04:01:16', 'Banner 3', 'banner-3.jpg', '', 3, 'banners', 'default', 1, 'smooth-hair'),
(516, '2012-05-18 02:16:30', 'Logo', 'logo.png', '', 5, 'logo', 'default', 1, 'smooth-hair'),
(517, '2012-05-18 03:13:32', 'Banner 4', 'banner-4.jpg', '', 6, 'banners', 'services', 1, 'smooth-hair'),
(518, '2012-05-18 03:14:23', 'Banner 5', 'banner-5.jpg', '', 7, 'banners', 'products', 1, 'smooth-hair'),
(519, '2012-05-18 09:03:48', 'Banner 6', 'banner-6.jpg', '', 8, 'banners', 'about', 1, 'smooth-hair'),
(520, '2012-05-18 09:04:42', 'Banner 7', 'banner-7.jpg', '', 9, 'banners', 'products', 1, 'smooth-hair'),
(521, '2012-05-18 09:07:47', 'Banner 8', 'banner-8.jpg', '', 10, 'banners', 'services', 1, 'smooth-hair'),
(522, '2012-05-18 09:08:08', 'Banner 9', 'banner-9.jpg', '', 11, 'banners', 'products', 1, 'smooth-hair'),
(523, '2012-05-18 09:08:46', 'Banner 10', 'banner-10.jpg', '', 12, 'banners', 'news', 1, 'smooth-hair'),
(524, '2012-05-18 09:09:50', 'Banner 11', 'banner-11.jpg', '', 13, 'banners', 'products', 1, 'smooth-hair'),
(525, '2012-05-18 09:10:32', 'Banner 12', 'banner-12.jpg', '', 14, 'banners', 'products', 1, 'smooth-hair'),
(526, '2012-05-18 09:11:36', 'Banner 13', 'banner-13.jpg', '', 15, 'banners', 'news', 1, 'smooth-hair'),
(527, '2012-05-18 09:11:57', 'Banner 14', 'banner-14.jpg', '', 16, 'banners', 'about', 1, 'smooth-hair'),
(528, '2012-05-18 09:16:30', 'Banner 15', 'banner-15.jpg', '', 17, 'banners', 'about', 1, 'smooth-hair'),
(529, '2012-05-18 09:16:53', 'Banner 16', 'banner-16.jpg', '', 18, 'banners', 'contact', 1, 'smooth-hair'),
(530, '2012-05-18 09:18:01', 'Banner 17', 'banner-17.jpg', '', 19, 'banners', 'contact', 1, 'smooth-hair'),
(531, '2012-05-18 09:21:02', 'Banner 18', 'banner-18.jpg', '', 20, 'banners', 'news', 1, 'smooth-hair'),
(532, '2012-05-18 09:22:09', 'Banner 19', 'banner-19.jpg', '', 21, 'banners', 'services', 1, 'smooth-hair'),
(533, '2012-05-18 09:22:42', 'Banner 20', 'banner-20.jpg', '', 22, 'banners', 'news', 1, 'smooth-hair'),
(534, '2012-05-18 09:23:02', 'Banner 21', 'banner-21.jpg', '', 23, 'banners', 'contact', 1, 'smooth-hair');

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
('Trang chủ', '', 'default', '', 1, '', '', '', '', 'smooth-hair'),
('Giới thiệu', '', 'about', '', 2, '', '', '', '', 'smooth-hair'),
('Sản phẩm', '', 'products', '', 3, '', '', '', '', 'smooth-hair'),
('Khuyến mãi', '', 'services', '', 4, '', '', '', '', 'smooth-hair'),
('Tin tức & sự kiện', '', 'news', '', 5, '', '', '', '', 'smooth-hair'),
('Liên hệ', '', 'contact', '', 6, '', '', '', '', 'smooth-hair');

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
) ENGINE=InnoDB  DEFAULT CHARSET=utf8 AUTO_INCREMENT=113 ;

--
-- Dumping data for table `dos_module_news`
--

INSERT INTO `dos_module_news` (`record_id`, `title`, `titleen`, `postdate`, `pic_thumb`, `preview`, `previewen`, `content`, `contenten`, `tag`, `tagen`, `description`, `descriptionen`, `hits`, `record_order`, `hot`, `extra_field1`, `extra_field2`, `enable`, `dos_module_item_cat_cat_id`) VALUES
(110, 'Dòng nước hoa nào sẽ “soán ngôi” Chanel No.5?', '', '2012-05-18 08:52:36', 'dong-nuoc-hoa-nao-se-soan-ngoi-chanel-no-5.jpg', '<p style="text-align:justify;">Sản xuất nước hoa là một ngành công nghiệp độc đáo. Trong khi có nhiều phụ nữ thay đổi nước hoa qua mỗi mùa, thì lại có một số khác chỉ dùng một hương thơm duy nhất trong nhiều năm...</p>', '', '<p style="text-align:center;"><img src="/public/userfiles/image/mauweb/image/tt1.jpg" alt="" width="600" height="400" /></p>\n<p style="text-align:justify;">Sản xuất nước hoa là một ngành công nghiệp độc đáo. Trong khi có nhiều phụ nữ thay đổi nước hoa qua mỗi mùa, thì lại có một số khác chỉ dùng một hương thơm duy nhất trong nhiều năm. Mặc cho thị trường nước hoa ngày càng lớn mạnh và sự lấn sân của những người nổi tiếng, Chanel No. 5 vẫn vượt qua những thử thách của thời gian và trở thành một biểu tượng nước hoa huyền thoại.</p>\n<p style="text-align:justify;">Có một lần, Christian Dior đã nói, "Mùi hương của một người phụ nữ nói lên nhiều điều hơn cả chữ viết tay của cô ấy". Tuy nhiên, có vẻ như thời đại của Chanel No.5 đã sắp kết thúc khi mà nó không còn nhận được sự ưu ái của lớp trẻ ngày nay. Nhiều phụ nữ trẻ cho rằng, hương thơm của No.5 quá nồng và không hữu dụng, nhất là vào ban ngày. Điều này cũng đồng nghĩa với thời điểm để một mùi hương mới trở thành biểu tượng cho giới trẻ. Hãy cùng xem thử những dòng nước hoa nào sẽ trở thành đối thủ nặng kí có thể soán ngôi vị huyền thoại Chanel No. 5.</p>\n<p style="text-align:justify;"><strong><span style="font-size:14pt;">Burberry Body</span></strong></p>\n<p style="text-align:justify;">Tất cả những ai sử dụng Internet có lẽ đều đã nghe nói đến dòng nước hoa mới của Burberry. Hình ảnh quá nóng bỏng Rosie Huntington-Whiteley trong chiến dịch quảng cáo Burberry Body xuất hiện ở mọi phương tiện truyền thông trên thế giới, nhưng liệu chai nước hoa này có thật sự tạo nên cơn sốt? Điều giúp Body trở thành ứng cử viên sáng giá nhất chính là lượng tiêu thụ khổng lồ, trong khi yếu tố tạo ra sức mạnh của Chanel No. 5 là những chiến dịch quảng cáo hoành tráng với sự góp mặt của các ngôi sao.Nếu Burberry có thể đuổi kịp Chanel về mặt quảng bá thì Body có thể sẽ trở thành dòng nước hoa đi vào lịch sử.</p>\n<p style="text-align:center;"><img src="/public/userfiles/image/mauweb/image/tt2.jpg" alt="" width="300" height="450" /><img src="/public/userfiles/image/mauweb/image/tt4.jpg" alt="" width="300" height="450" /></p>\n<p style="text-align:justify;"><span style="font-size:14pt;"><strong>Marc Jacobs Daisy</strong></span></p>\n<p style="text-align:justify;">Một trong những vấn đề lớn nhất của No. 5 hiện nay là nó nhắm đến thị trường sang trọng dành cho phụ nữ lớn tuổi. Những cô gái trẻ không muốn một dòng nước hoa huyền thoại, mà họ cần một thương hiệu gần gũi hơn, với một sản phẩm mà họ có thể sở hữu trong tương lai. Marc Jacobs có sức hút mạnh mẽ đối với các cô gái trên toàn thế giới, điều mà những thương hiệu khác tỏ ra lép vế hơn. Một thương hiệu dành được nhiều tính cảm của cô gái trẻ là một yếu tố đáng giá có thể biến "Daisy" của Marc Jacobs trở thành chai nước hoa được khao khát.</p>\n<p style="text-align:justify;"><span style="font-size:14pt;"><strong>Chanel Coco Mademoiselle</strong></span></p>\n<p style="text-align:justify;">Thường được xem chị em với No.5, nhưng "Mademoiselle" có hương thơm ngọt ngào và nhẹ nhàng hơn. "Mademoiselle" có sức hấp dẫn thị trường đại chúng nhờ mùi hương cân bằng, lâu phai và tươi mát. Hơn nữa, dòng nước hoa này còn có được sức mạnh hậu thuẫn của No. 5 với những video quảng cáo hoành tráng, ngân sách quảng bá khổng lồ và các gương mặt đại diện nổi tiếng.</p>\n<p style="text-align:center;"><img src="/public/userfiles/image/mauweb/image/tt3.jpg" alt="" width="300" height="450" /><img src="/public/userfiles/image/mauweb/image/tt5.jpg" alt="" width="300" height="450" /></p>\n<p style="text-align:justify;"><span style="font-size:14pt;"><strong>Tom Ford Black Orchid</strong></span></p>\n<p style="text-align:justify;">Mặc dù "Black Orchid" có hương thơm tuyệt vời, nhưng nhân tố hấp dẫn ở đây lại đến từ nhà thiết kế hào hoa Tom Ford. Hầu như tất cả những thứ được tạo ra bởi Tom Ford đều có sức quyến rũ mãnh liệt đối với phụ nữ.</p>\n<p style="text-align:justify;">Mặc cho các dòng nước hoa có chiến dịch quảng bá hoành tráng hay số lượng tiêu thụ khổng lồ, thì chỉ có thời gian mới có thể trả lời được dòng nước hoa nào có đủ sức mạnh để chiếm được vị trí thống trị của No.5.</p>\n<p style="text-align:right;"><em>Theo thefashionspot</em></p>', '', 'dong-nuoc-hoa-nao-se-soan-ngoi-chanel-no5', '', '', '', 0, 1, 0, '', '', 1, 74),
(111, 'Nghệ thuật chọn nước hoa', '', '2012-05-18 08:56:08', 'nghe-thuat-chon-nuoc-hoa.jpg', '<p style="text-align:justify;">Sử dụng nước hoa là cả một nghệ thuật, một biểu hiện của sự văn minh. Một số người dùng nước hoa như một cách biểu lộ tính cách của mình mà không cần phải nhiều lời.</p>', '', '<p style="text-align:center;"><img src="/public/userfiles/image/mauweb/image/nh2.jpg" alt="" width="300" height="300" /></p>\n<p style="text-align:justify;">Được chắc lọc từ những hương liệu tinh túy nhất, nước hoa đem đến cho người dùng những cảm xúc miên man khó tả. Với các tín đồ hương thơm, nước hoa là một phụ kiện vô hình không thể thiếu, giúp mang lại sự tự tin, quyến rũ và tinh tế cho người dùng. Còn với những người vừa mới bắt đầu bước chân vào thế giới của những thứ nước thơm huyễn hoặc và xa xỉ này, nếu chọn đúng một lọ thích hợp thì đã dùng một lần không thể không tiếp tục dùng thêm lần nữa. Nước hoa như một thứ độc dược có khả năng quyến rũ chết người, khiến người ta nghiện, say và mê đắm.</p>\n<p style="text-align:center;"><img src="/public/userfiles/image/mauweb/image/nh3.jpg" alt="" width="300" height="300" /></p>\n<p style="text-align:justify;">Ngày nay, nước hoa không còn là sản phẩm chỉ dành cho giới thượng lưu mà đã phổ biến trong mọi tầng lớp. Tuy nhiên, chọn được một lọ nước hoa sao cho như ý không phải là điều ai cũng làm được. Cách tốt nhất là nên chọn những nhà cung cấp uy tín, chuyên bán các loại nước hoa nhập khẩu chính hãng. Với những địa đáng tin cậy, bạn hoàn toàn yên tâm về chất lượng, nguồn gốc xuất xứ sản phẩm. Ngoài ra, họ còn có một đội ngũ nhân viên tư vấn chuyên nghiệp, sẵn sàng tư vấn nhiệt tình để bạn chọn được lọ nước hoa phù hợp nhất.</p>\n<p style="text-align:center;"><img src="/public/userfiles/image/mauweb/image/nh4.jpg" alt="" width="300" height="300" /></p>\n<p style="text-align:justify;"> </p>\n<p style="text-align:justify;">Với mong muốn đem đến cho quý khách hàng gần xa trên khắp cả nước những sản phẩm nước hoa chính hãng, có chất lượng tốt nhất, mẫu mã đa dạng, giá cả cạnh tranh với tiêu chí phục vụ khách hàng một cách tốt nhất.</p>', '', 'nghe-thuat-chon-nuoc-hoa', '', '', '', 0, 2, 0, '', '', 1, 74),
(112, 'Bộ sản phẩm tan mỡ săn chắc da Biotherm', '', '2012-05-18 09:05:19', 'bo-san-pham-tan-mo-san-chac-da-biotherm.jpg', '<p style="text-align:justify;">Là phụ nữ ai cũng mong muốn mình luôn đẹp trong mắt của mọi người, không chỉ là vẻ đẹp của tâm hồn mà còn là vẻ đẹp của hình thể, ước muốn có được một vóc dáng thanh cao, thon thả, săn chắc để được diện những bộ cánh phù hợp tôn lên nét đẹp dịu dàng, đằm thắm, cá tính, trẻ trung, xinh tươi là mơ ước của đa số chị em phụ nữ hiện nay.</p>', '', '<p style="text-align:justify;">Là phụ nữ ai cũng mong muốn mình luôn đẹp trong mắt của mọi người, không chỉ là vẻ đẹp của tâm hồn mà còn là vẻ đẹp của hình thể, ước muốn có được một vóc dáng thanh cao, thon thả, săn chắc để được diện những bộ cánh phù hợp tôn lên nét đẹp dịu dàng, đằm thắm, cá tính, trẻ trung, xinh tươi là mơ ước của đa số chị em phụ nữ hiện nay.</p>\n<p style="text-align:justify;">Theo thống kê của Viện Dinh Dưỡng quốc gia cho thấy gần 10% phụ nữ VN trong độ tuổi sinh đẻ bị béo phì do ảnh hưởng của lối sống hiện đại.</p>\n<p style="text-align:justify;">· Mặc dù tỷ lệ thừa cân ở Nam cao hơn 10% so với ở nữ nhưng tỷ lệ béo phì ở bụng (eo) ở nữ giới lại cao hơn tới 11%</p>\n<p style="text-align:center;"><img src="/public/userfiles/image/mauweb/image/bi1.jpg" alt="" width="336" height="457" /><img src="/public/userfiles/image/mauweb/image/bi2.jpg" alt="" width="370" height="461" /></p>\n<p style="text-align:justify;">· Đa số các chị em phụ nữ nếu xét về tổng quan thì không béo, nhưng vùng bụng lại nhô lên, rất khó diện những bộ đồ dễ thương. Nguyên nhân của hiện tượng trên là do cơ bụng của chị em phụ nữ lỏng lẻo (nhất là phụ nữ sau khi sinh và giới nhân viên văn phòng) khiến mỡ dễ tích tụ lại vùng bụng, nếu không có chế độ vận động và dinh dưỡng hợp lý thì...???</p>\n<p style="text-align:justify;">· Bạn có đang nằm trong số họ ????</p>\n<p style="text-align:justify;"><strong>Xin giới thiệu đến các bạn bộ sản phẩm tan mỡ - săn chắc da của Biotherm</strong> là giải pháp vô cùng hiệu quả, xua tan nỗi lo về hình thể.</p>\n<p style="text-align:center;"><img src="/public/userfiles/image/mauweb/image/bi3.jpg" alt="" width="500" height="345" /></p>\n<p style="text-align:justify;">Bộ sản phẩm giảm béo - săn chắc Biotherm Body Resculpt Abdo chăm sóc thật hoàn hảo cho body của bạn gồm 4 sản phẩm:</p>\n<p style="text-align:justify;"><strong>1. Body Resculpt Abdo</strong></p>\n<p style="text-align:justify;">Là sản phẩm giúp ngăn chặn sự hình thành hấp thụ calorie, ngăn cản việc chuyển đổi của carbonhydrates và đường thành chất béo. Sản sinh ra nhiều collagen mới giúp kích thích cơ thể đốt cháy lượng mỡ dư thừa tạo thành năng lượng cho các hoạt động của cơ thể, qua đó đào thải đến 85% lượng mỡ dư thừa trong cơ thể.</p>\n<p style="text-align:justify;"><span style="text-decoration:underline;"><em><strong>Hướng dẫn sử dụng:</strong></em></span></p>\n<p style="text-align:justify;">Nên bôi kem sau khi tắm, là khi các lỗ chân nở to, giúp các hoạt chất thấm qua da nhiều hơn.Sau khi bôi thuốc nên vận động, tập thể thao để “đốt” thêm lượng mỡ dư thừa.Sau khi bôi, nên chà xát ngoài da để loại bỏ những tế bào chết, thay thế bằng lớp tế bào mới làm cho da mịn, dễ thấm nước.</p>\n<p style="text-align:justify;"><strong>2. Body Resculpt Lift</strong></p>\n<p style="text-align:justify;">Là sản phẩm được ứng dụng theo công nghệ sinh học elastide, giúp làm săn chắc phục hồi sự đàn hồi cho da.</p>\n<p style="text-align:justify;"><strong>Thành phần:</strong> Hoạt chất chống phân hủy collagen và elastin, AHA, tiền vitamin B5, tinh dầu mè, thành phần giữ ẩm.</p>\n<p style="text-align:justify;"><strong>Công dụng:</strong> Tăng độ đàn hồi của da, nuôi dưỡng và bảo vệ giúp mang lại làn da mịn màng, săn chắc.</p>\n<p style="text-align:justify;"><strong>Hướng dẫn sử dụng:</strong> Thoa Kem đều trên da vào buổi sáng và tối. Sử dụng hàng ngày ít nhất 3 tuần để có được hiệu quả lâu dài.</p>\n<p style="text-align:justify;"><strong>3. Celluli Laser Biofibrine</strong></p>\n<p style="text-align:justify;">Làm tan lượng mỡ thừa, làm phẳng mịn bề mặt da, nuôi dưỡng da trực tiếp, kích thích đốt lượng mỡ thừa đặc biệt vùng bụng và đùi. Cafein tác động trực tiếp giúp lượng mỡ thừa đốt cháy nhanh hơn. Và thải hồi mỡ qua đường mồ hôi và nước tiểu, ngăn ngừa tiếp nạp mỡ dư thừa vào cơ thể từ thức ăn.</p>\n<p style="text-align:justify;"><em><strong>Hiệu quả thấy được sau 2 tuần sử dụng.</strong></em></p>\n<p style="text-align:justify;"><strong>Hướng dẫn massage</strong>: Massage khoảng 15 phút sau khi xoa gel.</p>\n<p style="text-align:justify;">Xoa bóp hàng ngày và đều đặn từ gót chân lên đầu gối, đùi và hông. Bôi kem vào buổi sáng lúc bụng đói, vì lúc đói các cơ quan trong cơ thể sẽ sử dụng mỡ để tạo năng lượng (xả bớt mỡ). Tốt nhất nên bôi kem sau khi tắm, là khi các lỗ chân nở to, giúp các hoạt chất thấm qua da nhiều hơn.</p>\n<p style="text-align:justify;">- Sau khi bôi thuốc nên vận động, tập thể thao để “đốt” thêm lượng mỡ dư thừa.</p>\n<p style="text-align:justify;">- Sau khi bôi, nên chà xát ngoài da để loại bỏ những tế bào chết, thay thế bằng lớp tế bào mới làm cho da mịn, dễ thấm nước. Lưu ý: Sau khi xoa gel nên massage 15 phút, cơ thể bạn có thể cảm nhận được sức nóng từ gel. Mức độ tùy thuộc từng cơ địa, lượng gel và cách sử dụng.</p>\n<p style="text-align:justify;"><strong>4. Biosenses nutrition</strong></p>\n<p style="text-align:justify;">Được làm giàu với các loại tinh dầu và các khoáng chất làm sâu bên trong dưỡng ẩm, bổ sung và làm mềm da với khoáng chất oleo đặc biệt cho da khô.</p>', '', 'bo-san-pham-tan-mo-san-chac-da-biotherm', '', '', '', 0, 3, 0, '', '', 1, 74);

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
) ENGINE=InnoDB  DEFAULT CHARSET=utf8 AUTO_INCREMENT=77 ;

--
-- Dumping data for table `dos_module_news_cat`
--

INSERT INTO `dos_module_news_cat` (`cat_id`, `cat_parent_id`, `cat_title`, `cat_titleen`, `preview`, `previewen`, `tag`, `tagen`, `description`, `descriptionen`, `pic_full`, `cat_order`, `cat_extra1`, `cat_extra2`, `cat_enable`, `dos_usernames_username`) VALUES
(74, 0, 'Tin tức thẩm mỹ', '', '', '', 'tin-tuc-tham-my', '', '', '', '', 1, '', '', 1, 'smooth-hair'),
(75, 0, 'Tin tức dinh dưỡng', '', '', '', 'tin-tuc-dinh-duong', '', '', '', '', 2, '', '', 1, 'smooth-hair'),
(76, 0, 'Cẩm nang - Kiến thức', '', '', '', 'cam-nang-kien-thuc', '', '', '', '', 3, '', '', 1, 'smooth-hair');

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
('day_time', 2456070),
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
('''::1''', 1337658242);

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
) ENGINE=InnoDB  DEFAULT CHARSET=utf8 AUTO_INCREMENT=1089 ;

--
-- Dumping data for table `dos_module_products`
--

INSERT INTO `dos_module_products` (`record_id`, `title`, `titleen`, `postdate`, `pic_thumb`, `pic_full`, `pic_desc`, `preview`, `previewen`, `content`, `contenten`, `tag`, `tagen`, `description`, `descriptionen`, `hits`, `record_order`, `unit`, `hot`, `specials`, `extra_field1`, `extra_field2`, `extra_field3`, `extra_field4`, `enable`, `dos_module_item_cat_cat_id`) VALUES
(1063, 'SỮA DIELAC ALPHA 123 (900G)', '', '2012-05-17 03:41:05', 'sa-dielac-alpha-123-900g-thumb.jpeg', 'sa-dielac-alpha-123-900g.jpg', 'sa-dielac-alpha-123-900g-desc-1.jpeg|sa-dielac-alpha-123-900g-desc-2.JPG', '<p>Mã sản phẩm: VNM301</p>\n<p>Sữa bột dành cho trẻ từ 1 – 3 tuổi</p>', '', '<p style="text-align:justify;"><strong>DIELAC ALPHA 123</strong></p>\n<p style="text-align:justify;"><strong>Sữa bột dành cho trẻ từ 1 – 3 tuổi</strong></p>\n<p style="text-align:justify;">Sữa bột Dielac Alpha 123được nghiên cứu bởiTrung tâm nghiên cứu dinh dưỡng và Phát triển sản phẩm VINAMILKtheo khuyến nghị của Ủy ban dinh dưỡng quốc tế Codex Alimentariusvề dinh dưỡng đối với trẻ sơ sinh và trẻ nhỏ. Sản phẩm được chứng nhận quốc tế về an toàn vệ sinh thực phẩm HACCP.</p>\n<p style="text-align:justify;">Công thức độc quyền Alpha bổ sung Sữa non Colostrum, DHA, Choline, Inulin, Omega 3:Omega 6 và các dưỡng cần thiết khác nhằm cung cấp cho bé một năng lượng sống mạnh mẽ, bảo vệ bé khỏi các tác nhân gây bệnh trong giai đoạn từ 1 đến 3 tuổi để bé phát triển hoàn hảo.</p>\n<p style="text-align:justify;"><strong>** Sữa non Colostrum</strong> – Tăng sức đề kháng: Giai đoạn từ 1-3 tuổi, bé bắt đầu tiếp xúc nhiều hơn với môi trường xung quanh. Do đó, việc thường xuyên bổ sung sữa non Colostrum đế cung cấp một lượng lớn các kháng thể, đặc biệt là IgA có tác dụng tăng cường hệ miễn dịch giúp bé luôn khỏe mạnh, năng động để khám phá thế giới xung quanh, đồng thời hỗ trợ hệ tiêu hoá phát triển tốt cho bé hấp thu tối ưu các chất dinh dưỡng để phát triển toàn diện.</p>\n<p style="text-align:justify;"><strong>** DHA, Omega 3: Omega 6 và Choline – Phát triển trí não:</strong></p>\n<p style="text-align:justify;">- DHA được chiết xuất từ cá ngừ đại dương (tuna) và acid béo Omega 3: Omega 6 là những dưỡng chất rất cần thiết cho sự hình thành cấu trúc và phát triển chức năng của não bộ, tế bào võng mạc mắt làm nền tảng cho sự phát triển trí tuệ của bé.</p>\n<p style="text-align:justify;">- Choline là thành phần quan trọng trong cấu trúc màng tế bào thần kinh hỗ trợ cho sự phát triển nhận thức của bé.</p>\n<p style="text-align:justify;"><strong>** Inulin, Canxi và khoáng chất – Thúc đẩy phát triển chiều cao và thể chất:</strong></p>\n<p style="text-align:justify;">-Inulin &amp; Oligofructose: là chất xơ hòa tan, được chiết xuất từ thực vật, có tác dụng hỗ trợ tiêu hóa, tăng vi khuẩn có lợi cho đường ruột và có tác dụng nhuận tràng bảo vệ sức khỏe của bé.</p>\n<p style="text-align:justify;">-Hàm lượng Canxi cao và tỷ lệ Vitamin D/Ca phù hợp giúp hệ xương phát triển tốt nhất, tối đa hóa khả năng hấp thụ Canxi làm tiền đề phát triển chiều cao tối ưu sau này.</p>\n<p style="text-align:justify;">Đồng thờiDielac Alpha 123còn cung cấp các Vitamin và nhiều dưỡng chất khác phù hợp cho sự phát triển hoàn hảo cho bé từ 1 đến 3 tuổi theo khuyến nghị củaỦy ban dinh dưỡng quốc tế Codex Alimentarius.</p>\n<p style="text-align:justify;"><strong>Dielac Alpha– Nguồn dinh dưỡng quí báu từ tình yêu của mẹ</strong></p>\n<p style="text-align:justify;">Khi bé được 4 tuổi, bạn nên chuyển sang cho bé dùngDielac Alpha 456được nghiên cứu riêng cho trẻ từ 4 đến 6 tuổi.</p>\n<p style="text-align:justify;"> </p>', '', 'sua-dielac-alpha-123-900g', '', '', '', 0, 1, '159,000 VND', 0, 0, '', '', '', '', 1, 298),
(1064, 'SỮA DIELAC PEDIA 1+ (900G)', '', '2012-05-17 03:46:47', 'sa-dielac-pedia-1-900g-thumb.jpeg', 'sa-dielac-pedia-1-900g.gif', 'sa-dielac-pedia-1-900g-desc-2.jpeg', '<p>Mã sản phẩm: VNM304</p>\n<p>sản phẩm Vinamilk dành riêng cho trẻ biếng ăn từ 1 – 3 tuổi</p>\n<p> </p>', '', '<p style="text-align:justify;"><strong>DIELAC PEDIA – GIẢI PHÁP ĐỘT PHÁ CHO TRẺ BIẾNG ĂN VIỆT NAM</strong></p>\n<p style="text-align:justify;">Sản phẩm dinh dưỡng đặc biệt Dielac Pedia 1+ được nghiên cứu bởi Trung Tâm nghiên cứu dinh dưỡng và phát triển sản phẩm Vinamilk dành riêng cho trẻ biếng ăn từ 1 – 3 tuổi, trên cơ sở kích thích trẻ ăn ngon miệng, hỗ trợ sức khỏe hệ tiêu hóa để giúp trẻ hấp thu đầy đủ các dưỡng chất cần thiết, khắc phục được chứng biếng ăn và bắt kịp nhịp tăng trưởng của trẻ.</p>\n<p style="text-align:justify;"><img src="/public/userfiles/image/mauweb/image/dielacPedia.jpg" alt="" width="680" height="456" /></p>\n<p style="text-align:justify;">Các vitamin và khoáng chất phù hợp nhu cầu khuyến nghị RNI Việt Nam và cholin, DHA, taurin cần thiết cho sự phát triển về thể chất và trí não của trẻ.</p>', '', 'sua-dielac-pedia-1-900g', '', '', '', 0, 2, '290,000 VND', 0, 0, '', '', '', '', 1, 298),
(1065, 'SỮA DIELAC MAMA VANILA (900g)', '', '2012-05-17 06:49:28', 'sa-dielac-mama-vanila-900g-thumb.jpeg', 'sa-dielac-mama-vanila-900g.jpg', 'sa-dielac-mama-vanila-900g-desc-1.jpg|sa-dielac-mama-vanila-900g-desc-1.jpeg', '<p>Mã sản phẩm: VNM101</p>\n<p>Sữa bột dành cho bà mẹ mang thai và cho con bú</p>', '', '<p style="text-align:justify;"><strong>Sữa bột dành cho bà mẹ mang thai và cho con bú</strong></p>\n<p style="text-align:justify;">Sữa bột Dielac Mama được nghiên cứu bởi Trung tâm Nghiên cứu dinh dưỡng và Phát triển sản phẩm VINAMILK. Sản phẩm được chứng nhận quốc tế về an toàn vệ sinh thực phẩm HACCP.</p>\n<p style="text-align:justify;">Sữa bột Dielac Mama hương Vanilla được đặc chế theo công thức đặc biệt dành riêng cho phụ nữ trong thời kỳ mang thai và cho con bú. Trong thời kỳ chuẩn bị mang thai, mang thai, ngay cả sau khi sinh con và cho con bú, nhu cầu của các bà mẹ về các thành phần dinh dưỡng, vitamin và khoáng chất rất cao, đặc biệt là các thành phần quyết định giúp bé phát triển một cách toàn diện, khỏe mạnh cả về thể chất lẫn trí tuệ sau này.</p>\n<p style="text-align:justify;">Sữa bột Dielac Mama hương Vanilla giàu dinh dưỡng, được bổ sung canxi, sắt, kẽm, I ốt, vitamin A, C, D3, E và hỗn hợp vitamin B một cách đầy đủ và cân đối; không những tăng cường sức khỏe của bà mẹ mà còn giúp cho sự phát triển hoàn thiện của bé, phòng ngừa nguy cơ để lại những di chứng khó khắc phục khi trẻ trưởng thành.<br />Đặc biệt Sữa bột Dielac Mama còn được bổ sung thêm các dưỡng chất :</p>\n<p style="text-align:justify;"><strong>- DHA</strong>: là axit béo rất quan trọng trong việc hình thành, phát triển não bộ, võng mạc mắt và hệ thần kinh của bé.</p>\n<p style="text-align:justify;"><strong>- Axit folic</strong>: chống dị tật ống thần kinh trong quá trình hình thành thai nhi.<br /><strong>- Canxi:</strong> giúp phát triển hệ xương của bé một cách cứng cáp.</p>\n<p style="text-align:justify;"><strong>- Sắt</strong>: tạo hồng cầu, phòng ngừa bệnh thiếu máu của các bà mẹ trong thời kỳ mang thai.</p>\n<p style="text-align:justify;"><strong>- I ốt:</strong> tăng cường hoạt động của tuyến giáp, loại trừ nguy cơ bé bị chậm phát triển sau khi sinh.</p>\n<p style="text-align:justify;"><strong>- Choline</strong>: có tác dụng hỗ trợ cho sự phát triển thị lực và trí não của bé sau này.</p>\n<p style="text-align:justify;"><strong>- FOS (Oligofructose)</strong>: là chất xơ thực vật, có tác dụng hỗ trợ hệ tiêu hóa, tăng khả năng hấp thu các chất dinh dưỡng và có tác dụng nhuận tràng, chăm sóc sức khỏe cho bà mẹ trong thời kỳ mang thai và cho con bú.</p>\n<p style="text-align:justify;"> </p>', '', 'sua-dielac-mama-vanila-900g', '', '', '', 0, 3, '132,000 VND', 0, 0, '', '', '', '', 1, 298),
(1066, 'Dầu gội đầu DOP', '', '2012-05-17 07:10:07', 'dau-goi-dau-dop-thumb.jpg', 'dau-goi-dau-dop.jpg', 'dau-goi-dau-dop-desc-1.jpg|dau-goi-dau-dop-desc-2.jpg', '<p>Chai: 400ml</p>\n<p>Made in France (Pháp)</p>\n<p>Tình trạng: Còn</p>', '', '<p>Dầu gội 2 in 1 chứa Pro-Vitamin B5 và Vitamin B6, cải thiện tóc khô và chẻ ngọn, công thức có chứa PH giúp cho tóc bóng khoẻ.</p>\n<p>Hiện còn 2 màu:</p>\n<p style="text-align:center;"> </p>\n<p style="text-align:center;"> </p>', '', 'dau-goi-dau-dop', '', 'Dầu gội đầu, Dau goi dau, Dau goi, Dầu gội, Dầu gội đầu Dop, Dau goi dau Dop, Dau goi tri gau, Dàu gội trị gàu', '', 0, 15, '150,000 VND', 0, 0, '', '', '', '', 1, 299),
(1067, 'Dầu gội đầu và dầu xả Dessange', '', '2012-05-17 07:11:55', 'dau-goi-dau-va-dau-xa-dessange-thumb.jpg', 'dau-goi-dau-va-dau-xa-dessange.jpg', '', '<p>Made in France</p>\n<p>Dầu gội: 250ML, Kem xả: 200ML</p>\n<p>Tình trạng: Còn</p>\n<p> </p>', '', '<p style="text-align:justify;">Bộ dầu gội và kem xả Dessange (Pháp), chứa dưỡng chất &amp; pro -vitamin B5 có tác dụng nuôi dưỡmg tóc khoẻ và luôn bóng mượt. Hương thơm trẻ trung quyến rũ.Có các màu: Đen cho tóc yếu, tím cho tóc uốn nhuộm và xơ, màu vàng đậm cho tóc dầu, màu trắng cho tóc thường</p>', '', 'dau-goi-dau-va-dau-xa-dessange', '', 'Dầu gội đầu, Dau goi dau, Dau goi, Dầu gội, Dầu gội đầu Dessange, Dau goi dau Dessange, Dau goi tri gau, Dàu gội trị gàu, Dầu xả, Dessage', '', 0, 5, '320,000 VND', 0, 0, '', '', '', '', 1, 299),
(1068, 'Dầu gội đầu, xả Evoluderm', '', '2012-05-17 07:15:01', 'dau-goi-dau-xa-evoluderm-thumb.jpg', 'dau-goi-dau-xa-evoluderm.jpg', '', '<p>Dầu gội: 300ml</p>\n<p>Dầu xả: 200ml</p>\n<p>EVOLUDERM (Pháp)</p>\n<p>Tình trạng: Còn</p>\n<p> </p>', '', '<p style="text-align:justify;">Còn màu trắng cho tóc thường và màu tím cho tóc nhuộm.</p>\n<p style="text-align:justify;">Đối với tóc nhuộm màu, có chức năng làm sạch gàu, thường xuyên sử dụng dầu gội đầu EVOLUDERM, với công thức làm giàu với glycerin, bảo vệ màu tóc từ các tác hại của môi trường hàng ngày, nuôi dưỡng và chăm sóc các vùng tóc yếu bị hư tổn.</p>', '', 'dau-goi-dau-xa-evoluderm', '', '', '', 0, 13, '260,000 VND', 0, 0, '', '', '', '', 1, 299),
(1069, 'Dầu xả Dia', '', '2012-05-17 07:17:53', 'dau-xa-dia-dia-thumb.jpg', 'dau-xa-dia-dia.jpg', '', '<p>Xuất xứ: Tây Ban Nha</p>\n<p>Tình trạng: Còn</p>', '', '<p>Liên hệ</p>', '', 'dau-xa-dia', '', 'Dầu xả, Dau xa, Duong toc, Dưỡng tóc, Dầu dưỡng tóc, Dau duong toc, Dau xa dia, Dầu xả dia', '', 0, 12, '140,000 VND ', 0, 0, '', '', '', '', 1, 299),
(1070, 'Dầu gội đầu Nam Nivea active3', '', '2012-05-17 07:19:00', 'dau-goi-dau-nam-nivea-active3-thumb.jpg', 'dau-goi-dau-nam-nivea-active3.jpg', '', '<p>Sản xuất tại Đức</p>\n<p>Chai: 250ml</p>\n<p>Tình trạng: Còn</p>\n<p> </p>', '', '<p>Dầu gội Nam Nivea 3 tác dụng: Tắm-Gội-Cạo Râu</p>\n<p>Hương thơm quyến rũ.</p>', '', 'dau-goi-dau-nam-nivea-active3', '', 'Dầu gội, Dau goi, Dầu gội đầu, Dau goi dau, Dau goi dau nam, Dầu gội đầu nam, Dau goi nam, Dầu gội nam, Kem cạo râu, Kem cao rau, Sua tam, Sữa tắm, Sữa tắm nam, Sua tam nam', '', 0, 8, '105,000 VND', 0, 0, '', '', '', '', 1, 299),
(1071, 'Dầu gội đầu cho nam DIA', '', '2012-05-17 07:20:59', 'dau-goi-dau-cho-nam-dia-thumb.jpg', 'dau-goi-dau-cho-nam-dia.jpg', '', '<p>Sản xuất: Dia (Tây Ban Nha)</p>\n<p>Tình trạng:</p>', '', '<p>Liên hệ</p>', '', 'dau-goi-dau-cho-nam-dia', '', 'Dầu gội đầu, Dau goi dau, Dau goi, Dầu gội, Dầu gội dưỡng tóc nam, Dau goi dau duong toc nam, Dau goi tri gau, Dàu gội trị gàu', '', 0, 10, '140,000 VND', 0, 0, '', '', '', '', 1, 299),
(1072, 'Tắm gội trẻ em DIA', '', '2012-05-17 07:23:05', 'tam-goi-tre-em-dia-thumb.jpg', 'tam-goi-tre-em-dia.jpg', 'tam-goi-tre-em-dia-desc-1.jpg|tam-goi-tre-em-dia-desc-2.jpg|tam-goi-tre-em-dia-desc-3.jpg', '<p>Sản xuất tại Tây Ban Nha</p>\n<p>Chai 300ml</p>\n<p>Tình trạng: Còn</p>\n<p> </p>', '', '<p>Có nhiều mùi các loại trái cây rất ngọt ngào.</p>', '', 'tam-goi-tre-em-dia', '', 'Sữa tắm, Sua tam, Sữa tắm trẻ em, Sua tam tre em, Tắm gội trẻ em DIA, Tam goi tre em DIA, Dau goi tre em, Dầu gội trẻ em, Dau goi dau tre em, Dầu gội đầu trẻ em', '', 0, 9, '135,000 VND', 0, 0, '', '', '', '', 1, 299),
(1073, 'Dầu gội đầu Fructis', '', '2012-05-17 07:24:26', 'dau-goi-dau-fructis-thumb.jpg', 'dau-goi-dau-fructis.jpg', '', '<p>Sản xuất tại Pháp</p>\n<p>Chai 300ml</p>\n<p>Tình trạng:</p>\n<p> </p>', '', '<p style="text-align:justify;">Với chiết xuất từ hoa quả kết hợp acidamin, vitamin B3+B6 cùng các loại dưỡng chất Fructose và glucose sẽ làm cho tóc và da đầu luôn sạch sẽ. Giúp bạn luôn có cảm giác tươi mát và một mái tóc suôn mượt.</p>', '', 'dau-goi-dau-fructis', '', 'Dầu gội đầu, Dau goi dau, Dau goi, Dầu gội đầu Fructis, Dau goi dau Fructis, Dau goi tri gau, Dàu gội trị gàu', '', 0, 14, '150,000 VND', 0, 0, '', '', '', '', 1, 299),
(1074, 'Dầu gội đầu, dầu xả Loreal', '', '2012-05-17 07:26:00', 'dau-goi-dau-dau-xa-loreal-thumb.jpg', 'dau-goi-dau-dau-xa-loreal.jpg', '', '<p>Lọ: 250ml</p>\n<p>Made in France (Pháp)</p>\n<p>Tình trạng:</p>', '', '<p>Mùi thơm mát dễ chịu, thích hợp cho tóc nhuộm, tóc khô và chẻ ngọn</p>', '', 'dau-goi-dau-dau-xa-loreal', '', 'Dầu gội đầu, Dau goi dau, Dau goi, Dầu gội, Dầu gội đầu Loreal, Dau goi dau Loreal, Dau goi tri gau, Dàu gội trị gàu, Dầu xả, Dau xa, Duong toc, Dưỡng tóc, Dầu dưỡng tóc, Dau duong toc', '', 0, 7, '265,000 VND', 0, 0, '', '', '', '', 1, 299),
(1075, 'Kem ủ dưỡng tóc Evoluderm', '', '2012-05-17 07:29:14', 'kem-u-duong-toc-evoluderm-thumb.jpg', 'kem-u-duong-toc-evoluderm.jpg', '', '<p>Hộp: 500ml</p>\n<p>Made in France (Pháp)</p>\n<p>Tình trạng: Còn</p>', '', '<p>Có nhiều mùi hương để lựa chọn, với những sản phẩm dành riêng cho tóc thường và tóc nhuộm.</p>', '', 'kem-u-duong-toc-evoluderm', '', 'Ủ tóc, U toc, Kem ủ tóc, Kem u toc, Duong toc, Dưỡng tóc, Dầu dưỡn, Kem duong toc, Kem dưỡng tóc', '', 0, 6, '230,000 VND', 0, 0, '', '', '', '', 1, 299),
(1076, 'Gel tạo kiểu tóc Fuctis', '', '2012-05-17 07:30:46', 'gel-tao-kieu-toc-fuctis-thumb.jpg', 'gel-tao-kieu-toc-fuctis.jpg', '', '<p>Sản xuất tại Pháp</p>\n<p>Hũ 150ml</p>\n<p>Tình trạng: Còn</p>\n<p> </p>', '', '<p>Liên hệ</p>', '', 'gel-tao-kieu-toc-fuctis', '', '', '', 0, 11, '155,000 VND', 0, 0, '', '', '', '', 1, 299),
(1077, 'Xịt dưỡng tóc Garnier Fructis style', '', '2012-05-17 07:32:01', 'xit-duong-toc-garnier-fructis-style-thumb.jpg', 'xit-duong-toc-garnier-fructis-style.jpg', '', '<p>GARNIER</p>\n<p>Tình trạng: Còn</p>', '', '<p>Liên hệ</p>', '', 'xit-duong-toc-garnier-fructis-style', '', '185,000 VND', '', 0, 4, '185,000 VND', 0, 0, '', '', '', '', 1, 299),
(1078, 'Nước hoa nam Emporio Armani', '', '2012-05-17 08:14:03', 'nuoc-hoa-nam-emporio-armani-thumb.jpg', 'nuoc-hoa-nam-emporio-armani.jpeg', '', '<p>Dung tích 30ml</p>\n<p>Made in France</p>\n<p>Tình trạng: Còn</p>\n<p> </p>', '', '<p style="text-align:justify;">Giorgio Armani giới thiệu cho những người đàn ông táo bạo một mùi hương mới sẽ làm say đắm cả thế thế giới, đó là Emporio Armani Remix . Đây là hương thơm hòa trộn, sự kết hợp kinh điển của các loài hoa cùng với hoa quả tươi và sức quyến rũ đầy nam tính.Hương đầu bao gồm lê ngọt, hồi sao và cây nam việt quất. Hương giữa là sự hoà quyện tuyệt với giữa hoa lan, hoa mẫu đơn, mộc lan và cỏ đinh hương. Hương cuối bao gồm cây vòi vòi, xạ hương, tuyết tùng và gỗ đàn hương. Emporio Armani Remix đã được đưa ra thị trường vào năm 2006.</p>\n<p style="text-align:justify;">Mùi hương đặc trưng:<br />Hoa Lan, Lê ngọt, hồi sao, cây nam việt quất, Hoa mẫu đơn, Mộc Lan, cỏ đinh hương, cây vòi vòi, xạ hương, tuyết tùng, gỗ đàn hương.</p>', '', 'nuoc-hoa-nam-emporio-armani', '', 'Nước hoa Nam Emporio Armani, Nuoc hoa Nam Emporio Armani, Nuoc hoa Nam, Nước hoa Nam, Nước hoa, nuoc hoa, Emporio Armani', '', 0, 16, '725,000 VND', 0, 0, '', '', '', '', 1, 302),
(1079, 'Nước hoa nam Lanvin Arpege', '', '2012-05-17 08:15:21', 'nuoc-hoa-nam-lanvin-arpege-thumb.jpg', 'nuoc-hoa-nam-lanvin-arpege.jpg', '', '<p>Dung tích 30ml</p>\n<p>Made in France</p>\n<p>Tình trạng: Còn</p>\n<p> </p>', '', '<p style="text-align:justify;">Là một hương thơm mới nhất của Lanvin dành cho phái mạnh. Arpege Pour Homme thực sự như là một sức quyến rũ ma lực của đàn ông, nó là sự kết hợp gợi vẻ thanh lịch giữa hương vị của gỗ cùng cây vani - một loại lan nhiệt đới có hương thơm ngọt ngào.</p>\n<p style="text-align:justify;">Hương liệu : Hồ tiêu hồng, quýt,dầu cam, cây hoắc hương, gỗ Australia, hương vị lấy từ vỏ cây Vani và đậu Tonka.</p>', '', 'nuoc-hoa-nam-lanvin-arpege', '', 'Nước hoa Nam Lanvin, Nuoc hoa nam lanvin, Nuoc hoa Nam, Nước hoa Nam, Nước hoa, nuoc hoa, Lanvin', '', 0, 17, '650,000 VND', 0, 0, '', '', '', '', 1, 302),
(1080, 'Nước hoa nam Chanel Allure Homme Sport', '', '2012-05-17 08:16:46', 'nuoc-hoa-nam-chanel-allure-homme-sport-thumb.jpg', 'nuoc-hoa-nam-chanel-allure-homme-sport.jpg', '', '<p>Made in France</p>\n<p>50ml: 1.700.000 VNĐ</p>\n<p>75ml: 1.950.000 VNĐ</p>\n<p>100ml: 2.300.000 VNĐ</p>\n<p>150ml: 2.845.000 VNĐ</p>\n<p>Tình trạng: Đặt hàng</p>\n<p> </p>', '', '<p style="text-align:justify;">Ra đời 5 năm sau sự thành công ngoạn mục trên toàn thế giới của Allure Homme, Allure Sport for Men mở ra thế giới của những người đàn ông, một thế giới của thể thao và tự do. Allure Homme Sport tự hào mang đến cho bạn một hương thơm tươi mát mà sự quyến rũ của nó có thể được ví với làn không khí tươi mát trên làn da trần. Không phải ngẫu nhiên mà hình ảnh quảng cáo cho sản phẩm này là một chàng trai đang đua thuyền. Trẻ trung, bộ ngực vạm vỡ để trần, sự hấp dẫn tỏa ra ấm áp và tự nhiên. Chanel còn nói rằng: "Không có gì gợi cảm bằng làm mọi việc một cách tự nhiên".</p>\n<p style="text-align:justify;">Allure Homme Sport bộc lộ một cách đầy bản năng ngôn ngữ của cơ thể, và trở nên quyến rũ một cách tự nhiên. Sức mạnh và nét duyên dáng được bộc lộ cùng lúc, mang năng lượng của sự khoái lạc.</p>\n<p style="text-align:justify;">Mùi hương đặc trưng:</p>\n<p style="text-align:justify;">Cam, Quýt, Aldehyde, Tiêu đen Madagascar, Dầu hoa cam, Tuyết tùng Atlas, Cỏ Vetiver, Đậu Tonka, Xạ hương trắng, Hổ phách.</p>\n<p style="text-align:justify;">Phong cách:</p>\n<p style="text-align:justify;">Năng động, gợi cảm, tươi mát</p>\n<p style="text-align:justify;">Nhóm hương: Woody</p>\n<p style="text-align:justify;">Hương gỗ là loại nước hoa có mùi hương của vỏ cây, rêu và các mùi khác bạn có thể thấy ở rừng. Những loại nước hoa nhóm này thường có mùi tự nhiên rất riêng như gỗ đàn hương, xạ hương, da thuộc, cỏ vetiver, rêu sồi, hồng sắc tuyết tùng, hồ tiêu, dầu hồng....</p>\n<p style="text-align:justify;">Mỹ phẩm An An: 50ml: 1.700.000 Đ; 75ml: 1.950.000Đ; 100ml: 2.300.000Đ; 150ml: 2.845.000Đ - Sự lựa chọn tuyệt vời cho bạn !</p>\n<p style="text-align:justify;">thegioinuochoa: 50ml: 1.745.000 Đ; 100ml: 2.345.000 Đ; 150ml: 3.295.000 Đ</p>\n<p style="text-align:justify;">linhperfume: 50ml: 1.850.000 Đ; 100ml: 2.349.000 Đ</p>', '', 'nuoc-hoa-nam-chanel-allure-homme-sport', '', 'Nước hoa Nam Chanel Allure Homme Sport, Nuoc hoa Nam Chanel Allure Homme Sport, Nuoc hoa Nam, Nước hoa Nam, Nước hoa, nuoc hoa, Chanel Allure Homme Sport', '', 0, 18, '1,700,000 VND', 0, 0, '', '', '', '', 1, 302),
(1081, 'Nước hoa nam SET CALVIN KLEIN CK', '', '2012-05-17 08:18:40', 'set-calvin-klein-ck-thumb.jpg', 'set-calvin-klein-ck.jpg', '', '<p>CK</p>\n<p>Tình trạng:</p>\n<p>Đặt hàng</p>', '', '<p>Liên hệ</p>', '', 'nuoc-hoa-nam-set-calvin-klein-ck', '', '', '', 0, 19, '1,300,000 VND', 0, 0, '', '', '', '', 1, 302),
(1082, 'Nước hoa nữ Lancome Cyclades', '', '2012-05-17 08:22:46', 'nuoc-hoa-nu-lancome-cyclades-thumb.jpg', 'nuoc-hoa-nu-lancome-cyclades.jpg', '', '<p>Made in France (Pháp)</p>\n<p>Lọ: 50ml</p>\n<p>Tình trạng: Còn</p>\n<p> </p>', '', '<p style="text-align:justify;">Lancome giới thiệu một loại nước hoa mới, Cyclades, lấy cảm hứng từ vùng Địa Trung Hải và vùng làng quê Hy Lạp nằm trên quần đảo Cyclades thuộc biển Aegean. Bạn sẽ trở nên quyến dũ và nôi cuốn hơn với hương thơm của Lancome cyclades.</p>\n<p style="text-align:justify;">Mùi hương đặc trưng:Dầu hoa cam, cam Begamot, hoa trúc đào, hoa nhài, vani</p>\n<p style="text-align:justify;">Năm phát hành: 2008</p>\n<p style="text-align:justify;"><strong>Giá thị trường:</strong></p>\n<p style="text-align:justify;">Smooth-hair: 950.000 Đ - Sự lựa chọn tuyệt vời cho bạn !</p>\n<p style="text-align:justify;">nuochoa4u: 1.050.000 Đ</p>\n<p style="text-align:justify;">thegioinuochoa: 1.095.000 Đ</p>\n<p style="text-align:justify;">linhperfume: 1.000.000 Đ</p>\n<p style="text-align:justify;">muabanperfume: 1.120.000 Đ</p>', '', 'nuoc-hoa-nu-lancome-cyclades', '', 'Nước hoa nữ Lancome, Nuoc hoa Nu Lancome, Nuoc hoa nữ, Nước hoa nu, Nước hoa, nuoc hoa, Lancome', '', 0, 20, '950,000 VND', 0, 0, '', '', '', '', 1, 301),
(1083, 'Nước hoa nữ Lancome Benghal', '', '2012-05-17 08:24:12', 'nuoc-hoa-nu-lancome-benghal-thumb.gif', 'nuoc-hoa-nu-lancome-benghal.gif', '', '<p>Nước hoa của Pháp</p>\n<p>Dung tích: 50ml</p>\n<p>Tình trạng: Còn</p>\n<p> </p>', '', '<p style="text-align:justify;">Vào năm 1964 những bông hoa hồng có cuống dài duyên dáng trở thành một biểu tượng nhãn hiệu về một chiếc lá ngắn, không chỉ xuất hiện trong quảng cáo mà còn phổ biến trong từng bao bì sản phẩm. Biểu tượng hoa hồng hiện nay vẫn còn xuất hiện trên bao bì. Sự thay đổi các màu sắc khác nhau dựa trên từng loại sản phẩm. Các sản phẩm chăm sóc da là hoa hồng trắng, các sản phẩm trang điểm là hoa hồng đỏ hoặc màu đỏ tía và hoa hồng vàng là các sản phẩm kem chống nắng. Nhãn hiệu Lancôme ngày nay đã trở thành xu thế dẫn đầu của một loạt các nhãn hiệu mỹ phẩm.</p>\n<p style="text-align:justify;">Nước hoa Lancôme ngay từ buổi ban đầu vào năm 1935 đã có năm mùi hương. Tendre Nuits – “những người đi chinh phục cao quý”, dùng cho ban đêm và Conquête chứa đựng những bông hoa hồng thơm ngào ngạt. Kể từ năm 1957 kiểu dáng chai nước hoa ban đầu có hình dáng một nụ hoa và nắp đậy có hình nụ hồng. Nước hoa Lancôme Rose là loại nước hoa chính hiệu! Những bông hoa do Delbard trồng vào năm 1973 có màu hồng xinh đẹp, nụ hoa tròn thon thả và có khoảng 35-40 cánh hoa.</p>\n<p style="text-align:justify;">Lancôme Benghal như một bữa tiệc hương sắc nồng nàn vui vẻ mà Lancôme muốn gửi đến các bạn. Lấy màu hồng làm chủ đạo, Benghal ngụ ý vể một cái nhìn lạc quan trong cuộc sống, nơi những cảm xúc thăng hoa giao hoà cùng hương thơm quyến rũ ngọt ngào. Hương thơm Benghal mở đầu với hương gừng và quýt đầy sinh khí tiếp thêm sức sống cho bạn, kế đến là hương hoa lài và quả mơ ngọt ngào đằm thắm, cuối cùng hương thơm lưu luyến của đàn hương và xạ hương quyến rũ.</p>\n<p style="text-align:justify;">Mùi hương đặc trưng: Gừng, Quýt, Hoa lài, Quả mơ, Xạ hương, Đàn hương.</p>\n<p style="text-align:justify;">Phong cách: Tươi trẻ, quyến rũ</p>\n<p style="text-align:justify;">Nhóm hương: Floral – Fruity</p>\n<p style="text-align:justify;">Giá thị trường:</p>\n<p style="text-align:justify;">Smooth-Hair: 950.000 Đ - Sự lựa chọn tuyệt vời cho bạn !</p>\n<p style="text-align:justify;">nuochoa4u: 1.050.000 Đ</p>\n<p style="text-align:justify;">thegioinuochoa: 1.095.000 Đ</p>\n<p style="text-align:justify;">linhperfume: 1.000.000 Đ</p>\n<p style="text-align:justify;">muabanperfume: 1.120.000 Đ</p>', '', 'nuoc-hoa-nu-lancome-benghal', '', 'Nước hoa nữ Lancome, Nuoc hoa Lancome Benghal, Nuoc hoa nữ, Nước hoa nu, Nước hoa, nuoc hoa, Lancome Benghal', '', 0, 21, '950,000 VND', 0, 0, '', '', '', '', 1, 301),
(1084, 'SET CHANEL NO.5 EAU DE TOILETTE', '', '2012-05-17 08:25:42', 'set-chanel-no-5-eau-de-toilette-thumb.jpg', 'set-chanel-no-5-eau-de-toilette.jpg', '', '<p>Chanel No.5 eau de toilette cũng có mùi hương như eau de Parfum nhưng mùi thơm nhe nhàng hơn, nên được khuyên dùng cho ban ngày.</p>\n<p>Hiệu Chanel</p>\n<p>Tình trạng: Đặt hàng</p>', '', '<p style="text-align:justify;">Chanel No.5 do Chanel sáng chế từ năm 1921 , mọi người gọi No.5 là cô tiểu thư làm mọi thứ chao đảo từ khi tiểu thư Chanel No.5 xuất hiện. Quyến rũ, ngọt ngào, da diết, độc nhất vô nhị không một loại hương nào có thể sánh bằng. Chanel No.5 được xem là loại nước hoa không bao giờ lỗi thời và không bao giờ bị bỏ quên.</p>\n<p style="text-align:justify;">Chanel No.5 eau de toilette cũng có mùi hương như eau de Parfum nhưng mùi thơm nhe nhàng hơn, nên được khuyên dùng cho ban ngày.</p>', '', 'set-chanel-no5-eau-de-toilette', '', '', '', 0, 22, '1,925,000 VND', 0, 0, '', '', '', '', 1, 301),
(1085, 'Nước hoa nữ SET BURBERY Burrery', '', '2012-05-17 08:28:13', 'nuoc-hoa-nu-set-burbery-burrery-thumb.jpg', 'nuoc-hoa-nu-set-burbery-burrery.jpg', '', '<p>Tình trạng: Đặt hàng</p>', '', '<p>Liên hệ</p>', '', 'nuoc-hoa-nu-set-burbery-burrery', '', '', '', 0, 23, '1,900,000 VND', 0, 0, '', '', '', '', 1, 301),
(1086, 'Bông tẩy trang (Pháp)', '', '2012-05-17 08:32:35', 'bong-tay-trang-phap-thumb.jpg', 'bong-tay-trang-phap.jpg', '', '<p>Gói 120 miếng</p>\n<p>Made in France (Pháp)</p>\n<p>Tình trạng: Còn</p>', '', '<p>Liên hệ</p>', '', 'bong-tay-trang-phap', '', 'Bông tẩy trang, Bong tay trang, Bông tẩy trang của Pháp, Bong tay trang cua Phap', '', 0, 24, '70,000 VND', 0, 0, '', '', '', '', 1, 303),
(1087, 'Bông tẩy trang', '', '2012-05-17 08:33:38', 'bong-tay-trang-thumb.jpg', 'bong-tay-trang.jpg', '', '<p>Gói 120 miếng</p>\n<p>Made in France (Pháp)</p>\n<p>Tình trạng: Còn</p>', '', '<p>Liên hệ</p>', '', 'bong-tay-trang', '', 'Bông tẩy trang, Bong tay trang, Bông tẩy trang của Pháp, Bong tay trang cua Phap', '', 0, 25, '70,000 VND', 0, 0, '', '', '', '', 1, 303),
(1088, 'Giấy tẩy trang Mixa', '', '2012-05-17 08:34:39', 'giay-tay-trang-mixa-thumb.jpg', 'giay-tay-trang-mixa.jpg', '', '<p>25 miếng</p>\n<p>Made in France (Pháp)</p>\n<p>Tình trạng: Còn</p>', '', '<p style="text-align:justify;">Giấy tẩy trang Mixa được thiết kế dạng ẩm không cần dùng nước tẩy trang giúp việc tẩy trang được thuận tiện dễ dàng. Đặc biệt với thành phần có chứa collagen có tác dụng làm mềm da và cho bạn làn da căng mịn. Với mỗi miếng tẩy trang có thể sử dụng nhiều lần trong ngày...</p>', '', 'giay-tay-trang-mixa', '', 'Bông tẩy trang, Bong tay trang, Bông tẩy trang của Pháp, Bong tay trang cua Phap, Bong tay trang mixa, Bông tẩy trang mixa', '', 0, 26, '120,000 VND', 0, 0, '', '', '', '', 1, 303);

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
) ENGINE=InnoDB  DEFAULT CHARSET=utf8 AUTO_INCREMENT=304 ;

--
-- Dumping data for table `dos_module_products_cat`
--

INSERT INTO `dos_module_products_cat` (`cat_id`, `cat_parent_id`, `cat_title`, `cat_titleen`, `preview`, `previewen`, `tag`, `tagen`, `description`, `descriptionen`, `pic_full`, `pic_desc`, `cat_order`, `cat_extra1`, `cat_extra2`, `cat_enable`, `dos_usernames_username`) VALUES
(298, 0, 'Sữa Dielac', '', '', '', 'sua-dielac', '', '', '', 'sua-dielac.jpg', '', 6, '', '', 1, 'smooth-hair'),
(299, 0, 'Mỹ phẩm chăm sóc tóc', '', '', '', 'my-pham-cham-soc-toc', '', 'Mỹ phẩm chăm sóc tóc', '', 'my-pham-cham-soc-toc.jpeg', '', 4, '', '', 1, 'smooth-hair'),
(300, 0, 'Nước hoa', '', '', '', 'nuoc-hoa', '', 'Nước hoa', '', 'nuoc-hoa.jpeg', '', 3, '', '', 1, 'smooth-hair'),
(301, 300, 'Nước hoa nữ', '', '', '', 'nuoc-hoa-nu', '', 'Nước hoa nữ', '', 'nuoc-hoa-nu.jpeg', '', 4, '', '', 1, 'smooth-hair'),
(302, 300, 'Nước hoa nam', '', '', '', 'nuoc-hoa-nam', '', 'Nước hoa nam', '', 'nuoc-hoa-nam.jpeg', '', 5, '', '', 1, 'smooth-hair'),
(303, 0, 'Bông tẩy trang', '', '', '', 'bong-tay-trang', '', 'Bông tẩy trang', '', 'bong-tay-trang.jpeg', '', 4, '', '', 1, 'smooth-hair');

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
) ENGINE=InnoDB DEFAULT CHARSET=utf8 AUTO_INCREMENT=1 ;

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
('analytics', '<script type="text/javascript">\r\n\r\n  var _gaq = _gaq || [];\r\n  _gaq.push([''_setAccount'', ''UA-31952110-1'']);\r\n  _gaq.push([''_trackPageview'']);\r\n\r\n  (function() {\r\n    var ga = document.createElement(''script''); ga.type = ''text/javascript''; ga.async = true;\r\n    ga.src = (''https:'' == document.location.protocol ? ''https://ssl'' : ''http://www'') + ''.google-analytics.com/ga.js'';\r\n    var s = document.getElementsByTagName(''script'')[0]; s.parentNode.insertBefore(ga, s);\r\n  })();\r\n\r\n</script>', 'smooth-hair');

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
('020512', 'Mẫu hoa tươi: 020512', '2012-05-02 03:10:52', 'Chuyên cung cấp hoa tuoi, hoa cuoi, điện hoa, hoa tuoi van phong, hoa khai trương, hoa chúc mừng, hoa xe, hoa online, hoa chia buồn');

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
('020512', 'hoa-tuoi');

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
('020512', 'about', 'advs_bottom'),
('020512', 'about', 'advs_left'),
('020512', 'about', 'advs_top'),
('020512', 'about', 'list_supports'),
('020512', 'about', 'menu_about'),
('020512', 'contact', 'advs_bottom'),
('020512', 'contact', 'advs_left'),
('020512', 'contact', 'advs_top'),
('020512', 'contact', 'list_supports'),
('020512', 'contact', 'menu_products'),
('020512', 'default', 'about_home'),
('020512', 'default', 'advs_bottom'),
('020512', 'default', 'advs_left'),
('020512', 'default', 'advs_top'),
('020512', 'default', 'list_supports'),
('020512', 'default', 'menu_products'),
('020512', 'default', 'products_new'),
('020512', 'news', 'advs_bottom'),
('020512', 'news', 'advs_left'),
('020512', 'news', 'advs_top'),
('020512', 'news', 'list_supports'),
('020512', 'news', 'menu_news'),
('020512', 'products', 'advs_bottom'),
('020512', 'products', 'advs_left'),
('020512', 'products', 'advs_top'),
('020512', 'products', 'list_supports'),
('020512', 'products', 'menu_products'),
('020512', 'services', 'advs_bottom'),
('020512', 'services', 'advs_center'),
('020512', 'services', 'advs_top'),
('020512', 'services', 'list_supports'),
('020512', 'services', 'menu_services'),
('020512', 'video', 'advs_bottom'),
('020512', 'video', 'advs_left'),
('020512', 'video', 'advs_top'),
('020512', 'video', 'list_supports'),
('020512', 'video', 'menu_video');

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

INSERT INTO `dos_usernames` (`username`, `email`, `password`, `created`, `fullname`, `phone`, `company`, `role`, `language`, `code`, `expired`, `import`, `activated`, `dos_templates_template`, `dos_provinces_province_id`, `dos_bussiness_bussiness_id`) VALUES
('smooth-hair', 'maioanh@thuonghoi.com', 'e10adc3949ba59abbe56e057f20f883e', '2012-05-17 03:27:50', '', '0987522003', '', 'user', 'vi', '', '2012-06-15 17:00:00', 0, 1, '020512', 30, 'am-thuc-drink');

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
('company_name_footer', 'SMOOTH HAIR', '', 'smooth-hair'),
('company_phone', '', '', 'smooth-hair');

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
