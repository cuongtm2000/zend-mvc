-- phpMyAdmin SQL Dump
-- version 3.4.5
-- http://www.phpmyadmin.net
--
-- Host: localhost
-- Generation Time: Jun 05, 2012 at 04:47 AM
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
('about', 'quangcaothienkim'),
('advs', 'quangcaothienkim'),
('banner', 'quangcaothienkim'),
('contact', 'quangcaothienkim'),
('news', 'quangcaothienkim'),
('products', 'quangcaothienkim'),
('services', 'quangcaothienkim'),
('supports', 'quangcaothienkim');

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
) ENGINE=InnoDB  DEFAULT CHARSET=utf8 AUTO_INCREMENT=166 ;

--
-- Dumping data for table `dos_module_abouts`
--

INSERT INTO `dos_module_abouts` (`record_id`, `title`, `titleen`, `content`, `contenten`, `hit`, `created`, `record_order`, `hot`, `extra_field1`, `extra_field2`, `tag`, `tagen`, `description`, `descriptionen`, `activated`, `dos_usernames_username`) VALUES
(165, 'Giới thiệu', '', '<p><strong>Thiên Kim</strong> là công ty chuyên nghiệp về thiết kế đồ họa, cung cấp nhãn, bao bì hàng hóa, ấn phẩm quảng cáo và truyền thông thương hiệu.</p>\n<p>Nhóm thiết kế của chúng tôi gồm các họa sĩ, chuyên gia mỹ thuật công nghiệp giàu kinh nghiệm về thiết kế logo, bộ nhận diện thương hiệu, brochure, catalog, báo cáo thường niên, kỷ yếu, lịch, nhãn hiệu, bao bì và nhiều sản phẩm thiết kế khác.</p>\n<p>Chúng tôi cũng cung cấp cho khách hàng các loại nhãn, bao bì chất lượng cao và các ấn phẩm cao cấp, sang trọng sử dụng cho việc quảng bá thương hiệu và giới thiệu sản phẩm.</p>\n<p>Sản phẩm do chúng tôi cung cấp đáp ứng các yêu cầu khắt khe nhất về mỹ thuật, chất lượng in ấn và thành phẩm.</p>', '', 26, '2012-06-01 04:30:54', 1, 0, '', '', 'gioi-thieu', '', '', '', 1, 'quangcaothienkim');

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
) ENGINE=InnoDB  DEFAULT CHARSET=utf8 AUTO_INCREMENT=186 ;

--
-- Dumping data for table `dos_module_advs`
--

INSERT INTO `dos_module_advs` (`record_id`, `title`, `titleen`, `pic_thumb`, `url`, `create_date`, `start_date`, `end_date`, `hits`, `record_order`, `position`, `type`, `enable`, `dos_usernames_username`) VALUES
(183, 'qc1', '', 'qc1.jpg', 'http://thuonghoi.com', '2012-06-02 17:07:53', '2012-06-02 17:00:00', '2013-06-02 17:00:00', 0, 1, 'top', '_bank', 1, 'quangcaothienkim'),
(184, 'qc2', '', 'qc2.jpg', 'http://thuonghoi.com', '2012-06-02 17:08:37', '2012-06-02 17:00:00', '2013-06-02 17:00:00', 0, 2, 'top', '_bank', 1, 'quangcaothienkim'),
(185, 'logo_thuonghoi', '', 'logothuonghoi.jpg', 'http://thuonghoi.com', '2012-06-02 17:31:19', '2012-06-02 17:00:00', '2013-06-02 17:00:00', 0, 3, 'left', '_bank', 0, 'quangcaothienkim');

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
) ENGINE=InnoDB  DEFAULT CHARSET=utf8 AUTO_INCREMENT=752 ;

--
-- Dumping data for table `dos_module_banners`
--

INSERT INTO `dos_module_banners` (`banner_id`, `banner_date`, `banner_name`, `banner_url`, `banner_link`, `banner_order`, `banner_type`, `position`, `enable`, `dos_usernames_username`) VALUES
(742, '2012-06-02 16:58:43', 'banner1_cty', 'banner1cty7.jpg', '', 5, 'banners', 'default', 1, 'quangcaothienkim'),
(743, '2012-06-02 17:04:47', 'banner2', 'banner2.jpg', '', 6, 'banners', 'default', 1, 'quangcaothienkim'),
(744, '2012-06-02 17:14:03', 'logo_thienkim', 'logothienkim.jpg', '', 7, 'logo', 'default', 1, 'quangcaothienkim'),
(745, '2012-06-02 17:22:37', 'banner3', 'banner3.jpg', '', 8, 'banners', 'products', 1, 'quangcaothienkim'),
(746, '2012-06-02 17:22:50', 'banner4', 'banner4.jpg', '', 9, 'banners', 'products', 1, 'quangcaothienkim'),
(747, '2012-06-02 17:24:18', 'banner5', 'banner5.jpg', '', 10, 'banners', 'about', 1, 'quangcaothienkim'),
(748, '2012-06-02 17:24:30', 'banner6', 'banne6r.jpg', '', 11, 'banners', 'about', 1, 'quangcaothienkim'),
(749, '2012-06-02 17:26:11', 'banner7', 'banner7.jpg', '', 12, 'banners', 'services', 1, 'quangcaothienkim'),
(750, '2012-06-02 17:26:48', 'banner8', 'banner8.jpg', '', 13, 'banners', 'news', 1, 'quangcaothienkim'),
(751, '2012-06-02 17:27:23', 'banner9', 'banner9.jpg', '', 14, 'banners', 'contact', 1, 'quangcaothienkim');

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
) ENGINE=InnoDB  DEFAULT CHARSET=utf8 AUTO_INCREMENT=17 ;

--
-- Dumping data for table `dos_module_contacts`
--

INSERT INTO `dos_module_contacts` (`record_id`, `title`, `titleen`, `content`, `contenten`, `create_date`, `record_order`, `hit`, `hot`, `tag`, `tagen`, `description`, `descriptionen`, `enable`, `dos_usernames_username`) VALUES
(16, 'Liên hệ với chung tôi', '', '<p><strong>CÔNG TY TNHH IN ẤN &amp; QUẢNG CÁO THIÊN KIM</strong></p>\n<p><strong>Địa chỉ:</strong> 95/68, Nguyễn Ái Quốc, Kp.8, P.Tân Phong, Tp.Biên Hòa, Tỉnh Đồng Nai</p>\n<p><strong>ĐT/Fax:</strong> (061) 3 896 606</p>\n<p><strong>Hotline:</strong> 0915.429 486 / 0983 818 414</p>\n<p><strong>Email:</strong> <a href="mailto:info@quangcaothienkim.com">info@quangcaothienkim.com</a></p>\n<p><strong>Website:</strong> <a href="http://quangcaothienkim.com">http://quangcaothienkim.com</a></p>', '', '2012-06-01 06:29:15', 1, 0, 0, 'lien-he-voi-chung-toi', '', '', '', '1', 'quangcaothienkim');

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
('Trang chủ', '', 'default', '', 1, '', '', '', '', 'quangcaothienkim'),
('Giới thiệu', '', 'about', '', 2, '', '', '', '', 'quangcaothienkim'),
('Sản phẩm', '', 'products', '', 3, '', '', '', '', 'quangcaothienkim'),
('Dịch vụ', '', 'services', '', 4, '', '', '', '', 'quangcaothienkim'),
('Tin tức & sự kiện', '', 'news', '', 5, '', '', '', '', 'quangcaothienkim'),
('Liên hệ', '', 'contact', '', 6, '', '', '', '', 'quangcaothienkim');

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
) ENGINE=InnoDB  DEFAULT CHARSET=utf8 AUTO_INCREMENT=191 ;

--
-- Dumping data for table `dos_module_news`
--

INSERT INTO `dos_module_news` (`record_id`, `title`, `titleen`, `postdate`, `pic_thumb`, `preview`, `previewen`, `content`, `contenten`, `tag`, `tagen`, `description`, `descriptionen`, `hits`, `record_order`, `hot`, `extra_field1`, `extra_field2`, `enable`, `dos_module_item_cat_cat_id`) VALUES
(189, 'Anapurna M2 UV – Gia tăng tốc độ và sản lượng', '', '2012-06-02 17:50:24', 'anapurna-m2-uv--gia-tang-toc-do-va-san-luong.jpg', '<p>Agfa Graphics tự hào công bố dòng máy in phun mực UV khổ lớn Anapurna M2 UV. Dựa trên dòng máy in phun mực UV khổ lớn Anapurna M từng đạt giải thưởng công nghiệp và giải thưởng bán chạy nhất, Anapurna M2 là một hệ thống in phun mực UV thuộc dòng máy công nghiệp nặng có đầy đủ mọi chức năng.</p>', '', '<p><strong>Agfa Graphics tự hào công bố dòng máy in phun mực UV khổ lớn Anapurna M2 UV. Dựa trên dòng máy in phun mực UV khổ lớn Anapurna M từng đạt giải thưởng công nghiệp và giải thưởng bán chạy nhất, Anapurna M2 là một hệ thống in phun mực UV thuộc dòng máy công nghiệp nặng có đầy đủ mọi chức năng.</strong></p>\n<p><strong><img src="http://vhp.dos.vn/public/userfiles/image/vhp/image/nss_1314782881.jpg" alt="" width="459" height="345" /></strong></p>\n<p>Nhiều chức năng tự động được bổ sung đã giúp cho Anapurna M2 trở thành dòng máy dẫn đầu trong thị trường in phun mực UV khổ lớn. Hệ thống điều khiển lực hút chân không đồng bộ được thiết kế phù hợp cho phép vật liệu có thể đi qua trơn tru với tốc độ rất nhanh. Dãy cảm biến an toàn có nhiệm vụ bảo vệ đầu in trong trường hợp vật liệu in có độ dày không ổn định, và bộ phận ion hóa ngăn chặn sự tích điện xảy ra trên vật liệu, bảo đảm điều kiện tốt nhất cho việc phun mực chính xác do đó giúp đạt được chất lượng in cao nhất. Các bộ phận của Anapurna M2 được thiết kế theo tiêu chuẩn nhằm đáp ứng tối đa các nhu cầu sản xuất đòi hỏi cao. Anapurna M2 tăng số đầu in lên 6 đơn vị với 1024 lỗ phun mực cho phép gia tăng tốc độ in. Với thiết kế tiện lợi, máy điều khiển vật liệu theo dạng in cuộn rất vững chãi, vật liệu được đưa thẳng trực tiếp vào máy in thông qua hệ thống định vị vật liệu tự động.</p>\n<p>Willy Van Dromme, quản lý hệ thống kinh doanh in khổ lớn của Agfa Graphics nói: “Anapurna M2 là ý tưởng thích hợp cho nhu cầu in quảng cáo, in thương mại, in bảng hiệu và các phòng photo lab yêu cầu chất lượng cao. Nó được chế tạo thật bền bỉ nhằm phục vụ cho yêu cầu công nghiệp. Nó là dòng máy in phun mực UV cao cấp có thể đáp ứng tối đa các nhu cầu sản xuất đòi hỏi cao”.</p>\n<p>Anapurna M2 đáp ứng vật liệu có khổ bề rộng tối đa là 62inch (1,57m) và sử dụng đầu in mới nhất Konica-Minolta 12 pico cho phép in hình ảnh có độ phân giải không đồng nhất (unparalleled image) 720 x 1440dpi.</p>\n<p>Cả hai chế độ in hai chiều và một chiều đều sắc nét, thể hiện được nhiều chi tiết và chữ rõ nét. In ở chế độ 8 lần một chiều cho hình ảnh có chất lượng cao nhất, chế độ 4 lần hai chiều cho sản lượng in cao nhất, khoảng 23m2/giờ.</p>\n<p>Khi kết hợp sử dụng với mực in UV Anapurna do Afga chế tạo, Anapurna M2 cho chất lượng ảnh nhìn sắc nét với tốc độ in cao.</p>', '', 'anapurna-m2-uv-gia-tang-toc-do-va-san-luong', '', '', '', 0, 1, 0, '', '', 1, 109),
(190, 'Quite công bố phiên bản Quite Imposing Plus 3', '', '2012-06-02 17:52:41', 'quite-cong-bo-phien-ban-quite-imposing-plus-3.gif', '<p>Quite Software, công ty phát triển các giải pháp cho PDF trên toàn cầu vừa công bố phiên bản bình trang điện tử QUITE IMPOSING PLUS 3. Quite tập trung giải quyết những phản hồi của khách hàng về những yêu cầu của họ trong việc bình trang điện tử</p>', '', '<p>Quite Software, công ty phát triển các giải pháp cho PDF trên toàn cầu vừa công bố phiên bản bình trang điện tử QUITE IMPOSING PLUS 3. Quite tập trung giải quyết những phản hồi của khách hàng về những yêu cầu của họ trong việc bình trang điện tử. Những tính năng mới của Quite Imposing Plus 3 giúp cho công việc bình trang được nhanh chóng và thuận tiện hơn.Trong phiên bản update lần này, Quite nâng cấp các chức năng về xử lý trang trong PDF như: thêm trang, nhóm trang, nhân bản trang, chia tách trang, thay đổi kích thước trang, thêm dữ liệu biến đổi cho trang như thêm số trang, ngày và giờ, tên tài liệu. Quite củng bổ sung thêm chức năng Creep với việc cho khai báo độ dày giấy nhằm bù trừ hiện tượng các tay sách bên ngoài lệch so với các tay sách bên trong khi đóng xén. Quite cũng bổ sung thêm các chức năng cho phép chủ động hơn trong việc sử dụng Crop marks trong bình trang thủ công (Manual Imposition).</p>\n<p>Quite Imposing Plus 3 hỗ trợ đầy đủ cho phiên bản mới nhất của Acrobat X (10.0) và có thể làm việc với PDF/X-4 và PDF/X-5.</p>\n<p>Download Quite Imposing Plus 3 (Demo)</p>\n<p>Download Quite Imposing 3 (Demo)</p>\n<p>Vietnamprint</p>', '', 'quite-cong-bo-phien-ban-quite-imposing-plus-3', '', '', '', 0, 2, 0, '', '', 1, 109);

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
) ENGINE=InnoDB  DEFAULT CHARSET=utf8 AUTO_INCREMENT=110 ;

--
-- Dumping data for table `dos_module_news_cat`
--

INSERT INTO `dos_module_news_cat` (`cat_id`, `cat_parent_id`, `cat_title`, `cat_titleen`, `preview`, `previewen`, `tag`, `tagen`, `description`, `descriptionen`, `pic_full`, `cat_order`, `cat_extra1`, `cat_extra2`, `cat_enable`, `dos_usernames_username`) VALUES
(109, 0, 'Tin trong nước', '', '', '', 'tin-trong-nuoc', '', '', '', '', 1, '', '', 1, 'quangcaothienkim');

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
('day_time', 2456084),
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
('''127.0.0.1''', 1338862396);

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
) ENGINE=InnoDB  DEFAULT CHARSET=utf8 AUTO_INCREMENT=2493 ;

--
-- Dumping data for table `dos_module_products`
--

INSERT INTO `dos_module_products` (`record_id`, `title`, `titleen`, `postdate`, `pic_thumb`, `pic_full`, `pic_desc`, `preview`, `previewen`, `content`, `contenten`, `tag`, `tagen`, `description`, `descriptionen`, `hits`, `record_order`, `unit`, `hot`, `specials`, `extra_field1`, `extra_field2`, `extra_field3`, `extra_field4`, `enable`, `dos_module_item_cat_cat_id`) VALUES
(2438, 'In pp giá rẻ tại saigon', '', '2012-06-02 08:21:31', 'in-pp-gia-re-tai-saigon-thumb.jpg', 'in-pp-gia-re-tai-saigon.jpg', '', '<p>Qui cách Sản Phẩm : chất liệu PP ( có cán màng PVC )</p>\n<p>PP : có định lượng 130gsm Đơn giá lẽ : 70.000đ/m2 Khách hàng cung cấp file gốc , Ai, Corel , pdf ......In số nhiều có chiết khấu giá</p>', '', '<p>Với thế là hệ thống máy in kỹ thuật số khổ lớn hiện đại, tốc độ nhanh và chất lượng hình ảnh tuyệt đẹp, đã và đang là đối tác in ấn cho nhiều công ty quảng cáo, công ty kinh doanh thương mại trong cũng như ngoài thành phố. Xin vui lòng liên hệ với chúng tôi để có được sự hỗ trợ tốt nhất</p>', '', 'in-pp-gia-re-tai-saigon', '', '', '', 0, 3, '', 0, 0, '', '', '', '', 1, 534),
(2439, 'In nhanh chất liệu pp', '', '2012-06-02 08:22:35', 'in-nhanh-chat-lieu-pp-thumb.jpg', 'in-nhanh-chat-lieu-pp.jpg', '', '<p>N PP NHANH ĐỢI LẤY NGAY<br />Qui cách Sản Phẩm : chất liệu PP ( có cán màng PVC )</p>\n<p>PP : có định lượng 130gsm Đơn giá lẽ : 70.000đ/m2 Khách hàng cung cấp file gốc , Ai, Corel , pdf ......In số nhiều có chiết khấu giá</p>\n<p> </p>', '', '<p>Độ phân giải của bản in tùy yêu cầu thực tế của khách hàng ( từ 600 DPI đến 1.440 DPI). Ngoài ra, chúng tôi cũng đáp ứng yêu cầu in cực đẹp (chất lượng ảnh) đối với các đơn hàng đặc biệt. Xin vui lòng liên hệ với chúng tôi để có được sự hỗ trợ tốt nhất.</p>', '', 'in-nhanh-chat-lieu-pp', '', '', '', 0, 4, '', 0, 0, '', '', '', '', 1, 534),
(2440, 'Giải pháp in nhanh kỹ thuật số', '', '2012-06-02 08:23:50', 'giai-phap-in-nhanh-ky-thuat-so-thumb.jpg', 'giai-phap-in-nhanh-ky-thuat-so.jpg', '', '', '', '<p>• Bạn cần in từ 01 đến 100 giấy chứng nhận, giấy khen, thiệp mời có nội dung khác nhau?<br />• Bạn vừa được thông báo phải in thêm 10 bộ tài liệu trang trọng cho buổi hội thảo ngay sáng mai ?<br />• Bạn chỉ cần 05 cuốn catalogue chất lượng cao cho buổi họp giới thiệu sản phẩm, nhưng in offset với số lượng ít thì chi phí lại quá lớn ?<br />• Bạn chỉ cần in gấp một số tài liệu cá nhân như danh thiếp, bì thư, v.v. cho kịp chuyến công tác đột xuất ?<br />Rất đơn giản! Chúng tôi sẽ giúp bạn giải quyết dễ dàng tất cả những rắc rối này với in kỹ thuật số với các thiết bị in ấn hiện đại. Bạn sẽ hoàn toàn bất ngờ trước những sản phẩm in kỹ thuật số 6 màu có màu sắc vượt trội, chất lượng tương đương như in off-set và thỏa mãn tối đa với những ưu điểm vượt trội khác:<br />• Phù hợp cho tất cả các sản phẩm in ấn đòi hỏi chất lượng: tài liệu văn phòng, catalogs, tờ bướm, các loại thiệp, namecard, postcard, bao thư, giấy tiêu đề, menu, nhãn decal, tem bảo hành, giấy chứng nhận, phối cảnh kiến trúc màu, sổ cổ đông, giấy khen, kỷ yếu, bảng tin, hệ thống nhận dạng thương hiệu, báo cáo thường niên, profile công ty, v.v...<br />• In ảnh kỹ thuật số chất lượng cao trên giấy ảnh đẹp như in trong phòng Lab ảnh<br />• Có thể in dữ liệu biến đổi: tên và ảnh thay đổi theo từng sản phẩm khác nhau.<br />• Có thể in số lượng ít: 1 tờ, 1 cuốn, ...<br />• In 2 mặt tự động, định lượng đến 300 gsm.<br />• Có thể in trên giấy couche, fort, tất cả các lọai giấy mỹ thuật.</p>', '', 'giai-phap-in-nhanh-ky-thuat-so', '', '', '', 0, 5, '', 0, 0, '', '', '', '', 1, 534),
(2441, 'Dây và bao đeo thẻ.', '', '2012-06-02 08:25:00', 'day-va-bao-deo-the--thumb.jpg', 'day-va-bao-deo-the-.jpg', '', '<p>Qui cách sản phẩm :</p>\n<p>Túi đựng thẻ : chất liệu PVC trong</p>\n<p>Kích thước : 6cm x 9.5cm Đơn giá : 1.500đ/túi</p>\n<p>Dây đeo thẻ : Chất liệu dây dù hoặc dây lụa</p>\n<p>Độ dài : 38cm Bề rộng dây : 1cm Đơn giá : 4.500đ/dây</p>\n<p>Mua số lượng nhiều có chiết khấu</p>\n<p>Đơn giá lẽ : 6.500đ/ bộ</p>', '', '<p>Chúng tôi cung cấp các phụ liệu khác đi kèm với THẺ NHỰA như BAO ĐỰNG THẺ và DÂY ĐEO THẺ. Chúng tôi có các loại DÂY ĐEO THẺ với nhiều mẩu phong phú, nhiều cách dệt dây khác nhau, đảm bảo Quý Khách Hàng sẽ hài lòng với trọn bộ dịch vụ quảng cáo của chúng tôi cung cấp</p>', '', 'day-va-bao-deo-the', '', '', '', 0, 6, '', 0, 0, '', '', '', '', 1, 534),
(2442, 'C001', '', '2012-06-02 08:26:01', 'c001-thumb.jpg', 'c001.jpg', '', '', '', '<p>Đặt hàng</p>\n<p>Để phục vụ Quý khách tốt hơn, chúng tôi mong nhận được những góp ý từ Quý khách hàng. Xin email về địa chỉ: info@quangcaothienkim.com</p>', '', 'c001', '', '', '', 0, 7, '', 0, 0, '', '', '', '', 1, 518),
(2443, 'P001', '', '2012-06-02 08:26:51', 'p001-thumb.jpg', 'p001.jpg', '', '', '', '<p>Đặt hàng</p>\n<p>Để phục vụ Quý khách tốt hơn, chúng tôi mong nhận được những góp ý từ Quý khách hàng. Xin email về địa chỉ: info@quangcaothienkim.com</p>', '', 'p001', '', '', '', 0, 8, '', 0, 0, '', '', '', '', 1, 524),
(2444, 'In Offset', '', '2012-06-02 08:28:07', 'in-offset-thumb.jpg', 'in-offset.jpg', '', '<p>Các ưu điểm của kỹ thuật in Offset này là:<br />* Chất lượng hình ảnh cao – nét và sạch hơn in trực tiếp từ bản in lên giấy vì miếng cao su áp đều lên bề mặt cần in.<br />* Khả năng ứng dụng in ấn lên nhiều bề mặt, kể cả bề mặt không phẳng (như gỗ, vải, kim loại, da, giấy thô nhám).<br />* Việc chế tạo các bản in dễ dàng hơn.</p>\n<p>* Các bản in có tuổi thọ lâu hơn – vì không phải trực tiếp tiếp xúc với bề mặt cần in</p>\n<p> </p>', '', '<p>n Offset là một kỹ thuật in ấn trong đó, các hình ảnh dính mực in được ép lên các tấm cao su (còn gọi là các tấm offset) trước rồi mới ép từ miếng cao su này lên giấy. Khi sử dụng với in thạch bản, kỹ thuật này tránh được việc làm nước bị dính lên giấy theo mực in. In Offset được dùng để in ấn: Catalogue, Brochure, name Card, leaflet, Tờ rơi, lịch...</p>', '', 'in-offset', '', '', '', 0, 9, '', 0, 0, '', '', '', '', 1, 534),
(2445, 'In hệ thống nhận diện thương hiệu', '', '2012-06-02 08:29:46', 'in-he-thong-nhan-dien-thuong-hieu-thumb.jpg', 'in-he-thong-nhan-dien-thuong-hieu.jpg', '', '', '', '<p>Hệ thống nhận diện thương hiệu được xây dựng dựa trên sự kết hợp của nhiều yếu tố mang tính đồng bộ và nhất quán của Thương hiệu. Bao gồm: Tên thương hiệu (Brand Name), Logo, Màu sắc chủ đạo, Font chữ, Danh thiếp (Namecard), Website, Cách bố trí biển hiệu tại văn phòng trụ sở, cơ quan, Đồng phục - Bảng tên.....</p>\n<p><img src="http://www.inkythuatso.com/images/stories/intrengiay/nhandienth-1.jpg" alt="" width="500" height="500" /></p>\n<p>Dịch vụ in hệ thống nhận diện thương hiệu: in danh thiếp, bao thư, catalogue, brochure.....</p>\n<p>Xin vui lòng liên hệ với chúng tôi để được dịch vụ tốt nhất.</p>', '', 'in-he-thong-nhan-dien-thuong-hieu', '', '', '', 0, 10, '', 0, 0, '', '', '', '', 1, 534),
(2446, 'In giấy khen', '', '2012-06-02 08:30:52', 'in-giay-khen-thumb.jpg', 'in-giay-khen.jpg', '', '', '', '<p>In các loại giấy khen để khen thưởng học sinh, giấy khen thưởng cán bộ, công nhân viên, khen thưởng đơn vị cho các tổ chức, cơ quan, công ty, trường học...</p>\n<p>Xin vui lòng liên hệ chúng tôi để được tư vấn và dịch vụ tốt nhất.</p>', '', 'in-giay-khen', '', '', '', 0, 11, '', 0, 0, '', '', '', '', 1, 534),
(2447, 'In decal gửi hàng', '', '2012-06-02 08:31:55', 'in-decal-gui-hang-thumb.jpg', 'in-decal-gui-hang.jpg', '', '', '', '<p>In các loại decal gửi hàng: là loại decal dán lên hành lý ký gởi, decal dán thùng hành lý, in decal dán nhãn hàng hóa. Vui lòng liên hệ dịch vụ in nhanh của chúng tôi để được tư vấn và dịch vụ tốt nhất.</p>', '', 'in-decal-gui-hang', '', '', '', 0, 12, '', 0, 0, '', '', '', '', 1, 534),
(2491, 'TG003', '', '2012-06-02 17:33:22', 'tg003-thumb.jpg', 'tg003.jpg', '', '<p>- In, gia công túi đựng sản phẩm trên mọi chất liệu như:</p>\n<p>- Túi giấy</p>\n<p>- Túi nilong...</p>\n<p>- Đảm bảo chất lượng, giá thành hợp lý</p>', '', '<p>Để phục vụ Quý khách tốt hơn, chúng tôi mong nhận được những góp ý từ Quý khách hàng. Xin email về địa chỉ: info@quangcaothienkim.com</p>', '', 'tg003', '', '', '', 0, 13, '', 0, 0, '', '', '', '', 1, 522),
(2492, 'TG002', '', '2012-06-02 17:35:21', 'tg002-thumb.jpg', 'tg002.jpg', '', '<p>- In, gia công túi đựng sản phẩm trên mọi chất liệu như:</p>\n<p>- Túi giấy</p>\n<p>- Túi nilong...</p>\n<p>- Đảm bảo chất lượng, giá thành hợp lý</p>', '', '<p>Đặt hàng</p>\n<p>Để phục vụ Quý khách tốt hơn, chúng tôi mong nhận được những góp ý từ Quý khách hàng. Xin email về địa chỉ: info@quangcaothienkim.com</p>', '', 'tg002', '', '', '', 0, 14, '', 0, 0, '', '', '', '', 1, 522);

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
) ENGINE=InnoDB  DEFAULT CHARSET=utf8 AUTO_INCREMENT=535 ;

--
-- Dumping data for table `dos_module_products_cat`
--

INSERT INTO `dos_module_products_cat` (`cat_id`, `cat_parent_id`, `cat_title`, `cat_titleen`, `preview`, `previewen`, `tag`, `tagen`, `description`, `descriptionen`, `pic_full`, `pic_desc`, `cat_order`, `cat_extra1`, `cat_extra2`, `cat_enable`, `dos_usernames_username`) VALUES
(516, 0, 'Bộ ấn phẩm văn phòng', '', '', '', 'bo-an-pham-van-phong', '', '', '', 'bo-an-pham-van-phong.jpg', '', 1, '', '', 1, 'quangcaothienkim'),
(517, 0, 'Brochure', '', '', '', 'brochure', '', '', '', 'brochure.jpg', '', 2, '', '', 1, 'quangcaothienkim'),
(518, 0, 'Catalogue', '', '', '', 'catalogue', '', '', '', 'catalogue.jpg', '', 3, '', '', 1, 'quangcaothienkim'),
(519, 0, 'Folder', '', '', '', 'folder', '', '', '', 'folder.jpg', '', 4, '', '', 1, 'quangcaothienkim'),
(520, 0, 'Lịch độc quyền', '', '', '', 'lich-doc-quyen', '', '', '', 'lich-doc-quyen.jpg', '', 5, '', '', 1, 'quangcaothienkim'),
(521, 0, 'Tờ rơi', '', '', '', 'to-roi', '', '', '', 'to-roi.jpg', '', 6, '', '', 1, 'quangcaothienkim'),
(522, 0, 'Túi giấy', '', '', '', 'tui-giay', '', '', '', 'tui-giay.jpg', '', 7, '', '', 1, 'quangcaothienkim'),
(523, 0, 'Bao bì carton', '', '', '', 'bao-bi-carton', '', '', '', 'bao-bi-carton.jpg', '', 8, '', '', 1, 'quangcaothienkim'),
(524, 0, 'Poster', '', '', '', 'poster', '', '', '', 'poster.jpg', '', 9, '', '', 1, 'quangcaothienkim'),
(525, 0, 'Thiệp', '', '', '', 'thiep', '', '', '', 'thiep.jpg', '', 10, '', '', 1, 'quangcaothienkim'),
(526, 0, 'Danh thiếp', '', '', '', 'danh-thiep', '', '', '', 'danh-thiep.jpg', '', 11, '', '', 1, 'quangcaothienkim'),
(527, 0, 'Bandroll - Bảng quảng cáo', '', '', '', 'bandroll-bang-quang-cao', '', '', '', 'bandroll-bang-quang-cao.jpg', '', 12, '', '', 1, 'quangcaothienkim'),
(534, 0, 'In kỹ thuật số khổ lớn', '', '', '', 'in-ky-thuat-so-kho-lon', '', '', '', 'in-ky-thuat-so.jpg', '', 13, '', '', 1, 'quangcaothienkim');

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
) ENGINE=InnoDB  DEFAULT CHARSET=utf8 AUTO_INCREMENT=103 ;

--
-- Dumping data for table `dos_module_services`
--

INSERT INTO `dos_module_services` (`record_id`, `title`, `titleen`, `preview`, `previewen`, `content`, `contenten`, `pic_full`, `hit`, `created`, `record_order`, `hot`, `extra_field1`, `extra_field2`, `tag`, `tagen`, `description`, `descriptionen`, `activated`, `dos_usernames_username`) VALUES
(101, 'Quảng cáo ngoài trời', '', '', '', '<p>Đang cập nhật</p>', '', '', 3, '2012-06-02 17:49:17', 1, 0, '', '', 'quang-cao-ngoai-troi', '', '', '', 1, 'quangcaothienkim'),
(102, 'In hóa đơn', '', '', '', '<p>In hóa đơn</p>', '', '', 3, '2012-06-02 17:49:30', 2, 0, '', '', 'in-hoa-don', '', '', '', 1, 'quangcaothienkim');

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
) ENGINE=InnoDB  DEFAULT CHARSET=utf8 AUTO_INCREMENT=114 ;

--
-- Dumping data for table `dos_module_supports`
--

INSERT INTO `dos_module_supports` (`support_id`, `support_name`, `support_nameen`, `support_phone`, `support_value`, `support_order`, `support_type`, `dos_usernames_username`) VALUES
(112, 'Nữ Giám đốc', '', '0915 429 486', 'phuonganhdesign', 1, 'yahoo', 'quangcaothienkim'),
(113, 'Hổ Trợ Khách Hàng', '', '0915 429 486', 'ctyinthienkim', 2, 'yahoo', 'quangcaothienkim');

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
('keywords', 'in ấn, quảng cáo, in kỹ thuật số, in card, in ấn ', 'quangcaothienkim'),
('description', 'CÔNG TY TNHH QUẢNG CÁO IN ẤN THIÊN KIM -In kỹ thuật số khổ lớn, in card, quảng cáo, hộp đèn,pano, in ấn, quảng cáo, in kỹ thuật số, in card, ', 'quangcaothienkim'),
('title', 'Quảng cáo Thiên Kim - quangcaothienkim.com', 'quangcaothienkim');

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
('quangcaothienkim', 'info@quangcaothienkim.com', 'e10adc3949ba59abbe56e057f20f883e', '2012-05-29 04:32:53', 'Nguyễn Thị Phương', '0978273979', 'Công ty In ấn quảng cáo thiên kim', 'user', 'vi', '', '2012-06-27 17:00:00', 0, 1, '020512', 19, 'cong-nghe-thong-tin-vien-thong');

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
('address1', 'Địa chỉ: 95/68, Nguyễn Ái Quốc, Kp.8, P.Tân Phong, Tp.Biên Hòa, Tỉnh Đồng Nai', '', 'quangcaothienkim'),
('address2', 'ĐT/Fax: (061) 3 896 606  Hotline: 0915.429 486 / 0983 818 414', '', 'quangcaothienkim'),
('company_name', 'CÔNG TY TNHH QUẢNG CÁO IN ẤN THIÊN KIM', '', 'quangcaothienkim'),
('company_name_footer', 'CÔNG TY TNHH QUẢNG CÁO IN ẤN THIÊN KIM', '', 'quangcaothienkim'),
('company_phone', 'Hotline: 0915 429 486', '', 'quangcaothienkim'),
('copyright', 'Copyright © 2012 thienkim', '', 'quangcaothienkim');

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
