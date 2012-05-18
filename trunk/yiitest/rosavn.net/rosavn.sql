-- phpMyAdmin SQL Dump
-- version 3.4.5
-- http://www.phpmyadmin.net
--
-- Host: localhost
-- Generation Time: May 18, 2012 at 10:00 AM
-- Server version: 5.5.16
-- PHP Version: 5.3.8

SET SQL_MODE="NO_AUTO_VALUE_ON_ZERO";
SET time_zone = "+00:00";


/*!40101 SET @OLD_CHARACTER_SET_CLIENT=@@CHARACTER_SET_CLIENT */;
/*!40101 SET @OLD_CHARACTER_SET_RESULTS=@@CHARACTER_SET_RESULTS */;
/*!40101 SET @OLD_COLLATION_CONNECTION=@@COLLATION_CONNECTION */;
/*!40101 SET NAMES utf8 */;

--
-- Database: `rosavn`
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
('advs_left_height', 300, '', 'rosavn'),
('advs_left_width', 200, '', 'rosavn'),
('advs_right_height', 300, '', 'rosavn'),
('advs_right_width', 224, '', 'rosavn'),
('banner_height', 266, '', 'rosavn'),
('banner_width', 473, '', 'rosavn'),
('logo_height', 97, '', 'rosavn'),
('logo_width', 107, '', 'rosavn'),
('max_image_height', 753, '', 'rosavn'),
('max_image_width', 565, '', 'rosavn'),
('news_cat_height', 83, '', 'rosavn'),
('news_cat_width', 125, '', 'rosavn'),
('news_height_thumb', 83, '', 'rosavn'),
('news_num_paging_cat', 10, '', 'rosavn'),
('news_num_paging_hot', 6, '', 'rosavn'),
('news_num_paging_index', 10, '', 'rosavn'),
('news_num_paging_new', 6, '', 'rosavn'),
('news_width_thumb', 125, '', 'rosavn'),
('products_cat_height', 125, '', 'rosavn'),
('products_cat_width', 128, '', 'rosavn'),
('products_height', 753, '', 'rosavn'),
('products_height_thumb', 125, '', 'rosavn'),
('products_num_paging_cat', 16, '', 'rosavn'),
('products_num_paging_hot', 12, '', 'rosavn'),
('products_num_paging_new', 20, '', 'rosavn'),
('products_num_paging_other', 4, '', 'rosavn'),
('products_width', 565, '', 'rosavn'),
('products_width_thumb', 128, '', 'rosavn'),
('video_height_thumb', 135, '', 'rosavn'),
('video_num_paging_cat', 8, '', 'rosavn'),
('video_num_paging_index', 8, '', 'rosavn'),
('video_width_thumb', 135, '', 'rosavn');

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
('rosavn', 'default', 'simplyscroll.verticall.css|prettyPhoto.css', 'css'),
('rosavn', 'default', 'jquery.simplyscroll.vertical.js|verticall-config.js|jquery.prettyPhoto.js', 'javascript'),
('rosavn', 'products', 'jquery.lightbox-0.5.css', 'css'),
('rosavn', 'products', 'jquery.lightbox-0.5.js', 'javascript'),
('rosavn', 'video', 'prettyPhoto.css', 'css'),
('rosavn', 'video', 'jquery.prettyPhoto.js', 'javascript');

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
('about', 'tinhungphat'),
('advs', 'tinhungphat'),
('banner', 'tinhungphat'),
('contact', 'tinhungphat'),
('news', 'tinhungphat'),
('products', 'tinhungphat'),
('services', 'tinhungphat'),
('supports', 'tinhungphat'),
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
) ENGINE=InnoDB  DEFAULT CHARSET=utf8 AUTO_INCREMENT=110 ;

--
-- Dumping data for table `dos_module_abouts`
--

INSERT INTO `dos_module_abouts` (`record_id`, `title`, `titleen`, `content`, `contenten`, `hit`, `created`, `record_order`, `hot`, `extra_field1`, `extra_field2`, `tag`, `tagen`, `description`, `descriptionen`, `activated`, `dos_usernames_username`) VALUES
(108, 'Giới thiệu công ty', '', '<p style="text-align:justify;"><span style="text-decoration:underline;"><span style="font-size:12pt;">Tin HưngPhát(THP) </span></span>chuyên cung cấp sản phẩm, dich vụ về các mặt hàng: Máy PC, Máy văn phòng, Laptop, Máy In,Máy Chấm<br />Công, Camera quan sát,báo trộm cháy...... Nay Tin Hưng Phát chúng tôi trân trọng gửi đến Quý khách hàng thư ngỏ này với<br />mong muốn Quý Khách hàng có thêm sự lựa chọn và chúng tôi có thêm khách hàng thân thiết mới.<br />» Các sản phẩm của THP :<br />- Mặt hàng chủ lực của THP chúng tôi là: máy bộ <strong>PC, Laptop, Netbook, Macbook, Camera quan sát, Chuông cửa, khóa điện tử</strong><br />-<strong> Linh Kiện PC, Máy VP</strong>: Main, Ram , CPU, DVD, Case, Power, VGA, LCD … Thiết bị ngoại vi : HDD External, Webcam,<br />speaker,<br />headphone, USB, USB 3G, mp3, mp4, ….<br />- <strong>Software</strong> : phần mềm diệt virus (Kaspersky, BKis, Panda, Norton, Avira...), phần mềm chấm công, camera...<br />-<strong> Linh Kiện Laptop</strong>: HDD, Ram, LCD, DVD, tản nhiệt, …..<br />-<strong> Printer</strong>: Máy In HP,Canon, Samsung, Brother, Epson, OKI ...,Mực In HP Chính Hãng, Mực sạc HP, Canon, Samsung, Epson,<br />Brother, OKI...<br />-<strong> Máy chấm công</strong> vân tay, cảm ứng với chức năng và ưu điểm phù hợp với các doanh nghiệp vừa và nhỏ tích hợp chấm công<br />chính xác. Có thể quản lý dễ dàng từ 50 cho tới 5000 nv. Thẻ chấm công Logo công ty,tên nhân viên, hình nhân viên....<br />-<strong> Hệ thống báo trộm không dây</strong> Báo trộm tại chổ và từ xa thông báo qua điện thoại.Báo động có Trộm tại vùng kiểm soát, bộ<br />kiểm soát trung tâm sẽ kích hoạt hệ thống còi hụ còi. Kiểm Soát Trung Tâm kiểm soát được 1 vùng, 16 đầu dò.<br />- <strong>Camera quan sát</strong> với cự ly rộng hình ảnh rõ nét, tên miền cố định, dữ liệu tập trung ......<br />-<strong> Thiết kế Website</strong>, update dữ liệu, bảo trì...... cho các doanh ngiệp vừa và nhỏ<br />» Dịch vụ bảo trì PC, printer, camera, laptop.. đa dạng, hỗ trợ kỹ thuật miễn phí trong thời gian bảo trì, đưa ra giải pháp tốt<br />nhất cho máy tính của bạn.<br />&gt;&gt;Hỗ trợ kĩ thuật nhanh nhất đáp ứng kịp thời và hiệu quả những nhu cầu của khách hàng<br />&gt;&gt;Thời gian và hình thức thanh toán linh hoạt, với phương châm: ”Mang sản phẩm và dịch vụ tốt nhất tới tận tay khách hàng<br />là niềm vui và hạnh phúc của chúng tôi” . Đặc biệt giá cả hoàn hảo nhất có tính cạnh tranh cao trên thị trường.<br />&gt;&gt;Với đội ngũ nhân viên trẻ, giàu tri thức và nhiệt huyết, không ngừng sáng tạo cam kết sẽ mang đến cho quý khách hàng<br />những dịch vụ với chất lượng hoàn hảo.<br />&gt;&gt;Mục tiêu chúng tôi &gt; "Luôn luôn sáng tạo hướng tới thành công"</p>', '', 92, '2012-05-14 03:12:04', 1, 0, '', '', 'gioi-thieu-cong-ty', '', 'CÔNG TY TNHH TIN HỌC -VIỄN THÔNG TIN HƯNG PHÁT\nCHUYÊN CUNG CẤP LINH KIỆN MÁY TÍNH - MÁY VĂN PHÒNG - CAMERA QUAN SÁT', '', 1, 'tinhungphat'),
(109, 'Welcom to Rosa website', '', '<p>"Rosa - theo tiếng Ý, nghĩa là hoa hồng. Tuy là kinh doanh, nhưng là kinh doanh lĩnh vực rất truyền thống: ẩm thực &amp; thẩm mỹ.<br />Và không chỉ là kinh doanh, mà còn hướng đến những hoạt động mang tính nhân văn và cộng đồng nhằm giúp cho cuộc sống đẹp hơn, ý nghĩa hơn. Vì thế mới rất đằm thắm: hoa hồng".</p>\r\n<p> </p>', '', 151, '2012-05-18 01:43:26', 2, 1, NULL, NULL, 'welcom-to-rosa-website', '', '"Rosa - theo tiếng Ý, nghĩa là hoa hồng. Tuy là kinh doanh, nhưng là kinh doanh lĩnh vực rất truyền thống: ẩm thực &amp; thẩm mỹ.', '', 1, 'tinhungphat');

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
) ENGINE=InnoDB  DEFAULT CHARSET=utf8 AUTO_INCREMENT=98 ;

--
-- Dumping data for table `dos_module_advs`
--

INSERT INTO `dos_module_advs` (`record_id`, `title`, `titleen`, `pic_thumb`, `url`, `create_date`, `start_date`, `end_date`, `hits`, `record_order`, `position`, `type`, `enable`, `dos_usernames_username`) VALUES
(94, 'Quảng cáo', '', 'quang-cao.jpg', 'http://tinhungphat.dos.vn/', '2012-05-16 03:10:30', '2012-05-15 17:00:00', '2012-06-29 17:00:00', 0, 1, 'right', '_bank', 1, 'tinhungphat'),
(95, 'Camera Trọn Gói', '', 'camera-tron-goi.jpeg', 'http://tinhungphat.dos.vn/san-pham/camera-tron-goi/8-camera-tron-goi.html', '2012-05-16 03:20:33', '2012-05-15 17:00:00', '2012-06-29 17:00:00', 0, 2, 'right', '_bank', 1, 'tinhungphat'),
(96, 'Quảng cáo 1', '', 'quang-cao-1.gif', 'http://tinhungphat.vn', '2012-05-16 06:41:56', '2012-05-15 16:00:00', '2012-06-29 16:00:00', 0, 3, 'left', '_bank', 1, 'tinhungphat'),
(97, 'Học ẩm thực online', NULL, 'hoc-am-thuc-online.gif', 'http://rosavn.net/vi/news/tin-tuc/hoc-nghe-am-thuc-online/900', '2012-05-18 07:53:18', '2012-05-17 16:00:00', '2012-05-30 16:00:00', 0, 4, 'left', '_bank', 1, 'tinhungphat');

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
) ENGINE=InnoDB  DEFAULT CHARSET=utf8 AUTO_INCREMENT=506 ;

--
-- Dumping data for table `dos_module_banners`
--

INSERT INTO `dos_module_banners` (`banner_id`, `banner_date`, `banner_name`, `banner_url`, `banner_link`, `banner_order`, `banner_type`, `position`, `enable`, `dos_usernames_username`) VALUES
(474, '2012-05-15 07:33:32', 'Banner 5', 'banner-5.jpg', 'http://tinhungphat.vn', 1, 'banners', 'default', 1, 'tinhungphat'),
(475, '2012-05-15 07:33:41', 'Banner 4', '4.jpg', 'http://tinhungphat.vn', 2, 'banners', 'default', 1, 'tinhungphat'),
(476, '2012-05-15 07:33:55', 'Banner 3', 'banner-3.jpg', 'http://tinhungphat.vn', 3, 'banners', 'default', 1, 'tinhungphat'),
(477, '2012-05-15 07:40:09', 'Banner 2', 'banner-2.jpg', 'http://tinhungphat.vn', 4, 'banners', 'default', 1, 'tinhungphat'),
(484, '2012-05-15 08:02:01', 'Banner 1', 'banner-1.jpg', 'http://tinhungphat.vn', 5, 'banners', 'video', 1, 'tinhungphat'),
(491, '2012-05-15 09:01:28', 'Logo', 'logo.png', 'http://tinhungphat.vn', 6, 'logo', 'default', 1, 'tinhungphat'),
(492, '2012-05-16 07:10:30', 'Banner 6', 'banner-6.jpg', '', 7, 'banners', 'contact', 1, 'tinhungphat'),
(493, '2012-05-16 07:11:16', 'Banner 7', 'banner-7.jpg', '', 8, 'banners', 'products', 1, 'tinhungphat'),
(494, '2012-05-16 07:11:49', 'Banner 8', 'banner-8.jpg', '', 9, 'banners', 'services', 1, 'tinhungphat'),
(495, '2012-05-16 07:13:28', 'Banner 9', 'banner-9.jpg', '', 10, 'banners', 'about', 1, 'tinhungphat'),
(496, '2012-05-16 07:14:11', 'Banner 10', 'banner-10.jpg', '', 11, 'banners', 'products', 1, 'tinhungphat'),
(497, '2012-05-16 07:14:50', 'Banner 11', 'banner-11.jpg', '', 12, 'banners', 'products', 1, 'tinhungphat'),
(498, '2012-05-16 07:15:36', 'Banner 12', 'banner-12.jpg', '', 13, 'banners', 'products', 1, 'tinhungphat'),
(499, '2012-05-16 07:15:54', 'Banner 13', 'banner-13.jpg', '', 14, 'banners', 'products', 1, 'tinhungphat'),
(500, '2012-05-16 07:16:54', 'Banner 14', 'banner-14.jpg', '', 15, 'banners', 'services', 1, 'tinhungphat'),
(501, '2012-05-16 07:18:39', 'Banner 15', 'banner-15.jpg', '', 16, 'banners', 'products', 1, 'tinhungphat'),
(502, '2012-05-16 07:19:31', 'Banner 16', 'banner-16.jpg', '', 17, 'banners', 'about', 1, 'tinhungphat'),
(503, '2012-05-16 07:20:06', 'Banner 17', 'banner-17.jpg', '', 18, 'banners', 'news', 1, 'tinhungphat'),
(504, '2012-05-16 07:21:54', 'Banner 18', 'banner-18.jpg', '', 19, 'banners', 'news', 1, 'tinhungphat'),
(505, '2012-05-16 07:23:39', 'Banner 19', 'banner-19.jpg', '', 20, 'banners', 'products', 1, 'tinhungphat');

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
) ENGINE=InnoDB  DEFAULT CHARSET=utf8 AUTO_INCREMENT=7 ;

--
-- Dumping data for table `dos_module_contacts`
--

INSERT INTO `dos_module_contacts` (`record_id`, `title`, `titleen`, `content`, `contenten`, `create_date`, `record_order`, `hit`, `hot`, `tag`, `tagen`, `description`, `descriptionen`, `enable`, `dos_usernames_username`) VALUES
(6, 'Liên hệ với chúng tôi', '', '<p style="text-align:justify;"><span style="font-size:medium;color:#808080;">Công ty TNHH Tư vấn &amp; Đào tạo nghiệp vụ Ẩm Thực &amp; Thẩm Mỹ Rosa</span></p>\r\n<p style="text-align:justify;"><span style="font-size:medium;color:#808080;"><span style="font-size:small;">Số 46 (34/1A và 34/2A cũ) đường Võ Thị Sáu, phường Quyết Thắng, thành phố Biên Hòa, tỉnh Đồng Nai (Đối diện Báo Đồng Nai)</span><br /><span style="font-size:small;">Điện thoại: 061.88.20.369 – 0907.3456.15 - Fax: 061.88.20.389</span><br /><span style="font-size:small;">Email: congtyrosa@gmail.com - website: www.rosavn.net</span></span></p>', '', '2012-05-16 09:01:45', 1, 0, 0, 'lien-he-voi-chung-toi', '', '', '', '1', 'tinhungphat');

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
('Trang chủ', '', 'default', '', 1, '', '', '', '', 'tinhungphat'),
('Giới thiệu', '', 'about', '', 2, '', '', '', '', 'tinhungphat'),
('Sản phẩm', '', 'products', '', 3, '', '', '', '', 'tinhungphat'),
('Dịch vụ', '', 'services', '', 4, '', '', '', '', 'tinhungphat'),
('Báo giá', '', 'news', '', 5, '', '', '', '', 'tinhungphat'),
('Video', '', 'video', '', 6, '', '', '', '', 'tinhungphat'),
('Liên hệ', '', 'contact', '', 7, '', '', '', '', 'tinhungphat');

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
) ENGINE=InnoDB  DEFAULT CHARSET=utf8 AUTO_INCREMENT=3 ;

--
-- Dumping data for table `dos_module_news`
--

INSERT INTO `dos_module_news` (`record_id`, `title`, `titleen`, `postdate`, `pic_thumb`, `preview`, `previewen`, `content`, `contenten`, `tag`, `tagen`, `description`, `descriptionen`, `hits`, `record_order`, `hot`, `extra_field1`, `extra_field2`, `enable`, `dos_module_item_cat_cat_id`) VALUES
(1, 'ẾCH CHIÊN NƯỚC MẮM', '', '2012-05-18 02:01:38', 'ch-chin-nc-mm.jpg', '<p>Từ lâu, dân gian đã đánh giá thịt ếch thơm và ngon như thịt gà ta. Không chỉ...</p>\r\n<p>Từ lâu, dân gian đã đánh giá thịt ếch thơm và ngon như thịt gà ta. Không chỉ...</p>', '', '<p>Nguyên liệu:</p>\r\n<p>- Ếch: 3 con</p>\r\n<p>- Hành tây</p>\r\n<p>- Hành lá</p>\r\n<p>- Ớt sừng</p>\r\n<p>- Tỏi băm: 1 muỗng</p>\r\n<p>- Dầu ăn: 1 muỗng</p>\r\n<p>- Nước mắm: 2/3 muỗng</p>\r\n<p>- Tương ớt: 1 muỗng</p>\r\n<p>- Đường: ½ muỗng</p>\r\n<p>- Bột ngọt: ½ muỗng</p>\r\n<p>Thực hiện:</p>\r\n<p>- Hành tây cắt múi</p>\r\n<p>- Ếch lột da, chặt khúc vứa ăn</p>\r\n<p>- Hành lá cắt khúc</p>\r\n<p>- Làm nước sốt: cho ½ muỗng đường, ½ muỗng bột ngọt, 2/3 muỗng nước, tương ớt và nước dùng . Khuấy đều hỗn hợp lên.</p>\r\n<p>- Cho ếch vào chảo dầu chiên đến khi da giòn.</p>\r\n<p>- Bắt chảo, đợi nóng cho tỏi vào phi, cho nước sốt, hành tây, đầu hành lá và ớt vào đảo sơ lên tiếp đến cho hành tây và ếch vào xào đều lên.</p>\r\n<p>- Cho ra đĩa, dùng kèm với nước sốt.</p>', '', 'ech-chien-nuoc-mam', '', 'Từ lâu, dân gian đã đánh giá thịt ếch thơm và ngon như thịt gà ta. Không chỉ...', '', 0, 1, 1, NULL, NULL, 1, 1),
(2, 'Khai giảng lớp Pha chế biểu diễn (Showmanship) WORKING', '', '2012-05-18 06:16:24', 'khai-giang-lop-pha-che-bieu-dien-showmanshipworking.jpg', '<p>Nhằm Trang bị cho Học viên những kỹ năng biểu diễn trong 1 quầy Bar.</p>', '', '<p>Nhằm Trang bị cho Học viên những kỹ năng biểu diễn trong 1 quầy Bar.</p>\r\n<p>Ngày khai giảng: 24//04/2012(Vui lòng đăng ký giữ chỗ trước ngày khai giảng)</p>\r\n<p>Thời gian đào tạo: 12 buổi</p>\r\n<p>Thời gian học: Sáng 3 – 5 – 7 từ 8h – 20 h</p>\r\n<p>Học phí: 1.000.000 vnđ</p>\r\n<p>Chương Trình:</p>\r\n<ol><li>Kỹ năng sử dụng Shaker</li>\r\n<li>Xoay shaker</li>\r\n<li>Lăn shaker trên tay</li>\r\n<li>Kỹ thuật sử dụng Mixing Glass</li>\r\n<li>Kỹ thuật sử dụng Mixing glass</li>\r\n<li>Kết hợp với shaker</li>\r\n<li>Kỹ thuật sử dụng Chai</li>\r\n<li>Kỹ thuật sử dụng chai</li>\r\n<li>Kết hợp với shaker</li>\r\n<li>Thực hành biểu diễn</li>\r\n<li>Ôn tập</li>\r\n<li>Kiểm tra cuối khóa</li>\r\n</ol>', '', 'khai-giang-lop-pha-che-bieu-dien-showmanship-working', '', 'Nhằm Trang bị cho Học viên những kỹ năng biểu diễn trong 1 quầy Bar.', '', 0, 2, 1, NULL, NULL, 1, 1);

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
) ENGINE=InnoDB  DEFAULT CHARSET=utf8 AUTO_INCREMENT=2 ;

--
-- Dumping data for table `dos_module_news_cat`
--

INSERT INTO `dos_module_news_cat` (`cat_id`, `cat_parent_id`, `cat_title`, `cat_titleen`, `preview`, `previewen`, `tag`, `tagen`, `description`, `descriptionen`, `pic_full`, `cat_order`, `cat_extra1`, `cat_extra2`, `cat_enable`, `dos_usernames_username`) VALUES
(1, 0, 'Ẩm thực &amp; Thẩm mỹ', '', NULL, NULL, 'am-thuc-tham-my', '', 'Ẩm thực &amp; Thẩm mỹ', '', '', 1, NULL, NULL, 1, 'tinhungphat');

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
('day_time', 2456066),
('max_count', 1),
('counter', 1),
('yesterday', 1);

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
('''127.0.0.1''', 1337328013);

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
) ENGINE=InnoDB  DEFAULT CHARSET=utf8 AUTO_INCREMENT=1063 ;

--
-- Dumping data for table `dos_module_products`
--

INSERT INTO `dos_module_products` (`record_id`, `title`, `titleen`, `postdate`, `pic_thumb`, `pic_full`, `pic_desc`, `preview`, `previewen`, `content`, `contenten`, `tag`, `tagen`, `description`, `descriptionen`, `hits`, `record_order`, `unit`, `hot`, `specials`, `extra_field1`, `extra_field2`, `extra_field3`, `extra_field4`, `enable`, `dos_module_item_cat_cat_id`) VALUES
(1044, 'Camera JTech 342', '', '2012-05-15 06:39:57', 'camera-jtech-342-thumb.png', 'camera-jtech-342.jpg', '', '<p>Giá: Liên hệ</p>\n<p>Thuế: Giá trên chua có VAT</p>\n<p>Trạng thái: Có hàng</p>\n<p>Model: JT-872</p>\n<p>Hãng sản xuất: J-TECH</p>\n<p>B?o hành 24 tháng</p>\n<p>Ðánh giá: Chưa có</p>', '', '<p>Camera J-TECH JT-342</p>\n<p>Chip Sony 1/3 CCD</p>\n<p>Trang bị 12 đèn hồng ngọai loại lớn Φ5mm cho phép quan sát hảnh rõ nét trong điều kiện không ánh sáng.</p>\n<p>Độ phân giải 420 TV Lines cho hình ảnh rõ đẹp.</p>\n<p>Kích thước : đường kính Φ63mm, dài 102mm.</p>', '', 'camera-jtech-342', '', '', '', 0, 1, '850.000', 0, 0, '', '', '', '', 1, 284),
(1045, 'Camera J-TECH JT-742 Serial', '', '2012-05-15 06:59:29', 'camera-j-tech-jt-742-serial-thumb.jpg', 'camera-j-tech-jt-742-serial.jpg', '', '<p>Giá: Liên hệ</p>\n<p>Thuế: Giá trên chưa có VAT</p>\n<p>Trạng thái: Có hàng</p>\n<p>Model: JT-742</p>\n<p>Hãng sản xuất: J-TECH</p>\n<p>Bảo hành 24 tháng</p>\n<p>Đánh giá: Chưa có</p>', '', '<p>Camera J-TECH JT-742 ( 450TVL ) 770.000</p>\n<p>Camera J-TECH JT-742i ( 500TVL ) 950.000</p>\n<p>Camera J-TECH JT-742HD ( 600TVL, OSD, WDR ) 1.120.000</p>\n<p>Chip Sony 1/3" CCD.</p>\n<p>Sử dụng công nghệ Dual-Len giúp tăng cự ly quan sát</p>\n<p>Cân chỉnh độ sáng, màu, lấy nét bằng menu (742HD)</p>\n<p>Hổ trợ chống ngược sáng tốt (742HD)</p>\n<p>Tự động cân bằng ánh sáng trắng giúp hình ảnh thu được không bị hiện tượng chóa.</p>\n<p>Trang bị 42 đèn hồng ngọai loại lớn Φ5mm cho phép quan sát hình ảnh rõ nét trong điều kiện không ánh sáng.</p>\n<p>Độ phân giải cao 450/500/600 TV Line . Cho hình ảnh rõ đẹpích thước : đường kính Φ80mm, dài 132mm.</p>', '', 'camera-j-tech-jt-742-serial', '', '', '', 0, 2, '1.050.000', 0, 0, '', '', '', '', 1, 284),
(1053, '8 Camera Trọn Gói', '', '2012-05-16 03:17:12', '8-camera-tron-goi-thumb.jpg', '8-camera-tron-goi.jpg', '', '<p>Cho phép giám sát tại chổ bằng Tivi hoặc máy vi tính (mạng nội bộ ).<br />Cho phép giám sát từ xa thông qua đường truyền internet bằng máy vi tính, điện thoại di động, điện thoại thông minh, máy tính bảng.<br />Trang bị 24 đèn hồng ngoại cho phép quan sát trong điều kiện không ánh sáng.</p>', '', '<p>Giá sock</p>', '', '8-camera-tron-goi', '', 'Giá sock', '', 0, 3, '15700000', 0, 0, '', '', '', '', 1, 294),
(1054, 'Camera J-TECH JT-872', '', '2012-05-16 07:13:23', 'camera-j-tech-jt-872-thumb.jpg', 'camera-j-tech-jt-872.jpg', '', '<p>Giá: Liên hệ</p>\n<p>Thuế: Giá trên chưa có VAT</p>\n<p>Trạng thái: Có hàng</p>\n<p>Model: JT-872</p>\n<p>Hãng sản xuất: J-TECH</p>\n<p>Bảo hành 12 tháng</p>\n<p>Đánh giá: Chưa có</p>\n<p> </p>', '', '<p>. Chip Sony 1/3 Super HAD CCD</p>\n<p>. Sử dụng công nghệ Dual- Glasses giúp tăng cự ly quan sát</p>\n<p>. Trang bị công nghệ tiên tiến Tự Động Lấy Nét Hình Ảnh giúp tăng độ nét của hình ảnh thu được ( rất ít camera trên thị trường được trang bị tính năng tiên tiến này)</p>\n<p>. Tự động cân bằng ánh sáng trắng giúp hình ảnh thu được không bị hiện tượng chóa</p>\n<p>. Trang bị 72 đèn hồng ngoại loại lớn f5mm cho phép quan sát hình ảnh rõ nét ở cự ly xa trong điều kiện không ánh sáng</p>\n<p>. Độ phân giải cao 480 TV Line cho hình ảnh đẹp</p>\n<p>. Kích thước: đường kính f 90mm, dài 157mm</p>', '', 'camera-j-tech-jt-872', '', 'may bo dam, tong dai dien thoai, camera giam sat', '', 0, 4, '1.670.000', 0, 0, '', '', '', '', 1, 284),
(1055, 'Camera J-TECH JT-D0650', '', '2012-05-16 07:13:25', 'camera-j-tech-jt-d0650-thumb.jpg', 'camera-j-tech-jt-d0650.jpg', '', '<p>Giá: Liên hệ</p>\n<p>Thuế: Giá trên chưa có VAT</p>\n<p>Trạng thái: Có hàng</p>\n<p>Model: JT-D0650</p>\n<p>Hãng sản xuất: J-TECH</p>\n<p>Bảo hành 24 tháng</p>\n<p>Đánh giá: Chưa có</p>', '', '<p>Camera J-TECH JT-D0650 ( 500TVL )</p>\n<p>Camera J-TECH JT-D650i ( 560TVL )</p>\n<p>Camera J-TECH JT-D650HD ( 650TVL, OSD, WDR )</p>\n<p>Chip Sony 1/3 Super HAD CCD ( Japan )</p>\n<p>Cho phép cân chỉnh độ sáng, màu, lấy nét bằng menu.</p>\n<p>Hổ trợ chống ngược sáng tốt.</p>\n<p>42 đèn hồng ngoại Φ5mm cho hình ảnh rõ đẹp khi ghi hình trong điều kiện không ánh sáng</p>\n<p>Độ phân giải cực cao 500/560/650 TV Lines cho hình ảnh có màu sắc trung thực, rõ nét.</p>\n<p>Độ nhạy sáng 0Lux ( hồng ngoại ).</p>\n<p>Kích thước : đường kính Φ 94mm.</p>', '', 'camera-j-tech-jt-d0650', '', 'Thích Hợp Trang Trí', '', 0, 5, '1.250.000 ', 0, 0, '', '', '', '', 1, 293),
(1056, 'Hệ thống báo trộm không dây GUARDSMAN GS-3500', '', '2012-05-16 07:52:20', 'he-thong-bao-trom-khong-day-guardsman-gs-3500-thumb.jpg', 'he-thong-bao-trom-khong-day-guardsman-gs-3500.jpg', '', '<p>Thuế: Giá trên chua có VAT</p>\n<p>Trạng thái: Có hàng</p>\n<p>Model: GUARDSMAN GS-3500</p>\n<p>Hãng sản xuất: J-TECH</p>\n<p>Bảo hành 12 tháng</p>\n<p>Ðánh giá: Chua có</p>', '', '<p>Hệ thống báo trộm không dây GUARDSMAN GS-3500 là Model cao cấp</p>\n<p>Hổ trợ sử dụng SIM điện thoại di động để thực hiện cuộc gọi khẩn cấp và gởi tin nhắn khi hệ thống bị kích hoạt báo động.</p>\n<p>Hổ trợ 3 băng tần 900 / 1800 / 1900MHz</p>\n<p>Khi có trộm đột nhập vào vùng kiểm soát, bộ Kiểm Soát Trung Tâm sẽ kích hoạt hụ còi tất cả các còi có trong hệ thống, đồng thời thực hiện cuộc gọi và gởi 05 tin nhắn SMS đến 05 số điện thoại cùng lúc của Chủ Nhà để thống báo có trộm.</p>\n<p>Kiểm soát được 6 vùng, 28 thiết bị như báo trộm, báo cháy, báo rò rĩ Gas</p>\n<p>Điều khiển Tắt / Mở các thiết bị điện .</p>\n<p>Trọn bộ bao gồm : 01 Bộ kiểm soát trung tâm, 01 đầu dò GS-161,01 bộ kiểm soát mở cửa gs-112, 1 còi và 02 điều khiển từ xa .</p>', '', 'he-thong-bao-trom-khong-day-guardsman-gs-3500', '', 'GUARDSMAN GS-3500', '', 0, 6, '3.000.000', 0, 0, '', '', '', '', 1, 297),
(1057, 'Hệ thống báo trộm không dây GUARDSMAN GS-5000', '', '2012-05-16 07:54:12', 'he-thong-bao-trom-khong-day-guardsman-gs-5000-thumb.jpg', 'he-thong-bao-trom-khong-day-guardsman-gs-5000.jpg', '', '<p>Thuế: Giá trên chưa có VAT</p>\n<p>Trạng thái: Có hàng</p>\n<p>Model: GUARDSMAN GS-5000</p>\n<p>Hãng sản xuất: J-TECH</p>\n<p>Bảo hành 12 tháng</p>', '', '<p>- Báo trộm tại chổ và từ xa thông báo qua điện thoại. Khi có Trộm<br />tại vùng kiểm soát, bộ kiểm soát trung tâm sẽ hiển thị số của vùng<br />có Trộm đồng thời kích hoạt hệ thống còi hụ còi.<br />- Hổ trợ điều khiển từ xa bằng điện di động hoặc bằng bộ điều khiển từ xa.<br />- Kiểm soát tối đa được 32 vùng không dây và 17 vùng có dây.<br />- Tổng số đầu dò cho phép kết nối với thiết bị lên đến 170 đầu dò.<br />- Kết nối được các đầu dò báo Trộm , khói, dò Gas, còi, …<br />- Mất điện vẫn họat động ( bằng nguồn dự phòng có sẵn )<br />- Trọn bộ bao gồm : 01 Bộ kiểm soát trung tâm, 01 đầu dò GS-161,<br />01 bộ kiểm soát mở cửa gs-112, 1 còi và 02 điều khiển từ xa .</p>', '', 'he-thong-bao-trom-khong-day-guardsman-gs-5000', '', '', '', 0, 7, '1.860.000', 0, 0, '', '', '', '', 1, 297),
(1058, 'METRON K-400 THẺ CẢM ỨNG', '', '2012-05-16 08:01:03', 'metron-k-400-th-cm-ng-thumb.jpg', 'metron-k-400-th-cm-ng.jpg', '', '<p>Thuế: Giá trên chua có VAT</p>\n<p>Trạng thái: Có hàng</p>\n<p>Model: K-400</p>\n<p>Hãng sản xuất: Metron</p>\n<p>Bảo hành 12 tháng</p>', '', '<p>Máy chấm công cảm ứng K-400<br />Tính năng:<br />- Tích hợp nhiều dấu vân tay &amp; thẻ cảm ứng<br />- Công suất chứa 2.200 dấu vân tay &amp; Thẻ cảm ứng &amp;Password - Sử dụng Chip xử lý Intel của Mỹ<br />- Tốc độ xử lý nhanh &lt;1s/1lần chấm công.<br />- Dung lượng bộ nhớ lưu trữ 80.000 lần chấm công<br />- Phát ra giọng nói bằng ngôn ngữ: Tiếng Anh &amp; Tiếng Việt<br />- Password bảo vệ máy, hẹn giờ tắt, mở máy, chuông báo giờ<br />- Kết nối với máy vi tính qua cổng RS – 232/485, TCP/IP, USB flash disk.<br />- Pin bộ nhớ lưu trữ dữ liệu khi mất điện.<br />- Hiển thị tên người sử dụng khi chấm công.</p>\n<p>Ưu điểm:<br />+ Không sử dụng thẻ  tiết kiệm chi phí đầu tư<br />+ Bảo mật cao: Không chấm công dùm được<br />+ Phần mềm quản lý tên nhân viên, số vân tay, giờ công chi tiết &amp; tổng hợp… được xuất ra file Excel để tính lương…</p>', '', 'metron-k-400-the-cam-ung', '', '', '', 0, 8, '5.200.000', 0, 0, '', '', '', '', 1, 296),
(1059, 'RONALD JACK U-160C', '', '2012-05-16 08:07:47', 'ronald-jack-u-160c-thumb.jpg', 'ronald-jack-u-160c.jpg', '', '<p>Thuế: Giá trên chua có VAT</p>\n<p>Trạng thái: Có hàng</p>\n<p>Model: RONALD JACK U-160C</p>\n<p>Hãng sản xuất: RONALD JACK</p>\n<p>Bảo hành 12 tháng</p>', '', '<p>Máy chấm công vân tay + thẻ cảm ứng RONALD JACK U-160C</p>\n<p>Tính năng:<br />- Màn hình màu . Tích hợp nhiều dấu vân tay &amp; thẻ cảm ứng<br />- Công suất chứa 3.000 dấu vân tay &amp; Thẻ cảm ứng &amp;Password - Sử dụng Chip xử lý Intel của Mỹ<br />- Tốc độ xử lý nhanh &lt;1s/1lần chấm công.<br />- Ñaàu ñoïc vaân tay theá heä môùi chống trầy xước,chống mài mòn<br />- Dung lượng bộ nhớ lưu trữ 100.000 lần chấm công<br />- Phát ra giọng nói bằng ngôn ngữ: Tiếng Anh &amp; Tiếng Việt<br />- Password bảo vệ máy, hẹn giờ tắt, mở máy, chuông báo giờ<br />- Kết nối với máy vi tính qua cổng RS – 232/485, TCP/IP, USB flash disk.<br />- Pin bộ nhớ lưu trữ dữ liệu khi mất điện.<br />- Hiển thị tên người sử dụng khi chấm công.</p>\n<p>Ưu điểm:<br />+ Không sử dụng thẻ  tiết kiệm chi phí đầu tư<br />+ Bảo mật cao: Không chấm công dùm được<br />+ Phần mềm quản lý tên nhân viên, số vân tay, giờ công chi tiết &amp; tổng hợp…được xuất ra file Excel để tính lương</p>', '', 'ronald-jack-u-160c', '', 'RONALD JACK', '', 0, 9, '5.100.000', 0, 0, '', '', '', '', 1, 296),
(1060, 'BỘ 8 CAMERA TRỌN GÓI SUPER 280', '', '2012-05-16 08:40:56', 'b-8-camera-trn-gi-super-280-thumb.jpg', 'b-8-camera-trn-gi-super-280.jpg', '', '<p>Thuế: Giá trên chua có VAT</p>\n<p>Trạng thái: Có hàng</p>\n<p>Model: SUPER 280</p>\n<p>Hãng sản xuất: J-TECH</p>\n<p>Bảo hành 24 tháng</p>', '', '<p>Cho phép giám sát tại chổ bằng Tivi hoặc máy vi tính (mạng nội bộ ).<br />Cho phép giám sát từ xa thông qua đường truyền internet bằng máy vi tính, điện thoại di động, điện thoại thông minh, máy tính bảng.<br />Trang bị 24 đèn hồng ngoại cho phép quan sát trong điều kiện không ánh sáng.</p>', '', 'bo-8-camera-tron-goi-super-280', '', 'SUPER 280', '', 0, 10, '13.000.000', 0, 0, '', '', '', '', 1, 294),
(1061, 'CHUÔNG CỬA CÓ HÌNH J-TECH JT-0725', '', '2012-05-16 08:45:16', 'chung-ca-c-hnh-j-tech-jt-0725-thumb.jpg', 'chung-ca-c-hnh-j-tech-jt-0725.jpg', '', '<p>Thuế: Giá trên chua có VAT</p>\n<p>Trạng thái: Có hàng</p>\n<p>Model: JT-0725</p>\n<p>Hãng sản xuất: J-TECH</p>\n<p>Bảo hành 12 tháng</p>\n<p>Ðánh giá: Chua có</p>', '', '<p>CHUÔNG CỬA CÓ HÌNH J-TECH JT-0725<br />- Người nhà nhìn thấy và trao đổi với khách trước khi cho Khách vào<br />nhà giúp tránh được kẻ gian.<br />- Hổ trợ điều khiển khóa điện tử.<br />- Màn hình TFT LCD màu 7 inch.<br />- Thiết kế chống trộm, chống nước.<br />- Kết nối nhiều màn hình, camera cửa, khóa điện.</p>', '', 'chuong-cua-co-hinh-j-tech-jt-0725', '', 'JT-0725', '', 0, 11, '5.000.000', 0, 0, '', '', '', '', 1, 295),
(1062, '''CHUÔNG CỬA CÓ HÌNH J-TECH JT-0729', '', '2012-05-16 08:50:32', 'chung-ca-c-hnh-j-tech-jt-0729-thumb.png', 'chung-ca-c-hnh-j-tech-jt-0729.png', '', '<p>Thuế: Giá trên chua có VAT</p>\n<p>Trạng thái: Có hàng</p>\n<p>Model: JJT-0725</p>\n<p>Hãng sản xuất: J-TECH</p>\n<p>Bảo hành 12 tháng</p>\n<p>Ðánh giá: Chua có</p>', '', '<p>CHUÔNG CỬA CÓ HÌNH J-TECH JT-0729<br />- Người nhà nhìn thấy và trao đổi với khách trước khi cho Khách vào<br />nhà giúp tránh được kẻ gian.<br />- Hổ trợ điều khiển khóa điện tử.<br />- Màn hình TFT LCD màu 7 inch.<br />- Thiết kế chống trộm, chống nước.<br />- Kết nối nhiều màn hình, camera cửa, khóa điện.<br />- Tự động tắt nguồn giúp tiết kiệm điện.</p>', '', 'chuong-cua-co-hinh-j-tech-jt-0729', '', '', '', 0, 12, '5.200.000', 0, 0, '', '', '', '', 1, 295);

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
) ENGINE=InnoDB  DEFAULT CHARSET=utf8 AUTO_INCREMENT=298 ;

--
-- Dumping data for table `dos_module_products_cat`
--

INSERT INTO `dos_module_products_cat` (`cat_id`, `cat_parent_id`, `cat_title`, `cat_titleen`, `preview`, `previewen`, `tag`, `tagen`, `description`, `descriptionen`, `pic_full`, `pic_desc`, `cat_order`, `cat_extra1`, `cat_extra2`, `cat_enable`, `dos_usernames_username`) VALUES
(279, 0, 'Camera Quan Sát', '', '', '', 'camera-quan-sat', '', 'Camera', '', 'camera.jpg', '', 11, '', '', 1, 'tinhungphat'),
(280, 0, 'Linh Kiện PC', '', '', '', 'linh-kien-pc', '', 'Linh Kiện PC', '', 'linh-kien-pc.jpeg', '', 10, '', '', 1, 'tinhungphat'),
(281, 0, 'Máy In', '', '', '', 'may-in', '', 'Máy In', '', 'may-in.jpeg', '', 1, '', '', 1, 'tinhungphat'),
(282, 0, 'Laptop', '', '', '', 'laptop', '', 'Laptop', '', 'laptop.jpeg', '', 10, '', '', 1, 'tinhungphat'),
(283, 0, 'Mưc In', '', '', '', 'muc-in', '', 'Mưc In', '', 'muc-in.jpeg', '', 2, '', '', 1, 'tinhungphat'),
(284, 279, 'Camera Thân', '', '', '', 'camera-than', '', 'Camera Thân', '', 'camera-than.jpg', '', 6, '', '', 1, 'tinhungphat'),
(293, 279, 'Camera Dome', '', '', '', 'camera-dome', '', 'Camera Dome (bán cầu)', '', 'camera-dome-ban-cau.jpeg', '', 7, '', '', 1, 'tinhungphat'),
(294, 279, 'Camera Trọn Gói', '', '', '', 'camera-tron-goi', '', 'Camera Trọn Gói', '', 'camera-tron-goi.jpg', '', 8, '', '', 1, 'tinhungphat'),
(295, 0, 'Chuông Cửa Tự Động', '', '', '', 'chuong-cua-tu-dong', '', '', '', '', '', 9, '', '', 1, 'tinhungphat'),
(296, 0, 'Máy Chấm Công', '', '', '', 'may-cham-cong', '', '', '', '', '', 9, '', '', 1, 'tinhungphat'),
(297, 0, 'Hệ Thống Báo Trộm Không Dây', '', '', '', 'he-thong-bao-trom-khong-day', '', '', '', '', '', 10, '', '', 1, 'tinhungphat');

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
) ENGINE=InnoDB  DEFAULT CHARSET=utf8 AUTO_INCREMENT=2 ;

--
-- Dumping data for table `dos_module_services`
--

INSERT INTO `dos_module_services` (`record_id`, `title`, `titleen`, `preview`, `previewen`, `content`, `contenten`, `pic_full`, `hit`, `created`, `record_order`, `hot`, `extra_field1`, `extra_field2`, `tag`, `tagen`, `description`, `descriptionen`, `activated`, `dos_usernames_username`) VALUES
(1, 'Hỗ trợ học nghề 100 % cho bộ đội', '', NULL, NULL, '<p style="text-align:center;"><strong>LỜI NGỎ</strong><br /><strong>GỬI ANH EM QUÂN NHÂN XUẤT NGŨ</strong></p>\r\n<p style="text-align:left;">Công ty Rosa rất hân hạnh được gặp gỡ quý anh em.</p>\r\n<p>ROSA chuyên đào tạo và cung cấp các dịch vụ ẩm thực và thẩm mỹ, được Sở Lao Động Thương Binh - Xã Hội cấp phép hoạt động dạy nghề.</p>\r\n<p>Hàng năm, công ty đã liên tục đào tạo và cho ra trường nhiều học viên có tay nghề tốt được các nhà hàng, cơ sở kinh doanh ăn uống, dich vụ giải trí và doanh nghiệp nước ngoài,... đánh giá tốt. Có nhiều học viên ra trường tự thành lập cơ sở kinh doanh riêng thành công.</p>\r\n<p>Công ty đã và đang đào tạo nhiều nghề phù hợp với Bộ đội xuất ngũ như: Quản lý nhà hàng, Quản lý Bar-café, Đầu bếp chuyên nghiệp, Pha chế thức uống (Bartender); Tỉa rau củ - quả trang trí tiệc, Làm bánh kem, Cắt và thiết kế tóc .... đây là những nghề có nhiều triển vọng trong xã hội hiện đại. Học viên ra trường có nhiều cơ hội việc làm, thu nhập từ 1.500.000 đến 4.000.000 vnđ.Đặc biệt, thời gian học ngắn, dễ hiểu, thực hành thường xuyên.</p>\r\n<p>Đặt biệt:Giới thiệu công việc bán thời gian cho anh em chưa có việc làm (kiếm thêm thu nhập) trong thời gian học.Công ty hỗ trợ xin việc làm sau khi tốt nghiệp .</p>', '', '', 1, '2012-05-18 07:47:14', 1, 0, NULL, NULL, 'ho-tro-hoc-nghe-100-cho-bo-doi', '', 'Công ty Rosa rất hân hạnh được gặp gỡ quý anh em.\r\n\r\nROSA chuyên đào tạo và cung cấp các dịch vụ ẩm thực và thẩm mỹ, được Sở Lao Động Thương Binh - Xã Hội cấp phép hoạt động dạy nghề.', '', 1, 'tinhungphat');

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
) ENGINE=InnoDB  DEFAULT CHARSET=utf8 AUTO_INCREMENT=42 ;

--
-- Dumping data for table `dos_module_supports`
--

INSERT INTO `dos_module_supports` (`support_id`, `support_name`, `support_nameen`, `support_phone`, `support_value`, `support_order`, `support_type`, `dos_usernames_username`) VALUES
(38, 'Hỗ trợ khách hàng', '', '', 'groupitsoft', 4, 'yahoo', 'tinhungphat'),
(39, 'Trần Đức Huy', '', '0902516059', 'huy_hoang956', 3, 'yahoo', 'tinhungphat'),
(40, 'Nguyễn Duy Khang', '', '0909122558', 'nguyenkhang2819', 1, 'yahoo', 'tinhungphat'),
(41, 'Trần Đức Hưng', '', '0932025802', 'hungtran111087', 2, 'yahoo', 'tinhungphat');

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
(1, 'Giới thiệu về Rosa', '', '2012-05-18 02:53:52', 'gioi-thieu-ve-rosa', '', 'Giới thiệu về Rosa', '', 'gioi-thieu-ve-rosa.gif', 'http://www.youtube.com/watch?v=1vnHeNydPVc', 1, 0, NULL, NULL, 1, 1, 1);

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
) ENGINE=InnoDB  DEFAULT CHARSET=utf8 AUTO_INCREMENT=2 ;

--
-- Dumping data for table `dos_module_video_cat`
--

INSERT INTO `dos_module_video_cat` (`cat_id`, `cat_parent_id`, `pic_thumb`, `cat_title`, `cat_titleen`, `tag`, `tagen`, `description`, `descriptionen`, `cat_order`, `cat_enable`, `dos_usernames_username`) VALUES
(1, 0, '', 'Giới thiệu Rosa tháng 11/2011', '', 'gioi-thieu-rosa-thang-112011', '', 'Giới thiệu Rosa tháng 11/2011', '', 1, 1, 'tinhungphat');

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
('keywords', 'Liên hệ với Rosa - Công ty dạy nghề Ẩm Thực &amp; Thẩm mỹ Rosa - Biên Hòa - Đồng Nai dạy nghề nấu ăn - quản lý nhà hàng, pha chế thức uống - Bartender - quản lý bar caffe, làm bánh &amp; trang trí bánh kem, cắm kết hoa, trang điểm, săn sóc da, xăm th', 'tinhungphat'),
('description', 'Liên hệ với Rosa - Công ty dạy nghề Ẩm Thực &amp; Thẩm mỹ Rosa - Biên Hòa - Đồng Nai dạy nghề nấu ăn - quản lý nhà hàng, pha chế thức uống - Bartender - quản lý bar caffe, làm bánh &amp; trang trí bánh kem, cắm kết hoa, trang điểm, săn sóc da, xăm th', 'tinhungphat'),
('title', 'Công ty dạy nghề Ẩm Thực & Thẩm mỹ Rosa - Biên Hòa - Đồng Nai', 'tinhungphat');

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
('270412', 'Mẫu cơ khí: 270412', '2012-04-27 06:27:56', 'Chuyên bán các loại máy móc, thiết bị cơ khí, cửa sắt...'),
('rosavn', 'Mẫu website ẩm thực', '2012-05-17 23:33:54', 'Mẫu website công ty Rosa');

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
('rosavn', 'about', 'advs_left'),
('rosavn', 'about', 'advs_right'),
('rosavn', 'about', 'list_supports'),
('rosavn', 'about', 'menu_about'),
('rosavn', 'about', 'products_hot'),
('rosavn', 'contact', 'advs_left'),
('rosavn', 'contact', 'advs_right'),
('rosavn', 'contact', 'list_supports'),
('rosavn', 'contact', 'menu_products'),
('rosavn', 'contact', 'products_hot'),
('rosavn', 'default', 'about_home'),
('rosavn', 'default', 'advs_left'),
('rosavn', 'default', 'advs_right'),
('rosavn', 'default', 'list_supports'),
('rosavn', 'default', 'menu_services'),
('rosavn', 'default', 'news_hot'),
('rosavn', 'default', 'news_new'),
('rosavn', 'default', 'video_hot'),
('rosavn', 'news', 'advs_left'),
('rosavn', 'news', 'advs_right'),
('rosavn', 'news', 'list_supports'),
('rosavn', 'news', 'menu_news'),
('rosavn', 'news', 'news_hot'),
('rosavn', 'news', 'products_hot'),
('rosavn', 'products', 'advs_left'),
('rosavn', 'products', 'advs_right'),
('rosavn', 'products', 'list_supports'),
('rosavn', 'products', 'menu_products'),
('rosavn', 'products', 'news_hot'),
('rosavn', 'products', 'products_hot'),
('rosavn', 'services', 'advs_left'),
('rosavn', 'services', 'advs_right'),
('rosavn', 'services', 'list_supports'),
('rosavn', 'services', 'menu_services'),
('rosavn', 'services', 'products_hot'),
('rosavn', 'video', 'advs_left'),
('rosavn', 'video', 'advs_right'),
('rosavn', 'video', 'list_supports'),
('rosavn', 'video', 'menu_video'),
('rosavn', 'video', 'products_hot'),
('rosavn', 'video', 'video_hot');

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
('tinhungphat', 'tinhungphat@gmail.com', '8ddcff3a80f4189ca1c9d4d902c3c909', '2012-05-14 03:11:27', 'Tin Hưng Phát', '0613889245', 'Công ty TNHH tin học viễn thông Tin Hưng Phát', 'user', 'vi', '', '2012-06-12 17:00:00', 0, 1, 'rosavn', 19, 'cong-nghe-thong-tin-vien-thong');

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
('company_name', 'CÔNG TY TNHH TIN HỌC VIỄN THÔNG TIN HƯNG PHÁT', '', 'tinhungphat'),
('company_name_footer', 'CÔNG TY TNHH TIN HỌC VIỄN THÔNG TIN HƯNG PHÁT', '', 'tinhungphat'),
('company_phone', '', '', 'tinhungphat');

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
