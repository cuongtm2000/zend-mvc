-- phpMyAdmin SQL Dump
-- version 3.4.5
-- http://www.phpmyadmin.net
--
-- Host: localhost
-- Generation Time: Oct 05, 2012 at 03:45 AM
-- Server version: 5.5.16
-- PHP Version: 5.3.8

SET SQL_MODE="NO_AUTO_VALUE_ON_ZERO";
SET time_zone = "+00:00";


/*!40101 SET @OLD_CHARACTER_SET_CLIENT=@@CHARACTER_SET_CLIENT */;
/*!40101 SET @OLD_CHARACTER_SET_RESULTS=@@CHARACTER_SET_RESULTS */;
/*!40101 SET @OLD_COLLATION_CONNECTION=@@COLLATION_CONNECTION */;
/*!40101 SET NAMES utf8 */;

--
-- Database: `langtre`
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
('advs_left_height', 300, '', '270412'),
('advs_left_width', 179, '', '270412'),
('advs_right_height', 300, '', '270412'),
('advs_right_width', 164, '', '270412'),
('banner_height', 275, '', '270412'),
('banner_width', 628, '', '270412'),
('logo_height', 69, '', '270412'),
('logo_width', 339, '', '270412'),
('max_image_height', 753, '', '270412'),
('max_image_width', 565, '', '270412'),
('news_cat_height', 100, '', '270412'),
('news_cat_width', 143, '', '270412'),
('news_height_thumb', 100, '', '270412'),
('news_num_paging_cat', 10, '', '270412'),
('news_num_paging_hot', 6, '', '270412'),
('news_num_paging_index', 10, '', '270412'),
('news_num_paging_new', 6, '', '270412'),
('news_width_thumb', 143, '', '270412'),
('products_cat_height', 135, '', '270412'),
('products_cat_width', 135, '', '270412'),
('products_height', 753, '', '270412'),
('products_height_thumb', 135, '', '270412'),
('products_num_paging_cat', 16, '', '270412'),
('products_num_paging_hot', 12, '', '270412'),
('products_num_paging_new', 20, '', '270412'),
('products_num_paging_other', 4, '', '270412'),
('products_width', 565, '', '270412'),
('products_width_thumb', 135, '', '270412'),
('video_height_thumb', 135, '', '270412'),
('video_num_paging_cat', 8, '', '270412'),
('video_num_paging_index', 8, '', '270412'),
('video_width_thumb', 135, '', '270412');

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
('270412', 'products', 'scroll.css|jquery.fancybox.css', 'css'),
('270412', 'products', 'jcarousellite_1.0.1.js|scroller.js|jquery.fancybox.js|jquery.scroll-1.4.2-min.js|jquery.serialScroll-1.2.2-min.js|product.js', 'javascript');

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
('about', 'vandongtam'),
('advs', 'vandongtam'),
('banner', 'vandongtam'),
('contact', 'vandongtam'),
('news', 'vandongtam'),
('products', 'vandongtam'),
('services', 'vandongtam'),
('supports', 'vandongtam');

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
) ENGINE=InnoDB  DEFAULT CHARSET=utf8 AUTO_INCREMENT=185 ;

--
-- Dumping data for table `dos_module_abouts`
--

INSERT INTO `dos_module_abouts` (`record_id`, `title`, `titleen`, `content`, `contenten`, `hit`, `created`, `record_order`, `hot`, `extra_field1`, `extra_field2`, `tag`, `tagen`, `description`, `descriptionen`, `activated`, `dos_usernames_username`) VALUES
(184, 'Giới thiệu về công ty', '', '<p style="text-align:justify;"><span style="color:#ff0000;"><strong><span style="color:#333399;">DNTN Ván Đồng Tâm</span> </strong></span>chuyên sản xuất kinh doanh: Ván Okal, Ván Ép, Ván MDF phủ FORMICA, Dán Giấy (vân gỗ, trắng, xám),Dán Veneer, Ván dùng để làm lịch)</p>\n<p style="text-align:justify;">Bột xay (được xay ra từ dăm bào đã xấy khô) dùng để đốt lò hơi cho ngành nhuộm, hiệu quả cao, nhiệt lượng cao hơn, tiết kiệm hơn củi, võ hạt điều.</p>\n<p style="text-align:justify;">Mua dăm bào, gỗ vụn, mùn cưa và các phế liệu khác của các công ty xí nghiệp ngành gỗ.</p>\n<p style="text-align:justify;">Phương châm kinh doanh của chúng tôi là: Phục vụ nhiệt tình, Hàng Chất Lượng, Giá cả Phải chăng.</p>\n<p style="text-align:justify;">Địa điểm giao hàng thuận lợi (nằm trên Quốc Lộ 1A), Giao hàng tận nơi, Giao hàng 24/24.</p>', '', 662, '2012-06-14 02:19:59', 1, 1, '', '', 'gioi-thieu-ve-cong-ty', '', '', '', 1, 'vandongtam');

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
) ENGINE=InnoDB  DEFAULT CHARSET=utf8 AUTO_INCREMENT=223 ;

--
-- Dumping data for table `dos_module_advs`
--

INSERT INTO `dos_module_advs` (`record_id`, `title`, `titleen`, `pic_thumb`, `url`, `create_date`, `start_date`, `end_date`, `hits`, `record_order`, `position`, `type`, `enable`, `dos_usernames_username`) VALUES
(218, 'Quảng cáo', '', 'quang-cao.jpg', 'http://dos.vn', '2012-06-14 07:21:26', '2012-06-13 16:00:00', '2012-12-30 16:00:00', 0, 1, 'right', '_bank', 1, 'vandongtam'),
(219, 'Quảng cáo 1', '', 'quang-cao-1.jpeg', 'http://dos.vn', '2012-06-14 07:21:41', '2012-06-13 16:00:00', '2012-12-30 16:00:00', 0, 3, 'right', '_bank', 1, 'vandongtam'),
(220, 'Quảng cáo 2', '', 'quang-cao-2.jpeg', 'http://dos.vn', '2012-06-14 07:24:59', '2012-06-13 16:00:00', '2012-12-30 16:00:00', 0, 2, 'right', '_bank', 1, 'vandongtam'),
(221, 'Quảng cáo 3', '', 'quang-cao-3.jpg', 'http://dos.vn', '2012-06-14 07:27:47', '2012-06-13 16:00:00', '2012-12-30 16:00:00', 0, 4, 'left', '_bank', 1, 'vandongtam'),
(222, 'Quảng cáo 4', '', 'quang-cao-4.jpg', 'http://dos.vn', '2012-06-14 07:28:42', '2012-06-13 16:00:00', '2012-12-30 16:00:00', 0, 5, 'right', '_bank', 1, 'vandongtam');

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
) ENGINE=InnoDB  DEFAULT CHARSET=utf8 AUTO_INCREMENT=864 ;

--
-- Dumping data for table `dos_module_banners`
--

INSERT INTO `dos_module_banners` (`banner_id`, `banner_date`, `banner_name`, `banner_url`, `banner_link`, `banner_order`, `banner_type`, `position`, `enable`, `dos_usernames_username`) VALUES
(846, '2012-06-14 01:34:51', 'Banner', 'banner.jpg', '', 1, 'banners', 'contact', 1, 'vandongtam'),
(847, '2012-06-14 01:35:04', 'Banner 1', 'banner-1.jpg', '', 14, 'banners', 'default', 1, 'vandongtam'),
(848, '2012-06-14 01:35:17', 'Banner 2', 'banner-2.jpg', '', 3, 'banners', 'default', 1, 'vandongtam'),
(849, '2012-06-14 01:35:25', 'Banner 3', 'banner-3.jpg', '', 4, 'banners', 'default', 1, 'vandongtam'),
(850, '2012-06-14 01:35:36', 'Banner 4', 'banner-4.jpg', '', 5, 'banners', 'default', 1, 'vandongtam'),
(851, '2012-06-14 01:54:19', 'Banner 5', 'banner-5.jpg', '', 6, 'banners', 'products', 1, 'vandongtam'),
(852, '2012-06-14 01:54:33', 'Banner 6', 'banner-6.jpg', '', 7, 'banners', 'about', 1, 'vandongtam'),
(853, '2012-06-14 01:54:52', 'Banner 7', 'banner-7.jpg', '', 8, 'banners', 'products', 1, 'vandongtam'),
(854, '2012-06-14 01:55:07', 'Banner 8', 'banner-8.jpg', '', 9, 'banners', 'services', 1, 'vandongtam'),
(855, '2012-06-14 01:55:27', 'Banner 9', 'banner-9.jpg', '', 10, 'banners', 'about', 1, 'vandongtam'),
(856, '2012-06-14 01:55:50', 'Banner 10', 'banner-10.jpg', '', 11, 'banners', 'services', 1, 'vandongtam'),
(857, '2012-06-14 01:56:06', 'Banner 11', 'banner-11.jpg', '', 12, 'banners', 'news', 1, 'vandongtam'),
(858, '2012-06-14 01:56:20', 'Banner 12', 'banner-12.jpg', '', 13, 'banners', 'contact', 1, 'vandongtam'),
(859, '2012-06-14 01:56:37', 'Banner 13', 'banner-13.jpg', '', 2, 'banners', 'default', 1, 'vandongtam'),
(860, '2012-06-14 06:14:26', 'Logo-vandongtam', 'logo-vandongtam.png', '', 15, 'logo', 'default', 1, 'vandongtam'),
(861, '2012-06-14 06:54:18', 'Banner 14', 'banner-14.jpg', '', 16, 'banners', 'products', 1, 'vandongtam'),
(862, '2012-06-14 06:54:31', 'Banner 15', 'banner-15.jpg', '', 17, 'banners', 'products', 1, 'vandongtam'),
(863, '2012-06-14 06:54:42', 'Banner 16', 'banner-16.jpg', '', 18, 'banners', 'products', 1, 'vandongtam');

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
) ENGINE=InnoDB  DEFAULT CHARSET=utf8 AUTO_INCREMENT=23 ;

--
-- Dumping data for table `dos_module_contacts`
--

INSERT INTO `dos_module_contacts` (`record_id`, `title`, `titleen`, `content`, `contenten`, `create_date`, `record_order`, `hit`, `hot`, `tag`, `tagen`, `description`, `descriptionen`, `enable`, `dos_usernames_username`) VALUES
(22, 'Liên hệ với chúng tôi', '', '<p><strong>DNTN Ván Đồng Tâm </strong></p>\n<p>Địa chỉ : 469 Tổ 17,Ấp Thái Hòa, X. Hố Nai 3, H. Trảng Bom, Đồng Nai</p>\n<p>Điện thoại: (84-61) 3983590</p>\n<p>Fax: (84-61) 3985445</p>\n<p>Website: <a href="http://www.vandongtam.com">www.vandongtam.com</a></p>\n<p>Email: <a href="mailto:vandongtam@yahoo.com">vandongtam@yahoo.com</a></p>', '', '2012-06-14 02:21:24', 1, 0, 0, 'lien-he-voi-chung-toi', '', '', '', '1', 'vandongtam');

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
('Trang chủ', '', 'default', '', 1, '', '', '', '', 'vandongtam'),
('Giới thiệu', '', 'about', '', 2, '', '', '', '', 'vandongtam'),
('Sản phẩm', '', 'products', '', 3, '', '', '', '', 'vandongtam'),
('Dự án - Công trình', '', 'services', '', 4, '', '', '', '', 'vandongtam'),
('Tin tức & sự kiện', '', 'news', '', 5, '', '', '', '', 'vandongtam'),
('Liên hệ', '', 'contact', '', 6, 'Dự Án Hầm Thủ Thêm', '', '', '', 'vandongtam');

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
) ENGINE=InnoDB  DEFAULT CHARSET=utf8 AUTO_INCREMENT=229 ;

--
-- Dumping data for table `dos_module_news`
--

INSERT INTO `dos_module_news` (`record_id`, `title`, `titleen`, `postdate`, `pic_thumb`, `preview`, `previewen`, `content`, `contenten`, `tag`, `tagen`, `description`, `descriptionen`, `hits`, `record_order`, `hot`, `extra_field1`, `extra_field2`, `enable`, `dos_module_item_cat_cat_id`) VALUES
(224, 'Tạo ván ép từ trấu và vụn xơ dừa', '', '2012-06-14 06:59:16', 'tao-van-ep-tu-trau-va-vun-xo-dua.jpg', '<p style="text-align:justify;">Từ trấu và vụn xơ dừa, Tiến sĩ Lâm Trần Vũ, Phân viện Cơ điện nông nghiệp và Công nghệ sau thu hoạch tại TP HCM tạo ra được loại ván ép có khả năng chống cháy, cách âm, trương nở trong nước… có thể dùng làm đồ mộc gia dụng, vách ngăn, trần nhà.</p>', '', '<p style="text-align:justify;"><strong>Từ trấu và vụn xơ dừa, Tiến sĩ Lâm Trần Vũ, Phân viện Cơ điện nông nghiệp và Công nghệ sau thu hoạch tại TP HCM tạo ra được loại ván ép có khả năng chống cháy, cách âm, trương nở trong nước… có thể dùng làm đồ mộc gia dụng, vách ngăn, trần nhà.</strong></p>\n<p style="text-align:justify;">Theo Tiến sĩ Vũ, thành công lớn nhất của nghiên cứu trên là tận dụng phụ phẩm trong nông nghiệp trấu, xơ dừa để mang lại lợi nhuận và hạn chế tình trạng ô nhiễm môi trường từ hai phụ phẩm này.</p>\n<p style="text-align:center;"><img src="/public/userfiles/image/vandongtam/image/tt.jpg" alt="" width="480" height="360" /></p>\n<p style="text-align:center;"><em>TS Vũ bên loại ván ép mới. Ảnh: V.Ánh</em></p>\n<p style="text-align:justify;">Ngoài ra, việc chế tạo loại ván này còn giúp hạn chế được việc phá rừng lấy cây làm ván. Giá một tấm ván ép có kích thước 122 x 244 x 1,8 cm từ trấu và vụn xơ dừa này là hơn 100.000 đồng.</p>', '', 'tao-van-ep-tu-trau-va-vun-xo-dua', '', '', '', 0, 4, 0, '', '', 1, 130),
(225, 'Ván nhân tạo có vân như gỗ thật', '', '2012-06-14 07:00:59', 'van-nhan-tao-co-van-nhu-go-that.jpg', '<p style="text-align:justify;">Ván nhân tạo có vân như gỗ thật. Do những đặc tính cơ lý ưu việt, kiểu dáng màu sắc phong phú, nên đồ mộc làm từ ván nhân tạo thích hợp với nội thất hiện đại. Nguồn gỗ khai thác từ rừng tự nhiên ngày càng cạn kiệt, vì vậy sản xuất ván gỗ nhân tạo là hướng ưu tiên đầu tư của Chính phủ để xuất khẩu, giải quyết nguồn nguyên liệu rừng trồng</p>', '', '<p style="text-align:justify;"><strong>Ván nhân tạo có vân như gỗ thật. Do những đặc tính cơ lý ưu việt, kiểu dáng màu sắc phong phú, nên đồ mộc làm từ ván nhân tạo thích hợp với nội thất hiện đại. Nguồn gỗ khai thác từ rừng tự nhiên ngày càng cạn kiệt, vì vậy sản xuất ván gỗ nhân tạo là hướng ưu tiên đầu tư của Chính phủ để xuất khẩu, giải quyết nguồn nguyên liệu rừng trồng</strong></p>\n<p style="text-align:justify;">Hiện nay cả nước có 1.200 doanh nghiệp chế biến, kinh doanh gỗ, trong đó trên 300 doanh nghiệp đã có hàng xuất khẩu, Việt Nam đang đặt mục tiêu xuất khẩu gỗ đạt 1,5 tỷ USD/năm, trong đó ván gỗ nhân tạo sẽ giữ vai trò chủ lực. Sản phẩm đồ mộc: bàn, ghế, giường, tủ, tủ bếp, vách ngăn, sàn nhà, ốp tường, ốp trần... làm từ ván gỗ nhân tạo rất thích hợp cho nội thất gia đình, công sở, trường học, khách sạn, nhà hàng, nhà văn hoá, cung thể thao...</p>\n<p style="text-align:justify;">Những loại ván gỗ nhân tạo thông dụng ở Việt Nam</p>\n<p style="text-align:justify;">Theo ông Phạm Quang Hiển (Tổng giám đốc TCT lâm nghiệp Việt Nam), sản phẩm ván gỗ nhân tạo sản xuất và sử dụng phổ biến ở Việt Nam hiện nay gồm 3 loại chính: ván sợi, ván ghép thanh, ván dăm...</p>\n<p style="text-align:justify;">Ván dăm (PB) là gỗ nhân tạo được sản xuất từ nguyên liệu gỗ rừng trồng (bạch đàn, keo, cao su...), có độ bền cơ lý cao, kích thước bề mặt rộng, phong phú về chủng loại. Mặt ván được dán phủ bằng những loại vật liệu trang trí khác nhau: melamine, veneer (gỗ lạng)...</p>\n<p style="text-align:justify;">Ván dăm là nguyên liệu chủ yếu sử dụng để trang trí nội thất, sản xuất đồ mộc gia đình, công sở. Ván dăm được sản xuất bằng quá trình ép dăm gỗ đã trộn keo, tương tự như MDF nhưng gỗ được xay thành dăm, nên chúng có chất lượng kém hơn ván sợi.</p>\n<p style="text-align:justify;">Công nghệ dán phủ mặt và cạnh ván thoả mãn nhiều yêu cầu về hình dạng và kích thước, gồm 2 loại sản phẩm: ván dăm trơn và MFC. Ván dăm trơn là loại phổ biến trên thị trường, khi sử dụng thường được phủ veneer, sơn, hoặc phủ PU. Với sản phẩm MFC, hai mặt được phủ một lớp Melamine nhằm tạo vẻ đẹp, chống ẩm và trầy xước.</p>\n<p style="text-align:justify;">Những nước sản xuất ván dăm nhiều trên thế giới là:</p>\n<p style="text-align:justify;">Malaysia, Việt Nam, New Zealand, Thái Lan, Úc. Nơi sản xuất ván dăm lớn nhất Việt Nam hiện nay là Nhà máy Ván dăm Thái Nguyên, với công suất thiết kế 16.500 m3 sản phẩm/năm, được áp dụng hệ thống quản lý chất lượng ISO 9001-2000, trang bị công nghệ hiện đại, sản phẩm xuất xưởng có độ dày từ 8mm đến 32 mm.</p>\n<p style="text-align:justify;">Ván sợi MDF (còn gọi gỗ ép) thuộc loại gỗ nhân tạo có độ bền cơ lý cao, kích thước lớn, phù hợp với công nghệ sản xuất đồ mộc nội thất trong vùng khí hậu nhiệt dới. Ván sợi được sử dụng rộng rãi trong nhiều lĩnh vực: sản xuất đồ mộc, trang trí nội thất, xây dựng.</p>\n<p style="text-align:justify;">MDF được sản xuất qua quá trình ép sợi gỗ xay nhuyễn đã trộn keo, tỷ trọng từ 520-850kg/m3, tùy theo yêu cầu chất lượng, nguyên liệu gỗ, độ dày. Trên thị trường hiện có 3 loại chính: trơn, chịu nước, Melamine.</p>\n<p style="text-align:justify;">MDF trơn là loại phổ biến nhất, khi sử dụng thường được phủ veneer, sơn hoặc phủ PU. MDF chịu nước cũng thuộc loại MDF trơn, được trộn keo chịu nước trong quá trình sản xuất, thường sử dụng ở nơi có khả năng tiếp xúc với nước hoặc có độ ẩm cao như cánh cửa, đồ gỗ trong nhà bếp. Melamine MDF: hai mặt ván MDF được phủ một lớp Melamine nhằm tạo vẻ đẹp, chống ẩm và trầy xước.</p>\n<p style="text-align:justify;">Ván ghép thanh (còn gọi gỗ ghép) được sản xuất từ nguyên liệu chính là gỗ rừng trồng. Những thanh gỗ nhỏ đã qua xử lý hấp sấy, trên dây chuyền công nghệ tiên tiến, thiết bị hiện đại, gỗ được cưa, bào, phay, ghép, ép, chà và sơn phủ trang trí. Ván ghép thanh được sử dụng rộng rãi trong các lĩnh vực sản xuất đồ mộc, trang trí nội thất, sản xuất ván sàn và nhiều sản phẩm khác.</p>\n<p style="text-align:justify;">Có bốn cách thức gỗ ghép: song song, mặt, cạnh, giác. Gỗ ghép song gồm nhiều thanh gỗ cùng chiều dài, có thể khác chiều rộng, ghép song song với nhau. Gỗ ghép mặt gồm nhiều thanh gỗ ngắn, ở hai đầu được xẻ theo hình răng lược rồi ghép lại thành những thanh có chiều dài bằng nhau, rồi tiếp tục ghép song song các thanh, cho nên chỉ nhìn thấy vết ghép hình răng lược trên bề mặt ván, thị trường Nhật rất chuộng cách ghép này.</p>\n<p style="text-align:justify;">Nâng cao công nghệ sản xuất gỗ nhân tạo</p>\n<p style="text-align:justify;">Gỗ nhân tạo của nước ta còn nhiều nhược điểm chưa được khắc phục: chứa những chất độc hại, dễ biến dạng khi gặp nước, dễ bắt lửa, hay bị mối mọt, nứt tách. Trong những năm qua, nhiều người đã nghiên cứu, cải tiến công nghệ sản xuất đem lại hiệu quả cao.</p>\n<p style="text-align:justify;">Ông Trần Phúc ở Lâm Đồng chế tạo thành công máy sản xuất ván ép từ vỏ cà phê, lá thông khô, vỏ trấu chế tạo sản phẩm gỗ nhân tạo với giá thành thấp. Công nghệ chế biến ván này không chỉ giúp nông dân có thêm thu nhập mà còn hỗ trợ giải quyết vấn đề môi trường.</p>\n<p style="text-align:justify;">Ông Nguyễn Văn Thanh cho ra chùm công nghệ mới trong chế tạo ván gỗ, hứa hẹn sẽ tạo bước đột phá cho xuất khẩu gỗ của Việt Nam. Với sản phẩm nhựa nhiệt rắn của ông Thanh, các sản phẩm ván ép đã nâng cao được chất lượng, đi trước cả những công nghệ của nhiều nước trên thế giới. Sản xuất thành công loại sơn lót chống cháy cũng là bước tiến quan trọng, mang đặc tính vượt trội hơn bất kỳ loại sơn lót nhập khẩu nào nhờ đặc tính chống cháy và hoàn toàn không gây độc hại.</p>\n<p style="text-align:justify;">Một kỹ nghệ tưởng như đơn giản nhưng vô cùng khoa học: đưa những loại gỗ rừng có chất lượng kém (nhanh mục, dễ thấm nước, dễ cong vênh...) vào bình áp suất chứa nước, tăng nhiệt độ lên 180OC, áp suất đạt 5 at. Nhiệt độ cao khiến nhựa trong thân gỗ được hoá lỏng, làm co giãn sợi xenlulo. Sau đó xả hơi nước đột ngột và đưa dung dịch keo nhựa nhiệt rắn vào bình, nhựa nhiệt rắn ngấm dần vào sợi xelulo, làm cứng gỗ tạo nên sản phẩm chất lượng tương đương các loại gỗ tự nhiên quý.</p>\n<p style="text-align:justify;">Hiện tại, hầu hết các sản phẩm gỗ ván ép của Việt Nam, cũng như Đông Nam Á không xuất khẩu được sang thị trường châu Âu, châu Mỹ vì chưa đáp ứng được các tiêu chuẩn về kỹ thuật. Vì vậy để thúc đẩy xuất khẩu, đạt mục tiêu xuất khẩu gỗ do Chính phủ đề ra, các doanh nghiệp xuất khẩu gỗ cần tăng cường nghiên cứu công nghệ mới để ứng dụng vào sản xuất, khắc phục những nhược điểm của sản phẩm gỗ nhân tạo của Việt Nam.</p>', '', 'van-nhan-tao-co-van-nhu-go-that', '', '', '', 0, 5, 0, '', '', 1, 130),
(226, 'Làm đẹp phòng khách theo phong thủy', '', '2012-06-14 07:04:24', 'lam-dep-phong-khach-theo-phong-thuy.jpg', '<p>Không gian giao tiếp trong mỗi ngôi nhà là không thể thiếu để liên kết các thành viên cũng như tạo dựng các mối quan hệ xã hội, nhất là vào dịp lễ tết thì việc quây quần sum họp tại nhà lại càng quan trọng.</p>', '', '<p style="text-align:justify;"><strong>Không gian giao tiếp trong mỗi ngôi nhà là không thể thiếu để liên kết các thành viên cũng như tạo dựng các mối quan hệ xã hội, nhất là vào dịp lễ tết thì việc quây quần sum họp tại nhà lại càng quan trọng.</strong></p>\n<p style="text-align:center;"><strong><img src="/public/userfiles/image/vandongtam/image/tt1.jpg" alt="" width="450" height="350" /><br /></strong></p>\n<p style="text-align:justify;">Không gian giao tiếp của mỗi ngôi nhà rộng hẹp ít nhiều khác nhau tùy thuộc vào điều kiện diện tích hay mục đích sử dụng, nhưng về cơ bản vẫn cần tuân thủ các nguyên tắc hài hòa theo phong thủy.</p>\n<p style="text-align:justify;">Hình thức giao tiếp trong nhà cũng tựa như một quốc gia có đối nội và đối ngoại, một không gian giao tiếp tốt sẽ phải đáp ứng được một cách trọn vẹn nhất cả hai tiêu chí nói trên.</p>\n<p style="text-align:justify;">Trong những dịp lễ tết có đông khách khứa cũng là khi tác động của ngoại khí nhiều hơn. Do vậy cần bố trí không gian đệm như tiền sảnh hoặc một khoảng sân nhỏ, có cây xanh, kết hợp làm nơi đón và tiễn khách, điều này sẽ giúp giảm hung khí trực tiếp từ ngoài vào.</p>\n<p style="text-align:justify;">Đối với chức năng đối nội thì không gian giao tiếp có thể được sử dụng khá linh động chẳng hạn như việc sử dụng phòng ăn, phòng nghe nhìn làm nơi tiếp khách thân mật hoặc thư giãn.</p>\n<p style="text-align:justify;">Tính chất không gian giao tiếp cũng khá phong phú và linh động, không theo một khuôn mẫu nhất định, tùy sinh hoạt của từng nhà mà bài trí ở mức độ phù hợp cho gia chủ. Nếu nhà phố có nhiều thế hệ chung sống thì mỗi tầng có thể làm một góc sinh hoạt, tiếp khách mà không cần phải tập trung vào một tầng trệt để đảm bảo tính độc lập.</p>\n<p style="text-align:justify;">Nơi giao tiếp vốn có tính động do đó mà thông thường người ta đặt nơi giao tiếp tại vị trí trung tâm của nhà trở ra phía trước để dành phần phía sau nhà cho các sinh hoạt nội bộ.</p>\n<p style="text-align:justify;">Những lưu ý khi trang trí không gian giao tiếp trong nhà:</p>\n<p style="text-align:justify;">- Không nên lấy tông màu tối làm màu sắc chủ đạo cho phòng khách bởi nó gây cảm giác nặng nề và không mấy thân thiện cho khách khứa.</p>\n<p style="text-align:justify;">- Không nên đặt quá nhiều vật dụng không cần thiết trong phòng, bởi chúng sẽ làm cản trở luồng khí lưu thông.</p>\n<p style="text-align:justify;">- Không nên đặt những cây có gai, lá sắc nhọn, dễ gây trầy xước khi bất cẩn, đặc biệt nhà có trẻ em thì điều này là càng không nên.</p>', '', 'lam-dep-phong-khach-theo-phong-thuy', '', '', '', 0, 3, 0, '', '', 1, 129),
(227, 'Bố trí cầu thang hợp phong thủy', '', '2012-06-14 07:06:41', 'bo-tri-cau-thang-hop-phong-thuy.jpg', '<p style="text-align:justify;">Cầu thang là không gian giao thông theo chiều đứng để tới được các tầng, các buồng trong nhà. Trong khoa học phong thủy, cầu thang được ví như xương sống của ngôi nhà và là nơi khí vận động mạnh, liên tục để đưa dòng khí lan tỏa đi các tầng trong nhà.</p>', '', '<p style="text-align:justify;"><strong>Cầu thang là không gian giao thông theo chiều đứng để tới được các tầng, các buồng trong nhà. Trong khoa học phong thủy, cầu thang được ví như xương sống của ngôi nhà và là nơi khí vận động mạnh, liên tục để đưa dòng khí lan tỏa đi các tầng trong nhà.</strong></p>\n<p style="text-align:justify;">Hiện nay, nhiều nhà có cầu thang bố trí hình xoắn ốc chạy từ trên xuống dưới ngay trung tâm nhà. Về mặt phong thủy, đây là kiểu kiến trúc không tốt, khiến gia chủ dễ mắc các bệnh tim mạch, hoặc gặp những trắc trở trong công việc.</p>\n<p style="text-align:center;"><img src="/public/userfiles/image/vandongtam/image/tt3.jpg" alt="" width="450" height="300" /></p>\n<p style="text-align:justify;">Theo quan niệm phong thủy truyền thống, người Hoa thường để ý đến cầu thang ở các nhà cao tầng. Đầu cầu thang hướng vào chỗ tốt thì gia chủ gặp thuận lợi, nhưng nếu đầu cầu thang đổ tuột ra ngay đường, ra cửa chính của căn nhà là một đại kỵ. Lý thuyết Phong thủy thường dựa vào hình tượng, biểu tượng, trong trường hợp đầu cầu thang hướng thẳng ra cửa chính, khi mở cửa sẽ như cái miệng đang há ra. Gia chủ sống trong căn nhà đó thường bị hao tán, thất thoát tiền bạc. Ngoài ra, người sống trong căn nhà đó hay có tư tưởng, hướng sống ở ngoài hơn là ở trong nhà. Gặp trường hợp này, tùy vào cách bố trí của ngôi nhà, có thể hóa giải bằng cách dùng gương soi phản chiếu hay dùng chậu cây, ống sáo, bình phong … để hoãn khí cho kiểu cầu thanh này.</p>\n<p style="text-align:justify;">Cầu thang là nơi khí khởi phát để tiếp dẫn lên hay xuống lầu, cũng chính là nơi luân lưu di động của khí. Vì vậy, nếu cầu thang mở tại những cung tốt thì các tầng trên được tốt. Ngược lại, nếu cầu thang mở tại những cung xấu thì các tầng trên phải chịu xấu.</p>\n<p style="text-align:justify;">Khu vực cầu thang phải có đủ ánh sáng, điều này sẽ thu hút nhiều sinh khí dẫn lên các tầng. Nếu cầu thang hẹp, bạn hãy treo một tấm gương lớn để có tác dụng mở rộng cầu thang về mặt hình ảnh trong phong thuỷ.</p>\n<p style="text-align:justify;">Bậc cầu thang phải hoàn toàn kín, liền nhau, không có lỗ hổng giữa các bậc. Điều này bảo đảm rằng, tài chính gia đình sẽ không bị thất thoát. Vì vậy, nếu cầu thang trong nhà có lỗ hổng ở giữa các bậc, hãy dùng ván gỗ bít kín chúng lại.</p>\n<p style="text-align:justify;">Khi nói đến cầu thang, ta thường quan tâm đến số bậc của cầu thang. Có hai cách tính số bậc cầu thang: tính theo số bậc tới mặt sàn mỗi tầng và tính theo tổng số bậc cầu thang của ngôi nhà. Tuy nhiên, trong khoa học phong thủy, số bậc cầu thang tính tới mặt sàn mỗi tầng là căn cứ chính để định tốt, xấu mà không câu nệ tổng số bậc cầu thang trong nhà. Tại nhiều ngôi nhà, cầu thang không được bố trí tại cùng một cung vị, có khi cầu thang lên mỗi tầng lại được bố trí ở một vị trí khác nhau.<br />Để xét số bậc của cầu thang, phải căn cứ vào ngũ hành thuộc về hình thể kiến trúc của ngôi nhà rồi lấy vòng Trường sinh mà định số bậc.</p>\n<p style="text-align:justify;"><strong>1 - Cách tính theo vòng Trường sinh</strong></p>\n<p style="text-align:justify;">Vòng Trường sinh là 12 sao thể hiện quy luật sinh tồn (phát sinh, tồn tại, phát triển và chấm dứt) của vạn vật. Theo quan niệm của triết học phương Đông thì bất kỳ một sự vật, hiện tượng nào cũng phải trải qua 12 giai đoạn sau:</p>\n<p style="text-align:justify;">1. Trường sinh (sinh ra).</p>\n<p style="text-align:justify;">2. Mộc dục (tắm rửa).</p>\n<p style="text-align:justify;">3. Quan đới (phát triển).</p>\n<p style="text-align:justify;">4. Lâm quan (trưởng thành).</p>\n<p style="text-align:justify;">5. Đế vượng (cực thịnh).</p>\n<p style="text-align:justify;">6. Suy (suy yếu).</p>\n<p style="text-align:justify;">7. Bệnh (ốm đau).</p>\n<p style="text-align:justify;">8. Tử (chết).</p>\n<p style="text-align:justify;">9. Mộ (nhập mộ).</p>\n<p style="text-align:justify;">10. Tuyệt (tan rã).</p>\n<p style="text-align:justify;">11. Thai (phôi thai).</p>\n<p style="text-align:justify;">12. Dưỡng (thai trưởng).</p>\n<p style="text-align:justify;">Căn cứ vào hình thể kiến trúc của ngôi nhà, thì nhà hình Thủy bậc thứ 1 là Trường sinh, nhà hình Mộc bậc thứ 3 là Trường sinh, nhà hình Thổ bậc thứ 5 là Trường sinh, nhà hình Hỏa bậc thứ 7 là Trường sinh, nhà hình Kim bậc thứ 9 là Trường sinh. Bắt đầu từ bậc Trường sinh theo ngũ hành của ngôi nhà, tiếp tục thuận đếm mỗi bậc là 1 sao kế tiếp trong vòng Trường sinh, cứ hết 12 sao lại tiếp tục đếm một vòng mới.</p>\n<p style="text-align:justify;">Như vậy, nhà hình Thủy thì số bậc nên dùng là: 1, 3, 4, 5, 9, 11, 13, 15, 16, 17, 21, 23…</p>\n<p style="text-align:justify;">Nhà hình Mộc thì số bậc nên dùng là: 1, 3, 5, 6, 7, 11, 13, 15, 17, 18, 19, 23, 25…</p>\n<p style="text-align:justify;">Nhà hình Thổ thì số bậc nên dùng là: 1, 3, 5, 7, 8, 9, 13, 15, 17, 19, 20, 21, 25, 27...</p>\n<p style="text-align:justify;">Nhà hình Hỏa thì số bậc nên dùng là: 3, 5, 7, 9, 10, 11, 15, 17, 19, 21, 22, 23, 27...<br />Nhà hình Kim thì số bậc nên dùng là: 1, 5, 9, 11, 12, 13, 15, 17, 19, 21, 22, 23, 25…</p>\n<p style="text-align:justify;">Khoa học hiện đại cũng đã chứng minh được rằng sự thay đổi trạng thái của con người cũng như sự ngưng tĩnh vận động ở một nhịp độ, tiết tấu nào đó đều có ảnh hưởng tới sự phát triển cơ thể và hình thành tính cách, có thể tăng cường sức khỏe, tăng trí nhớ nếu sự thay đổi hay ngưng tĩnh phù hợp. Ngược lại, nó cũng có thể làm giảm sức khỏe, tăng stress và đặc biệt là phát sinh một số bệnh tật. Số bậc cầu thang dừng lại ở bao nhiêu bậc để dẫn tới sàn mỗi tầng cũng làm thay đổi trạng thái vận động và sự ngưng tĩnh của con người. Từ đó, làm thay đổi sức khỏe, tâm tính con người.</p>\n<p style="text-align:justify;"><strong>2 - Cách tính theo sinh - lão - bệnh - tử</strong></p>\n<p style="text-align:justify;">Số lượng bậc thang được tính từ bậc thứ nhất cho tới điểm kết thúc. Một điều rất cần thiết là số bậc của mỗi tầng, cũng như của cả cầu thang, tính từ bậc thứ nhất đến bậc kết thúc phải rơi vào cung “Sinh” trong vòng tuần hoàn “Sinh”, “Lão”, “Bệnh”, “Tử”. Vì thế, tổng số bậc cầu thang là bậc lẻ (21, 17...). Được như vậy, sẽ đảm bảo không những thuận tiện về sinh hoạt, đồng thời, cũng mang lại cho chúng ta cảm giác yên tâm, thoải mái trong ngôi nhà của mình.</p>\n<p style="text-align:justify;"> </p>', '', 'bo-tri-cau-thang-hop-phong-thuy', '', '', '', 0, 2, 0, '', '', 1, 129),
(228, 'Lưu ý khi thiết kế cửa chính và cửa sổ', '', '2012-06-14 07:08:24', 'luu-y-khi-thiet-ke-cua-chinh-va-cua-so.jpg', '<p style="text-align:justify;">Nói tới phong thủy nhà ở có rất nhiều yếu tố đáng phải quan tâm, tuy nhiên trong bài viết này chỉ bàn tới hai khu vực được xem là nơi nạp khí trong thiết kế là cửa chính và cửa sổ.</p>', '', '<p style="text-align:justify;"><strong>Nói tới phong thủy nhà ở có rất nhiều yếu tố đáng phải quan tâm, tuy nhiên trong bài viết này chỉ bàn tới hai khu vực được xem là nơi nạp khí trong thiết kế là cửa chính và cửa sổ.</strong></p>\n<p style="text-align:justify;">Một ngôi nhà đẹp chính là sự kết hợp hài hoà giữa ba yếu tố công năng, thẩm mỹ và phong thuỷ. Để đạt được ba yếu tố này không phải là điều dễ dàng, nếu không đựơc tính toán kỹ sẽ xảy ra trường hợp “được mặt này mất mặt kia” gây tâm trạng bất an hoặc khó khăn trong sinh hoạt gia đình.</p>\n<p style="text-align:justify;"><strong>Cửa chính</strong></p>\n<p style="text-align:justify;">Cửa chính là nơi thu hút ánh sáng và không khí thiên nhiên vào bên trong ngôi nhà do đó, khi thiết kế cửa chính phải lấy sự đối lưu không khí trong nhà làm điểm trọng tâm.</p>\n<p style="text-align:justify;">Kích thước cửa chính của mỗi nhà phụ thuộc vào diện tích, số tầng cao của ngôi nhà đó. Do đó, khi xây mới nhà ở hoặc sửa sang lại nhà cửa, bạn nên nhờ kiến trúc sư tư vấn để có được kích thước phù hợp tỷ lệ hợp lý và cân đối so với kích thước và hình dáng của ngôi nhà. Vì nếu cửa quá lớn thì khí sẽ thoát ra ngoài một cách dễ dàng, trong khi đó cửa chính quá nhỏ sẽ hạn chế các luồng khí được đưa vào nhà.</p>\n<p style="text-align:justify;">Trường hợp nhà cũ đã mắc phải những bất lợi trên thì gia chủ phải tìm cách hoá giải, ví dụ cửa rộng có thể được khắc phục bằng cách treo một chiếc chuông gió bên ngoài cửa, chuông gió sẽ ngăn không cho những điềm xấu hay những nguồn năng lượng tiêu cực vào trong nhà, đồng thời phát tán năng lượng đi vào nhà một cách có hiệu quả. Cửa hẹp nên sửa chữa, mở rộng thêm. Cửa chính quá thấp cũng là điều tối kỵ, theo phong thuỷ đó sẽ là điềm báo gia đình suy bại, là điều nên tránh.<br />Cửa trước và cửa hậu tránh đặt đối diện trực tiếp với nhau bởi như thế khi khí đi vào nhà sẽ lập tức thoát ra theo cửa hậu mà không có sự luân chuyển trong nhà. Trong trường hợp này bạn có thể đặt một chậu cây cao hay thiết kế tấm chắn giữa hai cửa để ngăn không cho khí đi theo đường thẳng thoát ra ngay khi vừa vào nhà.</p>\n<p style="text-align:justify;">Cửa chính cũng không nên hướng thẳng về cây to hoặc khe núi. Cây to ở trước cửa chính sẽ mang khí âm vào trong nhà, gây ảnh hưởng trực tiếp đến sức khỏe mọi người. Cũng nên tránh cửa chính nhìn vào trong ngõ cụt, bởi ngõ cụt thường tàng tụ âm khí. Thêm vào đó, nếu có khe núi đối diện cửa chính sẽ khiến cho người trong nhà một cảm giác bất an, có điều không may đang rình rập.</p>\n<p style="text-align:justify;">Khu vực ngoài của cửa chính phải luôn được giữ gìn vệ sinh sạch sẽ và sáng sủa, tạo cảm giác thoải mái và tiện lợi. Nếu không gian phía trước cửa chính hơi tối, nên có thể thiết kế thêm đèn chiếu sáng.</p>\n<p style="text-align:justify;"><strong>Cửa sổ</strong></p>\n<p style="text-align:justify;">Cửa sổ đối với một công trình kiến trúc không chỉ có tác dụng kết nối con người với môi trường xung quanh mà xét về mặt phong thuỷ chúng còn là nơi dẫn khí và đón vận may vào nhà.</p>\n<p style="text-align:justify;">Cửa sổ cũng có chức năng tương tự cửa chính, tức là nơi hút ánh sáng và không khí tự nhiên vào nhà, là thông đạo giao lưu giữa cuộc sống riêng tư của mọi thành viên trong gia đình với thế giới bên ngoài. Chính vì vậy mỗi công trình nhà ở tuỳ theo hình thái kiến trúc khác nhau (biệt thự, nhà phố, nhà vườn….) và yếu tố cảnh quan xung quanh mà các KTS luôn đề ra những tiêu chí thiết kế cửa sổ riêng phù hợp với công trình và thuận theo phong thuỷ nhà ở. Nếu được thiết kế phù hợp với không gian phong thủy, thì nó sẽ mang lại nhiều điều tốt đẹp cho không gian sống của gia đình.</p>\n<p style="text-align:center;"><img src="/public/userfiles/image/vandongtam/image/136-cua1_4c946.jpg" alt="" width="450" height="312" /></p>\n<p style="text-align:justify;">Đầu cửa sổ phải cao hơn đầu người cao nhất trong nhà. Cưa só phải tương đối rộng. Cửa sổ mành chắn khí lưu chuyển, làm hẹp tầm mắt và những dịp may</p>\n<p style="text-align:justify;">Nhà quá ít cửa sổ thì mang tính hướng nội, khép kín và tách biệt với ngoại cảnh. Ngược lại, nhà nhiều cửa sổ hay mở những mảng kính rộng thì tính hướng ngoại tăng, phù hợp với nơi tập trung đông người như phòng khách. Do đó, phải căn cứ vào nhu cầu, mục đích sử dụng mà quy định số lượng, kích thước của cửa sổ.</p>\n<p style="text-align:justify;">Nhà quá nhiều cửa sổ có thể làm dương tính trong nhà trở nên thái quá vì chúng đầy ắp khí, ngược lại nhà quá ít cửa sổ làm hụt khí và mang tính âm.</p>\n<p style="text-align:justify;">Khi thiết kế cửa sổ cần chú ý 4 điều cơ bản là đảm bảo an toàn (ngăn trẻ không bị ngã, chống trộm...); Không chọn lưới bảo vệ quá dày sẽ gây nên nhiều bất lợi như tính thẩm mỹ kém, ảnh hưởng tới tầm nhìn... cho cửa sổ; Cửa sổ thông thoáng và nhận nhiều ánh sáng; Cửa đảm bảo kín gió khi cần.</p>\n<p style="text-align:justify;"> </p>', '', 'luu-y-khi-thiet-ke-cua-chinh-va-cua-so', '', '', '', 0, 1, 0, '', '', 1, 129);

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
) ENGINE=InnoDB  DEFAULT CHARSET=utf8 AUTO_INCREMENT=131 ;

--
-- Dumping data for table `dos_module_news_cat`
--

INSERT INTO `dos_module_news_cat` (`cat_id`, `cat_parent_id`, `cat_title`, `cat_titleen`, `preview`, `previewen`, `tag`, `tagen`, `description`, `descriptionen`, `pic_full`, `cat_order`, `cat_extra1`, `cat_extra2`, `cat_enable`, `dos_usernames_username`) VALUES
(129, 0, 'Kiến thức Phong thủy', '', '', '', 'kien-thuc-phong-thuy', '', '', '', '', 2, '', '', 1, 'vandongtam'),
(130, 0, 'Tin tức trong ngành', '', '', '', 'tin-tuc-trong-nganh', '', '', '', '', 3, '', '', 1, 'vandongtam');

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
('day_time', 2456206),
('max_count', 1),
('counter', 1),
('yesterday', 1);

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
('''127.0.0.1''', 1349401268);

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
) ENGINE=InnoDB  DEFAULT CHARSET=utf8 AUTO_INCREMENT=2787 ;

--
-- Dumping data for table `dos_module_products`
--

INSERT INTO `dos_module_products` (`record_id`, `title`, `titleen`, `postdate`, `pic_thumb`, `pic_full`, `pic_desc`, `preview`, `previewen`, `content`, `contenten`, `tag`, `tagen`, `description`, `descriptionen`, `hits`, `record_order`, `unit`, `hot`, `specials`, `extra_field1`, `extra_field2`, `extra_field3`, `extra_field4`, `enable`, `dos_module_item_cat_cat_id`) VALUES
(2779, 'Ván Okal', '', '2012-06-14 02:31:57', 'van-okal-thumb.jpg', 'van-okal.jpeg', 'van-okal-desc-1.jpeg|van-okal-desc-2.jpeg', '<p>Mã sản phẩm : 125</p>\n<p>Tên sản phẩm : Ván OKAL</p>\n<p>Giá sản phẩm : CALL</p>\n<p>Số lượt xem:: 8971</p>', '', '<p style="text-align:justify;"><span style="text-decoration:underline;"><strong>OKAL:</strong> </span></p>\n<p style="text-align:justify;"><strong>Okal hay còn gọi là Ván dăm (PB)</strong> là gỗ nhân tạo được sản xuất từ nguyên liệu gỗ rừng trồng (bạch đàn, keo, cao su...), có độ bền cơ lý cao, kích thước bề mặt rộng, phong phú về chủng loại. . Ván dăm được sản xuất bằng quá trình ép dăm gỗ đã trộn keo, tương tự như MDF nhưng gỗ được xay thành dăm, nên chúng có chất lượng kém hơn ván sợi.</p>\n<p style="text-align:justify;">Cốt Ván dăm chủ yếu được phủ nhựa Melamine (MFC) tạo thành nguyên liệu phục vụ trong lĩnh vực nội thất văn phòng.</p>\n<p style="text-align:justify;">Ván dăm thao tác trên máy cũng như bắt đinh ốc đều tốt. Đặc biệt do giá rẻ hơn nguyên liệu gỗ đặc nên ván dăm được sử dụng phổ biến.</p>\n<p style="text-align:justify;">Với bề mặt phẳng, rắn chắc, đồng nhất, bề mặt ván dăm là lựa chọn lí tưởng cho những gia công ứng dụng như phủ veneer, dán keo dưới lực ép cao hay thấp, phủ melamine, phủ giấy, dán vinyl, in trực tiếp, và phủ coating. Các chất nền có giá thành kinh tế và các cách phủ mặt trang trí cung cấp cho khách hàng nhiều lựa chọn và làm cho ván dăm có vị trí cạnh tranh trên thị trường nguyên liệu gỗ.</p>\n<p style="text-align:justify;"><span style="text-decoration:underline;"><em><strong>Ứng dụng:</strong></em></span></p>\n<p style="text-align:justify;">1. Nội thất văn phòng, tủ quầy, mặt hậu nội thất, hộc tủ, ngăn tủ,</p>\n<p style="text-align:justify;">2. Vách ngăn, ván nội thất và xây dựng</p>\n<p style="text-align:justify;">3. Ván sàn (laminated flooring)</p>\n<p style="text-align:justify;">4. Cửa</p>\n<p style="text-align:justify;">5. Thùng loa</p>\n<p style="text-align:justify;">6. Dùng để làm phủ MFC</p>', '', 'van-okal', '', '', '', 0, 7, '', 1, 0, '', '', '', '', 1, 629),
(2780, 'Okal chống ẩm', '', '2012-06-14 02:36:11', 'okal-chong-am-thumb.jpg', 'okal-chong-am.jpeg', 'okal-chong-am-desc-1.jpeg|okal-chong-am-desc-2.jpeg', '<p>Mã sản phẩm : 140</p>\n<p>Tên sản phẩm : Okal chống ẩm</p>\n<p>Giá sản phẩm : CALL</p>', '', '<p style="text-align:justify;"><strong>Okal chống ẩm hay còn gọi là Ván dăm (PB)</strong> là gỗ nhân tạo được sản xuất từ nguyên liệu gỗ rừng trồng (bạch đàn, keo, cao su...), có độ bền cơ lý cao, kích thước bề mặt rộng, phong phú về chủng loại. Mặt ván được dán phủ bằng những loại vật liệu trang trí khác nhau: melamine, veneer (gỗ lạng)...</p>\n<p style="text-align:justify;">Ván Okal chống ẩm chủ yếu sử dụng để trang trí nội thất, sản xuất đồ mộc gia đình, công sở. Ván được sản xuất bằng quá trình ép dăm gỗ đã trộn keo, tương tự như MDF nhưng gỗ được xay thành Okal chống ẩm, nên chúng có chất lượng kém hơn so với MDF.</p>\n<p style="text-align:justify;">Công nghệ dán phủ mặt và cạnh ván thỏa mãn nhiều yêu cầu về hình dạng và kích thước, gồm hai loại sản phẩm ván Okal chống ẩm trơn và MFC. Ván Okal chống ẩm trơn là loại phổ biến trên thị trường, khi sử dụng thường được phủ veneer, sơn, hoặc phủ PU. Với sản phẩm MFC, hai mặt được phủ một lớp melamine nhằm tạo vẻ đẹp,chống ẩm và trầy xước.</p>\n<p style="text-align:justify;">Cốt Ván Okal chống ẩm được chủ yếu được phủ nhựa Melamine (MFC) tạo thành nguyên liệu phục vụ trong lĩnh vực nội thất văn phòng. Những nước sản xuất ván Okal chống ẩm nhiều trên thế giới là Malaysia, Việt Nam, New Zealand, Thái Lan, Australia.</p>\n<p style="text-align:justify;">Nơi sản xuất ván Okal chống ẩm lớn nhất Việt Nam hiện nay là Nhà máy Ván dăm Thái Nguyên, với công suất thiết kế 16.500 m3 sản phẩm/năm, được áp dụng hệ thống quản lý chất lượng ISO 9001-2000, trang bị công nghệ hiện đại, sản phẩm xuất xưởng có độ dày từ 8 đến 32 mm.d</p>\n<p style="text-align:justify;">Ván Okal chống ẩm lỗi xanh V313:</p>\n<p style="text-align:justify;">- Trọng lượng: 700-740kg/m³<br />- Size: 1.220mm x 2.440mm x 16mm/18mm<br />- Size : 1.830mm x 2.440mm x 18mm</p>\n<p style="text-align:justify;"> </p>', '', 'okal-chong-am', '', '', '', 0, 6, '', 1, 0, '', '', '', '', 1, 629),
(2781, 'Ván Ép', '', '2012-06-14 02:43:02', 'van-p-thumb.jpg', 'van-p.jpeg', 'van-p-desc-1.jpeg|van-p-desc-2.jpeg|van-p-desc-3.jpeg', '<p>Mã sản phẩm : 138</p>\n<p>Tên sản phẩm : Ván Ép</p>\n<p>Giá sản phẩm : CALL</p>', '', '<p style="text-align:justify;"><span style="color:#000080;"><strong>Công dụng ván ép:</strong></span></p>\n<p style="text-align:justify;">Ván ép dùng trong trang trí nội thất, đóng tủ,bàn ghế, gác lửng, vách ngăn, trần nhà…(môi trường khô).</p>\n<p style="text-align:justify;">- Tiêu chuẩn kỹ thuật:<br />+ Quy cách: Bề mặt 1220 x 2440 mm, 1000 x 2000 mm; Bề dày 3 - 30 mm.<br />+ Tỷ trọng: 600 - 700 kg/m3<br />+ Độ ẩm: 12 - 16%<br />+ Sử dụng keo UF(ure formaldehyd)<br />+ Lực phá vỡ mặt keo: 15 - 18 kg/cm2<br />+ Kéo dọc thớ: 500 kg/cm2<br />+ Kéo ngang thớ: 300 kg/cm2</p>\n<p style="text-align:justify;"><span style="color:#000080;"><strong>PLYWOOD (VÁN ÉP, GỖ DÁN)</strong></span></p>\n<p style="text-align:justify;">Ván ép (gỗ dán) là sự sáng tạo của ngành gỗ kỹ thuật.Ván này làm từ nhiều lớp gỗ lạng sắp xếp vuông góc liên tục lẫn nhau theo hướng vân gỗ của mỗi lớp. Các lớp này dán với nhau bằng keo như phenol formaldehyde dưới tác dụng của nhiệt và lực ép.</p>\n<p style="text-align:justify;">Tùy theo nhu cầu sử dụng, có thể phân thành nhiều loại ván ép. Ván ép gỗ mềm làm từ loại gỗ như gỗ thông radiata và bạch dương. Ván ép gỗ cứng thường làm từ những lọai gỗ như meranti (còn được gọi là cây dái ngựa Philippine hay cây lauan) hay gỗ bulo (birch).</p>\n<p style="text-align:justify;">Ván ép sử dụng cho đồ ngoại thất thường làm bằng keo phenol formaldehyde hay keo melamin urea formaldehyde, trong khi đó ván ép dùng cho hàng nội thất thường dùng keo có giá thành thấp hơn như keo urea formaldehyde.</p>\n<p style="text-align:justify;">Đặc điểm của ván ép ở chỗ tính bền, độ sáng, độ cứng, tính chịu lực kéo, tính ổn định vật lí chống lại trạng thái vênh, co rút và xoắn.</p>\n<p style="text-align:justify;"><span style="text-decoration:underline;"><strong><em>Các loại ván ép hiện đang có:</em></strong></span></p>\n<p style="text-align:justify;">1. Ván ép thông dụng<br />2. Ván ép cấu trúc (structural plywood)<br />3. Ván ép cốp pha phủ film<br />4. Ván ép phủ lớp veneer gỗ tự nhiên trang trí<br />5. Ván ép chịu nước (BS1088)<br />6. Ván ép sàn container</p>\n<p style="text-align:justify;"><span style="text-decoration:underline;"><em><strong>Các loại ván gỗ đặc biệt khác:</strong></em></span></p>\n<p style="text-align:justify;">1. Lamin board/ multiboard<br />2. Laminated veneer lumber (LVL)<br />3. Blockboard/ lumber core</p>\n<p style="text-align:justify;"><span style="text-decoration:underline;"><em><strong>Các loại nguyên liệu gỗ:</strong></em></span></p>\n<p style="text-align:justify;">1. Meranti (cây dái ngựa Philippine hay cây lauan)<br />2. Keruing<br />3. Kapur<br />4. Gỗ tạp (gồm các loại gỗ cứng, nhẹ)<br />5. Okoume (Gaboon)<br />6. Thông Radiata<br />7. Gỗ bulo (Birch)<br />8. Bạch dương (Poplar)<br />9. Và các loại gỗ khác theo yêu cầu.</p>', '', 'van-ep', '', '', '', 0, 8, '', 0, 0, '', '', '', '', 1, 631),
(2782, 'Ván MFC', '', '2012-06-14 02:47:49', 'van-mfc-thumb.jpg', 'van-mfc.jpeg', 'van-mfc-desc-1.jpeg|van-mfc-desc-2.jpeg|van-mfc-desc-3.jpeg', '<p>Mã sản phẩm : 136</p>\n<p>Tên sản phẩm : Ván MFC</p>\n<p>Giá sản phẩm : CALL</p>', '', '<p style="text-align:justify;"><strong>Ván MFC</strong></p>\n<p style="text-align:justify;">MFC là chữ viết tắt của Melamine Face Chipboard. Có nghĩa là Ván gỗ dăm phủ Melamine.</p>\n<p style="text-align:justify;"><strong>Gỗ | tủ bếp</strong></p>\n<p style="text-align:justify;">Một số loại gỗ rừng trồng chuyên để sản xuất loại gỗ MFC này. Các cây này được thu hoạch ngắn ngày, không cần cây to. Người ta băm nhỏ cây gỗ này thành các dăm gỗ và cũng kết hợp với keo, ép tạo độ dày. Hoàn toàn không phải sử dụng gỗ tạp, phế phẩm như mọi người vẫn nghĩ. Bề mặt hoàn thiện được phủ lớp nhựa Melamine in vân gỗ tạọ vẻ đẹp sau đó tráng bề mặt hoàn thiện bằng Laminnate bảo vệ để chống ẩm và trầy xước.</p>\n<p style="text-align:justify;">Gỗ MFC có ứng dụng vô cùng rộng rãi đặc biệt là trong lĩnh vực nội thất văn phòng. Hiện 80 % đồ gỗ nội thất gia đình và văn phòng dùng gỗ MFC để làm vì giá cả phù hợp, màu sắc lại vô cùng đa dạng và phong phú. Đối với nội thất văn phòng và nhà ở thì chỉ cần sử dụng gỗ MFC loại tiêu chuẩn, còn đối với những không gian, khu vực ẩm ướt như Toilet, Tủ bếp, vách Toilet, khu vệ sinh thì nên sử dụng loại ván chống ẩm V313.</p>\n<p style="text-align:justify;">Trên thế giới, đặc biệt là ở các nước phát triển, người ta khuyến khích sử dụng gỗ công nghiệp (trong đó có MFC) vì tính thân thiện với môi trường của nó. Do được sản xuất từ gỗ rừng trồng, có thể tái sản xuất, không hại đến những cánh rừng nguyên sinh vốn là lá phổi xanh điều hòa khí hậu trái đất. Các loại MFC chúng tôi sử dụng đều được sản xuất tại các nước tiên tiến với dây chuyền hiện đại, đáp ứng yêu cầu cao nhất về bảo vệ môi trường và sức khỏe người sử dụng. Các loại gỗ trong sản phẩm đều không sử dụng keo chứa Formandehit. Với các sản phẩm sử dụng Formandehit trên thị trường, khách hàng có thể dễ dàng nhận thấy khi sử dụng sẽ bị cay mắt và cay mũi . Đây là do độc tố trong keo có hại cho sức khỏe.</p>\n<p style="text-align:justify;"><strong>Xuất xứ.</strong></p>\n<p style="text-align:justify;">MFC sử dụng đều là các loại có xuất xứ từ Malaysia (hãng MIECO) và Đức (hãng EGGER). Các loại ván MFC có đặc điểm là Cứng, nặng, màu sắc họa tiết sắc nét tươi tắn, chịu ẩm tốt, chống trầy, chống cháy. Các loại MFC của Malaysia và Đức chỉ có khổ lớn (1.830 mm x 2. 440 mm) để phân biệt với các loại MFC Trung Quốc và MFC Việt Nam sản xuất có chất lượng kém hơn ( Khổ gỗ nhỏ 1.220mm x 2.440mm).</p>', '', 'van-mfc', '', '', '', 0, 5, '', 1, 0, '', '', '', '', 1, 632),
(2783, 'MDF chống ẩm', '', '2012-06-14 05:59:39', 'mdf-chong-am-thumb.jpg', 'mdf-chong-am.jpeg', 'mdf-chong-am-desc-1.jpeg|mdf-chong-am-desc-2.jpeg|mdf-chong-am-desc-1.jpg|mdf-chong-am-desc-2.jpg', '<p>Mã sản phẩm : 139</p>\n<p>Tên sản phẩm : MDF chống ẩm</p>\n<p>Giá sản phẩm : CALL</p>', '', '<p style="text-align:justify;"><span style="text-decoration:underline;"><strong>I. MDF chống ẩm</strong></span></p>\n<p style="text-align:justify;">Gỗ nội thất, gỗ nguyên liệu bao gồm ván chống ẩm HMR hay còn gọi MDF chống ẩm, ván HDF:</p>\n<p style="text-align:justify;">Sản phẩm ván chống ẩm HMR (màu xanh lá) là sản phẩm gỗ được sản xuất từ nguyên liệu gỗ rừng trồng taị các nước Thái Lan, Malaysia đây là những quốc gia hàng đầu về sản phẩm ván gỗ nhân tạo. Với đặc tính không bị mốc trong điều kiện không khí ẩm ướt nên sản phẩm ván chống ẩm HMR, MDF chống ẩm của công ty chúng tôi đáp ứng được những tiêu chuẩn khắt khe nhất của những sản phẩm và những hạng mục cao cấp yêu cầu kĩ thuật cùng với tính thẩm mỹ cao trong ngành trang trí nội, ngoại thất và xây dựng.</p>\n<p style="text-align:justify;">Về công dụng chống ẩm HMR hay còn gọi MDF chống ẩm:</p>\n<p style="text-align:justify;">Với tính năng ưu việt là khả năng chống ẩm cùng với bề mặt nhẵn phẳng tuyệt đối, sản phẩm ván chống ẩm được sử dụng sản xuất các sản phẩm nội ngoại thất cao cấp như: giường, tủ, bàn ghế, trang trí nội thất phòng hát, phòng khách, các vách ngăn của phòng, vách ngăn WC …sản xuất các sản phẩm trong môi trường ẩm ướt.</p>\n<p style="text-align:justify;">Thử nghiệm thực tế: Chúng tôi tiến hành thử nghiệm khả năng không thấm nước, không giãn nở của ván MDF chống ẩm bằng cách cho ván MDF chống ẩm vào môi trường có độ ẩm trên 90% trong vòng 72h. Kiểm tra độ giãn nở từ 3% đến 5%. Khi vớt tấm ván đưa về điều kiện bình thường thì ván MDF chống ẩm trở về đúng hình dạng kích thước ban đầu không cong vênh, giãn nở so trước khi thử nghiệm.</p>\n<p style="text-align:justify;">Do nguyên liệu gỗ được ưa chuộng nhưng mắc và khan nên các nhà sản xuất đã tạo ra một chất liệu mới - HDF (high density fiber). ván MDF chống ẩm chuyên dụng làm cửa là một loại bột gỗ đã qua xử lý và nén, ép với keo đặc biệt dưới áp lực cao để tạo thành tấm.</p>\n<p style="text-align:justify;">Đặc biệt, bề mặt ván MDF chống ẩm tạo được thớ và vân gần như gỗ thật. Ván nguyên thuỷ màu vàng như giấy carton và trong quá trình làm cửa, khâu sau cùng sơn màu lên tuỳ thích. Điều này cũng là lợi thế trong trang trí nội thất - chọn được màu cửa tương hợp với không gian nội thất, hoặc có thể thay đổi tông sắc sau một thời gian sử dụng</p>\n<p style="text-align:justify;">Khung xương bên trong cánh cửa làm bằng gỗ cứng hay gỗ thông được cắt ngắn (khoảng 34 - 50mm) ghép lại và qua tẩm sấy theo đúng chuẩn (độ ẩm chỉ 7 - 12%) để hạn chế tối đa sự co ngót, biến dạng của vật liệu. Ngoài khung xương áp hai tấm MDF chống ẩm.</p>\n<p style="text-align:justify;">Từ đó, ưu điểm loại cửa gỗ này là không bị cong vênh, không bị hiện tượng hở các mối ghép dưới tác động thời tiết và có khả năng chống mối mọt do là gỗ công nghiệp. Bên trong cửa có nhiều khoảng trống nên có phần cách âm, cách nhiệt. Cánh cửa nhẹ, tránh được tình trạng xệ bản lề và giảm tải trọng công trình. Do tấm MDF chống ẩm nhân tạo nên bề mặt có thể “dập” theo khuôn với nhiều kiểu panô và hoạ tiết trên cửa - trông như chế tác cửa bằng gỗ thật. Đặc điểm nữa là giá thành thấp, chỉ vào khoảng 70% so với cửa gỗ tự nhiên.</p>', '', 'mdf-chong-am', '', '', '', 0, 4, '', 1, 0, '', '', '', '', 1, 633),
(2784, 'Ván MDF', '', '2012-06-14 06:23:01', 'van-mdf-thumb.jpg', 'van-mdf.jpeg', 'van-mdf-desc-1.jpeg|van-mdf-desc-2.jpeg|van-mdf-desc-3.jpeg|van-mdf-desc-4.jpeg', '<p>Mã sản phẩm : 124</p>\n<p>Tên sản phẩm : Ván MDF</p>\n<p>Giá sản phẩm : CALL</p>', '', '<p style="text-align:justify;">MDF MDF là viết tắt của từ MEDIUM DENSITY FIBERBOARD: Các loại gỗ vụn, nhánh cây cho vào máy đập nhỏ ra, sau đó dược đưa vào máy nghiền nát ra lúc này gỗ chỉ là các sợi gỗ nhỏ cellulo.</p>\n<p style="text-align:justify;">Các sợi gỗ này được đưa qua bồn rữa trôi các tạp chất, khoáng chất nhựa,.. Sau đó đưa vào máy trộn keo + bột sợi gỗ (cellulo) + chất kết dính + parafin wax + chất bảo vệ gỗ, bột độn vô cơ.</p>\n<p style="text-align:justify;">Ưu điểm ván MDF : Độ bám sơn ,vecni cao - Có thể sơn nhiều màu, tạo sự đa dạng về màu sắc, dễ tạo dáng (cong) cho các sản phẩm cầu kỳ, uyển chuyển đa dạng phong phú. - Dễ gia công - Cách âm, cách nhiệt tốt</p>\n<p style="text-align:justify;">Khuyết điểm ván MDF : Màu sơn dễ bị trấy xước - Chịu nước kém Gỗ MDF thường dùng trong các sản phẩm cần sơn màu sắc nhưng phòng trẻ em, showroom.</p>\n<p style="text-align:justify;">Môt số hình ảnh của ván MDF :</p>', '', 'van-mdf', '', '', '', 0, 3, '', 1, 0, '', '', '', '', 1, 633),
(2785, 'Phủ giấy PU', '', '2012-06-14 06:39:10', 'phu-giay-pu-thumb.jpg', 'phu-giay-pu.jpeg', 'phu-giay-pu-desc-1.jpeg|phu-giay-pu-desc-2.jpeg|phu-giay-pu-desc-3.jpeg', '<p>Mã sản phẩm : 137</p>\n<p>Tên sản phẩm : Phủ giấy PU</p>\n<p>Giá sản phẩm : CALL</p>', '', '<p style="text-align:justify;"><strong>GIA CÔNG PHỦ GIẤY</strong><br />Được trang bị dây chuyền máy móc hiện đại nhất nhập khẩu từ Châu Âu công ty An Đại Phát có thể đem đến cho quý khách những dịch vụ gia công tốt nhất, hoàn hảo nhất và đa dạng nhất đáp ứng đầy đủ nhu cầu của quý khách.<br />Phủ giấy PU/Amino trên nền MDF, gỗ dăm<br />- Size: 1.220mm x 2.440mm<br />- Chúng tôi có sẵn hàng trăm màu tại kho<br />- Dịch vụ bắt màu giấy PUPhủ Melamine trên nền gỗ dăm, gỗ MDF từ 4,5mm đến 60mm (1 mặt, 2 mặt)<br />- Size: 1.220mm x 2.440mmPhủ Melamine trên nền gỗ dăm hay MDF 1 mặt, mặt sau dán tấm Laminate HPL, tấm PVC<br />- Size: 1.220mm x 2.440mGia công ép nóng dán tấm Laminate trên nền gỗ dăm, MDF, gỗ Blockboard, gỗ Plywood hay gỗ ghép 1 mặt hoặc 2 mặt<br />( được dán trên máy ép nóng 4 tầng ép của Nhật với lực ép 6~7kg/cm2, sử dụng keo sữa PVAC của hãng Jowat Đức)Gia công dán tấm PVC từ 0,14mm đến 0,38mm trên tất cả các loại bề mặt gỗ<br />- Size: 1.220mm x 2.440mmNhận uốn cong Laminate, mặt Top bếp, mặt Top bàn, mặt Top quầy theo đủ các độ dày, đủ các loại hình chi tiết như 1 cạnh tròn, 2 cạnh tròn, 1 cạnh tròn 1 cạnh vát, 1 cạnh tròn 1 cạnh vuông hay 2 cạnh vuông R = 10, chiều dài tối đa đến 3,8m, chiều rộng tối thiểu 20cmNhận gia công phủ Melamine, Bề Mặt Bóng trên nền MDF (có sẵn 80 màu)<br />- Size: 1.220mm x 2.440mmGia công dán 1 mặt melamine màu trắng hoặc màu vân gỗ trên nền ván đã dán sẵn veneer 1 mặt. (công ty An Đại Phát không dán veneer)<br />- Size: 1.220mm x 2.440mm</p>\n<p style="text-align:justify;"> </p>', '', 'phu-giay-pu', '', '', '', 0, 1, '', 1, 0, '', '', '', '', 1, 634),
(2786, 'Ván VENEER', '', '2012-06-14 06:45:55', 'van-veneer-thumb.jpg', 'van-veneer.jpeg', 'van-veneer-desc-2.jpeg|van-veneer-desc-3.jpg|van-veneer-desc-4.jpg|van-veneer-desc-5.jpg|van-veneer-desc-6.jpg|van-veneer-desc-7.jpg', '<p>Mã sản phẩm : 123</p>\n<p>Tên sản phẩm : Ván VENEER</p>\n<p>Giá sản phẩm : CALL</p>', '', '<p>VENEER VENEER là gỗ tự nhiên sau khi khai thác-&gt; được cắt (bóc ly tâm) thành những lát dầy từ 0.3mm &gt; 0.6mm. Rộng tuỳ theo loại gỗ trung bình khoản 180mm, dài khoản 240mm, được gọi là veneer được phơi và sấy khô.</p>\n<p>Cách tạo ván Veneer Dùng một lớp ván thường là MDF, ván ép, hoặc okal dầy 3mm, tráng keo trên bề mặt lớp nền. Nối (may) từng tấm veneer lại theo quy cách (quy cách chuẩn 1200 x 2400mm) bằng keo-&gt; dán tấm veneer lên lớp nền (MDF, Ván ép) đã phủ keo.</p>\n<p>Ép tấm này lại bằng máy (ép nguội hoặc ép nóng) đến khi dính và phẳng mặt. Dùng máy chà nhám tạo cho bề mặt veneer láng đẹp Ưu điểm: Dễ thi công Chi phí thấp so với gỗ tự nhiên. Có thể tạo những đường cong theo như ý của nhà sản xuất Công dụng:</p>\n<p>Ván Veneer các loại như Veneer Sồi, Veneer Dổi, Veneer Xoan Đào, Veneer Còng được sử dụng để sản xuất các sản phẩm nội thất và cửa gỗ….</p>', '', 'van-veneer', '', '', '', 0, 2, '', 1, 0, '', '', '', '', 1, 635);

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
) ENGINE=InnoDB  DEFAULT CHARSET=utf8 AUTO_INCREMENT=2143 ;

--
-- Dumping data for table `dos_module_products_cat`
--

INSERT INTO `dos_module_products_cat` (`cat_id`, `cat_parent_id`, `cat_title`, `cat_titleen`, `preview`, `previewen`, `tag`, `tagen`, `description`, `descriptionen`, `pic_full`, `pic_desc`, `cat_order`, `cat_extra1`, `cat_extra2`, `cat_enable`, `dos_usernames_username`) VALUES
(629, 0, 'Ván Okal', '', '', '', 'van-okal', '', '', '', 'van-okal.jpg', '', 5, '', '', 1, 'vandongtam'),
(631, 0, 'Ván Ép', '', '', '', 'van-ep', '', '', '', 'van-p.jpg', '', 7, '', '', 1, 'vandongtam'),
(632, 0, 'Ván MFC', '', '', '', 'van-mfc', '', '', '', 'van-mfc.jpg', '', 4, '', '', 1, 'vandongtam'),
(633, 0, 'Ván MDF', '', '', '', 'van-mdf', '', '', '', 'van-mdf.jpg', '', 6, '', '', 1, 'vandongtam'),
(634, 0, 'Phủ giấy - Phủ Melamine', '', '', '', 'phu-giay-phu-melamine', '', 'Phủ giấy - Phủ Melamine', '', 'phu-giay-pu.jpg', '', 6, '', '', 1, 'vandongtam'),
(635, 0, 'Ván VENEER', '', '', '', 'van-veneer', '', 'Ván VENEER', '', 'van-veneer.jpg', '', 6, '', '', 1, 'vandongtam'),
(2142, 0, 'Gỗ ghép', '', '', '', 'go-ghep', '', '', '', 'go-ghep.jpg', '', 6, '', '', 1, 'vandongtam');

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
) ENGINE=InnoDB  DEFAULT CHARSET=utf8 AUTO_INCREMENT=127 ;

--
-- Dumping data for table `dos_module_services`
--

INSERT INTO `dos_module_services` (`record_id`, `title`, `titleen`, `preview`, `previewen`, `content`, `contenten`, `pic_full`, `hit`, `created`, `record_order`, `hot`, `extra_field1`, `extra_field2`, `tag`, `tagen`, `description`, `descriptionen`, `activated`, `dos_usernames_username`) VALUES
(126, 'Công trình đã thi công', '', '', '', '<p><strong>Danh sách công trình đã thi công:</strong></p>\n<p>Đang cập nhập ....</p>', '', '', 61, '2012-06-14 06:53:28', 1, 0, '', '', 'cong-trinh-da-thi-cong', '', '', '', 1, 'vandongtam');

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
) ENGINE=InnoDB  DEFAULT CHARSET=utf8 AUTO_INCREMENT=338 ;

--
-- Dumping data for table `dos_module_supports`
--

INSERT INTO `dos_module_supports` (`support_id`, `support_name`, `support_nameen`, `support_phone`, `support_value`, `support_order`, `support_type`, `dos_usernames_username`) VALUES
(336, 'Hỗ trợ Khách hàng 1', '', '', 'zig1357', 1, 'yahoo', 'vandongtam'),
(337, 'Hỗ trợ Khách hàng 2', '', '', 'hoangkhanhrain', 1, 'yahoo', 'vandongtam');

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
('keywords', 'DNTN Ván Đồng Tâm chuyên kinh doanh:Ván Okal, Ván Ép, Ván MDF phủ FORMICA, Dán Giấy ,Dán Veneer, Ván dùng để làm lịch.Hàng Chất Lượng, Giá cả Phải chăng,, Giao hàng tận nơi, Giao hàng 24/24', 'vandongtam'),
('description', 'DNTN Ván Đồng Tâm chuyên kinh doanh:Ván Okal, Ván Ép, Ván MDF phủ FORMICA, Dán Giấy ,Dán Veneer, Ván dùng để làm lịch.Hàng Chất Lượng, Giá cả Phải chăng,, Giao hàng tận nơi, Giao hàng 24/24', 'vandongtam'),
('title', 'DNTN Ván Đồng Tâm - Vandongnam.com', 'vandongtam');

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
('270412', 'Mẫu cơ khí: 270412', '2012-04-27 05:27:56', 'Chuyên bán các loại máy móc, thiết bị cơ khí, cửa sắt...');

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
('270412', 'co-khi-may-moc-thiet-bi');

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
('270412', 'about', 'advs_left'),
('270412', 'about', 'advs_right'),
('270412', 'about', 'list_supports'),
('270412', 'about', 'menu_about'),
('270412', 'about', 'products_hot'),
('270412', 'contact', 'advs_left'),
('270412', 'contact', 'advs_right'),
('270412', 'contact', 'list_supports'),
('270412', 'contact', 'menu_products'),
('270412', 'contact', 'products_hot'),
('270412', 'default', 'about_home'),
('270412', 'default', 'advs_left'),
('270412', 'default', 'advs_right'),
('270412', 'default', 'list_supports'),
('270412', 'default', 'menu_products'),
('270412', 'default', 'products_hot'),
('270412', 'default', 'products_new'),
('270412', 'default', 'video_hot'),
('270412', 'news', 'advs_left'),
('270412', 'news', 'advs_right'),
('270412', 'news', 'list_supports'),
('270412', 'news', 'menu_news'),
('270412', 'news', 'news_hot'),
('270412', 'news', 'products_hot'),
('270412', 'products', 'advs_left'),
('270412', 'products', 'advs_right'),
('270412', 'products', 'list_supports'),
('270412', 'products', 'menu_products'),
('270412', 'products', 'news_hot'),
('270412', 'products', 'products_hot'),
('270412', 'services', 'advs_left'),
('270412', 'services', 'advs_right'),
('270412', 'services', 'list_supports'),
('270412', 'services', 'menu_services'),
('270412', 'services', 'products_hot'),
('270412', 'video', 'advs_left'),
('270412', 'video', 'advs_right'),
('270412', 'video', 'list_supports'),
('270412', 'video', 'menu_video'),
('270412', 'video', 'products_hot'),
('270412', 'video', 'video_hot');

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
('vandongtam', 'maioanh@thuonghoi.com', 'e10adc3949ba59abbe56e057f20f883e', '2012-06-14 01:21:17', '', '0987522003', '', 'user', 'vi', '', '2012-12-31 16:00:00', 1, '20122012', '', 1, '270412', 19, 'noi-that-ngoai-that');

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
('address1', 'Điện thoại: (84-61) 3983590  - Fax: (84-61) 3985445', '', 'vandongtam'),
('address2', 'Địa chỉ: 469 Tổ 17, Ấp Thái Hòa, xã Hố Nai 3, Huyện Trảng Bom, Đồng Nai', '', 'vandongtam'),
('company_name', 'DNTN VÁN ĐỒNG TÂM', '', 'vandongtam'),
('company_name_footer', 'DNTN VÁN ĐỒNG TÂM', '', 'vandongtam'),
('company_phone', 'Hotline: 0949 747 039', '', 'vandongtam'),
('copyright', 'Email: vandongtam@yahoo.com - Website: www.vandongtam.com', '', 'vandongtam'),
('services', 'Dự án - công trình', '', 'vandongtam');

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
