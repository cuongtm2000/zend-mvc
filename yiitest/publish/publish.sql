-- phpMyAdmin SQL Dump
-- version 3.4.5
-- http://www.phpmyadmin.net
--
-- Host: localhost
-- Generation Time: Aug 27, 2012 at 11:03 AM
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
('advs_left_height', 267, '', '180512'),
('advs_left_width', 203, '', '180512'),
('banner_height', 323, '', '180512'),
('banner_width', 929, '', '180512'),
('logo_height', 143, '', '180512'),
('logo_width', 970, '', '180512'),
('max_image_height', 950, '', '180512'),
('max_image_width', 750, '', '180512'),
('news_cat_height', 100, '', '180512'),
('news_cat_width', 143, '', '180512'),
('news_height_thumb', 100, '', '180512'),
('news_num_paging_cat', 10, '', '180512'),
('news_num_paging_hot', 8, '', '180512'),
('news_num_paging_index', 10, '', '180512'),
('news_num_paging_new', 8, '', '180512'),
('news_width_thumb', 143, '', '180512'),
('products_cat_height', 145, '', '180512'),
('products_cat_width', 145, '', '180512'),
('products_height', 650, '', '180512'),
('products_height_thumb', 145, '', '180512'),
('products_num_paging_cat', 20, '', '180512'),
('products_num_paging_hot', 20, '', '180512'),
('products_num_paging_new', 20, '', '180512'),
('products_num_paging_other', 5, '', '180512'),
('products_width', 650, '', '180512'),
('products_width_thumb', 145, '', '180512'),
('services_height', 950, '', '180512'),
('services_width', 750, '', '180512'),
('video_height_thumb', 145, '', '180512'),
('video_num_paging_cat', 8, '', '180512'),
('video_num_paging_index', 8, '', '180512'),
('video_width_thumb', 145, '', '180512');

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
('180512', 'products', 'scroll.css|jquery.fancybox.css', 'css'),
('180512', 'products', 'jcarousellite_1.0.1.js|scroller.js|jquery.fancybox.js|jquery.scroll-1.4.2-min.js|jquery.serialScroll-1.2.2-min.js|product.js', 'javascript'),
('180512', 'video', 'prettyPhoto.css', 'css'),
('180512', 'video', 'jquery.prettyPhoto.js', 'javascript');

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
('about', 'thinhduong'),
('advs', 'thinhduong'),
('banner', 'thinhduong'),
('contact', 'thinhduong'),
('news', 'thinhduong'),
('products', 'thinhduong'),
('services', 'thinhduong'),
('supports', 'thinhduong'),
('video', 'thinhduong');

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
) ENGINE=InnoDB  DEFAULT CHARSET=utf8 AUTO_INCREMENT=374 ;

--
-- Dumping data for table `dos_module_abouts`
--

INSERT INTO `dos_module_abouts` (`record_id`, `title`, `titleen`, `content`, `contenten`, `hit`, `created`, `record_order`, `hot`, `extra_field1`, `extra_field2`, `tag`, `tagen`, `description`, `descriptionen`, `activated`, `dos_usernames_username`) VALUES
(371, 'GIỚI THIỆU CÔNG TY', '', '<p style="text-align:justify;"><strong><span style="color:#ff0000;">Chào mừng quý khách ghé thăm website của Công ty Bất Động Sản Thịnh Đường.</span></strong></p>\n<p style="text-align:justify;">Nhu cầu mua BĐS để ở cũng như để đầu tư ngày càng tăng cao, việc mua bán, chuyển nhượng BĐS rất cần đến sự hỗ trợ của một Công ty chức năng.</p>\n<p style="text-align:justify;">Với ngành nghề chuyên môi giới và tiếp thị Bất Động Sản, <strong>Thịnh Đường</strong> bước đầu tập trung vào các BĐS nhỏ lẻ tại Thành phố Biên Hòa, để đáp ứng một cách nhanh nhất cho nhu cầu tìm kiếm thông tin của quý vị.</p>\n<p style="text-align:justify;">Chúng tôi cũng đặc biệt mong nhận được sự hợp tác tốt đẹp của các chủ đầu tư khi muốn phân phối dự án tại Biên Hòa.</p>\n<p style="text-align:justify;"><span style="color:#000080;"><strong>NGÀNH NGHỀ KINH DOANH</strong></span></p>\n<p style="text-align:justify;">• Môi giới Bất động sản<br />• Tư vấn, thực hiện Dịch vụ pháp lý<br />• Quảng cáo Bất động sản<br />• Thẩm định giá Bất động sản<br />• Tư vấn đầu tư và kinh doanh BĐS</p>', '', 440, '2012-08-08 12:32:35', 1, 1, '', '', 'gioi-thieu-cong-ty', '', '', '', 1, 'thinhduong'),
(372, 'Giới thiệu về công ty', '', '<p style="text-align:justify;"><span style="font-size:11pt;"><strong><span style="color:#ff0000;">Chào mừng quý khách ghé thăm website của Công ty Bất Động Sản Vàng Ngọc Phát.</span></strong></span></p>\n<p style="text-align:justify;">Nhu cầu mua BĐS để ở cũng như để đầu tư ngày càng tăng cao, việc mua bán, chuyển nhượng BĐS rất cần đến sự hỗ trợ của một Công ty chức năng.</p>\n<p style="text-align:justify;">Với ngành nghề chuyên môi giới và tiếp thị Bất Động Sản, <strong>Thịnh Đường</strong> bước đầu tập trung vào các BĐS nhỏ lẻ tại Thành phố Biên Hòa, để đáp ứng một cách nhanh nhất cho nhu cầu tìm kiếm thông tin của quý vị.</p>\n<p style="text-align:justify;">Chúng tôi cũng đặc biệt mong nhận được sự hợp tác tốt đẹp của các chủ đầu tư khi muốn phân phối dự án tại Biên Hòa.</p>\n<p style="text-align:justify;"><strong><span style="color:#000080;">NGÀNH NGHỀ KINH DOANH<img style="float:right;" src="/public/userfiles/image/vangngocphat/image/gt.jpg" alt="" width="200" height="96" /></span></strong></p>\n<p style="text-align:justify;">• Môi giới Bất động sản<br />• Tư vấn, thực hiện Dịch vụ pháp lý<br />• Quảng cáo Bất động sản<br />• Thẩm định giá Bất động sản<br />• Tư vấn đầu tư và kinh doanh BĐS</p>\n<p style="text-align:justify;"> </p>', '', 58, '2012-08-08 12:32:35', 3, 0, '', '', 'gioi-thieu-ve-cong-ty', '', '', '', 1, 'thinhduong'),
(373, 'Lĩnh vực hoạt động', '', '<p style="text-align:justify;"><span style="color:#ff0000;font-size:12pt;"><strong>NGÀNH NGHỀ KINH DOANH:</strong></span></p>\n<p style="text-align:justify;">• Môi giới Bất động sản</p>\n<p style="text-align:justify;">• Tư vấn, thực hiện Dịch vụ pháp lý</p>\n<p style="text-align:justify;">• Quảng cáo Bất động sản</p>\n<p style="text-align:justify;">• Thẩm định giá Bất động sản</p>\n<p style="text-align:justify;">• Tư vấn đầu tư và kinh doanh BĐS</p>', '', 13, '2012-08-08 12:32:35', 2, 0, '', '', 'linh-vuc-hoat-dong', '', '', '', 1, 'thinhduong');

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
) ENGINE=InnoDB  DEFAULT CHARSET=utf8 AUTO_INCREMENT=596 ;

--
-- Dumping data for table `dos_module_advs`
--

INSERT INTO `dos_module_advs` (`record_id`, `title`, `titleen`, `pic_thumb`, `url`, `create_date`, `start_date`, `end_date`, `hits`, `record_order`, `position`, `type`, `enable`, `dos_usernames_username`) VALUES
(592, 'Quảng cáo', '', 'quang-cao.jpeg', 'http://dos.vn', '2012-08-08 12:32:35', '2012-04-30 16:00:00', '2012-06-29 16:00:00', 0, 2, 'left', '_bank', 1, 'thinhduong'),
(593, 'Quảng cáo 1', '', 'quang-cao-1.jpeg', 'http://dos.vn', '2012-08-08 12:32:35', '2012-04-30 16:00:00', '2012-06-29 16:00:00', 0, 3, 'left', '_bank', 1, 'thinhduong'),
(594, 'Quảng cáo 2', '', 'quang-cao-2.jpeg', 'http://dos.vn', '2012-08-08 12:32:35', '2012-04-30 16:00:00', '2012-06-28 16:00:00', 0, 4, 'left', '_bank', 1, 'thinhduong'),
(595, 'Quảng cáo 3', '', 'quang-cao-3.jpeg', 'http://dos.vn', '2012-08-08 12:32:35', '2012-04-30 16:00:00', '2012-05-30 16:00:00', 0, 1, 'left', '_bank', 1, 'thinhduong');

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
) ENGINE=InnoDB  DEFAULT CHARSET=utf8 AUTO_INCREMENT=2871 ;

--
-- Dumping data for table `dos_module_banners`
--

INSERT INTO `dos_module_banners` (`banner_id`, `banner_date`, `banner_name`, `banner_url`, `banner_link`, `banner_order`, `banner_type`, `position`, `enable`, `dos_usernames_username`) VALUES
(2581, '2012-08-08 12:32:35', 'Banner 4', 'banner-4.jpg', '', 2, 'banners', 'services', 1, 'thinhduong'),
(2582, '2012-08-08 12:32:35', 'Banner 3', 'banner-3.jpg', '', 3, 'banners', 'news', 1, 'thinhduong'),
(2583, '2012-08-08 12:32:35', 'Banner ', 'banner.jpg', '', 4, 'banners', 'default', 1, 'thinhduong'),
(2584, '2012-08-08 12:32:35', 'Banner 5', 'banner-5.jpg', '', 5, 'banners', 'news', 1, 'thinhduong'),
(2585, '2012-08-08 12:32:35', 'Banner 8', 'banner-8.jpg', '', 6, 'banners', 'about', 1, 'thinhduong'),
(2586, '2012-08-08 12:32:35', 'Banner 7', 'banner-7.jpg', '', 7, 'banners', 'about', 1, 'thinhduong'),
(2587, '2012-08-08 12:32:35', 'Banner 6', 'banner-6.jpg', '', 8, 'banners', 'products', 1, 'thinhduong'),
(2588, '2012-08-08 12:32:35', 'Banner 1', 'banner-1.jpg', '', 9, 'banners', 'products', 1, 'thinhduong'),
(2589, '2012-08-08 12:32:35', 'Banner 2', 'banner-2.jpg', '', 10, 'banners', 'services', 1, 'thinhduong'),
(2590, '2012-08-08 12:32:35', 'Banner 9', 'banner-9.jpg', '', 11, 'banners', 'default', 1, 'thinhduong'),
(2591, '2012-08-08 12:32:35', 'Banner 10', 'banner-10.jpg', '', 12, 'banners', 'contact', 1, 'thinhduong'),
(2592, '2012-08-08 12:32:35', 'Banner 11', 'banner-11.jpg', '', 13, 'banners', 'default', 1, 'thinhduong'),
(2869, '2012-08-27 07:33:15', 'video', 'video.jpg', '', 14, 'banners', 'video', 1, 'thinhduong'),
(2870, '2012-08-27 07:40:00', 'Logo', 'logo.png', '', 15, 'logo', 'default', 1, 'thinhduong');

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
('Trang chủ', '', 'default', '', 1, '', '', '', '', 'thinhduong'),
('Giới thiệu', '', 'about', '', 2, '', '', '', '', 'thinhduong'),
('Bất động sản', '', 'products', '', 3, '', '', '', '', 'thinhduong'),
('Đào tạo', '', 'services', '', 4, '', '', '', '', 'thinhduong'),
('Thông tin', '', 'news', '', 5, '', '', '', '', 'thinhduong'),
('Video', '', 'video', '', 6, '', '', '', '', 'thinhduong'),
('Liên hệ', '', 'contact', '', 7, '', '', '', '', 'thinhduong');

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
) ENGINE=InnoDB DEFAULT CHARSET=utf8 AUTO_INCREMENT=1 ;

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
) ENGINE=InnoDB  DEFAULT CHARSET=utf8 AUTO_INCREMENT=348 ;

--
-- Dumping data for table `dos_module_news_cat`
--

INSERT INTO `dos_module_news_cat` (`cat_id`, `cat_parent_id`, `cat_title`, `cat_titleen`, `preview`, `previewen`, `tag`, `tagen`, `description`, `descriptionen`, `pic_full`, `cat_order`, `cat_extra1`, `cat_extra2`, `cat_enable`, `dos_usernames_username`) VALUES
(345, 0, 'Tin thị trường bất động sản', '', '', '', 'tin-thi-truong-bat-dong-san', '', '', '', '', 1, '', '', 1, 'thinhduong'),
(346, 0, 'Thông tin đào tạo', '', '', '', 'thong-tin-dao-tao', '', '', '', '', 2, '', '', 1, 'thinhduong'),
(347, 0, 'Tin tức', '', '', '', 'tin-tuc', '', '', '', '', 3, '', '', 1, 'thinhduong');

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
('day_time', 2456167),
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
('''127.0.0.1''', 1346057832);

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
) ENGINE=InnoDB  DEFAULT CHARSET=utf8 AUTO_INCREMENT=8159 ;

--
-- Dumping data for table `dos_module_products`
--

INSERT INTO `dos_module_products` (`record_id`, `title`, `titleen`, `postdate`, `pic_thumb`, `pic_full`, `pic_desc`, `preview`, `previewen`, `content`, `contenten`, `tag`, `tagen`, `description`, `descriptionen`, `hits`, `record_order`, `unit`, `hot`, `specials`, `extra_field1`, `extra_field2`, `extra_field3`, `extra_field4`, `enable`, `dos_module_item_cat_cat_id`) VALUES
(8127, 'Nhà Trảng Dài 110m²', '', '2012-08-08 12:32:35', 'nha-trang-dai-110m-thumb.jpeg', 'nha-trang-dai-110m.jpg', 'nha-trang-dai-110m-desc-1.JPG|nha-trang-dai-110m-desc-2.jpg|nha-trang-dai-110m-desc-3.JPG|nha-trang-dai-110m-desc-4.jpg', '<p><strong>Mã Sp : NTD - VNP</strong></p>\n<p>Khu phố 5 - Phường Trảng Dài</p>\n<p>Diện tích : 4,8 x 23 = 110 m²</p>\n<p>Pháp lý : Giấy tờ hợp lệ</p>\n<p>Giá : 1,7 tỷ (thương lượng)</p>\n<p>Hướng: Tây Nam</p>\n<p> </p>\n<p> </p>\n<p> </p>', '', '<p style="text-align:justify;">Nhà có vị trí đẹp vào ở liền, có 1 phòng khách, 3 phòng ngủ, 1 nhà ăn, 1 phòng karaokê, 1 phòng thờ,có máy nước nóng năng lượng mặt trời, đầy đủ điện nước, nội thất cao cấp, tặng 2 máy lạnh, đường rộng 10 m, khu dân cư đông, an ninh tốt, nhiều tiện ích xung quanh, gần bệnh viện, gần chợ Phú Thọ, mặt bằng buôn bán kinh doanh rất tốt, trường học, nhà trẻ, thích hợp ở lâu dài.</p>\n<p style="text-align:justify;">Liên hệ : 0977 369 322 A.Chương</p>', '', 'nha-trang-dai-110m', '', 'nhà trảng dài\n\nnhà đất biên hòa\n\nnhà đất đồng nai\n\nhttp://vangngocphat.com', '', 0, 19, '', 0, 0, '', '', '', '', 1, 1473),
(8128, 'Nhà Trảng Dài 220m²', '', '2012-08-08 12:32:35', 'nha-trang-dai-220m-thumb.jpeg', 'nha-trang-dai-220m.jpg', 'nha-trang-dai-220m-desc-1.jpg|nha-trang-dai-220m-desc-2.JPG', '<p><strong>Mã Sp : NTD - VNP</strong></p>\n<p>Khu phố 5 - Phường Trảng Dài</p>\n<p>Diện tích : 6 x 36,5 = 220 m²</p>\n<p>Pháp lý : Sổ đỏ chính chủ</p>\n<p>Giá : 1,350 tỷ (thương lượng)</p>\n<p>Hướng: Đông Nam</p>\n<p> </p>\n<p> </p>', '', '<p style="text-align:justify;">Nhà có vị trí đẹp vào ở liền, có 1 phòng khách, 3 phòng ngủ, 1 nhà bếp, đầy đủ điện nước, có sân rông rãi để xe, đường rộng 6m, khu dân cư đông, an ninh tốt, nhiều tiện ích xung quanh, gần bệnh viện, gần chợ Phú Thọ, trường học, nhà trẻ, thích hợp ở lâu dài.</p>\n<p style="text-align:justify;">Liên hệ : 0977 369 322 A.Chương</p>', '', 'nha-trang-dai-220m', '', 'nhà trảng dài\n\nnhà đất biên hòa\n\nnhà đất đồng nai\n\nhttp://vangngocphat.com', '', 0, 20, '', 0, 0, '', '', '', '', 1, 1473),
(8129, 'Nhà Trảng Dài 44m²', '', '2012-08-08 12:32:35', 'nha-trang-dai-44m-thumb.jpeg', 'nha-trang-dai-44m.jpg', 'nha-trang-dai-44m-desc-1.jpg', '<p><strong>Mã Sp : NTD - VNPT</strong></p>\n<p>Nhà Trảng Dài: Khu phố 5 - Phường Trảng Dài</p>\n<p>Diện tích : 4 x 11 = 44 m²</p>\n<p>Pháp lý : Sổ hồng chính chủ</p>\n<p>Giá : 410 triệu (thương lượng)</p>\n<p>Hướng : Đông Nam</p>\n<p> </p>\n<p> </p>', '', '<p style="text-align:justify;">Nhà có vị trí đẹp, 1 gác, 1 phòng ngủ, đường rộng 6m, có điện nước máy đầy đủ, khu dân cư đông, an ninh tốt, nhiều tiện ích xung quanh, gần bệnh viện, gần chợ Phú Thọ, trường học, nhà trẻ, thích hợp ở lâu dài.</p>\n<p style="text-align:justify;">Liên hệ : 0977 369 322 A Chương</p>', '', 'nha-trang-dai-44m', '', '', '', 0, 12, '', 0, 0, '', '', '', '', 1, 1473),
(8130, 'Đất Trảng Dài 100 m²', '', '2012-08-08 12:32:35', 'at-trang-dai-100-m-thumb.jpeg', 'at-trang-dai-100-m.jpg', 'at-trang-dai-100-m-desc-1.jpg|at-trang-dai-100-m-desc-2.jpg', '<p><strong>Mã Sp : ĐTD - VNPT</strong></p>\n<p>Đất Trảng Dài: Khu phố 3 - Phường Trảng Dài</p>\n<p>Diện tích : 5 x 20 = 100 m² (2 lô)</p>\n<p>Pháp lý : Giấy tờ hợp lệ</p>\n<p>Giá : 170 triệu (thương lượng)</p>\n<p>Hướng : Đông nam</p>', '', '<p style="text-align:justify;">Đất có vị trí đẹp, mặt tiền rộng, cách đường 39m gần 50m, đường rộng 5m, khu dân cư đông, an ninh tốt, nhiều tiện ích xung quanh, gần chợ, nhà trẻ, trường học, thích hợp để ở lâu dài.</p>\n<p style="text-align:justify;">Liên hệ : 0918 539 780 A. Tịnh</p>', '', 'dat-trang-dai-100-m', '', '', '', 0, 13, '', 0, 0, '', '', '', '', 1, 1473),
(8131, 'Đất Trảng Dài 384m²', '', '2012-08-08 12:32:35', 'at-trang-dai-384m-thumb.jpeg', 'at-trang-dai-384m.jpg', '', '<p><strong>Mã Sp : ĐTD - VNP</strong></p>\n<p>Nhà Đất Trảng Dài: Khu phố 4 - Phường Trảng Dài</p>\n<p>Diện tích : 12 x 32 = 384 m²</p>\n<p>Pháp lý : Giấy tờ hợp lệ</p>\n<p>Giá : 580 triệu (thương lượng)</p>', '', '<p style="text-align:justify;">Đất có vị trí đẹp, mặt tiền rộng, đường rộng 5m, khu dân cư đông, an ninh tốt, nhiều tiện ích xung quanh, gần chợ, nhà trẻ, trường học, thích hợp để ở lâu dài.</p>\n<p style="text-align:justify;">Liên hệ : 0977 369 322 A.Chương</p>', '', 'dat-trang-dai-384m', '', '', '', 0, 14, '', 0, 0, '', '', '', '', 1, 1473),
(8132, 'Đất Trảng Dài 150m²', '', '2012-08-08 12:32:35', 'at-trang-dai-150m-thumb.jpeg', 'at-trang-dai-150m.jpg', 'at-trang-dai-150m-desc-1.JPG', '<p><strong>Mã Sp : ĐTD - VNPM</strong></p>\n<p>Đất Trảng Dài : Khu phố 4 - Phường Trảng Dài</p>\n<p>Diện tích : 5 x 30 = 150 m²</p>\n<p>Pháp lý : Giấy biên nhận</p>\n<p>Giá : 195 triệu (thương lượng)</p>\n<p> </p>', '', '<p>Đất có vị trí đẹp, đường rộng 6m, khu dân cư đông, an ninh tốt, nhiều tiện ích xung quanh, cách trường Đại học Công Nghệ Đồng Nai 800m, trường học, nhà trẻ, bệnh viện, thích hợp ở lâu dài.</p>\n<p>Liên hệ : 0935 434 886 C.Mỹ</p>', '', 'dat-trang-dai-150m', '', 'đất trảng dài\n\nnhà đất biên hòa\n\nnhà đất đồng nai\n\nhttp://batdongsan.com.vn', '', 0, 16, '', 0, 0, '', '', '', '', 1, 1473),
(8133, 'Đất Trảng Dài 140m²', '', '2012-08-08 12:32:35', 'at-trang-dai-140m-thumb.jpeg', 'at-trang-dai-140m.jpg', 'at-trang-dai-140m-desc-1.JPG', '<p><strong>Mã Sp : ĐTD - VNP</strong></p>\n<p>Đất Trảng Dài: Khu phố 5 - Phường Trảng Dài</p>\n<p>Diện tích : 7 x 20 =140 m²</p>\n<p>Pháp lý : Giấy tờ hợp lệ</p>\n<p>Giá : 270 triệu (thương lượng)</p>\n<p>Hướng : Đông nam</p>', '', '<p style="text-align:justify;">Đất có vị trí đẹp, đường rộng 5m, khu dân cư đông, an ninh tốt, nhiều tiện ích xung quanh, cách trường Đại học Công Nghệ Đồng Nai 500m, gần chợ Phú Thọ, gần trung tâm thành phố, các ngân hàng, trường học, nhà trẻ, bệnh viện, thích hợp ở lâu dài.</p>\n<p style="text-align:justify;">Liên hệ : 0918 539 780 A.Tịnh - 0977 369 322 A.Chương</p>', '', 'dat-trang-dai-140m', '', 'đất trảng dài\n\nnhà đất đồng nai\n\nnhà đất biên hòa', '', 0, 17, '', 0, 0, '', '', '', '', 1, 1473),
(8140, 'Nhà Hố Nai 68m²', '', '2012-08-08 12:32:35', 'nha-ho-nai-68m-thumb.jpeg', 'nha-ho-nai-68m.jpg', 'nha-ho-nai-68m-desc-1.JPG', '<p><strong>Mã Sp : NHN - VNP</strong></p>\n<p>Nhà Hố Nai: Khu phố 3 - Phường Hố Nai</p>\n<p>Diện tích : 4,2 x 16 = 68 m²</p>\n<p>Pháp lý : Sổ hồng chính chủ</p>\n<p>Giá : 650 triệu (thương lượng)</p>\n<p>Hướng : Nam</p>\n<p> </p>\n<p> </p>\n<p> </p>', '', '<p> </p>\n<p style="text-align:justify;">Nhà có vị trí đẹp, 1 sân rộng, 1 phòng khách, 1 phòng ngủ, ph2ong ăn, vào ở liền, đường rộng 5m, cách đường Nguyễn Ái Quốc 50m, khu dân cư đông, an ninh tốt, nhiều tiện ích xung quanh, gần trường học, gần nhà thờ, nhà trẻ, bệnh viện, thích hợp để ở lâu dài.</p>\n<p style="text-align:justify;">Liên hệ : 0977 369 322 Mr Chương</p>\n<p> </p>', '', 'nha-ho-nai-68m', '', 'nhà hố nai\n\nnhà đất biên hòa\n\nnhà đất đồng nai\n\nhttp://vangngocphat.com', '', 0, 21, '', 0, 0, '', '', '', '', 1, 1474),
(8141, 'Nhà Hố Nai 130m²', '', '2012-08-08 12:32:35', 'nha-ho-nai-130m-thumb.jpeg', 'nha-ho-nai-130m.jpg', 'nha-ho-nai-130m-desc-1.JPG', '<p style="text-align:justify;"><strong>Mã Sp : NHN - VNP</strong></p>\n<p style="text-align:justify;">Nhà Hố Nai: Khu phố 3 - Phường Hố Nai</p>\n<p style="text-align:justify;">Diện tích : 8,4 x 15,8 = 130 m²</p>\n<p style="text-align:justify;">Pháp lý : Sổ hồng chính chủ</p>\n<p style="text-align:justify;">Giá : 1,3 tỷ (thương lượng)</p>\n<p style="text-align:justify;">Hướng : Nam</p>\n<p> </p>\n<p style="text-align:justify;"> </p>\n<p style="text-align:justify;"> </p>', '', '<p>Nhà có vị trí đẹp, 1 phòng khách rộng, 3 phòng ngủ vào ở liền, đường rộng 5m, cách đường Nguyễn Ái Quốc 50m, khu dân cư đông, an ninh tốt, nhiều tiện ích xung quanh, gần trường học, gần nhà thờ, nhà trẻ, bệnh viện, thích hợp để ở lâu dài.</p>\n<p>Liên hệ : 0977 369 322 Mr Chương</p>', '', 'nha-ho-nai-130m', '', 'nhà hố nai\n\nnhà đất biên hòa\n\nnhà đất đồng nai\n\nhttp://vangngocphat.com', '', 0, 22, '', 0, 0, '', '', '', '', 1, 1474),
(8142, 'Nhà Hố Nai 150m²', '', '2012-08-08 12:32:35', 'nha-ho-nai-150m-thumb.jpeg', 'nha-ho-nai-150m.jpg', 'nha-ho-nai-150m-desc-1.jpg', '<p> </p>\n<p style="text-align:justify;"><strong>Mã Sp : NHN - VNP</strong></p>\n<p style="text-align:justify;">Nhà Hố Nai: Khu phố 11 - Phường Hố Nai</p>\n<p style="text-align:justify;">Diện tích : 150m² (Đất đô thị)</p>\n<p style="text-align:justify;">Pháp lý : Sổ đỏ chính chủ</p>\n<p style="text-align:justify;">Giá : 900 triệu (thương lượng)</p>\n<p style="text-align:justify;">Hướng : Tây</p>\n<p> </p>\n<p style="text-align:justify;"> </p>\n<p style="text-align:justify;"> </p>\n<p> </p>', '', '<p>Nhà có vị trí đẹp, mặt tiền rộng 17m, đường rộng 4m, cách đường Nguyễn Ái Quốc 50m, khu dân cư đông, an ninh tốt, nhiều tiện ích xung quanh, gần trường học, gần nhà thờ, nhà trẻ, bệnh viện, thích hợp để ở lâu dài.</p>\n<p>Liên hệ : 0977 369 322 anh Chương</p>', '', 'nha-ho-nai-150m', '', 'nhà hố nai\n\nnhà đất biên hòa\n\nnhà đất đồng nai\n\nhttp://vangngocphat.com', '', 0, 23, '', 0, 0, '', '', '', '', 1, 1474),
(8143, 'Nhà Hố Nai 100m²', '', '2012-08-08 12:32:35', 'nha-ho-nai-100m-thumb.jpeg', 'nha-ho-nai-100m.jpg', 'nha-ho-nai-100m-desc-1.JPG', '<p style="text-align:justify;"><strong>Mã Sp : NHN - VNP</strong></p>\n<p style="text-align:justify;">Nhà Hố Nai: Khu phố 5 - Phường Hố Nai</p>\n<p style="text-align:justify;">Diện tích : 6 x 17,1 = 100m² (Đất đô thị)</p>\n<p style="text-align:justify;">Pháp lý : Sổ đỏ chính chủ</p>\n<p style="text-align:justify;">Giá : 620 triệu (thương lượng)</p>\n<p style="text-align:justify;">Hướng : Đông nam</p>\n<p> </p>\n<p style="text-align:justify;"> </p>', '', '<p>Nhà có vị trí đẹp, đường rộng 5m, 1 phòng khách, 1 phòng ngủ, cách đường Nguyễn Ái Quốc 150m, khu dân cư đông, an ninh tốt, nhiều tiện ích xung quanh, gần trường học, cách nhà thờ 50m, nhà trẻ, bệnh viện, thích hợp để ở lâu dài.</p>\n<p>Liên hệ : 0986 232 230 A.Đại</p>', '', 'nha-ho-nai-100m', '', 'nhà hố nai\n\nnhà đất biên hòa\n\nnhà đất đồng nai', '', 0, 24, '', 0, 0, '', '', '', '', 1, 1474),
(8144, 'Nhà Hố Nai 200m²', '', '2012-08-08 12:32:35', 'nha-ho-nai-200m-thumb.jpeg', 'nha-ho-nai-200m.jpg', 'nha-ho-nai-200m-desc-1.JPG|nha-ho-nai-200m-desc-2.JPG|nha-ho-nai-200m-desc-3.jpg', '<p> </p>\n<p style="text-align:justify;"><strong>Mã Sp : NHN - VNPT</strong></p>\n<p style="text-align:justify;">Nhà Hố Nai: Khu phố 1 - Phường Hố Nai</p>\n<p style="text-align:justify;">Diện tích : 15,8 x 14 = 200m²</p>\n<p style="text-align:justify;">Pháp lý : Sổ đỏ chính chủ</p>\n<p style="text-align:justify;">Giá : 1,3 tỷ (thương lượng)</p>\n<p style="text-align:justify;">Hướng : Đông nam</p>\n<p> </p>\n<p style="text-align:justify;"> </p>\n<p> </p>', '', '<p style="text-align:justify;">Nhà đẹp, nội thất sang trọng, có 1 phòng khách, 2 phòng ngủ, a nhà bếp rộng, gara để xe hơi, 1 kho chứa hàng, gần nhà thờ, gần siêu thị, cách đường Nguyễn Ái Quốc 150m, khu dân cư đông, an ninh tốt, nhiều tiện ích xung quanh, gần trường học, nhà trẻ, bệnh viện, thích hợp để ở lâu dài.</p>\n<p style="text-align:justify;">Liên hệ : 0918 539 780 A.Tịnh - 0977 369 322 A.Chương</p>', '', 'nha-ho-nai-200m', '', 'nhà hố nai\n\nnhà đất biên hòa\n\nnhà đất đồng nai\n\nhttp://batdongsan.com.vn', '', 0, 25, '', 0, 0, '', '', '', '', 1, 1474),
(8145, 'Nhà xưởng Hố Nai 284m²', '', '2012-08-08 12:32:35', 'nha-xuong-ho-nai-284m-thumb.jpeg', 'nha-xuong-ho-nai-284m.jpg', 'nha-xuong-ho-nai-284m-desc-1.JPG|nha-xuong-ho-nai-284m-desc-2.JPG|nha-xuong-ho-nai-284m-desc-3.JPG|nha-xuong-ho-nai-284m-desc-4.JPG', '<p><strong>Mã Sp : NHN - VNP</strong></p>\n<p>Nhà xưởng hố nai</p>\n<p>Khu phố 3 - Phường Hố Nai</p>\n<p>Diện tích : 10 x 25 = 284 m² (nở hậu 12m)</p>\n<p>Pháp lý : Sổ đỏ chính chủ</p>\n<p>Giá : 3,7 tỷ (thương lượng)</p>\n<p> </p>\n<p> </p>', '', '<p style="text-align:justify;">Thông tin : Nhà xưởng rộng, 2 mặt tiền, có vị trí đẹp, đường rộng 6m, cách đường Nguyễn Ái Quốc 30m, xây dựng kiên cố, có gác lửng và văn phòng cho nhân viên, thích hợp làm kho chứa hàng, hàng xuất khẩu, vào hoạt động ngay.</p>\n<p style="text-align:justify;">0977 369 322 A.Chương</p>', '', 'nha-xuong-ho-nai-284m', '', 'nhà xưởng hố nai\n\nnhà đất biên hòa\n\nnhà đất đồng nai', '', 0, 26, '', 0, 0, '', '', '', '', 1, 1474),
(8146, 'Nhà xưởng Hố Nai 165m²', '', '2012-08-08 12:32:35', 'nha-xuong-ho-nai-165m-thumb.jpeg', 'nha-xuong-ho-nai-165m.jpg', 'nha-xuong-ho-nai-165m-desc-1.JPG', '<p><strong>Mã Sp : NHN - VNP</strong></p>\n<p>Nhà xưởng Hố Nai: Khu phố 3 - Phường Hố Nai</p>\n<p>Diện tích : 11 x 15 = 165m²</p>\n<p>Pháp lý : Sổ đỏ chính chủ</p>\n<p>Giá : 1,8 tỷ (thương lượng)</p>\n<p> </p>', '', '<p style="text-align:justify;">Xưởng kho mặt tiền rộng, xây dựng kiên cố, giao thông thuận lợi, thích hợp làm đồ thủ công mỹ nghệ, làm kho chứa hàng, có gác lửng làm văn phòng, vào hoạt động sản xuất ngay.</p>\n<p style="text-align:justify;">Liên hệ : 0977 369 322 A.Chương</p>', '', 'nha-xuong-ho-nai-165m', '', 'nhà kho hố nai\n\nnhà đất biên hòa\n\nnhà đất đồng nai', '', 0, 27, '', 0, 0, '', '', '', '', 1, 1474),
(8147, 'Nhà Hố Nai 100 m²', '', '2012-08-08 12:32:35', 'nha-ho-nai-100-m-thumb.jpeg', 'nha-ho-nai-100-m.jpg', 'nha-ho-nai-100-m-desc-1.jpg', '<p><strong>Mã Sp : NHN - VNP</strong></p>\n<p>Nhà Hố Nai: Khu phố 4 - Phường Hố Nai</p>\n<p>Diện tích : 5 x 20 = 100m²</p>\n<p>Pháp lý : Sổ đỏ chính chủ</p>\n<p>Giá : 1,150 tỷ (thương lượng)</p>', '', '<p style="text-align:justify;">Nhà có vị trí đẹp, đường rộng 5m, nhà có 1 phòng khách, 2 phòng ngủ, cách đường Nguyễn Ái Quốc 40m, cách chợ số 6 khoảng 20m. Khu dân cư đông, an ninh tốt, nhiều tiện ích xung quanh, gần trường học cấp I,II, gần nhà thờ, nhà trẻ, bệnh viện, siêu thị, thích hợp để ở lâu dài.</p>\n<p style="text-align:justify;">Liên hệ : 0977 369 322 A.Chương</p>', '', 'nha-ho-nai-100-m', '', 'nhà hố nai\n\nnhà đất biên hòa\n\nnhà đất đồng nai', '', 0, 28, '', 0, 0, '', '', '', '', 1, 1474),
(8148, 'Đất Hố Nai 180m²', '', '2012-08-08 12:32:35', 'at-ho-nai-180m-thumb.jpeg', 'at-ho-nai-180m.jpg', 'at-ho-nai-180m-desc-1.jpg|at-ho-nai-180m-desc-2.jpg', '<p><strong>Mã Sp : ĐHN - VNP</strong></p>\n<p>Khu phố 12 - Hố Nai</p>\n<p>Diện tích : 9 x 20 = 180 m². Đất đô thị.</p>\n<p>Pháp lý : Sổ hồng chính chủ</p>\n<p>Giá : 1,2 tỷ (thương lượng)</p>\n<p> </p>\n<p> </p>\n<p> </p>', '', '<p style="text-align:justify;">Đất có vị trí đẹp, đường rộng 4m, cách đường Nguyễn Ái Quốc 300m, khu dân cư đông, an ninh tốt, nhiều tiện ích xung quanh, gần trường học, nhà trẻ, nhà thờ, bệnh viện, thích hợp xây biệt thự vườn.</p>\n<p style="text-align:justify;">Liên hệ : 0977 369 322 A.Chương</p>', '', 'dat-ho-nai-180m', '', 'đất hố nai', '', 0, 16, '', 0, 0, '', '', '', '', 1, 1474),
(8155, 'Đất Tân Hiệp 525m²', '', '2012-08-08 12:32:35', 'at-tan-hiep-525m-thumb.jpeg', 'at-tan-hiep-525m.jpg', 'at-tan-hiep-525m-desc-1.JPG', '<p><strong>Mã Sp : ĐTH - VNP</strong></p>\n<p>Đất Tân Hiệp: Khu phố 2 - Phường Tân Hiệp</p>\n<p>Diện tích : 9,5 x 55 = 525 m²</p>\n<p>Pháp lý : Sổ đỏ chính chủ</p>\n<p>Giá : 2,25 tỷ (thương lượng)</p>\n<p>Hướng : Đông bắc</p>', '', '<p style="text-align:justify;">Đất có vị trí đẹp, dài, rộng, đường rộng 6m, cách đường Nguyễn Ái Quốc 200m, gần bệnh viện, trung tâm thương mại, khu dân cư đông, an ninh tốt, nhiều tiện ích xung quanh, gần chợ, nhà trẻ, trường học, thích hợp để ở lâu dài.</p>\n<p style="text-align:justify;">Liên hệ : 0977 369 322 A.Chương</p>', '', 'dat-tan-hiep-525m', '', 'đất tân hiệp\n\nnhà đất biên hòa\n\nnhà đất đồng nai', '', 0, 15, '', 0, 0, '', '', '', '', 1, 1475),
(8156, 'Đất Tân Hiệp 136,5m²', '', '2012-08-08 12:32:35', 'at-tan-hiep-1365m-thumb.jpeg', 'at-tan-hiep-1365m.jpg', 'at-tan-hiep-1365m-desc-1.JPG', '<p><strong>Mã Sp : ĐTH - VNP</strong></p>\n<p>Đất Tân Hiệp: Khu phố 1 - Phường Tân Hiệp</p>\n<p>Diện tích : 6,5 x 21 = 136,5 m²</p>\n<p>Pháp lý : Giấy tờ hợp lệ</p>\n<p>Giá : 380 triệu (thương lượng)</p>\n<p>Hướng : Đông nam</p>', '', '<p>Đất có vị trí đẹp, đường rộng 4m, cách đường Nguyễn Ái Quốc 700m, khu dân cư đông, an ninh tốt, nhiều tiện ích xung quanh, gần chợ, nhà trẻ, trường học, bệnh viện, thích hợp để ở lâu dài.</p>\n<p>Liên hệ : 0977 369 322 A.Chương</p>', '', 'dat-tan-hiep-1365m', '', 'Đất tân hiệp\n\nnhà đất biên hòa\n\nnhà đất đồng nai', '', 0, 18, '', 0, 0, '', '', '', '', 1, 1475),
(8157, 'Nhà Tân Hiệp 111,7m²', '', '2012-08-08 12:32:35', 'nha-tan-hiep-1117m-thumb.jpeg', 'nha-tan-hiep-1117m.jpg', '', '<p> </p>\n<p style="text-align:justify;"><strong>Mã Sp : NTH - VNP</strong></p>\n<p style="text-align:justify;">Nhà Tân Hiệp: Khu phố 1 - Phường Tân Hiệp</p>\n<p style="text-align:justify;">Diện tích : 5 x 22,4 = 111,7m²</p>\n<p style="text-align:justify;">Pháp lý : Sổ đỏ chính chủ</p>\n<p style="text-align:justify;">Giá : 850 triệu (thương lượng)</p>\n<p style="text-align:justify;">Hướng : Đông nam</p>\n<p> </p>\n<p style="text-align:justify;"> </p>\n<p> </p>', '', '<p>Nhà đẹp, nội thất sang trọng, mặt tiền đường rộng 5m, cách đường Nguyễn Ái Quốc 500m, gần siên thị Đồng Nai, gần nhiều bệnh viện, trung tâm thương mại, khu dân cư đông, an ninh tốt, nhiều tiện ích xung quanh, gần chợ, nhà trẻ, trường học, thích hợp để ở lâu dài.</p>\n<p>Liên hệ : 0977 369 322 A.Chương</p>', '', 'nha-tan-hiep-1117m', '', 'nhà tân hiệp\n\nnhà đất biên hòa\n\nnhà đất đồng nai', '', 0, 29, '', 0, 0, '', '', '', '', 1, 1475),
(8158, 'Nhà Tân Hiệp 130m²', '', '2012-08-08 12:32:35', 'nha-tan-hiep-130m-thumb.jpeg', 'nha-tan-hiep-130m.jpeg', 'nha-tan-hiep-130m-desc-1.JPG', '<p style="text-align:justify;"><strong>Mã Sp : NTH - VNP</strong></p>\n<p style="text-align:justify;">Nhà Tân Hiệp: Khu phố 2 - Phường Tân Hiệp</p>\n<p style="text-align:justify;">Diện tích : 6,5 x 20 = 130m²</p>\n<p style="text-align:justify;">Pháp lý : Sổ đỏ chính chủ</p>\n<p style="text-align:justify;">Giá : 1,45 tỷ (thương lượng)</p>\n<p style="text-align:justify;">Hướng : Tây</p>\n<p style="text-align:justify;"> </p>', '', '<p style="text-align:justify;">Nhà đẹp có 1 phòng khách, 2 phòng ngủ, đường rộng 5m, ô tô ra vào thuận lợi, gần siêu thị, cách đường Nguyễn Ái Quốc 300m, khu dân cư đông, an ninh tốt, nhiều tiện ích xung quanh, gần trường học, nhà trẻ, bệnh viện, thích hợp để ở lâu dài.</p>\n<p style="text-align:justify;">Liên hệ : 0977 369 322 A.Chương</p>', '', 'nha-tan-hiep-130m', '', 'nhà tân hiệp\n\nnhà đất biên hòa\n\nnhà đất đồng nai', '', 0, 30, '', 0, 0, '', '', '', '', 1, 1475);

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
) ENGINE=InnoDB  DEFAULT CHARSET=utf8 AUTO_INCREMENT=1485 ;

--
-- Dumping data for table `dos_module_products_cat`
--

INSERT INTO `dos_module_products_cat` (`cat_id`, `cat_parent_id`, `cat_title`, `cat_titleen`, `preview`, `previewen`, `tag`, `tagen`, `description`, `descriptionen`, `pic_full`, `pic_desc`, `cat_order`, `cat_extra1`, `cat_extra2`, `cat_enable`, `dos_usernames_username`) VALUES
(1471, 0, 'ĐẤT ĐẦU TƯ', '', '', '', 'dat-dau-tu', '', 'ĐẤT ĐẦU TƯ', '', 't-u-t.jpeg', '', 14, '', '', 1, 'thinhduong'),
(1472, 0, 'HUYỆN TRẢNG BOM', '', '', '', 'huyen-trang-bom', '', 'HUYỆN TRẢNG BOM', '', 'huyn-trng-bom.jpeg', '', 13, '', '', 1, 'thinhduong'),
(1473, 0, 'PHƯỜNG TRẢNG DÀI', '', '', '', 'phuong-trang-dai', '', 'PHƯỜNG TRẢNG DÀI', '', 'phng-trng-di.jpeg', '', 13, '', '', 1, 'thinhduong'),
(1474, 0, 'PHƯỜNG HỐ NAI', '', '', '', 'phuong-ho-nai', '', 'PHƯỜNG HỐ NAI', '', 'phng-h-nai.jpeg', '', 13, '', '', 1, 'thinhduong'),
(1475, 0, 'PHƯỜNG TÂN HIỆP', '', '', '', 'phuong-tan-hiep', '', 'PHƯỜNG TÂN HIỆP', '', 'phng-tn-hip.jpeg', '', 9, '', '', 1, 'thinhduong'),
(1476, 0, 'PHƯỜNG TÂN TIẾN', '', '', '', 'phuong-tan-tien', '', '', '', 'phng-tn-tin.jpeg', '', 6, '', '', 1, 'thinhduong'),
(1477, 0, 'PHƯỜNG TAM HIỆP', '', '', '', 'phuong-tam-hiep', '', 'PHƯỜNG TAM HIỆP', '', 'phng-tam-hip.jpeg', '', 6, '', '', 1, 'thinhduong'),
(1478, 0, 'PHƯỜNG TÂN BIÊN', '', '', '', 'phuong-tan-bien', '', 'PHƯỜNG TÂN BIÊN', '', 'phng-tn-bin.jpeg', '', 8, '', '', 1, 'thinhduong'),
(1479, 0, 'PHƯỜNG TÂN HÒA', '', '', '', 'phuong-tan-hoa', '', 'PHƯỜNG TÂN HÒA', '', 'phng-tn-ha.jpeg', '', 5, '', '', 1, 'thinhduong'),
(1480, 0, 'PHƯỜNG TAM HÒA', '', '', '', 'phuong-tam-hoa', '', '', '', 'phng-tam-ha.jpeg', '', 6, '', '', 1, 'thinhduong'),
(1481, 0, 'PHƯỜNG TÂN MAI', '', '', '', 'phuong-tan-mai', '', '', '', 'phng-tn-mai.jpeg', '', 7, '', '', 1, 'thinhduong'),
(1482, 0, 'PHƯỜNG TÂN PHONG', '', '', '', 'phuong-tan-phong', '', 'PHƯỜNG TÂN PHONG', '', 'phng-tn-phong.jpeg', '', 5, '', '', 1, 'thinhduong'),
(1483, 0, 'PHƯỜNG BỬU LONG', '', '', '', 'phuong-buu-long', '', 'PHƯỜNG BỬU LONG', '', 'phng-bu-long.jpeg', '', 8, '', '', 1, 'thinhduong'),
(1484, 0, 'VI TRÍ ĐẸP KHÁC', '', '', '', 'vi-tri-dep-khac', '', 'VI TRÍ ĐẸP KHÁC', '', 'vi-tr-p-khc.jpeg', '', 2, '', '', 1, 'thinhduong');

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
) ENGINE=InnoDB  DEFAULT CHARSET=utf8 AUTO_INCREMENT=311 ;

--
-- Dumping data for table `dos_module_services`
--

INSERT INTO `dos_module_services` (`record_id`, `title`, `titleen`, `preview`, `previewen`, `content`, `contenten`, `pic_full`, `hit`, `created`, `record_order`, `hot`, `extra_field1`, `extra_field2`, `tag`, `tagen`, `description`, `descriptionen`, `activated`, `dos_usernames_username`) VALUES
(309, 'Máy Ion', '', '', '', '<p>đang cập nhật</p>', '', '', 1, '2012-08-27 07:58:34', 1, 0, '', '', 'may-ion', '', '', '', 1, 'thinhduong'),
(310, 'Chương trình đào tạo', '', '', '', '<p>đang cập nhật</p>', '', '', 1, '2012-08-27 07:59:03', 2, 0, '', '', 'chuong-trinh-dao-tao', '', '', '', 1, 'thinhduong');

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
('keywords', 'Công ty BĐS Thịnh Đường.Chuyên Môi giới Bất động sản,Tư vấn, thực hiện Dịch vụ pháp lý,Quảng cáo Bất động sản,Thẩm định giá Bất động sản,Tư vấn đầu tư và kinh doanh BĐS', 'thinhduong'),
('description', 'Công ty BĐS Thịnh Đường.Chuyên Môi giới Bất động sản,Tư vấn, thực hiện Dịch vụ pháp lý,Quảng cáo Bất động sản,Thẩm định giá Bất động sản,Tư vấn đầu tư và kinh doanh BĐS', 'thinhduong'),
('title', 'Công ty BĐS Thịnh Đường - Batdongsanthinhduong.com', 'thinhduong'),
('analytics', '<script type="text/javascript">\r\n\r\n  var _gaq = _gaq || [];\r\n  _gaq.push([''_setAccount'', ''UA-30151015-8'']);\r\n  _gaq.push([''_trackPageview'']);\r\n\r\n  (function() {\r\n    var ga = document.createElement(''script''); ga.type = ''text/javascript''; ga.async = true;\r\n    ga.src = (''https:'' == document.location.protocol ? ''https://ssl'' : ''http://www'') + ''.google-analytics.com/ga.js'';\r\n    var s = document.getElementsByTagName(''script'')[0]; s.parentNode.insertBefore(ga, s);\r\n  })();\r\n\r\n</script>', 'thinhduong');

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
('180512', 'Mẫu nội thất: 180512', '2012-05-18 00:57:47', 'Chuyên bán các loại đồ nội thất, dân dụng');

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
('180512', 'noi-that-ngoai-that');

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
('180512', 'about', 'advs_left'),
('180512', 'about', 'list_supports'),
('180512', 'about', 'menu_about'),
('180512', 'contact', 'advs_left'),
('180512', 'contact', 'list_supports'),
('180512', 'contact', 'menu_products'),
('180512', 'default', 'about_home'),
('180512', 'default', 'advs_left'),
('180512', 'default', 'list_supports'),
('180512', 'default', 'menu_products'),
('180512', 'default', 'products_new'),
('180512', 'news', 'advs_left'),
('180512', 'news', 'list_supports'),
('180512', 'news', 'menu_news'),
('180512', 'products', 'advs_left'),
('180512', 'products', 'list_supports'),
('180512', 'products', 'menu_products'),
('180512', 'services', 'advs_left'),
('180512', 'services', 'list_supports'),
('180512', 'services', 'menu_services'),
('180512', 'video', 'advs_left'),
('180512', 'video', 'advs_top'),
('180512', 'video', 'menu_video');

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
('thinhduong', 'xuantrung@thuonghoi.com', 'e10adc3949ba59abbe56e057f20f883e', '2012-08-08 12:32:28', '', '', '', 'user', 'vi', '', '2012-11-05 16:00:00', 0, '07251943', '', 1, '180512', 19, 'bds-kien-truc-xay-dung');

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
('address1', 'KP2, P.Trảng Dài, Biên Hòa, Đồng Nai', '', 'thinhduong'),
('address2', 'Hotline: 0919 860 397 - Email: tiendung_saoviet@yahoo.com', '', 'thinhduong'),
('company_name', 'CÔNG TY TNHH BĐS THỊNH ĐƯỜNG', '', 'thinhduong'),
('company_name_footer', 'CÔNG TY TNHH BĐS THỊNH ĐƯỜNG', '', 'thinhduong'),
('company_phone', '', '', 'thinhduong'),
('new', '', '', 'thinhduong'),
('news', 'Thông tin', '', 'thinhduong'),
('products', 'BẤT ĐỘNG SẢN', '', 'thinhduong'),
('services', 'Đào tạo', '', 'thinhduong');

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
