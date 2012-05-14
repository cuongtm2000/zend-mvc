-- phpMyAdmin SQL Dump
-- version 3.4.5
-- http://www.phpmyadmin.net
--
-- Host: localhost
-- Generation Time: May 14, 2012 at 11:30 AM
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
('about', 'phumyan'),
('advs', 'phumyan'),
('banner', 'phumyan'),
('contact', 'phumyan'),
('news', 'phumyan'),
('products', 'phumyan'),
('services', 'phumyan'),
('supports', 'phumyan');

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
) ENGINE=InnoDB  DEFAULT CHARSET=utf8 AUTO_INCREMENT=103 ;

--
-- Dumping data for table `dos_module_abouts`
--

INSERT INTO `dos_module_abouts` (`record_id`, `title`, `titleen`, `content`, `contenten`, `hit`, `created`, `record_order`, `hot`, `extra_field1`, `extra_field2`, `tag`, `tagen`, `description`, `descriptionen`, `activated`, `dos_usernames_username`) VALUES
(101, 'Thư ngỏ', '', '<p style="text-align:justify;">       Trong đời sống hiện nay, nhu cầu sống trong những ngôi nhà đẹp, cao cấp với không gian tiện nghi đã không còn là những “ước mơ” khó thực hiện. Tất cả chúng ta đều tự hào vì cảnh quan của đất nước với hạ tầng cơ sở là những công trình kiến trúc hiện đại, những tòa nhà cao cấp hay những biệt thự với sân vườn, cây xanh, hoặc chỉ là những căn hộ nhỏ xinh cũng đã có những dấu ấn lớn của sự chăm chút của người chủ sở hữu. Trong những không gian đẹp, tiện nghi, hiện đại đó có sự góp phần không nhỏ công sức của kiến trúc sư, của các nhà thiết kế của lĩnh vực này.</p>\n<p style="text-align:justify;">       Theo đà sự phát triển không ngừng của xã hội và nền kinh tế, mong muốn có đời sống tốt hơn, nơi ăn chốn ở đẹp và tiện nghi, trang thiết bị cao cấp mang tới những tính năng tốt nhất với mục đích chăm sóc con người một cách hòan hảo... là điều mà tất cả chúng ta đều hướng tới.</p>\n<p style="text-align:justify;">       Công ty TNHH <strong>Phú Mỹ An</strong> đã ra đời trong sự phát triển chung của xã hội và sự phát triển riêng trong lĩnh vực Xây dựng kiến trúc nội thất.</p>\n<p style="text-align:justify;">       Mặc dù cùng dòng chảy phát triển của lĩnh vực ngành nghề chuyên biệt, nhưng Công ty TNHH <strong>Phú Mỹ An</strong> đã chọn một lối đi riêng, lối đi khác biệt để mang lại hiệu quả tuyệt đối với mức đầu tư, khẳng định niềm tin của khách hàng khi đã “chọn mặt gửi vàng”. Cung cấp cho khách hàng không chỉ những công trình lớn hiện đại, ngôi nhà đẹp... mà <strong>Phú Mỹ An</strong> còn chăm sóc tới những chi tiết nhỏ trong không gian sống của khách hàng với những thiết bị sản phẩm gia dụng, bếp, và các sản phẩm nội thất cao cấp khác như tủ, giường, bàn, ghế ... với mong muốn mang lại cho khách hàng một đời sống đầy tiện nghi để khi đến với <strong>Phú Mỹ An</strong>, khách hàng sẽ có được một ngôi nhà hòan hảo và đúng nghĩa!</p>', '', 18, '2012-05-08 07:58:39', 2, 0, '', '', 'thu-ngo', '', '', '', 1, 'phumyan'),
(102, 'Chào mừng bạn ghé thăm website của chúng tôi!', '', '<p style="text-align:justify;">Công ty TNHH <strong>Phú Mỹ An</strong> ra đời trong sự phát triển chung của xã hội và sự phát triển riêng trong lĩnh vực Xây dựng kiến trúc nội thất.</p>\n<p style="text-align:justify;">Mặc dù cùng dòng chảy phát triển của lĩnh vực ngành nghề chuyên biệt, nhưng Công ty TNHH <strong>Phú Mỹ An</strong> đã chọn một lối đi riêng, lối đi khác biệt để mang lại hiệu quả tuyệt đối với mức đầu tư, khẳng định niềm tin của khách hàng khi đã “chọn mặt gửi vàng”.</p>\n<p style="text-align:justify;">Cung cấp cho khách hàng không chỉ những công trình lớn hiện đại, ngôi nhà đẹp... mà <strong>Phú Mỹ An</strong> còn chăm sóc tới những chi tiết nhỏ trong không gian sống của khách hàng với những thiết bị sản phẩm gia dụng, bếp, và các sản phẩm nội thất cao cấp khác như tủ, giường, bàn, ghế ... với mong muốn mang lại cho khách hàng một đời sống đầy tiện nghi để khi đến với <strong>Phú Mỹ An</strong>, khách hàng sẽ có được một ngôi nhà hòan hảo và đúng nghĩa!</p>', '', 92, '2012-05-08 07:59:40', 1, 1, '', '', 'chao-mung-ban-ghe-tham-website-cua-chung-toi', '', '', '', 1, 'phumyan');

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
) ENGINE=InnoDB  DEFAULT CHARSET=utf8 AUTO_INCREMENT=87 ;

--
-- Dumping data for table `dos_module_advs`
--

INSERT INTO `dos_module_advs` (`record_id`, `title`, `titleen`, `pic_thumb`, `url`, `create_date`, `start_date`, `end_date`, `hits`, `record_order`, `position`, `type`, `enable`, `dos_usernames_username`) VALUES
(82, 'Quảng cáo', '', 'quang-cao.jpg', 'http://dos.vn', '2012-05-08 07:38:25', '2012-05-07 17:00:00', '2012-06-29 17:00:00', 0, 1, 'right', '_bank', 1, 'phumyan'),
(83, 'Quảng cáo 1', '', 'quang-cao-1.jpg', 'http://dos.vn', '2012-05-08 07:39:16', '2012-04-30 17:00:00', '2012-06-29 17:00:00', 0, 2, 'right', '_bank', 1, 'phumyan'),
(84, 'Quảng cáo 2', '', 'quang-cao-2.jpg', 'http://dos.vn', '2012-05-08 07:42:20', '2012-05-07 17:00:00', '2012-06-29 17:00:00', 0, 3, 'left', '_bank', 1, 'phumyan'),
(85, 'Quảng cáo 3', '', 'quang-cao-3.jpg', 'http://dos.vn', '2012-05-08 07:43:05', '2012-05-07 17:00:00', '2012-06-29 17:00:00', 0, 4, 'right', '_bank', 1, 'phumyan'),
(86, 'Quảng cáo 4', '', 'quang-cao-4.jpeg', 'http://dos.vn', '2012-05-08 07:45:32', '2012-05-07 17:00:00', '2012-06-29 17:00:00', 0, 5, 'right', '_bank', 1, 'phumyan');

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
) ENGINE=InnoDB  DEFAULT CHARSET=utf8 AUTO_INCREMENT=433 ;

--
-- Dumping data for table `dos_module_banners`
--

INSERT INTO `dos_module_banners` (`banner_id`, `banner_date`, `banner_name`, `banner_url`, `banner_link`, `banner_order`, `banner_type`, `position`, `enable`, `dos_usernames_username`) VALUES
(416, '2012-05-08 07:19:57', 'Logo', 'logo.png', '', 1, 'logo', 'default', 1, 'phumyan'),
(417, '2012-05-08 07:21:05', 'Banner', 'banner.jpg', '', 2, 'banners', 'default', 1, 'phumyan'),
(418, '2012-05-08 07:21:19', 'Banner 1', 'banner-1.jpg', '', 3, 'banners', 'default', 1, 'phumyan'),
(419, '2012-05-08 07:21:29', 'Banner 2', 'banner-2.jpg', '', 4, 'banners', 'default', 1, 'phumyan'),
(420, '2012-05-08 07:21:38', 'Banner 3', 'banner-3.jpg', '', 5, 'banners', 'default', 1, 'phumyan'),
(421, '2012-05-08 07:21:53', 'Banner 4', 'banner-4.jpg', '', 6, 'banners', 'about', 1, 'phumyan'),
(422, '2012-05-08 07:22:04', 'Banner 5', 'banner-5.jpg', '', 7, 'banners', 'about', 1, 'phumyan'),
(423, '2012-05-08 07:22:35', 'Banner 7', 'banner-7.jpg', '', 8, 'banners', 'contact', 1, 'phumyan'),
(424, '2012-05-08 07:22:51', 'Banner 8', 'banner-8.jpg', '', 9, 'banners', 'contact', 1, 'phumyan'),
(425, '2012-05-08 07:23:01', 'Banner 9', 'banner-9.jpg', '', 10, 'banners', 'products', 1, 'phumyan'),
(426, '2012-05-08 07:23:13', 'Banner 10', 'banner-10.jpg', '', 11, 'banners', 'products', 1, 'phumyan'),
(427, '2012-05-08 07:23:22', 'Banner 11', 'banner-11.jpg', '', 12, 'banners', 'default', 1, 'phumyan'),
(428, '2012-05-08 07:23:31', 'Banner 12', 'banner-12.jpg', '', 13, 'banners', 'default', 1, 'phumyan'),
(429, '2012-05-08 07:23:46', 'Banner 13', 'banner-13.jpg', '', 14, 'banners', 'news', 1, 'phumyan'),
(430, '2012-05-08 07:24:03', 'Banner 14', 'banner-14.jpg', '', 15, 'banners', 'services', 1, 'phumyan'),
(431, '2012-05-08 07:24:56', 'Banner 16', 'banner-16.jpg', '', 16, 'banners', 'services', 1, 'phumyan'),
(432, '2012-05-08 07:25:17', 'Banner15', 'banner15.jpg', '', 17, 'banners', 'news', 1, 'phumyan');

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
('Trang chủ', '', 'default', '', 1, '', '', '', '', 'phumyan'),
('Giới thiệu', '', 'about', '', 2, '', '', '', '', 'phumyan'),
('Sản phẩm', '', 'products', '', 3, '', '', '', '', 'phumyan'),
('Dịch vụ', '', 'services', '', 4, '', '', '', '', 'phumyan'),
('Tin tức & sự kiện', '', 'news', '', 5, '', '', '', '', 'phumyan'),
('Liên hệ', '', 'contact', '', 6, '', '', '', '', 'phumyan');

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
) ENGINE=InnoDB  DEFAULT CHARSET=utf8 AUTO_INCREMENT=90 ;

--
-- Dumping data for table `dos_module_news`
--

INSERT INTO `dos_module_news` (`record_id`, `title`, `titleen`, `postdate`, `pic_thumb`, `preview`, `previewen`, `content`, `contenten`, `tag`, `tagen`, `description`, `descriptionen`, `hits`, `record_order`, `hot`, `extra_field1`, `extra_field2`, `enable`, `dos_module_item_cat_cat_id`) VALUES
(87, 'Trang trí nội thất phòng khách hiện đại', '', '2012-05-08 08:06:30', 'trang-tri-noi-that-phong-khach-hien-dai.jpeg', '<p style="text-align:justify;">Trước đây phòng khách hoặc (nơi tiếp khách) là những nơi được thiết kế và trang trí chỉ để đón khách quý . Cùng với thời gian, ngày nay phòng khách được thiết lập như một phòng đa chức năng, vừa có chức năng là nơi chào đón khách, vừa là nơi ngồi nghỉ ngơi, thoải mái thư giãn trong khi chúng ta đọc một cuốn sách hoặc xem ti vi. Phòng khách là nơi để giải trí và dành thời gian với gia đình, trò chuyện và tán gẫu với bạn bè .</p>', '', '<p style="text-align:justify;"><strong>Đồ đạc trong phòng khách</strong></p>\n<p style="text-align:justify;">Những đồ nội thất phổ biến và cơ bản trong phòng khách đó là ghế sofa, bàn cà phê, băng ghế, kệ, bàn và kệ sách, tủ rượu…. Nếu phòng khách cũng được sử dụng như một phòng sinh hoạt chung của cả gia đình thì chúng ta còn thấy có ti vi cùng với các phụ kiện thiết bị âm thanh, đèn trang trí, thảm trang trí, tranh treo nghệ thuật…</p>\n<p style="text-align:justify;"><strong>Sắp đặt nội thất phòng khách</strong></p>\n<p style="text-align:justify;">Một phòng khách lớn có thể bố trí sắp đặt những vật dụng giải trí như một cây đàn Piano chẳng hạn, hoặc có thể thêm khu vực ăn uống trong phòng khách như bàn ăn, thêm khu vui chơi giải trí như bàn bida hoặc các thiết bị giải trí khác. Phòng khách có thể được thiết kế sắp đặt tối đa không gian sử để có thể bày biện nhiều đồ đạc khác nhau… vì thế nó lại là một thách thức với chúng ta về sự tương hợp các đồ vật mà ta mong muốn với nhau, từ thảm sàn, tranh treo tường, màu sơn tường cho đến ánh sáng, cửa sổ….Thông thường ghế sofa, bàn café (được gọi là khu giải trí trung tâm) là các đồ nội thất lớn nhất trong phòng khách và từ vị trí của ghế sofa chúng ta lấy đó làm điểm khởi đầu (trung tâm), từ vị trí này sẽ quyết định xem ta trang trí và thiết kế thế nào cho phù hợp với sự sinh hoạt, sử dụng chung của cả gia đình.</p>\n<p style="text-align:justify;"><strong>Phòng khách thể hiện gu thẩm mỹ của chủ nhân</strong></p>\n<p style="text-align:justify;">Phòng khách cũng là nơi biểu lộ cá tính, gu thẩm mỹ cá nhân, sự tinh tế được đánh giá trong cách bạn trang trí phòng khách của bạn. Sửa chưa, tu bổ hoặc trang rí lại phòng khách không có nghĩa là thêm vào các đồ nội thất trong phòng khách quan trọng là phải làm thế nào sắp xếp những gì đã có hoặc sẽ có trong phòng một cách hợp lý, bố trí sai có thể làm hỏng bố cục và bộ mặt của phòng. Một số quy tắc và cách thức truyền thống trong việc thiết kế phòng khách là tạo sự thích hợp và sảng khoái, mà người thiết kế phải tuân thủ . Có thể có sự sáng tạo, ý tưởng khác biệt cho phòng khách để cho phòng khách thêm hấp dẫn nhưng nên giới hạn ở sự thoải mái và công năng sử dụng cửa căn phòng.</p>\n<p style="text-align:justify;"><strong>Phòng khách ấn tượng với sự giúp đỡ thiết kế của kiến trúc sư</strong></p>\n<p style="text-align:justify;">Thiết kế theo những cách sáng tạo đó có thể phá vỡ các quy tắc trong thiết kế và trang trí nên kết hợp sự sáng tạo của bạn với các chuyên gia để đảm bảo sự phù hợp cũng như có hiệu quả cao nhất. Phải đảm bảo rằng nó duy trì được sự cân bằng của thị giác và sự hài hòa với các đồ dùng trưng bày, tránh sự hỗn loạn. Với ngân sách eo hẹp thì cố gắng sử dụng những gì đã có, sau đó chọn mua hoặc thiết kế những gì cảm thấy thực sự cần thiết. Đối với một phòng khách đẹp có thể không cần phải bắt đầu lại từ đầu, hãy sắp xếp lại đồ nội thất và vật dụng, nó có thể đạt được hiệu quả mà bạn mong muốn. Hãy chắc chắn rằng bạn không phải bỏ đi bức tranh quý vì không nghĩ đến việc đặt đúng chỗ.</p>\n<p style="text-align:justify;">Trong khi trang trí và thiết kế một phòng khách, kiến trúc sư phải chú ý đến khu vực trọng tâm của phòng, lối sống của các thành viên trong gia đình, vị trí, chức năng của đồ nội thất, công năng sử dụng, khu vực tán gẫu, đàm thoại, cân bằng anh sáng, màu sắc của phòng, rèm cửa, màu nỉ sofa…. Tổ chức săp đặt làm sao những đồ vật đẹp được trưng ra bên ngoài, những vật dụng xấu được ngụy trang và che khuất, tranh ảnh trang trí phải có tỷ lệ tương ứng với phòng, quy mô của vật dụng trang trí… quan trọng nhất đó chính là yếu tố thống nhất, hài hòa trong việc trang trí.</p>', '', 'trang-tri-noi-that-phong-khach-hien-dai', '', '', '', 0, 1, 0, '', '', 1, 61),
(88, 'Thiết kế nội thất phòng khách hiện đại - Mẫu thiết kế phòng khách', '', '2012-05-08 08:08:31', 'thiet-ke-noi-that-phong-khach-hien-dai-mau-thiet-ke-phong-khach.jpeg', '<p style="text-align:justify;">Phòng khách ngày nay luôn được các nhà thiết kế chuyên nghiệp quan tâm, bởi phòng khách nội thất hiện đại ngày này ngoài yếu tố đẹp nó còn là nơi thư giãn, giải trí khi chúng ta trở về nhà sau một ngày làm việc mệt mỏi kéo dài.</p>', '', '<p>Phòng khách ngày nay luôn được các nhà thiết kế chuyên nghiệp quan tâm, bởi phòng khách nội thất hiện đại ngày này ngoài yếu tố đẹp nó còn là nơi thư giãn, giải trí khi chúng ta trở về nhà sau một ngày làm việc mệt mỏi kéo dài.</p>\n<p>Mang phong cách đơn giản nhưng không quên nhấn mạnh đến bản sắc và phong cách cá nhân của từng người, một tấm thảm màu tươi sáng, hay bóng đèn, đồ gỗ trang trí, kệ ti vi… Nó tạo cho căn phòng trở lên sống động và mang đến bản sắc riêng của chủ nhà.</p>\n<p>Bạn có thể chọn lựa một phòng khách hiện đại theo sở thích cá nhân của bạn, hoặc nó có thể gợi mở những ý tưởng về một phòng khách của riêng bạn, hãy gọi cho chúng tôi, chúng tôi sẽ thực hiện ý tưởng đó cùng các bạn.</p>', '', 'thiet-ke-noi-that-phong-khach-hien-dai-mau-thiet-ke-phong-khach', '', '', '', 0, 2, 0, '', '', 1, 61),
(89, 'Phòng bếp, tủ bếp ngày nay', '', '2012-05-08 08:18:56', 'phong-bep-tu-bep-ngay-nay.jpeg', '<p style="text-align:justify;">Không gian nhà bếp khác hoàn toàn với các không gian khác trong ngôi nhà của bạn, nó cần được suy tính và chuẩn bị kỹ lưỡng về mọi mặt cho dù là bạn đang thiết kế mới hay là cải tạo lại phòng bếp cũ, thậm chí là trang hoàng lại một chút. Khi bạn có một kế hoạch kỹ lưỡng, nó cho phép tạo ra phòng bếp đảm bảo công năng sử dụng và đáp ứng nhu cầu riêng cho bạn, phản ảnh cá tính – gu thẩm mỹ của bạn nữa</p>', '', '<p style="text-align:justify;">Không gian nhà bếp khác hoàn toàn với các không gian khác trong ngôi nhà của bạn, nó cần được suy tính và chuẩn bị kỹ lưỡng về mọi mặt cho dù là bạn đang thiết kế mới hay là cải tạo lại phòng bếp cũ, thậm chí là trang hoàng lại một chút. Khi bạn có một kế hoạch kỹ lưỡng, nó cho phép tạo ra phòng bếp đảm bảo công năng sử dụng và đáp ứng nhu cầu riêng cho bạn, phản ảnh cá tính – gu thẩm mỹ của bạn nữa. Bạn lưu ý, bí quyết để có phòng bếp hoàn hảo là phải phối hợp sao cho hài hòa giữa sự hiệu quả công năng sử dụng và cảm giác thoải mái trong phòng bếp đó. Hãy tạo ra phòng bếp để phục vụ chất lượng cuộc sống của bạn tốt hơn.</p>\n<p style="text-align:justify;">Cách thức dễ dàng để chọn một thiết kế phù hợp căn cứ chủ yếu vào kiểu nhà mà bạn sống, tuy nhiên thói quen cuộc sống, nghề nghiệp của bạn cũng là yếu tố cần tham khảo kỹ: người bận rộn thì phòng bếp nhỏ, lắp đặt các thiết bị nhà bếp tiện dụng và hiệu quả cho việc nấu nướng; ngược lại có người thích thưởng thức một không gian lãng mạn,nghệ thuật, ấm cúng ngay tại phòng bếp</p>\n<p style="text-align:justify;"><span style="color:#008000;"><strong>Lời khuyên cho phòng bếp</strong></span></p>\n<p style="text-align:justify;"><strong>1) Điểm khởi đầu khi xây dựng bản thiết kế</strong></p>\n<p style="text-align:justify;">Nhà bếp là chính là khu vực đề các chậu rửa, với hệ thống đường nước cấp và xả. Cần lưu ý điểm này đầu tiên, vì đó là những thiết bị đắt tiền và rất khó để chỉnh sửa nếu đã lắp đặt. Các chậu rửa nên để gần với bếp nấu trên cùng (chính), và đảm bảo không gian thoải mái về cả hai phía. Cả bếp nấu chính lẫn các chậu rửa không nên đặt ở góc, ở đó bạn cần được đứng vững trên cả hai chân nếu như bạn không muốn lúc nào đó trật khớp vì nó. Nhờ đó, bạn có không gian khá phẳng ở những vị trí trọng điểm. Hãy tránh sự gián đoạn công việc của bạn vì lắp thêm các lò tích hợp hoặc tủ lạnh ở đây, nhóm này thích hợp để ở khu vực cuối của bàn bếp (tủ bếp – quầy bếp).</p>\n<p style="text-align:justify;"><strong>2) Mặt bàn bếp chuẩn bị thức ăn</strong></p>\n<p style="text-align:justify;">Thông thường, nên để cách khuỷu tay của bạn từ năm đến mười cm. Chiều cao đến mặt nằm ngang cho các tử bếp cơ bản là khoảng 100cm (feet). Chỗ nấu nướng thì nên để thấp hơn chỗ chuẩn đồ nấu khoảng 15cm (6inch), để bạn có thể nhìn rõ các chảo (nồi) nấu.</p>\n<p style="text-align:justify;"><strong>3) Thông gió tốt là điều rất quan trọng,</strong></p>\n<p style="text-align:justify;">Ngay cả đối với một nhà bếp có nhiều cửa sổ. Các cửa sổ cho phép không khí trong lành tràn vào nhà bếp, nhưng dù sao vẫn cần một thiết bị hút khói (lọc không khí) đặt gần lò nướng, bếp nấu.</p>\n<p style="text-align:justify;"><strong>4) Tiếp theo là an toàn trong nhà bếp,</strong></p>\n<p style="text-align:justify;">Bạn nên biết là 40% các tại nạn ở nhà là xảy ra ở nhà bếp, nó là nơi dễ xảy ra tai nạn nhất trong một ngôi nhà. Nguy cơ cao nhất đó chính là trẻ nhỏ và người già. Khu vực bếp nấu chính (bếp gas) là nơi nguy hiểm nhất. Do vậy, không nên đặt nó ngay phía dưới tủ trên (khu vực này nên để máy hút mùi, và chiều cao tối thiểu của hút mùi cách mặt bếp 60-80cm), trong nhà bếp cần có bình cứu hỏa và để nơi bạn dễ nhìn thấy nhất. Nếu nhà có trẻ nhỏ, hãy cất kỹ dao và chất tẩy rửa trong tủ có khóa. Tuyệt đối không để hơi ở các nồi nấu xả thẳng vào ổ cắm điện, có lắp đặt hệ thống cầu dao tự ngắt khi có sự cố chập điện.</p>\n<p style="text-align:justify;"><strong>5) Ánh sáng trong nhà bếp</strong></p>\n<p style="text-align:justify;">có ánh sáng tốt là yếu tố rất quan trọng, vì bản chất nhà bếp là không gian làm việc là chính. Đèn chiếu nền và đèn có rọi cả hai đều cần cho nhà bếp. Ở các khu vực bếp nấu, chậu rửa, bàn chuẩn bị đồ nấu cần có ánh sáng công suất vừa phải phía trên nó. Tránh để nguồn ánh sáng phía sau chỗ bạn đứng nấu, vì như vậy bạn làm việc trong cái bóng che của bạn. Còn màu sắc ánh sáng chủ yếu chọn theo sở thích của bạn!</p>', '', 'phong-bep-tu-bep-ngay-nay', '', '', '', 0, 3, 0, '', '', 1, 61);

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
) ENGINE=InnoDB  DEFAULT CHARSET=utf8 AUTO_INCREMENT=62 ;

--
-- Dumping data for table `dos_module_news_cat`
--

INSERT INTO `dos_module_news_cat` (`cat_id`, `cat_parent_id`, `cat_title`, `cat_titleen`, `preview`, `previewen`, `tag`, `tagen`, `description`, `descriptionen`, `pic_full`, `cat_order`, `cat_extra1`, `cat_extra2`, `cat_enable`, `dos_usernames_username`) VALUES
(61, 0, 'Cẩm nang trang trí', '', '', '', 'cam-nang-trang-tri', '', '', '', '', 1, '', '', 1, 'phumyan');

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
('day_time', 2456062),
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
('''::1''', 1336987768);

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
) ENGINE=InnoDB  DEFAULT CHARSET=utf8 AUTO_INCREMENT=783 ;

--
-- Dumping data for table `dos_module_products`
--

INSERT INTO `dos_module_products` (`record_id`, `title`, `titleen`, `postdate`, `pic_thumb`, `pic_full`, `pic_desc`, `preview`, `previewen`, `content`, `contenten`, `tag`, `tagen`, `description`, `descriptionen`, `hits`, `record_order`, `unit`, `hot`, `specials`, `extra_field1`, `extra_field2`, `extra_field3`, `extra_field4`, `enable`, `dos_module_item_cat_cat_id`) VALUES
(767, 'SOFA 001', '', '2012-05-08 07:06:31', 'sofa-001-thumb.jpg', 'sofa-001.jpg', '', '<p>SOFA 001</p>', '', '<p>Liên hệ công ty</p>', '', 'sofa-001', '', '', '', 0, 16, 'VND', 0, 0, '', '', '', '', 1, 218),
(768, 'SOFA 002', '', '2012-05-08 07:07:12', 'sofa-002-thumb.jpg', 'sofa-002.jpg', '', '<p>SOFA 002</p>', '', '<p>Liên hệ công ty</p>', '', 'sofa-002', '', '', '', 0, 1, 'VND', 0, 0, '', '', '', '', 1, 218),
(769, 'SOFA 003', '', '2012-05-08 07:07:41', 'sofa-003-thumb.jpg', 'sofa-003.jpg', '', '<p>SOFA 003</p>', '', '<p>Liên hệ công ty</p>', '', 'sofa-003', '', '', '', 0, 3, 'VND', 0, 0, '', '', '', '', 1, 218),
(770, 'SOFA 004', '', '2012-05-08 07:08:23', 'sofa-004-thumb.jpg', 'sofa-004.jpg', '', '<p>SOFA 004</p>', '', '<p>Liên hệ công ty</p>', '', 'sofa-004', '', '', '', 0, 2, 'VND', 0, 0, '', '', '', '', 1, 218),
(771, 'GIƯỜNG NGỦ 001', '', '2012-05-08 07:08:58', 'ging-ng-001-thumb.jpg', 'ging-ng-001.jpg', '', '<p>GIƯỜNG NGỦ 001</p>', '', '<p>Liên hệ công ty</p>', '', 'giuong-ngu-001', '', '', '', 0, 5, 'VND', 0, 0, '', '', '', '', 1, 219),
(772, 'GIƯỜNG NGỦ 002', '', '2012-05-08 07:09:28', 'ging-ng-002-thumb.jpg', 'ging-ng-002.jpg', '', '<p>GIƯỜNG NGỦ 002</p>', '', '<p>Liên hệ công ty</p>', '', 'giuong-ngu-002', '', '', '', 0, 6, 'VND', 0, 0, '', '', '', '', 1, 219),
(773, 'GIƯỜNG NGỦ 003', '', '2012-05-08 07:10:14', 'ging-ng-003-thumb.jpg', 'ging-ng-003.jpg', '', '<p>GIƯỜNG NGỦ 003</p>', '', '<p>Liên hệ công ty</p>', '', 'giuong-ngu-003', '', '', '', 0, 15, 'VND', 0, 0, '', '', '', '', 1, 219),
(774, 'GIƯỜNG NGỦ 004', '', '2012-05-08 07:10:46', 'ging-ng-004-thumb.jpg', 'ging-ng-004.jpg', '', '<p>GIƯỜNG NGỦ 004</p>', '', '<p>Liên hệ công ty</p>', '', 'giuong-ngu-004', '', '', '', 0, 8, 'VND', 0, 0, '', '', '', '', 1, 218),
(775, 'NA001', '', '2012-05-08 07:11:23', 'na001-thumb.jpg', 'na001.jpg', '', '<p>NA001</p>', '', '<p>Liên hệ công ty</p>', '', 'na001', '', '', '', 0, 14, 'VND', 0, 0, '', '', '', '', 1, 220),
(776, 'NA002', '', '2012-05-08 07:12:09', 'na002-thumb.jpg', 'na002.jpg', '', '<p>NA002</p>', '', '<p>Liên hệ công ty</p>', '', 'na002', '', '', '', 0, 10, 'VND', 0, 0, '', '', '', '', 1, 218),
(777, 'TỦ BẾP 001', '', '2012-05-08 07:12:57', 't-bp-001-thumb.jpg', 't-bp-001.jpg', '', '<p>TỦ BẾP 001</p>', '', '<p>Liên hệ công ty</p>', '', 'tu-bep-001', '', '', '', 0, 11, 'VND', 0, 0, '', '', '', '', 1, 221),
(778, 'TỦ BẾP 002', '', '2012-05-08 07:13:26', 't-bp-002-thumb.jpg', 't-bp-002.jpg', '', '<p>TỦ BẾP 002</p>', '', '<p>Liên hệ công ty</p>', '', 'tu-bep-002', '', '', '', 0, 13, 'VND', 0, 0, '', '', '', '', 1, 221),
(779, 'GIƯỜNG NGỦ 005', '', '2012-05-08 07:13:55', 'ging-ng-005-thumb.jpg', 'ging-ng-005.jpg', '', '<p>GIƯỜNG NGỦ 005</p>', '', '<p>Liên hệ công ty</p>', '', 'giuong-ngu-005', '', '', '', 0, 7, 'VND', 0, 0, '', '', '', '', 1, 219),
(780, 'TỦ QUẦN ÁO', '', '2012-05-08 07:15:23', 't-qun-o-thumb.jpg', 't-qun-o.jpg', '', '<p>TỦ QUẦN ÁO</p>', '', '<p>Liên hệ công ty</p>', '', 'tu-quan-ao', '', '', '', 0, 9, 'VND', 0, 0, '', '', '', '', 1, 222),
(781, 'KỆ SÁCH', '', '2012-05-08 07:15:50', 'k-sch-thumb.jpg', 'k-sch.jpg', '', '<p>KỆ SÁCH</p>', '', '<p>Liên hệ công ty</p>', '', 'ke-sach', '', '', '', 0, 12, 'VND', 0, 0, '', '', '', '', 1, 222),
(782, 'Phòng trẻ em', '', '2012-05-08 07:19:10', 'phong-tre-em-thumb.jpg', 'phong-tre-em.jpg', '', '<p>Phòng trẻ em</p>', '', '<p>Liên hệ công ty</p>', '', 'phong-tre-em', '', '', '', 0, 4, 'VND', 0, 0, '', '', '', '', 1, 223);

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
) ENGINE=InnoDB  DEFAULT CHARSET=utf8 AUTO_INCREMENT=224 ;

--
-- Dumping data for table `dos_module_products_cat`
--

INSERT INTO `dos_module_products_cat` (`cat_id`, `cat_parent_id`, `cat_title`, `cat_titleen`, `preview`, `previewen`, `tag`, `tagen`, `description`, `descriptionen`, `pic_full`, `pic_desc`, `cat_order`, `cat_extra1`, `cat_extra2`, `cat_enable`, `dos_usernames_username`) VALUES
(218, 0, 'Nội thất phòng khách', '', '', '', 'noi-that-phong-khach', '', 'Nội thất phòng khách', '', 'noi-that-phong-khach.jpg', '', 4, '', '', 1, 'phumyan'),
(219, 0, 'Nội thất phòng ngủ', '', '', '', 'noi-that-phong-ngu', '', 'Nội thất phòng ngủ', '', 'noi-that-phong-ngu.jpg', '', 4, '', '', 1, 'phumyan'),
(220, 0, 'Nội thất phòng ăn', '', '', '', 'noi-that-phong-an', '', 'Nội thất phòng ăn', '', 'noi-that-phong-an.jpg', '', 4, '', '', 1, 'phumyan'),
(221, 0, 'Nội thất bếp', '', '', '', 'noi-that-bep', '', 'Nội thất bếp', '', 'noi-that-bep.jpg', '', 3, '', '', 1, 'phumyan'),
(222, 0, 'Tủ - Kệ', '', '', '', 'tu-ke', '', '', '', 't-k.jpg', '', 2, '', '', 1, 'phumyan'),
(223, 0, 'Nội thất phòng giải trí', '', '', '', 'noi-that-phong-giai-tri', '', '', '', 'noi-that-phong-giai-tri.jpg', '', 3, '', '', 1, 'phumyan');

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
) ENGINE=InnoDB  DEFAULT CHARSET=utf8 AUTO_INCREMENT=7 ;

--
-- Dumping data for table `dos_module_supports`
--

INSERT INTO `dos_module_supports` (`support_id`, `support_name`, `support_nameen`, `support_phone`, `support_value`, `support_order`, `support_type`, `dos_usernames_username`) VALUES
(6, 'Hỗ trợ Khách hàng', '', '0929 001 001', 'thanhansoft', 1, 'yahoo', 'phumyan');

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
('keywords', 'Nội thất phú mỹ an, nội thất phòng khách, nội thất gỗ, nội thất phòng ngủ, nội thất gia đình, siêu thị nội thất', 'phumyan'),
('description', 'Nội thất phú mỹ an, nội thất phòng khách, nội thất gỗ, nội thất phòng ngủ, nội thất gia đình, siêu thị nội thất', 'phumyan'),
('title', 'Nội thất Phú Mỹ An - noithatphumyan.vn', 'phumyan'),
('analytics', '<script type="text/javascript">\r\n\r\n  var _gaq = _gaq || [];\r\n  _gaq.push([''_setAccount'', ''UA-31710703-1'']);\r\n  _gaq.push([''_trackPageview'']);\r\n\r\n  (function() {\r\n    var ga = document.createElement(''script''); ga.type = ''text/javascript''; ga.async = true;\r\n    ga.src = (''https:'' == document.location.protocol ? ''https://ssl'' : ''http://www'') + ''.google-analytics.com/ga.js'';\r\n    var s = document.getElementsByTagName(''script'')[0]; s.parentNode.insertBefore(ga, s);\r\n  })();\r\n\r\n</script>', 'phumyan');

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
('phumyan', 'tinhungphat@gmail.com', 'd85287e7f9ec18990d6d2dce0b1692b5', '2012-05-08 06:58:45', 'Nội thất Phú Mỹ An', '0613889245', 'Nội thất Phú Mỹ An', 'user', 'vi', '', '2012-06-06 17:00:00', 0, 1, '220312', 19, 'noi-that-ngoai-that');

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
('address1', 'Địa chỉ: Biên Hòa - Đồng Nai', '', 'phumyan'),
('address2', 'Điện thoại: 0613.889 245 - Fax: 0613.889 246', '', 'phumyan'),
('company_name', 'NỘI THẤT PHÚ MỸ AN', '', 'phumyan'),
('company_name_footer', 'CÔNG TY TNHH NỘI THẤT PHÚ MỸ AN', '', 'phumyan'),
('company_phone', 'Hotline: 0613.889 245', '', 'phumyan');

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
