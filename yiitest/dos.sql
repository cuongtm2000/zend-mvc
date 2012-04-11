-- phpMyAdmin SQL Dump
-- version 3.4.5
-- http://www.phpmyadmin.net
--
-- Host: localhost
-- Generation Time: Apr 11, 2012 at 10:04 AM
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
('advs_left_height', 204, '', '010312'),
('advs_left_height', 200, '', '070312'),
('advs_left_height', 200, '', '111120'),
('advs_left_height', 200, '', '200312'),
('advs_left_height', 200, '', '220312'),
('advs_left_height', 200, '', '260312'),
('advs_left_width', 200, '', '010312'),
('advs_left_width', 196, '', '070312'),
('advs_left_width', 224, '', '111120'),
('advs_left_width', 200, '', '200312'),
('advs_left_width', 200, '', '220312'),
('advs_left_width', 210, '', '260312'),
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
('news_cat_height', 89, '', '200312'),
('news_cat_height', 89, '', '260312'),
('news_cat_width', 143, '', '200312'),
('news_cat_width', 143, '', '260312'),
('news_height_thumb', 89, '', '200312'),
('news_height_thumb', 100, '', '220312'),
('news_height_thumb', 89, '', '260312'),
('news_num_paging_cat', 8, '', '200312'),
('news_num_paging_cat', 2, '', '220312'),
('news_num_paging_cat', 8, '', '260312'),
('news_num_paging_hot', 5, '', '220312'),
('news_num_paging_hot', 6, '', '260312'),
('news_num_paging_index', 8, '', '200312'),
('news_num_paging_index', 2, '', '220312'),
('news_num_paging_index', 4, '', '260312'),
('news_num_paging_new', 4, '', '200312'),
('news_num_paging_new', 4, '', '220312'),
('news_num_paging_new', 6, '', '260312'),
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
('products_num_paging_cat', 8, '', '200312'),
('products_num_paging_cat', 6, '', '220312'),
('products_num_paging_cat', 8, '', '260312'),
('products_num_paging_hot', 8, '', '200312'),
('products_num_paging_hot', 30, '', '260312'),
('products_num_paging_new', 3, '', '200312'),
('products_num_paging_new', 4, '', '220312'),
('products_num_paging_new', 8, '', '260312'),
('products_num_paging_other', 3, '', '200312'),
('products_num_paging_other', 2, '', '220312'),
('products_num_paging_other', 4, '', '260312'),
('products_width', 500, '', '010312'),
('products_width', 600, '', '070312'),
('products_width', 700, '', '111120'),
('products_width', 500, '', '130312'),
('products_width', 500, '', '200312'),
('products_width', 515, '', '220312'),
('products_width', 400, '', '260312'),
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
('video_height_thumb', 150, '', '220312'),
('video_height_thumb', 100, '', '260312'),
('video_num_paging_cat', 8, '', '200312'),
('video_num_paging_cat', 2, '', '220312'),
('video_num_paging_index', 8, '', '200312'),
('video_num_paging_index', 2, '', '220312'),
('video_num_paging_index', 8, '', '260312'),
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
('260312', 'video', 'prettyPhoto.css', 'css'),
('260312', 'video', 'jquery.prettyPhoto.js', 'javascript');

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
('about', '220312'),
('about', '260312'),
('about', 'dos'),
('about', 'thanhan'),
('about', 'thanhansoft'),
('advs', '220312'),
('advs', '260312'),
('advs', 'dos'),
('advs', 'thanhan'),
('advs', 'thanhansoft'),
('banner', '220312'),
('banner', '260312'),
('banner', 'dos'),
('banner', 'thanhan'),
('banner', 'thanhansoft'),
('contact', '220312'),
('contact', '260312'),
('contact', 'dos'),
('contact', 'thanhan'),
('contact', 'thanhansoft'),
('news', '220312'),
('news', '260312'),
('news', 'thanhan'),
('news', 'thanhansoft'),
('products', '220312'),
('products', '260312'),
('products', 'dos'),
('products', 'thanhan'),
('products', 'thanhansoft'),
('services', '220312'),
('services', '260312'),
('services', 'dos'),
('services', 'thanhan'),
('services', 'thanhansoft'),
('supports', '220312'),
('supports', '260312'),
('supports', 'dos'),
('supports', 'thanhan'),
('supports', 'thanhansoft'),
('video', '220312'),
('video', '260312'),
('video', 'thanhan'),
('video', 'thanhansoft');

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
) ENGINE=InnoDB  DEFAULT CHARSET=utf8 AUTO_INCREMENT=63 ;

--
-- Dumping data for table `dos_module_abouts`
--

INSERT INTO `dos_module_abouts` (`record_id`, `title`, `titleen`, `content`, `contenten`, `hit`, `created`, `record_order`, `hot`, `extra_field1`, `extra_field2`, `tag`, `tagen`, `description`, `descriptionen`, `activated`, `dos_usernames_username`) VALUES
(3, 'Giới thiệu sơ lược', 'Introduction About', '<p>\r\n	Ngày nay, khi ngày càng có nhiều thông tin được cung cấp trực tuyến, bạn càng cần phải sử dụng trình duyệt nhanh và an toàn trên máy tính. Giới thiệu về Google Chrome -- trình duyệt mở trang web với tốc độ cực nhanh! Thiết kế mượt mà của trình duyệt mang lại cho bạn nhiều không gian hơn để duyệt các trang web ưa thích của mình. Hướng dẫn này giúp bạn tìm hiểu qua các tính năng chính của Google Chrome.</p>', '<p>\r\n	Today, as more and more information is offered online, the more you need to use fast and secure browser on the computer. About Google Chrome - the browser open site with fast speed! Sleek design of the browser gives you more space to browse your favorite sites. This guide helps you learn the key features of Google Chrome.</p>', 277, '2012-04-05 02:12:08', 1, 1, NULL, NULL, 'gioi-thieu-so-luoc', 'introduction-about', 'Ngày nay, khi ngày càng có nhiều thông tin được cung cấp trực tuyến, bạn càng cần phải sử dụng trình duyệt nhanh và an toàn trên máy tính. Giới thiệu về Google Chrome -- trình duyệt mở trang web với tốc độ cực nhanh! Thiết kế mượt mà của trìn', '', 1, '220312'),
(4, 'Giới thiệu chung', 'Introduction', '<p>\r\n	Giới thiệu chungGiới thiệu chungGiới thiệu chungGiới thiệu chungGiới thiệu chungGiới thiệu chungGiới thiệu chung</p>', '<p>\r\n	After the study period flood in Bangkok (Thailand), Assoc. Dr. Ho Long Phi said, a few dozen years have HCMC possibility of a flood damage similar to Bangkok.</p>\r\n<p>\r\n	After the study period flood in Bangkok (Thailand), Assoc. Dr. Ho Long Phi said, a few dozen years have HCMC possibility of a flood damage similar to Bangkok.</p>\r\n<p>\r\n	After the study period flood in Bangkok (Thailand), Assoc. Dr. Ho Long Phi said, a few dozen years have HCMC possibility of a flood damage similar to Bangkok.After the study period flood in Bangkok (Thailand), Assoc. Dr. Ho Long Phi said, a few dozen years have HCMC possibility of a flood damage similar to Bangkok.After the study period flood in Bangkok (Thailand), Assoc. Dr. Ho Long Phi said, a few dozen years have HCMC possibility of a flood damage similar to Bangkok.</p>', 21, '2012-04-05 02:29:35', 2, 0, NULL, NULL, 'gioi-thieu-chung', 'introduction', 'Giới thiệu chungGiới thiệu chung', 'Introduction Introduction Introduction Introduction', 1, '220312'),
(5, 'Giới thiệu Văn phòng đại diện', 'About a representative office', '<p>\r\n	Giới thiệu Văn phòng đại diệnGiới thiệu Văn phòng đại diệnGiới thiệu Văn phòng đại diệnGiới thiệu Văn phòng đại diệnGiới thiệu Văn phòng đại diệnGiới thiệu Văn phòng đại diệnGiới thiệu Văn phòng đại diệnGiới thiệu Văn phòng đại diện</p>', '<p>\r\n	About a representative officeAbout a representative officeAbout a representative officeAbout a representative officeAbout a representative officeAbout a representative officeAbout a representative officeAbout a representative officeAbout a representative office</p>', 86, '2012-04-05 02:29:55', 3, 0, NULL, NULL, 'gioi-thieu-van-phong-dai-dien', 'about-a-representative-office', 'Giới thiệu Văn phòng đại diệnGiới thiệu Văn phòng đại diện', 'About a representative officeAbout a representative office', 1, '220312'),
(6, 'Về Dos.vn', 'Dos.vn about', '<p>\r\n	Kính gửi: <strong>Quý Doanh nghiệp</strong></p>\r\n<p style="margin-left:40px;">\r\n	<strong>DOS</strong> là công ty chuyên nghiệp trong việc <strong>Thiết kế Website</strong>. Những sản phẩm chính: Web Doanh nghiệp, Web cơ quan, Web trường học, Web du lịch, Web nhà hàng, Web máy tính, Web điện thoại,... và các loại Web theo đơn đặt hàng.</p>\r\n<p style="margin-left:40px;">\r\n	Với tiêu chí "Giao diện đẹp, tính năng nhiều, giá thành thấp". Qua 5 năm thiết kế Web, sản phẩm của chúng tôi được các Doanh nghiệp đánh giá cao. Chúng tôi có bề dày kinh nghiệm, có giải pháp và đội ngũ nhân lực tâm huyết để đảm bảo sản phẩm đáp ứng đúng nhu cầu, đem lại hiệu quả, với chi phí phù hợp.</p>\r\n<p style="margin-left:40px;">\r\n	Không ngừng học hỏi và phát triển công nghệ. <strong>DOS</strong> trở thành một công ty thiết kế Web tiên phong về chất lượng, có sản phẩm tiêu biểu, có thương hiệu uy tín trong và ngoài nước.</p>\r\n<p style="margin-left:40px;">\r\n	<strong>DOS</strong> thiết kế và cung cấp giải pháp Web trên đến các đơn vị: <strong>UBND Tân phú</strong>, <strong>SONADEZI</strong>, <strong>BENCO</strong>, <strong>Gạch Ngói Nhị Hiệp</strong>, <strong>An Gia Phú</strong>, <strong>Nội Thất Yến Bình Minh</strong>, <strong>Thuận Thành Glass</strong>, <strong>Thái Sơn</strong>, <strong>Thái Bình An Phú Thịnh...</strong></p>\r\n<p style="margin-left:40px;">\r\n	Tại Việt Nam, Sản phẩm <strong>DOS</strong> được giới thiệu tại các Công ty thiết kế in ấn, ở hầu hết các Trung Tâm tỉnh thành trên toàn quốc .</p>', '<p>\r\n	Kính gửi: Quý Doanh nghiệp<br />\r\n	      <br />\r\n	           DOS là công ty chuyên nghiệp trong việc Thiết kế Website. Những sản phẩm chính: Web Doanh nghiệp, Web cơ quan, Web trường học, Web du lịch, Web nhà hàng, Web máy tính, Web điện thoại,... và các loại Web theo đơn đặt hàng.<br />\r\n	          Với tiêu chí "Giao diện đẹp, tính năng nhiều, giá thành thấp". Qua 5 năm thiết kế Web, sản phẩm của chúng tôi được các Doanh nghiệp đánh giá cao. Chúng tôi có bề dày kinh nghiệm, có giải pháp và đội ngũ nhân lực tâm huyết để đảm bảo sản phẩm đáp ứng đúng nhu cầu, đem lại hiệu quả, với chi phí phù hợp.</p>\r\n<p>\r\n	          Không ngừng học hỏi và phát triển công nghệ. DOS trở thành một công ty thiết kế Web tiên phong về chất lượng, có sản phẩm tiêu biểu, có thương hiệu uy tín trong và ngoài nước.<br />\r\n	          DOS thiết kế và cung cấp giải pháp Web trên đến các đơn vị: UBND Tân phú, SONADEZI, BENCO, Gạch Ngói Nhị Hiệp, An Gia Phú, Nội Thất Yến Bình Minh, Thuận Thành Glass, Thái Sơn, Thái Bình An Phú Thịnh...</p>\r\n<p>\r\n	          Tại Việt Nam, Sản phẩm DOS được giới thiệu tại các Công ty thiết kế in ấn, ở hầu hết các Trung Tâm tỉnh thành trên toàn quốc .</p>', 75, '2012-04-07 02:13:52', 1, 0, NULL, NULL, 've-dos', 'dos-about', 'DOS là công ty chuyên nghiệp trong việc Thiết kế Website. Những sản phẩm chính: Web Doanh nghiệp, Web cơ quan, Web trường học, Web du lịch, Web nhà hàng, Web máy tính, Web điện thoại,... và các loại Web theo đơn đặt hàng', 'DOS là công ty chuyên nghiệp trong việc Thiết kế Website. Những sản phẩm chính: Web Doanh nghiệp, Web cơ quan, Web trường học, Web du lịch, Web nhà hàng, Web máy tính, Web điện thoại,... và các loại Web theo đơn đặt hàng', 1, 'dos'),
(7, 'Tầm nhìn và sứ mệnh Dos', 'Gioi thieu 2 En', '<p>\r\n	Tầm nhìn và Sứ mệnh của DOS được viết ra ngay từ khi thành lập, xác định lý tưởng, hướng đi lâu dài và những giá trị cơ bản mà mỗi thành viên sáng lập luôn hướng tới.</p>\r\n<p>\r\n	<strong>Tầm nhìn của DOS</strong><br />\r\n	Được công nhận là công ty đứng đầu trong lĩnh vực thiết kế Website. Với giải pháp tích hợp Marketing và Công Nghệ Thông Tin trong việc quảng cáo bán hàng dành riêng cho từng Doanh nghiệp.</p>\r\n<p>\r\n	<strong>Sứ mệnh của DOS</strong><br />\r\n	Mang lại cho Doanh nghiệp một kênh truyền thông nhanh chóng và hiệu quả qua những Website đầy tính sáng tạo.</p>\r\n<p>\r\n	<strong>Các giá trị cơ bản của DOS c</strong>ác giá trị cơ bản là tài sản vô cùng quý báu mà mỗi người thành viên của DOS đều trân trọng giữ gìn:</p>\r\n<ul><li>\r\n		<strong>Làm khách hàng hài lòng</strong>: Tận tuỵ với khách hàng và luôn phấn đấu để đáp ứng tốt nhất những nhu cầu, vượt trên mong đợi của họ.</li>\r\n	<li>\r\n		<strong>Con người là cốt lõi</strong>: Tôn trọng con người, tạo điều kiện cho các thành viên phát triển tối đa tài năng, đóng góp cho tổ chức và được đãi ngộ xứng đáng cả về vật chất và tinh thần.</li>\r\n	<li>\r\n		<strong>Chất lượng tốt nhất</strong>: Đảm bảo chất lượng tốt nhất trong mỗi sản phẩm, mỗi việc làm.</li>\r\n	<li>\r\n		<strong>Đề cao đạo đức kinh doanh</strong>: Mỗi nhân viên là một đại diện của Công ty, có nghĩa vụ tuân thủ đạo đức kinh doanh cao nhất, luôn hợp tác, cởi mở và thân thiện với đồng nghiệp, đóng góp cho cộng đồng và xã hội.</li>\r\n</ul>', '<p>\r\n	NOi dung en</p>', 45, '2012-04-07 02:14:02', 2, 0, NULL, NULL, 'tam-nhin-va-su-menh-dos', 'gioi-thieu-2-en', 'Tầm nhìn và Sứ mệnh của DOS được viết ra ngay từ khi thành lập, xác định lý tưởng, hướng đi lâu dài và những giá trị cơ bản mà mỗi thành viên sáng lập luôn hướng tới', 'Mo ta 2 En', 1, 'dos'),
(8, 'Lĩnh vực hoạt động', 'Gioi thieu 3 En', '<p>\r\n	<strong>DỊCH VỤ CHUYÊN NGHIỆP</strong>:</p>\r\n<ul><li>\r\n		Thiết kế website</li>\r\n	<li>\r\n		Phương pháp quảng cáo bán hàng trực tuyến</li>\r\n	<li>\r\n		Giải pháp CNTT trọn gói cho Doanh nghiệp</li>\r\n	<li>\r\n		Thương mại điện tử</li>\r\n</ul><p>\r\n	 </p>\r\n<p>\r\n	<strong>SẢN PHẨM VÀ DỊCH VỤ GTGT:</strong></p>\r\n<ul><li>\r\n		Đăng ký tên miền</li>\r\n	<li>\r\n		Cung cấp Hosting</li>\r\n	<li>\r\n		Xử lý hình ảnh nhập liệu cho web</li>\r\n	<li>\r\n		Thiết kế Logo</li>\r\n	<li>\r\n		Thiết Kế Name Card</li>\r\n	<li>\r\n		Thiết kế ấn phầm Quảng cáo theo đơn đặt hàng</li>\r\n</ul><p>\r\n	 </p>\r\n<p>\r\n	<strong>HỖ TRỢ TƯ VẤN MIỄN PHÍ:</strong></p>\r\n<ul><li>\r\n		Thành lập Doanh nghiệp</li>\r\n	<li>\r\n		Quản lý Doanh nghiệp</li>\r\n	<li>\r\n		Tư vấn Marketing và phát triển Doanh nghiệp</li>\r\n	<li>\r\n		Tư vấn và định hướng đào tạo nhân viên bán hàng</li>\r\n	<li>\r\n		Tư vấn phong thủy</li>\r\n</ul>', '<p>\r\n	Noi dung 3 en</p>', 31, '2012-04-07 02:14:12', 3, 0, NULL, NULL, 'linh-vuc-hoat-dong', 'gioi-thieu-3-en', 'Mo ta 3', 'Mo ta 3 En', 1, 'dos'),
(10, 'Giới thiệu sơ lược', '', '<p>\r\n	 Ngày thành lập: 05/09/2002<br />\r\n	- Công ty TNHH Tin Học Việt Tiến được thành lập ngày 5 tháng tháng 09 năm 2002, số giấy phép: 4702000428 do Sở Kế Hoạch Đầu Tư Tỉnh Đồng Nai  cấp<br />\r\n	- Ngày 23/08/2009 Công ty TNHH Tin Học Việt Tiến đổi tên thành Công ty Cổ Phần Công Nghệ Tin Việt Tiến<br />\r\n	- Vốn điều lệ: 4.000.000.000 đồng (bốn tỷ đồng)<br />\r\n	- Tháng 08 năm 2009 công ty nân vốn lên quy mô 10.000.000.000 đồng (mười tỷ đồng)<br />\r\n	- Ngày 23/08/2009 Công ty Cổ Phần Công Nghệ Tin Việt Tiến thành lập chi nhánh mới Công ty Thiết Bị Số Bách Việt tại số 30, Xa lộ Hà Nội, Khu phố 4, Phường Long Bình, Biên Hoà (ngay vòng xoay Tam Hiệp) với số vốn là 3 tỷ đồng</p>', '', 175, '2012-04-10 00:42:59', 1, 1, NULL, NULL, 'gioi-thieu-so-luoc', '', 'Công ty TNHH Tin Học Việt Tiến được thành lập ngày 5 tháng tháng 09 năm 2002, số giấy phép: 4702000428 do Sở Kế Hoạch Đầu Tư Tỉnh Đồng Nai  cấp', '', 1, '260312'),
(11, 'Giới thiệu ngành nghề hoạt động', '', '<p>\r\n	 Ngành nghề kinh doanh<br />\r\n	- Mua bán máy tính, máy văn phòng, hàng trang trí nôi thất, thiết bị điện tử, điện lạnh, điện công nghiệp, điện gia dụng<br />\r\n	- Sừa chữa, bảo trì, lắp đặt máy tính, máy văn phòng, hệ thống mạng<br />\r\n	- Viết chương trình phần mềm tin học<br />\r\n	- Đào tạo tin học</p>', '', 1, '2012-04-10 00:44:40', 2, 0, NULL, NULL, 'gioi-thieu-nganh-nghe-hoat-dong', '', 'Ngành nghề kinh doanh\r\n- Mua bán máy tính, máy văn phòng, hàng trang trí nôi thất, thiết bị điện tử, điện lạnh, điện công nghiệp, điện gia dụng\r\n- Sừa chữa, bảo trì, lắp đặt máy tính, máy văn phòng, hệ thống mạng', '', 1, '260312'),
(12, 'Quá trình hoạt động', '', '<p>\r\n	- Từ ngày thành lập tới nay Công ty Cổ Phần Công Nghệ Tin Việt Tiến đã cung cấp máy tính cho hầu hết các phòng ban các Xã, Huyện, Thị trấn trong Tỉnh như Huyện Định Quán, Huyên Tân Phú, Huyện Thống Nhất, Huyên Long Thành, Huyên Nhơn Trạch, Huyên Vĩnh Cửu, Huyên Cẩm Mỹ, Tp. Biên Hoà...<br />\r\n	- Công ty còn cung cấp cho các đối tác lớn là các đơn vị như Sở Tài Chính, Sở Bưu Chính Viễn Thông, Sở Tài Nguyên, Sở Nông Nghiệp &amp; Phát Triển Nông Thôn, Công An Tỉnh Đồng Nai, các bệnh viện, các trường học trong Tỉnh, Ban quản lý các khu công nghiệp...Công ty Cổ Phần Công Nghệ Tin Việt Tiến còn đối tác cung cấp máy tính cho các công ty, tâp đoàn trong các khu công nghiệp, khu chế xuất như Chanshin, Pounchen, Teakhang...<br />\r\n	- Ngoài ra Công ty còn cung cấp linh kiện sĩ và lẻ cho các công ty tin học, hộ gia đình trong tỉnh.</p>', '', 1, '2012-04-10 00:45:17', 3, 0, NULL, NULL, 'qua-trinh-hoat-dong', '', '- Từ ngày thành lập tới nay Công ty Cổ Phần Công Nghệ Tin Việt Tiến đã cung cấp máy tính cho hầu hết các phòng ban các Xã, Huyện, Thị trấn trong Tỉnh như Huyện Định Quán, Huyên Tân Phú, Huyện Thống Nhất, Huyên Long Thành, Huyên Nhơn Trạch,...', '', 1, '260312'),
(13, 'Mở rộng showroom chuyên kinh doanh máy tính xách tay', '', '<p>\r\n	- Ngày 03/09/2008 với sự hỗ trợ từ các hãng máy tính, Công ty Cổ Phần Công Nghệ Tin Việt Tiến khai trương mở rông showroom chuyên kinh doanh máy tính xách tay chính hãng nổi tiếng như HP, TOSHIBA, ACER, DELL, SAMSUNG, LENOVO, SONY, APPLE...<br />\r\n	- Các hãng đặt tủ kệ trưng để bày sản phẩm và đưa nhân viên tư vấn của hãng xuống tại showroom để tư vấn trực tiếp khách hàng</p>', '', 8, '2012-04-10 00:45:44', 4, 0, NULL, NULL, 'mo-rong-showroom-chuyen-kinh-doanh-may-tinh-xach-tay', '', 'kinh doanh máy tính xách tay chính hãng nổi tiếng như HP, TOSHIBA, ACER, DELL, SAMSUNG, LENOVO, SONY, APPLE...', '', 1, '260312'),
(60, 'Giới thiệu sơ lược', 'Introduction About', '<p>\r\n	Ngày nay, khi ngày càng có nhiều thông tin được cung cấp trực tuyến, bạn càng cần phải sử dụng trình duyệt nhanh và an toàn trên máy tính. Giới thiệu về Google Chrome -- trình duyệt mở trang web với tốc độ cực nhanh! Thiết kế mượt mà của trình duyệt mang lại cho bạn nhiều không gian hơn để duyệt các trang web ưa thích của mình. Hướng dẫn này giúp bạn tìm hiểu qua các tính năng chính của Google Chrome.</p>', '<p>\r\n	Today, as more and more information is offered online, the more you need to use fast and secure browser on the computer. About Google Chrome - the browser open site with fast speed! Sleek design of the browser gives you more space to browse your favorite sites. This guide helps you learn the key features of Google Chrome.</p>', 285, '2012-04-11 03:06:00', 1, 1, NULL, NULL, 'gioi-thieu-so-luoc', 'introduction-about', 'Ngày nay, khi ngày càng có nhiều thông tin được cung cấp trực tuyến, bạn càng cần phải sử dụng trình duyệt nhanh và an toàn trên máy tính. Giới thiệu về Google Chrome -- trình duyệt mở trang web với tốc độ cực nhanh! Thiết kế mượt mà của trìn', '', 1, 'thanhansoft'),
(61, 'Giới thiệu chung', 'Introduction', '<p>\r\n	Giới thiệu chungGiới thiệu chungGiới thiệu chungGiới thiệu chungGiới thiệu chungGiới thiệu chungGiới thiệu chung</p>', '<p>\r\n	After the study period flood in Bangkok (Thailand), Assoc. Dr. Ho Long Phi said, a few dozen years have HCMC possibility of a flood damage similar to Bangkok.</p>\r\n<p>\r\n	After the study period flood in Bangkok (Thailand), Assoc. Dr. Ho Long Phi said, a few dozen years have HCMC possibility of a flood damage similar to Bangkok.</p>\r\n<p>\r\n	After the study period flood in Bangkok (Thailand), Assoc. Dr. Ho Long Phi said, a few dozen years have HCMC possibility of a flood damage similar to Bangkok.After the study period flood in Bangkok (Thailand), Assoc. Dr. Ho Long Phi said, a few dozen years have HCMC possibility of a flood damage similar to Bangkok.After the study period flood in Bangkok (Thailand), Assoc. Dr. Ho Long Phi said, a few dozen years have HCMC possibility of a flood damage similar to Bangkok.</p>', 21, '2012-04-11 03:06:00', 2, 0, NULL, NULL, 'gioi-thieu-chung', 'introduction', 'Giới thiệu chungGiới thiệu chung', 'Introduction Introduction Introduction Introduction', 1, 'thanhansoft'),
(62, 'Giới thiệu Văn phòng đại diện', 'About a representative office', '<p>\r\n	Giới thiệu Văn phòng đại diệnGiới thiệu Văn phòng đại diệnGiới thiệu Văn phòng đại diệnGiới thiệu Văn phòng đại diệnGiới thiệu Văn phòng đại diệnGiới thiệu Văn phòng đại diệnGiới thiệu Văn phòng đại diệnGiới thiệu Văn phòng đại diện</p>', '<p>\r\n	About a representative officeAbout a representative officeAbout a representative officeAbout a representative officeAbout a representative officeAbout a representative officeAbout a representative officeAbout a representative officeAbout a representative office</p>', 92, '2012-04-11 03:06:00', 3, 0, NULL, NULL, 'gioi-thieu-van-phong-dai-dien', 'about-a-representative-office', 'Giới thiệu Văn phòng đại diệnGiới thiệu Văn phòng đại diện', 'About a representative officeAbout a representative office', 1, 'thanhansoft');

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
) ENGINE=InnoDB  DEFAULT CHARSET=utf8 AUTO_INCREMENT=12 ;

--
-- Dumping data for table `dos_module_advs`
--

INSERT INTO `dos_module_advs` (`record_id`, `title`, `titleen`, `pic_thumb`, `url`, `create_date`, `start_date`, `end_date`, `hits`, `record_order`, `position`, `type`, `enable`, `dos_usernames_username`) VALUES
(2, 'Pa nội thất', NULL, 'pa-noi-that.jpg', 'http://grouplaptrinh.com', '2012-04-05 02:16:24', '2012-04-04 16:00:00', '2012-05-22 16:00:00', 0, 1, 'left', '_bank', 1, '220312'),
(3, 'FPT', '', 'fpt.jpg', 'http://fpt.vn', '2012-04-10 01:11:02', '2012-04-09 16:00:00', '2012-04-25 16:00:00', 0, 1, 'left', '_bank', 1, '260312'),
(4, 'Acer', '', 'acer.jpg', 'http://www.acer.com.vn', '2012-04-10 01:11:58', '2012-04-09 16:00:00', '2012-04-26 16:00:00', 0, 2, 'left', '_bank', 1, '260312'),
(11, 'Pa nội thất', NULL, 'pa-noi-that.jpg', 'http://grouplaptrinh.com', '2012-04-11 03:06:00', '2012-04-04 16:00:00', '2012-05-22 16:00:00', 0, 1, 'left', '_bank', 1, 'thanhansoft');

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
) ENGINE=InnoDB  DEFAULT CHARSET=utf8 AUTO_INCREMENT=4 ;

--
-- Dumping data for table `dos_module_banners`
--

INSERT INTO `dos_module_banners` (`banner_id`, `banner_date`, `banner_name`, `banner_url`, `banner_link`, `banner_order`, `banner_type`, `position`, `enable`, `dos_usernames_username`) VALUES
(1, '2012-04-10 02:03:08', 'Banner trang chu', 'banner-trang-chu.jpg', '', 1, 'banners', 'default', 1, '260312'),
(2, '2012-04-10 02:04:16', 'Banner trang chu 2', 'banner-trang-chu-2.jpg', '', 2, 'banners', 'default', 1, '260312'),
(3, '2012-04-11 04:27:06', 'sdfsdfds', 'sdfsdfds.jpg', '', 1, 'logo', 'default', 1, 'thanhansoft');

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
) ENGINE=InnoDB  DEFAULT CHARSET=utf8 AUTO_INCREMENT=15 ;

--
-- Dumping data for table `dos_module_contacts`
--

INSERT INTO `dos_module_contacts` (`record_id`, `title`, `titleen`, `content`, `contenten`, `create_date`, `record_order`, `hit`, `hot`, `tag`, `tagen`, `description`, `descriptionen`, `enable`, `dos_usernames_username`) VALUES
(1, 'Contact us', '', '<p>\r\n	CÔNG TY CỔ PHẦN TM SX THẾ GIỚI NỘI THẤT</p>\r\n<p>\r\n	Trụ sở: 321 CỘNG HÒA, PHƯỜNG 13, TÂN BÌNH, TP.HCM</p>\r\n<p>\r\n	Nhà máy : C7/21 PHẠM HÙNG, CHÁNH HƯNG BÌNH CHÁNH</p>\r\n<p>\r\n	MST: 0309788812</p>\r\n<p>\r\n	Điện thoại : (+848) 6292 3934 - Fax: (+848) 6292 3935</p>\r\n<p>\r\n	Hotline: 0942852858--0942 853 443 - Email : thegioinoithatvn@gmail.com</p>', '<p>\r\n	TM MANUFACTURING COMPANY FURNITURE WORLD</p>\r\n<p>\r\n	Office: 321 Cong Hoa, Ward 13, Tan Binh, Ho Chi Minh City</p>\r\n<p>\r\n	Factory: C7/21 Pham Hung Binh Chanh Hung DISTRICT</p>\r\n<p>\r\n	MST: 0309788812</p>\r\n<p>\r\n	Tel: (+848) 6292 3934 - Fax: (+848) 6292 3935</p>\r\n<p>\r\n	Hotline: 0942852858 - 0942 853 443 - Email: thegioinoithatvn@gmail.com</p>', '2012-04-05 02:20:31', 1, 0, 0, 'contact-us', '', '', '', '1', '220312'),
(2, 'Liên hệ với chúng tôi', '', '<p>\r\n	CÔNG TY CỔ PHẦN MÁY TÍNH DRAGON</p>\r\n<p>\r\n	<br />\r\n	Trụ sở chính</p>\r\n<p>\r\n	Hoàn Long Building 244 Cống Quỳnh, P.Phạm Ngũ Lão, Q.1, Tp.HCM</p>\r\n<p>\r\n	ĐT: 08.39259999 - 08.39258999</p>\r\n<p>\r\n	Fax : 08.39259131</p>\r\n<p>\r\n	Showroom 1: Chi nhánh Tôn Thất Tùng</p>\r\n<p>\r\n	101 Sương Nguyệt Ánh, P.Bến Thành, Q.1, Tp.HCM</p>\r\n<p>\r\n	96B Tôn Thất Tùng, P.Bến Thành, Q1. Tp.HCM</p>\r\n<p>\r\n	ĐT: 08.62911046 - 08.62911047</p>\r\n<p>\r\n	Fax : 08.39255326</p>\r\n<br /><p>\r\n	Showroom 2: Chi nhánh Nguyễn Thị Minh Khai</p>\r\n<p>\r\n	410 B-C-D Nguyễn Thị Minh Khai, P.5, Q.3, Tp.HCM</p>\r\n<p>\r\n	ĐT: 08.62911058 - 08.62911061</p>\r\n<p>\r\n	Fax : 08.38344896</p>\r\n<br /><p>\r\n	Showroom 3: Chi nhánh Gò Vấp</p>\r\n<p>\r\n	15 Nguyễn Oanh, P.10, Q.Gò Vấp, Tp.HCM</p>\r\n<p>\r\n	ĐT: 08.62955289 - 08.62955299</p>\r\n<p>\r\n	Fax : 08.62955064</p>\r\n<br /><p>\r\n	Showroom 4: Chi nhánh Cần Thơ</p>\r\n<p>\r\n	41 - 43 Đường 30/4, P. An Lạc, Q. Ninh Kiều, Tp Cần Thơ</p>\r\n<p>\r\n	ĐT: 0710 3819030 - 0710 3819040</p>\r\n<p>\r\n	Fax:0710 3819050</p>\r\n<br /><p>\r\n	Showroom 5 : Chi nhánh Biên Hòa</p>\r\n<p>\r\n	77-79 Phạm Văn Thuận (QL.15), P. Tân Tiến, Tp Biên Hòa, ĐN.</p>\r\n<p>\r\n	ĐT: (061).8822228 - (061).3825779</p>\r\n<p>\r\n	Fax : (061).8820139</p>\r\n<br /><p>\r\n	Website: www.pct.com.vn - Email: lienhe@pct.com.vn</p>', '', '2012-04-10 00:59:52', 1, 0, 0, 'lien-he-voi-chung-toi', '', 'Liện hệ với chúng tôi để được những ưu đãi', '', '1', '260312'),
(14, 'Contact us', '', '<p>\r\n	CÔNG TY CỔ PHẦN TM SX THẾ GIỚI NỘI THẤT</p>\r\n<p>\r\n	Trụ sở: 321 CỘNG HÒA, PHƯỜNG 13, TÂN BÌNH, TP.HCM</p>\r\n<p>\r\n	Nhà máy : C7/21 PHẠM HÙNG, CHÁNH HƯNG BÌNH CHÁNH</p>\r\n<p>\r\n	MST: 0309788812</p>\r\n<p>\r\n	Điện thoại : (+848) 6292 3934 - Fax: (+848) 6292 3935</p>\r\n<p>\r\n	Hotline: 0942852858--0942 853 443 - Email : thegioinoithatvn@gmail.com</p>', '<p>\r\n	TM MANUFACTURING COMPANY FURNITURE WORLD</p>\r\n<p>\r\n	Office: 321 Cong Hoa, Ward 13, Tan Binh, Ho Chi Minh City</p>\r\n<p>\r\n	Factory: C7/21 Pham Hung Binh Chanh Hung DISTRICT</p>\r\n<p>\r\n	MST: 0309788812</p>\r\n<p>\r\n	Tel: (+848) 6292 3934 - Fax: (+848) 6292 3935</p>\r\n<p>\r\n	Hotline: 0942852858 - 0942 853 443 - Email: thegioinoithatvn@gmail.com</p>', '2012-04-11 03:06:00', 1, 0, 0, 'contact-us', '', '', '', '1', 'thanhansoft');

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
('Trang chủ', 'Home page', 'default', '', 1, NULL, NULL, NULL, NULL, '220312'),
('Giới thiệu', 'About Us', 'about', '', 2, NULL, NULL, NULL, NULL, '220312'),
('Sản phẩm', 'Products', 'products', '', 3, NULL, NULL, NULL, NULL, '220312'),
('Dịch vụ', 'Services', 'services', '', 4, NULL, NULL, NULL, NULL, '220312'),
('Tin tức & sự kiện', 'News', 'news', '', 5, NULL, NULL, NULL, NULL, '220312'),
('Video', 'Video', 'video', '', 6, NULL, NULL, NULL, NULL, '220312'),
('Liên hệ', 'Contact Us', 'contact', '', 7, NULL, NULL, NULL, NULL, '220312'),
('Trang chủ', NULL, 'default', NULL, 1, NULL, NULL, NULL, NULL, '260312'),
('Giới thiệu', NULL, 'about', NULL, 2, NULL, NULL, NULL, NULL, '260312'),
('Sản phẩm', NULL, 'products', NULL, 3, NULL, NULL, NULL, NULL, '260312'),
('Dịch vụ', NULL, 'services', NULL, 4, NULL, NULL, NULL, NULL, '260312'),
('Tin tức & sự kiện', NULL, 'news', NULL, 5, NULL, NULL, NULL, NULL, '260312'),
('Video', NULL, 'video', NULL, 6, NULL, NULL, NULL, NULL, '260312'),
('Liên hệ', NULL, 'contact', NULL, 7, NULL, NULL, NULL, NULL, '260312'),
('Trang chủ', NULL, 'default', NULL, 1, NULL, NULL, NULL, NULL, 'thanhan'),
('Giới thiệu', NULL, 'about', NULL, 2, NULL, NULL, NULL, NULL, 'thanhan'),
('Sản phẩm', NULL, 'products', NULL, 3, NULL, NULL, NULL, NULL, 'thanhan'),
('Dịch vụ', NULL, 'services', NULL, 4, NULL, NULL, NULL, NULL, 'thanhan'),
('Tin tức & sự kiện', NULL, 'news', NULL, 5, NULL, NULL, NULL, NULL, 'thanhan'),
('Video', NULL, 'video', NULL, 6, NULL, NULL, NULL, NULL, 'thanhan'),
('Liên hệ', NULL, 'contact', NULL, 7, NULL, NULL, NULL, NULL, 'thanhan'),
('Trang chủ', '', 'default', '', 1, NULL, NULL, NULL, NULL, 'thanhansoft'),
('Giới thiệu', '', 'about', '', 2, NULL, NULL, NULL, NULL, 'thanhansoft'),
('Sản phẩm', '', 'products', '', 3, NULL, NULL, NULL, NULL, 'thanhansoft'),
('Dịch vụ', '', 'services', '', 4, NULL, NULL, NULL, NULL, 'thanhansoft'),
('Tin tức & sự kiện', '', 'news', '', 5, NULL, NULL, NULL, NULL, 'thanhansoft'),
('Video', '', 'video', '', 6, NULL, NULL, NULL, NULL, 'thanhansoft'),
('Liên hệ', '', 'contact', '', 7, NULL, NULL, NULL, NULL, 'thanhansoft');

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
) ENGINE=InnoDB  DEFAULT CHARSET=utf8 AUTO_INCREMENT=13 ;

--
-- Dumping data for table `dos_module_news`
--

INSERT INTO `dos_module_news` (`record_id`, `title`, `titleen`, `postdate`, `pic_thumb`, `preview`, `previewen`, `content`, `contenten`, `tag`, `tagen`, `description`, `descriptionen`, `hits`, `record_order`, `hot`, `extra_field1`, `extra_field2`, `enable`, `dos_module_item_cat_cat_id`) VALUES
(5, '20 năm nữa, TP HCM có thể lụt như Bangkok', '20 years, Ho Chi Minh City Bangkok may flood as', '2012-04-05 02:27:41', '', '<p>\r\n	Sau thời gian nghiên cứu ngập lụt ở Bangkok (Thái Lan), PGS. TS Hồ Long Phi khẳng định, vài chục năm nữa TP HCM có khả năng xảy ra một trận lụt với thiệt hại tương tự như Bangkok.</p>', '<p>\r\n	20 years, Ho Chi Minh City Bangkok may flood as20 years, Ho Chi Minh City Bangkok may flood as20 years, Ho Chi Minh City Bangkok may flood as</p>', '<p>\r\n	Sau thời gian nghiên cứu ngập lụt ở Bangkok (Thái Lan), PGS. TS Hồ Long Phi khẳng định, vài chục năm nữa TP HCM có khả năng xảy ra một trận lụt với thiệt hại tương tự như Bangkok.<br />\r\n	&gt; ''TP HCM sẽ lụt như Bangkok nếu phát triển như hiện nay''/ Toàn cảnh trận lụt lịch sử ở Thái Lan</p>\r\n<p>\r\n	Chiều 4/4, tại hội nghị sơ kết một năm thực hiện chương trình giảm ngập nước ở thành phố giai đoạn 2011-2015, PGS. TS Hồ Long Phi, Phó ban điều phối chương trình chống ngập TP HCM cho biết, sau một thời gian nghiên cứu ngập lụt ở Bangkok (Thái Lan) đã rút ra được bài học và xây dựng đề án hành động giải quyết ngập lụt ở TP HCM.</p>\r\n<br /><p>\r\n	Nước lũ bao phủ cả khu vực rộng lớn phía bắc thủ đô Bangkok (Thái Lan). Màu đỏ của những mái nhà và màu xanh cây cối nổi lên giữa phông nền nước lũ. Ảnh: Kyodo.<br />\r\n	Theo ông Phi, bài học lớn nhất từ ngập lụt ở Bangkok là không nên tin tuyệt đối vào năng lực bảo vệ của các công trình chống ngập. Các giải pháp thích nghi, giảm nhẹ thiệt hại và sẵn sàng ứng phó luôn cần được dự trù.</p>\r\n<p>\r\n	Vị phó giáo sư cho rằng, thay vì ỷ lại hoàn toàn vào sự bảo vệ của các công trình đê bao chống ngập, TP HCM nên phát triển theo hình thức ECO2 (vừa phát triển kinh tế vừa phát triển sinh thái). Đồng thời, thay vì lấn chiếm không gian dành cho nước ở các vùng trũng thấp, một hành lang thoát lũ khẩn cấp cần được dự trù để đề phòng trường hợp các dòng sông không còn đủ năng lực thoát nước trong điều kiện mưa lũ đặc biệt lớn.</p>\r\n<p>\r\n	Bài học thứ hai mà TP HCM nên nghiên cứu từ trận lụt ở Bangkok là việc quản lý tài nguyên nước. Theo ông Phi, các hồ chứa thường được thiết kế và vận hành thiên về cấp nước tưới hay phát điện mà thiếu quan tâm đến điều tiết lũ. "Vì thế, TP HCM cần thiết lập quy trình vận hành hồ chứa đa mục tiêu để tăng cường khả năng điều tiết lũ", ông Phi đề nghị.</p>', '<p>\r\n	After the study period flood in Bangkok (Thailand), Assoc. Dr. Ho Long Phi said, a few dozen years have HCMC possibility of a flood damage similar to Bangkok.<br />\r\n	&gt; ''As Bangkok, Ho Chi Minh City will flood if the current development'' / Overview of the flood history in Thailand</p>\r\n<p>\r\n	Afternoon of 4/4, at a preliminary conference in the program reduce flooding in the city in 2011-2015, Assoc. Dr. Ho Long Phi, deputy coordinating programs to prevent flooding HCM City, said after a flood studies in Bangkok (Thailand) has drawn lessons and build action plan address flood in Ho Chi Minh City.</p>\r\n<br /><p>\r\n	Floodwaters covered the large area north of the capital Bangkok (Thailand). The red color of the roofs and green trees rise between the flood wallpaper. Photo: Kyodo.<br />\r\n	According to Africa, the biggest lesson from flooding in Bangkok is not absolute protection in the capacity of the works to prevent flooding. The solution adaptation, mitigation and preparedness should always be planned.</p>\r\n<p>\r\n	The associate professor said that instead of relying entirely on the protection of the dike to prevent flooding works, Ho Chi Minh City should develop in the form of ECO2 (both economic development has developed eco). Also, instead of encroaching upon the space reserved for low-lying areas, a flood emergency corridors should be planned for in case the river is no longer sufficient drainage capacity in terms of special flood big difference.</p>\r\n<p>\r\n	The second lesson that should HCM City from the flood studies in Bangkok was the management of water resources. According to Africa, the reservoirs are usually designed and operated natural water supply or electricity, but lack of interest in flood control. "Therefore, HCM City needs to establish operating procedures for multi-purposes reservoirs to enhance flood control," said African proposal.</p>\r\n<p>\r\n	Another lesson should also be taken into account as forecasting and information management plays an important role in reducing damage caused by flooding. Information correct early and high probability will support the work of running. He cited Africa, Deputy Director of the Meteorological Thai government plans equipped with radar rainfall forecasts $ 130 million. However, this system was not equipped in time. "If there''s time will help the Thai government has more than enough information in decision making," said Africa.</p>\r\n<p>\r\n	From the analysis of the similarities are fairly between Bangkok and Ho Chi Minh City as the cause flooding due to upstream flooding, heavy rains, high tides, water levels, many low-lying terrain areas, subsidence and compared Compare the Flood Risk factor system to prevent flooding ... Ho Long Phi made the comment, if any city retains the current development is mainly based on the works to prevent flooding, the 20 years, Ho Chi Minh City will likely occur a game flooded with damage similar to Bangkok in 2011.</p>\r\n<p>\r\n	He said today''s most dangerous thing for Ho Chi Minh City is not tide or sea level rise that is larger storms occur in the basin of Sai Gon - Dong Nai late rainy season, coinciding with the flooding in the Mekong Delta. At that time, the upstream reservoir was almost full of water. So the solution must be calculated to minimize the damage.</p>\r\n<p>\r\n	Deputy executive proposed program to prevent flooding HCMC need to act now to prevent flooding. Four African action which he proposed the drafting and promulgating regulations for the space, setting up early warning systems and response procedures, establish operating procedures for multi-purposes reservoirs, priority first investment in urban drainage.</p>', '20-nam-nua-tp-hcm-co-the-lut-nhu-bangkok', '20-years-ho-chi-minh-city-bangkok-may-flood-as', 'Sau thời gian nghiên cứu ngập lụt ở Bangkok (Thái Lan), PGS. TS Hồ Long Phi khẳng định, vài chục năm nữa TP HCM có khả năng xảy ra một trận lụt với thiệt hại tương tự như Bangkok.', 'He said today''s most dangerous thing for Ho Chi Minh City is not tide or sea level rise that is larger storms occur in the basin of Sai Gon - Dong Nai late rainy season, coinciding with the flooding in the Mekong Delta. At that time, the upstream res', 0, 1, 1, NULL, NULL, 1, 5),
(6, 'asdas', NULL, '2012-04-09 07:28:03', NULL, 'dadas', 'dasd', 'asd', 'asdad', 'asdasd', NULL, NULL, NULL, 0, 1, 0, NULL, NULL, 1, 6),
(7, 'Card đồ họa ASUS GTX 680 dành cho game thủ', '', '2012-04-10 01:02:52', 'card-do-hoa-asus-gtx-680-danh-cho-game-thu.jpg', '<p>\r\n	(PHP:28.03.2012) Hồi hạ tuần tháng 3-2012, hãng ASUS đã đưa ra thị trường card đồ họa ASUS GTX 680 dựa trên GPU công nghệ sản xuất 28nm đầu tiên mà NVIDIA mới công bố.</p>', '', '<p>\r\n	(PHP:28.03.2012) Hồi hạ tuần tháng 3-2012, hãng ASUS đã đưa ra thị trường card đồ họa ASUS GTX 680 dựa trên GPU công nghệ sản xuất 28nm đầu tiên mà NVIDIA mới công bố. (PHP:28.03.2012) Hồi hạ tuần tháng 3-2012, hãng ASUS đã đưa ra thị trường card đồ họa ASUS GTX 680 dựa trên GPU công nghệ sản xuất 28nm đầu tiên mà NVIDIA mới công bố. (PHP:28.03.2012) Hồi hạ tuần tháng 3-2012, hãng ASUS đã đưa ra thị trường card đồ họa ASUS GTX 680 dựa trên GPU công nghệ sản xuất 28nm đầu tiên mà NVIDIA mới công bố.</p>', '', 'card-do-hoa-asus-gtx-680-danh-cho-game-thu', '', '(PHP:28.03.2012) Hồi hạ tuần tháng 3-2012, hãng ASUS đã đưa ra thị trường card đồ họa ASUS GTX 680 dựa trên GPU công nghệ sản xuất 28nm đầu tiên mà NVIDIA mới công bố.', '', 0, 1, 0, NULL, NULL, 1, 7),
(8, 'Toshiba U840 có giá 23,4 triệu đồng', '', '2012-04-10 01:04:13', 'toshiba-u840-co-gia-234-trieu-dong.jpg', '<p>\r\n	Ultrabook thứ hai của Toshiba có mức giá tốt so với cấu hình với chip Core i5, ổ cứng 500 GB, bàn phím có đèn nền và touchpad rộng rãi.</p>', '', '<p>\r\n	Chỉ hơn 3 tháng sau khi giới thiệu mẫu ultrabook đầu tiên ra thị trường, Toshiba tiếp tục đưa mẫu laptop siêu mỏng nhẹ thứ hai về Việt Nam là Satellite U840. Tuy nhiên, khác với Portégé Z830 dành cho doanh nhân cao cấp, U840 có giá thành hấp dẫn hơn, chỉ 23.450.000 đồng (bao gồm VAT) trong khi vẫn sở hữu nhiều công nghệ mới, mạnh mẽ và đáng chú ý. Đây là mức giá tốt cho một sản phẩm ultrabook, chỉ sau mẫu Acer Aspire S3 trên thị trường hiện tại.</p>', '', 'toshiba-u840-co-gia-234-trieu-dong', '', 'Ultrabook thứ hai của Toshiba có mức giá tốt so với cấu hình với chip Core i5, ổ cứng 500 GB, bàn phím có đèn nền và touchpad rộng rãi.', '', 0, 2, 0, NULL, NULL, 1, 7),
(9, 'Tablet mỏng nhất thế giới Toshiba Excite 10 LE', '', '2012-04-10 01:05:27', 'tablet-mong-nhat-the-gioi-toshiba-excite-10-le.jpg', '<p>\r\n	Tablet mỏng nhất thế giới Toshiba Excite 10 LE</p>', '', '<p>\r\n	Được chính thức tung ra thị trường vào ngày 6-3-2012, tức chỉ 1 ngày trước The new iPad của Apple, Toshiba Excite 10 LE đã soán ngôi của Samsung Galaxy Tab 10.1 để trở thành tablet 10 inch mỏng nhất thế giới. Độ dày của nó chỉ có 0,3 inch (7,7mm) so với 8,6mm của Galaxy Tab 10.1 và 8,8mm của Apple iPad2. Nó cũng là tablet 10.1 inch nhẹ nhất thế giới hiện nay. Trọng lượng của nó chỉ 1,18 pound (535g) so với 565g của Galaxy Tab 10.1 và 600 - 610g của iPad2. Tablet được trang bị màn hình 10,1 inch độ phân giải cao 1280 x 800 pixel (tương tự Galaxy Tab) LED-backlit, tỷ lệ widescreen 16:10, công nghệ IPS và AutoBrite. Hỗ trợ cảm ứng đa chạm 10 ngón (10-finger multitouch). Màn hình được làm bằng kính Corning Gorilla Glass cứng cáp, có tính năng chống trầy xước. (Toshiba gọi nó là màn hình “chống đạn” - bulletproof).</p>\r\n<p>\r\n	 </p>', '', 'tablet-mong-nhat-the-gioi-toshiba-excite-10-le', '', 'Tablet mỏng nhất thế giới Toshiba Excite 10 LE', '', 0, 3, 0, NULL, NULL, 1, 7),
(10, 'Dell ra mắt ultrabook XPS 13 tại Việt Nam', '', '2012-04-10 01:06:27', 'dell-ra-mat-ultrabook-xps-13-tai-viet-nam.jpg', '<p>\r\n	Sáng 16-3-2012 tại TP.HCM, Dell Việt Nam đã chính thức ra mắt mẫu máy tính xách tay ultrabook XPS 13 mà Dell tự hào giới thiệu đó là một kiệt tác nghệ thuật và công nghệ.</p>', '', '<p>\r\n	Sáng 16-3-2012 tại TP.HCM, Dell Việt Nam đã chính thức ra mắt mẫu máy tính xách tay ultrabook XPS 13 mà Dell tự hào giới thiệu đó là một kiệt tác nghệ thuật và công nghệ.</p>\r\n<br /><p>\r\n	<br />\r\n	Dell nhấn mạnh tới các tính năng nổi bật của XPS 13: siêu di động; chất liệu hàng đầu; công nghệ tiên tiến, đặc biệt là công nghệ kết nối liên tục của Intel. Dell cũng định vị đối tượng khách hàng chính của XPS 13 là giới chuyên nghiệp, doanh nhân năng động, người muốn khẳng định đẳng cấp và người cần máy tính di động hiệu năng cao.<br /><br />\r\n	Ultrabook XPS 13 gây ấn tượng với người dùng ngay từ cái nhìn đầu tiiên với kiểu dáng gọn nhẹ nhưng cứng cáp, thời trang nhưng rất nam tính. Bên cạnh các công nghệ, chất liệu với đế bằng sợi carbon, thân trên bằng nhôm nguyên khối và màn hình LCD có kính cường lực Corning Gorilla Glass cho phép Dell thiết kế XPS 13 cực nhẹ và cực mỏng. Viền màn hình thật mỏng giúp XPS 13 tuy có màn hình 13,3 inch nhưng lại nhỏ gọn như một laptop 11,6 inch.</p>', '', 'dell-ra-mat-ultrabook-xps-13-tai-viet-nam', '', 'Dell nhấn mạnh tới các tính năng nổi bật của XPS 13: siêu di động; chất liệu hàng đầu; công nghệ tiên tiến, đặc biệt là công nghệ kết nối liên tục của Intel. Dell cũng định vị đối tượng khách hàng chính của XPS 13 l', '', 0, 4, 0, NULL, NULL, 1, 7),
(11, 'Intel 15 năm có mặt ở Việt Nam', '', '2012-04-10 01:07:30', 'intel-15-nam-co-mat-o-viet-nam.jpg', '<p>\r\n	Intel 15 năm có mặt ở Việt Nam</p>', '', '<p>\r\n	Tuần lễ Triển lãm “Đổi thay trông thấy” từ 6 tới 11-3-2012 tại Nhà Văn hóa Thanh niên TP.HCM mở đầu cho chuỗi sự kiện trong năm 2012 của Intel nhằm kỷ niệm 15 năm hoạt động và phát triển cùng ngành công nghệ thông tin Việt Nam<br /><br />\r\n	Công ty TNHH Intel Việt Nam (Intel Việt Nam) đã tổ chức tuần lễ triển lãm với chủ đề “Đổi thay trông thấy” nhằm điểm lại những thành quả đã đạt được cũng như những bước tiến quan trọng trong thời gian qua, đồng thời giới thiệu những công nghệ mới trong tương lai.<br /><br />\r\n	Triển lãm “Đổi thay trông thấy” bao gồm một chuỗi các sự kiện đặc biệt với chủ đề dành riêng cho mỗi ngày của hoạt động này. Một bộ sưu tập đầy đủ và chưa từng được công bố về các sản phẩm công nghệ của Intel, cùng các tài liệu, sản phẩm, hình ảnh, video… gắn liền với thời gian hoạt động của Intel Việt Nam được giới thiệu tại triển lãm. Các công nghệ mới nhất của Intel như khái niệm Ultrabook và bộ vi xử lý Intel Xeon mạnh nhất dành cho máy chủ cũng được ra mắt. Ngoài ra, trong khuôn khổ chương trình, Ngày hội dành cho cộng đồng mạng xã hội được tổ chức nhằm mang đến không gian giao lưu cho các bạn trẻ, tạo điều kiện để các bạn tiếp cận với các công nghệ mới.</p>', '', 'intel-15-nam-co-mat-o-viet-nam', '', 'Công ty TNHH Intel Việt Nam (Intel Việt Nam) đã tổ chức tuần lễ triển lãm với chủ đề “Đổi thay trông thấy” nhằm điểm lại những thành quả đã đạt được cũng như những bước tiến quan trọng trong thời gian qua, đồng thời giới thiệu những công nghệ mới', '', 0, 5, 0, NULL, NULL, 1, 8),
(12, 'Epson phát triển máy in phun đủ sức thay thế máy in laser', '', '2012-04-10 01:08:28', 'epson-phat-trien-may-in-phun-du-suc-thay-the-may-in-laser.jpg', '<p>\r\n	Epson (Nhật Bản) nhiều năm nay vốn là nhà sản xuất máy in phun số 1 thế giới. Vì thế, không có gì phải ngạc nhiên khi từ mấy năm trước, Epson đã bắt đầu những nỗ lực cạnh tranh với máy in laser bằng máy in phun. Và bây giờ, hãng này đã sẵn sàng cung cấp cho người dùng tùy chọn thay thế máy in laser bằng máy in phun. Epson đã gọi nỗ lực này là “black is back” (màu đen trở lại).</p>', '', '<p>\r\n	Epson (Nhật Bản) nhiều năm nay vốn là nhà sản xuất máy in phun số 1 thế giới. Vì thế, không có gì phải ngạc nhiên khi từ mấy năm trước, Epson đã bắt đầu những nỗ lực cạnh tranh với máy in laser bằng máy in phun. Và bây giờ, hãng này đã sẵn sàng cung cấp cho người dùng tùy chọn thay thế máy in laser bằng máy in phun. Epson đã gọi nỗ lực này là “black is back” (màu đen trở lại).<br /><br />\r\n	Công nghệ in Epson với thế mạnh về đầu in Micro Piezo, độ chính xác in, độ bền và hiệu quả về năng lượng. Theo Epson, đầu in Micro Piezo có thể giảm chi phí cho mỗi trang in, giảm mức tiêu thụ điện tới 70% so với in laser, giảm tổng chi phí vận hành máy in. Mực Epson DURABrite Ultra là một loại mực in đa mục đích (all-purpose ink) cho nhu cầu in hàng ngày, bảo đảm chất lượng bản in vẫn đẹp cho tới cuối cùng. Loại mực này có tính chống nhòe, chống phai và chống nước.<br /><br />\r\n	Mục tiêu của Epson là giúp người dùng có thể thay thế máy in laser bằng máy in phun với ưu thế là chi phí thấp hơn, thân thiện với môi trường hơn mà vẫn không phải hy sinh chất lượng in ấn. Một chi tiết nữa là máy in phun có thể in được trên nhiều loại vật liệu khác nhau mà máy in laser không thể làm được.<br /><br />\r\n	Có nhiều câu hỏi đã được đặt ra cho Epson khi hãng này quyết định đem máy in phun đen trắng (monochrome inkjet printer) trở lại cuộc sống. Trước hết, Epson cần tìm hiểu xem liệu thực sự thị trường đang có nhu cầu in đen trắng hay không? Kế đó là máy in đơn sắc hiện đang có vị trí như thế nào trên thị trường? Và cuối cùng là chi phí vận hành máy in đen trắng ra sao?<br /><br />\r\n	Epson cho biết họ đã phát hiện rằng thị trường Đông Nam Á trong vòng 4 năm trở lại đây vẫn còn đang gia tăng nhu cầu máy in đen trắng. Chẳng hạn như ở Việt Nam và Thái Lan, nhu cầu này có tốc độ gia tăng tới 60% một năm. Và hơn 90% số lượng máy in đen trắng ở hai nước này hiện là máy in laser.<br /><br />\r\n	Và để có thể “đấu” với máy in laser đen trắng, Epson đã trang bị cho thế hệ máy in phun đen trắng mới của mình các ưu điểm chính: chi phí vận hành, in hai mặt tự động, kết nối mạng, tốc độ, tiết kiệm điện, in được trên nhiều vật liệu, chất lượng in,…<br /><br />\r\n	Trong năm qua, Epson đã tạo ra những đột phá mới trong lĩnh vực in phun nhằm làm tăng tính tiện lợi và giảm chi phí cho người dùng. Gây ấn tượng nhất là hệ thống cấp mực liên tục CIS (Continuous Ink Supply System) đã được ứng dụng vào dòng L Series. CIS (hay còn gọi là Epson Original Ink Tank System) sử dụng các chai mực (ink bottle) thay vì các bình mực (ink cartridge). Với dung tích tới 70ml, mỗi chai mực này có thể in được tới 12.000 trang đen trắng hay 6.500 trang màu (thử nghiệm trên máy in Epson AIO L200).</p>', '', 'epson-phat-trien-may-in-phun-du-suc-thay-the-may-in-laser', '', 'Epson (Nhật Bản) nhiều năm nay vốn là nhà sản xuất máy in phun số 1 thế giới. Vì thế, không có gì phải ngạc nhiên khi từ mấy năm trước,', '', 0, 6, 1, NULL, NULL, 1, 8);

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
) ENGINE=InnoDB  DEFAULT CHARSET=utf8 AUTO_INCREMENT=16 ;

--
-- Dumping data for table `dos_module_news_cat`
--

INSERT INTO `dos_module_news_cat` (`cat_id`, `cat_parent_id`, `cat_title`, `cat_titleen`, `preview`, `previewen`, `tag`, `tagen`, `description`, `descriptionen`, `pic_full`, `cat_order`, `cat_extra1`, `cat_extra2`, `cat_enable`, `dos_usernames_username`) VALUES
(5, 0, 'Xã hội', 'Social', NULL, NULL, 'xa-hoi', 'social', 'Xã hội', 'Social', '', 1, NULL, NULL, 1, '220312'),
(6, 0, 'asdasdadasd', 'dasd', 'asdasdas', 'dadas', 'asdasdasdasddasada', NULL, NULL, NULL, NULL, 0, NULL, NULL, 1, 'dos'),
(7, 0, 'Tin tức sản phẩm', '', NULL, NULL, 'tin-tuc-san-pham', '', 'Tin tức sản phẩm', '', '', 1, NULL, NULL, 1, '260312'),
(8, 0, 'Tin tức công nghệ', '', NULL, NULL, 'tin-tuc-cong-nghe', '', 'Tin tức công nghệ', '', '', 2, NULL, NULL, 1, '260312'),
(15, 0, 'Xã hội', 'Social', NULL, NULL, 'xa-hoi', 'social', 'Xã hội', 'Social', '', 1, NULL, NULL, 1, 'thanhansoft');

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
('day_time', 2456027, 'dos'),
('max_count', 0, 'dos'),
('counter', 0, 'dos'),
('yesterday', 0, 'dos'),
('day_time', 2456029, '220312'),
('max_count', 1, '220312'),
('counter', 4, '220312'),
('yesterday', 0, '220312'),
('day_time', 2456029, '260312'),
('max_count', 0, '260312'),
('counter', 0, '260312'),
('yesterday', 0, '260312'),
('day_time', 2456029, 'thanhansoft'),
('max_count', 0, 'thanhansoft'),
('counter', 0, 'thanhansoft'),
('yesterday', 0, 'thanhansoft');

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
('''127.0.0.1''', 1334130651, 'thanhansoft'),
('''127.0.0.1''', 1334128712, '220312');

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
) ENGINE=InnoDB  DEFAULT CHARSET=utf8 AUTO_INCREMENT=19 ;

--
-- Dumping data for table `dos_module_products`
--

INSERT INTO `dos_module_products` (`record_id`, `title`, `titleen`, `postdate`, `pic_thumb`, `pic_full`, `pic_desc`, `preview`, `previewen`, `content`, `contenten`, `tag`, `tagen`, `description`, `descriptionen`, `hits`, `record_order`, `unit`, `hot`, `specials`, `extra_field1`, `extra_field2`, `extra_field3`, `extra_field4`, `enable`, `dos_module_item_cat_cat_id`) VALUES
(6, 'Nội thất bếp treo tường', 'Kitchen wall', '2012-04-05 03:08:09', '', '', NULL, NULL, NULL, '<p>\r\n	Nội thất bếp treo tường Nội thất bếp treo tường</p>', '<p>\r\n	Kitchen wall Kitchen wall Kitchen wall Kitchen wall</p>', 'noi-that-bep-treo-tuong', 'kitchen-wall', 'noi-that-bep-treo-tuong', 'Kitchen wall', 0, 1, 9990000, 1, NULL, NULL, NULL, NULL, NULL, 1, 10),
(7, 'Nội thất bếp thời trang', 'Kitchen Furniture Fashion', '2012-04-05 03:09:20', '', 'noi-that-bep-thoi-trang.jpg', NULL, NULL, NULL, '<p>\r\n	Nội thất bếp thời trangNội thất bếp thời trangNội thất bếp thời trangNội thất bếp thời trangNội thất bếp thời trang</p>', '<p>\r\n	Kitchen Furniture FashionKitchen Furniture Fashionv Kitchen Furniture Fashion</p>', 'noi-that-bep-thoi-trang', 'kitchen-furniture-fashion', 'Nội thất bếp thời trangNội thất bếp thời trang', 'Kitchen Furniture Fashion Kitchen Furniture Fashion', 0, 2, 2999999, 1, NULL, NULL, NULL, NULL, NULL, 1, 10),
(8, 'Sách hot nhất nóng nhất', 'Book hottest hottest', '2012-04-09 01:11:18', 'sach-hot-nhat-nong-nhat-thumb.jpg', 'sach-hot-nhat-nong-nhat.jpg', NULL, NULL, NULL, '<p>\r\n	chi tiet</p>', '<p>\r\n	detail</p>', 'sach-hot-nhat-nong-nhat', 'book-hottest-hottest', 'sach hot nhieu nguoi doc', 'some read', 0, 3, 200000, 0, NULL, NULL, NULL, NULL, NULL, 1, 10),
(9, 'Sách khoa học công nghệ mới', 'New science and technology policy', '2012-04-09 01:32:02', 'sach-khoa-hoc-cong-nghe-moi-thumb.jpg', 'sach-khoa-hoc-cong-nghe-moi.jpg', NULL, NULL, NULL, '<p>\r\n	chi tiet</p>', '<p>\r\n	detail</p>', 'sach-khoa-hoc-cong-nghe-moi', 'new-science-and-technology-policy', 'sach cong nghe mới', 'New science and technology policy', 0, 4, 400000, 1, NULL, NULL, NULL, NULL, NULL, 1, 8),
(10, 'Sách nhà giáo dục mới', 'The new education policy', '2012-04-09 01:39:13', '', '', NULL, NULL, NULL, '<p>\r\n	chi tiet</p>', '<p>\r\n	add</p>', 'sach-nha-giao-duc-moi', 'the-new-education-policy', 'Sách nhà giáo dục mới', 'The new education policy', 0, 5, 20000, 1, NULL, NULL, NULL, NULL, NULL, 1, 10),
(11, 'Acer Aspire AS4250-E304G32Mikk (002)', '', '2012-04-10 01:14:43', 'acer-aspire-as4250-e304g32mikk-002-thumb.jpg', 'acer-aspire-as4250-e304g32mikk-002.jpg', NULL, NULL, NULL, '<p>\r\n	CPU: AMD Fusion APU Dual core E300 (1.30 GHz 1M cache )<br />\r\n	RAM: 4096 MB DDR3 1333Mhz<br />\r\n	Chipset: AMD SB800<br />\r\n	HDD: 320 GB SATA 5400 rpm<br />\r\n	ODD: DVD RW/ Reader card/ Camera<br />\r\n	Graphics: AMD Radeon HD6310 DDR3 256 MB<br />\r\n	Display: 14.00" HD LED LCD<br />\r\n	Network: 802.11bgn / 100/1000 base /<br />\r\n	Battery: 6 cell<br />\r\n	Weight: 2.20 Kg<br />\r\n	OS: Free DOS<br />\r\n	Other: Vỏ chống trầy - Vga 256Mb</p>', '', 'acer-aspire-as4250-e304g32mikk-002', '', 'Acer Aspire AS4250-E304G32Mikk (002)', '', 0, 1, 7700000, 1, NULL, NULL, NULL, NULL, NULL, 1, 12),
(12, 'Asus K43E-VX740', '', '2012-04-10 01:15:54', 'asus-k43e-vx740-thumb.jpg', 'asus-k43e-vx740.jpg', NULL, NULL, NULL, '<p>\r\n	CPU: Intel Core i3 2350M (2.30 GHz 3M L2 cache, 4 threads )<br />\r\n	RAM: 4096 MB DDR3 1333Mhz<br />\r\n	Chipset: Intel HM67<br />\r\n	HDD: 320 GB SATA 5400 rpm<br />\r\n	ODD: DVD RW/ reader card/ Camera/ Bluetooth/ HDMI/ USB 3.0/ Loa Altec Lansing<br />\r\n	Graphics: NVIDIA Geforce GT610 DDR3 2 GB<br />\r\n	Display: 14.00" HD Color Shine SLIM (LED backlight)<br />\r\n	Network: 802.11bgn / 100/1000 base /<br />\r\n	Battery: 6 cell<br />\r\n	Weight: 2.20 Kg<br />\r\n	OS: Free DOS<br />\r\n	Other: Màu nâu nhám- Vga rời 2Gb</p>', '', 'asus-k43e-vx740', '', 'Asus K43E-VX740', '', 0, 2, 13000000, 1, NULL, NULL, NULL, NULL, NULL, 1, 12),
(13, 'Gateway NV57H08v-2352G64Mn (004)', '', '2012-04-10 01:21:57', 'gateway-nv57h08v-2352g64mn-004-thumb.jpg', 'gateway-nv57h08v-2352g64mn-004.jpg', NULL, NULL, NULL, '<p>\r\n	CPU: Intel Core i5 2450M (2.50 GHz 3M L2 cache, 4 threads, turbo boost 3.1Ghz )<br />\r\n	RAM: 4096 MB DDR3 1333Mhz<br />\r\n	Chipset: Intel HM67<br />\r\n	HDD: 750 GB SATA 5400 rpm<br />\r\n	ODD: DVD RW/ Reader card/ Camera/ Bluetooth/ HDMI/ USB 3.0<br />\r\n	Graphics: NVIDIA Geforce GT630M DDR3 2 GB<br />\r\n	Display: 15.60" HD LED LCD<br />\r\n	Network: 802.11bgn / 100/1000 base /<br />\r\n	Battery: 6 cell<br />\r\n	Weight: 2.60 Kg<br />\r\n	OS: Free DOS<br />\r\n	Other: Màu đen bóng, bàn phím số - Vga rời 2G</p>', '', 'gateway-nv57h08v-2352g64mn-004', '', 'Gateway NV57H08v-2352G64Mn (004)', '', 0, 3, 9000000, 1, NULL, NULL, NULL, NULL, NULL, 1, 12),
(14, 'SONY VAIO Z212GX/B', '', '2012-04-10 01:23:00', 'sony-vaio-z212gxb-thumb.jpg', 'sony-vaio-z212gxb.jpg', NULL, NULL, NULL, '<p>\r\n	CPU: Intel Core i5 2410M (2.30 GHz 3M L2 cache, 4 thread, turbo boost 2.9Ghz )<br />\r\n	RAM: 4096 MB DDR3 1333Mhz<br />\r\n	Chipset: Intel HM65<br />\r\n	HDD: 128 GB SSD<br />\r\n	ODD: Slot load DVDRW/ reader card/ Camera/ Bluetooth 3.0/ USB 3.0/ HDMI<br />\r\n	Graphics: AMD Radeon HD6650 DDR3 1 GB<br />\r\n	Display: 13.30" Wide (WXGATFT LED backlight)<br />\r\n	Network: 802.11bgn / 100/1000 base /<br />\r\n	Battery: 6 cell<br />\r\n	Weight: 1.16 Kg<br />\r\n	OS: Windows 7 Pro<br />\r\n	Other: Màu đen, mỏng nhẹ - vga rời 1Gb</p>', '', 'sony-vaio-z212gxb', '', '', '', 0, 4, 39000000, 1, NULL, NULL, NULL, NULL, NULL, 1, 12),
(15, 'HP Mini 110-3713TU (LV829PA)', '', '2012-04-10 01:24:39', 'hp-mini-110-3713tu-lv829pa-thumb.jpg', 'hp-mini-110-3713tu-lv829pa.jpg', NULL, NULL, NULL, '<p>\r\n	CPU: Intel Atom N570 (1.66 GHz 512Kb )<br />\r\n	RAM: 1024 MB DDR3 1333Mhz<br />\r\n	Chipset: Intel GMA<br />\r\n	HDD: 320 GB SATA 5400 rpm<br />\r\n	ODD: No optical/ Webcam /Bluetooth / Reader card<br />\r\n	Graphics: INTEL GMA 3150 - WIN7 256 MB<br />\r\n	Display: 10.10" WSVGA LED HP Anti-glare Display<br />\r\n	Network: 802.11bgN / 100/1000 /<br />\r\n	Battery: Pin 6cell<br />\r\n	Weight: 1.25 Kg<br />\r\n	OS: Free DOS<br />\r\n	Other: Màu đen nhỏ gọn</p>', '', 'hp-mini-110-3713tu-lv829pa', '', '', '', 0, 5, 7800000, 1, NULL, NULL, NULL, NULL, NULL, 1, 15),
(16, 'Dell Inspiron 14R-N4110 200-83637', '', '2012-04-10 01:51:58', 'dell-inspiron-14r-n4110-200-83637-thumb.jpg', 'dell-inspiron-14r-n4110-200-83637.jpg', NULL, NULL, NULL, '<p>\r\n	CPU: Intel Core i3 2350M (2.30 GHz 3M L2 cache, 4 threads )<br />\r\n	RAM: 4096 MB DDR3 1333Mhz<br />\r\n	Chipset: Intel HM67<br />\r\n	HDD: 320 GB SATA 5400 rpm<br />\r\n	ODD: DVD RW/ Reader card/ Camera/ Bluetooth/ HDMI<br />\r\n	Graphics: NVIDIA Geforce GT610 DDR3 2 GB<br />\r\n	Display: 15.60" HD Color Shine SLIM (LED backlight)<br />\r\n	Network: 802.11bgn / 100/1000 base /<br />\r\n	Battery: 6 cell<br />\r\n	Weight: 2.60 Kg<br />\r\n	OS: Free DOS<br />\r\n	Other: Màu nâu nhám, keyboard chiclet - Vga rời 2Gb</p>', '', 'dell-inspiron-14r-n4110-200-83637', '', '', '', 0, 6, 14000000, 1, NULL, NULL, NULL, NULL, NULL, 1, 15),
(17, 'Dell Vostro V131-MR5ND3', '', '2012-04-10 01:52:48', 'dell-vostro-v131-mr5nd3-thumb.jpg', 'dell-vostro-v131-mr5nd3.jpg', NULL, NULL, NULL, '<p>\r\n	CPU: Intel Core i3 2350M (2.30 GHz 3M L2 cache, 4 threads )<br />\r\n	RAM: 2048 MB DDR3 1333Mhz<br />\r\n	Chipset: Intel HM67<br />\r\n	HDD: 500 GB SATA 7200 rpm<br />\r\n	ODD: No optical/ Reader card/ Camera/ Bluetooth 3.0/ 2x USB 3.0/ HDMI<br />\r\n	Graphics: INTEL HD Graphics 3000 – WIN7 x86 : 782MB 512 MB<br />\r\n	Display: 13.30" HD WLED Anti-Glare<br />\r\n	Network: 802.11bgn / 100/1000 base /<br />\r\n	Battery: 6 cell<br />\r\n	Weight: 1.86 Kg<br />\r\n	OS: Free DOS<br />\r\n	Other: Thiết kế mỏng, nhẹ thời trang - Màu đỏ, xám bạc</p>', '', 'dell-vostro-v131-mr5nd3', '', 'Dell Vostro V131-MR5ND3', '', 0, 7, 14700000, 1, NULL, NULL, NULL, NULL, NULL, 1, 15),
(18, 'Dell Vostro AVN-1450-2G', '', '2012-04-10 01:53:51', 'dell-vostro-avn-1450-2g-thumb.jpg', 'dell-vostro-avn-1450-2g.jpg', NULL, NULL, NULL, '<p>\r\n	CPU: Intel Core i5 2430M (2.40 GHz 3M L2 cache, 4 threads, turbo boost 3.0Ghz )<br />\r\n	RAM: 2048 MB DDR3 1333Mhz<br />\r\n	Chipset: Intel HM67<br />\r\n	HDD: 500 GB SATA 5400 rpm<br />\r\n	ODD: DVD RW/ Reader card/ Camera/ Bluetooth/ HDMI<br />\r\n	Graphics: AMD Radeon HD6470 DDR3 512 MB<br />\r\n	Display: 14.00" HD LED Alti -Glare®<br />\r\n	Network: 802.11bgn / 100/1000 base /<br />\r\n	Battery: 6 cell<br />\r\n	Weight: 2.30 Kg<br />\r\n	OS: Free DOS<br />\r\n	Other: Màu xám vỏ vân chống xướt</p>', '', 'dell-vostro-avn-1450-2g', '', 'Dell Vostro AVN-1450-2G', '', 0, 8, 13800000, 1, NULL, NULL, NULL, NULL, NULL, 1, 15);

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
(7, 0, 'Nội thất sofa phòng khách', 'Furniture living room sofa', NULL, NULL, 'noi-that-sofa-phong-khach', 'furniture-living-room-sofa', 'Nội thất sofa khách', 'Furniture living room sofa', 'noi-that-sofa-phong-khach.jpg', NULL, 1, NULL, NULL, 1, '220312'),
(8, 0, 'Nội thất bếp', 'Interior new kitchen', NULL, NULL, 'noi-that-bep', 'interior-new-kitchen', 'Noi that bep', 'Interior new kitchen', 'noi-that-bep.jpg', NULL, 2, NULL, NULL, 1, '220312'),
(9, 0, 'Nội thất giường ngủ loại 1 chuyen cho vip nhat', 'Interior of a specialized bed for vip nhat', NULL, NULL, 'noi-that-giuong-ngu-loai-1-chuyen-cho-vip-nhat', 'interior-of-a-specialized-bed-for-vip-nhat', 'Nội thất giường ngủ loại 1 chuyen cho vip nhat', 'Interior of a specialized bed for vip nhat', 'noi-that-giuong-ngu-loai-1-chuyen-cho-vip-nhat.jpg', NULL, 3, NULL, NULL, 1, '220312'),
(10, 0, 'Nhà bếp', 'Kitchen Furniture', NULL, NULL, 'nha-bep', 'kitchen-furniture', 'Nha bep', 'Kitchen Furniture', 'nha-bep.jpg', NULL, 4, NULL, NULL, 1, '220312'),
(11, 10, 'Sách khoa học xã hội', 'Social sciences books', NULL, NULL, 'sach-khoa-hoc-xa-hoi', 'social-sciences-books', 'Sách khoa học xã hội', 'Social sciences books', '', NULL, 5, NULL, NULL, 1, '220312'),
(12, 0, 'Laptop', '', NULL, NULL, 'laptop', '', '', '', 'laptop.jpg', NULL, 1, NULL, NULL, 1, '260312'),
(13, 0, 'Máy bộ', '', NULL, NULL, 'may-bo', '', 'Máy bộ', '', '', NULL, 2, NULL, NULL, 1, '260312'),
(14, 0, 'Linh kiện laptop', '', NULL, NULL, 'linh-kien-laptop', '', 'Linh kiện laptop', '', '', NULL, 3, NULL, NULL, 1, '260312'),
(15, 0, 'Linh kiện máy bộ', '', NULL, NULL, 'linh-kien-may-bo', '', 'Linh kiện máy bộ', '', '', NULL, 4, NULL, NULL, 1, '260312'),
(16, 14, 'Bộ vi xử lý', '', NULL, NULL, 'bo-vi-xu-ly', '', 'Bộ vi xử lý', '', 'bo-vi-xu-ly.jpg', NULL, 5, NULL, NULL, 1, '260312'),
(17, 14, 'Ram', '', NULL, NULL, 'ram', '', 'Ram', '', 'ram.Jpeg', NULL, 6, NULL, NULL, 1, '260312'),
(46, 0, 'Nội thất sofa phòng khách', 'Furniture living room sofa', NULL, NULL, 'noi-that-sofa-phong-khach', 'furniture-living-room-sofa', 'Nội thất sofa khách', 'Furniture living room sofa', 'noi-that-sofa-phong-khach.jpg', NULL, 1, NULL, NULL, 1, 'thanhansoft'),
(47, 0, 'Nội thất bếp', 'Interior new kitchen', NULL, NULL, 'noi-that-bep', 'interior-new-kitchen', 'Noi that bep', 'Interior new kitchen', 'noi-that-bep.jpg', NULL, 2, NULL, NULL, 1, 'thanhansoft'),
(48, 0, 'Nội thất giường ngủ loại 1 chuyen cho vip nhat', 'Interior of a specialized bed for vip nhat', NULL, NULL, 'noi-that-giuong-ngu-loai-1-chuyen-cho-vip-nhat', 'interior-of-a-specialized-bed-for-vip-nhat', 'Nội thất giường ngủ loại 1 chuyen cho vip nhat', 'Interior of a specialized bed for vip nhat', 'noi-that-giuong-ngu-loai-1-chuyen-cho-vip-nhat.jpg', NULL, 3, NULL, NULL, 1, 'thanhansoft'),
(49, 0, 'Nhà bếp', 'Kitchen Furniture', NULL, NULL, 'nha-bep', 'kitchen-furniture', 'Nha bep', 'Kitchen Furniture', 'nha-bep.jpg', NULL, 4, NULL, NULL, 1, 'thanhansoft'),
(50, 10, 'Sách khoa học xã hội', 'Social sciences books', NULL, NULL, 'sach-khoa-hoc-xa-hoi', 'social-sciences-books', 'Sách khoa học xã hội', 'Social sciences books', '', NULL, 5, NULL, NULL, 1, 'thanhansoft');

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
) ENGINE=InnoDB  DEFAULT CHARSET=utf8 AUTO_INCREMENT=5 ;

--
-- Dumping data for table `dos_module_services`
--

INSERT INTO `dos_module_services` (`record_id`, `title`, `titleen`, `preview`, `previewen`, `content`, `contenten`, `pic_full`, `hit`, `created`, `record_order`, `hot`, `extra_field1`, `extra_field2`, `tag`, `tagen`, `description`, `descriptionen`, `activated`, `dos_usernames_username`) VALUES
(4, 'Dịch vụ vẫn chuyển tận nơi', 'Transport services', NULL, NULL, '<p>\r\n	Dịch vụ vẫn chuyển Dịch vụ vẫn chuyển Dịch vụ vẫn chuyển Dịch vụ vẫn chuyển</p>', '<p>\r\n	Transport services Transport services Transport services Transport services</p>', '', 2, '2012-04-10 02:55:14', 1, 0, NULL, NULL, 'dich-vu-van-chuyen-tan-noi', 'transport-services', 'Dịch vụ vẫn chuyển', 'Transport services', 1, '260312');

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
) ENGINE=InnoDB  DEFAULT CHARSET=utf8 AUTO_INCREMENT=68 ;

--
-- Dumping data for table `dos_module_supports`
--

INSERT INTO `dos_module_supports` (`support_id`, `support_name`, `support_nameen`, `support_phone`, `support_value`, `support_order`, `support_type`, `dos_usernames_username`) VALUES
(45, '', '', '0929001001', 'mailgoogle', 0, 'yahoo', '220312'),
(54, 'Hỗ trợ khách hàng', '', '0909 999 888', 'mailgoogle', 2, 'yahoo', '260312'),
(55, 'Linh kiện - máy bộ - Công ty', '', '01230 456 789', 'mailpccase', 1, 'yahoo', '260312'),
(67, '', '', '0929001001', 'mailgoogle', 0, 'yahoo', 'thanhansoft');

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
) ENGINE=InnoDB  DEFAULT CHARSET=utf8 AUTO_INCREMENT=2 ;

--
-- Dumping data for table `dos_module_video`
--

INSERT INTO `dos_module_video` (`record_id`, `title`, `titleen`, `postdate`, `tag`, `tagen`, `description`, `descriptionen`, `pic_thumb`, `url`, `record_order`, `hits`, `extra_field1`, `extra_field2`, `hot`, `enable`, `dos_module_item_cat_cat_id`) VALUES
(1, 'Có gì hot', 'What''s hot', '2012-04-09 00:09:19', 'co-gi-hot', 'whats-hot', 'Có gì hot', 'What''s hot', 'co-gi-hot.jpg', 'http://www.youtube.com/watch?v=9Ko3wWP6Z9Y&feature=fvsr', 1, 0, NULL, NULL, 1, 1, 1);

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
(1, 0, '', 'Video mới nhất', 'Latest Videos', 'video-moi-nhat', 'latest-videos', 'Video mới nhất', 'Latest Videos', 1, 1, '220312'),
(6, 0, '', 'Video mới nhất', 'Latest Videos', 'video-moi-nhat', 'latest-videos', 'Video mới nhất', 'Latest Videos', 1, 1, 'thanhansoft');

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
('analytics', '<script type="text/javascript">\r\n\r\n  var _gaq = _gaq || [];\r\n  _gaq.push([''_setAccount'', ''UA-30151015-1'']);\r\n  _gaq.push([''_setDomainName'', ''dos.vn'']);\r\n  _gaq.push([''_trackPageview'']);\r\n\r\n  (function() {\r\n    var ga = document.createElement(''script''); ga.type = ''text/javascript''; ga.async = true;\r\n    ga.src = (''https:'' == document.location.protocol ? ''https://ssl'' : ''http://www'') + ''.google-analytics.com/ga.js'';\r\n    var s = document.getElementsByTagName(''script'')[0]; s.parentNode.insertBefore(ga, s);\r\n  })();\r\n\r\n</script>', 'dos');

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
) ENGINE=InnoDB  DEFAULT CHARSET=utf8 AUTO_INCREMENT=2 ;

--
-- Dumping data for table `dos_sys_articles_cat`
--

INSERT INTO `dos_sys_articles_cat` (`cat_id`, `cat_parent_id`, `cat_title`, `cat_titleen`, `preview`, `previewen`, `tag`, `description`, `pic_full`, `cat_order`, `cat_extra1`, `cat_extra2`, `cat_enable`) VALUES
(1, 0, 'Hướng dẫn sử dụng web', NULL, 'Các video, bài viết hướng dẫn sử dụng các chức năng, cấu hình các thông số web tại Dos.vn', NULL, 'huong-dan-su-dung-web', 'Các video, bài viết hướng dẫn sử dụng các chức năng, cấu hình các thông số web tại Dos.vn', NULL, 0, NULL, NULL, 1);

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
('010312', 'default', 'list_supports'),
('010312', 'default', 'products_hot'),
('010312', 'default', 'products_new'),
('010312', 'products', 'advs_left'),
('010312', 'products', 'list_supports'),
('010312', 'products', 'menu_products'),
('010312', 'products', 'products_hot'),
('010312', 'services', 'advs_left'),
('010312', 'services', 'list_supports'),
('010312', 'services', 'menu_services'),
('010312', 'services', 'products_hot'),
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
('220312', 'about', 'list_supports'),
('220312', 'about', 'menu_about'),
('220312', 'about', 'news_new'),
('220312', 'about', 'products_hot'),
('220312', 'contact', 'advs_left'),
('220312', 'contact', 'list_supports'),
('220312', 'contact', 'menu_products'),
('220312', 'contact', 'news_new'),
('220312', 'contact', 'products_hot'),
('220312', 'default', 'about_home'),
('220312', 'default', 'advs_left'),
('220312', 'default', 'list_supports'),
('220312', 'default', 'menu_products'),
('220312', 'default', 'news_new'),
('220312', 'default', 'products_hot'),
('220312', 'default', 'products_new'),
('220312', 'default', 'video_hot'),
('220312', 'news', 'menu_news'),
('220312', 'news', 'news_hot'),
('220312', 'news', 'news_new'),
('220312', 'products', 'list_supports'),
('220312', 'products', 'menu_products'),
('220312', 'products', 'news_new'),
('220312', 'services', 'menu_services'),
('220312', 'services', 'news_new'),
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
('220312', 'groupitsoft@gmail.com', 'e10adc3949ba59abbe56e057f20f883e', '2012-04-05 02:08:09', '', '', '', 'user', 'vi|en', NULL, '2012-05-04 16:00:00', 1, 1, '220312', 19, 'noi-that-ngoai-that'),
('260312', 'groupitsoft@gmail.com', 'e10adc3949ba59abbe56e057f20f883e', '2012-04-10 00:35:32', NULL, NULL, NULL, 'user', 'vi|en', NULL, '2012-05-09 16:00:00', 1, 1, '260312', 14, 'bds-kien-truc-xay-dung'),
('dos', 'thanhansoft@gmail.com', '1960fdca5ecf16c0ddb74fdc814ee348', '2012-02-06 09:58:28', '', '', '', 'administrator', 'vi|en', NULL, '0000-00-00 00:00:00', 0, 1, '111120', 2, 'thoi-trang'),
('thanhan', 'thanhansoft@gmail.com', 'e10adc3949ba59abbe56e057f20f883e', '2012-04-11 04:02:18', NULL, NULL, NULL, 'user', 'vi', NULL, '2012-05-10 17:00:00', 0, 1, '220312', 19, 'noi-that-ngoai-that'),
('thanhansoft', 'thanhansoft@gmail.com', 'e10adc3949ba59abbe56e057f20f883e', '2012-04-11 03:05:20', NULL, NULL, NULL, 'user', 'vi', NULL, '2012-05-10 17:00:00', 0, 1, '220312', 18, 'noi-that-ngoai-that');

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
