-- phpMyAdmin SQL Dump
-- version 3.4.5
-- http://www.phpmyadmin.net
--
-- Host: localhost
-- Generation Time: Apr 14, 2012 at 04:56 PM
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
('logo_height', 108, '', '010312'),
('logo_width', 155, '', '010312'),
('max_image_height', 667, '', '010312'),
('max_image_width', 500, '', '010312'),
('news_cat_height', 89, '', '010312'),
('news_cat_width', 143, '', '010312'),
('news_height_thumb', 89, '', '010312'),
('news_num_paging_cat', 8, '', '010312'),
('news_num_paging_hot', 6, '', '010312'),
('news_num_paging_index', 8, '', '010312'),
('news_num_paging_new', 6, '', '010312'),
('news_width_thumb', 143, '', '010312'),
('products_cat_height', 155, '', '010312'),
('products_cat_width', 115, '', '010312'),
('products_height', 400, '', '010312'),
('products_height_thumb', 121, '', '010312'),
('products_num_paging_cat', 3, '', '010312'),
('products_num_paging_hot', 3, '', '010312'),
('products_num_paging_new', 6, '', '010312'),
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
('about', 'mayphotocopysieuviet'),
('advs', 'mayphotocopysieuviet'),
('banner', 'mayphotocopysieuviet'),
('contact', 'mayphotocopysieuviet'),
('news', 'mayphotocopysieuviet'),
('products', 'mayphotocopysieuviet'),
('services', 'mayphotocopysieuviet'),
('supports', 'mayphotocopysieuviet');

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
) ENGINE=InnoDB  DEFAULT CHARSET=utf8 AUTO_INCREMENT=46 ;

--
-- Dumping data for table `dos_module_abouts`
--

INSERT INTO `dos_module_abouts` (`record_id`, `title`, `titleen`, `content`, `contenten`, `hit`, `created`, `record_order`, `hot`, `extra_field1`, `extra_field2`, `tag`, `tagen`, `description`, `descriptionen`, `activated`, `dos_usernames_username`) VALUES
(43, 'Giới thiệu chung', '', '<p style="text-align:justify;"><span style="color:#008000;font-size:medium;"><strong>Siêu Việt</strong></span><span style="color:#000000;"> là một trong những công ty hàng đầu chuyên cung cấp các thiết bị và giải pháp toàn diện trong lĩnh vực Giải pháp máy văn phòng.</span></p>\n<p style="text-align:justify;"><span style="color:#000000;">Công ty được thành lập với tiêu chí cung cấp sỉ và lẻ tất cả các thiết bị văn phòng cho các đại lý trên khắp Việt Nam .</span></p>\n<p style="text-align:justify;"><span style="color:#000000;">Tận dụng và phát huy năng lực, kinh nghiệm trong lĩnh vực thiết bị văn phòng cùng với sự hỗ trợ của các thương hiệu nổi tiếng thế giới như Toshiba, Panasonic, Canon, Ricoh, Konica Minolta, Xerox... và trong lĩnh vực tin học như Intel, Seagate, Samsung, Asus, Dell, Ibm, Acer ...chúng tôi mong muốn và quyết tâm để trờ thành nhà cung cấp lớn và uy tín nhất trong lĩnh vực văn phòng tại Việt Nam.</span></p>\n<p style="text-align:justify;"><span style="color:#000000;">Dịch vụ hỗ trợ khách hàng: Chúng tôi có một đội ngũ kỹ sư có chuyên môn cao, kỹ thuật viên uy tín lâu năm kinh nghiệm trong các lĩnh vực:</span></p>\n<p style="text-align:justify;"><span style="color:#000000;">- Tư vấn, thực hiện các Giải Pháp về Máy Photocopy, Máy Fax, Máy In ...</span></p>\n<p style="text-align:justify;"><span style="color:#000000;">- Kinh doanh và cho thuê Máy Văn Phòng </span></p>\n<p style="text-align:justify;"><span style="color:#000000;">- Máy Photocopy in kỹ thuật số khổ lớn A0, Máy In Siêu Tốc 130 bản/phút</span></p>\n<p style="text-align:justify;"><span style="color:#000000;">- Máy in Công nghiệp, Máy in Màu Offset</span></p>\n<p style="text-align:justify;"><span style="color:#000000;">- Hỗ trợ kỹ thuật cho các dịch vụ Photocopy</span></p>\n<p style="text-align:justify;"><span style="color:#000000;">- Phân phối Sỉ &amp; Lẻ Máy Photocopy hàng nhập khẩu</span></p>\n<p style="text-align:justify;"><span style="color:#000000;">- Cung cấp Mực, Linh Kiện, Vật Tư với giá ưu đãi</span></p>\n<p style="text-align:justify;"><span style="color:#000000;">- Nhận đào tạo Kỹ Thuật Viên sửa chữa máy Photocopy, In, Fax</span></p>\n<p style="text-align:justify;"><span style="color:#000000;"><span style="color:#008000;font-size:medium;"><strong>Siêu Việt</strong> </span>đáp ứng mọi nhu cầu, lựa chọn từ quý khách.</span></p>\n<p style="text-align:justify;"><span style="color:#000000;"> </span></p>\n<p style="text-align:center;"><span style="color:#ff0000;font-size:medium;"><strong><em>Tiêu chí kinh doanh trong lĩnh vực dịch vụ của chúng tôi</em></strong></span><br /><span style="color:#ff0000;font-size:medium;"><strong><em>“Hãy để <span style="color:#008000;">Siêu Việt</span> chăm sóc văn phòng bạn”</em></strong></span></p>', '', 62, '2012-04-12 01:25:59', 1, 1, '', '', 'gioi-thieu-chung', '', 'Siêu Việt', '', 1, 'mayphotocopysieuviet'),
(45, 'Giấy chứng nhận đại lý', '', '<p><img style="margin-left:auto;margin-right:auto;" title="Giấy chung nhan" src="/public/userfiles/image/mayphotocopysieuviet/image/Nho-Chungnhan_HP.jpg" alt="sieu viet" width="450" height="651" /></p>', '', 12, '2012-04-12 02:49:22', 2, 0, '', '', 'giay-chung-nhan-dai-ly', '', '', '', 1, 'mayphotocopysieuviet');

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
) ENGINE=InnoDB  DEFAULT CHARSET=utf8 AUTO_INCREMENT=14 ;

--
-- Dumping data for table `dos_module_advs`
--

INSERT INTO `dos_module_advs` (`record_id`, `title`, `titleen`, `pic_thumb`, `url`, `create_date`, `start_date`, `end_date`, `hits`, `record_order`, `position`, `type`, `enable`, `dos_usernames_username`) VALUES
(8, 'Quảng cáo', '', 'quang-cao.jpg', 'http://mayphotocopysieuviet.dos.vn/', '2012-04-12 02:29:32', '2012-03-31 10:00:00', '2012-05-30 10:00:00', 0, 1, 'left', '_bank', 1, 'mayphotocopysieuviet'),
(9, 'hp', '', 'hp.jpeg', 'http://dos.vn/', '2012-04-12 02:50:25', '2012-03-31 10:00:00', '2012-05-30 10:00:00', 0, 6, 'right', '_bank', 1, 'mayphotocopysieuviet'),
(10, 'toshiba', '', 'toshiba.jpeg', 'http://dos.vn/', '2012-04-12 02:51:09', '2012-03-31 10:00:00', '2012-05-30 10:00:00', 0, 2, 'right', '_bank', 1, 'mayphotocopysieuviet'),
(11, 'Panasonic', '', 'panasonic.jpeg', 'http://dos.vn/', '2012-04-12 02:51:56', '2012-03-31 10:00:00', '2012-05-30 10:00:00', 0, 4, 'right', '_bank', 1, 'mayphotocopysieuviet'),
(12, 'Canon', '', 'canon.jpeg', 'http://dos.vn/', '2012-04-12 02:52:19', '2012-03-31 10:00:00', '2012-05-30 10:00:00', 0, 5, 'right', '_bank', 1, 'mayphotocopysieuviet'),
(13, 'Xerok', '', 'xerok.jpeg', 'http://dos.vn/', '2012-04-12 02:52:59', '2012-03-31 10:00:00', '2012-05-30 10:00:00', 0, 3, 'right', '_bank', 1, 'mayphotocopysieuviet');

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
) ENGINE=InnoDB  DEFAULT CHARSET=utf8 AUTO_INCREMENT=37 ;

--
-- Dumping data for table `dos_module_banners`
--

INSERT INTO `dos_module_banners` (`banner_id`, `banner_date`, `banner_name`, `banner_url`, `banner_link`, `banner_order`, `banner_type`, `position`, `enable`, `dos_usernames_username`) VALUES
(6, '2012-04-12 00:05:03', 'logo', 'logo.png', '', 1, 'logo', 'default', 1, 'mayphotocopysieuviet'),
(23, '2012-04-12 00:58:23', 'Banner', 'banner.jpg', '', 2, 'banners', 'default', 1, 'mayphotocopysieuviet'),
(24, '2012-04-12 01:03:46', 'Banner 1', 'banner-1.jpg', '', 3, 'banners', 'default', 1, 'mayphotocopysieuviet'),
(25, '2012-04-12 01:04:13', 'Banner 2', 'banner-2.jpg', '', 4, 'banners', 'default', 1, 'mayphotocopysieuviet'),
(26, '2012-04-12 01:04:26', 'Banner 3', 'banner-3.jpg', '', 5, 'banners', 'default', 1, 'mayphotocopysieuviet'),
(27, '2012-04-12 01:04:50', 'Banner 4', 'banner-4.jpg', '', 6, 'banners', 'about', 1, 'mayphotocopysieuviet'),
(28, '2012-04-12 01:06:19', 'Banner 5', 'banner-5.jpg', '', 7, 'banners', 'contact', 1, 'mayphotocopysieuviet'),
(29, '2012-04-12 01:07:21', 'Banner 7', 'banner-7.jpg', '', 8, 'banners', 'services', 1, 'mayphotocopysieuviet'),
(30, '2012-04-12 01:07:36', 'Banner 8', 'banner-8.jpg', '', 9, 'banners', 'news', 1, 'mayphotocopysieuviet'),
(31, '2012-04-12 01:08:09', 'Banner 9', 'banner-73.jpg', '', 10, 'banners', 'products', 1, 'mayphotocopysieuviet'),
(32, '2012-04-12 01:10:28', 'Banner 11', 'banner-11.jpg', '', 11, 'banners', 'products', 1, 'mayphotocopysieuviet'),
(33, '2012-04-12 01:11:14', 'Banner 10', 'banner-10.jpg', '', 12, 'banners', 'products', 1, 'mayphotocopysieuviet'),
(34, '2012-04-12 02:37:36', 'Banner 15', 'banner-15.jpg', '', 13, 'banners', 'services', 1, 'mayphotocopysieuviet'),
(35, '2012-04-12 02:38:20', 'Banner 12', 'banner-12.jpg', '', 14, 'banners', 'services', 1, 'mayphotocopysieuviet'),
(36, '2012-04-12 02:38:56', 'Banner 13', 'banner-13.jpg', '', 15, 'banners', 'products', 1, 'mayphotocopysieuviet');

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
) ENGINE=InnoDB  DEFAULT CHARSET=utf8 AUTO_INCREMENT=10 ;

--
-- Dumping data for table `dos_module_contacts`
--

INSERT INTO `dos_module_contacts` (`record_id`, `title`, `titleen`, `content`, `contenten`, `create_date`, `record_order`, `hit`, `hot`, `tag`, `tagen`, `description`, `descriptionen`, `enable`, `dos_usernames_username`) VALUES
(8, 'Liên hệ với chúng tôi', '', '<p><span style="color:#008000;font-size:medium;"><strong>DNTN SIÊU VIỆT</strong></span></p>\n<p>3A/1 Đoàn Văn Cự, P. Tam Hiệp, TP. Biên Hòa, Tỉnh Đồng Nai</p>\n<p>Điện thoại: 061. 629 0909 - 061. 3914 541</p>\n<p>Fax: 061. 629 0819</p>\n<p>Hotline: 0937 107 888 - Mr. Nguyên - Phụ trách Kinh doanh.</p>\n<p>Email: nguyensieuviet@yahoo.com.vn</p>\n<p>Website: www.mayphotocopysieuviet.com</p>', '', '2012-04-12 02:03:01', 1, 0, 0, 'lien-he-voi-chung-toi', '', '', '', '1', 'mayphotocopysieuviet'),
(9, 'Liên hệ', '', '<p>0937.107 888 (Mr. Nguyên)</p>', '', '2012-04-12 02:03:32', 2, 0, 1, 'lien-he', '', '', '', '1', 'mayphotocopysieuviet');

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
('Trang chủ', '', 'default', '', 1, '', '', '', '', 'mayphotocopysieuviet'),
('Giới thiệu', '', 'about', '', 2, '', '', '', '', 'mayphotocopysieuviet'),
('Sản phẩm', '', 'products', '', 3, '', '', '', '', 'mayphotocopysieuviet'),
('Dịch vụ', '', 'services', '', 4, '', '', '', '', 'mayphotocopysieuviet'),
('Tin tức & sự kiện', '', 'news', '', 5, '', '', '', '', 'mayphotocopysieuviet'),
('Liên hệ', '', 'contact', '', 6, '', '', '', '', 'mayphotocopysieuviet');

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
) ENGINE=InnoDB  DEFAULT CHARSET=utf8 AUTO_INCREMENT=14 ;

--
-- Dumping data for table `dos_module_news_cat`
--

INSERT INTO `dos_module_news_cat` (`cat_id`, `cat_parent_id`, `cat_title`, `cat_titleen`, `preview`, `previewen`, `tag`, `tagen`, `description`, `descriptionen`, `pic_full`, `cat_order`, `cat_extra1`, `cat_extra2`, `cat_enable`, `dos_usernames_username`) VALUES
(10, 0, 'Thông tin Công nghệ', '', '', '', 'thong-tin-cong-nghe', '', 'Thông tin Công nghệ', '', '', 1, '', '', 1, 'mayphotocopysieuviet'),
(11, 0, 'Góc kỹ thuật', '', '', '', 'goc-ky-thuat', '', 'Góc kỹ thuật', '', '', 2, '', '', 1, 'mayphotocopysieuviet'),
(12, 0, 'Tuyển dụng', '', '', '', 'tuyen-dung', '', 'Tuyển dụng', '', '', 3, '', '', 1, 'mayphotocopysieuviet'),
(13, 0, 'Cẩm nang tiêu dùng', '', '', '', 'cam-nang-tieu-dung', '', 'Cẩm nang tiêu dùng', '', '', 4, '', '', 1, 'mayphotocopysieuviet');

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
('day_time', 2456032),
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
('''127.0.0.1''', 1334415293);

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
) ENGINE=InnoDB DEFAULT CHARSET=utf8 AUTO_INCREMENT=1 ;

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
) ENGINE=InnoDB  DEFAULT CHARSET=utf8 AUTO_INCREMENT=27 ;

--
-- Dumping data for table `dos_module_products_cat`
--

INSERT INTO `dos_module_products_cat` (`cat_id`, `cat_parent_id`, `cat_title`, `cat_titleen`, `preview`, `previewen`, `tag`, `tagen`, `description`, `descriptionen`, `pic_full`, `pic_desc`, `cat_order`, `cat_extra1`, `cat_extra2`, `cat_enable`, `dos_usernames_username`) VALUES
(23, 0, 'Máy Photocopy', '', '', '', 'may-photocopy', '', 'Máy Photocopy', '', 'may-photocopy.jpeg', '', 3, '', '', 1, 'mayphotocopysieuviet'),
(24, 0, 'Máy In', '', '', '', 'may-in', '', 'Máy In', '', 'may-in.jpeg', '', 3, '', '', 1, 'mayphotocopysieuviet'),
(25, 0, 'Máy Fax', '', '', '', 'may-fax', '', 'Máy Fax', '', 'may-fax.jpeg', '', 2, '', '', 1, 'mayphotocopysieuviet'),
(26, 0, 'Mực -  Linh kiện - Vật tư', '', '', '', 'muc-linh-kien-vat-tu', '', '', '', 'muc--linh-kien-vat-tu.jpeg', '', 2, '', '', 1, 'mayphotocopysieuviet');

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
) ENGINE=InnoDB  DEFAULT CHARSET=utf8 AUTO_INCREMENT=10 ;

--
-- Dumping data for table `dos_module_services`
--

INSERT INTO `dos_module_services` (`record_id`, `title`, `titleen`, `preview`, `previewen`, `content`, `contenten`, `pic_full`, `hit`, `created`, `record_order`, `hot`, `extra_field1`, `extra_field2`, `tag`, `tagen`, `description`, `descriptionen`, `activated`, `dos_usernames_username`) VALUES
(6, 'Dịch vụ Bảo trì', '', '', '', '<p style="text-align:justify;"><span style="color:#008000;"><strong>SIÊU VIỆT CUNG CẤP MÁY PHOTOCOPY CHUYÊN NGHIỆP, LUÔN SÀN LỌC NHỮNG LOẠI MÁY THÔNG DỤNG NHẤT ĐỂ CUNG CẤP TRÊN THỊ TRƯỜNG.</strong></span></p>\n<p style="text-align:justify;"><span style="color:#ff0000;"><strong>DỊCH VỤ BẢO TRÌ ĐỊNH KỲ:</strong></span></p>\n<p style="text-align:justify;">Đây là loại hình dịch vụ được áp dụng thông dụng nhất hiện nay. Loại hình dịch vụ này có các hình thức như sau:</p>\n<p style="text-align:justify;"><span style="text-decoration:underline;"><strong>Hợp đồng bảo trì ký hàng năm:</strong></span></p>\n<p style="text-align:justify;">- Quý khách và <span style="color:#008000;"><strong>SIÊU VIỆT</strong></span> sẽ ký một hợp đồng bảo trì theo thời hạn 12 tháng một lần. Quý khách sẽ chỉ phải trả một khoản phí cố định mà không cần quan tâm là thiết bị phải sửa chữa bao nhiêu lần trong tháng.</p>\n<p style="text-align:justify;"><span style="text-decoration:underline;"><strong>Hợp đồng Meter Charge:</strong></span></p>\n<p style="text-align:justify;">- Với loại hình dịch vụ này, Quý khách sẽ không phải quan tâm đến việc thay thế vật tư cho máy (kể cả mực). Thiết bị cũng sẽ được chăm sóc như dịch vụ bảo trì hàng năm nhưng Quý khách chỉ phải thanh toán một số tiền theo số bản chụp (in) mà máy đã thực hiện trong tháng. Giá thành mỗi bản chụp (in) tuỳ thuộc vào từng loại thiết bị cụ thể</p>\n<p style="text-align:justify;"><strong><em>Khi hợp đồng được ký kết, <span style="color:#008000;">SIÊU VIỆT</span> sẽ có trách nhiệm thực hiện những công việc sau:</em></strong></p>\n<p style="text-align:justify;">- Kiểm tra, bảo dưỡng cân chỉnh và vệ sinh máy định kỳ (phần mềm và phần cứng) vào 1 ngày được ấn định hàng tháng.</p>\n<p style="text-align:justify;">- Đến kiểm tra, sửa chữa (miễn phí) vào bất cứ khi nào máy gặp trục trặc.</p>\n<p style="text-align:justify;">- Cho khách hàng mượn máy khác đang trong tình trạng hoạt động tốt khi cần nhiều thời gian cho công việc sửa chữa.</p>\n<p style="text-align:justify;">- Giám định chi tiết và báo giá vật tư, linh kiện (cần thay thế) chính phẩm với mức giá ưu đãi cho khách hàng.</p>\n<p style="text-align:justify;">- Cung cấp cho khách hàng những hướng dẫn sử dụng máy cần thiết.</p>\n<p style="text-align:center;"><span style="font-size:large;"><strong><span style="color:#008000;"> </span></strong></span></p>\n<p style="text-align:center;"><span style="font-size:large;"><strong><span style="color:#008000;">SIÊU VIỆT</span></strong> LUÔN SÁT CÁNH CÙNG THÀNH CÔNG CỦA BẠN !</span></p>\n<p style="text-align:center;"> </p>\n<p style="text-align:center;"> </p>\n<p style="text-align:center;">Hotline: 0937 107 888 - Mr. Nguyên - Phụ trách Kinh doanh.</p>\n<p style="text-align:center;">3A/1 Đoàn Văn Cự, P. Tam Hiệp, TP. Biên Hòa, Tỉnh Đồng Nai<br />Email: nguyensieuviet@yahoo.com.vn<br />Website: www.mayphotocopysieuviet.com</p>\n<p style="text-align:center;"><span style="font-size:large;"> </span></p>', '', 'dich-vu-bao-tri.jpg', 2, '2012-04-12 01:44:54', 2, 0, '', '', 'dich-vu-bao-tri', '', 'Dịch vụ Bảo trì', '', 1, 'mayphotocopysieuviet'),
(7, 'Dịch vụ cho thuê', '', '', '', '<p style="text-align:justify;"><span style="color:#008000;"><strong>DỊCH VỤ THUÊ MÁY VĂN PHÒNG LÀ LOẠI HÌNH DỊCH VỤ ĐƯỢC ÁP DỤNG RỘNG RÃI Ở CÁC NƯỚC PHÁT TRIỂN VÀ Ở VIỆT NAM, NÓ CŨNG ĐANG LÀ SỰ LỰA CHỌN TỐI ƯU CỦA NHIỀU CÔNG TY LIÊN DOANH VÀ CÔNG TY NƯƠC NGOÀI. KHI LỰA CHỌN LOẠI HÌNH NÀY, QUÝ KHÁCH HÀNG KHÔNG PHẢI LO KHOẢN ĐẦU TƯ BAN ĐÂU...</strong></span></p>\n<p style="text-align:justify;"><strong><span style="color:#008000;">SIÊU VIỆT</span> - CHUYÊN CHO THUÊ THIẾT BỊ VĂN PHÒNG SAU:</strong></p>\n<p style="text-align:justify;">- Máy Photocopy đen trắng và màu</p>\n<p style="text-align:justify;">- Máy đa năng (Copy - Fax - In - Scan)</p>\n<p style="text-align:justify;"><strong><span style="color:#008000;">SIÊU VIỆT</span> - PHỤC VỤ</strong></p>\n<p style="text-align:justify;">* Công tác hoạt động văn phòng - dài hạn</p>\n<p style="text-align:justify;">* Các hội nghị, hội thảo - ngắn hạn</p>\n<p style="text-align:justify;">Tất cả các máy cung cấp đều được đảm bảo các tính năng như sau:</p>\n<p style="text-align:justify;">&gt;&gt; Máy copy kỹ thuật số - tính năng cao<br />&gt;&gt; Tốc độ sao chụp – in mạng tối thiểu 23 - 75 trang/phút.<br />&gt;&gt; Máy sao chụp hai mặt tự động - thật tiện lợi trong sử dụng.<br />&gt;&gt; Sao chụp miễn phí 1000 trang mỗi tháng.<br />&gt;&gt; Có khả năng nâng cấp thêm các chức năng fax và quét mạng.</p>\n<p style="text-align:justify;"><strong><span style="color:#008000;">SIÊU VIỆT</span> - NHÀ CUNG CẤP</strong></p>\n<p style="text-align:justify;">Công ty <strong><span style="color:#008000;">SIÊU VIỆT</span></strong> - nhà cung cấp các dịch vụ thuê máy văn phòng uy tín tại Đồng Nai. Mục tiêu trong kinh doanh của <span style="color:#008000;"><strong>SIÊU VIỆT</strong></span> luôn đặt chữ tín lên hàng đầu và xây dựng một hệ thống dịch vụ cho thuê máy văn phòng khép kín. Với kinh nghiệm chuyên sâu về nghành nghề chúng tôi luôn đ­a ra các giải pháp tối ­ưu - tiết kiệm chi phí - linh hoạt trong sử dụng cho các khách hàng có nhu cầu về thiết bị máy văn phòng. Sau quá trình thành lập và phát triển Công ty <strong><span style="color:#008000;">SIÊU VIỆT</span></strong> đã đạt đ­ược nhiều thành qủa cao. Hiện nay Công ty <strong><span style="color:#008000;">SIÊU VIỆT</span></strong> đang thực hiện bảo hành, cho thuê hơn 1000 khách hàng sử dụng các loại thiết bị văn phòng tại Đồng Nai và các tỉnh phía Nam. Các khách hàng quen thuộc sử dụng dịch vụ của chúng tôi đó là các công ty, khách sạn, tổ chức, văn phòng n­ước ngoài có nhu cầu sao chụp in ấn.</p>\n<p style="text-align:justify;"><strong> </strong></p>\n<p style="text-align:center;"><span style="color:#ff0000;font-size:medium;"><strong>&gt;&gt; LIÊN HỆ CHI TIẾT &lt;&lt;</strong></span></p>\n<p style="text-align:center;"><span style="font-size:medium;"><strong><span style="color:#008000;">DNTN SIÊU VIỆT</span></strong></span></p>\n<p style="text-align:center;"><span style="font-size:medium;">3A/1 Đoàn Văn Cự, P. Tam Hiệp, TP. Biên Hòa, Tỉnh Đồng Nai</span><br /><span style="font-size:medium;">Hotline: 0937 107 888 - Mr. Nguyên - Phụ trách Kinh doanh.</span><br /><span style="font-size:medium;">Email: nguyensieuviet@yahoo.com.vn</span><br /><span style="font-size:medium;">Website: www.mayphotocopysieuviet.com</span></p>', '', '', 1, '2012-04-12 01:56:24', 3, 0, '', '', 'dich-vu-cho-thue', '', 'DNTN SIÊU VIỆT', '', 1, 'mayphotocopysieuviet'),
(9, 'Đào tạo kỹ thuật viên', '', '', '', '<p style="text-align:justify;">Truyền đạt nhiệt tình lại toàn bộ lý thuyết và nguyên lý hoạt động cơ bản của máy photocopy đơn giản, dễ hiểu, không giấu nghề.</p>\n<p style="text-align:justify;">Rất thích hợp cho người muốn tìm hiểu thêm về máy photocopy ,làm ktv ,về mở cửa hàng , công ty ,người chưa biết nghề ,thích hợp cho cty cử người đi học sửa chữa cơ bản về máy photocopy đáp ứng nhu cầu sửa chữa cho cơ quan  và công ty. </p>\n<p style="text-align:justify;">Dạy photocopy + sửa chữa cơ bản + Nâng cao.</p>\n<p style="text-align:justify;">Nhằm đào tạo thợ photocopy chuyên nghiệp,tạo công việc làm ổn định học sửa máy photocopy về để tự mở cửa hàng, cho cơ quan, công ty</p>\n<p style="text-align:justify;">Tiết kiệm thời gian, tiền bạc, khỏi phải học nghề tại các cửa hàng mà thời gian kéo dài, không hiệu quả</p>\n<p style="text-align:justify;">Cung cấp thêm các tài liệu nâng cao về máy photocopy như mã code, mode của các dòng máy để tìm hiểu và nâng cao chuyên môn .</p>\n<p style="text-align:justify;"> </p>', '', '', 1, '2012-04-12 02:16:00', 1, 0, '', '', 'dao-tao-ky-thuat-vien', '', 'Đào tạo kỹ thuật viên', '', 1, 'mayphotocopysieuviet');

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
(67, '', '', 'Tư vấn', '1', 1, 'yahoo', 'mayphotocopysieuviet');

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
) ENGINE=InnoDB  DEFAULT CHARSET=utf8 AUTO_INCREMENT=2 ;

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
('keywords', 'Máy in, máy photocopy, máy fax', 'mayphotocopysieuviet'),
('description', 'Chuyên cung cấp, mua bán Máy in, máy photocopy, máy fax', 'mayphotocopysieuviet'),
('title', 'Chuyên cung cấp Máy in, máy photocopy', 'mayphotocopysieuviet');

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
('010312', 'Mẫu than đá', '2012-02-29 11:38:05', 'Chuyên bán các loại than đá, than cám...');

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
('010312', 'about', 'list_supports'),
('010312', 'about', 'menu_about'),
('010312', 'about', 'products_hot'),
('010312', 'contact', 'advs_left'),
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
('010312', 'news', 'menu_news'),
('010312', 'news', 'news_hot'),
('010312', 'news', 'news_new'),
('010312', 'news', 'video_hot'),
('010312', 'products', 'advs_left'),
('010312', 'products', 'list_supports'),
('010312', 'products', 'menu_products'),
('010312', 'products', 'products_hot'),
('010312', 'services', 'advs_left'),
('010312', 'services', 'list_supports'),
('010312', 'services', 'menu_services'),
('010312', 'services', 'news_new'),
('010312', 'services', 'products_hot'),
('010312', 'video', 'advs_left'),
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
('mayphotocopysieuviet', 'info@thuonghoi.com', 'e10adc3949ba59abbe56e057f20f883e', '2012-04-11 20:38:05', '', '', '', 'user', 'vi', '', '2012-05-11 10:00:00', 0, 1, '010312', 19, 'bds-kien-truc-xay-dung');

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
('address1', '3A/1 Đoàn Văn Cự, P. Tam Hiệp, TP. Biên Hòa, Tỉnh Đồng Nai', '', 'mayphotocopysieuviet'),
('address2', '', '', 'mayphotocopysieuviet'),
('advs', 'Đối tác chính', '', 'mayphotocopysieuviet'),
('company_name', 'DNTN SIÊU VIỆT', '', 'mayphotocopysieuviet'),
('company_phone', 'Hotline: 0937 107 888 (Mr. Nguyên)', '', 'mayphotocopysieuviet');

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
