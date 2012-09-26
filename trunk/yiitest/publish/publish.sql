-- phpMyAdmin SQL Dump
-- version 3.4.5
-- http://www.phpmyadmin.net
--
-- Host: localhost
-- Generation Time: Sep 25, 2012 at 03:04 PM
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
('logo_height', 100, '', '020512'),
('logo_width', 725, '', '020512'),
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
('020512', 'products', 'jcarousellite_1.0.1.js|scroller.js|jquery.fancybox.js|jquery.scroll-1.4.2-min.js|jquery.serialScroll-1.2.2-min.js|product.js', 'javascript'),
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
('about', 'vhp'),
('advs', 'vhp'),
('banner', 'vhp'),
('contact', 'vhp'),
('news', 'vhp'),
('products', 'vhp'),
('services', 'vhp'),
('supports', 'vhp');

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
) ENGINE=InnoDB  DEFAULT CHARSET=utf8 AUTO_INCREMENT=104 ;

--
-- Dumping data for table `dos_module_abouts`
--

INSERT INTO `dos_module_abouts` (`record_id`, `title`, `titleen`, `content`, `contenten`, `hit`, `created`, `record_order`, `hot`, `extra_field1`, `extra_field2`, `tag`, `tagen`, `description`, `descriptionen`, `activated`, `dos_usernames_username`) VALUES
(103, 'Kính chào quý khách!', '', '<p><strong><span style="color:#ff6600;">HVP</span></strong> là đơn vị hoạt động trong lĩnh vực thiết kế, in ấn và cung cấp các sản phẩm phục vụ cho hoạt động quảng bá nhãn hiệu, phát triển thị trường. Với thiết kế đầy sáng tạo, nhiều kinh nghiệm và kỹ thuật in hiện đại, <span style="color:#ff6600;"><strong>VHP</strong></span> sẵn sàng thực hiện các yêu cầu của quý khách hàng trên các lĩnh vực: Thiết kế và in ấn Catalogue, tờ gấp, túi giấy, biểu mẫu, tạp chí, tem chống hàng giả, hộp giấy, hộp metalize, hộp hologram…).</p>\n<p><strong><em>UY TÍN - CHẤT LƯỢNG VÀ GIÁ CẢ HỢP LÝ</em></strong> là những gì mà <strong><span style="color:#ff6600;">VHP</span></strong> muốn đem đến cho quý khách hàng.</p>', '', 49, '2012-05-09 07:12:57', 1, 0, '', '', 'kinh-chao-quy-khach', '', '', '', 1, 'vhp');

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
) ENGINE=InnoDB  DEFAULT CHARSET=utf8 AUTO_INCREMENT=94 ;

--
-- Dumping data for table `dos_module_advs`
--

INSERT INTO `dos_module_advs` (`record_id`, `title`, `titleen`, `pic_thumb`, `url`, `create_date`, `start_date`, `end_date`, `hits`, `record_order`, `position`, `type`, `enable`, `dos_usernames_username`) VALUES
(91, 'quangcao', '', 'quangcao.jpg', 'http://vhp.dos.vn/san-pham', '2012-05-14 00:27:39', '2012-06-26 16:00:00', '2012-12-30 16:00:00', 0, 2, 'top', '_bank', 1, 'vhp'),
(93, 'quangcao-1', '', 'quangcao-1.jpg', 'http://vhp.dos.vn/san-pham', '2012-05-14 07:20:57', '2012-05-26 16:00:00', '2012-12-30 16:00:00', 0, 1, 'top', '_bank', 1, 'vhp');

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
) ENGINE=InnoDB  DEFAULT CHARSET=utf8 AUTO_INCREMENT=413 ;

--
-- Dumping data for table `dos_module_banners`
--

INSERT INTO `dos_module_banners` (`banner_id`, `banner_date`, `banner_name`, `banner_url`, `banner_link`, `banner_order`, `banner_type`, `position`, `enable`, `dos_usernames_username`) VALUES
(403, '2012-05-08 01:31:52', 'logo-vhp', 'logo-vhp.png', '', 1, 'logo', 'default', 1, 'vhp'),
(404, '2012-05-08 02:41:04', 'banner', 'banner.jpg', '', 2, 'banners', 'default', 1, 'vhp'),
(405, '2012-05-08 02:41:28', 'banner1', 'banner1.jpg', '', 3, 'banners', 'default', 1, 'vhp'),
(406, '2012-05-08 02:41:51', 'banner2', 'banner2.jpg', '', 4, 'banners', 'products', 1, 'vhp'),
(407, '2012-05-08 02:42:11', 'banner3', 'banner3.jpg', '', 5, 'banners', 'products', 1, 'vhp'),
(408, '2012-05-08 02:42:41', 'banner4', 'banner4.jpg', '', 6, 'banners', 'about', 1, 'vhp'),
(409, '2012-05-08 02:43:15', 'banner5', 'banner5.jpg', '', 7, 'banners', 'services', 1, 'vhp'),
(410, '2012-05-08 02:43:39', 'banner6', 'banner6.jpg', '', 8, 'banners', 'news', 1, 'vhp'),
(411, '2012-05-08 02:44:00', 'banner7', 'banner7.jpg', '', 9, 'banners', 'contact', 1, 'vhp'),
(412, '2012-05-08 02:47:25', 'banner8', 'banner8.jpg', '', 10, 'banners', 'about', 1, 'vhp');

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
('Trang chủ', '', 'default', '', 1, '', '', '', '', 'vhp'),
('Giới thiệu', '', 'about', '', 2, '', '', '', '', 'vhp'),
('Gallery', '', 'products', '', 3, '', '', '', '', 'vhp'),
('Dịch vụ', '', 'services', '', 4, '', '', '', '', 'vhp'),
('Tin tức & sự kiện', '', 'news', '', 5, '', '', '', '', 'vhp'),
('Liên hệ', '', 'contact', '', 6, 'Dự Án Hầm Thủ Thêm', '', '', '', 'vhp');

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
) ENGINE=InnoDB  DEFAULT CHARSET=utf8 AUTO_INCREMENT=104 ;

--
-- Dumping data for table `dos_module_news`
--

INSERT INTO `dos_module_news` (`record_id`, `title`, `titleen`, `postdate`, `pic_thumb`, `preview`, `previewen`, `content`, `contenten`, `tag`, `tagen`, `description`, `descriptionen`, `hits`, `record_order`, `hot`, `extra_field1`, `extra_field2`, `enable`, `dos_module_item_cat_cat_id`) VALUES
(102, 'Tranh Đông Hồ', '', '2012-05-14 02:12:38', 'tranh-ong-ho.jpg', '<p style="text-align:justify;">Tranh Đông Hồ, hay tên đầy đủ là tranh khắc gỗ dân gian Đông Hồ, là một dòng tranh dân gian Việt Nam với xuất xứ từ làng Đông Hồ (xã Song Hồ, huyện Thuận Thành, tỉnh Bắc Ninh). Trước kia tranh được bán ra chủ yếu phục vụ cho dịp Tết Nguyên Đán, người dân nông thôn mua tranh về dán trên tường, hết năm lại lột bỏ, dùng tranh mới.</p>', '', '<p style="text-align:justify;"><strong>Tranh Đông Hồ, hay tên đầy đủ là tranh khắc gỗ dân gian Đông Hồ, là một dòng tranh dân gian Việt Nam với xuất xứ từ làng Đông Hồ (xã Song Hồ, huyện Thuận Thành, tỉnh Bắc Ninh). Trước kia tranh được bán ra chủ yếu phục vụ cho dịp Tết Nguyên Đán, người dân nông thôn mua tranh về dán trên tường, hết năm lại lột bỏ, dùng tranh mới.</strong></p>\n<p style="text-align:justify;">Thơ Tú Xương về tranh Đông Hồ ngày Tết có câu:</p>\n<p style="text-align:center;">Đì đoẹt ngoài sân tràng pháo chuột<br />Loẹt lòe trên vách bức tranh gà</p>\n<p style="text-align:center;"><img src="/public/userfiles/image/vhp/image/nss_1314782993.jpg" alt="" width="400" height="286" /></p>\n<p style="text-align:justify;"><strong>1. Giấy in và màu sắc:</strong></p>\n<p style="text-align:justify;">Ngoài các đặc điểm về đường nét và bố cục, nét dân gian của tranh Đông Hồ còn nằm ở màu sắc và chất liệu giấy in. Giấy in tranh Đông Hồ được gọi là giấy điệp: người ta nghiền nát vỏ con điệp, một loại sò vỏ mỏng ở biển, trộn với hồ (hồ được nấu từ bột gạo tẻ, hoặc gạo nếp, có khi nấu bằng bột sắn - hồ dùng để quét nền tranh thường được nấu loãng từ bột gạo tẻ hoặc bột sắn, hồ nấu từ bột nếp thường dùng để dán) rồi dùng chổi lá thông quét lên mặt giấy dó. Chổi lá thông tạo nên những ganh chạy theo đường quét và vỏ điệp tự nhiên cho màu trắng với ánh lấp lánh những mảnh điệp nhỏ dưới ánh sáng, có thể pha thêm màu khác vào hồ trong quá trình làm giấy điệp. Màu sắc sử dụng trong tranh là màu tự nhiên từ cây cỏ như đen (than xoan hay than lá tre), xanh (gỉ đồng, lá chàm), vàng (hoa hòe), đỏ (sỏi son, gỗ vang), v.v. Đây là những màu khá cơ bản, không pha trộn và vì số lượng màu tương ứng với số bản khắc gỗ, nên thường thường tranh Đông Hồ chỉ dùng tới 4 màu mà thôi.</p>\n<p style="text-align:center;"><img src="/public/userfiles/image/vhp/image/1298_1306402139_clover.jpg" alt="" width="550" height="400" /></p>\n<p style="text-align:center;"><em>Ván khắc tranh Đánh ghen (âm bản) ở nhà nghệ nhân Nguyễn Đăng Chế, làng tranh Đông Hồ</em></p>\n<p style="text-align:center;"><img src="/public/userfiles/image/vhp/image/1298_1306402103_clover.jpg" alt="" width="550" height="397" /></p>\n<p style="text-align:center;"><em>Ván khắc tranh Chăn trâu thổi sáo ở nhà nghệ nhân Nguyễn Hữu Sam làng tranh Đông Hồ</em></p>\n<p style="text-align:justify;"><strong>2. Thay đổi gần đây:</strong></p>\n<p style="text-align:justify;">Tranh Đông Hồ khá gần gũi với đại đa số dân chúng Việt Nam, nhắc tới hầu như ai cũng đều biết cả. Tranh gần gũi còn vì hình ảnh của nó đã đi vào thơ, văn trong chương trình học. Ngày nay lệ mua tranh Đông Hồ treo ngày Tết đã mai một, làng tranh cũng thay đổi nhiều: làng Đông Hồ ngày nay có thêm nghề làm vàng mã. Nghề giấy dó ở làng Yên Thế (Bưởi, Tây Hồ) cũng đã không còn. Tuy thế tranh Đông Hồ đóng vai trò như một di sản văn hóa, một dòng tranh dân gian không thể thiếu.</p>\n<p style="text-align:justify;">Theo đánh giá của một số họa sĩ, tranh Đông Hồ in ở thời điểm hiện tại thường không có màu sắc thắm như tranh cổ, nguyên nhân là người ta trộn màu trắng vào điệp quét giấy để bớt lượng điệp khiến giấy mất độ óng ánh và trở nên "thường", màu sắc sử dụng cũng chuyển sang loại màu công nghiệp, các bản khắc mới có bản không được tinh tế như bản cổ. Một điểm đáng lưu ý khác nữa là một số bản khắc đã đục bỏ phần chữ Hán (hoặc chữ Nôm) bên cạnh phần hình của tranh khiến tranh ít nhiều bị què cụt về mặt ý nghĩa. Nguyên nhân dẫn tới tình trạng này ước đoán là:</p>\n<p style="text-align:justify;">+ Thời sau năm 1945, chữ Hán (và chữ Nôm) bị chính quyền coi là phong kiến lạc hậu, liệt vào danh mục bài xích nên thợ in đục bỏ cho đỡ rách việc.</p>\n<p style="text-align:justify;">+ Thế hệ sau này không phải ai cũng đọc và hiểu được các ký tự ấy nên tự ý bỏ đi.</p>\n<p style="text-align:justify;">+ Cũng do không đọc hiểu được nên các ván khắc truyền lại "tam sao thất bản", đến mức còn lại các ký tự nhưng không đọc được ra chữ gì.</p>\n<p style="text-align:justify;">Về nội dung tranh, lưu ý rằng có sự gần gũi nhất định giữa nội dung tranh khắc gỗ màu của Việt Nam với của Trung Quốc, có những tranh mà cả hai nước đều có, song tranh Đông Hồ phát triển thành một hướng riêng tồn tại nhiều thế kỷ và được thừa nhận như dòng tranh dân gian được biết đến nhiều nhất ở Việt Nam.</p>\n<p style="text-align:center;"><img src="/public/userfiles/image/vhp/image/1298_1306402308_clover.jpg" alt="" width="550" height="358" /></p>\n<p style="text-align:center;"><img src="/public/userfiles/image/vhp/image/1298_1306402347_clover.jpg" alt="" width="550" height="343" /></p>\n<p style="text-align:center;"><img src="/public/userfiles/image/vhp/image/1298_1306402228_clover.jpg" alt="" width="544" height="670" /></p>\n<p style="text-align:center;"><em>Tranh em bé ngày tết</em></p>\n<p style="text-align:justify;"><strong>3. Làng tranh Đông Hồ</strong></p>\n<p style="text-align:justify;">Làng tranh Đông Hồ xưa là làng nghề nổi tiếng về tranh dân gian, thuộc xã Song Hồ, huyện Thuận Thành, tỉnh Bắc Ninh cách Hà Nội chừng trên 35 km. Làng Đông Hồ (đôi khi dân địa phương chỉ gọi là làng Hồ) nằm trên bờ nam sông Đuống, cạnh bến đò Hồ, nay là cầu Hồ.</p>\n<p style="text-align:justify;">Quanh năm rất nhiều khách du lịch trong ngoài nước đến làng tranh Đông Hồ thăm và mua tranh Đông Hồ làm kỷ niệm. Một số khách sạn, nhà hàng từ Hà Nội, Thành phố Hồ Chí Minh cũng về đây đặt những bức tranh khổ lớn để trang trí cho cách phòng khách, hoặc phòng ăn lớn. Từ Hà Nội muốn đi Đông Hồ đường gần nhất du khách thường đi là xuôi theo đường Quốc lộ số 5 (đường đi Hải Phòng) đến ga Phú Thụy, cách Hà Nội chừng 15 km thì rẽ trái, đi chừng 18 km nữa, qua các địa danh khá nổi tiếng của huyện Gia Lâm (Hà Nội) như phố Sủi, chợ Keo, chợ Dâu (Thuận Thành-Bắc Ninh) là đến phố Hồ-huyện lỵ Thuận Thành. Rẽ trái thêm 2 km là đến làng Hồ. Cũng có thể đi hết phố Hồ, lên đê rẽ trái, gặp điếm canh đê thứ hai sẽ có biển chỉ đường xuống làng Đông Hồ.</p>\n<p style="text-align:justify;">Làng Đông Hồ xưa còn gọi là làng Mái. Các cụ làng Đông Hồ vẫn truyền lại mấy câu ca rằng:</p>\n<p style="text-align:center;">Hỡi cô thắt lưng bao xanh<br />Có về làng Mái với anh thì về<br />Làng Mái có lịch có lề<br />Có sông tắm mát có nghề làm tranh.</p>\n<p style="text-align:justify;">Làng Đông Hồ nằm ngay sát bờ sông Đuống, ngày xưa chỉ cách sông một con đê, đó là ý trong câu "Có sông tắm mát có nghề làm tranh". Ngày nay, do sự bồi lấp của dòng sông nên từ đê ra đến mép nước giờ khá xa.</p>\n<p style="text-align:justify;">Còn "làng Mái có lịch có lề" thì nghĩa là gì? Tục ngữ Việt Nam có câu: giấy rách phải giữ lấy lề. Chữ lề ở đây tượng trưng cho những quy tắc đạo đức của người xưa, rất trọng danh dự, khí tiết. Còn dân làng Mái, dân nghệ thuật rất trọng lời ăn tiếng nói. Không như nhiều làng quê khác, người dân làng Hồ, nhất là phụ nữ, ăn nói rất lịch lãm, trên dưới thưa gửi rất rõ ràng. Người làng kể rằng kể cả từ xưa, rất hiếm khi trong làng có tiếng người mắng chửi nhau.</p>\n<p style="text-align:justify;">Do công nghệ phát triển, tranh dân gian làng Hồ bây giờ không tiêu thụ nhiều như trước. Qua nhiều thế kỷ, 17 dòng họ đã quy tụ về làng, vốn xưa tất cả đều làm tranh. Nhưng đến nay, dân làng Hồ hiện chủ yếu sống bằng nghề làm vàng mã. Hiện nay chỉ còn hai gia đình nghệ nhân Nguyễn Đăng Chế và Nguyễn Hữu Sam cùng con cháu là theo nghề tranh, gìn giữ di sản tranh Đông Hồ.</p>\n<p style="text-align:justify;">Hàng năm làng Hồ có hội làng vào rằm tháng 3 âm lịch. Trong hội làng có những nghi thức truyền thống như tế thần, thi mã, thi tranh rất vui vẻ. Làng còn có các làn điệu dân ca như:</p>\n<p style="text-align:center;">Hỡi anh đi đường cái quan<br />Dừng chân ngắm cảnh mà tan nỗi sầu<br />Mua tờ tranh điệp tươi màu<br />Mua đàn gà lợn thi nhau đẻ nhiều.</p>\n<p style="text-align:justify;"> </p>', '', 'tranh-dong-ho', '', '', '', 0, 1, 0, '', '', 1, 65),
(103, 'Anapurna M2 UV – Gia tăng tốc độ và sản lượng', '', '2012-05-14 02:15:59', 'anapurna-m2-uv--gia-tang-toc-do-va-san-luong.jpg', '<p style="text-align:justify;">Agfa Graphics tự hào công bố dòng máy in phun mực UV khổ lớn Anapurna M2 UV. Dựa trên dòng máy in phun mực UV khổ lớn Anapurna M từng đạt giải thưởng công nghiệp và giải thưởng bán chạy nhất, Anapurna M2 là một hệ thống in phun mực UV thuộc dòng máy công nghiệp nặng có đầy đủ mọi chức năng.</p>', '', '<p style="text-align:justify;"><strong>Agfa Graphics tự hào công bố dòng máy in phun mực UV khổ lớn Anapurna M2 UV. Dựa trên dòng máy in phun mực UV khổ lớn Anapurna M từng đạt giải thưởng công nghiệp và giải thưởng bán chạy nhất, Anapurna M2 là một hệ thống in phun mực UV thuộc dòng máy công nghiệp nặng có đầy đủ mọi chức năng.</strong></p>\n<p style="text-align:center;"><strong><img src="/public/userfiles/image/vhp/image/nss_1314782881.jpg" alt="" width="459" height="345" /><br /></strong></p>\n<p style="text-align:justify;">Nhiều chức năng tự động được bổ sung đã giúp cho Anapurna M2 trở thành dòng máy dẫn đầu trong thị trường in phun mực UV khổ lớn. Hệ thống điều khiển lực hút chân không đồng bộ được thiết kế phù hợp cho phép vật liệu có thể đi qua trơn tru với tốc độ rất nhanh. Dãy cảm biến an toàn có nhiệm vụ bảo vệ đầu in trong trường hợp vật liệu in có độ dày không ổn định, và bộ phận ion hóa ngăn chặn sự tích điện xảy ra trên vật liệu, bảo đảm điều kiện tốt nhất cho việc phun mực chính xác do đó giúp đạt được chất lượng in cao nhất. Các bộ phận của Anapurna M2 được thiết kế theo tiêu chuẩn nhằm đáp ứng tối đa các nhu cầu sản xuất đòi hỏi cao. Anapurna M2 tăng số đầu in lên 6 đơn vị với 1024 lỗ phun mực cho phép gia tăng tốc độ in. Với thiết kế tiện lợi, máy điều khiển vật liệu theo dạng in cuộn rất vững chãi, vật liệu được đưa thẳng trực tiếp vào máy in thông qua hệ thống định vị vật liệu tự động.</p>\n<p style="text-align:justify;">Willy Van Dromme, quản lý hệ thống kinh doanh in khổ lớn của Agfa Graphics nói: “Anapurna M2 là ý tưởng thích hợp cho nhu cầu in quảng cáo, in thương mại, in bảng hiệu và các phòng photo lab yêu cầu chất lượng cao. Nó được chế tạo thật bền bỉ nhằm phục vụ cho yêu cầu công nghiệp. Nó là dòng máy in phun mực UV cao cấp có thể đáp ứng tối đa các nhu cầu sản xuất đòi hỏi cao”.</p>\n<p style="text-align:justify;">Anapurna M2 đáp ứng vật liệu có khổ bề rộng tối đa là 62inch (1,57m) và sử dụng đầu in mới nhất Konica-Minolta 12 pico cho phép in hình ảnh có độ phân giải không đồng nhất (unparalleled image) 720 x 1440dpi.</p>\n<p style="text-align:justify;">Cả hai chế độ in hai chiều và một chiều đều sắc nét, thể hiện được nhiều chi tiết và chữ rõ nét. In ở chế độ 8 lần một chiều cho hình ảnh có chất lượng cao nhất, chế độ 4 lần hai chiều cho sản lượng in cao nhất, khoảng 23m2/giờ.</p>\n<p style="text-align:justify;">Khi kết hợp sử dụng với mực in UV Anapurna do Afga chế tạo, Anapurna M2 cho chất lượng ảnh nhìn sắc nét với tốc độ in cao.</p>', '', 'anapurna-m2-uv-gia-tang-toc-do-va-san-luong', '', '', '', 0, 2, 0, '', '', 1, 65);

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
) ENGINE=InnoDB  DEFAULT CHARSET=utf8 AUTO_INCREMENT=66 ;

--
-- Dumping data for table `dos_module_news_cat`
--

INSERT INTO `dos_module_news_cat` (`cat_id`, `cat_parent_id`, `cat_title`, `cat_titleen`, `preview`, `previewen`, `tag`, `tagen`, `description`, `descriptionen`, `pic_full`, `cat_order`, `cat_extra1`, `cat_extra2`, `cat_enable`, `dos_usernames_username`) VALUES
(65, 0, 'Tin tức', '', '', '', 'tin-tuc', '', 'Tin tức', '', '', 1, '', '', 1, 'vhp');

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
('day_time', 2456196),
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
('''127.0.0.1''', 1348578017);

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
) ENGINE=InnoDB  DEFAULT CHARSET=utf8 AUTO_INCREMENT=1028 ;

--
-- Dumping data for table `dos_module_products`
--

INSERT INTO `dos_module_products` (`record_id`, `title`, `titleen`, `postdate`, `pic_thumb`, `pic_full`, `pic_desc`, `preview`, `previewen`, `content`, `contenten`, `tag`, `tagen`, `description`, `descriptionen`, `hits`, `record_order`, `unit`, `hot`, `specials`, `extra_field1`, `extra_field2`, `extra_field3`, `extra_field4`, `enable`, `dos_module_item_cat_cat_id`) VALUES
(721, 'TH001', '', '2012-05-08 02:33:40', 'th001-thumb.jpg', 'th001.jpg', '', '<p>Công ty chúng tôi chuyên nhận in offset bộ nhận diện thương hiệu, các khổ A3 - A4 - A5 và các khổ giấy tự do theo thiết kế của khách hàngvới số lượng lớn từ 1000 sản phẩm trở lên.</p>\n<p>Gắn liền với dịch vụ thiết kế nhận diện thương hiệu là mức giá in ưu đãi cho khách hàng.</p>\n<p>Chất lượng giấy Couche bảo đảm đúng với yêu cầu của khách (C150, C200, C250 .v.v.)</p>\n<p>Máy in offset 4 màu chuyên nghiệp đảm bảo chất lượng màu hoàn hảo nhất gần giống với màu thiết kế trên máy tính đến 95%.</p>\n<p>Dịch vụ cán màng một mặt và hai mặt các sản phẩm in, cấn lên các sản phẩm gấp.</p>', '', '<p>Liên hệ VHP</p>', '', 'th001', '', 'TH001', '', 0, 40, '', 0, 0, '', '', '', '', 1, 211),
(722, 'TH002', '', '2012-05-08 02:36:33', 'th002-thumb.jpg', 'th002.jpg', '', '<p>Công ty chúng tôi chuyên nhận in offset bộ nhận diện thương hiệu, các khổ A3 - A4 - A5 và các khổ giấy tự do theo thiết kế của khách hàngvới số lượng lớn từ 1000 sản phẩm trở lên.</p>\n<p>Gắn liền với dịch vụ thiết kế nhận diện thương hiệu là mức giá in ưu đãi cho khách hàng.</p>\n<p>Chất lượng giấy Couche bảo đảm đúng với yêu cầu của khách (C150, C200, C250 .v.v.)</p>\n<p>Máy in offset 4 màu chuyên nghiệp đảm bảo chất lượng màu hoàn hảo nhất gần giống với màu thiết kế trên máy tính đến 95%.</p>\n<p>Dịch vụ cán màng một mặt và hai mặt các sản phẩm in, cấn lên các sản phẩm gấp.</p>', '', '<p>Liên hệ VHP</p>', '', 'th002', '', '', '', 0, 37, '', 0, 0, '', '', '', '', 1, 211),
(723, 'TH003', '', '2012-05-08 02:37:04', 'th003-thumb.jpg', 'th003.jpg', '', '<p>Công ty chúng tôi chuyên nhận in offset bộ nhận diện thương hiệu, các khổ A3 - A4 - A5 và các khổ giấy tự do theo thiết kế của khách hàngvới số lượng lớn từ 1000 sản phẩm trở lên.</p>\n<p>Gắn liền với dịch vụ thiết kế nhận diện thương hiệu là mức giá in ưu đãi cho khách hàng.</p>\n<p>Chất lượng giấy Couche bảo đảm đúng với yêu cầu của khách (C150, C200, C250 .v.v.)</p>\n<p>Máy in offset 4 màu chuyên nghiệp đảm bảo chất lượng màu hoàn hảo nhất gần giống với màu thiết kế trên máy tính đến 95%.</p>\n<p>Dịch vụ cán màng một mặt và hai mặt các sản phẩm in, cấn lên các sản phẩm gấp.</p>', '', '<p>Liên hệ VHP</p>', '', 'th003', '', '', '', 0, 38, '', 0, 0, '', '', '', '', 1, 211),
(724, 'TH004', '', '2012-05-08 02:39:43', 'th004-thumb.jpg', 'th004.jpg', '', '<p>Công ty chúng tôi chuyên nhận in offset bộ nhận diện thương hiệu, các khổ A3 - A4 - A5 và các khổ giấy tự do theo thiết kế của khách hàngvới số lượng lớn từ 1000 sản phẩm trở lên.</p>\n<p>Gắn liền với dịch vụ thiết kế nhận diện thương hiệu là mức giá in ưu đãi cho khách hàng.</p>\n<p>Chất lượng giấy Couche bảo đảm đúng với yêu cầu của khách (C150, C200, C250 .v.v.)</p>\n<p>Máy in offset 4 màu chuyên nghiệp đảm bảo chất lượng màu hoàn hảo nhất gần giống với màu thiết kế trên máy tính đến 95%.</p>\n<p>Dịch vụ cán màng một mặt và hai mặt các sản phẩm in, cấn lên các sản phẩm gấp.</p>', '', '<p>Liên hệ VHP</p>', '', 'th004', '', '', '', 0, 39, '', 0, 0, '', '', '', '', 1, 211),
(791, 'DT003', '', '2012-05-09 07:59:12', 'dt003-thumb.jpg', 'dt003.jpg', 'dt003-desc-2.jpg', '<p>Chúng tôi đưa ra một số định dạng name card thông thường để quý khách hàng có thể lựa chọn trong việc in ấn</p>\n<p>Kích thước chuẩn tối đa : 5.5cm*9cm</p>\n<p>Kích thước có thể tùy chọn khác so với kích thước chuẩn.</p>\n<p>Sử dụng bất cứ loại giấy định lượng tối thiểu 250gsm như : Couche, Bristol, mỹ thuật.Gia công: cán mờ 1 mặt hoặc 2 mặt, thông dụng là 2 mặt, ép kim, bế nổi, UV định hình.In lụa hoặc In Offset, In offset 4 màu.</p>\n<p>Để đảm bảo màu sắc chính xác nên sử dụng các loại giấy chất lượng cao.</p>\n<p><span style="text-decoration:underline;"><em><strong>Lưu ý</strong></em></span></p>\n<p>- In trên giấy mỹ thuật không cán màng.</p>', '', '<p>Liên hệ VHP</p>', '', 'dt003', '', '', '', 0, 22, '', 0, 0, '', '', '', '', 1, 200),
(800, 'DT001', '', '2012-05-09 08:22:30', 'dt001-thumb.jpg', 'dt001.jpg', 'dt001-desc-1.jpg', '<p>Chúng tôi đưa ra một số định dạng name card thông thường để quý khách hàng có thể lựa chọn trong việc in ấn</p>\n<p>Kích thước chuẩn tối đa : 5.5cm*9cm</p>\n<p>Kích thước có thể tùy chọn khác so với kích thước chuẩn.</p>\n<p>Sử dụng bất cứ loại giấy định lượng tối thiểu 250gsm như : Couche, Bristol, mỹ thuật.Gia công: cán mờ 1 mặt hoặc 2 mặt, thông dụng là 2 mặt, ép kim, bế nổi, UV định hình.In lụa hoặc In Offset, In offset 4 màu.</p>\n<p>Để đảm bảo màu sắc chính xác nên sử dụng các loại giấy chất lượng cao.</p>\n<p><em><strong>Lưu ý</strong></em></p>\n<p>- In trên giấy mỹ thuật không cán màng.</p>', '', '<p>Liên hệ VHP</p>', '', 'dt001', '', '', '', 0, 23, '', 0, 0, '', '', '', '', 1, 200),
(801, 'DT002', '', '2012-05-09 08:24:29', 'dt002-thumb.jpg', 'dt002.jpg', 'dt002-desc-1.jpg', '<p>Chúng tôi đưa ra một số định dạng name card thông thường để quý khách hàng có thể lựa chọn trong việc in ấn</p>\n<p>Kích thước chuẩn tối đa : 5.5cm*9cm</p>\n<p>Kích thước có thể tùy chọn khác so với kích thước chuẩn.</p>\n<p>Sử dụng bất cứ loại giấy định lượng tối thiểu 250gsm như : Couche, Bristol, mỹ thuật.Gia công: cán mờ 1 mặt hoặc 2 mặt, thông dụng là 2 mặt, ép kim, bế nổi, UV định hình.In lụa hoặc In Offset, In offset 4 màu.</p>\n<p>Để đảm bảo màu sắc chính xác nên sử dụng các loại giấy chất lượng cao.</p>\n<p><span style="text-decoration:underline;"><em><strong>Lưu ý</strong></em></span></p>\n<p>- In trên giấy mỹ thuật không cán màng.</p>', '', '<p>Liên hệ VHP</p>', '', 'dt002', '', '', '', 0, 24, '', 0, 0, '', '', '', '', 1, 200),
(802, 'DT004', '', '2012-05-09 08:26:51', 'dt004-thumb.jpg', 'dt004.jpg', 'dt004-desc-1.jpg', '<p>Chúng tôi đưa ra một số định dạng name card thông thường để quý khách hàng có thể lựa chọn trong việc in ấn</p>\n<p>Kích thước chuẩn tối đa : 5.5cm*9cm</p>\n<p>Kích thước có thể tùy chọn khác so với kích thước chuẩn.</p>\n<p>Sử dụng bất cứ loại giấy định lượng tối thiểu 250gsm như : Couche, Bristol, mỹ thuật.Gia công: cán mờ 1 mặt hoặc 2 mặt, thông dụng là 2 mặt, ép kim, bế nổi, UV định hình.In lụa hoặc In Offset, In offset 4 màu.</p>\n<p>Để đảm bảo màu sắc chính xác nên sử dụng các loại giấy chất lượng cao.</p>\n<p><span style="text-decoration:underline;"><em><strong>Lưu ý</strong></em></span></p>\n<p>- In trên giấy mỹ thuật không cán màng.</p>', '', '<p>Liên hệ VHP</p>', '', 'dt004', '', '', '', 0, 21, '', 0, 0, '', '', '', '', 1, 200),
(803, 'DT005', '', '2012-05-09 08:30:03', 'dt005-thumb.jpg', 'dt005.jpg', 'dt005-desc-1.jpg', '<p>Chúng tôi đưa ra một số định dạng name card thông thường để quý khách hàng có thể lựa chọn trong việc in ấn</p>\n<p>Kích thước chuẩn tối đa : 5.5cm*9cm</p>\n<p>Kích thước có thể tùy chọn khác so với kích thước chuẩn.</p>\n<p>Sử dụng bất cứ loại giấy định lượng tối thiểu 250gsm như : Couche, Bristol, mỹ thuật.Gia công: cán mờ 1 mặt hoặc 2 mặt, thông dụng là 2 mặt, ép kim, bế nổi, UV định hình.In lụa hoặc In Offset, In offset 4 màu.</p>\n<p>Để đảm bảo màu sắc chính xác nên sử dụng các loại giấy chất lượng cao.</p>\n<p><span style="text-decoration:underline;"><em><strong>Lưu ý</strong></em></span></p>\n<p>- In trên giấy mỹ thuật không cán màng.</p>', '', '<p>Liên hệ VHP</p>', '', 'dt005', '', '', '', 0, 35, '', 0, 0, '', '', '', '', 1, 200),
(804, 'DT006', '', '2012-05-09 08:31:54', 'dt006-thumb.jpg', 'dt007.jpg', 'dt007-desc-1.jpg', '<p>Chúng tôi đưa ra một số định dạng name card thông thường để quý khách hàng có thể lựa chọn trong việc in ấn</p>\n<p>Kích thước chuẩn tối đa : 5.5cm*9cm</p>\n<p>Kích thước có thể tùy chọn khác so với kích thước chuẩn.</p>\n<p>Sử dụng bất cứ loại giấy định lượng tối thiểu 250gsm như : Couche, Bristol, mỹ thuật.Gia công: cán mờ 1 mặt hoặc 2 mặt, thông dụng là 2 mặt, ép kim, bế nổi, UV định hình.In lụa hoặc In Offset, In offset 4 màu.</p>\n<p>Để đảm bảo màu sắc chính xác nên sử dụng các loại giấy chất lượng cao.</p>\n<p><span style="text-decoration:underline;"><em><strong>Lưu ý:</strong></em></span></p>\n<p>- In trên giấy mỹ thuật không cán màng.</p>', '', '<p>Liên hệ VHP</p>', '', 'dt006', '', '', '', 0, 36, '', 0, 0, '', '', '', '', 1, 200),
(805, 'DT007', '', '2012-05-09 08:34:37', 'dt007-thumb-4.jpg', 'dt007-4.jpg', 'dt007-desc-1-3.jpg', '<p>Chúng tôi đưa ra một số định dạng name card thông thường để quý khách hàng có thể lựa chọn trong việc in ấn</p>\n<p>Kích thước chuẩn tối đa : 5.5cm*9cm</p>\n<p>Kích thước có thể tùy chọn khác so với kích thước chuẩn.</p>\n<p>Sử dụng bất cứ loại giấy định lượng tối thiểu 250gsm như : Couche, Bristol, mỹ thuật.Gia công: cán mờ 1 mặt hoặc 2 mặt, thông dụng là 2 mặt, ép kim, bế nổi, UV định hình.In lụa hoặc In Offset, In offset 4 màu.</p>\n<p>Để đảm bảo màu sắc chính xác nên sử dụng các loại giấy chất lượng cao.</p>\n<p><span style="text-decoration:underline;"><em><strong>Lưu ý:</strong></em></span></p>\n<p>- In trên giấy mỹ thuật không cán màng.</p>', '', '<p>Liên hệ VHP</p>', '', 'dt007', '', '', '', 0, 20, '', 0, 0, '', '', '', '', 1, 200),
(806, 'DT008', '', '2012-05-09 08:37:14', 'dt008-thumb.jpg', 'dt008.jpg', 'dt008-desc-1.jpg', '<p>Chúng tôi đưa ra một số định dạng name card thông thường để quý khách hàng có thể lựa chọn trong việc in ấn</p>\n<p>Kích thước chuẩn tối đa : 5.5cm*9cm</p>\n<p>Kích thước có thể tùy chọn khác so với kích thước chuẩn.</p>\n<p>Sử dụng bất cứ loại giấy định lượng tối thiểu 250gsm như : Couche, Bristol, mỹ thuật.Gia công: cán mờ 1 mặt hoặc 2 mặt, thông dụng là 2 mặt, ép kim, bế nổi, UV định hình.In lụa hoặc In Offset, In offset 4 màu.</p>\n<p>Để đảm bảo màu sắc chính xác nên sử dụng các loại giấy chất lượng cao.</p>\n<p><span style="text-decoration:underline;"><em><strong>Lưu ý:</strong></em></span></p>\n<p>- In trên giấy mỹ thuật không cán màng.</p>', '', '<p>Liên hệ VHP</p>', '', 'dt008', '', '', '', 0, 19, '', 0, 0, '', '', '', '', 1, 200),
(807, 'TD001', '', '2012-05-09 08:40:43', 'td001-thumb.jpg', 'td001.jpg', 'td001-desc-1.jpg', '<p>Kích thước thành phẩm : A4 (21 x 29cm) hoặc theo kích thước mẫu của khách hàng.</p>\n<p>Qui cách: In 1 mặt bằng công nghệ in Offset 4 màu, cắt thành phẩm.</p>\n<p>Chất liệu: Ford 70 - 100gsm.</p>\n<p> </p>', '', '<p>Liên hệ VHP</p>', '', 'td001', '', '', '', 0, 26, '', 0, 0, '', '', '', '', 1, 201),
(808, 'TD002', '', '2012-05-09 08:42:30', 'td002-thumb.jpg', 'td002.jpg', 'td002-desc-1.jpg', '<p>Kích thước thành phẩm : A4 (21 x 29cm) hoặc theo kích thước mẫu của khách hàng.</p>\n<p>Qui cách: In 1 mặt bằng công nghệ in Offset 4 màu, cắt thành phẩm.</p>\n<p>Chất liệu: Ford 70 - 100gsm.</p>\n<p> </p>', '', '<p>Liên hệ VHP</p>', '', 'td002', '', '', '', 0, 42, '', 0, 0, '', '', '', '', 1, 201),
(809, 'TD003', '', '2012-05-09 08:44:18', 'td003-thumb.jpg', 'td003.jpg', 'td003-desc-1.jpg', '<p>Kích thước thành phẩm : A4 (21 x 29cm) hoặc theo kích thước mẫu của khách hàng.</p>\n<p>Qui cách: In 1 mặt bằng công nghệ in Offset 4 màu, cắt thành phẩm.</p>\n<p>Chất liệu: Ford 70 - 100gsm.</p>', '', '<p>Liên hệ VHP</p>', '', 'td003', '', '', '', 0, 41, '', 0, 0, '', '', '', '', 1, 201),
(810, 'TD004', '', '2012-05-09 08:47:26', 'td004-thumb.jpg', 'td004.jpg', 'td004-desc-1.jpg', '<p>Kích thước thành phẩm : A4 (21 x 29cm) hoặc theo kích thước mẫu của khách hàng.</p>\n<p>Qui cách: In 1 mặt bằng công nghệ in Offset 4 màu, cắt thành phẩm.</p>\n<p>Chất liệu: Ford 70 - 100gsm.</p>', '', '<p>Liên hệ VHP</p>', '', 'td004', '', '', '', 0, 25, '', 0, 0, '', '', '', '', 1, 201),
(811, 'BT001', '', '2012-05-09 08:52:52', 'bt001-thumb.jpg', 'bt001.jpg', 'bt001-desc-1.jpg', '<p>Kích thước thành phẩm :Nhỏ (12 x 22cm), Trung (15 x 25cm), Lớn (25 x 35cm)</p>\n<p>Kích thước thành phẩm có thể theo yêu cầu của quý khách hàng.</p>\n<p>Qui cách: In Offset 2 màu / 4 màu, cắt bế và gia công thành phẩm(tất cả được dán bằng máy dán tự động)Gia công: Có dán keo nắp hoặc không dán keo nắp.</p>\n<p>Chất liệu: Ford 70 - 180gsm.</p>\n<p> </p>', '', '<p>Liên hệ VHP</p>', '', 'bt001', '', '', '', 0, 27, '', 0, 0, '', '', '', '', 1, 202),
(812, 'BT002', '', '2012-05-09 08:54:49', 'bt002-thumb.jpg', 'bt002.jpg', 'bt002-desc-1.jpg', '<p style="text-align:justify;">Kích thước thành phẩm :Nhỏ (12 x 22cm), Trung (15 x 25cm), Lớn (25 x 35cm)</p>\n<p style="text-align:justify;">Kích thước thành phẩm có thể theo yêu cầu của quý khách hàng.</p>\n<p style="text-align:justify;">Qui cách: In Offset 2 màu / 4 màu, cắt bế và gia công thành phẩm(tất cả được dán bằng máy dán tự động)Gia công: Có dán keo nắp hoặc không dán keo nắp.</p>\n<p style="text-align:justify;">Chất liệu: Ford 70 - 180gsm.</p>', '', '<p>Liên hệ VHP</p>', '', 'bt002', '', '', '', 0, 33, '', 0, 0, '', '', '', '', 1, 202),
(813, 'BT003', '', '2012-05-09 08:57:42', 'bt003-thumb.jpg', 'bt003.jpg', 'bt003-desc-1.jpg|bt003-desc-2.jpg', '<p style="text-align:justify;">Kích thước thành phẩm :Nhỏ (12 x 22cm), Trung (15 x 25cm), Lớn (25 x 35cm)</p>\n<p style="text-align:justify;">Kích thước thành phẩm có thể theo yêu cầu của quý khách hàng.</p>\n<p style="text-align:justify;">Qui cách: In Offset 2 màu / 4 màu, cắt bế và gia công thành phẩm(tất cả được dán bằng máy dán tự động)Gia công: Có dán keo nắp hoặc không dán keo nắp.</p>\n<p style="text-align:justify;">Chất liệu: Ford 70 - 180gsm.</p>', '', '<p>Liên hệ VHP</p>', '', 'bt003', '', '', '', 0, 34, '', 0, 0, '', '', '', '', 1, 202),
(814, 'BT004', '', '2012-05-09 08:59:16', 'bt004-thumb.jpg', 'bt004.jpg', 'bt004-desc-1.jpg', '<p>Kích thước thành phẩm :Nhỏ (12 x 22cm), Trung (15 x 25cm), Lớn (25 x 35cm)</p>\n<p>Kích thước thành phẩm có thể theo yêu cầu của quý khách hàng.</p>\n<p>Qui cách: In Offset 2 màu / 4 màu, cắt bế và gia công thành phẩm(tất cả được dán bằng máy dán tự động)Gia công: Có dán keo nắp hoặc không dán keo nắp.</p>\n<p>Chất liệu: Ford 70 - 180gsm.</p>', '', '<p>Liên hệ VHP</p>', '', 'bt004', '', '', '', 0, 28, '', 0, 0, '', '', '', '', 1, 202),
(815, 'FD001', '', '2012-05-09 09:03:27', 'fd001-thumb.jpg', 'fd001.jpg', '', '<p>Kích thước thành phẩm : thường là kích thước 31 x 22cm, tai gấp 7cm.</p>\n<p>Qui cách: In 02 mặt bằng công nghệ in Offset 4 màu, cấn cắt, gia công thành phẩm, cán màng mờ.</p>\n<p>Chất liệu: Giấy Couche, Bristol 250gsm trở lên, hoặc giấy khác tùy theo yêu cầu của quý khách.</p>\n<p> </p>', '', '<p>Liên hệ VHP</p>', '', 'fd001', '', '', '', 0, 30, '', 0, 0, '', '', '', '', 1, 206),
(816, 'FD002', '', '2012-05-09 09:05:48', 'fd002-thumb.jpg', 'fd002.jpg', 'fd002-desc-1.jpg', '<p>Kích thước thành phẩm : thường là kích thước 31 x 22cm, tai gấp 7cm.</p>\n<p>Qui cách: In 02 mặt bằng công nghệ in Offset 4 màu, cấn cắt, gia công thành phẩm, cán màng mờ.</p>\n<p>Chất liệu: Giấy Couche, Bristol 250gsm trở lên, hoặc giấy khác tùy theo yêu cầu của quý khách.</p>', '', '<p>Liên hệ VHP</p>', '', 'fd002', '', '', '', 0, 57, '', 0, 0, '', '', '', '', 1, 206),
(817, 'FD003', '', '2012-05-09 09:07:24', 'fd003-thumb.jpg', 'fd003.jpg', '', '<p>Kích thước thành phẩm : thường là kích thước 31 x 22cm, tai gấp 7cm.</p>\n<p>Qui cách: In 02 mặt bằng công nghệ in Offset 4 màu, cấn cắt, gia công thành phẩm, cán màng mờ.</p>\n<p>Chất liệu: Giấy Couche, Bristol 250gsm trở lên, hoặc giấy khác tùy theo yêu cầu của quý khách.</p>', '', '<p>Liên hệ VHP</p>', '', 'fd003', '', '', '', 0, 58, '', 0, 0, '', '', '', '', 1, 206),
(818, 'FD004', '', '2012-05-09 09:08:24', 'fd004-thumb.jpg', 'fd004.jpg', '', '<p>Kích thước thành phẩm : thường là kích thước 31 x 22cm, tai gấp 7cm.</p>\n<p>Qui cách: In 02 mặt bằng công nghệ in Offset 4 màu, cấn cắt, gia công thành phẩm, cán màng mờ.</p>\n<p>Chất liệu: Giấy Couche, Bristol 250gsm trở lên, hoặc giấy khác tùy theo yêu cầu của quý khách.</p>', '', '<p>Liên hệ VHP</p>', '', 'fd004', '', '', '', 0, 32, '', 0, 0, '', '', '', '', 1, 206),
(819, 'FD005', '', '2012-05-09 09:08:56', 'fd005-thumb.jpg', 'fd005.jpg', '', '<p>Kích thước thành phẩm : thường là kích thước 31 x 22cm, tai gấp 7cm.</p>\n<p>Qui cách: In 02 mặt bằng công nghệ in Offset 4 màu, cấn cắt, gia công thành phẩm, cán màng mờ.</p>\n<p>Chất liệu: Giấy Couche, Bristol 250gsm trở lên, hoặc giấy khác tùy theo yêu cầu của quý khách.</p>', '', '<p>Liên hệ VHP</p>', '', 'fd005', '', '', '', 0, 31, '', 0, 0, '', '', '', '', 1, 206),
(820, 'FD006', '', '2012-05-09 09:09:25', 'fd006-thumb.jpg', 'fd006.jpg', '', '<p>Kích thước thành phẩm : thường là kích thước 31 x 22cm, tai gấp 7cm.</p>\n<p>Qui cách: In 02 mặt bằng công nghệ in Offset 4 màu, cấn cắt, gia công thành phẩm, cán màng mờ.</p>\n<p>Chất liệu: Giấy Couche, Bristol 250gsm trở lên, hoặc giấy khác tùy theo yêu cầu của quý khách.</p>', '', '<p>Liên hệ VHP</p>', '', 'fd006', '', '', '', 0, 59, '', 0, 0, '', '', '', '', 1, 206),
(821, 'FD007', '', '2012-05-09 09:10:13', 'fd007-thumb.jpg', 'fd007.jpg', '', '<p>Kích thước thành phẩm : thường là kích thước 31 x 22cm, tai gấp 7cm.</p>\n<p>Qui cách: In 02 mặt bằng công nghệ in Offset 4 màu, cấn cắt, gia công thành phẩm, cán màng mờ.</p>\n<p>Chất liệu: Giấy Couche, Bristol 250gsm trở lên, hoặc giấy khác tùy theo yêu cầu của quý khách.</p>', '', '<p>Liên hệ VHP</p>', '', 'fd007', '', '', '', 0, 60, '', 0, 0, '', '', '', '', 1, 206),
(822, 'FD008', '', '2012-05-09 09:10:50', 'fd008-thumb.jpg', 'fd008.jpg', '', '<p>Kích thước thành phẩm : thường là kích thước 31 x 22cm, tai gấp 7cm.</p>\n<p>Qui cách: In 02 mặt bằng công nghệ in Offset 4 màu, cấn cắt, gia công thành phẩm, cán màng mờ.</p>\n<p>Chất liệu: Giấy Couche, Bristol 250gsm trở lên, hoặc giấy khác tùy theo yêu cầu của quý khách.</p>', '', '<p>Liên hệ VHP</p>', '', 'fd008', '', '', '', 0, 29, '', 0, 0, '', '', '', '', 1, 206),
(823, 'CTL001', '', '2012-05-09 09:14:33', 'ctl001-thumb.jpg', 'ctl001.jpg', '', '<p>Kích thước thành phẩm : theo yêu cầu của khách hàng.</p>\n<p>Qui cách: In 02 mặt bằng công nghệ in Offset 4 màu, cấn cắt, gia công thành phẩm, cán màng mờ.</p>\n<p>Chất liệu: Giấy Couche hoặc Ford.</p>\n<p> </p>', '', '<p>Liên hệ VHP</p>', '', 'ctl001', '', '', '', 0, 61, '', 0, 0, '', '', '', '', 1, 207),
(824, 'CTL002', '', '2012-05-09 09:15:14', 'ctl002-thumb.jpg', 'ctl002.jpg', '', '<p> </p>\n<p>Kích thước thành phẩm : theo yêu cầu của khách hàng.</p>\n<p>Qui cách: In 02 mặt bằng công nghệ in Offset 4 màu, cấn cắt, gia công thành phẩm, cán màng mờ.</p>\n<p>Chất liệu: Giấy Couche hoặc Ford.</p>', '', '<p>Liên hệ VHP</p>', '', 'ctl002', '', '', '', 0, 62, '', 0, 0, '', '', '', '', 1, 207),
(825, 'CTL003', '', '2012-05-09 09:16:00', 'ctl003-thumb.jpg', 'ctl003.jpg', '', '<p> </p>\n<p>Kích thước thành phẩm : theo yêu cầu của khách hàng.</p>\n<p>Qui cách: In 02 mặt bằng công nghệ in Offset 4 màu, cấn cắt, gia công thành phẩm, cán màng mờ.</p>\n<p>Chất liệu: Giấy Couche hoặc Ford.</p>', '', '<p>Liên hệ VHP</p>', '', 'ctl003', '', '', '', 0, 63, '', 0, 0, '', '', '', '', 1, 207),
(826, 'CTL004', '', '2012-05-09 09:16:34', 'ctl004-thumb.jpg', 'ctl004.jpg', '', '<p> </p>\n<p>Kích thước thành phẩm : theo yêu cầu của khách hàng.</p>\n<p>Qui cách: In 02 mặt bằng công nghệ in Offset 4 màu, cấn cắt, gia công thành phẩm, cán màng mờ.</p>\n<p>Chất liệu: Giấy Couche hoặc Ford.</p>', '', '<p>Liên hệ VHP</p>', '', 'ctl004', '', '', '', 0, 64, '', 0, 0, '', '', '', '', 1, 207),
(827, 'CTL005', '', '2012-05-09 09:17:11', 'ctl005-thumb.jpg', 'ctl005.jpg', '', '<p> </p>\n<p>Kích thước thành phẩm : theo yêu cầu của khách hàng.</p>\n<p>Qui cách: In 02 mặt bằng công nghệ in Offset 4 màu, cấn cắt, gia công thành phẩm, cán màng mờ.</p>\n<p>Chất liệu: Giấy Couche hoặc Ford.</p>', '', '<p>Liên hệ VHP</p>', '', 'ctl005', '', '', '', 0, 12, '', 0, 0, '', '', '', '', 1, 207),
(828, 'CTL006', '', '2012-05-09 09:17:45', 'ctl006-thumb.jpg', 'ctl006.jpg', '', '<p> </p>\n<p>Kích thước thành phẩm : theo yêu cầu của khách hàng.</p>\n<p>Qui cách: In 02 mặt bằng công nghệ in Offset 4 màu, cấn cắt, gia công thành phẩm, cán màng mờ.</p>\n<p>Chất liệu: Giấy Couche hoặc Ford.</p>', '', '<p>Liên hệ VHP</p>', '', 'ctl006', '', '', '', 0, 13, '', 0, 0, '', '', '', '', 1, 207),
(829, 'CTL007', '', '2012-05-09 09:18:19', 'ctl007-thumb.jpg', 'ctl007.jpg', '', '<p> </p>\n<p>Kích thước thành phẩm : theo yêu cầu của khách hàng.</p>\n<p>Qui cách: In 02 mặt bằng công nghệ in Offset 4 màu, cấn cắt, gia công thành phẩm, cán màng mờ.</p>\n<p>Chất liệu: Giấy Couche hoặc Ford.</p>', '', '<p>Liên hệ VHP</p>', '', 'ctl007', '', '', '', 0, 11, '', 0, 0, '', '', '', '', 1, 207),
(830, 'CTL008', '', '2012-05-09 09:18:46', 'ctl008-thumb.jpg', 'ctl008.jpg', '', '<p> </p>\n<p>Kích thước thành phẩm : theo yêu cầu của khách hàng.</p>\n<p>Qui cách: In 02 mặt bằng công nghệ in Offset 4 màu, cấn cắt, gia công thành phẩm, cán màng mờ.</p>\n<p>Chất liệu: Giấy Couche hoặc Ford.</p>', '', '<p>Liên hệ VHP</p>', '', 'ctl008', '', '', '', 0, 14, '', 0, 0, '', '', '', '', 1, 207),
(1000, 'TR001', '', '2012-05-14 06:42:06', 'tr001-thumb.jpg', 'tr001.jpg', '', '<p>Bạn có thể in đầy đủ màu sắc trên một mặt hoặc cả hai</p>\n<p>• Chất liệu bạn có thể chọn là giấy Couches, Offset hoặc Conqueror</p>\n<p>• Định lượng giấy từ 80gr - 150 gr</p>\n<p>• Số lượng tối thiểu: 1.000</p>\n<p>• Thời gian giao hàng &lt; 5 ngày</p>\n<p>• Nhiều phương pháp gia công, bế gấp phong phú để bạn lựa chọn</p>', '', '<p>Liên hệ VHP</p>', '', 'tr001', '', '', '', 0, 3, '', 0, 0, '', '', '', '', 1, 204),
(1001, 'TR002', '', '2012-05-14 06:43:24', 'tr002-thumb.jpg', 'tr002.jpg', '', '<p>Bạn có thể in đầy đủ màu sắc trên một mặt hoặc cả hai</p>\n<p>• Chất liệu bạn có thể chọn là giấy Couches, Offset hoặc Conqueror</p>\n<p>• Định lượng giấy từ 80gr - 150 gr</p>\n<p>• Số lượng tối thiểu: 1.000</p>\n<p>• Thời gian giao hàng &lt; 5 ngày</p>\n<p>• Nhiều phương pháp gia công, bế gấp phong phú để bạn lựa chọn</p>', '', '<p>Liên hệ VHP</p>', '', 'tr002', '', '', '', 0, 2, '', 0, 0, '', '', '', '', 1, 204),
(1002, 'TR003', '', '2012-05-14 06:44:10', 'tr003-thumb.jpg', 'tr003.jpg', '', '<p>Bạn có thể in đầy đủ màu sắc trên một mặt hoặc cả hai</p>\n<p>• Chất liệu bạn có thể chọn là giấy Couches, Offset hoặc Conqueror</p>\n<p>• Định lượng giấy từ 80gr - 150 gr</p>\n<p>• Số lượng tối thiểu: 1.000</p>\n<p>• Thời gian giao hàng &lt; 5 ngày</p>\n<p>• Nhiều phương pháp gia công, bế gấp phong phú để bạn lựa chọn</p>', '', '<p>Liên hệ VHP</p>', '', 'tr003', '', '', '', 0, 1, '', 0, 0, '', '', '', '', 1, 204),
(1003, 'TR004', '', '2012-05-14 06:45:55', 'tr004-thumb.jpg', 'tr004.jpg', '', '<p> </p>\n<p>Bạn có thể in đầy đủ màu sắc trên một mặt hoặc cả hai</p>\n<p>• Chất liệu bạn có thể chọn là giấy Couches, Offset hoặc Conqueror</p>\n<p>• Định lượng giấy từ 80gr - 150 gr</p>\n<p>• Số lượng tối thiểu: 1.000</p>\n<p>• Thời gian giao hàng &lt; 5 ngày</p>\n<p>• Nhiều phương pháp gia công, bế gấp phong phú để bạn lựa chọn</p>', '', '<p>Liên hệ VHP</p>', '', 'tr004', '', '', '', 0, 8, '', 0, 0, '', '', '', '', 1, 204),
(1004, 'TR005', '', '2012-05-14 06:46:59', 'tr005-thumb.jpg', 'tr005.jpg', '', '<p> </p>\n<p>Bạn có thể in đầy đủ màu sắc trên một mặt hoặc cả hai</p>\n<p>• Chất liệu bạn có thể chọn là giấy Couches, Offset hoặc Conqueror</p>\n<p>• Định lượng giấy từ 80gr - 150 gr</p>\n<p>• Số lượng tối thiểu: 1.000</p>\n<p>• Thời gian giao hàng &lt; 5 ngày</p>\n<p>• Nhiều phương pháp gia công, bế gấp phong phú để bạn lựa chọn</p>', '', '<p>Liên hệ VHP</p>', '', 'tr005', '', '', '', 0, 7, '', 0, 0, '', '', '', '', 1, 204),
(1005, 'TR006', '', '2012-05-14 06:48:58', 'tr006-thumb.jpg', 'tr006.jpg', '', '<p> </p>\n<p>Bạn có thể in đầy đủ màu sắc trên một mặt hoặc cả hai</p>\n<p>• Chất liệu bạn có thể chọn là giấy Couches, Offset hoặc Conqueror</p>\n<p>• Định lượng giấy từ 80gr - 150 gr</p>\n<p>• Số lượng tối thiểu: 1.000</p>\n<p>• Thời gian giao hàng &lt; 5 ngày</p>\n<p>• Nhiều phương pháp gia công, bế gấp phong phú để bạn lựa chọn</p>', '', '<p>Liên hệ VHP</p>', '', 'tr006', '', '', '', 0, 4, '', 0, 0, '', '', '', '', 1, 204),
(1006, 'TR007', '', '2012-05-14 06:51:44', 'tr007-thumb.jpg', 'tr007.jpg', '', '<p> </p>\n<p>Bạn có thể in đầy đủ màu sắc trên một mặt hoặc cả hai</p>\n<p>• Chất liệu bạn có thể chọn là giấy Couches, Offset hoặc Conqueror</p>\n<p>• Định lượng giấy từ 80gr - 150 gr</p>\n<p>• Số lượng tối thiểu: 1.000</p>\n<p>• Thời gian giao hàng &lt; 5 ngày</p>\n<p>• Nhiều phương pháp gia công, bế gấp phong phú để bạn lựa chọn</p>', '', '<p>Liên hệ VHP</p>', '', 'tr007', '', '', '', 0, 6, '', 0, 0, '', '', '', '', 1, 204),
(1007, 'TR008', '', '2012-05-14 06:52:32', 'tr008-thumb.jpg', 'tr008.jpg', '', '<p> </p>\n<p>Bạn có thể in đầy đủ màu sắc trên một mặt hoặc cả hai</p>\n<p>• Chất liệu bạn có thể chọn là giấy Couches, Offset hoặc Conqueror</p>\n<p>• Định lượng giấy từ 80gr - 150 gr</p>\n<p>• Số lượng tối thiểu: 1.000</p>\n<p>• Thời gian giao hàng &lt; 5 ngày</p>\n<p>• Nhiều phương pháp gia công, bế gấp phong phú để bạn lựa chọn</p>', '', '<p>Liên hệ VHP</p>', '', 'tr008', '', '', '', 0, 5, '', 0, 0, '', '', '', '', 1, 204),
(1008, 'PT001', '', '2012-05-14 07:03:49', 'pt001-thumb.jpg', 'pt001.jpg', '', '<p> </p>\n<p>• Chất liệu bạn có thể chọn là giấy Couches, Offset hoặc Conqueror</p>\n<p>• Số lượng tối thiểu: 1.000</p>\n<p>• Thời gian giao hàng &lt; 7 ngày</p>\n<p>• Nhiều phương pháp gia công, bế gấp phong phú để bạn lựa chọn</p>', '', '<p>Liên hệ VHP</p>', '', 'pt001', '', '', '', 0, 54, '', 0, 0, '', '', '', '', 1, 205),
(1009, 'PT002', '', '2012-05-14 07:04:46', 'pt002-thumb.jpg', 'pt002.jpg', '', '<p> </p>\n<p>• Chất liệu bạn có thể chọn là giấy Couches, Offset hoặc Conqueror</p>\n<p>• Số lượng tối thiểu: 1.000</p>\n<p>• Thời gian giao hàng &lt; 7 ngày</p>\n<p>• Nhiều phương pháp gia công, bế gấp phong phú để bạn lựa chọn</p>', '', '<p>Liên hệ VHP</p>', '', 'pt002', '', '', '', 0, 15, '', 0, 0, '', '', '', '', 1, 205),
(1010, 'PT003', '', '2012-05-14 07:05:54', 'pt003-thumb.jpg', 'pt003.jpg', '', '<p style="text-align:justify;"> </p>\n<p style="text-align:justify;">• Chất liệu bạn có thể chọn là giấy Couches, Offset hoặc Conqueror</p>\n<p style="text-align:justify;">• Số lượng tối thiểu: 1.000</p>\n<p style="text-align:justify;">• Thời gian giao hàng &lt; 7 ngày</p>\n<p style="text-align:justify;">• Nhiều phương pháp gia công, bế gấp phong phú để bạn lựa chọn</p>', '', '<p>Liên hệ VHP</p>', '', 'pt003', '', '', '', 0, 17, '', 0, 0, '', '', '', '', 1, 205),
(1011, 'PT004', '', '2012-05-14 07:07:03', 'pt004-thumb.jpg', 'pt004.jpg', '', '<p> </p>\n<p>• Chất liệu bạn có thể chọn là giấy Couches, Offset hoặc Conqueror</p>\n<p>• Số lượng tối thiểu: 1.000</p>\n<p>• Thời gian giao hàng &lt; 7 ngày</p>\n<p>• Nhiều phương pháp gia công, bế gấp phong phú để bạn lựa chọn</p>', '', '<p>Liên hệ VHP</p>', '', 'pt004', '', '', '', 0, 16, '', 0, 0, '', '', '', '', 1, 205),
(1012, 'PT005', '', '2012-05-14 07:09:16', 'pt005-thumb.jpg', 'pt005.jpg', '', '<p> </p>\n<p>• Chất liệu bạn có thể chọn là giấy Couches, Offset hoặc Conqueror</p>\n<p>• Số lượng tối thiểu: 1.000</p>\n<p>• Thời gian giao hàng &lt; 7 ngày</p>\n<p>• Nhiều phương pháp gia công, bế gấp phong phú để bạn lựa chọn</p>', '', '<p>Liên hệ VHP</p>', '', 'pt005', '', '', '', 0, 53, '', 0, 0, '', '', '', '', 1, 205),
(1013, 'PT006', '', '2012-05-14 07:10:11', 'pt006-thumb.jpg', 'pt006.jpg', '', '<p> </p>\n<p>• Chất liệu bạn có thể chọn là giấy Couches, Offset hoặc Conqueror</p>\n<p>• Số lượng tối thiểu: 1.000</p>\n<p>• Thời gian giao hàng &lt; 7 ngày</p>\n<p>• Nhiều phương pháp gia công, bế gấp phong phú để bạn lựa chọn</p>', '', '<p>Liên hệ VHP</p>', '', 'pt006', '', '', '', 0, 56, '', 0, 0, '', '', '', '', 1, 205),
(1014, 'PT007', '', '2012-05-14 07:11:52', 'pt007-thumb.jpg', 'pt007.jpg', '', '<p> </p>\n<p>• Chất liệu bạn có thể chọn là giấy Couches, Offset hoặc Conqueror</p>\n<p>• Số lượng tối thiểu: 1.000</p>\n<p>• Thời gian giao hàng &lt; 7 ngày</p>\n<p>• Nhiều phương pháp gia công, bế gấp phong phú để bạn lựa chọn</p>', '', '<p>Liên hệ VHP</p>', '', 'pt007', '', '', '', 0, 18, '', 0, 0, '', '', '', '', 1, 205),
(1015, 'PT008', '', '2012-05-14 07:12:56', 'pt008-thumb.jpg', 'pt008.jpg', '', '<p> </p>\n<p>• Chất liệu bạn có thể chọn là giấy Couches, Offset hoặc Conqueror</p>\n<p>• Số lượng tối thiểu: 1.000</p>\n<p>• Thời gian giao hàng &lt; 7 ngày</p>\n<p>• Nhiều phương pháp gia công, bế gấp phong phú để bạn lựa chọn</p>', '', '<p>Liên hệ VHP</p>', '', 'pt008', '', '', '', 0, 55, '', 0, 0, '', '', '', '', 1, 205),
(1016, 'NM001', '', '2012-05-14 07:19:01', 'nm001-thumb.jpg', 'nm001.jpg', '', '<p> </p>\n<p>- In tem nhãn, mác sản phẩm trên mọi chất liệu như:</p>\n<p>- Tem decal</p>\n<p>- Tem chống giả</p>\n<p>- Tem in trên giấy bền ẩm (tem beer, nước ngọt...)</p>\n<p>- Đảm bảo chất lượng, giá thành hợp lý.</p>', '', '<p>Liên hệ VHP</p>', '', 'nm001', '', '', '', 0, 9, '', 0, 0, '', '', '', '', 1, 210),
(1017, 'NM003', '', '2012-05-14 07:19:55', 'nm002-thumb.jpg', 'nm002.jpg', '', '<p> </p>\n<p>- In tem nhãn, mác sản phẩm trên mọi chất liệu như:</p>\n<p>- Tem decal</p>\n<p>- Tem chống giả</p>\n<p>- Tem in trên giấy bền ẩm (tem beer, nước ngọt...)</p>\n<p>- Đảm bảo chất lượng, giá thành hợp lý.</p>', '', '<p>Liên hệ VHP</p>', '', 'nm003', '', '', '', 0, 10, '', 0, 0, '', '', '', '', 1, 210),
(1018, 'NM002', '', '2012-05-14 07:20:49', 'nm003-thumb.jpg', 'nm003.jpg', '', '<p> </p>\n<p>- In tem nhãn, mác sản phẩm trên mọi chất liệu như:</p>\n<p>- Tem decal</p>\n<p>- Tem chống giả</p>\n<p>- Tem in trên giấy bền ẩm (tem beer, nước ngọt...)</p>\n<p>- Đảm bảo chất lượng, giá thành hợp lý.</p>', '', '<p>Liên hệ VHP</p>', '', 'nm002', '', '', '', 0, 43, '', 0, 0, '', '', '', '', 1, 210),
(1019, 'NM004', '', '2012-05-14 07:21:52', 'nm004-thumb.jpg', 'nm004.jpg', '', '<p> </p>\n<p>- In tem nhãn, mác sản phẩm trên mọi chất liệu như:</p>\n<p>- Tem decal</p>\n<p>- Tem chống giả</p>\n<p>- Tem in trên giấy bền ẩm (tem beer, nước ngọt...)</p>\n<p>- Đảm bảo chất lượng, giá thành hợp lý.</p>', '', '<p>Liên hệ VHP</p>', '', 'nm004', '', '', '', 0, 44, '', 0, 0, '', '', '', '', 1, 210),
(1020, 'BB001', '', '2012-05-14 07:27:43', 'bb001-thumb.jpg', 'bb001.jpg', '', '<p>- In ấn và gia công bao bì trên mọi chất liệu như:</p>\n<p>- Bao bì giấy</p>\n<p>- Bao bì nhựa</p>\n<p>- Bao bì carton...</p>\n<p>- Đảm bảo chất lượng cao, giá thành hợp lý.</p>', '', '<p>Liên hệ VHP</p>', '', 'bb001', '', '', '', 0, 48, '', 0, 0, '', '', '', '', 1, 208),
(1021, 'BB002', '', '2012-05-14 07:28:56', 'bb002-thumb.jpg', 'bb002.jpg', '', '<p>- In ấn và gia công bao bì trên mọi chất liệu như:</p>\n<p>- Bao bì giấy</p>\n<p>- Bao bì nhựa</p>\n<p>- Bao bì carton...</p>\n<p>- Đảm bảo chất lượng cao, giá thành hợp lý.</p>', '', '<p>Liên hệ VHP</p>', '', 'bb002', '', '', '', 0, 47, '', 0, 0, '', '', '', '', 1, 208),
(1022, 'BB003', '', '2012-05-14 07:29:39', 'bb003-thumb.jpg', 'bb003.jpg', '', '<p>- In ấn và gia công bao bì trên mọi chất liệu như:</p>\n<p>- Bao bì giấy</p>\n<p>- Bao bì nhựa</p>\n<p>- Bao bì carton...</p>\n<p>- Đảm bảo chất lượng cao, giá thành hợp lý.</p>', '', '<p>Liên hệ VHP</p>', '', 'bb003', '', '', '', 0, 45, '', 0, 0, '', '', '', '', 1, 208),
(1023, 'BB004', '', '2012-05-14 07:30:30', 'bb004-thumb.jpg', 'bb004.jpg', '', '<p>- In ấn và gia công bao bì trên mọi chất liệu như:</p>\n<p>- Bao bì giấy</p>\n<p>- Bao bì nhựa</p>\n<p>- Bao bì carton...</p>\n<p>- Đảm bảo chất lượng cao, giá thành hợp lý.</p>', '', '<p>Liên hệ VHP</p>', '', 'bb004', '', '', '', 0, 46, '', 0, 0, '', '', '', '', 1, 208),
(1024, 'TG001', '', '2012-05-14 07:32:58', 'tg001-thumb.jpg', 'tg001.jpg', '', '<p>- In, gia công túi đựng sản phẩm trên mọi chất liệu như:</p>\n<p>- Túi giấy</p>\n<p>- Túi nilong...</p>\n<p>- Đảm bảo chất lượng, giá thành hợp lý</p>', '', '<p>Liên hệ VHP</p>', '', 'tg001', '', '', '', 0, 51, '', 0, 0, '', '', '', '', 1, 209),
(1025, 'TG002', '', '2012-05-14 07:34:15', 'tg002-thumb.jpg', 'tg002.jpg', '', '<p>- In, gia công túi đựng sản phẩm trên mọi chất liệu như:</p>\n<p>- Túi giấy</p>\n<p>- Túi nilong...</p>\n<p>- Đảm bảo chất lượng, giá thành hợp lý</p>', '', '<p>Liên hệ VHP</p>', '', 'tg002', '', '', '', 0, 51, '', 0, 0, '', '', '', '', 1, 209),
(1026, 'TG003', '', '2012-05-14 07:35:12', 'tg003-thumb.jpg', 'tg003.jpg', '', '<p>- In, gia công túi đựng sản phẩm trên mọi chất liệu như:</p>\n<p>- Túi giấy</p>\n<p>- Túi nilong...</p>\n<p>- Đảm bảo chất lượng, giá thành hợp lý</p>', '', '<p>Liên hệ VHP</p>', '', 'tg003', '', '', '', 0, 52, '', 0, 0, '', '', '', '', 1, 209),
(1027, 'TG004', '', '2012-05-14 07:36:01', 'tg004-thumb.jpg', 'tg004.jpg', '', '<p>- In, gia công túi đựng sản phẩm trên mọi chất liệu như:</p>\n<p>- Túi giấy</p>\n<p>- Túi nilong...</p>\n<p>- Đảm bảo chất lượng, giá thành hợp lý</p>', '', '<p>Liên hệ VHP</p>', '', 'tg004', '', '', '', 0, 49, '', 0, 0, '', '', '', '', 1, 209);

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
) ENGINE=InnoDB  DEFAULT CHARSET=utf8 AUTO_INCREMENT=212 ;

--
-- Dumping data for table `dos_module_products_cat`
--

INSERT INTO `dos_module_products_cat` (`cat_id`, `cat_parent_id`, `cat_title`, `cat_titleen`, `preview`, `previewen`, `tag`, `tagen`, `description`, `descriptionen`, `pic_full`, `pic_desc`, `cat_order`, `cat_extra1`, `cat_extra2`, `cat_enable`, `dos_usernames_username`) VALUES
(200, 0, 'Danh thiếp', '', '', '', 'danh-thiep', '', 'Danh thiếp', '', 'danh-thiep.jpg', '', 6, '', '', 1, 'vhp'),
(201, 0, 'Giấy tiêu đề', '', '', '', 'giay-tieu-de', '', 'Giấy tiêu đề', '', 'giay-tieu-de.jpeg', '', 7, '', '', 1, 'vhp'),
(202, 0, 'Bao thư', '', '', '', 'bao-thu', '', 'Bao thư', '', 'bao-thu.jpg', '', 7, '', '', 1, 'vhp'),
(203, 0, 'Nhãn đĩa CD', '', '', '', 'nhan-dia-cd', '', 'Nhãn đĩa CD', '', 'nhan-dia-cd.jpg', '', 4, '', '', 1, 'vhp'),
(204, 0, 'Tờ gấp/ Tờ rơi', '', '', '', 'to-gap-to-roi', '', 'Tờ gấp/ Tờ rơi', '', 'to-gap-to-roi.jpg', '', 7, '', '', 1, 'vhp'),
(205, 0, 'Poster', '', '', '', 'poster', '', 'Poster', '', 'poster.jpg', '', 4, '', '', 1, 'vhp'),
(206, 0, 'Folder', '', '', '', 'folder', '', 'Folder', '', 'folder.jpg', '', 7, '', '', 1, 'vhp'),
(207, 0, 'Catalogues', '', '', '', 'catalogues', '', 'Catalogues', '', 'catalogues.jpg', '', 5, '', '', 1, 'vhp'),
(208, 0, 'Bao bì/ Hộp', '', '', '', 'bao-bi-hop', '', 'Bao bì/ Hộp', '', 'bao-bi-hop.jpg', '', 7, '', '', 1, 'vhp'),
(209, 0, 'Túi giấy', '', '', '', 'tui-giay', '', 'Túi giấy', '', 'tui-giay.jpg', '', 3, '', '', 1, 'vhp'),
(210, 0, 'Nhãn sản phẩm', '', '', '', 'nhan-san-pham', '', 'Nhãn sản phẩm', '', 'nhan-san-pham.jpg', '', 4, '', '', 1, 'vhp'),
(211, 0, 'Bộ nhận dạng thương hiệu', '', '', '', 'bo-nhan-dang-thuong-hieu', '', 'Bộ nhận dạng thương hiệu', '', 'bo-nhan-dang-thuong-hieu.jpg', '', 9, '', '', 1, 'vhp');

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
) ENGINE=InnoDB  DEFAULT CHARSET=utf8 AUTO_INCREMENT=327 ;

--
-- Dumping data for table `dos_module_supports`
--

INSERT INTO `dos_module_supports` (`support_id`, `support_name`, `support_nameen`, `support_phone`, `support_value`, `support_order`, `support_type`, `dos_usernames_username`) VALUES
(325, 'Hỗ trợ Khách hàng 1', '', '', 'maioanh7887', 0, 'yahoo', 'vhp'),
(326, 'Hỗ trợ Khách hàng 2', '', '', 'maioanh7887', 0, 'yahoo', 'vhp');

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
('keywords', 'in ấn trên mọi chất liệu, in ấn, quảng cáo, in kỹ thuật số, in card, in ấn ', 'vhp'),
('description', 'CÔNG TY TNHH MTV VIỆT HỒNG PHÁT -In kỹ thuật số khổ lớn, in card, quảng cáo, hộp đèn,pano, in ấn, quảng cáo, in kỹ thuật số, in card,', 'vhp'),
('title', 'Việt Hồng Phát - vhp.vn', 'vhp');

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
('020512', 'Mẫu hoa tươi: 020512', '2012-05-02 02:10:52', 'Chuyên cung cấp hoa tuoi, hoa cuoi, điện hoa, hoa tuoi van phong, hoa khai trương, hoa chúc mừng, hoa xe, hoa online, hoa chia buồn');

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
('vhp', 'info@vhp.vn', 'e10adc3949ba59abbe56e057f20f883e', '2012-05-08 00:40:43', 'Mai Kim Oanh', '0618822 747', '', 'user', 'vi', '', '2012-09-29 16:00:00', 1, '20122012', '', 1, '020512', 19, 'tranh-anh-qua-luu-niem');

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
('company_name', 'CÔNG TY TNHH VIỆT HỒNG PHÁT', '', 'vhp'),
('company_name_footer', 'CÔNG TY TNHH VIỆT HỒNG PHÁT', '', 'vhp'),
('company_phone', 'Hotline: 0987 522 003', '', 'vhp');

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
