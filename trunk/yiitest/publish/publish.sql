-- phpMyAdmin SQL Dump
-- version 3.4.5
-- http://www.phpmyadmin.net
--
-- Host: localhost
-- Generation Time: Aug 30, 2012 at 04:26 AM
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
('advs_left_height', 190, '', '220312'),
('advs_left_width', 190, '', '220312'),
('advs_right_height', 190, '', '220312'),
('advs_right_width', 190, '', '220312'),
('banner_height', 332, '', '220312'),
('banner_width', 950, '', '220312'),
('logo_height', 79, '', '220312'),
('logo_width', 259, '', '220312'),
('max_image_height', 667, '', '220312'),
('max_image_width', 500, '', '220312'),
('news_cat_height', 100, '', '220312'),
('news_cat_width', 145, '', '220312'),
('news_height_thumb', 100, '', '220312'),
('news_num_paging_cat', 10, '', '220312'),
('news_num_paging_hot', 6, '', '220312'),
('news_num_paging_index', 10, '', '220312'),
('news_num_paging_new', 6, '', '220312'),
('news_width_thumb', 145, '', '220312'),
('products_cat_height', 150, '', '220312'),
('products_cat_width', 200, '', '220312'),
('products_height', 400, '', '220312'),
('products_height_thumb', 135, '', '220312'),
('products_num_paging_cat', 8, '', '220312'),
('products_num_paging_new', 4, '', '220312'),
('products_num_paging_other', 2, '', '220312'),
('products_width', 500, '', '220312'),
('products_width_thumb', 200, '', '220312'),
('services_height', 90, '', '220312'),
('services_width', 145, '', '220312'),
('video_height_thumb', 150, '', '220312'),
('video_num_paging_cat', 2, '', '220312'),
('video_num_paging_index', 2, '', '220312'),
('video_width_thumb', 200, '', '220312');

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
('220312', 'default', 'prettyPhoto.css', 'css'),
('220312', 'default', 'jquery.prettyPhoto.js', 'javascript'),
('220312', 'video', 'prettyPhoto.css', 'css'),
('220312', 'video', 'jquery.prettyPhoto.js', 'javascript');

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
('about', 'lienngocphat'),
('advs', 'lienngocphat'),
('banner', 'lienngocphat'),
('contact', 'lienngocphat'),
('news', 'lienngocphat'),
('products', 'lienngocphat'),
('services', 'lienngocphat'),
('supports', 'lienngocphat'),
('video', 'lienngocphat');

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
) ENGINE=InnoDB  DEFAULT CHARSET=utf8 AUTO_INCREMENT=410 ;

--
-- Dumping data for table `dos_module_abouts`
--

INSERT INTO `dos_module_abouts` (`record_id`, `title`, `titleen`, `content`, `contenten`, `hit`, `created`, `record_order`, `hot`, `extra_field1`, `extra_field2`, `tag`, `tagen`, `description`, `descriptionen`, `activated`, `dos_usernames_username`) VALUES
(408, 'Giới thiệu', '', '<p style="text-align:justify;">Cty TNHH Liên Ngọc Phát xin trân trọng kính chào!</p>\n<p style="text-align:justify;">Sau nhiều năm kinh doanh phân phối mặt hàng mỹ phẩm trên thị trường cả nước. Vào năm 2010, Liên Ngọc Phát thêm mặt hàng khăn cao cấp Mollis vào các danh mục kinh doanh của mình và Khăn cao cấp Mollis Mai Hân ra đời từ ngày ấy.</p>\n<p style="text-align:justify;">Cty TNHH Liên Ngọc Phát là nhà phân phối trực tuyến các sản phẩm khăn Mollis, khăn khách sạn, khăn Spa, áo choàng tắm, khăn tắm, khăn quà tặng, khăn 100% Cotton, khăn du lịch, khăn Mollis Extra ... được sản xuất từ các hãng nối tiếng trong nước và nhập khẩu từ nước ngoài.</p>\n<p style="text-align:justify;">Đến với Liên Ngọc Phát bạn có thể lựa chọn được những sản phẩm khăn cao cấp tốt nhất cho khách sạn, Spa hoặc cho mục đích sử dụng khác của bạn.</p>\n<p style="text-align:justify;">Khách hàng là giá trị cơ bản của bất kỳ doanh nghiệp nào, là lý do duy nhất để doanh nghiệp tồn tại và phát triển. Cty TNHH Liên Ngọc Phát luôn lắng nghe, phân tích và thấu hiểu nhu cầu của từng khách hàng và áp dụng kinh nghiệm, kỹ năng tư duy của mình để giải quyết tối ưu những nhu cầu đó.</p>', '', 2, '2012-08-29 07:05:08', 2, 0, '', '', 'gioi-thieu', '', '', '', 1, 'lienngocphat'),
(409, 'Chào mừng bạn ghé thăm website của chúng tôi!', '', '<p style="text-align:justify;">Cty TNHH Liên Ngọc Phát là nhà phân phối trực tuyến các sản phẩm khăn Mollis, khăn khách sạn, khăn Spa, áo choàng tắm, khăn tắm, khăn quà tặng, khăn 100% Cotton, khăn du lịch, khăn Mollis Extra ... được sản xuất từ các hãng nối tiếng trong nước và nhập khẩu từ nước ngoài.</p>\n<p style="text-align:justify;">Đến với Liên Ngọc Phát bạn có thể lựa chọn được những sản phẩm khăn cao cấp tốt nhất cho khách sạn, Spa hoặc cho mục đích sử dụng khác của bạn.</p>', '', 27, '2012-08-29 07:06:17', 1, 1, '', '', 'chao-mung-ban-ghe-tham-website-cua-chung-toi', '', '', '', 1, 'lienngocphat');

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
) ENGINE=InnoDB  DEFAULT CHARSET=utf8 AUTO_INCREMENT=639 ;

--
-- Dumping data for table `dos_module_advs`
--

INSERT INTO `dos_module_advs` (`record_id`, `title`, `titleen`, `pic_thumb`, `url`, `create_date`, `start_date`, `end_date`, `hits`, `record_order`, `position`, `type`, `enable`, `dos_usernames_username`) VALUES
(636, 'Quảng cáo', '', 'quang-cao.gif', 'http://dos.vn', '2012-08-29 07:47:20', '2012-08-28 16:00:00', '2012-09-29 16:00:00', 0, 1, 'left', '_bank', 1, 'lienngocphat'),
(637, 'Quảng cáo 1', '', 'quang-cao-1.jpeg', 'http://dos.vn', '2012-08-29 07:50:00', '2012-08-28 16:00:00', '2012-09-29 16:00:00', 0, 3, 'right', '_bank', 1, 'lienngocphat'),
(638, 'Quảng cáo 2', '', 'quang-cao-2.jpg', 'http://dos.vn', '2012-08-29 07:50:59', '2012-08-28 16:00:00', '2012-09-29 16:00:00', 0, 2, 'right', '_bank', 1, 'lienngocphat');

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
) ENGINE=InnoDB  DEFAULT CHARSET=utf8 AUTO_INCREMENT=2882 ;

--
-- Dumping data for table `dos_module_banners`
--

INSERT INTO `dos_module_banners` (`banner_id`, `banner_date`, `banner_name`, `banner_url`, `banner_link`, `banner_order`, `banner_type`, `position`, `enable`, `dos_usernames_username`) VALUES
(2872, '2012-08-28 08:26:56', 'Banner', 'banner.jpg', '', 1, 'banners', 'default', 1, 'lienngocphat'),
(2873, '2012-08-28 08:27:13', 'Banner 1', 'banner-1.jpg', '', 2, 'banners', 'about', 1, 'lienngocphat'),
(2874, '2012-08-28 08:27:29', 'Banner 2', 'banner-2.jpg', '', 3, 'banners', 'contact', 1, 'lienngocphat'),
(2875, '2012-08-28 08:27:46', 'Banner 3', 'banner-3.jpg', '', 4, 'banners', 'news', 1, 'lienngocphat'),
(2876, '2012-08-28 08:28:03', 'Banner 4', 'banner-4.jpg', '', 5, 'banners', 'products', 1, 'lienngocphat'),
(2877, '2012-08-28 08:28:25', 'Banner 5', 'banner-5.jpg', '', 6, 'banners', 'services', 1, 'lienngocphat'),
(2878, '2012-08-28 08:28:41', 'Banner 6', 'banner-6.jpg', '', 7, 'banners', 'video', 1, 'lienngocphat'),
(2879, '2012-08-28 08:29:34', 'Banner 8', 'banner-8.jpg', '', 8, 'banners', 'default', 1, 'lienngocphat'),
(2880, '2012-08-28 08:29:50', 'Banner 7', 'banner-7.jpg', '', 9, 'banners', 'default', 1, 'lienngocphat'),
(2881, '2012-08-29 01:21:55', 'Logo-lienngocphat', 'logo-lienngocphat.png', '', 10, 'logo', 'default', 1, 'lienngocphat');

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
('Trang chủ', '', 'default', '', 1, '', '', '', '', 'lienngocphat'),
('Giới thiệu', '', 'about', '', 2, '', '', '', '', 'lienngocphat'),
('Sản phẩm', '', 'products', '', 3, '', '', '', '', 'lienngocphat'),
('Dịch vụ', '', 'services', '', 4, '', '', '', '', 'lienngocphat'),
('Tin tức & sự kiện', '', 'news', '', 5, '', '', '', '', 'lienngocphat'),
('Video', '', 'video', '', 6, '', '', '', '', 'lienngocphat'),
('Liên hệ', '', 'contact', '', 7, '', '', '', '', 'lienngocphat');

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
) ENGINE=InnoDB  DEFAULT CHARSET=utf8 AUTO_INCREMENT=464 ;

--
-- Dumping data for table `dos_module_news`
--

INSERT INTO `dos_module_news` (`record_id`, `title`, `titleen`, `postdate`, `pic_thumb`, `preview`, `previewen`, `content`, `contenten`, `tag`, `tagen`, `description`, `descriptionen`, `hits`, `record_order`, `hot`, `extra_field1`, `extra_field2`, `enable`, `dos_module_item_cat_cat_id`) VALUES
(461, 'Khăn cao cấp Mollis và cuộc sống', '', '2012-08-29 07:15:32', 'khan-cao-cap-mollis-va-cuoc-song.jpg', '<p style="text-align:justify;">Dòng sản phẩm cao cấp Mollis Extra bao gồm các loại: Khăn sử dụng chất liệu đặc biệt; Khăn 100% cotton xơ dài, khăn du lịch, thể thao, quà tặng, khăn khách sạn, khăn theo mùa, áo choàng, thảm và các sản phẩm khác</p>', '', '<p style="text-align:justify;">Dòng sản phẩm cao cấp Mollis Extra bao gồm các loại: Khăn sử dụng chất liệu đặc biệt; Khăn 100% cotton xơ dài, khăn du lịch, thể thao, quà tặng, khăn khách sạn, khăn theo mùa, áo choàng, thảm và các sản phẩm khác. Mollis Extra khác với dòng sản phẩm Mollis cơ bản bởi sử dụng những nguyên liệu đặc biệt như: Sợi cotton xơ dài, sợi Modal, sợi Bamboo, Soybean, sợi Egypt, Cocona (sợi hoạt tính),... có khả năng bảo vệ sức khỏe, ngăn tia cực tím, chống khuẩn; đặc biệt sau quá trình sử dụng sẽtự phân hủy trong môi trường thiên nhiên, tốt cho cả tự nhiên và con người. Bên cạnh đó, sản phẩm Mollis có mẫu mã, kiểu dáng hiện đại, hoa văn trang trí và màu sắc đạt tiêu chuẩn Châu Âu; sản phẩm có độ thấm hút tốt, mềm mịn thích hợp với mọi loại da, độ bóng mượt cao, giữ màu<br />tốt và các tính năng ưu việt khác.</p>\n<p style="text-align:justify;"><strong>Khăn sợi tre BAMBO</strong></p>\n<p style="text-align:justify;">Khăn sản xuất từ tre (Bamboo)Khăn bông cao cấp với nguyên liệu từ cây tre thiên nhiên phương pháp sản xuất và ưu điểm : tre dùng làm nguyên liệu được chăm sóc và sau sáu năm mới được khai thác, kết hợp với công nghệ tẩy trắng bằng oxy ở nhiệt độ cao, xơ có cấu trúc tổ ong nên có nhiều ưu điểm vượt trội như: có tính chống khuẩn tốt ngăn ngừa tia hồng ngoại, bền màu cao, không bị khô cứng sau nhiều lần giặt, tính hút ẩm và thoáng khí tốt.</p>\n<p><img style="margin-left:auto;margin-right:auto;" src="/public/userfiles/image/lienngocphat/image/bambo1.jpg" alt="" width="250" height="188" /></p>\n<p style="text-align:justify;"><strong>Khăn sợi Cotton sơ dài</strong></p>\n<p style="text-align:justify;">Được sản xuất trên dây chuyền công nghệ hiện đại của Châu Âu, Mỹ với mẫu mã đa dạng, màu sắc tinh tế, sang trọng, mềm mại, thấm nước tốt, độ bềnmàu cao. Không mẫn cảm với da, tạo cảm giác thoải mái khi sử dụng.</p>\n<p style="text-align:center;"><img src="/public/userfiles/image/lienngocphat/image/bambo2.jpg" alt="" width="250" height="188" /><img style="float:right;" src="/public/userfiles/image/lienngocphat/image/bambo3.jpg" alt="" width="250" height="188" /><img src="/public/userfiles/image/lienngocphat/image/bambo4.jpg" alt="" width="250" height="188" /></p>\n<p style="text-align:justify;"><strong>Khăn sợi sữa Soybean</strong></p>\n<p style="text-align:justify;">Chất liệu:sữa sau quá trình sàng lọc loại bỏ chất béo bằng quy trình công nghệ cao để lấy được xơ protein và tiếp theo đó là công nghệ kéo ướt thành sợi sữa.<br />Điểm nổi bật: sự hiện diện của xơ<br />protein sữa làm cho màu sắc khăn thêm phần sinh động, tạo độ bền cao, mềm mại, thoáng khí, hút ẩm tốt. Bên cạnh đó, 17 loại acid amin trong sợi sữa còn có tác dụng chống khuẩn gây bệnh, giúp làn da thêm mịn màng, khỏe mạnh.</p>\n<p style="text-align:center;"><img src="/public/userfiles/image/lienngocphat/image/bambo5.jpg" alt="" width="250" height="188" /></p>\n<p style="text-align:justify;"><strong>Khăn sợi MODAL</strong></p>\n<p style="text-align:justify;">Khăn bông cao cấp với nguyên liệu sợi Modal (cenlluose) được sản xuất từ gỗ sồi thiên nhiên. Với chất liệu 50% cenllulose từ gỗ sồi và 50% bông cotton, siêu mềm, hút nước tốt, màu sắc đa dạng, không mẫn cảm với da, tạo cảm giác thoải mái khi sử dụng, đặc biệt độ bóng mượt cao, độ giãn dài thấp cải thiện được trạng thái co rút.</p>\n<p style="text-align:center;"><img src="/public/userfiles/image/lienngocphat/image/bambo6.jpg" alt="" width="250" height="188" /></p>\n<p style="text-align:justify;"><strong>Khăn sợi NONTWIST</strong></p>\n<p style="text-align:justify;">Khăn nontwist Mollis được biết đến như một loại khăn được sản xuất bằng qui trình công nghệ đặc biệt, khăn có lớp bông mềm mại, tơi xốp, màu sắc hài hòa, hút ẩm cao.</p>\n<p style="text-align:center;"><img src="/public/userfiles/image/lienngocphat/image/bambo7.jpg" alt="" width="250" height="188" /></p>\n<p style="text-align:justify;"><strong>Khăn sợi Cocona</strong></p>\n<p style="text-align:justify;">Sản xuất từ 60% cocona (sợi hoạt tính từ xơ dừa) và 40% cotton. Với ưu điểm: mềm mại, thấm nước tốt, giặt mau khô và có độ bền màu cao. Đặc biệt khăn có tính năng kháng khuần, khử mồ hôi, ngăn ngừa tia cực tím bảo vệ cho làn da, hoàn toàn than thiện với môi trường.</p>\n<p style="text-align:justify;"><strong>Khăn 100% Cotton Egyptian</strong></p>\n<p style="text-align:justify;">Được sản xuất trên dây chuyền công nghệ hiện đại của Châu Âu, Mỹ với mẫu mã<br />đa dạng, màu sắc tinh tế, sang trọng, mềm mại, thấm nước tốt, độ bền màu cao. Không mẫn cảm với da, tạo cảm giác thoải mái khi sử dụng. Đặc biệt khăn sản xuất từ sợi Cotton Egyptian có độ dài xơ đều, chuyên dùng trong các khách sạn</p>', '', 'khan-cao-cap-mollis-va-cuoc-song', '', '', '', 0, 1, 0, '', '', 1, 349),
(462, 'Những cách làm mới nhà đơn giản bằng sơn', '', '2012-08-29 07:38:24', 'nhung-cach-lam-moi-nha-don-gian-bang-son.jpg', '<p>Với những cách thú vị dường đây bạn có thể khoác chiếc áo mới cho nhà mình mà không cần phải mua bất kì đồ vật nào mới.</p>', '', '<p>Với những cách thú vị dường đây bạn có thể khoác chiếc áo mới cho nhà mình mà không cần phải mua bất kì đồ vật nào mới.</p>\n<p><strong>Tường nhà</strong></p>\n<p style="text-align:center;"><img src="/public/userfiles/image/lienngocphat/image/lam-moi-nha-sua-nha-don-tet_2.jpg" alt="" width="300" height="250" /></p>\n<p style="text-align:center;">Bạn có thể dùng giấy dán lên tường theo mẫu hoa văn mà bạn muốn, sau đó sơn tường và bóc lớp giấy dán, bức tường của bạn sẽ rất độc đáo và cá tính.</p>\n<p style="text-align:center;"> </p>\n<p style="text-align:center;"><img src="/public/userfiles/image/lienngocphat/image/lam-moi-nha-sua-nha-don-tet_6.jpg" alt="" width="300" height="400" /></p>\n<p style="text-align:center;">Nếu muốn các hoa văn phức tạp hơn, các bạn có thể in sau đó cắt các hoa văn yêu thích dán lên tường trước khi sơn, tất cả thật đơn giản phải không nào ?!</p>\n<p style="text-align:center;"> </p>\n<p style="text-align:center;"><img src="/public/userfiles/image/lienngocphat/image/lam-moi-nha-sua-nha-don-tet_7.jpg" alt="" width="300" height="400" /></p>\n<p style="text-align:center;">Hoặc chỉ đơn giản là các chấm màu tự nhiên trên tường cũng rất đẹp.</p>\n<p><strong>Các đồ vật khác</strong></p>\n<p style="text-align:center;"><img src="/public/userfiles/image/lienngocphat/image/lam-moi-nha-sua-nha-don-tet_3.jpg" alt="" width="300" height="400" /></p>\n<p style="text-align:center;">Tự chế tấm lót sàn độc đáo bằng cách sơn trang trí lên tấm lót thường.</p>\n<p style="text-align:center;"> </p>\n<p style="text-align:center;"><img src="/public/userfiles/image/lienngocphat/image/lam-moi-nha-sua-nha-don-tet_4.jpg" alt="" width="300" height="400" /></p>\n<p style="text-align:center;">Những bức tranh trừu tượng mang dấu ấn của riêng bạn.</p>\n<p style="text-align:center;"> </p>\n<p style="text-align:center;"><img src="/public/userfiles/image/lienngocphat/image/lam-moi-nha-sua-nha-don-tet_8.jpg" alt="" width="300" height="250" /></p>\n<p style="text-align:center;">Những chiếc gương cũ kĩ sẽ là vật trang trí tuyệt vời khi bạn bỏ một chút thời gian ra sơn sửa lại cho chúng.</p>\n<p style="text-align:center;"> </p>\n<p style="text-align:center;"><img src="/public/userfiles/image/lienngocphat/image/lam-moi-nha-sua-nha-don-tet_9.jpg" alt="" width="300" height="400" /></p>\n<p style="text-align:center;">Khung cửa sổ cũ trở thành một tác phẩm nghệ thuật độc đáo.</p>\n<p style="text-align:center;"> </p>\n<p style="text-align:center;"><img src="/public/userfiles/image/lienngocphat/image/lam-moi-nha-sua-nha-don-tet_15.jpg" alt="" width="300" height="400" /></p>\n<p style="text-align:center;">Những chiếc lót li bằng gỗ được sơn nhiều màu sặc sỡ.</p>\n<p style="text-align:center;"> </p>\n<p style="text-align:center;"><img src="/public/userfiles/image/lienngocphat/image/lam-moi-nha-sua-nha-don-tet_16.jpg" alt="" width="300" height="400" /></p>\n<p style="text-align:center;">Với một lớp áo sơn, bộ bàn ghế cũ trông không khác gì đồ mới.</p>', '', 'nhung-cach-lam-moi-nha-don-gian-bang-son', '', '', '', 0, 2, 0, '', '', 1, 351),
(463, 'Quy tắc sắp xếp nhà cửa theo phong thủy', '', '2012-08-29 07:45:32', 'quy-tac-sap-xep-nha-cua-theo-phong-thuy.jpg', '<p style="text-align:justify;">Nhắc đến phong thuỷ nhà ở là nhắc đến nghệ thuật sắp xếp và bài trí sao cho phù hợp với nguồn năng lượng thiên nhiên, với luồng khí âm dương để có một không gian sống yên bình, tốt cho sức khoẻ và sự thuận hòa trong gia đình.</p>', '', '<p style="text-align:justify;"><strong>Nhắc đến phong thuỷ nhà ở là nhắc đến nghệ thuật sắp xếp và bài trí sao cho phù hợp với nguồn năng lượng thiên nhiên, với luồng khí âm dương để có một không gian sống yên bình, tốt cho sức khoẻ và sự thuận hòa trong gia đình.</strong></p>\n<p style="text-align:center;"><img src="/public/userfiles/image/lienngocphat/image/cach-treo-dong-ho-hop-phong-thuy-_1.jpg" alt="" width="450" height="396" /></p>\n<p style="text-align:justify;">Nhiều người không biết rằng việc bài trí, sắp xếp nhà cửa cũng có những quy tắc cơ bản để phù hợp với các nguyên tắc của phong thuỷ để có một cuộc sống tốt đẹp hơn. Chúng tôi xin giới thiệu một số nguyên tắc sắp xếp cơ bản sau:</p>\n<p style="text-align:justify;"><strong>Gương soi</strong></p>\n<p style="text-align:justify;">Theo quan niệm trong phong thuỷ nhà ở thì gương soi là tượng trưng của việc gia tăng năng lượng. Để vị trí đặt gương theo đúng phong thuỷ, bạn cần lứu ý như sau:</p>\n<p style="text-align:justify;">Không nên đặt gương chiếu thẳng vào vị trí gường ngủ vì gương có thể làm khí bị phản xạ, gương phản chiếu trực tiếp hình ảnh của giường ngủ sẽ tạo ra năng lượng âm, phá vỡ mối quan hệ vợ chồng theo nguyên tắc phong thuỷ thì đây là việc tối kỵ. Ngoài ra gương còn làm bạn giật mình khi mới thức giấc, còn đang ngái ngủ thì thấy bóng mình trong gương, gây bất an.</p>\n<p style="text-align:justify;">Không đặt gương ở tiền sảnh, đối diện với cửa chính vì gương có thể sẽ phản chiếu, làm các luồng khí tốt bị đẩy ra bên ngoài, khiến cho trong nhà không còn khí tốt.</p>\n<p style="text-align:justify;">Không đặt gương đối diện với bếp, vì gương theo phong thuỷ là yếu tố của nước trong khi bếp luôn luôn có lửa, hai yếu tố này kỵ nhau.</p>\n<p style="text-align:center;"><img src="/public/userfiles/image/lienngocphat/image/cach-treo-dong-ho-hop-phong-thuy-_2.jpg" alt="" width="383" height="344" /></p>\n<p style="text-align:center;"><em>Chú ý khi xếp đặt những chiếc gương soi trong nhà</em></p>\n<p style="text-align:justify;"><strong>Giường ngủ</strong></p>\n<p style="text-align:justify;">Đầu cuối giường không nên trực diện với cửa ra vào vì sẽ gây tâm lý bất an, đau đầu.</p>\n<p style="text-align:justify;">Giường ngủ nên để tránh hướng cửa ra vào vì hiện tượng thuộc loại “Hung khí xung” dễ gây mất ngủ, dẫn tới sự bất an, suy giảm về sức khoẻ</p>\n<p style="text-align:justify;">Không kê giường ngủ dưới dầm ngang vì tạo cảm giác như luôn bị đè nén, trong phong thủy gọi là “hung hình”, ảnh hưởng tới sức khỏe. Bạn nên chuyển giường tới vị trí khác hoặc làm trần giả che lấp dầm ngang.</p>\n<p style="text-align:center;"><img src="/public/userfiles/image/lienngocphat/image/nen-va-khong-nen-trong-phong-thuy1_6.jpg" alt="" width="391" height="350" /></p>\n<p style="text-align:center;"><em>Giường ngủ không nên xếp đối diện cửa ra vào</em></p>\n<p style="text-align:justify;"><strong>Hành lang</strong></p>\n<p style="text-align:justify;">Theo phong thủy, hành lang cũng có một ý nghĩa quan trọng vì là đường giao thông của thực khí đi từ cửa chính tới các phòng khác. Vì vậy hành lang không được xuyên tâm hoặc chia cắt ngôi nhà, vì nếu bị xuyên hoặc chia cắt, trong phong thuỷ gọi là “trảm tâm sát” gây mâu thuẫn trong gia đình.</p>\n<p style="text-align:justify;"><strong>Vứt đồ đạc bị vỡ</strong></p>\n<p style="text-align:justify;">Những vật dụng đã rạn nứt, vỡ một phần thì đó là một điều không tốt, nó thể hiện sự tan vỡ do đó cần lập tức phải vứt đi và thay mới những món đồ đó.</p>\n<p style="text-align:center;"><strong><img src="/public/userfiles/image/lienngocphat/image/cach-treo-dong-ho-hop-phong-thuy-_4.jpg" alt="" width="290" height="480" /><br /></strong></p>\n<p style="text-align:center;">Không nên dùng đồ đạc bị rạn nứt</p>\n<p style="text-align:justify;"><strong>Hướng nhà bếp</strong></p>\n<p style="text-align:justify;">Nên tránh đặt đối điện với cửa nhà vệ sinh là nơi dẫn các uế khí. Nếu không thể thay đổi được vị trí thì có thể làm một vách ngăn che chắn.</p>\n<p style="text-align:justify;">Tránh đặt bếp nấu ăn ở giữa hai vật dụng có nước như máy giặt, tủ lạnh, bồn chậu… vì bếp nấu ăn có lửa (hỏa, còn những vật dụng kia có chứa thủy, mà hoả thì kỵ thủy.</p>\n<p style="text-align:justify;">Hướng nhà bếp cần tránh với hướng cửa nhà vệ sinh</p>\n<p style="text-align:justify;">Màu sắc trong phòng bếp nên có màu tương đối nhạt vì đây là khu vực nấu ăn nên phát ra năng lượng rất nóng, cần màu sắc dịu lại làm khống chế độ nóng trong bếp.</p>\n<p style="text-align:justify;"><strong>Ban công</strong></p>\n<p style="text-align:justify;">Không đặt đối diện trực tiếp với phòng bếp vì đây là kiểu xuyên tâm trong phong thuỷ có thể khiến cho khả năng đoàn tụ trong nhà yếu. Tuy nhiên nếu bạn không thể thay đổi vị trí thì có thể cải thiện bằng cách dùng rèm hay chậu cây để ban công và bếp không không với nhau.</p>\n<p style="text-align:center;"><img src="/public/userfiles/image/lienngocphat/image/cach-treo-dong-ho-hop-phong-thuy-_5.jpg" alt="" width="350" height="262" /></p>\n<p style="text-align:center;">Không đặt đối diện trực tiếp với phòng bếp</p>\n<p style="text-align:justify;"><strong>Cửa chính</strong>:</p>\n<p style="text-align:justify;">Không nên đặt bất cứ vật dụng nào che chắn hoặc gây cản trở lối đi vào cửa chính thì theo phong thuỷ thì cửa chính sẽ là nơi hội tụ, thu hút khí, năng lượng vào ngôi nhà của bạn. Nếu bị cản trở luồng khí này sẽ không tốt, do đó cửa chính và lối đi cần rộng mở để luồng khí có thể được hấp thu và truyền dễ dàng trong nhà.</p>\n<p style="text-align:justify;"><strong>Cửa nhà vệ sinh</strong></p>\n<p style="text-align:justify;">Cửa nhà vệ sinh không được đối diện với cửa lớn vào nhà vì cửa chính là nơi đón các luồng sinh khí tự nhiên vào nhà, nếu nhà cửa nhà vệ sinh đối diện với của chính thì luồng khí này sẽ di chuyển thẳng vào khu vực nhà vệ sinh, vốn là nơi khí uế. Như vậy thì sinh khí và khí uế đối kháng với nhau sẽ không tốt.</p>', '', 'quy-tac-sap-xep-nha-cua-theo-phong-thuy', '', '', '', 0, 3, 0, '', '', 1, 351);

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
) ENGINE=InnoDB  DEFAULT CHARSET=utf8 AUTO_INCREMENT=352 ;

--
-- Dumping data for table `dos_module_news_cat`
--

INSERT INTO `dos_module_news_cat` (`cat_id`, `cat_parent_id`, `cat_title`, `cat_titleen`, `preview`, `previewen`, `tag`, `tagen`, `description`, `descriptionen`, `pic_full`, `cat_order`, `cat_extra1`, `cat_extra2`, `cat_enable`, `dos_usernames_username`) VALUES
(349, 0, 'Tin sản phẩm mới', '', '', '', 'tin-san-pham-moi', '', '', '', 'tin-san-pham-moi.jpg', 2, '', '', 1, 'lienngocphat'),
(350, 0, 'Tin tức trong ngành', '', '', '', 'tin-tuc-trong-nganh', '', '', '', 'tin-tuc-trong-nganh.jpg', 3, '', '', 1, 'lienngocphat'),
(351, 0, 'Tin tức khác', '', '', '', 'tin-tuc-khac', '', '', '', '', 2, '', '', 1, 'lienngocphat');

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
('day_time', 2456170),
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
('''127.0.0.1''', 1346293204);

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
) ENGINE=InnoDB  DEFAULT CHARSET=utf8 AUTO_INCREMENT=8734 ;

--
-- Dumping data for table `dos_module_products`
--

INSERT INTO `dos_module_products` (`record_id`, `title`, `titleen`, `postdate`, `pic_thumb`, `pic_full`, `pic_desc`, `preview`, `previewen`, `content`, `contenten`, `tag`, `tagen`, `description`, `descriptionen`, `hits`, `record_order`, `unit`, `hot`, `specials`, `extra_field1`, `extra_field2`, `extra_field3`, `extra_field4`, `enable`, `dos_module_item_cat_cat_id`) VALUES
(8729, 'HMH1 - 29 x 29 cm - 23g', '', '2012-08-29 06:51:42', 'hmh1-29-x-29-cm-23g-thumb.jpg', 'hmh1-29-x-29-cm-23g.jpg', '', '<p>Khăn Mollis</p>', '', '<p>Khăn Mollis</p>', '', 'hmh1-29-x-29-cm-23g', '', '', '', 0, 2, '', 0, 0, '', '', '', '', 1, 1644),
(8730, 'BMH1 - 70X130 cm - 470', '', '2012-08-29 06:54:44', 'bmh1-70x130-cm-470-thumb.jpg', 'bmh1-70x130-cm-470.jpg', '', '<p>Khăn Mollis Extra</p>', '', '<p>BMH1 - 70X130 cm - 470</p>', '', 'bmh1-70x130-cm-470', '', '', '', 0, 1, '', 0, 0, '', '', '', '', 1, 1640),
(8731, 'BMB4 - 65x130 cm - 405.6g', '', '2012-08-29 06:57:30', 'bmb4-65x130-cm-405-6g-thumb.jpg', 'bmb4-65x130-cm-405-6g.jpg', '', '<p>Khăn Micio</p>', '', '<p>BMB4 - 65x130 cm - 405.6g</p>', '', 'bmb4-65x130-cm-4056g', '', '', '', 0, 3, '', 0, 0, '', '', '', '', 1, 1641),
(8732, 'BMC2 - 65x130 cm - 338g', '', '2012-08-29 07:00:45', 'bmc2-65x130-cm-338g-thumb.jpg', 'bmc2-65x130-cm-338g.jpg', '', '<p>Khăn Mollis Premium</p>', '', '<p>BMC2 - 65x130 cm - 338g</p>', '', 'bmc2-65x130-cm-338g', '', '', '', 0, 4, '', 0, 0, '', '', '', '', 1, 1639),
(8733, 'BMI6 - 60x120 cm - 345.58 g', '', '2012-08-29 07:02:35', 'bmi6-60x120-cm-345-58-g-thumb.jpg', 'bmi6-60x120-cm-345-58-g.jpg', '', '<p>Khăn Hải Vân</p>', '', '<p>BMI6 - 60x120 cm - 345.58 g</p>', '', 'bmi6-60x120-cm-34558-g', '', '', '', 0, 5, '', 0, 0, '', '', '', '', 1, 1642);

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
) ENGINE=InnoDB  DEFAULT CHARSET=utf8 AUTO_INCREMENT=1645 ;

--
-- Dumping data for table `dos_module_products_cat`
--

INSERT INTO `dos_module_products_cat` (`cat_id`, `cat_parent_id`, `cat_title`, `cat_titleen`, `preview`, `previewen`, `tag`, `tagen`, `description`, `descriptionen`, `pic_full`, `pic_desc`, `cat_order`, `cat_extra1`, `cat_extra2`, `cat_enable`, `dos_usernames_username`) VALUES
(1638, 0, 'Open', '', '', '', 'open', '', '', '', 'open.jpg', '', 1, '', '', 1, 'lienngocphat'),
(1639, 0, 'Mollis Premium', '', '', '', 'mollis-premium', '', '', '', 'mollis-premium.jpg', '', 7, '', '', 1, 'lienngocphat'),
(1640, 0, 'Mollis Extra', '', '', '', 'mollis-extra', '', '', '', 'mollis-extra.jpg', '', 5, '', '', 1, 'lienngocphat'),
(1641, 0, 'Macio', '', '', '', 'macio', '', '', '', 'macio.jpg', '', 4, '', '', 1, 'lienngocphat'),
(1642, 0, 'Hải Vân', '', '', '', 'hai-van', '', '', '', 'hai-van.jpg', '', 5, '', '', 1, 'lienngocphat'),
(1643, 0, 'Hera', '', '', '', 'hera', '', '', '', 'hera.jpg', '', 6, '', '', 1, 'lienngocphat'),
(1644, 0, 'Mollis', '', '', '', 'mollis', '', '', '', 'mollis.jpg', '', 6, '', '', 1, 'lienngocphat');

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
) ENGINE=InnoDB  DEFAULT CHARSET=utf8 AUTO_INCREMENT=299 ;

--
-- Dumping data for table `dos_module_supports`
--

INSERT INTO `dos_module_supports` (`support_id`, `support_name`, `support_nameen`, `support_phone`, `support_value`, `support_order`, `support_type`, `dos_usernames_username`) VALUES
(297, 'Hỗ trợ Khách hàng 1', '', '', 'maioanh7887', 1, 'yahoo', 'lienngocphat'),
(298, 'Hỗ trợ Khách hàng 2', '', '', 'maioanh7887', 1, 'yahoo', 'lienngocphat');

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
('keywords', 'Cty TNHH Liên Ngọc Phát.Chuyên phân phối sản phẩm khăn Mollis, khăn khách sạn, khăn Spa, áo choàng tắm, khăn tắm, khăn quà tặng, khăn 100% Cotton, khăn du lịch, khăn Mollis Extra , được sản xuất  từ các hãng nổi tiếng trong nước, nước ngoài', 'lienngocphat'),
('description', 'Cty TNHH Liên Ngọc Phát.Chuyên phân phối sản phẩm khăn Mollis, khăn khách sạn, khăn Spa, áo choàng tắm, khăn tắm, khăn quà tặng, khăn 100% Cotton, khăn du lịch, khăn Mollis Extra , được sản xuất  từ các hãng nổi tiếng trong nước, nước ngoài', 'lienngocphat'),
('title', 'Công ty TNHH Liên Ngọc Phát - Lienngocphat.com', 'lienngocphat'),
('analytics', '<script type="text/javascript">\r\n\r\n  var _gaq = _gaq || [];\r\n  _gaq.push([''_setAccount'', ''UA-30151015-9'']);\r\n  _gaq.push([''_trackPageview'']);\r\n\r\n  (function() {\r\n    var ga = document.createElement(''script''); ga.type = ''text/javascript''; ga.async = true;\r\n    ga.src = (''https:'' == document.location.protocol ? ''https://ssl'' : ''http://www'') + ''.google-analytics.com/ga.js'';\r\n    var s = document.getElementsByTagName(''script'')[0]; s.parentNode.insertBefore(ga, s);\r\n  })();\r\n\r\n</script>', 'lienngocphat');

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
('220312', 'Mẫu nội thất: 220312', '2012-03-21 19:04:36', 'Chuyên bán các loại đồ nội thất, dân dụng');

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
('220312', 'noi-that-ngoai-that');

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
('220312', 'about', 'advs_left'),
('220312', 'about', 'advs_right'),
('220312', 'about', 'list_supports'),
('220312', 'about', 'menu_about'),
('220312', 'about', 'news_new'),
('220312', 'about', 'products_hot'),
('220312', 'contact', 'advs_left'),
('220312', 'contact', 'advs_right'),
('220312', 'contact', 'list_supports'),
('220312', 'contact', 'menu_products'),
('220312', 'contact', 'news_new'),
('220312', 'contact', 'products_hot'),
('220312', 'default', 'about_home'),
('220312', 'default', 'advs_left'),
('220312', 'default', 'advs_right'),
('220312', 'default', 'list_supports'),
('220312', 'default', 'menu_products'),
('220312', 'default', 'news_new'),
('220312', 'default', 'products_hot'),
('220312', 'default', 'products_new'),
('220312', 'default', 'video_hot'),
('220312', 'news', 'advs_right'),
('220312', 'news', 'menu_news'),
('220312', 'news', 'news_hot'),
('220312', 'news', 'news_new'),
('220312', 'products', 'advs_right'),
('220312', 'products', 'list_supports'),
('220312', 'products', 'menu_products'),
('220312', 'products', 'news_new'),
('220312', 'services', 'advs_right'),
('220312', 'services', 'menu_services'),
('220312', 'services', 'news_new'),
('220312', 'video', 'advs_right'),
('220312', 'video', 'menu_video'),
('220312', 'video', 'news_new');

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
('lienngocphat', 'maioanh@thuonghoi.com', 'e10adc3949ba59abbe56e057f20f883e', '2012-08-28 08:04:17', '', '0987522003', '', 'user', 'vi', '', '2012-11-25 16:00:00', 0, '87522003', '', 1, '220312', 19, 'thoi-trang');

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
('address1', 'Địa chỉ: 60A, KP3, P. An Bình, TP. Biên Hòa, Tỉnh Đồng Nai', '', 'lienngocphat'),
('address2', 'Đại lý LNP: Đường Bắc Sơn, P. Vĩnh Hải, TP. Nha Trang, Tỉnh Khánh Hòa', '', 'lienngocphat'),
('company_name', 'CÔNG TY TNHH LIÊN NGỌC PHÁT', '', 'lienngocphat'),
('company_name_footer', 'CÔNG TY TNHH LIÊN NGỌC PHÁT', '', 'lienngocphat'),
('company_phone', 'Hotline: 0918 116 026 (Mr. Ngọc)', '', 'lienngocphat'),
('copyright', 'Email: lienngocphat@gmail.com - Website: www.lienngocphat.vn', '', 'lienngocphat');

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
