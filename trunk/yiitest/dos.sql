-- phpMyAdmin SQL Dump
-- version 3.4.5
-- http://www.phpmyadmin.net
--
-- Host: localhost
-- Generation Time: Apr 14, 2012 at 11:24 AM
-- Server version: 5.5.16
-- PHP Version: 5.3.8

SET SQL_MODE="NO_AUTO_VALUE_ON_ZERO";
SET time_zone = "+00:00";


/*!40101 SET @OLD_CHARACTER_SET_CLIENT=@@CHARACTER_SET_CLIENT */;
/*!40101 SET @OLD_CHARACTER_SET_RESULTS=@@CHARACTER_SET_RESULTS */;
/*!40101 SET @OLD_COLLATION_CONNECTION=@@COLLATION_CONNECTION */;
/*!40101 SET NAMES utf8 */;

--
-- Database: `dos`
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
('advs_left_height', 190, '', '010312'),
('advs_left_height', 200, '', '070312'),
('advs_left_height', 200, '', '111120'),
('advs_left_height', 200, '', '200312'),
('advs_left_height', 190, '', '220312'),
('advs_left_height', 200, '', '260312'),
('advs_left_width', 190, '', '010312'),
('advs_left_width', 196, '', '070312'),
('advs_left_width', 224, '', '111120'),
('advs_left_width', 200, '', '200312'),
('advs_left_width', 190, '', '220312'),
('advs_left_width', 210, '', '260312'),
('advs_right_height', 190, '', '010312'),
('advs_right_height', 190, '', '220312'),
('advs_right_width', 190, '', '010312'),
('advs_right_width', 190, '', '220312'),
('banner_height', 332, '', '010312'),
('banner_height', 324, '', '070312'),
('banner_height', 297, '', '111120'),
('banner_height', 300, '', '130312'),
('banner_height', 328, '', '200312'),
('banner_height', 332, '', '220312'),
('banner_height', 332, '', '260312'),
('banner_width', 951, '', '010312'),
('banner_width', 757, '', '070312'),
('banner_width', 709, '', '111120'),
('banner_width', 950, '', '130312'),
('banner_width', 718, '', '200312'),
('banner_width', 950, '', '220312'),
('banner_width', 710, '', '260312'),
('logo_height', 108, '', '010312'),
('logo_height', 57, '', '070312'),
('logo_height', 65, '', '111120'),
('logo_height', 100, '', '130312'),
('logo_height', 55, '', '200312'),
('logo_height', 79, '', '220312'),
('logo_height', 46, '', '260312'),
('logo_width', 155, '', '010312'),
('logo_width', 260, '', '070312'),
('logo_width', 310, '', '111120'),
('logo_width', 735, '', '130312'),
('logo_width', 314, '', '200312'),
('logo_width', 259, '', '220312'),
('logo_width', 300, '', '260312'),
('max_image_height', 667, '', '010312'),
('max_image_height', 600, '', '200312'),
('max_image_height', 500, '', '220312'),
('max_image_height', 450, '', '260312'),
('max_image_width', 500, '', '010312'),
('max_image_width', 450, '', '200312'),
('max_image_width', 667, '', '220312'),
('max_image_width', 600, '', '260312'),
('news_cat_height', 89, '', '010312'),
('news_cat_height', 89, '', '200312'),
('news_cat_height', 89, '', '260312'),
('news_cat_width', 143, '', '010312'),
('news_cat_width', 143, '', '200312'),
('news_cat_width', 143, '', '260312'),
('news_height_thumb', 89, '', '010312'),
('news_height_thumb', 89, '', '200312'),
('news_height_thumb', 100, '', '220312'),
('news_height_thumb', 89, '', '260312'),
('news_num_paging_cat', 8, '', '010312'),
('news_num_paging_cat', 8, '', '200312'),
('news_num_paging_cat', 2, '', '220312'),
('news_num_paging_cat', 8, '', '260312'),
('news_num_paging_hot', 6, '', '010312'),
('news_num_paging_hot', 5, '', '220312'),
('news_num_paging_hot', 6, '', '260312'),
('news_num_paging_index', 8, '', '010312'),
('news_num_paging_index', 8, '', '200312'),
('news_num_paging_index', 2, '', '220312'),
('news_num_paging_index', 4, '', '260312'),
('news_num_paging_new', 6, '', '010312'),
('news_num_paging_new', 4, '', '200312'),
('news_num_paging_new', 4, '', '220312'),
('news_num_paging_new', 6, '', '260312'),
('news_width_thumb', 143, '', '010312'),
('news_width_thumb', 143, '', '200312'),
('news_width_thumb', 145, '', '220312'),
('news_width_thumb', 143, '', '260312'),
('products_cat_height', 155, '', '010312'),
('products_cat_height', 200, '', '070312'),
('products_cat_height', 150, '', '111120'),
('products_cat_height', 121, '', '130312'),
('products_cat_height', 170, '', '200312'),
('products_cat_height', 150, '', '220312'),
('products_cat_height', 160, '', '260312'),
('products_cat_width', 115, '', '010312'),
('products_cat_width', 150, '', '070312'),
('products_cat_width', 169, '', '111120'),
('products_cat_width', 152, '', '130312'),
('products_cat_width', 170, '', '200312'),
('products_cat_width', 200, '', '220312'),
('products_cat_width', 160, '', '260312'),
('products_height', 400, '', '010312'),
('products_height', 500, '', '070312'),
('products_height', 650, '', '111120'),
('products_height', 400, '', '130312'),
('products_height', 600, '', '200312'),
('products_height', 400, '', '220312'),
('products_height', 400, '', '260312'),
('products_height_thumb', 121, '', '010312'),
('products_height_thumb', 200, '', '070312'),
('products_height_thumb', 167, '', '111120'),
('products_height_thumb', 121, '', '130312'),
('products_height_thumb', 170, '', '200312'),
('products_height_thumb', 135, '', '220312'),
('products_height_thumb', 160, '', '260312'),
('products_num_paging_cat', 3, '', '010312'),
('products_num_paging_cat', 8, '', '200312'),
('products_num_paging_cat', 6, '', '220312'),
('products_num_paging_cat', 8, '', '260312'),
('products_num_paging_hot', 3, '', '010312'),
('products_num_paging_hot', 8, '', '200312'),
('products_num_paging_hot', 30, '', '260312'),
('products_num_paging_new', 6, '', '010312'),
('products_num_paging_new', 3, '', '200312'),
('products_num_paging_new', 4, '', '220312'),
('products_num_paging_new', 8, '', '260312'),
('products_num_paging_other', 3, '', '010312'),
('products_num_paging_other', 3, '', '200312'),
('products_num_paging_other', 2, '', '220312'),
('products_num_paging_other', 4, '', '260312'),
('products_width', 500, '', '010312'),
('products_width', 600, '', '070312'),
('products_width', 700, '', '111120'),
('products_width', 500, '', '130312'),
('products_width', 500, '', '200312'),
('products_width', 515, '', '220312'),
('products_width', 380, '', '260312'),
('products_width_thumb', 152, '', '010312'),
('products_width_thumb', 150, '', '070312'),
('products_width_thumb', 167, '', '111120'),
('products_width_thumb', 152, '', '130312'),
('products_width_thumb', 170, '', '200312'),
('products_width_thumb', 200, '', '220312'),
('products_width_thumb', 160, '', '260312'),
('services_height', 90, '', '010312'),
('services_height', 110, '', '111120'),
('services_height', 89, '', '130312'),
('services_height', 200, '', '200312'),
('services_height', 90, '', '220312'),
('services_height', 90, '', '260312'),
('services_width', 144, '', '010312'),
('services_width', 192, '', '111120'),
('services_width', 143, '', '130312'),
('services_width', 200, '', '200312'),
('services_width', 145, '', '220312'),
('services_width', 144, '', '260312'),
('video_cat_height', 100, '', '260312'),
('video_cat_width', 145, '', '260312'),
('video_height_thumb', 115, '', '010312'),
('video_height_thumb', 150, '', '220312'),
('video_num_paging_cat', 4, '', '010312'),
('video_num_paging_cat', 8, '', '200312'),
('video_num_paging_cat', 2, '', '220312'),
('video_num_paging_cat', 8, '', '260312'),
('video_num_paging_index', 4, '', '010312'),
('video_num_paging_index', 8, '', '200312'),
('video_num_paging_index', 2, '', '220312'),
('video_num_paging_index', 8, '', '260312'),
('video_width_thumb', 115, '', '010312'),
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
('description', 'Mô tả', 'Decription', 1),
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
('010312', 'default', 'prettyPhoto.css', 'css'),
('010312', 'default', 'jquery.prettyPhoto.js', 'javascript'),
('010312', 'video', 'prettyPhoto.css', 'css'),
('010312', 'video', 'jquery.prettyPhoto.js', 'javascript'),
('111120', 'products', 'product-detail.css|jquery.fancybox-1.3.1.css', 'css'),
('111120', 'products', 'jcarousellite.js|contentslider.js|scroller.js|jquery.fancybox-1.3.1.js|lightbox.js', 'javascript'),
('200312', 'products', 'product-detail.css', 'css'),
('200312', 'products', 'prototype.js|effects.js|dragdrop.js|slider.js|product.js', 'javascript'),
('200312', 'video', 'prettyPhoto.css', 'css'),
('200312', 'video', 'jquery.prettyPhoto.js', 'javascript'),
('220312', 'default', 'prettyPhoto.css', 'css'),
('220312', 'default', 'jquery.prettyPhoto.js', 'javascript'),
('220312', 'video', 'prettyPhoto.css', 'css'),
('220312', 'video', 'jquery.prettyPhoto.js', 'javascript'),
('260312', 'products', 'milkbox.css', 'css'),
('260312', 'products', 'mootools12.js|mootools12-more.js|milkbox.js|milkbox-config.js', 'javascript');

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
('default', NULL, NULL, 1, 1),
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
('about', 'dos'),
('about', 'mayphotocopysieuviet'),
('about', 'phumyan'),
('about', 'tinhungphat'),
('advs', 'dos'),
('advs', 'mayphotocopysieuviet'),
('advs', 'phumyan'),
('advs', 'tinhungphat'),
('banner', 'dos'),
('banner', 'mayphotocopysieuviet'),
('banner', 'phumyan'),
('banner', 'tinhungphat'),
('contact', 'dos'),
('contact', 'mayphotocopysieuviet'),
('contact', 'phumyan'),
('contact', 'tinhungphat'),
('news', 'dos'),
('news', 'mayphotocopysieuviet'),
('news', 'phumyan'),
('news', 'tinhungphat'),
('products', 'dos'),
('products', 'mayphotocopysieuviet'),
('products', 'phumyan'),
('products', 'tinhungphat'),
('services', 'dos'),
('services', 'mayphotocopysieuviet'),
('services', 'phumyan'),
('services', 'tinhungphat'),
('supports', 'dos'),
('supports', 'mayphotocopysieuviet'),
('supports', 'phumyan'),
('supports', 'tinhungphat'),
('video', 'phumyan'),
('video', 'tinhungphat');

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
) ENGINE=InnoDB  DEFAULT CHARSET=utf8 AUTO_INCREMENT=48 ;

--
-- Dumping data for table `dos_module_abouts`
--

INSERT INTO `dos_module_abouts` (`record_id`, `title`, `titleen`, `content`, `contenten`, `hit`, `created`, `record_order`, `hot`, `extra_field1`, `extra_field2`, `tag`, `tagen`, `description`, `descriptionen`, `activated`, `dos_usernames_username`) VALUES
(6, 'Về Dos.vn', 'Dos.vn about', '<p>\r\n	Kính gửi: <strong>Quý Doanh nghiệp</strong></p>\r\n<p style="margin-left:40px;">\r\n	<strong>DOS</strong> là công ty chuyên nghiệp trong việc <strong>Thiết kế Website</strong>. Những sản phẩm chính: Web Doanh nghiệp, Web cơ quan, Web trường học, Web du lịch, Web nhà hàng, Web máy tính, Web điện thoại,... và các loại Web theo đơn đặt hàng.</p>\r\n<p style="margin-left:40px;">\r\n	Với tiêu chí "Giao diện đẹp, tính năng nhiều, giá thành thấp". Qua 5 năm thiết kế Web, sản phẩm của chúng tôi được các Doanh nghiệp đánh giá cao. Chúng tôi có bề dày kinh nghiệm, có giải pháp và đội ngũ nhân lực tâm huyết để đảm bảo sản phẩm đáp ứng đúng nhu cầu, đem lại hiệu quả, với chi phí phù hợp.</p>\r\n<p style="margin-left:40px;">\r\n	Không ngừng học hỏi và phát triển công nghệ. <strong>DOS</strong> trở thành một công ty thiết kế Web tiên phong về chất lượng, có sản phẩm tiêu biểu, có thương hiệu uy tín trong và ngoài nước.</p>\r\n<p style="margin-left:40px;">\r\n	<strong>DOS</strong> thiết kế và cung cấp giải pháp Web trên đến các đơn vị: <strong>UBND Tân phú</strong>, <strong>SONADEZI</strong>, <strong>BENCO</strong>, <strong>Gạch Ngói Nhị Hiệp</strong>, <strong>An Gia Phú</strong>, <strong>Nội Thất Yến Bình Minh</strong>, <strong>Thuận Thành Glass</strong>, <strong>Thái Sơn</strong>, <strong>Thái Bình An Phú Thịnh...</strong></p>\r\n<p style="margin-left:40px;">\r\n	Tại Việt Nam, Sản phẩm <strong>DOS</strong> được giới thiệu tại các Công ty thiết kế in ấn, ở hầu hết các Trung Tâm tỉnh thành trên toàn quốc .</p>', '<p>\r\n	Kính gửi: Quý Doanh nghiệp<br />\r\n	      <br />\r\n	           DOS là công ty chuyên nghiệp trong việc Thiết kế Website. Những sản phẩm chính: Web Doanh nghiệp, Web cơ quan, Web trường học, Web du lịch, Web nhà hàng, Web máy tính, Web điện thoại,... và các loại Web theo đơn đặt hàng.<br />\r\n	          Với tiêu chí "Giao diện đẹp, tính năng nhiều, giá thành thấp". Qua 5 năm thiết kế Web, sản phẩm của chúng tôi được các Doanh nghiệp đánh giá cao. Chúng tôi có bề dày kinh nghiệm, có giải pháp và đội ngũ nhân lực tâm huyết để đảm bảo sản phẩm đáp ứng đúng nhu cầu, đem lại hiệu quả, với chi phí phù hợp.</p>\r\n<p>\r\n	          Không ngừng học hỏi và phát triển công nghệ. DOS trở thành một công ty thiết kế Web tiên phong về chất lượng, có sản phẩm tiêu biểu, có thương hiệu uy tín trong và ngoài nước.<br />\r\n	          DOS thiết kế và cung cấp giải pháp Web trên đến các đơn vị: UBND Tân phú, SONADEZI, BENCO, Gạch Ngói Nhị Hiệp, An Gia Phú, Nội Thất Yến Bình Minh, Thuận Thành Glass, Thái Sơn, Thái Bình An Phú Thịnh...</p>\r\n<p>\r\n	          Tại Việt Nam, Sản phẩm DOS được giới thiệu tại các Công ty thiết kế in ấn, ở hầu hết các Trung Tâm tỉnh thành trên toàn quốc .</p>', 75, '2012-04-07 02:13:52', 1, 0, NULL, NULL, 've-dos', 'dos-about', 'DOS là công ty chuyên nghiệp trong việc Thiết kế Website. Những sản phẩm chính: Web Doanh nghiệp, Web cơ quan, Web trường học, Web du lịch, Web nhà hàng, Web máy tính, Web điện thoại,... và các loại Web theo đơn đặt hàng', 'DOS là công ty chuyên nghiệp trong việc Thiết kế Website. Những sản phẩm chính: Web Doanh nghiệp, Web cơ quan, Web trường học, Web du lịch, Web nhà hàng, Web máy tính, Web điện thoại,... và các loại Web theo đơn đặt hàng', 1, 'dos'),
(7, 'Tầm nhìn và sứ mệnh Dos', 'Gioi thieu 2 En', '<p>\r\n	Tầm nhìn và Sứ mệnh của DOS được viết ra ngay từ khi thành lập, xác định lý tưởng, hướng đi lâu dài và những giá trị cơ bản mà mỗi thành viên sáng lập luôn hướng tới.</p>\r\n<p>\r\n	<strong>Tầm nhìn của DOS</strong><br />\r\n	Được công nhận là công ty đứng đầu trong lĩnh vực thiết kế Website. Với giải pháp tích hợp Marketing và Công Nghệ Thông Tin trong việc quảng cáo bán hàng dành riêng cho từng Doanh nghiệp.</p>\r\n<p>\r\n	<strong>Sứ mệnh của DOS</strong><br />\r\n	Mang lại cho Doanh nghiệp một kênh truyền thông nhanh chóng và hiệu quả qua những Website đầy tính sáng tạo.</p>\r\n<p>\r\n	<strong>Các giá trị cơ bản của DOS c</strong>ác giá trị cơ bản là tài sản vô cùng quý báu mà mỗi người thành viên của DOS đều trân trọng giữ gìn:</p>\r\n<ul><li>\r\n		<strong>Làm khách hàng hài lòng</strong>: Tận tuỵ với khách hàng và luôn phấn đấu để đáp ứng tốt nhất những nhu cầu, vượt trên mong đợi của họ.</li>\r\n	<li>\r\n		<strong>Con người là cốt lõi</strong>: Tôn trọng con người, tạo điều kiện cho các thành viên phát triển tối đa tài năng, đóng góp cho tổ chức và được đãi ngộ xứng đáng cả về vật chất và tinh thần.</li>\r\n	<li>\r\n		<strong>Chất lượng tốt nhất</strong>: Đảm bảo chất lượng tốt nhất trong mỗi sản phẩm, mỗi việc làm.</li>\r\n	<li>\r\n		<strong>Đề cao đạo đức kinh doanh</strong>: Mỗi nhân viên là một đại diện của Công ty, có nghĩa vụ tuân thủ đạo đức kinh doanh cao nhất, luôn hợp tác, cởi mở và thân thiện với đồng nghiệp, đóng góp cho cộng đồng và xã hội.</li>\r\n</ul>', '<p>\r\n	NOi dung en</p>', 45, '2012-04-07 02:14:02', 2, 0, NULL, NULL, 'tam-nhin-va-su-menh-dos', 'gioi-thieu-2-en', 'Tầm nhìn và Sứ mệnh của DOS được viết ra ngay từ khi thành lập, xác định lý tưởng, hướng đi lâu dài và những giá trị cơ bản mà mỗi thành viên sáng lập luôn hướng tới', 'Mo ta 2 En', 1, 'dos'),
(8, 'Lĩnh vực hoạt động', 'Gioi thieu 3 En', '<p>\r\n	<strong>DỊCH VỤ CHUYÊN NGHIỆP</strong>:</p>\r\n<ul><li>\r\n		Thiết kế website</li>\r\n	<li>\r\n		Phương pháp quảng cáo bán hàng trực tuyến</li>\r\n	<li>\r\n		Giải pháp CNTT trọn gói cho Doanh nghiệp</li>\r\n	<li>\r\n		Thương mại điện tử</li>\r\n</ul><p>\r\n	 </p>\r\n<p>\r\n	<strong>SẢN PHẨM VÀ DỊCH VỤ GTGT:</strong></p>\r\n<ul><li>\r\n		Đăng ký tên miền</li>\r\n	<li>\r\n		Cung cấp Hosting</li>\r\n	<li>\r\n		Xử lý hình ảnh nhập liệu cho web</li>\r\n	<li>\r\n		Thiết kế Logo</li>\r\n	<li>\r\n		Thiết Kế Name Card</li>\r\n	<li>\r\n		Thiết kế ấn phầm Quảng cáo theo đơn đặt hàng</li>\r\n</ul><p>\r\n	 </p>\r\n<p>\r\n	<strong>HỖ TRỢ TƯ VẤN MIỄN PHÍ:</strong></p>\r\n<ul><li>\r\n		Thành lập Doanh nghiệp</li>\r\n	<li>\r\n		Quản lý Doanh nghiệp</li>\r\n	<li>\r\n		Tư vấn Marketing và phát triển Doanh nghiệp</li>\r\n	<li>\r\n		Tư vấn và định hướng đào tạo nhân viên bán hàng</li>\r\n	<li>\r\n		Tư vấn phong thủy</li>\r\n</ul>', '<p>\r\n	Noi dung 3 en</p>', 32, '2012-04-07 02:14:12', 3, 0, NULL, NULL, 'linh-vuc-hoat-dong', 'gioi-thieu-3-en', 'Mo ta 3', 'Mo ta 3 En', 1, 'dos'),
(43, 'Giới thiệu chung', '', '<p style="text-align:justify;"><span style="color:#008000;font-size:medium;"><strong>Siêu Việt</strong></span><span style="color:#000000;"> là một trong những công ty hàng đầu chuyên cung cấp các thiết bị và giải pháp toàn diện trong lĩnh vực Giải pháp máy văn phòng.</span></p>\n<p style="text-align:justify;"><span style="color:#000000;">Công ty được thành lập với tiêu chí cung cấp sỉ và lẻ tất cả các thiết bị văn phòng cho các đại lý trên khắp Việt Nam .</span></p>\n<p style="text-align:justify;"><span style="color:#000000;">Tận dụng và phát huy năng lực, kinh nghiệm trong lĩnh vực thiết bị văn phòng cùng với sự hỗ trợ của các thương hiệu nổi tiếng thế giới như Toshiba, Panasonic, Canon, Ricoh, Konica Minolta, Xerox... và trong lĩnh vực tin học như Intel, Seagate, Samsung, Asus, Dell, Ibm, Acer ...chúng tôi mong muốn và quyết tâm để trờ thành nhà cung cấp lớn và uy tín nhất trong lĩnh vực văn phòng tại Việt Nam.</span></p>\n<p style="text-align:justify;"><span style="color:#000000;">Dịch vụ hỗ trợ khách hàng: Chúng tôi có một đội ngũ kỹ sư có chuyên môn cao, kỹ thuật viên uy tín lâu năm kinh nghiệm trong các lĩnh vực:</span></p>\n<p style="text-align:justify;"><span style="color:#000000;">- Tư vấn, thực hiện các Giải Pháp về Máy Photocopy, Máy Fax, Máy In ...</span></p>\n<p style="text-align:justify;"><span style="color:#000000;">- Kinh doanh và cho thuê Máy Văn Phòng </span></p>\n<p style="text-align:justify;"><span style="color:#000000;">- Máy Photocopy in kỹ thuật số khổ lớn A0, Máy In Siêu Tốc 130 bản/phút</span></p>\n<p style="text-align:justify;"><span style="color:#000000;">- Máy in Công nghiệp, Máy in Màu Offset</span></p>\n<p style="text-align:justify;"><span style="color:#000000;">- Hỗ trợ kỹ thuật cho các dịch vụ Photocopy</span></p>\n<p style="text-align:justify;"><span style="color:#000000;">- Phân phối Sỉ &amp; Lẻ Máy Photocopy hàng nhập khẩu</span></p>\n<p style="text-align:justify;"><span style="color:#000000;">- Cung cấp Mực, Linh Kiện, Vật Tư với giá ưu đãi</span></p>\n<p style="text-align:justify;"><span style="color:#000000;">- Nhận đào tạo Kỹ Thuật Viên sửa chữa máy Photocopy, In, Fax</span></p>\n<p style="text-align:justify;"><span style="color:#000000;"><span style="color:#008000;font-size:medium;"><strong>Siêu Việt</strong> </span>đáp ứng mọi nhu cầu, lựa chọn từ quý khách.</span></p>\n<p style="text-align:justify;"><span style="color:#000000;"> </span></p>\n<p style="text-align:center;"><span style="color:#ff0000;font-size:medium;"><strong><em>Tiêu chí kinh doanh trong lĩnh vực dịch vụ của chúng tôi</em></strong></span><br /><span style="color:#ff0000;font-size:medium;"><strong><em>“Hãy để <span style="color:#008000;">Siêu Việt</span> chăm sóc văn phòng bạn”</em></strong></span></p>', '', 53, '2012-04-12 01:25:59', 1, 1, NULL, NULL, 'gioi-thieu-chung', '', 'Siêu Việt', '', 1, 'mayphotocopysieuviet'),
(44, 'Giới thiệu sơ lược', '', '<p>Lịch sử ngành Tổ chức Nhà nước gắn liền với quá trình xây dựng, phát triển của bộ máy Nhà nước cách mạng, gắn liền với quá trình đấu tranh giải phóng dân tộc và xây dựng đất nước qua các giai đoạn lịch sử.<br />Cùng với sự phát triển của ngành, cũng từng bước trưởng thành và phát triển cả về số lượng, </p>', '', 46, '2012-04-12 01:57:36', 1, 1, NULL, NULL, 'gioi-thieu-so-luoc', '', '', '', 1, 'phumyan'),
(45, 'Giấy chứng nhận đại lý', '', '<p><img style="margin-left:auto;margin-right:auto;" title="Giấy chung nhan" src="/public/userfiles/image/mayphotocopysieuviet/image/Nho-Chungnhan_HP.jpg" alt="sieu viet" width="450" height="651" /></p>', '', 9, '2012-04-12 02:49:22', 2, 0, NULL, NULL, 'giay-chung-nhan-dai-ly', '', '', '', 1, 'mayphotocopysieuviet'),
(46, 'Giới thiệu chung chung', '', '<p>Giới thiệu chung chung Giới thiệu chung chung  Giới thiệu chung chung</p>', '', 2, '2012-04-13 03:18:30', 2, 0, NULL, NULL, 'gioi-thieu-chung-chung', '', 'Giới thiệu chung chung', '', 1, 'phumyan'),
(47, 'Giới thiệu thị trường nội thất', '', '<p>Giới thiệu thị trường nội thất Giới thiệu thị trường nội thất Giới thiệu thị trường nội thất Giới thiệu thị trường nội thất</p>', '', 5, '2012-04-13 03:19:10', 3, 0, NULL, NULL, 'gioi-thieu-thi-truong-noi-that', '', 'Giới thiệu thị trường nội thất', '', 1, 'phumyan');

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
) ENGINE=InnoDB  DEFAULT CHARSET=utf8 AUTO_INCREMENT=15 ;

--
-- Dumping data for table `dos_module_advs`
--

INSERT INTO `dos_module_advs` (`record_id`, `title`, `titleen`, `pic_thumb`, `url`, `create_date`, `start_date`, `end_date`, `hits`, `record_order`, `position`, `type`, `enable`, `dos_usernames_username`) VALUES
(6, 'Quảng cáo', NULL, 'quang-cao.jpg', 'http://phumyan.dos.vn/', '2012-04-12 00:14:48', '2012-03-31 10:00:00', '2012-05-30 10:00:00', 0, 1, 'left', '_bank', 1, 'phumyan'),
(7, 'Quảng cáo 2', NULL, 'quang-cao-2.jpg', 'http://phumyan.dos.vn/', '2012-04-12 00:16:26', '2012-03-31 10:00:00', '2012-05-30 10:00:00', 0, 2, 'left', '_bank', 1, 'phumyan'),
(8, 'Quảng cáo', NULL, 'quang-cao.jpg', 'http://mayphotocopysieuviet.dos.vn/', '2012-04-12 02:29:32', '2012-03-31 10:00:00', '2012-05-30 10:00:00', 0, 1, 'left', '_bank', 1, 'mayphotocopysieuviet'),
(9, 'hp', NULL, 'hp.jpeg', 'http://dos.vn/', '2012-04-12 02:50:25', '2012-03-31 10:00:00', '2012-05-30 10:00:00', 0, 6, 'right', '_bank', 1, 'mayphotocopysieuviet'),
(10, 'toshiba', NULL, 'toshiba.jpeg', 'http://dos.vn/', '2012-04-12 02:51:09', '2012-03-31 10:00:00', '2012-05-30 10:00:00', 0, 2, 'right', '_bank', 1, 'mayphotocopysieuviet'),
(11, 'Panasonic', NULL, 'panasonic.jpeg', 'http://dos.vn/', '2012-04-12 02:51:56', '2012-03-31 10:00:00', '2012-05-30 10:00:00', 0, 4, 'right', '_bank', 1, 'mayphotocopysieuviet'),
(12, 'Canon', NULL, 'canon.jpeg', 'http://dos.vn/', '2012-04-12 02:52:19', '2012-03-31 10:00:00', '2012-05-30 10:00:00', 0, 5, 'right', '_bank', 1, 'mayphotocopysieuviet'),
(13, 'Xerok', NULL, 'xerok.jpeg', 'http://dos.vn/', '2012-04-12 02:52:59', '2012-03-31 10:00:00', '2012-05-30 10:00:00', 0, 3, 'right', '_bank', 1, 'mayphotocopysieuviet'),
(14, 'Pa nội thất', NULL, 'pa-noi-that.jpg', 'http://dantri.com.vn', '2012-04-13 03:04:28', '2012-04-12 16:00:00', '2012-04-26 16:00:00', 0, 3, 'right', '_bank', 1, 'phumyan');

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
) ENGINE=InnoDB  DEFAULT CHARSET=utf8 AUTO_INCREMENT=37 ;

--
-- Dumping data for table `dos_module_banners`
--

INSERT INTO `dos_module_banners` (`banner_id`, `banner_date`, `banner_name`, `banner_url`, `banner_link`, `banner_order`, `banner_type`, `position`, `enable`, `dos_usernames_username`) VALUES
(3, '2012-04-11 23:53:01', 'Logo', 'logo.png', '', 1, 'logo', 'default', 1, 'phumyan'),
(4, '2012-04-12 00:04:49', 'Banner', 'banner.jpg', '', 2, 'banners', 'default', 1, 'phumyan'),
(5, '2012-04-12 00:05:01', 'Banner 1', 'banner-1.jpg', '', 3, 'banners', 'default', 1, 'phumyan'),
(6, '2012-04-12 00:05:03', 'logo', 'logo.png', '', 1, 'logo', 'default', 1, 'mayphotocopysieuviet'),
(7, '2012-04-12 00:05:13', 'Banner 2', 'banner-2.jpg', '', 4, 'banners', 'default', 1, 'phumyan'),
(8, '2012-04-12 00:05:24', 'Banner 3', 'banner-3.jpg', '', 5, 'banners', 'default', 1, 'phumyan'),
(9, '2012-04-12 00:05:38', 'Banner 4', 'banner-4.jpg', '', 6, 'banners', 'about', 1, 'phumyan'),
(10, '2012-04-12 00:05:51', 'Banner 5', 'banner-5.jpg', '', 7, 'banners', 'about', 1, 'phumyan'),
(11, '2012-04-12 00:06:12', 'Banner 6', 'banner-6.jpg', '', 8, 'banners', 'products', 1, 'phumyan'),
(12, '2012-04-12 00:06:28', 'Banner 7', 'banner-7.jpg', '', 9, 'banners', 'products', 1, 'phumyan'),
(13, '2012-04-12 00:06:44', 'Banner 8', 'banner-8.jpg', '', 10, 'banners', 'products', 1, 'phumyan'),
(14, '2012-04-12 00:09:03', 'Banner 9', 'banner-86.jpg', '', 11, 'banners', 'news', 1, 'phumyan'),
(15, '2012-04-12 00:09:34', 'Banner 10', 'banner-10.jpg', '', 12, 'banners', 'news', 1, 'phumyan'),
(16, '2012-04-12 00:09:50', 'Banner 11', 'banner-11.jpg', '', 13, 'banners', 'news', 1, 'phumyan'),
(17, '2012-04-12 00:10:15', 'Banner 12', 'banner-12.jpg', '', 14, 'banners', 'services', 1, 'phumyan'),
(18, '2012-04-12 00:10:47', 'Banner 13', 'banner-13.jpg', '', 15, 'banners', 'services', 1, 'phumyan'),
(19, '2012-04-12 00:11:38', 'Banner 14', 'banner-14.jpg', '', 16, 'banners', 'contact', 1, 'phumyan'),
(20, '2012-04-12 00:11:49', 'Banner 15', 'banner-15.jpg', '', 17, 'banners', 'contact', 1, 'phumyan'),
(21, '2012-04-12 00:12:13', 'Banner 16', 'banner-16.jpg', '', 18, 'banners', 'video', 1, 'phumyan'),
(22, '2012-04-12 00:12:26', 'Banner 17', 'banner-17.jpg', '', 19, 'banners', 'video', 1, 'phumyan'),
(23, '2012-04-12 00:58:23', 'Banner', 'banner.jpg', '', 2, 'banners', 'default', 1, 'mayphotocopysieuviet'),
(24, '2012-04-12 01:03:46', 'Banner 1', 'banner-1.jpg', '', 3, 'banners', 'default', 1, 'mayphotocopysieuviet'),
(25, '2012-04-12 01:04:13', 'Banner 2', 'banner-2.jpg', '', 4, 'banners', 'default', 1, 'mayphotocopysieuviet'),
(26, '2012-04-12 01:04:26', 'Banner 3', 'banner-3.jpg', '', 5, 'banners', 'default', 1, 'mayphotocopysieuviet'),
(27, '2012-04-12 01:04:50', 'Banner 4', 'banner-4.jpg', '', 6, 'banners', 'about', 1, 'mayphotocopysieuviet'),
(28, '2012-04-12 01:06:19', 'Banner 5', 'banner-5.jpg', '', 7, 'banners', 'contact', 1, 'mayphotocopysieuviet'),
(29, '2012-04-12 01:07:21', 'Banner 7', 'banner-7.jpg', '', 8, 'banners', 'services', 1, 'mayphotocopysieuviet'),
(30, '2012-04-12 01:07:36', 'Banner 8', 'banner-8.jpg', '', 9, 'banners', 'news', 1, 'mayphotocopysieuviet'),
(31, '2012-04-12 01:08:09', 'Banner 9', 'banner-73.jpg', '', 10, 'banners', 'products', 1, 'mayphotocopysieuviet'),
(32, '2012-04-12 01:10:28', 'Banner 11', 'banner-11.jpg', '', 11, 'banners', 'products', 1, 'mayphotocopysieuviet'),
(33, '2012-04-12 01:11:14', 'Banner 10', 'banner-10.jpg', '', 12, 'banners', 'products', 1, 'mayphotocopysieuviet'),
(34, '2012-04-12 02:37:36', 'Banner 15', 'banner-15.jpg', '', 13, 'banners', 'services', 1, 'mayphotocopysieuviet'),
(35, '2012-04-12 02:38:20', 'Banner 12', 'banner-12.jpg', '', 14, 'banners', 'services', 1, 'mayphotocopysieuviet'),
(36, '2012-04-12 02:38:56', 'Banner 13', 'banner-13.jpg', '', 15, 'banners', 'products', 1, 'mayphotocopysieuviet');

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
) ENGINE=InnoDB  DEFAULT CHARSET=utf8 AUTO_INCREMENT=10 ;

--
-- Dumping data for table `dos_module_contacts`
--

INSERT INTO `dos_module_contacts` (`record_id`, `title`, `titleen`, `content`, `contenten`, `create_date`, `record_order`, `hit`, `hot`, `tag`, `tagen`, `description`, `descriptionen`, `enable`, `dos_usernames_username`) VALUES
(8, 'Liên hệ với chúng tôi', '', '<p><span style="color:#008000;font-size:medium;"><strong>DNTN SIÊU VIỆT</strong></span></p>\n<p>3A/1 Đoàn Văn Cự, P. Tam Hiệp, TP. Biên Hòa, Tỉnh Đồng Nai</p>\n<p>Điện thoại: 061. 629 0909 - 061. 3914 541</p>\n<p>Fax: 061. 629 0819</p>\n<p>Hotline: 0937 107 888 - Mr. Nguyên - Phụ trách Kinh doanh.</p>\n<p>Email: nguyensieuviet@yahoo.com.vn</p>\n<p>Website: www.mayphotocopysieuviet.com</p>', '', '2012-04-12 02:03:01', 1, 0, 0, 'lien-he-voi-chung-toi', '', '', '', '1', 'mayphotocopysieuviet'),
(9, 'Liên hệ', '', '<p>0937.107 888 (Mr. Nguyên)</p>', '', '2012-04-12 02:03:32', 2, 0, 1, 'lien-he', '', '', '', '1', 'mayphotocopysieuviet');

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
('Trang chủ', NULL, 'default', NULL, 1, '', 'Homepage', 'Mô ta', 'Description', 'dos'),
('Giới thiệu', NULL, 'about', NULL, 2, '', '1', '', 'dsdsdsd', 'dos'),
('Sản phẩm', NULL, 'products', NULL, 3, 'Tieu de', 'Titiel website', 'Mọ', '', 'dos'),
('Dịch vụ', NULL, 'services', NULL, 4, '', '1', '', '1', 'dos'),
('Liên hệ', NULL, 'contact', NULL, 5, 'Tieu de Lien he', 'Title Contact', 'Mo ta', 'Mo ta en', 'dos'),
('Trang chủ', NULL, 'default', NULL, 1, NULL, NULL, NULL, NULL, 'mayphotocopysieuviet'),
('Giới thiệu', NULL, 'about', NULL, 2, NULL, NULL, NULL, NULL, 'mayphotocopysieuviet'),
('Sản phẩm', NULL, 'products', NULL, 3, NULL, NULL, NULL, NULL, 'mayphotocopysieuviet'),
('Dịch vụ', NULL, 'services', NULL, 4, NULL, NULL, NULL, NULL, 'mayphotocopysieuviet'),
('Tin tức & sự kiện', NULL, 'news', NULL, 5, NULL, NULL, NULL, NULL, 'mayphotocopysieuviet'),
('Liên hệ', NULL, 'contact', NULL, 6, NULL, NULL, NULL, NULL, 'mayphotocopysieuviet'),
('Trang chủ', NULL, 'default', NULL, 1, NULL, NULL, NULL, NULL, 'phumyan'),
('Giới thiệu', NULL, 'about', NULL, 2, NULL, NULL, NULL, NULL, 'phumyan'),
('Sản phẩm', NULL, 'products', NULL, 3, NULL, NULL, NULL, NULL, 'phumyan'),
('Dịch vụ', NULL, 'services', NULL, 4, NULL, NULL, NULL, NULL, 'phumyan'),
('Tin tức & sự kiện', NULL, 'news', NULL, 5, NULL, NULL, NULL, NULL, 'phumyan'),
('Video', NULL, 'video', NULL, 6, NULL, NULL, NULL, NULL, 'phumyan'),
('Liên hệ', NULL, 'contact', NULL, 7, NULL, NULL, NULL, NULL, 'phumyan'),
('Trang chủ', NULL, 'default', NULL, 1, NULL, NULL, NULL, NULL, 'tinhungphat'),
('Giới thiệu', NULL, 'about', NULL, 2, NULL, NULL, NULL, NULL, 'tinhungphat'),
('Sản phẩm', NULL, 'products', NULL, 3, NULL, NULL, NULL, NULL, 'tinhungphat'),
('Dịch vụ', NULL, 'services', NULL, 4, NULL, NULL, NULL, NULL, 'tinhungphat'),
('Tin tức & sự kiện', NULL, 'news', NULL, 5, NULL, NULL, NULL, NULL, 'tinhungphat'),
('Video', NULL, 'video', NULL, 6, NULL, NULL, NULL, NULL, 'tinhungphat'),
('Liên hệ', NULL, 'contact', NULL, 7, NULL, NULL, NULL, NULL, 'tinhungphat');

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
) ENGINE=InnoDB  DEFAULT CHARSET=utf8 AUTO_INCREMENT=15 ;

--
-- Dumping data for table `dos_module_news`
--

INSERT INTO `dos_module_news` (`record_id`, `title`, `titleen`, `postdate`, `pic_thumb`, `preview`, `previewen`, `content`, `contenten`, `tag`, `tagen`, `description`, `descriptionen`, `hits`, `record_order`, `hot`, `extra_field1`, `extra_field2`, `enable`, `dos_module_item_cat_cat_id`) VALUES
(13, '6 mẹo chọn ghế sofa hoàn hảo', '', '2012-04-12 02:12:11', '6-meo-chon-ghe-sofa-hoan-hao.jpg', '<p>Việc chọn một bộ sofa dường như không phải là một công việc dễ dàng khi phong cách, hình dạng, màu sắc, và giá cả của các bộ sofa này rất đa dạng.</p>', '', '<p>Để tiết kiệm thời gian, tiền bạc và công sức, bạn có thể tham khảo một số mẹo sau trước khi lựa chọn một bộ sofa phù hợp cho không gian nhà.</p>\n<p>1. Xác định kích thước</p>\n<p>Nếu phòng khách nhà bạn có diện tích lớn, bạn cần quyết định xem bạn muốn kê bao nhiêu chiếc ghế. Bạn có muốn dùng đi-văng hay ghế bành? Bàn nhỏ kiểu bàn cà phê liệu có cần thiết cho không gian nhà bạn? Nếu câu trả lời là có thì một bộ sofa đơn giản, hình chữ L có lẽ là lựa chọn phù hợp nhất. Trong trường hợp bạn muốn bộ sofa là điểm nhấn của phòng khách thì bạn cần đến một chiếc đi-văng đủ lớn và nhiều chỗ ngồi.</p>\n<p>Chú ý đến kích thước ghế</p>\n<p>Nếu không gian nhà bạn khiêm tốn, thì hẳn là bạn cần một chiếc trường kỷ nhỏ hơn.</p>\n<p>2. Quyết định hướng kê sofa</p>\n<p>Bạn cần định hình trước sofa sẽ được sắp xếp thế nào? Kê sofa để xem TV, để gia đình quây quần tụ họp, chơi trò chơi? Bạn có thể kê sofa tạo thành vòng tròn, hoặc nửa vòng tròn, lấy bàn làm trung tâm</p>', '', '6-meo-chon-ghe-sofa-hoan-hao', '', 'Chú ý đến kích thước ghế\n\nNếu không gian nhà bạn khiêm tốn, thì hẳn là bạn cần một chiếc trường kỷ nhỏ hơn.\n\n2. Quyết định hướng kê sofa', '', 0, 1, 1, NULL, NULL, 1, 9),
(14, 'Căn hộ nhỏ mà không nhỏ', '', '2012-04-13 02:14:53', 'can-ho-nho-ma-khong-nho.jpg', '<p style="text-align:left;">Tuy chỉ có diện tích 35 m2 nhưng ngôi nhà nhỏ này vẫn rất thoáng đãng, đầy đủ tiện nghi và đẹp mắt nhờ cách thiết kế, bố trí sáng tạo như bậc cầu thang kiêm nơi để quần áo…</p>', '', '<p>Tuy chỉ có diện tích 35 m2 nhưng ngôi nhà nhỏ này vẫn rất thoáng đãng, đầy đủ tiện nghi và đẹp mắt nhờ cách thiết kế, bố trí sáng tạo như bậc cầu thang kiêm nơi để quần áo…</p>\r\n<p>Phòng khách nhỏ bố trí những đồ vật đơn giản như salon chữ L, bàn gỗ, TV treo tường..</p>\r\n<p>fggggdgfdgfgfdgfgf</p>\r\n<p style="text-align:center;"><img src="/public/userfiles/image/phumyan/image/can-ho-3.jpg" alt="" width="480" height="468" /></p>\r\n<p style="text-align:center;">dgfgfggfdgfdg</p>\r\n<p style="text-align:center;">ggffgfgdf</p>\r\n<p style="text-align:center;"> <img src="/public/userfiles/image/phumyan/image/giuong.jpg" alt="" width="200" height="135" /></p>', '', 'can-ho-nho-ma-khong-nho', '', '', '', 0, 2, 1, NULL, NULL, 1, 9);

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
) ENGINE=InnoDB  DEFAULT CHARSET=utf8 AUTO_INCREMENT=14 ;

--
-- Dumping data for table `dos_module_news_cat`
--

INSERT INTO `dos_module_news_cat` (`cat_id`, `cat_parent_id`, `cat_title`, `cat_titleen`, `preview`, `previewen`, `tag`, `tagen`, `description`, `descriptionen`, `pic_full`, `cat_order`, `cat_extra1`, `cat_extra2`, `cat_enable`, `dos_usernames_username`) VALUES
(9, 0, 'Tin TứcTrong Ngành', '', NULL, NULL, 'tin-tuctrong-nganh', '', 'Tin TứcTrong Ngành', '', 'tin-tuctrong-nganh.jpg', 1, NULL, NULL, 1, 'phumyan'),
(10, 0, 'Thông tin Công nghệ', '', NULL, NULL, 'thong-tin-cong-nghe', '', 'Thông tin Công nghệ', '', '', 1, NULL, NULL, 1, 'mayphotocopysieuviet'),
(11, 0, 'Góc kỹ thuật', '', NULL, NULL, 'goc-ky-thuat', '', 'Góc kỹ thuật', '', '', 2, NULL, NULL, 1, 'mayphotocopysieuviet'),
(12, 0, 'Tuyển dụng', '', NULL, NULL, 'tuyen-dung', '', 'Tuyển dụng', '', '', 3, NULL, NULL, 1, 'mayphotocopysieuviet'),
(13, 0, 'Cẩm nang tiêu dùng', '', NULL, NULL, 'cam-nang-tieu-dung', '', 'Cẩm nang tiêu dùng', '', '', 4, NULL, NULL, 1, 'mayphotocopysieuviet');

-- --------------------------------------------------------

--
-- Table structure for table `dos_module_pcounter_save`
--

CREATE TABLE IF NOT EXISTS `dos_module_pcounter_save` (
  `save_name` varchar(10) NOT NULL,
  `save_value` int(11) NOT NULL,
  `dos_usernames_username` varchar(45) NOT NULL,
  KEY `fk_dos_module_pcounter_save_dos_usernames1` (`dos_usernames_username`)
) ENGINE=InnoDB DEFAULT CHARSET=utf8;

--
-- Dumping data for table `dos_module_pcounter_save`
--

INSERT INTO `dos_module_pcounter_save` (`save_name`, `save_value`, `dos_usernames_username`) VALUES
('day_time', 2456030, 'dos'),
('max_count', 0, 'dos'),
('counter', 0, 'dos'),
('yesterday', 0, 'dos'),
('day_time', 2456032, 'phumyan'),
('max_count', 0, 'phumyan'),
('counter', 0, 'phumyan'),
('yesterday', 0, 'phumyan'),
('day_time', 2456032, 'mayphotocopysieuviet'),
('max_count', 0, 'mayphotocopysieuviet'),
('counter', 0, 'mayphotocopysieuviet'),
('yesterday', 0, 'mayphotocopysieuviet'),
('day_time', 2456032, 'tinhungphat'),
('max_count', 1, 'tinhungphat'),
('counter', 1, 'tinhungphat'),
('yesterday', 1, 'tinhungphat');

-- --------------------------------------------------------

--
-- Table structure for table `dos_module_pcounter_users`
--

CREATE TABLE IF NOT EXISTS `dos_module_pcounter_users` (
  `user_ip` varchar(39) NOT NULL,
  `user_time` int(11) NOT NULL,
  `dos_usernames_username` varchar(45) NOT NULL,
  KEY `fk_dos_module_pcounter_users_dos_usernames1` (`dos_usernames_username`)
) ENGINE=InnoDB DEFAULT CHARSET=utf8;

--
-- Dumping data for table `dos_module_pcounter_users`
--

INSERT INTO `dos_module_pcounter_users` (`user_ip`, `user_time`, `dos_usernames_username`) VALUES
('''127.0.0.1''', 1334395246, 'phumyan');

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
) ENGINE=InnoDB  DEFAULT CHARSET=utf8 AUTO_INCREMENT=34 ;

--
-- Dumping data for table `dos_module_products`
--

INSERT INTO `dos_module_products` (`record_id`, `title`, `titleen`, `postdate`, `pic_thumb`, `pic_full`, `pic_desc`, `preview`, `previewen`, `content`, `contenten`, `tag`, `tagen`, `description`, `descriptionen`, `hits`, `record_order`, `unit`, `hot`, `specials`, `extra_field1`, `extra_field2`, `extra_field3`, `extra_field4`, `enable`, `dos_module_item_cat_cat_id`) VALUES
(21, 'Nội thất phòng khách', '', '2012-04-12 00:20:22', 'noi-that-phong-khach-thumb.jpg', 'noi-that-phong-khach.jpg', NULL, NULL, NULL, '<p>Mô tả chi tiết ...</p>', '', 'noi-that-phong-khach', '', 'Mô tả chi tiết ...', '', 0, 4, NULL, 1, NULL, NULL, NULL, NULL, NULL, 1, 19),
(22, 'Nội thất phòng giải trí', '', '2012-04-12 00:22:15', 'noi-that-phong-giai-tri-thumb.jpg', 'noi-that-phong-giai-tri.jpg', NULL, NULL, NULL, '<p>Mô tả chi tiết ....</p>', '', 'noi-that-phong-giai-tri', '', 'Nội thất phòng giải trí', '', 0, 3, NULL, 1, NULL, NULL, NULL, NULL, NULL, 1, 19),
(23, 'Nội thất phòng ngủ', '', '2012-04-12 00:26:09', 'noi-that-phong-ngu-thumb.jpg', 'noi-that-phong-ngu.jpg', NULL, NULL, NULL, '<p>Mô tả chi tiết ...</p>', '', 'noi-that-phong-ngu', '', 'Nội thất phòng ngủ', '', 0, 2, NULL, 1, NULL, NULL, NULL, NULL, NULL, 1, 21),
(24, 'Nội thất bếp ăn', '', '2012-04-12 00:26:55', 'noi-that-bep-an-thumb.jpg', 'noi-that-bep-an.jpg', NULL, NULL, NULL, '<p>Mô tả chi tiết ...</p>', '', 'noi-that-bep-an', '', 'Nội thất bếp ăn', '', 0, 1, NULL, 1, NULL, NULL, NULL, NULL, NULL, 1, 19),
(25, 'Phòng tiếp khách', '', '2012-04-12 00:28:56', 'phong-tiep-khach-thumb.jpg', 'phong-tiep-khach.jpg', NULL, NULL, NULL, '<p>Mô tả chi tiết ...</p>', '', 'phong-tiep-khach', '', 'Phòng tiếp khách', '', 0, 5, NULL, 1, NULL, NULL, NULL, NULL, NULL, 1, 19),
(26, 'Trang trí góc nhỏ', '', '2012-04-12 00:33:09', 'trang-tri-goc-nho-thumb.jpg', 'trang-tri-goc-nho.jpg', NULL, NULL, NULL, '<p>Mô tả chi tiết</p>\r\n<table style="width:400px;height:100px;" border="1" align="center"><tbody><tr><td style="text-align:center;">Tình trạng:</td>\r\n<td style="text-align:center;">Có hàng số lượng lớn chưa tiêu tụai giúp tiêu thụ với õ</td>\r\n</tr><tr><td style="text-align:center;">Nhà sản xuất</td>\r\n<td style="text-align:center;">Việt Nam vip</td>\r\n</tr><tr><td style="text-align:center;">Model</td>\r\n<td style="text-align:center;">2012</td>\r\n</tr><tr><td style="text-align:center;">Đánh giá:</td>\r\n<td style="text-align:center;">Chưa có đánh giá</td>\r\n</tr></tbody></table><p style="text-align:center;"> </p>', '', 'trang-tri-goc-nho', '', 'Trang trí góc nhỏ', '', 0, 6, '290000', 1, NULL, NULL, NULL, NULL, NULL, 1, 20),
(27, 'Acer Aspire AS5755G-2452G75Mn (011)', '', '2012-04-13 06:43:13', 'acer-aspire-as5755g-2452g75mn-011-thumb.jpg', 'acer-aspire-as5755g-2452g75mn-011.jpg', NULL, NULL, NULL, '<p>CPU: Intel Core i5 2450M (2.50 GHz 3M L2 cache, 4 threads, turbo boost 3.1Ghz )<br />RAM: 4096 MB DDR3 1333Mhz<br />Chipset: Intel HM67<br />HDD: 750 GB SATA 5400 rpm<br />ODD: DVD RW/ Reader card/ Camera/ Bluetooth/ HDMI/ USB 3.0<br />Graphics: NVIDIA Geforce GT630M DDR3 2 GB<br />Display: 15.60" HD LED LCD<br />Network: 802.11bgn / 100/1000 base /<br />Battery: 6 cell<br />Weight: 2.60 Kg<br />OS: Free DOS<br />Other: Màu đen bóng, bàn phím số - Vga rời 2Gb</p>', '', 'acer-aspire-as5755g-2452g75mn-011', '', 'Acer Aspire AS5755G-2452G75Mn (011)', '', 0, 1, '12000000', 1, NULL, NULL, NULL, NULL, NULL, 1, 27),
(28, 'Asus K43E-VX663', '', '2012-04-13 06:45:16', 'asus-k43e-vx663-thumb.jpg', 'asus-k43e-vx663.jpg', '|asus-k43e-vx663-desc-1.jpg|asus-k43e-vx663-desc-2.jpg', NULL, NULL, '<p>CPU: Intel Core i3 2350M (2.30 GHz 3M L2 cache, 4 threads )<br />RAM: 2048 MB DDR3 1333Mhz<br />Chipset: Intel HM67<br />HDD: 500 GB SATA 5400 rpm<br />ODD: DVD RW/ Reader card/ Camera/ Bluetooth/ HDMI/ Loa Altec Lansing<br />Graphics: INTEL HD graphics 3000 512 MB<br />Display: 14.00" HD Color Shine SLIM (LED backlight)<br />Network: 802.11bgn / 100/1000 base /<br />Battery: 6 cells<br />Weight: 2.20 Kg<br />OS: Free DOS<br />Other: Màu đỏ bóng , keyboard chiclet</p>', '', 'asus-k43e-vx663', '', 'Asus K43E-VX663', '', 0, 2, '1790000', 1, NULL, NULL, NULL, NULL, NULL, 1, 27),
(29, 'Samsung NP300E4Z-A06VN', '', '2012-04-13 07:34:18', 'samsung-np300e4z-a06vn-thumb.jpg', 'samsung-np300e4z-a06vn.jpg', NULL, NULL, NULL, '<p>CPU: Intel Core i3 2350M (2.30 GHz 3M L2 cache, 4 threads )<br />RAM: 4096 MB DDR3 1333Mhz<br />Chipset: Intel HM67<br />HDD: 500 GB SATA 5400 rpm<br />ODD: DVD RW/ Reader card/ Camera/ Bluetooth/ HDMI/ USB 3.0<br />Graphics: INTEL HD graphics 3000 512 MB<br />Display: 14.00" Super Bright Anti-reflective HD<br />Network: 802.11bgn / 100/1000 base /<br />Battery: 6 cell<br />Weight: 2.20 Kg<br />OS: Free DOS<br />Other: Màu đen sọc chống trầy, keyboard chiclet</p>', '', 'samsung-np300e4z-a06vn', '', 'Samsung NP300E4Z-A06VN', '', 0, 3, '12000000', 1, NULL, NULL, NULL, NULL, NULL, 1, 27),
(30, 'Toshiba Satellite L740-1222U', '', '2012-04-13 07:35:47', 'toshiba-satellite-l740-1222u-thumb.jpg', 'toshiba-satellite-l740-1222u.jpg', NULL, NULL, NULL, '<p>CPU: Intel Core i3 380M (2.53 GHz 3M L2 cache, 4 threads )<br />RAM: 2048 MB DDR3 1333Mhz<br />Chipset: Intel HM55<br />HDD: 500 GB SATA 5400 rpm<br />ODD: DVD RW/ Reader card/ Camera/ Bluetooth<br />Graphics: INTEL HD graphics 512 MB<br />Display: 14.00" HD WLED Backlight (16:9)<br />Network: 802.11bgn / 100/1000 base /<br />Battery: 6 cell<br />Weight: 2.20 Kg<br />OS: Free DOS<br />Other: Màu đen bóng, hoa văn chìm 3D</p>', '', 'toshiba-satellite-l740-1222u', '', 'Toshiba Satellite L740-1222U', '', 0, 4, '9500000', 1, NULL, NULL, NULL, NULL, NULL, 1, 27),
(31, 'Intel Dual Core E6700 - 3.2Ghz', '', '2012-04-13 07:36:51', 'intel-dual-core-e6700-3-2ghz-thumb.jpg', 'intel-dual-core-e6700-3-2ghz.jpg', NULL, NULL, NULL, '<p>Tên Linh Kiện: Intel Dual Core E6700 - 3.2Ghz<br />Mô Tả: 2MB K BUS 1066 LGA775</p>', '', 'intel-dual-core-e6700-32ghz', '', 'Intel Dual Core E6700 - 3.2Ghz', '', 0, 5, '1850000', 1, NULL, NULL, NULL, NULL, NULL, 1, 31),
(32, 'Intel Dual Core E5700 - 3.0Ghz', '', '2012-04-13 07:37:37', 'intel-dual-core-e5700-3-0ghz-thumb.jpg', 'intel-dual-core-e5700-3-0ghz.jpg', NULL, NULL, NULL, '<p>Tên Linh Kiện: Intel Dual Core E5700 - 3.0Ghz<br />Mô Tả: 2MB K BUS 800 LGA775</p>', '', 'intel-dual-core-e5700-30ghz', '', 'Intel Dual Core E5700 - 3.0Ghz', '', 0, 6, '1440000', 1, NULL, NULL, NULL, NULL, NULL, 1, 29),
(33, '500 Gb Toshiba', '', '2012-04-13 07:38:50', '500-gb-toshiba-thumb.jpg', '500-gb-toshiba.jpg', NULL, NULL, NULL, '<p>Tên Linh Kiện: 500 Gb Toshiba<br />Mô Tả: Sata Notebook - 2.5” – 5.400 rpm</p>', '', '500-gb-toshiba', '', '500 Gb Toshiba', '', 0, 7, '1950000', 1, NULL, NULL, NULL, NULL, NULL, 1, 32);

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
) ENGINE=InnoDB  DEFAULT CHARSET=utf8 AUTO_INCREMENT=33 ;

--
-- Dumping data for table `dos_module_products_cat`
--

INSERT INTO `dos_module_products_cat` (`cat_id`, `cat_parent_id`, `cat_title`, `cat_titleen`, `preview`, `previewen`, `tag`, `tagen`, `description`, `descriptionen`, `pic_full`, `pic_desc`, `cat_order`, `cat_extra1`, `cat_extra2`, `cat_enable`, `dos_usernames_username`) VALUES
(19, 0, 'Phòng khách', '', NULL, NULL, 'phong-khach', '', 'Phòng khách', '', 'phong-khach.jpg', NULL, 4, NULL, NULL, 1, 'phumyan'),
(20, 0, 'Phòng giải trí', '', NULL, NULL, 'phong-giai-tri', '', 'Phòng giải trí', '', 'phong-giai-tri.jpg', NULL, 4, NULL, NULL, 1, 'phumyan'),
(21, 0, 'Phòng ngủ', '', NULL, NULL, 'phong-ngu', '', 'Phòng ngủ', '', 'phong-ngu.jpg', NULL, 1, NULL, NULL, 1, 'phumyan'),
(22, 0, 'Bếp ăn', '', NULL, NULL, 'bep-an', '', 'Bếp ăn', '', 'bep-an.jpg', NULL, 1, NULL, NULL, 1, 'phumyan'),
(23, 0, 'Máy Photocopy', '', NULL, NULL, 'may-photocopy', '', 'Máy Photocopy', '', 'may-photocopy.jpeg', NULL, 3, NULL, NULL, 1, 'mayphotocopysieuviet'),
(24, 0, 'Máy In', '', NULL, NULL, 'may-in', '', 'Máy In', '', 'may-in.jpeg', NULL, 3, NULL, NULL, 1, 'mayphotocopysieuviet'),
(25, 0, 'Máy Fax', '', NULL, NULL, 'may-fax', '', 'Máy Fax', '', 'may-fax.jpeg', NULL, 2, NULL, NULL, 1, 'mayphotocopysieuviet'),
(26, 0, 'Mực -  Linh kiện - Vật tư', '', NULL, NULL, 'muc-linh-kien-vat-tu', '', '', '', 'muc--linh-kien-vat-tu.jpeg', NULL, 2, NULL, NULL, 1, 'mayphotocopysieuviet'),
(27, 0, 'Laptop', '', NULL, NULL, 'laptop', '', 'laptop', '', 'laptop.jpg', NULL, 1, NULL, NULL, 1, 'tinhungphat'),
(28, 0, 'Máy bộ', '', NULL, NULL, 'may-bo', '', 'máy bộ', '', 'may-bo.jpg', NULL, 2, NULL, NULL, 1, 'tinhungphat'),
(29, 0, 'Linh kiện laptop', '', NULL, NULL, 'linh-kien-laptop', '', 'Linh kiện laptop', '', '', NULL, 3, NULL, NULL, 1, 'tinhungphat'),
(30, 29, 'RAM', '', NULL, NULL, 'ram', '', 'RAM', '', 'ram.Jpeg', NULL, 4, NULL, NULL, 1, 'tinhungphat'),
(31, 29, 'Bộ vi xử lý', '', NULL, NULL, 'bo-vi-xu-ly', '', 'Bộ vi xử lý', '', 'bo-vi-xu-ly.jpg', NULL, 5, NULL, NULL, 1, 'tinhungphat'),
(32, 0, 'Linh kiện máy bộ', '', NULL, NULL, 'linh-kien-may-bo', '', 'Linh kiện máy bộ', '', '', NULL, 6, NULL, NULL, 1, 'tinhungphat');

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
) ENGINE=InnoDB  DEFAULT CHARSET=utf8 AUTO_INCREMENT=10 ;

--
-- Dumping data for table `dos_module_services`
--

INSERT INTO `dos_module_services` (`record_id`, `title`, `titleen`, `preview`, `previewen`, `content`, `contenten`, `pic_full`, `hit`, `created`, `record_order`, `hot`, `extra_field1`, `extra_field2`, `tag`, `tagen`, `description`, `descriptionen`, `activated`, `dos_usernames_username`) VALUES
(6, 'Dịch vụ Bảo trì', '', NULL, NULL, '<p style="text-align:justify;"><span style="color:#008000;"><strong>SIÊU VIỆT CUNG CẤP MÁY PHOTOCOPY CHUYÊN NGHIỆP, LUÔN SÀN LỌC NHỮNG LOẠI MÁY THÔNG DỤNG NHẤT ĐỂ CUNG CẤP TRÊN THỊ TRƯỜNG.</strong></span></p>\n<p style="text-align:justify;"><span style="color:#ff0000;"><strong>DỊCH VỤ BẢO TRÌ ĐỊNH KỲ:</strong></span></p>\n<p style="text-align:justify;">Đây là loại hình dịch vụ được áp dụng thông dụng nhất hiện nay. Loại hình dịch vụ này có các hình thức như sau:</p>\n<p style="text-align:justify;"><span style="text-decoration:underline;"><strong>Hợp đồng bảo trì ký hàng năm:</strong></span></p>\n<p style="text-align:justify;">- Quý khách và <span style="color:#008000;"><strong>SIÊU VIỆT</strong></span> sẽ ký một hợp đồng bảo trì theo thời hạn 12 tháng một lần. Quý khách sẽ chỉ phải trả một khoản phí cố định mà không cần quan tâm là thiết bị phải sửa chữa bao nhiêu lần trong tháng.</p>\n<p style="text-align:justify;"><span style="text-decoration:underline;"><strong>Hợp đồng Meter Charge:</strong></span></p>\n<p style="text-align:justify;">- Với loại hình dịch vụ này, Quý khách sẽ không phải quan tâm đến việc thay thế vật tư cho máy (kể cả mực). Thiết bị cũng sẽ được chăm sóc như dịch vụ bảo trì hàng năm nhưng Quý khách chỉ phải thanh toán một số tiền theo số bản chụp (in) mà máy đã thực hiện trong tháng. Giá thành mỗi bản chụp (in) tuỳ thuộc vào từng loại thiết bị cụ thể</p>\n<p style="text-align:justify;"><strong><em>Khi hợp đồng được ký kết, <span style="color:#008000;">SIÊU VIỆT</span> sẽ có trách nhiệm thực hiện những công việc sau:</em></strong></p>\n<p style="text-align:justify;">- Kiểm tra, bảo dưỡng cân chỉnh và vệ sinh máy định kỳ (phần mềm và phần cứng) vào 1 ngày được ấn định hàng tháng.</p>\n<p style="text-align:justify;">- Đến kiểm tra, sửa chữa (miễn phí) vào bất cứ khi nào máy gặp trục trặc.</p>\n<p style="text-align:justify;">- Cho khách hàng mượn máy khác đang trong tình trạng hoạt động tốt khi cần nhiều thời gian cho công việc sửa chữa.</p>\n<p style="text-align:justify;">- Giám định chi tiết và báo giá vật tư, linh kiện (cần thay thế) chính phẩm với mức giá ưu đãi cho khách hàng.</p>\n<p style="text-align:justify;">- Cung cấp cho khách hàng những hướng dẫn sử dụng máy cần thiết.</p>\n<p style="text-align:center;"><span style="font-size:large;"><strong><span style="color:#008000;"> </span></strong></span></p>\n<p style="text-align:center;"><span style="font-size:large;"><strong><span style="color:#008000;">SIÊU VIỆT</span></strong> LUÔN SÁT CÁNH CÙNG THÀNH CÔNG CỦA BẠN !</span></p>\n<p style="text-align:center;"> </p>\n<p style="text-align:center;"> </p>\n<p style="text-align:center;">Hotline: 0937 107 888 - Mr. Nguyên - Phụ trách Kinh doanh.</p>\n<p style="text-align:center;">3A/1 Đoàn Văn Cự, P. Tam Hiệp, TP. Biên Hòa, Tỉnh Đồng Nai<br />Email: nguyensieuviet@yahoo.com.vn<br />Website: www.mayphotocopysieuviet.com</p>\n<p style="text-align:center;"><span style="font-size:large;"> </span></p>', '', 'dich-vu-bao-tri.jpg', 2, '2012-04-12 01:44:54', 2, 0, NULL, NULL, 'dich-vu-bao-tri', '', 'Dịch vụ Bảo trì', '', 1, 'mayphotocopysieuviet'),
(7, 'Dịch vụ cho thuê', '', NULL, NULL, '<p style="text-align:justify;"><span style="color:#008000;"><strong>DỊCH VỤ THUÊ MÁY VĂN PHÒNG LÀ LOẠI HÌNH DỊCH VỤ ĐƯỢC ÁP DỤNG RỘNG RÃI Ở CÁC NƯỚC PHÁT TRIỂN VÀ Ở VIỆT NAM, NÓ CŨNG ĐANG LÀ SỰ LỰA CHỌN TỐI ƯU CỦA NHIỀU CÔNG TY LIÊN DOANH VÀ CÔNG TY NƯƠC NGOÀI. KHI LỰA CHỌN LOẠI HÌNH NÀY, QUÝ KHÁCH HÀNG KHÔNG PHẢI LO KHOẢN ĐẦU TƯ BAN ĐÂU...</strong></span></p>\n<p style="text-align:justify;"><strong><span style="color:#008000;">SIÊU VIỆT</span> - CHUYÊN CHO THUÊ THIẾT BỊ VĂN PHÒNG SAU:</strong></p>\n<p style="text-align:justify;">- Máy Photocopy đen trắng và màu</p>\n<p style="text-align:justify;">- Máy đa năng (Copy - Fax - In - Scan)</p>\n<p style="text-align:justify;"><strong><span style="color:#008000;">SIÊU VIỆT</span> - PHỤC VỤ</strong></p>\n<p style="text-align:justify;">* Công tác hoạt động văn phòng - dài hạn</p>\n<p style="text-align:justify;">* Các hội nghị, hội thảo - ngắn hạn</p>\n<p style="text-align:justify;">Tất cả các máy cung cấp đều được đảm bảo các tính năng như sau:</p>\n<p style="text-align:justify;">&gt;&gt; Máy copy kỹ thuật số - tính năng cao<br />&gt;&gt; Tốc độ sao chụp – in mạng tối thiểu 23 - 75 trang/phút.<br />&gt;&gt; Máy sao chụp hai mặt tự động - thật tiện lợi trong sử dụng.<br />&gt;&gt; Sao chụp miễn phí 1000 trang mỗi tháng.<br />&gt;&gt; Có khả năng nâng cấp thêm các chức năng fax và quét mạng.</p>\n<p style="text-align:justify;"><strong><span style="color:#008000;">SIÊU VIỆT</span> - NHÀ CUNG CẤP</strong></p>\n<p style="text-align:justify;">Công ty <strong><span style="color:#008000;">SIÊU VIỆT</span></strong> - nhà cung cấp các dịch vụ thuê máy văn phòng uy tín tại Đồng Nai. Mục tiêu trong kinh doanh của <span style="color:#008000;"><strong>SIÊU VIỆT</strong></span> luôn đặt chữ tín lên hàng đầu và xây dựng một hệ thống dịch vụ cho thuê máy văn phòng khép kín. Với kinh nghiệm chuyên sâu về nghành nghề chúng tôi luôn đ­a ra các giải pháp tối ­ưu - tiết kiệm chi phí - linh hoạt trong sử dụng cho các khách hàng có nhu cầu về thiết bị máy văn phòng. Sau quá trình thành lập và phát triển Công ty <strong><span style="color:#008000;">SIÊU VIỆT</span></strong> đã đạt đ­ược nhiều thành qủa cao. Hiện nay Công ty <strong><span style="color:#008000;">SIÊU VIỆT</span></strong> đang thực hiện bảo hành, cho thuê hơn 1000 khách hàng sử dụng các loại thiết bị văn phòng tại Đồng Nai và các tỉnh phía Nam. Các khách hàng quen thuộc sử dụng dịch vụ của chúng tôi đó là các công ty, khách sạn, tổ chức, văn phòng n­ước ngoài có nhu cầu sao chụp in ấn.</p>\n<p style="text-align:justify;"><strong> </strong></p>\n<p style="text-align:center;"><span style="color:#ff0000;font-size:medium;"><strong>&gt;&gt; LIÊN HỆ CHI TIẾT &lt;&lt;</strong></span></p>\n<p style="text-align:center;"><span style="font-size:medium;"><strong><span style="color:#008000;">DNTN SIÊU VIỆT</span></strong></span></p>\n<p style="text-align:center;"><span style="font-size:medium;">3A/1 Đoàn Văn Cự, P. Tam Hiệp, TP. Biên Hòa, Tỉnh Đồng Nai</span><br /><span style="font-size:medium;">Hotline: 0937 107 888 - Mr. Nguyên - Phụ trách Kinh doanh.</span><br /><span style="font-size:medium;">Email: nguyensieuviet@yahoo.com.vn</span><br /><span style="font-size:medium;">Website: www.mayphotocopysieuviet.com</span></p>', '', '', 1, '2012-04-12 01:56:24', 3, 0, NULL, NULL, 'dich-vu-cho-thue', '', 'DNTN SIÊU VIỆT', '', 1, 'mayphotocopysieuviet'),
(8, 'Dịch vụ vẫn chuyển', '', NULL, NULL, '<p>Dịch vụ vẫn chuyển</p>', '', '', 1, '2012-04-12 02:10:55', 1, 0, NULL, NULL, 'dich-vu-van-chuyen', '', '', '', 1, 'phumyan'),
(9, 'Đào tạo kỹ thuật viên', '', NULL, NULL, '<p style="text-align:justify;">Truyền đạt nhiệt tình lại toàn bộ lý thuyết và nguyên lý hoạt động cơ bản của máy photocopy đơn giản, dễ hiểu, không giấu nghề.</p>\n<p style="text-align:justify;">Rất thích hợp cho người muốn tìm hiểu thêm về máy photocopy ,làm ktv ,về mở cửa hàng , công ty ,người chưa biết nghề ,thích hợp cho cty cử người đi học sửa chữa cơ bản về máy photocopy đáp ứng nhu cầu sửa chữa cho cơ quan  và công ty. </p>\n<p style="text-align:justify;">Dạy photocopy + sửa chữa cơ bản + Nâng cao.</p>\n<p style="text-align:justify;">Nhằm đào tạo thợ photocopy chuyên nghiệp,tạo công việc làm ổn định học sửa máy photocopy về để tự mở cửa hàng, cho cơ quan, công ty</p>\n<p style="text-align:justify;">Tiết kiệm thời gian, tiền bạc, khỏi phải học nghề tại các cửa hàng mà thời gian kéo dài, không hiệu quả</p>\n<p style="text-align:justify;">Cung cấp thêm các tài liệu nâng cao về máy photocopy như mã code, mode của các dòng máy để tìm hiểu và nâng cao chuyên môn .</p>\n<p style="text-align:justify;"> </p>', '', '', 1, '2012-04-12 02:16:00', 1, 0, NULL, NULL, 'dao-tao-ky-thuat-vien', '', 'Đào tạo kỹ thuật viên', '', 1, 'mayphotocopysieuviet');

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
) ENGINE=InnoDB  DEFAULT CHARSET=utf8 AUTO_INCREMENT=71 ;

--
-- Dumping data for table `dos_module_supports`
--

INSERT INTO `dos_module_supports` (`support_id`, `support_name`, `support_nameen`, `support_phone`, `support_value`, `support_order`, `support_type`, `dos_usernames_username`) VALUES
(63, 'Hỗ trợ kinh doanh', '', '01230 456 789', 'mailgoogle', 2, 'yahoo', 'phumyan'),
(64, 'Hỗ trợ khách hàng', '', '0909 999 888', 'groupitsoft', 1, 'yahoo', 'phumyan'),
(67, '', '', 'Tư vấn', '1', 1, 'yahoo', 'mayphotocopysieuviet'),
(69, 'Hỗ trợ kinh doanh', '', '0901 001 001', 'mailgoogle', 2, 'yahoo', 'tinhungphat'),
(70, 'Hỗ trợ khách hàng', '', '01230 456 789', 'groupitsoft', 1, 'yahoo', 'tinhungphat');

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
) ENGINE=InnoDB  DEFAULT CHARSET=utf8 AUTO_INCREMENT=3 ;

--
-- Dumping data for table `dos_module_video`
--

INSERT INTO `dos_module_video` (`record_id`, `title`, `titleen`, `postdate`, `tag`, `tagen`, `description`, `descriptionen`, `pic_thumb`, `url`, `record_order`, `hits`, `extra_field1`, `extra_field2`, `hot`, `enable`, `dos_module_item_cat_cat_id`) VALUES
(2, 'Nội Thất Văn Phòng 3D - Video từ ASP Viet Nam.wmv', '', '2012-04-12 01:56:28', 'noi-that-van-phong-3d-video-tu-asp-viet-namwmv', '', '', '', 'noi-that-van-phong-3d-video-tu-asp-viet-nam-wmv.jpg', 'http://www.youtube.com/watch?v=9kc4jOXvrAA', 1, 0, NULL, NULL, 1, 1, 2);

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
) ENGINE=InnoDB  DEFAULT CHARSET=utf8 AUTO_INCREMENT=3 ;

--
-- Dumping data for table `dos_module_video_cat`
--

INSERT INTO `dos_module_video_cat` (`cat_id`, `cat_parent_id`, `pic_thumb`, `cat_title`, `cat_titleen`, `tag`, `tagen`, `description`, `descriptionen`, `cat_order`, `cat_enable`, `dos_usernames_username`) VALUES
(2, 0, '', 'Video mới nhất', '', 'video-moi-nhat', '', '', '', 1, 1, 'phumyan');

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
('keywords', 'Dịch vụ tạo website trực tuyến, create website online, thiết kế web online', 'dos'),
('description', 'Dịch vụ tạo website trực tuyến: Chọn mẫu website, đăng ký tài khoản, chạy thử website, dể dàng quản lý và nhập liệu, dữ liệu được nhập tự động theo ngành nghề bạn chọn', 'dos'),
('title', 'Dos.vn', 'dos'),
('analytics', '<script type="text/javascript">\r\n\r\n  var _gaq = _gaq || [];\r\n  _gaq.push([''_setAccount'', ''UA-30151015-1'']);\r\n  _gaq.push([''_setDomainName'', ''dos.vn'']);\r\n  _gaq.push([''_trackPageview'']);\r\n\r\n  (function() {\r\n    var ga = document.createElement(''script''); ga.type = ''text/javascript''; ga.async = true;\r\n    ga.src = (''https:'' == document.location.protocol ? ''https://ssl'' : ''http://www'') + ''.google-analytics.com/ga.js'';\r\n    var s = document.getElementsByTagName(''script'')[0]; s.parentNode.insertBefore(ga, s);\r\n  })();\r\n\r\n</script>', 'dos'),
('keywords', 'chuyên các loại đồ nội thất', 'phumyan'),
('description', 'chuyên các loại đồ nội thất', 'phumyan'),
('title', 'chuyên các loại đồ nội thất', 'phumyan'),
('keywords', 'Máy in, máy photocopy, máy fax', 'mayphotocopysieuviet'),
('description', 'Chuyên cung cấp, mua bán Máy in, máy photocopy, máy fax', 'mayphotocopysieuviet'),
('title', 'Chuyên cung cấp Máy in, máy photocopy', 'mayphotocopysieuviet');

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
-- Table structure for table `dos_sys_articles`
--

CREATE TABLE IF NOT EXISTS `dos_sys_articles` (
  `record_id` int(11) NOT NULL AUTO_INCREMENT,
  `title` varchar(100) NOT NULL,
  `titleen` varchar(100) DEFAULT NULL,
  `postdate` timestamp NOT NULL DEFAULT CURRENT_TIMESTAMP,
  `pic_thumb` varchar(100) DEFAULT NULL,
  `preview` text,
  `previewen` text,
  `detail` text NOT NULL,
  `detailen` text,
  `tag` varchar(100) NOT NULL,
  `description` varchar(250) NOT NULL,
  `hits` int(11) NOT NULL DEFAULT '0',
  `record_order` int(11) NOT NULL DEFAULT '1',
  `hot` tinyint(1) NOT NULL DEFAULT '0',
  `extra_field1` varchar(100) DEFAULT NULL,
  `extra_field2` varchar(100) DEFAULT NULL,
  `enable` tinyint(1) NOT NULL DEFAULT '1',
  `dos_module_item_cat_cat_id` int(11) NOT NULL,
  PRIMARY KEY (`record_id`),
  KEY `fk_dos_sys_articles_dos_sys_articles_cat1` (`dos_module_item_cat_cat_id`)
) ENGINE=InnoDB  DEFAULT CHARSET=utf8 AUTO_INCREMENT=9 ;

--
-- Dumping data for table `dos_sys_articles`
--

INSERT INTO `dos_sys_articles` (`record_id`, `title`, `titleen`, `postdate`, `pic_thumb`, `preview`, `previewen`, `detail`, `detailen`, `tag`, `description`, `hits`, `record_order`, `hot`, `extra_field1`, `extra_field2`, `enable`, `dos_module_item_cat_cat_id`) VALUES
(7, 'Bản tin web số 1', NULL, '2012-02-27 01:07:03', '', '<p>\r\n	Mô tả bản tin</p>\r\n', NULL, '<p>\r\n	Chi tiết bản tin</p>\r\n', NULL, 'ban-tin-web-so-1', 'Mô tả bản tin', 0, 1, 0, NULL, NULL, 1, 1),
(8, 'Ban tin 2', NULL, '2012-02-29 02:36:41', '', '<p>\r\n	Mo ta</p>\r\n', NULL, '<p>\r\n	Chi tiet</p>\r\n', NULL, 'ban-tin-2', 'Mo ta', 0, 2, 0, NULL, NULL, 1, 1);

-- --------------------------------------------------------

--
-- Table structure for table `dos_sys_articles_cat`
--

CREATE TABLE IF NOT EXISTS `dos_sys_articles_cat` (
  `cat_id` int(11) NOT NULL AUTO_INCREMENT,
  `cat_parent_id` int(11) NOT NULL DEFAULT '0',
  `cat_title` varchar(100) NOT NULL,
  `cat_titleen` varchar(100) DEFAULT NULL,
  `preview` text,
  `previewen` text,
  `tag` varchar(100) NOT NULL,
  `description` varchar(250) NOT NULL,
  `pic_full` varchar(100) DEFAULT NULL,
  `cat_order` int(11) NOT NULL,
  `cat_extra1` varchar(45) DEFAULT NULL,
  `cat_extra2` varchar(45) DEFAULT NULL,
  `cat_enable` tinyint(1) NOT NULL DEFAULT '1',
  PRIMARY KEY (`cat_id`)
) ENGINE=InnoDB  DEFAULT CHARSET=utf8 AUTO_INCREMENT=3 ;

--
-- Dumping data for table `dos_sys_articles_cat`
--

INSERT INTO `dos_sys_articles_cat` (`cat_id`, `cat_parent_id`, `cat_title`, `cat_titleen`, `preview`, `previewen`, `tag`, `description`, `pic_full`, `cat_order`, `cat_extra1`, `cat_extra2`, `cat_enable`) VALUES
(1, 0, 'Hướng dẫn sử dụng web', NULL, 'Các video, bài viết hướng dẫn sử dụng các chức năng, cấu hình các thông số web tại Dos.vn', NULL, 'huong-dan-su-dung-web', 'Các video, bài viết hướng dẫn sử dụng các chức năng, cấu hình các thông số web tại Dos.vn', NULL, 0, NULL, NULL, 1),
(2, 0, 'Cẩm nang chăm sóc khách hàng', NULL, NULL, NULL, 'cam-nang-cham-soc-khach-hang', '', NULL, 1, NULL, NULL, 1);

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
('010312', 'Mẫu than đá', '2012-02-29 11:38:05', 'Chuyên bán các loại than đá, than cám...'),
('070312', 'Mẫu Thời trang', '2012-03-06 13:21:26', 'Chuyên bán các sản phẩm thời trang quần áo mới nhất, với các dịch vụ ưu đãi...'),
('111120', 'Mẫu cafe', '2011-11-21 02:40:10', ''),
('130312', 'Mẫu Đồ gỗ', '2012-03-12 12:01:59', 'Chuyên nghiệp sản xuất ván lạng, ván ép cong định hình và keo tiêu chuẩn Carb p2, keo chịu nước, keo menamim, test mẫu thí nghiệm gỗ đặt tiêu chuẩn Carb p2'),
('200312', 'Mẫu Sách', '2012-03-19 23:43:27', 'Chuyên bán các loại sách cho sinh viên, giá cả bình dân'),
('220312', 'Mẫu nội thất', '2012-03-21 20:04:36', 'Chuyên bán các loại đồ nội thất, dân dụng'),
('260312', 'Mẫu máy tính', '2012-03-26 06:44:07', 'Chuyên bán các loại máy tính, linh kiện, laptop, pc, sửa chữa,...');

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
('010312', 'bds-kien-truc-xay-dung'),
('070312', 'thoi-trang'),
('111120', 'am-thuc-drink'),
('130312', 'noi-that-ngoai-that'),
('200312', 'cong-nghe-thong-tin-vien-thong'),
('220312', 'noi-that-ngoai-that'),
('260312', 'cong-nghe-thong-tin-vien-thong');

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
('010312', 'about', 'advs_left'),
('010312', 'about', 'list_supports'),
('010312', 'about', 'menu_about'),
('010312', 'about', 'products_hot'),
('010312', 'contact', 'advs_left'),
('010312', 'contact', 'list_supports'),
('010312', 'contact', 'menu_products'),
('010312', 'contact', 'products_hot'),
('010312', 'default', 'about_home'),
('010312', 'default', 'advs_left'),
('010312', 'default', 'advs_right'),
('010312', 'default', 'list_supports'),
('010312', 'default', 'menu_products'),
('010312', 'default', 'news_new'),
('010312', 'default', 'products_hot'),
('010312', 'default', 'products_new'),
('010312', 'default', 'video_hot'),
('010312', 'news', 'advs_left'),
('010312', 'news', 'menu_news'),
('010312', 'news', 'news_hot'),
('010312', 'news', 'news_new'),
('010312', 'news', 'video_hot'),
('010312', 'products', 'advs_left'),
('010312', 'products', 'list_supports'),
('010312', 'products', 'menu_products'),
('010312', 'products', 'products_hot'),
('010312', 'services', 'advs_left'),
('010312', 'services', 'list_supports'),
('010312', 'services', 'menu_services'),
('010312', 'services', 'news_new'),
('010312', 'services', 'products_hot'),
('010312', 'video', 'advs_left'),
('010312', 'video', 'list_supports'),
('010312', 'video', 'menu_video'),
('010312', 'video', 'news_new'),
('070312', 'about', 'advs_left'),
('070312', 'about', 'list_supports'),
('070312', 'about', 'menu_about'),
('070312', 'contact', 'advs_left'),
('070312', 'contact', 'list_supports'),
('070312', 'contact', 'menu_products'),
('070312', 'default', 'about_home'),
('070312', 'default', 'advs_left'),
('070312', 'default', 'menu_products'),
('070312', 'default', 'products_hot'),
('070312', 'products', 'advs_left'),
('070312', 'products', 'list_supports'),
('070312', 'products', 'menu_products'),
('070312', 'services', 'advs_left'),
('070312', 'services', 'list_supports'),
('070312', 'services', 'menu_services'),
('111120', 'about', 'menu_about'),
('111120', 'contact', 'menu_products'),
('111120', 'default', 'about_home'),
('111120', 'default', 'advs_left'),
('111120', 'default', 'list_supports'),
('111120', 'default', 'menu_products'),
('111120', 'default', 'products_new'),
('111120', 'products', 'menu_products'),
('111120', 'services', 'menu_services'),
('130312', 'about', 'advs_left'),
('130312', 'about', 'list_supports'),
('130312', 'about', 'menu_about'),
('130312', 'contact', 'advs_left'),
('130312', 'contact', 'list_supports'),
('130312', 'contact', 'menu_products'),
('130312', 'default', 'about_home'),
('130312', 'default', 'advs_left'),
('130312', 'default', 'list_supports'),
('130312', 'default', 'menu_products'),
('130312', 'default', 'products_hot'),
('130312', 'products', 'advs_left'),
('130312', 'products', 'list_supports'),
('130312', 'products', 'menu_products'),
('130312', 'services', 'advs_left'),
('130312', 'services', 'list_supports'),
('130312', 'services', 'menu_services'),
('200312', 'about', 'advs_left'),
('200312', 'about', 'list_supports'),
('200312', 'about', 'menu_about'),
('200312', 'contact', 'advs_left'),
('200312', 'contact', 'list_supports'),
('200312', 'contact', 'menu_products'),
('200312', 'default', 'about_home'),
('200312', 'default', 'advs_left'),
('200312', 'default', 'list_supports'),
('200312', 'default', 'menu_products'),
('200312', 'default', 'products_hot'),
('200312', 'news', 'advs_left'),
('200312', 'news', 'list_supports'),
('200312', 'news', 'menu_news'),
('200312', 'products', 'advs_left'),
('200312', 'products', 'list_supports'),
('200312', 'products', 'menu_products'),
('200312', 'services', 'advs_left'),
('200312', 'services', 'list_supports'),
('200312', 'services', 'menu_services'),
('200312', 'video', 'advs_left'),
('200312', 'video', 'list_supports'),
('200312', 'video', 'menu_video'),
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
('220312', 'video', 'news_new'),
('260312', 'about', 'advs_left'),
('260312', 'about', 'list_supports'),
('260312', 'about', 'menu_about'),
('260312', 'contact', 'advs_left'),
('260312', 'contact', 'list_supports'),
('260312', 'contact', 'menu_products'),
('260312', 'default', 'about_home'),
('260312', 'default', 'advs_left'),
('260312', 'default', 'list_supports'),
('260312', 'default', 'menu_products'),
('260312', 'default', 'products_hot'),
('260312', 'default', 'products_new'),
('260312', 'news', 'advs_left'),
('260312', 'news', 'list_supports'),
('260312', 'news', 'menu_news'),
('260312', 'news', 'news_new'),
('260312', 'products', 'advs_left'),
('260312', 'products', 'list_supports'),
('260312', 'products', 'menu_products'),
('260312', 'services', 'advs_left'),
('260312', 'services', 'list_supports'),
('260312', 'services', 'menu_services'),
('260312', 'video', 'advs_left'),
('260312', 'video', 'list_supports'),
('260312', 'video', 'menu_video');

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
('dos', 'thanhansoft@gmail.com', '1960fdca5ecf16c0ddb74fdc814ee348', '2012-02-06 09:58:28', '', '', '', 'administrator', 'vi|en', NULL, '2012-04-14 17:00:00', 0, 1, '111120', 2, 'thoi-trang'),
('mayphotocopysieuviet', 'info@thuonghoi.com', 'e10adc3949ba59abbe56e057f20f883e', '2012-04-11 20:38:05', NULL, NULL, NULL, 'user', 'vi', NULL, '2012-05-11 10:00:00', 0, 1, '010312', 19, 'bds-kien-truc-xay-dung'),
('phumyan', 'maioanh7887@yahoo.com', '25f9e794323b453885f5181f1b624d0b', '2012-04-11 23:50:51', NULL, NULL, NULL, 'user', 'vi', NULL, '2012-05-11 10:00:00', 0, 1, '220312', 19, 'noi-that-ngoai-that'),
('tinhungphat', 'groupitsoft@gmail.com', 'e10adc3949ba59abbe56e057f20f883e', '2012-04-13 06:37:56', NULL, NULL, NULL, 'user', 'vi', NULL, '2012-05-12 16:00:00', 0, 1, '260312', 18, 'cong-nghe-thong-tin-vien-thong');

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
  PRIMARY KEY (`lang_name`,`dos_usernames_username`),
  KEY `fk_dos_user_langs_dos_usernames1` (`dos_usernames_username`)
) ENGINE=InnoDB DEFAULT CHARSET=utf8;

--
-- Dumping data for table `dos_user_langs`
--

INSERT INTO `dos_user_langs` (`lang_name`, `lang`, `langen`, `dos_usernames_username`) VALUES
('address1', '3A/1 Đoàn Văn Cự, P. Tam Hiệp, TP. Biên Hòa, Tỉnh Đồng Nai', '', 'mayphotocopysieuviet'),
('address2', '', '', 'mayphotocopysieuviet'),
('advs', 'Đối tác chính', '', 'mayphotocopysieuviet'),
('advs', 'Quảng cáo', '', 'phumyan'),
('company_name', 'DNTN SIÊU VIỆT', '', 'mayphotocopysieuviet'),
('company_name', 'Công ty TNHH Phú Mỹ An', '', 'phumyan'),
('company_phone', 'Hotline: 0937 107 888 (Mr. Nguyên)', '', 'mayphotocopysieuviet');

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
-- Constraints for table `dos_module_pcounter_save`
--
ALTER TABLE `dos_module_pcounter_save`
  ADD CONSTRAINT `fk_dos_module_pcounter_save_dos_usernames1` FOREIGN KEY (`dos_usernames_username`) REFERENCES `dos_usernames` (`username`) ON DELETE NO ACTION ON UPDATE NO ACTION;

--
-- Constraints for table `dos_module_pcounter_users`
--
ALTER TABLE `dos_module_pcounter_users`
  ADD CONSTRAINT `fk_dos_module_pcounter_users_dos_usernames1` FOREIGN KEY (`dos_usernames_username`) REFERENCES `dos_usernames` (`username`) ON DELETE NO ACTION ON UPDATE NO ACTION;

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
-- Constraints for table `dos_sys_articles`
--
ALTER TABLE `dos_sys_articles`
  ADD CONSTRAINT `fk_dos_sys_articles_dos_sys_articles_cat1` FOREIGN KEY (`dos_module_item_cat_cat_id`) REFERENCES `dos_sys_articles_cat` (`cat_id`) ON DELETE NO ACTION ON UPDATE NO ACTION;

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
