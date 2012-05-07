-- phpMyAdmin SQL Dump
-- version 3.4.5
-- http://www.phpmyadmin.net
--
-- Host: localhost
-- Generation Time: May 07, 2012 at 04:05 AM
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
('about', 'luoibaoche'),
('advs', 'luoibaoche'),
('banner', 'luoibaoche'),
('contact', 'luoibaoche'),
('news', 'luoibaoche'),
('products', 'luoibaoche'),
('services', 'luoibaoche'),
('supports', 'luoibaoche');

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
) ENGINE=InnoDB  DEFAULT CHARSET=utf8 AUTO_INCREMENT=94 ;

--
-- Dumping data for table `dos_module_abouts`
--

INSERT INTO `dos_module_abouts` (`record_id`, `title`, `titleen`, `content`, `contenten`, `hit`, `created`, `record_order`, `hot`, `extra_field1`, `extra_field2`, `tag`, `tagen`, `description`, `descriptionen`, `activated`, `dos_usernames_username`) VALUES
(93, 'Giới thiệu về công ty', '', '<p style="text-align:justify;"><span style="color:#008000;"><strong>Công Ty TNHH TM DV XD Thái Hàn</strong></span> chuyên Sản Xuất và nhập khẩu một số mặt hàng như:</p>\n<p style="text-align:justify;"><strong>&gt;&gt; Lưới xây dựng: lưới an toàn, lưới chống rơi, , lưới bao che công trình, lưới bảo hiểm, lưới bảo hộ lao động.</strong></p>\n<p style="text-align:justify;"><strong>&gt;&gt; Lưới thể thao: lưới bao sân bóng đá, sân bóng chày, bóng chuyền, lưới sân tennis, lưới bóng rổ. Đặc biệt là lưới bao sân tập golf và các loại lưới khác dùng trong thể thao.</strong></p>\n<p style="text-align:justify;"><strong>&gt;&gt; Lưới nông nghiệp và thủy sản: gồm lưới che chắn côn trùng, lưới che nắng và ươm cây, lưới rào, lưới phơi nông sản, lưới nhà kính, lưới đỡ hoa, lưới giàn leo</strong></p>\n<p style="text-align:justify;"><strong>&gt;&gt; Lưới nhựa: lưới bảo vệ, lưới phủ nhựa, lưới nhựa ép, lưới lọc</strong></p>\n<p style="text-align:justify;"><strong>&gt;&gt; Các loại dây nhựa: dây dơn, dây cào, dây ly và dây làm theo mẫu.</strong></p>\n<p style="text-align:justify;">&gt;&gt; Sản Phẩm của chúng tôi được Sản xuất dựa trên công nghệ Hàn Quốc, nguyên liệu chủ yếu: Hạt nhựa cao cấp HDPE, PP, PA... và một số phụ gia khác! Với công nghệ hiện đại. Sản Phẩm của Thái Hàn đa dạng màu sắc, kích cỡ..., và sản xuất theo đúng yêu cầu của Khách Hàng</p>\n<p style="text-align:justify;">&gt;&gt; Với quy trình công nghệ sản xuất tiến tiến và đội ngũ kỹ thuật, chuyên gia nhiều kinh nghiệm, chúng tôi tự hào cung cấp cho bạn những sản phẩm với chất lượng và dịch vụ tốt nhất.</p>\n<p style="text-align:justify;"><strong><em> </em></strong></p>\n<p style="text-align:justify;"><strong><em>Thông tin chi tiết về Thái Hàn:</em></strong></p>\n<p style="text-align:left;"><strong><span style="color:#008000;">CÔNG TY TNHH TM DV XD THÁI HÀN</span></strong><br />Địa chỉ : 2/6 Phú Mỹ - P.22 – Q.Bình Thạnh – Tp.HCM<br />ĐT : (08)38.407.137 Fax: (08)3840.6223 DĐ: 0908.130.298 - 0902.305.966<br />Email: thaihan2303@gmail.com<br />Website: www.luoibaoche.com</p>\n<p> </p>', '', 78, '2012-05-04 09:21:47', 1, 0, '', '', 'gioi-thieu-ve-cong-ty', '', 'Lưới xây dựng, Lưới thể thao, Lưới nông nghiệp và thủy sản, Lưới nhựa', '', 1, 'luoibaoche');

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
) ENGINE=InnoDB  DEFAULT CHARSET=utf8 AUTO_INCREMENT=71 ;

--
-- Dumping data for table `dos_module_advs`
--

INSERT INTO `dos_module_advs` (`record_id`, `title`, `titleen`, `pic_thumb`, `url`, `create_date`, `start_date`, `end_date`, `hits`, `record_order`, `position`, `type`, `enable`, `dos_usernames_username`) VALUES
(69, 'Quảng cáo', '', 'quang-cao.jpg', 'http://luoibaoche.dos.vn/', '2012-05-04 10:22:58', '2012-05-03 17:00:00', '2012-06-29 17:00:00', 0, 1, 'top', '_bank', 1, 'luoibaoche'),
(70, 'Quảng cáo 1', '', 'quang-cao-1.jpeg', 'http://luoibaoche.dos.vn', '2012-05-04 10:34:49', '2012-05-03 17:00:00', '2012-06-29 17:00:00', 0, 2, 'top', '_bank', 1, 'luoibaoche');

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
) ENGINE=InnoDB  DEFAULT CHARSET=utf8 AUTO_INCREMENT=360 ;

--
-- Dumping data for table `dos_module_banners`
--

INSERT INTO `dos_module_banners` (`banner_id`, `banner_date`, `banner_name`, `banner_url`, `banner_link`, `banner_order`, `banner_type`, `position`, `enable`, `dos_usernames_username`) VALUES
(343, '2012-05-04 09:11:08', 'Logo', 'logo.jpg', '', 1, 'logo', 'default', 1, 'luoibaoche'),
(344, '2012-05-04 09:17:22', 'banner1', 'banner1.jpg', '', 2, 'banners', 'default', 1, 'luoibaoche'),
(345, '2012-05-04 10:02:41', 'Banner 2', 'banner-2.jpg', '', 5, 'banners', 'default', 1, 'luoibaoche'),
(346, '2012-05-04 10:05:57', 'Banner 3', 'banner-3.jpg', '', 4, 'banners', 'default', 1, 'luoibaoche'),
(347, '2012-05-04 10:06:18', 'Banner 4', 'banner-4.jpg', '', 3, 'banners', 'default', 1, 'luoibaoche'),
(349, '2012-05-04 13:30:02', 'Banner 6', 'banner-6.jpg', '', 6, 'banners', 'about', 1, 'luoibaoche'),
(350, '2012-05-04 13:30:22', 'Banner 5', 'banner-5.jpg', '', 7, 'banners', 'about', 1, 'luoibaoche'),
(351, '2012-05-04 13:30:47', 'Banner 7', 'banner-7.jpg', '', 8, 'banners', 'products', 1, 'luoibaoche'),
(352, '2012-05-04 13:31:18', 'Banner 8', 'banner-8.jpg', '', 9, 'banners', 'products', 1, 'luoibaoche'),
(353, '2012-05-04 13:31:37', 'Banner 9', 'banner-9.jpg', '', 10, 'banners', 'products', 1, 'luoibaoche'),
(354, '2012-05-04 13:31:58', 'Banner 10', 'banner-10.jpg', '', 11, 'banners', 'products', 1, 'luoibaoche'),
(355, '2012-05-04 13:34:49', 'Banner 11', 'banner-11.jpg', '', 12, 'banners', 'services', 1, 'luoibaoche'),
(356, '2012-05-04 13:35:10', 'Banner 12', 'banner-12.jpg', '', 13, 'banners', 'services', 1, 'luoibaoche'),
(358, '2012-05-04 14:15:08', 'Banner 14', 'banner-14.jpg', '', 14, 'banners', 'services', 1, 'luoibaoche'),
(359, '2012-05-04 14:15:28', 'Banner 13', 'banner-13.jpg', '', 15, 'banners', 'products', 1, 'luoibaoche');

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
) ENGINE=InnoDB  DEFAULT CHARSET=utf8 AUTO_INCREMENT=3 ;

--
-- Dumping data for table `dos_module_contacts`
--

INSERT INTO `dos_module_contacts` (`record_id`, `title`, `titleen`, `content`, `contenten`, `create_date`, `record_order`, `hit`, `hot`, `tag`, `tagen`, `description`, `descriptionen`, `enable`, `dos_usernames_username`) VALUES
(2, 'Liên hệ với chúng tôi', '', '<p><span style="color:#008000;"><strong><span style="font-size:11pt;">CÔNG TY TNHH TM DV XD THÁI HÀN</span></strong></span></p>\n<p><strong><span style="font-size:11pt;">Địa chỉ : 2/6 Phú Mỹ - P.22 – Q.Bình Thạnh – Tp.HCM</span></strong></p>\n<p><strong><span style="font-size:11pt;">ĐT : (08)38.407.137 Fax: (08)3840.6223 </span></strong></p>\n<p><strong><span style="font-size:11pt;">DĐ: 0908.130.298 - 0902.305.966</span></strong></p>\n<p><strong><span style="font-size:11pt;">Email: thaihan2303@gmail.com</span></strong></p>\n<p><strong><span style="font-size:11pt;">Website: www.luoibaoche.com</span></strong></p>', '', '2012-05-04 09:48:33', 1, 0, 0, 'lien-he-voi-chung-toi', '', 'CÔNG TY TNHH TM DV XD THÁI HÀN', '', '1', 'luoibaoche');

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
('Trang chủ', '', 'default', '', 1, '', '', '', '', 'luoibaoche'),
('Giới thiệu', '', 'about', '', 2, '', '', '', '', 'luoibaoche'),
('Sản phẩm', '', 'products', '', 3, '', '', '', '', 'luoibaoche'),
('Dự án', '', 'services', '', 4, '', '', '', '', 'luoibaoche'),
('Tin tức & sự kiện', '', 'news', '', 5, '', '', '', '', 'luoibaoche'),
('Liên hệ', '', 'contact', '', 6, '', '', '', '', 'luoibaoche');

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
) ENGINE=InnoDB DEFAULT CHARSET=utf8 AUTO_INCREMENT=1 ;

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
('day_time', 2456055),
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
('''127.0.0.1''', 1336356158);

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
) ENGINE=InnoDB  DEFAULT CHARSET=utf8 AUTO_INCREMENT=553 ;

--
-- Dumping data for table `dos_module_products`
--

INSERT INTO `dos_module_products` (`record_id`, `title`, `titleen`, `postdate`, `pic_thumb`, `pic_full`, `pic_desc`, `preview`, `previewen`, `content`, `contenten`, `tag`, `tagen`, `description`, `descriptionen`, `hits`, `record_order`, `unit`, `hot`, `specials`, `extra_field1`, `extra_field2`, `extra_field3`, `extra_field4`, `enable`, `dos_module_item_cat_cat_id`) VALUES
(532, 'Lưới bao che 01', '', '2012-05-04 10:05:16', 'luoi-bao-che-01-thumb.jpg', 'luoi-bao-che-01.jpg', 'luoi-bao-che-01-desc-1.jpg', '<p class="MsoNormal" style="margin-bottom:.0001pt;"><strong>1. Tên sản phẩm: </strong>Lưới bao che 01</p>\n<p class="MsoNormal" style="margin-bottom:.0001pt;"> </p>\n<p class="MsoNormal" style="margin-bottom:.0001pt;"><strong>Giá SP:</strong> LH (08)38407137 – DĐ: 0908.130.298</p>\n<p class="MsoNormal" style="margin-bottom:.0001pt;"> </p>\n<p class="MsoNormal" style="margin-bottom:.0001pt;"><strong>Thông tin chi tiết: </strong></p>\n<p class="MsoNormal" style="margin-bottom:.0001pt;"><strong> </strong></p>\n<p class="MsoNormal" style="margin-bottom:.0001pt;">-  Màu sắc: xanh lá cây, trắng, đen</p>\n<p class="MsoNormal" style="margin-bottom:.0001pt;">-  Ô lưới 1mm</p>\n<p class="MsoNormal" style="margin-bottom:.0001pt;">-  Khổ lưới: 1.8m x 50m</p>\n<p class="MsoNormal" style="margin-bottom:.0001pt;">-  Làm theo yêu cầu khách hàng</p>', '', '<p class="MsoNormal" style="margin-bottom:.0001pt;"> Liên hệ: (08)38407137 – DĐ: 0908.130.298</p>', '', 'luoi-bao-che-01', '', 'Lưới bao che 01', '', 0, 1, '', 0, 0, '', '', '', '', 1, 158),
(533, 'Lưới bao che 02', '', '2012-05-04 10:21:44', 'luoi-bao-che-02-thumb.jpg', 'luoi-bao-che-02.jpg', 'luoi-bao-che-02-desc-1.jpg', '<p><strong>Giá SP</strong>: LH (08)38407137 – DĐ: 0908.130.298</p>\n<p><strong> </strong></p>\n<p><strong>Thông tin chi tiết:</strong></p>\n<p><strong> </strong></p>\n<p>- Màu sắc: xanh lá cây</p>\n<p>- Ô lưới: Loại 2-3li/ Loại 4-5li/ Loại 6-8li</p>\n<p>Khổ lưới: K3: ô lưới 3mm, dệt kim, khổ lưới (1-4)m x100m</p>\n<p>K5: ô lưới 5mm, dệt kim, khổ lưới (1-4)m x 100m</p>\n<p>K8: ô lưới 8mm, dệt kim, khổ lưới (1-4)m x 100m</p>\n<p>- Làm theo yêu cầu khách hàng</p>', '', '<p>Liên hệ: (08)38407137 – DĐ: 0908.130.298</p>', '', 'luoi-bao-che-02', '', 'Lưới bao che', '', 0, 17, '', 0, 0, '', '', '', '', 1, 158),
(534, 'Lưới an toàn', '', '2012-05-04 10:27:56', 'luoi-an-toan-thumb.jpg', 'luoi-an-toan.jpg', 'luoi-an-toan-desc-1.jpg|luoi-an-toan-desc-1-7.jpg', '<p><strong>Giá SP</strong>: LH (08)38407137 – DĐ: 0908.130.298</p>\n<p><strong> </strong></p>\n<p><strong>Thông tin chi tiết:</strong></p>\n<p> </p>\n<p>Màu: xanh dương, xanh lá cây</p>\n<p>Kích thước mắt lưới: 2cm, 3cm, 4cm</p>\n<p>Khổ lưới: 2m, 3m, 4m x 80m, 100m</p>\n<p>Chất liệu: PP</p>\n<p>UV: 3%</p>', '', '<p>LH (08)38407137 – DĐ: 0908.130.298</p>', '', 'luoi-an-toan', '', 'Lưới an toàn', '', 0, 19, '', 0, 0, '', '', '', '', 1, 159),
(535, 'Lưới chống rơi 1', '', '2012-05-04 10:37:04', 'luoi-chong-roi-1-thumb.jpg', 'luoi-chong-roi-1.jpg', 'luoi-chong-roi-1-desc-1.jpg', '<p><strong>Giá SP</strong>: LH (08)38407137 – DĐ: 0908.130.298</p>\n<p><strong>Thông tin chi tiết:</strong></p>\n<p>Màu: trắng</p>\n<p>Kích thước mắt lưới: 5cm, 8cm, 10cm…</p>\n<p>Khổ lưới: 1m, 1.2m, 1.5m, 2m, 3m, 4m</p>\n<p>Làm theo yêu cầu khách hàng</p>', '', '<p>Liên hệ: (08)38407137 – DĐ: 0908.130.298</p>', '', 'luoi-chong-roi-1', '', 'Lưới chống rơi 1', '', 0, 7, '', 0, 0, '', '', '', '', 1, 160),
(536, 'Lưới chống rơi 2', '', '2012-05-04 10:37:48', 'luoi-chong-roi-2-thumb.jpg', 'luoi-chong-roi-2.jpg', '', '<p><strong>Giá SP</strong>: LH (08)38407137 – DĐ: 0908.130.298</p>\n<p><strong>Thông tin chi tiết:</strong></p>\n<p> - Công dụng: dùng để bảo vệ an toàn cho những công trình xây dựng có quy mô lớn, các tòa nhà cao tầng có thời gian thi công dài ngày.</p>\n<p>- Màu sắc: xanh đen</p>\n<p>- Chiều dài cạnh lưới: 5cm</p>\n<p>- Kích thước sợi lưới: 0.5cm</p>', '', '<p>Liên hệ: (08)38407137 – DĐ: 0908.130.298</p>', '', 'luoi-chong-roi-2', '', 'Lưới chống rơi 2', '', 0, 12, '', 0, 0, '', '', '', '', 1, 160),
(537, 'Lưới cẩu hàng', '', '2012-05-04 10:40:33', 'luoi-cau-hang-thumb.jpg', 'luoi-cau-hang.jpg', 'luoi-cau-hang-desc-1.jpg|luoi-cau-hang-desc-2.jpg|luoi-cau-hang-desc-3.jpg', '<p><strong>Giá SP</strong>: LH (08)38407137 – DĐ: 0908.130.298</p>\n<p> <strong>Thông tin chi tiết:</strong></p>\n<p> - Giới hạn trọng tải : từ 1 đến 10 tấn</p>\n<p>- Quy cách lưới: 1.2mx1.2m, 1.5mx1.5m,2mx2m,3mx3m hoặc theo yêu cầu.</p>\n<p>- Kích thước ô lưới: theo yêu cầu.</p>\n<p>- Màu sắc: Trắng</p>', '', '<p>Liên hệ: (08)38407137 – DĐ: 0908.130.298</p>', '', 'luoi-cau-hang', '', 'Lưới cẩu hàng', '', 0, 13, '', 0, 0, '', '', '', '', 1, 161),
(538, 'Lưới bao che có may viền bấm khuy', '', '2012-05-04 10:42:34', 'luoi-bao-che-co-may-vien-bam-khuy-thumb.jpg', 'luoi-bao-che-co-may-vien-bam-khuy.jpg', '', '<p><strong>Giá SP</strong>: LH (08)38407137 – DĐ: 0908.130.298</p>\n<p>- Lưới bao che công trình làm theo yêu cầu có may viền đóng khuy.</p>\n<p>- Lưới chắn gió, có may viền đóng khuy, may theo yêu cầu.</p>\n<p>- Đầy đủ màu sắc và chủng loại</p>', '', '<p>LH (08)38407137 – DĐ: 0908.130.298</p>', '', 'luoi-bao-che-co-may-vien-bam-khuy', '', '', '', 0, 11, '', 0, 0, '', '', '', '', 1, 158),
(539, 'Lưới bao che có cốt 1', '', '2012-05-04 10:44:16', 'luoi-bao-che-co-cot-1-thumb.jpg', 'luoi-bao-che-co-cot-1.jpg', '', '<p><strong>Tên sản phẩm</strong>: Lưới bao công trình</p>\n<p><strong>Giá SP</strong>: LH (08)38407137 – DĐ: 0908.130.298</p>\n<p>Thông tin chi tiết: Lưới chuyên dùng để bao che, bảo vệ an toàn cho các công trình xây dựng có quy mô lớn, các tòa nhà cao tầng được xây dựng trong thời gian dài.<br />- Định lượng (g/m2): 100, 110, 120, 135<br />- Màu sắc: xanh lá cây<br />- Khổ lưới (m): 2, 4 Chiều dài (m): 120 Hoặc theo yêu cầu của quý khách hàng</p>\n<p>Mã Sp: CG/C1: lưới dạng chắn gió, dệt kim, có cốt liên kết.</p>\n<p> </p>', '', '<p>LH (08)38407137 – DĐ: 0908.130.298</p>', '', 'luoi-bao-che-co-cot-1', '', 'Lưới bao che có cốt', '', 0, 8, '', 0, 0, '', '', '', '', 1, 158),
(540, 'Lưới bao che có cốt 2', '', '2012-05-04 10:45:37', 'luoi-bao-che-co-cot-thumb.jpg', 'luoi-bao-che-co-cot.jpg', '', '<p><strong>Tên sản phẩm</strong>: Lưới bao công trình</p>\n<p><strong>Giá SP</strong>: LH (08)38407137 – DĐ: 0908.130.298</p>\n<p>Thông tin chi tiết: Lưới chuyên dùng để bao che, bảo vệ an toàn cho các công trình xây dựng có quy mô lớn, các tòa nhà cao tầng được xây dựng trong thời gian dài.</p>\n<p>- Định lượng (g/m2): 100, 110, 120, 135</p>\n<p>- Màu sắc: xanh lá cây</p>\n<p>Khổ lưới: Rộng (1-4)m Dài (50)m</p>\n<p>Mã Sp: CG/C2: lưới dạng chắn gió, dệt kim, có cốt liên kết.</p>\n<p> </p>', '', '<p>LH (08)38407137 – DĐ: 0908.130.298</p>', '', 'luoi-bao-che-co-cot-2', '', 'LH (08)38407137 – DĐ: 0908.130.298', '', 0, 9, '', 0, 0, '', '', '', '', 1, 158),
(541, 'Lưới bao che có cốt 3', '', '2012-05-04 10:46:38', 'luoi-bao-che-co-cot-3-thumb.jpg', 'luoi-bao-che-co-cot-3.jpg', '', '<p><strong>Tên sản phẩm:</strong> Lưới bao công trình</p>\n<p><strong>Giá SP</strong>: LH (08)38407137 – DĐ: 0908.130.298</p>\n<p>Thông tin chi tiết: Lưới chuyên dùng để bao che, bảo vệ an toàn cho các công trình xây dựng có quy mô lớn, các tòa nhà cao tầng được xây dựng trong thời gian dài.</p>\n<p>- Định lượng (g/m2): 100, 110, 120, 135</p>\n<p>- Màu sắc: xanh lá cây</p>\n<p>- Khổ lưới (m): 2, 4 Chiều dài (m): 120 Hoặc theo yêu cầu của quý khách hàng</p>\n<p>Mã Sp: CG/C3: lưới dạng chắn gió, dệt kim, có cốt liên kết.</p>\n<p> </p>', '', '<p>LH (08)38407137 – DĐ: 0908.130.298</p>', '', 'luoi-bao-che-co-cot-3', '', 'Lưới bao che có cốt', '', 0, 10, '', 0, 0, '', '', '', '', 1, 158),
(542, 'LPN1', '', '2012-05-04 12:55:09', 'lpn1-thumb.jpg', 'lpn1.jpg', '', '<p><strong>Giá SP</strong>: LH (08)38407137 – DĐ: 0908.130.298</p>\n<p><strong>Thông tin chi tiết:</strong></p>\n<p>- Màu sắc: Tùy chọn</p>\n<p>- Ô lưới: vuông</p>\n<p>- Khổ lưới: 2m x 100m</p>\n<p>- Làm theo yêu cầu khách hàng</p>', '', '<p>LH (08)38407137 – DĐ: 0908.130.298</p>', '', 'lpn1', '', '', '', 0, 14, '', 0, 0, '', '', '', '', 1, 162),
(543, 'LPN2', '', '2012-05-04 12:55:59', 'lpn2-thumb.JPG', 'lpn2.JPG', '', '<p><strong>Giá SP</strong>: LH (08)38407137 – DĐ: 0908.130.298</p>\n<p><strong>Thông tin chi tiết:</strong></p>\n<p>- Màu sắc: Tùy chọn</p>\n<p>- Ô lưới: vuông, có gạch xéo</p>\n<p>- Khổ lưới: 2m x 100m</p>\n<p>- Làm theo yêu cầu khách hàng</p>', '', '<p>LH (08)38407137 – DĐ: 0908.130.298</p>', '', 'lpn2', '', '', '', 0, 15, '', 0, 0, '', '', '', '', 1, 162),
(544, 'LPN3', '', '2012-05-04 12:56:48', 'lpn3-thumb.JPG', 'lpn3.JPG', '', '<p><strong>Giá SP</strong>: LH (08)38407137 – DĐ: 0908.130.298</p>\n<p><strong>Thông tin chi tiết:</strong></p>\n<p>- Màu sắc: Tùy chọn</p>\n<p>- Ô lưới: vuông</p>\n<p>- Khổ lưới: 2m x 100m</p>\n<p>- Làm theo yêu cầu khách hàng</p>', '', '<p>LH (08)38407137 – DĐ: 0908.130.298</p>', '', 'lpn3', '', 'Lưới bao che', '', 0, 16, '', 0, 0, '', '', '', '', 1, 162),
(545, 'Lưới sân bóng đá', '', '2012-05-04 12:59:58', 'luoi-san-bong-da-thumb.jpg', 'luoi-san-bong-da.jpg', 'luoi-san-bong-da-desc-1.jpg|luoi-san-bong-da-desc-2.jpeg|luoi-san-bong-da-desc-3.jpg|luoi-san-bong-da-desc-4.jpg', '<p><strong>Giá SP</strong>: LH (08)38407137 – DĐ: 0908.130.298</p>\n<p><strong>Thông tin chi tiết</strong>:</p>\n<p>Lưới được dùng để bao sân bóng đá,  ở các trường học, các sân bóng đá ngoài trời.</p>\n<p>- Đường kính sợi : 4mm</p>\n<p>- Cạnh lưới : 12cm</p>\n<p>- Màu sắc : xanh da trời, xanh lá cây.</p>\n<p>- Khả năng chịu nắng mưa: 03 năm</p>', '', '<p>LH (08)38407137 – DĐ: 0908.130.298</p>', '', 'luoi-san-bong-da', '', 'Lưới sân bóng đá', '', 0, 18, '', 0, 0, '', '', '', '', 1, 165),
(546, 'Lưới khung thành', '', '2012-05-04 13:01:21', 'luoi-khung-thanh-thumb.jpg', 'luoi-khung-thanh.jpg', 'luoi-khung-thanh-desc-1.jpg|luoi-khung-thanh-desc-1-6.jpg', '<p>Lưới khung thành:</p>\n<p>- Khung thành 05 người</p>\n<p>- Khung thành 07 người</p>', '', '<p>LH: (08)38407137 – DĐ: 0908.130.298</p>', '', 'luoi-khung-thanh', '', 'Lưới khung thành', '', 0, 6, '', 0, 0, '', '', '', '', 1, 163),
(547, 'Lưới bao sân tập Golf', '', '2012-05-04 13:03:22', 'luoi-bao-san-tap-golf-thumb.jpg', 'luoi-bao-san-tap-golf.jpg', 'luoi-bao-san-tap-golf-desc-1.jpg|luoi-bao-san-tap-golf-desc-2.jpg|luoi-bao-san-tap-golf-desc-3.jpg|luoi-bao-san-tap-golf-desc-4.jpg|luoi-bao-san-tap-golf-desc-5.jpg|luoi-bao-san-tap-golf-desc-6.jpg|lu', '<p style="text-align:justify;"><strong>Thông tin chi tiết</strong>: Lưới chuyên dùng để bao vây các sân tập golf và các sân thể thao khác.</p>\n<p style="text-align:justify;"><strong>Giá SP</strong>: LH (08)38407137 – DĐ: 0908.130.298</p>\n<p style="text-align:justify;"><strong>Ưu điểm</strong>: Lưới được dệt bằng máy với công nghệ hiện đại nên có chất lượng cao, gút lưới chắc chắn, mắt lưới đều đặn.</p>\n<p style="text-align:justify;">- Màu sắc: xanh lá cây, xanh da trời.</p>\n<p style="text-align:justify;">- Kích thước sợi lưới: 2.0mm.</p>\n<p style="text-align:justify;">- Chiều dài mắt lưới : 2.5 cm</p>\n<p style="text-align:justify;">- Kích thước lưới : theo yêu cầu của khách hàng</p>\n<p style="text-align:justify;">- Bảo hành độ mục: 02 năm</p>', '', '<p>LH (08)38407137 – DĐ: 0908.130.298</p>', '', 'luoi-bao-san-tap-golf', '', '', '', 0, 20, '', 0, 0, '', '', '', '', 1, 166),
(548, 'Lưới che nắng', '', '2012-05-04 13:05:02', 'luoi-che-nang-thumb.jpg', 'luoi-che-nang.jpg', 'luoi-che-nang-desc-1.jpg|luoi-che-nang-desc-2.jpg|luoi-che-nang-desc-3.jpg', '<p style="text-align:justify;">Lưới che nắng hiệu là sản phẩm do công ty do công ty Thái Hàn phân phối. Lưới có độ bền tốt nhất hiện nay, màu sắc đồng đều, lưới thẳng đẹp, độ che nắng chuẩn xác.</p>\n<p style="text-align:justify;"><strong>Giá SP</strong>: LH (08)38407137 – DĐ: 0908.130.298</p>\n<p style="text-align:justify;"><strong>Thông tin sản phẩm:</strong></p>\n<p style="text-align:justify;">Lưới che nắng được dùng để che nắng cho các vườn lan, vườn ươm, khu nghỉ mát, nhà ở...</p>\n<p style="text-align:justify;">- Màu sắc: xanh, đen, đen xanh</p>\n<p style="text-align:justify;">- Độ che nắng: 50%, 60%, 70%, 80%</p>\n<p style="text-align:justify;">- Quy cách cuộn: 1mx100m, 2mx100m,</p>', '', '<p>LH (08)38407137 – DĐ: 0908.130.298</p>', '', 'luoi-che-nang', '', 'Lưới che nắng', '', 0, 21, '', 0, 0, '', '', '', '', 1, 164),
(549, 'Dây  Đơn', '', '2012-05-04 13:07:43', 'day--on-thumb.jpg', 'day--on.jpg', 'day--on-desc-1.jpg|day--on-desc-2.jpg|day--on-desc-3.jpg', '<p>Dây Đơn</p>', '', '<p>LH: (08)38407137 – DĐ: 0908.130.298</p>', '', 'day-don', '', 'Dây  Đơn', '', 0, 4, '', 0, 0, '', '', '', '', 1, 167),
(550, 'Dây Cào', '', '2012-05-04 13:09:19', 'day-cao-thumb.jpg', 'day-cao.jpg', 'day-cao-desc-1.jpg|day-cao-desc-2.jpg|day-cao-desc-3.jpg|day-cao-desc-4.jpg', '<p>Dây Cào</p>', '', '<p>LH: (08) 38407137 – DĐ: 0908.130.298</p>', '', 'day-cao', '', 'Dây Cào', '', 0, 5, '', 0, 0, '', '', '', '', 1, 167),
(551, 'Dây Thừng', '', '2012-05-04 13:13:12', 'day-thung-thumb.jpg', 'day-thung.jpg', 'day-thung-desc-1.jpg|day-thung-desc-2.jpg|day-thung-desc-3.jpg|day-thung-desc-4.jpg|day-thung-desc-1-8.jpg', '<p><strong>- Thông tin chi tiết:</strong></p>\n<p>Đựơc sử dụng cho mục đích cứu hộ, ngư nghiệp, leo núi, cột súc vật, neo thuyền và trong các ngành công nghiệp khác.</p>\n<p><strong>- Ưu điểm:</strong></p>\n<p>Lưới được dệt bằng máy với công nghệ hiện đại nên có chất lượng cao</p>\n<p>- <strong>Đặc tính</strong>:</p>\n<p>Là lọai dây từ sợi tổng hợp chắc chắn nhất. Có khả năng chịu lực và chống mài mòn cao, chịu được ở nhiệt độ cao, không mục rửa, không thấm dầu hay hay hòa tan trong bất kỳ lọai hóa chất nào.</p>\n<p><strong>- Màu sắc:</strong></p>\n<p>Đủ màu sắc</p>\n<p><strong>Kích thước</strong>: 5mm – 42mm</p>', '', '<p>LH: (08) 38407137 – DĐ: 0908.130.298</p>', '', 'day-thung', '', 'Dây Thừng', '', 0, 2, '', 0, 0, '', '', '', '', 1, 168),
(552, 'Bao tay', '', '2012-05-04 13:14:28', 'bao-tay-thumb.jpg', 'bao-tay.jpg', 'bao-tay-desc-1.jpg|bao-tay-desc-2.jpg|bao-tay-desc-3.gif|bao-tay-desc-4.jpg', '<p style="text-align:justify;">Với phương châm “An toàn là hạnh phúc” Công Ty chúng tôi mang đến cho quý khách hàng các loại bay tay trong nước và nhập khẩu chất lượng cao, đa dạng về mẫu mã, giá cả cạnh tranh,…nhằm đảm bảo sự an toàn cho đôi tay người lao động góp phần nâng cao hiệu quả sản xuất kinh doanh và cùng nhau phát triển.</p>\n<p style="text-align:justify;">Bao tay 100%poly dùng cho lao đông phổ thông bảo vệ tay khỏi đau rát</p>\n<p style="text-align:justify;">Màu sắc: trắng, đen ,nâu… đủ loại màu sắc</p>', '', '<p>LH: (08) 38407137 – DĐ: 0908.130.298</p>', '', 'bao-tay', '', 'Bao tay', '', 0, 3, '', 0, 0, '', '', '', '', 1, 169);

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
) ENGINE=InnoDB  DEFAULT CHARSET=utf8 AUTO_INCREMENT=171 ;

--
-- Dumping data for table `dos_module_products_cat`
--

INSERT INTO `dos_module_products_cat` (`cat_id`, `cat_parent_id`, `cat_title`, `cat_titleen`, `preview`, `previewen`, `tag`, `tagen`, `description`, `descriptionen`, `pic_full`, `pic_desc`, `cat_order`, `cat_extra1`, `cat_extra2`, `cat_enable`, `dos_usernames_username`) VALUES
(158, 0, 'LƯỚI BAO CHE', '', '', '', 'luoi-bao-che', '', '', '', 'li-bao-che.jpg', '', 13, '', '', 1, 'luoibaoche'),
(159, 0, 'LƯỚI AN TOÀN', '', '', '', 'luoi-an-toan', '', 'LƯỚI AN TOÀN', '', 'li-an-ton.jpg', '', 11, '', '', 1, 'luoibaoche'),
(160, 0, 'LƯỚI CHỐNG RƠI', '', '', '', 'luoi-chong-roi', '', 'LƯỚI CHỐNG RƠI', '', 'li-chng-ri.jpg', '', 4, '', '', 1, 'luoibaoche'),
(161, 0, 'LƯỚI CẨU HÀNG', '', '', '', 'luoi-cau-hang', '', 'LƯỚI CẨU HÀNG', '', 'li-cu-hng.jpg', '', 8, '', '', 1, 'luoibaoche'),
(162, 0, 'LƯỚI PHỦ NHỰA', '', '', '', 'luoi-phu-nhua', '', 'LƯỚI PHỦ NHỰA', '', 'li-ph-nha.jpg', '', 10, '', '', 1, 'luoibaoche'),
(163, 0, 'LƯỚI KHUNG THÀNH', '', '', '', 'luoi-khung-thanh', '', 'LƯỚI KHUNG THÀNH', '', 'li-khung-thnh.jpg', '', 9, '', '', 1, 'luoibaoche'),
(164, 0, 'LƯỚI CHE NẮNG', '', '', '', 'luoi-che-nang', '', 'LƯỚI CHE NẮNG', '', 'li-che-nng.jpg', '', 7, '', '', 1, 'luoibaoche'),
(165, 0, 'LƯỚI CHẮN BÓNG', '', '', '', 'luoi-chan-bong', '', '', '', 'li-chn-bng.jpeg', '', 7, '', '', 1, 'luoibaoche'),
(166, 0, 'LƯỚI SÂN GOLF', '', '', '', 'luoi-san-golf', '', '', '', 'li-sn-golf.jpg', '', 12, '', '', 1, 'luoibaoche'),
(167, 0, 'DÂY NHỰA', '', '', '', 'day-nhua', '', 'DÂY NHỰA', '', 'dy-nha.jpg', '', 8, '', '', 1, 'luoibaoche'),
(168, 0, 'DÂY THỪNG', '', '', '', 'day-thung', '', 'DÂY THỪNG', '', 'dy-thng.jpg', '', 4, '', '', 1, 'luoibaoche'),
(169, 0, 'BAO TAY', '', '', '', 'bao-tay', '', 'BAO TAY', '', 'bao-tay.gif', '', 4, '', '', 1, 'luoibaoche'),
(170, 0, 'CỎ NHÂN TẠO', '', '', '', 'co-nhan-tao', '', 'CỎ NHÂN TẠO', '', 'c-nhn-to.jpg', '', 3, '', '', 1, 'luoibaoche');

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
) ENGINE=InnoDB  DEFAULT CHARSET=utf8 AUTO_INCREMENT=44 ;

--
-- Dumping data for table `dos_module_services`
--

INSERT INTO `dos_module_services` (`record_id`, `title`, `titleen`, `preview`, `previewen`, `content`, `contenten`, `pic_full`, `hit`, `created`, `record_order`, `hot`, `extra_field1`, `extra_field2`, `tag`, `tagen`, `description`, `descriptionen`, `activated`, `dos_usernames_username`) VALUES
(43, 'Dự Án', '', '', '', '<p style="text-align:center;"><span style="color:#008000;font-size:14pt;"><strong>Các Dự Án của Thái Hàn</strong></span></p>\n<p style="text-align:center;"><img src="/public/userfiles/image/luoibaoche/image/du%20an%203.jpg" alt="" width="350" height="350" /></p>\n<p style="text-align:center;"><img src="/public/userfiles/image/luoibaoche/image/du%20an%202.jpg" alt="" width="350" height="350" /></p>\n<p style="text-align:center;"><img src="/public/userfiles/image/luoibaoche/image/du%20an%201.jpg" alt="" width="350" height="350" /></p>\n<p style="text-align:center;"><img src="/public/userfiles/image/luoibaoche/image/du%20an%2010.jpg" alt="" width="350" height="337" /></p>\n<p style="text-align:center;"><img src="/public/userfiles/image/luoibaoche/image/du%20an%209.jpg" alt="" width="350" height="247" /></p>\n<p style="text-align:center;"><img src="/public/userfiles/image/luoibaoche/image/du%20an%208.jpg" alt="" width="350" height="274" /></p>\n<p style="text-align:center;"><img src="/public/userfiles/image/luoibaoche/image/du%20an%207.jpg" alt="" width="350" height="263" /></p>\n<p style="text-align:center;"><img src="/public/userfiles/image/luoibaoche/image/du%20an%205.jpg" alt="" width="350" height="252" /></p>\n<p style="text-align:center;"><img src="/public/userfiles/image/luoibaoche/image/du%20an%208.jpg" alt="" width="350" height="274" /></p>\n<p style="text-align:center;"><img src="/public/userfiles/image/luoibaoche/image/san%20bong%20da%20%202.jpg" alt="" width="350" height="263" /></p>\n<p style="text-align:center;"><img src="/public/userfiles/image/luoibaoche/image/Luoi%20gofl%203.jpg" alt="" width="350" height="263" /></p>\n<p style="text-align:center;"><img src="/public/userfiles/image/luoibaoche/image/Luoi%20gofl%202.jpg" alt="" width="350" height="263" /></p>\n<p style="text-align:center;"><img src="/public/userfiles/image/luoibaoche/image/Luoi%20gofl%205.jpg" alt="" width="350" height="263" /></p>', '', '', 2, '2012-05-04 13:25:15', 1, 0, '', '', 'du-an', '', '', '', 1, 'luoibaoche');

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
) ENGINE=InnoDB  DEFAULT CHARSET=utf8 AUTO_INCREMENT=5 ;

--
-- Dumping data for table `dos_module_supports`
--

INSERT INTO `dos_module_supports` (`support_id`, `support_name`, `support_nameen`, `support_phone`, `support_value`, `support_order`, `support_type`, `dos_usernames_username`) VALUES
(4, 'Hỗ trợ Khách hàng', '', '0908.130.298', 'maioanh7887', 1, 'yahoo', 'luoibaoche');

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
('luoibaoche', 'info@luoibaoche.com', 'e10adc3949ba59abbe56e057f20f883e', '2012-05-04 08:51:09', '', '', '', 'user', 'vi', '', '2012-06-02 17:00:00', 0, 1, '020512', 30, 'bds-kien-truc-xay-dung');

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
('address1', 'Địa chỉ : 2/6 Phú Mỹ - P.22 – Q.Bình Thạnh – Tp.HCM', '', 'luoibaoche'),
('address2', 'ĐT : (08)38.407.137 Fax: (08)3840.6223 DĐ: 0908.130.298 - 0902.305.966', '', 'luoibaoche'),
('company_name', 'CÔNG TY TNHH TM DV XD THÁI HÀN', '', 'luoibaoche'),
('company_name_footer', 'CÔNG TY TNHH TM DV XD THÁI HÀN', '', 'luoibaoche'),
('company_phone', 'Hot line: 0908.130.298 - 0902.305.966', '', 'luoibaoche'),
('copyright', 'Email: thaihan2303@gmail.com  - Website: www.luoibaoche.com', '', 'luoibaoche');

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
