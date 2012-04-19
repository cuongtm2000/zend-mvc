-- phpMyAdmin SQL Dump
-- version 3.4.5
-- http://www.phpmyadmin.net
--
-- Host: localhost
-- Generation Time: Apr 19, 2012 at 04:26 PM
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
('advs_left_height', 160, '', '070312'),
('advs_left_height', 200, '', '111120'),
('advs_left_height', 200, '', '130312'),
('advs_left_height', 130, '', '180412'),
('advs_left_height', 200, '', '200312'),
('advs_left_height', 190, '', '220312'),
('advs_left_height', 200, '', '260312'),
('advs_left_width', 190, '', '010312'),
('advs_left_width', 160, '', '070312'),
('advs_left_width', 224, '', '111120'),
('advs_left_width', 220, '', '130312'),
('advs_left_width', 204, '', '180412'),
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
('banner_height', 339, '', '180412'),
('banner_height', 328, '', '200312'),
('banner_height', 332, '', '220312'),
('banner_height', 332, '', '260312'),
('banner_width', 951, '', '010312'),
('banner_width', 757, '', '070312'),
('banner_width', 709, '', '111120'),
('banner_width', 950, '', '130312'),
('banner_width', 940, '', '180412'),
('banner_width', 718, '', '200312'),
('banner_width', 950, '', '220312'),
('banner_width', 710, '', '260312'),
('logo_height', 108, '', '010312'),
('logo_height', 57, '', '070312'),
('logo_height', 65, '', '111120'),
('logo_height', 100, '', '130312'),
('logo_height', 51, '', '180412'),
('logo_height', 55, '', '200312'),
('logo_height', 79, '', '220312'),
('logo_height', 46, '', '260312'),
('logo_width', 155, '', '010312'),
('logo_width', 260, '', '070312'),
('logo_width', 310, '', '111120'),
('logo_width', 735, '', '130312'),
('logo_width', 239, '', '180412'),
('logo_width', 314, '', '200312'),
('logo_width', 259, '', '220312'),
('logo_width', 300, '', '260312'),
('max_image_height', 667, '', '010312'),
('max_image_height', 600, '', '070312'),
('max_image_height', 600, '', '130312'),
('max_image_height', 700, '', '180412'),
('max_image_height', 600, '', '200312'),
('max_image_height', 500, '', '220312'),
('max_image_height', 450, '', '260312'),
('max_image_width', 500, '', '010312'),
('max_image_width', 700, '', '070312'),
('max_image_width', 650, '', '130312'),
('max_image_width', 670, '', '180412'),
('max_image_width', 450, '', '200312'),
('max_image_width', 667, '', '220312'),
('max_image_width', 600, '', '260312'),
('news_cat_height', 89, '', '010312'),
('news_cat_height', 100, '', '070312'),
('news_cat_height', 90, '', '130312'),
('news_cat_height', 89, '', '180412'),
('news_cat_height', 89, '', '200312'),
('news_cat_height', 89, '', '260312'),
('news_cat_width', 143, '', '010312'),
('news_cat_width', 130, '', '070312'),
('news_cat_width', 143, '', '130312'),
('news_cat_width', 143, '', '180412'),
('news_cat_width', 143, '', '200312'),
('news_cat_width', 143, '', '260312'),
('news_height_thumb', 89, '', '010312'),
('news_height_thumb', 89, '', '070312'),
('news_height_thumb', 90, '', '130312'),
('news_height_thumb', 89, '', '180412'),
('news_height_thumb', 89, '', '200312'),
('news_height_thumb', 100, '', '220312'),
('news_height_thumb', 89, '', '260312'),
('news_num_paging_cat', 8, '', '010312'),
('news_num_paging_cat', 10, '', '070312'),
('news_num_paging_cat', 10, '', '130312'),
('news_num_paging_cat', 10, '', '180412'),
('news_num_paging_cat', 8, '', '200312'),
('news_num_paging_cat', 2, '', '220312'),
('news_num_paging_cat', 8, '', '260312'),
('news_num_paging_hot', 6, '', '010312'),
('news_num_paging_hot', 6, '', '070312'),
('news_num_paging_hot', 6, '', '130312'),
('news_num_paging_hot', 6, '', '180412'),
('news_num_paging_hot', 5, '', '220312'),
('news_num_paging_hot', 6, '', '260312'),
('news_num_paging_index', 8, '', '010312'),
('news_num_paging_index', 10, '', '070312'),
('news_num_paging_index', 3, '', '130312'),
('news_num_paging_index', 10, '', '180412'),
('news_num_paging_index', 8, '', '200312'),
('news_num_paging_index', 2, '', '220312'),
('news_num_paging_index', 4, '', '260312'),
('news_num_paging_new', 6, '', '010312'),
('news_num_paging_new', 10, '', '070312'),
('news_num_paging_new', 6, '', '130312'),
('news_num_paging_new', 6, '', '180412'),
('news_num_paging_new', 4, '', '200312'),
('news_num_paging_new', 4, '', '220312'),
('news_num_paging_new', 6, '', '260312'),
('news_width_thumb', 143, '', '010312'),
('news_width_thumb', 143, '', '070312'),
('news_width_thumb', 143, '', '130312'),
('news_width_thumb', 143, '', '180412'),
('news_width_thumb', 143, '', '200312'),
('news_width_thumb', 145, '', '220312'),
('news_width_thumb', 143, '', '260312'),
('products_cat_height', 155, '', '010312'),
('products_cat_height', 200, '', '070312'),
('products_cat_height', 150, '', '111120'),
('products_cat_height', 121, '', '130312'),
('products_cat_height', 160, '', '180412'),
('products_cat_height', 170, '', '200312'),
('products_cat_height', 150, '', '220312'),
('products_cat_height', 160, '', '260312'),
('products_cat_width', 115, '', '010312'),
('products_cat_width', 150, '', '070312'),
('products_cat_width', 169, '', '111120'),
('products_cat_width', 152, '', '130312'),
('products_cat_width', 175, '', '180412'),
('products_cat_width', 170, '', '200312'),
('products_cat_width', 200, '', '220312'),
('products_cat_width', 160, '', '260312'),
('products_height', 400, '', '010312'),
('products_height', 500, '', '070312'),
('products_height', 650, '', '111120'),
('products_height', 400, '', '130312'),
('products_height', 550, '', '180412'),
('products_height', 600, '', '200312'),
('products_height', 400, '', '220312'),
('products_height', 400, '', '260312'),
('products_height_thumb', 121, '', '010312'),
('products_height_thumb', 200, '', '070312'),
('products_height_thumb', 167, '', '111120'),
('products_height_thumb', 121, '', '130312'),
('products_height_thumb', 160, '', '180412'),
('products_height_thumb', 170, '', '200312'),
('products_height_thumb', 135, '', '220312'),
('products_height_thumb', 160, '', '260312'),
('products_num_paging_cat', 3, '', '010312'),
('products_num_paging_cat', 16, '', '070312'),
('products_num_paging_cat', 12, '', '130312'),
('products_num_paging_cat', 8, '', '180412'),
('products_num_paging_cat', 8, '', '200312'),
('products_num_paging_cat', 6, '', '220312'),
('products_num_paging_cat', 8, '', '260312'),
('products_num_paging_hot', 3, '', '010312'),
('products_num_paging_hot', 8, '', '070312'),
('products_num_paging_hot', 8, '', '130312'),
('products_num_paging_hot', 8, '', '180412'),
('products_num_paging_hot', 8, '', '200312'),
('products_num_paging_hot', 30, '', '260312'),
('products_num_paging_new', 6, '', '010312'),
('products_num_paging_new', 8, '', '070312'),
('products_num_paging_new', 8, '', '130312'),
('products_num_paging_new', 20, '', '180412'),
('products_num_paging_new', 3, '', '200312'),
('products_num_paging_new', 4, '', '220312'),
('products_num_paging_new', 8, '', '260312'),
('products_num_paging_other', 3, '', '010312'),
('products_num_paging_other', 4, '', '070312'),
('products_num_paging_other', 4, '', '130312'),
('products_num_paging_other', 4, '', '180412'),
('products_num_paging_other', 3, '', '200312'),
('products_num_paging_other', 2, '', '220312'),
('products_num_paging_other', 4, '', '260312'),
('products_width', 500, '', '010312'),
('products_width', 600, '', '070312'),
('products_width', 700, '', '111120'),
('products_width', 500, '', '130312'),
('products_width', 550, '', '180412'),
('products_width', 500, '', '200312'),
('products_width', 515, '', '220312'),
('products_width', 380, '', '260312'),
('products_width_thumb', 152, '', '010312'),
('products_width_thumb', 150, '', '070312'),
('products_width_thumb', 167, '', '111120'),
('products_width_thumb', 152, '', '130312'),
('products_width_thumb', 175, '', '180412'),
('products_width_thumb', 170, '', '200312'),
('products_width_thumb', 200, '', '220312'),
('products_width_thumb', 160, '', '260312'),
('services_height', 90, '', '010312'),
('services_height', 100, '', '070312'),
('services_height', 110, '', '111120'),
('services_height', 89, '', '130312'),
('services_height', 100, '', '180412'),
('services_height', 200, '', '200312'),
('services_height', 90, '', '220312'),
('services_height', 90, '', '260312'),
('services_width', 144, '', '010312'),
('services_width', 150, '', '070312'),
('services_width', 192, '', '111120'),
('services_width', 143, '', '130312'),
('services_width', 160, '', '180412'),
('services_width', 200, '', '200312'),
('services_width', 145, '', '220312'),
('services_width', 144, '', '260312'),
('video_cat_height', 100, '', '260312'),
('video_cat_width', 145, '', '260312'),
('video_height_thumb', 115, '', '010312'),
('video_height_thumb', 160, '', '070312'),
('video_height_thumb', 121, '', '130312'),
('video_height_thumb', 160, '', '180412'),
('video_height_thumb', 150, '', '220312'),
('video_num_paging_cat', 4, '', '010312'),
('video_num_paging_cat', 8, '', '070312'),
('video_num_paging_cat', 8, '', '130312'),
('video_num_paging_cat', 8, '', '180412'),
('video_num_paging_cat', 8, '', '200312'),
('video_num_paging_cat', 2, '', '220312'),
('video_num_paging_index', 4, '', '010312'),
('video_num_paging_index', 8, '', '070312'),
('video_num_paging_index', 8, '', '130312'),
('video_num_paging_index', 8, '', '180412'),
('video_num_paging_index', 8, '', '200312'),
('video_num_paging_index', 2, '', '220312'),
('video_width_thumb', 115, '', '010312'),
('video_width_thumb', 160, '', '070312'),
('video_width_thumb', 152, '', '130312'),
('video_width_thumb', 175, '', '180412'),
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
('010312', 'default', 'prettyPhoto.css', 'css'),
('010312', 'default', 'jquery.prettyPhoto.js', 'javascript'),
('010312', 'video', 'prettyPhoto.css', 'css'),
('010312', 'video', 'jquery.prettyPhoto.js', 'javascript'),
('070312', 'video', 'prettyPhoto.css', 'css'),
('070312', 'video', 'jquery.prettyPhoto.js', 'javascript'),
('111120', 'products', 'product-detail.css|jquery.fancybox-1.3.1.css', 'css'),
('111120', 'products', 'jcarousellite.js|contentslider.js|scroller.js|jquery.fancybox-1.3.1.js|lightbox.js', 'javascript'),
('130312', 'video', 'prettyPhoto.css', 'css'),
('130312', 'video', 'jquery.prettyPhoto.js', 'javascript'),
('180412', 'products', 'scroll.css|jquery.fancybox.css', 'css'),
('180412', 'products', 'jcarousellite_1.0.1.js|scroller.js|jquery.fancybox.js|jquery.scroll-1.4.2-min.js|jquery.serialScroll-1.2.2-min.js|product.js', 'javascript'),
('180412', 'video', 'prettyPhoto.css', 'css'),
('180412', 'video', 'jquery.prettyPhoto.js', 'javascript'),
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
('about', 'thienlonghoi'),
('about', 'thoitrang'),
('about', 'tinhungphat'),
('advs', 'dos'),
('advs', 'mayphotocopysieuviet'),
('advs', 'phumyan'),
('advs', 'thienlonghoi'),
('advs', 'thoitrang'),
('advs', 'tinhungphat'),
('banner', 'dos'),
('banner', 'mayphotocopysieuviet'),
('banner', 'phumyan'),
('banner', 'thienlonghoi'),
('banner', 'thoitrang'),
('banner', 'tinhungphat'),
('contact', 'dos'),
('contact', 'mayphotocopysieuviet'),
('contact', 'phumyan'),
('contact', 'thienlonghoi'),
('contact', 'thoitrang'),
('contact', 'tinhungphat'),
('news', 'dos'),
('news', 'mayphotocopysieuviet'),
('news', 'phumyan'),
('news', 'thienlonghoi'),
('news', 'thoitrang'),
('news', 'tinhungphat'),
('products', 'dos'),
('products', 'mayphotocopysieuviet'),
('products', 'phumyan'),
('products', 'thienlonghoi'),
('products', 'thoitrang'),
('products', 'tinhungphat'),
('services', 'dos'),
('services', 'mayphotocopysieuviet'),
('services', 'phumyan'),
('services', 'thienlonghoi'),
('services', 'thoitrang'),
('services', 'tinhungphat'),
('supports', 'dos'),
('supports', 'mayphotocopysieuviet'),
('supports', 'phumyan'),
('supports', 'thienlonghoi'),
('supports', 'thoitrang'),
('supports', 'tinhungphat'),
('video', 'phumyan'),
('video', 'thienlonghoi'),
('video', 'thoitrang'),
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
) ENGINE=InnoDB  DEFAULT CHARSET=utf8 AUTO_INCREMENT=56 ;

--
-- Dumping data for table `dos_module_abouts`
--

INSERT INTO `dos_module_abouts` (`record_id`, `title`, `titleen`, `content`, `contenten`, `hit`, `created`, `record_order`, `hot`, `extra_field1`, `extra_field2`, `tag`, `tagen`, `description`, `descriptionen`, `activated`, `dos_usernames_username`) VALUES
(6, 'Về Dos.vn', 'Dos.vn about', '<p>\r\n	Kính gửi: <strong>Quý Doanh nghiệp</strong></p>\r\n<p style="margin-left:40px;">\r\n	<strong>DOS</strong> là công ty chuyên nghiệp trong việc <strong>Thiết kế Website</strong>. Những sản phẩm chính: Web Doanh nghiệp, Web cơ quan, Web trường học, Web du lịch, Web nhà hàng, Web máy tính, Web điện thoại,... và các loại Web theo đơn đặt hàng.</p>\r\n<p style="margin-left:40px;">\r\n	Với tiêu chí "Giao diện đẹp, tính năng nhiều, giá thành thấp". Qua 5 năm thiết kế Web, sản phẩm của chúng tôi được các Doanh nghiệp đánh giá cao. Chúng tôi có bề dày kinh nghiệm, có giải pháp và đội ngũ nhân lực tâm huyết để đảm bảo sản phẩm đáp ứng đúng nhu cầu, đem lại hiệu quả, với chi phí phù hợp.</p>\r\n<p style="margin-left:40px;">\r\n	Không ngừng học hỏi và phát triển công nghệ. <strong>DOS</strong> trở thành một công ty thiết kế Web tiên phong về chất lượng, có sản phẩm tiêu biểu, có thương hiệu uy tín trong và ngoài nước.</p>\r\n<p style="margin-left:40px;">\r\n	<strong>DOS</strong> thiết kế và cung cấp giải pháp Web trên đến các đơn vị: <strong>UBND Tân phú</strong>, <strong>SONADEZI</strong>, <strong>BENCO</strong>, <strong>Gạch Ngói Nhị Hiệp</strong>, <strong>An Gia Phú</strong>, <strong>Nội Thất Yến Bình Minh</strong>, <strong>Thuận Thành Glass</strong>, <strong>Thái Sơn</strong>, <strong>Thái Bình An Phú Thịnh...</strong></p>\r\n<p style="margin-left:40px;">\r\n	Tại Việt Nam, Sản phẩm <strong>DOS</strong> được giới thiệu tại các Công ty thiết kế in ấn, ở hầu hết các Trung Tâm tỉnh thành trên toàn quốc .</p>', '<p>\r\n	Kính gửi: Quý Doanh nghiệp<br />\r\n	      <br />\r\n	           DOS là công ty chuyên nghiệp trong việc Thiết kế Website. Những sản phẩm chính: Web Doanh nghiệp, Web cơ quan, Web trường học, Web du lịch, Web nhà hàng, Web máy tính, Web điện thoại,... và các loại Web theo đơn đặt hàng.<br />\r\n	          Với tiêu chí "Giao diện đẹp, tính năng nhiều, giá thành thấp". Qua 5 năm thiết kế Web, sản phẩm của chúng tôi được các Doanh nghiệp đánh giá cao. Chúng tôi có bề dày kinh nghiệm, có giải pháp và đội ngũ nhân lực tâm huyết để đảm bảo sản phẩm đáp ứng đúng nhu cầu, đem lại hiệu quả, với chi phí phù hợp.</p>\r\n<p>\r\n	          Không ngừng học hỏi và phát triển công nghệ. DOS trở thành một công ty thiết kế Web tiên phong về chất lượng, có sản phẩm tiêu biểu, có thương hiệu uy tín trong và ngoài nước.<br />\r\n	          DOS thiết kế và cung cấp giải pháp Web trên đến các đơn vị: UBND Tân phú, SONADEZI, BENCO, Gạch Ngói Nhị Hiệp, An Gia Phú, Nội Thất Yến Bình Minh, Thuận Thành Glass, Thái Sơn, Thái Bình An Phú Thịnh...</p>\r\n<p>\r\n	          Tại Việt Nam, Sản phẩm DOS được giới thiệu tại các Công ty thiết kế in ấn, ở hầu hết các Trung Tâm tỉnh thành trên toàn quốc .</p>', 75, '2012-04-07 02:13:52', 1, 0, NULL, NULL, 've-dos', 'dos-about', 'DOS là công ty chuyên nghiệp trong việc Thiết kế Website. Những sản phẩm chính: Web Doanh nghiệp, Web cơ quan, Web trường học, Web du lịch, Web nhà hàng, Web máy tính, Web điện thoại,... và các loại Web theo đơn đặt hàng', 'DOS là công ty chuyên nghiệp trong việc Thiết kế Website. Những sản phẩm chính: Web Doanh nghiệp, Web cơ quan, Web trường học, Web du lịch, Web nhà hàng, Web máy tính, Web điện thoại,... và các loại Web theo đơn đặt hàng', 1, 'dos'),
(7, 'Tầm nhìn và sứ mệnh Dos', 'Gioi thieu 2 En', '<p>\r\n	Tầm nhìn và Sứ mệnh của DOS được viết ra ngay từ khi thành lập, xác định lý tưởng, hướng đi lâu dài và những giá trị cơ bản mà mỗi thành viên sáng lập luôn hướng tới.</p>\r\n<p>\r\n	<strong>Tầm nhìn của DOS</strong><br />\r\n	Được công nhận là công ty đứng đầu trong lĩnh vực thiết kế Website. Với giải pháp tích hợp Marketing và Công Nghệ Thông Tin trong việc quảng cáo bán hàng dành riêng cho từng Doanh nghiệp.</p>\r\n<p>\r\n	<strong>Sứ mệnh của DOS</strong><br />\r\n	Mang lại cho Doanh nghiệp một kênh truyền thông nhanh chóng và hiệu quả qua những Website đầy tính sáng tạo.</p>\r\n<p>\r\n	<strong>Các giá trị cơ bản của DOS c</strong>ác giá trị cơ bản là tài sản vô cùng quý báu mà mỗi người thành viên của DOS đều trân trọng giữ gìn:</p>\r\n<ul><li>\r\n		<strong>Làm khách hàng hài lòng</strong>: Tận tuỵ với khách hàng và luôn phấn đấu để đáp ứng tốt nhất những nhu cầu, vượt trên mong đợi của họ.</li>\r\n	<li>\r\n		<strong>Con người là cốt lõi</strong>: Tôn trọng con người, tạo điều kiện cho các thành viên phát triển tối đa tài năng, đóng góp cho tổ chức và được đãi ngộ xứng đáng cả về vật chất và tinh thần.</li>\r\n	<li>\r\n		<strong>Chất lượng tốt nhất</strong>: Đảm bảo chất lượng tốt nhất trong mỗi sản phẩm, mỗi việc làm.</li>\r\n	<li>\r\n		<strong>Đề cao đạo đức kinh doanh</strong>: Mỗi nhân viên là một đại diện của Công ty, có nghĩa vụ tuân thủ đạo đức kinh doanh cao nhất, luôn hợp tác, cởi mở và thân thiện với đồng nghiệp, đóng góp cho cộng đồng và xã hội.</li>\r\n</ul>', '<p>\r\n	NOi dung en</p>', 45, '2012-04-07 02:14:02', 2, 0, NULL, NULL, 'tam-nhin-va-su-menh-dos', 'gioi-thieu-2-en', 'Tầm nhìn và Sứ mệnh của DOS được viết ra ngay từ khi thành lập, xác định lý tưởng, hướng đi lâu dài và những giá trị cơ bản mà mỗi thành viên sáng lập luôn hướng tới', 'Mo ta 2 En', 1, 'dos'),
(8, 'Lĩnh vực hoạt động', 'Gioi thieu 3 En', '<p>\r\n	<strong>DỊCH VỤ CHUYÊN NGHIỆP</strong>:</p>\r\n<ul><li>\r\n		Thiết kế website</li>\r\n	<li>\r\n		Phương pháp quảng cáo bán hàng trực tuyến</li>\r\n	<li>\r\n		Giải pháp CNTT trọn gói cho Doanh nghiệp</li>\r\n	<li>\r\n		Thương mại điện tử</li>\r\n</ul><p>\r\n	 </p>\r\n<p>\r\n	<strong>SẢN PHẨM VÀ DỊCH VỤ GTGT:</strong></p>\r\n<ul><li>\r\n		Đăng ký tên miền</li>\r\n	<li>\r\n		Cung cấp Hosting</li>\r\n	<li>\r\n		Xử lý hình ảnh nhập liệu cho web</li>\r\n	<li>\r\n		Thiết kế Logo</li>\r\n	<li>\r\n		Thiết Kế Name Card</li>\r\n	<li>\r\n		Thiết kế ấn phầm Quảng cáo theo đơn đặt hàng</li>\r\n</ul><p>\r\n	 </p>\r\n<p>\r\n	<strong>HỖ TRỢ TƯ VẤN MIỄN PHÍ:</strong></p>\r\n<ul><li>\r\n		Thành lập Doanh nghiệp</li>\r\n	<li>\r\n		Quản lý Doanh nghiệp</li>\r\n	<li>\r\n		Tư vấn Marketing và phát triển Doanh nghiệp</li>\r\n	<li>\r\n		Tư vấn và định hướng đào tạo nhân viên bán hàng</li>\r\n	<li>\r\n		Tư vấn phong thủy</li>\r\n</ul>', '<p>\r\n	Noi dung 3 en</p>', 32, '2012-04-07 02:14:12', 3, 0, NULL, NULL, 'linh-vuc-hoat-dong', 'gioi-thieu-3-en', 'Mo ta 3', 'Mo ta 3 En', 1, 'dos'),
(43, 'Giới thiệu chung', '', '<p style="text-align:justify;"><span style="color:#008000;font-size:medium;"><strong>  <span style="color:#0000ff;font-size:large;">Siêu Việt là Doanh Nghiệp chuyên cung cấp và cho thuê máy văn phòng</span></strong></span></p>\n<p style="text-align:justify;"><span style="color:#008000;font-size:medium;"><strong><span style="color:#0000ff;"><span style="color:#000000;font-size:small;">- Sản phẩm chính: Máy photocopy, Máy in, Máy fax, Máy scan, Máy vi tính, Máy chiếu.</span></span></strong></span></p>\n<p style="text-align:justify;"><span style="color:#008000;font-size:medium;"><strong><span style="color:#0000ff;"><span style="color:#000000;font-size:small;">- Dịch vụ: cho thuê máy photocopy đa chức năng, đen trắng, màu, bảo hành, bảo trì, sữa chữa.</span></span></strong></span></p>\n<p style="text-align:justify;"><span style="color:#008000;font-size:medium;"><strong><span style="color:#0000ff;"><span style="color:#000000;font-size:small;">Được thành lập vào năm 2003, với bề dày nhiều năm kinh nghiệm Siêu Việt luộn đi tiên phong trong việc đầu tư đổi mới máy văn phòng và luôn cung cấp cho Khách Hàng nhưng loại hình dịch vụ chất lợng cao. Luôn làm hài lòng nhưng Khách Hàng khó tính.</span></span></strong></span></p>\n<p style="text-align:justify;"><span style="color:#008000;font-size:medium;"><strong><span style="color:#0000ff;"><span style="color:#000000;font-size:small;">Tại  Đồng Nai, Siêu Việt là nhà cung cấp cho các Doanh Nghiệp trong và ngoài nước đóng trong các Khu Công Nghiệp như: Biên Hòa 1, Biên Hòa 2, Amata, Loteco, Long Thành, Nhợn Trạch 1-5, Tam Phước, Gò Dầu, Sông Mây, Hố nai 3, Bàu Xéo và các Tỉnh Thành lân cận.</span></span></strong></span></p>\n<p style="text-align:justify;"><span style="color:#ff0000;font-size:medium;"><strong>* Với tiêu chí: </strong></span></p>\n<p style="text-align:center;"><span style="font-size:large;"><strong><span style="color:#ff0000;">" LỢI ÍCH CỦA KHÁCH HÀNG LÀ THÀNH QUẢ CỦA CHÚNG TÔI"</span></strong></span></p>\n<p style="text-align:center;"><span style="color:#008000;font-size:medium;"><strong><span style="color:#0000ff;"><span style="color:#000000;">Doanh nghiệp Siêu Việt luôn đồng hành cùng sự nghiệp phát triển của Doanh Nghiệp</span></span></strong></span></p>\n<p style="text-align:justify;"> </p>', '', 251, '2012-04-12 01:25:59', 1, 1, '', '', 'gioi-thieu-chung', '', 'Siêu Việt', '', 1, 'mayphotocopysieuviet'),
(44, 'Giới thiệu sơ lược', '', '<p>Lịch sử ngành Tổ chức Nhà nước gắn liền với quá trình xây dựng, phát triển của bộ máy Nhà nước cách mạng, gắn liền với quá trình đấu tranh giải phóng dân tộc và xây dựng đất nước qua các giai đoạn lịch sử.<br />Cùng với sự phát triển của ngành, cũng từng bước trưởng thành và phát triển cả về số lượng, </p>', '', 61, '2012-04-12 01:57:36', 1, 1, '', '', 'gioi-thieu-so-luoc', '', '', '', 1, 'phumyan'),
(45, 'Giấy chứng nhận đại lý', '', '<p><img style="margin-left:auto;margin-right:auto;" title="Giấy chung nhan" src="/public/userfiles/image/mayphotocopysieuviet/image/Nho-Chungnhan_HP.jpg" alt="sieu viet" width="450" height="651" /></p>', '', 64, '2012-04-12 02:49:22', 2, 0, '', '', 'giay-chung-nhan-dai-ly', '', '', '', 1, 'mayphotocopysieuviet'),
(46, 'Giới thiệu chung chung', '', '<p>Giới thiệu chung chung Giới thiệu chung chung  Giới thiệu chung chung</p>', '', 3, '2012-04-13 03:18:30', 2, 0, '', '', 'gioi-thieu-chung-chung', '', 'Giới thiệu chung chung', '', 1, 'phumyan'),
(47, 'Giới thiệu thị trường nội thất', '', '<p>Giới thiệu thị trường nội thất Giới thiệu thị trường nội thất Giới thiệu thị trường nội thất Giới thiệu thị trường nội thất</p>', '', 8, '2012-04-13 03:19:10', 3, 0, '', '', 'gioi-thieu-thi-truong-noi-that', '', 'Giới thiệu thị trường nội thất', '', 1, 'phumyan'),
(48, 'Tổng quan vể công ty', '', '<p>Siêu Việt là Doanh nghiệp chuyên cung cấp và cho thuê thiết bị máy văn phòng. Sản phẩm chính: Máy photocopy, máy tính, máy Fax, Máy Scan,.. ngoài ta còn cung cấp sản phẩm và dịch vụ theo đơn đặt hàng của khách hàng.</p>\n<p>Được thành lập vào năm 2002, bề dày kinh nghiệp 10 năm luôn tiên phong trong việc đổi mới máy móc và dịch vụ phụ vụ chất lượng cao luôn làm hoài lòng khách hàng khó tính nhất.</p>\n<p>Tại Đồng Nai, Siêu Việt là nhà cung cấp thiết bị văn phòng cho các Doanh nghiệp trong và ngoài nước như: Sonadezi, KCN AMADA,..</p>\n<p>khẳng định dịch vụ chất lượng Công ty được thành lập với tiêu chí cung cấp sỉ và lẻ tất cả các thiết bị văn phòng cho các đại lý trên khắp Việt Nam .</p>\n<p>Tận dụng và phát huy năng lực, kinh nghiệm trong lĩnh vực thiết bị văn phòng cùng với sự hỗ trợ của các thương hiệu nổi tiếng thế giới như Toshiba, Panasonic, Canon, Ricoh, Konica Minolta, Xerox... và trong lĩnh vực tin học như Intel, Seagate, Samsung, Asus, Dell, Ibm, Acer ...chúng tôi mong muốn và quyết tâm để trờ thành nhà cung cấp lớn và uy tín nhất trong lĩnh vực văn phòng tại Việt Nam.</p>\n<p>Dịch vụ hỗ trợ khách hàng: Chúng tôi có một đội ngũ kỹ sư có chuyên môn cao, kỹ thuật viên uy tín lâu năm kinh nghiệm trong các lĩnh vực:</p>\n<p>- Tư vấn, thực hiện các Giải Pháp về Máy Photocopy, Máy Fax, Máy In ...</p>\n<p>- Kinh doanh và cho thuê Máy Văn Phòng</p>\n<p>- Máy Photocopy in kỹ thuật số khổ lớn A0, Máy In Siêu Tốc 130 bản/phút</p>\n<p>- Máy in Công nghiệp, Máy in Màu Offset</p>\n<p>- Hỗ trợ kỹ thuật cho các dịch vụ Photocopy</p>\n<p>- Phân phối Sỉ &amp; Lẻ Máy Photocopy hàng nhập khẩu</p>\n<p>- Cung cấp Mực, Linh Kiện, Vật Tư với giá ưu đãi</p>\n<p>- Nhận đào tạo Kỹ Thuật Viên sửa chữa máy Photocopy, In, Fax</p>\n<p>Siêu Việt đáp ứng mọi nhu cầu, lựa chọn từ quý khách.</p>', '', 7, '2012-04-16 01:09:47', 3, 0, '', '', 'tong-quan-ve-cong-ty', '', '', '', 1, 'mayphotocopysieuviet'),
(50, 'Giới thiệu sơ lược', '', '<p>Lịch sử ngành Tổ chức Nhà nước gắn liền với quá trình xây dựng, phát triển của bộ máy Nhà nước cách mạng, gắn liền với quá trình đấu tranh giải phóng dân tộc và xây dựng đất nước qua các giai đoạn lịch sử.<br />Cùng với sự phát triển của ngành, cũng từng bước trưởng thành và phát triển cả về số lượng, </p>', '', 162, '2012-04-19 01:22:04', 1, 1, '', '', 'gioi-thieu-so-luoc', '', '', '', 1, 'thoitrang'),
(51, 'Giới thiệu chung chung', '', '<p>Giới thiệu chung chung Giới thiệu chung chung  Giới thiệu chung chung</p>', '', 11, '2012-04-19 01:22:04', 2, 0, '', '', 'gioi-thieu-chung-chung', '', 'Giới thiệu chung chung', '', 1, 'thoitrang'),
(52, 'Giới thiệu thị trường nội thất', '', '<p>Giới thiệu thị trường nội thất Giới thiệu thị trường nội thất Giới thiệu thị trường nội thất Giới thiệu thị trường nội thất</p>', '', 32, '2012-04-19 01:22:04', 3, 0, '', '', 'gioi-thieu-thi-truong-noi-that', '', 'Giới thiệu thị trường nội thất', '', 1, 'thoitrang'),
(53, 'Giới thiệu sơ lược', '', '<p>Thiên Long Hội  chuyên nghiệp sản xuất ván lạng, ván ép cong định hình và keo tiêu chuẩn carbp2, keo chịu nước, keo menamim, test mẫu thí nghiệm gỗ đặt tiêu chuẩn carbp2. Ngoài ra, Thiên Long Hộiluôn đáp ứng các loại ván ép, keo theo Đơn Đặt Hàng.</p>\r\n<p>Được thành lập năm 1999, có 5 xưởng sản xuất, bề dày kinh nghiệm 12 năm luôn tiên phong đầu tư khoa học, nghiên cứu phát triển sản phẩm, có máy móc thiết bị loại tốt và đội ngũ nhân lực tâm huyết, có trình độ chuyên môn cao, thạo việc để sản xuất sản phẩm có tính năng tốt, bền bỉ, tinh xảo, giá thành thấp đồng thời đáp ứng được đơn hàng số lượng lớn.</p>', '', 209, '2012-04-19 06:46:54', 1, 1, '', '', 'gioi-thieu-so-luoc', '', 'Thiên Long Hội  chuyên nghiệp sản xuất ván lạng, ván ép cong định hình và keo tiêu chuẩn carbp2, keo chịu nước, keo menamim, test mẫu thí nghiệm gỗ đặt tiêu chuẩn carbp2. Ngoài ra, Thiên Long Hộiluôn đáp ứng các loại ván ép, keo theo Đơn Đặt Hàng.', '', 1, 'thienlonghoi'),
(54, 'Giới thiệu chung chung', '', '<p>1. Địa chỉ trụ sở chính:</p>\r\n<p>Văn phòng: 23 Núi Thành - TP.Đà Nẵng</p>\r\n<p>Điện thoại: 0511.3634345 - 3626077 - 3626099 - 3601558 - 3601559. Fax: 0511.3634345</p>\r\n<p>Email: gialinh@begili.com Website: www.begili.com</p>\r\n<ul><li>2. Nhà máy:</li>\r\n<li>Địa chỉ: Lô 4-5 Cụm Công nghiệp Đại Hiệp, Đại Lộc, Quảng Nam.</li>\r\n<li>Điện thoại: 0510.3762767 Fax: 0510.3762769</li>\r\n<li>3. Quá trình hình thành và phát triển:</li>\r\n</ul><p>Công ty TNHH Gia Linh là đơn vị thành lập theo hình thức Công ty trách nhiệm hữu hạn và hoạt đông theo luật doanh nghiệp được Quốc Hội Nước Cộng Hoà Xã Hội Chủ Nghĩa Việt Nam Khoá X thông qua ngày 12/6/1999 và các quy định khác của pháp luật Nhà nước Việt Nam. Là đơn vị chuyên sản xuất và cung cấp các thiết bị đồ gỗ nội - ngoại thất cao cấp, kinh doanh khách sạn, nhà hàng và sản xuất máy điều hoà không khí mang thương hiệu Begili.</p>\r\n<p>Trải qua thời gian, cùng với sự lớn mạnh không ngừng cả về chất và lượng, do vậy Công ty TNHH Gia Linh đã đạt được những thành tựu to lớn. Đặc biệt, với đội ngũ cán bộ kỹ thuật, kỹ sư dày dạn kinh nghiệm trong việc tổ chức quản lý thi công, điều hành sản xuất, đội ngũ cán bộ quản lý nhạy bén, đội ngũ nhân viên với bề dày kinh nghiệm trong lĩnh vực mộc máy và được bổ sung thêm bởi lớp nhân viên trẻ có sức sáng tạo, nhiệt huyết cao, năng động đã góp phần tạo nên sự lớn mạnh của Công ty trong môi trường cạnh tranh ngày càng khốc liệt.</p>\r\n<p>Công ty áp dụng công nghệ máy móc hiện đại, với sự giám sát chặt chẽ của các kỹ thuật viên trong Công ty vì vậy sản phẩm đã đạt đến đỉnh cao của sự hoàn hảo, tinh tế và đa dạng về chủng loại.</p>\r\n<p>Mục đích kinh doanh của Công ty là tạo dựng trở thành thương hiệu uy tín và in sâu trong tâm trí của khách hàng. Qua đó góp phần tạo cho nhân viên Công ty nói riêng có một cuộc sống đảm bảo, ổn định và góp sức xây dựng một đất nước Việt Nam nói chung ngày càng vững mạnh và phồn vinh.</p>\r\n<p>Phương châm kinh doanh của Công ty là mong muốn đem lại cho quý khách sự hài lòng và thỏa mãn về chất lượng sản phẩm mang thương hiệu Begili .</p>', '', 8, '2012-04-19 06:46:54', 2, 0, '', '', 'gioi-thieu-chung-chung', '', '1. Địa chỉ trụ sở chính:\r\nVăn phòng: 23 Núi Thành - TP.Đà Nẵng\r\nĐiện thoại: 0511.3634345 - 3626077 - 3626099 - 3601558 - 3601559. Fax: 0511.3634345\r\nEmail: gialinh@begili.com Website: www.begili.com', '', 1, 'thienlonghoi'),
(55, 'Công trình đã thực hiện', '', '<p><strong>1.Một số hình ảnh 2 chi nhánh SCB tại Đà Nẵng</strong></p>\r\n<p style="text-align:center;"><img src="/public/userfiles/image/thienlonghoi/image/GLSCB04.jpg" alt="" width="350" height="300" /></p>\r\n<p style="text-align:left;"><strong>2.Các công trình tiêu biểu:</strong></p>\r\n<p style="text-align:center;"><img src="/public/userfiles/image/thienlonghoi/image/nhaconam.jpg" alt="" width="650" height="487" /></p>\r\n<p style="text-align:center;"><strong><span style="color:#0000ff;">Nhà tư nhân</span></strong></p>\r\n<p style="text-align:center;"><img src="/public/userfiles/image/thienlonghoi/image/sunriver.JPG" alt="" width="450" height="600" /></p>\r\n<p style="text-align:center;"><span style="color:#0000ff;"><strong>Khách sạn SUN RIVER</strong></span></p>\r\n<p style="text-align:left;"> </p>', '', 44, '2012-04-19 06:46:54', 3, 0, '', '', 'cong-trinh-da-thuc-hien', '', 'Công trình đã thực hiện', '', 1, 'thienlonghoi');

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
) ENGINE=InnoDB  DEFAULT CHARSET=utf8 AUTO_INCREMENT=22 ;

--
-- Dumping data for table `dos_module_advs`
--

INSERT INTO `dos_module_advs` (`record_id`, `title`, `titleen`, `pic_thumb`, `url`, `create_date`, `start_date`, `end_date`, `hits`, `record_order`, `position`, `type`, `enable`, `dos_usernames_username`) VALUES
(6, 'Quảng cáo', '', 'quang-cao.jpg', 'http://phumyan.dos.vn/', '2012-04-12 00:14:48', '2012-03-31 10:00:00', '2012-05-30 10:00:00', 0, 1, 'left', '_bank', 1, 'phumyan'),
(7, 'Quảng cáo 2', '', 'quang-cao-2.jpg', 'http://phumyan.dos.vn/', '2012-04-12 00:16:26', '2012-03-31 10:00:00', '2012-05-30 10:00:00', 0, 2, 'left', '_bank', 1, 'phumyan'),
(8, 'Quảng cáo', '', 'quang-cao.jpg', 'http://mayphotocopysieuviet.dos.vn/', '2012-04-12 02:29:32', '2012-03-31 10:00:00', '2012-05-30 10:00:00', 0, 1, 'left', '_bank', 1, 'mayphotocopysieuviet'),
(9, 'hp', '', 'hp.jpeg', 'http://dos.vn/', '2012-04-12 02:50:25', '2012-03-30 17:00:00', '2012-05-29 17:00:00', 0, 6, 'left', '_bank', 1, 'mayphotocopysieuviet'),
(10, 'toshiba', '', 'toshiba.jpeg', 'http://dos.vn/', '2012-04-12 02:51:09', '2012-03-31 10:00:00', '2012-05-30 10:00:00', 0, 2, 'right', '_bank', 1, 'mayphotocopysieuviet'),
(11, 'Panasonic', '', 'panasonic.jpeg', 'http://dos.vn/', '2012-04-12 02:51:56', '2012-03-31 10:00:00', '2012-05-30 10:00:00', 0, 4, 'right', '_bank', 0, 'mayphotocopysieuviet'),
(12, 'Canon', '', 'canon.jpeg', 'http://dos.vn/', '2012-04-12 02:52:19', '2012-03-30 17:00:00', '2012-05-29 17:00:00', 0, 5, 'left', '_bank', 1, 'mayphotocopysieuviet'),
(13, 'Xerok', '', 'xerok.jpeg', 'http://dos.vn/', '2012-04-12 02:52:59', '2012-03-31 10:00:00', '2012-05-30 10:00:00', 0, 3, 'right', '_bank', 1, 'mayphotocopysieuviet'),
(14, 'Pa nội thất', '', 'pa-noi-that.jpg', 'http://dantri.com.vn', '2012-04-13 03:04:28', '2012-04-12 16:00:00', '2012-04-26 16:00:00', 0, 3, 'right', '_bank', 1, 'phumyan'),
(16, 'Quảng cáo', '', 'quang-cao.jpg', 'http://phumyan.dos.vn/', '2012-04-19 01:22:05', '2012-03-31 10:00:00', '2012-05-30 10:00:00', 0, 1, 'left', '_bank', 1, 'thoitrang'),
(17, 'Quảng cáo 2', '', 'quang-cao-2.jpg', 'http://phumyan.dos.vn/', '2012-04-19 01:22:05', '2012-03-31 10:00:00', '2012-05-30 10:00:00', 0, 2, 'left', '_bank', 1, 'thoitrang'),
(18, 'Pa nội thất', '', 'pa-noi-that.jpg', 'http://dantri.com.vn', '2012-04-19 01:22:05', '2012-04-12 16:00:00', '2012-04-26 16:00:00', 0, 3, 'right', '_bank', 1, 'thoitrang'),
(19, 'Quảng cáo', '', 'quang-cao.jpg', 'http://phumyan.dos.vn/', '2012-04-19 06:46:55', '2012-03-31 10:00:00', '2012-05-30 10:00:00', 0, 1, 'left', '_bank', 1, 'thienlonghoi'),
(20, 'Quảng cáo 2', '', 'quang-cao-2.jpg', 'http://phumyan.dos.vn/', '2012-04-19 06:46:55', '2012-03-31 10:00:00', '2012-05-30 10:00:00', 0, 2, 'left', '_bank', 1, 'thienlonghoi'),
(21, 'Pa nội thất', '', 'pa-noi-that.jpg', 'http://dantri.com.vn', '2012-04-19 06:46:55', '2012-04-12 16:00:00', '2012-04-26 16:00:00', 0, 3, 'right', '_bank', 1, 'thienlonghoi');

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
) ENGINE=InnoDB  DEFAULT CHARSET=utf8 AUTO_INCREMENT=95 ;

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
(24, '2012-04-12 01:03:46', 'Banner 2', 'banner-22.jpg', '', 3, 'banners', 'default', 1, 'mayphotocopysieuviet'),
(25, '2012-04-12 01:04:13', 'Banner 2', 'banner-2.jpg', '', 4, 'banners', 'default', 1, 'mayphotocopysieuviet'),
(26, '2012-04-12 01:04:26', 'Banner 3', 'banner-3.jpg', '', 5, 'banners', 'default', 1, 'mayphotocopysieuviet'),
(27, '2012-04-12 01:04:50', 'Banner 4', 'banner-4.jpg', '', 6, 'banners', 'about', 1, 'mayphotocopysieuviet'),
(28, '2012-04-12 01:06:19', 'Banner 5', 'banner-5.jpg', '', 7, 'banners', 'contact', 1, 'mayphotocopysieuviet'),
(29, '2012-04-12 01:07:21', 'Banner 7', 'banner-7.jpg', '', 8, 'banners', 'services', 1, 'mayphotocopysieuviet'),
(30, '2012-04-12 01:07:36', 'Banner 8', 'banner-8.jpg', '', 9, 'banners', 'news', 1, 'mayphotocopysieuviet'),
(31, '2012-04-12 01:08:09', 'Banner 9', 'banner-9.jpg', '', 10, 'banners', 'products', 1, 'mayphotocopysieuviet'),
(32, '2012-04-12 01:10:28', 'Banner 11', 'banner-11.jpg', '', 11, 'banners', 'products', 1, 'mayphotocopysieuviet'),
(33, '2012-04-12 01:11:14', 'Banner 10', 'banner-10.jpg', '', 12, 'banners', 'products', 1, 'mayphotocopysieuviet'),
(34, '2012-04-12 02:37:36', 'Banner 15', 'banner-15.jpg', '', 13, 'banners', 'services', 1, 'mayphotocopysieuviet'),
(35, '2012-04-12 02:38:20', 'Banner 12', 'banner-12.jpg', '', 14, 'banners', 'services', 1, 'mayphotocopysieuviet'),
(36, '2012-04-12 02:38:56', 'Banner 13', 'banner-13.jpg', '', 15, 'banners', 'products', 1, 'mayphotocopysieuviet'),
(37, '2012-04-16 01:08:41', 'Banner 6', 'banner-6.jpg', '', 16, 'banners', 'news', 1, 'mayphotocopysieuviet'),
(38, '2012-04-16 01:09:27', 'Banner 11', 'banner-115.jpg', '', 17, 'banners', 'contact', 1, 'mayphotocopysieuviet'),
(39, '2012-04-16 02:02:48', 'Banner 14', 'banner-14.jpg', '', 18, 'banners', 'about', 1, 'mayphotocopysieuviet'),
(41, '2012-04-16 02:51:39', 'Banner 1', 'banner-1.jpg', '', 2, 'banners', 'default', 1, 'mayphotocopysieuviet'),
(42, '2012-04-19 01:03:41', 'ba3', 'ba3.jpg', '', 1, 'banners', 'default', 1, 'tinhungphat'),
(43, '2012-04-19 01:03:52', 'ba1', 'ba11.jpg', '', 2, 'banners', 'default', 1, 'tinhungphat'),
(44, '2012-04-19 01:22:05', 'Logo', 'logo.png', '', 1, 'logo', 'default', 0, 'thoitrang'),
(45, '2012-04-19 01:22:05', 'Banner', 'banner.jpg', '', 2, 'banners', 'default', 1, 'thoitrang'),
(46, '2012-04-19 01:22:05', 'Banner 1', 'banner-1.jpg', '', 3, 'banners', 'default', 1, 'thoitrang'),
(47, '2012-04-19 01:22:05', 'Banner 2', 'banner-2.jpg', '', 4, 'banners', 'default', 1, 'thoitrang'),
(48, '2012-04-19 01:22:05', 'Banner 3', 'banner-3.jpg', '', 5, 'banners', 'default', 1, 'thoitrang'),
(49, '2012-04-19 01:22:05', 'Banner 4', 'banner-4.jpg', '', 6, 'banners', 'about', 0, 'thoitrang'),
(50, '2012-04-19 01:22:05', 'Banner 5', 'banner-5.jpg', '', 7, 'banners', 'about', 0, 'thoitrang'),
(51, '2012-04-19 01:22:05', 'Banner 6', 'banner-6.jpg', '', 8, 'banners', 'products', 0, 'thoitrang'),
(52, '2012-04-19 01:22:05', 'Banner 7', 'banner-7.jpg', '', 9, 'banners', 'products', 0, 'thoitrang'),
(53, '2012-04-19 01:22:05', 'Banner 8', 'banner-8.jpg', '', 10, 'banners', 'products', 0, 'thoitrang'),
(54, '2012-04-19 01:22:05', 'Banner 9', 'banner-86.jpg', '', 11, 'banners', 'news', 0, 'thoitrang'),
(55, '2012-04-19 01:22:05', 'Banner 10', 'banner-10.jpg', '', 12, 'banners', 'news', 0, 'thoitrang'),
(56, '2012-04-19 01:22:05', 'Banner 11', 'banner-11.jpg', '', 13, 'banners', 'news', 0, 'thoitrang'),
(57, '2012-04-19 01:22:05', 'Banner 12', 'banner-12.jpg', '', 14, 'banners', 'services', 0, 'thoitrang'),
(58, '2012-04-19 01:22:05', 'Banner 13', 'banner-13.jpg', '', 15, 'banners', 'services', 0, 'thoitrang'),
(59, '2012-04-19 01:22:05', 'Banner 14', 'banner-14.jpg', '', 16, 'banners', 'contact', 0, 'thoitrang'),
(60, '2012-04-19 01:22:05', 'Banner 15', 'banner-15.jpg', '', 17, 'banners', 'contact', 0, 'thoitrang'),
(61, '2012-04-19 01:22:05', 'Banner 16', 'banner-16.jpg', '', 18, 'banners', 'video', 0, 'thoitrang'),
(62, '2012-04-19 01:22:05', 'Banner 17', 'banner-17.jpg', '', 19, 'banners', 'video', 0, 'thoitrang'),
(64, '2012-04-19 06:46:55', 'Banner', 'banner.jpg', '', 2, 'banners', 'default', 1, 'thienlonghoi'),
(65, '2012-04-19 06:46:55', 'Banner 1', 'banner-1.jpg', '', 3, 'banners', 'default', 1, 'thienlonghoi'),
(66, '2012-04-19 06:46:55', 'Banner 2', 'banner-2.jpg', '', 4, 'banners', 'default', 1, 'thienlonghoi'),
(67, '2012-04-19 06:46:55', 'Banner 3', 'banner-3.jpg', '', 5, 'banners', 'default', 1, 'thienlonghoi'),
(68, '2012-04-19 06:46:55', 'Banner 4', 'banner-4.jpg', '', 6, 'banners', 'about', 1, 'thienlonghoi'),
(69, '2012-04-19 06:46:55', 'Banner 5', 'banner-5.jpg', '', 7, 'banners', 'about', 1, 'thienlonghoi'),
(70, '2012-04-19 06:46:55', 'Banner 6', 'banner-6.jpg', '', 8, 'banners', 'products', 1, 'thienlonghoi'),
(71, '2012-04-19 06:46:55', 'Banner 7', 'banner-7.jpg', '', 9, 'banners', 'products', 1, 'thienlonghoi'),
(72, '2012-04-19 06:46:55', 'Banner 8', 'banner-8.jpg', '', 10, 'banners', 'products', 1, 'thienlonghoi'),
(73, '2012-04-19 06:46:55', 'Banner 9', 'banner-86.jpg', '', 11, 'banners', 'news', 1, 'thienlonghoi'),
(74, '2012-04-19 06:46:55', 'Banner 10', 'banner-10.jpg', '', 12, 'banners', 'news', 1, 'thienlonghoi'),
(75, '2012-04-19 06:46:55', 'Banner 11', 'banner-11.jpg', '', 13, 'banners', 'news', 1, 'thienlonghoi'),
(76, '2012-04-19 06:46:55', 'Banner 12', 'banner-12.jpg', '', 14, 'banners', 'services', 1, 'thienlonghoi'),
(77, '2012-04-19 06:46:55', 'Banner 13', 'banner-13.jpg', '', 15, 'banners', 'services', 1, 'thienlonghoi'),
(78, '2012-04-19 06:46:55', 'Banner 14', 'banner-14.jpg', '', 16, 'banners', 'contact', 1, 'thienlonghoi'),
(79, '2012-04-19 06:46:55', 'Banner 15', 'banner-15.jpg', '', 17, 'banners', 'contact', 1, 'thienlonghoi'),
(80, '2012-04-19 06:46:55', 'Banner 16', 'banner-16.jpg', '', 18, 'banners', 'video', 1, 'thienlonghoi'),
(81, '2012-04-19 06:46:55', 'Banner 17', 'banner-17.jpg', '', 19, 'banners', 'video', 1, 'thienlonghoi'),
(94, '2012-04-19 07:35:16', 'Logo', 'logo.gif', 'http://thienlonghoi.dos.vn/', 20, 'logo', 'default', 1, 'thienlonghoi');

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
) ENGINE=InnoDB  DEFAULT CHARSET=utf8 AUTO_INCREMENT=13 ;

--
-- Dumping data for table `dos_module_contacts`
--

INSERT INTO `dos_module_contacts` (`record_id`, `title`, `titleen`, `content`, `contenten`, `create_date`, `record_order`, `hit`, `hot`, `tag`, `tagen`, `description`, `descriptionen`, `enable`, `dos_usernames_username`) VALUES
(8, 'Liên hệ với chúng tôi', '', '<p><span style="color:#008000;font-size:medium;"><strong>DNTN SIÊU VIỆT</strong></span></p>\n<p>3A/1 Đoàn Văn Cự, P. Tam Hiệp, TP. Biên Hòa, Tỉnh Đồng Nai</p>\n<p>Điện thoại: 061. 629 0909 - 061. 3914 541</p>\n<p>Fax: 061. 629 0819</p>\n<p>Hotline: 0937 107 888 - Mr. Nguyên - Phụ trách Kinh doanh.</p>\n<p>Email: nguyensieuviet@yahoo.com.vn</p>\n<p>Website: www.mayphotocopysieuviet.com</p>', '', '2012-04-12 02:03:01', 1, 0, 0, 'lien-he-voi-chung-toi', '', '', '', '1', 'mayphotocopysieuviet'),
(9, 'Liên hệ', '', '<p>0937.107 888 (Mr. Nguyên)</p>', '', '2012-04-12 02:03:32', 2, 0, 1, 'lien-he', '', '', '', '1', 'mayphotocopysieuviet'),
(11, 'Liên hệ với chúng tôi', '', '<p>Địa chỉ:<br />Shop Quần Áo Rẻ Đẹp - Online Shop<br />Địa chỉ: 222 Nguyễn Thái Sơn, P.4, Quận Gò Vấp, Tp.HCM.<br />Email: kinhdoanh@quanaoredep.com, tuah1lz0@yahoo.com, tuantang.lf@gmail.comĐiện thoại:<br />093 -736-9468, 099-621-2889</p>', '', '2012-04-19 02:12:28', 1, 0, 0, 'lien-he-voi-chung-toi', '', 'Địa chỉ:\r\nShop Quần Áo Rẻ Đẹp - Online Shop\r\nĐịa chỉ: 222 Nguyễn Thái Sơn, P.4, Quận Gò Vấp, Tp.HCM.\r\nEmail: kinhdoanh@quanaoredep.com, tuah1lz0@yahoo.com, tuantang.lf@gmail.comĐiện thoại:\r\n093 -736-9468, 099-621-2889', '', '1', 'thoitrang'),
(12, 'Liên hệ với chúng tôi để được phục vụ nhiệt tình', '', '<p>CÔNG TY TNHH THIÊN LONG HỘI</p>\r\n<p>Nhà sản xuất đồ gỗ nội - ngoại thất cao cấp</p>\r\n<p>Nhà máy<br />- Địa chỉ: Lô 4-5 Cụm công nghiệp Đại Hiệp - Đại Lộc - Quảng Nam</p>\r\n<p>Văn phòng:</p>\r\n<p>- Địa chỉ: 23 Núi Thành - TP.Đà Nẵng<br />- Điện thoại: 0511.3634345 - 3626077 - 3626099. Fax: 0511.3634345</p>\r\n<p>- Website: www.thienlonghoi.com </p>\r\n<p>Cảm ơn quý khách đã ghé thăm website của chúng tôi. Hy vọng sự nhiệt tình của chúng tôi sẽ làm quý khách hài lòng.</p>', '', '2012-04-19 08:50:17', 1, 0, 0, 'lien-he-voi-chung-toi-de-duoc-phuc-vu-nhiet-tinh', '', 'CÔNG TY TNHH THIÊN LONG HỘI\r\n\r\nNhà sản xuất đồ gỗ nội - ngoại thất cao cấp\r\n\r\nNhà máy\r\n- Địa chỉ: Lô 4-5 Cụm công nghiệp Đại Hiệp - Đại Lộc - Quảng Nam\r\nVăn phòng:\r\n- Địa chỉ: 23 Núi Thành - TP.Đà Nẵng\r\n- Điện thoại: 0511.3634345', '', '1', 'thienlonghoi');

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
('Trang chủ', '', 'default', '', 1, '', '', '', '', 'mayphotocopysieuviet'),
('Giới thiệu', '', 'about', '', 2, '', '', '', '', 'mayphotocopysieuviet'),
('Sản phẩm', '', 'products', '', 3, '', '', '', '', 'mayphotocopysieuviet'),
('Dịch vụ', '', 'services', '', 4, '', '', '', '', 'mayphotocopysieuviet'),
('Tin tức & sự kiện', '', 'news', '', 5, '', '', '', '', 'mayphotocopysieuviet'),
('Liên hệ', '', 'contact', '', 6, '', '', '', '', 'mayphotocopysieuviet'),
('Trang chủ', '', 'default', '', 1, '', '', '', '', 'phumyan'),
('Giới thiệu', '', 'about', '', 2, '', '', '', '', 'phumyan'),
('Sản phẩm', '', 'products', '', 3, '', '', '', '', 'phumyan'),
('Dịch vụ', '', 'services', '', 4, '', '', '', '', 'phumyan'),
('Tin tức & sự kiện', '', 'news', '', 5, '', '', '', '', 'phumyan'),
('Video', '', 'video', '', 6, '', '', '', '', 'phumyan'),
('Liên hệ', '', 'contact', '', 7, '', '', '', '', 'phumyan'),
('Trang chủ', '', 'default', '', 1, '', '', '', '', 'tinhungphat'),
('Giới thiệu', '', 'about', '', 2, '', '', '', '', 'tinhungphat'),
('Sản phẩm', '', 'products', '', 3, '', '', '', '', 'tinhungphat'),
('Dịch vụ', '', 'services', '', 4, '', '', '', '', 'tinhungphat'),
('Tin tức & sự kiện', '', 'news', '', 5, '', '', '', '', 'tinhungphat'),
('Video', '', 'video', '', 6, '', '', '', '', 'tinhungphat'),
('Liên hệ', '', 'contact', '', 7, '', '', '', '', 'tinhungphat'),
('Trang chủ', NULL, 'default', NULL, 1, NULL, NULL, NULL, NULL, 'thoitrang'),
('Giới thiệu', NULL, 'about', NULL, 2, NULL, NULL, NULL, NULL, 'thoitrang'),
('Sản phẩm', NULL, 'products', NULL, 3, NULL, NULL, NULL, NULL, 'thoitrang'),
('Dịch vụ', NULL, 'services', NULL, 4, NULL, NULL, NULL, NULL, 'thoitrang'),
('Tin tức & sự kiện', NULL, 'news', NULL, 5, NULL, NULL, NULL, NULL, 'thoitrang'),
('Video', NULL, 'video', NULL, 6, NULL, NULL, NULL, NULL, 'thoitrang'),
('Liên hệ', NULL, 'contact', NULL, 7, NULL, NULL, NULL, NULL, 'thoitrang'),
('Trang chủ', NULL, 'default', NULL, 1, NULL, NULL, NULL, NULL, 'thienlonghoi'),
('Giới thiệu', NULL, 'about', NULL, 2, NULL, NULL, NULL, NULL, 'thienlonghoi'),
('Sản phẩm', NULL, 'products', NULL, 3, NULL, NULL, NULL, NULL, 'thienlonghoi'),
('Dịch vụ', NULL, 'services', NULL, 4, NULL, NULL, NULL, NULL, 'thienlonghoi'),
('Tin tức & sự kiện', NULL, 'news', NULL, 5, NULL, NULL, NULL, NULL, 'thienlonghoi'),
('Video', NULL, 'video', NULL, 6, NULL, NULL, NULL, NULL, 'thienlonghoi'),
('Liên hệ', NULL, 'contact', NULL, 7, NULL, NULL, NULL, NULL, 'thienlonghoi');

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
) ENGINE=InnoDB  DEFAULT CHARSET=utf8 AUTO_INCREMENT=28 ;

--
-- Dumping data for table `dos_module_news`
--

INSERT INTO `dos_module_news` (`record_id`, `title`, `titleen`, `postdate`, `pic_thumb`, `preview`, `previewen`, `content`, `contenten`, `tag`, `tagen`, `description`, `descriptionen`, `hits`, `record_order`, `hot`, `extra_field1`, `extra_field2`, `enable`, `dos_module_item_cat_cat_id`) VALUES
(13, '6 mẹo chọn ghế sofa hoàn hảo', '', '2012-04-12 02:12:11', '6-meo-chon-ghe-sofa-hoan-hao.jpg', '<p>Việc chọn một bộ sofa dường như không phải là một công việc dễ dàng khi phong cách, hình dạng, màu sắc, và giá cả của các bộ sofa này rất đa dạng.</p>', '', '<p>Để tiết kiệm thời gian, tiền bạc và công sức, bạn có thể tham khảo một số mẹo sau trước khi lựa chọn một bộ sofa phù hợp cho không gian nhà.</p>\n<p>1. Xác định kích thước</p>\n<p>Nếu phòng khách nhà bạn có diện tích lớn, bạn cần quyết định xem bạn muốn kê bao nhiêu chiếc ghế. Bạn có muốn dùng đi-văng hay ghế bành? Bàn nhỏ kiểu bàn cà phê liệu có cần thiết cho không gian nhà bạn? Nếu câu trả lời là có thì một bộ sofa đơn giản, hình chữ L có lẽ là lựa chọn phù hợp nhất. Trong trường hợp bạn muốn bộ sofa là điểm nhấn của phòng khách thì bạn cần đến một chiếc đi-văng đủ lớn và nhiều chỗ ngồi.</p>\n<p>Chú ý đến kích thước ghế</p>\n<p>Nếu không gian nhà bạn khiêm tốn, thì hẳn là bạn cần một chiếc trường kỷ nhỏ hơn.</p>\n<p>2. Quyết định hướng kê sofa</p>\n<p>Bạn cần định hình trước sofa sẽ được sắp xếp thế nào? Kê sofa để xem TV, để gia đình quây quần tụ họp, chơi trò chơi? Bạn có thể kê sofa tạo thành vòng tròn, hoặc nửa vòng tròn, lấy bàn làm trung tâm</p>', '', '6-meo-chon-ghe-sofa-hoan-hao', '', 'Chú ý đến kích thước ghế\n\nNếu không gian nhà bạn khiêm tốn, thì hẳn là bạn cần một chiếc trường kỷ nhỏ hơn.\n\n2. Quyết định hướng kê sofa', '', 0, 1, 1, '', '', 1, 9),
(14, 'Căn hộ nhỏ mà không nhỏ', '', '2012-04-13 02:14:53', 'can-ho-nho-ma-khong-nho.jpg', '<p style="text-align:left;">Tuy chỉ có diện tích 35 m2 nhưng ngôi nhà nhỏ này vẫn rất thoáng đãng, đầy đủ tiện nghi và đẹp mắt nhờ cách thiết kế, bố trí sáng tạo như bậc cầu thang kiêm nơi để quần áo…</p>', '', '<p>Tuy chỉ có diện tích 35 m2 nhưng ngôi nhà nhỏ này vẫn rất thoáng đãng, đầy đủ tiện nghi và đẹp mắt nhờ cách thiết kế, bố trí sáng tạo như bậc cầu thang kiêm nơi để quần áo…</p>\n<p>Phòng khách nhỏ bố trí những đồ vật đơn giản như salon chữ L, bàn gỗ, TV treo tường..</p>\n<p>fggggdgfdgfgfdgfgf</p>\n<p style="text-align:center;"><img src="/public/userfiles/image/phumyan/image/can-ho-3.jpg" alt="" width="480" height="468" /></p>\n<p style="text-align:center;">dgfgfggfdgfdg</p>\n<p style="text-align:center;">ggffgfgdf</p>\n<p style="text-align:center;"> <img src="/public/userfiles/image/phumyan/image/giuong.jpg" alt="" width="200" height="135" /></p>', '', 'can-ho-nho-ma-khong-nho', '', '', '', 0, 2, 1, '', '', 1, 9),
(15, 'Canon sắp có một loạt ống kính fix mới', '', '2012-04-16 03:44:24', 'canon-sap-co-mot-loat-ong-kinh-fix-moi.jpg', '<p>Danh sách này có sự góp mặt của các ống fix nổi tiếng như 50 mm f/1.4, 85 mm f/1.2, 100 mm f/2.0 hay 200 mm f/2.0.<br /><br /></p>', '', '<p>Danh sách này có sự góp mặt của các ống fix nổi tiếng như 50 mm f/1.4, 85 mm f/1.2, 100 mm f/2.0 hay 200 mm f/2.0.</p>\n<p>Ống kính fix 50mm f/1.4 sắp có bản thay thế.</p>\n<p>Nguồn tin từ Canonrumors và Photorumors đồng loạt cho hay Canon mới đây đã được cấp các bằng sáng chế về 6 bộ ống kính fix với độ mở lớn. Các tài liệu này được hãng máy ảnh Nhật Bản nộp vào tháng 6/2010 và mới được cơ quan có thẩm quyền chấp nhận hôm qua.</p>\n<p>Các ống kính mới được nhắc đến bao gồm 50 mm f/1.4, 85 mm f/1.2, 85 mm f/1.8, 100 mm f/2.0, 135 mm f/2.0, 200 mm f/2.0.</p>\n<p> </p>', '', 'canon-sap-co-mot-loat-ong-kinh-fix-moi', '', 'Canon sắp có một loạt ống kính fix mới', '', 0, 1, 0, '', '', 1, 10),
(16, 'Giao dịch với nhân viên thu ngân qua máy ATM', '', '2012-04-16 03:45:39', 'giao-dich-voi-nhan-vien-thu-ngan-qua-may-atm.jpg', '<p>Kể từ khi được đưa vào sử dụng vào những năm 60 của thế kỷ trước, máy rút tiền tự động (ATM) đã cung cấp cho khách hàng của ngân hàng phương thức tiện lợi để rút tiền mặt 24/24 giờ mỗi ngày, mà không phải chờ đến giờ làm việc của ngân hàng và xếp hàng chờ giao dịch với nhân viên của ngân hàng.</p>', '', '<p style="text-align:justify;">Kể từ khi được đưa vào sử dụng vào những năm 60 của thế kỷ trước, máy rút tiền tự động (ATM) đã cung cấp cho khách hàng của ngân hàng phương thức tiện lợi để rút tiền mặt 24/24 giờ mỗi ngày, mà không phải chờ đến giờ làm việc của ngân hàng và xếp hàng chờ giao dịch với nhân viên của ngân hàng.</p>\n<p style="text-align:justify;">Theo trang tin Gizmag, giờ đây hãng cung cấp máy ATM lớn nhất thế giới đã “bố trí” được nhân viên thu ngân ngay trong máy ATM nhờ thiết bị truyền hình 2 chiều tích hợp cho phép người sử dụng máy nói chuyện với nhân viên thu ngân từ xa.</p>\n<p style="text-align:justify;">Bên cạnh việc để khách hàng chọn chế độ tự phục vụ thông thường mà mọi người đã quen thuộc, máy ATM đa chức năng mới có tên gọi SelfServ của Công ty NCR (Mỹ) còn giúp người sử dụng chọn giao diện có tên gọi Tương tác với nhân viên (Interactive Teller) để thực hiện giao dịch với nhân viên thu ngân mà không phải đến ngân hàng.</p>\n<p style="text-align:justify;">Theo NCR, công nghệ mới sẽ cho phép các ngân hàng cung cấp khả năng truy cập 24 giờ mỗi ngày vào các dịch vụ với nhân viên thu ngân.</p>\n<p style="text-align:justify;">Ngoài ra, nó còn cho phép các ngân hàng cung cấp dịch vụ giao dịch với nhân viên thu ngân tại những khu vực không có chi nhánh ngân hàng.</p>\n<p style="text-align:justify;">“Người tiêu dùng không thể thường xuyên giao dịch ở ngân hàng trong giờ mở cửa. Họ muốn được phục vụ vào thời gian và địa điểm thuận tiện cho họ. Máy ATM SelfServ cung cấp dịch vụ tự phục vụ tốt nhất cho các giao dịch đơn giản, thông thường và ngoài giờ làm việc cũng như phục vụ từ xa”, ông Michael O’Laughlin, Phó chủ tịch phụ trách các dịch vụ tài chính của NCR, cho biết.</p>\n<p style="text-align:justify;">Máy SelfServ của NCR hoạt động nhờ công nghệ giao dịch qua video hiện đang được thử nghiệm tại Mỹ.</p>', '', 'giao-dich-voi-nhan-vien-thu-ngan-qua-may-atm', '', 'Giao dịch với nhân viên thu ngân qua máy ATM', '', 0, 2, 0, '', '', 1, 10),
(17, 'Những điều cần biết khi chọn mua máy chiếu', '', '2012-04-16 03:50:17', 'nhung-dieu-can-biet-khi-chon-mua-may-chieu.jpg', '<p>Đối với những người có nhu cầu trang bị hệ thống giải trí gia đình, việc chọn mua máy chiếu không dễ khi chúng liên tục lỗi mốt.</p>', '', '<p style="text-align:justify;">Đối với những người có nhu cầu trang bị hệ thống giải trí gia đình, việc chọn mua máy chiếu không dễ khi chúng liên tục lỗi mốt.</p>\n<p style="text-align:justify;"><strong>Cần một số hiểu biết nhất định</strong></p>\n<p style="text-align:justify;">Sở dĩ nói khó mua là bởi, tuy có rất nhiều dòng máy chiếu trên thị trường, nhưng người mua cần có một số hiểu biết nhất định về loại sản phẩm này mới có thể chọn được loại máy đáp ứng đúng chất lượng, giá cả và yêu cầu sử dụng.</p>\n<p style="text-align:justify;">Mặc dù giá thành máy chiếu liên tục giảm, nhưng hiện nay mức trung bình vẫn được tính bằng đơn vị chục triệu đồng, do vậy bạn cần cân nhắc xem loại sản phẩm này có thực sự thích hợp với mình, đặc biệt là khi đặc thù của nó có một số hạn chế nhất định. Chẳng hạn, tỉ lệ tương phản của máy chiếu không được xuất sắc. Đây là tỉ lệ giữa màu đen nhất và màu trắng nhất có thể được thể hiện. Khả năng thể hiện độ đen càng lớn thì tỉ lệ này càng lớn, mà đối với một thiết bị hoạt động bằng cơ chế chiếu sáng thì mức độ đen "kịt" hầu như là "bất khả thi".</p>\n<p style="text-align:justify;">Rõ ràng là tỉ lệ tương phản 3000:1 thì tốt hơn 1000:1, nhưng chớ nên tin vào tỉ lệ do nhà sản xuất quảng cáo. Đây chỉ là tỉ lệ lý thuyết, được lấy từ mẫu tốt nhất mà họ có được của một loại sản phẩm, do đó một máy chiếu có tỉ lệ tương phản lý thuyết cao hơn chưa chắc đã thực sự cho hình ảnh sắc nét hơn một máy chiếu có tỉ lệ này thấp hơn. Cách tốt nhất là bạn phải lựa chọn thật kỹ bằng mắt mình.</p>\n<p style="text-align:justify;">Một vấn đề đặc thù nữa của máy chiếu là "hiệu ứng cửa ra màn hình" (screen-door effect). Hãy thử nhìn kỹ vào phần trắng hoặc sáng màu của hình ảnh được chiếu lên, đối với một số máy chiếu bạn có thể thấy một đường chéo rất mờ ở khu vực này. Mặc dù trong phần lớn các trường hợp, đường chéo này không rõ lắm và bạn chỉ nhìn thấy khi nhìn thật gần, nhưng bạn vẫn cần thận trọng kẻo mua phải máy chiếu có đường chéo này rõ tới mức bạn nhìn thấy nó ngay cả từ khoảng cách xem bình thường. Vấn đề này thường xảy ra ở loại máy chiếu DLP rõ ràng hơn so với ở máy LCD.</p>\n<p style="text-align:justify;"><strong>Ống kính và màn hình</strong></p>\n<p style="text-align:justify;">Máy chiếu có các loại ống kính khác nhau, do đó bạn cần chọn loại máy có ống kính chiếu được kích cỡ hình ảnh phù hợp từ một khoảng cách phù hợp với diện tích căn phòng mà bạn định sử dụng. Bên cạnh đó, chỉ số bù góc vuông của máy cũng khá quan trọng bởi chúng quyết định tính linh hoạt trong việc bố trí máy. Số góc có thể bù càng lớn, bạn càng có thể đặt máy chiếu lệch hơn so với điểm chính giữa nhiều hơn mà vẫn đạt được hình ảnh vuông vắn, trung thực.</p>\n<p style="text-align:justify;">Bạn cần nhớ rằng khi dùng máy chiếu, bạn sẽ phải thay bóng đèn, thường là sau khoảng 2.000 - 3.000 giờ sử dụng, tức là trung bình khoảng 2 - 3 năm. Do đó, giá cả của bóng đèn cũng là một yếu tố cần cân nhắc trước khi chọn máy, bởi nó sẽ làm phụ trội tổng chi phí cho máy. Bóng đèn thường có giá vài triệu đồng, nhưng cũng có loại lên tới hơn chục triệu đồng. Một số loại phải nhờ tới bàn thay chuyên nghiệp mới thay được, trong khi một số loại máy chiếu mới cho phép người dùng tự thay bóng đèn. Một số máy chiếu có chế độ chạy tiết kiệm, cho phép kéo dài tuổi thọ bóng đèn, nhưng chế độ này sẽ làm giảm độ sáng của hình ảnh.</p>\n<p style="text-align:justify;"><strong>3. Cách chọn máy chiếu tại gia đình</strong></p>\n<p style="text-align:justify;">Máy chiếu (projector) được lòng dân mê điện ảnh vì dễ bố trí và cho hình ảnh lớn, đẹp. Tuy nhiên, cách sử dụng và bảo quản đồ vật hàng nghìn USD này cũng rắc rối hơn TV đôi chút.</p>\n<p style="text-align:justify;">“Ngay cả máy chiếu hàng nghìn USD, nếu không được cài đặt tốt thì chất lượng hình ảnh cũng không như ý muốn”, ông Nguyễn Tuấn Thành, Trưởng phòng Kỹ thuật công ty DigiWorld, đơn vị phân phối độc quyền máy chiếu Infocus tại Việt Nam, khẳng định.</p>\n<p style="text-align:justify;">Đa phần những người đam mê nghệ thuật thứ bảy đều công nhận projector là đối thủ đáng gờm nhất của dòng TV cỡ lớn hiện nay. Ưu thế của thiết bị thu hình truyền thống nổi bật nhất ở điểm dễ sử dụng và lắp đặt. Nhưng máy chiếu, ngoài kích thước hình ảnh lớn hơn, còn có ưu thế về giá, chất lượng hình ảnh và khả năng bố trí. So sánh các chỉ số kỹ thuật, máy chiếu ấn tượng hơn màn hình LCD hoặc plasma có cùng giá tiền cả về độ phân giải, độ sáng và tương phản. Nhưng sản phẩm “xuất thân” từ phòng họp của các công ty lớn này cũng khó tính hơn các anh em khác trong dòng thiết bị nghe nhìn và đòi hỏi sự quan tâm đặc biệt.</p>\n<p style="text-align:justify;"><strong>Lựa chọn công nghệ: LCD và DLP</strong></p>\n<p style="text-align:justify;">“Hiện tại, một số projector thuộc dòng phổ thông cũng có công nghệ xử lý ánh sáng số DLP vốn chỉ có trong những dòng máy chuyên dụng cỡ lớn ở rạp chiếu phim”, ông Thành nói.<br />Trong công nghệ LCD (liquid crystal display – màn hình tinh thể lỏng) trước đây, máy chiếu tổng hợp hình ảnh màu dựa trên 3 màu cơ bản là đỏ, lục và xanh dương (RGB). Nguồn sáng trắng ban đầu được tách thành 3 nguồn sáng đơn sắc là đỏ, lục, xanh dương và được dẫn đến 3 tấm LCD độc lập. Nếu điểm ảnh trên LCD ở trạng thái đóng, ánh sáng không thể xuyên qua thì điểm ảnh biểu diễn trên màn hình là đen. Tương tự, độ sáng của điểm ảnh cũng thay đổi tương ứng theo trạng thái mở của điểm ảnh LCD. Điều khiển 3 tấm LCD đóng mở điểm ảnh theo thông tin ảnh số, ta thu được 3 ảnh đơn sắc theo hệ màu RGB. Sau đó, tất cả được tổng hợp một cách tự nhiên trong một lăng kính theo cơ chế ánh sáng trước khi xuất đến màn chiếu. Nhược điểm của máy chiếu LCD thường thể hiện khi chiếu phim là lộ điểm ảnh, màu đen không thật và hình ảnh chuyển động nhanh sẽ bị nhòe.</p>\n<p style="text-align:justify;"><strong>Công nghệ DLP đem lại sự nhỏ gọn của máy chiếu tại gia đình.</strong></p>\n<p style="text-align:justify;">Khắc phục nhược điểm này, công nghệ DLP sử dụng gương để phản chiếu ánh sáng. Một chip DMD (Digital Micromirror Device) được tích hợp hàng nghìn vi gương, mỗi vi gương tương ứng một điểm ảnh. Vi gương dao động hàng nghìn lần/giây và thể hiện được 1.024 cấp độ xám. Để thể hiện hình ảnh màu, một bánh quay màu (color wheel) được đặt giữa nguồn sáng và DMD. Phổ biến hiện nay là hệ thống sử dụng bánh quay 4 màu gồm đỏ, lục, xanh dương, trắng để lần lượt tạo và xuất ra 4 ảnh đơn sắc trong một chu kỳ. Thay vì tổng hợp tự nhiên tại thấu kính, 4 hình ảnh đơn sắc lần lượt được ghi nhận và tổng hợp tại não người (tương tự như phương pháp tổng hợp ảnh 3D bằng mắt phổ biến trong điện ảnh). Ưu điểm của DLP là tạo được hình ảnh mượt, không lộ điểm ảnh, độ tương phản cao và không bị hiện tượng lệch hội tụ như công nghệ dùng LCD 3 tấm. Cấu tạo máy chiếu DLP đơn giản hơn LCD 3 tấm nên kích thước máy nhỏ nhẹ. Nhờ đưa thêm màu trắng vào bánh quay màu mà hình ảnh tạo ra bởi máy chiếu DLP sáng hơn và có màu trắng rất thuần khiết. Điểm ảnh trong máy chiếu “khít” hơn, hình ảnh sắc nét hơn so với LCD.</p>\n<p style="text-align:justify;"><strong>Chỉ số kỹ thuật</strong></p>\n<p style="text-align:justify;">Độ sáng, độ tương phản và độ phân giải là ba chỉ số cơ bản ảnh hưởng trực tiếp đến chất lượng hình ảnh của máy chiếu. Thông thường, độ sáng được quan tâm nhiều nhất bởi chỉ số này càng cao thì chất lượng hình ảnh càng độc lập với ánh sáng bên ngoài. Đây cũng là căn cứ thể hiện sự khác biệt giữa 2 dòng máy chiếu gia đình và văn phòng.</p>\n<p style="text-align:justify;">Phòng họp tại các công ty thường có ánh sáng phức tạp, người có thể đi lại, cần ánh sáng để ghi chép… nên đòi hỏi projector cho nguồn ánh sáng mạnh. Người sử dụng máy chiếu tại gia đình hay thiết kế phòng riêng để thưởng thức, khi xem phim thường tắt hết đèn nên độ sáng chỉ khoảng từ 1.500 - 2.200 Ansilumen là có đáp ứng được yêu cầu. Gia tăng thêm cường độ ánh sáng chỉ có sự khác biệt về… tiền mua máy và tiền điện.</p>\n<p style="text-align:justify;">Ngược lại, độ tương phản và phân giải những máy chiếu cho gia đình lại được gia tăng đặc biệt. Nếu độ tương phản càng cao, màu sắc càng sống động, trung thực. Màn LCD hiện nay có độ tương phản phổ biến ở mức 500 – 700:1, trong khi máy chiếu thông thường có độ tương phản từ 1.700 – 2.200:1. Những biểu đồ, đồ thị trong các buổi thuyết trình tại văn phòng không đòi hỏi quá khắt khe về yếu tố này, nhưng đây lại là điểm làm nên sức hút cho những bộ phim DVD. Mỗi projector có thể tương thích với nhiều độ phân giải, chế độ SVGA (800 x 600 pixel) thích hợp với những phòng rộng và tối vì điểm ảnh khá lớn. Chế độ chuẩn XGA (1024 x 768) phù hợp với đa số phòng chiếu gia đình.</p>\n<p style="text-align:justify;">Chỉ số bù góc vuông khá quan trọng nhưng thường ít được người mua để ý. Đây là khả năng định hướng luồng sáng của máy chiếu ánh sáng vuông góc với màn ảnh, cho hình ảnh vuông vắn và trung thực. Số góc có thể bù càng lớn, khả năng bố trí máy càng linh hoạt.</p>\n<p style="text-align:justify;">Projector dùng để xem phim tại nhà không cần loại có sẵn loa vì chúng thường có công suất vừa phải, chỉ thích hợp với phòng họp nhỏ. Mặt khác, hệ thống rạp hát gia đình thường đi kèm với đầu ampli, máy chơi DVD và dàn âm thanh chuyên dụng.Do đó, những tính năng hỗ trợ chiếu khuôn hình rộng (16:9), chuẩn kết nối DVI, HDTV,… quan trọng hơn để có được chất lượng hình ảnh tốt nhất.</p>\n<p style="text-align:justify;"><strong>Bảo quản và sử dụng</strong></p>\n<p style="text-align:justify;">Không như màn hình TV, máy chiếu có bóng đèn công suất lớn tỏa nhiều nhiệt nên chúng cần được bố trí vận hành tại nơi thoáng mát, nguồn điện ổn định. Sau mỗi lần xem, người dùng phải đợi một lúc cho máy nguội mới cất vào hộp hoặc che phủ tránh bụi. Một số gia đình thiết kế giá treo projector trên trần nhà để đảm bảo yếu tố này mà lại tiết kiệm được không gian. Bóng đèn cũng là linh kiện cần được “chăm sóc” kỹ càng nhất. Thông thường, toàn bộ thân máy chiếu được bảo hành 1-2 năm, nhưng riêng đèn hình chỉ được bảo hành 1 tháng hoặc 90 giờ chiếu. Người dùng cần thường xuyên quan sát bóng đèn, nếu có hiện tượng nhòe hình thì nên thay ngay.</p>\n<p style="text-align:justify;">Để tiết kiệm diện tích, người dùng có thể tận dụng bức tường phẳng sơn nhẵn để chiếu hình. Tuy nhiên, chất lượng hình ảnh không thể bằng tấm phông chiếu chuyên dụng. Tấm màn này được phủ sơn phản quang để ánh sáng phản xạ đến mắt người nhiều nhất. Phần lớn màn chiếu có màu trắng, nhưng cũng có loại màu xám để chống chói và tăng sắc đen cho ảnh. Nếu yêu cầu chất lượng cao hơn, khách hàng có thể yêu cầu loại cao cấp trong sơn có pha hạt kim loại tăng độ nét và độ sáng.</p>\n<p style="text-align:justify;">Hiện tại, khách hàng mua máy chiếu thường dựa vào thương hiệu hoặc “tư vấn” của bạn bè vì loại sản phẩm này còn mới đối với nhiều người. Những thương hiệu phổ biến ở Việt Nam có Epson, Canon, Infocus, Optoma, Sony… Sản xuất các loại máy chiếu nhỏ gọn cho văn phòng nhỏ và giải trí tại gia đình ngày càng được các nhà sản xuất chú trọng.</p>\n<p style="text-align:justify;"><strong>4. Máy chiếu LCD hay máy chiếu DLP</strong></p>\n<p style="text-align:justify;">Máy chiếu nói chung có thể phân loại theo hai công nghệ, DLP (Digital Light Processing) hay LCD (Liquid Crystal Display). Công nghệ này liên quan đến cơ chế hoạt động bên trong mà máy chiếu sử dụng để hiển thị hình ảnh. Trên thị trường, sự cạnh tranh giữa 2 nhóm máy chiếu công nghệ LCD (đại diện tiêu biểu là Máy chiếu 3M) với máy chiếu công nghệ DLP (tiêu biểu là Acer), ngày càng quyết liệt.<br />Điều này giúp cả hai công nghệ tự hoàn thiện mình hơn nữa để chất lượng hình ảnh ngày càng rõ, đẹp, tự nhiên. Đồng thời, giá thành sản phẩm cũng vì thế mà rẻ đi. Sự khác biệt chất lượng giữa các công nghệ phóng hình (LCD, DLP và LCOS) giờ đây còn rất nhỏ. Máy chiếu được phân loại theo một số tiêu chí thông dụng như tính trong suốt (transparent), tính phản chiếu (reflective) đối với ánh sáng truyền; hoặc 3 tấm, 1 tấm theo số lượng tấm tạo ảnh; hoặc LCD, gương, LCOS theo cấu tạo. Về nguyên lý, ánh sáng phát ra từ đèn công suất cao phải đi qua nhiều thấu kính để điều chỉnh cho ổn định, đồng nhất trước khi đến lăng kính điều chế hình ảnh cũng như lúc xuất ra. Hai phương pháp thường được dùng hiện nay là trong suốt cho xuyên qua và phản chiếu bằng gương.</p>\n<p style="text-align:justify;">Phương pháp trong suốt thường dùng tấm LCD trong khi phương pháp phản chiếu lại sử dụng hàng ngàn gương nhỏ tương ứng hàng ngàn điểm ảnh. Mỗi phương pháp đều có ưu và nhược điểm riêng song mức khác biệt chất lượng hiện tại đã được rút ngắn đến mức khó phân biệt. Tiếc là vẫn chưa có máy chiếu nào toàn năng đến mức đáp ứng tốt cả trình diễn nghiệp vụ và chiếu phim. Chính vì thế để lựa được máy chiếu phù hợp với mục đích sử dụng, bạn cần hiểu rõ công nghệ trước.</p>\n<p style="text-align:justify;">Cả hai công nghệ LCD hay DLP đều có những ưu điểm riêng, điều quan trọng là hiểu rõ mỗi công nghệ mang lại điều gì.</p>\n<p style="text-align:justify;"><strong>CÔNG NGHỆ DLP</strong></p>\n<p style="text-align:justify;">Digital Light Processing là giải pháp hiển thị kỹ thuật số. Công nghệ DLP sử dụng một vi mạch bán dẫn quang học, gọi là Digital Micromirror Device (tạm dịch là thiết bị phản chiếu siêu nhỏ kỹ thuật số) hay DMD để tái tạo dữ liệu nguồn.</p>\n<p style="text-align:justify;">Trái ngược với phương pháp trong suốt cho ánh sáng truyền qua của LCD, công nghệ DLP do Texas Instruments phát triển độc quyền vào năm 1997 sử dụng gương để phản chiếu ánh sáng. Một chip DMD (Direct Micromirror Device) được tích hợp đến hàng ngàn vi gương, mỗi vi gương tương ứng một điểm ảnh. Vì gương dao động hàng ngàn lần/giây và thể hiện được 1.024 cấp độ xám. Để thể hiện hình ảnh màu, một bánh quay màu (color wheel) được đặt giữa nguồn sáng và DMD. Phổ biến hiện nay là hệ thống sử dụng bánh quay 4 màu gồm đỏ, lục, xanh dương, trắng để lần lượt tạo và xuất ra 4 ảnh đơn sắc trong một chu kỳ. Thay vì tổng hợp tự nhiên tại thấu kính, 4 hình ảnh đơn sắc lần lượt được ghi nhận và tổng hợp tại não người (tương tự như phương pháp tổng hợp ảnh 3D bằng mắt phổ biến trong giới thanh niên vào những năm 1990).</p>\n<p style="text-align:justify;">- light source: nguồn sáng<br />- optics: bộ phận quang học<br />- color filter: bộ lọc màu<br />- circuit board: bo mạch<br />- DMD: chip DMD</p>\n<p style="text-align:justify;"><strong>Ưu điểm của DLP</strong></p>\n<p style="text-align:justify;">* Hiệu ứng "ca-rô" (lưới) nhẹ hơn vì các ảnh điểm gần nhau hơn. Điều này không cho nhiều khác biệt với dữ liệu, nhưng nó cho hình ảnh video mịn hơn.</p>\n<p style="text-align:justify;">* Có thể đạt độ tương phản (contrast) cao hơn.<br />* Gọn nhẹ, dễ di động hơn do có ít thành phần hơn.<br />* Một số nghiên cứu cho rằng máy chiếu DLP có tuổi thọ cao hơn máy chiếu LCD.</p>\n<p style="text-align:justify;">Ưu điểm của DLP là tạo được hình ảnh mượt, không lộ điểm ảnh; tương phản cao và không bị hiện tượng lệch hội tụ như công nghệ dùng LCD 3 tấm. Mặt khác, cấu tạo máy chiếu DLP đơn giản hơn LCD 3 tấm nên kích thước máy nhỏ và nhẹ hơn.</p>\n<p style="text-align:justify;">Nhờ đưa thêm màu trắng vào bánh quay màu mà hình ảnh tạo ra bởi máy chiếu DLP sáng hơn và có màu trắng rất thuần khiết; tuy nhiên, điều này lại làm cho tỷ lệ cân bằng giữa các màu chênh lệch và làm giảm sắc độ màu biểu diễn. Để khắc phục, máy chiếu DLP trong rạp hát gia đình có thể dùng bánh quay 6 màu (2 bộ màu RGB) và có trường hợp bổ sung thêm màu lục đậm, xanh dương đậm (bánh quay 7 màu hoặc 8 màu). Việc loại bỏ màu trắng và dùng bánh quay nhiều màu giúp máy chiếu DLP thể hiện màu tươi, phong phú sắc độ hơn nhưng độ sáng bị giảm xuống; vì thế để xem phim tốt với máy chiếu DLP, không gian phòng chiếu cần tối.</p>\n<p style="text-align:justify;"><strong>Khuyết điểm của DLP</strong></p>\n<p style="text-align:justify;">* Độ bão hoà màu thấp hơn (ảnh hưởng nhiều đến dữ liệu hơn video).<br />* Hiệu ứng "cầu vồng", xuất hiện dưới dạng một vệt sáng giống như cầu vồng loé lên, thường theo sau những vật thể sáng, khi nhìn từ cạnh này sang cạnh kia của màn ảnh, hay khi từ hình ảnh chiếu trên màn ảnh quay sang nhìn vật thể ngoài màn ảnh. Chỉ có ít người nhìn thấy hiệu ứng này, hoặc ta có thể thấy bằng cách nhìn nhanh ngang qua màn ảnh. Có 2 loại máy chiếu DLP, loại cũ có 4 phần trên bộ lọc màu, loại mới có 6 phần và bộ lọc màu quay nhanh hơn, điều đó làm giảm hiệu ứng "cầu vồng" và tăng độ bão hoà màu.<br />* Hiệu ứng "vầng hào quang" (hay lộ sáng). Nó có thể gây khó chịu cho những người sử dụng máy chiếu xem phim tại nhà. Về cơ bản, đó là một dải xám xung quanh rìa của hình ảnh, gây ra do ánh sáng "đi lạc" bị bật ra khi đụng các cạnh của các tấm gương nhỏ trên chip DLP. Có thể khắc phục bằng cách tạo một đường biên đen rộng vài inch quanh màn ảnh, "vầng hào quang" sẽ rơi trên đường biên này. Tuy nhiên, hiệu ứng "vầng hào quang" ít thấy rõ trên các chip DLP mới, chẳng hạn như chip DDR.<br />* Nói chung, DLP là công nghệ tốt hơn LCD cho việc xem phim tại nhà. Một số máy chiếu dành cho việc xem phim tại nhà hầu như không bị hiệu ứng "vầng hào quang".</p>\n<p style="text-align:justify;">Nhược điểm của DLP không phải mọi người đều nhận thấy. Tùy thuộc vào khả năng xử lý hình ảnh của não mà một số người cảm thấy nhức đầu, hoa mắt và thấy vệt cầu vồng viền quanh đối tượng chuyển động nhanh. Hiện tượng này xuất hiện là do đối tượng chuyển động quá nhanh nên có sự xê dịch trong quá trình tổng hợp các lớp ảnh đơn màu diễn ra trong não. Để loại bỏ hiện tượng này triệt để, dĩ nhiên máy chiếu DLP cũng được phát triển theo hướng sử dụng 3 chip DMD nhưng giá thành hiện nay còn rất cao, khoảng trên 20.000 USD một máy. Một số nhà sản xuất máy chiếu DLP 1 tấm khác đang tìm cách tăng tốc độ quay và tăng số màu trên bánh quay màu. Điều này đã phân hóa dòng máy chiếu DLP: hướng đến phòng chiếu phim gia đình, nhà sản xuất dùng bánh quay 6 màu, tốc độ 120Hz (tương đương 7.200 vòng/phút) trong khi máy chiếu cho ứng dụng nghiệp vụ thì vẫn dùng bánh quay 4 màu (có màu trắng) với tốc độ quay từ 120Hz cho đến 180Hz. Tuy vậy, cách khắc phục này không thể loại bỏ hoàn toàn hiện tượng vệt cầu vồng.</p>\n<p style="text-align:justify;"><strong>CÔNG NGHỆ LCD</strong></p>\n<p style="text-align:justify;">Máy chiếu LCD (liquid crystal display, tạm dịch là hiển thị tinh thể lỏng) tổng hợp hình ảnh màu dựa trên 3 màu cơ bản là đỏ, lục và xanh dương (RGB) như cơ chế đang được dùng phổ biến trong chế tạo màn hình, in ấn. Nguồn sáng trắng ban đầu được tách thành 3 nguồn sáng đơn sắc là đỏ, lục, xanh dương và được dẫn đến 3 tấm LCD độc lập. Nếu điểm ảnh trên LCD ở trạng thái đóng, ánh sáng không thể xuyên qua thì điểm ảnh biểu diễn trên màn hình là đen. Tương tự, độ sáng của điểm ảnh cũng thay đổi tương ứng theo trạng thái mở của điểm ảnh LCD. Điều khiển 3 tấm LCD đóng mở điểm ảnh theo thông tin ảnh số, ta thu được 3 ảnh đơn sắc theo hệ màu RGB. Sau đó, tất cả được tổng hợp một cách tự nhiên trong một lăng kính theo cơ chế ánh sáng trước khi xuất đến màn chiếu.</p>\n<p style="text-align:justify;">- light source: nguồn sáng<br />- red dichroic mirror: gương sắc đỏ<br />- blue dichroic mirror: gương sắc xanh<br />- dichroic mirror "wavelength selector": gương chọn lọc bước sóng<br />- mirror: guơng phản chiếu<br />- LCD: bộ phận hiển thị tinh thể lỏng<br />- dichroic combiner cube: thành phần tổng hợp 3 sắc đỏ, xanh lục, xanh<br />- lens: thấu kính</p>\n<p style="text-align:justify;"><strong>Ưu điểm của LCD</strong></p>\n<p style="text-align:justify;">* LCD nói chung có "hiệu quả ánh sáng" hơn DLP (hình ảnh sẽ sáng hơn với LCD, với đèn có cùng công suất).<br />* LCD có khuynh hướng cho độ bão hoà màu cao hơn. Tuy nhiên, độ bão hoà màu cao hơn làm cho ta thấy máy chiếu nhìn toàn bộ là sáng hơn, dù là máy chiếu DLP trắng có thể sáng hơn.<br />* Vì lý do này, nếu đặt một máy chiếu LCD 1000 lumen kế bên một máy chiếu DLP 1200 lumen và cho chiếu hình màu, ta có thể thích máy chiếu LCD do độ sáng của nó.<br />* LCD có khuynh hướng cho hình ảnh sắc nét hơn (hội tụ chính xác hơn).</p>\n<p style="text-align:justify;">Ưu điểm của máy chiếu LCD 3 tấm là thể hiện phong phú sắc độ màu, sắc nét và độ sáng cao. Do tổ hợp cùng lúc 3 màu RGB với nguồn sáng ổn định, không suy giảm, máy chiếu LCD 3 tấm tái hiện màu phong phú và chuyển tiếp màu mượt hơn công nghệ DLP 1 tấm. Độ sắc nét của máy chiếu LCD 3 tấm trội hẳn DLP trong các ứng dụng nghiệp vụ. Độ hiệu quả ánh sáng (ANSI lumen xuất ra/công suất đèn) của máy chiếu LCD cũng có phần nhỉnh hơn DLP.</p>\n<p style="text-align:justify;"><strong>Khuyết điểm của LCD</strong></p>\n<p style="text-align:justify;">* Hiệu ứng "ca-rô" làm hình ảnh trông bị "vỡ hạt".<br />* Cấu tạo lớn hơn, vì có nhiều thành phần bên trong hơn.<br />* Hiện tượng "điểm chết" - các ảnh điểm có thể luôn tắt hay luôn mở, được gọi là điểm chết. Nếu máy chiếu có nhiều điểm chết, nó sẽ gây khó chịu cho người dùng.<br />* Các tấm kính LCD có thể bị hỏng và thay thế rất đắt tiền. Chip DLP cũng có thể bị hỏng nhưng tương đối hiếm vì có ít linh kiện bên trong hơn.</p>\n<p style="text-align:justify;">Nhược điểm của máy chiếu LCD thường thể hiện khi chiếu phim là lộ điểm ảnh và màu đen không thật. Tuy nhiên, với thế hệ máy chiếu phân giải XGA hiện nay, mắt thường rất khó phân biệt được điểm ảnh. Với thế hệ D4 mới nhất mà Epson chế tạo, khoảng phân cách giữa hai điểm LCD đã giảm từ 3 micron xuống 2,5 micron. Còn để tạo được màu đen tự nhiên, Epson vừa áp dụng kỹ thuật thay đổi động cường độ sáng trong mẫu máy Dreamio EMP-TW200H. Chế độ cinema tối ưu cho mục đích chiếu phim tự động giảm công suất nguồn đèn trong khoảng 1.500lm đến 500lm.</p>\n<p style="text-align:justify;">Để thể hiện được những chi tiết khuất trong vùng tối hoặc vùng sáng, Epson có chức năng tăng cường mức trắng và đen (black &amp; white level enhancer): đường gamma sẽ được chỉnh cong lên khi khung hình tối và chỉnh cong xuống trong trường hợp khung hình sáng. Kính lọc cinema mà Epson vừa đưa vào giúp lọc bớt màu lục, xanh dương nên màu da người có phần hồng hào hơn, màu sắc chuyển mượt và sâu hơn. Texas Instruments từng tài trợ một thử nghiệm để chứng minh máy chiếu LCD nhanh xuống màu hơn DLP. Kết quả thử nghiệm cho kết quả đúng nhưng tuổi thọ của tấm LCD giờ đã được nâng lên nhiều nhờ công nghệ chế tạo LCD HTPS (high temparature polysilicon) của Epson cho phép LCD chịu được nhiệt độ 1.000 độ C.</p>\n<p style="text-align:justify;"><strong>CÔNG NGHỆ LCOS - Liquid Crystal on Silicon</strong></p>\n<p style="text-align:justify;">Công nghệ LCOS là giải pháp kết hợp đượcPhương thức LCOS 3 tấm giữa 2 công nghệ LCD và DLP. Bên trên lớp đế gương phản chiếu là lớp phủ thạch anh lỏng. Ứng với trạng thái đóng hoặc mở của thạch anh mà tia sáng nguồn được phản chiếu trên lớp đế gương hoặc không, tạo ra điểm sáng hoặc tối. Hơn nữa, việc chế tạo LCOS có thể thực hiện ngay trên những dây chuyền sản xuất vi mạch bán dẫn hiện có nên chi phí sản xuất dễ chấp nhận hơn.</p>\n<p style="text-align:justify;"><strong>Ưu điểm của LCOS</strong></p>\n<p style="text-align:justify;">Ưu điểm lớn nhất của công nghệ LCOS là tạo được hình ảnh mượt, không hề lộ điểm và vượt qua cả chip DLP Mustang phân giải cao (1280x720). Độ sắc nét của LCOS trội hơn DLP đồng thời thể hiện màu tự nhiên hơn. Một điểm khác cũng hết sức quan trọng là máy chiếu LCOS hoàn toàn không gây ra hiện tượng vệt cầu vồng hay hoa mắt cho người xem.</p>\n<p style="text-align:justify;"><strong>Khuyết điểm của LCOS</strong></p>\n<p style="text-align:justify;">Điểm yếu hiện tại của công nghệ này là độ tương phản chưa cao: hiện mới chỉ đạt đến 800:1 trong khi công nghệ LCD và DLP hiện tại đã đạt đến 6.000:1. Ngoài ra, tuổi thọ bóng đèn LCOS còn đang ở mức 1.500 giờ và giá thay thế còn rất cao.</p>\n<p style="text-align:justify;"><strong>KẾT LUẬN</strong></p>\n<p style="text-align:justify;">Máy chiếu công nghệ DLP nhìn chung được ưa thích cho việc xem phim tại nhà và tính di động. Máy chiếu LCD thì tốt hơn cho các đòi hỏi cao về màu sắc.</p>\n<p style="text-align:justify;"><strong>5. Chơi HD bằng máy chiếu</strong></p>\n<p style="text-align:justify;">Xem phim HD bằng máy chiếu đem lại cho người xem cả không gian và không khí thực như đang thưởng thức phim trên màn ảnh rộng tại rạp.</p>\n<p style="text-align:justify;">Theo một số người sành chơi, có nhiều cách xem phim HD nhưng để thưởng thức "mãn nhãn" nhất phải là máy chiếu. Ngay cả các TV LCD hay Plasma màn hình cực lớn vẫn nhỏ mà không đem lại cho người xem một không gian cũng như không khí xem phim thực như ở rạp, anh Nguyễn Long thành viên box HD Film Club của diễn đàn Nghe Nhìn Việt Nam chia sẻ.</p>\n<p style="text-align:justify;">Tại Việt Nam, thị trường máy chiếu giải trí gia đình - Homecinema Projector - có sự góp mặt của rất nhiều sản phẩm đến từ các tên tuổi uy tín như Canon, Panasonic, Sanyo, Sony, Toshiba hay Optoma với giá bán trung bình khoảng 20 - 40 triệu đồng. Tầm tiền này tương đương với một HDTV tốt, cỡ lớn, như Panasonic Plasma TH-P50S10S 50 inch giá 28 triệu đồng hay Samsung LCD LA52B550 52 inch giá 39,5 triệu đồng. Khi xem phim HD trên những TV này, người xem không thấy được sự khác biệt về không gian, đơn giản vẫn là xem TV. Với máy chiếu, khả năng chiếu hình có thể gấp cả 10 lần độ lớn màn TV, lên đến cả 100 inch nhưng vẫn đảm bảo cho chất lượng hình ảnh tốt.</p>\n<p style="text-align:justify;">Máy chiếu đáp ứng tốt các yếu tố kỹ thuật cần thiết cho việc trình chiếu phim HD. Ví dụ, mẫu Sony VPL-BW7 giá chỉ 18 triệu đồng, có khả năng chiếu hình 40 - 300 inch, hỗ trợ độ phân giải HD 720p. Máy sử dụng đèn chiếu 3LCD BrightEra độ sáng 2.000 ANSIlumens, có độ tương phản 1.000:1. Sony VPL-BW7 tích hợp sẵn ngõ vào HDMI giúp kết nối với các thiết bị như đầu phát HD, đầu Blu-ray, PC hay máy chơi game Play Station 3. Bên cạnh đó, nếu muốn xem TV qua máy chiếu cũng hoàn toàn có thể thực hiện dễ dàng khi kết nối với PC hay laptop có bộ thu truyền hình số tích hợp sẵn hoặc có thể mua và gắn ngoài qua cổng USB.</p>\n<p style="text-align:justify;">Một khoảng tường rộng quét sơn trắng và mịn trong phòng có thể là màn chiếu tốt</p>\n<p style="text-align:justify;">Vấn đề phông chiếu cũng được đơn giản hóa, có thể sử dụng các màn phông chiếu chuyên dụng hay dùng ngay một khoảng tường rộng quét sơn trắng và mịn trong phòng để làm màn chiếu khuôn hình lên, vừa đảm bảo tính thẩm mỹ vừa kinh tế. Lên đến tầm chuyên nghiệp, các tay chơi có khả năng còn dựng riêng phòng chiếu chuyên dụng được thiết kế với điều kiện ánh sáng phù hợp và cách âm, cũng như trang bị các dàn âm thanh cao cấp để phục vụ tốt nhất cho nhu cầu xem phim tại gia thực như đi rạp.</p>\n<p style="text-align:justify;">Phòng chiếu chuyên dụng rộng 40m2 bố trí khoảng cách chỗ ngồi xem cách tường hoặc màn chiếu 100 inch tầm 3 mét là lựa chọn phù hợp. Không nên đặt máy chiếu ngay tại phòng khách vì thế sẽ làm loãng không khí "xi-nê" và dễ bị yếu tố ánh áng làm ảnh hưởng tới chất lượng hình ảnh. Ngoài ra tính cơ động cao của máy chiếu cũng được đánh giá cao, bởi với trọng lượng khoảng 3 kg, người chơi có thể dễ dàng di chuyển máy đến vị trí phù hợp hay tới nhà bạn bè để cùng thưởng thức phim.</p>\n<p style="text-align:justify;">Nhưng một nhược điểm của máy chiếu là sau một thời gian thưởng thức phim HD, người dùng sẽ phải thay bóng chiếu, trung bình là từ 2-3 năm và giá tiền khoảng trên 200 USD tùy thuộc loại bóng mà máy sử dụng.</p>', '', 'nhung-dieu-can-biet-khi-chon-mua-may-chieu', '', 'Những điều cần biết khi chọn mua máy chiếu', '', 0, 3, 0, '', '', 1, 13),
(18, 'PhoneSoap: Vừa sạc vừa khử trùng điện thoại', '', '2012-04-16 03:52:42', 'phonesoap-vua-sac-vua-khu-trung-dien-thoai.jpg', '<p>Thực tế la smartphone còn bẩn hơn cả... cần gạt toilet nên PhoneSoap sẽ giúp ngăn chặn, tiêu diệt vi khuẩn trên smartphone và bảo đảm an toàn cho mọi người.</p>', '', '<p style="text-align:justify;">Nghiên cứu gần đây của công ty marketing 11mark chỉ ra có tới 75% người Mỹ sử dụng smartphone khi ở trong nhà vệ sinh. Mọi người thừa nhận nhắn tin, duyệt web và 1/5 nam giới thậm chí còn gọi điện thoại tới cuộc họp khi đang ở khu vực nhạy cảm này. Một cách đơn giản, điện thoại của chúng ta đều khá bẩn. Những người sáng lập ra PhoneSoap muốn ngăn chặn vấn đề này.</p>\n<p style="text-align:justify;"><br />Theo nghiên cứu của một sinh viên y khoa Đại học Stanford, lượng vi khuẩn trên điện thoại di động còn nhiều gấp 500 lần trên bệ xí và cao gấp 18 lần cần giật nước. Tệ hơn, 1/6 điện thoại có dấu hiệu có khuẩn E.coli từ phân. Trong khi đó, có gần 20% người đánh rơi điện thoại trong nhà vệ sinh.</p>\n<p style="text-align:justify;"><br />Nhà sáng chế Wesley LaPorte nảy ra ý tưởng về PhoneSoap khi đang trong phòng nghiên cứu ung thư. Sau khi nhận thấy tia UC-V được dùng để vệ sinh, LaPorte nhận ra có thể dùng công nghệ trong bệnh viện và vòng sát trùng khắp thế giới để làm sạch điện thoại mà không cần tới chất lỏng hay nhiệt độ.</p>\n<p style="text-align:justify;"><br />Hộp PhoneSoap sẽ bao phủ điện thoại trong ánh sáng này trong 3-5 phút mỗi lần, đủ để khử trùng (thiết bị cũng sạc gần như tất cả điện thoại). Mục tiêu gây quỹ trên trang chủ dự án PhoneSoap là 18.000 USD. Nếu LaPorte và 3 đồng nghiệp thu được số tiền, PhoneSoap có thể bán với giá 40 USD/thiết bị. Hiện họ đã có được 15.000 USD sau 20 ngày phát động.</p>', '', 'phonesoap-vua-sac-vua-khu-trung-dien-thoai', '', 'PhoneSoap: Vừa sạc vừa khử trùng điện thoại', '', 0, 4, 0, '', '', 1, 10),
(19, '6 mẹo chọn ghế sofa hoàn hảo', '', '2012-04-19 01:22:05', '6-meo-chon-ghe-sofa-hoan-hao.jpg', '<p>Việc chọn một bộ sofa dường như không phải là một công việc dễ dàng khi phong cách, hình dạng, màu sắc, và giá cả của các bộ sofa này rất đa dạng.</p>', '', '<p>Để tiết kiệm thời gian, tiền bạc và công sức, bạn có thể tham khảo một số mẹo sau trước khi lựa chọn một bộ sofa phù hợp cho không gian nhà.</p>\r\n<p>1. Xác định kích thước</p>\r\n<p>Nếu phòng khách nhà bạn có diện tích lớn, bạn cần quyết định xem bạn muốn kê bao nhiêu chiếc ghế. Bạn có muốn dùng đi-văng hay ghế bành? Bàn nhỏ kiểu bàn cà phê liệu có cần thiết cho không gian nhà bạn? Nếu câu trả lời là có thì một bộ sofa đơn giản, hình chữ L có lẽ là lựa chọn phù hợp nhất. Trong trường hợp bạn muốn bộ sofa là điểm nhấn của phòng khách thì bạn cần đến một chiếc đi-văng đủ lớn và nhiều chỗ ngồi.</p>\r\n<p>Chú ý đến kích thước ghế</p>\r\n<p>Nếu không gian nhà bạn khiêm tốn, thì hẳn là bạn cần một chiếc trường kỷ nhỏ hơn.</p>\r\n<p>2. Quyết định hướng kê sofa</p>\r\n<p>Bạn cần định hình trước sofa sẽ được sắp xếp thế nào? Kê sofa để xem TV, để gia đình quây quần tụ họp, chơi trò chơi? Bạn có thể kê sofa tạo thành vòng tròn, hoặc nửa vòng tròn, lấy bàn làm trung tâm</p>', '', '6-meo-chon-ghe-sofa-hoan-hao', '', 'Chú ý đến kích thước ghế\r\n\r\nNếu không gian nhà bạn khiêm tốn, thì hẳn là bạn cần một chiếc trường kỷ nhỏ hơn.\r\n\r\n2. Quyết định hướng kê sofa', '', 0, 1, 1, '', '', 1, 16),
(20, 'Căn hộ nhỏ mà không nhỏ', '', '2012-04-19 01:22:05', 'can-ho-nho-ma-khong-nho.jpg', '<p style="text-align:left;">Tuy chỉ có diện tích 35 m2 nhưng ngôi nhà nhỏ này vẫn rất thoáng đãng, đầy đủ tiện nghi và đẹp mắt nhờ cách thiết kế, bố trí sáng tạo như bậc cầu thang kiêm nơi để quần áo…</p>', '', '<p>Tuy chỉ có diện tích 35 m2 nhưng ngôi nhà nhỏ này vẫn rất thoáng đãng, đầy đủ tiện nghi và đẹp mắt nhờ cách thiết kế, bố trí sáng tạo như bậc cầu thang kiêm nơi để quần áo…</p>\r\n<p>Phòng khách nhỏ bố trí những đồ vật đơn giản như salon chữ L, bàn gỗ, TV treo tường..</p>\r\n<p>fggggdgfdgfgfdgfgf</p>\r\n<p style="text-align:center;"><img src="/public/userfiles/image/phumyan/image/can-ho-3.jpg" alt="" width="480" height="468" /></p>\r\n<p style="text-align:center;">dgfgfggfdgfdg</p>\r\n<p style="text-align:center;">ggffgfgdf</p>\r\n<p style="text-align:center;"> <img src="/public/userfiles/image/phumyan/image/giuong.jpg" alt="" width="200" height="135" /></p>', '', 'can-ho-nho-ma-khong-nho', '', '', '', 0, 2, 1, '', '', 1, 16),
(22, '6 kiểu tóc ngắn nổi bật cho mùa hè', '', '2012-04-19 02:34:06', '6-kieu-toc-ngan-noi-bat-cho-mua-he.jpg', '<p>6 mẫu tóc ngắn của các ngôi sao sau đây sẽ là những gợi ý cho bạn lựa chọn để bước vào một mùa hè nóng nực.</p>', '', '<p>6 mẫu tóc ngắn của các ngôi sao sau đây sẽ là những gợi ý cho bạn lựa chọn để bước vào một mùa hè nóng nực.</p>\r\n<p style="text-align:center;"><img src="/public/userfiles/image/thoitrang/image/5l.jpg" alt="" width="363" height="581" /></p>\r\n<p style="text-align:center;">Tóc vàng, phần mái rủ dài một bên, ngọn tóc được uốn úp vào tinh tế. Kiểu tóc của Laura Carmicha được đánh giá là không bao giờ lỗi mốt.</p>\r\n<p style="text-align:center;"><img src="/public/userfiles/image/thoitrang/image/2j.jpg" alt="" width="371" height="582" /></p>\r\n<p style="text-align:center;">Điểm nhấn ở mái tóc ngắn của Jang Nara là ngọn tóc được uốn cong về phía trước, cùng với màu nâu đồng, làm nên vẻ cuốn hút đặc biệt, trong sáng mà vẫn quý phái, thời thượng.</p>', '', '6-kieu-toc-ngan-noi-bat-cho-mua-he', '', '6 mẫu tóc ngắn của các ngôi sao sau đây sẽ là những gợi ý cho bạn lựa chọn để bước vào một mùa hè nóng nực.', '', 0, 3, 0, NULL, NULL, 1, 17);
INSERT INTO `dos_module_news` (`record_id`, `title`, `titleen`, `postdate`, `pic_thumb`, `preview`, `previewen`, `content`, `contenten`, `tag`, `tagen`, `description`, `descriptionen`, `hits`, `record_order`, `hot`, `extra_field1`, `extra_field2`, `enable`, `dos_module_item_cat_cat_id`) VALUES
(23, '6 mẹo chọn ghế sofa như ý', '', '2012-04-19 06:46:55', '6-meo-chon-ghe-sofa-hoan-hao.jpg', '<p>Việc chọn một bộ sofa dường như không phải là một công việc dễ dàng khi phong cách, hình dạng, màu sắc, và giá cả của các bộ sofa này rất đa dạng.</p>', '', '<p>Để tiết kiệm thời gian, tiền bạc và công sức, bạn có thể tham khảo một số mẹo sau trước khi lựa chọn một bộ sofa phù hợp cho không gian nhà.</p>\r\n<p>1. Xác định kích thước</p>\r\n<p>Nếu phòng khách nhà bạn có diện tích lớn, bạn cần quyết định xem bạn muốn kê bao nhiêu chiếc ghế. Bạn có muốn dùng đi-văng hay ghế bành? Bàn nhỏ kiểu bàn cà phê liệu có cần thiết cho không gian nhà bạn? Nếu câu trả lời là có thì một bộ sofa đơn giản, hình chữ L có lẽ là lựa chọn phù hợp nhất. Trong trường hợp bạn muốn bộ sofa là điểm nhấn của phòng khách thì bạn cần đến một chiếc đi-văng đủ lớn và nhiều chỗ ngồi.</p>\r\n<p>Chú ý đến kích thước ghế</p>\r\n<p>Nếu không gian nhà bạn khiêm tốn, thì hẳn là bạn cần một chiếc trường kỷ nhỏ hơn.</p>\r\n<p>2. Quyết định hướng kê sofa</p>\r\n<p>Bạn cần định hình trước sofa sẽ được sắp xếp thế nào? Kê sofa để xem TV, để gia đình quây quần tụ họp, chơi trò chơi? Bạn có thể kê sofa tạo thành vòng tròn, hoặc nửa vòng tròn, lấy bàn làm trung tâm</p>', '', '6-meo-chon-ghe-sofa-nhu-y', '', 'Chú ý đến kích thước ghế\r\n\r\nNếu không gian nhà bạn khiêm tốn, thì hẳn là bạn cần một chiếc trường kỷ nhỏ hơn.\r\n\r\n2. Quyết định hướng kê sofa', '', 0, 1, 1, '', '', 1, 18),
(24, 'Căn hộ nhỏ mà không gian không nhỏ', '', '2012-04-19 06:46:55', 'can-ho-nho-ma-khong-nho.jpg', '<p style="text-align:left;">Tuy chỉ có diện tích 35 m2 nhưng ngôi nhà nhỏ này vẫn rất thoáng đãng, đầy đủ tiện nghi và đẹp mắt nhờ cách thiết kế, bố trí sáng tạo như bậc cầu thang kiêm nơi để quần áo…</p>', '', '<p>Tuy chỉ có diện tích 35 m2 nhưng ngôi nhà nhỏ này vẫn rất thoáng đãng, đầy đủ tiện nghi và đẹp mắt nhờ cách thiết kế, bố trí sáng tạo như bậc cầu thang kiêm nơi để quần áo…</p>\r\n<p>Phòng khách nhỏ bố trí những đồ vật đơn giản như salon chữ L, bàn gỗ, TV treo tường..</p>\r\n<p>fggggdgfdgfgfdgfgf</p>\r\n<p style="text-align:center;"><img src="/public/userfiles/image/phumyan/image/can-ho-3.jpg" alt="" width="480" height="468" /></p>\r\n<p style="text-align:center;">dgfgfggfdgfdg</p>\r\n<p style="text-align:center;">ggffgfgdf</p>\r\n<p style="text-align:center;"> <img src="/public/userfiles/image/phumyan/image/giuong.jpg" alt="" width="200" height="135" /></p>', '', 'can-ho-nho-ma-khong-gian-khong-nho', '', '', '', 0, 2, 1, '', '', 1, 18),
(26, 'Cách bảo quản đồ gỗ', '', '2012-04-19 06:56:27', '', '<p>Cách bảo quản đồ gỗ</p>\r\n<p>Gỗ là loại vật liệu được sử dụng để chế tạo rất nhiều vật dụng, trang trí nội thất... Do tính chất của gỗ nên việc sử dụng và bảo quản đúng cách sẽ giúp cho các vật dụng được chế tạo bằng gỗ luôn được mới đẹp và không bị hư hỏng.</p>', '', '<p>Gỗ là loại vật liệu được sử dụng để chế tạo rất nhiều vật dụng, trang trí nội thất... Do tính chất của gỗ nên việc sử dụng và bảo quản đúng cách sẽ giúp cho các vật dụng được chế tạo bằng gỗ luôn được mới đẹp và không bị hư hỏng.</p>\r\n<p>Sau đây là các cách bảo quản đồ gỗ:</p>\r\n<p>Cách lau chùi ván bọc tường</p>\r\n<p>Vách ván nhà bạn có sơn vẽ đủ màu, lâu ngày bị vàng và hoen ố, bạn hãy dùng nước trà tàu tẩm vào khăn, lau mạnh lên tường ván ấy là sạch sẽ ngay.</p>\r\n<p>Cách làm sáng lại lớp vecni trên gỗ</p>\r\n<p>Lớp vẹc ni trên gỗ tuy ít bám bụi, nhưng nếu ít săn sóc, chúng cũng bị lu mờ, kém bóng loáng. Muốn chúng bóng loáng như mới, bạn có thể dùng một ít sữa lau lên lớp vecni và để cho khô. Sau đó, dùng bàn chải nhúng nước lã cọ sạch. Với phương pháp này, vecni sẽ cứng và bóng</p>\r\n<p>Tẩy những vết dính lâu ngày trên đồ gỗ</p>\r\n<p>Trên đồ gỗ thường có những vết dơ do sự vô ý gây ra. Nếu để lâu, các vết dơ này rất khó chùi rửa. Muốn làm mất những dấu vết này đi, bạn hãy cho mấy giọt dầu ăn vào một chút sáp ong trắng, đem chưng cách thủy cho sáp ong chảy ra. Đen bôi thứ sáp ấy lên chỗ dơ rồi lấy vải chà thật mạnh.</p>\r\n<p>Cách chùi đồ gỗ bị giống ruồi làm dơ bẩn</p>\r\n<p>Muốn làm mất những vết dơ bẩn do giống ruồi gây ra trên đồ gỗ, bạn lấy bột (nếp, gạo, hay mì ...) trộn với chút dầu ăn đánh cho thật quánh, thoa đều bột lên chỗ dơ rồi lấy giẻ chùi cho sạch. Sau cùng, rửa kỹ bằng nước trong và đánh bóng.</p>\r\n<p>Cách tẩy vết dơ bám lâu ngày trên gỗ trơn</p>\r\n<p>Muốn làm sạch những vết dơ bám trên những vật dụng bằng gỗ trơn, không có đánh vẹcni, đầu tiên, bạn hãy pha một thứ nước để lau chùi theo công thức:</p>\r\n<p>10gam muối + 90 gam nước tẩy (soude de caustique) + 1 lít nước</p>\r\n<p>Sau đó, bạn lấy một cái chổi bằng bẹ dừa thấm vào nước này mà quét lên các đồ dùng bằng gỗ trơn đó. Để một lúc lâu, bạn rửa lại bằng nước lã và lau khô bằng khăn mềm và sạch.</p>\r\n<p>Cách làm mới lại những vật dụng nhỏ bằng gỗ</p>\r\n<p>Muốn cho những vật dụng bằng gỗ nhỏ của bạn được bóng loáng như mới, bạn hãy lấy bông gòn thấm dầu thông (essence de térébenthine) lau lên thật đều. Sau đó, bạn đợi cho khô và đánh bóng lại bằng nỉ sạch.</p>\r\n<p>Làm mất các vết dộp trắng trên bàn gỗ có đánh vecni</p>\r\n<p>Bàn hay đi-văng bị nước nóng làm dộp trắng trên mặt gỗ có đánh vecni, bạn hãy dùng vải có tẩm dầu paraffine chà nhẹ lên chỗ dộp. Để một lúc lâu rồi bạn dùng dầu thông đánh lên và dùng vải thường đánh bóng.</p>\r\n<p>Cách lấy những khe nứt trên sàn gỗ</p>\r\n<p>Muốn lấy kín những khe nứt hoặc kẽ hở trên sàn gỗ, bạn hãy lấy keo lỏng trộn với mạt cưa đã rây nhuyễn. Bạn nhớ trộn cho thật đều, thật nhuyễn, rồi bạn đem chưng lên cho nóng, đoạn đem trét vào các chỗ hở và miết cho thật bằng mặt.</p>\r\n<p>Nếu sàn gỗ có đánh vecni, bạn phải lấy vecni đánh lên các chỗ đã được trét kín cho tiệp màu.</p>', '', 'cach-bao-quan-do-go', '', 'Gỗ là loại vật liệu được sử dụng để chế tạo rất nhiều vật dụng, trang trí nội thất... Do tính chất của gỗ nên việc sử dụng và bảo quản đúng cách sẽ giúp cho các vật dụng được chế tạo bằng gỗ luôn được mới đẹp và không bị hư hỏng.', '', 0, 3, 0, NULL, NULL, 1, 18),
(27, 'Những xu hướng mới tại thị trường đồ gỗ nội thất nhà bếp Hàn Quốc.', '', '2012-04-19 06:58:51', 'nhung-xu-huong-moi-tai-thi-truong-do-go-noi-that-nha-bep-han-quoc-.jpg', '<p>Tại Hàn Quốc một bộ phận lớn dân số đang có xu hướng mua đồ gỗ cao cấp về trang trí cho nhà bếp của mình. Xu hướng này càng khẳng định người tiêu dùng Hàn quốc càng ngày càng quan tâm đến chất lượng và mẫu mã sản phẩm, chứ không đơn thuần chỉ là giá cả nữa.<br />Đồ gỗ nội thất cho nhà bếp phải được thiết kế đẹp, hợp mốt và phục vụ đựơc những yêu cầu của người tiêu dùng. Những mặt hàng đồ gỗ nhà bếp ở mức giá thấp và trung bình không còn được đại đa số bộ phận dân chúng ưa chuộng nữa.</p>', '', '<p>Tại Hàn Quốc một bộ phận lớn dân số đang có xu hướng mua đồ gỗ cao cấp về trang trí cho nhà bếp của mình. Xu hướng này càng khẳng định người tiêu dùng Hàn quốc càng ngày càng quan tâm đến chất lượng và mẫu mã sản phẩm, chứ không đơn thuần chỉ là giá cả nữa.<br />Đồ gỗ nội thất cho nhà bếp phải được thiết kế đẹp, hợp mốt và phục vụ đựơc những yêu cầu của người tiêu dùng. Những mặt hàng đồ gỗ nhà bếp ở mức giá thấp và trung bình không còn được đại đa số bộ phận dân chúng ưa chuộng nữa.<br />Các nhà nhập khẩu đang tăng cường nhập các mặt hàng đồ gỗ nhà bếp cao cấp về Hàn quốc. Các mặt hàng cao cấp thường có xuất xứ từ Châu Âu, Mỹ, còn các mặt hàng giá thấp và trung bình thì được nhập khẩu từ các nước Châu À như Trung Quốc, Việt Nam.<br />Ngoài các hệ thống phân phối đồ nội thất, tại Hàn Quốc, các nhà xây dựng cũng góp phần lớn trong việc tiêu thụ mặt hàng đồ gỗ nhà bếp. Mặt hàng đồ gỗ nhà bếp cao cấp ở Hàn Quốc thì chủ yếu được nhập từ Châu Âu, Mỹ, còn các sản phẩm trung bình thì đa số được sản xuất tại Trung Quốc.</p>\r\n<p>Hơn nữa, rất nhiều nhà sản xuất Hàn Quốc chuyển nhà máy của mình sang Trung Quốc để tận dụng giá nhân công rẻ, sau đó nhập lại Hàn Quốc để bán tại các hệ thống đồ gỗ nội thất hoặc bán cho các nhà xây dựng.</p>\r\n<p>Thị trường đồ gỗ nhà bếp bị chi phối từ nhu cầu của các cặp vợ chồng mới cưới và những gia đình có điều kiện chuyển vào ở tại các căn hộ hoặc nhà mới có diện tích lớn hơn. Hai nhóm khách hàng này giữ tỷ lệ tiêu thụ đồ gỗ nhà bếp ổn định và lớn nhất hiện nay.</p>\r\n<p>Khoảng 70% các chung cư cũ tại Hàn Quốc được xây dựng từ giữa những năm 1970-1980, tương đựơng khoảng 3,5 triệu căn hộ có trên 20 năm. Do vậy, nhu cầu sửa chữa lại nhà là rất lớn. Điều này cũng làm tăng nhu cầu sử dụng đồ nội thất mới, đặc biệt là đồ gỗ nhà bếp.</p>\r\n<p>Đồ gỗ nhà bếp Mỹ, Ý, Đức và Nhật vẫn chiếm đa số trong phân khúc hàng nhập khẩu cao cấp. Tại Hàn Quốc, Ý chiếm ưu thế trong việc cung cấp đồ gỗ nhà bếp từ trung cấp đến cao cấp, chiếm 35% thị phần, tiếp sau đó là Đức (20%), Mỹ (15%), và Nhật (15%).</p>\r\n<p>Những nước Châu Á như Trung Quốc, Việt Nam thì chuyên cung cấp hàng giá rẻ, chiếm 60% thị phần. Nói chung, các nhà cung cấp đến từ Mỹ, Châu Âu và Nhật thống trị phân khúc hàng cao cấp bằng các sản phẩm chất lượng cao hơn, mẫu mã đẹp hơn.</p>\r\n<p>Các nhà sản xuất đồ gỗ nhà bếp Việt Nam cần chú trọng hơn đến chất lượng và mẫu mã của sản phẩm, chứ không nên chỉ đơn thuần tập trung vào việc làm hàng giá rẻ. Sự cạnh tranh trong lĩnh vực này tại Hàn Quốc càng ngày càng cao, nên các nhà sản xuất Việt Nam cần liên tục cập nhật những xu hướng mới nhất, tìm hiểu thị trường kỹ để hàng hóa có thể có chỗ đứng tại thị trường Hàn Quốc.</p>\r\n<p>Xu hướng mới nhất hiện nay của sản phẩm đồ gỗ nhà bếp tại Hàn Quốc là:</p>\r\n<p>* mẫu mã đơn giản.<br />* sang trọng.<br />* giá cả hợp lý.<br />* đáp ứng được đầy đủ nhu cầu sử dụng.</p>\r\n<p>Các công ty phải đáp ứng đựợc các yêu cầu từ phía các nhà nhập khẩu Hàn Quốc khi muốn bán hàng vào thị trường này, Đối với tất cả các loại đồ gỗ nội thất, kể cả đồ nội thất cho nhà bếp được nhập vào Hàn Quốc, các nhà nhập khẩu Hàn Quốc rất quan tâm đến chất lượng và độ an toàn của sản phẩm nhằm bảo đảm lợi ích của người mua hàng. Những yêu cầu chung đối với các nhà xuất khẩu đồ gỗ nội thất vào Hàn Quốc bao gồm:</p>\r\n<p>* Đáp ứng quy định của Luật kiểm tra an toàn và quản lý chất lượng của Hàn Quốc. Luật này nhằm bảo vệ người tiêu dùng tránh rủi ro, nguy hiểm có thể gây ra do các sản phẩm kém chất lượng hoặc nhập lậu.<br />* Có giấy chứng nhận xuất xứ hàng hóa.<br />* Nhà sản xuất cần có nguồn gỗ tốt, hợp lệ, ổn định đáp ứng đòi hỏi của khách hàng để đảm bảo chất lượng sản phẩm.<br />* Đảm bảo sản phẩm không gây hại cho môi trường.<br />* Bao bì hợp lệ, đúng quy cách.</p>\r\n<p>Ngoài ra, hình ảnh nhà xưởng ngăn nắp, gọn sạch, đời sống công nhân tốt, thiết bị máy móc đồng bộ... cũng là điều mà các nhà mua hàng Hàn Quốc quan tâm bởi vì điều này nói lên sự ổn định sản xuất, đảm bảo tiến độ giao hàng. Bạn cũng nên nhớ rằng các nhà mua hàng Hàn Quốc khá thân thiện, tuy nhiên họ không hay hỗ trợ các nhà xuất khẩu khi họ gặp khó khăn về thủ tục</p>', '', 'nhung-xu-huong-moi-tai-thi-truong-do-go-noi-that-nha-bep-han-quoc', '', 'Tại Hàn Quốc một bộ phận lớn dân số đang có xu hướng mua đồ gỗ cao cấp về trang trí cho nhà bếp của mình. Xu hướng này càng khẳng định người tiêu dùng Hàn quốc càng ngày càng quan tâm đến chất lượng và mẫu mã sản phẩm, chứ không đơn thuần chỉ là giá', '', 0, 4, 0, NULL, NULL, 1, 19);

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
) ENGINE=InnoDB  DEFAULT CHARSET=utf8 AUTO_INCREMENT=20 ;

--
-- Dumping data for table `dos_module_news_cat`
--

INSERT INTO `dos_module_news_cat` (`cat_id`, `cat_parent_id`, `cat_title`, `cat_titleen`, `preview`, `previewen`, `tag`, `tagen`, `description`, `descriptionen`, `pic_full`, `cat_order`, `cat_extra1`, `cat_extra2`, `cat_enable`, `dos_usernames_username`) VALUES
(9, 0, 'Tin TứcTrong Ngành', '', '', '', 'tin-tuctrong-nganh', '', 'Tin TứcTrong Ngành', '', 'tin-tuctrong-nganh.jpg', 1, '', '', 1, 'phumyan'),
(10, 0, 'Thông tin Công nghệ', '', '', '', 'thong-tin-cong-nghe', '', 'Thông tin Công nghệ', '', '', 1, '', '', 1, 'mayphotocopysieuviet'),
(11, 0, 'Góc kỹ thuật', '', '', '', 'goc-ky-thuat', '', 'Góc kỹ thuật', '', '', 2, '', '', 1, 'mayphotocopysieuviet'),
(12, 0, 'Tuyển dụng', '', '', '', 'tuyen-dung', '', 'Tuyển dụng', '', '', 3, '', '', 1, 'mayphotocopysieuviet'),
(13, 0, 'Cẩm nang tiêu dùng', '', '', '', 'cam-nang-tieu-dung', '', 'Cẩm nang tiêu dùng', '', '', 4, '', '', 1, 'mayphotocopysieuviet'),
(16, 0, 'Tin TứcTrong Ngành', '', '', '', 'tin-tuctrong-nganh', '', 'Tin TứcTrong Ngành', '', 'tin-tuctrong-nganh.jpg', 1, '', '', 1, 'thoitrang'),
(17, 0, 'Thời trang giới trẻ', '', NULL, NULL, 'thoi-trang-gioi-tre', '', 'Thời trang giới trẻ', '', '', 2, NULL, NULL, 1, 'thoitrang'),
(18, 0, 'Không gian sống', '', '', '', 'khong-gian-song', '', 'Không gian sống', '', 'tin-tuctrong-nganh.jpg', 1, '', '', 1, 'thienlonghoi'),
(19, 0, 'Tin tức khách', '', NULL, NULL, 'tin-tuc-khach', '', 'Tin tức khách', '', '', 2, NULL, NULL, 1, 'thienlonghoi');

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
('day_time', 2456037, 'mayphotocopysieuviet'),
('max_count', 0, 'mayphotocopysieuviet'),
('counter', 0, 'mayphotocopysieuviet'),
('yesterday', 0, 'mayphotocopysieuviet'),
('day_time', 2456037, 'tinhungphat'),
('max_count', 0, 'tinhungphat'),
('counter', 0, 'tinhungphat'),
('yesterday', 0, 'tinhungphat'),
('day_time', 2456037, 'phumyan'),
('max_count', 0, 'phumyan'),
('counter', 0, 'phumyan'),
('yesterday', 0, 'phumyan'),
('day_time', 2456037, 'thoitrang'),
('max_count', 0, 'thoitrang'),
('counter', 0, 'thoitrang'),
('yesterday', 0, 'thoitrang'),
('day_time', 2456037, 'thienlonghoi'),
('max_count', 0, 'thienlonghoi'),
('counter', 0, 'thienlonghoi'),
('yesterday', 0, 'thienlonghoi');

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
('''127.0.0.1''', 1334838554, 'thienlonghoi'),
('''127.0.0.1''', 1334838044, 'tinhungphat'),
('''127.0.0.1''', 1334842499, 'thoitrang');

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
) ENGINE=InnoDB  DEFAULT CHARSET=utf8 AUTO_INCREMENT=107 ;

--
-- Dumping data for table `dos_module_products`
--

INSERT INTO `dos_module_products` (`record_id`, `title`, `titleen`, `postdate`, `pic_thumb`, `pic_full`, `pic_desc`, `preview`, `previewen`, `content`, `contenten`, `tag`, `tagen`, `description`, `descriptionen`, `hits`, `record_order`, `unit`, `hot`, `specials`, `extra_field1`, `extra_field2`, `extra_field3`, `extra_field4`, `enable`, `dos_module_item_cat_cat_id`) VALUES
(21, 'Nội thất phòng khách', '', '2012-04-12 00:20:22', 'noi-that-phong-khach-thumb.jpg', 'noi-that-phong-khach.jpg', '', '', '', '<p>Mô tả chi tiết ...</p>', '', 'noi-that-phong-khach', '', 'Mô tả chi tiết ...', '', 0, 4, '', 1, 0, '', '', '', '', 1, 19),
(22, 'Nội thất phòng giải trí', '', '2012-04-12 00:22:15', 'noi-that-phong-giai-tri-thumb.jpg', 'noi-that-phong-giai-tri.jpg', '', '', '', '<p>Mô tả chi tiết ....</p>', '', 'noi-that-phong-giai-tri', '', 'Nội thất phòng giải trí', '', 0, 3, '', 1, 0, '', '', '', '', 1, 19),
(23, 'Nội thất phòng ngủ', '', '2012-04-12 00:26:09', 'noi-that-phong-ngu-thumb.jpg', 'noi-that-phong-ngu.jpg', '', '', '', '<p>Mô tả chi tiết ...</p>', '', 'noi-that-phong-ngu', '', 'Nội thất phòng ngủ', '', 0, 2, '', 1, 0, '', '', '', '', 1, 21),
(24, 'Nội thất bếp ăn', '', '2012-04-12 00:26:55', 'noi-that-bep-an-thumb.jpg', 'noi-that-bep-an.jpg', '', '', '', '<p>Mô tả chi tiết ...</p>', '', 'noi-that-bep-an', '', 'Nội thất bếp ăn', '', 0, 1, '', 1, 0, '', '', '', '', 1, 19),
(25, 'Phòng tiếp khách', '', '2012-04-12 00:28:56', 'phong-tiep-khach-thumb.jpg', 'phong-tiep-khach.jpg', '', '', '', '<p>Mô tả chi tiết ...</p>', '', 'phong-tiep-khach', '', 'Phòng tiếp khách', '', 0, 5, '', 1, 0, '', '', '', '', 1, 19),
(26, 'Trang trí góc nhỏ', '', '2012-04-12 00:33:09', 'trang-tri-goc-nho-thumb.jpg', 'trang-tri-goc-nho.jpg', '', '', '', '<p>Mô tả chi tiết</p>\n<table style="width:400px;height:100px;" border="1" align="center"><tbody><tr><td style="text-align:center;">Tình trạng:</td>\n<td style="text-align:center;">Có hàng số lượng lớn chưa tiêu tụai giúp tiêu thụ với õ</td>\n</tr><tr><td style="text-align:center;">Nhà sản xuất</td>\n<td style="text-align:center;">Việt Nam vip</td>\n</tr><tr><td style="text-align:center;">Model</td>\n<td style="text-align:center;">2012</td>\n</tr><tr><td style="text-align:center;">Đánh giá:</td>\n<td style="text-align:center;">Chưa có đánh giá</td>\n</tr></tbody></table><p style="text-align:center;"> </p>', '', 'trang-tri-goc-nho', '', 'Trang trí góc nhỏ', '', 0, 6, '290000', 1, 0, '', '', '', '', 1, 20),
(27, 'Acer Aspire AS5755G-2452G75Mn (011)', '', '2012-04-13 06:43:13', 'acer-aspire-as5755g-2452g75mn-011-thumb.jpg', 'acer-aspire-as5755g-2452g75mn-011.jpg', '', '', '', '<p>CPU: Intel Core i5 2450M (2.50 GHz 3M L2 cache, 4 threads, turbo boost 3.1Ghz )<br />RAM: 4096 MB DDR3 1333Mhz<br />Chipset: Intel HM67<br />HDD: 750 GB SATA 5400 rpm<br />ODD: DVD RW/ Reader card/ Camera/ Bluetooth/ HDMI/ USB 3.0<br />Graphics: NVIDIA Geforce GT630M DDR3 2 GB<br />Display: 15.60" HD LED LCD<br />Network: 802.11bgn / 100/1000 base /<br />Battery: 6 cell<br />Weight: 2.60 Kg<br />OS: Free DOS<br />Other: Màu đen bóng, bàn phím số - Vga rời 2Gb</p>', '', 'acer-aspire-as5755g-2452g75mn-011', '', 'Acer Aspire AS5755G-2452G75Mn (011)', '', 0, 1, '12000000', 1, 0, '', '', '', '', 1, 27),
(28, 'Asus K43E-VX663', '', '2012-04-13 06:45:16', 'asus-k43e-vx663-thumb.jpg', 'asus-k43e-vx663.jpg', '|asus-k43e-vx663-desc-1.jpg|asus-k43e-vx663-desc-2.jpg', '', '', '<p>CPU: Intel Core i3 2350M (2.30 GHz 3M L2 cache, 4 threads )<br />RAM: 2048 MB DDR3 1333Mhz<br />Chipset: Intel HM67<br />HDD: 500 GB SATA 5400 rpm<br />ODD: DVD RW/ Reader card/ Camera/ Bluetooth/ HDMI/ Loa Altec Lansing<br />Graphics: INTEL HD graphics 3000 512 MB<br />Display: 14.00" HD Color Shine SLIM (LED backlight)<br />Network: 802.11bgn / 100/1000 base /<br />Battery: 6 cells<br />Weight: 2.20 Kg<br />OS: Free DOS<br />Other: Màu đỏ bóng , keyboard chiclet</p>', '', 'asus-k43e-vx663', '', 'Asus K43E-VX663', '', 0, 2, '1790000', 1, 0, '', '', '', '', 1, 27),
(29, 'Samsung NP300E4Z-A06VN', '', '2012-04-13 07:34:18', 'samsung-np300e4z-a06vn-thumb.jpg', 'samsung-np300e4z-a06vn.jpg', '', '', '', '<p>CPU: Intel Core i3 2350M (2.30 GHz 3M L2 cache, 4 threads )<br />RAM: 4096 MB DDR3 1333Mhz<br />Chipset: Intel HM67<br />HDD: 500 GB SATA 5400 rpm<br />ODD: DVD RW/ Reader card/ Camera/ Bluetooth/ HDMI/ USB 3.0<br />Graphics: INTEL HD graphics 3000 512 MB<br />Display: 14.00" Super Bright Anti-reflective HD<br />Network: 802.11bgn / 100/1000 base /<br />Battery: 6 cell<br />Weight: 2.20 Kg<br />OS: Free DOS<br />Other: Màu đen sọc chống trầy, keyboard chiclet</p>', '', 'samsung-np300e4z-a06vn', '', 'Samsung NP300E4Z-A06VN', '', 0, 3, '12000000', 1, 0, '', '', '', '', 1, 27),
(30, 'Toshiba Satellite L740-1222U', '', '2012-04-13 07:35:47', 'toshiba-satellite-l740-1222u-thumb.jpg', 'toshiba-satellite-l740-1222u.jpg', '', '', '', '<p>CPU: Intel Core i3 380M (2.53 GHz 3M L2 cache, 4 threads )<br />RAM: 2048 MB DDR3 1333Mhz<br />Chipset: Intel HM55<br />HDD: 500 GB SATA 5400 rpm<br />ODD: DVD RW/ Reader card/ Camera/ Bluetooth<br />Graphics: INTEL HD graphics 512 MB<br />Display: 14.00" HD WLED Backlight (16:9)<br />Network: 802.11bgn / 100/1000 base /<br />Battery: 6 cell<br />Weight: 2.20 Kg<br />OS: Free DOS<br />Other: Màu đen bóng, hoa văn chìm 3D</p>', '', 'toshiba-satellite-l740-1222u', '', 'Toshiba Satellite L740-1222U', '', 0, 4, '9500000', 1, 0, '', '', '', '', 1, 27),
(31, 'Intel Dual Core E6700 - 3.2Ghz', '', '2012-04-13 07:36:51', 'intel-dual-core-e6700-3-2ghz-thumb.jpg', 'intel-dual-core-e6700-3-2ghz.jpg', '', '', '', '<p>Tên Linh Kiện: Intel Dual Core E6700 - 3.2Ghz<br />Mô Tả: 2MB K BUS 1066 LGA775</p>', '', 'intel-dual-core-e6700-32ghz', '', 'Intel Dual Core E6700 - 3.2Ghz', '', 0, 5, '1850000', 1, 0, '', '', '', '', 1, 31),
(32, 'Intel Dual Core E5700 - 3.0Ghz', '', '2012-04-13 07:37:37', 'intel-dual-core-e5700-3-0ghz-thumb.jpg', 'intel-dual-core-e5700-3-0ghz.jpg', '', '', '', '<p>Tên Linh Kiện: Intel Dual Core E5700 - 3.0Ghz<br />Mô Tả: 2MB K BUS 800 LGA775</p>', '', 'intel-dual-core-e5700-30ghz', '', 'Intel Dual Core E5700 - 3.0Ghz', '', 0, 6, '1440000', 1, 0, '', '', '', '', 1, 29),
(33, '500 Gb Toshiba', '', '2012-04-13 07:38:50', '500-gb-toshiba-thumb.jpg', '500-gb-toshiba.jpg', '', '', '', '<p>Tên Linh Kiện: 500 Gb Toshiba<br />Mô Tả: Sata Notebook - 2.5” – 5.400 rpm</p>', '', '500-gb-toshiba', '', '500 Gb Toshiba', '', 0, 7, '1950000', 1, 0, '', '', '', '', 1, 32),
(34, 'Máy Photocopy Ricoh Aficio MP 3391', '', '2012-04-16 01:28:54', 'may-photocopy-ricoh-aficio-mp-3391-thumb.jpg', 'may-photocopy-ricoh-aficio-mp-3391.jpg', '', '', '', '<p style="text-align:justify;">- Tốc độ: 33 bản/ phút;<br />- Khổ giấy: A6 ~ A3<br />- Kèm: Mực,Từ<br />- Phóng thu: 25 ~ 400%<br />- Độ phân giải 600dpi<br />- Quét tia Laser<br />- Quét ảnh 1 lần, sao chụp nhiều lần;<br />- Chụp nhân bản: 999tờ<br />- Chia bộ điện tử:<br />- Xếp chồng (có thể xoay ảnh bản gốc 90o theo chiều đặt giấy ở khay)<br />- Xoay 90 độ (1 khay giấy dọc, 1 khay giấy ngang)<br />- Bộ nhớ tiêu chuẩn: 256MB<br />- Khay giấy: 2 x 500 tờ<br />- Khay tay: 100 tờ<br />- Xuất xứ: Trung Quốc<br />- Bảo hành: 12 tháng hoặc 40.000 bản chụp A4 tùy theo điều kiện nào đến trước (Tại địa điểm của khách hàng)</p>\n<p> </p>', '', 'may-photocopy-ricoh-aficio-mp-3391', '', 'Máy Photocopy Ricoh Aficio MP 3391', '', 0, 52, '', 1, 0, '', '', '', '', 1, 34),
(35, 'Máy Photocopy Ricoh Aficio MP 2000Le', '', '2012-04-16 01:32:15', 'may-photocopy-ricoh-aficio-mp-2000le-thumb.jpg', 'may-photocopy-ricoh-aficio-mp-2000le.jpg', '', '', '', '<p style="text-align:justify;">- Có sẵn: Bộ đảo mặt bản chụp tự động (Duplex); bộ phận in đen-trắng, quét đen-trắng<br />- Tốc độ sao chụp: 20 bản/phút<br />- Khổ giấy: A6 - A3<br />- Độ phân giải: 600 dpi<br />- Phóng to - thu nhỏ: 50% - 200%<br />- Khay chứa giấy chuẩn: 250 tờ x 01 khay<br />- Dung lượng bộ nhớ: 16Mb/64Mb/192Mb<br />- Khay tay: 100 tờ<br />- Bộ chia tài liệu điện tử: Chuẩn<br />- Chức năng đặc biệt khác:<br />- In đen trắng: có sẵn<br />- Scan đen trắng: có sẵn<br />- Hệ thống tái sử dụng mực thải<br />- Xuất xứ: Trung Quốc<br />- Bảo hành: 12 tháng hoặc 40.000 bản chụp tùy theo điều kiện nào đến trước (Tại địa điểm của khách hàng)</p>\n<p> </p>', '', 'may-photocopy-ricoh-aficio-mp-2000le', '', 'Máy Photocopy Ricoh Aficio MP 2000Le', '', 0, 2, '', 0, 0, '', '', '', '', 1, 34),
(36, 'Máy Photocopy Ricoh Aficio MP 161L', '', '2012-04-16 01:33:40', 'may-photocopy-ricoh-aficio-mp-161l-thumb.jpg', 'may-photocopy-ricoh-aficio-mp-161l.jpg', '', '', '', '<p style="text-align:justify;">- Có sẵn: Bộ đảo mặt bản chụp tự động (Duplex); bộ phận in đen-trắng, quét màu<br />- Tốc độ sao chụp: 16 bản/phút<br />- Khổ giấy: A5 - A4<br />- Độ phân giải: 600 dpi<br />- Phóng to - thu nhỏ: 50% - 200%<br />- Khay chứa giấy chuẩn: 250 tờ x 01 khay<br />- Dung lượng bộ nhớ: 16Mb/64Mb/192Mb<br />- Khay tay: 100 tờ<br />- Bộ chia tài liệu điện tử: Chuẩn<br />- Chức năng đặc biệt khác:<br />- In đen trắng: có sẵn<br />- Scan Màu: có sẵn<br />- Hệ thống tái sử dụng mực thải<br />- Xuất xứ: Trung Quốc<br />- Bảo hành: 12 tháng hoặc 40.000 bản chụp tùy theo điều kiện nào đến trước (Tại địa điểm của khách hàng)</p>\n<p> </p>', '', 'may-photocopy-ricoh-aficio-mp-161l', '', 'Máy Photocopy Ricoh Aficio MP 161L', '', 0, 3, '', 0, 0, '', '', '', '', 1, 34),
(37, 'Máy photocopy Canon IR-2018N', '', '2012-04-16 01:34:52', 'may-photocopy-canon-ir-2018n-thumb.jpg', 'may-photocopy-canon-ir-2018n.jpg', '', '', '', '<p style="text-align:justify;">- Chức năng Photocopy:Máy Photocopy kỹ thuật số khổ A3.<br />- Tốc độ 18 trang/phút.<br />- Bộ nhớ 128MB RAM ( max 256MB).<br />- Thu phóng 50-200%.<br />- Khay nạp giấy tự động 250 tờ x 1 khay, nạp tay 80 tờ.<br />- Sao chụp nhân bản 1-99 tờ.Quét 1 lần, sao chụp nhiều lần.<br />- Chức năng chia bộ điện tử. Sử dụng mực NPG 28.<br />- Chức năng in Laser: In laser đen trắng khổ A3, 600x600dpi.<br />- Tốc độ in 18 trang/phút. Bộ nhớ 128MB RAM (max 256MB).<br />- Ngôn ngữ in UFR II. Giao tiếp USB 2.0 &amp; Network (RJ45).<br />- Tương thích Win 2000/XP/2003 &amp; MacOS 10.2.8.<br />- Chức năng quét Scanner: quét màu khổ A3, 600x600dpi. Công nghệ CCD.<br />- Chức năng Fax (option - lựa chọn thêm): Super Fax Board AA1.Khả năng lắp thêm option:DADF P2, Duplex Unit B1, Finisher U2, Inner 2-Way Tray E2. Cassette Feeding Modul Q1, PCL Printer Kit V1<br />- Sản xuất tại: Trung Quốc</p>', '', 'may-photocopy-canon-ir-2018n', '', 'Máy photocopy Canon IR-2018N', '', 0, 4, '', 0, 0, '', '', '', '', 1, 35),
(38, 'Máy photocopy Canon IR-3025', '', '2012-04-16 01:36:25', 'may-photocopy-canon-ir-3025-thumb.jpg', 'may-photocopy-canon-ir-3025.jpg', '', '', '', '<p style="text-align:justify;">- Hãng sản xuất: Canon<br />- Kiểu máy: Kiểu đứng<br />- Độ phân giải: 1200x600dpi<br />- Khổ giấy lớn nhất: A3<br />- Tốc độ copy(bản/phút): 25<br />- Thời gian copy bản đầu(s): 4.9<br />- Số bản copy liên tục(bản): 999<br />- Độ phóng to tối đa(%): 200<br />- Độ thu nhỏ tối đa(%): 50<br />- Dung lượng khay giấy (tờ): 550 x 2<br />- Dung lượng khay nạp tay (tờ): 50<br />- Kiểu kết nối: USB, Base-TX/10 Base-T,<br />- Bộ nhớ trong(MB): 20<br />- Thời gian khởi động(s): 30<br />- Công suất tiêu thụ: 1.35kW<br />- Trọng lượng(kg): 70</p>', '', 'may-photocopy-canon-ir-3025', '', 'Máy photocopy Canon IR-3025', '', 0, 5, '', 0, 0, '', '', '', '', 1, 35),
(39, 'Máy photocopy Canon IR-1024', '', '2012-04-16 01:37:49', 'may-photocopy-canon-ir-1024-thumb.jpg', 'may-photocopy-canon-ir-1024.jpg', '', '', '', '<p style="text-align:justify;">- Chức năng Photocopy: Máy Photocopy kỹ thuật số để bàn khổ A4.<br />- Tốc độ 24 trang/ phút.<br />- Bộ nhớ 128MB RAM.<br />- Độ phân giải 1200x600dpi.<br />- Thu phóng 50-200%.<br />- Khay giấy 100 tờ nạp tay, 500 tờ nạp tự động, sao chụp nhân bản 1-99 tờ.<br />- Quét 1 lần, sao chụp nhiều lần.<br />- Chức năng chia bộ điện tử.<br />- Sử dụng mực NPG-32.<br />- Chức năng in Laser: In laser đen trắng khổ A4, 1200x600dpi.<br />- Tốc độ in 24ppm.<br />- Bộ nhớ 128MB RAM.<br />- Ngôn ngữ in UFR II LT.<br />- Giao tiếp USB 2.0 port.<br />- Tương thích Win 2000/XP/2003, MacOS v10.15 / 10.3.8.<br />- Chức năng quét Scanner : quét màu khổ A4, 600x600dpi.<br />- Công nghệ CIS.<br />- Sản xuất tại: Trung Quốc</p>', '', 'may-photocopy-canon-ir-1024', '', 'Máy photocopy Canon IR-1024', '', 0, 6, '', 0, 0, '', '', '', '', 1, 35),
(40, 'Máy Photocopy Toshiba E-studio 305', '', '2012-04-16 01:39:19', 'may-photocopy-toshiba-e-studio-305-thumb.jpg', 'may-photocopy-toshiba-e-studio-305.jpg', '', '', '', '<p style="text-align:justify;">- Tốc độ copy : 23/ 28 tờ/phút<br />- Khay đựng giấy : 550 tờ x 1 khay<br />- Khay nạp tay : 100 tờ<br />- Khổ giấy : A3 – A5R<br />- Độ phân giải : 2400 x 600 dpi<br />- Phóng to, thu nhỏ: 25 - 400%<br />- Bộ nhớ: 1000MB<br />- Ổ cứng : 60 GB<br />- Dung lượng bộ nhớ: 256 MB<br />- Mã bảo mật : 1.000<br />- Một cổng kết nối song song<br />- Công suất: 80.000 bản/tháng<br />- Copy liên tục 999 bản<br />- Kích thước : 637 x 719 x 739 mm<br />- Trọng lượng : 57 kg<br />- Chức năng chuẩn: Copy<br />- ADU : Tự động đảo mặt bản sao<br />- Các tính năng khác: Xoá lề, dời hình, âm bản, sao chép đối xứng 2 trong 1, 4 trong 1, chèn số trang.<br />- Chức năng mở rộng: Fax, Scan, In mở rộng, PC Fax, Internet Fax, Net work (Mua thêm)</p>', '', 'may-photocopy-toshiba-e-studio-305', '', 'Máy Photocopy Toshiba E-studio 305', '', 0, 55, '', 1, 0, '', '', '', '', 1, 36),
(41, 'Máy Photocopy Toshiba E-studio 233', '', '2012-04-16 01:40:27', 'may-photocopy-toshiba-e-studio-233-thumb.jpg', 'may-photocopy-toshiba-e-studio-233.jpg', '', '', '', '<p style="text-align:justify;">- Tốc độ copy : 23/ 28 tờ/phút<br />- Khay đựng giấy : 550 tờ x 1 khay<br />- Khay nạp tay : 100 tờ<br />- Khổ giấy : A3 – A5R<br />- Độ phân giải : 2400 x 600 dpi<br />- Phóng to, thu nhỏ: 25 - 400%<br />- Bộ nhớ: 1000M<br />- Ổ cứng : 60 GB<br />- Dung lượng bộ nhớ: 256 MB<br />- Mã bảo mật : 1.000<br />- Một cổng kết nối song song<br />- Công suất: 80.000 bản/tháng<br />- Copy liên tục 999 bản<br />- Kích thước : 637 x 719 x 739 mm<br />- Trọng lượng : 57 kg<br />- Chức năng chuẩn: Copy<br />- ADU : Tự động đảo mặt bản sao<br />- Các tính năng khác: Xoá lề, dời hình, âm bản, sao chép đối xứng 2 trong 1, 4 trong 1, chèn số trang.<br />- Chức năng mở rộng: Fax, Scan, In mở rộng, PC Fax, Internet Fax, Net work (Mua thêm)</p>\n<p> </p>', '', 'may-photocopy-toshiba-e-studio-233', '', 'Máy Photocopy Toshiba E-studio 233', '', 0, 8, '', 0, 0, '', '', '', '', 1, 36),
(42, 'Máy photocopy Toshiba E-studio 282', '', '2012-04-16 01:41:24', 'may-photocopy-toshiba-e-studio-282-thumb.jpg', 'may-photocopy-toshiba-e-studio-282.jpg', '', '', '', '<p>- Hãng sản xuất: Toshiba<br />- Kiểu máy: Kiểu đứng<br />- Độ phân giải: 2400x600dpi<br />- Khổ giấy lớn nhất: A3<br />- Tốc độ copy(bản/phút): 23<br />- Thời gian copy bản đầu(s): 5.4<br />- Số bản copy liên tục(bản): 99<br />- Độ phóng to tối đa(%): 50<br />- Độ thu nhỏ tối đa(%): 200<br />- Dung lượng khay giấy (tờ): 550 x1<br />- Dung lượng khay nạp tay (tờ): 550<br />- Kiểu kết nối: USB, Ethernet,<br />- Bộ nhớ trong(MB): 128<br />- Thời gian khởi động(s): 25</p>', '', 'may-photocopy-toshiba-e-studio-282', '', 'Máy photocopy Toshiba E-studio 282', '', 0, 12, '', 0, 0, '', '', '', '', 1, 36),
(43, 'Máy photocopy Toshiba E-studio 455', '', '2012-04-16 01:43:00', 'may-photocopy-toshiba-e-studio-455-thumb.jpg', 'may-photocopy-toshiba-e-studio-455.jpg', '', '', '', '<p>- Hãng sản xuất: TOSHIBA<br />- Kiểu máy: Kiểu đứng<br />- Độ phân giải: 2400 x 600dpi<br />- Khổ giấy lớn nhất: A3<br />- Tốc độ copy(bản/phút): 45<br />- Thời gian copy bản đầu(s): 3.7<br />- Số bản copy liên tục(bản): 999<br />- Độ phóng to tối đa(%): 400<br />- Độ thu nhỏ tối đa(%): 25<br />- Dung lượng khay giấy (tờ): 550 x 2<br />- Dung lượng khay nạp tay (tờ): 100<br />- Kiểu kết nối: Ethernet, USB 2.0, Wireless,<br />- Bộ nhớ trong(MB): 1024<br />- Thời gian khởi động(s): 20<br />- Công suất tiêu thụ: 1.5kW<br />- Trọng lượng(kg): 56.7</p>', '', 'may-photocopy-toshiba-e-studio-455', '', 'Máy photocopy Toshiba E-studio 455', '', 0, 10, '', 0, 0, '', '', '', '', 1, 36),
(44, 'Máy photocopy Toshiba E-studio 206', '', '2012-04-16 01:43:40', 'may-photocopy-toshiba-e-studio-206-thumb.jpg', 'may-photocopy-toshiba-e-studio-206.jpg', '', '', '', '<p style="text-align:justify;">- Hãng sản xuất: Toshiba<br />- Kiểu máy: Kiểu đứng<br />- Độ phân giải: 2400x600dpi<br />- Khổ giấy lớn nhất: A3<br />- Tốc độ copy(bản/phút): 20<br />- Thời gian copy bản đầu(s): 7.6<br />- Số bản copy liên tục(bản): 999<br />- Độ phóng to tối đa(%): 400<br />- Độ thu nhỏ tối đa(%): 25<br />- Dung lượng khay giấy (tờ): 250 x 1<br />- Dung lượng khay nạp tay (tờ): 100<br />- Kiểu kết nối: USB, USB 2.0,<br />- Bộ nhớ trong(MB): 16<br />- Thời gian khởi động(s): 25<br />- Công suất tiêu thụ: 1.6kW<br />- Trọng lượng(kg): 31.8</p>', '', 'may-photocopy-toshiba-e-studio-206', '', 'Máy photocopy Toshiba E-studio 206', '', 0, 11, '', 0, 0, '', '', '', '', 1, 36),
(45, 'Máy Photocopy Toshiba E-studio 181', '', '2012-04-16 01:46:23', 'may-photocopy-toshiba-e-studio-181-thumb.jpg', 'may-photocopy-toshiba-e-studio-181.jpg', '', '', '', '<p style="text-align:justify;">- Chức năng chuẩn :Copy, in GDI,Scan.<br />- Tốc độ : 18 tờ/phút (A4)<br />- Phóng to thu nhỏ : 25-400%<br />- Khay đựng giấy: 250 tờ x 1<br />- Khay nạp tay: 100 tờ<br />- Khổ giấy sử dụng:A3-A5R<br />- Bộ nhớ : 16MB ( Mở rộng 80MB)<br />- Chia bộ điện tử<br />- 1 cổng kết nối song song<br />- Cộng suất : 20.000 bản/tháng<br />- Chức năng khác: Xoá lề, dời hình, âm bản, sao chép đối xứng, 2 trong 1, 4 trong 1, chèn số trang ......</p>', '', 'may-photocopy-toshiba-e-studio-181', '', 'Máy Photocopy Toshiba E-studio 181', '', 0, 9, '', 0, 0, '', '', '', '', 1, 36),
(46, 'Máy in HP LaserJet 5200TN khổ A3', '', '2012-04-16 01:47:30', 'may-in-hp-laserjet-5200tn-kho-a3-thumb.jpg', 'may-in-hp-laserjet-5200tn-kho-a3.jpg', '', '', '', '<p>Máy in HP LASERJET 5200TN (NEW)<br />Máy in Laser khổ A3<br />Độ phân giải : 1200x1200dpi.<br />Tốc độ in 35 trang/ phút.<br />Bộ nhớ 64MB RAM up to 512MB.<br />Khay nạp giấy tay 100 tờ. 2 khay giấy tự động 250 &amp; 500 tờ.<br />Khay trả giấy 250tờ.<br />Giao diện USB 2.0HS, Parallel &amp; Network Jetdire<br />Xuất xứ : Trung Quốc</p>', '', 'may-in-hp-laserjet-5200tn-kho-a3', '', 'Máy in HP LaserJet 5200TN khổ A3', '', 0, 13, '', 0, 0, '', '', '', '', 1, 40),
(47, 'Máy in HP Laser Color Printer CP1525nw', '', '2012-04-16 01:48:25', 'may-in-hp-laser-color-printer-cp1525nw-thumb.jpg', 'may-in-hp-laser-color-printer-cp1525nw.jpg', '', '', '', '<p>HP Laser Color Printer CP1525nw (A4; 1200x1200dpi; 12ppm Black; 8ppm Color; 128MB; khay giấy 150 tờ; Công suất 30.000 trang/tháng; 1.85 LCD; 600x600dpi with HP ImageREt 2400, 264MHz, 150 sheet input tray, 1 plus 1-sheet priority feed slot, Printer languages :Host-based, 1 built-in 10/100 Ethernet; 1 Wireless 802.11 b/g/n, )</p>', '', 'may-in-hp-laser-color-printer-cp1525nw', '', 'Máy in HP Laser Color Printer CP1525nw', '', 0, 14, '', 0, 0, '', '', '', '', 1, 40),
(48, 'Máy in HP LaserJet Printer P2055D', '', '2012-04-16 01:49:07', 'may-in-hp-laserjet-printer-p2055d-thumb.jpg', 'may-in-hp-laserjet-printer-p2055d.jpg', '', '', '', '<p>HP LaserJet Printer P2055D (A4; 33ppm; 1200dpi; 64MB; in đảo mặt ) - BH tại hãng</p>', '', 'may-in-hp-laserjet-printer-p2055d', '', 'Máy in HP LaserJet Printer P2055D', '', 0, 17, '', 1, 0, '', '', '', '', 1, 40),
(49, 'Máy in HP LaserJet Pro P1102', '', '2012-04-16 01:49:42', 'may-in-hp-laserjet-pro-p1102-thumb.jpg', 'may-in-hp-laserjet-pro-p1102.jpg', '', '', '', '<p>HP LaserJet Pro P1102 Printer ( Up to 18/19 ppm(A4/Letter), 266 MHz, 600x600 dpi (1200 dpi effective output) , input 150sheets , 10 sheet priority tray , 2MB RAM, Printer languages : Host-based printing , USB 2.0 , 5.000 pages/month - tự động cài Driver - chế độ tiết kiệm điện</p>', '', 'may-in-hp-laserjet-pro-p1102', '', 'Máy in HP LaserJet Pro P1102', '', 0, 16, '', 0, 0, '', '', '', '', 1, 40),
(50, 'Máy in HP LaserJet P2035N', '', '2012-04-16 01:50:29', 'may-in-hp-laserjet-p2035n-thumb.jpg', 'may-in-hp-laserjet-p2035n.jpg', '', '', '', '<p>- Máy in laser khổ A4, 600x600dpi.<br />- Tốc độ in 30ppm.<br />- Bộ nhớ 16MB RAM with Ret.<br />- Ngôn ngữ in: HP PCL5e &amp; Host- Based.<br />- Giao diện USB 2.0HS &amp; Network 10/100 (RJ45).<br />- Khay nạp giấy tay 50 tờ<br />- Khay nạp giấy tự động 250 tờ.<br />- Khay trả giấy ra 150 tờ.<br />- Dùng mực CE505A (in được 2300 trang).</p>', '', 'may-in-hp-laserjet-p2035n', '', 'Máy in HP LaserJet P2035N', '', 0, 15, '', 0, 0, '', '', '', '', 1, 40),
(51, 'Máy in HP LaserJet Printer M1212NF', '', '2012-04-16 01:51:27', 'may-in-hp-laserjet-printer-m1212nf-thumb.jpg', 'may-in-hp-laserjet-printer-m1212nf.jpg', '', '', '', '<p>HP LaserJet Printer M1212NF in,scan,copy,fax (A4; Printer upto 18 ppm; - 600 x 600dpi; Scanner; Copy 25 đến 200%; Fax:33.6kbps, bộ nhớ 500 trang;64Mb; Network) - China</p>', '', 'may-in-hp-laserjet-printer-m1212nf', '', 'Máy in HP LaserJet Printer M1212NF', '', 0, 18, '', 0, 0, '', '', '', '', 1, 40),
(52, 'Máy in Epson TX-111', '', '2012-04-16 02:06:05', 'may-in-epson-tx-111-thumb.jpg', 'may-in-epson-tx-111.jpg', '', '', '', '<p>Cỡ giấy: A4<br />Độ phân giải: 5760x1440dpi<br />Tốc độ in đen trắng(Tờ/phút): 30tờ<br />Tốc độ in mầu(Tờ/phút): 15tờ<br />Khay đựng giấy(Tờ): 120tờ<br />Loại cổng kết nối: USB2.0,<br />Nguồn điện sử dụng: AC 220V±240V　50/60Hz</p>', '', 'may-in-epson-tx-111', '', 'Máy in Epson TX-111', '', 0, 24, '', 0, 0, '', '', '', '', 1, 39),
(53, 'Máy in Epson TX210', '', '2012-04-16 02:06:46', 'may-in-epson-tx210-thumb.jpg', 'may-in-epson-tx210.jpg', '', '', '', '<p>Cỡ giấy: A4<br />Độ phân giải: 1200x2400dpi<br />Tốc độ in đen trắng(Tờ/phút): 32tờ<br />Tốc độ in mầu(Tờ/phút): 15tờ<br />Khay đựng giấy(Tờ): -<br />Loại cổng kết nối: USB, USB2.0,<br />Nguồn điện sử dụng: AC 100V±240V　50/60H</p>', '', 'may-in-epson-tx210', '', 'Máy in Epson TX210', '', 0, 22, '', 0, 0, '', '', '', '', 1, 39),
(54, 'Máy In Epson Stylus-T30', '', '2012-04-16 02:07:29', 'may-in-epson-stylus-t30-thumb.jpg', 'may-in-epson-stylus-t30.jpg', '', '', '', '<p>Cỡ giấy:A4<br />Độ phân giải:5760x1440dpi<br />Tốc độ in đen trắng(Tờ/phút):38tờ<br />Tốc độ in mầu(Tờ/phút):20tờ<br />Khay đựng giấy(Tờ):120tờ<br />Loại cổng kết nối: USB2.0<br />Bộ nhớ tích hợp: RAM: 512MB<br />Loại mực sử dụng: STANDARD CAPACITY INK CARTRIDGES : 73N Black, 73N Cyan, 73N Magenta, 73N Yellow,HIGH CAPACITY BLACK TWIN PACK: 73HN Black,EXTRA HIGH CAPACITY INK CARTRIDGES : 103 Black, 103 Cyan, 103 Magenta, 103 Yellow,STANDARD INK CARTRIDGE YIELDS : 740 pages Black, 355 pages Colour Composite<br />Nguồn điện sử dụng: AC 220V±240V　50/60Hz<br />Công suất tiêu thụ(W):15<br />Phụ kiện bán kèm: CD Driver,Dây nguồn,Sách hướng dẫn,USB Cable,Hộp mực chính hãng<br />Kích thước:435 x 250 x 161 mm<br />Trọng lượng:3.8kg</p>', '', 'may-in-epson-stylus-t30', '', 'Máy In Epson Stylus-T30', '', 0, 21, '', 0, 0, '', '', '', '', 1, 39),
(55, 'Máy in Epson ME 32', '', '2012-04-16 02:08:16', 'may-in-epson-me-32-thumb.jpg', 'may-in-epson-me-32.jpg', '', '', '', '<p>Máy in phun màu khổ giấy A4 Epson ME 32 thiết kế gọn nhẹ với màu trắng sáng, có vân sọc trên bề mặt máy in<br />Được trang bị công nghệ in Epson Micro Piezo, sử dụng hệ thống hộp mực 4 màu rời Epson INKdividual Cartridges với công nghệ mực siêu bền Epson Durabrite Ultra<br />Epson ME 32 có 2 phím chức năng đặt phía trước, các thao tác lắp ráp hộp mực giống như các máy in phun thông thường<br />Bên phải là các phím chức năng sao chụp màu và trắng đen, phím hủy lệnh in, và nút nguồn<br />Hệ thống mực được thiết kế nằm gọn dưới nắp khay kính phẳng<br />Khay chứa giấy chứa được 80 tờ A4.</p>', '', 'may-in-epson-me-32', '', 'Máy in Epson ME 32', '', 0, 20, '', 0, 0, '', '', '', '', 1, 39),
(56, 'Epson Stylus Photo 1390', '', '2012-04-16 02:08:58', 'may-in-epson-stylus-photo-1390-thumb.jpg', 'may-in-epson-stylus-photo-1390.jpg', '', '', '', '<p>In phun đen &amp; màu khổ A3+, 5.760 x 1440dpi, USB. Tốc độ in: Màu: 15ppm, đen: 15ppm A4, Hạt mực siêu nhỏ 1.5 picolit, Sử dụng 6 hộp mực riêng biệt.</p>', '', 'epson-stylus-photo-1390', '', 'Máy in Epson Stylus Photo 1390', '', 0, 19, '', 0, 0, '', '', '', '', 1, 39),
(57, 'Máy in Epson Stylus R230', '', '2012-04-16 02:09:42', 'may-in-epson-stylus-r230-thumb.jpg', 'may-in-epson-stylus-r230.jpg', '', '', '', '<p>In phun đen &amp; màu, khổ A4, 5.760x1.440dpi, Màu : 15.3ppm, đen : 15.8ppm, USB2.0, 6 hộp mực rời, USB direct print, in trực tiếp trên đĩa, hỗ trợ chuẩn in Exif 2.2.</p>', '', 'may-in-epson-stylus-r230', '', 'Máy in Epson Stylus R230', '', 0, 51, '', 1, 0, '', '', '', '', 1, 39),
(58, 'Máy in Samsung SCX-3201', '', '2012-04-16 02:12:54', 'may-in-samsung-scx-3201-thumb.jpg', 'may-in-samsung-scx-3201.jpg', '', '', '', '<p style="text-align:justify;">Loại máy in: All - in - One<br />Cỡ giấy: A4<br />Độ phân giải: 1200x1200dpi<br />Chức năng: Copy, Scan, In 2 mặt, In tràn lề, In Label, In trực tiếp, In Network,<br />OS Supported: Microsoft Windows 2000, Microsoft Windows XP, Mac OS X v10.4, v10.5, v10.6, Microsoft Windows XP Pro x64, Microsoft Windows Server 2003, Red Hat Linux 6.0, Microsoft Windows Vista, Microsoft Windows Server 2008, SuSe Linux, Microsoft Windows 7, Red Hat Linux 7.0, Red Hat Linux 8.0, Red Hat Linux 9.0,<br />Bộ nhớ trong(Mb): 32<br />Khối lượng: 7.3kg</p>\n<p> </p>', '', 'may-in-samsung-scx-3201', '', 'Máy in Samsung SCX-3201', '', 0, 25, '', 0, 0, '', '', '', '', 1, 38),
(59, 'Máy in Samsung CLP–310N', '', '2012-04-16 02:13:33', 'may-in-samsung-clp310n-thumb.jpg', 'may-in-samsung-clp310n.jpg', '', '', '', '<p>Loại máy in:In Laser màu<br />Khổ giấy:A4<br />tốc độ in : 16 trang/phút<br />4 tr/p màu :<br />bộ nhớ : 32MB<br />độ phân giải : 2400*600 dpi</p>', '', 'may-in-samsung-clp310n', '', 'Máy in Samsung CLP–310N', '', 0, 26, '', 0, 0, '', '', '', '', 1, 38),
(60, 'Máy in SamSung Laser SCX-4600', '', '2012-04-16 02:14:12', 'may-in-samsung-laser-scx-4600-thumb.jpg', 'may-in-samsung-laser-scx-4600.jpg', '', '', '', '<p>Cỡ giấy :A4<br />Khay đựng giấy(Tờ) :250tờ<br />Loại cổng kết nối : USB2.0<br />Loại mực sử dụng :MLT-D1052S, MLT-D1052L<br />Kích thước (mm) :416.0 x 409.0 x 275.8<br />Trọng lượng (kg) :10.59<br />Kiểu in :In laser<br />Độ phân giải khi in :1200 x 1200dpi<br />Bộ nhớ máy in :64MB<br />Tốc độ in đen trắng(Tờ/phút) :22tờ<br />Độ phân giải khi Scan :4800 x 4800dpi<br />Tốc độ copy đen trắng(Tờ/phút) :22tờ<br />Số bản copy liên tục :99 Trang<br />Tỉ lệ Zoom :25 ~ 400%<br />Phụ kiện bán kèm : CD Driver,Dây nguồn,Sách hướng dẫn,USB Cable</p>', '', 'may-in-samsung-laser-scx-4600', '', 'Máy in SamSung Laser SCX-4600', '', 0, 27, '', 0, 0, '', '', '', '', 1, 38),
(61, 'Máy in Samsung ML 8300', '', '2012-04-16 02:15:04', 'may-in-samsung-ml-8300-thumb.jpg', 'may-in-samsung-ml-8300.jpg', '', '', '', '<p style="text-align:justify;">Loại máy in:Laser đen trắng<br />Cỡ giấy:A3<br />Độ phân giải:1200dpi<br />Kết nối:LAN,Parallel<br />Tốc độ in đen trắng (Tờ/phút):28tờ<br />Khay đựng giấy thường (Tờ):500tờ<br />Chức năng:In 2 mặt<br />OS Supported:Microsoft Windows 2000,Microsoft Windows 98,Microsoft Windows XP,Mac OS X v10.4, v10.5, v10.6,Microsoft Windows 7<br />Nguồn điện sử dụng:AC 220V 50/60Hz</p>', '', 'may-in-samsung-ml-8300', '', 'Máy in Samsung ML 8300', '', 0, 28, '', 0, 0, '', '', '', '', 1, 38),
(62, 'Máy in Samsung ML 2240', '', '2012-04-16 02:15:52', 'may-in-samsung-ml-2240-thumb.jpg', 'may-in-samsung-ml-2240.jpg', '', '', '', '<p>Cỡ giấy: A4<br />Độ phân giải: 1200x600dpi<br />Tốc độ in (Tờ/phút):22tờ<br />Khay đựng giấy(Tờ): 150tờ<br />Loại cổng kết nối: USB2.0<br />Bộ vi xử lý: 150 MHz<br />Tính năng nổi bật có nút tích kiệm mực.<br />Xuất xứ : Trung Quốc<br />Bảo hành : 12 tháng</p>', '', 'may-in-samsung-ml-2240', '', 'Máy in Samsung ML 2240', '', 0, 53, '', 1, 0, '', '', '', '', 1, 38),
(63, 'Máy in Samsung ML-1666', '', '2012-04-16 02:16:33', 'may-in-samsung-ml-1666-thumb.jpg', 'may-in-samsung-ml-1666.jpg', '', '', '', '<p>Loại máy in In Laser<br />Tốc độ in 16 trang đen A4/phút<br />Độ phân giải 1200 x 600dpi<br />Bộ nhớ 8Mb<br />Khổ giấy A4<br />Kết nối kết nối USB 2.0<br />Xuất xứ : Trung Quốc<br />Bảo hành : 12 tháng</p>', '', 'may-in-samsung-ml-1666', '', 'Máy in Samsung ML-1666', '', 0, 30, '', 0, 0, '', '', '', '', 1, 38),
(64, 'Máy in Fuji Xerox Phaser 3124', '', '2012-04-16 02:18:14', 'may-in-fuji-xerox-phaser-3124-thumb.jpg', 'may-in-fuji-xerox-phaser-3124.jpg', '', '', '', '<p>Máy in Laser khổ A4,<br />Độ phân giải 1200x600dpi;<br />Tốc độ in 24trang/phút<br />Bộ nhớ trong 8MB RAM<br />Ngôn ngữ in: Host-Based.<br />Giao diện Parallel &amp; USB.<br />Dùng mực Fuji Xerox Cartridge:<br />CWAA0759 ( 3,000 trang).<br />Xuất xứ : Trung Quốc<br />Bảo hành : 12 tháng</p>', '', 'may-in-fuji-xerox-phaser-3124', '', 'Máy in Fuji Xerox Phaser 3124', '', 0, 31, '', 0, 0, '', '', '', '', 1, 37),
(65, 'Máy in Fuji Xerox Phaser 3435DN', '', '2012-04-16 02:18:52', 'may-in-fuji-xerox-phaser-3435dn-thumb.jpg', 'may-in-fuji-xerox-phaser-3435dn.jpg', '', '', '', '<p>Máy in Laser khổ A4,<br />Độ phân giải 1200x1200dpi;<br />Tốc độ in 33ppm;<br />Bộ nhớ: 64MB RAM (max 320MB);<br />Ngôn ngữ in: PCL6 &amp; PS3.<br />Giao diện Parallel, USB 2.0.&amp; Network 10/100.<br />Tự động đảo 2 mặt bản in.<br />Khay nạp giấy tay 50 tờ,<br />Khay nạp giấy tự động 250 tờ.<br />Khay trả giấy ra 150 tờ.<br />Dùng mực Fuji Xerox Cartridge :<br />CWAA0762 ( 4,000 trang)<br />hoặc CWAA0763 (10,000 trang).<br />Xuất xứ : Trung Quốc<br />Bảo hành : 12 tháng</p>', '', 'may-in-fuji-xerox-phaser-3435dn', '', 'Máy in Fuji Xerox Phaser 3435DN', '', 0, 32, '', 0, 0, '', '', '', '', 1, 37),
(66, 'Máy in Fuji Xerox Phaser 3125N', '', '2012-04-16 02:19:36', 'may-in-fuji-xerox-phaser-3125n-thumb.jpg', 'may-in-fuji-xerox-phaser-3125n.jpg', '', '', '', '<p>Máy in Laser khổ A4,<br />Độ phân giải 1200x600dpi;<br />Tốc độ in 24ppm;<br />Bộ nhớ trong 32MB RAM;<br />Ngôn ngữ in: PCL6 &amp; PS3.<br />Giao diện Parallel, USB &amp; Network 10/100.<br />Dùng mực Fuji Xerox Cartridge:<br />CWAA0759 ( 3,000 trang).<br />Xuất xứ : Trung Quốc<br />Bảo hành : 12 tháng</p>', '', 'may-in-fuji-xerox-phaser-3125n', '', 'Máy in Fuji Xerox Phaser 3125N', '', 0, 33, '', 0, 0, '', '', '', '', 1, 37),
(67, 'Máy fax Brother MFC-2820', '', '2012-04-16 02:23:43', 'may-fax-brother-mfc-2820-thumb.jpg', 'may-fax-brother-mfc-2820.jpg', '', '', '', '<p>- Lưu được 400 trang tài liệu khi hết giấy,<br />- Thời gian chuyển fax 08 giây<br />- Khay nạp giấy 20 trang<br />- Khay chứa giấy 200 trang<br />- Gởi fax hẹn giờ, gởi đến 50 địa chỉ cùng lúc<br />- Sử dụng film mực TN-2025 (2.500 trang) và Drum DR-2025 (12.000 trang) .<br />- Xuất xứ : ViệtNam<br />- Bảo hành : 12 tháng</p>', '', 'may-fax-brother-mfc-2820', '', 'Máy fax Brother MFC-2820', '', 0, 34, '', 0, 0, '', '', '', '', 1, 41),
(68, 'Máy fax Brother FAX-837MCS', '', '2012-04-16 02:25:39', 'may-fax-brother-fax-837mcs-thumb.jpg', 'may-fax-brother-fax-837mcs.jpg', '', '', '', '<p>Fax giấy thường in film.<br />Lưu trữ tin nhắn: 30 phút, ghi âm 2 chiều<br />Bộ nhớ 512KB<br />Tốc độ Modem 14.4Kbps<br />Nhận &amp; lưu được 25 trang khi hết giấy<br />Quay số nhanh cho phép lưu 100 số,<br />Tích hợp tay nghe<br />Khay giấy 200 trang<br />Bảo hành 12 tháng<br />Xuất xứ: Trung Quốc</p>\n<p> </p>', '', 'may-fax-brother-fax-837mcs', '', 'Máy fax Brother FAX-837MCS', '', 0, 35, '', 0, 0, '', '', '', '', 1, 41),
(69, 'Máy fax Brother FAX- 878', '', '2012-04-16 02:26:18', 'may-fax-brother-fax878-thumb.jpg', 'may-fax-brother-fax878.jpg', '', '', '', '<p>Máy fax giấy thường tốc độ Modem 9.6Kbps<br />Tính năng khóa hệ thống<br />Lưu bản Fax tiếp theo<br />Quay số nhanh cho phép lưu 100 số<br />Nạp bản gốc tự động (ADF) 10 trang<br />Chế độ copy 50% - 150%<br />Tích hợp tay nghe<br />Bảo hành 12 tháng</p>', '', 'may-fax-brother-fax-878', '', 'Máy fax Brother FAX- 878', '', 0, 36, '', 0, 0, '', '', '', '', 1, 41),
(70, 'Máy fax Brother FAX-235S', '', '2012-04-16 02:27:01', 'may-fax-brother-fax-235s-thumb.jpg', 'may-fax-brother-fax-235s.jpg', '', '', '', '<p>- Fax Laser, màn hinh LCD 2 dòng<br />- hiển thị số gọi đi<br />- lưu được 100 tên &amp; số điện thọa, 22 số gọi nhanh,<br />- lưu 10 số gọi đi &amp; 30 số nhận gần nhất.<br />- Tốc độ Fax : 6giây/trang</p>\n<p> </p>', '', 'may-fax-brother-fax-235s', '', 'Máy fax Brother FAX-235S', '', 0, 37, '', 0, 0, '', '', '', '', 1, 41),
(71, 'Máy fax Brother MFC-7340', '', '2012-04-16 02:29:37', 'may-fax-brother-mfc-7340-thumb.jpg', 'may-fax-brother-mfc-7340.jpg', '', '', '', '<p>Máy đa chức năng: fax laser +in Laser +photocopy+scan màu+ Điện Thoại+ PC fax<br />Tốc độ in: 20 trang/phút<br />Bộ nhớ: 16MB, nhận và lưu được 400 trang khi hết giấy<br />Tốc độ modem: 14.4Kbps. Độ phân giải 2400*600dpi<br />Giao tiếp qua cổng USB<br />Phóng to thu nhỏ 25%_400%. Gửi và nhận fax từ máy vi tính<br />Tự động nạp bản gốc 20 trang. Khay chứa giấy 250 trang</p>', '', 'may-fax-brother-mfc-7340', '', 'Máy fax Brother MFC-7340', '', 0, 38, '', 0, 0, '', '', '', '', 1, 41),
(72, 'Máy Fax Brother MFC-8460N', '', '2012-04-16 02:31:11', 'may-fax-brother-mfc-8460n-thumb.jpg', 'may-fax-brother-mfc-8460n.jpg', '', '', '', '<p>- Lưu được 500 trang tài liệu khi hết giấy<br />- Thời gian chuyển fax 06 giây<br />- Tốc độ in: 20 trang/phút<br />- Copy kỹ thuật số, thiết kế mặt tiếp giấy phẳng<br />- Scan màu<br />- Khay nạp giấy 50 trang<br />- 2 Khay chứa giấy 250 trang+ 250 trang ( nâng cấp )<br />- Giao tiếp USB &amp; Paralled<br />- Sử dụng film mực TN-3030 (3.500 trang) và Drum DR -3050 (20.000 trang)</p>', '', 'may-fax-brother-mfc-8460n', '', 'Máy Fax Brother MFC-8460N', '', 0, 39, '', 0, 0, '', '', '', '', 1, 41),
(73, 'Máy fax Panasonic KX-FP701', '', '2012-04-16 02:32:48', 'may-fax-panasonic-kx-fp701-thumb.jpg', 'may-fax-panasonic-kx-fp701.jpg', '', '', '', '<p>- Panasonic KX-FP 701: (Mã Lai)<br />- Panasonic KX-FP701 kế thừa và phát triển các tính năng của KX-FP342<br />- Sử dụng mực fax FA57 độ dài 70m<br />- Fax liên tục 10 bản, fax theo trình tự 20 địa chỉ cùng lúc; Bộ nhớ 28 trang khi hết giấy<br />- Tốc độ modem: 9,6kbps, tốc độ in 4 trang/phút (thực tế chậm hơn)<br />- Gửi fax theo giờ; Khay chứa giấy 50 bản<br />- Từ chối fax không mong muốn (10 số)<br />- Danh bạ 100 số, 10 số gọi nhanh<br />- Hiển thị và lưu 30 số gọi đến.</p>', '', 'may-fax-panasonic-kx-fp701', '', 'Máy fax Panasonic KX-FP701', '', 0, 40, '', 0, 0, '', '', '', '', 1, 42),
(74, 'Máy fax Panasonic KX-FP206', '', '2012-04-16 02:33:52', 'may-fax-panasonic-kx-fp206-thumb.jpg', 'may-fax-panasonic-kx-fp206.jpg', '', '', '', '<p>- Dòng hiển thị tên và số,<br />- Lưu được 50 số điện thoại, gửi bằng bộ nhớ 25 trang,<br />- Sử dụng film mực</p>\n<p> </p>', '', 'may-fax-panasonic-kx-fp206', '', 'Máy fax Panasonic KX-FP206', '', 0, 41, '', 0, 0, '', '', '', '', 1, 42),
(75, 'Máy fax Panasonic KX-FP 362CX', '', '2012-04-16 02:34:49', 'may-fax-panasonic-kx-fp-362cx-thumb.jpg', 'may-fax-panasonic-kx-fp-362cx.jpg', '', '', '', '<p>- Fax giấy thường (A4), film mực, kết nối PC<br />- Có 110 bộ nhớ, có nút xoay bộ nhớ nhanh<br />- Hiển thị số gọi đến (FSK/DTMF), lưu 30 số gọi đến<br />- Ghi âm tin nhắn (khoảng 20 phút).<br />- Copy phóng to 220%, thu nhỏ 72%<br />- Lưu được 28 trang tài liệu khi hết giấy<br />- Thời gian chuyển fax 08 giây<br />- Khay nạp bản gốc 25 trang<br />- Gởi đến 20 địa chỉ cùng một lúc<br />- Vật tư thay thế: - film mực KX-FA 57 (210 trang): 3.2$</p>', '', 'may-fax-panasonic-kx-fp-362cx', '', 'Máy fax Panasonic KX-FP 362CX', '', 0, 42, '', 0, 0, '', '', '', '', 1, 42),
(76, 'Máy fax Panasonic KX-FP 372', '', '2012-04-16 02:35:33', 'may-fax-panasonic-kx-fp-372-thumb.jpg', 'may-fax-panasonic-kx-fp-372.jpg', '', '', '', '<p>- Hiển thị số gọi đi, đến (FSK &amp; DTMF).<br />- Lưu 28 trang khi hết giấy.<br />- Sử dụng film mực KX-FA 57.<br />- Speaker phone.<br />- Ghi âm</p>', '', 'may-fax-panasonic-kx-fp-372', '', 'Máy fax Panasonic KX-FP 372', '', 0, 54, '', 1, 0, '', '', '', '', 1, 42),
(77, 'Máy fax Panasonic KX-FT 937NX', '', '2012-04-16 02:36:17', 'may-fax-panasonic-kx-ft-937nx-thumb.jpg', 'may-fax-panasonic-kx-ft-937nx.jpg', '', '', '', '<p>- Fax giấy nhiệt KX-FT 937NX<br />- Có 100 số nhớ, có nút Navigator để dò tìm bộ nhớ nhanh<br />- Có cổng nối với máy ghi âm, tự động cắt giấy, gởi 1 nội dung đến 10 địa chỉ khác nhau<br />- Hiển thị số gọi đi, đến (hệ FSK &amp; DTMK)<br />- Lưu được 30 số gọi đến, lưu 28 trang khi hết giấy<br />- Tốc độ gủi fax 15 giây/trang, khay gửi fax 15 trang, khóa cuộc gọi ra ngoài<br />- Sử dụng cuộn giấy nhiệt dài 30m.<br />- Ghi âm 2 chiều (lời nhắn khi vắng nhà &amp; cuộc đàm thoại) bằng IC, thời gian ghi âm tối đa 18 phút, có Speaker phone.</p>\n<p> </p>', '', 'may-fax-panasonic-kx-ft-937nx', '', 'Máy fax Panasonic KX-FT 937NX', '', 0, 44, '', 0, 0, '', '', '', '', 1, 42),
(78, 'Máy fax Panasonic KX-FC 238', '', '2012-04-16 02:37:28', 'may-fax-panasonic-kx-fc-238-thumb.jpg', 'may-fax-panasonic-kx-fc-238.jpg', '', '', '', '<p>- Fax Cordless giấy thường (A4), film mực<br />- Kèm 01 máy con vô tuyến (cordless), điều khiển nhận fax từ xa qua máy con<br />- Có 110 bộ nhớ, có nút xoay bộ nhớ nhanh<br />- Hiển thị số gọi đến (FSK/DTMF), lưu 50 số gọi đến<br />- Ghi âm tin nhắn khoảng 20 phút).<br />- Copy phóng to 200%, thu nhỏ 72%<br />- Lưu được 28 trang tài liệu khi hết giấy<br />- Thời gian chuyển fax 08 giây<br />- Khay nạp bản gốc 25 trang<br />- Gởi đến 20 địa chỉ cùng một lúc</p>', '', 'may-fax-panasonic-kx-fc-238', '', 'Máy fax Panasonic KX-FC 238', '', 0, 45, '', 0, 0, '', '', '', '', 1, 42),
(79, 'Bao lụa máy in', '', '2012-04-16 02:45:04', 'bao-lua-may-in-thumb.jpg', 'bao-lua-may-in.jpg', '', '', '', '<p>Liên hệ công ty</p>', '', 'bao-lua-may-in', '', 'Bao lụa máy in', '', 0, 1, '', 0, 0, '', '', '', '', 1, 26),
(80, 'Mực Canon NPG25', '', '2012-04-16 02:46:16', 'muc-canon-npg25-thumb.jpg', 'muc-canon-npg25.jpg', '', '', '', '<p>Liên hệ công ty</p>', '', 'muc-canon-npg25', '', 'Mực Canon NPG25', '', 0, 47, '', 0, 0, '', '', '', '', 1, 26),
(81, 'Mực Canon EP-22', '', '2012-04-16 02:47:26', 'muc-canon-ep-22-thumb.jpg', 'muc-canon-ep-22.jpg', '', '', '', '<p>Liên hệ công ty</p>', '', 'muc-canon-ep-22', '', 'Mực Canon EP-22', '', 0, 29, '', 0, 0, '', '', '', '', 1, 26),
(82, 'Mực RICOH1220D', '', '2012-04-16 02:48:32', 'muc-ricoh1220d-thumb.jpg', 'muc-ricoh1220d.jpg', '', '', '', '<p>Liên hệ công ty</p>', '', 'muc-ricoh1220d', '', 'Mực RICOH1220D', '', 0, 23, '', 0, 0, '', '', '', '', 1, 26),
(83, 'Mực gói AFICIO550-650', '', '2012-04-16 02:49:36', 'muc-goi-aficio550-650-thumb.jpg', 'muc-goi-aficio550-650.jpg', '', '', '', '<p>Liên hệ công ty</p>', '', 'muc-goi-aficio550-650', '', 'Mực gói AFICIO550-650', '', 0, 7, '', 0, 0, '', '', '', '', 1, 26),
(84, 'Cuộn WED đầu', '', '2012-04-16 02:56:46', 'cuon-wed-dau-thumb.jpg', 'cuon-wed-dau.jpg', '', '', '', '<p>Liên hệ công ty</p>', '', 'cuon-wed-dau', '', 'Cuộn WED đầu', '', 0, 43, '', 0, 0, '', '', '', '', 1, 26),
(85, 'Bánh xe cao su cuộn giấy', '', '2012-04-16 02:57:49', 'banh-xe-cao-su-cuon-giay-thumb.jpg', 'banh-xe-cao-su-cuon-giay.jpg', '', '', '', '<p>Liên hệ công ty</p>', '', 'banh-xe-cao-su-cuon-giay', '', 'Bánh xe cao su cuộn giấy', '', 0, 50, '', 0, 0, '', '', '', '', 1, 26),
(86, 'Drum', '', '2012-04-16 02:59:22', 'drum-thumb.jpg', 'drum.jpg', '', '', '', '<p>Liên hệ công ty</p>', '', 'drum', '', 'DRUM', '', 0, 46, '', 0, 0, '', '', '', '', 1, 26),
(87, 'CO RICOH FT4027', '', '2012-04-16 03:00:43', 'co-ricoh-ft4027-thumb.jpg', 'co-ricoh-ft4027.jpg', '', '', '', '<p>Liên hệ công ty</p>', '', 'co-ricoh-ft4027', '', 'CO RICOH FT4027', '', 0, 48, '', 0, 0, '', '', '', '', 1, 26),
(88, 'Rulo sấy', '', '2012-04-16 03:36:27', 'rulo-say-thumb.jpg', 'rulo-say.jpg', '', '', '', '<p>Liên hệ công ty</p>', '', 'rulo-say', '', '', '', 0, 49, '', 0, 0, '', '', '', '', 1, 26),
(89, 'Đầm quý phái 2012', '', '2012-04-19 01:22:05', 'am-quy-phai-2012-thumb.jpg', 'am-quy-phai-2012.jpg', '', '', '', '<p>Mô tả chi tiết ...</p>', '', 'dam-quy-phai-2012', '', 'Mô tả chi tiết ...', '', 0, 4, '', 1, 0, '', '', '', '', 1, 43),
(90, 'Váy dạ hội', '', '2012-04-19 01:22:05', 'vay-da-hoi-thumb.jpg', 'vay-da-hoi.jpg', '', '', '', '<p>Mô tả chi tiết ....</p>', '', 'vay-da-hoi', '', 'Váy dạ hội', '', 0, 3, '', 1, 0, '', '', '', '', 1, 43),
(91, 'Váy dạ hội 2011', '', '2012-04-19 01:22:05', 'vay-da-hoi-2011-thumb.jpg', 'vay-da-hoi-2011.jpg', '', '', '', '<p>Mô tả chi tiết ...</p>', '', 'vay-da-hoi-2011', '', 'Váy dạ hội 2011', '', 0, 1, '', 1, 0, '', '', '', '', 1, 43),
(92, 'Đồ công sở 002', '', '2012-04-19 01:22:05', 'o-cong-so-002-thumb.jpg', 'o-cong-so-002.jpg', '', '', '', '<p>Mô tả chi tiết ...</p>', '', 'do-cong-so-002', '', 'Đồ công sở 002', '', 0, 5, '', 1, 0, '', '', '', '', 1, 43),
(96, 'Đầm 2012 hoa', '', '2012-04-19 01:22:05', 'trang-tri-goc-nho-thumb.jpg', 'trang-tri-goc-nho.jpg', '', '', '', '<p>Mô tả chi tiết</p>\r\n<table style="width:400px;height:100px;" border="1" align="center"><tbody><tr><td style="text-align:center;">Tình trạng:</td>\r\n<td style="text-align:center;">Có hàng số lượng lớn chưa tiêu tụai giúp tiêu thụ với õ</td>\r\n</tr><tr><td style="text-align:center;">Nhà sản xuất</td>\r\n<td style="text-align:center;">Việt Nam vip</td>\r\n</tr><tr><td style="text-align:center;">Model</td>\r\n<td style="text-align:center;">2012</td>\r\n</tr><tr><td style="text-align:center;">Đánh giá:</td>\r\n<td style="text-align:center;">Chưa có đánh giá</td>\r\n</tr></tbody></table><p style="text-align:center;"> </p>', '', 'dam-2012-hoa', '', 'Trang trí góc nhỏ', '', 0, 6, '290000', 1, 0, '', '', '', '', 1, 44),
(97, 'Thời trang trẻ 20', '', '2012-04-19 01:22:05', 'thoi-trang-tre-20-thumb.jpg', 'thoi-trang-tre-20.jpg', '', '', '', '<p>Mô tả chi tiết ...</p>', '', 'thoi-trang-tre-20', '', 'Thời trang trẻ 20', '', 0, 2, '', 1, 0, '', '', '', '', 1, 43),
(98, 'Nội thất phòng khách', '', '2012-04-19 06:46:55', 'noi-that-phong-khach-thumb.jpg', 'noi-that-phong-khach.jpg', '', '', '', '<p>Mô tả chi tiết ...</p>', '', 'noi-that-phong-khach', '', 'Mô tả chi tiết ...', '', 0, 4, '', 1, 0, '', '', '', '', 1, 47),
(99, 'Nội thất phòng giải trí', '', '2012-04-19 06:46:55', 'noi-that-phong-giai-tri-thumb.jpg', 'noi-that-phong-giai-tri.jpg', '', '', '', '<p>Mô tả chi tiết ....</p>', '', 'noi-that-phong-giai-tri', '', 'Nội thất phòng giải trí', '', 0, 3, '', 1, 0, '', '', '', '', 1, 47),
(100, 'Nội thất bếp ăn', '', '2012-04-19 06:46:55', 'noi-that-bep-an-thumb.jpg', 'noi-that-bep-an.jpg', '', '', '', '<p>Mô tả chi tiết ...</p>', '', 'noi-that-bep-an', '', 'Nội thất bếp ăn', '', 0, 1, '', 1, 0, '', '', '', '', 1, 47),
(101, 'Phòng tiếp khách', '', '2012-04-19 06:46:55', 'phong-tiep-khach-thumb.jpg', 'phong-tiep-khach.jpg', '', '', '', '<p>Mô tả chi tiết ... h</p>', '', 'phong-tiep-khach', '', 'Phòng tiếp khách', '', 0, 5, '', 1, 0, '', '', '', '', 1, 47),
(105, 'Trang trí góc', '', '2012-04-19 06:46:55', 'trang-tri-goc-nho-thumb.jpg', 'trang-tri-goc-nho.jpg', '', '', '', '<p>Mô tả chi tiết</p>\r\n<table style="width:400px;height:100px;" border="1" align="center"><tbody><tr><td style="text-align:center;">Tình trạng:</td>\r\n<td style="text-align:center;">Có hàng số lượng lớn chưa tiêu tụai giúp tiêu thụ với õ</td>\r\n</tr><tr><td style="text-align:center;">Nhà sản xuất</td>\r\n<td style="text-align:center;">Việt Nam vip</td>\r\n</tr><tr><td style="text-align:center;">Model</td>\r\n<td style="text-align:center;">2012</td>\r\n</tr><tr><td style="text-align:center;">Đánh giá:</td>\r\n<td style="text-align:center;">Chưa có đánh giá</td>\r\n</tr></tbody></table><p style="text-align:center;"> </p>', '', 'trang-tri-goc', '', 'Trang trí góc nhỏ', '', 0, 6, '290000', 1, 0, '', '', '', '', 1, 48),
(106, 'Nội thất phòng ngủ', '', '2012-04-19 06:46:55', 'noi-that-phong-ngu-thumb.jpg', 'noi-that-phong-ngu.jpg', '', '', '', '<p>Mô tả chi tiết ...</p>', '', 'noi-that-phong-ngu', '', 'Nội thất phòng ngủ', '', 0, 2, '', 1, 0, '', '', '', '', 1, 49);

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
) ENGINE=InnoDB  DEFAULT CHARSET=utf8 AUTO_INCREMENT=51 ;

--
-- Dumping data for table `dos_module_products_cat`
--

INSERT INTO `dos_module_products_cat` (`cat_id`, `cat_parent_id`, `cat_title`, `cat_titleen`, `preview`, `previewen`, `tag`, `tagen`, `description`, `descriptionen`, `pic_full`, `pic_desc`, `cat_order`, `cat_extra1`, `cat_extra2`, `cat_enable`, `dos_usernames_username`) VALUES
(19, 0, 'Phòng khách', '', '', '', 'phong-khach', '', 'Phòng khách', '', 'phong-khach.jpg', '', 3, '', '', 1, 'phumyan'),
(20, 0, 'Phòng giải trí', '', '', '', 'phong-giai-tri', '', 'Phòng giải trí', '', 'phong-giai-tri.jpg', '', 4, '', '', 1, 'phumyan'),
(21, 0, 'Phòng ngủ', '', '', '', 'phong-ngu', '', 'Phòng ngủ', '', 'phong-ngu.jpg', '', 1, '', '', 1, 'phumyan'),
(22, 0, 'Bếp ăn', '', '', '', 'bep-an', '', 'Bếp ăn', '', 'bep-an.jpg', '', 2, '', '', 1, 'phumyan'),
(23, 0, 'Máy Photocopy', '', '', '', 'may-photocopy', '', 'Máy Photocopy', '', 'may-photocopy.jpeg', '', 4, '', '', 1, 'mayphotocopysieuviet'),
(24, 0, 'Máy In', '', '', '', 'may-in', '', 'Máy In', '', 'may-in.jpeg', '', 3, '', '', 1, 'mayphotocopysieuviet'),
(25, 0, 'Máy Fax', '', '', '', 'may-fax', '', 'Máy Fax', '', 'may-fax.jpeg', '', 2, '', '', 1, 'mayphotocopysieuviet'),
(26, 0, 'Mực -  Linh kiện - Vật tư', '', '', '', 'muc-linh-kien-vat-tu', '', '', '', 'muc--linh-kien-vat-tu.jpeg', '', 1, '', '', 1, 'mayphotocopysieuviet'),
(27, 0, 'Laptop', '', '', '', 'laptop', '', 'laptop', '', 'laptop.jpg', '', 1, '', '', 1, 'tinhungphat'),
(28, 0, 'Máy bộ', '', '', '', 'may-bo', '', 'máy bộ', '', 'may-bo.jpg', '', 2, '', '', 1, 'tinhungphat'),
(29, 0, 'Linh kiện laptop', '', '', '', 'linh-kien-laptop', '', 'Linh kiện laptop', '', '', '', 3, '', '', 1, 'tinhungphat'),
(30, 29, 'RAM', '', '', '', 'ram', '', 'RAM', '', 'ram.Jpeg', '', 4, '', '', 1, 'tinhungphat'),
(31, 29, 'Bộ vi xử lý', '', '', '', 'bo-vi-xu-ly', '', 'Bộ vi xử lý', '', 'bo-vi-xu-ly.jpg', '', 5, '', '', 1, 'tinhungphat'),
(32, 0, 'Linh kiện máy bộ', '', '', '', 'linh-kien-may-bo', '', 'Linh kiện máy bộ', '', '', '', 6, '', '', 1, 'tinhungphat'),
(34, 23, 'Ricoh', '', '', '', 'ricoh', '', 'Máy Ricoh', '', 'ricoh.jpg', '', 6, '', '', 1, 'mayphotocopysieuviet'),
(35, 23, 'Canon', '', '', '', 'canon', '', 'Máy Canon', '', 'canon.jpg', '', 5, '', '', 1, 'mayphotocopysieuviet'),
(36, 23, 'Toshiba', '', '', '', 'toshiba', '', 'Máy Toshiba', '', 'toshiba.jpg', '', 4, '', '', 1, 'mayphotocopysieuviet'),
(37, 24, 'Xerox', '', '', '', 'xerox', '', 'Máy Xerox', '', 'xerox.jpg', '', 7, '', '', 1, 'mayphotocopysieuviet'),
(38, 24, 'Samsung', '', '', '', 'samsung', '', 'Máy Samsung', '', 'samsung.jpg', '', 8, '', '', 1, 'mayphotocopysieuviet'),
(39, 24, 'Epson', '', '', '', 'epson', '', '/Máy Epson', '', 'epson.jpg', '', 9, '', '', 1, 'mayphotocopysieuviet'),
(40, 24, 'Hp', '', '', '', 'hp', '', 'Máy Hp', '', 'hp.jpg', '', 10, '', '', 1, 'mayphotocopysieuviet'),
(41, 25, 'Brother', '', '', '', 'brother', '', 'Máy Brother', '', 'brother.jpg', '', 12, '', '', 1, 'mayphotocopysieuviet'),
(42, 25, 'Panasonic', '', '', '', 'panasonic', '', 'Máy Panasonic', '', 'panasonic.jpg', '', 11, '', '', 1, 'mayphotocopysieuviet'),
(43, 0, 'Thời trang đậm', '', '', '', 'thoi-trang-dam', '', 'Thời trang đậm', '', 'thoi-trang-dam.jpg', '', 3, '', '', 1, 'thoitrang'),
(44, 0, 'Thời trang nam', '', '', '', 'thoi-trang-nam', '', 'Thời trang nam', '', 'thoi-trang-nam.jpg', '', 4, '', '', 1, 'thoitrang'),
(45, 0, 'Model 2012', '', '', '', 'model-2012', '', 'Thời trang đậm', '', 'model-2012.jpg', '', 1, '', '', 1, 'thoitrang'),
(46, 0, 'Thời trang công sở', '', '', '', 'thoi-trang-cong-so', '', 'Thời trang đậm', '', 'thoi-trang-cong-so.jpg', '', 2, '', '', 1, 'thoitrang'),
(47, 0, 'Trang trí tủ bếp', '', '', '', 'trang-tri-tu-bep', '', 'Trang trí tủ bếp', '', 'trang-tri-tu-bep.jpg', '', 3, '', '', 1, 'thienlonghoi'),
(48, 0, 'Trang trí phòng khách', '', '', '', 'trang-tri-phong-khach', '', 'Trang trí phòng khách', '', 'trang-tri-phong-khach.jpg', '', 4, '', '', 1, 'thienlonghoi'),
(49, 0, 'Phòng ngủ', '', '', '', 'phong-ngu', '', 'Phòng ngủ', '', 'phong-ngu.jpg', '', 1, '', '', 1, 'thienlonghoi'),
(50, 0, 'Bếp ăn', '', '', '', 'bep-an', '', 'Bếp ăn', '', 'bep-an.jpg', '', 2, '', '', 1, 'thienlonghoi');

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
) ENGINE=InnoDB  DEFAULT CHARSET=utf8 AUTO_INCREMENT=13 ;

--
-- Dumping data for table `dos_module_services`
--

INSERT INTO `dos_module_services` (`record_id`, `title`, `titleen`, `preview`, `previewen`, `content`, `contenten`, `pic_full`, `hit`, `created`, `record_order`, `hot`, `extra_field1`, `extra_field2`, `tag`, `tagen`, `description`, `descriptionen`, `activated`, `dos_usernames_username`) VALUES
(6, 'Dịch vụ Bảo trì', '', '', '', '<p style="text-align:justify;"><span style="color:#008000;"><strong>SIÊU VIỆT CUNG CẤP MÁY PHOTOCOPY CHUYÊN NGHIỆP, LUÔN SÀN LỌC NHỮNG LOẠI MÁY THÔNG DỤNG NHẤT ĐỂ CUNG CẤP TRÊN THỊ TRƯỜNG.</strong></span></p>\n<p style="text-align:justify;"><span style="color:#ff0000;"><strong>DỊCH VỤ BẢO TRÌ ĐỊNH KỲ:</strong></span></p>\n<p style="text-align:justify;">Đây là loại hình dịch vụ được áp dụng thông dụng nhất hiện nay. Loại hình dịch vụ này có các hình thức như sau:</p>\n<p style="text-align:justify;"><span style="text-decoration:underline;"><strong>Hợp đồng bảo trì ký hàng năm:</strong></span></p>\n<p style="text-align:justify;">- Quý khách và <span style="color:#008000;"><strong>SIÊU VIỆT</strong></span> sẽ ký một hợp đồng bảo trì theo thời hạn 12 tháng một lần. Quý khách sẽ chỉ phải trả một khoản phí cố định mà không cần quan tâm là thiết bị phải sửa chữa bao nhiêu lần trong tháng.</p>\n<p style="text-align:justify;"><span style="text-decoration:underline;"><strong>Hợp đồng Meter Charge:</strong></span></p>\n<p style="text-align:justify;">- Với loại hình dịch vụ này, Quý khách sẽ không phải quan tâm đến việc thay thế vật tư cho máy (kể cả mực). Thiết bị cũng sẽ được chăm sóc như dịch vụ bảo trì hàng năm nhưng Quý khách chỉ phải thanh toán một số tiền theo số bản chụp (in) mà máy đã thực hiện trong tháng. Giá thành mỗi bản chụp (in) tuỳ thuộc vào từng loại thiết bị cụ thể</p>\n<p style="text-align:justify;"><strong><em>Khi hợp đồng được ký kết, <span style="color:#008000;">SIÊU VIỆT</span> sẽ có trách nhiệm thực hiện những công việc sau:</em></strong></p>\n<p style="text-align:justify;">- Kiểm tra, bảo dưỡng cân chỉnh và vệ sinh máy định kỳ (phần mềm và phần cứng) vào 1 ngày được ấn định hàng tháng.</p>\n<p style="text-align:justify;">- Đến kiểm tra, sửa chữa (miễn phí) vào bất cứ khi nào máy gặp trục trặc.</p>\n<p style="text-align:justify;">- Cho khách hàng mượn máy khác đang trong tình trạng hoạt động tốt khi cần nhiều thời gian cho công việc sửa chữa.</p>\n<p style="text-align:justify;">- Giám định chi tiết và báo giá vật tư, linh kiện (cần thay thế) chính phẩm với mức giá ưu đãi cho khách hàng.</p>\n<p style="text-align:justify;">- Cung cấp cho khách hàng những hướng dẫn sử dụng máy cần thiết.</p>\n<p style="text-align:center;"><span style="font-size:large;"><strong><span style="color:#008000;"> </span></strong></span></p>\n<p style="text-align:center;"><span style="font-size:large;"><strong><span style="color:#008000;">SIÊU VIỆT</span></strong> LUÔN SÁT CÁNH CÙNG THÀNH CÔNG CỦA BẠN !</span></p>\n<p style="text-align:center;"> </p>\n<p style="text-align:center;"> </p>\n<p style="text-align:center;">Hotline: 0937 107 888 - Mr. Nguyên - Phụ trách Kinh doanh.</p>\n<p style="text-align:center;">3A/1 Đoàn Văn Cự, P. Tam Hiệp, TP. Biên Hòa, Tỉnh Đồng Nai<br />Email: nguyensieuviet@yahoo.com.vn<br />Website: www.mayphotocopysieuviet.com</p>\n<p style="text-align:center;"><span style="font-size:large;"> </span></p>', '', 'dich-vu-bao-tri.jpg', 3, '2012-04-12 01:44:54', 2, 0, '', '', 'dich-vu-bao-tri', '', 'Dịch vụ Bảo trì', '', 1, 'mayphotocopysieuviet'),
(7, 'Dịch vụ cho thuê', '', '', '', '<p style="text-align:justify;"><span style="color:#008000;"><strong>DỊCH VỤ THUÊ MÁY VĂN PHÒNG LÀ LOẠI HÌNH DỊCH VỤ ĐƯỢC ÁP DỤNG RỘNG RÃI Ở CÁC NƯỚC PHÁT TRIỂN VÀ Ở VIỆT NAM, NÓ CŨNG ĐANG LÀ SỰ LỰA CHỌN TỐI ƯU CỦA NHIỀU CÔNG TY LIÊN DOANH VÀ CÔNG TY NƯƠC NGOÀI. KHI LỰA CHỌN LOẠI HÌNH NÀY, QUÝ KHÁCH HÀNG KHÔNG PHẢI LO KHOẢN ĐẦU TƯ BAN ĐÂU...</strong></span></p>\n<p style="text-align:justify;"><strong><span style="color:#008000;">SIÊU VIỆT</span> - CHUYÊN CHO THUÊ THIẾT BỊ VĂN PHÒNG SAU:</strong></p>\n<p style="text-align:justify;">- Máy Photocopy đen trắng và màu</p>\n<p style="text-align:justify;">- Máy đa năng (Copy - Fax - In - Scan)</p>\n<p style="text-align:justify;"><strong><span style="color:#008000;">SIÊU VIỆT</span> - PHỤC VỤ</strong></p>\n<p style="text-align:justify;">* Công tác hoạt động văn phòng - dài hạn</p>\n<p style="text-align:justify;">* Các hội nghị, hội thảo - ngắn hạn</p>\n<p style="text-align:justify;">Tất cả các máy cung cấp đều được đảm bảo các tính năng như sau:</p>\n<p style="text-align:justify;">&gt;&gt; Máy copy kỹ thuật số - tính năng cao<br />&gt;&gt; Tốc độ sao chụp – in mạng tối thiểu 23 - 75 trang/phút.<br />&gt;&gt; Máy sao chụp hai mặt tự động - thật tiện lợi trong sử dụng.<br />&gt;&gt; Sao chụp miễn phí 1000 trang mỗi tháng.<br />&gt;&gt; Có khả năng nâng cấp thêm các chức năng fax và quét mạng.</p>\n<p style="text-align:justify;"><strong><span style="color:#008000;">SIÊU VIỆT</span> - NHÀ CUNG CẤP</strong></p>\n<p style="text-align:justify;">Công ty <strong><span style="color:#008000;">SIÊU VIỆT</span></strong> - nhà cung cấp các dịch vụ thuê máy văn phòng uy tín tại Đồng Nai. Mục tiêu trong kinh doanh của <span style="color:#008000;"><strong>SIÊU VIỆT</strong></span> luôn đặt chữ tín lên hàng đầu và xây dựng một hệ thống dịch vụ cho thuê máy văn phòng khép kín. Với kinh nghiệm chuyên sâu về nghành nghề chúng tôi luôn đ­a ra các giải pháp tối ­ưu - tiết kiệm chi phí - linh hoạt trong sử dụng cho các khách hàng có nhu cầu về thiết bị máy văn phòng. Sau quá trình thành lập và phát triển Công ty <strong><span style="color:#008000;">SIÊU VIỆT</span></strong> đã đạt đ­ược nhiều thành qủa cao. Hiện nay Công ty <strong><span style="color:#008000;">SIÊU VIỆT</span></strong> đang thực hiện bảo hành, cho thuê hơn 1000 khách hàng sử dụng các loại thiết bị văn phòng tại Đồng Nai và các tỉnh phía Nam. Các khách hàng quen thuộc sử dụng dịch vụ của chúng tôi đó là các công ty, khách sạn, tổ chức, văn phòng n­ước ngoài có nhu cầu sao chụp in ấn.</p>\n<p style="text-align:justify;"><strong> </strong></p>\n<p style="text-align:center;"><span style="color:#ff0000;font-size:medium;"><strong>&gt;&gt; LIÊN HỆ CHI TIẾT &lt;&lt;</strong></span></p>\n<p style="text-align:center;"><span style="font-size:medium;"><strong><span style="color:#008000;">DNTN SIÊU VIỆT</span></strong></span></p>\n<p style="text-align:center;"><span style="font-size:medium;">3A/1 Đoàn Văn Cự, P. Tam Hiệp, TP. Biên Hòa, Tỉnh Đồng Nai</span><br /><span style="font-size:medium;">Hotline: 0937 107 888 - Mr. Nguyên - Phụ trách Kinh doanh.</span><br /><span style="font-size:medium;">Email: nguyensieuviet@yahoo.com.vn</span><br /><span style="font-size:medium;">Website: www.mayphotocopysieuviet.com</span></p>', '', '', 2, '2012-04-12 01:56:24', 3, 0, '', '', 'dich-vu-cho-thue', '', 'DNTN SIÊU VIỆT', '', 1, 'mayphotocopysieuviet'),
(8, 'Dịch vụ vẫn chuyển', '', '', '', '<p>Dịch vụ vẫn chuyển</p>', '', '', 2, '2012-04-12 02:10:55', 1, 0, '', '', 'dich-vu-van-chuyen', '', '', '', 1, 'phumyan'),
(9, 'Đào tạo kỹ thuật viên', '', '', '', '<p style="text-align:justify;">Truyền đạt nhiệt tình lại toàn bộ lý thuyết và nguyên lý hoạt động cơ bản của máy photocopy đơn giản, dễ hiểu, không giấu nghề.</p>\n<p style="text-align:justify;">Rất thích hợp cho người muốn tìm hiểu thêm về máy photocopy ,làm ktv ,về mở cửa hàng , công ty ,người chưa biết nghề ,thích hợp cho cty cử người đi học sửa chữa cơ bản về máy photocopy đáp ứng nhu cầu sửa chữa cho cơ quan  và công ty. </p>\n<p style="text-align:justify;">Dạy photocopy + sửa chữa cơ bản + Nâng cao.</p>\n<p style="text-align:justify;">Nhằm đào tạo thợ photocopy chuyên nghiệp,tạo công việc làm ổn định học sửa máy photocopy về để tự mở cửa hàng, cho cơ quan, công ty</p>\n<p style="text-align:justify;">Tiết kiệm thời gian, tiền bạc, khỏi phải học nghề tại các cửa hàng mà thời gian kéo dài, không hiệu quả</p>\n<p style="text-align:justify;">Cung cấp thêm các tài liệu nâng cao về máy photocopy như mã code, mode của các dòng máy để tìm hiểu và nâng cao chuyên môn .</p>\n<p style="text-align:justify;"> </p>', '', '', 2, '2012-04-12 02:16:00', 1, 0, '', '', 'dao-tao-ky-thuat-vien', '', 'Đào tạo kỹ thuật viên', '', 1, 'mayphotocopysieuviet'),
(11, 'Dịch vụ vẫn chuyển tận nơi', '', NULL, NULL, '<p> Dịch vụ vẫn chuyển tận nơi  Dịch vụ vẫn chuyển tận nơi Dịch vụ vẫn chuyển tận nơi Dịch vụ vẫn chuyển tận nơi</p>', '', NULL, 7, '2012-04-19 01:22:04', 1, 0, '', '', 'dich-vu-van-chuyen-tan-noi', '', 'Dịch vụ vẫn chuyển tận nơi', '', 1, 'thoitrang'),
(12, 'Dịch vụ vẫn chuyển', '', NULL, NULL, '<p>Dịch vụ vẫn chuyển</p>', '', NULL, 4, '2012-04-19 06:46:55', 1, 0, '', '', 'dich-vu-van-chuyen', '', '', '', 1, 'thienlonghoi');

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
) ENGINE=InnoDB  DEFAULT CHARSET=utf8 AUTO_INCREMENT=86 ;

--
-- Dumping data for table `dos_module_supports`
--

INSERT INTO `dos_module_supports` (`support_id`, `support_name`, `support_nameen`, `support_phone`, `support_value`, `support_order`, `support_type`, `dos_usernames_username`) VALUES
(63, 'Hỗ trợ kinh doanh', '', '01230 456 789', 'mailgoogle', 2, 'yahoo', 'phumyan'),
(64, 'Hỗ trợ khách hàng', '', '0909 999 888', 'groupitsoft', 1, 'yahoo', 'phumyan'),
(69, 'Hỗ trợ kinh doanh', '', '0901 001 001', 'mailgoogle', 2, 'yahoo', 'tinhungphat'),
(70, 'Hỗ trợ khách hàng', '', '01230 456 789', 'groupitsoft', 1, 'yahoo', 'tinhungphat'),
(78, 'tixiu28', '', 'Kinh doanh', '1', 1, 'yahoo', 'mayphotocopysieuviet'),
(82, 'Hỗ trợ kinh doanh', '', '01230 456 789', 'mailgoogle', 2, 'yahoo', 'thoitrang'),
(83, 'Hỗ trợ khách hàng', '', '0909 999 888', 'groupitsoft', 1, 'yahoo', 'thoitrang'),
(84, 'Hỗ trợ kinh doanh', '', '01230 456 789', 'mailgoogle', 2, 'yahoo', 'thienlonghoi'),
(85, 'Hỗ trợ khách hàng', '', '0909 999 888', 'groupitsoft', 1, 'yahoo', 'thienlonghoi');

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
) ENGINE=InnoDB  DEFAULT CHARSET=utf8 AUTO_INCREMENT=10 ;

--
-- Dumping data for table `dos_module_video`
--

INSERT INTO `dos_module_video` (`record_id`, `title`, `titleen`, `postdate`, `tag`, `tagen`, `description`, `descriptionen`, `pic_thumb`, `url`, `record_order`, `hits`, `extra_field1`, `extra_field2`, `hot`, `enable`, `dos_module_item_cat_cat_id`) VALUES
(2, 'Nội Thất Văn Phòng 3D - Video từ ASP Viet Nam.wmv', '', '2012-04-12 01:56:28', 'noi-that-van-phong-3d-video-tu-asp-viet-namwmv', '', '', '', 'noi-that-van-phong-3d-video-tu-asp-viet-nam-wmv.jpg', 'http://www.youtube.com/watch?v=9kc4jOXvrAA', 1, 0, '', '', 1, 1, 2),
(4, 'Thoi trang han quoc - thoi trang 2012', '', '2012-04-19 01:22:05', 'thoi-trang-han-quoc-thoi-trang-2012', '', 'Thoi trang han quoc - thoi trang 2012', '', 'thoi-trang-han-quoc-thoi-trang-2012.jpg', 'http://www.youtube.com/watch?v=cKPzP4kZfek', 1, 0, '', '', 0, 1, 4),
(5, 'Shock với Thời trang tự cởi QDC News QuachDaiCa info', '', '2012-04-19 03:04:22', 'shock-voi-thoi-trang-tu-coi-qdc-news-quachdaica-info', '', 'Shock với Thời trang tự cởi QDC News QuachDaiCa info', '', 'shock-voi-thoi-trang-tu-coi-qdc-news-quachdaica-info.jpg', 'http://www.youtube.com/watch?v=kOVBzBElfeA', 2, 0, NULL, NULL, 0, 1, 4),
(6, 'thời trang tại TroChoiThoiTrang', '', '2012-04-19 03:08:55', 'thoi-trang-tai-trochoithoitrang', '', 'thời trang tại TroChoiThoiTrang', '', 'thoi-trang-tai-trochoithoitrang.jpg', 'http://www.youtube.com/watch?v=53kxPAM2QJY', 3, 0, NULL, NULL, 0, 1, 4),
(7, 'Thoi trang cong so - KKFashion', '', '2012-04-19 03:09:34', 'thoi-trang-cong-so-kkfashion', '', 'Thoi trang cong so - KKFashion', '', '', 'http://www.youtube.com/watch?v=cjFVqWNnhHE', 4, 0, NULL, NULL, 0, 1, 4),
(8, 'ggdfggfgdf', '', '2012-04-19 03:32:05', 'ggdfggfgdf', '', 'ggdfggfgdf', '', '', 'http://www.youtube.com/watch?v=cjFVqWNnhHE', 1, 0, NULL, NULL, 0, 1, 5),
(9, 'Nội Thất Văn Phòng 3D - Video từ ASP Viet Nam.wmv', '', '2012-04-19 06:46:56', 'noi-that-van-phong-3d-video-tu-asp-viet-namwmv', '', '', '', 'noi-that-van-phong-3d-video-tu-asp-viet-nam-wmv.jpg', 'http://www.youtube.com/watch?v=9kc4jOXvrAA', 1, 0, '', '', 1, 1, 6);

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
) ENGINE=InnoDB  DEFAULT CHARSET=utf8 AUTO_INCREMENT=7 ;

--
-- Dumping data for table `dos_module_video_cat`
--

INSERT INTO `dos_module_video_cat` (`cat_id`, `cat_parent_id`, `pic_thumb`, `cat_title`, `cat_titleen`, `tag`, `tagen`, `description`, `descriptionen`, `cat_order`, `cat_enable`, `dos_usernames_username`) VALUES
(2, 0, '', 'Video mới nhất', '', 'video-moi-nhat', '', '', '', 1, 1, 'phumyan'),
(4, 0, '', 'Video mới nhất', '', 'video-moi-nhat', '', 'Video thời trang nữ', '', 1, 1, 'thoitrang'),
(5, 0, '', 'Video sản phẩm mới', '', 'video-san-pham-moi', '', 'Video sản phẩm mới', '', 1, 1, 'tinhungphat'),
(6, 0, '', 'Video mới nhất', '', 'video-moi-nhat', '', '', '', 1, 1, 'thienlonghoi');

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
('keywords', 'Máy in, máy photocopy, máy fax', 'mayphotocopysieuviet'),
('description', 'Chuyên cung cấp, mua bán Máy in, máy photocopy, máy fax', 'mayphotocopysieuviet'),
('title', 'Chuyên cung cấp Máy in, máy photocopy', 'mayphotocopysieuviet'),
('keywords', 'chuyên các loại đồ nội thất', 'phumyan'),
('description', 'chuyên các loại đồ nội thất', 'phumyan'),
('title', 'chuyên các loại đồ nội thất', 'phumyan'),
('keywords', 'chuyên các loại đồ nội thất', 'thoitrang'),
('description', 'chuyên các loại đồ nội thất', 'thoitrang'),
('title', 'chuyên các loại đồ nội thất', 'thoitrang'),
('keywords', 'chuyên các loại đồ nội thất', 'thienlonghoi'),
('description', 'chuyên các loại đồ nội thất', 'thienlonghoi'),
('title', 'chuyên các loại đồ nội thất', 'thienlonghoi');

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
('010312', 'Mẫu than đá: 010312', '2012-02-29 11:38:05', 'Chuyên bán các loại than đá, than cám'),
('070312', 'Mẫu thời trang: 070312', '2012-03-06 13:21:26', 'Chuyên bán các sản phẩm thời trang quần áo mới nhất, với các dịch vụ ưu đãi'),
('111120', 'Mẫu cafe: 111120', '2011-11-21 02:40:10', 'Mẫu ẩm thực, đồ uống caffe'),
('130312', 'Mẫu cơ khí: 130312', '2012-03-12 12:01:59', 'Chuyên nghiệp sản xuất ván lạng, ván ép cong định hình và keo tiêu chuẩn Carb p2, keo chịu nước, keo menamim, test mẫu thí nghiệm gỗ đặt tiêu chuẩn Carb p2'),
('180412', 'Mẫu máy tính: 180412', '2012-04-18 00:58:03', 'Mẫu máy tính mã số 180412'),
('200312', 'Mẫu giáo dục: 200312', '2012-03-19 23:43:27', 'Chuyên bán các loại sách cho sinh viên, giá cả bình dân'),
('220312', 'Mẫu nội thất: 220312', '2012-03-21 20:04:36', 'Chuyên bán các loại đồ nội thất, dân dụng'),
('260312', 'Mẫu máy tính: 260312', '2012-03-26 06:44:07', 'Chuyên bán các loại máy tính, linh kiện, laptop, pc, sửa chữa');

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
('130312', 'bds-kien-truc-xay-dung'),
('180412', 'cong-nghe-thong-tin-vien-thong'),
('200312', 'giao-duc-dao-tao'),
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
('070312', 'video', 'menu_video'),
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
('130312', 'news', 'advs_left'),
('130312', 'news', 'list_supports'),
('130312', 'news', 'menu_news'),
('130312', 'news', 'news_new'),
('130312', 'products', 'advs_left'),
('130312', 'products', 'list_supports'),
('130312', 'products', 'menu_products'),
('130312', 'services', 'advs_left'),
('130312', 'services', 'list_supports'),
('130312', 'services', 'menu_services'),
('130312', 'video', 'advs_left'),
('130312', 'video', 'list_supports'),
('130312', 'video', 'menu_video'),
('180412', 'about', 'advs_left'),
('180412', 'about', 'list_supports'),
('180412', 'about', 'menu_about'),
('180412', 'contact', 'advs_left'),
('180412', 'contact', 'list_supports'),
('180412', 'contact', 'menu_products'),
('180412', 'default', 'about_home'),
('180412', 'default', 'advs_left'),
('180412', 'default', 'list_supports'),
('180412', 'default', 'menu_products'),
('180412', 'default', 'products_hot'),
('180412', 'default', 'products_new'),
('180412', 'news', 'advs_left'),
('180412', 'news', 'list_supports'),
('180412', 'news', 'menu_news'),
('180412', 'news', 'news_new'),
('180412', 'products', 'advs_left'),
('180412', 'products', 'list_supports'),
('180412', 'products', 'menu_products'),
('180412', 'services', 'advs_left'),
('180412', 'services', 'list_supports'),
('180412', 'services', 'menu_services'),
('180412', 'video', 'advs_left'),
('180412', 'video', 'list_supports'),
('180412', 'video', 'menu_video'),
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
('mayphotocopysieuviet', 'info@thuonghoi.com', 'e10adc3949ba59abbe56e057f20f883e', '2012-04-11 20:38:05', '', '', '', 'user', 'vi', '', '2012-05-11 10:00:00', 1, 1, '010312', 19, 'cong-nghe-thong-tin-vien-thong'),
('phumyan', 'maioanh7887@yahoo.com', '25f9e794323b453885f5181f1b624d0b', '2012-04-11 23:50:51', '', '', '', 'user', 'vi', '', '2012-05-11 10:00:00', 1, 1, '220312', 19, 'noi-that-ngoai-that'),
('thienlonghoi', 'mailgoogle@yahoo.com', 'e10adc3949ba59abbe56e057f20f883e', '2012-04-19 06:46:47', NULL, NULL, NULL, 'user', 'vi|en', NULL, '2012-05-18 16:00:00', 0, 1, '130312', 1, 'noi-that-ngoai-that'),
('thoitrang', 'groupitsoft@gmail.com.vn', 'e10adc3949ba59abbe56e057f20f883e', '2012-04-19 01:21:46', NULL, NULL, NULL, 'user', 'vi', NULL, '2012-05-18 16:00:00', 0, 1, '070312', 20, 'bds-kien-truc-xay-dung'),
('tinhungphat', 'groupitsoft@gmail.com', 'e10adc3949ba59abbe56e057f20f883e', '2012-04-13 06:37:56', '', '', '', 'user', 'vi', '', '2012-05-12 16:00:00', 0, 1, '180412', 18, 'cong-nghe-thong-tin-vien-thong');

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
('address2', '', '', 'thoitrang'),
('advs', 'Đối tác chính', '', 'mayphotocopysieuviet'),
('advs', 'Quảng cáo', '', 'phumyan'),
('advs', 'Quảng cáo', '', 'thienlonghoi'),
('advs', 'Quảng cáo', '', 'thoitrang'),
('company_name', 'DNTN SIÊU VIỆT', '', 'mayphotocopysieuviet'),
('company_name', 'Công ty TNHH Phú Mỹ An', '', 'phumyan'),
('company_name', 'Công ty TNHH Thiên Long Hội', '', 'thienlonghoi'),
('company_name', 'Cửa hàng thời trang KTVIP', '', 'thoitrang'),
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
