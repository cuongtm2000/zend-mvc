-- phpMyAdmin SQL Dump
-- version 3.4.5
-- http://www.phpmyadmin.net
--
-- Host: localhost
-- Generation Time: May 09, 2012 at 03:54 AM
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
('address1', 'Địa chỉ công ty 1', 'Address 1', 0),
('address2', 'Địa chỉ chi nhánh', 'Address 2', 0),
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
('about', 'tuanhoaphat'),
('advs', 'tuanhoaphat'),
('banner', 'tuanhoaphat'),
('contact', 'tuanhoaphat'),
('news', 'tuanhoaphat'),
('products', 'tuanhoaphat'),
('services', 'tuanhoaphat'),
('supports', 'tuanhoaphat');

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
) ENGINE=InnoDB  DEFAULT CHARSET=utf8 AUTO_INCREMENT=100 ;

--
-- Dumping data for table `dos_module_abouts`
--

INSERT INTO `dos_module_abouts` (`record_id`, `title`, `titleen`, `content`, `contenten`, `hit`, `created`, `record_order`, `hot`, `extra_field1`, `extra_field2`, `tag`, `tagen`, `description`, `descriptionen`, `activated`, `dos_usernames_username`) VALUES
(95, 'Giới thiệu công ty', '', '<p style="text-align:center;"><span style="text-decoration:underline;"><span style="font-size:12pt;color:#000000;"><strong>Kính gửi : Qu‎ý‎ khách hàng.</strong></span></span></p>\n<p style="text-align:justify;"><span style="color:#000000;"><span style="color:#ff6600;"><strong>TUẤN HÒA PHÁT</strong></span> là nhà cung cấp hàng đầu những sản phẩm: Máy nước nóng năng lượng mặt trời <strong><span style="color:#008000;">NĂNG LƯỢNG XANH</span>, </strong>Thiết Bị Phòng Tắm, Trang Trí Nội - Ngoại Thất, Vật Liệu Xây Dựng, Xây Dựng Dân dụng &amp; CN, San Lắp Mặt Bằng, Đại Lý Vé Máy Bay, Dịch Vụ Cầm Đồ …… . <span style="color:#ff6600;"><strong>TUẤN HÒA PHÁT</strong></span>.</span></p>\n<p style="text-align:justify;"><span style="color:#000000;">Là đại l‎ý lớn một số mặt hàng trong lĩnh vực hoạt động kinh doanh của Công Ty, cập nhật kỹ thuật thường xuyên để đảm bảo sự hoàn hảo và hạ giá thành sản phẩm / dịch vụ.</span></p>\n<p style="text-align:justify;"><span style="color:#000000;">Chúng tôi, với đội ngũ kỹ sư, công nhân nhiều năm kinh nghiệm trong lĩnh vực của mình, luôn ứng dụng những kỹ thuật mới, để lựa chọn các giải pháp tối ưu nhằm đáp ứng yêu cầu của khách hàng về công dụng, chất lượng, độ tin cậy, mỹ quan và giá cả.</span></p>\n<p style="text-align:justify;"><span style="color:#000000;">Chúng tôi với chế độ bảo trì và bảo hành tận tâm, các dịch vụ hậu mãi, thực hiện việc kiểm tra định kỳ sẽ đảm bảo tuổi thọ và sự họat động của sản phẩm, dịch vụ được ổn định trong thời gian dài.</span></p>\n<p style="text-align:justify;"><span style="color:#000000;"><span style="color:#ff6600;"><strong>TUẤN HÒA PHÁT</strong></span> luôn đáp ứng nhanh nhu cầu của khách hàng. Chất lượng phù hợp với sự mong đợi và giá cả cạnh tranh.</span></p>\n<p style="text-align:justify;"><span style="color:#000000;"><span style="color:#ff6600;"><strong>TUẤN HÒA PHÁT</strong></span> sẵn sàng phục vụ qu‎ý khách và hợp tác với các nhà đầu tư trong và ngoài nước.</span></p>', '', 40, '2012-05-07 05:39:35', 2, 0, '', '', 'gioi-thieu-cong-ty', '', '', '', 1, 'tuanhoaphat'),
(96, 'Chào mừng bạn ghé thăm website của chúng tôi!', '', '<p style="text-align:justify;"><strong><span style="color:#ff6600;">TUẤN HÒA PHÁT</span></strong> là nhà cung cấp hàng đầu những sản phẩm: Máy nước nóng năng lượng mặt trời <span style="color:#008000;"><strong>NĂNG LƯỢNG XANH</strong></span>, Thiết Bị Phòng Tắm, Trang Trí Nội - Ngoại Thất, Vật Liệu Xây Dựng, Xây Dựng Dân dụng &amp; CN, San Lắp Mặt Bằng, Đại Lý Vé Máy Bay, Dịch Vụ Cầm Đồ</p>\n<p style="text-align:justify;"><strong><span style="color:#ff6600;">TUẤN HÒA PHÁT</span></strong> luôn đáp ứng nhanh nhu cầu của khách hàng. Chất lượng phù hợp với sự mong đợi và giá cả cạnh tranh.</p>\n<p style="text-align:justify;"><span style="color:#ff6600;"><strong>TUẤN HÒA PHÁT</strong></span> sẵn sàng phục vụ qu‎ý khách và hợp tác với các nhà đầu tư trong và ngoài nước.</p>', '', 177, '2012-05-07 09:42:20', 1, 1, '', '', 'chao-mung-ban-ghe-tham-website-cua-chung-toi', '', '', '', 1, 'tuanhoaphat'),
(99, 'Giới thiệu chung chung', '', '<p>Giới thiệu chung chung</p>', '', 17, '2012-05-08 01:45:58', 3, 0, '', '', 'gioi-thieu-chung-chung', '', 'Giới thiệu chung chung', '', 1, 'tuanhoaphat');

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
) ENGINE=InnoDB  DEFAULT CHARSET=utf8 AUTO_INCREMENT=78 ;

--
-- Dumping data for table `dos_module_advs`
--

INSERT INTO `dos_module_advs` (`record_id`, `title`, `titleen`, `pic_thumb`, `url`, `create_date`, `start_date`, `end_date`, `hits`, `record_order`, `position`, `type`, `enable`, `dos_usernames_username`) VALUES
(73, 'Quảng cáo', '', 'quang-cao.jpg', 'http://dos.vn', '2012-05-07 05:39:35', '2012-05-02 17:00:00', '2012-06-29 17:00:00', 0, 1, 'right', '_bank', 1, 'tuanhoaphat'),
(74, 'Quảng cáo 1', '', 'quang-cao-1.png', 'http://dos.vn', '2012-05-07 09:15:22', '2012-04-30 17:00:00', '2012-06-29 17:00:00', 0, 2, 'left', '_bank', 1, 'tuanhoaphat'),
(75, 'Quảng cáo 2', '', 'quang-cao-2.jpeg', 'http://dos.vn', '2012-05-07 09:20:33', '2012-04-30 17:00:00', '2012-06-29 17:00:00', 0, 3, 'right', '_bank', 1, 'tuanhoaphat'),
(76, 'Quảng cáo 3', '', 'quang-cao-3.jpeg', 'http://dos.vn', '2012-05-07 09:21:50', '2012-04-30 17:00:00', '2012-06-29 17:00:00', 0, 4, 'right', '_bank', 1, 'tuanhoaphat'),
(77, 'Quảng cáo 4', '', 'quang-cao-4.jpeg', 'http://dos.vn', '2012-05-07 09:25:11', '2012-04-30 17:00:00', '2012-06-29 17:00:00', 0, 5, 'right', '_bank', 1, 'tuanhoaphat');

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
) ENGINE=InnoDB  DEFAULT CHARSET=utf8 AUTO_INCREMENT=434 ;

--
-- Dumping data for table `dos_module_banners`
--

INSERT INTO `dos_module_banners` (`banner_id`, `banner_date`, `banner_name`, `banner_url`, `banner_link`, `banner_order`, `banner_type`, `position`, `enable`, `dos_usernames_username`) VALUES
(377, '2012-05-07 07:58:07', 'Banner', 'banner.jpg', '', 1, 'banners', 'default', 1, 'tuanhoaphat'),
(378, '2012-05-07 08:53:46', 'banner1', 'banner1.jpg', '', 2, 'banners', 'about', 1, 'tuanhoaphat'),
(379, '2012-05-07 08:54:02', 'banner2', 'banner2.jpg', '', 3, 'banners', 'products', 1, 'tuanhoaphat'),
(380, '2012-05-07 09:28:47', 'banner3', 'banner3.jpg', '', 4, 'banners', 'default', 1, 'tuanhoaphat'),
(381, '2012-05-07 09:44:18', 'banner4', 'banner4.jpg', '', 5, 'banners', 'services', 1, 'tuanhoaphat'),
(382, '2012-05-07 09:48:34', 'Banner 5', 'banner-5.jpg', 'http://dos.vn/', 6, 'banners', 'default', 1, 'tuanhoaphat'),
(383, '2012-05-07 09:49:00', 'Banner 6', 'banner-6.jpg', 'http://dos.vn/', 7, 'banners', 'default', 1, 'tuanhoaphat'),
(384, '2012-05-07 09:49:41', 'Banner 7', 'banner-7.jpg', 'http://dos.vn/', 8, 'banners', 'products', 1, 'tuanhoaphat'),
(385, '2012-05-07 09:53:24', 'Banner 8', 'banner-8.jpg', 'http://dos.vn/', 9, 'banners', 'products', 1, 'tuanhoaphat'),
(386, '2012-05-07 09:53:41', 'Banner 9', 'banner-9.jpg', 'http://dos.vn/', 10, 'banners', 'products', 1, 'tuanhoaphat'),
(387, '2012-05-07 09:54:03', 'banner8', 'banner8.jpg', '', 11, 'banners', 'default', 1, 'tuanhoaphat'),
(388, '2012-05-07 09:54:11', 'Banner10', 'banner10.jpg', 'http://dos.vn/', 12, 'banners', 'about', 1, 'tuanhoaphat'),
(389, '2012-05-07 09:54:36', 'Banner 11', 'banner-11.jpg', 'http://dos.vn/', 13, 'banners', 'products', 1, 'tuanhoaphat'),
(390, '2012-05-07 09:54:57', 'Banner 12', 'banner-12.jpg', 'http://dos.vn/', 14, 'banners', 'contact', 1, 'tuanhoaphat'),
(391, '2012-05-07 09:55:17', 'Banner13', 'banner13.jpg', 'http://dos.vn/', 15, 'banners', 'contact', 1, 'tuanhoaphat'),
(392, '2012-05-07 09:55:40', 'Banner14', 'banner14.jpg', 'http://dos.vn/', 16, 'banners', 'news', 1, 'tuanhoaphat'),
(393, '2012-05-07 09:56:09', 'Banner16', 'banner16.jpg', 'http://dos.vn/', 17, 'banners', 'news', 1, 'tuanhoaphat'),
(394, '2012-05-07 09:59:29', 'Banner17', 'banner17.jpg', 'http://dos.vn/', 18, 'banners', 'services', 1, 'tuanhoaphat'),
(395, '2012-05-07 10:27:44', 'logo_tuanhoaphat', 'logotuanhoaphat.gif', '', 19, 'logo', 'default', 1, 'tuanhoaphat'),
(433, '2012-05-09 00:52:30', 'banner18', 'banner18.jpg', '', 20, 'banners', 'default', 1, 'tuanhoaphat');

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
) ENGINE=InnoDB  DEFAULT CHARSET=utf8 AUTO_INCREMENT=4 ;

--
-- Dumping data for table `dos_module_contacts`
--

INSERT INTO `dos_module_contacts` (`record_id`, `title`, `titleen`, `content`, `contenten`, `create_date`, `record_order`, `hit`, `hot`, `tag`, `tagen`, `description`, `descriptionen`, `enable`, `dos_usernames_username`) VALUES
(3, 'Liên hệ với chúng tôi', '', '<p><span style="color:#ff6600;font-size:12pt;"><strong>CÔNG TY TNHH MTV TUẤN HÒA PHÁT</strong></span></p>\n<p><strong>Địa chỉ: 1/18, KP5. P. Trảng Dài, TP. Biên Hòa, Tỉnh Đồng Nai</strong></p>\n<p><strong>Điện thoại: 0612.227.669 </strong></p>\n<p><strong>Hotline: 0937.268.669</strong></p>\n<p><strong>Email: <a href="mailto:info@tuanhoaphat.com">info@tuanhoaphat.com</a><br /></strong></p>\n<p><strong>Website: www.tuanhoaphat.com<br /></strong></p>', '', '2012-05-07 09:45:33', 1, 0, 0, 'lien-he-voi-chung-toi', '', '', '', '1', 'tuanhoaphat');

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
('Trang chủ', '', 'default', '', 1, '', '', '', '', 'tuanhoaphat'),
('Giới thiệu', '', 'about', '', 2, '', '', '', '', 'tuanhoaphat'),
('Sản phẩm', '', 'products', '', 3, '', '', '', '', 'tuanhoaphat'),
('Dịch vụ', '', 'services', '', 4, '', '', '', '', 'tuanhoaphat'),
('Tin tức & sự kiện', '', 'news', '', 5, '', '', '', '', 'tuanhoaphat'),
('Liên hệ', '', 'contact', '', 6, '', '', '', '', 'tuanhoaphat');

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
('day_time', 2456057),
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
('''127.0.0.1''', 1336528380);

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
) ENGINE=InnoDB  DEFAULT CHARSET=utf8 AUTO_INCREMENT=789 ;

--
-- Dumping data for table `dos_module_products`
--

INSERT INTO `dos_module_products` (`record_id`, `title`, `titleen`, `postdate`, `pic_thumb`, `pic_full`, `pic_desc`, `preview`, `previewen`, `content`, `contenten`, `tag`, `tagen`, `description`, `descriptionen`, `hits`, `record_order`, `unit`, `hot`, `specials`, `extra_field1`, `extra_field2`, `extra_field3`, `extra_field4`, `enable`, `dos_module_item_cat_cat_id`) VALUES
(611, 'Năng Lượng Xanh/12', '', '2012-05-07 07:22:40', 'nang-luong-xanh12-thumb.jpg', 'nang-luong-xanh12.jpg', 'nang-luong-xanh12-desc-1.jpg', '<p>Năng Lượng Xanh/12</p>', '', '<p><strong>THÔNG TIN CHI TIẾT:</strong></p>\n<p>- Kích thước (Rộng x Dài x Cao): 1.100 x 2.000 x 1.200</p>\n<p>- Dung tích: 120 L</p>\n<p>- Ống thu nhiệt được dập thương hiệu độc quyền <strong><span style="color:#008000;">Năng lượng Xanh</span></strong> (chống hàng giải): Ø58 x 1800 mm</p>\n<p>- Ruột bồn được làm bằng inox theo chuẩn vệ sinh y tế</p>\n<p>- Vỏ bồn, khung chân được làm bằng inox 2 lớp Inox 304 lớp trong và lớp ngoài</p>\n<p>- Sản xuất tại Việt Nam theo công nghệ Đức</p>\n<p>- Người sử dụng: 1 -2</p>\n<p>- Sản phẩm <strong><span style="color:#008000;">Năng Lượng Xanh</span></strong> được Bảo hành: 7 năm, bảo trì 7 năm, mỗi năm 1 lần miễn phí</p>\n<p><em><strong>*Đặc biệt ống thu nhiệt Lõi Đỏ hấp thụ nhanh hơn từ 20 - 25% so với lõi đen</strong></em></p>\n<p><span style="color:#ff6600;"><strong> </strong></span></p>\n<p><span style="color:#ff6600;"><strong><em>Mọi chi tiết xin vui lòng liên hệ:</em> </strong></span></p>\n<p><span style="color:#ff6600;"><strong>CÔNG TY TNHH MTV TUẤN HÒA PHÁT</strong></span></p>\n<p><span style="color:#ff6600;"><strong>Điện thoại: 0612.227.669 - Hotline: 0937.268.669</strong></span></p>\n<p><span style="color:#ff6600;"><strong>Địa chỉ: 1/18, KP5. P. Trảng Dài, TP. Biên Hòa, Tỉnh Đồng Nai</strong></span></p>', '', 'nang-luong-xanh12', '', 'Năng Lượng Xanh/12', '', 0, 7, '8.000.000 VND', 0, 0, '', '', '', '', 1, 186),
(612, 'Năng Lượng Xanh/15', '', '2012-05-07 07:31:29', 'nang-luong-xanh15-thumb.JPG', 'nang-luong-xanh15.JPG', '', '<p>Năng Lượng Xanh/15</p>', '', '<p><span style="color:#ff0000;"><strong>THÔNG TIN CHI TIẾT:</strong></span></p>\n<p>- Kích thước (Rộng x Dài x Cao): 1.300 x 2.000 x 1.200</p>\n<p>- Dung tích: 150 L</p>\n<p>- Ống thu nhiệt được dập thương hiệu độc quyền <strong><span style="color:#008000;">Năng lượng Xanh</span></strong> (chống hàng giải): Ø58 x 1800 mm</p>\n<p>- Ruột bồn được làm bằng inox theo chuẩn vệ sinh y tế</p>\n<p>- Vỏ bồn, khung chân được làm bằng inox 2 lớp Inox 304 lớp trong và lớp ngoài</p>\n<p>- Sản xuất tại Việt Nam theo công nghệ Đức</p>\n<p>- Người sử dụng: 3 -4</p>\n<p>- Sản phẩm <strong><span style="color:#008000;">Năng Lượng Xan</span><span style="color:#008000;">h</span></strong> được Bảo hành: 7 năm, bảo trì 7 năm, mỗi năm 1 lần miễn phí</p>\n<p><strong>*Đặc biệt ống thu nhiệt Lõi Đỏ hấp thụ nhanh hơn từ 20 - 25% so với lõi đen</strong></p>\n<p> </p>\n<p><em><strong>Mọi chi tiết xin vui lòng liên hệ:</strong></em></p>\n<p><span style="color:#ff6600;"><strong>CÔNG TY TNHH MTV TUẤN HÒA PHÁT</strong></span></p>\n<p><span style="color:#ff6600;"><strong>Điện thoại: 0612.227.669 - Hotline: 0937.268.669</strong></span></p>\n<p><span style="color:#ff6600;"><strong>Địa chỉ: 1/18, KP5. P. Trảng Dài, TP. Biên Hòa, Tỉnh Đồng Nai</strong></span></p>', '', 'nang-luong-xanh15', '', '', '', 0, 25, '10.000.000 VND', 0, 0, '', '', '', '', 1, 186),
(613, 'Năng Lượng Xanh/18', '', '2012-05-07 07:33:18', 'nang-luong-xanh18-thumb.jpg', 'nang-luong-xanh18.jpg', '', '<p>Năng Lượng Xanh/18</p>', '', '<p style="text-align:justify;"><span style="color:#ff0000;"><strong>THÔNG TIN CHI TIẾT:</strong></span></p>\n<p style="text-align:justify;">- Kích thước (Rộng x Dài x Cao): 1.500 x 2.000 x 1.200</p>\n<p style="text-align:justify;">- Dung tích: 180 L</p>\n<p style="text-align:justify;">- Ống thu nhiệt được dập thương hiệu độc quyền <strong><span style="color:#008000;">Năng lượng Xanh</span></strong> (chống hàng giải): Ø58 x 1800 mm</p>\n<p style="text-align:justify;">- Ruột bồn được làm bằng inox theo chuẩn vệ sinh y tế</p>\n<p style="text-align:justify;">- Vỏ bồn, khung chân được làm bằng inox 2 lớp Inox 304 lớp trong và lớp ngoài</p>\n<p style="text-align:justify;">- Sản xuất tại Việt Nam theo công nghệ Đức</p>\n<p style="text-align:justify;">- Người sử dụng: 4 -5</p>\n<p style="text-align:justify;">- Sản phẩm <strong><span style="color:#008000;">Năng Lượng Xanh</span> </strong>được Bảo hành: 7 năm, bảo trì 7 năm, mỗi năm 1 lần miễn phí</p>\n<p style="text-align:justify;"><strong>*Đặc biệt ống thu nhiệt Lõi Đỏ hấp thụ nhanh hơn từ 20 - 25% so với lõi đen</strong></p>\n<p style="text-align:justify;"> </p>\n<p style="text-align:justify;"><em><strong>Mọi chi tiết xin vui lòng liên hệ:</strong></em></p>\n<p style="text-align:justify;"><strong><span style="color:#ff6600;">CÔNG TY TNHH MTV TUẤN HÒA PHÁT</span></strong></p>\n<p style="text-align:justify;"><strong><span style="color:#ff6600;">Điện thoại: 0612.227.669 - Hotline: 0937.268.669</span></strong></p>\n<p style="text-align:justify;"><strong><span style="color:#ff6600;">Địa chỉ: 1/18, KP5. P. Trảng Dài, TP. Biên Hòa, Tỉnh Đồng Nai</span></strong></p>', '', 'nang-luong-xanh18', '', '', '', 0, 5, '12.000.000 VND', 0, 0, '', '', '', '', 1, 186),
(614, 'Năng Lượng Xanh/20', '', '2012-05-07 07:35:14', 'nang-luong-xanh20-thumb.jpg', 'nang-luong-xanh20.jpg', '', '<p>Năng Lượng Xanh/20</p>', '', '<p><strong><span style="color:#ff0000;">THÔNG TIN CHI TIẾT:</span></strong></p>\n<p>- Kích thước (Rộng x Dài x Cao): 1.700 x 2.000 x 1.200</p>\n<p>- Dung tích: 200 L</p>\n<p>- Ống thu nhiệt được dập thương hiệu độc quyền <strong><span style="color:#008000;">Năng lượng Xanh</span></strong> (chống hàng giải): Ø58 x 1800 mm</p>\n<p>- Ruột bồn được làm bằng inox theo chuẩn vệ sinh y tế</p>\n<p>- Vỏ bồn, khung chân được làm bằng inox 2 lớp Inox 304 lớp trong và lớp ngoài</p>\n<p>- Sản xuất tại Việt Nam theo công nghệ Đức</p>\n<p>- Người sử dụng: 5 - 6</p>\n<p>- Sản phẩm <strong><span style="color:#008000;">Năng Lượng Xanh</span></strong> được Bảo hành: 7 năm, bảo trì 7 năm, mỗi năm 1 lần miễn phí</p>\n<p><strong>*Đặc biệt ống thu nhiệt Lõi Đỏ hấp thụ nhanh hơn từ 20 - 25% so với lõi đen</strong></p>\n<p> </p>\n<p><em><span style="color:#000000;"><strong>Mọi chi tiết xin vui lòng liên hệ:</strong></span></em></p>\n<p><span style="color:#ff6600;"><strong>CÔNG TY TNHH MTV TUẤN HÒA PHÁT</strong></span></p>\n<p><span style="color:#ff6600;"><strong>Điện thoại: 0612.227.669 - Hotline: 0937.268.669</strong></span></p>\n<p><span style="color:#ff6600;"><strong>Địa chỉ: 1/18, KP5. P. Trảng Dài, TP. Biên Hòa, Tỉnh Đồng Nai</strong></span></p>', '', 'nang-luong-xanh20', '', '- Kích thước (Rộng x Dài x Cao): 1.500 x 2.000 x 1.200\n\n- Dung tích: 180 L', '', 0, 4, '13.000.000 VND', 0, 0, '', '', '', '', 1, 186),
(615, 'Năng Lượng Xanh/24', '', '2012-05-07 07:39:48', 'nang-luong-xanh24-thumb.jpg', 'nang-luong-xanh24.jpg', '', '<p>Năng Lượng Xanh/24</p>', '', '<p><strong><span style="color:#ff0000;">THÔNG TIN CHI TIẾT:</span></strong></p>\n<p>- Kích thước (Rộng x Dài x Cao): 1.900 x 2.000 x 1.200</p>\n<p>- Dung tích: 240 L</p>\n<p>- Ống thu nhiệt được dập thương hiệu độc quyền <strong><span style="color:#008000;">Năng lượng Xanh</span></strong> (chống hàng giải): Ø58 x 1800 mm</p>\n<p>- Ruột bồn được làm bằng inox theo chuẩn vệ sinh y tế</p>\n<p>- Vỏ bồn, khung chân được làm bằng inox 2 lớp Inox 304 lớp trong và lớp ngoài</p>\n<p>- Sản xuất tại Việt Nam theo công nghệ Đức</p>\n<p>- Người sử dụng: 6 -7</p>\n<p>- Sản phẩm <strong><span style="color:#008000;">Năng Lượng Xanh</span> </strong>được Bảo hành: 7 năm, bảo trì 7 năm, mỗi năm 1 lần miễn phí</p>\n<p><strong>*Đặc biệt ống thu nhiệt Lõi Đỏ hấp thụ nhanh hơn từ 20 - 25% so với lõi đen</strong></p>\n<p><span style="color:#000000;"><strong> </strong></span></p>\n<p><em><span style="color:#000000;"><strong>Mọi chi tiết xin vui lòng liên hệ:</strong></span></em></p>\n<p><span style="color:#ff6600;"><strong>CÔNG TY TNHH MTV TUẤN HÒA PHÁT</strong></span></p>\n<p><span style="color:#ff6600;"><strong>Điện thoại: 0612.227.669 - Hotline: 0937.268.669</strong></span></p>\n<p><span style="color:#ff6600;"><strong>Địa chỉ: 1/18, KP5. P. Trảng Dài, TP. Biên Hòa, Tỉnh Đồng Nai</strong></span></p>', '', 'nang-luong-xanh24', '', 'Kích thước (Rộng x Dài x Cao): 1.900 x 2.000 x 1.200\n\n- Dung tích: 240 L', '', 0, 3, '17.000.000 VND', 0, 0, '', '', '', '', 1, 186),
(616, 'Năng Lượng Xanh/30', '', '2012-05-07 07:44:02', 'nang-luong-xanh300-thumb.jpg', 'nang-luong-xanh300.jpg', '', '<p>Năng Lượng Xanh/30</p>', '', '<p style="text-align:justify;"><strong><span style="color:#ff0000;">THÔNG TIN CHI TIẾT:</span></strong></p>\n<p style="text-align:justify;">- Kích thước (Rộng x Dài x Cao): 2.100 x 2.000 x 1.200</p>\n<p style="text-align:justify;">- Dung tích: 300 L</p>\n<p style="text-align:justify;">- Ống thu nhiệt được dập thương hiệu độc quyền <span style="color:#008000;"><strong>Năng lượng Xanh</strong></span> (chống hàng giải): Ø58 x 1800 mm</p>\n<p style="text-align:justify;">- Ruột bồn được làm bằng inox theo chuẩn vệ sinh y tế</p>\n<p style="text-align:justify;">- Vỏ bồn, khung chân được làm bằng inox 2 lớp Inox 304 lớp trong và lớp ngoài</p>\n<p style="text-align:justify;">- Sản xuất tại Việt Nam theo công nghệ Đức</p>\n<p style="text-align:justify;">- Người sử dụng: 7 -8</p>\n<p style="text-align:justify;">- Sản phẩm <strong><span style="color:#008000;">Năng Lượng Xanh</span></strong> được Bảo hành: 7 năm, bảo trì 7 năm, mỗi năm 1 lần miễn phí</p>\n<p style="text-align:justify;">*Đặc biệt ống thu nhiệt Lõi Đỏ hấp thụ nhanh hơn từ 20 - 25% so với lõi đen</p>\n<p style="text-align:justify;"> </p>\n<p style="text-align:justify;"><em><strong>Mọi chi tiết xin vui lòng liên hệ:</strong></em></p>\n<p style="text-align:justify;"><strong><span style="color:#ff6600;">CÔNG TY TNHH MTV TUẤN HÒA PHÁT</span></strong></p>\n<p style="text-align:justify;"><strong><span style="color:#ff6600;">Điện thoại: 0612.227.669 - Hotline: 0937.268.669</span></strong></p>\n<p style="text-align:justify;"><strong><span style="color:#ff6600;">Địa chỉ: 1/18, KP5. P. Trảng Dài, TP. Biên Hòa, Tỉnh Đồng Nai</span></strong></p>', '', 'nang-luong-xanh30', '', 'Kích thước (Rộng x Dài x Cao): 2.100 x 2.000 x 1.200\n\nDung tích: 300 L', '', 0, 2, '19.200.000', 0, 0, '', '', '', '', 1, 186),
(617, 'Năng Lượng Xanh/35', '', '2012-05-07 07:47:43', 'nang-luong-xanh350-thumb.jpg', 'nang-luong-xanh350.jpg', '', '<p>Năng Lượng Xanh/35</p>', '', '<p style="text-align:justify;"><span style="color:#ff0000;"><strong>THÔNG TIN CHI TIẾT:</strong></span></p>\n<p style="text-align:justify;">- Kích thước (Rộng x Dài x Cao): 3.300 x 2.000 x 1.200</p>\n<p style="text-align:justify;">- Dung tích: 350 L</p>\n<p style="text-align:justify;">- Ống thu nhiệt được dập thương hiệu độc quyền <strong><span style="color:#008000;">Năng lượng Xanh</span></strong> (chống hàng giải): Ø58 x 1800 mm</p>\n<p style="text-align:justify;">- Ruột bồn được làm bằng inox theo chuẩn vệ sinh y tế</p>\n<p style="text-align:justify;">- Vỏ bồn, khung chân được làm bằng inox 2 lớp Inox 304 lớp trong và lớp ngoài</p>\n<p style="text-align:justify;">- Sản xuất tại Việt Nam theo công nghệ Đức</p>\n<p style="text-align:justify;">- Người sử dụng: 8 -10</p>\n<p style="text-align:justify;">- Sản phẩm <strong><span style="color:#008000;">Năng Lượng Xanh</span></strong> được Bảo hành: 7 năm, bảo trì 7 năm, mỗi năm 1 lần miễn phí</p>\n<p style="text-align:justify;"><strong>*Đặc biệt ống thu nhiệt Lõi Đỏ hấp thụ nhanh hơn từ 20 - 25% so với lõi đen</strong></p>\n<p style="text-align:justify;"><span style="color:#000000;"><em><strong> </strong></em></span></p>\n<p style="text-align:justify;"><span style="color:#000000;"><em><strong>Mọi chi tiết xin vui lòng liên hệ:</strong></em></span></p>\n<p style="text-align:justify;"><strong><span style="color:#ff6600;">CÔNG TY TNHH MTV TUẤN HÒA PHÁT</span></strong></p>\n<p style="text-align:justify;"><strong><span style="color:#ff6600;">Điện thoại: 0612.227.669 - Hotline: 0937.268.669</span></strong></p>\n<p style="text-align:justify;"><strong><span style="color:#ff6600;">Địa chỉ: 1/18, KP5. P. Trảng Dài, TP. Biên Hòa, Tỉnh Đồng Nai</span></strong></p>', '', 'nang-luong-xanh35', '', '', '', 0, 6, '24.500.000 VND', 0, 0, '', '', '', '', 1, 186),
(618, 'Năng Lượng Xanh T/12', '', '2012-05-07 08:06:52', 'nang-luong-xanh-t12-thumb.jpg', 'nang-luong-xanh-t12.jpg', '', '<p>Năng Lượng Xanh T/12</p>', '', '<p style="text-align:justify;"><strong><span style="color:#ff0000;">THÔNG TIN CHI TIẾT:</span></strong></p>\n<p style="text-align:justify;">- Kích thước (Rộng x Dài x Cao): 1.100 x 2.000 x 1.200</p>\n<p style="text-align:justify;">- Dung tích: 120 L</p>\n<p style="text-align:justify;">- Ống thu nhiệt được dập thương hiệu độc quyền Năng lượng Xanh (chống hàng giải): Ø58 x 1800 mm</p>\n<p style="text-align:justify;">- Ruột bồn được làm bằng inox theo chuẩn vệ sinh y tế</p>\n<p style="text-align:justify;">- Vỏ bồn, khung chân được làm bằng inox 2 lớp Inox 304 lớp trong và lớp ngoài</p>\n<p style="text-align:justify;">- Sản xuất tại Việt Nam theo công nghệ Đức</p>\n<p style="text-align:justify;">- Người sử dụng: 1 -2</p>\n<p style="text-align:justify;">- Sản phẩm Năng Lượng Xanh được Bảo hành: 6 năm, bảo trì 6 năm, mỗi năm 1 lần miễn phí</p>\n<p style="text-align:justify;"><strong>*Đặc biệt ống thu nhiệt Lõi Đỏ hấp thụ nhanh hơn từ 20 - 25% so với lõi đen</strong></p>\n<p style="text-align:justify;"> </p>\n<p style="text-align:justify;"><em><span style="color:#000000;"><strong>Mọi chi tiết xin vui lòng liên hệ:</strong></span></em></p>\n<p style="text-align:justify;"><span style="color:#ff6600;"><strong>CÔNG TY TNHH MTV TUẤN HÒA PHÁT</strong></span></p>\n<p style="text-align:justify;"><span style="color:#ff6600;"><strong>Điện thoại: 0612.227.669 - Hotline: 0937.268.669</strong></span></p>\n<p style="text-align:justify;"><span style="color:#ff6600;"><strong>Địa chỉ: 1/18, KP5. P. Trảng Dài, TP. Biên Hòa, Tỉnh Đồng Nai</strong></span></p>', '', 'nang-luong-xanh-t12', '', 'Kích thước (Rộng x Dài x Cao): 1.100 x 2.000 x 1.200\n\nDung tích: 120 L', '', 0, 23, '6.800.000 VND', 0, 0, '', '', '', '', 1, 186),
(619, 'Năng Lượng Xanh T/15', '', '2012-05-07 08:08:46', 'nang-luong-xanh-t15-thumb.jpg', 'nang-luong-xanh-t15.jpg', '', '<p>Năng Lượng Xanh T/15</p>', '', '<p style="text-align:justify;"><span style="color:#ff0000;"><strong>THÔNG TIN CHI TIẾT:</strong></span></p>\n<p style="text-align:justify;">- Kích thước (Rộng x Dài x Cao): 1.300 x 2.000 x 1.200</p>\n<p style="text-align:justify;">- Dung tích: 150 L</p>\n<p style="text-align:justify;">- Ống thu nhiệt được dập thương hiệu độc quyền <strong><span style="color:#008000;">Năng lượng Xanh</span></strong> (chống hàng giải): Ø58 x 1800 mm</p>\n<p style="text-align:justify;">- Ruột bồn được làm bằng inox theo chuẩn vệ sinh y tế</p>\n<p style="text-align:justify;">- Vỏ bồn, khung chân được làm bằng inox 2 lớp Inox 304 lớp trong và lớp ngoài</p>\n<p style="text-align:justify;">- Sản xuất tại Việt Nam theo công nghệ Đức</p>\n<p style="text-align:justify;">- Người sử dụng: 3 -4</p>\n<p style="text-align:justify;">- Sản phẩm <strong><span style="color:#008000;">Năng Lượng Xanh</span></strong> được Bảo hành: 6 năm, bảo trì 6 năm, mỗi năm 1 lần miễn phí</p>\n<p style="text-align:justify;"><strong>*Đặc biệt ống thu nhiệt Lõi Đỏ hấp thụ nhanh hơn từ 20 - 25% so với lõi đen</strong></p>\n<p style="text-align:justify;"><span style="color:#ff6600;"><strong> </strong></span></p>\n<p style="text-align:justify;"><em><span style="color:#000000;"><strong>Mọi chi tiết xin vui lòng liên hệ:</strong></span></em></p>\n<p style="text-align:justify;"><span style="color:#ff6600;"><strong>CÔNG TY TNHH MTV TUẤN HÒA PHÁT</strong></span></p>\n<p style="text-align:justify;"><span style="color:#ff6600;"><strong>Điện thoại: 0612.227.669 - Hotline: 0937.268.669</strong></span></p>\n<p style="text-align:justify;"><span style="color:#ff6600;"><strong>Địa chỉ: 1/18, KP5. P. Trảng Dài, TP. Biên Hòa, Tỉnh Đồng Nai</strong></span></p>', '', 'nang-luong-xanh-t15', '', 'Kích thước (Rộng x Dài x Cao): 1.300 x 2.000 x 1.200\nDung tích: 150 L', '', 0, 13, '8.5000.000 VND', 0, 0, '', '', '', '', 1, 186),
(620, 'Năng Lượng Xanh T/18', '', '2012-05-07 08:10:00', 'nang-luong-xanh-t18-thumb.jpg', 'nang-luong-xanh-t18.jpg', '', '<p>Năng Lượng Xanh T/18</p>', '', '<p style="text-align:justify;"><span style="color:#ff0000;"><strong>THÔNG TIN CHI TIẾT:</strong></span></p>\n<p style="text-align:justify;">- Kích thước (Rộng x Dài x Cao): 1.500 x 2.000 x 1.200</p>\n<p style="text-align:justify;">- Dung tích: 180 L</p>\n<p style="text-align:justify;">- Ống thu nhiệt được dập thương hiệu độc quyền <strong><span style="color:#008000;">Năng lượng Xanh</span></strong> (chống hàng giải): Ø58 x 1800 mm</p>\n<p style="text-align:justify;">- Ruột bồn được làm bằng inox theo chuẩn vệ sinh y tế</p>\n<p style="text-align:justify;">- Vỏ bồn, khung chân được làm bằng inox 2 lớp Inox 304 lớp trong và lớp ngoài</p>\n<p style="text-align:justify;">- Sản xuất tại Việt Nam theo công nghệ Đức</p>\n<p style="text-align:justify;">- Người sử dụng: 4 - 5</p>\n<p style="text-align:justify;">- Sản phẩm <strong><span style="color:#008000;">Năng Lượng Xanh</span></strong> được Bảo hành: 6 năm, bảo trì 6 năm, mỗi năm 1 lần miễn phí</p>\n<p style="text-align:justify;"><strong>*Đặc biệt ống thu nhiệt Lõi Đỏ hấp thụ nhanh hơn từ 20 - 25% so với lõi đen</strong></p>\n<p style="text-align:justify;"><em><span style="color:#000000;"><strong> </strong></span></em></p>\n<p style="text-align:justify;"><em><span style="color:#000000;"><strong>Mọi chi tiết xin vui lòng liên hệ:</strong></span></em></p>\n<p style="text-align:justify;"><span style="color:#ff6600;"><strong>CÔNG TY TNHH MTV TUẤN HÒA PHÁT</strong></span></p>\n<p style="text-align:justify;"><span style="color:#ff6600;"><strong>Điện thoại: 0612.227.669 - Hotline: 0937.268.669</strong></span></p>\n<p style="text-align:justify;"><span style="color:#ff6600;"><strong>Địa chỉ: 1/18, KP5. P. Trảng Dài, TP. Biên Hòa, Tỉnh Đồng Nai</strong></span></p>', '', 'nang-luong-xanh-t18', '', 'Kích thước (Rộng x Dài x Cao): 1.300 x 2.000 x 1.200\n\nDung tích: 150 L', '', 0, 1, '9.900.000 VND', 0, 0, '', '', '', '', 1, 186),
(621, 'Năng Lượng Xanh T/20', '', '2012-05-07 08:12:37', 'nang-luong-xanh-t20-thumb.jpg', 'nang-luong-xanh-t20.jpg', '', '<p>Năng Lượng Xanh T/20</p>', '', '<p style="text-align:justify;"><strong><span style="color:#ff0000;">THÔNG TIN CHI TIẾT:</span></strong></p>\n<p style="text-align:justify;">- Kích thước (Rộng x Dài x Cao): 1.700 x 2.000 x 1.200</p>\n<p style="text-align:justify;">- Dung tích: 200 L</p>\n<p style="text-align:justify;">- Ống thu nhiệt được dập thương hiệu độc quyền <strong><span style="color:#008000;">Năng lượng Xanh</span></strong> (chống hàng giải): Ø58 x 1800 mm</p>\n<p style="text-align:justify;">- Ruột bồn được làm bằng inox theo chuẩn vệ sinh y tế</p>\n<p style="text-align:justify;">- Vỏ bồn, khung chân được làm bằng inox 2 lớp Inox 304 lớp trong và lớp ngoài</p>\n<p style="text-align:justify;">- Sản xuất tại Việt Nam theo công nghệ Đức</p>\n<p style="text-align:justify;">- Người sử dụng: 5 - 6</p>\n<p style="text-align:justify;">- Sản phẩm <span style="color:#008000;"><strong>Năng Lượng Xanh</strong></span> được Bảo hành: 6 năm, bảo trì 6 năm, mỗi năm 1 lần miễn phí</p>\n<p style="text-align:justify;"><strong>*Đặc biệt ống thu nhiệt Lõi Đỏ hấp thụ nhanh hơn từ 20 - 25% so với lõi đen</strong></p>\n<p style="text-align:justify;"><span style="color:#000000;"><strong> </strong></span></p>\n<p style="text-align:justify;"><span style="color:#000000;"><strong>Mọi chi tiết xin vui lòng liên hệ:</strong></span></p>\n<p style="text-align:justify;"><span style="color:#ff6600;"><strong>CÔNG TY TNHH MTV TUẤN HÒA PHÁT</strong></span></p>\n<p style="text-align:justify;"><span style="color:#ff6600;"><strong>Điện thoại: 0612.227.669 - Hotline: 0937.268.669</strong></span></p>\n<p style="text-align:justify;"><span style="color:#ff6600;"><strong>Địa chỉ: 1/18, KP5. P. Trảng Dài, TP. Biên Hòa, Tỉnh Đồng Nai</strong></span></p>', '', 'nang-luong-xanh-t20', '', 'Kích thước (Rộng x Dài x Cao): 1.700 x 2.000 x 1.200\nDung tích: 200 L', '', 0, 11, '12.200.000 VND', 0, 0, '', '', '', '', 1, 186),
(622, 'Năng Lượng Xanh T/24', '', '2012-05-07 08:15:32', 'nang-luong-xanh-t24-thumb.jpg', 'nang-luong-xanh-t24.jpg', '', '<p>Năng Lượng Xanh T/24</p>', '', '<p style="text-align:justify;"><strong>THÔNG TIN CHI TIẾT:</strong></p>\n<p style="text-align:justify;">- Kích thước (Rộng x Dài x Cao): 1.900 x 2.000 x 1.200</p>\n<p style="text-align:justify;">- Dung tích: 240 L</p>\n<p style="text-align:justify;">- Ống thu nhiệt được dập thương hiệu độc quyền<strong><span style="color:#008000;"> Năng lượng Xanh</span></strong> (chống hàng giải): Ø58 x 1800 mm</p>\n<p style="text-align:justify;">- Ruột bồn được làm bằng inox theo chuẩn vệ sinh y tế</p>\n<p style="text-align:justify;">- Vỏ bồn, khung chân được làm bằng inox 2 lớp Inox 304 lớp trong và lớp ngoài</p>\n<p style="text-align:justify;">- Sản xuất tại Việt Nam theo công nghệ Đức</p>\n<p style="text-align:justify;">- Người sử dụng: 6 -7</p>\n<p style="text-align:justify;">- Sản phẩm <strong><span style="color:#008000;">Năng Lượng Xanh</span></strong> được Bảo hành: 6 năm, bảo trì 6 năm, mỗi năm 1 lần miễn phí</p>\n<p style="text-align:justify;"><strong>*Đặc biệt ống thu nhiệt Lõi Đỏ hấp thụ nhanh hơn từ 20 - 25% so với lõi đen</strong></p>\n<p style="text-align:justify;"><span style="color:#000000;"><strong> </strong></span></p>\n<p style="text-align:justify;"><span style="color:#000000;"><strong>Mọi chi tiết xin vui lòng liên hệ:</strong></span></p>\n<p style="text-align:justify;"><strong><span style="color:#ff6600;">CÔNG TY TNHH MTV TUẤN HÒA PHÁT</span></strong></p>\n<p style="text-align:justify;"><strong><span style="color:#ff6600;">Điện thoại: 0612.227.669 - Hotline: 0937.268.669</span></strong></p>\n<p style="text-align:justify;"><strong><span style="color:#ff6600;">Địa chỉ: 1/18, KP5. P. Trảng Dài, TP. Biên Hòa, Tỉnh Đồng Nai</span></strong></p>', '', 'nang-luong-xanh-t24', '', 'Kích thước (Rộng x Dài x Cao): 1.900 x 2.000 x 1.200\n\nDung tích: 240 L', '', 0, 10, '13.900.000 VND', 0, 0, '', '', '', '', 1, 186),
(623, 'Năng Lượng Xanh T/30', '', '2012-05-07 08:18:10', 'nang-luong-xanh-t30-thumb.jpg', 'nang-luong-xanh-t30.jpg', '', '<p>Năng Lượng Xanh T/30</p>', '', '<p><strong><span style="color:#ff0000;">THÔNG TIN CHI TIẾT:</span></strong></p>\n<p>- Kích thước (Rộng x Dài x Cao): 2.100 x 2.000 x 1.200</p>\n<p>- Dung tích: 300 L</p>\n<p>- Ống thu nhiệt được dập thương hiệu độc quyền <strong><span style="color:#008000;">Năng lượng Xanh</span></strong> (chống hàng giải): Ø58 x 1800 mm</p>\n<p>- Ruột bồn được làm bằng inox theo chuẩn vệ sinh y tế</p>\n<p>- Vỏ bồn, khung chân được làm bằng inox 2 lớp Inox 304 lớp trong và lớp ngoài</p>\n<p>- Sản xuất tại Việt Nam theo công nghệ Đức</p>\n<p>- Người sử dụng: 7 -8</p>\n<p>- Sản phẩm <strong><span style="color:#008000;">Năng Lượng Xanh</span> </strong>được Bảo hành: 6 năm, bảo trì 6 năm, mỗi năm 1 lần miễn phí</p>\n<p><strong>*Đặc biệt ống thu nhiệt Lõi Đỏ hấp thụ nhanh hơn từ 20 - 25% so với lõi đen</strong></p>\n<p> </p>\n<p><em><strong>Mọi chi tiết xin vui lòng liên hệ:</strong></em></p>\n<p><span style="color:#ff6600;"><strong>CÔNG TY TNHH MTV TUẤN HÒA PHÁT</strong></span></p>\n<p><span style="color:#ff6600;"><strong>Điện thoại: 0612.227.669 - Hotline: 0937.268.669</strong></span></p>\n<p><span style="color:#ff6600;"><strong>Địa chỉ: 1/18, KP5. P. Trảng Dài, TP. Biên Hòa, Tỉnh Đồng Nai</strong></span></p>', '', 'nang-luong-xanh-t30', '', 'Kích thước (Rộng x Dài x Cao): 2.100 x 2.000 x 1.200\nDung tích: 300 L', '', 0, 9, '15.700.000 VND', 0, 0, '', '', '', '', 1, 186),
(624, 'Năng Lượng Xanh T/35', '', '2012-05-07 08:20:36', 'nang-luong-xanh-t35-thumb.jpg', 'nang-luong-xanh-t35.jpg', '', '<p>Năng Lượng Xanh T/35</p>', '', '<p style="text-align:justify;"><span style="color:#ff0000;"><strong>THÔNG TIN CHI TIẾT:</strong></span></p>\n<p style="text-align:justify;">- Kích thước (Rộng x Dài x Cao): 3.300 x 2.000 x 1.200</p>\n<p style="text-align:justify;">- Dung tích: 350 L</p>\n<p style="text-align:justify;">- Ống thu nhiệt được dập thương hiệu độc quyền <strong><span style="color:#008000;">Năng lượng Xanh</span></strong> (chống hàng giải): Ø58 x 1800 mm</p>\n<p style="text-align:justify;">- Ruột bồn được làm bằng inox theo chuẩn vệ sinh y tế</p>\n<p style="text-align:justify;">- Vỏ bồn, khung chân được làm bằng inox 2 lớp Inox 304 lớp trong và lớp ngoài</p>\n<p style="text-align:justify;">- Sản xuất tại Việt Nam theo công nghệ Đức</p>\n<p style="text-align:justify;">- Người sử dụng: 8 - 10</p>\n<p style="text-align:justify;">- Sản phẩm <strong><span style="color:#008000;">Năng Lượng Xanh</span></strong> được Bảo hành: 6 năm, bảo trì 6 năm, mỗi năm 1 lần miễn phí</p>\n<p style="text-align:justify;"><em><strong>*Đặc biệt ống thu nhiệt Lõi Đỏ hấp thụ nhanh hơn từ 20 - 25% so với lõi đen</strong></em></p>\n<p style="text-align:justify;"><em><strong> </strong></em></p>\n<p style="text-align:justify;"><em><strong>Mọi chi tiết xin vui lòng liên hệ:</strong></em></p>\n<p style="text-align:justify;"><span style="color:#ff6600;"><strong>CÔNG TY TNHH MTV TUẤN HÒA PHÁT</strong></span></p>\n<p style="text-align:justify;"><span style="color:#ff6600;"><strong>Điện thoại: 0612.227.669 - Hotline: 0937.268.669</strong></span></p>\n<p style="text-align:justify;"><span style="color:#ff6600;"><strong>Địa chỉ: 1/18, KP5. P. Trảng Dài, TP. Biên Hòa, Tỉnh Đồng Nai</strong></span></p>', '', 'nang-luong-xanh-t35', '', 'Kích thước (Rộng x Dài x Cao): 3.300 x 2.000 x 1.200\n\n- Dung tích: 350 L', '', 0, 8, '16.000.000 VND', 0, 0, '', '', '', '', 1, 186),
(625, '﻿ Bàn cầu 2 Khối', '', '2012-05-07 08:29:22', '-ban-cau-2-khoi-thumb.jpg', '-ban-cau-2-khoi.jpg', '', '<p>Bàn cầu</p>', '', '<p><span style="color:#000080;"><strong>Đặc tính kỹ thuật</strong></span></p>\n<p>Siêu tiết kiệm nước (3,0 / 6,0 lít)</p>\n<p>Xả nhấn 2 nút riêng biệt (đại/tiểu)</p>\n<p>Xả xoáy</p>\n<p>Có kèm van vặn khoá A-703-4, đế thải nước TR-N</p>', '', '-ban-cau-2-khoi', '', 'Siêu tiết kiệm nước (3,0 / 6,0 lít)\n\nXả nhấn 2 nút riêng biệt (đại/tiểu)\n\nXả xoáy\n\nCó kèm van vặn khoá A-703-4, đế thải nước TR-N', '', 0, 15, '', 0, 0, '', '', '', '', 1, 187),
(626, 'Bàn cầu 1 Khối', '', '2012-05-07 08:33:28', 'ban-cau-1-khoi-thumb.jpg', 'ban-cau-1-khoi.jpg', '', '<p>Bàn cầu 1 Khối</p>', '', '<p><strong><span style="color:#000080;">Đặc tính kỹ thuật</span></strong></p>\n<p>Dạng bàn cầu một khối xả thẳng.</p>\n<p>Xả xi phông - xoáy hút mạnh mẽ, rửa trôi mọi vết bẩn, làm cho lòng bàn cầu luôn sạch sẽ.Xả nhấn 2 nút riêng biệt.</p>\n<p>Xả đại 6.5 lít - Xả tiểu 4.5 Lít.</p>\n<p>Công nghệ chống bám bẩn Proguad.</p>\n<p>Công nghệ chống khuẩn HyperKilamic.</p>\n<p>Đã bao gồm van vặn khóa, đế thải nước TR-SS.</p>', '', 'ban-cau-1-khoi', '', 'Dạng bàn cầu một khối xả thẳng.\n\nXả xi phông - xoáy hút mạnh mẽ, rửa trôi mọi vết bẩn, làm cho lòng bàn cầu luôn sạch sẽ.Xả nhấn 2 nút riêng biệt.', '', 0, 24, 'VND', 0, 0, '', '', '', '', 1, 187),
(627, 'Bàn cầu 2 Khối tiêu chuẩn', '', '2012-05-07 08:35:16', 'ban-cau-2-khoi-tieu-chuan-thumb.jpg', 'ban-cau-2-khoi-tieu-chuan.jpg', '', '<p>Bàn cầu 2 Khối tiêu chuẩn</p>', '', '<p><span style="color:#000080;"><strong>Đặc tính kỹ thuật</strong></span></p>\n<p>Thiết kế mới, khó bám bẩn, vệ sinh dễ dàng hơn, sạch hơn.</p>\n<p>Công nghệ ECO 4.5 - Siêu tiết kiệm nước (4.5L).</p>\n<p>Có 2 sự lựa chọn: Nắp đóng êm hoặc nắp thường.Xả xoáy</p>', '', 'ban-cau-2-khoi-tieu-chuan', '', 'Thiết kế mới, khó bám bẩn, vệ sinh dễ dàng hơn, sạch hơn.\n\nCông nghệ ECO 4.5 - Siêu tiết kiệm nước (4.5L).\n\nCó 2 sự lựa chọn: Nắp đóng êm hoặc nắp thường.Xả xoáy', '', 0, 16, '', 0, 0, '', '', '', '', 1, 187),
(628, 'Bàn cầu treo tường', '', '2012-05-07 08:36:34', 'ban-cau-treo-tuong-thumb.jpg', 'ban-cau-treo-tuong.jpg', '', '<p>Bàn cầu treo tường</p>', '', '<p><strong><span style="color:#0000ff;">Đặc tính kỹ thuật</span></strong></p>\n<p>Bàn cầu treo tường thoát ngang sử dụng van xả tay gạt.</p>\n<p>Mức nước xả: 0,8L</p>\n<p>Điều kiện áp lực nước cấp tối thiểu 0,7Kgf/cm2</p>\n<p>Kiểu xả xoáy</p>\n<p>Có 2 sự lựa chọn: Nắp đóng êm hoặc nắp đóng thường.</p>\n<p>Đã bao gồm van xả, gioăng nối ống xả và phụ kiện treo tường</p>', '', 'ban-cau-treo-tuong', '', 'Bàn cầu treo tường thoát ngang sử dụng van xả tay gạt.\n\nMức nước xả: 0,8L\n\nĐiều kiện áp lực nước cấp tối thiểu 0,7Kgf/cm2', '', 0, 18, '', 0, 0, '', '', '', '', 1, 187),
(629, 'Vòi nước', '', '2012-05-07 08:39:51', 'voi-nuoc-thumb.jpg', 'voi-nuoc.jpg', '', '<p>Vòi nước</p>', '', '<p><em><strong>Mọi chi tiết xin vui lòng liên hệ:</strong></em></p>\n<p><span style="color:#ff6600;"><strong>CÔNG TY TNHH MTV TUẤN HÒA PHÁT</strong></span></p>\n<p><span style="color:#ff6600;"><strong>Điện thoại: 0612.227.669 - Hotline: 0937.268.669</strong></span></p>\n<p><span style="color:#ff6600;"><strong>Địa chỉ: 1/18, KP5. P. Trảng Dài, TP. Biên Hòa, Tỉnh Đồng Nai</strong></span></p>', '', 'voi-nuoc', '', 'Vòi nước', '', 0, 19, '', 0, 0, '', '', '', '', 1, 187),
(630, 'Vòi Chậu Nước Lạnh', '', '2012-05-07 08:41:13', 'voi-chau-nuoc-lanh-thumb.jpg', 'voi-chau-nuoc-lanh.jpg', '', '<p>Vòi Chậu Nước Lạnh</p>', '', '<p>Vòi Chậu Nước Lạnh</p>', '', 'voi-chau-nuoc-lanh', '', 'Vòi Chậu Nước Lạnh', '', 0, 20, '', 0, 0, '', '', '', '', 1, 187),
(631, 'Sen Tắm Buồng Vách Kính', '', '2012-05-07 08:42:25', 'sen-tam-buong-vach-kinh-thumb.jpg', 'sen-tam-buong-vach-kinh.jpg', '', '<p>Sen Tắm Buồng Vách Kính</p>', '', '<p>Sen Tắm Buồng Vách Kính</p>', '', 'sen-tam-buong-vach-kinh', '', 'Sen Tắm Buồng Vách Kính', '', 0, 21, '', 0, 0, '', '', '', '', 1, 187),
(632, 'Vòi sen', '', '2012-05-07 08:43:43', 'voi-sen-thumb.jpg', 'voi-sen.jpg', '', '<p>Vòi sen</p>', '', '<p>Vòi sen</p>', '', 'voi-sen', '', 'Vòi sen', '', 0, 22, '', 0, 0, '', '', '', '', 1, 187),
(633, 'Vòi xịt', '', '2012-05-07 08:45:30', 'voi-xit-thumb.jpg', 'voi-xit.jpg', '', '<p>Vòi xịt</p>', '', '<p>Vòi xịt</p>', '', 'voi-xit', '', 'Vòi xịt', '', 0, 12, '', 0, 0, '', '', '', '', 1, 187),
(634, 'Chậu đặt bàn', '', '2012-05-07 08:47:47', 'chau-dat-ban-thumb.jpg', 'chau-dat-ban.jpg', '', '<p>Chậu đặt bàn</p>', '', '<p><strong><span style="color:#008000;">Đặc tính kỹ thuật</span></strong></p>\n<p>Chậu âm bàn sử dụng công nghệ HYPERKILAMIC + PROGUARD</p>\n<p>Đã bao gồm bộ giá đỡ</p>', '', 'chau-dat-ban', '', 'Chậu âm bàn sử dụng công nghệ HYPERKILAMIC + PROGUARD\n\nĐã bao gồm bộ giá đỡ', '', 0, 26, 'VND', 0, 0, '', '', '', '', 1, 187),
(635, 'Chậu để bàn', '', '2012-05-07 08:48:55', 'chau-de-ban-thumb.jpg', 'chau-de-ban.jpg', '', '<p>Chậu để bàn</p>', '', '<p>Chậu để bàn</p>', '', 'chau-de-ban', '', 'Chậu để bàn', '', 0, 17, '', 0, 0, '', '', '', '', 1, 187),
(636, 'Chậu treo tường', '', '2012-05-07 08:49:54', 'chau-treo-tuong-thumb.jpg', 'chau-treo-tuong.jpg', '', '<p>Chậu treo tường</p>', '', '<p>Chậu treo tường</p>', '', 'chau-treo-tuong', '', 'Chậu treo tường', '', 0, 14, '', 0, 0, '', '', '', '', 1, 187),
(783, '079A-1-2', '', '2012-05-08 08:27:47', '079a-1-2-thumb.jpg', '079a-1-2.jpg', '', '<p>079A-1-2</p>', '', '<p><strong><em>Mọi chi tiết xin vui lòng liên hệ:</em></strong></p>\n<p>CÔNG TY TNHH MTV TUẤN HÒA PHÁT</p>\n<p>Điện thoại: 0612.227.669 - Hotline: 0937.268.669</p>\n<p>Địa chỉ: 1/18, KP5. P. Trảng Dài, TP. Biên Hòa, Tỉnh Đồng Nai</p>', '', '079a-1-2', '', '', '', 0, 27, '', 0, 0, '', '', '', '', 1, 224),
(784, '079A-12-2', '', '2012-05-08 08:28:53', '079a-12-2-thumb.jpg', '079a-12-2.jpg', '', '<p>079A-12-2</p>', '', '<p><strong>Mọi chi tiết xin vui lòng liên hệ:</strong></p>\n<p>CÔNG TY TNHH MTV TUẤN HÒA PHÁT</p>\n<p>Điện thoại: 0612.227.669 - Hotline: 0937.268.669</p>\n<p>Địa chỉ: 1/18, KP5. P. Trảng Dài, TP. Biên Hòa, Tỉnh Đồng Nai</p>', '', '079a-12-2', '', '', '', 0, 28, '', 0, 0, '', '', '', '', 1, 224),
(785, '079A-14-2', '', '2012-05-08 08:29:36', '079a-14-2-thumb.jpg', '079a-14-2.jpg', '', '<p>079A-14-2</p>', '', '<p><em><strong>Mọi chi tiết xin vui lòng liên hệ:</strong></em></p>\n<p>CÔNG TY TNHH MTV TUẤN HÒA PHÁT</p>\n<p>Điện thoại: 0612.227.669 - Hotline: 0937.268.669</p>\n<p>Địa chỉ: 1/18, KP5. P. Trảng Dài, TP. Biên Hòa, Tỉnh Đồng Nai</p>', '', '079a-14-2', '', '', '', 0, 29, '', 0, 0, '', '', '', '', 1, 224),
(786, '079A-24-2', '', '2012-05-08 08:31:22', '079a-24-2-thumb.jpg', '079a-24-2.jpg', '', '<p>079A-24-2</p>', '', '<p><em><strong>Mọi chi tiết xin vui lòng liên hệ:</strong></em></p>\n<p>CÔNG TY TNHH MTV TUẤN HÒA PHÁT</p>\n<p>Điện thoại: 0612.227.669 - Hotline: 0937.268.669</p>\n<p>Địa chỉ: 1/18, KP5. P. Trảng Dài, TP. Biên Hòa, Tỉnh Đồng Nai</p>', '', '079a-24-2', '', '', '', 0, 30, '', 0, 0, '', '', '', '', 1, 224),
(787, '208-2', '', '2012-05-08 08:31:50', '208-2-thumb.jpg', '208-2.jpg', '', '<p>208-2</p>', '', '<p><em><strong>Mọi chi tiết xin vui lòng liên hệ:</strong></em></p>\n<p>CÔNG TY TNHH MTV TUẤN HÒA PHÁT</p>\n<p>Điện thoại: 0612.227.669 - Hotline: 0937.268.669</p>\n<p>Địa chỉ: 1/18, KP5. P. Trảng Dài, TP. Biên Hòa, Tỉnh Đồng Nai</p>', '', '208-2', '', '', '', 0, 31, '', 0, 0, '', '', '', '', 1, 224),
(788, '208A-1-2', 'test', '2012-05-08 08:32:29', '208a-1-2-thumb.jpg', '208a-1-2.jpg', '', '<p>208A-1-2</p>', '', '<p><em><strong>Mọi chi tiết xin vui lòng liên hệ:</strong></em></p>\r\n<p>CÔNG TY TNHH MTV TUẤN HÒA PHÁT</p>\r\n<p>Điện thoại: 0612.227.669 - Hotline: 0937.268.669</p>\r\n<p>Địa chỉ: 1/18, KP5. P. Trảng Dài, TP. Biên Hòa, Tỉnh Đồng Nai</p>', '', '208a-1-2', 'test', '', '', 0, 32, '', 0, 0, '', '', '', '', 1, 224);

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
) ENGINE=InnoDB  DEFAULT CHARSET=utf8 AUTO_INCREMENT=225 ;

--
-- Dumping data for table `dos_module_products_cat`
--

INSERT INTO `dos_module_products_cat` (`cat_id`, `cat_parent_id`, `cat_title`, `cat_titleen`, `preview`, `previewen`, `tag`, `tagen`, `description`, `descriptionen`, `pic_full`, `pic_desc`, `cat_order`, `cat_extra1`, `cat_extra2`, `cat_enable`, `dos_usernames_username`) VALUES
(186, 0, 'MÁY NƯỚC NÓNG NĂNG LƯỢNG MẶT TRỜI', '', '', '', 'may-nuoc-nong-nang-luong-mat-troi', '', 'MÁY NƯỚC NÓNG NĂNG LƯỢNG MẶT TRỜI', '', 'my-nc-nng-nng-lng-mt-tri.jpg', '', 2, '', '', 1, 'tuanhoaphat'),
(187, 0, 'THIẾT BỊ VỆ SINH', '', '', '', 'thiet-bi-ve-sinh', '', 'THIẾT BỊ VỆ SINH', '', 'thit-b-v-sinh.jpg', '', 3, '', '', 1, 'tuanhoaphat'),
(224, 0, 'SP TUẤN HÒA PHÁT', '', '', '', 'sp-tuan-hoa-phat', '', '', '', 'sp-tun-ha-pht.jpg', '', 4, '', '', 1, 'tuanhoaphat');

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
) ENGINE=InnoDB  DEFAULT CHARSET=utf8 AUTO_INCREMENT=50 ;

--
-- Dumping data for table `dos_module_services`
--

INSERT INTO `dos_module_services` (`record_id`, `title`, `titleen`, `preview`, `previewen`, `content`, `contenten`, `pic_full`, `hit`, `created`, `record_order`, `hot`, `extra_field1`, `extra_field2`, `tag`, `tagen`, `description`, `descriptionen`, `activated`, `dos_usernames_username`) VALUES
(45, 'Dịch Vụ Cầm Đồ', '', '', '', '<p><span style="color:#0000ff;font-size:12pt;"><strong>Dịch vụ cầm đồ giá cao, lãi suất thấp</strong></span></p>\n<p><strong>"Dịch vụ cầm đồ giá cao - lãi suất thấp"</strong></p>\n<p>* Chuyên cầm: điện thoai - laptop - xe máy (xe tỉnh) - ôtô - xe tải - giấy tờ nhà và đất</p>\n<p>* Nhận đáo hạn - giải chấp - HD thủ tục ngân hàng</p>\n<p>* Nhận hợp đồng xe du lịch đời mới</p>\n<p>* Thiết kế - thi công công trình nhà phố - biệt thự - cao ốc</p>\n<p>* Đảm bảo uy tín - chất lượng</p>\n<p>* Thủ tục nhanh gọn</p>\n<p>* Bảo mật thông tin khách hàng Từ khóa: Dịch vụ cầm đồ giá cao, lãi suất thấp, Dịch vụ cầm đồ giá cao, lãi suất thấp, Dịch vụ cầm đồ giá cao, lãi suất thấp, Dịch vụ cầm đồ giá cao, lãi suất thấp</p>', '', '', 4, '2012-05-07 05:39:35', 5, 0, '', '', 'dich-vu-cam-do', '', '', '', 1, 'tuanhoaphat'),
(46, 'Đại Lý Vé Máy Bay', '', '', '', '<p>Đại Lý Vé Máy Bay đang cập nhật ....</p>', '', '', 3, '2012-05-07 09:26:55', 1, 0, '', '', 'dai-ly-ve-may-bay', '', '', '', 1, 'tuanhoaphat'),
(47, 'San Lắp Mặt Bằng', '', '', '', '<p>Đang cập nhật ...</p>', '', '', 3, '2012-05-07 09:27:38', 3, 0, '', '', 'san-lap-mat-bang', '', '', '', 1, 'tuanhoaphat'),
(48, 'Xây dựng Dân Dụng &amp; CN', '', '', '', '<p>Đang cập nhật ...</p>', '', '', 3, '2012-05-07 09:28:12', 2, 0, '', '', 'xay-dung-dan-dung-cn', '', '', '', 1, 'tuanhoaphat'),
(49, 'Trang Trí Nội - Ngoại Thất', '', '', '', '<p>Đang cập nhật</p>', '', '', 3, '2012-05-07 09:29:12', 4, 0, '', '', 'trang-tri-noi-ngoai-that', '', '', '', 1, 'tuanhoaphat');

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
) ENGINE=InnoDB  DEFAULT CHARSET=utf8 AUTO_INCREMENT=28 ;

--
-- Dumping data for table `dos_module_video`
--

INSERT INTO `dos_module_video` (`record_id`, `title`, `titleen`, `postdate`, `tag`, `tagen`, `description`, `descriptionen`, `pic_thumb`, `url`, `record_order`, `hits`, `extra_field1`, `extra_field2`, `hot`, `enable`, `dos_module_item_cat_cat_id`) VALUES
(27, 'Túi xách thời trang', '', '2012-05-07 05:39:35', 'tui-xach-thoi-trang', '', '', '', 'tui-xach-thoi-trang.jpg', 'http://www.youtube.com/watch?v=IwckCuHqrDc&feature=fvsr', 1, 0, '', '', 0, 1, 18);

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
) ENGINE=InnoDB  DEFAULT CHARSET=utf8 AUTO_INCREMENT=19 ;

--
-- Dumping data for table `dos_module_video_cat`
--

INSERT INTO `dos_module_video_cat` (`cat_id`, `cat_parent_id`, `pic_thumb`, `cat_title`, `cat_titleen`, `tag`, `tagen`, `description`, `descriptionen`, `cat_order`, `cat_enable`, `dos_usernames_username`) VALUES
(18, 0, '', 'TÚI XÁCH', '', 'tui-xach', '', 'TÚI XÁCH', '', 1, 1, 'tuanhoaphat');

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
('220312', 'Mẫu nội thất: 220312', '2012-03-21 20:04:36', 'Chuyên bán các loại đồ nội thất, dân dụng');

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
('tuanhoaphat', 'info@thuonghoi.com', 'e10adc3949ba59abbe56e057f20f883e', '2012-05-07 05:38:45', '', '0937268669', '', 'user', 'vi', '', '2012-06-05 17:00:00', 0, 1, '220312', 19, 'am-thuc-drink');

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
('address1', 'Địa chỉ: 1/18, KP5. P. Trảng Dài, TP. Biên Hòa, Tỉnh Đồng Nai', '', 'tuanhoaphat'),
('address2', 'Điện thoại: 0612.227.669 - Hotline: 0937.268.669', '', 'tuanhoaphat'),
('company_name', 'CÔNG TY TNHH MTV TUẤN HÒA PHÁT', '', 'tuanhoaphat'),
('company_name_footer', 'CÔNG TY TNHH MTV TUẤN HÒA PHÁT', '', 'tuanhoaphat'),
('company_phone', 'Hot line: 0937.268.669', '', 'tuanhoaphat');

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
