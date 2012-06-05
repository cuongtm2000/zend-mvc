-- phpMyAdmin SQL Dump
-- version 3.4.5
-- http://www.phpmyadmin.net
--
-- Host: localhost
-- Generation Time: Jun 04, 2012 at 01:56 PM
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
('advs_left_height', 300, '', '270412'),
('advs_left_width', 179, '', '270412'),
('advs_right_height', 300, '', '270412'),
('advs_right_width', 164, '', '270412'),
('banner_height', 285, '', '270412'),
('banner_width', 597, '', '270412'),
('logo_height', 97, '', '270412'),
('logo_width', 107, '', '270412'),
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
('270412', 'default', 'simplyscroll.verticall.css|prettyPhoto.css', 'css'),
('270412', 'default', 'jquery.simplyscroll.vertical.js|verticall-config.js|jquery.prettyPhoto.js', 'javascript'),
('270412', 'products', 'scroll.css|jquery.fancybox.css', 'css'),
('270412', 'products', 'jcarousellite_1.0.1.js|scroller.js|jquery.fancybox.js|jquery.scroll-1.4.2-min.js|jquery.serialScroll-1.2.2-min.js|product.js', 'javascript'),
('270412', 'video', 'prettyPhoto.css', 'css'),
('270412', 'video', 'jquery.prettyPhoto.js', 'javascript');

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
('about', 'phivucomputer'),
('advs', 'phivucomputer'),
('banner', 'phivucomputer'),
('contact', 'phivucomputer'),
('news', 'phivucomputer'),
('products', 'phivucomputer'),
('services', 'phivucomputer'),
('supports', 'phivucomputer');

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
) ENGINE=InnoDB  DEFAULT CHARSET=utf8 AUTO_INCREMENT=150 ;

--
-- Dumping data for table `dos_module_abouts`
--

INSERT INTO `dos_module_abouts` (`record_id`, `title`, `titleen`, `content`, `contenten`, `hit`, `created`, `record_order`, `hot`, `extra_field1`, `extra_field2`, `tag`, `tagen`, `description`, `descriptionen`, `activated`, `dos_usernames_username`) VALUES
(149, 'Giới thiệu công ty', '', '<p>CTY TNHH CÔNG NGHỆ TIN HỌC PHI VŨ<br />     380 NGUYỄN HOÀNG - ĐÀ NẴNG<br />          0905.168.699 - 3691973</p>\n<p>- TRUNG TÂM PHÂN PHỐI MÁY BỘ VI TÍNH CŨ VÀ MỚI MIỀN TRUNG</p>\n<p>- TRUNG TÂM PHÂN PHỐI LINH KIỆN MÁY TÍNH CŨ VÀ MỚI MIỀN TRUNG</p>\n<p>- CAM KẾT BẢO HÀNH NHANH CHÓNG, 1 ĐỔI 1 TRONG THỜI GIAN BẢO HÀNH</p>\n<p>- QUÝ KHÁCH NGOẠI TỈNH LẤY HÀNG CHUYỂN KHOẢN VÀO TK:</p>\n<p>              <span style="color:#ff0000;"><strong>   LÊ HÙNG VIỆT</strong></span></p>\n<p><span style="color:#ff0000;"><strong>                 AGRIBANK ĐÀ NẴNG</strong></span></p>\n<p><span style="color:#ff0000;"><strong>                 TK: 2003206079110   </strong></span></p>\n<p><em><span style="text-decoration:underline;">DỊCH VỤ:</span></em></p>\n<p>- SỬA CHỮA VÀ THAY THẾ LINH KIỆN MÁY TÍNH.<br />- Chuyên hàn bản lề laptop, hàn vỏ nhựa laptop.<br />- Chuyên sửa bàn phím laptop, thay mới bàn phím laptop.</p>\n<p>- Chuyên thay màn hình LCD laptop các loại.</p>\n<p>- Sửa laptop bao gồm tất cả các bệnh.</p>\n<p> </p>', '', 116, '2012-05-27 04:02:03', 1, 0, '', '', 'gioi-thieu-cong-ty', '', '', '', 1, 'phivucomputer');

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
) ENGINE=InnoDB  DEFAULT CHARSET=utf8 AUTO_INCREMENT=150 ;

--
-- Dumping data for table `dos_module_advs`
--

INSERT INTO `dos_module_advs` (`record_id`, `title`, `titleen`, `pic_thumb`, `url`, `create_date`, `start_date`, `end_date`, `hits`, `record_order`, `position`, `type`, `enable`, `dos_usernames_username`) VALUES
(149, 'Cam kết Bảo hành 24h, 1 đổi 1', '', 'cam-ket-bao-hanh-24h-1-doi-1.jpg', 'http://dos.vn', '2012-05-27 04:02:03', '2012-05-02 17:00:00', '2012-06-29 17:00:00', 0, 1, 'left', '_bank', 1, 'phivucomputer');

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
) ENGINE=InnoDB  DEFAULT CHARSET=utf8 AUTO_INCREMENT=715 ;

--
-- Dumping data for table `dos_module_banners`
--

INSERT INTO `dos_module_banners` (`banner_id`, `banner_date`, `banner_name`, `banner_url`, `banner_link`, `banner_order`, `banner_type`, `position`, `enable`, `dos_usernames_username`) VALUES
(667, '2012-05-27 04:02:03', 'Banner 1', 'banner-1.jpg', '', 2, 'banners', 'default', 0, 'phivucomputer'),
(668, '2012-05-27 04:02:03', 'Banner 2', 'banner-2.jpg', '', 3, 'banners', 'default', 0, 'phivucomputer'),
(680, '2012-05-28 02:09:34', 'Phi Vu Computer', 'phi-vu-computer.png', '', 4, 'logo', 'default', 1, 'phivucomputer'),
(681, '2012-05-28 02:44:00', 'Hinh cong ty', 'hinh-cong-ty.jpg', '', 5, 'banners', 'default', 1, 'phivucomputer'),
(710, '2012-05-31 04:05:48', 'Banner 3', 'banner-3.jpg', '', 6, 'banners', 'default', 1, 'phivucomputer'),
(711, '2012-05-31 04:06:20', 'Banner 4', 'banner-4.jpg', '', 7, 'banners', 'default', 1, 'phivucomputer'),
(712, '2012-05-31 04:06:44', 'Banner 5', 'banner-5.jpg', '', 8, 'banners', 'default', 1, 'phivucomputer'),
(713, '2012-05-31 04:08:21', 'Banner 6', 'banner-6.jpg', '', 9, 'banners', 'default', 1, 'phivucomputer'),
(714, '2012-05-31 04:08:52', 'Banner 7', 'banner-7.jpg', '', 10, 'banners', 'default', 1, 'phivucomputer');

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
(14, 'Cty Phi Vũ - 380 Nguyễn Hoàng- Đà Nẵng - 0905.168.699', '', '<p>Cty Phi Vũ - 380 Nguyễn Hoàng- Đà Nẵng - 0905.168.699</p>', '', '2012-05-29 03:36:52', 1, 0, 0, 'cty-phi-vu-380-nguyen-hoang-da-nang-0905168699', '', 'Cty Phi Vũ - 380 Nguyễn Hoàng- Đà Nẵng - 0905.168.699', '', '1', 'phivucomputer');

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
('Trang chủ', '', 'default', '', 1, '', '', '', '', 'phivucomputer'),
('Giới thiệu', '', 'about', '', 2, '', '', '', '', 'phivucomputer'),
('Sản phẩm', '', 'products', '', 3, '', '', '', '', 'phivucomputer'),
('Dịch vụ', '', 'services', '', 4, '', '', '', '', 'phivucomputer'),
('Tin tức & sự kiện', '', 'news', '', 5, '', '', '', '', 'phivucomputer'),
('Liên hệ', '', 'contact', '', 6, '', '', '', '', 'phivucomputer');

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
) ENGINE=InnoDB  DEFAULT CHARSET=utf8 AUTO_INCREMENT=159 ;

--
-- Dumping data for table `dos_module_news`
--

INSERT INTO `dos_module_news` (`record_id`, `title`, `titleen`, `postdate`, `pic_thumb`, `preview`, `previewen`, `content`, `contenten`, `tag`, `tagen`, `description`, `descriptionen`, `hits`, `record_order`, `hot`, `extra_field1`, `extra_field2`, `enable`, `dos_module_item_cat_cat_id`) VALUES
(157, 'Túi xách da, túi xách lông thú cho bạn gái', '', '2012-05-27 04:02:03', 'tui-xach-da-tui-xach-long-thu-cho-ban-gai.jpg', '<p>Dù bạn bao nhiêu tuổi, thân hình ra sao, phong cách thời trang như thế nào, bạn cũng có thể chọn cho mình một chiếc túi ưng ý...</p>', '', '<p style="text-align:justify;">Những chiếc túi xách bằng da được điểm xuyết lông thú với nhiều hình dáng, thích hợp cho các bạn gái.</p>\n<p style="text-align:justify;">Dù bạn bao nhiêu tuổi, thân hình ra sao, phong cách thời trang như thế nào, bạn cũng có thể chọn cho mình một chiếc túi xách ưng ý với đủ loại kích thước, kiểu dáng to, nhỏ khác nhau. Với túi xách da, túi xách lông thú, các bạn gái sẽ tự tin hơn trong việc thể hiện phong cách và cá tính bản thân.</p>\n<p><img style="margin-left:auto;margin-right:auto;" src="/public/userfiles/image/240312/image/tui-xach-ban-gai-2.jpg" alt="" width="550" height="410" /></p>\n<p><img style="margin-left:auto;margin-right:auto;" src="/public/userfiles/image/240312/image/tui-xach-ban-gai-3.jpg" alt="" width="550" height="407" /></p>\n<p style="text-align:center;"><img style="float:left;" src="/public/userfiles/image/240312/image/tui-xach-ban-gai-4.jpg" alt="" width="550" height="516" /></p>\n<p style="text-align:center;"><img style="float:left;" src="/public/userfiles/image/240312/image/tui-xach-ban-gai-5.jpg" alt="" width="550" height="531" /></p>\n<p style="text-align:justify;">Để hòa mình vào thế giới túi xách, túi xách da, túi xách thời trang sành điệu truy cập ngay http://shoptuixachda.com - chuyên cung cấp túi xách, túi xách thời trang, túi xách hàng hiệu, túi xách nam, túi xách nữ, túi xách laptop, túi xách đẹp, túi xách tay, túi xách da.</p>', '', 'tui-xach-da-tui-xach-long-thu-cho-ban-gai', '', 'Túi xách da, túi xách lông thú cho bạn gái', '', 0, 4, 0, '', '', 1, 95),
(158, 'Túi xách của bạn, phong cách của bạn', '', '2012-05-27 04:02:03', 'tui-xach-cua-ban-phong-cach-cua-ban.jpg', '<p>Dù bạn bao nhiêu tuổi, thân hình ra sao, phong cách thời trang như thế nào, bạn cũng có thể chọn cho mình một chiếc túi ưng ý...</p>', '', '<p style="text-align:justify;">Các bạn gái hãy thể hiện cá tính riêng của mình với phong cách túi xách 2012.</p>\n<p style="text-align:justify;">Bên cạnh trang phục và phụ kiện đi kèm, túi xách là "người bạn thân thiết" khó thể tách rời mỗi khi các bạn gái đi ra ngoài. Chúng không chỉ giúp các cô gái chứa những vật dụng cần thiết, là một món "nữ trang" mà còn cho các nàng thỏa sức phô diễn phong cách thời trang riêng.</p>\n<p style="text-align:justify;">Với những cô bạn công sở hay yêu thích sự điệu đà, duyên dáng, chiếc túi xách hoặc khoác vai là lựa chọn hợp lý nhất.</p>\n<p><img style="margin-left:auto;margin-right:auto;" src="/public/userfiles/image/240312/image/tui-xach-phong-cach-3.jpg" alt="" width="541" height="660" /></p>\n<p> </p>\n<p><img style="margin-left:auto;margin-right:auto;" src="/public/userfiles/image/240312/image/tui-xach-phong-cach-2.jpg" alt="" width="550" height="397" /></p>\n<p style="text-align:justify;">Để hòa mình vào thế giới túi xách, túi xách da, túi xách thời trang sành điệu truy cập ngay http://240312.dos.vn - chuyên cung cấp túi xách, túi xách thời trang, túi xách hàng hiệu, túi xách nam, túi xách nữ, túi xách laptop, túi xách đẹp, túi xách tay, túi xách da.</p>', '', 'tui-xach-cua-ban-phong-cach-cua-ban', '', 'Dù bạn bao nhiêu tuổi, thân hình ra sao, phong cách thời trang như thế nào, bạn cũng có thể chọn cho mình một chiếc túi ưng ý...', '', 0, 3, 0, '', '', 1, 95);

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
) ENGINE=InnoDB  DEFAULT CHARSET=utf8 AUTO_INCREMENT=96 ;

--
-- Dumping data for table `dos_module_news_cat`
--

INSERT INTO `dos_module_news_cat` (`cat_id`, `cat_parent_id`, `cat_title`, `cat_titleen`, `preview`, `previewen`, `tag`, `tagen`, `description`, `descriptionen`, `pic_full`, `cat_order`, `cat_extra1`, `cat_extra2`, `cat_enable`, `dos_usernames_username`) VALUES
(95, 0, 'TIN TỨC THỜI TRANG', '', '', '', 'tin-tuc-thoi-trang', '', 'TIN TỨC THỜI TRANG', '', '', 1, '', '', 1, 'phivucomputer');

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
('day_time', 2456083),
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
('''::1''', 1338810429);

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
) ENGINE=InnoDB  DEFAULT CHARSET=utf8 AUTO_INCREMENT=2449 ;

--
-- Dumping data for table `dos_module_products`
--

INSERT INTO `dos_module_products` (`record_id`, `title`, `titleen`, `postdate`, `pic_thumb`, `pic_full`, `pic_desc`, `preview`, `previewen`, `content`, `contenten`, `tag`, `tagen`, `description`, `descriptionen`, `hits`, `record_order`, `unit`, `hot`, `specials`, `extra_field1`, `extra_field2`, `extra_field3`, `extra_field4`, `enable`, `dos_module_item_cat_cat_id`) VALUES
(1940, '20 cái Mainboard 945 Asus', '', '2012-05-28 04:06:16', 'mainboard-945-asus-thumb.jpg', 'mainboard-945-asus.jpg', '', '<p>Main 945 Asus chạy rất ổn đinh, chất lương 80%</p>\n<p>bảo hành 1 tháng, nhanh chống, 1 đổi 1</p>\n<p><span style="color:#ff0000;"><strong>(giá 420.000đ)</strong></span></p>', '', '<p>Main 945 Asus chạy rất ổn đinh, chất lương 80%</p>\n<p>bảo hành 1 tháng, nhanh chống, 1 đổi 1 </p>\n<p><span style="color:#ff0000;"><strong>(giá 420.000đ)</strong></span></p>', '', '20-cai-mainboard-945-asus', '', '', '', 0, 1, '420000', 1, 0, '', '', '', '', 1, 452),
(1942, '20 cái Nguồn PC JETEK  24Pin 480-500W', '', '2012-05-28 04:10:44', 'nguon-pc-jetek--24pin-480-500w-thumb.jpg', 'nguon-pc-jetek--24pin-480-500w.jpg', '', '<p>Nguồn chất lượng 80%, chạy rất ổn định, dùng cho tất cả các loại máy.</p>\n<p>bảo hành 1 tháng, nhanh chống, 1 đổi 1.</p>\n<p><span style="color:#ff0000;"><strong>(giá 100.000đ)</strong></span></p>', '', '<p>Input Voltage : 115/230V</p>\n<p>Input Frequency : 50-60Hz</p>\n<p>Output : +5v 22A, +3.3v 17A, +12v 18A, +12VB 18A, -12v 1A, +5VFP 2A</p>\n<p>Dimensions : 5.7W x 3.7 H x 5.4 D - Inches / 150mm(w) x 100mm(H) x 140mm(D)</p>\n<p>Connectors : (1) 24 Pin ATX connector, (1) P2 ATX12V Connector, (1) Peripheral connector, (1) Floppy connector &amp; (2) SATA connector</p>', '', '20-cai-nguon-pc-jetek-24pin-480-500w', '', '', '', 0, 2, '80.000- 100.000VND', 1, 0, '', '', '', '', 1, 452),
(1954, '10 cái Mainboard 945 Intel chính hãng', '', '2012-05-28 08:11:10', 'mainboard-945-intel-chinh-hang-thumb.jpg', 'mainboard-945-intel-chinh-hang.jpg', '', '<p>Main 945 Intel chạy rất ổn định, chất lượng 80%</p>\n<p>bảo hành 1 tháng, nhanh chống, 1 đổi 1</p>\n<p>(giá 450.000đ)</p>', '', '<p>Main 945 Intel chạy rất ổn định, chất lượng 80%</p>\n<p>bảo hành 1 tháng, nhanh chống, 1 đổi 1</p>\n<p>(giá 450.000đ)</p>', '', '10-cai-mainboard-945-intel-chinh-hang', '', '', '', 0, 3, '450000', 0, 0, '', '', '', '', 1, 452),
(1955, '10 cái Mainboard 945 các loại khác', '', '2012-05-28 08:15:04', 'mainboard-945-cac-loai-khac-thumb.jpg', 'mainboard-945-cac-loai-khac.jpg', '', '<p>Main 945 nhiều loại khác, chạy rất ổn định, chất lượng 80%</p>\n<p>bảo hành 1 tháng, nhanh chống, 1 đổi 1</p>\n<p><span style="color:#ff0000;"><strong>(giá 380.000đ)</strong></span></p>', '', '<p>Main 945 nhiều loại khác, chạy rất ổn định, chất lượng 80%</p>\n<p>bảo hành 1 tháng, nhanh chống, 1 đổi 1</p>\n<p><strong><span style="color:#ff0000;">(giá 380.000đ)</span></strong></p>', '', '10-cai-mainboard-945-cac-loai-khac', '', '', '', 0, 4, '380.000VND - 400.000VND', 0, 0, '', '', '', '', 1, 452),
(1956, '5 cái Mainboard G31 Asus', '', '2012-05-28 08:21:09', 'mainboard-g31-asus-gia-550-000-vnd-thumb.jpg', 'mainboard-g31-asus-gia-550-000-vnd.jpg', '', '<p>Main G31 Asus chạy rất ổn đinh, chất lượng 80%</p>\n<p>bảo hành 1 tháng, nhanh chống, 1 đổi 1</p>\n<p><strong><span style="color:#ff0000;">(giá 550.000đ)</span></strong></p>', '', '<p>Main G31 Asus chạy rất ổn đinh, chất lượng 80%</p>\n<p>bảo hành 1 tháng, nhanh chống, 1 đổi 1</p>\n<p><strong><span style="color:#ff0000;">(giá 550.000đ)</span></strong></p>', '', '5-cai-mainboard-g31-asus', '', '', '', 0, 5, '550000', 0, 0, '', '', '', '', 1, 452),
(1957, '5 cái main G31 Intel', '', '2012-05-28 08:23:22', 'main-g31-intel-gia-580-000-vnd-thumb.gif', 'main-g31-intel-gia-580-000-vnd.gif', '', '<p>Main G31 Intel chạy rất ổn đinh, chất lượng 80%</p>\n<p>bảo hành 1 tháng, nhanh chống, 1 đổi 1</p>\n<p><span style="color:#ff0000;"><strong>(giá 580.000đ)</strong></span></p>', '', '<p>Main G31 Intel chạy rất ổn đinh, chất lượng 80%</p>\n<p>bảo hành 1 tháng, nhanh chống, 1 đổi 1</p>\n<p><span style="color:#ff0000;"><strong>(giá 580.000đ)</strong></span></p>', '', '5-cai-main-g31-intel', '', '', '', 0, 6, '580000', 0, 0, '', '', '', '', 1, 452),
(1958, '10 main G31 Foxconn', '', '2012-05-28 08:26:06', 'main-g31-foxconn--gia-500-000-vnd-thumb.jpg', 'main-g31-foxconn--gia-500-000-vnd.jpg', '', '<p>Main G31 Foxconn chạy rất ổn đinh, chất lượng 80%</p>\n<p>bảo hành 1 tháng, nhanh chống, 1 đổi 1</p>\n<p><span style="color:#ff0000;"><strong>(giá 500.000đ)</strong></span></p>', '', '<p>Main G31 Foxconn chạy rất ổn đinh, chất lượng 80%</p>\n<p>bảo hành 1 tháng, nhanh chống, 1 đổi 1</p>\n<p><span style="color:#ff0000;"><strong>(giá 500.000đ)</strong></span></p>', '', '10-main-g31-foxconn', '', '', '', 0, 7, '500000', 0, 0, '', '', '', '', 1, 452),
(1959, '5 cái Mainboard 915 chạy DDram2', '', '2012-05-28 08:29:52', 'mainboard-915-chay-ddram2-gia-300-000-vnd-thumb.jpg', 'mainboard-915-chay-ddram2-gia-300-000-vnd.jpg', '', '<p>Mainboard 915 chạy DDram2, chạy được chíp Celeron D 2,66, 3.0 hoặc P4 2.66, 3.0, chạy rất ổn đinh, chất lượng 80%</p>\n<p>bảo hành 1 tháng, nhanh chống, 1 đổi 1</p>\n<p><span style="color:#ff0000;"><strong>(giá 300.000đ)</strong></span></p>', '', '<p>Mainboard 915 chạy DDram2, chạy được chíp Celeron D 2,66, 3.0 hoặc P4 2.66, 3.0, chạy rất ổn đinh, chất lượng 80%</p>\n<p>bảo hành 1 tháng, nhanh chống, 1 đổi 1</p>\n<p><span style="color:#ff0000;"><strong>(giá 300.000đ)</strong></span></p>', '', '5-cai-mainboard-915-chay-ddram2', '', '', '', 0, 8, '300000', 0, 0, '', '', '', '', 1, 452),
(1960, '5 cái Mainboard 845, 865 sk 478 các loại', '', '2012-05-28 08:34:37', 'mainboard-845-865-sk-478-cac-loai-thumb.jpg', 'mainboard-845-865-sk-478-cac-loai.jpg', '', '<p>Mainboard 845, 865 sk 478, chạy rất ổn đinh, chất lượng 80%</p>\n<p>bảo hành 1 tháng, nhanh chống, 1 đổi 1</p>\n<p><strong><span style="color:#ff0000;">(giá 230.000đ  đến 270.000đ)</span></strong></p>', '', '<p>Mainboard 845, 865 sk 478, chạy rất ổn đinh, chất lượng 80%</p>\n<p>bảo hành 1 tháng, nhanh chống, 1 đổi 1</p>\n<p><strong><span style="color:#ff0000;">(giá 230.000đ đến 270.000đ)<br /></span></strong></p>', '', '5-cai-mainboard-845-865-sk-478-cac-loai', '', '', '', 0, 9, '230.000 - 270.000VND', 0, 0, '', '', '', '', 1, 452),
(1961, '10 LCD 19'' AOC còn Bh 34 tháng', '', '2012-05-28 08:40:51', 'lcd-19-aoc-con-bh-34-thang-gia-1tr5-thumb.jpg', 'lcd-19-aoc-con-bh-34-thang-gia-1tr5.jpg', '', '<p>- LCD 19'' AOC 931SWL, còn phiếu bh chính hãng 34 tháng, mới keng, chất lượng 99%  </p>\n<p>- Số lượng còn 10 cái</p>\n<p>- Bảo hành 34 tháng, nhanh chống, 1 đổi 1</p>\n<p><span style="color:#ff0000;"><strong>(giá 1.500.000đ)</strong></span></p>', '', '<p>- LCD 19'' AOC 931SWL, còn phiếu bh chính hãng 34 tháng, mới keng, chất lượng 99%</p>\n<p>- Số lượng còn 10 cái</p>\n<p>- Bảo hành 34 tháng, nhanh chống, 1 đổi 1</p>\n<p><span style="color:#ff0000;"><strong>(giá 1.500.000đ)</strong></span></p>', '', '10-lcd-19-aoc-con-bh-34-thang', '', '', '', 0, 10, '1500000', 1, 0, '', '', '', '', 1, 452),
(1962, '5 LCD 17'' ASUS còn Bh 3 tháng', '', '2012-05-28 08:42:56', 'lcd-17-asus-con-bh-3-thang-gia-1tr3-thumb.jpg', 'lcd-17-asus-con-bh-3-thang-gia-1tr3.jpg', '', '<p>- LCD 17 ASUS, mẩu mã đẹp, chất lượng 90%</p>\n<p>- Số lượng còn 5 cái</p>\n<p>- Bảo hành 3 tháng, nhanh chống, 1 đổi 1</p>\n<p><span style="color:#ff0000;"><strong>(giá 1.300.000đ)</strong></span></p>', '', '<p>- LCD 17 ASUS, mẩu mã đẹp, chất lượng 90%</p>\n<p>- Số lượng còn 5 cái</p>\n<p>- Bảo hành 3 tháng, nhanh chống, 1 đổi 1</p>\n<p><span style="color:#ff0000;"><strong>(giá 1.300.000đ)</strong></span></p>', '', '5-lcd-17-asus-con-bh-3-thang', '', '', '', 0, 11, '1300000', 0, 0, '', '', '', '', 1, 452),
(1963, 'LCD 15'', LCD 16'' các loại', '', '2012-05-28 08:47:17', 'lcd-15-lcd-16-cac-loai--gia-800k-1tr-thumb.jpg', 'lcd-15-lcd-16-cac-loai--gia-800k-1tr.jpg', '', '<p>- LCD 15'', LCD 16'' các loại, chất lượng 80%, chạy ổn định, chưa sửa chữa</p>\n<p>- Bảo hành 3 háng, nhanh chống, 1 đổi 1</p>\n<p><span style="color:#ff0000;"><strong>(giá 800.000 đ - 1.000.000 đ)</strong></span></p>', '', '<p>- LCD 15'', LCD 16'' các loại, chất lượng 80%, chạy ổn định, chưa sửa chữa</p>\n<p>- Bảo hành 3 háng, nhanh chống, 1 đổi 1</p>\n<p><span style="color:#ff0000;"><strong>(giá 800.000đ - 1.000.000đ)</strong></span></p>', '', 'lcd-15-lcd-16-cac-loai', '', '', '', 0, 12, '800.000 - 1.000.000VND', 0, 0, '', '', '', '', 1, 452),
(1964, '30 Hdd 160g Seagate mới 100%', '', '2012-05-28 09:11:51', '', 'hdd-160g-seagate-moi-100-gia-850k-920k.jpg', '', '<p>Hdd 160g Seagate mới 100%, nguyên bao còn bảo hành 16 tháng</p>\n<p><strong><span style="color:#ff0000;">(giá 900k)</span></strong></p>\n<p>Hdd 160g Seagate mới 100%, nguyên bao còn bảo hành dưới 12 tháng</p>\n<p><span style="color:#ff0000;"><strong>(giá 850k)</strong></span></p>', '', '<p>Hdd 160g Seagate mới 100%, nguyên bao còn bảo hành 16 tháng</p>\n<p><span style="color:#ff0000;"><strong>(giá 900k)</strong></span></p>\n<p>Hdd 160g Seagate mới 100%, nguyên bao còn bảo hành dưới 12 tháng</p>\n<p><strong><span style="color:#ff0000;">(giá 850k)</span></strong></p>', '', '30-hdd-160g-seagate-moi-100', '', '', '', 0, 13, '850.000 - 900.000VND', 1, 0, '', '', '', '', 1, 452),
(1965, 'Hdd 250g Seagate mới 100%', '', '2012-05-28 09:14:58', 'hdd-250g-seagate-moi-100-gia-1tr1-1tr150-thumb.jpg', 'hdd-250g-seagate-moi-100-gia-1tr1-1tr150.jpg', '', '<p>Hdd 250g Seagate mới 100%, nguyên bao còn bảo hành trên 12 tháng</p>\n<p><strong><span style="color:#ff0000;">(giá 1.150.000đ)</span></strong></p>\n<p>Hdd 250g Seagate mới 100%, nguyên bao còn bảo hành dưới 12 tháng</p>\n<p><span style="color:#ff0000;"><strong>(giá 1.100.000đ)</strong></span></p>', '', '<p>Hdd 250g Seagate mới 100%, nguyên bao còn bảo hành trên 12 tháng</p>\n<p>(giá 1.150.000đ)</p>\n<p>Hdd 250g Seagate mới 100%, nguyên bao còn bảo hành dưới 12 tháng</p>\n<p>(giá 1.100.000đ)</p>', '', 'hdd-250g-seagate-moi-100', '', '', '', 0, 14, '1tr1 -1tr150', 0, 0, '', '', '', '', 1, 452),
(1966, 'chíp E2140, E2160, E2180, E4300, E4500, E5200, E5300,... giá rẻ', '', '2012-05-28 09:26:57', 'chip-e2140-e2160-e2180-e4300-e4500-e5200-e5300----gia-re-thumb.jpg', 'chip-e2140-e2160-e2180-e4300-e4500-e5200-e5300----gia-re.jpg', '', '<p>- Celeron 2.66ghz,........................giá 150.000đ</p>\n<p>- Pentium4 2.66ghz.....................giá 200.000đ</p>\n<p>- Pentium4 3.06ghz.....................giá 300.000đ</p>\n<p>- Chíp Dou core E2140..............giá 550.000đ</p>\n<p>- Chíp Dou core E2160.............giá 600.000đ</p>\n<p>- Chíp Dou core E2180..............giá 650.000đ</p>\n<p>- Chíp Dou core E5200..............giá 900.000đ</p>\n<p>- Chíp Dou core E5300..............giá 950.000đ</p>\n<p>- Chíp core 2 Dou E4300..........giá 900.000đ</p>\n<p>- Chíp core 2 Dou E4300..........giá 950.000đ</p>', '', '<p>- Celeron 2.66ghz,........................giá 150.000đ</p>\n<p>- Pentium4 2.66ghz.....................giá 200.000đ</p>\n<p>- Pentium4 3.06ghz.....................giá 300.000đ</p>\n<p>- Chíp Dou core E2140..............giá 550.000đ</p>\n<p>- Chíp Dou core E2160.............giá 600.000đ</p>\n<p>- Chíp Dou core E2180..............giá 650.000đ</p>\n<p>- Chíp Dou core E5200..............giá 900.000đ</p>\n<p>- Chíp Dou core E5300..............giá 950.000đ</p>\n<p>- Chíp core 2 Dou E4300..........giá 900.000đ</p>\n<p>- Chíp core 2 Dou E4300..........giá 950.000đ</p>', '', 'chip-e2140-e2160-e2180-e4300-e4500-e5200-e5300-gia-re', '', '', '', 0, 15, '', 0, 0, '', '', '', '', 1, 452),
(1967, '10 Hdd 80g ATA samsung, Seagate mới 100%', '', '2012-05-28 09:30:10', '10-hdd-80g-ata-samsung-seagate-moi-100-thumb.jpg', '10-hdd-80g-ata-samsung-seagate-moi-100.jpg', '', '<p>Hdd 80g ATA samsung, Seagate mới 100%</p>\n<p>bảo hành 12 tháng, nhanh chống, 1 đổi 1</p>\n<p><span style="color:#ff0000;"><strong>(giá 450.000đ- 480.000đ)</strong></span></p>', '', '<p>Hdd 80g ATA samsung, Seagate mới 100%</p>\n<p>bảo hành 12 tháng, nhanh chống, 1 đổi 1</p>\n<p>(giá 450.000đ- 480.000đ)</p>', '', '10-hdd-80g-ata-samsung-seagate-moi-100', '', '', '', 0, 16, '450000', 0, 0, '', '', '', '', 1, 452),
(1968, '10 Hdd 80g SATA samsung, Seagate mới 100%', '', '2012-05-28 09:31:56', 'hdd-80g-sata-samsung-seagate-moi-100-gia-700k-thumb.jpg', 'hdd-80g-sata-samsung-seagate-moi-100-gia-700k.jpg', '', '<p>Hdd 80g SATA samsung, Seagate mới 100%</p>\n<p>bảo hành 12 tháng, nhanh chống, 1 đổi 1</p>\n<p><span style="color:#ff0000;"><strong>(giá 700.000đ- 750.000đ)</strong></span></p>', '', '<p>Hdd 80g SATA samsung, Seagate mới 100%</p>\n<p>bảo hành 12 tháng, nhanh chống, 1 đổi 1</p>\n<p>(giá 700.000đ- 750.000đ)</p>', '', '10-hdd-80g-sata-samsung-seagate-moi-100', '', '', '', 0, 17, '700000', 0, 0, '', '', '', '', 1, 452),
(1969, '10 Hdd 40g ATA samsung, Seagate mới 100%', '', '2012-05-28 09:33:53', 'hdd-40g-ata-samsung-seagate-moi-100-gia-250k-thumb.jpg', 'hdd-40g-ata-samsung-seagate-moi-100-gia-250k.jpg', '', '<p>Hdd 40g ATA samsung, Seagate mới 100%,</p>\n<p>bảo hành 12 tháng, nhanh chống, 1 đổi 1</p>\n<p><span style="color:#ff0000;"><strong>(giá 230.000đ- 250.000đ)</strong></span></p>', '', '<p>Hdd 40g ATA samsung, Seagate mới 100%,</p>\n<p>bảo hành 12 tháng, nhanh chống, 1 đổi 1</p>\n<p>(giá 230.000đ- 250.000đ)</p>', '', '10-hdd-40g-ata-samsung-seagate-moi-100', '', '', '', 0, 18, '250000', 0, 0, '', '', '', '', 1, 452),
(1970, '100 thanh DDram1 512m mới 100%', '', '2012-05-28 09:36:58', 'ddram1-512m-moi-100-gia-120k-150k-thumb.jpg', 'ddram1-512m-moi-100-gia-120k-150k.jpg', '', '<p>DDram1 512M/ bus 400 mới 100%</p>\n<p>bảo hành 12 tháng, nhanh chống, 1 đổi 1</p>\n<p><span style="color:#ff0000;"><strong> (giá 120.000đ-150.000đ)</strong></span></p>', '', '<p>DDram1 512M/ bus 400 mới 100%</p>\n<p>bảo hành 12 tháng, nhanh chống, 1 đổi 1</p>\n<p>(giá 120.000đ-150.000đ)</p>', '', '100-thanh-ddram1-512m-moi-100', '', '', '', 0, 19, '120.000 - 150.000VND', 0, 0, '', '', '', '', 1, 452),
(1972, '50 thanh DDram2 1g mới 100%', '', '2012-05-28 09:38:38', 'ddram2-1g-moi-100-gia-250k-270k-thumb.jpg', 'ddram2-1g-moi-100-gia-250k-270k.jpg', '', '<p>DDram2 1g/ bus 800 mới 100%</p>\n<p>bảo hành 24 tháng, nhanh chống, 1 đổi 1</p>\n<p><span style="color:#ff0000;"><strong>(giá 250.000đ-270.000đ)</strong></span></p>', '', '<p>DDram2 1g/ bus 800 mới 100%</p>\n<p>bảo hành 24 tháng, nhanh chống, 1 đổi 1</p>\n<p>(giá 250.000đ-270.000đ)</p>', '', '50-thanh-ddram2-1g-moi-100', '', '', '', 0, 20, '250.000 - 270.000VND', 0, 0, '', '', '', '', 1, 452),
(1973, '50 thanh DDram2 1g cũ', '', '2012-05-28 09:42:53', '50-thanh-ddram2-1g-cu-gia-170k-200k-thumb.jpg', '50-thanh-ddram2-1g-cu-gia-170k-200k.jpg', '', '<p>DDram2 1g/ bus 667/800 cũ 80%</p>\n<p>bảo hành 1 tháng, nhanh chống, 1 đổi 1</p>\n<p>(giá 170.000đ-200.000đ)</p>', '', '<p>DDram2 1g/ bus 667/800 cũ 80%</p>\n<p>bảo hành 1 tháng, nhanh chống, 1 đổi 1</p>\n<p>(giá 170.000đ-200.000đ)</p>', '', '50-thanh-ddram2-1g-cu', '', '', '', 0, 21, '170.000 - 200.000VND', 0, 0, '', '', '', '', 1, 452),
(1974, 'Pentium4 3.0/Main 945/DDram1g/hdd 80/ key +mouse', '', '2012-05-28 09:57:08', 'pentium4-3-0main-945ddram1ghdd-80-key-mouse-gia-1tr8-thumb.jpg', 'pentium4-3-0main-945ddram1ghdd-80-key-mouse-gia-1tr8.jpg', '', '<p>Cty Phi Vũ - 380 Nguyễn Hoàng- ĐN- 0905.168.699<br />Bán một số case: chất lượng rất tốt, máy chạy ổn định. Bảo hành 3 tháng 1 đổi 1.</p>\n<p>Dou core E5200<br />Main 945/ sk77<br />ddram 1g<br />hdd 80g (mới bh 12 tháng)<br />Case nguồn<br />(giá 2tr4</p>\n<p>Dou core E2160<br />Main g945/ sk77<br />ddram 1g<br />hdd 80g (mới bh 12 tháng)<br />cd rom mới<br />Case nguồn<br />(giá 2tr2)</p>\n<p>Dou core E2140<br />Main 945/ sk77<br />ddram 1g<br />hdd 80g (mới bh 12 tháng)<br />Case nguồn<br />(giá 2tr1)</p>\n<p>pentium4 3.0ghz hoặc Pentium D 2.8ghz<br />Main 945/ sk77<br />ddram 1g<br />hdd 80g (mới bh 12 tháng)<br />Case nguồn<br />(giá 1tr8)</p>\n<p>Pentium4 3.0ghz<br />Main 945/ sk77<br />ddram 1g<br />hdd 40g (mới bh 12 tháng)<br />Case nguồn<br />(giá 1tr6)</p>\n<p>pentium4 2.26-2.4ghz<br />Main 845/ sk478<br />ddram 512Mb<br />hdd 40g (mới bh 12 tháng)<br />Case nguồn<br />(giá 1tr1)</p>\n<p>Intel CE 2.0-2.4 ghz<br />Main 845/ sk478<br />ddram 512Mb<br />hdd 40g (mới bh 12 tháng)<br />Case nguồn<br />(giá 1tr)</p>\n<p>ngoài ra công ty có bán màn hình CRT 17'' giá 280k, LCD 15'', 17'' giá 1tr-1tr5</p>', '', '<p>Cty Phi Vũ - 380 Nguyễn Hoàng- ĐN- 0905.168.699<br />Bán một số case: chất lượng rất tốt, máy chạy ổn định. Bảo hành 3 tháng 1 đổi 1.</p>\n<p>Dou core E5200<br />Main 945/ sk77<br />ddram 1g<br />hdd 80g (mới bh 12 tháng)<br />Case nguồn<br />(giá 2tr4</p>\n<p>Dou core E2160<br />Main g945/ sk77<br />ddram 1g<br />hdd 80g (mới bh 12 tháng)<br />cd rom mới<br />Case nguồn<br />(giá 2tr2)</p>\n<p>Dou core E2140<br />Main 945/ sk77<br />ddram 1g<br />hdd 80g (mới bh 12 tháng)<br />Case nguồn<br />(giá 2tr1)</p>\n<p>pentium4 3.0ghz hoặc Pentium D 2.8ghz<br />Main 945/ sk77<br />ddram 1g<br />hdd 80g (mới bh 12 tháng)<br />Case nguồn<br />(giá 1tr8)</p>\n<p>Pentium4 3.0ghz<br />Main 945/ sk77<br />ddram 1g<br />hdd 40g (mới bh 12 tháng)<br />Case nguồn<br />(giá 1tr6)</p>\n<p>pentium4 2.26-2.4ghz<br />Main 845/ sk478<br />ddram 512Mb<br />hdd 40g (mới bh 12 tháng)<br />Case nguồn<br />(giá 1tr1)</p>\n<p>Intel CE 2.0-2.4 ghz<br />Main 845/ sk478<br />ddram 512Mb<br />hdd 40g (mới bh 12 tháng)<br />Case nguồn<br />(giá 1tr)</p>\n<p>ngoài ra công ty có bán màn hình CRT 17'' giá 280k, LCD 15'', 17'' giá 1tr-1tr5</p>', '', 'pentium4-30main-945ddram1ghdd-80-key-mouse', '', '', '', 0, 22, '1800000', 0, 0, '', '', '', '', 1, 451),
(1975, 'Dou core E2140/main 945/ddram 1g/hdd 80/ key+mouse', '', '2012-05-28 09:59:02', 'dou-core-e2140main-945ddram-1ghdd-80-keymouse-gia-2tr1-thumb.jpg', 'dou-core-e2140main-945ddram-1ghdd-80-keymouse-gia-2tr1.jpg', '', '<p>Cty Phi Vũ - 380 Nguyễn Hoàng- ĐN- 0905.168.699<br />Bán một số case: chất lượng rất tốt, máy chạy ổn định. Bảo hành 3 tháng 1 đổi 1.</p>\n<p>Dou core E5200<br />Main 945/ sk77<br />ddram 1g<br />hdd 80g (mới bh 12 tháng)<br />Case nguồn<br />(giá 2tr4</p>\n<p>Dou core E2160<br />Main g945/ sk77<br />ddram 1g<br />hdd 80g (mới bh 12 tháng)<br />cd rom mới<br />Case nguồn<br />(giá 2tr2)</p>\n<p>Dou core E2140<br />Main 945/ sk77<br />ddram 1g<br />hdd 80g (mới bh 12 tháng)<br />Case nguồn<br />(giá 2tr1)</p>\n<p>pentium4 3.0ghz hoặc Pentium D 2.8ghz<br />Main 945/ sk77<br />ddram 1g<br />hdd 80g (mới bh 12 tháng)<br />Case nguồn<br />(giá 1tr8)</p>\n<p>Pentium4 3.0ghz<br />Main 945/ sk77<br />ddram 1g<br />hdd 40g (mới bh 12 tháng)<br />Case nguồn<br />(giá 1tr6)</p>\n<p>pentium4 2.26-2.4ghz<br />Main 845/ sk478<br />ddram 512Mb<br />hdd 40g (mới bh 12 tháng)<br />Case nguồn<br />(giá 1tr1)</p>\n<p>Intel CE 2.0-2.4 ghz<br />Main 845/ sk478<br />ddram 512Mb<br />hdd 40g (mới bh 12 tháng)<br />Case nguồn<br />(giá 1tr)</p>\n<p>ngoài ra công ty có bán màn hình CRT 17'' giá 280k, LCD 15'', 17'' giá 1tr-1tr5</p>', '', '<p>Cty Phi Vũ - 380 Nguyễn Hoàng- ĐN- 0905.168.699<br />Bán một số case: chất lượng rất tốt, máy chạy ổn định. Bảo hành 3 tháng 1 đổi 1.</p>\n<p>Dou core E5200<br />Main 945/ sk77<br />ddram 1g<br />hdd 80g (mới bh 12 tháng)<br />Case nguồn<br />(giá 2tr4</p>\n<p>Dou core E2160<br />Main g945/ sk77<br />ddram 1g<br />hdd 80g (mới bh 12 tháng)<br />cd rom mới<br />Case nguồn<br />(giá 2tr2)</p>\n<p>Dou core E2140<br />Main 945/ sk77<br />ddram 1g<br />hdd 80g (mới bh 12 tháng)<br />Case nguồn<br />(giá 2tr1)</p>\n<p>pentium4 3.0ghz hoặc Pentium D 2.8ghz<br />Main 945/ sk77<br />ddram 1g<br />hdd 80g (mới bh 12 tháng)<br />Case nguồn<br />(giá 1tr8)</p>\n<p>Pentium4 3.0ghz<br />Main 945/ sk77<br />ddram 1g<br />hdd 40g (mới bh 12 tháng)<br />Case nguồn<br />(giá 1tr6)</p>\n<p>pentium4 2.26-2.4ghz<br />Main 845/ sk478<br />ddram 512Mb<br />hdd 40g (mới bh 12 tháng)<br />Case nguồn<br />(giá 1tr1)</p>\n<p>Intel CE 2.0-2.4 ghz<br />Main 845/ sk478<br />ddram 512Mb<br />hdd 40g (mới bh 12 tháng)<br />Case nguồn<br />(giá 1tr)</p>\n<p>ngoài ra công ty có bán màn hình CRT 17'' giá 280k, LCD 15'', 17'' giá 1tr-1tr5</p>', '', 'dou-core-e2140main-945ddram-1ghdd-80-keymouse', '', '', '', 0, 23, '2100000', 0, 0, '', '', '', '', 1, 451),
(1976, 'Dou core E2160/main 945/ddram 1g/hdd 80/ key+mouse', '', '2012-05-28 09:59:44', 'dou-core-e2160main-945ddram-1ghdd-80-keymouse-gia-2tr2-thumb.jpg', 'dou-core-e2160main-945ddram-1ghdd-80-keymouse-gia-2tr2.jpg', '', '<p>Cty Phi Vũ - 380 Nguyễn Hoàng- ĐN- 0905.168.699<br />Bán một số case: chất lượng rất tốt, máy chạy ổn định. Bảo hành 3 tháng 1 đổi 1.</p>\n<p>Dou core E5200<br />Main 945/ sk77<br />ddram 1g<br />hdd 80g (mới bh 12 tháng)<br />Case nguồn<br />(giá 2tr4</p>\n<p>Dou core E2160<br />Main g945/ sk77<br />ddram 1g<br />hdd 80g (mới bh 12 tháng)<br />cd rom mới<br />Case nguồn<br />(giá 2tr2)</p>\n<p>Dou core E2140<br />Main 945/ sk77<br />ddram 1g<br />hdd 80g (mới bh 12 tháng)<br />Case nguồn<br />(giá 2tr1)</p>\n<p>pentium4 3.0ghz hoặc Pentium D 2.8ghz<br />Main 945/ sk77<br />ddram 1g<br />hdd 80g (mới bh 12 tháng)<br />Case nguồn<br />(giá 1tr8)</p>\n<p>Pentium4 3.0ghz<br />Main 945/ sk77<br />ddram 1g<br />hdd 40g (mới bh 12 tháng)<br />Case nguồn<br />(giá 1tr6)</p>\n<p>pentium4 2.26-2.4ghz<br />Main 845/ sk478<br />ddram 512Mb<br />hdd 40g (mới bh 12 tháng)<br />Case nguồn<br />(giá 1tr1)</p>\n<p>Intel CE 2.0-2.4 ghz<br />Main 845/ sk478<br />ddram 512Mb<br />hdd 40g (mới bh 12 tháng)<br />Case nguồn<br />(giá 1tr)</p>\n<p>ngoài ra công ty có bán màn hình CRT 17'' giá 280k, LCD 15'', 17'' giá 1tr-1tr5</p>', '', '<p>Cty Phi Vũ - 380 Nguyễn Hoàng- ĐN- 0905.168.699<br />Bán một số case: chất lượng rất tốt, máy chạy ổn định. Bảo hành 3 tháng 1 đổi 1.</p>\n<p>Dou core E5200<br />Main 945/ sk77<br />ddram 1g<br />hdd 80g (mới bh 12 tháng)<br />Case nguồn<br />(giá 2tr4</p>\n<p>Dou core E2160<br />Main g945/ sk77<br />ddram 1g<br />hdd 80g (mới bh 12 tháng)<br />cd rom mới<br />Case nguồn<br />(giá 2tr2)</p>\n<p>Dou core E2140<br />Main 945/ sk77<br />ddram 1g<br />hdd 80g (mới bh 12 tháng)<br />Case nguồn<br />(giá 2tr1)</p>\n<p>pentium4 3.0ghz hoặc Pentium D 2.8ghz<br />Main 945/ sk77<br />ddram 1g<br />hdd 80g (mới bh 12 tháng)<br />Case nguồn<br />(giá 1tr8)</p>\n<p>Pentium4 3.0ghz<br />Main 945/ sk77<br />ddram 1g<br />hdd 40g (mới bh 12 tháng)<br />Case nguồn<br />(giá 1tr6)</p>\n<p>pentium4 2.26-2.4ghz<br />Main 845/ sk478<br />ddram 512Mb<br />hdd 40g (mới bh 12 tháng)<br />Case nguồn<br />(giá 1tr1)</p>\n<p>Intel CE 2.0-2.4 ghz<br />Main 845/ sk478<br />ddram 512Mb<br />hdd 40g (mới bh 12 tháng)<br />Case nguồn<br />(giá 1tr)</p>\n<p>ngoài ra công ty có bán màn hình CRT 17'' giá 280k, LCD 15'', 17'' giá 1tr-1tr5</p>', '', 'dou-core-e2160main-945ddram-1ghdd-80-keymouse', '', '', '', 0, 24, '2200000', 0, 0, '', '', '', '', 1, 451),
(1977, 'Dou core E5200/main 945/ddram 1g/hdd 80/ key+mouse', '', '2012-05-28 10:00:50', 'dou-core-e5200main-945ddram-1ghdd-80-keymouse-gia-2tr4-thumb.jpg', 'dou-core-e5200main-945ddram-1ghdd-80-keymouse-gia-2tr4.jpg', '', '<p>Cty Phi Vũ - 380 Nguyễn Hoàng- ĐN- 0905.168.699<br />Bán một số case: chất lượng rất tốt, máy chạy ổn định. Bảo hành 3 tháng 1 đổi 1.</p>\n<p>Dou core E5200<br />Main 945/ sk77<br />ddram 1g<br />hdd 80g (mới bh 12 tháng)<br />Case nguồn<br />(giá 2tr4</p>\n<p>Dou core E2160<br />Main g945/ sk77<br />ddram 1g<br />hdd 80g (mới bh 12 tháng)<br />cd rom mới<br />Case nguồn<br />(giá 2tr2)</p>\n<p>Dou core E2140<br />Main 945/ sk77<br />ddram 1g<br />hdd 80g (mới bh 12 tháng)<br />Case nguồn<br />(giá 2tr1)</p>\n<p>pentium4 3.0ghz hoặc Pentium D 2.8ghz<br />Main 945/ sk77<br />ddram 1g<br />hdd 80g (mới bh 12 tháng)<br />Case nguồn<br />(giá 1tr8)</p>\n<p>Pentium4 3.0ghz<br />Main 945/ sk77<br />ddram 1g<br />hdd 40g (mới bh 12 tháng)<br />Case nguồn<br />(giá 1tr6)</p>\n<p>pentium4 2.26-2.4ghz<br />Main 845/ sk478<br />ddram 512Mb<br />hdd 40g (mới bh 12 tháng)<br />Case nguồn<br />(giá 1tr1)</p>\n<p>Intel CE 2.0-2.4 ghz<br />Main 845/ sk478<br />ddram 512Mb<br />hdd 40g (mới bh 12 tháng)<br />Case nguồn<br />(giá 1tr)</p>\n<p>ngoài ra công ty có bán màn hình CRT 17'' giá 280k, LCD 15'', 17'' giá 1tr-1tr5</p>', '', '<p>Cty Phi Vũ - 380 Nguyễn Hoàng- ĐN- 0905.168.699<br />Bán một số case: chất lượng rất tốt, máy chạy ổn định. Bảo hành 3 tháng 1 đổi 1.</p>\n<p>Dou core E5200<br />Main 945/ sk77<br />ddram 1g<br />hdd 80g (mới bh 12 tháng)<br />Case nguồn<br />(giá 2tr4</p>\n<p>Dou core E2160<br />Main g945/ sk77<br />ddram 1g<br />hdd 80g (mới bh 12 tháng)<br />cd rom mới<br />Case nguồn<br />(giá 2tr2)</p>\n<p>Dou core E2140<br />Main 945/ sk77<br />ddram 1g<br />hdd 80g (mới bh 12 tháng)<br />Case nguồn<br />(giá 2tr1)</p>\n<p>pentium4 3.0ghz hoặc Pentium D 2.8ghz<br />Main 945/ sk77<br />ddram 1g<br />hdd 80g (mới bh 12 tháng)<br />Case nguồn<br />(giá 1tr8)</p>\n<p>Pentium4 3.0ghz<br />Main 945/ sk77<br />ddram 1g<br />hdd 40g (mới bh 12 tháng)<br />Case nguồn<br />(giá 1tr6)</p>\n<p>pentium4 2.26-2.4ghz<br />Main 845/ sk478<br />ddram 512Mb<br />hdd 40g (mới bh 12 tháng)<br />Case nguồn<br />(giá 1tr1)</p>\n<p>Intel CE 2.0-2.4 ghz<br />Main 845/ sk478<br />ddram 512Mb<br />hdd 40g (mới bh 12 tháng)<br />Case nguồn<br />(giá 1tr)</p>\n<p>ngoài ra công ty có bán màn hình CRT 17'' giá 280k, LCD 15'', 17'' giá 1tr-1tr5</p>', '', 'dou-core-e5200main-945ddram-1ghdd-80-keymouse', '', '', '', 0, 25, '2400000', 0, 0, '', '', '', '', 1, 451),
(1978, 'Pentium4 3.0/Main 945/DDram1g/hdd 40/ key +mouse', '', '2012-05-28 10:02:25', 'pentium4-3-0main-945ddram1ghdd-40-key-mouse-gia-1tr6-thumb.jpg', 'pentium4-3-0main-945ddram1ghdd-40-key-mouse-gia-1tr6.jpg', '', '<p>Cty Phi Vũ - 380 Nguyễn Hoàng- ĐN- 0905.168.699<br />Bán một số case: chất lượng rất tốt, máy chạy ổn định. Bảo hành 3 tháng 1 đổi 1.</p>\n<p>Dou core E5200<br />Main 945/ sk77<br />ddram 1g<br />hdd 80g (mới bh 12 tháng)<br />Case nguồn<br />(giá 2tr4</p>\n<p>Dou core E2160<br />Main g945/ sk77<br />ddram 1g<br />hdd 80g (mới bh 12 tháng)<br />cd rom mới<br />Case nguồn<br />(giá 2tr2)</p>\n<p>Dou core E2140<br />Main 945/ sk77<br />ddram 1g<br />hdd 80g (mới bh 12 tháng)<br />Case nguồn<br />(giá 2tr1)</p>\n<p>pentium4 3.0ghz hoặc Pentium D 2.8ghz<br />Main 945/ sk77<br />ddram 1g<br />hdd 80g (mới bh 12 tháng)<br />Case nguồn<br />(giá 1tr8)</p>\n<p>Pentium4 3.0ghz<br />Main 945/ sk77<br />ddram 1g<br />hdd 40g (mới bh 12 tháng)<br />Case nguồn<br />(giá 1tr6)</p>\n<p>pentium4 2.26-2.4ghz<br />Main 845/ sk478<br />ddram 512Mb<br />hdd 40g (mới bh 12 tháng)<br />Case nguồn<br />(giá 1tr1)</p>\n<p>Intel CE 2.0-2.4 ghz<br />Main 845/ sk478<br />ddram 512Mb<br />hdd 40g (mới bh 12 tháng)<br />Case nguồn<br />(giá 1tr)</p>\n<p>ngoài ra công ty có bán màn hình CRT 17'' giá 280k, LCD 15'', 17'' giá 1tr-1tr5</p>', '', '<p>Cty Phi Vũ - 380 Nguyễn Hoàng- ĐN- 0905.168.699<br />Bán một số case: chất lượng rất tốt, máy chạy ổn định. Bảo hành 3 tháng 1 đổi 1.</p>\n<p>Dou core E5200<br />Main 945/ sk77<br />ddram 1g<br />hdd 80g (mới bh 12 tháng)<br />Case nguồn<br />(giá 2tr4</p>\n<p>Dou core E2160<br />Main g945/ sk77<br />ddram 1g<br />hdd 80g (mới bh 12 tháng)<br />cd rom mới<br />Case nguồn<br />(giá 2tr2)</p>\n<p>Dou core E2140<br />Main 945/ sk77<br />ddram 1g<br />hdd 80g (mới bh 12 tháng)<br />Case nguồn<br />(giá 2tr1)</p>\n<p>pentium4 3.0ghz hoặc Pentium D 2.8ghz<br />Main 945/ sk77<br />ddram 1g<br />hdd 80g (mới bh 12 tháng)<br />Case nguồn<br />(giá 1tr8)</p>\n<p>Pentium4 3.0ghz<br />Main 945/ sk77<br />ddram 1g<br />hdd 40g (mới bh 12 tháng)<br />Case nguồn<br />(giá 1tr6)</p>\n<p>pentium4 2.26-2.4ghz<br />Main 845/ sk478<br />ddram 512Mb<br />hdd 40g (mới bh 12 tháng)<br />Case nguồn<br />(giá 1tr1)</p>\n<p>Intel CE 2.0-2.4 ghz<br />Main 845/ sk478<br />ddram 512Mb<br />hdd 40g (mới bh 12 tháng)<br />Case nguồn<br />(giá 1tr)</p>\n<p>ngoài ra công ty có bán màn hình CRT 17'' giá 280k, LCD 15'', 17'' giá 1tr-1tr5</p>', '', 'pentium4-30main-945ddram1ghdd-40-key-mouse', '', '', '', 0, 26, '1600000', 0, 0, '', '', '', '', 1, 451),
(1979, 'Pentium4 2.26-2.4/Main 845/DDram 512m/hdd 40/ key +mouse', '', '2012-05-28 10:03:53', 'pentium4-2-26-2-4main-845ddram-512mhdd-40-key-mouse-gia-1tr1-thumb.jpg', 'pentium4-2-26-2-4main-845ddram-512mhdd-40-key-mouse-gia-1tr1.jpg', '', '<p>Cty Phi Vũ - 380 Nguyễn Hoàng- ĐN- 0905.168.699<br />Bán một số case: chất lượng rất tốt, máy chạy ổn định. Bảo hành 3 tháng 1 đổi 1.</p>\n<p>Dou core E5200<br />Main 945/ sk77<br />ddram 1g<br />hdd 80g (mới bh 12 tháng)<br />Case nguồn<br />(giá 2tr4</p>\n<p>Dou core E2160<br />Main g945/ sk77<br />ddram 1g<br />hdd 80g (mới bh 12 tháng)<br />cd rom mới<br />Case nguồn<br />(giá 2tr2)</p>\n<p>Dou core E2140<br />Main 945/ sk77<br />ddram 1g<br />hdd 80g (mới bh 12 tháng)<br />Case nguồn<br />(giá 2tr1)</p>\n<p>pentium4 3.0ghz hoặc Pentium D 2.8ghz<br />Main 945/ sk77<br />ddram 1g<br />hdd 80g (mới bh 12 tháng)<br />Case nguồn<br />(giá 1tr8)</p>\n<p>Pentium4 3.0ghz<br />Main 945/ sk77<br />ddram 1g<br />hdd 40g (mới bh 12 tháng)<br />Case nguồn<br />(giá 1tr6)</p>\n<p>pentium4 2.26-2.4ghz<br />Main 845/ sk478<br />ddram 512Mb<br />hdd 40g (mới bh 12 tháng)<br />Case nguồn<br />(giá 1tr1)</p>\n<p><br />Intel CE 2.0-2.4 ghz<br />Main 845/ sk478<br />ddram 512Mb<br />hdd 40g (mới bh 12 tháng)<br />Case nguồn<br />(giá 1tr)</p>\n<p>ngoài ra công ty có bán màn hình CRT 17'' giá 280k, LCD 15'', 17'' giá 1tr-1tr5</p>', '', '<p>Cty Phi Vũ - 380 Nguyễn Hoàng- ĐN- 0905.168.699<br />Bán một số case: chất lượng rất tốt, máy chạy ổn định. Bảo hành 3 tháng 1 đổi 1.</p>\n<p>Dou core E5200<br />Main 945/ sk77<br />ddram 1g<br />hdd 80g (mới bh 12 tháng)<br />Case nguồn<br />(giá 2tr4</p>\n<p>Dou core E2160<br />Main g945/ sk77<br />ddram 1g<br />hdd 80g (mới bh 12 tháng)<br />cd rom mới<br />Case nguồn<br />(giá 2tr2)</p>\n<p>Dou core E2140<br />Main 945/ sk77<br />ddram 1g<br />hdd 80g (mới bh 12 tháng)<br />Case nguồn<br />(giá 2tr1)</p>\n<p>pentium4 3.0ghz hoặc Pentium D 2.8ghz<br />Main 945/ sk77<br />ddram 1g<br />hdd 80g (mới bh 12 tháng)<br />Case nguồn<br />(giá 1tr8)</p>\n<p>Pentium4 3.0ghz<br />Main 945/ sk77<br />ddram 1g<br />hdd 40g (mới bh 12 tháng)<br />Case nguồn<br />(giá 1tr6)</p>\n<p>pentium4 2.26-2.4ghz<br />Main 845/ sk478<br />ddram 512Mb<br />hdd 40g (mới bh 12 tháng)<br />Case nguồn<br />(giá 1tr1)</p>\n<p>Intel CE 2.0-2.4 ghz<br />Main 845/ sk478<br />ddram 512Mb<br />hdd 40g (mới bh 12 tháng)<br />Case nguồn<br />(giá 1tr)</p>\n<p>ngoài ra công ty có bán màn hình CRT 17'' giá 280k, LCD 15'', 17'' giá 1tr-1tr5</p>', '', 'pentium4-226-24main-845ddram-512mhdd-40-key-mouse', '', '', '', 0, 27, '1100000', 0, 0, '', '', '', '', 1, 451),
(1980, 'Khuyến mại case vi tính cực rẻ, giá chỉ 2.950.000VND', '', '2012-05-28 10:15:30', 'khuyen-mai-case-vi-tinh-cuc-re-gia-chi-2-950-000vnd-thumb.jpg', 'khuyen-mai-case-vi-tinh-cuc-re-gia-chi-2-950-000vnd.jpg', '', '<p>Cty Công Nghệ tin học Phi Vũ<br />380 Nguyễn Hoàng- ĐN- 0905.168.699</p>\n<p>Khuyến mại một số case vi tính mới 100% giá cực rẻ:<br />thời gian khuyến mại trong vòng 15 ngày</p>\n<p>1. Dou core E2140 (1.6ghz)<br />Main G31 chíp Intel<br />Hdd 80g Seagate<br />DDram2 1g<br />DVD samsung<br />Case + Nguồn 500W<br />Key + mouse MSM<br />(Giá 2.950.000đ) Bảo hành 24 tháng</p>\n<p>2. Dou core E2140 (1.6ghz)<br />Main G31 chíp Intel<br />Hdd 160g Seagate<br />DDram2 1g<br />DVD samsung<br />Case + Nguồn 500W<br />Key + mouse MSM<br />(Giá 3.350.000đ) Bảo hành 24 tháng</p>\n<p>3. Dou core E5200 (1.6ghz)<br />Main G41 chíp Intel<br />Hdd 160g Seagate<br />DDram3 2g<br />DVD samsung<br />Case + Nguồn 500W<br />Key + mouse MSM<br />(Giá 4.050.000đ) Bảo hành 36 tháng</p>\n<p>quý khách có nhu cầu hãy liên hệ nhanh 0905.168.699</p>\n<p> </p>\n<p> </p>\n<p> </p>', '', '<p>Cty Công Nghệ tin học Phi Vũ<br />380 Nguyễn Hoàng- ĐN- 0905.168.699</p>\n<p>Khuyến mại một số case vi tính mới 100% giá cực rẻ:<br />thời gian khuyến mại trong vòng 15 ngày</p>\n<p>1. Dou core E2140 (1.6ghz)<br />Main G31 chíp Intel<br />Hdd 80g Seagate<br />DDram2 1g<br />DVD samsung<br />Case + Nguồn 500W<br />Key + mouse MSM<br />(Giá 2.950.000đ) Bảo hành 24 tháng</p>\n<p>2. Dou core E2140 (1.6ghz)<br />Main G31 chíp Intel<br />Hdd 160g Seagate<br />DDram2 1g<br />DVD samsung<br />Case + Nguồn 500W<br />Key + mouse MSM<br />(Giá 3.350.000đ) Bảo hành 24 tháng</p>\n<p>3. Dou core E5200 (1.6ghz)<br />Main G41 chíp Intel<br />Hdd 160g Seagate<br />DDram3 2g<br />DVD samsung<br />Case + Nguồn 500W<br />Key + mouse MSM<br />(Giá 4.050.000đ) Bảo hành 36 tháng</p>\n<p>quý khách có nhu cầu hãy liên hệ nhanh 0905.168.699</p>\n<p> </p>', '', 'khuyen-mai-case-vi-tinh-cuc-re-gia-chi-2950000vnd', '', '', '', 0, 28, '2950000', 1, 0, '', '', '', '', 1, 453),
(1981, 'Bảng giá Case mới 100% các loại', '', '2012-05-28 10:26:21', 'bang-gia-case-moi-100-cac-loai-thumb.jpg', 'bang-gia-case-moi-100-cac-loai.jpg', '', '<p> quý khách vui lòng liên hệ để có giá tốt nhất</p>\n<p>DĐ: 0905.168.699 gặp A.VIỆT</p>', '', '<p>quý khách vui lòng liên hệ để có giá tốt nhất</p>\n<p>DĐ: 0905.168.699  gặp A.VIỆT</p>', '', 'bang-gia-case-moi-100-cac-loai', '', '', '', 0, 29, '', 0, 0, '', '', '', '', 1, 453),
(1982, 'Phân phối DDram1 512M mới 100%', '', '2012-05-29 01:01:39', 'phan-phoi-ddram1-512m-moi-100-gia-120k-thumb.jpg', 'phan-phoi-ddram1-512m-moi-100-gia-120k.jpg', '', '<p>Cty Phi Vũ - 380 Nguyễn Hoàng- ĐN- 0905.168.699</p>\n<p>phân phối các mặt hàng mới 100% giá tốt: bảo hành 12 tháng 1 đổi 1</p>\n<p>- DDram1 512/400 PC...............................giá 120k-150k ( Loại 1)</p>\n<p>- Main 865 sk 478.......................................giá 480k- 500k ( Loại 2 )</p>\n<p>- Main 865 sk 478.......................................giá 530k - 550k ( Loại 1, loại tốt )</p>\n<p>- Main G31 chạy được Celeron D, Pentium 4, Dou core, Core 2 Dou..........giá 780-800k</p>\n<p>- DDram2 1g/800 PC.................................giá 250k</p>\n<p>- HDD 40g ATA samsung............................giá 250k - 270k</p>\n<p>- HDD 80g ATA samsung, Seagate............giá 450k</p>\n<p>- HDD 160g SATA samsung, Seagate........giá 900- 950k</p>\n<p>- HDD 80g SATA samsung, Seagate..........giá 720k - 750k</p>\n<p>- DVD-rom ATA samsung........................giá 200k</p>\n<p>- DVD-rom SATA samsung........................giá 250k</p>\n<p>- nguồn 550W, 24 Pin................................giá 200k-250</p>\n<p>&gt;&gt;&gt;&gt;Nếu lấy số lượng hãy gọi 0905.168.699 để có giá tốt&lt;&lt;&lt;&lt;</p>', '', '<p>Cty Phi Vũ - 380 Nguyễn Hoàng- ĐN- 0905.168.699</p>\n<p>phân phối các mặt hàng mới 100% giá tốt: bảo hành 12 tháng 1 đổi 1</p>\n<p>- DDram1 512/400 PC...............................giá 120k-150k ( Loại 1)</p>\n<p>- Main 865 sk 478.......................................giá 480k- 500k ( Loại 2 )</p>\n<p>- Main 865 sk 478.......................................giá 530k - 550k ( Loại 1, loại tốt )</p>\n<p>- Main G31 chạy được Celeron D, Pentium 4, Dou core, Core 2 Dou..........giá 780-800k</p>\n<p>- DDram2 1g/800 PC.................................giá 250k</p>\n<p>- HDD 40g ATA samsung............................giá 250k - 270k</p>\n<p>- HDD 80g ATA samsung, Seagate............giá 450k</p>\n<p>- HDD 160g SATA samsung, Seagate........giá 900- 950k</p>\n<p>- HDD 80g SATA samsung, Seagate..........giá 720k - 750k</p>\n<p>- DVD-rom ATA samsung........................giá 200k</p>\n<p>- DVD-rom SATA samsung........................giá 250k</p>\n<p>- nguồn 550W, 24 Pin................................giá 200k-250</p>\n<p>&gt;&gt;&gt;&gt;Nếu lấy số lượng hãy gọi 0905.168.699 để có giá tốt&lt;&lt;&lt;&lt;</p>', '', 'phan-phoi-ddram1-512m-moi-100', '', '', '', 0, 30, '120000', 1, 0, '', '', '', '', 1, 454),
(1983, 'Phân phối DDram2 1g/800 mới 100%', '', '2012-05-29 01:03:07', 'phan-phoi-ddram2-1g800-moi-100-gia-250k-thumb.jpg', 'phan-phoi-ddram2-1g800-moi-100-gia-250k.jpg', '', '<p>Cty Phi Vũ - 380 Nguyễn Hoàng- ĐN- 0905.168.699</p>\n<p>phân phối các mặt hàng mới 100% giá tốt: bảo hành 12 tháng 1 đổi 1</p>\n<p>- DDram2 1g/800 PC.................................giá 250k</p>\n<p>- DDram1 512/400 PC...............................giá 120k-150k ( Loại 1)</p>\n<p>- Main 865 sk 478.......................................giá 480k- 500k ( Loại 2 )</p>\n<p>- Main 865 sk 478.......................................giá 530k - 550k ( Loại 1, loại tốt )</p>\n<p>- Main G31 chạy được Celeron D, Pentium 4, Dou core, Core 2 Dou..........giá 780-800k</p>\n<p>- HDD 40g ATA samsung............................giá 250k - 270k</p>\n<p>- HDD 80g ATA samsung, Seagate............giá 450k</p>\n<p>- HDD 160g SATA samsung, Seagate........giá 900- 950k</p>\n<p>- HDD 80g SATA samsung, Seagate..........giá 720k - 750k</p>\n<p>- DVD-rom ATA samsung........................giá 200k</p>\n<p>- DVD-rom SATA samsung........................giá 250k</p>\n<p>- nguồn 550W, 24 Pin................................giá 200k-250</p>\n<p>&gt;&gt;&gt;&gt;Nếu lấy số lượng hãy gọi 0905.168.699 để có giá tốt&lt;&lt;&lt;&lt;</p>', '', '<p>Cty Phi Vũ - 380 Nguyễn Hoàng- ĐN- 0905.168.699</p>\n<p>phân phối các mặt hàng mới 100% giá tốt: bảo hành 12 tháng 1 đổi 1</p>\n<p>- DDram2 1g/800 PC.................................giá 250k</p>\n<p>- DDram1 512/400 PC...............................giá 120k-150k ( Loại 1)</p>\n<p>- Main 865 sk 478.......................................giá 480k- 500k ( Loại 2 )</p>\n<p>- Main 865 sk 478.......................................giá 530k - 550k ( Loại 1, loại tốt )</p>\n<p>- Main G31 chạy được Celeron D, Pentium 4, Dou core, Core 2 Dou..........giá 780-800k</p>\n<p>- HDD 40g ATA samsung............................giá 250k - 270k</p>\n<p>- HDD 80g ATA samsung, Seagate............giá 450k</p>\n<p>- HDD 160g SATA samsung, Seagate........giá 900- 950k</p>\n<p>- HDD 80g SATA samsung, Seagate..........giá 720k - 750k</p>\n<p>- DVD-rom ATA samsung........................giá 200k</p>\n<p>- DVD-rom SATA samsung........................giá 250k</p>\n<p>- nguồn 550W, 24 Pin................................giá 200k-250</p>\n<p>&gt;&gt;&gt;&gt;Nếu lấy số lượng hãy gọi 0905.168.699 để có giá tốt&lt;&lt;&lt;&lt;</p>', '', 'phan-phoi-ddram2-1g800-moi-100', '', '', '', 0, 31, '250000', 1, 0, '', '', '', '', 1, 454),
(1984, 'Phân phối HDD 40g, 80g, 160g, 250g mới 100% (giá rẻ)', '', '2012-05-29 01:05:46', 'phan-phoi-hdd-40g-80g-160g-250g-moi-100-gia-re-thumb.jpg', 'phan-phoi-hdd-40g-80g-160g-250g-moi-100-gia-re.jpg', '', '<p>Cty Phi Vũ - 380 Nguyễn Hoàng- ĐN- 0905.168.699</p>\n<p>phân phối các mặt hàng mới 100% giá tốt: bảo hành 12 tháng 1 đổi 1</p>\n<p>- DDram2 1g/800 PC.................................giá 250k</p>\n<p>- DDram1 512/400 PC...............................giá 120k-150k ( Loại 1)</p>\n<p>- Main 865 sk 478.......................................giá 480k- 500k ( Loại 2 )</p>\n<p>- Main 865 sk 478.......................................giá 530k - 550k ( Loại 1, loại tốt )</p>\n<p>- Main G31 chạy được Celeron D, Pentium 4, Dou core, Core 2 Dou..........giá 780-800k</p>\n<p>- HDD 40g ATA samsung............................giá 250k - 270k</p>\n<p>- HDD 80g ATA samsung, Seagate............giá 450k</p>\n<p>- HDD 160g SATA samsung, Seagate........giá 900- 950k</p>\n<p>- HDD 80g SATA samsung, Seagate..........giá 720k - 750k</p>\n<p>- DVD-rom ATA samsung........................giá 200k</p>\n<p>- DVD-rom SATA samsung........................giá 250k</p>\n<p>- nguồn 550W, 24 Pin................................giá 200k-250</p>\n<p>&gt;&gt;&gt;&gt;Nếu lấy số lượng hãy gọi 0905.168.699 để có giá tốt&lt;&lt;&lt;&lt;</p>', '', '<p>Cty Phi Vũ - 380 Nguyễn Hoàng- ĐN- 0905.168.699</p>\n<p>phân phối các mặt hàng mới 100% giá tốt: bảo hành 12 tháng 1 đổi 1</p>\n<p>- DDram2 1g/800 PC.................................giá 250k</p>\n<p>- DDram1 512/400 PC...............................giá 120k-150k ( Loại 1)</p>\n<p>- Main 865 sk 478.......................................giá 480k- 500k ( Loại 2 )</p>\n<p>- Main 865 sk 478.......................................giá 530k - 550k ( Loại 1, loại tốt )</p>\n<p>- Main G31 chạy được Celeron D, Pentium 4, Dou core, Core 2 Dou..........giá 780-800k</p>\n<p>- HDD 40g ATA samsung............................giá 250k - 270k</p>\n<p>- HDD 80g ATA samsung, Seagate............giá 450k</p>\n<p>- HDD 160g SATA samsung, Seagate........giá 900- 950k</p>\n<p>- HDD 80g SATA samsung, Seagate..........giá 720k - 750k</p>\n<p>- DVD-rom ATA samsung........................giá 200k</p>\n<p>- DVD-rom SATA samsung........................giá 250k</p>\n<p>- nguồn 550W, 24 Pin................................giá 200k-250</p>\n<p>&gt;&gt;&gt;&gt;Nếu lấy số lượng hãy gọi 0905.168.699 để có giá tốt&lt;&lt;&lt;&lt;</p>', '', 'phan-phoi-hdd-40g-80g-160g-250g-moi-100-gia-re', '', '', '', 0, 32, '', 1, 0, '', '', '', '', 1, 454),
(1986, 'phân phối Main G31 mới 100%', '', '2012-05-29 03:10:45', 'phan-phoi-main-g31-moi-100-thumb.jpg', 'phan-phoi-main-g31-moi-100.jpg', '', '<p>Cty Phi Vũ - 380 Nguyễn Hoàng- ĐN- 0905.168.699</p>\n<p>phân phối các mặt hàng mới 100% giá tốt: bảo hành 12 tháng 1 đổi 1</p>\n<p>- Main G31 chạy được Celeron D, Pentium 4, Dou core, Core 2 Dou..........giá 780-800k</p>\n<p>- DDram2 1g/800 PC.................................giá 250k</p>\n<p>- DDram1 512/400 PC...............................giá 120k-150k ( Loại 1)</p>\n<p>- Main 865 sk 478.......................................giá 480k- 500k ( Loại 2 )</p>\n<p>- Main 865 sk 478.......................................giá 530k - 550k ( Loại 1, loại tốt )</p>\n<p>- HDD 40g ATA samsung............................giá 250k - 270k</p>\n<p>- HDD 80g ATA samsung, Seagate............giá 450k</p>\n<p>- HDD 160g SATA samsung, Seagate........giá 900- 950k</p>\n<p>- HDD 80g SATA samsung, Seagate..........giá 720k - 750k</p>\n<p>- DVD-rom ATA samsung........................giá 200k</p>\n<p>- DVD-rom SATA samsung........................giá 250k</p>\n<p>- nguồn 550W, 24 Pin................................giá 200k-250</p>\n<p>&gt;&gt;&gt;&gt;Nếu lấy số lượng hãy gọi 0905.168.699 để có giá tốt&lt;&lt;&lt;&lt;</p>', '', '<p>Cty Phi Vũ - 380 Nguyễn Hoàng- ĐN- 0905.168.699</p>\n<p>phân phối các mặt hàng mới 100% giá tốt: bảo hành 12 tháng 1 đổi 1</p>\n<p>- Main G31 chạy được Celeron D, Pentium 4, Dou core, Core 2 Dou..........giá 780-800k</p>\n<p>- DDram2 1g/800 PC.................................giá 250k</p>\n<p>- DDram1 512/400 PC...............................giá 120k-150k ( Loại 1)</p>\n<p>- Main 865 sk 478.......................................giá 480k- 500k ( Loại 2 )</p>\n<p>- Main 865 sk 478.......................................giá 530k - 550k ( Loại 1, loại tốt )</p>\n<p>- HDD 40g ATA samsung............................giá 250k - 270k</p>\n<p>- HDD 80g ATA samsung, Seagate............giá 450k</p>\n<p>- HDD 160g SATA samsung, Seagate........giá 900- 950k</p>\n<p>- HDD 80g SATA samsung, Seagate..........giá 720k - 750k</p>\n<p>- DVD-rom ATA samsung........................giá 200k</p>\n<p>- DVD-rom SATA samsung........................giá 250k</p>\n<p>- nguồn 550W, 24 Pin................................giá 200k-250</p>\n<p>&gt;&gt;&gt;&gt;Nếu lấy số lượng hãy gọi 0905.168.699 để có giá tốt&lt;&lt;&lt;&lt;</p>', '', 'phan-phoi-main-g31-moi-100', '', '', '', 0, 33, '780000', 0, 0, '', '', '', '', 1, 454),
(1987, 'phân phối Main 865/ sk 478 mới 100%', '', '2012-05-29 03:13:13', 'phan-phoi-main-865-sk-478-moi-100-thumb.jpg', 'phan-phoi-main-865-sk-478-moi-100.jpg', '', '<p>Cty Phi Vũ - 380 Nguyễn Hoàng- ĐN- 0905.168.699</p>\n<p>phân phối các mặt hàng mới 100% giá tốt: bảo hành 12 tháng 1 đổi 1</p>\n<p>- Main 865 sk 478.......................................giá 480k- 500k ( Loại 2 )</p>\n<p>- Main 865 sk 478.......................................giá 530k - 550k ( Loại 1, loại tốt )</p>\n<p>- Main G31 chạy được Celeron D, Pentium 4, Dou core, Core 2 Dou..........giá 780-800k</p>\n<p>- DDram2 1g/800 PC.................................giá 250k</p>\n<p>- DDram1 512/400 PC...............................giá 120k-150k ( Loại 1)</p>\n<p>- HDD 40g ATA samsung............................giá 250k - 270k</p>\n<p>- HDD 80g ATA samsung, Seagate............giá 450k</p>\n<p>- HDD 160g SATA samsung, Seagate........giá 900- 950k</p>\n<p>- HDD 80g SATA samsung, Seagate..........giá 720k - 750k</p>\n<p>- DVD-rom ATA samsung........................giá 200k</p>\n<p>- DVD-rom SATA samsung........................giá 250k</p>\n<p>- nguồn 550W, 24 Pin................................giá 200k-250</p>\n<p>&gt;&gt;&gt;&gt;Nếu lấy số lượng hãy gọi 0905.168.699 để có giá tốt&lt;&lt;&lt;&lt;</p>', '', '<p>Cty Phi Vũ - 380 Nguyễn Hoàng- ĐN- 0905.168.699</p>\n<p>phân phối các mặt hàng mới 100% giá tốt: bảo hành 12 tháng 1 đổi 1</p>\n<p>- Main 865 sk 478.......................................giá 480k- 500k ( Loại 2 )</p>\n<p>- Main 865 sk 478.......................................giá 530k - 550k ( Loại 1, loại tốt )</p>\n<p>- Main G31 chạy được Celeron D, Pentium 4, Dou core, Core 2 Dou..........giá 780-800k</p>\n<p>- DDram2 1g/800 PC.................................giá 250k</p>\n<p>- DDram1 512/400 PC...............................giá 120k-150k ( Loại 1)</p>\n<p>- HDD 40g ATA samsung............................giá 250k - 270k</p>\n<p>- HDD 80g ATA samsung, Seagate............giá 450k</p>\n<p>- HDD 160g SATA samsung, Seagate........giá 900- 950k</p>\n<p>- HDD 80g SATA samsung, Seagate..........giá 720k - 750k</p>\n<p>- DVD-rom ATA samsung........................giá 200k</p>\n<p>- DVD-rom SATA samsung........................giá 250k</p>\n<p>- nguồn 550W, 24 Pin................................giá 200k-250</p>\n<p>&gt;&gt;&gt;&gt;Nếu lấy số lượng hãy gọi 0905.168.699 để có giá tốt&lt;&lt;&lt;&lt;</p>', '', 'phan-phoi-main-865-sk-478-moi-100', '', '', '', 0, 34, '550000', 0, 0, '', '', '', '', 1, 454);
INSERT INTO `dos_module_products` (`record_id`, `title`, `titleen`, `postdate`, `pic_thumb`, `pic_full`, `pic_desc`, `preview`, `previewen`, `content`, `contenten`, `tag`, `tagen`, `description`, `descriptionen`, `hits`, `record_order`, `unit`, `hot`, `specials`, `extra_field1`, `extra_field2`, `extra_field3`, `extra_field4`, `enable`, `dos_module_item_cat_cat_id`) VALUES
(1988, 'Phân phối DVD SATA samsung mới 100%', '', '2012-05-29 03:15:08', 'phan-phoi-dvd-sata-samsung-moi-100-thumb.jpg', 'phan-phoi-dvd-sata-samsung-moi-100.jpg', '', '<p>Cty Phi Vũ - 380 Nguyễn Hoàng- ĐN- 0905.168.699</p>\n<p>phân phối các mặt hàng mới 100% giá tốt: bảo hành 12 tháng 1 đổi 1</p>\n<p>- Main 865 sk 478.......................................giá 480k- 500k ( Loại 2 )</p>\n<p>- Main 865 sk 478.......................................giá 530k - 550k ( Loại 1, loại tốt )</p>\n<p>- Main G31 chạy được Celeron D, Pentium 4, Dou core, Core 2 Dou..........giá 780-800k</p>\n<p>- DDram2 1g/800 PC.................................giá 250k</p>\n<p>- DDram1 512/400 PC...............................giá 120k-150k ( Loại 1)</p>\n<p>- HDD 40g ATA samsung............................giá 250k - 270k</p>\n<p>- HDD 80g ATA samsung, Seagate............giá 450k</p>\n<p>- HDD 160g SATA samsung, Seagate........giá 900- 950k</p>\n<p>- HDD 80g SATA samsung, Seagate..........giá 720k - 750k</p>\n<p>- DVD-rom ATA samsung........................giá 200k</p>\n<p>- DVD-rom SATA samsung........................giá 250k</p>\n<p>- nguồn 550W, 24 Pin................................giá 200k-250</p>\n<p>&gt;&gt;&gt;&gt;Nếu lấy số lượng hãy gọi 0905.168.699 để có giá tốt&lt;&lt;&lt;&lt;</p>', '', '<p>Cty Phi Vũ - 380 Nguyễn Hoàng- ĐN- 0905.168.699</p>\n<p>phân phối các mặt hàng mới 100% giá tốt: bảo hành 12 tháng 1 đổi 1</p>\n<p>- Main 865 sk 478.......................................giá 480k- 500k ( Loại 2 )</p>\n<p>- Main 865 sk 478.......................................giá 530k - 550k ( Loại 1, loại tốt )</p>\n<p>- Main G31 chạy được Celeron D, Pentium 4, Dou core, Core 2 Dou..........giá 780-800k</p>\n<p>- DDram2 1g/800 PC.................................giá 250k</p>\n<p>- DDram1 512/400 PC...............................giá 120k-150k ( Loại 1)</p>\n<p>- HDD 40g ATA samsung............................giá 250k - 270k</p>\n<p>- HDD 80g ATA samsung, Seagate............giá 450k</p>\n<p>- HDD 160g SATA samsung, Seagate........giá 900- 950k</p>\n<p>- HDD 80g SATA samsung, Seagate..........giá 720k - 750k</p>\n<p>- DVD-rom ATA samsung........................giá 200k</p>\n<p>- DVD-rom SATA samsung........................giá 250k</p>\n<p>- nguồn 550W, 24 Pin................................giá 200k-250</p>\n<p>&gt;&gt;&gt;&gt;Nếu lấy số lượng hãy gọi 0905.168.699 để có giá tốt&lt;&lt;&lt;&lt;</p>', '', 'phan-phoi-dvd-sata-samsung-moi-100', '', '', '', 0, 35, '250000', 0, 0, '', '', '', '', 1, 454),
(1989, 'phân phối nguồn 500w-550w', '', '2012-05-29 03:23:06', 'phan-phoi-nguon-500w-550w-thumb.jpg', 'phan-phoi-nguon-500w-550w.jpg', '', '<p>Cty Phi Vũ - 380 Nguyễn Hoàng- ĐN- 0905.168.699</p>\n<p>phân phối các mặt hàng mới 100% giá tốt: bảo hành 12 tháng 1 đổi 1</p>\n<p>- Main 865 sk 478.......................................giá 480k- 500k ( Loại 2 )</p>\n<p>- Main 865 sk 478.......................................giá 530k - 550k ( Loại 1, loại tốt )</p>\n<p>- Main G31 chạy được Celeron D, Pentium 4, Dou core, Core 2 Dou..........giá 780-800k</p>\n<p>- DDram2 1g/800 PC.................................giá 250k</p>\n<p>- DDram1 512/400 PC...............................giá 120k-150k ( Loại 1)</p>\n<p>- HDD 40g ATA samsung............................giá 250k - 270k</p>\n<p>- HDD 80g ATA samsung, Seagate............giá 450k</p>\n<p>- HDD 160g SATA samsung, Seagate........giá 900- 950k</p>\n<p>- HDD 80g SATA samsung, Seagate..........giá 720k - 750k</p>\n<p>- DVD-rom ATA samsung........................giá 200k</p>\n<p>- DVD-rom SATA samsung........................giá 250k</p>\n<p>- nguồn 550W, 24 Pin................................giá 200k-250</p>\n<p>&gt;&gt;&gt;&gt;Nếu lấy số lượng hãy gọi 0905.168.699 để có giá tốt&lt;&lt;&lt;&lt;</p>', '', '<p>Cty Phi Vũ - 380 Nguyễn Hoàng- ĐN- 0905.168.699</p>\n<p>phân phối các mặt hàng mới 100% giá tốt: bảo hành 12 tháng 1 đổi 1</p>\n<p>- Main 865 sk 478.......................................giá 480k- 500k ( Loại 2 )</p>\n<p>- Main 865 sk 478.......................................giá 530k - 550k ( Loại 1, loại tốt )</p>\n<p>- Main G31 chạy được Celeron D, Pentium 4, Dou core, Core 2 Dou..........giá 780-800k</p>\n<p>- DDram2 1g/800 PC.................................giá 250k</p>\n<p>- DDram1 512/400 PC...............................giá 120k-150k ( Loại 1)</p>\n<p>- HDD 40g ATA samsung............................giá 250k - 270k</p>\n<p>- HDD 80g ATA samsung, Seagate............giá 450k</p>\n<p>- HDD 160g SATA samsung, Seagate........giá 900- 950k</p>\n<p>- HDD 80g SATA samsung, Seagate..........giá 720k - 750k</p>\n<p>- DVD-rom ATA samsung........................giá 200k</p>\n<p>- DVD-rom SATA samsung........................giá 250k</p>\n<p>- nguồn 550W, 24 Pin................................giá 200k-250</p>\n<p>&gt;&gt;&gt;&gt;Nếu lấy số lượng hãy gọi 0905.168.699 để có giá tốt&lt;&lt;&lt;&lt;</p>', '', 'phan-phoi-nguon-500w-550w', '', '', '', 0, 36, '200000', 0, 0, '', '', '', '', 1, 454),
(1990, 'Phân phối DVD ATA samsung mới 100%', '', '2012-05-29 03:25:25', 'phan-phoi-dvd-ata-samsung-moi-100-thumb.jpg', 'phan-phoi-dvd-ata-samsung-moi-100.jpg', '', '<p>Cty Phi Vũ - 380 Nguyễn Hoàng- ĐN- 0905.168.699</p>\n<p>phân phối các mặt hàng mới 100% giá tốt: bảo hành 12 tháng 1 đổi 1</p>\n<p>- Main 865 sk 478.......................................giá 480k- 500k ( Loại 2 )</p>\n<p>- Main 865 sk 478.......................................giá 530k - 550k ( Loại 1, loại tốt )</p>\n<p>- Main G31 chạy được Celeron D, Pentium 4, Dou core, Core 2 Dou..........giá 780-800k</p>\n<p>- DDram2 1g/800 PC.................................giá 250k</p>\n<p>- DDram1 512/400 PC...............................giá 120k-150k ( Loại 1)</p>\n<p>- HDD 40g ATA samsung............................giá 250k - 270k</p>\n<p>- HDD 80g ATA samsung, Seagate............giá 450k</p>\n<p>- HDD 160g SATA samsung, Seagate........giá 900- 950k</p>\n<p>- HDD 80g SATA samsung, Seagate..........giá 720k - 750k</p>\n<p>- DVD-rom ATA samsung........................giá 200k</p>\n<p>- DVD-rom SATA samsung........................giá 250k</p>\n<p>- nguồn 550W, 24 Pin................................giá 200k-250</p>\n<p>&gt;&gt;&gt;&gt;Nếu lấy số lượng hãy gọi 0905.168.699 để có giá tốt&lt;&lt;&lt;&lt;</p>', '', '<p>Cty Phi Vũ - 380 Nguyễn Hoàng- ĐN- 0905.168.699</p>\n<p>phân phối các mặt hàng mới 100% giá tốt: bảo hành 12 tháng 1 đổi 1</p>\n<p>- Main 865 sk 478.......................................giá 480k- 500k ( Loại 2 )</p>\n<p>- Main 865 sk 478.......................................giá 530k - 550k ( Loại 1, loại tốt )</p>\n<p>- Main G31 chạy được Celeron D, Pentium 4, Dou core, Core 2 Dou..........giá 780-800k</p>\n<p>- DDram2 1g/800 PC.................................giá 250k</p>\n<p>- DDram1 512/400 PC...............................giá 120k-150k ( Loại 1)</p>\n<p>- HDD 40g ATA samsung............................giá 250k - 270k</p>\n<p>- HDD 80g ATA samsung, Seagate............giá 450k</p>\n<p>- HDD 160g SATA samsung, Seagate........giá 900- 950k</p>\n<p>- HDD 80g SATA samsung, Seagate..........giá 720k - 750k</p>\n<p>- DVD-rom ATA samsung........................giá 200k</p>\n<p>- DVD-rom SATA samsung........................giá 250k</p>\n<p>- nguồn 550W, 24 Pin................................giá 200k-250</p>\n<p>&gt;&gt;&gt;&gt;Nếu lấy số lượng hãy gọi 0905.168.699 để có giá tốt&lt;&lt;&lt;&lt;</p>', '', 'phan-phoi-dvd-ata-samsung-moi-100', '', '', '', 0, 37, '200000', 0, 0, '', '', '', '', 1, 454),
(2035, 'Hdd 250g SATA laptop cũ', '', '2012-05-29 09:24:15', 'hdd-250g-sata-laptop-cu-thumb.jpg', 'hdd-250g-sata-laptop-cu.jpg', '', '<p>Hdd 250g SATA laptop cũ, chất lượng rất ok, không bad</p>\n<p>bảo hành 1 tháng</p>\n<p>giá 900.000đ</p>', '', '<p>Hdd 250g SATA laptop cũ, chất lượng rất ok, không bad</p>\n<p>bảo hành 1 tháng</p>\n<p>giá 900.000đ</p>', '', 'hdd-250g-sata-laptop-cu', '', '', '', 0, 38, '900000', 0, 0, '', '', '', '', 1, 452),
(2036, 'Hdd 250g SATA laptop cũ, giá rẻ', '', '2012-05-29 09:34:53', 'hdd-250g-sata-laptop-cu-gia-re-thumb.jpg', 'hdd-250g-sata-laptop-cu-gia-re.jpg', '', '<p>Hdd 250g SATA laptop cũ, chất lượng rất ok, không bad</p>\n<p>bảo hành 1 tháng</p>\n<p>giá 850.000đ</p>', '', '<p>Hdd 250g SATA laptop cũ, chất lượng rất ok, không bad</p>\n<p>bảo hành 1 tháng</p>\n<p>giá 850.000đ</p>', '', 'hdd-250g-sata-laptop-cu-gia-re', '', '', '', 0, 39, '850000', 0, 0, '', '', '', '', 1, 450),
(2041, '30 Hdd 160g Seagate chính hãng, mới 100%', '', '2012-05-30 02:17:13', '30-hdd-160g-seagate-chinh-hang-moi-100-thumb.jpg', '30-hdd-160g-seagate-chinh-hang-moi-100.jpg', '', '<p>Hdd 160g Seagate mới 100%, nguyên bao còn bảo hành 16 tháng</p>\n<p>(giá 900k)</p>\n<p>Hdd 160g Seagate mới 100%, nguyên bao còn bảo hành dưới 12 tháng</p>\n<p>(giá 850k)</p>', '', '<p>Hdd 160g Seagate mới 100%, nguyên bao còn bảo hành 16 tháng</p>\n<p>(giá 900k)</p>\n<p>Hdd 160g Seagate mới 100%, nguyên bao còn bảo hành dưới 12 tháng</p>\n<p>(giá 850k)</p>', '', '30-hdd-160g-seagate-chinh-hang-moi-100', '', '', '', 0, 40, '850.000 - 900.000', 1, 0, '', '', '', '', 1, 454),
(2102, 'Vỏ laptop HP DV6000 còn mới 98%', '', '2012-05-30 04:22:08', 'vo-laptop-hp-dv6000-con-moi-98-thumb.jpg', 'vo-laptop-hp-dv6000-con-moi-98.jpg', '', '<p>Vỏ laptop HP DV6000 còn mới 98%</p>\n<p>giá 500.000Đ</p>', '', '<p>Vỏ laptop HP DV6000 còn mới 98%</p>\n<p>giá 500.000Đ</p>', '', 'vo-laptop-hp-dv6000-con-moi-98', '', '', '', 0, 41, '500000', 1, 0, '', '', '', '', 1, 452),
(2103, 'Vỏ laptop vaio sony PCG-7171L còn rất mới 98%', '', '2012-05-30 04:23:23', 'vo-laptop-vaio-sony-pcg-7171l-con-rat-moi-98-thumb.jpg', 'vo-laptop-vaio-sony-pcg-7171l-con-rat-moi-98.jpg', '', '<p>Vỏ laptop vaio sony PCG-7171L còn rất mới 98%</p>\n<p>giá 500.000Đ</p>', '', '<p>Vỏ laptop vaio sony PCG-7171L còn rất mới 98%</p>\n<p>giá 500.000Đ</p>', '', 'vo-laptop-vaio-sony-pcg-7171l-con-rat-moi-98', '', '', '', 0, 42, '500000', 1, 0, '', '', '', '', 1, 450),
(2104, 'Bàn phím laptop củ, mới các loại', '', '2012-05-30 04:26:43', 'ban-phim-laptop-cu-moi-cac-loai-thumb.jpg', 'ban-phim-laptop-cu-moi-cac-loai.jpg', '', '<p>- Sửa bàn phím laptop................................giá 200k-300k<br />- Thay bàn phím laptop mới .....................giá 350k- 400k<br />( Lấy liền trong vòng 12h, sửa đảm bảo 100%, Bảo hành 1 tháng)</p>\n<p>- Chuyên hàn bản lề laptop bị gãy<br />(giá 1 cái 100k, 2 cái 150k, nếu khách lẽ cộng thêm 50k tiền công tháo lắp).<br />- Chuyên hàn vỏ nhựa bị bể mất 1 phần, chôn lại vít vặn ốc, chế lại võ,.,,,(giá 100-300k, tùy theo từng trường hợp)<br />(lấy liền trong vòng 1h, đảm bảo chắc chắn, đẹp, thẩm mỹ)</p>\n<p>Cty Phi vũ 380 nguyễn hoàng - ĐN - 0905.168.699</p>\n<p> </p>', '', '<p>- Sửa bàn phím laptop................................giá 200k-300k<br />- Thay bàn phím laptop mới .....................giá 350k- 400k<br />( Lấy liền trong vòng 12h, sửa đảm bảo 100%, Bảo hành 1 tháng)</p>\n<p>- Chuyên hàn bản lề laptop bị gãy<br />(giá 1 cái 100k, 2 cái 150k, nếu khách lẽ cộng thêm 50k tiền công tháo lắp).<br />- Chuyên hàn vỏ nhựa bị bể mất 1 phần, chôn lại vít vặn ốc, chế lại võ,.,,,(giá 100-300k, tùy theo từng trường hợp)<br />(lấy liền trong vòng 1h, đảm bảo chắc chắn, đẹp, thẩm mỹ)</p>\n<p>Cty Phi vũ 380 nguyễn hoàng - ĐN - 0905.168.699</p>\n<p> </p>', '', 'ban-phim-laptop-cu-moi-cac-loai', '', '', '', 0, 43, '', 0, 0, '', '', '', '', 1, 450),
(2105, 'Pin laptop các loại Dell, Hp, Acer, Sony, Lenovo,....', '', '2012-05-30 04:29:36', 'pin-laptop-cac-loai-dell-hp-acer-sony-lenovo-----thumb.jpg', 'pin-laptop-cac-loai-dell-hp-acer-sony-lenovo----.jpg', '', '<p>Cty Phi Vũ - 380 Nguyễn Hoàng- ĐN- 0905.168.699</p>\n<p>Pin mới 100% bh 9 tháng<br />- Những loại Pin Laptop thông dụng: Dell, HP, Compaq, Acer, Toshiba, Lenovo,.. ........giá từ 550k-600k</p>\n<p>- Những loại Pin Laptop hiếm có như: samsung, gateway, Shap,Nec ...............................giá từ 800k-1tr</p>\n<p> </p>', '', '<p>Cty Phi Vũ - 380 Nguyễn Hoàng- ĐN- 0905.168.699</p>\n<p>Pin mới 100% bh 9 tháng<br />- Những loại Pin Laptop thông dụng: Dell, HP, Compaq, Acer, Toshiba, Lenovo,.. ........giá từ 550k-600k</p>\n<p>- Những loại Pin Laptop hiếm có như: samsung, gateway, Shap,Nec ...............................giá từ 800k-1tr</p>\n<p> </p>', '', 'pin-laptop-cac-loai-dell-hp-acer-sony-lenovo', '', '', '', 0, 44, '', 0, 0, '', '', '', '', 1, 450),
(2106, 'chíp AMD Athlon 64 X2 laptop', '', '2012-05-30 07:28:36', 'chip-amd-athlon-64-x2-laptop-thumb.jpg', 'chip-amd-athlon-64-x2-laptop.jpg', '', '<p>chíp AMD Athlon 64 X2 laptop tháo trong máy HP DV6000</p>\n<p>giá 400k</p>', '', '<p>chíp AMD Athlon 64 X2 laptop tháo trong máy HP DV6000</p>\n<p>giá 400k</p>', '', 'chip-amd-athlon-64-x2-laptop', '', '', '', 0, 45, '400000', 0, 0, '', '', '', '', 1, 450),
(2114, 'Pin laptop SONY VCG-7171L, lưu 2h, giá rẻ', '', '2012-05-30 07:38:31', 'pin-laptop-sony-vcg-7171l-luu-2h-gia-re-thumb.png', 'pin-laptop-sony-vcg-7171l-luu-2h-gia-re.png', '', '<p>Pin laptop SONY VCG-7171L, lưu 2h, nguyên rin</p>\n<p>giá 250k</p>', '', '<p>Pin laptop SONY VCG-7171L, lưu 2h, nguyên rin</p>\n<p>giá 250k</p>', '', 'pin-laptop-sony-vcg-7171l-luu-2h-gia-re', '', '', '', 0, 46, '250000', 0, 0, '', '', '', '', 1, 450),
(2115, 'vỏ laptop Toshiba A100, giá rẻ', '', '2012-05-30 08:53:30', 'vo-laptop-toshiba-a100-gia-re-thumb.jpg', 'vo-laptop-toshiba-a100-gia-re.jpg', '', '<p>vỏ laptop Toshiba A100, còn 80%</p>\n<p>giá 400k</p>', '', '<p>vỏ laptop Toshiba A100, còn 80%</p>\n<p>giá 400k</p>', '', 'vo-laptop-toshiba-a100-gia-re', '', '', '', 0, 47, '400000', 0, 0, '', '', '', '', 1, 450),
(2116, 'DDram2 1g laptop, chất lượng ok', '', '2012-05-30 10:37:08', 'ddram2-1g-laptop-chat-luong-ok-thumb.jpg', 'ddram2-1g-laptop-chat-luong-ok.jpg', '', '<p>DDram2 1g laptop, chất lượng ok</p>\n<p>Bảo hành 1 tháng</p>\n<p>giá 200.000đ</p>', '', '<p>DDram2 1g laptop, chất lượng ok</p>\n<p>Bảo hành 1 tháng</p>\n<p>giá 200.000đ</p>', '', 'ddram2-1g-laptop-chat-luong-ok', '', '', '', 0, 48, '200000', 0, 0, '', '', '', '', 1, 450),
(2117, '5 cái LCD laptop 15.4'' WG, chất lượng 90%', '', '2012-05-30 10:40:22', '5-cai-lcd-laptop-15-4-wg-chat-luong-90-thumb.gif', '5-cai-lcd-laptop-15-4-wg-chat-luong-90.gif', '', '<p>5 cái LCD laptop 15.4'' WG, chất lượng 90%, sáng đẹp, không bầm, không trầy xướt.</p>\n<p>bảo hành 1 tháng</p>\n<p>giá 900k</p>', '', '<p>5 cái LCD laptop 15.4'' WG, chất lượng 90%, sáng đẹp, không bầm, không trầy xướt.</p>\n<p>bảo hành 1 tháng</p>\n<p>giá 900k</p>', '', '5-cai-lcd-laptop-154-wg-chat-luong-90', '', '', '', 0, 49, '900000', 0, 0, '', '', '', '', 1, 450),
(2118, 'DDram1 256M laptop', '', '2012-05-30 10:43:41', 'ddram1-256m-laptop-thumb.jpg', 'ddram1-256m-laptop.jpg', '', '<p>DDram1 256M laptop, chạy ổn định</p>\n<p>bảo hành 1 tháng</p>\n<p>giá 150.000đ</p>', '', '<p>DDram1 256M laptop, chạy ổn định</p>\n<p>bảo hành 1 tháng</p>\n<p>giá 150.000đ</p>', '', 'ddram1-256m-laptop', '', '', '', 0, 50, '150000', 0, 0, '', '', '', '', 1, 450),
(2119, 'ddram2 512m laptop, giá rẻ', '', '2012-05-30 10:44:49', 'ddram2-512m-laptop-gia-re-thumb.jpg', 'ddram2-512m-laptop-gia-re.jpg', '', '<p>DDram2 512M laptop, chạy ổn định</p>\n<p>bảo hành 1 tháng</p>\n<p>giá 70.000đ</p>', '', '<p>DDram2 512M laptop, chạy ổn định</p>\n<p>bảo hành 1 tháng</p>\n<p>giá 70.000đ</p>', '', 'ddram2-512m-laptop-gia-re', '', '', '', 0, 51, '70000', 0, 0, '', '', '', '', 1, 450),
(2448, '5 cái VGA PCI EXP 256M Gigabyte, chính hãng', '', '2012-06-02 08:42:04', '5-cai-vga-pci-exp-256m-gigabyte-chinh-hang-thumb.jpg', '5-cai-vga-pci-exp-256m-gigabyte-chinh-hang.jpg', '', '<p>5 cái VGA PCI EXP 256M Gigabyte, chính hãng</p>\n<p>giá 250k</p>', '', '<p>5 cái VGA PCI EXP 256M Gigabyte, chính hãng</p>\n<p>giá 250k</p>', '', '5-cai-vga-pci-exp-256m-gigabyte-chinh-hang', '', '', '', 0, 52, '250000', 0, 0, '', '', '', '', 1, 452);

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
) ENGINE=InnoDB  DEFAULT CHARSET=utf8 AUTO_INCREMENT=455 ;

--
-- Dumping data for table `dos_module_products_cat`
--

INSERT INTO `dos_module_products_cat` (`cat_id`, `cat_parent_id`, `cat_title`, `cat_titleen`, `preview`, `previewen`, `tag`, `tagen`, `description`, `descriptionen`, `pic_full`, `pic_desc`, `cat_order`, `cat_extra1`, `cat_extra2`, `cat_enable`, `dos_usernames_username`) VALUES
(449, 0, 'LAPTOP MỚI', '', '', '', 'laptop-moi', '', 'Laptop mới', '', 'laptop-mi.jpg', '', 1, '', '', 1, 'phivucomputer'),
(450, 0, 'LINH KIỆN LAPTOP CŨ', '', '', '', 'linh-kien-laptop-cu', '', 'Laptop cũ', '', 'laptop-cu.jpg', '', 2, '', '', 1, 'phivucomputer'),
(451, 0, 'PHÂN PHỐI MÁY BỘ CŨ', '', '', '', 'phan-phoi-may-bo-cu', '', 'PC để bàn cũ', '', 'my-b-c.jpg', '', 2, '', '', 1, 'phivucomputer'),
(452, 0, 'PHÂN PHỐI LINH KIỆN PC CŨ', '', '', '', 'phan-phoi-linh-kien-pc-cu', '', 'Linh kiện vi tính cũ', '', 'linh-kin-c.jpg', '', 3, '', '', 1, 'phivucomputer'),
(453, 0, 'MÁY BỘ MỚI', '', '', '', 'may-bo-moi', '', 'Máy bộ để bàn mới', '', 'my-b-mi.jpg', '', 1, '', '', 1, 'phivucomputer'),
(454, 0, 'PHÂN PHỐI LINH KIỆN MỚI', '', '', '', 'phan-phoi-linh-kien-moi', '', 'Tổng hợp những thiết bị khác', '', 'thit-b-khc.jpg', '', 1, '', '', 1, 'phivucomputer');

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
) ENGINE=InnoDB  DEFAULT CHARSET=utf8 AUTO_INCREMENT=89 ;

--
-- Dumping data for table `dos_module_services`
--

INSERT INTO `dos_module_services` (`record_id`, `title`, `titleen`, `preview`, `previewen`, `content`, `contenten`, `pic_full`, `hit`, `created`, `record_order`, `hot`, `extra_field1`, `extra_field2`, `tag`, `tagen`, `description`, `descriptionen`, `activated`, `dos_usernames_username`) VALUES
(84, 'CHUYÊN SỬA MÁY VI TÍNH DESKTOP &amp; LAPTOP', '', '', '', '<p>CTY TNHH CÔNG NGHỆ TIN HỌC PHI VŨ<br />380 NGUYỄN HOÀNG - ĐÀ NẴNG<br />0905.168.699 - 3691973TRUNG TÂM SỬA MÁY TÍNH TẬN NƠI</p>\n<p>CHUYÊN:<br />- SỬA CHỮA VÀ THAY THẾ LINH KIỆN MÁY TÍNH TẬN NƠI.<br />- Chuyên hàn bản lề laptop, hàn vỏ nhựa laptop.<br />- Chuyên sửa bàn phím laptop, thay mới bàn phím laptop.<br />- BÁN MÁY CŨ GIÁ TỪ 1,4-2,5 TRIỆU.<br />- LẮP RÁP MÁY MỚI, ĐỔ MỰC MÁY IN.<br />- Cung cấp màn hình LCD 15",17" giá rẽ.</p>\n<p> </p>', '', 'cung-cp-my-b-linh-kin-mi-v-c.jpg', 24, '2012-05-27 04:02:03', 1, 1, '', '', 'chuyen-sua-may-vi-tinh-desktop-laptop', '', '', '', 1, 'phivucomputer'),
(87, 'CHUYÊN SỬA BÀN PHÍM LAPTOP, THAY MỚI BÀN PHÍM LAPTOP', '', '', '', '<p>- Sửa bàn phím laptop................................giá 200k-300k<br />- Thay bàn phím laptop mới .....................giá 350k- 400k<br />( Lấy liền trong vòng 12h, sửa đảm bảo 100%, Bảo hành 1 tháng)</p>\n<p>- Chuyên hàn bản lề laptop bị gãy<br />(giá 1 cái 100k, 2 cái 150k, nếu khách lẽ cộng thêm 50k tiền công tháo lắp).<br />- Chuyên hàn vỏ nhựa bị bể mất 1 phần, chôn lại vít vặn ốc, chế lại võ,.,,,(giá 100-300k, tùy theo từng trường hợp)<br />(lấy liền trong vòng 1h, đảm bảo chắc chắn, đẹp, thẩm mỹ)</p>\n<p>Cty Phi vũ 380 nguyễn hoàng - ĐN - 0905.168.699</p>\n<p> </p>', '', 'chuyn-sa-bn-phm-laptop-thay-mi-bn-phm-laptop.jpg', 12, '2012-05-28 02:35:28', 2, 1, '', '', 'chuyen-sua-ban-phim-laptop-thay-moi-ban-phim-laptop', '', '', '', 1, 'phivucomputer'),
(88, 'CHUYÊN HÀN BẢN LỀ LAPTOP, HÀN VỎ NHỰA LAPTOP', '', '', '', '<p>Cty đã nhập máy hàn đa năng như hình ảnh trên, hàn được nhiều loại vật liệu với kích cở nhỏ.</p>\n<p>- Hàn Bản lề laptop bị gãy: đảm bảo, chắc chắn không bị gãy lại.<br />...........Giá 100k/ 1 cái.........<br />............Giá 150k/ 2 cái.........<br />nếu khách lẽ, cộng thêm 50k tiền công tháo lắp.<br />(Lấy liền trong vòng 1h, đảm bảo chắc chắn như mới, không gãy lại)<br />- Hàn vỏ nhựa laptop, bị bể một phần hoặc nhiều phần nào đó, chôn lại phần vặn ốc, chế lại vỏ bị móp méo.<br />.............Giá 50k đến 300k, tùy theo từng trường hợp......................</p>\n<p>- Chuyên sửa bàn phím laptop các loại..............giá 200k-300k<br />- Thay mới bàn phím laptop...................................giá 350k-400k<br />(lấy liền trong vòng 12h, đảm bảo 100%, bảo hành 1 tháng)<br />Cty Phi Vũ - 380 Nguyễn Hoàng - ĐN- 0905.168.699</p>\n<p> </p>', '', 'chuyn-hn-bn-l-laptop-hn-v-nha-laptop.jpg', 10, '2012-05-28 03:58:55', 3, 1, '', '', 'chuyen-han-ban-le-laptop-han-vo-nhua-laptop', '', '', '', 1, 'phivucomputer');

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
) ENGINE=InnoDB  DEFAULT CHARSET=utf8 AUTO_INCREMENT=82 ;

--
-- Dumping data for table `dos_module_supports`
--

INSERT INTO `dos_module_supports` (`support_id`, `support_name`, `support_nameen`, `support_phone`, `support_value`, `support_order`, `support_type`, `dos_usernames_username`) VALUES
(81, 'kinh doanh', '', '0905.168.699', 'phivucomputer', 1, 'yahoo', 'phivucomputer');

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
) ENGINE=InnoDB  DEFAULT CHARSET=utf8 AUTO_INCREMENT=56 ;

--
-- Dumping data for table `dos_module_video`
--

INSERT INTO `dos_module_video` (`record_id`, `title`, `titleen`, `postdate`, `tag`, `tagen`, `description`, `descriptionen`, `pic_thumb`, `url`, `record_order`, `hits`, `extra_field1`, `extra_field2`, `hot`, `enable`, `dos_module_item_cat_cat_id`) VALUES
(55, 'Túi xách thời trang', '', '2012-05-27 04:02:03', 'tui-xach-thoi-trang', '', '', '', 'tui-xach-thoi-trang.jpg', 'http://www.youtube.com/watch?v=IwckCuHqrDc&feature=fvsr', 1, 0, '', '', 0, 1, 45);

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
) ENGINE=InnoDB  DEFAULT CHARSET=utf8 AUTO_INCREMENT=46 ;

--
-- Dumping data for table `dos_module_video_cat`
--

INSERT INTO `dos_module_video_cat` (`cat_id`, `cat_parent_id`, `pic_thumb`, `cat_title`, `cat_titleen`, `tag`, `tagen`, `description`, `descriptionen`, `cat_order`, `cat_enable`, `dos_usernames_username`) VALUES
(45, 0, '', 'TÚI XÁCH', '', 'tui-xach', '', 'TÚI XÁCH', '', 1, 1, 'phivucomputer');

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
('keywords', 'phân phối máy laptop cũ, linh kiện cũ, laptop mới, linh kiện mới các loại, uy tín đảm bảo giá cạnh tranh', 'phivucomputer'),
('description', 'phân phối máy laptop cũ, linh kiện cũ, laptop mới, linh kiện mới các loại, uy tín đảm bảo giá cạnh tranh', 'phivucomputer'),
('title', 'Công Ty Công Nghệ Tin Học Phi Vũ - phivucomputer.com', 'phivucomputer'),
('analytics', '<script type="text/javascript">\r\n\r\n  var _gaq = _gaq || [];\r\n  _gaq.push([''_setAccount'', ''UA-32380145-1'']);\r\n  _gaq.push([''_trackPageview'']);\r\n\r\n  (function() {\r\n    var ga = document.createElement(''script''); ga.type = ''text/javascript''; ga.async = true;\r\n    ga.src = (''https:'' == document.location.protocol ? ''https://ssl'' : ''http://www'') + ''.google-analytics.com/ga.js'';\r\n    var s = document.getElementsByTagName(''script'')[0]; s.parentNode.insertBefore(ga, s);\r\n  })();\r\n\r\n</script>', 'phivucomputer');

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
('270412', 'Mẫu cơ khí: 270412', '2012-04-27 06:27:56', 'Chuyên bán các loại máy móc, thiết bị cơ khí, cửa sắt...');

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
('phivucomputer', 'phivucomputer@yahoo.com.vn', 'e10adc3949ba59abbe56e057f20f883e', '2012-05-27 04:01:45', '', '05113691973', '', 'user', 'vi', '', '2012-06-25 17:00:00', 0, 1, '270412', 15, 'cong-nghe-thong-tin-vien-thong');

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
('address1', '380 Nguyễn Hoàng, TP. Đà Nẵng', '', 'phivucomputer'),
('company_name', 'Công Ty Công Nghệ Tin Học Phi Vũ', '', 'phivucomputer'),
('company_name_footer', 'Công Ty Công Nghệ Tin Học Phi Vũ', '', 'phivucomputer'),
('company_phone', 'Cam kết bảo hành nhanh 24h, 1 đổi 1 - DĐ Online: 0905.168.699', '', 'phivucomputer');

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
