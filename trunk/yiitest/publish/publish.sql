-- phpMyAdmin SQL Dump
-- version 3.4.5
-- http://www.phpmyadmin.net
--
-- Host: localhost
-- Generation Time: Apr 27, 2012 at 03:26 AM
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
('advs_left_height', 160, '', '070312'),
('advs_left_width', 160, '', '070312'),
('banner_height', 324, '', '070312'),
('banner_width', 757, '', '070312'),
('logo_height', 57, '', '070312'),
('logo_width', 260, '', '070312'),
('max_image_height', 600, '', '070312'),
('max_image_width', 700, '', '070312'),
('news_cat_height', 100, '', '070312'),
('news_cat_width', 130, '', '070312'),
('news_height_thumb', 89, '', '070312'),
('news_num_paging_cat', 10, '', '070312'),
('news_num_paging_hot', 6, '', '070312'),
('news_num_paging_index', 10, '', '070312'),
('news_num_paging_new', 10, '', '070312'),
('news_width_thumb', 143, '', '070312'),
('products_cat_height', 200, '', '070312'),
('products_cat_width', 150, '', '070312'),
('products_height', 500, '', '070312'),
('products_height_thumb', 200, '', '070312'),
('products_num_paging_cat', 16, '', '070312'),
('products_num_paging_hot', 8, '', '070312'),
('products_num_paging_new', 8, '', '070312'),
('products_num_paging_other', 4, '', '070312'),
('products_width', 600, '', '070312'),
('products_width_thumb', 150, '', '070312'),
('services_height', 100, '', '070312'),
('services_width', 150, '', '070312'),
('video_height_thumb', 160, '', '070312'),
('video_num_paging_cat', 8, '', '070312'),
('video_num_paging_index', 8, '', '070312'),
('video_width_thumb', 160, '', '070312');

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
('address1', 'Địa chỉ công ty 1', 'Address 1', 0),
('address2', 'Địa chỉ chi nhánh', 'Address 2', 0),
('add_new', 'Thêm mới', 'Add new', 1),
('add_row', 'Thêm dòng', 'Add row', 1),
('advs', 'Quảng cáo', 'Adv', 0),
('banner', 'Logo &amp; Banner', 'Logo &amp; Banner', 0),
('cancel', 'Hủy bỏ', 'Cancel', 1),
('cat_parent', 'Phân loại', 'Category', 1),
('cat_title', 'Danh mục', 'Category', 0),
('cat_titleen', 'Danh mục En', 'Category', 1),
('company_name', 'Công ty cổ phần Thương Hội', 'Thuong Hoi JSC', 0),
('company_name_footer', 'Công ty cổ phần Thương Hội', 'Thuong Hoi JSC', 0),
('company_phone', 'Phone: 0929001001 (An)', 'Phone: 0929001001 (An)', 0),
('contact', 'Liên hệ', 'Contact', 0),
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
('070312', 'video', 'prettyPhoto.css', 'css'),
('070312', 'video', 'jquery.prettyPhoto.js', 'javascript');

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
('about', 'inlisaco'),
('advs', 'inlisaco'),
('banner', 'inlisaco'),
('contact', 'inlisaco'),
('news', 'inlisaco'),
('services', 'inlisaco'),
('supports', 'inlisaco');

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
) ENGINE=InnoDB  DEFAULT CHARSET=utf8 AUTO_INCREMENT=74 ;

--
-- Dumping data for table `dos_module_abouts`
--

INSERT INTO `dos_module_abouts` (`record_id`, `title`, `titleen`, `content`, `contenten`, `hit`, `created`, `record_order`, `hot`, `extra_field1`, `extra_field2`, `tag`, `tagen`, `description`, `descriptionen`, `activated`, `dos_usernames_username`) VALUES
(73, 'Thư ngỏ', '', '<p style="text-align:justify;"><span style="text-decoration:underline;font-size:12pt;"><strong>Kính gửi: Quý khách hàng.</strong></span></p>\n<p style="text-align:justify;"><span style="font-size:11pt;">Công ty <strong>IN LISA</strong> là đơn vị hoạt động trong lĩnh vực thiết kế, tạo mẫu, in ấn và cung cấp các sản phẩm tốt nhất phục vụ cho hoạt động quảng bá nhãn hiệu, phát triển thị trường.</span></p>\n<p style="text-align:justify;"><span style="font-size:11pt;">Với đội ngũ chuyên viên thiết kế đầy sáng tạo, nhiều kinh nghiệm và kỹ thuật in hiện đại, chúng tôi sẵn sàng thực hiện các yêu cầu của quý khách hàng trên các lĩnh vực: Thiết kế và in ấn Catalogue, tờ gấp, túi giấy, biểu mẫu, tạp chí, tem chống hàng giả, hộp giấy, hộp metalize, hộp hologram…).</span></p>\n<p style="text-align:justify;"><span style="font-size:11pt;"><strong>UY TÍN - CHẤT LƯỢNG VÀ GIÁ CẢ HỢP LÝ</strong> là những gì mà công ty chúng tôi muốn đem đến cho quý khách hàng những sản phẩm hoàn hảo nhất.</span></p>', '', 127, '2012-04-25 01:46:14', 1, 1, '', '', 'thu-ngo', '', 'Thiết kế và in ấn Catalogue, tờ gấp, túi giấy, biểu mẫu, tạp chí, tem chống hàng giả, hộp giấy, hộp metalize, hộp hologram', '', 1, 'inlisaco');

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
) ENGINE=InnoDB  DEFAULT CHARSET=utf8 AUTO_INCREMENT=48 ;

--
-- Dumping data for table `dos_module_advs`
--

INSERT INTO `dos_module_advs` (`record_id`, `title`, `titleen`, `pic_thumb`, `url`, `create_date`, `start_date`, `end_date`, `hits`, `record_order`, `position`, `type`, `enable`, `dos_usernames_username`) VALUES
(45, 'Quảng cáo', '', 'quang-cao.jpeg', 'http://dos.vn/', '2012-04-25 03:46:54', '2012-04-24 17:00:00', '2012-05-30 17:00:00', 0, 2, 'left', '_bank', 1, 'inlisaco'),
(46, 'Quảng cáo 1', '', 'quang-cao-1.jpg', 'http://dos.vn/', '2012-04-25 03:47:37', '2012-04-24 17:00:00', '2012-05-30 17:00:00', 0, 1, 'left', '_bank', 0, 'inlisaco'),
(47, 'Quảng cáo 2', '', 'quang-cao-2.jpeg', 'http://dos.vn/', '2012-04-25 03:48:30', '2012-04-24 17:00:00', '2012-05-30 17:00:00', 0, 3, 'left', '_bank', 1, 'inlisaco');

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
) ENGINE=InnoDB  DEFAULT CHARSET=utf8 AUTO_INCREMENT=306 ;

--
-- Dumping data for table `dos_module_banners`
--

INSERT INTO `dos_module_banners` (`banner_id`, `banner_date`, `banner_name`, `banner_url`, `banner_link`, `banner_order`, `banner_type`, `position`, `enable`, `dos_usernames_username`) VALUES
(288, '2012-04-26 03:04:23', 'Logo', 'logo.jpg', '', 1, 'logo', 'default', 1, 'inlisaco'),
(289, '2012-04-26 03:06:13', 'Banner', 'banner.jpg', '', 2, 'banners', 'default', 1, 'inlisaco'),
(290, '2012-04-26 06:49:23', 'Banner 2', 'banner-2.jpg', '', 3, 'banners', 'default', 1, 'inlisaco'),
(291, '2012-04-26 06:49:41', 'Banner 3', 'banner-3.jpg', '', 4, 'banners', 'default', 1, 'inlisaco'),
(292, '2012-04-26 06:50:30', 'Banner 4', 'banner-4.jpg', '', 5, 'banners', 'about', 1, 'inlisaco'),
(293, '2012-04-26 06:50:47', 'Banner 5', 'banner-5.jpg', '', 6, 'banners', 'about', 1, 'inlisaco'),
(294, '2012-04-26 06:51:03', 'Banner 6', 'banner-6.jpg', '', 7, 'banners', 'services', 1, 'inlisaco'),
(295, '2012-04-26 06:51:46', 'Banner 7', 'banner-7.jpg', '', 8, 'banners', 'services', 1, 'inlisaco'),
(296, '2012-04-26 06:52:02', 'Banner 8', 'banner-8.jpg', '', 9, 'banners', 'services', 1, 'inlisaco'),
(297, '2012-04-26 06:52:22', 'Banner 9', 'banner-9.jpg', '', 10, 'banners', 'services', 1, 'inlisaco'),
(298, '2012-04-26 06:55:18', 'Banner 10', 'banner-94.jpg', '', 11, 'banners', 'contact', 1, 'inlisaco'),
(299, '2012-04-26 06:56:13', 'Banner 11', 'banner-11.jpg', '', 12, 'banners', 'contact', 1, 'inlisaco'),
(300, '2012-04-26 06:56:35', 'Banner 12', 'banner-12.jpg', '', 13, 'banners', 'news', 1, 'inlisaco'),
(301, '2012-04-26 06:56:53', 'Banner 13', 'banner-13.jpg', '', 14, 'banners', 'news', 1, 'inlisaco'),
(302, '2012-04-26 06:57:36', 'Banner 14', 'banner-14.jpg', '', 15, 'banners', 'about', 1, 'inlisaco'),
(303, '2012-04-26 06:57:59', 'Banner 15', 'banner-15.jpg', '', 16, 'banners', 'services', 1, 'inlisaco'),
(304, '2012-04-26 06:58:26', 'Banner 16', 'banner-16.jpg', '', 17, 'banners', 'services', 1, 'inlisaco'),
(305, '2012-04-26 07:00:51', 'Banner 17', 'banner-17.jpg', '', 18, 'banners', 'default', 1, 'inlisaco');

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
) ENGINE=InnoDB  DEFAULT CHARSET=utf8 AUTO_INCREMENT=24 ;

--
-- Dumping data for table `dos_module_contacts`
--

INSERT INTO `dos_module_contacts` (`record_id`, `title`, `titleen`, `content`, `contenten`, `create_date`, `record_order`, `hit`, `hot`, `tag`, `tagen`, `description`, `descriptionen`, `enable`, `dos_usernames_username`) VALUES
(23, 'Liên hệ với chúng tôi', '', '<p><strong><span style="font-size:12pt;">IN LISA</span></strong></p>', '', '2012-04-25 03:25:25', 1, 0, 0, 'lien-he-voi-chung-toi', '', 'IN LISA', '', '1', 'inlisaco');

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
('Trang chủ', '', 'default', '', 1, '', '', '', '', 'inlisaco'),
('Giới thiệu', '', 'about', '', 2, '', '', '', '', 'inlisaco'),
('Thiết kế - In ấn', '', 'services', '', 3, '', '', '', '', 'inlisaco'),
('Kiến thức - Cẩm nang', '', 'news', '', 4, '', '', '', '', 'inlisaco'),
('Liên hệ', '', 'contact', '', 5, '', '', '', '', 'inlisaco');

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
) ENGINE=InnoDB  DEFAULT CHARSET=utf8 AUTO_INCREMENT=51 ;

--
-- Dumping data for table `dos_module_news`
--

INSERT INTO `dos_module_news` (`record_id`, `title`, `titleen`, `postdate`, `pic_thumb`, `preview`, `previewen`, `content`, `contenten`, `tag`, `tagen`, `description`, `descriptionen`, `hits`, `record_order`, `hot`, `extra_field1`, `extra_field2`, `enable`, `dos_module_item_cat_cat_id`) VALUES
(46, '12 Mẫu Card visit thiết kế với nhiều màu sắc ấn tượng', '', '2012-04-25 02:40:27', '12-mau-card-visit-thiet-ke-voi-nhieu-mau-sac-an-tuong.jpeg', '<p style="text-align:justify;">12 Mẫu Card visit lấy cảm hứng từ màu sắc được phối hợp tinh tế. Sử dụng công nghệ in offset với 4 màu cơ bản CMYK mang lại cho người dùng một một cái nhìn thật ấn tượng.</p>', '', '<p style="text-align:left;"><strong><span style="color:#ff6600;"><em><span style="font-size:12pt;">12 Mẫu Card visit lấy cảm hứng từ màu sắc được phối hợp tinh tế. Sử dụng công nghệ in offset với 4 màu cơ bản CMYK mang lại cho người dùng một một cái nhìn thật ấn tượng.</span></em></span></strong></p>\n<p style="text-align:left;"><strong><span style="font-size:12pt;">Blue Sky CS by The Seen®</span></strong></p>\n<p style="text-align:center;"><strong><img src="/public/userfiles/image/inlisaco/image/1.jpg" alt="" width="550" height="388" /></strong></p>\n<p style="text-align:center;"><strong><span style="font-size:12pt;"> </span></strong></p>\n<p style="text-align:left;"><strong><span style="font-size:12pt;">Chromatistes Meres (Colorful Days) by Sophia Georgopoulou</span></strong></p>\n<p style="text-align:center;"><strong><span style="font-size:12pt;"><img src="/public/userfiles/image/inlisaco/image/2.jpg" alt="" width="550" height="315" /></span></strong></p>\n<p style="text-align:center;"><strong> </strong></p>\n<p style="text-align:left;"><strong><span style="font-size:12pt;">Ayako Okada Hair Stylist by Silky Szeto</span></strong></p>\n<p style="text-align:center;"><strong><span style="font-size:12pt;"><img src="/public/userfiles/image/inlisaco/image/3.jpg" alt="" width="500" height="333" /></span></strong></p>\n<p style="text-align:center;"><strong><span style="font-size:12pt;"> </span></strong></p>\n<p style="text-align:left;"><strong><span style="font-size:12pt;">TurboMilk Cards</span></strong></p>\n<p style="text-align:center;"><strong><span style="font-size:12pt;"><img src="/public/userfiles/image/inlisaco/image/4.png" alt="" width="500" height="260" /></span></strong></p>\n<p style="text-align:center;"><strong><span style="font-size:12pt;"> </span></strong></p>\n<p style="text-align:left;"><strong><span style="font-size:12pt;">Artistic Business Card by myjilson</span></strong></p>\n<p style="text-align:center;"><strong><span style="font-size:12pt;"><img src="/public/userfiles/image/inlisaco/image/6.png" alt="" width="550" height="218" /></span></strong></p>\n<p style="text-align:center;"><strong><span style="font-size:12pt;"> </span></strong></p>\n<p style="text-align:left;"><strong><span style="font-size:12pt;">Colorful Business Card by Alex</span></strong></p>\n<p style="text-align:center;"><strong><span style="font-size:12pt;"><img src="/public/userfiles/image/inlisaco/image/7.jpg" alt="" width="546" height="390" /></span></strong></p>\n<p style="text-align:left;"><strong><span style="font-size:12pt;"> </span></strong></p>\n<p style="text-align:left;"><strong><span style="font-size:12pt;">Reality business card by Lemongraphic</span></strong></p>\n<p style="text-align:center;"><strong><span style="font-size:12pt;"><img src="/public/userfiles/image/inlisaco/image/8.jpg" alt="" width="550" height="406" /></span></strong></p>\n<p style="text-align:center;"><strong><span style="font-size:12pt;"> </span></strong></p>\n<p style="text-align:left;"><strong><span style="font-size:12pt;">Transparent Colored Business Card by kaixergroup</span></strong></p>\n<p style="text-align:center;"><strong><span style="font-size:12pt;"><img src="/public/userfiles/image/inlisaco/image/9.jpg" alt="" width="550" height="444" /></span></strong></p>\n<p style="text-align:center;"><strong><span style="font-size:12pt;"> </span></strong></p>\n<p style="text-align:left;"><strong><span style="font-size:12pt;">Apex Creative Imagination by kaixergroup</span></strong></p>\n<p style="text-align:center;"><strong><span style="font-size:12pt;"><img src="/public/userfiles/image/inlisaco/image/10.jpg" alt="" width="550" height="469" /></span></strong></p>\n<p style="text-align:center;"><strong><span style="font-size:12pt;"> </span></strong></p>\n<p style="text-align:left;"><strong><span style="font-size:12pt;">RW Creative Studio Business Card by Reclameworks</span></strong></p>\n<p style="text-align:center;"><strong><span style="font-size:12pt;"><img src="/public/userfiles/image/inlisaco/image/11.jpg" alt="" width="550" height="400" /><br /></span></strong></p>\n<p style="text-align:center;"><strong> </strong></p>\n<p style="text-align:left;"><strong><span style="font-size:12pt;">Color Explosion Business Card by kaixergroup</span></strong></p>\n<p style="text-align:center;"><strong><span style="font-size:12pt;"><img src="/public/userfiles/image/inlisaco/image/12.jpg" alt="" width="550" height="399" /></span></strong></p>\n<p style="text-align:center;"><strong><span style="font-size:12pt;"> </span> <br /></strong></p>\n<p style="text-align:left;"><strong><span style="font-size:12pt;">Colorful Body Shop Business Card Template</span></strong></p>\n<p><strong><span style="font-size:12pt;"><img style="margin-left:auto;margin-right:auto;" src="/public/userfiles/image/inlisaco/image/13.jpg" alt="" width="550" height="368" /></span></strong></p>', '', '12-mau-card-visit-thiet-ke-voi-nhieu-mau-sac-an-tuong', '', '', '', 0, 1, 0, '', '', 1, 33),
(47, 'Mẫu thiết kế Business card ấn tượng', '', '2012-04-25 02:58:35', 'mau-thiet-ke-business-card-an-tuong.jpeg', '<p style="text-align:justify;">Business card không đơn thuần như chúng ta thường thấy. Những nhà thiết kế sáng tạo có thể tùy biến kiểu dáng của những chiếc Business card để nó trở nên thật ấn tượng.</p>', '', '<p style="text-align:left;"><strong><em><span style="color:#ff6600;font-size:12pt;">Dưới đây là một loạt các trường hợp đặc biệt của Business card. Chúng ta sẽ có một cái nhìn hoàn toàn mới về chiếc business card và biết đâu bạn sẽ tìm được 1 ý tưởng để thiết kế cho mình một mẫu business card thật độc đáo.</span></em></strong></p>\n<p style="text-align:center;"><strong><em><span style="color:#ff6600;font-size:12pt;"><img src="/public/userfiles/image/inlisaco/image/news/1c.jpg" alt="" width="550" height="280" /></span></em></strong></p>\n<p style="text-align:center;"><strong><em><span style="color:#ff6600;font-size:12pt;"><img src="/public/userfiles/image/inlisaco/image/news/2c.jpg" alt="" width="550" height="733" /></span></em></strong></p>\n<p style="text-align:center;"><strong><em><span style="color:#ff6600;font-size:12pt;"><img src="/public/userfiles/image/inlisaco/image/news/3c.jpg" alt="" width="550" height="411" /></span></em></strong></p>\n<p style="text-align:center;"><strong><em><span style="color:#ff6600;font-size:12pt;"><img src="/public/userfiles/image/inlisaco/image/news/5c.jpg" alt="" width="550" height="735" /></span></em></strong></p>\n<p style="text-align:center;"><strong><em><span style="color:#ff6600;font-size:12pt;"><img src="/public/userfiles/image/inlisaco/image/news/6c.jpg" alt="" width="550" height="366" /></span></em></strong></p>\n<p style="text-align:center;"><strong><em><span style="color:#ff6600;font-size:12pt;"><img src="/public/userfiles/image/inlisaco/image/news/7c.jpg" alt="" width="550" height="347" /></span></em></strong></p>\n<p style="text-align:center;"><strong><em><span style="color:#ff6600;font-size:12pt;"><img src="/public/userfiles/image/inlisaco/image/news/8c.jpg" alt="" width="550" height="914" /></span></em></strong></p>\n<p style="text-align:center;"><strong><em><span style="color:#ff6600;font-size:12pt;"><img src="/public/userfiles/image/inlisaco/image/news/9c.jpg" alt="" width="550" height="358" /></span></em></strong></p>\n<p style="text-align:center;"><strong><em><span style="color:#ff6600;font-size:12pt;"><img src="/public/userfiles/image/inlisaco/image/news/10c.jpg" alt="" width="550" height="331" /></span></em></strong></p>\n<p style="text-align:center;"><strong><em><span style="color:#ff6600;font-size:12pt;"><img src="/public/userfiles/image/inlisaco/image/news/11c.jpg" alt="" width="550" height="404" /></span></em></strong></p>\n<p style="text-align:center;"><strong><em><span style="color:#ff6600;font-size:12pt;"><img src="/public/userfiles/image/inlisaco/image/news/12c.jpg" alt="" width="550" height="276" /></span></em></strong></p>\n<p style="text-align:center;"><strong><em><span style="color:#ff6600;font-size:12pt;"><img src="/public/userfiles/image/inlisaco/image/news/13c.jpg" alt="" width="550" height="322" /></span></em></strong></p>\n<p style="text-align:center;"><strong><em><span style="color:#ff6600;font-size:12pt;"><img src="/public/userfiles/image/inlisaco/image/news/14c.jpg" alt="" width="550" height="1200" /></span></em></strong></p>\n<p style="text-align:center;"><strong><em><span style="color:#ff6600;font-size:12pt;"><img src="/public/userfiles/image/inlisaco/image/news/15c.jpg" alt="" width="550" height="412" /></span></em></strong></p>\n<p style="text-align:center;"><strong><em><span style="color:#ff6600;font-size:12pt;"><img src="/public/userfiles/image/inlisaco/image/news/16c.jpg" alt="" width="550" height="680" /></span></em></strong></p>\n<p style="text-align:center;"><strong><em><span style="color:#ff6600;font-size:12pt;"><img src="/public/userfiles/image/inlisaco/image/news/18c.jpg" alt="" width="550" height="413" /></span></em></strong></p>\n<p style="text-align:center;"><strong><em><span style="color:#ff6600;font-size:12pt;"><img src="/public/userfiles/image/inlisaco/image/news/19c.jpg" alt="" width="550" height="399" /></span></em></strong></p>\n<p style="text-align:center;"><strong><em><span style="color:#ff6600;font-size:12pt;"><img src="/public/userfiles/image/inlisaco/image/news/20c.jpg" alt="" width="550" height="413" /></span></em></strong></p>\n<p style="text-align:center;"><strong><em><span style="color:#ff6600;font-size:12pt;"><img src="/public/userfiles/image/inlisaco/image/news/21c.jpg" alt="" width="550" height="367" /></span></em></strong></p>\n<p><strong><em><span style="color:#ff6600;font-size:12pt;"><img style="margin-left:auto;margin-right:auto;" src="/public/userfiles/image/inlisaco/image/news/22c.jpg" alt="" width="550" height="367" /></span></em></strong></p>', '', 'mau-thiet-ke-business-card-an-tuong', '', 'Mẫu thiết kế Business card ấn tượng', '', 0, 2, 0, '', '', 1, 33),
(48, 'Những mẫu Catalogue đẹp năm 2012', '', '2012-04-25 03:09:22', 'nhung-mau-catalogue-dep-nam-2012.jpeg', '<p style="text-align:justify;">Bất cứ thương hiệu nào khi tung ra một bộ sản phẩm mới đều phải thiết kế một hoặc nhiều cuốn Catalogue để giới thiệu chi tiết và quảng cáo cho dòng sản phẩm đó. Thoạt nhìn thì thiết kế Cataloge có vẻ như không có gì quá khó khăn, song để tạo ra được cuốn Catalogue đẹp mắt không đơn giản chỉ là sự sắp xếp giữa chữ và hình.</p>', '', '<p> </p>\n<p style="text-align:justify;"><em><strong><span style="font-size:12pt;color:#ff6600;">Bất cứ thương hiệu nào khi tung ra một bộ sản phẩm mới đều phải thiết kế một hoặc nhiều cuốn Catalogue để giới thiệu chi tiết và quảng cáo cho dòng sản phẩm đó. Thoạt nhìn thì thiết kế Cataloge có vẻ như không có gì quá khó khăn, song để tạo ra được cuốn Catalogue đẹp mắt không đơn giản chỉ là sự sắp xếp giữa chữ và hình. Các nguyên tắc cơ bản khi thiết kế Catalogue là: Phải hiểu khách hàng của mình, phải tạo được sự chú ý cho khách hàng, hiểu được mục đích chính của khách hàng khi mua sản phẩm, đưa ra lý do để hành động, dễ dàng liên hệ và loại bỏ rủi ro.</span></strong></em></p>\n<p style="text-align:justify;"><em><strong><span style="font-size:12pt;color:#ff6600;">Đó chính là lý do mà IN LISA giới thiệu một số mẫu catalogue đẹp dưới dây để các bạn tham khảo.</span></strong></em></p>\n<p style="text-align:justify;"><em><strong><span style="font-size:12pt;color:#ff6600;"> </span></strong></em></p>\n<p><em><strong><span style="font-size:12pt;color:#ff6600;"><img style="margin-left:auto;margin-right:auto;vertical-align:middle;" src="/public/userfiles/image/inlisaco/image/news/1B.jpg" alt="" width="500" height="313" /></span></strong></em></p>\n<p><em><strong><span style="font-size:12pt;color:#ff6600;"> </span></strong></em></p>\n<p><em><strong><span style="font-size:12pt;color:#ff6600;"><img style="margin-left:auto;margin-right:auto;" src="/public/userfiles/image/inlisaco/image/news/2B.jpg" alt="" width="500" height="391" /></span></strong></em></p>\n<p style="text-align:center;"><em><strong><span style="font-size:12pt;color:#ff6600;"><img src="/public/userfiles/image/inlisaco/image/news/3B.jpg" alt="" width="500" height="375" /><br /></span></strong></em></p>\n<p style="text-align:center;"><em><strong><span style="font-size:12pt;color:#ff6600;"><img src="/public/userfiles/image/inlisaco/image/news/4B.jpg" alt="" width="500" height="379" /></span></strong></em></p>\n<p style="text-align:center;"><em><strong><span style="font-size:12pt;color:#ff6600;"><img src="/public/userfiles/image/inlisaco/image/news/5B.jpg" alt="" width="500" height="393" /></span></strong></em></p>\n<p style="text-align:center;"><em><strong><span style="font-size:12pt;color:#ff6600;"><img src="/public/userfiles/image/inlisaco/image/news/6B.jpg" alt="" width="500" height="334" /></span></strong></em></p>\n<p style="text-align:center;"><em><strong><span style="font-size:12pt;color:#ff6600;"><img src="/public/userfiles/image/inlisaco/image/news/7B.jpg" alt="" width="500" height="333" /></span></strong></em></p>\n<p style="text-align:center;"><em><strong><span style="font-size:12pt;color:#ff6600;"><img src="/public/userfiles/image/inlisaco/image/news/8B.jpg" alt="" width="500" height="332" /></span></strong></em></p>\n<p style="text-align:center;"><em><strong><span style="font-size:12pt;color:#ff6600;"><img src="/public/userfiles/image/inlisaco/image/news/9B.jpg" alt="" width="500" height="375" /></span></strong></em></p>\n<p style="text-align:center;"><em><strong><span style="font-size:12pt;color:#ff6600;"><img src="/public/userfiles/image/inlisaco/image/news/10B.jpg" alt="" width="500" height="359" /></span></strong></em></p>\n<p style="text-align:center;"><em><strong><span style="font-size:12pt;color:#ff6600;"><img src="/public/userfiles/image/inlisaco/image/news/11B.jpg" alt="" width="500" height="357" /></span></strong></em></p>\n<p style="text-align:center;"><em><strong><span style="font-size:12pt;color:#ff6600;"><img src="/public/userfiles/image/inlisaco/image/news/12B.jpg" alt="" width="500" height="332" /></span></strong></em></p>\n<p style="text-align:center;"><em><strong><span style="font-size:12pt;color:#ff6600;"><img src="/public/userfiles/image/inlisaco/image/news/14B.jpg" alt="" width="500" height="333" /></span></strong></em></p>\n<p style="text-align:center;"><em><strong><span style="font-size:12pt;color:#ff6600;"><img src="/public/userfiles/image/inlisaco/image/news/15B.jpg" alt="" width="500" height="375" /></span></strong></em></p>\n<p style="text-align:center;"><em><strong><span style="font-size:12pt;color:#ff6600;"><img src="/public/userfiles/image/inlisaco/image/news/16B.jpg" alt="" width="500" height="279" /></span></strong></em></p>\n<p style="text-align:center;"><em><strong><span style="font-size:12pt;color:#ff6600;"><img src="/public/userfiles/image/inlisaco/image/news/17B.jpg" alt="" width="500" height="334" /></span></strong></em></p>\n<p style="text-align:center;"><em><strong><span style="font-size:12pt;color:#ff6600;"><img src="/public/userfiles/image/inlisaco/image/news/18B.jpg" alt="" width="500" height="335" /></span></strong></em></p>\n<p style="text-align:center;"><em><strong><span style="font-size:12pt;color:#ff6600;"><img src="/public/userfiles/image/inlisaco/image/news/19B.jpg" alt="" width="500" height="333" /></span></strong></em></p>\n<p> </p>', '', 'nhung-mau-catalogue-dep-nam-2012', '', '', '', 0, 3, 0, '', '', 1, 34),
(49, 'Top 5 xu hướng tiếp thị trực tuyến 2012', '', '2012-04-25 03:16:44', 'top-5-xu-huong-tiep-thi-truc-tuyen-2012.jpeg', '<p>Trong thời đại mới , Tiếp thị trực tuyến đóng vai trò quan trọng không kém gì công việc tiếp thị và quảng bá thương hiệu truyền thống.</p>', '', '<p><span style="font-size:11pt;">Trong thời đại mới , Tiếp thị trực tuyến đóng vai trò quan trọng không kém gì công việc tiếp thị và quảng bá thương hiệu truyền thống.</span></p>\n<p><span style="font-size:11pt;"><img style="margin-left:auto;margin-right:auto;" src="/public/userfiles/image/inlisaco/image/index2.jpeg" alt="" width="254" height="198" /></span></p>\n<p><strong><span style="font-size:11pt;">1. Viết blog / sáng tạo nội dung</span></strong></p>\n<p><span style="font-size:11pt;">Tối ưu hóa với các từ khóa</span></p>\n<p><span style="font-size:11pt;">-Làm cho nó thú vị</span></p>\n<p><span style="font-size:11pt;">-Làm cho nó dễ dàng để chia sẻ</span></p>\n<p><span style="font-size:11pt;"> </span></p>\n<p><strong><span style="font-size:11pt;">2. Tiếp thị trên điện thoại di động</span></strong></p>\n<p><span style="font-size:11pt;">- Tạo ra một phiên bản di động của trang web của bạn.</span></p>\n<p><span style="font-size:11pt;">- Tạo một ứng dụng.</span></p>\n<p><span style="font-size:11pt;">- Làm cho nó dễ dàng cho mọi người tìm thấy bạn trên những nơi như bản đồ của Google.</span></p>\n<p><span style="font-size:11pt;"> </span></p>\n<p><strong><span style="font-size:11pt;">3. Videos!</span></strong></p>\n<p><span style="font-size:11pt;">- YouTube: công cụ tìm kiếm lớn thứ 2</span></p>\n<p><span style="font-size:11pt;">- Podcast, làm thế nào hoặc viral videos</span></p>\n<p><span style="font-size:11pt;">- Blip.TV: phân phối thông qua các kênh khác nhau</span></p>\n<p><span style="font-size:11pt;"> </span></p>\n<p><strong><span style="font-size:11pt;">4. Social phương tiện truyền thông tiếp thị:</span></strong></p>\n<p><span style="font-size:11pt;">Google + (tease frankwatching.com/ww1)</span></p>\n<p><span style="font-size:11pt;">Gửi bài bình luận trên blog, được tham gia vào cộng đồng trực tuyến, trả lời các tweets / FB bài viết, …</span></p>\n<p><span style="font-size:11pt;"> </span></p>\n<p><strong><span style="font-size:11pt;">5. Vị trí các ứng dụng dựa trên thành tích phù hiệu</span></strong></p>\n<p><span style="font-size:11pt;">-specials/deals</span></p>\n<p><span style="font-size:11pt;">-Cuộc thi</span></p>', '', 'top-5-xu-huong-tiep-thi-truc-tuyen-2012', '', 'Top 5 xu hướng tiếp thị trực tuyến 2012', '', 0, 4, 0, '', '', 1, 35),
(50, 'Những chiến lược marketing đơn giản mà hiệu quả', '', '2012-04-25 03:24:38', 'nhung-chien-luoc-marketing-don-gian-ma-hieu-qua.jpeg', '<p style="text-align:justify;">Bạn đã thử marketing bằng các cách nào rồi? hiệu quả ra sau? Hãy xem những cách marketing đơn giản sau đây theo tôi là rất hiệu quả, nhưng riêng bạn thì hãy đánh giá thử xem và cho ý kiến nhé.</p>', '', '<p> </p>\n<p style="text-align:justify;"><span style="color:#ff6600;"><strong><em><span style="font-size:11pt;">Bạn đã thử marketing bằng các cách nào rồi? hiệu quả ra sau? Hãy xem những cách marketing đơn giản sau đây theo tôi là rất hiệu quả, nhưng riêng bạn thì hãy đánh giá thử xem và cho ý kiến nhé.</span></em></strong></span></p>\n<p><span style="color:#ff6600;"><strong><em><span style="font-size:11pt;"><img style="margin-left:auto;margin-right:auto;" src="/public/userfiles/image/inlisaco/image/images1.jpeg" alt="" width="259" height="194" /></span></em></strong></span></p>\n<p style="text-align:justify;"><span style="font-size:11pt;"><strong> </strong></span></p>\n<p style="text-align:justify;"><span style="font-size:11pt;"><strong>1. BÁM GIỮ KHÁCH HÀNG TIỀM NĂNG.</strong></span></p>\n<p style="text-align:justify;"><span style="font-size:11pt;">Chắc chắn rồi, những khách hàng này là nguồn thu quan trọng của doanh nghiệp bạn. Hãy xây dựng hồ sơ của riêng từng khách hàng, thường xuyên email cho họ các chính sách ưu đãi, những thông tin có ích cho họ cho dù họ đã biết hay không. Thể hiện sự quan tâm của bạn đối với họ bằng email hay bưu thiếp và trên đó không bao giờ quên kèm theo thông tin về công ty của bạn một cách tế nhị. Ít nhất 1 tuần 1 lần.</span></p>\n<p style="text-align:justify;"><span style="font-size:11pt;"><strong>2. MARKETING THƯƠNG HIỆU.</strong></span></p>\n<p style="text-align:justify;"><span style="font-size:11pt;">Điều này có thể làm khó nhiều người vì nó không đơn giản nhưng nó có ảnh hưỡng rất lớn tới chiến dịch marketing của doanh nghiệp.</span></p>\n<p style="text-align:justify;"><span style="font-size:11pt;">Hãy thử những cách đơn giản cho điều này nhé:</span></p>\n<p style="text-align:justify;"><span style="font-size:11pt;">- Bằng mọi cách phải cho khách hàng biết rằng doanh nghiệp bạn cung cấp sản phẩm, dịch vụ chất lượng.</span></p>\n<p style="text-align:justify;"><span style="font-size:11pt;">- Không những cung cấp cho khách hàng sự phục vụ tốt mà còn cung cấp cho khách hàng cả niềm tin khi họ lựa chọn bạn.</span></p>\n<p style="text-align:justify;"><span style="font-size:11pt;">- Hãy cho khách hàng thấy sự khác biệt của bạn.</span></p>\n<p style="text-align:justify;"><span style="font-size:11pt;">- Làm nổi bật thương hiệu bằng quảng cáo mạnh, khuyến mãi cực sock. Nếu không nằm trong top thì cũng phải nổi bật.</span></p>\n<p style="text-align:justify;"><span style="font-size:11pt;">- Chính sách giá cạnh tranh.</span></p>\n<p style="text-align:justify;"><span style="font-size:11pt;">- Cố gắng giữ khách hàng tiềm năng.</span></p>\n<p style="text-align:justify;"><span style="font-size:11pt;">- Làm từ thiện.</span></p>\n<p style="text-align:justify;"><span style="font-size:11pt;"><strong>3. MARKETING ONLINE DỂ NHƯ TRỞ BÀN TAY.</strong></span></p>\n<p style="text-align:justify;"><span style="font-size:11pt;">Cho dù bạn đã biết hay chưa biết đến marketing online thì trên thực tế nó rất quan trọng với công ty bạn trong thời đại CNTT phát triển quá mạnh mẽ như bây giờ.</span></p>\n<p style="text-align:justify;"><span style="font-size:11pt;">Bạn cần có website thông tin về doanh nghiệp bạn và sản phẩm, dịch vụ bạn đang kinh doanh. Điều này rất dể chỉ cần lên Google search thiết kế website, wordpress, joomla,… Hoặc liên hệ với chúng tôi để có một website đơn giản miển phí hay được tư vấn online miển phí. Hãy nhớ website là địa chỉ, là nơi liên lạc, cầu nối của bạn và khách hàng trên internet.</span></p>\n<p style="text-align:justify;"><span style="font-size:11pt;">Đặt baner, logo giới thiệu website bạn trên nhiều trang web khác. Điều này có thể đơn giản hay phức tạp tùy bạn nhưng với tôi, tôi liên kết bằng cách đặt logo website bạn để bạn đặt lại. Hợp tác để cùng nhau phát triển mà phải không. Nếu bạn muốn đặt logo trên các website lớn cũng không thành vấn đề nhưng phải tốn chi phí một chút.</span></p>\n<p style="text-align:justify;"><span style="font-size:11pt;">Quảng bá rao vặt : Đăng tin giới thiệu sản phẩm, dịch vụ hay giới thiệu công ty bạn lên hàng ngàn diển đàn, trang rao vặt, hay website khác. Để làm điều này có phần mềm hỗ trợ có thể bạn sẽ tìm được miển phí hay thích bạn có thể mua. Hiện nay rất nhiều người hay doanh nghiệp làm vậy. Nó có nhiều tác dụng như quảng cáo, seo, ….</span></p>\n<p style="text-align:justify;"><span style="font-size:11pt;"><span style="text-decoration:underline;">Mạng xã hội ảo :</span> Facebook, twitter, Google Plus One, LinkedIn,Yahoo,… Đây là các kênh tìm kiếm, liên lạc, và tương tác với khách hàng rất dể dàng, và đơn giản. Các công ty trung bình cần có riêng bộ phận này nằm trong phòng marketing. Hãy tưởng tượng mổi ngày có vài trăm đến hàng ngàn người tương tác với Fanpage của công ty bạn. Hãy cố gắng biến mạng xã hội ảo của công ty bạn thành game show như trên tuyền hình nhé.</span></p>\n<p style="text-align:justify;"><span style="font-size:11pt;"><span style="text-decoration:underline;">Dịch vụ SEO</span> : Hãy tưởng tượng bạn có một shop thời trang mà bạn lên google gỏ từ khóa “thời trang nữ” và thấy website của bạn được google sếp lên đầu. Như vậy là sao? Có phải sẽ được nhiều người xem hơn không? Và dĩ nhiên sẽ được nhiều khách hàng hơn rồi phải không?</span></p>\n<p style="text-align:justify;"><span style="font-size:11pt;"><strong>4. HÃY CHO KHÁCH HÀNG BIẾT BẠN LÀ AI.</strong></span></p>\n<p style="text-align:justify;"><span style="font-size:11pt;">Đương nhiên bạn là bạn chứ bạn là ai. Điều tôi và bạn muốn là khách hàng sẽ biết đến mình, đến công ty/doanh nghiệp của bạn. Mà phải biết bằng thiện cảm, sự thán phục, sự ngưỡng mộ, sự tò mò, lòng biết ơn,…</span></p>\n<p> </p>', '', 'nhung-chien-luoc-marketing-don-gian-ma-hieu-qua', '', 'Những chiến lược marketing đơn giản mà hiệu quả', '', 0, 5, 0, '', '', 1, 35);

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
) ENGINE=InnoDB  DEFAULT CHARSET=utf8 AUTO_INCREMENT=36 ;

--
-- Dumping data for table `dos_module_news_cat`
--

INSERT INTO `dos_module_news_cat` (`cat_id`, `cat_parent_id`, `cat_title`, `cat_titleen`, `preview`, `previewen`, `tag`, `tagen`, `description`, `descriptionen`, `pic_full`, `cat_order`, `cat_extra1`, `cat_extra2`, `cat_enable`, `dos_usernames_username`) VALUES
(33, 0, 'Thiết Kế Đồ Họa', '', '', '', 'thiet-ke-do-hoa', '', 'Thiết Kế Đồ Họa', '', 'thiet-ke-o-hoa.jpg', 1, '', '', 1, 'inlisaco'),
(34, 0, 'In ấn - Quảng cáo', '', '', '', 'in-an-quang-cao', '', 'In ấn - Quảng cáo', '', 'in-an-quang-cao.jpg', 2, '', '', 1, 'inlisaco'),
(35, 0, 'Tin Tổng Hợp', '', '', '', 'tin-tong-hop', '', 'Tin Tổng Hợp', '', 'tin-tong-hop.jpeg', 3, '', '', 1, 'inlisaco');

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
('day_time', 2456045),
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
('''127.0.0.1''', 1335489760);

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
  `unit` int(11) DEFAULT NULL,
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
) ENGINE=InnoDB DEFAULT CHARSET=utf8 AUTO_INCREMENT=1 ;

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
) ENGINE=InnoDB DEFAULT CHARSET=utf8 AUTO_INCREMENT=1 ;

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
) ENGINE=InnoDB  DEFAULT CHARSET=utf8 AUTO_INCREMENT=30 ;

--
-- Dumping data for table `dos_module_services`
--

INSERT INTO `dos_module_services` (`record_id`, `title`, `titleen`, `preview`, `previewen`, `content`, `contenten`, `pic_full`, `hit`, `created`, `record_order`, `hot`, `extra_field1`, `extra_field2`, `tag`, `tagen`, `description`, `descriptionen`, `activated`, `dos_usernames_username`) VALUES
(22, 'In Ấn Thương Hiệu', '', '', '', '<p style="text-align:justify;"><strong><span style="font-size:11pt;"> </span></strong></p>\n<p style="text-align:justify;"><strong><span style="font-size:11pt;"><img src="/public/userfiles/image/inlisaco/image/nhandien1.jpg" alt="" width="450" height="377" /></span></strong></p>\n<p style="text-align:justify;"><strong><span style="font-size:11pt;"> </span></strong></p>\n<p style="text-align:justify;"><strong><span style="font-size:11pt;">IN LISA</span></strong><span style="font-size:11pt;"> chuyên nhận <span style="color:#993300;">in offset </span>bộ nhận diện thương hiệu, các khổ A3 - A4 - A5 và các khổ giấy tự do theo thiết kế của khách hàngvới số lượng lớn từ 1000 sản phẩm trở lên.</span></p>\n<p style="text-align:justify;"><span style="font-size:11pt;">Gắn liền với dịch vụ <span style="color:#993300;">thiết kế nhận diện thương hiệu</span> là mức giá in ưu đãi cho khách hàng.</span></p>\n<p style="text-align:justify;"><span style="font-size:11pt;">Chất lượng giấy Couche bảo đảm đúng với yêu cầu của khách (C150, C200, C250 .v.v.)</span></p>\n<p style="text-align:justify;"><span style="font-size:11pt;">Máy in offset 4 màu chuyên nghiệp đảm bảo chất lượng màu hoàn hảo nhất gần giống với màu thiết kế trên máy tính đến 95%.</span></p>\n<p style="text-align:justify;"><span style="font-size:11pt;">Dịch vụ cán màng một mặt và hai mặt các sản phẩm in, cấn lên các sản phẩm gấp.</span></p>\n<p style="text-align:justify;"><span style="font-size:11pt;">Sản phẩm được giao tận nơi trong khu vực TP. Hồ Chí Minh.</span></p>\n<p> </p>', '', 'in-an-thuong-hieu.jpg', 10, '2012-04-25 01:50:13', 8, 0, '', '', 'in-an-thuong-hieu', '', 'in an chuyen nghiep, in an nhan dien thuong hieu', '', 1, 'inlisaco'),
(23, 'In Ấn Brochure', '', '', '', '<p style="text-align:justify;"><strong><img src="/public/userfiles/image/inlisaco/image/bro3.jpg" alt="" width="425" height="356" /></strong></p>\n<p style="text-align:justify;"><span style="font-size:11pt;"><strong>IN LISA</strong> chuyên nhận <span style="color:#993300;">in offset</span> các loại brochure A3 - A4 - A5 và các khổ giấy tự do theo thiết kế của khách hàngvới số lượng lớn từ 1000 tờ trở lên.</span></p>\n<p style="text-align:justify;"><span style="font-size:11pt;">Gắn liền với dịch vụ <span style="color:#993300;">thiết kế brochure</span> là mức giá in ưu đãi cho khách hàng.</span></p>\n<p style="text-align:justify;"><span style="font-size:11pt;">Chất lượng giấy Couche bảo đảm đúng với yêu cầu của khách (C150, C200, C250 .v.v.)</span></p>\n<p style="text-align:justify;"><span style="font-size:11pt;">Máy <span style="color:#993300;">in offset</span> 4 màu chuyên nghiệp đảm bảo chất lượng màu hoàn hảo nhất gần giống với màu thiết kế trên máy tính đến 95%.</span></p>\n<p style="text-align:justify;"><span style="font-size:11pt;">Dịch vụ cán màng một mặt và hai mặt các sản phẩm in, cấn lên các sản phẩm gấp.</span></p>\n<p style="text-align:justify;"><span style="font-size:11pt;">Sản phẩm được giao tận nơi trong khu vực TP. Hồ Chí Minh.</span></p>', '', 'in-n-brochure.jpg', 11, '2012-04-25 01:56:29', 7, 0, '', '', 'in-an-brochure', '', 'in an brochure, in chuyen nghiep', '', 1, 'inlisaco'),
(24, 'In Ấn Catalogue', '', '', '', '<p> </p>\n<p style="text-align:justify;"><strong><img src="/public/userfiles/image/inlisaco/image/bro4.jpg" alt="" width="500" height="232" /></strong></p>\n<p style="text-align:justify;"><strong> </strong></p>\n<p style="text-align:justify;"><span style="font-size:11pt;"><strong>IN LISA</strong> chuyên nhận <span style="color:#993300;">in offset</span> các loại Catalogue cuốn, khổ A3 - A4 - A5 và các khổ giấy tự do theo thiết kế của khách hàngvới số lượng lớn từ 1000 cuốn trở lên.</span></p>\n<p style="text-align:justify;"><span style="font-size:11pt;">Gắn liền với dịch vụ <span style="color:#993300;">thiết kế catalogue</span> là mức giá in ưu đãi cho khách hàng.</span></p>\n<p style="text-align:justify;"><span style="font-size:11pt;">Chất lượng giấy Couche bảo đảm đúng với yêu cầu của khách (C150, C200, C250 .v.v.)</span></p>\n<p style="text-align:justify;"><span style="font-size:11pt;">Máy <span style="color:#993300;">in offset</span> 4 màu chuyên nghiệp đảm bảo chất lượng màu hoàn hảo nhất gần giống với màu thiết kế trên máy tính đến 95%.</span></p>\n<p style="text-align:justify;"><span style="font-size:11pt;">Dịch vụ cán màng một mặt và hai mặt các sản phẩm in, cấn lên các sản phẩm gấp.</span></p>\n<p style="text-align:justify;"><span style="font-size:11pt;">Sản phẩm được giao tận nơi trong khu vực TP. Hồ Chí Minh.</span></p>\n<p><span style="font-size:11pt;"> </span></p>', '', 'in-n-catalogue.jpg', 10, '2012-04-25 01:59:16', 6, 0, '', '', 'in-an-catalogue', '', 'in an catalogue, in an chuyen nghiep', '', 1, 'inlisaco'),
(25, 'In Ấn Profile', '', '', '', '<p><strong> </strong></p>\n<p><strong><img src="/public/userfiles/image/inlisaco/image/profile1.jpg" alt="" width="400" height="300" /></strong></p>\n<p><strong> </strong></p>\n<p><strong>IN LISA</strong> chuyên nhận <span style="color:#993300;">in offset</span> các Profile công ty cuốn, khổ A4 và các khổ giấy tự do theo thiết kế của khách hàngvới số lượng lớn từ 1000 cuốn trở lên.</p>\n<p>Gắn liền với dịch vụ <span style="color:#993300;">thiết kế Profile</span> là mức giá in ưu đãi cho khách hàng.</p>\n<p>Chất lượng giấy Couche bảo đảm đúng với yêu cầu của khách (C150, C200, C250 .v.v.)</p>\n<p>Máy <span style="color:#993300;">in offset</span> 4 màu chuyên nghiệp đảm bảo chất lượng màu hoàn hảo nhất, gần giống với màu thiết kế trên máy tính đến 95%.</p>\n<p>Dịch vụ cán màng một mặt và hai mặt các sản phẩm in, cấn lên các sản phẩm gấp.</p>\n<p>Sản phẩm được giao tận nơi trong khu vực TP. Hồ Chí Minh.</p>', '', 'in-n-profile.jpg', 10, '2012-04-25 02:02:08', 5, 0, '', '', 'in-an-profile', '', 'in an chuyen nghiep, in an profile', '', 1, 'inlisaco'),
(26, 'In Ấn Tờ Rơi', '', '', '', '<p style="text-align:justify;"><span style="font-size:11pt;"><strong> </strong></span></p>\n<p style="text-align:justify;"><span style="font-size:11pt;"><strong><img src="/public/userfiles/image/inlisaco/image/toroi2.jpg" alt="" width="500" height="310" /></strong></span></p>\n<p style="text-align:justify;"><span style="font-size:11pt;"><strong>IN LISA</strong> chuyên nhận <span style="color:#ff6600;">in offset</span> các loại tờ rơi quảng cáo, khổ A4 – A5 và các khổ giấy tự do theo thiết kế của khách hàng với số lượng lớn từ 1000 tờ trở lên.</span></p>\n<p style="text-align:justify;"><span style="font-size:11pt;">Gắn liền với dịch vụ <span style="color:#ff6600;">thiết kế tờ rơi</span> là mức giá in ưu đãi cho khách hàng.</span></p>\n<p style="text-align:justify;"><span style="font-size:11pt;">Chất lượng giấy Couche bảo đảm đúng với yêu cầu của khách (C150, C200, C250 .v.v.)</span></p>\n<p style="text-align:justify;"><span style="font-size:11pt;">Máy <span style="color:#ff6600;">in offset</span> 4 màu chuyên nghiệp đảm bảo chất lượng màu hoàn hảo nhất, gần giống với màu thiết kế trên máy tính đến 95%.</span></p>\n<p style="text-align:justify;"><span style="font-size:11pt;">Dịch vụ cán màng một mặt và hai mặt các sản phẩm in, cấn lên các sản phẩm gấp.</span></p>\n<p style="text-align:justify;"><span style="font-size:11pt;">Sản phẩm được giao tận nơi trong khu vực TP. Hồ Chí Minh.</span></p>', '', 'in-n-to-roi.jpg', 7, '2012-04-25 02:07:22', 4, 0, '', '', 'in-an-to-roi', '', 'in an to gap, in an to roi', '', 1, 'inlisaco'),
(27, 'In Ấn Poster', '', '', '', '<p> </p>\n<p><img src="/public/userfiles/image/inlisaco/image/poster1.jpg" alt="" width="300" height="400" /></p>\n<p><strong> </strong></p>\n<p><span style="font-size:11pt;"><strong>IN LISA</strong> chuyên nhận <span style="color:#ff6600;">in offset</span> các loại Poster quảng cáo, khổ A3 - A4 – A5 và các khổ giấy tự do theo thiết kế của khách hàngvới số lượng lớn từ 1000 tờ trở lên.</span></p>\n<p><span style="font-size:11pt;">Gắn liền với dịch vụ <span style="color:#ff6600;">thiết kế Poster</span> là mức giá in ưu đãi cho khách hàng.</span></p>\n<p><span style="font-size:11pt;">Chất lượng giấy Couche bảo đảm đúng với yêu cầu của khách (C150, C200, C250 .v.v.)</span></p>\n<p><span style="font-size:11pt;">Máy <span style="color:#ff6600;">in offset</span> 4 màu chuyên nghiệp đảm bảo chất lượng màu hoàn hảo nhất, gần giống với màu thiết kế trên máy tính đến 95%.</span></p>\n<p><span style="font-size:11pt;">Dịch vụ cán màng một mặt và hai mặt các sản phẩm in, cấn lên các sản phẩm gấp.</span></p>\n<p><span style="font-size:11pt;">Sản phẩm được giao tận nơi trong khu vực TP. Hồ Chí Minh.</span></p>', '', 'in-n-poster.jpg', 5, '2012-04-25 02:09:26', 3, 0, '', '', 'in-an-poster', '', 'in an chuyen nghiep, in an poster', '', 1, 'inlisaco'),
(28, 'In Ấn Thiệp', '', '', '', '<p style="text-align:justify;"><strong> </strong></p>\n<p style="text-align:justify;"><strong><img src="/public/userfiles/image/inlisaco/image/thiep1.jpg" alt="" width="450" height="214" /></strong></p>\n<p style="text-align:justify;"><strong> </strong></p>\n<p style="text-align:justify;"><span style="font-size:11pt;"><strong>IN LISA</strong> chuyên nhận <span style="color:#ff6600;">in offset</span> các loại thiệp công ty A4 - A5 và các khổ giấy tự do theo thiết kế của khách hàng với số lượng lớn từ 1000 tờ trở lên.</span></p>\n<p style="text-align:justify;"><span style="font-size:11pt;">Gắn liền với dịch vụ <span style="color:#ff6600;">thiết kế thiệp</span> là mức giá in ưu đãi cho khách hàng.</span></p>\n<p style="text-align:justify;"><span style="font-size:11pt;">Chất lượng giấy Couche bảo đảm đúng với yêu cầu của khách (C150, C200, C250 .v.v.)</span></p>\n<p style="text-align:justify;"><span style="font-size:11pt;">Máy <span style="color:#ff6600;">in offset</span> 4 màu chuyên nghiệp đảm bảo chất lượng màu hoàn hảo nhất, gần giống với màu thiết kế trên máy tính đến 95%.</span></p>\n<p style="text-align:justify;"><span style="font-size:11pt;">Dịch vụ cán màng một mặt và hai mặt các sản phẩm in, cấn lên các sản phẩm gấp.</span></p>\n<p style="text-align:justify;"><span style="font-size:11pt;">Sản phẩm được giao tận nơi trong khu vực TP. Hồ Chí Minh.</span></p>', '', 'in-n-thiep.jpg', 5, '2012-04-25 02:11:07', 2, 0, '', '', 'in-an-thiep', '', 'in an chuyen nghiep, in an thiep', '', 1, 'inlisaco'),
(29, 'In Ấn Cờ Phướn', '', '', '', '<p> </p>\n<p><img src="/public/userfiles/image/inlisaco/image/cophuon1.jpg" alt="" width="440" height="282" /></p>\n<p> </p>\n<p><span style="font-size:11pt;"><strong>IN LISA</strong> chuyên nhận <span style="color:#ff6600;">in hiflex</span> các loại cờ phướn quảng cáo, khổ A4 – A5 và các khổ giấy tự do theo thiết kế của khách hàng với số lượng lớn từ 100 tấm trở lên.</span></p>\n<p><span style="font-size:11pt;">Gắn liền với dịch vụ <span style="color:#ff6600;">thiết kế cờ phướn</span> là mức giá in ưu đãi cho khách hàng.</span></p>\n<p><span style="font-size:11pt;">Chất lượng bạt in cực tốt, dày và bên chịu được mưa gió.</span></p>\n<p><span style="font-size:11pt;">Máy <span style="color:#ff6600;">in hiflex</span> 4 màu chuyên nghiệp đảm bảo chất lượng màu hoàn hảo nhất, gần giống với màu thiết kế trên máy tính đến 95%.</span></p>\n<p><span style="font-size:11pt;">Sản phẩm được giao tận nơi trong khu vực TP. Hồ Chí Minh.</span></p>', '', 'in-n-co-phuon.jpg', 6, '2012-04-25 02:12:52', 1, 0, '', '', 'in-an-co-phuon', '', 'in an chuyen nghiep, in an co phuon', '', 1, 'inlisaco');

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
('analytics', '<script type="text/javascript">\r\n\r\n  var _gaq = _gaq || [];\r\n  _gaq.push([''_setAccount'', ''UA-31228822-1'']);\r\n  _gaq.push([''_trackPageview'']);\r\n\r\n  (function() {\r\n    var ga = document.createElement(''script''); ga.type = ''text/javascript''; ga.async = true;\r\n    ga.src = (''https:'' == document.location.protocol ? ''https://ssl'' : ''http://www'') + ''.google-analytics.com/ga.js'';\r\n    var s = document.getElementsByTagName(''script'')[0]; s.parentNode.insertBefore(ga, s);\r\n  })();\r\n\r\n</script>', 'dos');

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
('070312', 'Mẫu thời trang: 070312', '2012-03-06 13:21:26', 'Chuyên bán các sản phẩm thời trang quần áo mới nhất, với các dịch vụ ưu đãi');

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
('070312', 'thoi-trang');

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
('070312', 'about', 'advs_left'),
('070312', 'about', 'list_supports'),
('070312', 'about', 'menu_about'),
('070312', 'contact', 'advs_left'),
('070312', 'contact', 'list_supports'),
('070312', 'contact', 'menu_products'),
('070312', 'default', 'about_home'),
('070312', 'default', 'advs_left'),
('070312', 'default', 'list_supports'),
('070312', 'default', 'menu_products'),
('070312', 'default', 'products_hot'),
('070312', 'default', 'products_new'),
('070312', 'news', 'advs_left'),
('070312', 'news', 'list_supports'),
('070312', 'news', 'menu_news'),
('070312', 'news', 'news_new'),
('070312', 'products', 'advs_left'),
('070312', 'products', 'list_supports'),
('070312', 'products', 'menu_products'),
('070312', 'services', 'advs_left'),
('070312', 'services', 'list_supports'),
('070312', 'services', 'menu_services'),
('070312', 'video', 'advs_left'),
('070312', 'video', 'list_supports'),
('070312', 'video', 'menu_video');

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
('dos', 'thanhansoft@gmail.com', '1960fdca5ecf16c0ddb74fdc814ee348', '2012-02-05 19:58:28', '', '', '', 'administrator', 'vi|en', NULL, '2012-04-14 03:00:00', 0, 1, '070312', 2, 'cong-nghe-thong-tin-vien-thong'),
('inlisaco', 'xuantrung@thuonghoi.com', 'e10adc3949ba59abbe56e057f20f883e', '2012-04-25 01:20:27', '', '', '', 'user', 'vi', '', '2012-05-24 17:00:00', 0, 1, '070312', 1, 'thoi-trang');

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
('address1', '30/16 Gò Dầu, P. Tân Sơn Nhì, Q. Tân Phú, TP. Hồ Chí Minh', '', 'inlisaco'),
('address2', '08. 6296 3521 - 08. 6296 3522', '', 'inlisaco'),
('banner', 'Logo & Banner', '', 'inlisaco'),
('company_name', 'CÔNG TY IN LISA', '', 'inlisaco'),
('company_phone', 'Hot line: 0987 522 003', '', 'inlisaco');

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
