-- phpMyAdmin SQL Dump
-- version 3.4.5
-- http://www.phpmyadmin.net
--
-- Host: localhost
-- Generation Time: Sep 24, 2012 at 09:18 PM
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
('advs_left_height', 190, '', '010312'),
('advs_left_width', 190, '', '010312'),
('advs_right_height', 190, '', '010312'),
('advs_right_width', 190, '', '010312'),
('banner_height', 332, '', '010312'),
('banner_width', 951, '', '010312'),
('logo_height', 104, '', '010312'),
('logo_width', 950, '', '010312'),
('max_image_height', 667, '', '010312'),
('max_image_width', 500, '', '010312'),
('news_cat_height', 100, '', '010312'),
('news_cat_width', 143, '', '010312'),
('news_height_thumb', 100, '', '010312'),
('news_num_paging_cat', 10, '', '010312'),
('news_num_paging_hot', 6, '', '010312'),
('news_num_paging_index', 10, '', '010312'),
('news_num_paging_new', 6, '', '010312'),
('news_width_thumb', 143, '', '010312'),
('products_cat_height', 121, '', '010312'),
('products_cat_width', 152, '', '010312'),
('products_height', 400, '', '010312'),
('products_height_thumb', 121, '', '010312'),
('products_num_paging_cat', 15, '', '010312'),
('products_num_paging_hot', 12, '', '010312'),
('products_num_paging_new', 12, '', '010312'),
('products_num_paging_other', 3, '', '010312'),
('products_width', 500, '', '010312'),
('products_width_thumb', 152, '', '010312'),
('services_height', 90, '', '010312'),
('services_width', 144, '', '010312'),
('video_height_thumb', 115, '', '010312'),
('video_num_paging_cat', 4, '', '010312'),
('video_num_paging_index', 4, '', '010312'),
('video_width_thumb', 115, '', '010312');

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
('010312', 'default', 'prettyPhoto.css', 'css'),
('010312', 'default', 'jquery.prettyPhoto.js', 'javascript'),
('010312', 'video', 'prettyPhoto.css', 'css'),
('010312', 'video', 'jquery.prettyPhoto.js', 'javascript');

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
('about', 'thaisonglass'),
('advs', 'thaisonglass'),
('banner', 'thaisonglass'),
('contact', 'thaisonglass'),
('news', 'thaisonglass'),
('products', 'thaisonglass'),
('services', 'thaisonglass'),
('supports', 'thaisonglass');

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
) ENGINE=InnoDB  DEFAULT CHARSET=utf8 AUTO_INCREMENT=447 ;

--
-- Dumping data for table `dos_module_abouts`
--

INSERT INTO `dos_module_abouts` (`record_id`, `title`, `titleen`, `content`, `contenten`, `hit`, `created`, `record_order`, `hot`, `extra_field1`, `extra_field2`, `tag`, `tagen`, `description`, `descriptionen`, `activated`, `dos_usernames_username`) VALUES
(444, 'THAISONGLASS Kính chào quý khách!', '', '<p style="text-align:justify;"><strong><span style="color:#ff0000;">THAISONGLASS</span> là đơn vị chuyên cung cấp các vật liệu xây dựng: Nhôm, Kính, Sơn và phụ kiện các loại,.. và nhận cung cấp vật liệu xây dựng theo đơn đặt hàng.</strong></p>\n<p style="text-align:justify;"><strong>Hơn 15 năm trong nghề, tại Đồng Nai <span style="color:#ff0000;">THAISONGLASS <span style="color:#000000;">đã là nơi tin cậy của người dân, đại lý phân phối và các nhà thầu xây dựng.</span></span></strong></p>', '', 742, '2012-09-10 00:16:15', 7, 1, '', '', 'thaisonglass-kinh-chao-quy-khach', '', '', '', 1, 'thaisonglass'),
(446, 'Về công ty', '', '<p style="text-align:justify;">Công ty <span style="color:#ff0000;"><strong>THÁI SƠN</strong></span> tên thường gọi là THÁI SƠN GLASS CO.; Ltd, được đưa vào hoạt động vào năm 1996. Từ đó đến nay công ty luôn khẳng định vị thế của mình trên địa bàn và khu vực, doanh thu của công ty luôn tăng trưởng mạnh. Uy tín của công ty đối với khách hàng được khẳng định.</p>\n<p style="text-align:justify;">Công ty <span style="color:#ff0000;"><strong>THÁI SƠN</strong></span> rất hân hạnh được phục vụ tất cả các quý khách hàng có nhu cầu về sản phẩm mà công ty đang kinh doanh cũng như đang tìm đối tác muốn hợp tác với các nhà cung cấp.</p>\n<p style="text-align:center;"><img src="/public/userfiles/image/thaisonglass/image/vpchinhanhbd.jpg" alt="" width="420" height="280" /></p>\n<p style="text-align:justify;"><span style="color:#000080;"><strong>Chuyên kinh doanh:</strong></span></p>\n<p style="text-align:justify;">- Kính xây dựng các loại từ 2mm - 20mm.Nhận gia công các sản phẩm sau kính: Mài, Cường lực dán, Cách nhiệt,...</p>\n<p style="text-align:justify;">- Nhôm thanh định hình các sản phẩm: Tungshin, TungKuang, YngHua,..</p>\n<p style="text-align:justify;"> </p>', '', 11, '2012-09-12 07:25:26', 8, 0, '', '', 've-cong-ty', '', '', '', 1, 'thaisonglass');

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
) ENGINE=InnoDB  DEFAULT CHARSET=utf8 AUTO_INCREMENT=731 ;

--
-- Dumping data for table `dos_module_advs`
--

INSERT INTO `dos_module_advs` (`record_id`, `title`, `titleen`, `pic_thumb`, `url`, `create_date`, `start_date`, `end_date`, `hits`, `record_order`, `position`, `type`, `enable`, `dos_usernames_username`) VALUES
(708, 'Quảng cáo', '', 'quang-cao.png', 'http://thaisonglass.dos.vn/san-pham', '2012-09-10 00:16:15', '2012-09-09 16:00:00', '2012-10-30 16:00:00', 0, 1, 'left', '_bank', 1, 'thaisonglass'),
(723, 'quang cao 1', '', 'quang-cao-1.jpg', 'http://thaisonglass.dos.vn/gioi-thieu', '2012-09-10 06:55:42', '2012-09-09 16:00:00', '2012-10-30 16:00:00', 0, 2, 'right', '_bank', 1, 'thaisonglass'),
(724, 'quang cao 2', '', 'quang-cao-2.jpg', 'http://thaisonglass.dos.vn/', '2012-09-10 07:08:11', '2012-09-09 16:00:00', '2012-11-29 16:00:00', 0, 3, 'left', '_bank', 1, 'thaisonglass'),
(726, 'Quảng cáo 3', '', 'quang-cao-3.jpg', 'http://dos.vn', '2012-09-12 02:26:03', '2012-09-11 16:00:00', '2012-10-30 16:00:00', 0, 4, 'right', '_bank', 1, 'thaisonglass'),
(727, 'Quảng cáo 4', '', 'quang-cao-4.jpg', 'http://dos.vn', '2012-09-12 02:31:25', '2012-09-11 16:00:00', '2012-10-30 16:00:00', 0, 8, 'right', '_bank', 1, 'thaisonglass'),
(728, 'Quảng cáo 5', '', 'quang-cao-5.jpg', 'http://dos.vn', '2012-09-12 02:31:51', '2012-09-11 16:00:00', '2012-10-30 16:00:00', 0, 6, 'right', '_bank', 1, 'thaisonglass'),
(729, 'Quảng cáo 6', '', 'quang-cao-6.jpg', 'http://dos.vn', '2012-09-12 02:32:32', '2012-09-11 16:00:00', '2012-10-30 16:00:00', 0, 7, 'right', '_bank', 1, 'thaisonglass'),
(730, 'Quảng cáo 6', '', 'quang-cao-68.jpg', 'http://dos.vn', '2012-09-12 02:33:45', '2012-09-11 16:00:00', '2012-10-30 16:00:00', 0, 5, 'right', '_bank', 0, 'thaisonglass');

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
) ENGINE=InnoDB  DEFAULT CHARSET=utf8 AUTO_INCREMENT=3477 ;

--
-- Dumping data for table `dos_module_banners`
--

INSERT INTO `dos_module_banners` (`banner_id`, `banner_date`, `banner_name`, `banner_url`, `banner_link`, `banner_order`, `banner_type`, `position`, `enable`, `dos_usernames_username`) VALUES
(3084, '2012-09-10 00:16:15', 'Logo', 'logo.png', '', 1, 'logo', 'default', 1, 'thaisonglass'),
(3115, '2012-09-10 05:58:30', 'Banner 1', 'banner-1.png', '', 2, 'banners', 'default', 1, 'thaisonglass'),
(3116, '2012-09-10 05:59:29', 'Banner 2', 'banner-2.jpg', '', 3, 'banners', 'products', 1, 'thaisonglass'),
(3117, '2012-09-10 06:00:16', 'Banner 3', 'banner-3.jpg', '', 4, 'banners', 'default', 1, 'thaisonglass'),
(3118, '2012-09-10 06:00:37', 'Banner 4', 'banner-4.jpg', '', 5, 'banners', 'products', 1, 'thaisonglass'),
(3119, '2012-09-10 06:01:18', 'Banner 5', 'banner-5.jpg', '', 6, 'banners', 'products', 1, 'thaisonglass'),
(3120, '2012-09-10 06:01:33', 'Banner 6', 'banner-6.jpg', '', 7, 'banners', 'products', 1, 'thaisonglass'),
(3121, '2012-09-10 06:03:26', 'Banner 7', 'banner-7.jpg', '', 8, 'banners', 'about', 1, 'thaisonglass'),
(3122, '2012-09-10 06:03:55', 'Banner 8', 'banner-8.jpg', '', 9, 'banners', 'about', 1, 'thaisonglass'),
(3123, '2012-09-10 06:04:43', 'Banner 9', 'banner-9.jpg', '', 10, 'banners', 'services', 1, 'thaisonglass'),
(3124, '2012-09-10 06:05:20', 'Banner 10', 'banner-10.jpg', '', 11, 'banners', 'services', 1, 'thaisonglass'),
(3125, '2012-09-10 06:05:49', 'Banner 11', 'banner-11.jpg', '', 12, 'banners', 'default', 1, 'thaisonglass'),
(3126, '2012-09-10 06:06:32', 'Banner 12', 'banner-12.jpg', '', 13, 'banners', 'news', 1, 'thaisonglass'),
(3127, '2012-09-10 06:06:48', 'Banner 13', 'banner-13.jpg', '', 14, 'banners', 'news', 1, 'thaisonglass'),
(3128, '2012-09-10 06:07:39', 'Banner 14', 'banner-14.jpg', '', 15, 'banners', 'contact', 1, 'thaisonglass'),
(3129, '2012-09-10 06:07:55', 'Banner 15', 'banner-15.jpg', '', 16, 'banners', 'contact', 1, 'thaisonglass'),
(3130, '2012-09-10 06:08:13', 'Banner 16', 'banner-16.jpg', '', 17, 'banners', 'news', 1, 'thaisonglass'),
(3131, '2012-09-10 06:08:33', 'Banner 17', 'banner-17.jpg', '', 18, 'banners', 'contact', 1, 'thaisonglass'),
(3163, '2012-09-12 02:40:27', 'Banner18', 'banner18.jpg', 'http://dos.vn/', 19, 'banners', 'default', 1, 'thaisonglass'),
(3164, '2012-09-12 02:42:12', 'Banner19', 'banner19.jpg', '', 20, 'banners', 'products', 1, 'thaisonglass'),
(3165, '2012-09-12 02:48:54', 'Banner 22', 'banner-22.jpg', '', 21, 'banners', 'about', 1, 'thaisonglass'),
(3474, '2012-09-18 05:42:48', 'Banner 23', 'banner-23.jpg', '', 22, 'banners', 'products', 1, 'thaisonglass'),
(3475, '2012-09-18 05:43:02', 'Banner 24', 'banner-24.jpg', '', 23, 'banners', 'products', 1, 'thaisonglass'),
(3476, '2012-09-18 05:43:35', 'Banner 25', 'banner-25.jpg', '', 24, 'banners', 'about', 1, 'thaisonglass');

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
) ENGINE=InnoDB  DEFAULT CHARSET=utf8 AUTO_INCREMENT=66 ;

--
-- Dumping data for table `dos_module_contacts`
--

INSERT INTO `dos_module_contacts` (`record_id`, `title`, `titleen`, `content`, `contenten`, `create_date`, `record_order`, `hit`, `hot`, `tag`, `tagen`, `description`, `descriptionen`, `enable`, `dos_usernames_username`) VALUES
(65, 'Liên hệ với chúng tôi', '', '<p><strong>CÔNG TY TNHH THƯƠNG MẠI &amp; DỊCH VỤ <span style="color:#ff0000;">THÁI SƠN</span></strong></p>\n<p>Địa chỉ: 2/27B KP.6, Đ. Đồng Khởi, P.Tam Hiệp , Tp.Biên Hoà , T.Đồng Nai</p>\n<p>Điện thoại: (061) 3818 617 - 3181 745</p>\n<p>Fax: (061) 912 657</p>\n<p>Email: thaisonglass@gmail.com</p>', '', '2012-09-10 00:16:15', 1, 0, 0, 'lien-he-voi-chung-toi', '', '', '', '1', 'thaisonglass');

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
('Trang chủ', '', 'default', '', 1, '', '', '', '', 'thaisonglass'),
('Giới thiệu', '', 'about', '', 2, '', '', '', '', 'thaisonglass'),
('Sản phẩm', '', 'products', '', 3, '', '', '', '', 'thaisonglass'),
('Dịch vụ', '', 'services', '', 4, '', '', '', '', 'thaisonglass'),
('Tin tức & sự kiện', '', 'news', '', 5, '', '', '', '', 'thaisonglass'),
('Liên hệ', '', 'contact', '', 6, '', '', '', '', 'thaisonglass');

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
) ENGINE=InnoDB  DEFAULT CHARSET=utf8 AUTO_INCREMENT=499 ;

--
-- Dumping data for table `dos_module_news`
--

INSERT INTO `dos_module_news` (`record_id`, `title`, `titleen`, `postdate`, `pic_thumb`, `preview`, `previewen`, `content`, `contenten`, `tag`, `tagen`, `description`, `descriptionen`, `hits`, `record_order`, `hot`, `extra_field1`, `extra_field2`, `enable`, `dos_module_item_cat_cat_id`) VALUES
(496, 'Chọn màu sắc hợp phong thủy để đem vận may đến cho ngôi nhà của bạn', '', '2012-09-10 00:16:15', 'chon-mau-sac-hop-phong-thuy-de-dem-van-may-den-cho-ngoi-nha-cua-ban.jpg', '<p>Theo phong thủy, có ba cấp độ hiệu quả khi dùng màu sắc và tương ứng với mỗi góc nhà là màu tốt nhất, màu bình thường và màu cấm kỵ. Bài trí nhà cửa theo phong thủy có liên quan mật thiết đến việc chọn lựa màu sắc và cách phối hợp các loại màu sắc đó với nhau.</p>', '', '<p>Theo phong thủy, có ba cấp độ hiệu quả khi dùng màu sắc và tương ứng với mỗi góc nhà là màu tốt nhất, màu bình thường và màu cấm kỵ. Bài trí nhà cửa theo phong thủy có liên quan mật thiết đến việc chọn lựa màu sắc và cách phối hợp các loại màu sắc đó với nhau.Lý do là mỗi màu sắc có tác dụng tốt nhất ở mỗi góc nhà hay góc phòng.</p>\n<p>Góc Nam: Màu tốt nhất là màu đỏ và da cam. Màu trung bình là màu vàng, xanh lục. Màu cấm kỵ là màu đen và xanh dương.</p>\n<p><img style="margin-left:auto;margin-right:auto;" src="/public/userfiles/image/hosontu/image/hinh_anh/sac-mau-ngoi-nha-theo-phong-thuy.jpeg" alt="" width="499" height="347" /></p>\n<p>Góc Bắc: Màu tốt nhất là đen và xanh dương. Màu trung bình là trắng, bạc. Màu cấm kỵ là màu vàng và nâu nhạt.</p>\n<p>Góc Tây: Màu tốt nhất là trắng và xám. Màu trung bình là màu bạc, vàng. Màu cấm kỵ là đỏ và da cam.</p>\n<p>Góc Đông: Màu tốt nhất là xanh lục, nâu. Màu trung bình là đen, xanh dương. Màu cấm kỵ là trắng, bạc.</p>\n<p>Góc Đông Nam: Màu tốt nhất là xanh lục nhạt. Màu trung bình là xanh nhạt. Màu cấm kỵ là trắng và xám.</p>\n<p>Góc Tây Nam: Màu tốt nhất là vàng, nâu nhạt. Màu trung bình là đỏ, da cam. Màu cấm kỵ là xanh lục, nâu.</p>\n<p>Góc Đông Bắc: Màu tốt nhất là vàng, nâu nhạt. Màu trung bình là đỏ, da cam. Màu cấm kỵ là xanh lục, nâu.</p>\n<p>Góc Tây Bắc: Màu tốt nhất là trắng, bạc. Màu trung bình là xám, vàng. Màu cấm kỵ là đỏ, da cam.</p>\n<p>Nguồn: Phong Thuy – Phong Thuy Nha O – Phong Thuy Tu Vi</p>', '', 'chon-mau-sac-hop-phong-thuy-de-dem-van-may-den-cho-ngoi-nha-cua-ban', '', '', '', 0, 1, 0, '', '', 1, 376),
(497, 'Trang trí nhà cửa bằng Pha Lê và những điều cần lưu ý', '', '2012-09-10 00:16:15', 'trang-tri-nha-cua-bang-pha-le-va-nhung-dieu-can-luu-y.jpg', '<p>Pha lê dùng để trang trí nhà sẽ rất đẹp, nhưng xin đừng lạm dụng.Cùng với sự phát triển của trào lưu hiện đại, ngày càng có nhiều gia đình sử dụng chất liệu pha lê trong trang trí nhà ở. Tuy nhiên, từ góc độ phong thủy, vẫn còn một số điều cần lưu ý.</p>', '', '<p>Pha lê dùng để trang trí nhà sẽ rất đẹp, nhưng xin đừng lạm dụng.Cùng với sự phát triển của trào lưu hiện đại, ngày càng có nhiều gia đình sử dụng chất liệu pha lê trong trang trí nhà ở. Tuy nhiên, từ góc độ phong thủy, vẫn còn một số điều cần lưu ý.</p>\n<p>1. Pha lê không thích hợp để ngăn cách phòng</p>\n<p>Một số gia đình sử dụng pha lê làm vách ngăn phòng khách và phòng ngủ. Họ cho rằng như vậy sẽ có lợi cho việc mở rộng không gian xét về mặt thị giác. Tuy nhiên, không phải bất cứ địa điểm nào cũng thích hợp để dùng vách ngăn pha lê, với nhà ở thì lại càng cần lưu ý.</p>\n<p><img style="margin-left:auto;margin-right:auto;" src="/public/userfiles/image/hosontu/image/hinh_anh/sac-mau-ngoi-nha-theo-phong-thuy.jpeg" alt="" width="499" height="347" /></p>\n<p>Từ góc độ phong thủy, hoạt động của khu vực phòng khách có sự khác biệt rõ rệt với phòng ngủ. Phòng khách là nơi diễn ra các hoạt động giao lưu, thuộc dương trong khi phòng ngủ là nơi chủ nhân nghỉ ngơi, thuộc âm. Nếu như sử dụng chất liệu pha lê sẽ khiến cho âm – dương mất cân bằng, khiến tâm tư của người sống trong nhà bất ổn, ảnh hưởng xấu đến hệ thần kinh.</p>\n<p>2. Chú ý với pha lê trong nhà vệ sinh</p>\n<p><img style="margin-left:auto;margin-right:auto;" src="/public/userfiles/image/hosontu/image/hinh_anh/pha-le-phong-thuy-02.jpg" alt="" width="450" height="332" /></p>\n<p>Một số nữ chủ nhân trẻ tuổi sau khi kết hôn thích cải tạo nhà vệ sinh khép kín trong phòng ngủ với chất liệu pha lê nhằm tăng “không khí gợi cảm”. Tuy nhiên, cách thiết kế này không thích hợp về mặt phong thủy. Vì nhà vệ sinh bất luận như thế nào cũng đều chứa sát khí, thuộc âm, nên tránh xa, đóng kín. Nếu cần thiết dùng tường chắn thì cũng không nên dùng chất liệu pha lê.</p>\n<p>3. Sàn pha lê gây cảm giác bất ổn</p>\n<p style="text-align:center;"><img src="/public/userfiles/image/hosontu/image/hinh_anh/pha-le-phong-thuy-03.jpg" alt="" width="450" height="333" /></p>\n<p>Trong một số thiết kế đặc biệt nhằm tăng vẻ mỹ lệ cho nội thất, có người thích dùng chất liệu pha lê để trang trí với các đồ án hoa văn đẹp mắt. Tuy nhiên, chất liệu pha lê trong suốt, khiến con người có cảm giác không thật mắt. Từ đó gây cảm giác bất an khi đi lại. Trong khi đó, hơn nơi nào hết, bề mặt sàn phải tạo cảm giác ổn định, vững chắc nhất trong sinh hoạt.</p>\n<p>4. Tường pha lê không đối diện đầu giường</p>\n<p><img style="margin-left:auto;margin-right:auto;" src="/public/userfiles/image/hosontu/image/hinh_anh/pha-le-phong-thuy-04.jpg" alt="" width="450" height="290" /></p>\n<p>Tường pha lê cũng là một trong những “thủ pháp” được các kiến trúc sư hiện nay ưa dùng. Bởi nó tạo cảm giác không gian mở rộng và có sự biến đổi phong phú đến kinh ngạc. Bạn có thể sử dụng tường pha lê nhưng không nên bố trí đối diện giường ngủ.<br />Ngoài ra, tường pha lê cần được bố trí dựa vào tường thật để tránh không gian hư thực không rõ ràng.</p>\n<p>Nguồn: Phong Thuy – Phong Thuy Nha O – Phong Thuy Tu Vi</p>\n<p> </p>', '', 'trang-tri-nha-cua-bang-pha-le-va-nhung-dieu-can-luu-y', '', '', '', 0, 2, 0, '', '', 1, 376),
(498, 'Giải pháp phong thủy cho căn hộ chỉ có một phòng', '', '2012-09-10 00:16:15', 'giai-phap-phong-thuy-cho-can-ho-chi-co-mot-phong.jpg', '<p>Những bạn trẻ ra ở riêng khi chưa có điều kiện tài chính phải sử dụng những không gian ở nhỏ hẹp. Khi chỗ ở mang tính khép kín độc lập (cho cá nhân hoặc gia đình) thì dù rộng hay hẹp cũng vẫn là 1 trường khí thống nhất.</p>', '', '<p>Những bạn trẻ ra ở riêng khi chưa có điều kiện tài chính phải sử dụng những không gian ở nhỏ hẹp. Khi chỗ ở mang tính khép kín độc lập (cho cá nhân hoặc gia đình) thì dù rộng hay hẹp cũng vẫn là 1 trường khí thống nhất.Để tạo nên tiện ích trong sử dụng cũng như hợp phong thủy, cần lưu ý một số vấn đề sau:</p>\n<p>1. Phân cung – điểm hướng hợp lý</p>\n<p>Thực chất ngôi nhà truyền thống cũng chỉ là 1 phòng lớn, dùng các vách ngăn lửng hay tủ kệ để chia không gian, còn tính chất trường khí vẫn liên tục. Ta có thể bố trí chỗ tiếp khách, ngủ, làm việc… cần có đầy đủ ánh sáng và thông thoáng tự nhiên, nằm về các phương vị tốt.</p>\n<p style="text-align:center;"><img src="/public/userfiles/image/hosontu/image/hinh_anh/phong-thuy-nha-o.jpg" alt="" width="300" height="230" /></p>\n<p>Có thể sắp đặt lối vào các chức năng phụ như bếp, vệ sinh, dành phần không gian tốt, cửa sổ và cây xanh lùi ra phía sau (các căn hộ dạng studio của Hồng Kông và Singapore được xem xét phong thủy rất kỹ cũng thường bố trí như vậy – hình 1). Chú ý khoảng giữa phòng luôn là Trung Cung, cần giữ thoáng đãng, chung quanh sắp xếp đồ theo chức năng và sự tiện dụng, tránh ăn ngủ ngay tại Trung Cung.</p>\n<p>2. Tận dụng chiều cao và giữ trường khí thống nhất</p>\n<p>Nhà 1 phòng thường hay thiếu các không gian riêng. Do đó, nếu chiều cao cho phép, bạn nên tận dụng đưa một số phần lên cao như chỗ ngủ hoặc làm việc riêng, kho, tủ thờ… Chỗ cầu thang (nếu có làm gác xép nhỏ) nên tận dụng làm tủ kệ đựng đồ, trang trí.</p>\n<p style="text-align:center;"><img src="/public/userfiles/image/hosontu/image/hinh_anh/phong-thuy-nha-o-01.jpg" alt="" width="301" height="243" /></p>\n<p>Một cách tận dụng chiều cao nữa theo chuyên gia phong thủy là dùng giường tầng hoặc giường ngủ trên cao, bàn làm việc dưới thấp. Khi đó, trường khí toàn phòng vẫn là một, không bị ngăn cách nhiều. Nhà 1 phòng còn cần phải sử dụng các dạng tủ kệ liên hoàn để giảm diện tích chiếm chỗ, tránh kê nhiều đồ đạc đơn lẻ mà nên tận dụng các ngóc ngách, tủ treo, khung cửa sổ làm nơi chứa đồ và kết hợp trang trí (hình 2).</p>\n<p>3. Giảm xung sát</p>\n<p><img style="margin-left:auto;margin-right:auto;" src="/public/userfiles/image/hosontu/image/hinh_anh/phong-thuy-nha-o-02.jpg" alt="" width="299" height="268" /></p>\n<p>Các xung sát trong nhà 1 phòng thường hay xảy ra do khu phụ và cách mở cửa. Phòng vệ sinh cũng nên đặt cửa ở vị trí kín đáo, tránh sinh hoạt trước phòng vệ sinh. Nhà 1 phòng có thể đưa lavabo ra ngoài kề cận chỗ ngủ, dùng vách kính ngăn nhẹ, còn bồn cầu thì cần phải che chắn kín đáo (hình 3).</p>\n<p><img style="margin-left:auto;margin-right:auto;" src="/public/userfiles/image/hosontu/image/hinh_anh/phong-thuy-nha-o-03.jpg" alt="" width="260" height="369" /></p>\n<p>1 dạng xung sát nữa là mở cửa vào gặp ngay giường ngủ, việc này cần khắc phục bằng cách sử dụng hệ thống đồ dùng liên hoàn và rèm che di động. Bình phong cũng là vật che chắn xung sát khá hữu hiệu, nên sử dụng để giảm tầm nhìn và gió lùa. Có thể kết hợp bình phong với tủ trang trí để tăng thêm tiện ích (hình 4).</p>\n<p>Nguồn: Phong Thuy – Phong Thuy Nha O – Phong Thuy Tu Vi</p>', '', 'giai-phap-phong-thuy-cho-can-ho-chi-co-mot-phong', '', '', '', 0, 3, 0, '', '', 1, 376);

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
) ENGINE=InnoDB  DEFAULT CHARSET=utf8 AUTO_INCREMENT=381 ;

--
-- Dumping data for table `dos_module_news_cat`
--

INSERT INTO `dos_module_news_cat` (`cat_id`, `cat_parent_id`, `cat_title`, `cat_titleen`, `preview`, `previewen`, `tag`, `tagen`, `description`, `descriptionen`, `pic_full`, `cat_order`, `cat_extra1`, `cat_extra2`, `cat_enable`, `dos_usernames_username`) VALUES
(375, 0, 'Phong thủy nhà ở', '', '', '', 'phong-thuy-nha-o', '', '', '', '', 1, '', '', 1, 'thaisonglass'),
(376, 0, 'Nội thất phong thủy', '', '', '', 'noi-that-phong-thuy', '', '', '', '', 2, '', '', 1, 'thaisonglass'),
(380, 0, 'tin tức trong ngành', '', '', '', 'tin-tuc-trong-nganh', '', '', '', '', 3, '', '', 1, 'thaisonglass');

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
('day_time', 2456195),
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
('''127.0.0.1''', 1348513993);

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
) ENGINE=InnoDB  DEFAULT CHARSET=utf8 AUTO_INCREMENT=11278 ;

--
-- Dumping data for table `dos_module_products`
--

INSERT INTO `dos_module_products` (`record_id`, `title`, `titleen`, `postdate`, `pic_thumb`, `pic_full`, `pic_desc`, `preview`, `previewen`, `content`, `contenten`, `tag`, `tagen`, `description`, `descriptionen`, `hits`, `record_order`, `unit`, `hot`, `specials`, `extra_field1`, `extra_field2`, `extra_field3`, `extra_field4`, `enable`, `dos_module_item_cat_cat_id`) VALUES
(10346, 'Donasa_hitech', '', '2012-09-10 01:40:24', 'donasahitech-thumb.jpg', 'donasahitech.jpg', '', '<p>Donasa_hitech</p>', '', '<p style="text-align:justify;"><strong>DONASA Hitech là sản phẩm sơn nước sử dụng 100% nhựa Acrylic, dùng sơn hoàn thiện cho bề mặt tường ngoài trời hay trong nhà. Màng sơn có khả năng chống nấm mốc, chống thấm, bóng, bền màu theo thời gian, bám dính và chịu chùi rửa. Sản phẩm được áp dụng theo công nghệ tiên tiến, không chứa các thành phần hóa học ảnh hưởng đến môi trường sinh thái</strong></p>\n<p style="text-align:justify;"><strong>Hướng dẫn sử dụng:</strong><br />+ Định mức lý thuyết: 13 -15 m2/lít<br />+ Sử dụng con lăn, cọ hoặc súng phun. Để thao tác khi thi công dễ dàng, cần pha loãng hàm lượng không quá 10% nước sạch theo thể tích. Thời gian giữa 2 lớp 2 – 3 giờ</p>\n<p style="text-align:justify;"><strong> Chuẩn bị bề mặt:</strong><br />+ Bề mặt trước khi thi công cần đảm bảo không có dầu mỡ và các tạp chất khác<br />+ Dùng nước sạch phun ở áp suất cao để vệ sinh. Độ ẩm trước khi thi công không lớn hơn 40 %</p>\n<p style="text-align:justify;"><strong>Hệ thống sơn đề nghị:</strong><br />+ Sơn trước 1 lớp sơn lót chống kiềm DONASA Anti Alkali hoặc DONASA Flint 04<br />+ Sơn 2-3 lớp sơn phủ DONASA Hitech</p>\n<p style="text-align:justify;"><strong>Thành phần hóa chất:</strong><br />Thành phần bao gồm: Nước, Nhựa Acrylic, bột khoáng chất và các phụ gia</p>\n<p style="text-align:justify;"><strong>Chỉ tiêu kỹ thuật:</strong></p>\n<p style="text-align:justify;">+ Độ nhớt : 102 – 106KU/300c<br />+ Độ mịn : ≤ 20 Microns<br />+ Tỷ trọng : 1.250 ± 0.020 g/cm3<br />+ PH : 8.2 9.7</p>\n<p style="text-align:justify;"><strong> Thông tin an toàn bảo quản:</strong><br />+ Sơn nước không độc hại, không bốc cháy. Nếu sơn dây vào da, mắt thì phải rửa ngay bằng nước xà phòng và chuyển đến bác sĩ nếu cần thiết<br />+ Bảo quản nơi khô ráo, thoáng, tránh ánh nắng mặt trời chiếu vào thùng<br />+ Hạn bảo quản: 36 tháng, kể từ ngày sản xuất .</p>\n<p style="text-align:justify;"> </p>', '', 'donasahitech', '', '', '', 0, 91, '', 0, 0, '', '', '', '', 1, 1751),
(10347, 'DONASA-MASTERY', '', '2012-09-10 01:44:14', 'donasa-mastery-thumb.jpg', 'donasa-mastery.jpg', '', '<p>DONASA-MASTERY</p>', '', '<p style="text-align:justify;"><strong>DONASA Mastery là sản phẩm sơn hệ nước sử dụng 100% nhựa Acrylic dùng sơn hoàn thiện cho bề mặt tường ngoài trời hay trong nhà. Màng sơn có khả năng chống nấm mốc, chống thấm, bền màu theo thời gian, đặc biệt chống bám bụi, chống lão hóa và chịu chùi rửa. Sản phẩm được áp dụng theo công nghệ Mỹ không chứa các thành phần hóa học ảnh hưởng đến môi trường sinh thái.</strong></p>\n<p style="text-align:justify;"><strong>Hướng dẫn sử dụng:</strong><br />- Sử dụng con lăn, cọ hoặc súng sơn. Để thao tác khi thi công dễ dàng, cần pha loãng hàm lượng không quá 15% nước sạch theo thể tích. Thời gian giữa hai lớp từ 2 – 3 giờ</p>\n<p style="text-align:justify;"><strong>Chuẩn bị bề mặt:</strong><br />- Bề mặt khi thi công đảm bảo không có dầu mỡ và các tạp chất khác<br />- Dùng nước sạch phun ở áp suất cao để vệ sinh<br />- Độ ẩm trước khi thi công không lớn hơn 40%</p>\n<p style="text-align:justify;"><strong> Hệ thống sơn đề nghị:</strong><br />- Sơn trước một lớp sơn lót chống kiềm DONASA Anti Alkali hoặc DONASA Prikot<br />- Sơn 2 lớp sơn phủ DONASA Mastery</p>\n<p style="text-align:justify;"><strong>Thành phần hóa chất:</strong><br />- Thành phần bao gồm : nước , nhựa Acrylic , bột khoáng và các phụ gia</p>\n<p style="text-align:justify;"><strong>Chỉ tiêu kỹ thuật:</strong><br />- Mức tiêu hao : 13 -15 m2/lít/lớp</p>\n<p style="text-align:justify;"><strong>Thông tin an toàn bảo quản:</strong><br />- Sản phẩm không độc hại , không cháy . Nếu sơn dính vào da hay mắt thì vệ sinh ngay bằng nước xà phòng và chuyển đến bác sỹ nếu cần thiết<br />- Bảo quản nơi thoáng mát , tránh ánh nắng mặt trời<br />- Hạn bảo quản : 36 tháng kể từ ngày sản xuất</p>\n<p style="text-align:justify;"> </p>', '', 'donasa-mastery', '', '', '', 0, 34, '', 1, 0, '', '', '', '', 1, 1751),
(10351, 'Dsnexterior_paint', '', '2012-09-10 01:57:23', 'donasa-interior-tn-thumb.jpg', 'donasa-interior-tn.jpg', '', '<p><strong><span style="color:#ff0000;">DONASA Exterior</span> </strong>là loại sơn nước hệ nhựa PVAc dùng sơn phủ tường trong nhà , sản phẩm được chế tạo theo công nghệ Mỹ . Sơn chịu được thời tiết nóng ẩm tại Việt Nam .</p>', '', '<p style="text-align:justify;"><strong>Hướng dẫn sử dụng:</strong><br />- Mức tiêu hao : 10m2/lít - lý thuyết (30 Microns DFT)<br />- Dùng con lăn , cọ hoặc súng phu để thi công<br />- Sơn trước một lớp sơn lót chống kiềm DONASA Anti Alkali để khô hoàn toàn. Sơn phủ 2-3 lớp sơn DONASA Exterior mỗi lớp cách nhau 2 giờ</p>\n<p style="text-align:justify;"><strong>Pha loãng:</strong><br />- Trong trường hợp cần thiết có thể pha loãng với nước sạch theo tỷ lệ không quá 10% trên khối lượng sơn .</p>\n<p style="text-align:justify;"><strong>Chuẩn bị bề mặt:</strong><br />- Dùng vòi nước áp lực mạnh để rửa hoặc cạo sạch lớp sơn cũ trước khi thi công<br />- Mặt tường hoặc lớp có mastic phải sạch sẽ , khô ráo , không dính dầu mỡ hoặc các tạp chất khác</p>\n<p style="text-align:justify;"><strong>Thành phần hóa chất:</strong><br />- Nhựa nhũ tương Acrylic , bột màu , bột khoáng chất các loại , nước và các phụ gia khác</p>\n<p style="text-align:justify;"><strong>Chỉ tiêu chất lượng :</strong><br />- Độ nhớt: 102 – 116KU/300c<br />- Độ mịn: ≤ 50 Microns<br />- Tỷ trọng: 1.430 ± 0.020 g/cm3<br />- PH: 8.2 9.7</p>\n<p style="text-align:justify;"><strong>Thông tin an toàn bảo quản:</strong><br />- Sơn nước không độc hại , không bốc cháy . Nếu sơn dây vào da , mắt thì phải rửa ngay bằng nước sạch .<br />- Bảo quản nơi khô ráo thoáng mát , tránh ánh nắng mặt trời chiếu trực tiếp vào thùng<br />- Hạn bảo quản : 24 tháng ( trong bao bì kín ) kể từ ngày sản xuất</p>\n<p style="text-align:justify;"> </p>', '', 'dsnexteriorpaint', '', '', '', 0, 92, '', 0, 0, '', '', '', '', 1, 1751),
(10352, 'Flinkcoat thung', '', '2012-09-10 02:02:37', 'flinkcoat-thung-thumb.jpg', 'flinkcoat-thung.jpg', '', '<p style="text-align:justify;"><span style="color:#ff0000;"><strong>DONASA FlintCoat</strong> </span>là loại sơn nước bán bóng 100% Acrylic cao cấp để phủ tường chủ yếu ngoài trời. Sản phẩm được chế tạo theo công nghệ Mỹ , phục vụ công trình chất lượng cao. Đặc biệt độ phủ, độ bám dính cao. Sơn chịu mọi thời tiết nóng ẩm tại Việt Nam. Sơn chống nấm – rêu mốc, chống bám bụi, chống thấm đặc biệt hiệu quả cao . Màng sơn chịu chùi rửa thoải mái . Sơn giữ màu đẹp, không bị phấn hóa.</p>', '', '<p><strong>Hướng dẫn sử dụng:</strong><br />- Dùng con lăn , cọ hoặc súng phun ở áp suất thường hoặc áp suất cao</p>\n<p>- Để dễ dàng sơn bằng con lăn , dùng nước sạch pha loãng với tỷ lệ không quá 10 – 15%</p>\n<p><strong>Chuẩn bị bề mặt:</strong></p>\n<p>- Mặt tường phải sạch khô, không dính dầu mỡ hoặc các tạp chất khác .</p>\n<p>- Dùng vòi nước áp lực mạnh để rửa hoặc cạo sạch lớp sơn cũ.</p>\n<p><strong>Hệ thống sơn đề nghị:</strong></p>\n<p>- Sơn lót: Sơn 1 lớp sơn lót chống kiềm hệ nước bằng sơn DONASA Anti Alkali hoặc sơn một lớp sơn lót chống kiềm hệ dầu bằng sơn DONASA Prikot và để khô hoàn toàn</p>\n<p>- Sơn phủ: Sơn 2 – 3 lớp sơn phủ DONASA FlintCoat. Mỗi lớp sơn cần để cách nhau 2 giờ</p>\n<p><strong>Thành phần hóa chất:</strong></p>\n<p>- Thành phần gồm: Nhựa tổng hợp, bột khoáng chất các loại, nước và các phụ gia khác</p>\n<p><strong>Chỉ tiêu chất lượng:</strong></p>\n<p>- Mức tiêu hao: 13 – 15 m2/lít/lớp</p>\n<p><strong>Thông tin an toàn:</strong></p>\n<p>- Sơn nước không độc hại, không bốc cháy. Nếu sơn dây vào da, mắt thì phải rửa ngay bằng bằng nước sạch</p>\n<p>- Bảo quản nơi khô ráo, thoáng, tránh ánh nắng mặt trời chiếu vào thùng.</p>\n<p>- Hạn bảo quản: 36 tháng kể từ ngày sản xuất</p>\n<p> </p>', '', 'flinkcoat-thung', '', '', '', 0, 32, '', 0, 0, '', '', '', '', 1, 1751),
(10354, 'Bột trét tường DONASA', '', '2012-09-10 02:07:31', 'bot-tret-tuong-donasa-thumb.jpg', 'bot-tret-tuong-donasa.jpg', '', '<p style="text-align:justify;"><strong><span style="color:#ff0000;">Bột trét tường DONASA</span> </strong>thích hợp cho các loại sơn nước, có tính năng bảo vệ, chống thấm cao, tạo bề mặt phẳng mịn làm tăng thêm vẻ mỹ quan cho các công trình kiến trúc. Sản phẩm được sản xuất từ nguyên liệu của những công ty hóa chất hàng đầu trên thế giới. Được nghiên cứu sử dụng cho phù hợp với điều kiện khí hậu nhiệt đới tại Việt Nam Bột trét tường hiện có 3 nhãn hiệu: DONASA, LUCKY, POWDERCOAT rất thuận tiện khi sử dụng. Mỗi nhãn hiệu có 2 loại sản phẩm: loại dùng trong nhà và loại dùng ngoài trời</p>', '', '<p style="text-align:justify;"><strong>Hướng dẫn sử dụng:</strong><br />Trộn một bao bột trét 40kg với khoảng 18 lít nước sạch. Đổ bột vào nước từ từ , vừa đổ vừa khuấy để tránh hiện tượng bị vón cục, trộn đều cho đến khi hỗn hợp trở nên đồng nhất. Chờ khoảng 8-10 phút sau khi trộn hỗn hợp đồng nhất để hóa chất phát huy đều. Trộn lại lần nữa trước khi thi công.<br />Nên thi công bằng bay thép để đạt hiệu quả cao, tuy nhiên thi công bằng bay nhựa vẫn được . Trét một lớp mỏng trước, chờ cho se mặt tiếp tục trét lớp kế tiếp cho đến khi đạt độ phẳng theo yêu cầu. Khi bề mặt đã khô hoàn toàn, làm nhẵn bề mặt bằng giấy nhám, bề dầy lớp trét tốt nhất từ 1- 3mm, không nên để hỗn hợp đã trộn nước quá 4 giờ .</p>\n<p style="text-align:justify;"><strong>Chuẩn bị bề mặt:</strong><br />Bảo đảm cho bề mặt bê tông hay lớp hồ tô (vữa trát) phải sạch không quá lồi lõm. Nếu là bề mặt cũ, nên làm sạch lớp sơn hoặc vôi cũ, bề mặt thi công nên có độ ẩm 12-20% Trong trường hợp tường quá khô và với các bề mặt hút nước nên làm ẩm trước khi trét</p>\n<p style="text-align:justify;"><strong>Thành phần hóa chất:</strong><br />Màu sắc:<br />Trắng xanh<br />Chất kết dính:<br />Cement Portland<br />Chất độn:<br />Bột khoáng<br />Chống thấm:<br />Dẫn xuất Polymer<br />Phụ gia tạo dẻo: Dẫn xuất Cellulose</p>\n<p style="text-align:justify;"><strong>Đặc tính kỹ thuật:</strong><br />Cường độ bám dính: 0,6 – 2MPA<br />Diện tích phủ: 0,55 – 0,65m2/Kg<br />Hạn bảo quản: 24 tháng kể từ ngày sản xuất</p>\n<p style="text-align:justify;"><strong>Thông tin an toàn bảo quản:</strong><br />Bột trét tường DONASA không chứa các thành phần độc hại , tuy nhiên khi sử dụng cần mang khẩu trang và găng tay</p>\n<p style="text-align:justify;"> </p>', '', 'bot-tret-tuong-donasa', '', '', '', 0, 23, '', 0, 0, '', '', '', '', 1, 1752),
(10355, 'Donasa_alkyd', '', '2012-09-10 02:10:43', 'donasaalkyd-thumb.jpg', 'donasaalkyd.jpg', '', '<p>DONASA Alkyd</p>', '', '<p style="text-align:justify;"><span style="color:#ff0000;"><strong>DONASA Alkyd</strong></span> là loại sơn hệ dung môi chất lượng cao. Sử dụng trên bề mặt kim loại, gỗ, tường nhà, các dụng cụ ttrang trí gia đình. Có độ bóng, độ bám dính, độ mịn cao, mau khô dễ sử dụng – chịu tác dụng của môi trường axit, kiềm – thích hợp với điều kiện khí hậu Việt Nam</p>\n<p style="text-align:justify;"><span style="color:#0000ff;"><strong>1. Hướng dẫn sử dụng:</strong></span></p>\n<p style="text-align:justify;">Định mức sử dụng: 10 -12 m2/lít</p>\n<p style="text-align:justify;">Khuấy đều trước khi sử dụng</p>\n<p style="text-align:justify;">Dung môi pha loãng: Pha loãng bằng Xylen , Toluen hoặc các loại dung môi pha sơn khác</p>\n<p style="text-align:justify;"><strong><span style="color:#0000ff;"> 2. Chuẩn bị bề mặt:</span></strong></p>\n<p style="text-align:justify;">Trước khi sơn phủ, bề mặt phải khô và sạch , không dính bụi bẩn, dầu mỡ</p>\n<p style="text-align:justify;"><span style="color:#0000ff;"><strong>3. Hệ thống sơn đề nghị:</strong></span></p>\n<p style="text-align:justify;">Nên sơn 1 lớp lót trước khi sơn phủ, sơn phủ hoàn thiện 2 lớp</p>\n<p style="text-align:justify;"><span style="color:#0000ff;"><strong>4. Thành phần hóa chất:</strong></span></p>\n<p style="text-align:justify;">Nhựa tổng hợp, bột màu, dung môi và các phụ gia khác</p>\n<p style="text-align:justify;"><span style="color:#0000ff;"><strong>5. Chỉ tiêu chất lượng:</strong></span></p>\n<p style="text-align:justify;">Độ nhớt: 80 ÷ 120 giây ( FC4 ở 300C )</p>\n<p style="text-align:justify;">Độ mịn: ≤ 25 microns</p>\n<p style="text-align:justify;">Tỉ trọng: 0.905 ÷ 1.265 g/ml</p>\n<p style="text-align:justify;">Hàm lượng chất không bay hơi: 55 ÷ 60%</p>\n<p style="text-align:justify;"><span style="color:#0000ff;"><strong>6. Thông tin an toàn bảo quản:</strong></span></p>\n<p style="text-align:justify;">Vận chuyển cẩn thận và tránh xa các nguồn phát sinh ra lửa. Luôn đậy kỹ nắp thùng và để xa tầm tay của trẻ em, bảo quản nơi thoáng mát .</p>\n<p style="text-align:justify;"> </p>', '', 'donasaalkyd', '', '', '', 0, 1, '', 0, 0, '', '', '', '', 1, 1753),
(10356, 'Donasa_sunmaster1', '', '2012-09-10 02:13:41', 'donasasunmaster1-thumb.jpg', 'donasasunmaster1.jpg', '', '<p>Donasa_sunmaster1</p>', '', '<p style="text-align:justify;"><span style="color:#ff0000;"><strong>SUNMASTER 1</strong></span> là sản phẩm cao cấp hệ nước, 1 thành phần, 100% là nhựa Acrylic, dạng lỏng sệt, có mùi đặc trưng của amoniac. Sản phẩm có khả năng cách nhiệt cao, bám dính tốt trên các bề mặt betong, thạch cao, vữa hồ hay gạch. Đặc biệt bám dính trên cả bề mặt kim loại sau khi đã sử dụng lớp lót Sunmaster 6 .</p>\n<p style="text-align:justify;">Tạo màng cách nhiệt bảo vệ cho các công trình xây dựng, tiết kiệm năng lượng, giảm chi phí đầu tư. Sản phẩm được áp dụng trên các bề mặt betong, vữa hồ hay kim loại, có độ bám dính cao, chống thấm, khả năng đàn hồi cao và chịu được mọi sự thay đổi của thời tiết.</p>\n<p style="text-align:justify;"><span style="color:#0000ff;"><strong>1. Hướng dẫn sử dụng</strong>:</span></p>\n<p style="text-align:justify;">Pha loãng bằng nước sạch, hàm lượng từ 5 - 15 % theo thể tích. Khuấy đều trước khi sử dụng. Dùng cọ sơn, con lăn hoặc súng phun áp lực cao 40 – 50 kgf/cm2. Các súng phun thông thường không thể áp dụng sản phẩm này, có thể phun chân không và đầu phun phải thích hơp với áp lực khi phun.</p>\n<p style="text-align:justify;"><span style="color:#0000ff;"><strong>2. Chuẩn bị bề mặt:</strong></span></p>\n<p style="text-align:justify;">Bề mặt trước khi thi công phải đảm bảo không có bụi bẩn, tạp chất và các vết dầu mỡ bám trên bề mặt. Phải sử dụng nước sạch để tẩy rửa và để khô trước khi thi công. Nếu bề mặt bị nấm mốc và rong rêu, cần sử dụng dung dịch DONASA AF 03 để tẩy bề mặt. Trường hợp ứng dụng trên bề mặt kim loại cần sử dụng dung dịch Donasa OR 10 để vệ sinh bề mặt trước khi thi công.</p>\n<p style="text-align:justify;"><span style="color:#0000ff;"><strong>3. Hệ thống sơn đề nghị:</strong></span></p>\n<p style="text-align:justify;">Sử dụng Sunmaster 7 sơn 1 lớp cho bề mặt ciment hoặc Sunmaster 6 sơn 1 lớp cho bề mặt kim loại . Sơn 2 lớp Sunmaster 1</p>\n<p style="text-align:justify;"><span style="color:#0000ff;"><strong>4. Thành phần hóa chất:</strong></span></p>\n<p style="text-align:justify;">Nhựa Acrylic, các bột màu, phụ gia và nước</p>\n<p style="text-align:justify;"><strong><span style="color:#0000ff;">5. Chỉ tiêu kỹ thuật:</span></strong></p>\n<p style="text-align:justify;">Thời gian khô bề mặt tùy thuộc nhiệt độ và độ ẩm</p>\n<p style="text-align:justify;">Chiếu dày tối ưu: 140-150 µm (DFT) 400-450 µm (WFT)</p>\n<p style="text-align:justify;">Độ phủ lý thuyết: 2-3m²/lít</p>\n<p style="text-align:justify;">Độ bóng: Mờ (60°, ≤ 15%)</p>\n<p style="text-align:justify;">Pha loãng: nước</p>\n<p style="text-align:justify;"><strong><span style="color:#0000ff;">6. Thông tin an toàn bảo quản:</span></strong></p>\n<p style="text-align:justify;">Sản phẩm được áp dụng ở những nơi thông thoáng, khi thi công phải trang bị đầy đủ các dụng cụ bảo hộ lao động như găng tay, kiếng vv…Nếu sơn dính vào da hay mắt thì phải vệ sinh ngay bằng nước xà phòng, cần thiết phải chuyển ngay đến bác sĩ. Sản phẩm khi không sử dụng cần bảo quản kín. Sản phẩm được xác định không có tính độc hại, tuy nhiên đối với tất cả các hóa chất công nghiệp, cấn phải tránh khi tiếp xúc với da cũng như qua đường tiêu hóa.</p>\n<p style="text-align:justify;">Nếu có sự nghi ngờ về tính an toàn của sản phẩm xin liên hệ trực tiếp với nhà cung cấp.</p>\n<p style="text-align:justify;">Sản phẩm phải được bảo quản nơi thoáng khí, tránh ánh nắng mặt trời và tránh xa tầm với trẻ em.</p>\n<p style="text-align:justify;">Thời hạn bảo quản : 24 tháng kể từ ngày sản xuất.</p>\n<p style="text-align:justify;"> </p>', '', 'donasasunmaster1', '', '', '', 0, 29, '', 1, 0, '', '', '', '', 1, 1754),
(10358, 'Dulux 5 in 1', '', '2012-09-10 02:39:29', 'son-dulux-5-in-1-thumb.jpg', 'son-dulux-5-in-1.jpg', '', '<p>Sơn Dulux 5 in 1</p>', '', '<p style="text-align:center;"><strong>Sơn Dulux 5 in 1<br /></strong></p>', '', 'dulux-5-in-1', '', '', '', 0, 53, '', 0, 0, '', '', '', '', 1, 1760),
(10359, 'Dulux Inspire.', '', '2012-09-10 02:43:33', 'dulux-inspire--thumb.jpg', 'dulux-inspire-.jpg', '', '<p>Dulux Inspire</p>', '', '<p style="text-align:justify;"><strong>Dulux Inspire Màu Bền Đẹp</strong></p>\n<p style="text-align:justify;">Sơn nội thất Dulux Inspire tô điểm và gìn giữ vẻ đẹp cho ngôi nhà bạn. Với công nghệ Chroma</p>\n<p style="text-align:justify;">Brite cho màu sắc bền và tươi đẹp, tổ ấm của bạn sẽ luôn là không gian đẹp, dễ chịu và thoải mái. Ngoài ra, Dulux Inspire còn có bề mặt láng mịn và độ phủ cao.</p>\n<p style="text-align:justify;">Màu bền đẹp Không chứa chì và thủy ngân</p>\n<p style="text-align:justify;">Bề mặt láng mịn VOC thấp</p>\n<p style="text-align:justify;">Độ phủ cao Chứng nhận từ Ủy ban Môi trường Singapore</p>\n<p style="text-align:justify;"><strong>Thành phần cấu tạo</strong></p>\n<p style="text-align:justify;">Nước, bột khoáng, chất bền màu không chứa chì và nhựa gốc Acrylic.</p>\n<p style="text-align:justify;"><strong>Chỉ tiêu chất lượng</strong></p>\n<p style="text-align:justify;">Độ phủ lý thuyết: 12 - 14 m2/lít/lớp</p>\n<p style="text-align:justify;"><strong>Hướng dẫn sử dụng</strong></p>\n<p style="text-align:justify;">Bảo đảm bề mặt sơn phải sạch, không có tạp chất làm giảm độ bám dính như bột, bụi, dầu mỡ hay sáp.</p>\n<p style="text-align:justify;">Độ ẩm của bề mặt dưới 16% theo máy đo độ ẩm Protimeter hay để bề mặt tường khô từ 21 đến 28 ngày trong điều kiện bình thường (nhiệt độ trung bình 300C, độ ẩm môi trường 80%).</p>\n<p style="text-align:justify;">Thi công sơn:Khô bề mặt: 30 phút</p>\n<p style="text-align:justify;">Sơn lớp sau: 1-2 giờSố lớp sơn: 2 lớp</p>\n<p style="text-align:justify;">Pha sơn: không cần pha cho sử dụng thông thường. Nhưng nếu cần có thể pha tối đa 10% nước sạch. Khuấy đều trước khi sử dụng.</p>\n<p style="text-align:justify;">Làm sạch: rửa sạch dụng cụ với nước sạch ngay sau khi sử dụng.</p>\n<p style="text-align:justify;">Bảo quản: tồn trữ sơn ở nơi khô, mát. Đặt thùng sơn ở vị trí thẳng đứng an toàn và đậy chặt nắp. Dùng ngay sau khi mở nắp.</p>\n<p style="text-align:justify;"><strong>Tư vấn thi công</strong></p>\n<p style="text-align:justify;">Dùng hóa chất thích hợp để xử lý bề mặt có rêu mốc.</p>\n<p style="text-align:justify;">Sử dụng bột trét Dulux để có bề mặt nhẵn mịn.</p>\n<p style="text-align:justify;">Sơn lót 1 lớp Sơn lót trong nhà Dulux (A934-75007) để có bề mặt nhẵn mịn, tăng độ kết dính và giữ màu sắc bền lâu cho lớp sơn hoàn thiện</p>\n<p style="text-align:justify;">Không nên pha quá nhiều nước, độ che lấp sẽ kém.</p>\n<p style="text-align:justify;"><strong>Thông tin về an toàn, sức khỏe và môi trường</strong></p>\n<p style="text-align:justify;">Xả nhám khô, cắt màng sơn khô bằng kỹ thuật hàn hoặc lửa sẽ tạo bụi và/hoặc khói độc. Nên xả nhám ướt nếu có thể. Nếu điều kiện làm việc tại chỗ không thông thoáng để tránh tiếp xúc với khói độc, nên sử dụng thiết bị thích hợp bảo vệ đường hô hấp.</p>\n<p style="text-align:justify;">Thành phần có chứa chất diệt khuẩn</p>\n<p style="text-align:justify;">Có thể gây dị ứng khi tiếp xúc</p>\n<p style="text-align:justify;">Chỉ sử dụng ở nơi thông thoáng. Tránh hít bụi sơn</p>\n<p style="text-align:justify;">Tránh tiếp xúc với da hoặc mắt</p>\n<p style="text-align:justify;">Mang găng tay, khẩn trang và kính bảo vệ mắt thích hợp trong lúc thi công. Khi bị dính sơn vào mắt nên rửa với nhiều nước sạch và đến gặp bác sĩ ngay</p>\n<p style="text-align:justify;">Nếu nuốt phải, nên đến gặp bác sĩ ngay và mang theo thùng sơn hoặc nhãn sơn</p>\n<p style="text-align:justify;">Để xa tầm tay trẻ em</p>\n<p style="text-align:justify;">Không tái sử dụng thùng sơn để chứa thực phẩm hay đồ uống</p>\n<p style="text-align:justify;">Lấy lại lượng sơn còn dư trên cọ hoặc rulô trước khi rửaKhông đổ sơn vào cống rãnh hay nguồn nước</p>\n<p style="text-align:justify;">Tránh thải sơn ra môi trường</p>\n<p style="text-align:justify;">Gây hại cho sinh vật sống dưới nước. Có thể gây tác động có hại lâu dài cho môi trường sống dưới nước</p>\n<p style="text-align:justify;">Trong trường hợp bị đổ sơn, thu gom bằng đất hoặc cát.</p>\n<p style="text-align:justify;">Xem thêm hướng dẫn trong Bảng Thông Tin An Toàn Sản Phẩm</p>\n<p style="text-align:justify;"> </p>', '', 'dulux-inspire', '', '', '', 0, 51, '', 1, 0, '', '', '', '', 1, 1760),
(10360, 'Dulux Maxilite', '', '2012-09-10 02:47:04', 'dulux-maxilite-thumb.jpg', 'dulux-maxilite.jpg', '', '<p>Dulux Maxilite</p>', '', '<p style="text-align:justify;"><strong>Sơn nước trong nhà Maxilite</strong> có chất lượng và độ bền cao, dùng cho mục đích trang trí và bảo vệ các bề mặt tường xây trong nhà. Maxilite được sản xuất theo công nghệ tiên tiến, cho màu sắc đa dạng, tươi sáng, có độ che lấp cao và dễ thi công. Ngoài ra Maxilite có 3 ưu điểm vượt trội:</p>\n<p style="text-align:justify;">+ Cho bề mặt láng mịn</p>\n<p style="text-align:justify;">+ Chống nấm mốc</p>\n<p style="text-align:justify;">+ Có độ phủ cao giúp tiết kiệm chi phí</p>\n<p style="text-align:justify;"><strong>Thành phần cấu tạo</strong></p>\n<p style="text-align:justify;">Nước, bột khoáng, chất bền màu không chứa chì và nhựa gốc Acrylic.</p>\n<p style="text-align:justify;"><strong>Chỉ tiêu chất lượng</strong></p>\n<p style="text-align:justify;">Độ phủ lý thuyết: 10 - 12 m2/lít/lớp</p>\n<p style="text-align:justify;"><strong>Hướng dẫn sử dụng</strong></p>\n<p style="text-align:justify;">Bảo đảm bề mặt sơn phải sạch, không có tạp chất làm giảm độ bám dính như bột, bụi, dầu mỡ hay sáp.</p>\n<p style="text-align:justify;">Độ ẩm của bề mặt dưới 16% theo máy đo độ ẩm Protimeter hay để bề mặt tường khô từ 21 đến 28 ngày trong điều kiện bình thường (nhiệt độ trung bình 300C, độ ẩm môi trường 80%).</p>\n<p style="text-align:justify;">Dùng giấy nhám thích hợp chà nhám sau đó quét sạch bụi.</p>\n<p style="text-align:justify;">Thi công sơn:Khô bề mặt: 30 phút (hoặc lâu hơn nếu môi trường có độ ẩm cao).</p>\n<p style="text-align:justify;">Sơn lớp sau: 1 - 2 giờ</p>\n<p style="text-align:justify;">Số lớp sơn: 2 lớp</p>\n<p style="text-align:justify;">Pha sơn: pha sơn với tỷ lệ không quá 10% nước sạch (1,8 lít nước sạch pha với 18 lít sơn Maxilite). Khuấy đều trước khi sử dụng.</p>\n<p style="text-align:justify;">Làm sạch: rửa sạch dụng cụ với nước sạch ngay sau khi sử dụng.</p>\n<p style="text-align:justify;">Bảo quản: cất giữ sơn ở nơi khô, mát. Đặt thùng sơn ở vị trí thẳng đứng an toàn và đậy chặt nắp. Dùng ngay sau khi mở nắp.</p>\n<p style="text-align:justify;"><strong>Tư vấn thi công</strong></p>\n<p style="text-align:justify;">Dùng hóa chất thích hợp để xử lý bề mặt có rêu mốc.</p>\n<p style="text-align:justify;">Sử dụng bột trét Dulux để có bề mặt nhẵn mịn.</p>\n<p style="text-align:justify;">Sơn lót 1 lớp Sơn lót trong nhà Dulux (A934-75007) để có bề mặt nhẵn mịn.</p>\n<p style="text-align:justify;">Đối với bề mặt tường cũ hoặc bị phấn hóa sữ dụng Dulux Sơn lót trong nhà (A934-75007) để có bề mặt nhẵn mịn tăng độ kết dính và giữ màu sắc bềnh lâu.Không nên pha quá nhiều nước vì sẽ làm giảm độ che lấp.</p>\n<p style="text-align:justify;"><strong>Thông tin về an toàn, sức khỏe và môi trường</strong></p>\n<p style="text-align:justify;">Thành phần có chứa chất diệt khuẩn.</p>\n<p style="text-align:justify;">Có thể gây dị ứng khi tiếp xúc</p>\n<p style="text-align:justify;">Chỉ sử dụng ở nơi thông thoáng. Tránh hít bụi sơn</p>\n<p style="text-align:justify;">Tránh tiếp xúc với da hoặc mắt.</p>\n<p style="text-align:justify;">Mang găng tay, khẩu trang và kính bảo vệ mắt thích hợp trong lúc thi công. Khi bị dính sơn vào mắt nên rửa với nhiều nước sạch và đến gặp bác sĩ ngay.</p>\n<p style="text-align:justify;">Nếu nuốt phải, nên đến gặp bác sĩ ngay và mang theo thùng sơn hoặc nhãn sơn.</p>\n<p style="text-align:justify;">Để xa tầm với trẻ em.Không tái sử dụng thùng sơn để chứa thực phẩm hay đồ uống.</p>\n<p style="text-align:justify;">Lấy lại lượng sơn còn dư trên cọ hoặc ru lô trước khi rửa.Không đổ sơn vào cống rãnh hay nguồn nước.</p>\n<p style="text-align:justify;">Tránh thải sơn ra môi trường</p>\n<p style="text-align:justify;">Gây hại cho sinh vật sống dưới nước. Có thể gây tác động có hại lâu dài cho môi trường sống dưới nước.</p>\n<p style="text-align:justify;">Trong trường hợp bị đổ sơn, thu gom bằng đất hoặc cát.</p>\n<p style="text-align:justify;">Xem thêm hướng dẫn trong Bảng Thông Tin An Toàn Sản Phẩm.</p>\n<p style="text-align:justify;"> </p>', '', 'dulux-maxilite', '', '', '', 0, 50, '', 0, 0, '', '', '', '', 1, 1760),
(10361, 'Dulux Lau chùi hiệu quả', '', '2012-09-10 02:50:29', 'dulux-lau-chui-hieu-qua-thumb.jpg', 'dulux-lau-chui-hieu-qua.jpg', '', '<p>Dulux Lau chùi hiệu quả</p>', '', '<p style="text-align:center;"><strong>Dulux Lau chùi hiệu quả</strong></p>', '', 'dulux-lau-chui-hieu-qua', '', '', '', 0, 52, '', 0, 0, '', '', '', '', 1, 1760),
(10362, 'Dulux Weathershield Max', '', '2012-09-10 05:35:38', 'dulux-weathershield-max-thumb.jpg', 'dulux-weathershield-max.jpg', '', '<p>Dulux Weathershield Max</p>', '', '<p style="text-align:justify;"><strong>Dulux Weathershield Max</strong> là sơn nước cao cấp ngoài trời với tính năng chống thấm vượt trội. Nhờ tính năng Chịu Mưa, khả năng đàn hồi ưu việt của màng sơn và che lấp các vết nứt nhỏ, sản phẩm tạo lớp bảo vệ hoàn hảo cho ngôi nhà trước tác hại của nước. Ngoài ra, công nghệ Colour-lock của Dulux còn bảo vệ màng sơn lâu dài trước tia UV. Bề mặt sơn bóng mờ khoác lên ngôi nhà vẻ đẹp cổ điển và quyến rũ. Dulux Weathershield Max bảo vệ và giữ cho nhà bạn bền đẹp dài lâu.</p>\n<p style="text-align:justify;"><strong>Thành phần cấu tạo</strong></p>\n<p style="text-align:justify;">Nhựa gốc Acrylic, bột khoáng, chất màu không chứa chì và nước.</p>\n<p style="text-align:justify;"><strong>Đặc tính kỹ thuật</strong></p>\n<p style="text-align:justify;">Màng sơn: Bóng Mờ</p>\n<p style="text-align:justify;">Độ phủ lý thuyết: 11- 13 m2/lít/lớp</p>\n<p style="text-align:justify;"><strong>Hướng dẫn sử dụng</strong></p>\n<p style="text-align:justify;">Khuấy đều trước khi sử dụng.</p>\n<p style="text-align:justify;"><strong>Thi công sơn</strong>:Rửa sạch dụng cụ với nước ngay sau khi sử dụng.</p>\n<p style="text-align:justify;">Bảo quản sơn ở nơi khô, mát.</p>\n<p style="text-align:justify;">Đặt thùng sơn ở vị trí thẳng đứng an toàn và đậy chặt nắp.</p>\n<p style="text-align:justify;">Dùng ngay sau khi mở nắp.</p>\n<p style="text-align:justify;"><strong>Tư vấn thi công:</strong></p>\n<p style="text-align:justify;">Điều kiện thi công: Độ ẩm của bề mặt dưới 16% theo máy đo độ ẩm Protimeter hay để bề mặt tường khô từ 21 đến 28 ngày trong điều kiện bình thường (nhiệt độ trung bình 300C, độ ẩm môi trường 80%).</p>\n<p style="text-align:justify;">Không thi công sơn nếu nhiệt độ thời tiết dưới 100C.</p>\n<p style="text-align:justify;">Bảo đảm bề mặt sơn phải sạch, khô, không có tạp chất làm giảm độ bám dính như bụi, dầu mỡ hay sáp.</p>\n<p style="text-align:justify;">Dùng hóa chất thích hợp để xử lý bề mặt có rêu mốc.</p>\n<p style="text-align:justify;">Đối với bề mặt cũ bị phấn hóa, cần loại bỏ màng sơn cũ bằng dụng cụ thích hợp trước khi thi công.</p>\n<p style="text-align:justify;">Xử lý triệt để các vết nứt tường trước khi thi công sơn.</p>\n<p style="text-align:justify;">Hệ thống sơn đề nghị:Bột Trét Cao Cấp Ngoài Trời Dulux Weathershield hoặc Bột Trét Cao Cấp Dulux 1-2 lớp</p>\n<p style="text-align:justify;"><strong>Thông tin về an toàn, sức khỏe và môi trường</strong></p>\n<p style="text-align:justify;">Thành phần có chứa chất diệt khuẩn.</p>\n<p style="text-align:justify;">Có thể gây dị ứng khi tiếp xúc.</p>\n<p style="text-align:justify;">Chỉ sử dụng ở nơi thông thoáng.</p>\n<p style="text-align:justify;">Tránh hít bụi sơn.</p>\n<p style="text-align:justify;">Tránh tiếp xúc với da hoặc mắt.</p>\n<p style="text-align:justify;">Mang găng tay, khẩu trang và kính bảo vệ mắt thích hợp trong lúc thi công.</p>\n<p style="text-align:justify;">Khi bị dính sơn vào mắt nên rửa với nhiều nước sạch và đến gặp bác sĩ ngay.</p>\n<p style="text-align:justify;">Nếu nuốt phải, nên đến gặp bác sĩ ngay và mang theo thùng sơn hoặc nhãn sơn.</p>\n<p style="text-align:justify;">Để xa tầm tay trẻ em.Không tái sử dụng thùng sơn để chứa thực phẩm hay đồ uống.</p>\n<p style="text-align:justify;">Lấy lại lượng sơn còn dư trên cọ hoặc rulô trước khi rửa.</p>\n<p style="text-align:justify;">Không đổ sơn vào cống rãnh hay nguồn nước.</p>\n<p style="text-align:justify;">Tránh thải sơn ra môi trường.Gây hại cho sinh vật sống dưới nước.</p>\n<p style="text-align:justify;">Có thể gây tác động có hại lâu dài cho môi trường sống dưới nước.</p>\n<p style="text-align:justify;">Trong trường hợp bị đổ sơn, thu gom bằng đất hoặc cát.Việc xả nhám khô, cắt màng sơn khô bằng kỹ thuật hàn hoặc lửa sẽ tạo bụi và/hoặc khói độc.</p>\n<p style="text-align:justify;">Nên xả nhám ướt nếu có thể.</p>\n<p style="text-align:justify;">Nếu điều kiện làm việc tại chỗ không thông thoáng để tránh tiếp xúc với khói độc, nên sử dụng thiết bị thích hợp bảo vệ đường hô hấp.</p>\n<p style="text-align:justify;">Xem thêm hướng dẫn trong Bảng Thông Tin An Toàn Sản Phẩm.</p>\n<p style="text-align:justify;">Tính năng Giảm Nhiệt (Keep Cool) và Thân Thiện Hơn với Môi Trường (Green Label) không áp dụng cho một số màu.</p>\n<p style="text-align:justify;"> </p>', '', 'dulux-weathershield-max', '', '', '', 0, 55, '', 0, 0, '', '', '', '', 1, 1761),
(10363, 'Dulux Weathershield Bề Mặt Bóng', '', '2012-09-10 05:41:08', 'dulux-weathershield-be-mat-bong-thumb.jpg', 'dulux-weathershield-be-mat-bong.jpg', '', '<p>Dulux Weathershield Bề Mặt Bóng</p>', '', '<p style="text-align:justify;"><strong>Dulux Weathershield Bề Mặt Bóng</strong> là sơn nước cao cấp ngoài trời với bề mặt sơn bóng, mang lại vẻ đẹp sang trọng cho ngôi nhà. Sản phẩm sử dụng công nghệ Alkaline Guard tiên tiến của Anh không chỉ tạo lớp bảo vệ hoàn hảo cho ngôi nhà của bạn trước các điều kiện thời tiết khắc nghiệt mà còn trước hơi ẩm và nước từ bên trong tường. Ngoài ra, công nghệ Colour-lock của Dulux trong sản phẩm bảo vệ màng sơn bền lâu hơn từ khả năng chống tia UV và bạc màu. Dulux Weathershield Bề Mặt Bóng bảo vệ và giữ cho nhà bạn bền đẹp dài lâu.</p>\n<p style="text-align:justify;"><strong>Thành phần cấu tạo</strong></p>\n<p style="text-align:justify;">Nhựa gốc Acrylic, bột khoáng, chất màu không chứa chì, phụ gia và nước.</p>\n<p style="text-align:justify;"><strong>Đặc tính kỹ thuật</strong></p>\n<p style="text-align:justify;">Màng sơn: Bóng</p>\n<p style="text-align:justify;">Độ phủ lý thuyết: 11- 13 m2/lít/lớp</p>\n<p style="text-align:justify;"><strong>Hướng dẫn sử dụng</strong></p>\n<p style="text-align:justify;">Khuấy đều trước khi sử dụng.</p>\n<p style="text-align:justify;"><strong>Thi công sơn</strong>:</p>\n<p style="text-align:justify;">Rửa sạch dụng cụ với nước ngay sau khi sử dụng.</p>\n<p style="text-align:justify;">Bảo quản sơn ở nơi khô, mát.</p>\n<p style="text-align:justify;">Đặt thùng sơn ở vị trí thẳng đứng an toàn và đậy chặt nắp.</p>\n<p style="text-align:justify;">Dùng ngay sau khi mở nắp.</p>\n<p style="text-align:justify;"><strong>Tư vấn thi công</strong></p>\n<p style="text-align:justify;">Điều kiện thi công: Độ ẩm của bề mặt dưới 16% theo máy đo độ ẩm Protimeter hay để bề mặt tường khô từ 21 đến 28 ngày trong điều kiện bình thường (nhiệt độ trung bình 300C, độ ẩm môi trường 80%).</p>\n<p style="text-align:justify;">Không thi công sơn nếu nhiệt độ thời tiết dưới 100C.</p>\n<p style="text-align:justify;">Bảo đảm bề mặt sơn phải sạch, khô, không có tạp chất làm giảm độ bám dính như bụi, dầu mỡ hay sáp.</p>\n<p style="text-align:justify;">Dùng hóa chất thích hợp để xử lý bề mặt có rêu mốc.</p>\n<p style="text-align:justify;">Đối với bề mặt cũ bị phấn hóa, cần loại bỏ màng sơn cũ bằng dụng cụ thích hợp trước khi thi công.Xử lý triệt để các vết nứt tường trước khi thi công sơn.</p>\n<p style="text-align:justify;"><strong>Thông tin về an toàn, sức khỏe và môi trường</strong></p>\n<p style="text-align:justify;">Thành phần có chứa chất diệt khuẩn.</p>\n<p style="text-align:justify;">Có thể gây dị ứng khi tiếp xúc.</p>\n<p style="text-align:justify;">Chỉ sử dụng ở nơi thông thoáng.</p>\n<p style="text-align:justify;">Tránh hít bụi sơn.</p>\n<p style="text-align:justify;">Tránh tiếp xúc với da hoặc mắt.</p>\n<p style="text-align:justify;">Mang găng tay, khẩu trang và kính bảo vệ mắt thích hợp trong lúc thi công.</p>\n<p style="text-align:justify;">Khi bị dính sơn vào mắt nên rửa với nhiều nước sạch và đến gặp bác sĩ ngay.</p>\n<p style="text-align:justify;">Nếu nuốt phải, nên đến gặp bác sĩ ngay và mang theo thùng sơn hoặc nhãn sơn.</p>\n<p style="text-align:justify;">Để xa tầm tay trẻ em.</p>\n<p style="text-align:justify;">Không tái sử dụng thùng sơn để chứa thực phẩm hay đồ uống.</p>\n<p style="text-align:justify;">Lấy lại lượng sơn còn dư trên cọ hoặc rulô trước khi rửa.</p>\n<p style="text-align:justify;">Không đổ sơn vào cống rãnh hay nguồn nước.</p>\n<p style="text-align:justify;">Tránh thải sơn ra môi trường.</p>\n<p style="text-align:justify;">Gây hại cho sinh vật sống dưới nước.</p>\n<p style="text-align:justify;">Có thể gây tác động có hại lâu dài cho môi trường sống dưới nước.</p>\n<p style="text-align:justify;">Trong trường hợp bị đổ sơn, thu gom bằng đất hoặc cát.</p>\n<p style="text-align:justify;">Việc xả nhám khô, cắt màng sơn khô bằng kỹ thuật hàn hoặc lửa sẽ tạo bụi và/hoặc khói độc.</p>\n<p style="text-align:justify;">Nên xả nhám ướt nếu có thể.</p>\n<p style="text-align:justify;">Nếu điều kiện làm việc tại chỗ không thông thoáng để tránh tiếp xúc với khói độc, nên sử dụng thiết bị thích hợp bảo vệ đường hô hấp.</p>\n<p style="text-align:justify;">Xem thêm hướng dẫn trong Bảng Thông Tin An Toàn Sản Phẩm.</p>\n<p style="text-align:justify;">Tính năng Giảm Nhiệt (Keep Cool) và Thân Thiện Hơn với Môi Trường (Green Label) không áp dụng cho một số màu.</p>\n<p style="text-align:justify;"> </p>', '', 'dulux-weathershield-be-mat-bong', '', '', '', 0, 94, '', 0, 0, '', '', '', '', 1, 1761),
(10364, 'Dulux Weathershield Bề Mặt Mờ', '', '2012-09-10 05:45:15', 'dulux-weathershield-be-mat-mo-thumb.jpg', 'dulux-weathershield-be-mat-mo.jpg', '', '<p>Dulux Weathershield Bề Mặt Mờ</p>', '', '<p style="text-align:justify;"><strong>Dulux Weathershield Bề Mặt Mờ</strong> là sơn nước cao cấp ngoài trời mang lại vẻ đẹp hiện đại cho ngôi nhà. Sản phẩm sử dụng công nghệ Alkaline Guard tiên tiến của Anh không chỉ tạo lớp bảo vệ hoàn hảo cho ngôi nhà của bạn trước các điều kiện thời tiết khắc nghiệt và bụi bẩn mà còn trước hơi ẩm và nước từ bên trong tường. Ngoài ra, công nghệ Colour-lock của Dulux trong sản phẩm bảo vệ màng sơn bền lâu hơn từ khả năng chống tia UV và bạc màu. Dulux Weathershield Bề Mặt Mờ bảo vệ và giữ cho nhà bạn bền đẹp dài lâu.</p>\n<p style="text-align:justify;"><strong>Thành phần cấu tạo</strong></p>\n<p style="text-align:justify;">Nhựa gốc Acrylic, bột khoáng, chất màu không chứa chì, phụ gia và nước.</p>\n<p style="text-align:justify;"><strong>Đặc tính kỹ thuật</strong></p>\n<p style="text-align:justify;">Màng sơn: Mờ</p>\n<p style="text-align:justify;">Độ phủ lý thuyết: 11- 13 m2/lít/lớp</p>\n<p style="text-align:justify;"><strong>Hướng dẫn sử dụng</strong></p>\n<p style="text-align:justify;">Khuấy đều trước khi sử dụng.</p>\n<p style="text-align:justify;"><strong>Thi công sơn</strong>: Rửa sạch dụng cụ với nước ngay sau khi sử dụng.</p>\n<p style="text-align:justify;">Bảo quản sơn ở nơi khô, mát.</p>\n<p style="text-align:justify;">Đặt thùng sơn ở vị trí thẳng đứng an toàn và đậy chặt nắp.</p>\n<p style="text-align:justify;">Dùng ngay sau khi mở nắp.</p>\n<p style="text-align:justify;"><strong>Tư vấn thi công</strong></p>\n<p style="text-align:justify;">Điều kiện thi công: Độ ẩm của bề mặt dưới 16% theo máy đo độ ẩm Protimeter hay để bề mặt tường khô từ 21 đến 28 ngày trong điều kiện bình thường (nhiệt độ trung bình 300C, độ ẩm môi trường 80%).</p>\n<p style="text-align:justify;">Không thi công sơn nếu nhiệt độ thời tiết dưới 100C.</p>\n<p style="text-align:justify;">Bảo đảm bề mặt sơn phải sạch, khô, không có tạp chất làm giảm độ bám dính như bụi, dầu mỡ hay sáp.</p>\n<p style="text-align:justify;">Dùng hóa chất thích hợp để xử lý bề mặt có rêu mốc.</p>\n<p style="text-align:justify;">Đối với bề mặt cũ bị phấn hóa, cần loại bỏ màng sơn cũ bằng dụng cụ thích hợp trước khi thi công.</p>\n<p style="text-align:justify;">Xử lý triệt để các vết nứt tường trước khi thi công sơn.</p>\n<p style="text-align:justify;"><strong>Thông tin về an toàn, sức khỏe và môi trường</strong></p>\n<p style="text-align:justify;">Thành phần có chứa chất diệt khuẩn.</p>\n<p style="text-align:justify;">Có thể gây dị ứng khi tiếp xúc.</p>\n<p style="text-align:justify;">Chỉ sử dụng ở nơi thông thoáng.</p>\n<p style="text-align:justify;">Tránh hít bụi sơn.</p>\n<p style="text-align:justify;">Tránh tiếp xúc với da hoặc mắt.</p>\n<p style="text-align:justify;">Mang găng tay, khẩu trang và kính bảo vệ mắt thích hợp trong lúc thi công.</p>\n<p style="text-align:justify;">Khi bị dính sơn vào mắt nên rửa với nhiều nước sạch và đến gặp bác sĩ ngay.</p>\n<p style="text-align:justify;">Nếu nuốt phải, nên đến gặp bác sĩ ngay và mang theo thùng sơn hoặc nhãn sơn.</p>\n<p style="text-align:justify;">Để xa tầm tay trẻ em.Không tái sử dụng thùng sơn để chứa thực phẩm hay đồ uống.</p>\n<p style="text-align:justify;">Lấy lại lượng sơn còn dư trên cọ hoặc rulô trước khi rửa.</p>\n<p style="text-align:justify;">Không đổ sơn vào cống rãnh hay nguồn nước.</p>\n<p style="text-align:justify;">Tránh thải sơn ra môi trường.Gây hại cho sinh vật sống dưới nước.</p>\n<p style="text-align:justify;">Có thể gây tác động có hại lâu dài cho môi trường sống dưới nước.</p>\n<p style="text-align:justify;">Trong trường hợp bị đổ sơn, thu gom bằng đất hoặc cát.</p>\n<p style="text-align:justify;">Việc xả nhám khô, cắt màng sơn khô bằng kỹ thuật hàn hoặc lửa sẽ tạo bụi và/hoặc khói độc.</p>\n<p style="text-align:justify;">Nên xả nhám ướt nếu có thể.</p>\n<p style="text-align:justify;">Nếu điều kiện làm việc tại chỗ không thông thoáng để tránh tiếp xúc với khói độc, nên sử dụng thiết bị thích hợp bảo vệ đường hô hấp.</p>\n<p style="text-align:justify;">Xem thêm hướng dẫn trong Bảng Thông Tin An Toàn Sản Phẩm.</p>\n<p style="text-align:justify;">Tính năng Giảm Nhiệt (Keep Cool) và Thân Thiện Hơn với Môi Trường (Green Label) không áp dụng cho một số màu.</p>\n<p style="text-align:justify;"> </p>', '', 'dulux-weathershield-be-mat-mo', '', '', '', 0, 57, '', 0, 0, '', '', '', '', 1, 1761);
INSERT INTO `dos_module_products` (`record_id`, `title`, `titleen`, `postdate`, `pic_thumb`, `pic_full`, `pic_desc`, `preview`, `previewen`, `content`, `contenten`, `tag`, `tagen`, `description`, `descriptionen`, `hits`, `record_order`, `unit`, `hot`, `specials`, `extra_field1`, `extra_field2`, `extra_field3`, `extra_field4`, `enable`, `dos_module_item_cat_cat_id`) VALUES
(10365, 'Dulux Weathershield Ngói', '', '2012-09-10 05:48:15', 'dulux-weathershield-ngoi-thumb.jpg', 'dulux-weathershield-ngoi.jpg', '', '<p>Dulux Weathershield Ngói</p>', '', '<p style="text-align:justify;"><strong>Dulux Weathershield Cho Ngói</strong> là sơn nước cao cấp ngoài trời được đặc chế cho ngói. Với màng sơn cứng chắc, chống thấm hoàn hảo và công thức màu đặc biệt, Dulux Weathershield Cho Ngói bảo vệ và mang lại vẻ đẹp bền lâu cho ngôi nhà trong mọi điều kiện thời tiết khắc nghiệt.</p>\n<p style="text-align:justify;"><strong>Thành phần cấu tạo</strong></p>\n<p style="text-align:justify;">Nhựa gốc Acrylic, bột khoáng, chất màu không chứa chì và nước.</p>\n<p style="text-align:justify;"><strong>Đặc tính kỹ thuật</strong></p>\n<p style="text-align:justify;">Màng sơn: Bóng</p>\n<p style="text-align:justify;">Độ phủ lý thuyết: 11- 13 m2/lít/lớp</p>\n<p style="text-align:justify;"><strong>Hướng dẫn sử dụng</strong></p>\n<p style="text-align:justify;">Khuấy đều trước khi sử dụng.</p>\n<p style="text-align:justify;">Thi công sơn: Rửa sạch dụng cụ với nước sạch trước và sau khi sử dụng.</p>\n<p style="text-align:justify;">Bảo quản sơn ở nơi khô, mát.</p>\n<p style="text-align:justify;">Đặt thùng sơn ở vị trí thẳng đứng an toàn và đậy chặt nắp.</p>\n<p style="text-align:justify;">Dùng ngay sau khi mở nắp.</p>\n<p style="text-align:justify;"><strong>Tư vấn thi công</strong></p>\n<p style="text-align:justify;">Điều kiện thi công: Bảo đảm bề mặt sơn phải sạch, khô, không có tạp chất làm giảm độ bám dính như bụi, dầu mỡ hay sáp.</p>\n<p style="text-align:justify;">Đối với bề mặt cũ, dùng hóa chất thích hợp để xử lý bề mặt nếu có rêu mốc, cần loại bỏ màng sơn cũ bằng dụng cụ thích hợp trước khi thi công. Không thi công sơn nếu nhiệt độ thời tiết dưới 100C.</p>\n<p style="text-align:justify;">Không thi công sơn trên các bề mặt ngói đất nung đã được tráng men bóng, được làm láng hay xử lý với chất chống thấm.</p>\n<p style="text-align:justify;"><strong>Thông tin về an toàn, sức khỏe và môi trường</strong></p>\n<p style="text-align:justify;">Thành phần có chứa chất diệt khuẩn.</p>\n<p style="text-align:justify;">Có thể gây dị ứng khi tiếp xúc.</p>\n<p style="text-align:justify;">Chỉ sử dụng ở nơi thông thoáng.</p>\n<p style="text-align:justify;">Tránh hít bụi sơn.</p>\n<p style="text-align:justify;">Tránh tiếp xúc với da hoặc mắt.</p>\n<p style="text-align:justify;">Mang găng tay, khẩu trang và kính bảo vệ mắt thích hợp trong lúc thi công.</p>\n<p style="text-align:justify;">Khi bị dính sơn vào mắt nên rửa với nhiều nước sạch và đến gặp bác sĩ ngay.</p>\n<p style="text-align:justify;">Nếu nuốt phải, nên đến gặp bác sĩ ngay và mang theo thùng sơn hoặc nhãn sơn.</p>\n<p style="text-align:justify;">Để xa tầm tay trẻ em.</p>\n<p style="text-align:justify;">Không tái sử dụng thùng sơn để chứa thực phẩm hay đồ uống.</p>\n<p style="text-align:justify;">Lấy lại lượng sơn còn dư trên cọ hoặc rulô trước khi rửa.Không đổ sơn vào cống rãnh hay nguồn nước.</p>\n<p style="text-align:justify;">Tránh thải sơn ra môi trường.</p>\n<p style="text-align:justify;">Gây hại cho sinh vật sống dưới nước.</p>\n<p style="text-align:justify;">Có thể gây tác động có hại lâu dài cho môi trường sống dưới nước.</p>\n<p style="text-align:justify;">Trong trường hợp bị đổ sơn, thu gom bằng đất hoặc cát.</p>\n<p style="text-align:justify;">Việc xả nhám khô, cắt màng sơn khô bằng kỹ thuật hàn hoặc lửa sẽ tạo bụi và/hoặc khói độc.</p>\n<p style="text-align:justify;">Nên xả nhám ướt nếu có thể.</p>\n<p style="text-align:justify;">Nếu điều kiện làm việc tại chỗ không thông thoáng để tránh tiếp xúc với khói độc, nên sử dụng thiết bị thích hợp bảo vệ đường hô hấp.</p>\n<p style="text-align:justify;">Xem thêm hướng dẫn trong Bảng Thông Tin An Toàn Sản Phẩm.</p>\n<p style="text-align:justify;">Tính năng Giảm Nhiệt (Keep Cool) và Thân Thiện Hơn với Môi Trường (Green Label) không áp dụng cho một số màu.</p>\n<p style="text-align:justify;"> </p>', '', 'dulux-weathershield-ngoi', '', '', '', 0, 34, '', 1, 0, '', '', '', '', 1, 1761),
(10367, 'Dulux Maxilite  .', '', '2012-09-10 05:55:41', 'dulux-maxilite----thumb.jpg', 'dulux-maxilite---.jpg', '', '<p>Sơn nước ngoài trời ICI Maxilite</p>', '', '<p style="text-align:justify;"><strong>Sơn nước ngoài trời ICI Maxilite</strong> có chất lượng và độ bền cao, dùng trang trí và bảo vệ các bề mặt tường xây trong nhà. ICI Maxilite được sản xuất theo công nghệ tiên tiến, cho màu sắc đa dạng, lâu phai, có độ che lấp cao và thi công dễ dàng. Ngoài ra ICI Maxilite còn có 3 ưu điểm vượt trội:</p>\n<p style="text-align:justify;">+ Độ phủ cao</p>\n<p style="text-align:justify;">+ Chống rêu mốc</p>\n<p style="text-align:justify;">+ Màng sơn không rạn nứt</p>\n<p style="text-align:justify;"><strong>Thành phần cấu tạo</strong></p>\n<p style="text-align:justify;">Nhựa gốc Acrylic, chất bền màu không chứa chì, bột khoáng, phụ gia và nước.</p>\n<p style="text-align:justify;"><strong>Chỉ tiêu chất lượng</strong></p>\n<p style="text-align:justify;">Độ phủ lý thuyết: 10- 12 m2/lít/lớp</p>\n<p style="text-align:justify;"><strong>Hướng dẫn sử dụng</strong></p>\n<p style="text-align:justify;">Chuẩn bị bề mặt: Bề mặt cần sơn phải sạch, không có tạp chất làm giảm sự bám dính như bụi, dầu mỡ hay sáp.</p>\n<p style="text-align:justify;">Độ ẩm của bề mặt cần sơn phải thấp hơn 16% theo máy đo độ ẩm Protimeter. Hoặc có thể để bề mặt tường khô từ 21 - 28 ngày trong điều kiện bình thướng 30oC, độ ẩm môi trường 80%.</p>\n<p style="text-align:justify;">Dùng giấy nhám thích hợp để chà nhám, sau đó quét sạch bụi.</p>\n<p style="text-align:justify;">Các vết nứt lớn cần được xử lý một cách thích hợp. Cần có biện pháp chống thấm thích hợp ở những khu vực dễ ngấm ẩm như nền đất, lan can,…</p>\n<p style="text-align:justify;">Đối với bề mặt tường cũ bị bong tróc, rêu mốc, cạo sạch lớp sơn cũ bằng dụng cụ thích hợp. Dùng hóa chất thích hợp để rửa sạch các khu vực bị nấm mốc hay rong rêu. Sử dụng Sơn Lót Cao Cấp Dulux Weathershield Chống Kiềm (A936-75230) cho hệ thống Sơn ngoài trời để tăng cường độ bám dính và chống kiềm</p>\n<p style="text-align:justify;">Lưu ý: không sơn Sơn nước ngoài trời Maxilite trong điều kiện thời tiết ẩm ướt (nhiệt độ bề mặt thi công không dưới 100C).Thi công sơn:Khô bề mặt: 30 phút (hoặc lâu hơn nếu môi trường có độ ẩm cao)</p>\n<p style="text-align:justify;"><strong>Tư vấn thi công</strong></p>\n<p style="text-align:justify;">Dùng Dulux Fungicidal Wash (A980-19260) để xử lý bề mặt có rêu mốc.</p>\n<p style="text-align:justify;">Sử dụng bột trét ICI Dulux (A502-29130) để có bề mặt nhẵn mịn</p>\n<p style="text-align:justify;">Sơn lót 1 lớp sơn lót trong nhà Dulux (A934-75007) để chống kiềm hoá.Với bề mặt bị phấn hoá, dùng sơn lót Dulux Solventborne Sealer (A579-15054) để tăng độ bám dính.</p>\n<p style="text-align:justify;">Không nên pha quá nhiều nước vì sẽ làm giảm độ che lấp.</p>\n<p style="text-align:justify;"><strong>Thông tin về an toàn, sức khỏe và môi trường</strong></p>\n<p style="text-align:justify;">Tránh tiếp xúc với da. Có thể gây dị ứng khi tiếp xúc da.Gây hại cho sinh vật sống dưới nước. Có thể gây tác động có hại lâu dài cho môi trường sống dưới nước.</p>\n<p style="text-align:justify;">Để xa tầm tay trẻ em.</p>\n<p style="text-align:justify;">Tránh hít bụi sơn.</p>\n<p style="text-align:justify;">Mang găng tay thích hợp.</p>\n<p style="text-align:justify;">Chỉ sử dụng ở nơi thông thoáng.</p>\n<p style="text-align:justify;">Tránh thải sơn ra môi trường.</p>\n<p style="text-align:justify;">Mang găng tay, khẩu trang và kính bảo vệ mắt thích hợp trong lúc thi công. Khi bị dính sơn vào mắt nên rửa với nhiều nước sạch và đến gặp bác sĩ ngay.</p>\n<p style="text-align:justify;">Nếu nuốt phải, nên đến gặp bác sĩ ngay và mang theo thùng sơn hoặc nhãn sơn.</p>\n<p style="text-align:justify;">Không đổ sơn vào cống rãnh hay nguồn nước.</p>\n<p style="text-align:justify;">Trong trường hợp bị đổ sơn, thu gom bằng đất hoặc cát.</p>\n<p style="text-align:justify;">Xem thêm hướng dẫn trong Bảng Thông Tin An Toàn Sản Phẩm.</p>\n<p style="text-align:justify;">Tính năng Giảm Nhiệt (Keep Cool) và Thân Thiện Hơn với Môi Trường (Green Label) không áp dụng cho một số màu.</p>\n<p style="text-align:justify;"> </p>', '', 'dulux-maxilite-', '', '', '', 0, 54, '', 0, 0, '', '', '', '', 1, 1761),
(10368, 'Dulux Weathershield Chống Thấm', '', '2012-09-10 05:59:32', 'dulux-weathershield-chong-tham-thumb.jpg', 'dulux-weathershield-chong-tham.jpg', '', '<p>Chất chống thấm Dulux Weathershield</p>', '', '<p style="text-align:justify;"><strong>Chất chống thấm Dulux Weathershield</strong> là chất chống thấm chuyên dụng với công thức nhựa gốc Acrylic kháng nước đặc biệt nhằm tăng cường khả năng chống thấm, thích hợp cho các cấu trúc xi măng và bê tông của tường nhà.</p>\n<p style="text-align:justify;"><strong>Thành phần cấu tạo</strong></p>\n<p style="text-align:justify;">Nhựa gốc Acrylic chống thấm, bột khoáng, phụ gia và nước.</p>\n<p style="text-align:justify;"><strong>Đặc tính kỹ thuật</strong></p>\n<p style="text-align:justify;">Độ phủ lý thuyết: 6-7m2/kg/lớp tùy thuộc độ dày màng sơn và bề mặt tường (đánh giá dựa trên tiêu chuẩn JIS K5600:1999).</p>\n<p style="text-align:justify;">Số lớp sơn: 2-3 lớpKhô bề mặt: 1-2 giờ</p>\n<p style="text-align:justify;"><strong>Hướng dẫn sử dụng</strong></p>\n<p style="text-align:justify;">Chuẩn bị bề mặt: Bề mặt đuợc sơn phải sạch, khô và ổn định.</p>\n<p style="text-align:justify;">Màng sơn cũ, chất bẩn, vữa, rêu mốc phải được tẩy sạch bằng phương pháp thích hợp.</p>\n<p style="text-align:justify;">Dùng hóa chất tẩy rửa và diệt rêu mốc thích hợp để rửa sạch các khu vực bị nấm mốc hay rong rêu.</p>\n<p style="text-align:justify;">Bề mặt quá khô và các bề mặt hút nước cần được làm ẩm bằng cách lăn rulô được làm ẩm với nước sạch trước khi thi công.</p>\n<p style="text-align:justify;">Thi công 3 lớp đối với các bề mặt có vết nứt nhỏ.</p>\n<p style="text-align:justify;">Các khe nứt lớn cần phải đục rộng hình chữ V, làm sạch bụi và trét lại bằng hỗn hợp 5 cát + 3 xi măng thường + 0.8 Dulux Weathershield - Chất Chống Thấm trước khi thi công</p>\n<p style="text-align:justify;"><strong>Thi công:</strong></p>\n<p style="text-align:justify;">Trộn chất chống thấm với xi măng poóclăng mác cao từ 40 trở lên theo tỷ lệ: 0,4 lít nước : 1 kg xi măng : 1 kg Chất chống thấm Weathershield.</p>\n<p style="text-align:justify;">Trộn xi măng vào nước, khuấy đều cho hết vón cục, sau cho Chất chống thấm Dulux Weathershield vào và khuấy lại cho thật đều.</p>\n<p style="text-align:justify;">Hỗn hợp đã trộn nên được sử dụng trong vòng 2 giờ và khuấy đều trước khi thi công.</p>\n<p style="text-align:justify;"><strong>Dụng cụ thi công:</strong></p>\n<p style="text-align:justify;">Thi công lớp 2: 6-8 tiếng sau khi thi công lớp 1</p>\n<p style="text-align:justify;">Rửa sạch dụng cụ với nước sạch trước và sau khi sử dụng.</p>\n<p style="text-align:justify;"><em><strong><span style="text-decoration:underline;">Lưu ý:</span></strong> Không thi công khi trời mưa hoặc trong môi trường ẩm ướt để đạt tính thẩm mỹ của bề mặt sau khi hoàn thiện và kết quả chống thấm tốt nhất</em></p>\n<p style="text-align:justify;"><strong>Bảo quản:</strong></p>\n<p style="text-align:justify;">Bảo quản sơn ở nơi khô, mát.</p>\n<p style="text-align:justify;">Đặt thùng sơn ở vị trí thẳng đứng an toàn và đậy chặt nắp.</p>\n<p style="text-align:justify;">Dùng ngay sau khi mở nắp</p>\n<p style="text-align:justify;"><strong>Thông tin về an toàn, sức khỏe và môi trường</strong></p>\n<p style="text-align:justify;">Thành phần có chứa chất diệt khuẩn.</p>\n<p style="text-align:justify;">Tránh tiếp xúc với da.</p>\n<p style="text-align:justify;">Có thể gây dị ứng khi tiếp xúc với da.</p>\n<p style="text-align:justify;">Mắt và da nếu tiếp xúc các chất kiềm này có thể bị bỏng và loét.</p>\n<p style="text-align:justify;">Vật liệu gốc xi măng cho đến khi đông cứng vẫn có thể gây dị ứng và viêm da khi tiếp xúc.</p>\n<p style="text-align:justify;">Xi măng không được cung cấp chung với sản phẩm.</p>\n<p style="text-align:justify;">Tuy nhiên khi sử dụng xi măng cần lưu ý: mang khẩu trang lọc bụi, găng tay PVC, kính và quần áo bảo hộ thích hợp.</p>\n<p style="text-align:justify;">Các vật liệu gốc xi măng khi được trộn với nước hoặc làm ẩm sẽ tạo ra chất kiềm mạnh</p>\n<p style="text-align:justify;">Gây hại cho sinh vật sống dưới nước.</p>\n<p style="text-align:justify;">Có thể gây tác động có hại lâu dài cho môi trường sống dưới nước.</p>\n<p style="text-align:justify;">Để xa tầm với trẻ em.</p>\n<p style="text-align:justify;">Tránh hít bụi sản phẩm.</p>\n<p style="text-align:justify;">Mang khẩu trang khi sử dụng.</p>\n<p style="text-align:justify;">Chỉ sử dụng ở nơi thông thoáng.</p>\n<p style="text-align:justify;">Nếu nuốt phải, nên đến gặp bác sĩ ngay và mang theo thùng sản phẩm hoặc nhãn sản phẩm.</p>\n<p style="text-align:justify;">Khi thi công mang găng tay PVC và kính bảo hộ thích hợp.Khi bị dính sản phẩm vào mắt nên rửa với thật nhiều nước sạch và đi đến bác sĩ ngay</p>\n<p style="text-align:justify;">Tránh thải sản phẩm ra môi trường.Không đổ sản phẩm vào cống rãnh hay nguồn nước.</p>\n<p style="text-align:justify;">Trong trường hợp tràn đổ, nên thu gom bằng đất hoặc cát.</p>\n<p style="text-align:justify;">Xử lý các sản phẩm thừa theo đúng các quy định về môi trường.</p>\n<p style="text-align:justify;">Không tái sử dụng thùng chất chống thấm để chứa thực phẩm và đồ uống.</p>\n<p style="text-align:justify;">Việc xả nhám khô, cắt màng sơn khô bằng kỹ thuật hàn hoặc lửa sẽ tạo bụi và/hoặc khói độc.</p>\n<p style="text-align:justify;">Nên xả nhám ướt nếu có thể.</p>\n<p style="text-align:justify;">Nếu điều kiện làm việc tại chỗ không thông thoáng để tránh tiếp xúc với khói độc, nên sử dụng thiết bị thích hợp bảo vệ đường hô hấp.</p>\n<p style="text-align:justify;">Xem thêm hướng dẫn trong Bảng Thông Tin An Toàn Sản Phẩm.</p>', '', 'dulux-weathershield-chong-tham', '', '', '', 0, 24, '', 1, 0, '', '', '', '', 1, 1763),
(10369, 'Dulux Weathershield Chống Kiềm', '', '2012-09-10 06:04:53', 'dulux-weathershield-chong-kiem-thumb.jpg', 'dulux-weathershield-chong-kiem.jpg', '', '<p>Dulux Weathershield Chống Kiềm</p>', '', '<p style="text-align:justify;"><strong>Dulux Weathershield Sơn lót Chống kiềm</strong> là loại sơn lót cao cấp ngoài trời chống kiềm hóa (là hiện tượng xảy ra do không sử dụng sơn lót, kiềm trong hồ vữa tấn công sơn phủ, làm màu sơn phủ bị loang lổ) hoàn hảo cho sơn phủ, tăng cường khả năng chống thấm, đồng thời giữ cho màu sắc của lớp sơn hoàn thiện được bền lâu trong mọi điều kiện.</p>\n<p style="text-align:justify;"><strong>Thành phần cấu tạo</strong></p>\n<p style="text-align:justify;">Nhựa gốc Acrylic, bột khoáng, phụ gia và nước.</p>\n<p style="text-align:justify;"><strong>Đặc tính kỹ thuật</strong></p>\n<p style="text-align:justify;">Độ phủ lý thuyết: 10 -12 m2/lít/lớp</p>\n<p style="text-align:justify;"><strong>Hướng dẫn sử dụng</strong></p>\n<p style="text-align:justify;">Khuấy đều trước khi sử dụng.</p>\n<p style="text-align:justify;"><strong>Thi công sơn:</strong></p>\n<p style="text-align:justify;">Rửa sạch dụng cụ với nước sạch trước và sau khi sử dụng.</p>\n<p style="text-align:justify;">Bảo quản sơn ở nơi khô, mát.</p>\n<p style="text-align:justify;">Đặt thùng sơn ở vị trí thẳng đứng an toàn và đậy chặt nắp.</p>\n<p style="text-align:justify;">Dùng ngay sau khi mở nắp.</p>\n<p style="text-align:justify;"><strong>Tư vấn thi công</strong></p>\n<p style="text-align:justify;">Điều kiện thi công: Độ ẩm của bề mặt dưới 16% theo máy đo độ ẩm Protimeter hay để bề mặt tường khô từ 21 đến 28 ngày trong điều kiện bình thường (nhiệt độ trung bình 300C, độ ẩm môi trường 80%).</p>\n<p style="text-align:justify;">Không thi công sơn nếu nhiệt độ thời tiết dưới 100C.</p>\n<p style="text-align:justify;">Bảo đảm bề mặt sơn phải sạch, khô, không có tạp chất làm giảm độ bám dính như bụi, dầu mỡ hay sáp.</p>\n<p style="text-align:justify;">Dùng hóa chất thích hợp để xử lý bề mặt có rêu mốc.</p>\n<p style="text-align:justify;">Đối với bề mặt cũ bị phấn hóa, cần loại bỏ màng sơn cũ bằng dụng cụ thích hợp trước khi thi công.</p>\n<p style="text-align:justify;">Xử lý triệt để các vết nứt tường trước khi thi công sơn</p>\n<p style="text-align:justify;"><strong>Hệ thống sơn đề nghị:</strong></p>\n<p style="text-align:justify;">Bột Trét Cao Cấp Ngoài Trời Dulux Weathershield hoặc<br />Bột Trét Cao Cấp Dulux 1-2 lớp<br />Sơn Lót Cao Cấp Ngoài Trời Dulux Weathershield 1 lớp<br />Sơn Nước Cao Cấp Ngoài Trời Dulux Weathershield Bề Mặt Mờ hoặc Bề Mặt Bóng hoặc Dulux Weathershield Max 2 lớp</p>\n<p style="text-align:justify;"><strong>Thông tin về an toàn, sức khỏe và môi trường</strong></p>\n<p style="text-align:justify;">Thành phần có chứa chất diệt khuẩn.</p>\n<p style="text-align:justify;">Có thể gây dị ứng khi tiếp xúc.</p>\n<p style="text-align:justify;">Chỉ sử dụng ở nơi thông thoáng.</p>\n<p style="text-align:justify;">Tránh hít bụi sơn.</p>\n<p style="text-align:justify;">Tránh tiếp xúc với da hoặc mắt.</p>\n<p style="text-align:justify;">Mang găng tay, khẩu trang và kính bảo vệ mắt thích hợp trong lúc thi công.Khi bị dính sơn vào mắt nên rửa với nhiều nước sạch và đến gặp bác sĩ ngay.</p>\n<p style="text-align:justify;">Nếu nuốt phải, nên đến gặp bác sĩ ngay và mang theo thùng sơn hoặc nhãn sơn.</p>\n<p style="text-align:justify;">Để xa tầm tay trẻ em.</p>\n<p style="text-align:justify;">Không tái sử dụng thùng sơn để chứa thực phẩm hay đồ uống.</p>\n<p style="text-align:justify;">Lấy lại lượng sơn còn dư trên cọ hoặc rulô trước khi rửa.</p>\n<p style="text-align:justify;">Không đổ sơn vào cống rãnh hay nguồn nước.</p>\n<p style="text-align:justify;">Tránh thải sơn ra môi trường.</p>\n<p style="text-align:justify;">Gây hại cho sinh vật sống dưới nước.</p>\n<p style="text-align:justify;">Có thể gây tác động có hại lâu dài cho môi trường sống dưới nước.</p>\n<p style="text-align:justify;">Trong trường hợp bị đổ sơn, thu gom bằng đất hoặc cát.</p>\n<p style="text-align:justify;">Việc xả nhám khô, cắt màng sơn khô bằng kỹ thuật hàn hoặc lửa sẽ tạo bụi và/hoặc khói độc.</p>\n<p style="text-align:justify;">Nên xả nhám ướt nếu có thể.</p>\n<p style="text-align:justify;">Nếu điều kiện làm việc tại chỗ không thông thoáng để tránh tiếp xúc với khói độc, nên sử dụng thiết bị thích hợp bảo vệ đường hô hấp.</p>\n<p style="text-align:justify;">Xem thêm hướng dẫn trong Bảng Thông Tin An Toàn Sản Phẩm.</p>\n<p style="text-align:justify;"> </p>', '', 'dulux-weathershield-chong-kiem', '', 'Bột Trét Cao Cấp Ngoài Trời Dulux Weathershield hoặc\nBột Trét Cao Cấp Dulux 1-2 lớp\nSơn Lót Cao Cấp Ngoài Trời Dulux Weathershield 1 lớp\nSơn Nước Cao Cấp Ngoài Trời Dulux Weathershield Bề Mặt Mờ hoặc Bề Mặt Bóng hoặc Dulux Weathershield Max 2 lớp', '', 0, 95, '', 0, 0, '', '', '', '', 1, 1763),
(10370, 'Bột trét ngoài trời Dulux Weathershield', '', '2012-09-10 06:07:44', 'bot-tret-ngoai-troi-dulux-weathershield-thumb.jpg', 'bot-tret-ngoai-troi-dulux-weathershield.jpg', '', '<p>Bột trét ngoài trời Dulux Weathershield</p>', '', '<p style="text-align:justify;"><strong>Dulux Weathershield Bột Trét ngoài trời</strong> là nguyên liệu xử lý bề mặt, dùng để trám các lỗ hổng lớn, nhỏ và lấp vá các bề mặt hồ vữa hay bê tông không bằng phẳng. Sản phẩm được đặc chế với tính năng chống rạn nứt và chịu va đập cao, chuyên để sử dụng cho tường ngoại thất.</p>\n<p style="text-align:justify;"><strong>Thành phần cấu tạo</strong></p>\n<p style="text-align:justify;">Bột khoáng, cát, xi măng, và chất phụ gia</p>\n<p style="text-align:justify;"><strong>Đặc tính kỹ thuật</strong></p>\n<p style="text-align:justify;">Độ phủ lý thuyết: 1 – 1,2m2/kg/2 lớp với độ dày tiêu chuẩn 1mm/lớp</p>\n<p style="text-align:justify;"><strong>Hướng dẫn sử dụng</strong></p>\n<p style="text-align:justify;"><strong>Thi công</strong>: Tường quá khô và bề mặt hút nước cần phải làm ẩm và giảm nhiệt độ bề mặt tường bằng nước sạch theo phương pháp phun sương hoặc lăn bằng rulô ướt trước khi trét bột. Không trét lên bề mặt có nhiệt độ 400C trở lên. Không thi công trong điều kiện thời tiết ẩm ướt. Bề mặt phải sạch, khô, không có bụi bẩn, dầu mỡ, sáp hay các tạp chất làm giảm độ bám dính khác. Dùng bay thép để trét bột. Rửa sạch dụng cụ với nước sạch ngay sau khi sử dụng.</p>\n<p style="text-align:justify;"><strong>Tỷ lệ pha trộn</strong>:1 phần nước sạch với khoảng 2.5 phần bột theo trọng lượng. Cho nước vào thùng trước, sau đó cho bột vào từ từ, trộn đều cho đến khi được hỗn hợp dẻo đồng nhất. Thi công trong vòng 3 giờ kể từ khi trộn.</p>\n<p style="text-align:justify;"><strong>Số lớp</strong>: 1-2 lớpKhô bề mặt:30-60 phút</p>\n<p style="text-align:justify;"><strong>Trét lớp sau</strong>: 1-2 giờ sau khi trét lớp đầu.Xả nhám: 4-6 giờ sau khi trét lớp cuối trong điều kiện thời tiết khô ráo (nhiệt độ trung bình 30-320C)</p>\n<p style="text-align:justify;"><strong>Bảo quản</strong>: Bột trét phải được tồn trữ bên trong nhà hoặc nơi có mái che, tại các khu vực khô ráo và thông thoáng, tránh ánh nắng trực tiếp, bao bì phải được đóng kín trong quá trình lưu trữ và sau mỗi lần sử dụng.</p>\n<p style="text-align:justify;"><strong>Hệ thống sơn đề nghị</strong>:</p>\n<p style="text-align:justify;">Bột Trét Cao Cấp Ngoài Trời Dulux Weathershield 1-2 lớp<br />Sơn Lót Cao Cấp Ngoài Trời Dulux Weathershield 1 lớp<br />Sơn Nước Cao Cấp Ngoài Trời Dulux Weathershield<br />Bề Mặt Mờ hoặc Bề Mặt Bóng hoặc Dulux Weathershield Max 2 lớp</p>\n<p style="text-align:justify;"><strong>Thông tin về an toàn, sức khỏe và môi trường</strong></p>\n<p style="text-align:justify;">Thành phần có xi măng chứa crom VI với nồng độ &gt; 2PPM.</p>\n<p style="text-align:justify;">Có thể gây dị ứng. Kích ứng hệ hô hấp và da.</p>\n<p style="text-align:justify;">Tránh hít bụi của sản phẩm. Tránh tiếp xúc với mắt.</p>\n<p style="text-align:justify;">Gây nguy hại nghiêm trọng cho mắt nếu có tiếp xúc.</p>\n<p style="text-align:justify;">Trong trường hợp tiếp xúc với mắt, rửa mắt ngay lập tức với thật nhiều nước sạch và thực hiện chăm sóc y tế.</p>\n<p style="text-align:justify;">Mang kính bảo hộ, khẩu trang chống bụi, găng tay và mặc quần áo bảo hộ phù hợp khi thi công.</p>\n<p style="text-align:justify;">Để xa tầm tay trẻ em.</p>\n<p style="text-align:justify;">Nếu nuốt phải sản phẩm, rửa miệng với nước sạch (chỉ khi bệnh nhân còn tỉnh) và phải thực hiện chăm sóc y tế ngay lập tức và đưa bao bì/nhãn hiệu sản phẩm cho bác sĩ.</p>\n<p style="text-align:justify;">Xả nhám khô, cắt màng sơn khô bằng kỹ thuật hàn hoặc lửa sẽ tạo bụi và/hoặc khói độc.Nên xả nhám ướt nếu có thể.</p>\n<p style="text-align:justify;">Nếu điều kiện làm việc tại chỗ không thông thoáng để tránh tiếp xúc với khói độc, nên sử dụng thiết bị thích hợp bảo vệ đường hô hấp.</p>\n<p style="text-align:justify;">Xử lý bột trét còn dư theo đúng các quy định về môi trường.</p>\n<p style="text-align:justify;">Cẩn trọng khi mang vác. Nếu tổng trọng lượng trên 25kg, khuyến cáo nên nâng hoặc di chuyển bởi hai người.</p>\n<p style="text-align:justify;"> </p>', '', 'bot-tret-ngoai-troi-dulux-weathershield', '', 'Bột Trét Cao Cấp Ngoài Trời Dulux Weathershield 1-2 lớp\nSơn Lót Cao Cấp Ngoài Trời Dulux Weathershield 1 lớp\nSơn Nước Cao Cấp Ngoài Trời Dulux Weathershield\nBề Mặt Mờ hoặc Bề Mặt Bóng hoặc Dulux Weathershield Max 2 lớp', '', 0, 26, '', 0, 0, '', '', '', '', 1, 1763),
(10371, 'Bột trét tường cao cấp Dulux', '', '2012-09-10 06:11:02', 'bot-tret-tuong-cao-cap-dulux-thumb.jpg', 'bot-tret-tuong-cao-cap-dulux.jpg', '', '<p>Bột trét tường cao cấp Dulux</p>', '', '<p style="text-align:justify;"><strong>Bột trét tường cao cấp Dulux</strong> là vật liệu xử lý bề mặt dùng để làm phẳng các bề mặt hồ xây và bê tông. Bột trét tường cao cấp Dulux được thiết kế để sử dụng cho cả tường ngoài trời và trong nhà với chất lượng tốt và dễ thi công.</p>\n<p style="text-align:justify;"><strong>Thành phần cấu tạo</strong></p>\n<p style="text-align:justify;">Bột khoáng, xi măng, bột nhựa và phụ gia</p>\n<p style="text-align:justify;"><strong>Số lớp thi công</strong></p>\n<p style="text-align:justify;">1 – 1,2m2/kg/2 lớp cho một lớp với độ dày tiêu chuẩn 1mm/1lớp.</p>\n<p style="text-align:justify;"><strong>Hướng dẫn sử dụng</strong></p>\n<p style="text-align:justify;"><strong>Chuẩn bị</strong></p>\n<p style="text-align:justify;">Bề mặt phải khô (độ ẩm phải nhỏ hơn 16% theo máy đo độ ẩm Protimeter hay để bề mặt tường khô từ 21 đến 28 ngày trong điều kiện bình thường (nhiệt độ trung bình 300C, độ ẩm môi trường là 80%), sạch, không có bụi bẩn, dầu mỡ, sáp hay các tạp chất khác.</p>\n<p style="text-align:justify;">Trộn 1 phần nước với khoảng 2.5 phần bột theo trọng lượng. Cho nước vào thùng trước rồi cho bột từ từ vào. Dùng máy trộn (nếu có) hay dùng thiết bị trộn cho đến khi có được hỗn hợp dẻo đồng nhất sẵn sàng sử dụng.</p>\n<p style="text-align:justify;"><strong>Trét bột</strong></p>\n<p style="text-align:justify;">Lớp 1:Dùng bay thép hoặc dao trét để trét bột dẻo lên tường.</p>\n<p style="text-align:justify;">Sau khi trét lớp 1, để khô tự nhiên từ 1-2 giờ trước khi trét lớp 2.</p>\n<p style="text-align:justify;">Lớp 2:Dùng bay thép hoặc dao trét để trét bột dẻo lên tường.</p>\n<p style="text-align:justify;">Sau khi trét lớp 2 khoảng 1-2 ngày thì tiến hành xả nhám.</p>\n<p style="text-align:justify;">Sau khi xả nhám, dùng chổi quét nhẹ bề mặt cho hết lớp bột áo bám ngoài rồi dùng giẻ ướt hoặc con lăn thấm nước lăn qua sau đó chờ khoảng nửa ngày cho tường khô trở lại.</p>\n<p style="text-align:justify;"><span style="text-decoration:underline;"><em><strong>Lưu ý:</strong></em></span></p>\n<p style="text-align:justify;">Không trét lên bề mặt có nhiệt độ 40oC trở lên.</p>\n<p style="text-align:justify;">Trường hợp tường quá khô và bề mặt hút nước, cần phải làm ẩm và giảm nhiệt độ bề mặt tường bằng nước sạch theo phương pháp phun sương hoặc lăn bằng ru lô ướt trước khi trét bột.</p>\n<p style="text-align:justify;">Khi trét bột, cần quan sát kỹ bề mặt bột sau khi thi công, nếu có bọt khí nổi lên, cần miết chặt bay trét qua lại khi bột còn ướt để loại bỏ bọt khí trên bề mặt.</p>\n<p style="text-align:justify;">Không trét lên bề mặt đã sơn hoặc bề mặt đã được làm láng. Rửa sạch dụng cụ với nước sạch ngay sau khi sử dụng.</p>\n<p style="text-align:justify;">Để có lớp sơn tốt nên sử dụng đúng hệ thống sơn đề nghị và thi công theo hướng dẫn thi công của công ty TNHH Sơn AkzoNobel Việt Nam.</p>\n<p style="text-align:justify;"><strong>Bảo quản</strong></p>\n<p style="text-align:justify;">Bột trét phải được tồn trữ bên trong nhà hoặc nơi có mái che, tại các khu vực khô ráo và thông thoáng, tránh tiếp xúc trực tiếp với mặt sàn và phải được đặt trên kệ gỗ cách mặt sàn từ 10cm, tránh ánh nắng trực tiếp, bao bì phải được đóng kín trong quá trình lưu trữ và sau mỗi lần sử dụng. Dùng ngay sau khi mở bao bì.</p>\n<p style="text-align:justify;"><strong>Thông tin về an toàn, sức khỏe và môi trường</strong></p>\n<p style="text-align:justify;">Thành phần có xi măng chứa crôm VI với nồng độ &gt; 2PPM. Có thể gây dị ứng.Kích thích hệ thống hô hấp và da. Tránh hít bụi sản phẩm.</p>\n<p style="text-align:justify;">Tránh tiếp xúc với mắt. Gây nguy hại nghiêm trọng cho mắt nếu có tiếp xúc. Trong trường hợp tiếp xúc với mắt, rửa mắt ngay lập tức với thật nhiều nước và đi đến bác sỹ ngay.</p>\n<p style="text-align:justify;">Mang kính bảo hộ, khẩu trang chống bụi, găng tay chống hóa chất và mặc quần áo bảo hộ phù hợp khi thi công.</p>\n<p style="text-align:justify;">Để tránh xa tầm tay trẻ em.</p>\n<p style="text-align:justify;">Nếu nuốt phải sản phẩm, phải thực hiện chăm sóc y tế ngay lập tức và đưa bao bì/nhãn hiệu sản phẩm cho bác sĩ.</p>\n<p style="text-align:justify;">Xả nhám khô, cắt màng sơn khô bằng kỹ thuật hàn hoặc lửa sẽ tạo bụi và/hoặc khói độc. Nên xả nhám ướt nếu có thể. Nếu điều kiện làm việc tại chỗ không thông thoáng, để tránh tiếp xúc với khói độc nên sử dụng thiết bị thích hợp bảo vệ đường hô hấp.</p>\n<p style="text-align:justify;">Xử lý bột trét còn dư theo đúng các quy định về môi trường.</p>\n<p style="text-align:justify;">Cẩn trọng khi mang vác. Tổng trọng lượng trên 40kg. Khuyến cáo nên nâng hoặc di chuyển bởi hai người.</p>', '', 'bot-tret-tuong-cao-cap-dulux', '', '', '', 0, 93, '', 0, 0, '', '', '', '', 1, 1763),
(10372, 'Sơn lót chống rỉ Maxilite', '', '2012-09-10 06:18:09', 'son-lot-chong-ri-maxilite-thumb.jpg', 'son-lot-chong-ri-maxilite.jpg', '', '<p>Sơn lót chống rỉ Maxilite</p>', '', '<p style="text-align:justify;"><strong>Sơn lót chống rỉ Maxilite</strong> là loại sơn lót gốc alkyd thích hợp cho kim loại trong nhà và ngoài trời với các tính năng ưu việt</p>\n<p style="text-align:justify;">Chống rỉ hoàn hảo.</p>\n<p style="text-align:justify;">Tạo độ bám dính chắc cho lớp sơn hoàn thiện.</p>\n<p style="text-align:justify;">Độ phủ cao</p>\n<p style="text-align:justify;"><strong>Thành phần cấu tạo</strong></p>\n<p style="text-align:justify;">Nhựa Alkyd, dung môi white spirit, ôxít sắt và chất độn khoáng.</p>\n<p style="text-align:justify;"><strong>Chỉ tiêu chất lượng</strong></p>\n<p style="text-align:justify;">Độ phủ lý thuyết: 10m2 - 12m2/lít/lớp</p>\n<p style="text-align:justify;"><strong>Hướng dẫn sử dụng</strong></p>\n<p style="text-align:justify;">Bảo đảm bề mặt kim loại được sơn phải sạch, khô, không có các chất làm giảm độ bám dính như bụi bẩn, dầu mỡ hay sáp. Các bề mặt đã được sơn trước phải được chà sạch bằng giấy nhám và xử lý sạch bụi trước khi sơn lót chống rỉ Maxilite.</p>\n<p style="text-align:justify;">Bề mặt thép nên được xử lý thủ công bẳng dụng cụ cơ hoặc điện để đảm bảo bám dính tốt.</p>\n<p style="text-align:justify;">Thời gian khô: tại nhiệt độ 30oC và độ ẩm 79.5% Khô bề mặt: 45 phút</p>\n<p style="text-align:justify;">Sơn lớp sau: 1 giờ sau khi khô bề mặt.</p>\n<p style="text-align:justify;"><strong>Thi công sơn</strong>:</p>\n<p style="text-align:justify;">Pha sơn: pha khoảng 1 phần Dulux Thinner 850-41 hoặc xăng thường vào 10 phần sơn (10% theo thể tích). Không được pha trộn với các loại sơn dầu khác. Khuấy đều trước khi sử dụng..</p>\n<p style="text-align:justify;"><strong>Thời gian sơn:</strong></p>\n<p style="text-align:justify;">Sơn phủ lớp 1: sau khi thi công sơn lót 3 giờ Sơn phủ lớp 2: sau khi thi công lớp 1 khoảng 6 giờ</p>\n<p style="text-align:justify;"><strong>Làm sạch</strong>: rửa sạch dụng cụ với dung môi Dulux Thinner 850-41 hoặc xăng thường ngay sau khi sử dụng.</p>\n<p style="text-align:justify;">Bảo quản: DỄ CHÁY. Để xa nguồn nhiệt. Không hút thuốc. Tồn trữ sơn nơi mét mẻ. Đặt thùng sơn ở vị trí thẳng đứng an toàn, đậy chặt nắp. Sử dụng ngay sau khi mở nắp.</p>\n<p style="text-align:justify;"><strong>Thông tin về an toàn, sức khỏe và môi trường</strong></p>\n<p style="text-align:justify;">Dễ cháyTránh xa nguồn lửa, nguồn nhiệtChỉ sử dụng ở nơi thông thoáng.</p>\n<p style="text-align:justify;">Trong trường hợp cháy: sử dụng bọt, bột, AFFF, CO2. Không được sử dụng nướcChứa Ethyl Methyl Ketoxime, Cobalt Carboxylate. Có thể gây dị ứng.</p>\n<p style="text-align:justify;">Tránh hít bụi sơn.</p>\n<p style="text-align:justify;">Tránh tiếp xúc với da. Tiếp xúc nhiều lần có thể gây khô hoặc nứt da.</p>\n<p style="text-align:justify;">Nếu nuốt phải, không nên gây nôn mửa. Đến bác sĩ ngay lập tức, mang theo thùng sơn hay nhãn hiệu sơn.</p>\n<p style="text-align:justify;">Mang găng tay thích hợp.</p>\n<p style="text-align:justify;">Trong trường hợp đổ sơn, nên thu gom bằng đất hoặc cát. Tránh thải sơn ra môi trường, không đổ sơn vào cống rãnh. Có thể gây tác động có hại lâu dài cho môi trường sống dưới nước. Xử lý các sơn thải theo đúng các quy định về môi trường.</p>\n<p style="text-align:justify;">Để xa tầm với trẻ em.Xem thêm hướng dẫn trong Bảng Thông Tin An Toàn Sản Phẩm.</p>', '', 'son-lot-chong-ri-maxilite', '', '', '', 0, 58, '', 0, 0, '', '', '', '', 1, 1762),
(10374, 'Sơn dầu Maxilite', '', '2012-09-10 06:26:03', 'son-dau-maxilite-thumb.jpg', 'son-dau-maxilite.jpg', '', '<p>Sơn dầu Maxilite</p>', '', '<p style="text-align:justify;"><strong>Sơn dầu Maxilite</strong> là loại sơn alkyd có chất lượng cao của ICI, được sản xuất theo công nghệ tiên tiến cho bề mặt gỗ và kim loại đẹp hoàn hảo với:</p>\n<p style="text-align:justify;">Màng sơn bóng loáng</p>\n<p style="text-align:justify;">Bề mặt nhẵn mịn</p>\n<p style="text-align:justify;">Mau khô</p>\n<p style="text-align:justify;">Màu sắc phong phú, dễ sử dụng và không chứa độc tố (chì và thủy ngân) là những ưu việt khác của Sơn dầu Maxilite</p>\n<p style="text-align:justify;"><strong>Thành phần cấu tạo</strong></p>\n<p style="text-align:justify;">Nhựa Alkyd, dung môi, chất bền màu không chứa chì.</p>\n<p style="text-align:justify;">Độ phủ lý thuyết: 12m2 - 14m2/lít/lớp</p>\n<p style="text-align:justify;">Khô bề mặt: 2-3 giờ</p>\n<p style="text-align:justify;">Khô hoàn toàn: Tối đa 6 giờ</p>\n<p style="text-align:justify;"><strong>Hướng dẫn sử dụng</strong></p>\n<p style="text-align:justify;">Chuẩn bị bề mặt: Bề mặt sơn phải sạch, không có rỉ sét, không tạp chất làm giảm sự bám dính như bụi bẩn, dầu mỡ hay sáp và không bị nứt. Các bề mặt đã được sơn trước phải được chà sạch bằng giấy nhám thích hợp và quét sạch bụi.</p>\n<p style="text-align:justify;"><strong>Đối với bề mặt kim loại: </strong></p>\n<p style="text-align:justify;">Sơn lót: Sơn Lót Chống Rỉ Maxilite (1 lớp).</p>\n<p style="text-align:justify;">Sơn phủ: Sơn dầu Maxilite (2 lớp).</p>\n<p style="text-align:justify;"><strong>Đối với bề mặt gỗ:</strong></p>\n<p style="text-align:justify;">Sơn lót: không cần thiết</p>\n<p style="text-align:justify;">Sơn phủ: Sơn dầu Maxilite (2 lớp).</p>\n<p style="text-align:justify;"><strong>Thi công sơn:</strong></p>\n<p style="text-align:justify;">Pha sơn: pha thêm tối đa 1- 1,5 lần dung môi Dulux Thinner 850-41 hoặc xăng/ dầu hỏa vào 10 phần sơn (10-15%-10% theo thể tích). Không được pha trộn với các loại sơn dầu khác. Khuấy đều trước khi sử dụng.</p>\n<p style="text-align:justify;">Thời gian sơn: Sơn phủ lớp 1: sau khi thi công sơn lót 3 giờ Sơn phủ lớp 2: sau khi thi công lớp 1 khoảng 6 giờ</p>\n<p style="text-align:justify;">Làm sạch: rửa sạch dụng cụ với xăng hoặc dầu hỏa ngay sau khi sử dụng.</p>\n<p style="text-align:justify;">Bảo quản: tồn trữ sơn nơi mét mẻ. Đặt thùng sơn ở vị trí thẳng đứng an toàn, đậy chặt nắp. Sử dụng ngay sau khi mở nắp.</p>\n<p style="text-align:justify;"><strong>Thông tin về an toàn, sức khỏe và môi trường</strong></p>\n<p style="text-align:justify;">Dễ cháy</p>\n<p style="text-align:justify;">Tránh xa nguồn lửa, nguồn nhiệt</p>\n<p style="text-align:justify;">Chỉ sử dụng ở nơi thông thoáng.</p>\n<p style="text-align:justify;">Trong trường hợp cháy: sử dụng bọt, bột, AFFF, CO2. Không được sử dụng nước Chứa Ethyl Methyl Ketoxime, Cobalt Carboxylate. Có thể gây dị ứng.</p>\n<p style="text-align:justify;">Tránh hít bụi sơn. Mang mặt nạ chống hơi độc. Trong trường hợp hít phải bụi sơn, chuyển bệnh nhân đến nơi thông thoáng, sau đó chuyển đến bác sĩ.</p>\n<p style="text-align:justify;">Tránh tiếp xúc với da. Tiếp xúc nhiều lần có thể gây khô hoặc nứt da. Khi tiếp xúc trực tiếp với da, cởi bỏ quần áo bị dính sơn và rữa kỹ với nước và xà bông thích hợp cho da. Không nên sử dụng dung môi hữu cơ (xăng, dầu hỏa,...).</p>\n<p style="text-align:justify;">Nếu nuốt phải, không nên gây nôn mửa. Đến bác sĩ ngay lập tức, mang theo thùng sơn hay nhãn hiệu sơn.</p>\n<p style="text-align:justify;">Mang găng tay thích hợp.</p>\n<p style="text-align:justify;">Trong trường hợp đổ sơn, nên thu gom bằng đất hoặc cát. Tránh thải sơn ra môi trường, không đổ sơn vào cống rãnh. Có thể gây tác động có hại lâu dài cho môi trường sống dưới nước.Xử lý các sơn thải theo đúng các quy định về môi trường.</p>\n<p style="text-align:justify;">Để xa tầm với trẻ em.</p>\n<p style="text-align:justify;">Xem thêm hướng dẫn trong Bảng Thông Tin An Toàn Sản Phẩm.</p>', '', 'son-dau-maxilite', '', 'Sơn lót: Sơn Lót Chống Rỉ Maxilite (1 lớp).\n\nSơn phủ: Sơn dầu Maxilite (2 lớp).', '', 0, 61, '', 0, 0, '', '', '', '', 1, 1762),
(10375, 'Sơn dầu Chống Rỉ Sét', '', '2012-09-10 06:29:22', 'son-dau-chong-ri-set-thumb.jpg', 'son-dau-chong-ri-set.jpg', '', '<p>Sơn dầu Chống Rỉ Sét</p>', '', '<p style="text-align:justify;">Việc sơn các đồ vật kim loại sẽ được thực hiện thật nhanh chóng và giản đơn nhờ các tính năng ưu việt của Sơn Dầu Trang Trí Chống Rỉ cao cấp Dulux:</p>\n<p style="text-align:justify;">Ngăn ngừa rỉ sét</p>\n<p style="text-align:justify;">Không cần sơn lót chống rỉ</p>\n<p style="text-align:justify;">Khô nhanh</p>\n<p style="text-align:justify;">Màn sơn láng mịn</p>\n<p style="text-align:justify;">Không như những sơn dầu thông thường, Sơn Dầu Trang Trí Chống Rỉ cao cấp Dulux có thể sơn lên bề mặt kim loại mà không cần lớp lót chống rỉ. Với công thức đặc chế bao gồm các phụ gia làm thụ động hóa bề mặt kim loại và tăng cường tính kháng nước giúp màng sơn chống lại sự tấn công của không khí ẩm và ngăn chặn các tác nhân oxi hóa, Sơn Dầu Trang Trí Chống Rỉ cao cấp Dulux làm chậm quá trình rỉ sét, bảo vệ lâu dài bề mặt kinh loại. Ngoài ra Sơn Dầu Trang Trí Chống Rỉ cao cấp Dulux cho độ phủ cao, đem đến vẻ đẹp thật sang trọng cho các vật dụng kim loại. Ngoài ra Sơn Dầu Trang Trí Chống Rỉ cao cấp Dulux có thể sử dụng cho bề mặt gỗ.i.</p>\n<p style="text-align:justify;"><strong>Thành phần cấu tạo</strong></p>\n<p style="text-align:justify;">Nhựa Alkyd, bột khoáng, phụ gia chống rỉ sét, dung môi không chứa Benzen Methanol, chất bền màu không chứa chì, chất làm khô không chứa chì.</p>\n<p style="text-align:justify;">Độ phủ lý thuyết: 12m2 - 14m2/lít/lớp</p>\n<p style="text-align:justify;">Khô bề mặt: 2-4 giờ</p>\n<p style="text-align:justify;">Khô hoàn toàn: Sau 12 giờ</p>\n<p style="text-align:justify;"><strong>Hướng dẫn sử dụng</strong></p>\n<p style="text-align:justify;">Bề mặt sơn phải sạch, không có rỉ sét và tạp chất làm giảm sự bám dính như bụi, dầu mỡ hay sáp. Các bề mặt đã được sơn trước phải được chà sạch bằng giấy nhám thích hợp và quét sạch bụi.</p>\n<p style="text-align:justify;">Đối với bề mặt kinh loại bị rỉ sét, ôxi hóa: chà sạch các bụi rỉ sét bằng giấy nhám, bàn chải sắt hoặc hóa chất. Sau đó dùng xăng thường hay dầu hỏa làm sạch các vết dẩu mỡ.</p>\n<p style="text-align:justify;">Đối với bề mặt đã được sơn trước: xả sạch lớp sơn cũ bằng giấy nhám, bàn chải sắt hoặc hóa chất và quét sạch bụi. Sau đó dùng xăng thường hay dầu hỏa làm sạch các vết dầu mỡ.</p>\n<p style="text-align:justify;">Đối với bề mặt gỗ: bề mặt cần sơn phải sạch, không có tạp chất làm giảm sự bám dính như bụi, dầu mỡ hay sáp, chà sạch bằng giấy nhám thích hợp và quét sạch bụi. Độ ẩm dưới 12.</p>\n<p style="text-align:justify;">Không cần sơn lót chống rỉ cho bề mặt kim loại</p>\n<p style="text-align:justify;">Sơn phủ: 2 lớp. Lớp thứ 2 nên cách lớp thứ 1 2 giờ để đảm bảo độ cứng và bền của màng sơn.</p>\n<p style="text-align:justify;"><strong>Thi công sơn:</strong></p>\n<p style="text-align:justify;">Pha sơn: không pha sơn để đạt hiện quả chống rỉ sét tốt nhất. Nhưng nếu cần thiết, có thể pha thêm tối đa 0.5-1 phần dung môi Dulux Thinner 850-41 hoặc xăng thường vào 10 phần sơn (5-10% theo thể tích)</p>\n<p style="text-align:justify;">Không được pha trộn với các loại sơn dầu khác.Khuấy đều trước khi sử dụng.</p>\n<p style="text-align:justify;">Làm sạch: rửa sạch dụng cụ với xăng ngay sau khi sử dụng.</p>\n<p style="text-align:justify;">Bảo quản: tồn trữ sơn nơi mét mẻ. Đặt thùng sơn ở vị trí thẳng đứng an toàn, đậy chặt nắp. Sử dụng ngay sau khi mở nắp.</p>\n<p style="text-align:justify;"><strong>Thông tin về an toàn, sức khỏe và môi trường</strong></p>\n<p style="text-align:justify;">Dễ cháyTránh xa nguồn lửa, nguồn nhiệt</p>\n<p style="text-align:justify;">Trong trường hợp cháy: sử dụng bọt, bột, AFFF, CO2. Không được sử dụng nước</p>\n<p style="text-align:justify;">Gây hại cho sinh vật sống dưới nước. Có thể gây tác động có hại lâu dài cho môi trường sống dưới nước</p>\n<p style="text-align:justify;">Tránh hít bụi sơn. Nếu hít phải có thể gây choáng váng hoặc buồn ngủ</p>\n<p style="text-align:justify;">Tránh tiếp xúc với da. Tiếp xúc nhiều lần có thể gây khô hoặc nức da</p>\n<p style="text-align:justify;">Chứa Ethyl Methyl Ketoxime, Cobalt Catboxylate. Có thể gây dị ứng</p>\n<p style="text-align:justify;">Để xa tầm tay trẻ em</p>\n<p style="text-align:justify;">Chỉ sử dụng ở nơi thông thoáng</p>\n<p style="text-align:justify;">Khi sơn nên mang kính bảo vệ mắt. Khi bị dính sơn vào mắt nên rửa với nhiều nước sạch và đến gặp bác sĩ ngay.</p>\n<p style="text-align:justify;">Xem hướng dẫn trong Thông Tin An Toàn Sản Phẩm</p>', '', 'son-dau-chong-ri-set', '', '', '', 0, 60, '', 0, 0, '', '', '', '', 1, 1762);
INSERT INTO `dos_module_products` (`record_id`, `title`, `titleen`, `postdate`, `pic_thumb`, `pic_full`, `pic_desc`, `preview`, `previewen`, `content`, `contenten`, `tag`, `tagen`, `description`, `descriptionen`, `hits`, `record_order`, `unit`, `hot`, `specials`, `extra_field1`, `extra_field2`, `extra_field3`, `extra_field4`, `enable`, `dos_module_item_cat_cat_id`) VALUES
(10376, 'Sơn dầu bề mặt Bóng Mờ', '', '2012-09-10 06:33:10', 'son-dau-be-mat-bong-mo-thumb.jpg', 'son-dau-be-mat-bong-mo.jpg', '', '<p>Sơn dầu bề mặt Bóng Mờ</p>', '', '<p> </p>\n<p style="text-align:justify;"><strong>Sơn Dầu Cao Cấp Dulux Bóng Mờ</strong> sử dụng cho bề mặt gỗ và kim loại trong nhà và ngoài trời, đem đến vẻ đẹp sang trọng và hiện đại nhờ:</p>\n<p style="text-align:justify;">Màng sơn bóng mờ</p>\n<p style="text-align:justify;">Bề mặt láng mịn</p>\n<p style="text-align:justify;">Ngoài ra với độ phủ cao và thời gian khô nhanh Sơn Dầu Cao Cấp Bóng Mờ là lớp bảo vệ hiệu quả cho vật dụng gỗ và kim loại.</p>\n<p style="text-align:justify;"><strong>Thành phần cấu tạo</strong></p>\n<p style="text-align:justify;">Nhựa Alkyd, bột khoán, dung môi không chứa Benzene Methanol, chất bền màu không chứa chì.</p>\n<p style="text-align:justify;"><strong>Chỉ tiêu chất lượng</strong></p>\n<p style="text-align:justify;">Độ phủ lý thuyết: 12m2 - 14m2/lít/lớp</p>\n<p style="text-align:justify;"><strong>Hướng dẫn sử dụng</strong></p>\n<p style="text-align:justify;">Chuẩn bị bề mặt: bề mặt sơn phài thật sạch, khô, không có rỉ sét và các tạp chất làm giảm độ bám dính như bụi, dầu mỡ hay sáp. Các bề mặt đã sơn trước phải được chà sạch bằng giấy nhám thích hợp và quét sạch bụi.</p>\n<p style="text-align:justify;"><strong>Đối với bề mặt kim loại:</strong></p>\n<p style="text-align:justify;">- Sơn lót: sơn lót chống rỉ Maxilite (1 lớp)</p>\n<p style="text-align:justify;">- Sơn phủ: sơn dầu cao cấp Dulux Bóng Mờ (2 lớp)</p>\n<p style="text-align:justify;"><strong>Đối với bề mặt gỗ:</strong></p>\n<p style="text-align:justify;">- Sơn lót: không cần thiết.</p>\n<p style="text-align:justify;">- Sơn phủ: Sơn Dầu Cao Cấp Dulux Bóng Mờ (2 lớp)</p>\n<p style="text-align:justify;">Thi công sơn: Pha sơn: không pha sơn để đạt hiệu quả chống rỉ sét tốt nhất. Nhưng nếu cần thiết, có thể pha thêm tối đa 0.5 -1 phần dung môi Dulux Thinner 850-41 hoặc xăng thường vào 10 phần sơn (5-10% theo thể tích)</p>\n<p style="text-align:justify;">Không được pha trộn các loại sơn dầu khác. Khuấy đều trước khi sử dụng.</p>\n<p style="text-align:justify;">Làm sạch: rửa sạch dụng cụ với xăng ngay sau khi sử dụng.</p>\n<p style="text-align:justify;">Bảo quản:tồn trữ sơn ở nơi mát mẻ. Đặt thùng sơn ở vị trí thẳng đứng an toàn, đậy chặt nắp. Dùng ngay sau khi mở nắp.</p>\n<p style="text-align:justify;"><strong>Thông tin về an toàn, sức khỏe và môi trường</strong></p>\n<p style="text-align:justify;">Dễ cháy</p>\n<p style="text-align:justify;">Tránh xa nguồn lửa, nguồn nhiệt</p>\n<p style="text-align:justify;">Trong trường hợp cháy: sử dụng bọt, bột, AFFF, CO2. Không được sử dụng nước</p>\n<p style="text-align:justify;">Gây hại cho sinh vật sống dưới nước. Có thể gây tác động có hại lâu dài cho môi trường sống dưới nước</p>\n<p style="text-align:justify;">Không đổ sơn vào cống rãnh hay nguồn nước</p>\n<p style="text-align:justify;">Tránh hít bụi sơn. Nếu hít phải có thể gây choáng váng hoặc buồn ngủ</p>\n<p style="text-align:justify;">Tránh tiếp xúc với da. Tiếp xúc nhiều lần có thể gây khô hoặc nức da</p>\n<p style="text-align:justify;">Chứa Ethyl Methyl Ketoxime, Cobalt Catboxylate. Có thể gây dị ứng</p>\n<p style="text-align:justify;">Để xa tầm tay trẻ em</p>\n<p style="text-align:justify;">Nếu nuốt phải, nên đến gặp bác sĩ ngay và mang theo thùng sơn hoặc nhãn sơn</p>\n<p style="text-align:justify;">Chỉ sử dụng ở nơi thông thoángKhi sơn nên mang kính bảo vệ mắt. Khi bị dính sơn vào mắt nên rửa với thật nhiều nước và đi đến bác sĩ</p>\n<p style="text-align:justify;">Xem hướng dẫn trong Thông Tin An Toàn Sản Phẩm</p>\n<p> </p>', '', 'son-dau-be-mat-bong-mo', '', '', '', 0, 59, '', 0, 0, '', '', '', '', 1, 1762),
(10377, 'Sơn dầu gốc nước cho gỗ và kim loại', '', '2012-09-10 06:37:16', 'son-dau-goc-nuoc-cho-go-va-kim-loai-thumb.jpg', 'son-dau-goc-nuoc-cho-go-va-kim-loai.jpg', '', '<p>Sơn phủ gốc nước cho gỗ và kim loại</p>', '', '<p style="text-align:justify;">Dulux Sơn dầu gốc nước là sản phẩm của công nghệ đột phá mới, sử dụng 100% gốc nước, nên nhẹ mùi và có hàm lượng VOC thấp, an toàn hơn cho sức khỏe. Bên cạnh đó, công việc cũng sẽ nhanh chóng, dễ dàng và tiết kiệm hơn vì không phải đi mua xăng dầu để pha sơn và rửa dụng cụ. Có mùi nhẹ và VOC thấp ( VOC là hợp chất dễ bay hơi, có thể gây hại cho sức khỏe và môi trường) Đạt tiêu chuẩn Green Label của Hội Đồng Môi Trường Singapore</p>\n<p style="text-align:justify;">Thi công nhanh hơn Gốc nước nên sử dụng tiện lợi và dễ dàng hơn</p>\n<p style="text-align:justify;">Màu sắc bền đẹp không ố vàng</p>\n<p style="text-align:justify;"><strong>Thành phần cấu tạo</strong></p>\n<p style="text-align:justify;">Nhựa acrylic, bột màu, phụ gia và nước.</p>\n<p style="text-align:justify;"><strong>Chỉ tiêu chất lượng</strong></p>\n<p style="text-align:justify;">Độ phủ lý thuyết: 12m2 - 14m2/lít/lớp.</p>\n<p style="text-align:justify;">Khô bề mặt: 30 phút (trong điều kiện thời tiết bình thường, độ ẩm môi trường là 80%, nhiệt độ 30oC).</p>\n<p style="text-align:justify;"><strong>Hướng dẫn sử dụng</strong></p>\n<p style="text-align:justify;">Chuẩn bị bề mặt: Đối với bề mặt kim loại mới: loại bỏ dầu và các tạp chất bằng dung môi thích hợp. Để bề mặt khô hoàn toàn trước khi sơn.</p>\n<p style="text-align:justify;">Đối với bề mặt gỗ mới: loại bỏ các tạp chất để có bề mặt nhẵn mịn. Quét sạch bụi trước khi sơn.</p>\n<p style="text-align:justify;">Đối với bề mặt kim loại và gỗ đã sơn trước đây: đảm bảo bề mặt còn cứng chắc. Loại bỏ những phần bị rộp hoặc bong tróc. Loại bỏ các tạp chất. Trám các chỗ nứt bằng chất trám thích hợp. Chà nhám để có bề mặt phẳng. Loại bỏ các bụi bẩn.Xả nhám khô, cắt màng sơn khô bằng kỹ thuật hàn hoặc lửa sẽ tạo bụi và / hoặc khói độc. Nên xả nhám ướt nếu có thể. Nếu điều kiện làm việc tại chỗ không thông thoáng để tránh tiếp xúc với khói độc, nên sử dụng thiết bị thích hợp bảo vệ đường hô hấp.</p>\n<p style="text-align:justify;"><strong>Hệ thống sơn cho bề mặt gỗ và kim loại:</strong></p>\n<p style="text-align:justify;">Sơn lót: Sử dụng Dulux Sơn lót gốc nước cho bề mặt gỗ và kim loại (1 lớp)Sơn phủ: Dulux Sơn dầu gốc nước (2 lớp)</p>\n<p style="text-align:justify;"><strong>Thi công sơn</strong>:</p>\n<p style="text-align:justify;">Pha sơn: sơn đã được pha chế đúng tiêu chuẩn để sử dụng. Không pha thêm với nước. Khuấy đều trước khi sử dụng</p>\n<p style="text-align:justify;">Thời gian sơn: (trong điều kiện thời tiết bình thường, độ ẩm môi trường là 80%, nhiệt độ 30oC) Sơn phủ lớp 1: 1 tiếng sau khi thi công sơn lót Sơn phủ lớp 2: 3 tiếng sau khi thi công lớp 1</p>\n<p style="text-align:justify;">Làm sạch: rửa dụng cụ bằng nước sạch ngay sau khi sử dụng</p>\n<p style="text-align:justify;">Bảo quản: tồn trữ nơi mát mẻ. Đặt thùng sơn ở vị trí thẳng đứng an toàn và đậy chặt nắp. Dùng ngay sau khi mở nắp.</p>\n<p style="text-align:justify;"><strong>Thông tin về an toàn, sức khỏe và môi trường</strong></p>\n<p style="text-align:justify;">Thành phần có chứa chất diệt khuẩn.</p>\n<p style="text-align:justify;">Có thể gây dị ứng khi tiếp xúc.</p>\n<p style="text-align:justify;">Chỉ sử dụng ở nơi thông thoáng. Tránh hít bụi sơn.</p>\n<p style="text-align:justify;">Tránh tiếp xúc với da hoặc mắt.</p>\n<p style="text-align:justify;">Mang găng tay, khẩu trang và kính bảo vệ mắt thích hợp trong lúc thi công. Khi bị dính sơn vào mắt nên rửa với nhiều nước sạch và đến gặp bác sĩ ngay.</p>\n<p style="text-align:justify;">Để xa tầm với trẻ em.</p>\n<p style="text-align:justify;">Không tái sử dụng thùng sơn để chứa thực phẩm hay đồ uống.</p>\n<p style="text-align:justify;">Lấy lại lượng sơn còn dư trên cọ hoặc ru lô trước khi rửa.</p>\n<p style="text-align:justify;">Không đổ sơn vào cống rãnh hay nguồn nước.</p>\n<p style="text-align:justify;">Tránh thải sơn ra môi trường.</p>\n<p style="text-align:justify;">Gây hại cho sinh vật sống dưới nước. Có thể gây tác động có hại lâu dài cho môi trường sống dưới nước.Trong trường hợp bị đổ sơn, thu gom bằng đất hoặc cát.</p>\n<p style="text-align:justify;"> </p>', '', 'son-dau-goc-nuoc-cho-go-va-kim-loai', '', '', '', 0, 1, '', 1, 0, '', '', '', '', 1, 1762),
(10390, 'OEXPO HIGH GLOSS ENAMEL .', '', '2012-09-11 01:21:51', 'oexpo-high-gloss-enamel---thumb.jpg', 'oexpo-high-gloss-enamel--.jpg', '', '<p>OEXPO HIGH GLOSS ENAMEL</p>', '', '<p style="text-align:center;"><strong>OEXPO HIGH GLOSS ENAMEL</strong></p>', '', 'oexpo-high-gloss-enamel-', '', '', '', 0, 38, '', 0, 0, '', '', '', '', 1, 1755),
(10391, 'EXPO STYRENE ACRYLIC FOR INTERIOR', '', '2012-09-11 01:25:32', 'expo-styrene-acrylic-for-interior-thumb.jpg', 'expo-styrene-acrylic-for-interior.jpg', '', '<p>EXPO STYRENE ACRYLIC FOR INTERIOR</p>', '', '<p style="text-align:center;"><strong>EXPO STYRENE ACRYLIC FOR INTERIOR</strong></p>', '', 'expo-styrene-acrylic-for-interior', '', '', '', 0, 40, '', 0, 0, '', '', '', '', 1, 1755),
(10392, 'EXPO HIGH GLOSS ENAMEL .', '', '2012-09-11 01:29:07', 'expo-high-gloss-enamel---thumb.jpg', 'expo-high-gloss-enamel--.jpg', '', '<p>EXPO HIGH GLOSS ENAMEL</p>', '', '<p style="text-align:center;"><strong>EXPO HIGH GLOSS ENAMEL</strong></p>', '', 'expo-high-gloss-enamel-', '', '', '', 0, 39, '', 0, 0, '', '', '', '', 1, 1755),
(10393, 'EXPO EASY FOR INTERIOR', '', '2012-09-11 01:32:39', 'expo-easy-for-interior-thumb.jpg', 'expo-easy-for-interior.jpg', '', '<p>EXPO EASY FOR INTERIOR</p>', '', '<p style="text-align:center;"><strong>EXPO EASY FOR INTERIOR</strong></p>', '', 'expo-easy-for-interior', '', '', '', 0, 37, '', 0, 0, '', '', '', '', 1, 1755),
(10394, 'EXPO POWDER PUTTY FOR INTERIOR &amp; EXTERIOR 3', '', '2012-09-11 01:37:11', 'expo-powder-putty-for-interior-amp-exterior-3-thumb.jpg', 'expo-powder-putty-for-interior-amp-exterior-3.jpg', '', '<p>EXPO POWDER PUTTY FOR INTERIOR &amp; EXTERIOR 3</p>', '', '<p style="text-align:center;"><strong>EXPO POWDER PUTTY FOR INTERIOR &amp; EXTERIOR 3</strong></p>', '', 'expo-powder-putty-for-interior-exterior-3', '', '', '', 0, 62, '', 0, 0, '', '', '', '', 1, 1756),
(10395, 'EXPO POWDER PUTTY FOR INTERIOR &amp; EXTERIOR 2', '', '2012-09-11 01:39:36', 'expo-powder-putty-for-interior-amp-exterior-2-thumb.jpg', 'expo-powder-putty-for-interior-amp-exterior-2.jpg', '', '', '', '<p style="text-align:center;"><strong>EXPO POWDER PUTTY FOR INTERIOR &amp; EXTERIOR 2</strong></p>', '', 'expo-powder-putty-for-interior-exterior-2', '', '', '', 0, 63, '', 0, 0, '', '', '', '', 1, 1756),
(10396, 'EXPO POWDER PUTTY FOR INTERIOR &amp; EXTERIOR', '', '2012-09-11 01:41:39', 'expo-powder-putty-for-interior-amp-exterior-thumb.jpg', 'expo-powder-putty-for-interior-amp-exterior.jpg', '', '', '', '<p>EXPO POWDER PUTTY FOR INTERIOR &amp; EXTERIOR</p>', '', 'expo-powder-putty-for-interior-exterior', '', '', '', 0, 64, '', 0, 0, '', '', '', '', 1, 1756),
(10397, 'OEXPO ALKALI FOR EXTERIOR', '', '2012-09-11 01:46:14', 'oexpo-alkali-for-exterior-thumb.jpg', 'oexpo-alkali-for-exterior.jpg', '', '', '', '<p style="text-align:center;"><strong>OEXPO ALKALI FOR EXTERIOR</strong></p>', '', 'oexpo-alkali-for-exterior', '', '', '', 0, 73, '', 0, 0, '', '', '', '', 1, 1757),
(10398, 'POLY OXIDE PRIMER', '', '2012-09-11 01:47:56', 'poly-oxide-primer1-thumb.jpg', 'poly-oxide-primer1.jpg', '', '', '', '<p style="text-align:center;"><strong>POLY OXIDE PRIMER</strong></p>', '', 'poly-oxide-primer', '', '', '', 0, 79, '', 0, 0, '', '', '', '', 1, 1757),
(10399, 'CASO OXIDE PRIMER', '', '2012-09-11 01:49:21', 'caso-oxide-primer1-thumb.jpg', 'caso-oxide-primer1.jpg', '', '', '', '<p style="text-align:center;"><strong>CASO OXIDE PRIMER</strong></p>', '', 'caso-oxide-primer', '', '', '', 0, 98, '', 0, 0, '', '', '', '', 1, 1757),
(10400, 'EKPO OXIDE PRIMER .', '', '2012-09-11 01:52:10', 'son-dau-poly-thumb.jpg', 'son-dau-poly.jpg', '', '<p>EKPO OXIDE PRIMER</p>', '', '<p style="text-align:center;"><strong>EKPO OXIDE PRIMER</strong></p>', '', 'ekpo-oxide-primer-', '', '', '', 0, 41, '', 0, 0, '', '', '', '', 1, 1758),
(10401, 'CASO OXIDE PRIMER .', '', '2012-09-11 01:54:04', 'caso-oxide-primer--thumb.jpg', 'caso-oxide-primer-.jpg', '', '<p>CASO OXIDE PRIMER</p>', '', '<p style="text-align:center;"><strong>CASO OXIDE PRIMER</strong></p>', '', 'caso-oxide-primer-', '', '', '', 0, 42, '', 0, 0, '', '', '', '', 1, 1758),
(10402, 'EXPO EASY POWDER PUTTY FOR INTERIOR', '', '2012-09-11 01:56:22', 'expo-easy-powder-putty-for-interior-thumb.jpg', 'expo-easy-powder-putty-for-interior.jpg', '', '<p>EXPO EASY POWDER PUTTY FOR INTERIOR</p>', '', '<p style="text-align:justify;">Expo Power Putty For Interior - Bột trét tường nội thất cao cấp dùng để trám, trét và làm phẳng các bề mặt hồ vữa hay bê tông. Loại này dễ sử dụng, dẻo, mịn, kéo nhẹ tay nên trét được nhiều mét vuông. Tăng vẻ đẹp cho lớp sơn phủ.</p>\n<p style="text-align:justify;"><strong>Thành phần cấu tạo chính:</strong><br />Xi măng, can xi : 96%<br />Bột keo, hỗn hợp : 04%</p>\n<p style="text-align:justify;"><strong>Bước chuẩn bị:</strong><br />Tường phải được xử lý kỹ trước khi trét, tất cả các bề mặt phải sạch và khô, độ ẩm không quá 15%, không bám bụi, sáp, dầu mỡ. Các vết nứt lớn trên bề mặt tường hoặc trần phải được trám kỹ. Nếu bề mặt bị rêu mốc phải diệt hết rêu mốc trước khi trét.</p>\n<p style="text-align:justify;"><strong>Cách sử dụng:</strong><br />1. Trộn 10kg bột trét tường nội thất EXPO với 3,5 -4 lít nước sạch.<br />2. Khuấy đều giúp bột trét hoà tan hoàn toàn trong nước<br />3. Dùng bay trét kim loại hoặc bay nhựa<br />4. Để có bề mặt phẳng, nên trét từ 2 lớp, mỗi lần trét cách nhau từ 20-30 phút<br />5. Sau khi trét xong 4-5 giờ chà phẳng lại bằng giấy nhám<br />6. Lau sạch bụi bằng khăn ướt sau khi chà giấy nhám<br />7. Thực hiện sơn lót sau 24 giờ</p>\n<p style="text-align:justify;"><strong>Hệ thống sử dụng:</strong><br />1. Lớp bột trét:<br />Trét 2 lớp bột trét tường nội thất EXPO POWDER PUTTY FOR INTERIOR<br />2. Lớp sơn lót:<br />Sơn lót gốc dầu EXPO SOLVENT BASE PRIMER hoặc<br />Nếu dùng sơn phủ gốc nước chọn sơn lót chống kiềm EXPO ALKALI PRIMER<br />3. Lớp sơn phủ:<br />Sơn phủ nội thất các loại mang nhãn hiệu EXPO</p>\n<p style="text-align:justify;"><strong>Khuyến cáo:</strong> để tránh những sự cố sau khi sơn như bong tróc, ố màu, loang màu, đổi màu, … cần tuân thủ những hướng dẫn trên của nhà sản xuất. Đặc biệt cần lưu ý các điều quan trọng sau đây :<br />• Không trét trên bề mặt có nhiệt độ trên 400C<br />• Trường hợp tường quá khô và bề mặt hút nước, cần phải làm ẩm và giảm nhiệt độ bề mặt tường bằng nước sạch theo phương pháp phun sương trước khi trét bột<br />• Không nên thi công lớp bột trét dầy quá 2mm<br />• Không trét trên bề mặt đã sơn hoặc bề mặt đã được làm láng</p>\n<p style="text-align:justify;"><strong>Bảo quản:</strong> Để nơi khô ráo, cách ẩm, kho chứa phải đảm bảo sạch, cao, có tường bao và mái che chắc chắn, tránh xa tầm tay trẻ em</p>\n<p style="text-align:justify;">Khối lượng tịnh: 4O KG</p>\n<p style="text-align:justify;"><strong>HSD: 12 Tháng (kể từ ngày sản xuất ghi trên bao bì)</strong></p>\n<p style="text-align:justify;"><span style="text-decoration:underline;"><em><strong>LƯU Ý</strong></em></span>: Tránh tiếp xúc trực tiếp với da, sử dụng dụng cụ bảo hộ thích hợp.</p>\n<p style="text-align:justify;"> </p>', '', 'expo-easy-powder-putty-for-interior', '', '', '', 0, 71, '', 0, 0, '', '', '', '', 1, 1759),
(10403, 'EXPO POWDER PUTTY FOR INTERIOR &amp; EXTERIOR-', '', '2012-09-11 01:58:07', 'expo-powder-putty-for-interior-amp-exterior--thumb.jpg', 'expo-powder-putty-for-interior-amp-exterior-.jpg', '', '<p>EXPO POWDER PUTTY FOR INTERIOR &amp; EXTERIOR</p>', '', '<p style="text-align:justify;">Expo Power Putty For Exterior - Bột trét tường nội thất cao cấp dùng để trám, trét và làm phẳng các bề mặt hồ vữa hay bê tông. Loại này dễ sử dụng, dẻo, mịn, kéo nhẹ tay nên trét được nhiều mét vuông. Tăng vẻ đẹp cho lớp sơn phủ.</p>\n<p style="text-align:justify;"><strong>Thành phần cấu tạo chính:</strong><br />Xi măng, can xi : 96%<br />Bột keo, hỗn hợp : 04%</p>\n<p style="text-align:justify;"><strong>Bước chuẩn bị:</strong><br />Tường phải được xử lý kỹ trước khi trét, tất cả các bề mặt phải sạch và khô, độ ẩm không quá 15%, không bám bụi, sáp, dầu mỡ. Các vết nứt lớn trên bề mặt tường hoặc trần phải được trám kỹ. Nếu bề mặt bị rêu mốc phải diệt hết rêu mốc trước khi trét.</p>\n<p style="text-align:justify;"><strong>Cách sử dụng:</strong><br />1. Trộn 10kg bột trét tường nội thất EXPO với 3,5 -4 lít nước sạch.<br />2. Khuấy đều giúp bột trét hoà tan hoàn toàn trong nước<br />3. Dùng bay trét kim loại hoặc bay nhựa<br />4. Để có bề mặt phẳng, nên trét từ 2 lớp, mỗi lần trét cách nhau từ 20-30 phút<br />5. Sau khi trét xong 4-5 giờ chà phẳng lại bằng giấy nhám<br />6. Lau sạch bụi bằng khăn ướt sau khi chà giấy nhám<br />7. Thực hiện sơn lót sau 24 giờ</p>\n<p style="text-align:justify;"><strong>Hệ thống sử dụng:</strong><br />1. Lớp bột trét:<br />Trét 2 lớp bột trét tường nội thất EXPO POWDER PUTTY FOR INTERIOR<br />2. Lớp sơn lót:<br />Sơn lót gốc dầu EXPO SOLVENT BASE PRIMER hoặc<br />Nếu dùng sơn phủ gốc nước chọn sơn lót chống kiềm EXPO ALKALI PRIMER<br />3. Lớp sơn phủ:<br />Sơn phủ nội thất các loại mang nhãn hiệu EXPO</p>\n<p style="text-align:justify;"><strong>Khuyến cáo:</strong> để tránh những sự cố sau khi sơn như bong tróc, ố màu, loang màu, đổi màu, … cần tuân thủ những hướng dẫn trên của nhà sản xuất. Đặc biệt cần lưu ý các điều quan trọng sau đây :<br />• Không trét trên bề mặt có nhiệt độ trên 400C<br />• Trường hợp tường quá khô và bề mặt hút nước, cần phải làm ẩm và giảm nhiệt độ bề mặt tường bằng nước sạch theo phương pháp phun sương trước khi trét bột<br />• Không nên thi công lớp bột trét dầy quá 2mm<br />• Không trét trên bề mặt đã sơn hoặc bề mặt đã được làm láng</p>\n<p style="text-align:justify;"><strong>Bảo quản:</strong> Để nơi khô ráo, cách ẩm, kho chứa phải đảm bảo sạch, cao, có tường bao và mái che chắc chắn, tránh xa tầm tay trẻ em</p>\n<p style="text-align:justify;">Khối lượng tịnh: 4O KG</p>\n<p style="text-align:justify;"><strong>HSD: 12 Tháng (kể từ ngày sản xuất ghi trên bao bì)</strong></p>\n<p style="text-align:justify;"><span style="text-decoration:underline;"><em><strong>LƯU Ý:</strong> </em></span>Tránh tiếp xúc trực tiếp với da, sử dụng dụng cụ bảo hộ thích hợp.</p>\n<p style="text-align:justify;"> </p>', '', 'expo-powder-putty-for-interior-exterior-', '', '', '', 0, 70, '', 0, 0, '', '', '', '', 1, 1759),
(11072, 'OEXPO EXTERIOR POWDER PUTTY', '', '2012-09-17 06:45:24', 'oexpo-exterior-powder-putty-thumb.jpg', 'oexpo-exterior-powder-putty.jpg', '', '', '', '<p style="text-align:center;"><strong>OEXPO EXTERIOR POWDER PUTTY</strong></p>', '', 'oexpo-exterior-powder-putty', '', '', '', 0, 65, '', 0, 0, '', '', '', '', 1, 1756),
(11073, 'OEXPO POWDER PUTTY FOR EXTERIOR', '', '2012-09-17 06:45:46', 'oexpo-powder-putty-for-exterior-thumb.jpg', 'oexpo-powder-putty-for-exterior.jpg', '', '', '', '<p style="text-align:center;"><strong>OEXPO POWDER PUTTY FOR EXTERIOR</strong></p>', '', 'oexpo-powder-putty-for-exterior', '', '', '', 0, 66, '', 0, 0, '', '', '', '', 1, 1756),
(11074, 'LUCKY OXIDE PRIMER', '', '2012-09-17 06:53:36', 'lucky-oxide-primer-thumb.jpg', 'lucky-oxide-primer.jpg', '', '', '', '<p style="text-align:center;"><strong>LUCKY OXIDE PRIMER</strong></p>', '', 'lucky-oxide-primer', '', '', '', 0, 72, '', 0, 0, '', '', '', '', 1, 1757),
(11075, 'EXPO OXIDE PRIMER GLOSS', '', '2012-09-17 06:54:21', 'expo-oxide-primer-gloss-thumb.jpg', 'expo-oxide-primer-gloss.jpg', '', '', '', '<p style="text-align:center;"><strong>EXPO OXIDE PRIMER GLOSS</strong></p>', '', 'expo-oxide-primer-gloss', '', '', '', 0, 75, '', 0, 0, '', '', '', '', 1, 1757),
(11076, 'EXPO ALKALI PRIMER', '', '2012-09-17 06:55:17', 'expo-alkali-primer-thumb.jpg', 'expo-alkali-primer.jpg', '', '', '', '<p style="text-align:center;"><strong>EXPO ALKALI PRIMER</strong></p>', '', 'expo-alkali-primer', '', '', '', 0, 76, '', 0, 0, '', '', '', '', 1, 1757),
(11077, 'EKPO OXIDE PRIMER', '', '2012-09-17 06:55:57', 'ekpo-oxide-primer-thumb.jpg', 'ekpo-oxide-primer.jpg', '', '', '', '<p style="text-align:center;"><strong>EKPO OXIDE PRIMER</strong></p>', '', 'ekpo-oxide-primer', '', '', '', 0, 78, '', 0, 0, '', '', '', '', 1, 1757),
(11078, 'EXPO ACRYLIC SOLVENT PRIMER', '', '2012-09-17 06:57:55', 'expo-acrylic-solvent-primer-thumb.jpg', 'expo-acrylic-solvent-primer.jpg', '', '', '', '<p style="text-align:center;"><strong>EXPO ACRYLIC SOLVENT PRIMER</strong></p>', '', 'expo-acrylic-solvent-primer', '', '', '', 0, 74, '', 0, 0, '', '', '', '', 1, 1757),
(11079, 'EXPO ACRYLIC SOLVENT BASE HARDTOP', '', '2012-09-17 07:07:11', 'expo-acrylic-solvent-base-hardtop-thumb.jpg', 'expo-acrylic-solvent-base-hardtop.jpg', '', '', '', '<p style="text-align:center;"><strong>EXPO ACRYLIC SOLVENT BASE HARDTOP</strong></p>', '', 'expo-acrylic-solvent-base-hardtop', '', '', '', 0, 81, '', 0, 0, '', '', '', '', 1, 1858),
(11080, 'EXPO EASY FOR EXTERIOR', '', '2012-09-17 07:08:55', 'expo-easy-for-exterior-thumb.jpg', 'expo-easy-for-exterior.jpg', '', '', '', '<p style="text-align:center;"><strong>EXPO EASY FOR EXTERIOR</strong></p>', '', 'expo-easy-for-exterior', '', '', '', 0, 84, '', 0, 0, '', '', '', '', 1, 1858),
(11081, 'EXPO GOLD FOR EXTERIOR', '', '2012-09-17 07:10:32', 'expo-gold-for-exterior-thumb.jpg', 'expo-gold-for-exterior.jpg', '', '', '', '<p style="text-align:center;"><strong>EXPO GOLD FOR EXTERIOR</strong></p>', '', 'expo-gold-for-exterior', '', '', '', 0, 83, '', 0, 0, '', '', '', '', 1, 1858),
(11082, 'EXPO HIGH GLOSS ENAMEL', '', '2012-09-17 07:11:26', 'expo-high-gloss-enamel-thumb.jpg', 'expo-high-gloss-enamel.jpg', '', '', '', '<p style="text-align:center;"><strong>EXPO HIGH GLOSS ENAMEL</strong></p>', '', 'expo-high-gloss-enamel', '', '', '', 0, 82, '', 0, 0, '', '', '', '', 1, 1858),
(11083, 'EXPO RAINKOTE', '', '2012-09-17 07:12:05', 'expo-rainkote-thumb.jpg', 'expo-rainkote.jpg', '', '', '', '<p style="text-align:center;">EXPO RAINKOTE</p>', '', 'expo-rainkote', '', '', '', 0, 85, '', 0, 0, '', '', '', '', 1, 1858),
(11084, 'EXPO SATIN 6+1', '', '2012-09-17 07:12:29', 'expo-satin-61-thumb.jpg', 'expo-satin-61.jpg', '', '', '', '<p style="text-align:center;"><strong>EXPO SATIN 6+1</strong></p>', '', 'expo-satin-61', '', '', '', 0, 86, '', 0, 0, '', '', '', '', 1, 1858),
(11085, 'EXPO WATER BLOK', '', '2012-09-17 07:12:47', 'expo-water-blok-thumb.jpg', 'expo-water-blok.jpg', '', '', '', '<p style="text-align:center;"><strong>EXPO WATER BLOK</strong></p>', '', 'expo-water-blok', '', '', '', 0, 80, '', 0, 0, '', '', '', '', 1, 1858),
(11086, 'OEXPO ACRYLIC SOLVENT BASE HARDTOP', '', '2012-09-17 07:13:10', 'oexpo-acrylic-solvent-base-hardtop-thumb.jpg', 'oexpo-acrylic-solvent-base-hardtop.jpg', '', '', '', '<p style="text-align:center;"><strong>OEXPO ACRYLIC SOLVENT BASE HARDTOP</strong></p>', '', 'oexpo-acrylic-solvent-base-hardtop', '', '', '', 0, 88, '', 1, 0, '', '', '', '', 1, 1858),
(11087, 'OEXPO GOLD FOR EXTERIOR', '', '2012-09-17 07:13:29', 'oexpo-gold-for-exterior-thumb.jpg', 'oexpo-gold-for-exterior.jpg', '', '', '', '<p style="text-align:center;"><strong>OEXPO GOLD FOR EXTERIOR</strong></p>', '', 'oexpo-gold-for-exterior', '', '', '', 0, 89, '', 0, 0, '', '', '', '', 1, 1858),
(11088, 'OEXPO HIGH GLOSS ENAMEL', '', '2012-09-17 07:13:45', 'oexpo-high-gloss-enamel-thumb.jpg', 'oexpo-high-gloss-enamel.jpg', '', '', '', '<p style="text-align:center;"><strong>OEXPO HIGH GLOSS ENAMEL</strong></p>', '', 'oexpo-high-gloss-enamel', '', '', '', 0, 87, '', 0, 0, '', '', '', '', 1, 1858),
(11089, 'OEXPO RAINKOTE', '', '2012-09-17 07:14:04', 'oexpo-rainkote-thumb.jpg', 'oexpo-rainkote.jpg', '', '', '', '<p style="text-align:center;"><strong>OEXPO RAINKOTE</strong></p>', '', 'oexpo-rainkote', '', '', '', 0, 97, '', 0, 0, '', '', '', '', 1, 1858),
(11090, 'OEXPO SATIN 6+1', '', '2012-09-17 07:14:22', 'oexpo-satin-61-thumb.jpg', 'oexpo-satin-61.jpg', '', '', '', '<p style="text-align:center;"><strong>OEXPO SATIN 6+1</strong></p>', '', 'oexpo-satin-61', '', '', '', 0, 96, '', 0, 0, '', '', '', '', 1, 1858),
(11177, 'EXPO POWDER PUTTY FOR INTERIOR &amp; EXTERIOR 2.', '', '2012-09-18 01:09:39', 'expo-powder-putty-for-interior-amp-exterior-2--thumb.jpg', 'expo-powder-putty-for-interior-amp-exterior-2-.jpg', '', '<p>EXPO POWDER PUTTY FOR INTERIOR &amp; EXTERIOR 2</p>', '', '<p style="text-align:center;"><strong>EXPO POWDER PUTTY FOR INTERIOR &amp; EXTERIOR 2</strong></p>', '', 'expo-powder-putty-for-interior-amp-exterior-2', '', '', '', 0, 67, '', 0, 0, '', '', '', '', 1, 1759),
(11178, 'EXPO POWDER PUTTY FOR INTERIOR và EXTERIOR 3.', '', '2012-09-18 01:10:02', 'expo-powder-putty-for-interior-amp-exterior-3--thumb.jpg', 'expo-powder-putty-for-interior-amp-exterior-3-.jpg', '', '<p>EXPO POWDER PUTTY FOR INTERIOR &amp; EXTERIOR 3</p>', '', '<p style="text-align:center;"><strong>EXPO POWDER PUTTY FOR INTERIOR &amp; EXTERIOR 3</strong></p>', '', 'expo-powder-putty-for-interior-va-exterior-3', '', '', '', 0, 68, '', 0, 0, '', '', '', '', 1, 1759),
(11179, 'OEXPO POWDER PUTTY FOR INTERIOR', '', '2012-09-18 01:10:52', 'oexpo-powder-putty-for-interior-thumb.jpg', 'oexpo-powder-putty-for-interior.jpg', '', '<p>OEXPO POWDER PUTTY FOR INTERIOR</p>', '', '<p style="text-align:center;"><strong>OEXPO POWDER PUTTY FOR INTERIOR</strong></p>', '', 'oexpo-powder-putty-for-interior', '', '', '', 0, 69, '', 0, 0, '', '', '', '', 1, 1759),
(11180, 'OEXPO POWDER PUTTY FOR INTERIOR 2', '', '2012-09-18 01:11:16', 'oexpo-powder-putty-for-interior-2-thumb.jpg', 'oexpo-powder-putty-for-interior-2.jpg', '', '<p>OEXPO POWDER PUTTY FOR INTERIOR 2</p>', '', '<p style="text-align:center;"><strong>OEXPO POWDER PUTTY FOR INTERIOR 2</strong></p>', '', 'oexpo-powder-putty-for-interior-2', '', '', '', 0, 1, '', 1, 0, '', '', '', '', 1, 1759),
(11181, 'EXPO ACRYLIC SOLVENT PRIMER .', '', '2012-09-18 01:18:19', 'expo-acrylic-solvent-primer---thumb.jpg', 'expo-acrylic-solvent-primer--.jpg', '', '<p>EXPO ACRYLIC SOLVENT PRIMER</p>', '', '<p style="text-align:center;"><strong>EXPO ACRYLIC SOLVENT PRIMER</strong></p>', '', 'expo-acrylic-solvent-primer-', '', '', '', 0, 47, '', 0, 0, '', '', '', '', 1, 1758),
(11182, 'EXPO ALKALI PRIMER .', '', '2012-09-18 01:18:46', 'expo-alkali-primer---thumb.jpg', 'expo-alkali-primer--.jpg', '', '<p>EXPO ALKALI PRIMER</p>', '', '<p style="text-align:center;"><strong>EXPO ALKALI PRIMER</strong></p>', '', 'expo-alkali-primer-', '', '', '', 0, 43, '', 0, 0, '', '', '', '', 1, 1758),
(11183, 'EXPO ALKALI PRIMER FOR INT .', '', '2012-09-18 01:19:43', 'expo-alkali-primer-for-int---thumb.jpg', 'expo-alkali-primer-for-int--.jpg', '', '<p>EXPO ALKALI PRIMER FOR INT</p>', '', '<p style="text-align:center;"><strong>EXPO ALKALI PRIMER FOR INT</strong></p>', '', 'expo-alkali-primer-for-int-', '', '', '', 0, 44, '', 0, 0, '', '', '', '', 1, 1758),
(11184, 'EXPO OXIDE PRIMER GLOSS .', '', '2012-09-18 01:20:08', 'expo-oxide-primer-gloss---thumb.jpg', 'expo-oxide-primer-gloss--.jpg', '', '<p>EXPO OXIDE PRIMER GLOSS</p>', '', '<p style="text-align:center;"><strong>EXPO OXIDE PRIMER GLOSS</strong></p>', '', 'expo-oxide-primer-gloss-', '', '', '', 0, 45, '', 0, 0, '', '', '', '', 1, 1758),
(11185, 'LUCKY OXIDE PRIMER .', '', '2012-09-18 01:20:32', 'lucky-oxide-primer---thumb.jpg', 'lucky-oxide-primer--.jpg', '', '<p>LUCKY OXIDE PRIMER</p>', '', '<p style="text-align:center;"><strong>LUCKY OXIDE PRIMER</strong></p>', '', 'lucky-oxide-primer-', '', '', '', 0, 48, '', 0, 0, '', '', '', '', 1, 1758),
(11186, 'OEXPO ALKALI FOR INTERIOR', '', '2012-09-18 01:20:52', 'oexpo-alkali-for-interior-thumb.jpg', 'oexpo-alkali-for-interior.jpg', '', '<p>OEXPO ALKALI FOR INTERIOR</p>', '', '<p style="text-align:center;"><strong>OEXPO ALKALI FOR INTERIOR</strong></p>', '', 'oexpo-alkali-for-interior', '', '', '', 0, 46, '', 0, 0, '', '', '', '', 1, 1758),
(11187, 'OEXPO ALKALI FOR INTERIOR 2', '', '2012-09-18 01:21:15', 'oexpo-alkali-for-interior-2-thumb.jpg', 'oexpo-alkali-for-interior-2.jpg', '', '<p>OEXPO ALKALI FOR INTERIOR 2</p>', '', '<p style="text-align:center;"><strong>OEXPO ALKALI FOR INTERIOR 2</strong></p>', '', 'oexpo-alkali-for-interior-2', '', '', '', 0, 1, '', 0, 0, '', '', '', '', 1, 1758),
(11188, 'POLY OXIDE PRIMER .', '', '2012-09-18 01:21:48', 'poly-oxide-primer---thumb.jpg', 'poly-oxide-primer--.jpg', '', '<p>POLY OXIDE PRIMER</p>', '', '<p style="text-align:center;"><strong>POLY OXIDE PRIMER</strong></p>', '', 'poly-oxide-primer-', '', '', '', 0, 49, '', 0, 0, '', '', '', '', 1, 1758),
(11189, 'OEXPO SATIN 6+1 FOR INT', '', '2012-09-18 01:33:31', 'oexpo-satin-61-for-int-thumb.jpg', 'oexpo-satin-61-for-int.jpg', '', '<p>OEXPO SATIN 6+1 FOR INT</p>', '', '<p style="text-align:center;"><strong>OEXPO SATIN 6+1 FOR INT</strong></p>', '', 'oexpo-satin-61-for-int', '', '', '', 0, 35, '', 0, 0, '', '', '', '', 1, 1755),
(11190, 'OEXPO STYRENE ACRYLIC FOR INTERIOR', '', '2012-09-18 01:33:58', 'oexpo-styrene-acrylic-for-interior-thumb.jpg', 'oexpo-styrene-acrylic-for-interior.jpg', '', '<p>OEXPO STYRENE ACRYLIC FOR INTERIOR</p>', '', '<p style="text-align:center;"><strong>OEXPO STYRENE ACRYLIC FOR INTERIOR</strong></p>', '', 'oexpo-styrene-acrylic-for-interior', '', '', '', 0, 36, '', 0, 0, '', '', '', '', 1, 1755),
(11191, 'MYKOLOR HI-FILLER EXTERIOR', '', '2012-09-18 01:43:24', 'mykolor-hi-filler-exterior-thumb.jpg', 'mykolor-hi-filler-exterior.jpg', '', '<p>MYKOLOR HI-FILLER EXTERIOR</p>', '', '<p style="text-align:center;"><strong>MYKOLOR HI-FILLER EXTERIOR</strong></p>', '', 'mykolor-hi-filler-exterior', '', '', '', 0, 1, '', 0, 0, '', '', '', '', 1, 1894),
(11192, 'MYKOLOR POWDER PUTTY FOR INT&amp; EXT', '', '2012-09-18 01:43:42', 'mykolor-powder-putty-for-intamp-ext-thumb.jpg', 'mykolor-powder-putty-for-intamp-ext.jpg', '', '<p>MYKOLOR POWDER PUTTY FOR INT&amp; EXT</p>', '', '<p style="text-align:center;"><strong>MYKOLOR POWDER PUTTY FOR INT&amp; EXT</strong></p>', '', 'mykolor-powder-putty-for-int-ext', '', '', '', 0, 10, '', 0, 0, '', '', '', '', 1, 1894),
(11193, 'MYKOLOR POWDER PUTTY FOR INT&amp; EXT 2', '', '2012-09-18 01:44:01', 'mykolor-powder-putty-for-intamp-ext-2-thumb.jpg', 'mykolor-powder-putty-for-intamp-ext-2.jpg', '', '<p>MYKOLOR POWDER PUTTY FOR INT&amp; EXT 2</p>', '', '<p style="text-align:center;"><strong>MYKOLOR POWDER PUTTY FOR INT&amp; EXT 2</strong></p>', '', 'mykolor-powder-putty-for-int-ext-2', '', '', '', 0, 11, '', 0, 0, '', '', '', '', 1, 1894),
(11194, 'MYKOLOR HI-FILLER INTERIOR', '', '2012-09-18 01:47:31', 'mykolor-hi-filler-interior-thumb.jpg', 'mykolor-hi-filler-interior.jpg', '', '<p>MYKOLOR HI-FILLER INTERIOR</p>', '', '<p style="text-align:center;"><strong>MYKOLOR HI-FILLER INTERIOR</strong></p>', '', 'mykolor-hi-filler-interior', '', '', '', 0, 8, '', 0, 0, '', '', '', '', 1, 1895),
(11195, 'MYKOLOR POWDER PUTTY FOR INT&amp; EXT  .', '', '2012-09-18 01:49:19', 'mykolor-powder-putty-for-intamp-ext----thumb.jpg', 'mykolor-powder-putty-for-intamp-ext---.jpg', '', '<p>MYKOLOR POWDER PUTTY FOR INT&amp; EXT</p>', '', '<p style="text-align:center;"><strong>MYKOLOR POWDER PUTTY FOR INT&amp; EXT</strong></p>', '', 'mykolor-powder-putty-for-int-ext-', '', '', '', 0, 9, '', 0, 0, '', '', '', '', 1, 1895),
(11196, 'MYKOLOR ALKALI SEAL', '', '2012-09-18 01:52:41', 'mykolor-alkali-seal-thumb.jpg', 'mykolor-alkali-seal.jpg', '', '<p>MYKOLOR ALKALI SEAL</p>', '', '<p style="text-align:center;"><strong>MYKOLOR ALKALI SEAL</strong></p>', '', 'mykolor-alkali-seal', '', '', '', 0, 14, '', 0, 0, '', '', '', '', 1, 1896),
(11197, 'MYKOLOR ALKALI SEAL FOR INTERIOR', '', '2012-09-18 01:53:00', 'mykolor-alkali-seal-for-interior-thumb.jpg', 'mykolor-alkali-seal-for-interior.jpg', '', '<p>MYKOLOR ALKALI SEAL FOR INTERIOR</p>', '', '<p style="text-align:center;"><strong>MYKOLOR ALKALI SEAL FOR INTERIOR</strong></p>', '', 'mykolor-alkali-seal-for-interior', '', '', '', 0, 15, '', 0, 0, '', '', '', '', 1, 1896),
(11198, 'MYKOLOR PRIMER SHIMMER LOCK', '', '2012-09-18 01:53:23', 'mykolor-primer-shimmer-lock-thumb.jpg', 'mykolor-primer-shimmer-lock.jpg', '', '<p>MYKOLOR PRIMER SHIMMER LOCK</p>', '', '<p style="text-align:center;"><strong>MYKOLOR PRIMER SHIMMER LOCK</strong></p>', '', 'mykolor-primer-shimmer-lock', '', '', '', 0, 16, '', 0, 0, '', '', '', '', 1, 1896),
(11199, 'MYKOLOR SPECIAL 5 PLUS FINISHMYKOLOR SPECIAL 5 PLUS FINISH', '', '2012-09-18 01:56:55', 'mykolor-special-5-plus-finishmykolor-special-5-plus-finish-thumb.jpg', 'mykolor-special-5-plus-finishmykolor-special-5-plus-finish.jpg', '', '<p>MYKOLOR SPECIAL 5 PLUS FINISHMYKOLOR SPECIAL 5 PLUS FINISH</p>', '', '<p style="text-align:center;"><strong>MYKOLOR SPECIAL 5 PLUS FINISHMYKOLOR SPECIAL 5 PLUS FINISH</strong></p>', '', 'mykolor-special-5-plus-finishmykolor-special-5-plus-finish', '', '', '', 0, 17, '', 0, 0, '', '', '', '', 1, 1897),
(11200, 'MYKOLOR SPECIAL ILKA FINISH', '', '2012-09-18 01:57:19', 'mykolor-special-ilka-finish-thumb.jpg', 'mykolor-special-ilka-finish.jpg', '', '<p>MYKOLOR SPECIAL ILKA FINISH</p>', '', '<p style="text-align:center;"><strong>MYKOLOR SPECIAL ILKA FINISH</strong></p>', '', 'mykolor-special-ilka-finish', '', '', '', 0, 18, '', 1, 0, '', '', '', '', 1, 1897),
(11201, 'MYKOLOR TOUCH 5 PLUS FINISH', '', '2012-09-18 01:57:35', 'mykolor-touch-5-plus-finish-thumb.jpg', 'mykolor-touch-5-plus-finish.jpg', '', '<p>MYKOLOR TOUCH 5 PLUS FINISH</p>', '', '<p style="text-align:center;"><strong>MYKOLOR TOUCH 5 PLUS FINISH</strong></p>', '', 'mykolor-touch-5-plus-finish', '', '', '', 0, 19, '', 0, 0, '', '', '', '', 1, 1897),
(11202, 'MYKOLOR TOUCH CLASSIC FINISH', '', '2012-09-18 01:57:58', 'mykolor-touch-classic-finish-thumb.jpg', 'mykolor-touch-classic-finish.jpg', '', '<p>MYKOLOR TOUCH CLASSIC FINISH</p>', '', '<p style="text-align:center;"><strong>MYKOLOR TOUCH CLASSIC FINISH</strong></p>', '', 'mykolor-touch-classic-finish', '', '', '', 0, 20, '', 0, 0, '', '', '', '', 1, 1897),
(11203, 'MYKOLOR TOUCH ILKA FINISH', '', '2012-09-18 01:58:18', 'mykolor-touch-ilka-finish-thumb.jpg', 'mykolor-touch-ilka-finish.jpg', '', '<p>MYKOLOR TOUCH ILKA FINISH</p>', '', '<p style="text-align:center;"><strong>MYKOLOR TOUCH ILKA FINISH</strong></p>', '', 'mykolor-touch-ilka-finish', '', '', '', 0, 21, '', 0, 0, '', '', '', '', 1, 1897),
(11204, 'MYKOLOR WHITE FOR CEILING FINISH', '', '2012-09-18 01:58:33', 'mykolor-white-for-ceiling-finish-thumb.jpg', 'mykolor-white-for-ceiling-finish.jpg', '', '<p>MYKOLOR WHITE FOR CEILING FINISH</p>', '', '<p style="text-align:center;"><strong>MYKOLOR WHITE FOR CEILING FINISH</strong></p>', '', 'mykolor-white-for-ceiling-finish', '', '', '', 0, 22, '', 1, 0, '', '', '', '', 1, 1897),
(11205, 'MYKOLOR ALKALI SEAL  .', '', '2012-09-18 02:03:12', 'mykolor-alkali-seal----thumb.jpg', 'mykolor-alkali-seal---.jpg', '', '<p>MYKOLOR ALKALI SEAL</p>', '', '<p style="text-align:center;"><strong>MYKOLOR ALKALI SEAL</strong></p>', '', 'mykolor-alkali-seal-', '', '', '', 0, 12, '', 0, 0, '', '', '', '', 1, 1898),
(11206, 'MYKOLOR SPECIAL PRIMER KOOL LOCK', '', '2012-09-18 02:03:51', 'mykolor-special-primer-kool-lock-thumb.jpg', 'mykolor-special-primer-kool-lock.jpg', '', '<p>MYKOLOR SPECIAL PRIMER KOOL LOCK</p>', '', '<p style="text-align:center;"><strong>MYKOLOR SPECIAL PRIMER KOOL LOCK</strong></p>', '', 'mykolor-special-primer-kool-lock', '', '', '', 0, 13, '', 0, 0, '', '', '', '', 1, 1898),
(11207, 'MYKOLOR POWDER PUTTY FOR INT&amp; EXT2', '', '2012-09-18 02:06:40', 'mykolor-powder-putty-for-intamp-ext2-thumb.jpg', 'mykolor-powder-putty-for-intamp-ext2.jpg', '', '<p>MYKOLOR POWDER PUTTY FOR INT&amp; EXT</p>', '', '<p style="text-align:center;"><strong>MYKOLOR POWDER PUTTY FOR INT&amp; EXT</strong></p>', '', 'mykolor-powder-putty-for-int-ext2', '', '', '', 0, 6, '', 0, 0, '', '', '', '', 1, 1899),
(11208, 'Donasa_sunmaster2', '', '2012-09-18 02:19:09', 'donasasunmaster2-thumb.jpg', 'donasasunmaster2.jpg', '', '<p>Donasa_sunmaster2</p>', '', '<p style="text-align:justify;"><span style="color:#ff0000;"><strong>SUNMASTER 2</strong></span> là sản phẩm cao cấp hệ dung môi, 1 thành phần , 100% là nhựa Acrylic nhiệt dẻo, khô tự nhiên , dạng lỏng sệt . Sản phẩm có khả năng cách nhiệt cao, bám dính tốt trên các bề mặt kim loại, bêtông, thạch cao, vữa hồ hay gạch . Tạo màng cách nhiệt bảo vệ cho các công trình xây dựng, tiết kiệm năng lượng , giảm chi phí đầu tư. Sản phẩm được áp dụng trên các bề mặt betong, vữa hồ hay kim loại, có độ bám dính cao, chống thấm, khả năng đàn hồi cao và chịu được mọi sự thay đổi của thời tiết.</p>\n<p style="text-align:justify;"><span style="color:#0000ff;"><strong>1. Hướng dẫn sử dụng:</strong></span></p>\n<p style="text-align:justify;">Pha loãng bằng solvesso 100, hàm lượng từ 5 - 15 % theo thể tích. Khuấy đều trước khi sử dụng , dùng cọ sơn, con lăn hoặc súng phun áp lực cao 40 – 50 kgf/cm2. Các súng phun thông thường không thể áp dụng sản phẩm này, có thể phun chân không và đầu phun phải thích hơp với áp lực khi phun .</p>\n<p style="text-align:justify;"><span style="color:#0000ff;"><strong>2. Chuẩn bị bề mặt:</strong></span></p>\n<p style="text-align:justify;">Bề mặt trước khi thi công phải đảm bảo không có bụi bẩn, tạp chất và các vết dầu mỡ bám trên bề mặt. Cần sử dụng dung dịch Donasa OR 10 để vệ sinh bề mặt trước khi thi công</p>\n<p style="text-align:justify;"><strong><span style="color:#0000ff;">3. Hệ thống sơn đề nghị:</span></strong></p>\n<p style="text-align:justify;">Sử dụng Sunmaster 7 sơn 1 lớp cho bề mặt ciment hoặc Sunmaster 6 sơn 1 lớp cho bề mặt kim loại . Sơn 2 lớp sơn Sunmaster 2</p>\n<p style="text-align:justify;"><strong><span style="color:#0000ff;">4. Thành phần hóa chất:</span></strong></p>\n<p style="text-align:justify;">Nhựa Acrylic, các bột màu, phụ gia và các dung môi hữu cơ.</p>\n<p style="text-align:justify;"><strong><span style="color:#0000ff;">5. Chỉ tiêu kỹ thuật:</span></strong></p>\n<p style="text-align:justify;">Thời gian khô: Khô bề mặt tùy thuộc nhiệt độ và độ ẩm sơn lớp 2 : 04 giờ</p>\n<p style="text-align:justify;">Chiếu dày tối ưu: 140-150 µm (DFT) 400-450 µm (WFT)</p>\n<p style="text-align:justify;">Độ phủ lý thuyết: 2-3m²/lít</p>\n<p style="text-align:justify;">Độ bóng: Mờ (60°, ≤ 15%)</p>\n<p style="text-align:justify;">Hiện quả cách nhiệt : 7-10°c (ở nhiệt độ môi trường 45-47°c)</p>\n<p style="text-align:justify;">Pha loãng: Solvesso 100</p>\n<p style="text-align:justify;"><span style="color:#0000ff;"><strong>6. Thông tin an toàn bảo quản:</strong></span></p>\n<p style="text-align:justify;">Sản phẩm được áp dụng ở những nơi thông thoáng, khi thi công phải trang bị đầy đủ các dụng cụ bảo hộ lao động như găng tay, kiếng vv…Nếu sơn dính vào da hay mắt thì phải vệ sinh ngay bằng bột chuyên dùng và vệ sinh lại bằng nước xà phòng, cần thiết phải chuyển ngay đến bác sĩ. Sản phẩm khi không sử dụng cần bảo quản kín. Sản phẩm được xác định không có tính độc hại, tuy nhiên đối với tất cả các hóa chất công nghiệp, cấn phải tránh khi tiếp xúc với da cũng như qua đường tiêu hóa. Nếu có sự nghi ngờ về tính an toàn của sản phẩm xin liên hệ trực tiếp với nhà cung cấp.</p>\n<p style="text-align:justify;"> </p>', '', 'donasasunmaster2', '', '', '', 0, 90, '', 0, 0, '', '', '', '', 1, 1754),
(11209, 'Donasa_sunmaster6', '', '2012-09-18 02:20:55', 'donasasunmaster6-thumb.jpg', 'donasasunmaster6.jpg', '', '<p>donasa_sunmaster6</p>', '', '<p>Đang cập nhật ...<br /><br /></p>', '', 'donasasunmaster6', '', '', '', 0, 30, '', 0, 0, '', '', '', '', 1, 1754),
(11210, 'Donasa_sunmaster7', '', '2012-09-18 02:22:18', 'donasasunmaster7-thumb.jpg', 'donasasunmaster7.jpg', '', '<p>Donasa_sunmaster7</p>', '', '<p>Đang cập nhật</p>', '', 'donasasunmaster7', '', '', '', 0, 31, '', 0, 0, '', '', '', '', 1, 1754),
(11211, 'Donasa_anti-Kali', '', '2012-09-18 02:29:53', 'donasaanti-kali-thumb.jpg', 'donasaanti-kali.jpg', '', '<p>donasa_anti-Kali</p>', '', '<p style="text-align:justify;"><strong><span style="color:#ff0000;">DONASA Anti Alkali</span></strong> là sơn lót gốc nước 100% Acrylic dùng chống kiềm để bảo quản tường và lớp sơn phủ khỏi bị kiềm hóa phá hủy, kéo dài tuổi thọ cho công trình. Sơn dùng cho cả bề mặt bên trong và ngoài nhà, trên bề mặt tường vữa xi măng hoặc có lớp trét lớp mastic</p>\n<p style="text-align:justify;"><strong><span style="color:#0000ff;">1. Hướng dẫn sử dụng:</span></strong></p>\n<p style="text-align:justify;">+ Dùng con lăn, cọ hoặc súng phun ở áp suất thường hoặc áp suất cao</p>\n<p style="text-align:justify;">+ Để dễ dàng sơn bằng con lăn, dùng nước sạch pha loãng với tỉ lệ không quá 10 -15%</p>\n<p style="text-align:justify;"><strong><span style="color:#0000ff;">2. Chuẩn bị bề mặt:</span></strong></p>\n<p style="text-align:justify;">+ Mặt tường phải sạch, khô, không dính dầu mỡ hoặc các tạp chất khác</p>\n<p style="text-align:justify;">+ Dùng vòi nước áp lực mạnh để rửa hoặc cạo sạch các lớp sơn cũ</p>\n<p style="text-align:justify;"><span style="color:#0000ff;"><strong>3. Hệ thống sơn đề nghị:</strong></span></p>\n<p style="text-align:justify;">Sơn một lớp <strong><span style="color:#ff0000;">DONASA Anti Alkali</span></strong>. Để khô và ổn định sau 24 giờ có thể sơn tiếp hai lớp sơn phủ</p>\n<p style="text-align:justify;"><span style="color:#0000ff;"><strong>4. Thành phần hóa chất:</strong></span></p>\n<p style="text-align:justify;">Thành phần gồm: Nhựa tổng hợp, bột khoáng các loại, nước và các phụ gia khác</p>\n<p style="text-align:justify;"><strong><span style="color:#0000ff;">5. Chỉ tiêu chất lượng:</span></strong></p>\n<p style="text-align:justify;">Mức tiêu hao: 14 – 16m2/lít/lớp</p>\n<p style="text-align:justify;"><strong><span style="color:#0000ff;">6. Thông tin an toàn bảo quản</span></strong>:</p>\n<p style="text-align:justify;">+ Sơn nước không độc hại, không bốc cháy. Nếu sơn dây vào da, mắt thì phải rửa ngay bằng nước sạch</p>\n<p style="text-align:justify;">+ Bảo quản nơi khô ráo, thoáng, tránh ánh nắng mặt trời chiếu vào thùng</p>\n<p style="text-align:justify;">+ Hạn bảo quản: 36 tháng, kể từ ngày sản xuất</p>', '', 'donasaanti-kali', '', '', '', 0, 7, '', 0, 0, '', '', '', '', 1, 1900),
(11260, 'Bột trét 1', '', '2012-09-18 14:29:14', 'bot-tret-1-thumb.jpg', 'bot-tret-1.jpg', '', '<p>Bột trét 1</p>', '', '<p style="text-align:center;"><strong>Bột trét 1</strong></p>', '', 'bot-tret-1', '', '', '', 0, 27, '', 0, 0, '', '', '', '', 1, 1937),
(11261, 'Bột trét 2', '', '2012-09-18 14:29:48', 'bot-tret-2-thumb.jpg', 'bot-tret-2.jpg', '', '<p>Bột trét</p>', '', '<p style="text-align:center;"><strong>Bột trét </strong></p>', '', 'bot-tret-2', '', '', '', 0, 28, '', 1, 0, '', '', '', '', 1, 1937),
(11271, 'Gương soi và gương trang trí', '', '2012-09-20 06:10:58', 'guong-soi-va-guong-trang-tri-thumb.jpg', 'guong-soi-va-guong-trang-tri.gif', '', '', '', '<p style="text-align:justify;"><strong>Mô tả:</strong></p>\n<p style="text-align:justify;">Sản phấm kính gương được sản xuất bằng cách gia công tráng mạ lớp phủ ( dày hơn 0,1µm) lên bề mặt kính trong môi trường chân không, sau đó phủ sơn bảo vệ chuyên dụng và tiếp tục sấy trong môi trường nhiệt độ ổn định để tạo sự bám dính bền chắc giữa kính, lớp phủ và lớp sơn bảo vệ.</p>\n<p style="text-align:justify;"><strong>Đặc tính:</strong></p>\n<p style="text-align:justify;">Gương Đáp Cầu được sản xuất theo phương pháp phủ nhôm trong chân không và có các đặc tính:- Lớp phủ đều, bền chắc có chiều dày lớn hơn 0,1µm.</p>\n<p style="text-align:justify;">- Hệ số phản xạ lớn hơn 77%.</p>\n<p style="text-align:justify;">- Lớp sơn bảo vệ cứng, bền có khả năng bảo vệ lớp phủ trong mọi điều kiện thời tiết. Hình ảnh trong sáng, trung thực.</p>\n<p style="text-align:justify;"><strong>Ứng dụng:</strong></p>\n<p style="text-align:justify;">Gương được sử dụng rộng rãi trong các công trình xây dựng thương mại và dân dụng, vừa phục vụ mục đích sinh hoạt hàng ngày, vừa có chức năng trang trí</p>\n<p style="text-align:justify;"><strong>Tiêu chuẩn:</strong></p>\n<p style="text-align:justify;">TCVN 7624 : 2007</p>', '', 'guong-soi-va-guong-trang-tri', '', '', '', 0, 103, '', 0, 0, '', '', '', '', 1, 1939);
INSERT INTO `dos_module_products` (`record_id`, `title`, `titleen`, `postdate`, `pic_thumb`, `pic_full`, `pic_desc`, `preview`, `previewen`, `content`, `contenten`, `tag`, `tagen`, `description`, `descriptionen`, `hits`, `record_order`, `unit`, `hot`, `specials`, `extra_field1`, `extra_field2`, `extra_field3`, `extra_field4`, `enable`, `dos_module_item_cat_cat_id`) VALUES
(11272, 'Kính cán hoa', '', '2012-09-20 06:13:45', 'kinh-can-hoa-thumb.jpg', 'kinh-can-hoa.jpg', 'kinh-can-hoa-desc-1.jpg', '<p>Chiều dày: 3mm - 10mm Kích thước: max. 3048mm x 1524mm Chủng loại: Vân mây; đồi mồi; hải đường; ô ly trơn...</p>', '', '<p style="text-align:justify;">Chiều dày: 3mm - 10mm Kích thước: max. 3048mm x 1524mm Chủng loại: Vân mây; đồi mồi; hải đường; ô ly trơn...</p>\n<p style="text-align:justify;"><strong>Mô tả:</strong></p>\n<p style="text-align:justify;">Kính cán hoa văn là kính được sản xuất theo công nghệ cán tạo hoa văn trên một bề mặt.</p>\n<p style="text-align:justify;">Tháng 4 năm 2007 Công ty cổ phần kính Viglacera Đáp cầu đã nâng cấp cải tạo và đưa vào vận hành một dây chuyền sản xuất kính cán công suất 80 tấn/ngày với các thông số kỹ thuật chủ yếu sau:</p>\n<p style="text-align:justify;">Kính cán hoa Đáp Cầu được sản xuất trên dây chuyền hiện đại của Cộng hoà liên bang Đức có chiều dày từ 3-10 mm (có 3 loại màu: xanh lá cây, xanh da trời, màu trà) với nhiều loại hoa văn sắc nét như: kính ôly trơn và hoa, kính hoa hải đường, vân mây, đồi mồi, kim cương... phù hợp với tiêu chuẩn DIN EN 572-1995 CHLB Đức. Kích thước tấm kính lớn nhất 3048 x 1524 mm.</p>\n<p style="text-align:center;"><img src="/public/userfiles/image/thaisonglass/image/kinhcanhoavan1.jpg" alt="" width="450" height="450" /></p>\n<p style="text-align:justify;"><strong>Đặc tính:</strong></p>\n<p style="text-align:justify;">- Hoa văn trên kính giúp hình thành độ mờ thích hợp cho việc khuếch tán ánh sáng truyền qua, làm cho ánh sáng bên trong tòa nhà dịu mát hơn.</p>\n<p style="text-align:justify;">- Hệ số truyền dẫn ánh sáng nhìn thấy và bức xạ năng lượng mặt trời tương tự kính nổi</p>\n<p style="text-align:justify;">- Hoa văn và màu sắc đa dạng cho khách hàng có nhiều lựa chọn hơn trong việc sử dụng kính cán làm vật liệu trang trí .</p>\n<p style="text-align:justify;"><strong>Ứng dụng:</strong></p>\n<p style="text-align:justify;">Kính cán hoa Đáp Cầu thường được sử dụng làm vách ngăn, mặt bàn, ô thoáng, lan can cầu thang, kính cửa sổ, cửa nhà vệ sinh..., sự kết hợp hài hòa của kính vân hoa trang trí tại những vị trí này đã tôn thêm vẻ đẹp và giá trị của ngôi nhà.</p>\n<p style="text-align:justify;"><strong>Tiêu chuẩn chất lượng:</strong></p>\n<p style="text-align:justify;">TCVN 7527:2005.</p>', '', 'kinh-can-hoa', '', '', '', 0, 2, '', 0, 0, '', '', '', '', 1, 1939),
(11273, 'Kính dán an toàn', '', '2012-09-20 06:16:26', 'kinh-dan-an-toan-thumb.gif', 'kinh-dan-an-toan.gif', '', '', '', '<p style="text-align:justify;"><strong><em>Kích thước: max. 1524x2134 / 1829x2438 / 2134x3048 Chiều dày: 6,38 - 20,38</em></strong></p>\n<p style="text-align:justify;"><strong>Mô tả:</strong></p>\n<p style="text-align:justify;">Kính dán an toàn sản xuất tại Công ty cổ phần kính Viglacera Đáp Cầu là loại kính có từ hai lớp kính trở lên, được kết dính với nhau bằng lớp màng Plastic đặc biệt (PVB) trong trường hợp bị va đập, chấn động kính bị vỡ vẫn giữ những mảnh kính vỡ nguyên vị trí không bắn ra ngoài, mà vì vậy khó gây sát thương, nguy hiểm cho người và vật.</p>\n<p style="text-align:justify;">Kính dán an toàn Viglacera Đáp Cầu sử dụng lớp phim dán PVB chất lượng cao, nhập khẩu từ tập đoàn DUPONT (Mỹ) và TROSIFOL (Đức) để bảo đảm kính dán đạt tiêu chuẩn quốc tế.</p>\n<p style="text-align:justify;"><strong>Đặc tính:</strong></p>\n<p style="text-align:justify;">An toàn: Đảm bảo an toàn trong mọi trường hợp va đập mạnh, tấm kính vẫn giữ nguyên dạng khi bị vỡ, các mảnh kính luôn dính chặt với nhau.</p>\n<p style="text-align:justify;">An ninh: Kính dán an toàn hạn chế mọi sự đột nhập từ bên ngoài vào vì có lớp kết dính đặc biệt bảo vệ. Nếu dán nhiều lớp, kính dán còn có khả năng chịu được sức nổ của bom và đạn súng trường.</p>\n<p style="text-align:justify;">Độ bền cao: Kính dán an toàn có khả năng bền vững trong mọi điều kiện khí hậu thời tiết, không biến màu, không lão hóa, trường tồn cùng thời gian.</p>\n<p style="text-align:justify;">Cách âm, cách nhiệt: Lớp film dán PVB có khả năng hạn chế tiếng ồn và nhiệt độ truyền qua.</p>\n<p style="text-align:justify;">Giảm thiểu tác hại của tia UV là tác nhân làm bạc màu đồ đạc.</p>\n<p style="text-align:justify;">Khả năng gia công: thuận lợi trong gia công chế tạo thành phẩm, trang trí như cắt, khoan, mài...</p>\n<p style="text-align:justify;"><strong>Ứng dụng:</strong></p>\n<p style="text-align:justify;">Kính dán an toàn được sử dụng làm:<br />- Vách kính công trình nhà cao tầng;<br />- Vách ngăn nội ngoại thất;<br />- Sàn kính, bàn ghế và đồ nội thất;<br />- Cửa đi, cửa sổ trong xây dựng và phương tiện giao thông vận tải.</p>\n<p style="text-align:justify;"><strong>Tiêu chuẩn chất lượng:</strong></p>\n<p style="text-align:justify;">Tiêu chuẩn chất lượng: TCVN 7364-1÷6:2004 tương đương DIN EN ISO 12543-1998</p>', '', 'kinh-dan-an-toan', '', '', '', 0, 3, '', 0, 0, '', '', '', '', 1, 1939),
(11274, 'Kính tôi nhiệt an toàn', '', '2012-09-20 06:23:00', 'kinh-toi-nhiet-an-toan-thumb.png', 'kinh-toi-nhiet-an-toan.png', '', '', '', '<p style="text-align:center;"><strong>Hay còn được gọi là kính cường lực, được sử dụng phổ biến hiện nay bởi đặc tính an toàn của nó.</strong></p>\n<p style="text-align:justify;"><strong>Mô tả:</strong></p>\n<p style="text-align:justify;">Kính tôi nhiệt an toàn Đáp Cầu được sản xuất theo phương pháp tôi nhiệt trên hệ thống thiết bị hiện đại, đồng bộ của các hãng Bovone, Intermac, Landglass.</p>\n<p style="text-align:justify;">Kính tôi nhiệt phẳng: Kính phẳng được cắt, mài, rửa, gia nhiệt đến điểm biến dạng sau đó được làm nguội nhanh bằng luồng khí lạnh một cách đồng đều và chính xác để tạo các ứng suất nén trên bề mặt kính, khiến cho kính được tăng cường khả năng chịu va đập đồng thời vẫn giữ được vẻ trong suốt nguyên thuỷ của kính</p>\n<p style="text-align:justify;"><strong>Kính tôi nhiệt cong:</strong></p>\n<p style="text-align:justify;">Kính phẳng được cắt, mài, rửa, gia nhiệt đến điểm biến dạng và đưa vào thiết bị uốn cong sau đó được làm nguội nhanh bằng luồng khí lạnh một cách đồng đều và chính xác để tạo các ứng suất nén trên bề mặt kính, khiến cho kính được tăng cường khả năng chịu va đập đồng thời vẫn giữ được vẻ trong suốt nguyên thuỷ của kính</p>\n<p style="text-align:center;"><img src="/public/userfiles/image/thaisonglass/image/toicong17.jpg" alt="" width="318" height="220" /></p>\n<p style="text-align:justify;"><strong>Đặc tính:</strong></p>\n<p style="text-align:justify;">1. Chịu lực : Khả năng chịu va đập cap gấp 5 - 8 lần kính thường có cùng độ dày.</p>\n<p style="text-align:justify;">2. Chịu sốc nhiệt: Chịu được chênh lệch nhiệt độ 240ºC mà không bị vỡ (kính thường bị vỡ khi có sự thay đổi đột xuất về nhiệt độ trong khoảng 40ºC đến 50ºC)</p>\n<p style="text-align:justify;">3. An toàn: Kính tôi nhiệt khi vỡ sẽ vỡ vụn thành những hạt nhỏ hình lục lăng nên không gây sát thương cho người (kính thường mảnh vỡ lớn và sắc cạnh rất nguy hiểm).</p>\n<p style="text-align:justify;">4. Chống chịu hóa chất tốt</p>\n<p style="text-align:justify;"><strong>Ứng dụng:</strong></p>\n<p style="text-align:justify;">Kính an toàn tôi nhiệt sản xuất tại Công ty cổ phần kính Viglacera Đáp Cầu được sử dụng:</p>\n<p style="text-align:justify;">- Làm mặt dứng kính/ vách kính bao quanh tòa nhà<br />- Làm vách ngăn văn phòng, nhà tắm<br />- Làm lan can kính, cầu thang kính (nấc thang)<br />- Làm cửa đi, cửa sổ, cửa xe ô tô, tàu hỏa, tàu thủy, cửa thang máy<br />- Làm đồ nội thất như bàn, ghế, tủ<br />- Dùng cho các thiết bị chiếu sáng đô thị và cửa quan sát lò nung...</p>\n<p style="text-align:justify;"><strong>Tiêu chuẩn chất lượng:</strong></p>\n<p style="text-align:justify;">TCVN 7455:2004 (tương đương Z97.1 -1984)</p>\n<p style="text-align:justify;"> </p>', '', 'kinh-toi-nhiet-an-toan', '', '', '', 0, 1, '', 0, 0, '', '', '', '', 1, 1939),
(11275, 'Kính dán an toàn 2 hoặc nhiều lớp', '', '2012-09-20 06:28:00', 'kinh-dan-an-toan-2-hoac-nhieu-lop-thumb.jpeg', 'kinh-dan-an-toan-2-hoac-nhieu-lop.jpeg', '', '', '', '<p style="text-align:center;"><strong>LAMISAFE</strong><br /><strong>Kính Dán An Toàn Nhiều Lớp</strong><br /><strong>THUẬN THÀNH</strong><br /><strong>Laminated Safety Glass</strong></p>\n<p style="text-align:justify;">+ Kính an toàn ghép nhiều lớp của Công ty KÍNH THUẬN THÀNH (LAMISAFE) được sản xuất từ 02 (hoặc nhiều hơn tùy theo nhu cầu) lớp kính phằng ghép lại, được liên kết với nhau bằng lớp film PVB (Film PVB có tính bền bỉ, dẻo dai) ở giữa các tấm kính và được tạo bởi sự kết hợp chính xác của áp lực và sức nóng.</p>\n<p style="text-align:justify;">+ LAMISAFE được sản xuất trên dây chuyền công nghệ hiện đại và tiên tiến theo tiêu chuẩn châu âu. Quy trình sản xuất là một vòng khép kín, các công đọan được vận hành theo các thông số đã được lập trình, cài đặt sẵn và được kiểm soát bởi bộ phận điều khiển trung tâm. Film PVB sử dụng được nhập về từ Mỹ của 02 Tập đoàn nổi tiếng là DuPont và SOLUTIA. Do đó, LAMISAFE là sản phẩm kính có chất lượng ổn định, tính bền và tuổi thọ rất cao. Chất lượng của LAMISAFE đạt tiêu chuẩn quốc tế: AS/NZS 2208:1996 của Úc và NewZealand, BS 6206:1981 của Anh.</p>\n<p style="text-align:justify;">+ Tùy theo mục đích và nhu cầu sử dụng mà LAMISAFE được tạo ra từ các loại film PVB và từ 02 hoặc nhiều tấm kính của các loại kính sau đây để tạo ra sản phẩm kính an toàn hoàn hảo đáp ứng thỏa mãn các yêu cầu thiết kế:</p>\n<p style="text-align:justify;">. Film trong. film màu các loại, film ghép vải màu, hoa văn trang trí với độ dày chuẩn thông dụng: 0.38mm, 0.76mm,1.52mm.</p>\n<p style="text-align:justify;">. Kính trong, kính màu, kính phản quang, kính phản nhiệt, kính lưới, kính cường lực với độ với độ dày từ 3mm đến 19mm.</p>\n<p style="text-align:justify;">+ Kính dán an toàn nhiều lớp thích hợp cho việc xây dựng các công trình có quy mô lớn, bảo đảm độ an toàn,An ninh, tiết kiện năng lượng, tránh rủi ro trong quá trình sử dụng. Việc sử dụng kính ghép an toàn nhiều lớp đã chứng tỏ được tính an toàn trong khi có các sự cố xảy ra, và vì thế nó sẽ phát triển được ưu thế trong việc lắp đặt, trang trí cho các công trình xây dựng trong những năm sắp tới.</p>\n<p style="text-align:center;"><img src="/public/userfiles/image/thaisonglass/image/90.jpg" alt="" width="361" height="508" /></p>\n<p style="text-align:justify;"><strong>A. ĐẶC TÍNH VÀ ỨNG DỤNG</strong></p>\n<p style="text-align:justify;"><strong>1. Tính an toàn .</strong></p>\n<p style="text-align:justify;">Nhờ tính bám dính chắc chắn giữa kính và film PVB, nhờ tính dẻo dai, co giãn củ fil PVB mà LAMISAFE có được lực căng kháng lại các lực va đập trên bề mặt tốt hơn các loại kính thông thường cùng độ dày và chống lại sự xuyên thủng qua nó. Khi vỡ các mãnh kính dính vào lớp film PVB đồng thời tấm kính vẩn được giữ nguyên trong khung, nên không gây nguy hại cho con người và tài sản như những kính thường khi bị vỡ.</p>\n<p style="text-align:justify;"><strong>2. Tính cách âm .</strong></p>\n<p style="text-align:justify;">Nhờ đặc tính mềm dẻo của các lớp film PVB xen kẻ nhau, tạo ra một hiệu ứng cản tiếng ồn hiệu quả. Do đó, LAMISAFE có khả năng giảm thiểu đáng kể việc truyền âm không mong đợi.</p>\n<p style="text-align:justify;"><strong>3. Tính cản tia tử ngoại , và tiết kiệm năng lượng</strong></p>\n<p style="text-align:justify;">Film PVB có khả năng hạn chế tối đa các tia cực tím (UV) truyền qua nó, do đó khi sử dụng LAMISAFE sẽ giảm thiểu được các tác hại do tia cực tím gây ra như hư hại vải vóc, các tác phẩm nghệ thuật và các tác hại khác.</p>\n<p style="text-align:justify;"><strong>4. Tính bảo vệ :</strong></p>\n<p style="text-align:justify;">Khác với các loại kính khác, đối với kính ghép an toàn nhiều lớp, chúng ta có thể tạo ra các loại sản phẩm kính có khả năng chống kẻ trộm đột nhập, chống đạn hay chất nổ .v.v...mà không làm cản trở sự truyền ánh sáng và tầm nhìn.</p>\n<p style="text-align:justify;">LAMISAFE được sử dụng hầu hết cho các dạng công trình như: cao ốc văn phòng,Ngân hàng, công trình công cộng, trường học, bệnh viện, siêu thị, trung tâm thể thao, nhà ở, .v.v...dùng làm Tường kính, mặt dựng, vách ngăn, mái lấy sáng, mái đón, lan can ban công, lan can cầu thang, buồng tắm đứng, của kính, cửa sổ ô tô, tàu hỏa, tàu thủy, bàn, tủ, đồ dùng trang trí nội thất....</p>\n<p style="text-align:center;"><img src="/public/userfiles/image/thaisonglass/image/2lop.gif" alt="" width="318" height="220" /></p>\n<p style="text-align:justify;"><strong>B. CÁC ĐẶC ĐIỂM VỀ VẬN HÀNH, TÍNH NĂNG HOẠT ĐỘNG, QUY TRÌNH CÔNG NGHỆ.</strong></p>\n<p style="text-align:justify;"><strong>1. Bước 1:</strong> Kính tấm nguyên khổ sẽ được đưa qua thiết bị rửa và sấy khô để xử lý sạch hai bề mặt kính. Những tấm kính sau khi qua hệ thống rửa bằng nước tinh khiết được đưa qua hệ thống sấy khô tự động và sẽ được chuyển qua buồng ghép kính sau khi đã xử lý sạch hai bề mặt kính.</p>\n<p style="text-align:justify;"><strong>2. Bước 2:</strong> Tấm kính thứ nhất được đưa lên bàn định vị sau đó tấm Film PVB được phủ lên bề mặt kính và được cắt bằng kích thước của tấm kính.</p>\n<p style="text-align:justify;"><strong>3. Bước 3:</strong> Tấm kính thứ hai sau khi thực hiệ như ở Bước 1 và Bước 2 sẽ được đưa vào các bàn định vị và được úp lên tấm thứ nhất vừa được phủ Film PVB ở Bước 2 để hai tấm kính được kết dính tạm thời với nhau.</p>\n<p style="text-align:justify;"><strong>4. Bước 4:</strong> Các tấm kính được ghép ở Bước 3 sẽ được đưa qua hệ thống ép tự động bằng các trục rulô để ép hai tấm kính dính lại với nhau và sẽ được hấp lần 01 ở nhiệt độ 1400C nhằm giúp các tấm kính dính chặt với nhau hơn và sẽ được chuyển sang vị trí kệ chờ gia nhiệt.</p>\n<p style="text-align:justify;"><strong>5. Bước 5:</strong> Các kệ đựng kính sẽ được đưa vào hệ thống nén và gia nhiệt ở nhiệt độ 1500C trong thời gian khoảng 3 giờ tùy thuộc vào độ dày các tấm kính, sau khi đạt tới nhiệt độ quy định thì được làm nguội bằng không khí một cách đồng đều và kính sẽ được đưa ra khỏi hệ thống nén và gia nhiệt.</p>\n<p style="text-align:justify;"><strong>6. Bước 6:</strong> Sản phẩm kính hoàn chỉnh qua 05 công đoạn trên sẽ được tiến hành kiểm tra lại nghiêm ngặt trước khi nhập kho thành phẩm. Những sản phẩm không đạt yêu cầu kỹ thuật sẽ bị loại bỏ.</p>\n<p style="text-align:justify;">Sau khi hoàn thành 6 bước trên, ta có được sản phẩm kính ghép hoàn thiện.</p>\n<p style="text-align:justify;">* Trong trường hợp ghép những tấm kính cấu thành có độ dày khác nhau, thì lấy qui cách lớn nhất của tấm kính mỏng nhất làm chuẩn.</p>\n<p style="text-align:justify;"><strong>C. CÁC LOẠI KÍNH DÁN AN TOÀN.</strong></p>\n<p style="text-align:justify;">1. Kính dán an toàn: Các loại kính có thể ghép lại với nhau: Kính thông thường, kính màu, kính phản quang, kính hấp thụ nhiệt, kính toả nhiệt, kính hoa văn, kính in men, kính phun mờ.</p>\n<p style="text-align:justify;">+ Kính dán an toàn hấp thụ nhiệt –Heat absorbing Lamisafe</p>\n<p style="text-align:justify;">+ Kính dán an toàn tỏa nhiệt –Heat reflecting Lamisafe</p>\n<p style="text-align:justify;">+ Kính dán an toàn (Chống cháy, chống trộm, chống đạn )Wired Lamisafe</p>\n<p style="text-align:justify;">+ Kính dán an toàn cường lực – Tempered Lamisafe</p>', '', 'kinh-dan-an-toan-2-hoac-nhieu-lop', '', '', '', 0, 102, '', 0, 0, '', '', '', '', 1, 1939),
(11276, 'Kính Cong Cừơng Lực', '', '2012-09-20 06:33:10', 'kinh-cong-cuong-luc-thumb.jpg', 'kinh-cong-cuong-luc.jpg', '', '', '', '<p style="text-align:justify;">Kính an toàn cường lực TEMPERSAFE® của Cty Cổ Phần Kính Thuận Thành được sản xuất theo phương pháp gia cường dao động ngang trên dây chuyền công nghệ hiện đại theo tiêu chuẩn châu âu. Kính nổi chất lượng cao được gia nhiệt đến điểm biến dạng (khoảng 6500C) và sau đó nhanh chóng làm nguội bằng luồng khí lạnh thổi lên bề mặt tấm kính một cách đồng đều và chính xác để làm đông cứng các ứng suất nén trên bề mặt kính. Qui trình này không làm thay đổi tính năng truyền sáng và tỏa nhiệt của kính nhưng nó làm tăng sức chịu nén bề mặt lên đến hơn 10.000psi (trong khi kính nổi thông thường chỉ chịu được dưới 3.500psi). Áp suất của gió, sự va đập của vật thể lạ và những ứng suất nhiệt được tạo nên từ những yếu tố khác phải lớn hơn sức nén này thì kính cường lực mới có thể bị vỡ.</p>\n<p style="text-align:justify;">Toàn bộ quy trình gia cường vận hành tự động theo chương trình đã được thiết lập bởi các chuyên gia hàng đầu trong lĩnh vực tôi kính. Chất lượng sản phẩm được kiểm tra nghiêm ngặt theo phương pháp thử va đập thường xuyên theo định kỳ dựa trên tiêu chuẩn ANSI Z97.1: 1984 của Mỹ. Chính vì vậy mà chất lượng của TEMPERSAFE® luôn ổn định và đạt các tiêu chuẩn chất lượng quốc tế: BS 6206: 1981 của Anh, ANSI Z97.1: 1984 của Mỹ.</p>\n<p style="text-align:center;"><img src="/public/userfiles/image/thaisonglass/image/anhni%20(1).jpg" alt="" width="425" height="334" /></p>\n<p style="text-align:justify;"><strong>QUY TRÌNH SẢN XUẤT KÍNH AN TOÀN CƯỜNG LỰC</strong></p>\n<p style="text-align:justify;"><strong>Bước 1</strong> Kính tấm nguyên khổ được đưa qua máy cắt để cắt theo quy cách đơn đặt hàng. Sau khi đã cắt theo yêu cầu, kính sẽ được đưa qua bộ phận mài, khoan, khoét theo yêu cầu của khách hàng, sau đó kính được chuyển qua thiết bị rửa và sấy khô để xử lý sạch bề mặt</p>\n<p style="text-align:justify;"><strong>Bước 2</strong> Kính sẽ được kiểm tra kỹ xem đã đạt yêu cầu trước khi đưa vào lò cường lực (Bước này rất quan trọng vì sau khi cường lực xong thì kính sẽ không gia công được nữa, nếu sai phải đập bỏ)</p>\n<p style="text-align:justify;"><strong>Bước 3</strong> Kính được chuyển sang vị trí chờ cường lực và in logo kính an toàn cường lực bằng sơn men TEMPERSAFE® (logo sơn men này sẽ bám rất chắc vào kính sau khi cường lực).</p>\n<p style="text-align:justify;"><strong>Bước 4</strong> Kính được đưa vào lò tôi kính để gia nhiệt đến điểm biến dạng và sau đó được nhanh chóng đưa ra khỏi lò và làm nguội bằng luồng khí lạnh một cách đồng đều và chính xác để đông cứng các ứng suất nén trên bề mặt kính và đồng thời giữ nguyên chất lượng kính.</p>\n<p style="text-align:justify;"><strong>Bước 5</strong> Kính thành phẩm được lấy ra khỏi dây chuyền và chuyển sang bộ phận kiểm tra xuất xưởng</p>\n<p style="text-align:justify;"><strong>ĐẶC TÍNH VÀ ỨNG DỤNG</strong></p>\n<p style="text-align:justify;"><em><strong>1. Khả năng chịu lực cao</strong> </em>: Về mặt cơ học, TEMPERSAFE® có tính chịu lực tác động lên bề mặt rất cao, gấp 4 đến 5 lần so với kính nổi thông thường cùng loại và cùng độ dày nhờ các ứng suất nén trên bề mặt tạo ra khi tôi kính, giúp cho kính TEMPESAFE® chịu được rung chấn, sức gió lớn và va đập mạnh.</p>\n<p style="text-align:justify;"><strong><em>2. Khả năng chịu sốc nhiệt</em> </strong>: TEMPERSAFE®có tính chịu sốc nhiệt( sự thay đổi nhiệt độ đột ngột) rất cao, có thể chịu được sự thay đổi nhiệt độ đến 1500C mà không bị vỡ. Trong khi kính nổi thông thường sẽ bị vỡ khi có sự thay đổi nhiệt độ đột ngột không quá 500C.</p>\n<p style="text-align:justify;"><em><strong>3. Độ an toàn cao</strong></em> : TEMPERSAFE® rất khó vỡ, nhưng khi vỡ thì vỡ dưới dạng những hạt nhỏ rời, cạnh không bén, vô hại và vì vậy sẽ không gây tổn thương. Trong khi kính thường khi vỡ sẽ tạo thành những mãnh nhọn, bén như dao, có tính sát thương rất lớn. Ngoài ra kính TEMPERSAFE® còn tạo ra khả năng thoát hiểm cho con người trong các toà nhà khi xảy ra hoả hoạn. Vì vậy rõ ràng là quá trình tôi cường lực là thực sự cần thiết để đảm bảo độ an toàn cũng như đặc tính cơ học của kính kiến trúc và kính trang trí nội thất.</p>\n<p style="text-align:justify;"><strong><em>4. Ứng dụng</em></strong> : TEMPERSAFE® là sự lựa chọn hoàn hảo cho các công trình xây dựng và trang trí nội thất, đặc biệt là những nơi cần có độ an toàn và tính chịu lực cơ học cao nó được sử dụng hầu hết cho các dạng công trình như: Cao ốc văn phòng, công trình công cộng, trường học, bệnh viện, siêu thị, trung tâm thể thao, nhà ở. Dùng làm tường kính ở các trung tâm thương mại, vách ngăn, lan can ban công, lan can cầu thang, buồng tắm đứng, cửa kính, cửa hông ô tô, tàu hỏa, tàu thủy, bàn, tủ, đồ dùng trang trí nội thất v.v...</p>\n<p style="text-align:justify;"><strong>CHẤT LƯỢNG SẢN PHẨM</strong></p>\n<p style="text-align:justify;">Kính an toàn cường lực TEMPERSAFE®sản xuất theo tiêu chuẩn Quốc tế</p>\n<p style="text-align:justify;">+ANSI Z97.1 của Mỹ.</p>\n<p style="text-align:justify;">+ BS 6206 của Anh.</p>', '', 'kinh-cong-cuong-luc', '', '', '', 0, 4, '', 0, 0, '', '', '', '', 1, 1939),
(11277, 'Kính an toàn cường lực phẳng', '', '2012-09-20 06:36:58', 'kinh-an-toan-cuong-luc-phang-thumb.jpg', 'kinh-an-toan-cuong-luc-phang.jpg', '', '', '', '<p style="text-align:justify;">Kính an toàn cường lực TEMPERSAFE® của Cty Cổ Phần Kính Thuận Thành được sản xuất theo phương pháp gia cường dao động ngang trên dây chuyền công nghệ hiện đại theo tiêu chuẩn châu âu. Kính nổi chất lượng cao được gia nhiệt đến điểm biến dạng (khoảng 6500C) và sau đó nhanh chóng làm nguội bằng luồng khí lạnh thổi lên bề mặt tấm kính một cách đồng đều và chính xác để làm đông cứng các ứng suất nén trên bề mặt kính.</p>\n<p style="text-align:justify;">Qui trình này không làm thay đổi tính năng truyền sáng và tỏa nhiệt của kính nhưng nó làm tăng sức chịu nén bề mặt lên đến hơn 10.000psi (trong khi kính nổi thông thường chỉ chịu được dưới 3.500psi). Áp suất của gió, sự va đập của vật thể lạ và những ứng suất nhiệt được tạo nên từ những yếu tố khác phải lớn hơn sức nén này thì kính cường lực mới có thể bị vỡ.</p>\n<p style="text-align:justify;">Toàn bộ quy trình gia cường vận hành tự động theo chương trình đã được thiết lập bởi các chuyên gia hàng đầu trong lĩnh vực tôi kính. Chất lượng sản phẩm được kiểm tra nghiêm ngặt theo phương pháp thử va đập thường xuyên theo định kỳ dựa trên tiêu chuẩn ANSI Z97.1: 1984 của Mỹ. Chính vì vậy mà chất lượng của TEMPERSAFE® luôn ổn định và đạt các tiêu chuẩn chất lượng quốc tế: BS 6206: 1981 của Anh, ANSI Z97.1: 1984 của Mỹ.</p>\n<p style="text-align:center;"><img src="/public/userfiles/image/thaisonglass/image/13.jpg" alt="" width="400" height="400" /></p>\n<p style="text-align:justify;"><strong>QUY TRÌNH SẢN XUẤT KÍNH AN TOÀN CƯỜNG LỰC</strong></p>\n<p style="text-align:justify;"><strong>Bước 1</strong> Kính tấm nguyên khổ được đưa qua máy cắt để cắt theo quy cách đơn đặt hàng. Sau khi đã cắt theo yêu cầu, kính sẽ được đưa qua bộ phận mài, khoan, khoét theo yêu cầu của khách hàng, sau đó kính được chuyển qua thiết bị rửa và sấy khô để xử lý sạch bề mặt</p>\n<p style="text-align:justify;"><strong>Bước 2</strong> Kính sẽ được kiểm tra kỹ xem đã đạt yêu cầu trước khi đưa vào lò cường lực (Bước này rất quan trọng vì sau khi cường lực xong thì kính sẽ không gia công được nữa, nếu sai phải đập bỏ)</p>\n<p style="text-align:justify;"><strong>Bước 3</strong> Kính được chuyển sang vị trí chờ cường lực và in logo kính an toàn cường lực bằng sơn men TEMPERSAFE® (logo sơn men này sẽ bám rất chắc vào kính sau khi cường lực).</p>\n<p style="text-align:justify;"><strong>Bước 4</strong> Kính được đưa vào lò tôi kính để gia nhiệt đến điểm biến dạng và sau đó được nhanh chóng đưa ra khỏi lò và làm nguội bằng luồng khí lạnh một cách đồng đều và chính xác để đông cứng các ứng suất nén trên bề mặt kính và đồng thời giữ nguyên chất lượng kính.</p>\n<p style="text-align:justify;"><strong>Bước 5</strong> Kính thành phẩm được lấy ra khỏi dây chuyền và chuyển sang bộ phận kiểm tra xuất xưởng</p>\n<p style="text-align:justify;"><strong>ĐẶC TÍNH VÀ ỨNG DỤNG</strong></p>\n<p style="text-align:justify;"><em><strong>1. Khả năng chịu lực cao</strong> </em>: Về mặt cơ học, TEMPERSAFE® có tính chịu lực tác động lên bề mặt rất cao, gấp 4 đến 5 lần so với kính nổi thông thường cùng loại và cùng độ dày nhờ các ứng suất nén trên bề mặt tạo ra khi tôi kính, giúp cho kính TEMPESAFE® chịu được rung chấn, sức gió lớn và va đập mạnh.</p>\n<p style="text-align:justify;"><em><strong>2. Khả năng chịu sốc nhiệt</strong> </em>: TEMPERSAFE®có tính chịu sốc nhiệt( sự thay đổi nhiệt độ đột ngột) rất cao, có thể chịu được sự thay đổi nhiệt độ đến 1500C mà không bị vỡ. Trong khi kính nổi thông thường sẽ bị vỡ khi có sự thay đổi nhiệt độ đột ngột không quá 500C.</p>\n<p style="text-align:justify;"><em><strong>3. Độ an toàn cao</strong></em> : TEMPERSAFE® rất khó vỡ, nhưng khi vỡ thì vỡ dưới dạng những hạt nhỏ rời, cạnh không bén, vô hại và vì vậy sẽ không gây tổn thương. Trong khi kính thường khi vỡ sẽ tạo thành những mãnh nhọn, bén như dao, có tính sát thương rất lớn. Ngoài ra kính TEMPERSAFE® còn tạo ra khả năng thoát hiểm cho con người trong các toà nhà khi xảy ra hoả hoạn. Vì vậy rõ ràng là quá trình tôi cường lực là thực sự cần thiết để đảm bảo độ an toàn cũng như đặc tính cơ học của kính kiến trúc và kính trang trí nội thất.</p>\n<p style="text-align:justify;"><strong><em>4. Ứng dụng :</em></strong> TEMPERSAFE® là sự lựa chọn hoàn hảo cho các công trình xây dựng và trang trí nội thất, đặc biệt là những nơi cần có độ an toàn và tính chịu lực cơ học cao nó được sử dụng hầu hết cho các dạng công trình như: Cao ốc văn phòng, công trình công cộng, trường học, bệnh viện, siêu thị, trung tâm thể thao, nhà ở. Dùng làm tường kính ở các trung tâm thương mại, vách ngăn, lan can ban công, lan can cầu thang, buồng tắm đứng, cửa kính, cửa hông ô tô, tàu hỏa, tàu thủy, bàn, tủ, đồ dùng trang trí nội thất v.v...</p>\n<p style="text-align:justify;"><strong>CHẤT LƯỢNG SẢN PHẨM</strong></p>\n<p style="text-align:justify;">Kính an toàn cường lực TEMPERSAFE® sản xuất theo tiêu chuẩn Quốc tế</p>\n<p style="text-align:justify;">+ANSI Z97.1 của Mỹ.</p>\n<p style="text-align:justify;">+ BS 6206 của Anh.</p>\n<p style="text-align:justify;"> </p>', '', 'kinh-an-toan-cuong-luc-phang', '', '', '', 0, 104, '', 0, 0, '', '', '', '', 1, 1939);

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
) ENGINE=InnoDB  DEFAULT CHARSET=utf8 AUTO_INCREMENT=1942 ;

--
-- Dumping data for table `dos_module_products_cat`
--

INSERT INTO `dos_module_products_cat` (`cat_id`, `cat_parent_id`, `cat_title`, `cat_titleen`, `preview`, `previewen`, `tag`, `tagen`, `description`, `descriptionen`, `pic_full`, `pic_desc`, `cat_order`, `cat_extra1`, `cat_extra2`, `cat_enable`, `dos_usernames_username`) VALUES
(1746, 425, 'Tủ ti vi', '', '', '', 'tu-ti-vi', '', 'Tủ ti vi', '', 'tu-ti-vi.jpg', '', 11, '', '', 1, 'thaisonglass'),
(1747, 1771, 'Sơn EXPO', '', '', '', 'son-expo', '', 'son expo, son tuong', '', 'son-expo.jpg', '', 30, '', '', 1, 'thaisonglass'),
(1749, 0, 'Sơn DONASA', '', '', '', 'son-donasa', '', '', '', 'son-donasa.jpg', '', 16, '', '', 1, 'thaisonglass'),
(1750, 0, 'Sơn DULUX', '', '', '', 'son-dulux', '', '', '', 'son-dulux.jpg', '', 13, '', '', 1, 'thaisonglass'),
(1751, 1749, 'Sơn hệ nước', '', '', '', 'son-he-nuoc', '', '', '', 'son-he-nuoc.jpg', '', 38, '', '', 1, 'thaisonglass'),
(1752, 1749, 'Bột trét tường', '', '', '', 'bot-tret-tuong', '', '', '', 'bot-tret-tuong.jpg', '', 16, '', '', 1, 'thaisonglass'),
(1753, 1749, 'Sơn hệ dung môi', '', '', '', 'son-he-dung-moi', '', '', '', 'son-he-dung-moi.jpg', '', 18, '', '', 1, 'thaisonglass'),
(1754, 1749, 'Sơn cách nhiệt', '', '', '', 'son-cach-nhiet', '', '', '', 'son-cach-nhiet.jpg', '', 19, '', '', 1, 'thaisonglass'),
(1755, 1747, 'Nội thất - Sơn phủ', '', '', '', 'noi-that-son-phu', '', '', '', 'son-nuoc-noi-that.jpg', '', 23, '', '', 1, 'thaisonglass'),
(1756, 1747, 'Ngoại thất - Bột trét', '', '', '', 'ngoai-that-bot-tret', '', '', '', 'ngoai-that-bot-tret.jpg', '', 22, '', '', 1, 'thaisonglass'),
(1757, 1747, 'Ngoại thất - Sơn lót', '', '', '', 'ngoai-that-son-lot', '', '', '', 'ngoai-that-son-lot.jpg', '', 21, '', '', 1, 'thaisonglass'),
(1758, 1747, 'Nội thất - Sơn lót', '', '', '', 'noi-that-son-lot', '', '', '', 'son-dau.jpg', '', 24, '', '', 1, 'thaisonglass'),
(1759, 1747, 'Nội thất - Bột trét', '', '', '', 'noi-that-bot-tret', '', '', '', 'bot-tret.jpg', '', 31, '', '', 1, 'thaisonglass'),
(1760, 1750, 'Sơn trong nhà', '', '', '', 'son-trong-nha', '', '', '', 'son-trong-nha.jpg', '', 28, '', '', 1, 'thaisonglass'),
(1761, 1750, 'Sơn ngoài nhà', '', '', '', 'son-ngoai-nha', '', '', '', 'son-ngoai-nha.jpg', '', 27, '', '', 1, 'thaisonglass'),
(1762, 1750, 'Sơn dầu Dulux', '', '', '', 'son-da', '', '', '', 'son-dau-dulux.jpg', '', 39, '', '', 1, 'thaisonglass'),
(1763, 1750, 'Bột trét ngoài nhà', '', '', '', 'bot-tret-ngoai-nha', '', '', '', 'son-lot-bot-tret-chat-chong-tham-ngoai-nha.jpg', '', 25, '', '', 1, 'thaisonglass'),
(1771, 0, 'Sơn 4 Oranges', '', '', '', 'son-4-oranges', '', '', '', 'son-4-oranges.jpg', '', 29, '', '', 1, 'thaisonglass'),
(1857, 1771, 'Sơn Mycolor', '', '', '', 'son-mycolor', '', '', '', 'son-mycolor.jpg', '', 13, '', '', 1, 'thaisonglass'),
(1858, 1747, 'Ngoại thất - Sơn phủ', '', '', '', 'ngoai-that-son-phu', '', '', '', 'ngoai-that-son-phu.jpg', '', 20, '', '', 1, 'thaisonglass'),
(1894, 1857, 'Ngoại thất - Bột trét.', '', '', '', 'ngoai-that-bot-tret-', '', '', '', 'ngoai-that-bot-tret-.jpg', '', 32, '', '', 1, 'thaisonglass'),
(1895, 1857, 'Nội thất - Bột trét.', '', '', '', 'noi-that-bot-tret-', '', '', '', 'noi-that-bot-tret-.jpg', '', 35, '', '', 1, 'thaisonglass'),
(1896, 1857, 'Nội thất - Sơn lót.', '', '', '', 'noi-that-son-lot-', '', '', '', 'noi-that-son-lot-.jpg', '', 36, '', '', 1, 'thaisonglass'),
(1897, 1857, 'Nội thất - Sơn phủ.', '', '', '', 'noi-that-son-phu-', '', '', '', 'noi-that-son-phu-.jpg', '', 37, '', '', 1, 'thaisonglass'),
(1898, 1857, 'Ngoại thất - Sơn lót.', '', '', '', 'ngoai-that-son-lot-', '', '', '', 'ngoai-that-son-lot-.jpg', '', 33, '', '', 1, 'thaisonglass'),
(1899, 1857, 'Ngoại thất - Sơn phủ.', '', '', '', 'ngoai-that-son-phu-', '', '', '', 'ngoai-that-son-phu-.jpg', '', 34, '', '', 1, 'thaisonglass'),
(1900, 1749, 'Sơn lót.', '', '', '', 'son-lot-', '', '', '', 'son-lot-.jpg', '', 17, '', '', 1, 'thaisonglass'),
(1937, 1750, 'Bột trét trong nhà', '', '', '', 'bot-tret-trong-nha', '', '', '', 'bot-tret-trong-nha.jpg', '', 26, '', '', 1, 'thaisonglass'),
(1938, 0, 'Máy Năng Lượng', '', '', '', 'may-nang-luong', '', '', '', 'may-nang-luong.jpg', '', 30, '', '', 1, 'thaisonglass'),
(1939, 0, 'Kính', '', '', '', 'kinh', '', '', '', 'kinh.jpg', '', 41, '', '', 1, 'thaisonglass'),
(1941, 0, 'Nhôm', '', '', '', 'nhom', '', '', '', 'nhom.jpg', '', 42, '', '', 1, 'thaisonglass');

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
('keywords', 'THAISONGLASS chuyên cung cấp các vật liệu xây dựng: Nhôm, Kính, Sơn và phụ kiện các loại.Hơn 15 năm trong nghề,nơi tin cậy của người dân,đại lý phân phối và các nhà thầu xây dựng', 'thaisonglass'),
('description', 'THAISONGLASS chuyên cung cấp các vật liệu xây dựng: Nhôm, Kính, Sơn và phụ kiện các loại.Hơn 15 năm trong nghề,nơi tin cậy của người dân,đại lý phân phối và các nhà thầu xây dựng', 'thaisonglass'),
('title', 'THAISONGLASS - Thaisonglass.com.vn', 'thaisonglass');

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
('010312', 'Mẫu than đá: 010312', '2012-02-29 10:38:05', 'Chuyên bán các loại than đá, than cám');

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
('010312', 'bds-kien-truc-xay-dung');

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
('010312', 'about', 'advs_right'),
('010312', 'about', 'list_supports'),
('010312', 'about', 'menu_about'),
('010312', 'about', 'products_hot'),
('010312', 'contact', 'advs_left'),
('010312', 'contact', 'advs_right'),
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
('010312', 'news', 'advs_right'),
('010312', 'news', 'menu_news'),
('010312', 'news', 'news_hot'),
('010312', 'news', 'news_new'),
('010312', 'news', 'video_hot'),
('010312', 'products', 'advs_left'),
('010312', 'products', 'advs_right'),
('010312', 'products', 'list_supports'),
('010312', 'products', 'menu_products'),
('010312', 'products', 'products_hot'),
('010312', 'services', 'advs_left'),
('010312', 'services', 'advs_right'),
('010312', 'services', 'list_supports'),
('010312', 'services', 'menu_services'),
('010312', 'services', 'news_new'),
('010312', 'services', 'products_hot'),
('010312', 'video', 'advs_left'),
('010312', 'video', 'advs_right'),
('010312', 'video', 'list_supports'),
('010312', 'video', 'menu_video'),
('010312', 'video', 'news_new');

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
('thaisonglass', 'info@thaisonglass.com.vn', 'e10adc3949ba59abbe56e057f20f883e', '2012-09-10 00:15:49', '', '0913130011', '', 'user', 'vi', '', '2012-12-08 16:00:00', 0, '87522003', '', 1, '010312', 19, 'bds-kien-truc-xay-dung');

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
('address1', 'Địa chỉ: 2/27B KP.6, Đ. Đồng Khởi, P.Tam Hiệp , Tp.Biên Hoà , T.Đồng Nai', '', 'thaisonglass'),
('address2', '(061) 3818 617 - 3181 745 - Fax: (061) 912 657', '', 'thaisonglass'),
('company_name', '', '', 'thaisonglass'),
('company_name_footer', 'CÔNG TY TNHH TM – DV THÁI SƠN', '', 'thaisonglass'),
('company_phone', '', '', 'thaisonglass'),
('copyright', 'Email: thaisonglass@gmail.com', '', 'thaisonglass');

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
