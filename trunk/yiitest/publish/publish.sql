-- phpMyAdmin SQL Dump
-- version 3.4.5
-- http://www.phpmyadmin.net
--
-- Host: localhost
-- Generation Time: Jul 24, 2012 at 09:40 AM
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
('about', 'khungtroiviets'),
('advs', 'khungtroiviets'),
('banner', 'khungtroiviets'),
('contact', 'khungtroiviets'),
('news', 'khungtroiviets'),
('products', 'khungtroiviets'),
('services', 'khungtroiviets'),
('supports', 'khungtroiviets'),
('video', 'khungtroiviets');

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
) ENGINE=InnoDB  DEFAULT CHARSET=utf8 AUTO_INCREMENT=187 ;

--
-- Dumping data for table `dos_module_abouts`
--

INSERT INTO `dos_module_abouts` (`record_id`, `title`, `titleen`, `content`, `contenten`, `hit`, `created`, `record_order`, `hot`, `extra_field1`, `extra_field2`, `tag`, `tagen`, `description`, `descriptionen`, `activated`, `dos_usernames_username`) VALUES
(186, 'CÔNG TY TNHH TM - DV DU LỊCH KHUNG TRỜI VIỆT', '', '<p><strong><span style="color:#0000ff;">Công Ty TNHH TM – DV – Du Lịch KHUNG TRỜI VIỆT</span></strong><br /><strong><span style="color:#0000ff;">Địa chỉ: 303 Nơ Trang Long – F13 – Q.Bình Thạnh - TPHCM</span></strong><br />                                                  <strong><span style="color:#ff0000;font-size:14pt;">ĐẠI LÝ MÁY BAY KHUNG TRỜI VIỆT</span></strong><strong style="color:#ff0000;text-align:left;"><span style="font-size:14pt;">                         </span></strong></p>\n<p style="text-align:left;"><span style="font-size:14pt;"><strong><span style="color:#ff0000;"><span style="color:#0000ff;">Giới Thiệu</span><br /><span style="color:#ff6600;">Lời đầu tiên xin kính chúc Quý công ty, Qúy khách hàng Sức Khoẻ -Thịnh Vượng.</span><br /><span style="color:#0000ff;">Chúng tôi xin giới thiệu:</span><br /><span style="color:#ff6600;">Đại lý vé máy bay KHUNG TRỜI VIỆT chuyên cung cấp các loại vé máy bay quốc nội và quốc tế của các hãng hàng không uy tín ở Việt Nam và trên thế giới với cung cách phục vụ tận tình chu đáo sẽ làm hài lòng quý khách. Đặc biệt Công ty còn cung cấp vé máy bay giá rẻ, vé trong mùa cao điểm nhờ đó quý khách có thể mua vé dễ dàng nhanh chóng và tiết kiệm được rất nhiều chi phí.</span></span></strong></span></p>\n<p><strong><span style="font-size:14pt;color:#000000;"><span style="color:#0000ff;">Chúng tôi cung cấp:</span> <span style="color:#ff6600;">vé máy bay Vietnam Airlines, vé máy bay giá rẻ Jetstar, Air Mekong, Vietjetair, American Airlines, Cathay Pacific, Air Canada, Air France, All Nippon Airways, Asiana Airlines, China Airlines, China Eastern, China Southern, Eva Air, Japan Airlines, Korean Air, Malaysia, Shanghai Airlines, Mandarin Airlines, Air China, British Airways, Royal Brunei, Lot Polish Airlines, Lao Airlines, United Airlines, Air Philippines, Lufthansa, Singapore Airlines, Qatar, Thai Airways, Delta Airlines, Emirates và các loại vé máy bay đi Châu Mỹ, Châu Âu, Châu Á, Châu Úc, Châu Phi.</span></span></strong></p>\n<p style="text-align:left;"> </p>\n<p><strong><span style="font-size:14pt;"><span style="color:#ff6600;">Nhằm mục đích giúp quý khách có thể mua được vé máy bay với giá rẻ nhất,</span> <span style="color:#0000ff;">KHUNG TRỜI VIỆT</span> <span style="color:#ff6600;">luôn liên hệ và cập nhật liên tục thông tin khuyến mãi từ các hãng hàng không. Công việc nhanh chóng, thuận lợi.</span></span></strong></p>\n<p style="text-align:left;"> </p>\n<p><strong><span style="font-size:14pt;"><span style="color:#ff6600;">Với sự đầu tư cơ bản, Chúng tôi đảm bảo chất lượng dịch vụ với khách hàng), với một ý thức trách nhiệm cao, chúng tôi muốn mang lại sự an toàn tuyệt đối cho khách hàng sử dụng dịch vụ tại công ty</span> <span style="color:#0000ff;">KHUNG TRỜI VIỆT</span><span style="color:#ff6600;">, bằng những cam kết trong mỗi dich vụ có giá trị pháp lý và giá trị thực tế đúng như những gì chúng tôi đã thỏa thuận với khách hàng.</span></span></strong></p>\n<p style="text-align:left;"> </p>\n<p><strong><span style="font-size:14pt;"><span style="color:#ff6600;">Nếu bạn đã chọn mua vé của công ty </span><span style="color:#0000ff;">KHUNG TRỜI VIỆT</span> <span style="color:#ff6600;">dù chỉ một lần, chúng tôi tin và hy vọng là các bạn sẽ hoàn toàn cảm thấy hài lòng về mọi mặt. Với mong muốn được phục vụ các khách hàng ngày càng chu đáo hơn, công ty</span> <span style="color:#0000ff;">KHUNG TRỜI VIỆT</span> <span style="color:#ff6600;">luôn sẵn sàng tiếp nhận và biết ơn mọi sự góp ý của các quí khách hàng.</span></span></strong></p>\n<p style="text-align:left;"> </p>\n<p><strong><span style="font-size:14pt;"><span style="color:#ff6600;">Vì vậy nếu quí khách có bất cứ điều gì chưa hài lòng về sản phẩm, dịch vụ hay cung cách phục vụ của Cánh Chim Việt, xin vui lòng phản ánh trực tiếp với</span> <span style="color:#0000ff;">Công Ty ĐT:  08.35 79529 hoặc 0913 928 893</span> <span style="color:#ff6600;">Vào bất cứ lúc nào. Chúng tôi sẽ nhanh chóng giải quyết và có thông tin phản hồi kịp thời cho mọi vướng mắc hay mọi sự chưa hài lòng nào đó của quý khách hàng.</span></span></strong></p>\n<p style="text-align:left;"><span style="font-size:12pt;color:#ff6600;"><strong> </strong></span></p>', '', 377, '2012-06-19 06:43:45', 1, 1, '', '', 'cong-ty-tnhh-tm-dv-du-lich-khung-troi-viet', '', '', '', 1, 'khungtroiviets');

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
) ENGINE=InnoDB  DEFAULT CHARSET=utf8 AUTO_INCREMENT=444 ;

--
-- Dumping data for table `dos_module_advs`
--

INSERT INTO `dos_module_advs` (`record_id`, `title`, `titleen`, `pic_thumb`, `url`, `create_date`, `start_date`, `end_date`, `hits`, `record_order`, `position`, `type`, `enable`, `dos_usernames_username`) VALUES
(439, 'Left', '', 'left.jpg', 'http://khungtroiviets.dos.vn', '2012-07-17 08:41:49', '2012-07-16 16:00:00', '2012-07-30 16:00:00', 0, 2, 'top', '_bank', 1, 'khungtroiviets'),
(440, 'Left2', '', 'left2.jpg', 'http://khungtroiviets.dos.vn', '2012-07-17 08:45:39', '2012-07-16 16:00:00', '2012-07-30 16:00:00', 0, 3, 'top', '_bank', 1, 'khungtroiviets'),
(441, 'Quảng cáo1', '', 'quang-cao1.JPG', 'http://khungtroiviets.dos.vn/', '2012-07-18 07:11:57', '2012-07-17 16:00:00', '2012-07-30 16:00:00', 0, 4, 'left', '_bank', 1, 'khungtroiviets'),
(443, 'Quảng cáo2', '', 'quang-cao2.jpg', 'http://khungtroiviets.dos.vn', '2012-07-18 08:09:42', '2012-07-17 16:00:00', '2012-07-30 16:00:00', 0, 5, 'left', '_bank', 1, 'khungtroiviets');

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
) ENGINE=InnoDB  DEFAULT CHARSET=utf8 AUTO_INCREMENT=1717 ;

--
-- Dumping data for table `dos_module_banners`
--

INSERT INTO `dos_module_banners` (`banner_id`, `banner_date`, `banner_name`, `banner_url`, `banner_link`, `banner_order`, `banner_type`, `position`, `enable`, `dos_usernames_username`) VALUES
(1711, '2012-07-18 07:08:17', 'LOGO', 'logo.jpg', '', 1, 'logo', 'default', 1, 'khungtroiviets'),
(1713, '2012-07-19 07:37:43', 'banner 1', 'banner-1.jpg', 'http://khungtroiviets.dos.vn/', 2, 'banners', 'default', 1, 'khungtroiviets'),
(1714, '2012-07-19 07:43:02', 'banner 2', 'banner-2.jpg', 'http://khungtroiviets.dos.vn/', 3, 'banners', 'default', 1, 'khungtroiviets'),
(1715, '2012-07-19 07:51:21', 'banner 3', 'banner-3.jpg', 'http://khungtroiviets.dos.vn/', 4, 'banners', 'default', 1, 'khungtroiviets'),
(1716, '2012-07-19 08:13:36', 'banner 4', 'banner-4.jpg', '', 5, 'banners', 'default', 1, 'khungtroiviets');

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
) ENGINE=InnoDB  DEFAULT CHARSET=utf8 AUTO_INCREMENT=26 ;

--
-- Dumping data for table `dos_module_contacts`
--

INSERT INTO `dos_module_contacts` (`record_id`, `title`, `titleen`, `content`, `contenten`, `create_date`, `record_order`, `hit`, `hot`, `tag`, `tagen`, `description`, `descriptionen`, `enable`, `dos_usernames_username`) VALUES
(25, 'CÔNG TY TNHH TM - DV DU LỊCH KHUNG TRỜI VIỆT', '', '<p>Trụ sở chính: 303 Nơ Trang Long - F13 - Q.Bình Thạnh</p>\n<p>Địa chỉ giao dịch: 303 Nơ Trang Long - F13 - Q.Bình Thạnh</p>\n<p>Điện Thoại: 0913 928 893</p>\n<p>Fax: 08 - 3553 1329</p>', '', '2012-06-22 11:12:03', 1, 0, 0, 'cong-ty-tnhh-tm-dv-du-lich-khung-troi-viet', '', 'Chúng tôi sẽ phản hồi trong thời gian sớm nhất, cám ơn đã gởi thông tin!', '', '1', 'khungtroiviets');

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
('Trang chủ', '', 'default', '', 1, 'Hướng dẫn nhập liệu website', '', 'Hướng dẫn nhập liệu web, huong dan nhap lieu web, huong dan nhap lieu website, quan tri web, quản trị website, web dos, đăng nhập web, web trực tuyến, tao web truc tuyen, tao website truc tuyen, tạo website trực tuyến, thiet ke web, website gia re, w', '', 'khungtroiviets'),
('Giới thiệu', '', 'about', '', 2, '', '', '', '', 'khungtroiviets'),
('Du Lịch', '', 'products', '', 3, '', '', '', '', 'khungtroiviets'),
('Dịch vụ', '', 'services', '', 4, '', '', '', '', 'khungtroiviets'),
('Tin tức & sự kiện', '', 'news', '', 5, '', '', '', '', 'khungtroiviets'),
('Video', '', 'video', '', 6, '', '', '', '', 'khungtroiviets'),
('Liên hệ', '', 'contact', '', 7, '', '', '', '', 'khungtroiviets');

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
) ENGINE=InnoDB  DEFAULT CHARSET=utf8 AUTO_INCREMENT=242 ;

--
-- Dumping data for table `dos_module_news`
--

INSERT INTO `dos_module_news` (`record_id`, `title`, `titleen`, `postdate`, `pic_thumb`, `preview`, `previewen`, `content`, `contenten`, `tag`, `tagen`, `description`, `descriptionen`, `hits`, `record_order`, `hot`, `extra_field1`, `extra_field2`, `enable`, `dos_module_item_cat_cat_id`) VALUES
(239, 'Vietnam Airlines chính thức nắm cổ phần Jetstar Pacific từ SCIC', '', '2012-06-22 06:01:05', 'vietnam-airlines-chinh-thuc-nam-co-phan-jetstar-pacific-tu-scic.jpg', '<p>Tổng Công ty Hàng không Việt Nam (Vietnam Airlines)đã chính thức công bố tiếp nhận quyền đại diện phần vốn Nhà nước của Jetstar Pacific từ Tổng Công ty Đầu tư và Kinh doanh vốn Nhà nước (SCIC). Văn bản bàn giao quyền đại diện đã được ký kết hôm nay (21/2)<br />Như vậy, Vietnam Airlines đã kế thừa toàn bộ vốn Nhà nước của Jetstar Pacific và chính thức trở thành cổ đông Nhà nước tại Jetstar Pacific. Đây là “thương vụ” điều chuyển vốn chưa từng có trong lịch sử hàng không Việt Nam.</p>', '', '<p>Tổng Công ty Hàng không Việt Nam (Vietnam Airlines)đã chính thức công bố tiếp nhận quyền đại diện phần vốn Nhà nước của Jetstar Pacific từ Tổng Công ty Đầu tư và Kinh doanh vốn Nhà nước (SCIC). Văn bản bàn giao quyền đại diện đã được ký kết hôm nay (21/2)<br />Như vậy, Vietnam Airlines đã kế thừa toàn bộ vốn Nhà nước của Jetstar Pacific và chính thức trở thành cổ đông Nhà nước tại Jetstar Pacific. Đây là “thương vụ” điều chuyển vốn chưa từng có trong lịch sử hàng không Việt Nam.</p>\n<p>Vietnam Airlines đã tiếp nhận Jetstar Pacific và là đại diện vốn Nhà nước của hãng này<br />Cùng với việc đạt được thỏa thuận hợp tác phát triển Công ty cổ phần Hàng không Jetstar Pacific Airlines với Tập đoàn Qantas - Úc (Công ty mẹ của Tập đoàn Jetstar), Vietnam Airlines đã trở thành cổ đông lớn nhất tại Jetstar Pacific với tỷ lệ nắm giữ cổ phần là 69, 93%. Tập đoàn Qantas của Úc là cổ đông lớn thứ hai với tỷ lệ vốn góp 27%. Theo kế hoạch, Vietnam Airlines sẽ bán cho Qantas Airways 3% cổ phần theo thỏa thuận trước đây giữa Qantas Airways với SCIC đã được Chính phủ thông qua.</p>\n<p>Ngay trong ngày bàn giao quyền đại diện vốn, Jetstar Pacific đã tổ chức Đại hội cổ đông bất thường để thống nhất định hướng chiến lược và các giải pháp cần thiết giúp hãng này phát triển hiệu quả và bền vững, trở thành hãng hàng không giá rẻ hàng đầu tại Việt Nam.</p>\n<p>Ngay sau khi tiếp chuyển, đại hội cổ đông bất thường đã được tổ chức<br />Được biết, Jetstar Pacific sẽ được rót khoản vốn ban đầu 25 triệu đô la Úc để đổi mới đội máy bay Boeing 737 hiện tại sang đội bay Airbus A320 mới vào giữa năm 2012, cũng như mở rộng đội bay của hãng lên 15 chiếc trong thời gian tới.Theo đó, Jetstar Pacific sẽ tập trung khai thác có hiệu quả các tuyến đường bay nội địa, đường bay quốc tế có dung lượng lớn và phân khúc thị trường khách hàng đa dạng.</p>\n<p>Ông Phạm Ngọc Minh - Tổng Giám đốc Vietnam Airlines cho rằng việc các cổ đông của Jetstar Pacific đạt được thỏa thuận về kế hoạch phát triển theo hướng kết hợp ưu điểm của mô hình hãng hàng không giá rẻ với tiềm lực và nền tảng kinh nghiệm của Vietnam Airlines sẽ tạo nên sức sống mới cho Jetstar Pacific và mang lại cho khách hàng của hãng thêm nhiều lợi ích, đồng thời góp phần thúc đẩy sự phát triển của thị trường hàng không Việt Nam nói chung.</p>\n<p>Còn đại diện Jetstar Group là Tổng Giám đốc Bruce Buchanan tin tưởng quan hệ hợp tác giữa một hãng hàng không chi phí thấp và một hãng hàng không truyền thống sẽ tiếp nối thành công của mô hình hợp tác giữa Qantas và Jetstar tại Úc. Ông Bruce Buchanan cũng nhận thấy những dấu hiệu tích cực để có thể tạo ra phân thị khách hàng mới sử dụng dịch vụ hàng không tại Châu Á, kể cả tại Việt Nam do sự hiện diện của hàng không giá rẻ còn mờ nhạt.</p>\n<p>Trước đó, hoạt động theo mô hình hàng không giá rẻ trong nhiều nhưng Jetstar Pacific khai thác không hiệu quả, thua lỗ kéo dài. Dù đã thực hiện tái cơ cấu Jetstar Pacific nhưng tình hình cũng không mấy khả quan, vì thế để giải quyết khó khăn hiện nay của Jetstar Pacific thì sắp xếp và tái cơ cấu doanh nghiệp là việc cần thiết.</p>\n<p>Liên tiếp trong nhiều phiên họp họp bàn, đại diện cổ đông lớn nhất của Jetstar Pacific là SCIC đã báo cáo Thủ tướng về phương án chuyển giao vốn Nhà nước của Jetstar Pacific vào Vietnam Airlines được cho là khả thi nhất.</p>\n<p>Đến trung tuần tháng 1 vừa qua, Thủ tướng Chính phủ đã ra quyết định điều chuyển nguyên trạng quyền đại diện vốn Nhà nước tại Công ty Cổ phần Hàng không Jetstar Pacific đang do SCIC nắm giữ sang Vietnam Airlines, việc điều chuyển vào thời điểm đó dự kiến sẽ hoàn tất trước ngày 15/2.</p>\n<p>Trao đổi với Dân trí, đại diện Cục Hàng không Việt Nam nhìn nhận, với việc chuyển giao vốn này thì Vietnam Airlines chỉ nắm giữ về phần vốn và cử đại diện sang Jetstar Pacific tham gia vào Hội đồng Quản trị để điều hành quản lý chứ không phải là chuyển toàn bộ Jetstar Pacific về Vietnam Airlines, cũng không phải Jetstar Pacific sẽ trực thuộc Vietnam Airlines. Điều này có nghĩa là sau khi điều chuyển vốn thì Jetstar Pacific vẫn là 1 doanh nghiệp kinh doanh độc lập trong lĩnh vực hàng không và tiếp tục hoạt động trong phân khúc thị trường hàng không giá rẻ.</p>\n<p>Quỳnh Anh</p>\n<p> </p>', '', 'vietnam-airlines-chinh-thuc-nam-co-phan-jetstar-pacific-tu-scic', '', '', '', 0, 1, 1, '', '', 1, 143),
(240, 'Đại lý vé máy bay lừa đảo hành khách', '', '2012-06-22 06:05:16', 'ai-ly-ve-may-bay-lua-dao-hanh-khach.jpg', '<p>Thu tiền, xuất vé nhưng hành khách tới sân bay mới biết mình không có chỗ, nhiều người phải mua lại vé khác. Trong khi đó, nơi bán - phòng vé Én Bạc đã đóng cửa nhiều ngày nay.</p>', '', '<p><strong>Thu tiền, xuất vé nhưng hành khách tới sân bay mới biết mình không có chỗ, nhiều người phải mua lại vé khác. Trong khi đó, nơi bán - phòng vé Én Bạc đã đóng cửa nhiều ngày nay.</strong></p>\n<p>Sau kỳ nghỉ Tết, anh An cùng gia đình đến sân bay Đà Nẵng ngày 30/1 để về TP HCM. Khi làm thủ tục cả nhà bàng hoàng khi biết 4 vé của gia đình mình không có mã đặt chỗ.</p>\n<p>"Lúc đó, tôi gọi ngay cho phòng vé Én Bạc ở TP HCM nơi đã mua vé thì không liên lạc được, số di động cũng tắt máy. Hỏi kỹ lại nhân viên sân bay thì họ khẳng định không có mã đặt chỗ của chúng tôi", anh Nguyễn Tâm An cho biết.</p>\n<p>Anh An với tấm vé máy bay của đại lý Én Bạc. Ảnh: Kiên Cường<br />Sợ có sai sót, anh An đổi quầy làm thủ tục nhưng các quầy đều cho kết quả như nhau. Mọi cố gắng liên hệ với nơi bán vé đều không được, anh An đành móc tiền túi mua lại 4 vé máy bay để bay vào TP HCM.</p>\n<p>Trên vé máy bay mà Én Bạc đã xuất cho anh An ghi tên họ 4 hành khách, hành trình từ Đà Nẵng vào TP HCM lúc 17h50 ngày 30/1 trên chuyến bay VN 7309K của Vietnam Airlines, với tổng số tiền hơn 7,2 triệu đồng.</p>\n<p>Trao đổi với VnExpress.net, đại diện Vietnam Airlines tại miền Trung khẳng định chuyến bay VN 7309 K đúng là xuất phát từ Đà Nẵng vào TP HCM lúc 17h50 ngày 30/1 nhưng không có thông tin xuất vé của 4 hành khách gia đình anh An.</p>\n<p><img style="margin-left:auto;margin-right:auto;" src="/public/userfiles/image/khungtroiviets/image/banner/daily-5.jpg" alt="Vé máy bay của Én Bạc. Ảnh: Kiên Cường" width="350" height="479" /></p>\n<p>Vé máy bay của Én Bạc. Ảnh: Kiên Cường<br />"Đại lý bán vé đã thu tiền nhưng không xuất vé cho anh An, vé mà anh An cầm đến sân bay chỉ ghi tên hành khách và không có mã đặt chỗ. Én Bạc không phải là đại lý của Vietnam Airlines, hành khách cần lưu ý đến các đại lý chính thức của hãng để tránh bị lừa đảo như trường hợp nêu trên", đại diện Vietnam Airlines nói.</p>\n<p>Không riêng anh An, hành khách Nguyễn Duy Thắng ở TP HCM cũng bị trường hợp tương tự. Anh Thắng cho biết nhiều năm nay đã mua vé tại Én Bạc nên khá tin tưởng, nhưng lần này mới biết mình bị lừa.</p>\n<p>"Tôi mua vé cho cháu Nguyễn Duy Khánh, 23 tuổi, khứ hồi TP HCM - Hà Nội, chặng đi không sao, nhưng khi về ngày 1/2 Khánh ra tới sân bay Nội Bài thì được thông báo là mã đặt chỗ đã bị hủy", anh Thắng kể lại. Tin nhắn mà Én Bạc gửi cho anh Thắng ghi hành khách Nguyễn Duy Khánh đi từ Hà Nội về TP HCM trên chuyến bay VN 1179 lúc 10h ngày 1/2</p>\n<p><img style="margin-right:auto;margin-left:auto;vertical-align:middle;" title="Phòng vé Én Bạc đóng cửa nhiều ngày nay." src="/public/userfiles/image/khungtroiviets/image/news/daily.jpg" alt="Phòng vé Én Bạc đóng cửa nhiều ngày nay. Ảnh: Kiên Cường" width="490" height="341" /></p>\n<p> </p>\n<p>Ngay lập tức, anh gọi điện thoại cho phòng vé Én Bạc nhưng không liên lạc được, tới thẳng phòng vé, anh thấy có nhiều người bị lừa như mình đang vây quanh phòng vé này. Những khách hàng đến đây cho biết, phòng vé Én Bạc số 1126 đường Lạc Long Quân, phường 8, quận Tân Bình đã đóng cửa và họ không liên lạc được với ai.</p>\n<p>Một phụ nữ cho biết nhiều ngày nay anh Quốc (chủ phòng vé) đã không có mặt. "Rất nhiều người đến đây khiếu nại về việc bị lừa đảo vé máy bay, tôi cũng gọi anh Quốc nhiều lần nhưng không được. Đây là địa chỉ thuê", người phụ nữ này nói. Chị cho biết công ty cũng thuê mặt bằng ở tòa nhà này chứ mình không phải nhân viên Én Bạc.</p>\n<p>Hiện các số máy đi động của người đại diện Én Bạc là Quốc đều tắt máy, 2 số cố định của phòng vé này đều không liên lạc được.</p>\n<p style="text-align:right;">Kiên Cường</p>', '', 'dai-ly-ve-may-bay-lua-dao-hanh-khach', '', 'Anh An với tấm vé máy bay của đại lý Én Bạc. Ảnh: Kiên Cường', '', 0, 2, 1, '', '', 1, 143),
(241, 'Hàng trăm khách bị bỏ rơi vì tài xế xe buýt lãn công', '', '2012-06-22 06:20:31', '', '<p>Sáng 20/4, hàng loạt xe buýt tuyến 150 (Bến xe Tân Vạn - Chợ Lớn) không chịu xuất bến khiến nhiều hành khách "khóc dở mếu dở" vì trễ giờ</p>', '', '<p>Sáng 20/4, hàng loạt xe buýt tuyến 150 (Bến xe Tân Vạn - Chợ Lớn) không chịu xuất bến khiến nhiều hành khách "khóc dở mếu dở" vì trễ giờ.</p>\n<p>8h sáng, nữ sinh Nguyễn Ngọc Hà, trường đại học dân lập Kỹ thuật Công nghệ TP HCM vẫn nhẫn nại đứng chờ trước cổng bến xe Tân Vạn (phường Bình Thắng, Dĩ An, Bình Dương). Đây là phương tiện mỗi ngày cô dùng để đến trường nên sự cố của nhà xe khiến cô đứng ngồi không yên. "Sáng nay em có buổi học quan trọng trong lớp nhưng không có xe đến trường", Hà bức xúc.</p>\n<p> </p>\n<p><img style="margin-left:auto;margin-right:auto;" src="/public/userfiles/image/khungtroiviets/image/news/taixe.jpg" alt="Tài xế và nhân viên xe buýt ngưng hoạt động để phản đối bản nội quy mới của Hợp tác xã vận tải 19/5. Ảnh: Vĩnh Phú" width="480" height="302" /></p>\n<p style="text-align:center;">Tài xế và nhân viên xe buýt ngưng hoạt động để phản đối bản nội quy mới của Hợp tác xã vận tải 19/5. Ảnh: Vĩnh Phú</p>\n<p>Tài xế và nhân viên xe buýt ngưng hoạt động để phản đối bản nội quy mới của Hợp tác xã vận tải 19/5. Ảnh: Vĩnh Phú.Nhiều người đã chấp nhận đón những chuyến xe trái tuyến như: 602, Vũng Tàu - Suối Tiên... tìm đường đi. Các tài xế xe ôm được một buổi sáng "trúng mánh" vì nhiều hành khách thuê trong cự ly ngắn.Anh Kiệt, tay lỉnh kỉnh đồ đạc ngồi trong quán cà phê cạnh bến xe này cho biết, 7h sáng anh đã ra đón xe. "Tôi định đi xe buýt ra Bến xe Chợ Lớn về Miền Tây thăm bà con, nhưng ra đến nơi đã thấy hàng trăm người đứng ngồi nhốn nháo trước cổng. Tôi nán chờ hơn 1 giờ nhưng vẫn không thấy xe nào xuất bến", anh Kiệt nói.Theo nhiều tài xế và nhân viên, lý do họ không chịu đưa đón khách từ 6h sáng nay là do nhận được thông báo của Hợp tác xã vận tải 19/5 (đơn vị chủ quản) điều chỉnh nội quy áp dụng trên tuyến xe buýt này. Trong đó có nhiều điều như thưởng phạt, thời gian làm việc, chế độ… mà theo họ là bất hợp lý, gây thiệt hại và ảnh hưởng đến quyền lợi.Theo tài xế và nhân viên xe buýt tuyến 150 bản nội quy vừa được ký của hợp tác xã 19/5 có nhiều điều không hợp lý. Ảnh: Vĩnh Phú.Ngay sau khi sự việc xảy ra, hàng chục dân phòng kết hợp cùng công an xã Bình Thắng (huyện Dĩ An, Bình Dương) đã có mặt để ổn định trật tự, giải quyết tình trạng đình trệ tuyến xe buýt liên tỉnh này.Đến hơn 9h, sau khi làm việc với công an xã Bình Thắng, ông Nguyễn Văn Tới, Phó chủ nhiệm Hợp tác xã 19/5 đã tổ chức họp khẩn và động viên anh em quay lại làm việc.Lực lượng dân phòng tham gia bảo đảm an ninh trật tự trước Bến xe Tân Vạn. Ảnh: Vĩnh Phú.Sau đó, hoạt động tại bến xe Tân Vạn đã trở lại bình thường. Tuy nhiên, nhiều tài xế cho rằng, nếu yêu cầu của họ không được giải quyết thỏa đáng sẽ tiếp tục ngừng làm việc.Xe buýt 150 là tuyến chạy liên tỉnh bắt đầu từ Bến xe Tân Vạn (Bình Dương) và điểm đến TP HCM là Bến xe Chợ Lớn. Do hành trình tuyến đi qua nhiều con đường trung tâm TP HCM nên có đến hàng nghìn hành khách đi lại trên tuyến này.Vĩnh Phú<br />8h sáng, nữ sinh Nguyễn Ngọc Hà, trường đại học dân lập Kỹ thuật Công nghệ TP HCM vẫn nhẫn nại đứng chờ trước cổng bến xe Tân Vạn (phường Bình Thắng, Dĩ An, Bình Dương). Đây là phương tiện mỗi ngày cô dùng để đến trường nên sự cố của nhà xe khiến cô đứng ngồi không yên. "Sáng nay em có buổi học quan trọng trong lớp nhưng không có xe đến trường", Hà bức xúc.</p>', '', 'hang-tram-khach-bi-bo-roi-vi-tai-xe-xe-buyt-lan-cong', '', '', '', 0, 3, 1, '', '', 1, 144);

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
) ENGINE=InnoDB  DEFAULT CHARSET=utf8 AUTO_INCREMENT=147 ;

--
-- Dumping data for table `dos_module_news_cat`
--

INSERT INTO `dos_module_news_cat` (`cat_id`, `cat_parent_id`, `cat_title`, `cat_titleen`, `preview`, `previewen`, `tag`, `tagen`, `description`, `descriptionen`, `pic_full`, `cat_order`, `cat_extra1`, `cat_extra2`, `cat_enable`, `dos_usernames_username`) VALUES
(143, 0, 'Tin hàng không', '', '', '', 'tin-hang-khong', '', '', '', '', 1, '', '', 1, 'khungtroiviets'),
(144, 0, 'Tin xã hội', '', '', '', 'tin-xa-hoi', '', '', '', '', 2, '', '', 1, 'khungtroiviets'),
(145, 0, 'Bản tin khung trời việt', '', '', '', 'ban-tin-khung-troi-viet', '', '', '', '', 3, '', '', 1, 'khungtroiviets'),
(146, 0, 'Tin khuyến mãi tổng hợp', '', '', '', 'tin-khuyen-mai-tong-hop', '', '', '', '', 4, '', '', 1, 'khungtroiviets');

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
('day_time', 2456133),
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
('''127.0.0.1''', 1343114394);

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
) ENGINE=InnoDB  DEFAULT CHARSET=utf8 AUTO_INCREMENT=5591 ;

--
-- Dumping data for table `dos_module_products`
--

INSERT INTO `dos_module_products` (`record_id`, `title`, `titleen`, `postdate`, `pic_thumb`, `pic_full`, `pic_desc`, `preview`, `previewen`, `content`, `contenten`, `tag`, `tagen`, `description`, `descriptionen`, `hits`, `record_order`, `unit`, `hot`, `specials`, `extra_field1`, `extra_field2`, `extra_field3`, `extra_field4`, `enable`, `dos_module_item_cat_cat_id`) VALUES
(4373, 'ĐÀ LẠT – THÀNH PHỐ NGÀN HOA', '', '2012-07-06 07:51:38', '-lt--thnh-ph-ngn-hoa-thumb.jpg', '', '', '<h2><img style="color:#0000ff;" src="/public/userfiles/image/khungtroiviets/image/dalat.jpg" alt="" width="610" height="170" /></h2>\n<h2><span style="color:#0000ff;">Thời gian:</span> <span style="color:#ff6600;">04 ngày 03 đêm</span><br /><span style="color:#0000ff;">Phương tiện:</span> <span style="color:#ff6600;">Xe máy lạnh</span><br /><span style="color:#0000ff;">Khởi hành:</span> <span style="color:#ff6600;">Thứ 3, thứ 5, chủ nhật</span></h2>', '', '<h3><strong><span style="color:#0000ff;"><img src="/public/userfiles/image/khungtroiviets/image/dalat.jpg" alt="" width="610" height="170" /></span></strong></h3>\n<h2><strong><span style="color:#0000ff;">Thời gian:<span style="color:#ff6600;"> 04 ngày 03 đêm</span><br />Phương tiện: <span style="color:#ff6600;">Xe máy lạnh</span><br />Khởi hành:<span style="color:#ff6600;"> Thứ 3, thứ 5, chủ nhật</span></span></strong></h2>\n<h3><strong><span style="color:#0000ff;">Ngày 1: TP.HCM – THÁC DAMBRI – ĐÀ LẠT (ĂN 3 BỮA)</span></strong><br />Sáng: Xe và hướng dẫn viên Lạc Việt Tourist đón du khách tại điểm hẹn, khởi hành đi Đà Lạt. Dùng điểm tâm tại ngã ba Dầu Giây. Tiếp tục lộ trình du khách sẽ ngoạn cảnh Rừng Cây Giá Tỵ, làng nuôi cá bè. Đến Bảo Lộc dùng cơm trưa.</h3>\n<h3>Chiều: Tiếp tục lộ trình đi Đà Lạt tham quan Thác Dambri: Một trong thác nước đẹp nhất Lâm Đồng, tham quan thác Dasara. Đến Đà Lạt nhận phòng. Dùng cơm chiều.</h3>\n<h3>Tối : Du khách dạo phố núi hay thưởng thức cà phê Thủy Tạ (tự túc)</h3>\n<h3><span style="color:#0000ff;">Ngày 2: LANGBIANG – THUNG LŨNG VÀNG – VƯỜN HOA (ĂN 3 BỮA)</span><br />Sáng: Dùng điểm tâm Buffet. Xe đưa khách tham quan Thung Lũng Vàng: Tại đây du khách có thể thưởng ngoạn nhiều phong cảng tuyệt đẹp với hàng trăm loài hoa khoe sắc, tiếp tục đến khu vực xã Lát, nhà thờ Gỗ, chinh phục đỉnh Langbiang, du khách có thể ngắm toàn cảnh Thác Anknoet, hồ Dankia, suối Vàng- suối Bạc từ trên đỉnh Langbiang (tự túc xe Jeep): Nơi đây từng lưu dấu chân Bác sĩ Yersin trong hành trình khám phá Cao Nguyên. Về nhà hàng dùng cơm trưa.</h3>\n<h3>Chiều: Tham quan Vườn Hoa Bích Câu, viếng chùa Linh Phước với Đại Hồng Chung và kết hợp với lối kiến trúc độc đáo của Đà Lạt. Về nhà hàng dùng cơm chiều.</h3>\n<h3>Tối: Du khách dạo phố núi hay sinh hoạt tự do.</h3>\n<h3><strong><span style="color:#0000ff;">NGÀY 3: ĐỒI MỘNG MƠ – DINH BẢO ĐẠI – THIỀN VIỆN (ĂN 3 BỮA)</span></strong><br />Sáng: Dùng điểm tâm Buffet, du khách tham quan nhà thờ Domain De Marie, Đồi Mộng Mơ: Tại đây quý khách dạo chơi vườn hoa cây cảnh, khu nhà cổ với tuổi đời 300, trích đoạn Vạn Lý Trường Thành, Mộng Mơ Tửu và gian hàng đá cảnh, thưởng thức Cồng Chiêng Tây Nguyên. Về nhà hàng dùng cơm trưa.</h3>\n<h3>Chiều: Xe đưa du khách đến Biệt Điện Bảo Đại (Dinh III) nơi sinh sống của gia đình vị hoàng đế cuối cùng của triều đại phong kiến Việt Nam, tiếp tục đến đồi Rô Bin chụp hình và ngắm toàn cảnh TP.Đà Lạt qua kính Viễn Vọng hay đi cáp treo đến viếng Thiền Viện Trúc Lâm: Đây là một ngôi chùa với nét kiến trúc độc đáo của Cao Nguyên Lâm Viên Bên Rặng Núi Voi.</h3>\n<h3>Tối: Đến nhà hàng dùng liên hoan tối với đặc sản Đà Lạt: Tả pín lù, rau trộn….</h3>\n<h3><span style="color:#0000ff;"><strong>NGÀY 4: ĐÀ LẠT – THÁC DATANLA – TP.HCM (ĂN 2 BỮA)</strong></span><br />Sáng :Dùng điểm tâm Buffet. Xe đưa du khách đi chợ Đà Lạt mua quà và đặc sản ,tiếp tục đến với thắng cảnh thác Datanla: Du khách có thể đi máng trượt (chi phí tự túc). Khởi hành về TP.HCM, đến Bảo Lộc dùng cơm trưa. Thưởng thức trà, cafe miễn phí tại một danh trà.</h3>\n<h3>Chiều: Về đến TP.HCM, xe HDV Lạc Việt Tourist đưa du khách về lại điểm hẹn.<br />Chào Tạm Biệt Và Hẹn Gặp Lại.</h3>\n<h3>BẢNG GIÁ TOUR: ĐƠN VỊ TÍNH: VNĐ (VIỆT NAM ĐỒNG)<br />KHÁCH SẠN GIÁ TRỌN GÓI/ KHÁCH PHỤ THU<br />PHÒNG 2-3 KHÁCH PHÒNG ĐƠN NGOẠI QUỐC<br />STANDARD 1.885.000 378.000<br />200.000<br />2 SAO 2.050.000 458.000<br />3 SAO 2.250.000 788.000<br />4 SAO 2.850.000 1.578.000</h3>\n<h3><span style="color:#0000ff;"><strong>BAO GỒM:</strong></span><br />Vận chuyển : Xe du lịch đời mới máy lạnh .<br />Khách Sạn : STANDARD : LÊ VŨ,THANH HIỀN, MINH ĐỨC,…<br />2 SAO : BEST,HÀNG KHÔNG,HÙNG PHONG ,PK<br />3 SAO : CẨM ĐÔ,VIETSOPETRO.MAI VÀNG …<br />4 SAO : GOLF III,NOVOTEL,HOÀNG ANH RESORT…<br />Ăn uống : 01 Bữa ăn sáng + 07 Bữa ăn chính+ 03 bữa buffet sáng</h3>\n<h3>- Ăn sáng gồm :Hủ tiếu, Bún Bò, Phở, Bánh Mì Ốp La, Bánh Canh + Cà Phê Đá, Đá Chanh, Nước Ngọt Chai, Sữa Đậu Nành Chai, ...<br />- Ăn trưa gồm 05 món: 02 món mặn + 01 món xào + 01 món canh + 01 rau trộn + trái cây + cơm trắng + trà đá. - Đặc biệt có 01 bữa ăn Liên Hoan.<br />- Quý khách ăn tự túc trừ lại 400.000 đồng/khách.<br />Dịch vụ khác:<br />- Hướng dẫn viên du lịch sẽ hướng dẫn phục vụ cho đoàn suốt tuyến.<br />- Vé vào cổng tham quan các thắng cảnh.<br />- Khách được bảo hiểm trọn tour với phí bồi thường cao nhất :10.000.000 đồng<br />Quà Tặng:<br />- Mỗi khách được tặng nón du lịch,khăn lạnh, nước suối.</h3>\n<h3><strong><span style="color:#0000ff;">KHÔNG BAO GỒM:</span></strong><br />- Ăn uống ngoài chương trình, xe đạp đôi, Cáp treo đi thiền Viện Trúc Lâm, ghe đi hồ Tuyền Lâm, xe lên đỉnh Langbiang, cưỡi voi, máng trượt Thác Datanla, giặt ủi và chi phí cá nhân.</h3>\n<h3><strong><span style="color:#0000ff;">GIÁ VÉ TRẺ EM</span></strong><br />- Trẻ em từ 12 tuổi trở lên phải mua 1 vé. Trẻ em từ 6 tuổi đến 11 tuổi mua ½ vé tiêu chuẩn như người lớn nhưng ngủ ghép cha mẹ, trẻ em thứ 2 phải mua 01 vé.<br />- Trẻ em dưới 6 tuổi cha mẹ tự lo, trẻ em thứ 2 phải mua ½ vé.<br />- Khi đi quý khách nhớ mang theo CMND hay Passport, áo gió, hành lý gọn nhẹ.</h3>\n<h3><span style="color:#0000ff;">Mọi chi tiết xin lien hệ: 0935 090 286</span></h3>', '', 'da-lat-thanh-pho-ngan-hoa', '', '', '', 0, 1, '', 1, 0, '', '', '', '', 1, 678),
(4374, 'ĐÀ NẴNG - HỘI AN - HUẾ - PHONG NHA', '', '2012-07-06 08:00:17', '-nng-hi-an-hu-phong-nha-thumb.jpg', '', '', '<p> </p>\n<p><span style="color:#0000ff;"><img src="/public/userfiles/image/khungtroiviets/image/hoian2.jpg" alt="" width="610" height="170" /></span></p>\n<h2><span style="color:#0000ff;">Thời gian:</span> <span style="color:#ff6600;">4ngày 3đêm</span></h2>\n<h2><span style="color:#0000ff;">Phương tiện:</span> <span style="color:#ff6600;">Đi về máy bay</span></h2>\n<h2><span style="color:#0000ff;">Khởi hành:</span> <span style="color:#ff6600;">Thứ 5 hàng tuần</span></h2>', '', '<p><strong><span style="color:#0000ff;"><img src="/public/userfiles/image/khungtroiviets/image/hoian2.jpg" alt="" width="610" height="170" /></span></strong></p>\n<p><strong><span style="color:#0000ff;">Thời gian:</span><span style="color:#ff6600;"> 4ngày 3đêm</span></strong><br /><strong><span style="color:#0000ff;">Phương tiện:</span><span style="color:#ff6600;"> Đi về máy bay</span></strong><br /><strong><span style="color:#0000ff;">Khởi hành:</span> <span style="color:#ff6600;">Thứ 5 hàng tuần</span></strong></p>\n<p><strong>Huế là xứ sở thanh bình của thơ và mộng. Nói đến Huế là nói đến cái gì đó rất riêng, rất đẹp và thơ. Từ muôn thuở, chiếc nón bài thơ cùng với tà áo dài của thiếu nữ Huế đã đi vào thi ca, trở thành một vẻ đẹp đặc trưng làm say lòng du khách…!</strong></p>\n<p><strong><span style="color:#0000ff;">NGÀY 1: TP.HCM – ĐÀ NẴNG – HỘI AN (ĂN 2 BỮA)</span></strong><br /><strong>Sáng : Hướng dẫn viên Lạc Việt Tourist đón du khách tại sân bay Tân Sơn Nhất làm thủ bay đi Đà Nẵng. Xe đón đưa du khách tham quan Ngũ Hành Sơn, chinh phục đỉnh Thuỷ Sơn với chùa Tam Thai, Vọng Giang Đài, Huyền Không động, hang Cổng Trời, động Tàng Chơn, về nhà hàng dùng cơm trưa.</strong></p>\n<p><strong>Chiều: Khởi hành đi Hội An, tản bộ tham quan Phố Cổ: Nhà Cổ Phùng Hưng, chùa Cầu, hội quán Phúc Kiến, Làng nghề Truyền Thống… dùng cơm chiều với đặc sản cao lầu Hội An và các loại bánh miền Trung….</strong></p>\n<p><strong>Tối: Du khách dạo phố đêm hay sinh hoạt tự do.</strong></p>\n<p><strong><span style="color:#0000ff;">NGÀY 2: DI SẢN VĂN HOÁ THẾ GIỚI - CỐ ĐÔ HUẾ (ĂN 3 BỮA)</span></strong><br /><strong>Sáng: Dùng điểm tâm, khởi hành đi Huế trên đường ngoạn cảnh biển Nam Ô, đèo Hải Vân, dừng chân tham quan di tích “Thiên Hạ Đệ Nhất Hùng Quan “, dừng chân tại Vịnh Lăng Cô: Đây là một trong những cảnh vịnh đẹp nhất thế giới: Du khách tắm biển tự do và chụp hình lưu niệm. Đến Huế nhận phòng, dùng cơm trưa.</strong></p>\n<p><strong>Chiều: Du khách tham quan Kinh thành triều Nguyễn – Hoàng Cung của 13 vị Vua triều Nguyễn với Ngọ Môn, điện Thái Hòa, Tử Cấm Thành, Thế Miếu, Hiển Lâm Các, Cửu Đỉnh, …Viếng chùa Thiên Mụ. Dùng bữa chiều với đặc sản xứ Huế…</strong></p>\n<p><strong>Tối: Du khách thưởng thức chương trình ca Huế bằng thuyền Rồng trên sông Hương</strong></p>\n<p><strong><span style="color:#0000ff;">NGÀY 3: CỐ ĐÔ HUẾ - ĐỘNG PHONG NHA - NHÀ THỜ LA VANG (ĂN 3 BỮA)</span></strong><br /><strong>Sáng: Dùng điểm tâm, khởi hành đi Quảng Bình: Tham quan cầu Hiền Lương, sông Bến Hải, xe đưa đến xã Xuân Sơn, huyện Bố Trạch: Du thuyền ngược dòng sông Son vào hoang mạc đá vôi Kẻ Bàng, tham quan động Thiên Cung, hang Ngai Vàng…Dùng cơm trưa.</strong></p>\n<p><strong>Chiều: Khởi hành về Huế, theo QL14A, dừng chân tham quan Nhà Thờ La Vang, tiếp tục lộ trình đến Huế dùng cơm chiều.</strong></p>\n<p><strong>Tối: Du khách sinh hoạt tự do hay dạo phố Huế về đêm.</strong></p>\n<p><strong><span style="color:#0000ff;">NGÀY 4: CỐ ĐÔ HUẾ - TP.HCM (ĂN 2 BỮA)</span></strong><br /><strong>Sáng: Dùng điểm tâm. Du khách viếng lăng Tự Đức, lăng Khải Định, đi chợ Đông Ba mua quà lưu niệm. Dùng cơm trưa.</strong></p>\n<p><strong>Chiều: Xe đưa du khách ra sân bay, khởi hành về TP.HCM. Kết Thúc tour. Chào Tạm Biệt Và Hẹn Gặp Lại.</strong></p>\n<p><strong>BẢNG GIÁ TOUR: ĐƠN VỊ TÍNH : VNĐ (VIỆT NAM ĐỒNG)</strong><br /><strong>K. SẠN GIÁ TOUR/K VÉ MÁY BAY PHỤ THU</strong><br /><strong>P.2K P.ĐƠN N. QUỐC</strong><br /><strong>3 SAO 4.448.000 3.346.000 750.000 200.000</strong><br /><strong>4 SAO 5.758.000 1.950.000</strong></p>\n<p><strong>BAO GỒM:</strong><br /><strong>Vận chuyển: - Xe du lịch đời mới máy lạnh + Máy bay.</strong><br /><strong>Khách sạn: - Phòng trang bị TV – Tel – nước nóng, lạnh, máy lạnh.</strong><br /><strong>Ăn uống: 3 bữa ăn sáng + 7 bữa ăn chính</strong><br /><strong>Ăn sáng gồm: Hủ tiếu, Bún Bò, Phở, Bánh Mì Ốp La, Bánh Canh + Cà Phê Đá, Đá Chanh, Nước Ngọt Chai, Sữa Đậu Nành Chai, ...</strong><br /><strong>Ăn trưa gồm 05 món :02 món mặn + 01 món xào + 01 món canh + 01 rau trộn + trái cây + cơm trắng + trà đá - Đặc biệt có bữa ăn đặc sản địa phương .</strong><br /><strong>- Quý khách ăn tự túc trừ lại 400.000 đồng/khách.</strong><br /><strong>Dịch vụ khác :</strong><br /><strong>- Hướng dẫn viên du lịch sẽ hướng dẫn phục vụ cho đoàn suốt tuyến.</strong><br /><strong>- Vé vào cổng tham quan các thắng cảnh, thuyền ca Huế, động Phong Nha</strong><br /><strong>- Khách được bảo hiểm trọn tour với phí bồi thường cao nhất :10.000.000 đồng</strong><br /><strong>Quà Tặng: - Mỗi khách được tặng nón du lịch, khăn lạnh, nước suối.</strong></p>\n<p><strong><span style="color:#0000ff;">KHÔNG BAO GỒM:</span></strong><br /><strong>- Ăn uống ngoài chương trình, giặt ủi, điện thoại và chi phí cá nhân…</strong><br /><strong>Vé máy bay: - Trẻ em từ 12 tuổi trở lên = 100%</strong><br /><strong>- Trẻ em từ 0 tuổi -&gt; 2 tuổi = 10% - Trẻ em từ 2 tuổi -&gt; 11 tuổi = 75%</strong></p>\n<p><strong><span style="color:#0000ff;">GIÁ VÉ TRẺ EM</span></strong></p>\n<p><strong>- Trẻ em từ 12 tuổi trở lên phải mua 1 vé.- Trẻ em từ 6 tuổi đến 11tuổi mua ½ vé tiêu chuẩn như người lớn nhưng ngủ ghép cha mẹ,trẻ em thứ 2 phải mua 01 vé.</strong><br /><strong>- Trẻ em dưới 6 tuổi cha mẹ tự lo, trẻ em thứ 2 phải mua ½ vé.</strong><br /><strong>- Khi đi quý khách nhớ đem theo CMND hay Passport,trẻ em đem khai sinh</strong><br /><strong>- Hành lý gọn nhẹ, áo gió, giày bata…</strong></p>\n<p><strong><span style="color:#0000ff;">MỌI CHI TIẾT XIN VUI LÒNG LIÊN HỆ</span></strong></p>\n<p><strong><span style="color:#0000ff;">CÔNG TY TNHH TM - DV DU LỊCH KHUNG TRỜI VIỆT<br /></span></strong></p>\n<p><strong><span style="color:#0000ff;">Địa chỉ: 303 Nơ Trang Long - F13 - Q.Bình Thạnh<br /></span></strong></p>\n<p><strong><span style="color:#0000ff;">DĐ: 0935090286 </span></strong></p>', '', 'da-nang-hoi-an-hue-phong-nha', '', '', '', 0, 2, '', 1, 0, '', '', '', '', 1, 678),
(4375, 'BUÔN MA THUỘT – GIALAI – KONTUM', '', '2012-07-06 08:19:31', 'bun-ma-thut--gialai--kontum-thumb.jpg', '', '', '<p> </p>\n<p><img title="BUÔN MA THUỘT – GIALAI – KONTUM" src="/public/userfiles/image/khungtroiviets/image/taynguyen.jpg" alt="BUÔN MA THUỘT – GIALAI – KONTUM" width="610" height="170" /></p>\n<p><span style="font-size:12pt;"><strong><span style="color:#0000ff;">Thời gian:</span> <span style="color:#ff6600;">4 ngày 3 đêm</span></strong></span><br /><span style="font-size:12pt;"><strong><span style="color:#0000ff;">Phương tiện</span>: <span style="color:#ff6600;">Xe máy lạnh</span></strong></span><br /><span style="font-size:12pt;"><strong><span style="color:#0000ff;">Khởi hành:</span> <span style="color:#ff6600;">Thứ 5 hàng tuần</span></strong></span></p>', '', '<h2><span style="color:#0000ff;"><img title="BUÔN MA THUỘT – GIALAI – KONTUM" src="/public/userfiles/image/khungtroiviets/image/taynguyen.jpg" alt="BUÔN MA THUỘT – GIALAI – KONTUM" width="610" height="170" /></span></h2>\n<h2><span style="color:#0000ff;">Thời gian:</span> <span style="color:#ff6600;">4 ngày 3 đêm</span><br /><span style="color:#0000ff;">Phương tiện:</span><span style="color:#ff6600;"> Xe máy lạnh</span><br /><span style="color:#0000ff;">Khởi hành:</span><span style="color:#ff6600;"> Thứ 5 hàng tuần</span></h2>\n<h3><strong>Tây Nguyên, vùng đất giàu tiềm năng, có độ cao trung bình từ 400m - 800m, nổi tiếng với những vườn Cà Phê, vườn Cao Su bạt ngàn. Dọc theo đường Trường Sơn huyền thoại để đến Buôn Ma Thuột, một thành phố xanh của núi rừng Tây Nguyên hùng vĩ, du khách được thưởng thức hương vị cà phê Ban Mê, thăm các buôn làng dân tộc, lâng lâng với ngụm rượu Cần độc đáo, đung đưa trên bành Voi, chòng chành trên cầu Treo Sérépok hay thú vị với chiếc thuyền Độc Mộc lướt êm trên hồ Lak…</strong></h3>\n<h3><strong><span style="color:#0000ff;">NGÀY 1 : TP.HCM – BUÔN MA THUỘT (ĂN 3 BỮA)</span></strong><br /><strong>Sáng: Xe và hướng dẫn viên Lạc Việt Tourist đón du khách tại điểm hẹn, khởi hành đi Tây Nguyên, dừng chân dùng điểm tâm tại ngã tư Sở Sao. Tiếp tục lộ trình đi Buôn Ma Thuột theo QL 14 qua các địa danh Đồng Xoài, Sóc Bombo, Bù Đăng, Bù Đồp, đường mòn Hồ Chí Minh. Du khách dùng cơm trưa tại Dakmil.</strong></h3>\n<h3><strong>Chiều: Tiếp tục tham quan thác Dray sáp (Thác Sương – Thác Khói): Đây là một trong những ngọn thác hùng vỹ nhất Tây Nguyên, du khách chụp hình lưu niệm. Đến Buôn Ma Thuột nhận phòng khách sạn. Dùng cơm chiều.</strong></h3>\n<h3><strong>Tối: Du khách dạo phố hay thưởng thức Cà phê Phố Núi về đêm.</strong></h3>\n<h3><strong><span style="color:#0000ff;">NGÀY 2: BUÔN MA THUỘT – KON TUM (ĂN 3 BỮA)</span></strong><br /><strong>Sáng: Dùng điểm tâm. Khởi hành đi Kon Tum: Du khách ngoạn cảnh những đồi Cà Phê, những vườn Tiêu, những rừng Cao Su… đến Kon Tum nhận phòng dùng cơm trưa.</strong></h3>\n<h3><strong>Chiều: Xe đưa du khách tham quan Nhà Thờ Gỗ, Cầu Treo Konklor, nhà Rông của dân tộc Bana, tiếp tục vào Ngọc Hồi du khách sẽ đi ngang qua các địa danh chiến trường xưa như Dakto, Tân Cảnh, sân bay Phượng Hoàng, Ngoạn cảnh đồi Sacly, đến ngã 3 Đông Dương chụp hình lưu niệm. Về nhà hàng dùng cơm chiều.</strong></h3>\n<h3><strong>Tối: Du khách dạo phố đêm hay sinh hoạt tự do.</strong></h3>\n<h3><strong><span style="color:#0000ff;">NGÀY 3: KONTUM - GIALAI - BUÔN MA THUỘT - BUÔN ĐÔN (ĂN 3 BỮA)</span></strong><br /><strong>Sáng: Dùng điểm tâm. Khởi hành về Buôn Ma Thuột, ghé tham quan công trình Thủy Điện Yaly, tiếp tục về Buôn Ma Thuột nhận phòng khách sạn. Dùng cơm trưa.</strong></h3>\n<h3><strong>Chiều: Khởi hành đi Buôn Đôn: Tham quan làng nghề săn bắt và thuần dưỡng voi rừng, mộ vua Voi 100 năm tuổi , nhà Mồ, tham quan cầu treo Serepok dài 240m vượt qua sông Serepok (con sông lớn nhất núi rừng Tây Nguyên) chảy qua Campuchia đổ vào sông Mêkông), cưỡi Voi dạo Bản Đôn. Dùng cơm chiều với đặc sản Cơm Lam+ Gà Nướng.</strong></h3>\n<h3><strong>Tối: Sinh hoạt lưả trại, giao lưu văn hoá rượu Cần, Cồng Chiêng với đồng bào dân tộc (tự túc).</strong></h3>\n<h3><strong><span style="color:#0000ff;">NGÀY 4 : BUÔN MA THUỘT – TP.HCM (ĂN 2 BỮA)</span></strong><br /><strong>Sáng: Dùng điểm tâm. Xe đưa du khách vào chợ mua qùa lưu niệm và đặc sản. Khởi hành về TP.HCM, dùng cơm trưa tại Kiến Đức, nghỉ trưa. Tiếp tục lộ trình.</strong><br /><strong>Chiều: Đến TP.HCM, xe và hướng dẫn viên Lạc Việt Tourist đưa du khách về điểm hẹn. Kết thúc tour. Chào Tạm Biệt Và Hẹn Gặp Lại.</strong></h3>\n<h3><strong>BẢNG GIÁ TOUR: ĐƠN VỊ TÍNH: VNĐ (VIỆT NAM ĐỒNG)</strong><br /><strong>KHÁCH SẠN GIÁ TRỌN GÓI PHỤ THU</strong><br /><strong>PHÒNG 2-&gt;3 K PHÒNG ĐƠN NGOẠI QUỐC</strong><br /><strong>3 SAO 3.198.000 788.000 200.000</strong></h3>\n<h3><strong><span style="color:#0000ff;">BAO GỒM:</span></strong><br /><strong>Vận chuyển:</strong><br /><strong>- Xe du lịch đời mới máy lạnh .</strong><br /><strong><span style="color:#0000ff;">Khách sạn:</span></strong><br /><strong>- Phòng trang bị TV – Tel – nước nóng , lạnh ,máy lạnh.</strong><br /><strong>Ăn uống: 04 bữa ăn sáng + 07 bữa ăn chính</strong><br /><strong>- Ăn sáng gồm:Hủ tiếu,Bún Bò,Phở,Bánh Mì Ốp La, Bánh Canh + Cà Phê Đá, Đá Chanh,Nước Ngọt Chai,Sữa Đậu Nành Chai,...</strong><br /><strong>- Ăn trưa gồm 05 món : 02 món mặn + 01 món xào + 01 món canh + 01 rau trộn + trái cây + cơm trắng + trà đá - Đặc biệt có Cơm Lam + <span style="color:#0000ff;">Gà nướng .</span></strong><br /><strong>- Quý khách ăn tự túc trừ lại 400.000 đồng /khách.</strong><br /><strong>Dịch vụ khác:</strong><br /><strong>- Hướng dẫn viên du lịch sẽ hướng dẫn phục vụ cho đoàn suốt tuyến.</strong><br /><strong>- Vé vào cổng tham quan các thắng cảnh.</strong><br /><strong>- Cưỡi voi dạo Bản Đôn.</strong><br /><strong>- Khách được bảo hiểm trọn tour với phí bồi thường cao nhất :10.000.000 đồng</strong><br /><strong>Quà Tặng :</strong><br /><strong>- Mỗi khách được tặng nón du lịch,khăn lạnh,nước suối.</strong></h3>\n<h3><strong><span style="color:#0000ff;">KHÔNG BAO GỒM:</span></strong><br /><strong>- Ăn uống ngoài chương trình, điện thoại, giặt ủi, giao lưu văn hóa cồng chiêng, rượu cần…</strong></h3>\n<h3><strong>GIÁ VÉ TRẺ EM</strong><br /><strong>- Trẻ em từ 12 tuổi trở lên phải mua 1 vé. Trẻ em từ 6 tuổi đến 11 tuổi mua ½ vé tiêu chuẩn như người lớn nhưng ngủ ghép cha mẹ, trẻ em thứ 2 phải mua 01 vé.</strong><br /><strong>- Trẻ em dưới 6 tuổi cha mẹ tự lo,trẻ em thứ 2 phải mua ½ vé.</strong><br /><strong>- Khi đi quý khách nhớ mang theo CMND hay Passport,hành lý gọn nhẹ.</strong></h3>\n<h3><strong><span style="color:#0000ff;">MỌI CHI TIẾT XIN VUI LÒNG LIÊN HỆ</span></strong></h3>\n<h3><strong><span style="color:#0000ff;">CÔNG TY TNHH TM - DV DU LỊCH KHUNG TRỜI VIỆT<br /></span></strong></h3>\n<h3><strong><span style="color:#0000ff;">ĐC: 303 Nơ Trang Long - F13 - Q Bình Thạnh</span></strong></h3>\n<h3><strong><span style="color:#0000ff;">ĐT: 093 509 0286</span></strong></h3>', '', 'buon-ma-thuot-gialai-kontum', '', '', '', 0, 3, '', 1, 0, '', '', '', '', 1, 678),
(4447, 'PHAN THIẾT - MŨI NÉ - VỊNH VĨNH HY - CỔ THẠCH', '', '2012-07-06 08:29:04', 'phan-thit-mi-n-ninh-ch-vnh-vnh-hy-c-thch-thumb.jpg', 'phan-thit-mi-n-ninh-ch-vnh-vnh-hy-c-thch.jpg', '', '<h2><strong><span style="color:#0000ff;"> </span></strong></h2>\n<p><strong><span style="color:#0000ff;"><img title="PHAN THIẾT - MŨI NÉ - NINH CHỮ - VỊNH VĨNH HY - CỔ THẠCH" src="/public/userfiles/image/khungtroiviets/image/ninhchu.jpg" alt="PHAN THIẾT - MŨI NÉ - NINH CHỮ - VỊNH VĨNH HY - CỔ THẠCH" width="610" height="170" /></span></strong></p>\n<h2><strong><span style="color:#0000ff;">Thời gian:</span> <span style="color:#ff6600;">3 ngày 2 đêm</span></strong><br /><strong><span style="color:#0000ff;">Phương tiện:</span><span style="color:#ff6600;"> Đi về bằng xe máy lạnh</span></strong><br /><strong><span style="color:#0000ff;">Khởi hành:</span><span style="color:#ff6600;"> Thứ 6 hàng tuần</span></strong></h2>', '', '<h2><strong><span style="color:#ff6600;"><span style="color:#0000ff;"><img src="/public/userfiles/image/khungtroiviets/image/ninhchu.jpg" alt="" width="610" height="170" /></span></span></strong></h2>\n<h2><strong><span style="color:#ff6600;"><span style="color:#0000ff;">Thời gian: </span>3 ngày 2 đêm</span></strong><br /><strong><span style="color:#ff6600;"><span style="color:#0000ff;">Phương tiện:</span> Đi về bằng xe máy lạnh</span></strong><br /><strong><span style="color:#ff6600;"><span style="color:#0000ff;">Khởi hành: </span>Thứ 6 hàng tuần</span></strong></h2>\n<h3><strong>Ninh Chữ - Vịnh Vĩnh Hy thuộc địa phận tỉnh Ninh Thuận nằm cách Tp.HCM hơn 350km. Vùng đất này nổi tiếng với những vườn nho, ruộng tỏi rộng lớn, cùng với những đàn gia súc: Bò, Cừu, Dê….Là nơi cung cấp trái cây và thực phẩm dồi dào cho cư dân Tp. HCM.</strong><br /><strong>- Thắng cảnh: tháp Poshanư, Lầu Ông Hoàng, Cổ Thạch Tự, Đền Thờ Nam Hải, Lăng Cá Ông, Đồi Cát…</strong><br /><strong>- Đặc sản: Ghẹ hấp bia, mực một nắng nướng muối ớt, sò điệp nướng mỡ hành…</strong><br /><strong><span style="color:#0000ff;">NGÀY 1: PHAN THIẾT - MŨI NÉ - BIỂN NINH CHỮ (ĂN 3 BỮA)</span></strong></h3>\n<h3><strong>Sáng: Xe và hướng dẫn viên Lạc Việt Tourist đón du khách tại điạ điểm hẹn, khởi hành đi Ninh Chữ. Dùng điểm tâm tại Dầu Giây. Tiếp tục lộ trình đến Phan Thiết du khách tham quan bãi biển Đồi Dương. Quý khách dùng cơm trưa.</strong></h3>\n<h3><strong>Chiều: Xe đưa du khách men theo con đường mới ven biển, trên đường ngoạn cảnh quần thể tháp Poshanư – di tích kiến trúc độc đáo của dân tộc Chămpa, Lầu Ông Hoàng, rặng dừa Hàm Tiến ,làng chài Mũi Né. Tiếp tục đến Cà Ná: Quý khách dừng chân ngoạn cảnh và hình lưu niệm, đến Phan Rang về nhận phòng, tắm biển tự do . Dùng cơm chiều</strong></h3>\n<h3><strong>Tối: Du khách dạo phố biển về đêm hay sinh hoạt tự do</strong></h3>\n<h3><strong><span style="color:#0000ff;">NGÀY 2: BIỂN NINH CHỮ - VỊNH VĨNH HY (ĂN 3 BỮA)</span></strong></h3>\n<h3><strong>Sáng: Quý khách dùng điểm tâm, xe đưa du khách vào Vịnh Vĩnh Hy: Tàu đáy kính đưa du khách tham quan Vịnh, lặn ngắm san hô, tiếp tục tham quan bãi Cóc, bãi Bà Điên tắm biển tự do , tàu đưa du khách trở về đất liền. Về nhà hàng dùng cơm trưa</strong></h3>\n<h3><strong>Chiều: Xe đưa du khách tham quan Tháp Chăm Poklong Giarai: Đây là một trong những chương trình kiến trúc độc đáo của dân tộc Chăm, về lại khách sạn tắm biển tự do, dùng cơm chiều.</strong></h3>\n<h3><strong>Tối: Du khách dạo phố về đêm hay sinh hoạt tự do .</strong></h3>\n<h3><strong><span style="color:#0000ff;">NGÀY 3 : NINH CHỮ - CỔ THẠCH - TP.HCM (ĂN 2 BỮA)</span></strong></h3>\n<h3><strong>Sáng: Quý khách dùng điểm tâm. Khởi hành về TP.HCM ghé tham quan Khu du lịch Cổ Thạch: Cổ Thạch Tự, Đồi Cát, Đền Thờ thần Nam Hải, Lăng Cá Ông, Bãi Sỏi. Tiếp tục lộ trình đến Phan Thiết dùng cơm trưa.</strong></h3>\n<h3><strong>Chiều: Về đến TP. HCM, xe và hướng dẫn đưa du khách về lại địa điểm hẹn. Chào Tạm Biệt Và Hẹn Gặp Lại.</strong></h3>\n<h3><strong><span style="color:#0000ff;">GIÁ TRỌN GÓI ĐƠN VỊ TÍNH : VNĐ(VIỆT NAM ĐỒNG )</span></strong><br /><strong><span style="color:#0000ff;">KHÁCH SẠN GIÁ TRỌN GÓI/1K PHỤ THU</span></strong><br /><strong><span style="color:#0000ff;">PHÒNG 2-3K P1K N. QUỐC</span></strong><br /><strong>2 SAO 1.778.000 358.000</strong><br /><strong>150.000</strong><br /><strong>3 SAO 1.958.000 848.000</strong><br /><strong>4 SAO 2.208.000 1.058.000</strong></h3>\n<h3><strong><span style="color:#0000ff;">BAO GỒM:</span></strong><br /><strong>Vận chuyển: Xe du lịch đời mới máy lạnh .</strong><br /><strong>KHÁCH SẠN: phòng 2-&gt;3 khách trang bị tv –tel - máy nước nóng , máy lạnh …</strong><br /><strong>- 2 SAO : HOÀN CẦU</strong><br /><strong>- 3 SAO : LONG THUẬN, ĐEN GIÒN</strong><br /><strong>- 4 SAO : SÀI GÒN NINH CHỮ</strong><br /><strong>Ăn uống : 03 bữa ăn sáng + 05 bữa ăn chính</strong><br /><strong>- Ăn sáng gồm: Hủ tiếu, Bún Bò, Phở, Bánh Mì Ốp La, Bánh Canh + Cà Phê Đá, Đá Chanh, Nước Ngọt Chai, Sữa Đậu Nành Chai….</strong><br /><strong>- Ăn trưa gồm 05 món: 02 món mặn + 01 món xào + 01 món canh + 01 rau trộn + trái cây + cơm trắng + trà đá.</strong><br /><strong>- Quý khách ăn tự túc trừ lại 300.000 đồng/ khách.</strong></h3>\n<h3><strong><span style="color:#0000ff;">Dịch vụ khác:</span></strong><br /><strong>- Hướng dẫn viên du lịch sẽ hướng dẫn phục vụ cho đoàn suốt tuyến.</strong><br /><strong>- Vé vào cổng tham quan các thắng cảnh.</strong><br /><strong>- Tàu đáy kính đưa du khách tham quan vịnh Vĩnh Hy.</strong><br /><strong>- Khách được bảo hiểm trọn tour với phí bồi thường cao nhất :10.000.000 đồng.</strong><br /><strong>Quà Tặng:</strong><br /><strong>- Mỗi khách được tặng nón du lịch,khăn lạnh,nước suối.</strong></h3>\n<h3><strong><span style="color:#0000ff;">KHÔNG BAO GỒM:</span></strong><br /><strong>- Ăn uống ngoài chương trình,giặt ủi và chi phí cá nhân.</strong></h3>\n<h3><strong><span style="color:#0000ff;">LƯU Ý:</span></strong><br /><strong>- Trẻ em từ 12 tuổi trở lên phải mua 1 vé - Trẻ em từ 6 tuổi đến 11 tuổi mua ½ vé tiêu chuẩn như người lớn nhưng ngủ ghép cha mẹ .trẻ em thứ 2 phải mua 01 vé.</strong><br /><strong>- Trẻ em dưới 6 tuổi cha mẹ tự lo,trẻ em thứ 2 phải mua ½ vé.</strong><br /><strong>- Khi đi quý khách nhớ mang theo CMND hay Passport, áo gió, hành lý gọn nhẹ.</strong></h3>\n<h3><strong><span style="color:#0000ff;">MỌI CHI TIẾT XIN VUI LÒNG LIÊN HỆ</span></strong></h3>\n<h3><strong><span style="color:#0000ff;">CÔNG TY TNHH TM - DV DU LỊCH KHUNG TRỜI VIỆT<br /></span></strong></h3>\n<h3><strong><span style="color:#0000ff;">ĐC: 303 Nơ Trang Long - F13 - Q.Bình Thạnh</span></strong></h3>\n<h3><strong><span style="color:#0000ff;"><strong>Điện Thoại: 0935 090 286</strong><br /></span></strong></h3>', '', 'phan-thiet-mui-ne-vinh-vinh-hy-co-thach', '', '', '', 0, 4, '', 1, 0, '', '', '', '', 1, 678),
(4448, 'NHA TRANG – WHITE SAND  - VINPEAR LAND', '', '2012-07-06 08:39:49', 'nha-trang--white-sand--o-kh-thp-ponaga-vinpear-land-thumb.jpg', '', '', '<h2><strong><span style="color:#ff6600;"><span style="color:#0000ff;"><img src="/public/userfiles/image/khungtroiviets/image/nhatrang1.jpg" alt="" width="610" height="170" /></span></span></strong></h2>\n<h2><strong><span style="color:#ff6600;"><span style="color:#0000ff;">Thời gian:</span> 3 ngày 2 đêm</span></strong><br /><strong><span style="color:#ff6600;"><span style="color:#0000ff;">Phương tiện:</span> Đi Xe, Về tàu hỏa</span></strong><br /><strong><span style="color:#ff6600;"><span style="color:#0000ff;">khởi hành:</span> Thứ 3, thứ 5, chủ nhật</span></strong></h2>', '', '<p><img src="/public/userfiles/image/khungtroiviets/image/nhatrang1.jpg" alt="" width="610" height="170" /></p>\n<h2><strong><span style="color:#ff6600;"><span style="color:#0000ff;">Thời gian:</span> 3 ngày 2 đêm</span></strong><br /><strong><span style="color:#ff6600;"><span style="color:#0000ff;">Phương tiện:</span> Đi Xe, Về tàu hỏa</span></strong><br /><strong><span style="color:#ff6600;"><span style="color:#0000ff;">khởi hành:</span> Thứ 3, thứ 5, chủ nhật</span></strong></h2>\n<h3><span style="background-color:#ffffff;"><span style="color:#ff6600;"><span style="color:#0000ff;">NGÀY 1: TP.HCM – PHAN THIẾT - NHA TRANG (ĂN 3 BỮA)</span></span><strong><span style="color:#ff6600;"><br /><span style="color:#000000;">Sáng: Xe và hướng dẫn viên Lạc Việt Tourist đón du khách tại điểm hẹn. Khởi hànhthap_cham_Poshanu đi Nha Trang. Dùng điểm tâm tại ngã ba Dầu Giây. Tiếp tục lộ trình đến Phan Thiết du khách tham quan bãi biển Đồi Dương. Dùng cơm trưa</span>.</span></strong></span></h3>\n<h3>Chiều: Xe đưa du khách theo con đường ven biển ngoạn cảnh quần thể tháp Poshanư, Lầu Ông Hoàng, rặng dừa Hàm Tiến, làng chài Mũi Né, tiếp tục đến bãi biển Cà Ná. Dừng chân chụp hình lưu niệm, tiếp tục tham quan Chùa Từ Vân - đây là một ngôi chùa có lối kiến trúc độc đáo, có lối đi Vào 18 Tầng Địa Ngục và được lắp ghép từ những vỏ sò…Du khách men theo con đường Cù Hin-Sông Lô ven biển, dừng chân ngoạn cảnh Vịnh Nha Trang. Đến Nha Trang nhận phòng. Dùng cơm chiều.</h3>\n<h3> </h3>\n<h3>Tối: Nghỉ ngơi,dạo phố biển về đêm hay sinh hoạt tự do.</h3>\n<h3> </h3>\n<h3><strong><span style="color:#0000ff;">NGÀY 2: WHITE SAND – THÁP BÀ PONAGA – TẮM KHOÁNG (ĂN 3 BỮA)</span></strong><br />Sáng: Dùng điểm tâm Buffet, khởi hành đi White Sand: Đây là 1 trong những bãi tắm đẹp nhất miền trung với những hang dương xanh ngát chạy dọc theo bờ cát trắng: Du khách thỏa thích bơi lội dưới làn nước trong xành hay thưởng thức cua, ghẹ, mực một nắng,… (tự túc). Dùng cơm trưa, khởi hành về lại Nha Trang.<br />Chiều: Du khách đến Tháp Bà Ponaga, đến KDL Suối Khoáng Tháp Bà – với những dịch vụ “Ôn Tuyền Thủy Liệu Pháp”, ngâm mình trong Hồ Khoáng Nóng hay Tắm Bùn (tự túc).</h3>\n<h3> </h3>\n<h3>Tối: Đến nhà hàng dùng bữa tối với đặc sản Bò Lạc Cảnh Nha Trang.</h3>\n<h3> </h3>\n<h3><strong><span style="color:#0000ff;">NGÀY 3 : ĐẦM NHA PHU – ĐẢO KHỈ – VINPERLAND (ĂN 3 BỮA)</span></strong><br />Sáng: Dùng điểm tâm Buffet. Xe đưa du khách đến Cảng Đá Chồng. Tàu đưa du khách tham quan Đầm Nha Phu, tìm hiểu cách nuôi trồng Thuỷ Hải Sản trong đầm, tiếp tục đến Đảo Khỉ - Du khách xem xiếc Khỉ, Voi, Chó…và tắm biển tự do. Đến nhà hàng dùng cơm trưa.</h3>\n<h3> </h3>\n<h3>Chiều: Xe đưa du khách đi Chợ Đầm mua quà lưu niệm, đến bến cảng Phú Quý ,lên du thuyền hoặc đi cáp treo sang Hòn Ngọc Việt: tham gia các trò chơi tại khu vui chơi tại Khu vui chơi Vinpearlland: đu quay cảm giác mạnh, tàu lượn cao tốc, cưỡi bò tót, trò chơi điện tử, trò chơi ảo…(chi phí tự túc). Trở về lại Nha Trang.</h3>\n<h3> </h3>\n<h3>Tối: Đến nhà hàng dùng bữa tối với đặc sản Nem Ninh Hoà + Bún Thịt Nướng.<br />Hướng dẫn Lạc Việt Tourist giao vé tàu và hướng dẫn thủ tục. Quý khách ra ga lên tàu ổn định chỗ, du khách nghỉ đêm trên tàu.</h3>\n<h3> </h3>\n<h3><span style="color:#0000ff;"><strong>NGÀY 4: NHA TRANG – TP.HCM (ĂN 0 BỮA)</strong></span><br />Sáng: Tàu về đến ga Sài Gòn. Kết thúc tour. Chào Tạm Biệt Và Hẹn Gặp Lại.</h3>\n<h3> </h3>\n<h3>BẢNG GIÁ TOUR : ĐƠN VỊ TÍNH : VNĐ (VIỆT NAM ĐỒNG)</h3>\n<h3> </h3>\n<h3>KHÁCH SẠN GIÁ TOUR/K VÉ TÀU LỬA PHỤ THU<br />PHÒNG 2-&gt;3 K 01 KHÁCH PHÒNG ĐƠN NQUỐC<br />2 SAO 1.858.000 378.000<br />3 SAO 2.238.000 420.000 788.000 200.000<br />4 SAO 3.358.000 1.748.000<br />5 SAO 6.338.000 4.858.000<br /><span style="color:#0000ff;">BAO GỒM</span><br />Vận chuyển : Xe du lịch đời mới máy lạnh .<br />Khách sạn : 01 Phòng 2-&gt;3 khách, phòng trang bị TV – Tel – nước nóng,lạnh, máy lạnh.<br />-2 SAO : THIÊN PHÚC, BIỂN VIỆT, HƯỚNG DƯƠNG, HOÀNG SƠN…<br />-3 SAO : VIỄN ĐÔNG, COPAC, PRIMER, HẢI YẾN, HẢI ÂU..<br />-4 SAO : ASIA PARADISE, VIỄN ĐÔNG, LODGE, YASAKA…<br />5 SAO : VINPEARL , SHERATON , SUNRISE …..<br />Ăn uống : 01 bữa ăn sáng + 06 bữa ăn chính+2 bữa Buffet.<br />- Ăn sáng gồm: Hủ tiếu, Bún Bò, Phở, Bánh Mì Ốp La, Bánh Canh + Cà Phê Đá, Đá Chanh, Nước Ngọt Chai, Sữa Đậu Nành Chai…<br />- Ăn trưa gồm 05 món :02 món mặn + 01 món xào + 01 món canh + 01 rau trộn + trái cây + cơm trắng + trà đá + đặc biệt có 02 bữa đặc sản điạ phương.<br />- Quý khách không ăn trừ lại 400.000 đồng/ khách.<br />Dịch vụ khác : - Hướng dẫn viên du lịch sẽ hướng dẫn phục vụ cho đoàn suốt tuyến.<br />- Vé vào cổng tham quan các thắng cảnh - Tàu đi tham quan Vịnh Nha Phu -&gt; Đảo Khỉ.<br />- Khách được bảo hiểm trọn tour với phí bồi thường cao nhất :10.000.000 đồng<br />Quà Tặng : - Mỗi khách được tặng nón du lịch, khăn lạnh, nước suối.</h3>\n<h3> </h3>\n<h3><strong><span style="color:#0000ff;">KHÔNG BAO GỒM</span></strong><br />- Tắm khoáng – bùn, dù, ghế bố, nước ngọt tại các bãi tắm, ăn uống ngoài chương trình, điện thoại, giặt ủi và chi phí cá nhân.</h3>\n<h3> </h3>\n<h3>Chi phí tham quan VINPEARL LAND: Thẻ vui chơi giải trí: 360.000 Đ / K gồm:<br />- Phí đi Đảo bằng Cáp Treo / phà ( khứ hồi ) - Chơi các trò chơi khu VAP / khu công viên nước - Xem sân khấu nhạc nước lúc 19h.<br />- Giá vé trẻ em ( cao từ 0.95 cm – 1.4m) : 260.000đ.</h3>\n<h3> </h3>\n<h3><strong><span style="color:#0000ff;">LƯU Ý:</span></strong><br />Trẻ em từ 12 tuổi trở lên phải mua 1 vé. Trẻ em từ 6 tuổi đến 11 tuổi mua ½ vé tiêu chuẩn như người lớn nhưng ngủ ghép cha mẹ ,trẻ em thứ 2 phải mua 01 vé.<br />Trẻ em dưới 6 tuổi cha mẹ tự lo, trẻ em thứ 2 phải mua ½ vé.<br />Khi đi quý khách nhớ mang theo CMND hay Passport, áo gió, hành lý gọn nhẹ.</h3>\n<p> </p>\n<p><strong><span style="color:#0000ff;">ĐỂ CÓ GIÁ TỐT NHẤT XIN VUI LÒNG LIÊN HỆ</span></strong></p>\n<p><strong><span style="color:#ff6600;">CÔNG TY TNHH TM - DV DU LỊCH KHUNG TRỜI VIỆT<br /></span></strong></p>\n<p><strong><span style="color:#ff6600;">ĐỊA CHỈ: 303 Nơ Trang Long - F13 - Q.Bình Thạnh<br /></span></strong></p>\n<p><strong><span style="color:#ff6600;">Điện Thoại: 0935 090 286<br /></span></strong></p>', '', 'nha-trang-white-sand-vinpear-land', '', '', '', 0, 5, '', 1, 0, '', '', '', '', 1, 678);
INSERT INTO `dos_module_products` (`record_id`, `title`, `titleen`, `postdate`, `pic_thumb`, `pic_full`, `pic_desc`, `preview`, `previewen`, `content`, `contenten`, `tag`, `tagen`, `description`, `descriptionen`, `hits`, `record_order`, `unit`, `hot`, `specials`, `extra_field1`, `extra_field2`, `extra_field3`, `extra_field4`, `enable`, `dos_module_item_cat_cat_id`) VALUES
(5494, 'Thông Tin Visa', '', '2012-07-16 06:15:32', 'thong-tin-visa-thumb.jpg', '', '', '<p><span style="color:#ff0000;"><strong><span style="font-size:12pt;">Thông tin cần biết khi làm Visa</span></strong></span></p>\n<p><strong><span style="color:#0000ff;font-size:12pt;">1. DỊCH VỤ LÀM VISA TẠI VIỆT NAM</span></strong></p>\n<p><span style="color:#ff6600;font-size:11pt;">Trong nền kinh tế hội nhập và phát triển ngày nay, nhu cầu đi lại đang ngày càng phát triển và đa dạng hóa.Hàng năm có hàng triệu lượt đi và về phục vụ cho tính chất công việc cũng như các hình thức du lịch giao lưu Qua tìm hiểu nhằm đáp ứng được nhu cầu của khách hàng trong thời ký hội nhập chúng tôi cho ra đời dịch vụ làm visa với tiêu chí “giá cả hợp lý - nhanh chóng và chất lượng uy tín”</span></p>', '', '<p><span style="color:#0000ff;"><strong><span style="font-size:12pt;">1. DỊCH VỤ LÀM VISA TẠI VIỆT NAM</span></strong></span></p>\n<p><span style="font-size:12pt;color:#ff6600;">Trong nền kinh tế hội nhập và phát triển ngày nay, nhu cầu đi lại đang ngày càng phát triển và đa dạng hóa.Hàng năm có hàng triệu lượt đi và về phục vụ cho tính chất công việc cũng như các hình thức du lịch giao lưu Qua tìm hiểu nhằm đáp ứng được nhu cầu của khách hàng trong thời ký hội nhập chúng tôi cho ra đời dịch vụ làm visa với tiêu chí “giá cả hợp lý - nhanh chóng và chất lượng uy tín”</span></p>\n<p><span style="font-size:12pt;color:#ff6600;">Dịch vụ hộ chiếu visa của chúng tôi cung cấp cho bạn các giải pháp trên các phương diện:</span></p>\n<p><span style="font-size:12pt;color:#ff6600;">Đối với công dân Việt Nam có nhu cầu đi nước ngoài: tư vấn, hướng dẫn công dân Việt Nam làm hộ chiếu, đổi hội chiếu, gia hạn hộ chiếu, xin visa nước ngoài</span></p>\n<p><span style="font-size:12pt;color:#ff6600;">Đối với công dân nước nước ngoài đang ở đang sinh sống, du lịch, lao động tại Việt Nam: dịch vụ visa Việt Nam, dịch vụ gia hạn visa, dịch vụ làm visa nhanh, dịch vụ giải quyết visa quá hạn …..</span></p>\n<p><strong><span style="color:#0000ff;font-size:12pt;">2.THỦ TỤC</span></strong></p>\n<p><span style="background-color:#ffffff;font-size:12pt;color:#ff6600;">Thủ tục làm visa nước ngoài</span><br /><span style="background-color:#ffffff;font-size:12pt;color:#ff6600;">Căn cứ vào quy định pháp luật xuất nhập cảnh của quốc gia nơi xin visa sẽ có những yêu cần khác. Thủ tục làm visa nước ngoài yêu cầu một số giấy tờ cơ bản sau:</span></p>\n<p><span style="background-color:#ffffff;font-size:12pt;color:#ff6600;">- Đơn xin thị thực</span></p>\n<p><span style="background-color:#ffffff;font-size:12pt;color:#ff6600;">- Hộ chiếu còn hạn sử dụng trên 6 tháng</span></p>\n<p><span style="background-color:#ffffff;font-size:12pt;color:#ff6600;">- Ảnh 4cm x 6cm, nền trắng (chụp trong vòng 6 tháng trở lại).</span></p>\n<p><span style="background-color:#ffffff;font-size:12pt;color:#ff6600;">- Bản sao rõ ràng từng trang sổ hộ khẩu gia đình.</span></p>\n<p><span style="background-color:#ffffff;font-size:12pt;color:#ff6600;">- Giấy từ chứng minh về tài chính: Giấy chứng nhận sở hữu tài sản có giá trị (nhà, đất, ôtô, cổ phần, cổ phiếu), sổ tiết kiệm ngân hàng hoặc xác nhận số dư tài khoản ngân hàng…..</span></p>\n<p><span style="background-color:#ffffff;font-size:12pt;color:#ff6600;">Với các giấy tờ theo quy định pháp luật của quốc gia bạn xin visa, đơn vị dịch vụ sẽ tiến hành thủ tục xin visa cho bạn.</span></p>\n<p><span style="background-color:#ffffff;font-size:12pt;color:#ff6600;">Thủ tục làm visa Việt Nam</span><br /><span style="background-color:#ffffff;font-size:12pt;color:#ff6600;">Theo quy định tại Thông tư số 04/2002/TTLT-BCA-BNG ngày 29 tháng 01 năm 2010 thủ tục làm visa Việt Nam được quy định như sau:</span></p>\n<p><span style="background-color:#ffffff;font-size:12pt;color:#ff6600;">- Người nước ngoài làm visa nộp tại cơ quan đại diện Việt Nam một đơn (theo mẫu quy định) kèm hộ chiếu hoặc giấy tờ có giá trị thay hộ chiếu (sau đây gọi chung là hộ chiếu). Thời hạn giá trị còn lại của hộ chiếu phải dài hơn ít nhất một tháng so với thời hạn giá trị của thị thực xin cấp. Nếu xin cấp thị thực rời thì trong đơn nêu rõ lý do, mục đích xin cấp thị thực rời.</span></p>\n<p><span style="background-color:#ffffff;font-size:12pt;color:#ff6600;">Người Việt Nam ở nước ngoài có nhu cầu về thăm thân nhân mà không có hộ chiếu, nếu mang giấy tờ do cơ quan có thẩm quyền của nước ngoài cấp có giá trị xuất, nhập cảnh và mẫu giấy tờ đó đã được thông báo chính thức cho Việt Nam qua đường ngoại giao, cũng làm thủ tục làm visa theo quy định trên.</span></p>\n<p><span style="background-color:#ffffff;font-size:12pt;color:#ff6600;">- Cơ quan đại diện Việt Nam cấp thị thực như sau:</span></p>\n<p><span style="background-color:#ffffff;font-size:12pt;color:#ff6600;">- Đối với người không có cơ quan, tổ chức, cá nhân ở Việt Nam mời đón, thì xét cấp thị thực một lần, thời hạn 15 ngày. Việc xét cấp thị thực được thực hiện trong thời hạn 3 ngày làm việc kể từ khi nhận đơn, hộ chiếu.</span></p>\n<p><span style="background-color:#ffffff;font-size:12pt;color:#ff6600;">- Đối với người Việt Nam mang hộ chiếu nước ngoài có nhu cầu về thăm thân nhân, nếu có bằng chứng đã nhập cảnh Việt Nam lần trước cách thời điểm xin nhập cảnh không quá 36 tháng, thì cơ quan đại diện Việt Nam xét cấp thị thực có giá trị một lần không quá 3 tháng. Việc xét cấp thị thực được thực hiện trong thời hạn 2 ngày làm việc kể từ khi nhận đơn, hộ chiếu.</span></p>\n<p><span style="background-color:#ffffff;font-size:12pt;color:#ff6600;">- Đối với người đã có thông báo của Cục Quản lý xuất nhập cảnh, Cục Lãnh sự hoặc Sở ngoại vụ thành phố Hồ Chí Minh về việc cho nhập cảnh, thì trong thời hạn 2 ngày làm việc kể từ khi nhận đơn, hộ chiếu của khách, cơ quan đại diện Việt Nam cấp thị thực theo nội dung đã được thông báo.</span></p>\n<p><span style="background-color:#ffffff;font-size:12pt;color:#ff6600;">Trường hợp cơ quan đại diện Việt Nam phát hiện người xin thị thực có hành vi vi phạm pháp luật Việt Nam hoặc có hoạt động phương hại đến an ninh quốc gia mà cơ quan chức năng ở trong nước chưa phát hiện được, thì người đứng đầu cơ quan đại diện cần kịp thời trao đổi lại với cơ quan đã thông báo cấp thị thực để xem xét, quyết định.</span></p>\n<p><span style="background-color:#ffffff;font-size:12pt;color:#ff6600;">- Đối với người Việt Nam ở nước ngoài không có hộ chiếu, mang giấy tờ nêu trên, nếu được chấp thuận nhập cảnh, thì cơ quan đại diện Việt Nam cấp thị thực rời.</span></p>\n<p><strong><span style="color:#0000ff;font-size:12pt;">3.GIA HẠN VISA VIỆT NAM</span></strong></p>\n<p><span style="font-size:12pt;color:#ff6600;">Gia hạn visa là việc người nước ngoài đã có visa Việt Nam hiện đang cư trú tại Việt Nam có nhu cầu muốn tiếp tục ở lại Việt Nam để du lịch, thăm người thân và làm việc thì khi gần hết hạn thị thực phải làm thủ tục xin gia hạn visa.</span></p>\n<p><span style="font-size:12pt;color:#ff6600;">Gia hạn visa là gia hạn tờ visa cũ, nối tiếp thời gian có giá trị thị thực tại Việt Nam ghi trên visa cũ. VIệc gia hạn visa có thời hạn từ 01 tháng đến 03 tháng và có thể gia hạn visa nhiều lần.</span></p>\n<p><span style="font-size:12pt;color:#ff6600;">• Thủ tục gia hạn</span><br /><span style="font-size:12pt;color:#ff6600;">Theo quy định của Pháp lệnh Nhập cảnh, xuất cảnh, cư trú của người nước ngoài tại Việt Nam và Nghị định số 24 của Chính phủ hướng dẫn thi hành Pháp lệnh trên, thì khi visa (thị thực) hết hạn, nếu người nước ngoài mang visa có nhu cầu tiếp tục ở lại thì phải làm thủ tục xin gia hạn visa hoặc xin cấp visa mới.</span></p>\n<p><span style="font-size:12pt;color:#ff6600;">Hồ sơ thực hiện thủ tục xin gia hạn visa hoặc xin cấp visa mới cho người nước ngoài gồm tờ khai theo mẫu, hộ chiếu, được gửi tới Phòng quản lý xuất nhập cảnh Công an tỉnh, thành phố nơi người nước ngoài đang tạm trú hoặc tại Cục Quản lý xuất nhập cảnh, Bộ Công an.</span></p>\n<p><span style="font-size:12pt;color:#ff6600;">Người xin gia hạn visa Việt Nam hoặc xin cấp mới visa được trả lời kết quả trong thời hạn không quá 5 ngày làm việc, kể từ ngày nhận được hồ sơ hợp lệ. Đối với người dưới 14 tuổi đã được khai báo trong đơn xin cấp thị thực ban đầu của người dẫn đi thì không phải làm riêng thủ tục xin cấp thị thực.</span></p>\n<p><span style="font-size:12pt;color:#ff6600;">Dịch vụ gia hạn visa Việt Nam của chúng tôi bao gồm: Tư vấn các quy định pháp luật xuất nhập cảnh về các vấn đề liên quan đến việc gia hạn visa Việt Nam trong trường hợp cụ thể. chúng tôi sẽ phân tích sâu sắc các khía cạnh pháp lý, đưa ra những biện pháp bảo đảm quyền và lợi ích tốt nhất đối với khách hàng.Các bạn có thể sử dụng dịch vụ gia hạn visa Việt Nam dưới các hình thức</span><br /><span style="font-size:12pt;color:#ff6600;">Ủy quyền tham gia tiến hành thủ tục gia hạn visa Việt Nam</span></p>\n<p><span style="font-size:12pt;color:#ff6600;">Hoặc đơn vị dịch vụ gia hạn visa Việt Nam sẽ đại diện bảo lãnh gia hạn visa cho công dân nước ngoài.</span></p>\n<p><span style="font-size:12pt;color:#ff6600;">Để đơn giản hóa thủ tục gia hạn visa, với bản hộ chiếu gốc người nước ngoài hãy liên hệ với chúng tôi qua điện thoại, Email hay trực tiếp đến văn phòng để được tư vấn rõ hơn</span></p>', '', 'thong-tin-visa', '', '', '', 0, 6, '', 1, 0, '', '', '', '', 1, 680),
(5566, 'VISA CHÂU Á', '', '2012-07-16 06:55:27', 'visa-chu--thumb.jpg', 'visa-chu-.jpg', '', '<p><strong><span style="color:#0000ff;font-size:12pt;">VISA CHÂU Á</span></strong></p>', '', '<p><strong> </strong></p>\n<table style="border:1px solid #f93105;" border="1" align="center"><tbody><tr><td style="text-align:center;background-color:#fa8e04;" rowspan="2"><strong><span style="color:#00ffff;">TÊN NƯỚC </span>                            </strong></td>\n<td style="text-align:center;background-color:#0df112;" rowspan="2">\n<p><strong> </strong></p>\n<p><strong>CÁC HÌNH THỨC</strong></p>\n<p><strong> </strong></p>\n</td>\n<td style="text-align:center;" colspan="2"><strong>YÊU CẦU</strong></td>\n</tr><tr><td style="text-align:center;"><strong>DU LỊCH</strong></td>\n<td style="text-align:center;"><strong>CÔNG TÁC</strong></td>\n</tr><tr><td style="background-color:#dc143c;" rowspan="4"><strong>TRUNGQUỐC </strong></td>\n<td><strong> Visa có giá trị 3 tháng 1 lần lưu trú 30 ngày</strong></td>\n<td rowspan="4">\n<p><strong> - Hộ chiếu.</strong></p>\n<p><strong>- 2 hình 4x6.</strong></p>\n<p><strong>- Đã từng có Visa nhiều lần dành cho hình thức lưu trú có giá trị 1 năm nhiều lần</strong><br /><strong>   </strong></p>\n</td>\n<td rowspan="4"><strong>- Liên hệ    </strong></td>\n</tr><tr><td><strong> Visa có giá trị 6 tháng 2 lần lưu trú 30 ngày</strong></td>\n</tr><tr><td><strong> Visa có giá tri 6 tháng nhiều lần luu trú</strong></td>\n</tr><tr><td><strong> Visa Trung Quốc có giá trị 1 năm nhiều lần</strong></td>\n</tr><tr><td style="background-color:#00ffff;" rowspan="4"><strong>HỒNG KÔNG </strong></td>\n<td><strong> Visa có giá trị lưu trú 1 lần 7 ngày</strong></td>\n<td rowspan="4">\n<p><strong> - Hộ chiếu.</strong></p>\n<p><strong>- Hình 4x6 Chứng minh tài sản trên 3000 USD</strong></p>\n</td>\n<td rowspan="4">\n<p><strong>- Hộ Chiếu.</strong></p>\n<p><strong>- Hình 4x6</strong></p>\n<p><strong>- Hợp đồng lao động.</strong></p>\n<p><strong>- Thư mời.</strong></p>\n<p><strong>- Số dư tài khoản.</strong></p>\n</td>\n</tr><tr><td><strong> Visa Hong Kong 2 lần lưu trú 7 ngày</strong></td>\n</tr><tr><td><strong> Visa Hong Kong 1 lần lưu trú 14 ngày</strong></td>\n</tr><tr><td><strong> Visa Hong Kong 1 tháng 2 lần lưu trú 14 ngày</strong></td>\n</tr><tr><td style="background-color:#b0e0e6;"><strong> MYANMA</strong></td>\n<td><strong> Visa Myanma du lịch ( 2 tháng 1 lần)</strong></td>\n<td><strong> Hộ chiếu,2 hình 4 x 6</strong></td>\n<td><strong> Quốc tịch Việt Nam miễn ít nhất 15 ngày đi công vụ.</strong></td>\n</tr><tr><td style="background-color:#ff6347;"><strong> MA CAO</strong></td>\n<td><strong> Tuỳ trường hợp</strong></td>\n<td><strong> Hộ chiếu,2 hình 4 x 6</strong></td>\n<td><strong> Thư mời , Giấy phép kinh doanh</strong></td>\n</tr><tr><td style="background-color:#00bfff;"><strong> DUBAI</strong></td>\n<td><strong> </strong></td>\n<td><strong> Hộ chiếu ,2 hình 4 x 6</strong></td>\n<td><strong> Liên hệ</strong></td>\n</tr><tr><td style="background-color:#a52a2a;"><strong> AI CẬP</strong></td>\n<td><strong> </strong></td>\n<td><strong> Hộ chiếu, 2 hình 4 x 6</strong></td>\n<td><strong> Liên hệ</strong></td>\n</tr><tr><td style="background-color:#f08080;"><strong> QATAR</strong></td>\n<td>\n<p><strong> Visa 6 tháng nhiều lần</strong></p>\n<p><strong>Visa 1 - 3 tháng 1 lần</strong></p>\n</td>\n<td><strong> </strong></td>\n<td><strong> Liên hệ</strong></td>\n</tr><tr><td style="background-color:#ffd700;"><strong> NHẬT</strong></td>\n<td>\n<p><strong> Visa công tác 3 tháng 1 lần.</strong></p>\n<p><strong>Visa du lịch 3 tháng 1 lần.</strong></p>\n<p><strong>Visa du lịch/công tác 1 năm nhiểu lần</strong></p>\n</td>\n<td>\n<p><strong> - Passport.</strong></p>\n<p><strong>- Hồ sơ cá nhân, mối quan hệ giữa 2 cá nhân.</strong></p>\n<p><strong>- NẾU TRANSIT O NHẬT.</strong></p>\n<p><strong>- Visa có điểm đến ở nhật.</strong></p>\n<p><strong>- Passport, hồ sơ cá nhân, Booking khách sạn, vé máy bay</strong></p>\n</td>\n<td><strong> - Hồ sơ bảo lãnh, Passport, hồ sơ công ty tại việt nam, mối quan hệ giữa hai công ty</strong></td>\n</tr><tr><td style="background-color:#00ffff;"><strong> HÀN QUỐC</strong></td>\n<td>\n<p><strong> Visa công tác 3 tháng 1 lần.</strong></p>\n<p><strong>Visa du lịch 3 tháng 1 lần.</strong></p>\n<p><strong>Visa du lịch/ công tác 1 năm nhiều lần.</strong></p>\n</td>\n<td><strong> - Chứng minh việc làm, tài chính, tài sản, lịch trình du lịch cụ thể.</strong></td>\n<td>\n<p><strong> - Thư mời, thư bảo lãnh.</strong></p>\n<p><strong>- GPKD tai Hàn Quốc (Anh + Hàn),</strong></p>\n<p><strong>- Giấy xác nhận con dấu, giấy chứng nhận nộp thế. Lịch trình chi tiết ( Bên Hàn Quốc)</strong></p>\n</td>\n</tr><tr><td style="background-color:#7fffd4;"><strong> ĐOÀI LOAN</strong></td>\n<td><strong> Công tác du lịch</strong></td>\n<td><strong> Hộ chiếu 2 hình 4 x 6</strong></td>\n<td>\n<p><strong> Passport, Hình.</strong></p>\n<p><strong>GPKD Công Ty sao y bản chính.</strong></p>\n<p><strong>- Báo cáo thuế TNDN 3 tháng gầnh nhất.</strong></p>\n<p><strong>- Bảo hiểm y tế, Giấy nghỉ phép, Hợp đồng lao động.</strong></p>\n<p><strong>Chứng minh tài sản, tài chính ( nếu có).</strong></p>\n<p><strong>Đã từng có Visa di Châu Âu.</strong></p>\n</td>\n</tr><tr><td style="background-color:#008b8b;"><strong> SINGAPORE</strong></td>\n<td rowspan="5"><strong>- Công dân mang hộ chiếu Việt Nam loại phổ thông có thể nhập cảnh một số nước dưới đây không cần Visa với thời hạn tối đa là 30 ngày.</strong></td>\n<td rowspan="5"><strong>     </strong></td>\n<td rowspan="5"><strong>     </strong></td>\n</tr><tr><td style="background-color:#008b8b;"><strong> THÁI </strong><strong>LAN</strong></td>\n</tr><tr><td style="background-color:#008b8b;"><strong> INDONESIA</strong></td>\n</tr><tr><td style="background-color:#008b8b;"><strong> LÀO</strong></td>\n</tr><tr><td style="background-color:#008b8b;"><strong> PHILIPINES</strong></td>\n</tr></tbody></table><p><br /><br /></p>', '', 'visa-chau-a', '', '', '', 0, 7, '', 1, 0, '', '', '', '', 1, 680),
(5587, 'Châu Âu', '', '2012-07-17 02:16:18', 'chau-u-thumb.jpg', '', '', '<p><strong><span style="font-size:14pt;color:#0000ff;">Châu Âu</span></strong></p>', '', '<table style="border:1px solid #ff4500;" border="1" align="center"><tbody><tr><td style="text-align:center;background-color:#00fa9a;" rowspan="2"><strong>TÊN NƯỚC</strong></td>\n<td style="text-align:center;background-color:#40e0d0;" rowspan="2"><strong>CÁC HÌNH THỨC</strong></td>\n<td style="text-align:center;background-color:#0000ff;" colspan="2"><strong>YÊU CẦU</strong></td>\n</tr><tr><td style="background-color:#00fa9a;text-align:center;"><strong>DU LỊCH</strong></td>\n<td style="text-align:center;background-color:#ff69b4;"><strong>CÔNG TÁC</strong></td>\n</tr><tr><td style="text-align:center;background-color:#00ffff;"><strong>PHÁP </strong></td>\n<td>Visa công tác và du lịch</td>\n<td>\n<p> - Passport.</p>\n<p>- 2 hình 4 x 6</p>\n<p>- chứng minh tài sản.</p>\n<p> </p>\n</td>\n<td> - Thư mời, giấy phép kinh doanh.</td>\n</tr><tr><td style="text-align:center;background-color:#ff1493;"><strong>LIÊN BAN NGA</strong></td>\n<td>\n<p>Visa 1 tháng 1 lần.</p>\n<p>Visa công tác có thư mời hợp lệ.</p>\n<p>Visa có thư mời đi nga.</p>\n<p>Visa công tác và du lịch.</p>\n</td>\n<td>\n<p> - Passport .</p>\n<p>- 2 hình 4 x 6</p>\n<p>- Thư mời nếu quốc tịch người nước ngoài</p>\n</td>\n<td> </td>\n</tr><tr><td style="text-align:center;background-color:#ffa500;"><strong>TÂY BAN NHA</strong></td>\n<td>Visa công tác và du lịch.</td>\n<td>\n<p> -  Passport .</p>\n<p>- 2 hình 4 x 6</p>\n<p>- Chứng minh tài sản.</p>\n</td>\n<td>\n<p> - Thư mời, Giấy phép kinh doanh.</p>\n<p>- Mã số thuế.</p>\n<p>- Mẫu dấu</p>\n</td>\n</tr><tr><td style="text-align:center;background-color:#1e90ff;"><strong>THÔ NHĨ KỲ</strong></td>\n<td>\n<p> Visa công tác 3 tháng 1 lan và lưu trú 15 ngày.</p>\n<p>Visa công tác có thư mời.</p>\n<p>Visa du lịch không có thư mời.</p>\n</td>\n<td> Liên hệ</td>\n<td> Liên Hệ</td>\n</tr><tr><td style="text-align:center;background-color:#dc143c;"><strong>BRITISH</strong></td>\n<td> </td>\n<td colspan="2"> Thủ tục và giá dịch vụ làm Visa Anh vui lòng liên hệ<br /> </td>\n</tr></tbody></table>', '', 'chau-au', '', '', '', 0, 8, '', 0, 0, '', '', '', '', 1, 680),
(5588, 'Châu Mỹ', '', '2012-07-17 02:58:59', 'chau-my-thumb.jpg', '', '', '<p><strong><span style="color:#0000ff;font-size:14pt;">Châu Mỹ</span></strong></p>', '', '<table border="1" align="center"><tbody><tr><td style="text-align:center;">NƯỚC </td>\n<td style="text-align:center;">CÁC HÌNH THỨC</td>\n<td style="text-align:center;" colspan="2">YÊU CẦU</td>\n</tr><tr><td style="text-align:center;">MỸ</td>\n<td style="text-align:center;">\n<p>- Visa du lịch</p>\n<p>- Visa công tác</p>\n</td>\n<td style="text-align:center;">DU LỊCH</td>\n<td style="text-align:center;">CÔNG TÁC</td>\n</tr><tr><td>BRAZIL</td>\n<td>Visa 3 tháng nhiều lần, thời gian lưu trú 90 ngày</td>\n<td>\n<p>- Đương sự cung cấp thông tin, chứng minh tài chính (công việc làm tài sản, tài chính)</p>\n</td>\n<td>\n<p>- Thư đề cử công tác tại Việt Nam.<br />- Hợp đồng đồng lao động.</p>\n<p>- Giấy phép kinh doanh công ty ở Việt Nam.</p>\n<p>- Một số giấy tờ khác.</p>\n</td>\n</tr><tr><td> </td>\n<td> </td>\n<td> </td>\n<td> </td>\n</tr></tbody></table>', '', 'chau-my', '', '', '', 0, 9, '', 1, 0, '', '', '', '', 1, 680),
(5589, 'Châu Đại Dương', '', '2012-07-17 06:10:51', 'chau-ai-duong-thumb.jpg', '', '', '<p><strong><span style="font-size:14pt;color:#0000ff;">Châu Đại Dương</span></strong></p>', '', '<table border="1" align="center"><tbody><tr><td style="text-align:center;background-color:#00ced1;"><span style="color:#ff6600;"><strong>TÊN NƯỚC</strong></span></td>\n<td style="text-align:center;background-color:#ff69b4;"><span style="color:#0000ff;"><strong>CÁC HÌNH THỨC</strong></span></td>\n<td style="background-color:#00ffff;text-align:center;" colspan="2"><span style="font-size:14pt;"><span style="color:#ff6600;"><strong>YÊU CẦU</strong></span><strong> </strong></span></td>\n</tr><tr><td style="text-align:center;background-color:#ff4500;" rowspan="2"><span style="font-size:14pt;"><strong><span style="color:#0000ff;"> ÚC </span></strong></span></td>\n<td rowspan="2">\n<p><strong> - Visa công tác</strong></p>\n<p><strong>- Visa du lịch cá nhân.</strong></p>\n<p><strong>Visa du lịch đoàn.</strong></p>\n<strong> </strong></td>\n<td style="text-align:center;"><strong>DU LỊCH </strong></td>\n<td style="text-align:center;"><strong>CÔNG TÁC</strong></td>\n</tr><tr><td><strong> - Dương sự cung cấp thông tin chứng minh tài chính (công việc làm, tài sản, tài chính)</strong></td>\n<td>\n<p><strong> - Thư đề cử công tác ở Việt Nam.</strong></p>\n<p><strong>- Hợp đồng lao động, giấy phép kinh doanh công ty ở Việt Nam.</strong></p>\n<p><strong>- Một số giấy tờ khác.</strong></p>\n</td>\n</tr></tbody></table>', '', 'chau-dai-duong', '', '', '', 0, 10, '', 0, 0, '', '', '', '', 1, 680),
(5590, 'Châu Phi', '', '2012-07-17 07:16:24', 'chau-phi-thumb.jpg', '', '', '<p>CHÂU PHI</p>', '', '<table style="border:1px solid #ff1493;" border="1" align="center"><tbody><tr><td style="text-align:center;" rowspan="2"><strong>TÊN NƯỚC         </strong></td>\n<td style="text-align:center;" rowspan="2"><strong>CÁC HÌNH THỨC         </strong></td>\n<td style="text-align:center;" colspan="2"><strong>YÊU CẦU</strong></td>\n</tr><tr><td style="text-align:center;"><strong>DU LỊCH </strong></td>\n<td style="text-align:center;"><strong>CÔNG TÁC</strong></td>\n</tr><tr><td style="text-align:center;"><strong>NAM PHI</strong></td>\n<td>\n<p><strong>- Visa du lịch.</strong></p>\n<p><strong>- Visa công tác</strong></p>\n</td>\n<td>\n<p><strong> - Hộ chiếu</strong></p>\n<p><strong>- 2 hình 4 x 6 nền trắng.</strong></p>\n<p><strong>- Thư mời</strong></p>\n<p><strong>- Xác nhận việc làm.</strong></p>\n<p><strong>- Hợp đồng lao động.</strong></p>\n<p><strong>- Đơn xin nghỉ phép.</strong></p>\n<p><strong>- Chứng minh tài sản, tài chính.</strong></p>\n</td>\n<td>\n<p><strong> - Hộ chiếu</strong></p>\n<p><strong>- 2 hình 4 x 6 nền trắng</strong></p>\n<p><strong>- Thư mời</strong></p>\n<p><strong>- Thư đề cử công tác bằng tiếng anh</strong></p>\n<p><strong> </strong></p>\n</td>\n</tr><tr><td style="text-align:center;"><strong>ANGOLA</strong></td>\n<td><strong>- Visa du lịch.</strong><br /><strong>- Visa công tác</strong></td>\n<td>\n<p><strong> - Form khai</strong></p>\n<p><strong>- Hộ chiếu.</strong></p>\n<p><strong>- 2 Hình 4 x 6</strong></p>\n<p><strong>- Thư mời công tác o Angola.</strong></p>\n<p><strong>- Vé máy bay, Book khách sạn.</strong></p>\n<p><strong>Giấy khám sức khoẻ, chứng minh tài chính công việc làm.</strong></p>\n</td>\n<td><strong> - Form khai</strong>\n<p><strong>- Hộ chiếu.</strong><br /><strong>- 2 Hình 4 x 6</strong><br /><strong>- Thư mời công tác o Angola.</strong><br /><strong>- Vé máy bay, Book khách sạn.</strong><br /><strong>Giấy khám sức khoẻ, chứng minh tài chính công việc làm.</strong></p>\n</td>\n</tr></tbody></table>', '', 'chau-phi', '', '', '', 0, 11, '', 1, 0, '', '', '', '', 1, 680);

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
) ENGINE=InnoDB  DEFAULT CHARSET=utf8 AUTO_INCREMENT=1072 ;

--
-- Dumping data for table `dos_module_products_cat`
--

INSERT INTO `dos_module_products_cat` (`cat_id`, `cat_parent_id`, `cat_title`, `cat_titleen`, `preview`, `previewen`, `tag`, `tagen`, `description`, `descriptionen`, `pic_full`, `pic_desc`, `cat_order`, `cat_extra1`, `cat_extra2`, `cat_enable`, `dos_usernames_username`) VALUES
(677, 0, 'DỊCH VỤ', '', '', '', 'dich-vu', '', '', '', '', '', 1, '', '', 1, 'khungtroiviets'),
(678, 0, 'DU LỊCH', '', '', '', 'du-lich', '', 'DU LỊCH', '', 'du-lch.jpg', '', 2, '', '', 1, 'khungtroiviets'),
(679, 0, 'KHÁCH SẠN', '', '', '', 'khach-san', '', 'KHÁCH SẠN', '', 'khch-sn.jpg', '', 1, '', '', 1, 'khungtroiviets'),
(680, 0, 'VISA', '', '', '', 'visa', '', 'LÀM VISA', '', 'visa.jpg', '', 1, '', '', 1, 'khungtroiviets'),
(1071, 0, 'VÉ MÁY BAY KHUYẾN MÃI', '', '', '', 've-may-bay-khuyen-mai', '', '', '', 'v-my-bay-khuyn-mi.jpg', '', 3, '', '', 1, 'khungtroiviets');

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
) ENGINE=InnoDB  DEFAULT CHARSET=utf8 AUTO_INCREMENT=216 ;

--
-- Dumping data for table `dos_module_services`
--

INSERT INTO `dos_module_services` (`record_id`, `title`, `titleen`, `preview`, `previewen`, `content`, `contenten`, `pic_full`, `hit`, `created`, `record_order`, `hot`, `extra_field1`, `extra_field2`, `tag`, `tagen`, `description`, `descriptionen`, `activated`, `dos_usernames_username`) VALUES
(212, 'Thẻ tạm trú', '', '', '', '<p><span style="color:#0000ff;"><strong><span style="font-size:14pt;">Thẻ tạm trú</span></strong></span></p>\n<p><span style="font-size:12pt;">Cơ quan có thẩm quyền của Việt Nam cấp cho người nước ngoài tạm trú tại Việt Nam từ 01 năm trở lên. TTT có thời hạn từ 01 đến 03 năm phù hợp với mục đích nhập cảnh và tạm trú tại Việt Nam của người nước ngoài.</span></p>\n<p><span style="font-size:12pt;">Thời hạn giá trị của TTT cấp cho người nước ngoài phải ngắn hơn ít nhất là 01 tháng so với thời hạn còn giá trị của hộ chiếu. Người nước ngoài mang TTT còn giá trị kèm theo hộ chiếu còn giá trị được nhập cảnh, xuất cảnh Việt Nam không cần phải có thị thực Việt Nam. Thời hạn giá trị của TTT cấp cho người nước ngoài phải ngắn hơn ít nhất là 01 tháng so với thời hạn còn giá trị của hộ chiếu. Người nước ngoài mang TTT còn giá trị kèm theo hộ chiếu còn giá trị được nhập cảnh, xuất cảnh Việt Nam không cần phải có thị thực Việt Nam . Người nước ngoài mang TTT còn giá trị mà trong mục "mang hộ chiếu" ghi chữ "không", thì vẫn được nhập cảnh, xuất cảnh bình thường, không đòi hỏi phải có hộ chiếu.</span></p>\n<p><span style="font-size:12pt;">Người nước ngoài mang hộ chiếu ngoại giao, hộ chiếu công vụ, hộ chiếu phổ thông được miễn thị thực theo điều ước quốc tế mà ViệtNam kí kết hoặc tham gia và người có hộ chiếu còn thời hạn giá trị dưới 1 năm thì không được cấp TTT. Người nước ngoài bị mất TTT, bị hư hỏng, hết hạn hoặc thay đổi nội dung của thẻ, thì được xem xét cấp lại TTT. Thời hạn của thẻ cấp lại bằng thời hạn của thẻ</span></p>\n<p><span style="text-decoration:underline;color:#0000ff;"><strong><span style="font-size:14pt;">I.Đối tượng được cấp thẻ tạm trú</span></strong></span></p>\n<p><span style="font-size:12pt;">Thẻ tạm trú là thị thực dài hạn tại Việt Nam. Người nước ngoài tạm trú từ 1 năm trở lên được cơ quan quản lý xuất nhập cảnh có thẩm quyền thuộc Bộ Công an cấp Thẻ tạm trú. Thẻ tạm trú có thời hạn từ 1 năm đến 3 năm. Người mang Thẻ tạm trú được miễn thị thực khi xuất cảnh, nhập cảnh trong thời hạn giá trị của thẻ tạm trú</span></p>\n<p><span style="font-size:12pt;">Thủ tục tạm trú tại Việt Nam đối với người nước ngoài sẽ thuận lợi nếu người nước ngoài được cấp thẻ tạm trú.</span></p>\n<p><span style="font-size:12pt;">Các trường hợp được cấp thẻ tạm trú tại Việt Nam bao gồm:</span></p>\n<p><span style="font-size:12pt;">- Người nước ngoài là thành viên của công ty trách nhiệm hữu hạn hai thành viên trở lên;</span></p>\n<p><span style="font-size:12pt;">- Người nước ngoài là chủ sở hữu của công ty trách nhiệm hữu hạn một thành viên;</span></p>\n<p><span style="font-size:12pt;">- Người nước ngoài là thành viên Hội đồng quản trị của công ty cổ phần;</span></p>\n<p><span style="font-size:12pt;">- Luật sư nước ngoài đã được Bộ Tư pháp cấp giấy phép hành nghề luật sư tại Việt nam theo qui định của pháp luật;</span></p>\n<p><span style="font-size:12pt;">- Người nước ngoài có giấy phép lao động đang làm việc tại các loại hình doanh nghiệp, VPĐD các công ty nước ngoài;</span></p>\n<p><span style="font-size:12pt;">- Chuyên gia, sinh viên, học viên, đang làm việc, học tập theo các chương trình, dự án quốc gia ký kết giữa các Bộ, Ngành được Chính phủ phê duyệt;</span></p>\n<p><span style="font-size:12pt;">- Thân nhân đi cùng gồm (cha, mẹ, vợ, chồng, con ruột (dưới 18 tuổi)) của những người được cấp thẻ tạm trú.</span></p>\n<p><span style="text-decoration:underline;color:#0000ff;"><strong><span style="font-size:14pt;">II.Các trường hợp cấp thẻ tạm trú</span></strong></span></p>\n<p><span style="font-size:12pt;">Các trường hợp được cấp thẻ tạm trú tại Việt Nam bao gồm:</span></p>\n<p><span style="font-size:12pt;">- Người nước ngoài là thành viên của công ty trách nhiệm hữu hạn hai thành viên trở lên;</span></p>\n<p><span style="font-size:12pt;">- Người nước ngoài là chủ sở hữu của công ty trách nhiệm hữu hạn một thành viên;</span></p>\n<p><span style="font-size:12pt;">- Người nước ngoài là thành viên Hội đồng quản trị của công ty cổ phần;</span></p>\n<p><span style="font-size:12pt;">- Luật sư nước ngoài đã được Bộ Tư pháp cấp giấy phép hành nghề luật sư tại Việt nam theo qui định của pháp luật;</span></p>\n<p><span style="font-size:12pt;">- Người nước ngoài có giấy phép lao động đang làm việc tại các loại hình doanh nghiệp, VPĐD các công ty nước ngoài;</span></p>\n<p><span style="font-size:12pt;">- Chuyên gia, sinh viên, học viên, đang làm việc, học tập theo các chương trình, dự án quốc gia ký kết giữa các Bộ, Ngành được Chính phủ phê duyệt;</span></p>\n<p><span style="font-size:12pt;">- Thân nhân đi cùng gồm (cha, mẹ, vợ, chồng, con ruột (dưới 18 tuổi) của những người được cấp thẻ.</span></p>\n<p><span style="color:#ff6600;font-size:14pt;"><strong>1. Điều kiện thực hiện cấp thẻ tạm trú</strong></span></p>\n<p><span style="font-size:12pt;">- Có thời gian tạm trú tại Việt Nam từ 01 năm trở lên.</span></p>\n<p><span style="font-size:12pt;">- Hộ chiếu còn thời hạn từ 01 năm trở lên.</span></p>\n<p><span style="font-size:14pt;background-color:#ffffff;color:#ff6600;"><strong>2. Các bước thực hiện xin cấp thẻ tạm trú</strong></span></p>\n<p><span style="font-size:12pt;">- Bước 1: Chuẩn bị hồ sơ theo quy định của pháp luật</span></p>\n<p><span style="font-size:12pt;">- Bước 2: Người nước ngoài xin cấp thẻ tạm trú phải thông qua cơ quan, tổ chức, cá nhân mời, bảo lãnh để làm thủ tục với Phòng Quản lý xuất nhập cảnh Công an tỉnh, thành phố trực thuộc Trung ương.</span></p>\n<p><span style="font-size:12pt;">Cơ quan, tổ chức, cá nhân mời, bảo lãnh người nước ngoài gửi hồ sơ tới Phòng Quản lý xuất nhập cảnh Công an tỉnh, thành phố trực thuộc Trung ương để làm thủ tục xin cấp thẻ tạm trú.</span></p>\n<p><span style="font-size:12pt;">* Cán bộ quản lý xuất nhập cảnh tiếp nhận hồ sơ kiểm tra tính pháp lý và nội dung hồ sơ viết giấy biên nhận trao cho người nộp và yêu cầu nộp lệ phí cho cán bộ thu lệ phí. Cán bộ thu lệ phí nhận tiền, viết biên lai thu tiền và giao giấy biên nhận cùng biên lai thu tiền cho người nộp hồ sơ.</span></p>\n<p><span style="font-size:12pt;">- Bước 3: Nhận thẻ tạm trú tại Bộ phận tiếp nhận và trả kết quả Phòng Quản lý xuất nhập cảnh Công an tỉnh, thành phố trực thuộc Trung ương</span></p>\n<p><span style="font-size:12pt;">Người nhận đưa giấy biên nhận, biên lai thu tiền để đối chiếu. Cán bộ trả kết quả kiểm tra và yêu cầu ký nhận, trả thẻ tạm trú cho người đến nhận kết qu</span></p>', '', '', 8, '2012-07-16 02:15:30', 1, 1, '', '', 'the-tam-tru', '', '', '', 1, 'khungtroiviets'),
(213, 'GP LAO ĐỘNG', '', '', '', '<p><strong><span style="color:#0000ff;font-size:14pt;">GP LAO ĐỘNG</span></strong></p>\n<p><strong><span style="font-size:14pt;color:#ff6600;">GIẤY PHÉP LAO ĐỘNG – VIỆT NAM WORK PERMIT</span></strong></p>\n<p><span style="color:#0000ff;"><strong><span style="font-size:12pt;">LÀM VIỆC TRÊN 03 THÁNG PHẢI CÓ GIẤY PHÉP LAO ĐỘNG</span></strong></span></p>\n<p><span style="font-size:12pt;">Theo quy định tại khoản 1 điều 9 Nghị định số 34/2008/NĐ-CP của Chính Phủ ngày 25 tháng 03 năm 2008 quy định về tuyển dụng và quản lý người nước ngoài làm việc tại Việt Nam thì người nước ngoài vào Việt Nam làm việc với thời hạn trên 03 tháng thì phải có giấy phép lao động.</span><br /><span style="font-size:12pt;">Người nước ngoài vào Việt Nam làm việc để xử lý các trường hợp khẩn cấp như: những sự cố, tình huống kỹ thuật, công nghệ phức tạp nảy sinh làm ảnh hưởng hoặc có nguy cơ ảnh hưởng tới sản xuất, kinh doanh mà các chuyên gia Việt Nam và các chuyên gia nước ngoài hiện đang ở Việt Nam không xử lý được có thời gian trên 03 (ba) tháng thì hết 03 (ba) tháng làm việc tại Việt Nam, người nước ngoài phải làm thủ tục đăng ký cấp giấy phép lao động theo quy định pháp luật.</span><br /><span style="font-size:12pt;">Người nước ngoài đang làm việc tại Việt Nam mà chưa được cấp giấy phép lao động thì phải làm thủ tục để đề nghị cấp giấy phép lao động theo quy định tại Nghị định này. Nếu người lao động nước ngoài không có giấy phép lao động thì Sở Lao động - Thương binh và Xã hội đề nghị Bộ Công an ra quyết định trục xuất khỏi Việt Nam theo quy định của pháp luật.</span><br /><span style="font-size:12pt;">Sở lao động thương binh và xã hội có trách nhiệm theo dõi, tổng hợp và báo cáo tình hình lao động nước ngoài làm việc tại các doanh nghiệp, cơ quan, tổ chức trên địa bàn quản lý.</span><br /><span style="font-size:12pt;">Đơn vị sử dụng lao động người nước ngoài phải có trách nhiệm Báo cáo tình hình người sử dụng người nước ngoài làm việc tại Việt Nam theo quy định của Bộ Lao động - Thương binh và Xã hội.</span><br /><span style="font-size:12pt;">Ngày 22 tháng 3 năm 2010 của Bộ Lao động thương binh và xã hội đã ra công văn số 828/LĐTBXH-VL về việc tăng cường quản lý lao động nước ngoài làm việc ở Việt Nam.</span><br /><span style="font-size:12pt;">Theo đó Bộ Lao động thương binh và xã hội đề nghị các Ủy ban nhân dân tỉnh, thành phố đôn đốc, nhắc nhở các Sở, ban, ngành và các cơ quan có liên quan tiếp tục thực hiện những nội dung chủ yếu sau:</span><br /><span style="font-size:12pt;">Tăng cường công tác tuyên truyền, phổ biến và hướng dẫn các doanh nghiệp, tổ chức có sử dụng lao động nước ngoài thực hiện nghiêm túc qui định pháp luật liên quan trực tiếp đến người lao động nước ngoài và xác định rõ trách nhiệm của người lao động, người sử dụng lao động.</span><br /><span style="font-size:12pt;">Tiến hành kiểm tra thanh tra các doanh nghiệp, tổ chức sử dụng lao động nước ngoài trên địa bàn. Trong đó trọng tâm là kiểm tra, thanh tra việc thực hiện pháp luật Việt Nam trong việc tuyển dụng, cấp giấy phép lao động, gia hạn giấy phép lao động. Khi thanh tra, kiểm tra phát hiện vi phạm sẽ kiên quyết xử lý theo qui định pháp luật Việt Nam, đối với các trường hợp không đủ điều kiện làm việc tại Việt Nam thì buộc xuất cảnh hoặc trục xuất.</span><br /><span style="font-size:12pt;">Ban hành quy chế phối hợp giữa Sở Lao động thương binh và xã hội với Sở Tư pháp, Sở kế hoạch và đầu tư, Công an tỉnh và các ban ngành liên quan trong việc quản lý và xử lý vi phạm pháp luật trong lĩnh vực sử dụng, quản lý người lao động nước ngoài.</span><br /><span style="font-size:12pt;">Định kỳ trước 25 cuối quý, Sở Lao động thương binh và xã hội báo cáo tổng hợp tình hình quản lý người lao động nước ngoài tại địa phương gửi về Bộ Lao động thương binh và xã hội để tổng hợp báo cáo Thủ tướng Chính phủ về tình hình quản lý người lao động nước ngoài.</span><br /><strong><span style="color:#0000ff;font-size:14pt;">CẤP GIẤY PHÉP LAO ĐỘNG</span></strong></p>\n<p><span style="font-size:12pt;">Trình tự xin cấp giấy phép lao động cho người lao động nước ngoài làm việc tại Việt Nam thực hiện theo thủ tục sau:</span></p>\n<p><span style="font-size:12pt;">Người sử dụng lao động làm hồ sơ xin cấp giấy phép lao động cho người nước ngoài nộp tại Sở Lao động thương binh và Xã hội tỉnh (thành phố) nơi đóng trụ sở của đơn vị. Trong thời hạn 12 ngày làm việc kể từ khi thụ lý hồ sơ hợ lệ, Sở lao động Thương binh và xã hội cấp giấy phép lao động cho người nước ngoài. Đơn vị sử dụng lao động nhận giấy phép lao động và tiến hành ký kết hợp đồng lao động với người nước ngoài.</span></p>\n<p><span style="text-decoration:underline;color:#ff6600;"><strong><span style="font-size:12pt;text-decoration:underline;">I. Hồ sơ xin cấp mới Giấy phép lao động cho người nước ngoài</span></strong></span></p>\n<p>1. Bản sao Giấy phép hoạt động của đơn vị (Có dấu Công chứng nhà nước)</p>\n<p>Ví dụ: Giấy chứng nhận đầu tư của Công ty có vốn đầu tư nước ngoài; Giấy chứng nhận đăng ký kinh doanh; hoặc Giấy phép hoạt động của Chi nhánh, Văn phòng Đại diện của các công ty, các tổ chức nước ngoài tại Việt Nam….. vv</p>\n<p>- Văn bản đề nghị cấp giấy phép lao động của người sử dụng lao động theo Mẫu 04</p>\n<p>- Phiếu đăng ký dự tuyển lao động của người nước ngoài theo Mẫu số 1 đối với trường hợp người nước ngoài được tổ chức, doanh nghiệp tại Việt Nam tuyển dụng theo hình thức hợp đồng lao động;</p>\n<p><span style="text-decoration:underline;">Các trường hợp khác thì gồm các Văn bản sau:</span></p>\n<p>- Văn bản của doanh nghiệp nước ngoài cử người nước ngoài sang làm việc tại hiện diện thương mại của doanh nghiệp nước ngoài trên lãnh thổ Việt Nam đối với trường hợp người nước ngoài di chuyển trong nội bộ doanh nghiệp;</p>\n<p>- Hợp đồng ký kết giữa đối tác phía Việt Nam và phía nước ngoài đối với trường hợp người nước ngoài làm việc trong doanh nghiệp nước ngoài không có hiện diện thương mại tại Việt Nam vào Việt nam thực hiện các hợp đồng kinh tế, thương mại, tài chính, ngân hàng, bảo hiểm, khoa học kỹ thuật, văn hóa, thể thao;</p>\n<p>- Giấy chứng nhận của tổ chức phi chính phủ nước ngoài được phép hoạt động tại Việt Nam đối với trường hợp người nước ngoài đại diện cho tổ chức phi chính phủ nước ngoài được phép hoạt động tại Việt Nam.</p>\n<p>2. Phiếu lý lịch tư pháp do cơ quan có thẩm quyền của nước mà người nước ngoài cư trú trước khi đến Việt Nam cấp. Trường hợp người nước ngoài hiện đã cư trú tại Việt NamNam nơi người nước ngoài đang cư trú cấp. Thời điểm phiếu lý lịch tư pháp được lập không quá 6 tháng tính đến ngày nộp hồ sơ đề nghị cấp giấy phép lao động. từ đủ 06 tháng trở lên thì chỉ cần phiếu lý lịch tư pháp do Sở Tư pháp tỉnh, thành phố của Việt</p>\n<p>3. Bản lý lịch tự thuật có dán ảnh của người nước ngoài theo Mẫu số 02.</p>\n<p>4. Giấy chứng nhận sức khỏe được cấp ở nước ngoài hoặc tại Việt Nam</p>\n<p>Thời điểm phiếu khám sức khỏe được lập không quá 6 tháng tính đến thời điểm nộp hồ sơ đề nghị cấp giấy phép lao động</p>\n<p><span style="text-decoration:underline;color:#ff6600;"><strong><span style="font-size:12pt;">II. Yêu cầu đối với hồ sơ</span></strong></span></p>\n<p>1. Mọi giấy tờ được lập ở nước ngoài phải được Hợp pháp hóa lãnh sự và được dịch ra tiếng Việt và Công chứng;</p>\n<p>2. Hồ sơ khai bằng tiếng Việt Nam hoặc 02 thứ tiếng (Tiếng Việt và tiếng nước ngoài). Trường hợp chỉ khai bằng một thứ tiếng nước ngoài thỉ phải dịch ra tiếng Việt Nam;</p>\n<p>3. Mỗi người lao động làm 02 Bộ hồ sơ:</p>\n<p>- 01 Bộ hồ sơ nộp cho Sở lao động Thương binh và Xã hội tỉnh, thành phố nơi mà đơn vị sử dụng lao động đặt trụ sở;</p>\n<p>- 01 Bộ hồ sơ lưu tại Đơn vị sử dụng lao động.</p>\n<p>Giấy phép lao động được cấp có thời hạn tối đa là 03 năm và có thể được gia hạn giấy phép lao động 03 lần.</p>\n<p><span style="text-decoration:underline;color:#ff6600;"><strong><span style="font-size:12pt;">III.Gia hạn giấy phép lao động</span></strong></span></p>\n<p><strong><span style="color:#0000ff;font-size:12pt;">1. Các trường hợp được gia hạn giấy phép lao động</span></strong></p>\n<p>- Người sử dụng lao động đã có kế hoạch và đang đào tạo người lao động Việt Nam để thay thế cho công việc mà người nước ngoài đang đảm nhận, nhưng người lao động Việt Nam chưa thay thế được và người nước ngoài đó không bị xử lý kỷ luật lao động theo quy định tại điểm b, điểm c khoản 1 điều 84 của Bộ Luật lao động đã sửa đổi, bổ sung năm 2007.</p>\n<p>- Người nước ngoài vào Việt Nam làm việc theo quy định tại điểm c và điểm d khoản 1 điều 1 của Nghị định này mà các công việc đòi hỏi quá 36 (ba mươi sáu) tháng.</p>\n<p><strong><span style="color:#0000ff;font-size:12pt;">2. Hồ sơ đề nghị gia hạn giấy phép lao động</span></strong></p>\n<p>Mỗi người lao động làm 02 bộ hồ sơ:</p>\n<p>- 01 Bộ hồ sơ nộp cho Sở lao động Tương binh và Xã hội tỉnh, thành phố nơi mà đơn vị sử dụng lao động đặt trụ sở;</p>\n<p>- 01 Bộ hồ sơ lưu tại Đơn vị sử dụng lao động.</p>\n<p>a. Đối với người lao động nước ngoài làm việc theo hình thức hợp đồng lao động, bao gồm các tài liệu sau:</p>\n<p>- Đề nghị gia hạn giấy phép lao động của người sử dụng lao động theo mẫu quy định của Bộ lao động- Thương binh và xã hội. Trong đó phải nêu rõ lý do chưa đào tạo được người Việt Nam để thay thế, họ tên những người Việt Nam đã và đang được đào tạo, kinh phí đào tạo, thời gian đào tạo, địa điểm đào tạo để thay thế người lao động nước ngoài;</p>\n<p>- Bản hợp đồng lao động (có xác nhận của người sử dụng lao động);</p>\n<p>- Giấy phép lao động đã được cấp</p>\n<p>b. Đối với người nước ngoài làm việc theo hình thức thực hiện các loại hợp đồng về kinh tế, thương mại, tài chính, ngân hàng, bảo hiểm, khoa học kỹ thuật, văn hóa, thể thao, giáo dục, y tế và nhà cung cấp dịch vụ theo hợp đồng, hồ sơ bao gồm:</p>\n<p>- Đề nghị gia hạn giấy phép lao động của đối tác phía Việt Nam theo mẫu quy định của Bộ lao động- Thương binh và Xã hội;</p>\n<p>- Bản sao hợp đồng ký kết giữa đối tác phía Việt Nam và phía nước ngoài;</p>\n<p>- Giấy phép lao động đã được cấp.</p>\n<p><span style="color:#0000ff;"><strong><span style="font-size:12pt;">3. Thời hạn gia hạn của giấy phép lao động</span></strong></span></p>\n<p>- Thời hạn gia hạn của giấy phép lao động phụ thuộc vào thời gian làm việc tiếp của người nước ngoài cho người sử dụng lao động được xác định trong hợp đồng lao động hoặc văn bản của phía nước ngoài làm việc tại Việt Nam hoặc hợp đồng ký kết giữa đối tác phía Việt Nam và phía nước ngoài;</p>\n<p>- Thời hạn tối đa cho mỗi lần gia hạn là 36 (ba mươi sáu) tháng.</p>\n<p><span style="color:#0000ff;"><strong><span style="font-size:12pt;">4. Địa điểm nộp hồ sơ</span></strong></span></p>\n<p>Người lao động, đơn vị sử dụng lao động trực tiếp nộp hồ sơ Xin cấp giấy phép lao động cho người nước ngoài tại Sở lao động Thương Binh và Xã hội tỉnh, thành phố mà đơn vị sử dụng lao động có trụ sở chính.</p>\n<p><strong><span style="font-size:12pt;color:#0000ff;">5. Trình tự gia hạn giấy phép lao động</span></strong></p>\n<p>- Trước ít nhất 30 (ba mươi) ngày, kể từ ngày giấy phép lao động hết hạn người sử dụng lao động hoặc đối tác phía Việt Nam phải nộp 01 (một) hồ sơ đề nghị gia hạn giấy phép lao động cho Sở lao động - Thương binh và Xã hội đã cấp giấy phép lao động đó.</p>\n<p>- Trong thời hạn 15 (mười lăm) ngày, kể từ ngày nhận hồ sơ đề nghị gia hạn giấy phép lao động, Sở Lao động – Thương binh và Xã hội phải gia hạn giấy phép lao động.</p>\n<p><strong><span style="font-size:12pt;color:#0000ff;">6. Nhận giấy phép đã gia hạn</span></strong></p>\n<p>Người sử dụng lao động hoặc đối tác phía Việt Nam có trách nhiệm nhận giấy phép lao động do Sở lao động - Thương binh và Xã hội cấp và trao cho người lao động.</p>', '', '', 4, '2012-07-16 02:29:00', 2, 0, '', '', 'gp-lao-dong', '', '', '', 1, 'khungtroiviets'),
(214, 'Thẻ APEC', '', '', '', '<p><span style="color:#0000ff;"><strong><span style="font-size:14pt;">Thẻ APEC</span></strong></span></p>\n<p><strong><span style="color:#ff6600;font-size:12pt;">THẺ APEC DÀNH CHO DOANH NHÂN VIỆT NAM</span></strong></p>\n<p><span style="text-decoration:underline;color:#0000ff;"><strong><span style="font-size:12pt;">Thẻ ABTC (APEC) là gì?</span></strong></span><br /><span style="font-size:11pt;">- Thẻ ABTC là loại giấy tờ dùng để thay thế thị thực nhập cảnh vào các nền kinh tế thành viên tham gia chương trình ABTC (không có giá trị thay thế hộ chiếu). Do đó, khi nhập xuất cảnh, người mang thẻ cần xuất trình kèm theo hộ chiếu hợp lệ (còn giá trị và đúng với số hộ chiếu được in trên thẻ).</span></p>\n<p><span style="font-size:11pt;">Với sự đồng thuận của các Nguyên thủ Quốc gia thuộc khối diễn đàn Hợp tác Kinh tế Châu Á- Thái Bình Dương tại Hội nghị APEC Hà Nội tháng 12 năm 2006. 18 nền kinh tế thành viên APEC trên tổng số 21 thành viên đã tham gia chương trình thẻ ABTC (thẻ APEC) gồm:</span><em> <strong><span style="font-size:11pt;color:#0000ff;">Australia, Brunei, Chile, Trung Quốc, Hong Kong, Indonesia, Nhật Bản, Hàn Quốc, Malaysia, New Zealand, Papua New Guinea, Peru; Philippines, Singapore, Mehico, Đài Loan, Thái Lan và Việt Nam.</span></strong></em><span style="font-size:11pt;color:#000000;"> 3 Quốc gia chưa chính thức tham gia vào chương trình thẻ: Mỹ, Nga, Canada, cũng đang trên lộ trình tham gia vào chuơng trình này.</span></p>\n<p><span style="color:#0000ff;"><strong><span style="font-size:12pt;">Quyền lợi của Thẻ Apec</span></strong></span></p>\n<p>- <span style="font-size:11pt;">Người mang thẻ ABTC, khi nhập cảnh, xuất cảnh các nước và vùng lãnh thổ có tên ghi trong thẻ thì không cần phải có thị thực (miễn Visa), không phải làm thủ tục đăng ký lưu trú và được xuất nhập cảnh nhiều lần tối đa mỗi lần là 60 - 90 ngày của các nước và vùng lãnh thổ đó, thời hạn thẻ được kéo dài tới 3 năm và sau khi thẻ hết hạn có thể cấp đổi lại.</span></p>\n<p><span style="font-size:11pt;">- Ưu tiên về các thủ tục hành chánh ở những nơi công cộng, sân bay là chứng từ quan trọng để xin visa đến các nước khối Châu Âu, Mỹ và các nước phát triển khác.</span></p>\n<p><span style="text-decoration:underline;background-color:#ffffff;color:#0000ff;"><strong><span style="font-size:12pt;text-decoration:underline;">Đối tượng được cấp thẻ</span></strong></span></p>\n<p><span style="font-size:11pt;">Là doanh nhân Việt Nam đang làm việc tại các doanh nghiệp được thành lập theo Luật Doanh nghiệp, Luật Hợp tác xã và Luật Đầu tư tại Việt Nam gồm:</span></p>\n<p><span style="font-size:11pt;">(1). Chủ tịch HĐQT, Tổng Giám đốc, Phó Tổng Giám đốc, Giám đốc, Phó Giám đốc các doanh nghiệp;</span></p>\n<p><span style="font-size:11pt;">(2). Giám đốc, Phó Giám đốc các doanh nghiệp Nhà nước, khu Công nghiệp, Khu chế xuất của Việt Nam ;</span></p>\n<p><span style="font-size:11pt;">(3) Giám đốc, Phó Giám đốc Ngân hàng Việt Nam ; Giám đốc, Phó Giám đốc Chi nhánh Ngân hàng Việt Nam ;</span></p>\n<p><span style="font-size:11pt;">(4). Kế toán trưởng hoặc người có chức danh Trưởng phòng trong các doanh nghiệp ngoài Quốc doanh ;</span></p>\n<p><span style="font-size:11pt;">(5). Chủ tịch, Phó Chủ tịch HĐQT Công ty Cổ phần ; Chủ tịch, Phó Chủ tịch HĐTV ; Chủ tịch, Phó Chủ tịch công ty TNHH; Chủ tịch ban Quản trị Hợp tác Xã, Chủ nhiệm Hợp tác xã.</span></p>\n<p><span style="text-decoration:underline;color:#0000ff;"><strong><span style="font-size:12pt;">Thủ tục làm thẻ APEC bao gồm</span></strong></span></p>\n<p><span style="font-size:11pt;">1. Giấy chứng nhận đăng ký kinh doanh (02 bản công chứng)</span><br /><span style="font-size:11pt;">2. Hộ chiếu của người xin cấp thẻ còn thời hạn từ 03 năm trở lên (02 bản Công chứng).</span><br /><span style="font-size:11pt;">3. Hóa đơn nộp thuế thu nhập doanh nghiệp 06 tháng gần nhất (02 bản sao đóng dấu công ty)</span><br /><span style="font-size:11pt;">4. Chứng minh thư của người xin cấp thẻ. (02 bản photo)</span><br /><span style="font-size:11pt;">5. Hợp đồng Kinh tế năm gần nhất (ký với đối tác nước ngoài thuộc một trong các quốc gia tham gia chương trình     thẻ APEC), tờ khai hải quan, giấy nộp thuế hải quan (02 bản sao đóng dấu công ty).</span><br /><span style="font-size:11pt;">6. 08 ảnh 3 x4 (phông nền trắng),</span><br /><span style="font-size:11pt;">7. Và một số giấy tờ khác chúng tôi sẽ tư vấn cho doanh nghiệp khi đáp ứng điều kiện xin thẻ</span></p>\n<p><br /><span style="color:#0000ff;"><strong><span style="font-size:11pt;">Thẻ Doanh Nhân Apec (ABTC) sẽ mang lại nhiều thuận lợi trong việc giao dịch với các đối tác và tiện tích trong việc kinh doanh của mỗi doanh nghiệp. Thẻ Apec chính là đẳng cấp dành cho các doanh nhân thành đạt ngày nay.</span></strong></span></p>', '', '', 5, '2012-07-16 02:37:14', 3, 0, '', '', 'the-apec', '', '', '', 1, 'khungtroiviets'),
(215, 'Thẻ Bông Sen Vàng', '', '', '', '<p><strong><span style="color:#0000ff;"><span style="font-size:12pt;">Thẻ Bông Sen Vàng</span></span></strong></p>\n<p> </p>\n<p><span style="font-size:11pt;">Chương trình Bông Sen Vàng (tên viết tắt là GLP) mong muốn đem tới cho những khách hàng thường xuyên của Vietnam Airlines các phần thưởng xứng đáng:<strong><span style="color:#0000ff;font-size:12pt;"> những chuyến bay miễn phí, những ưu đãi dịch vụ cùng sự thoải mái và tiện nghi.</span></strong></span></p>\n<p><span style="font-size:11pt;">Là Hội viên của Chương trình GLP, sau mỗi chuyến bay với Vietnam Airlines, sau mỗi lần sử dụng sản phẩm, dịch vụ của các Đối tác Chương trình GLP, dặm sẽ được tích luỹ vào tài khoản của Hội viên và dễ dàng chuyển dặm thành những phần thưởng giá trị cho mình và cho người thân.</span></p>\n<p><span style="font-size:11pt;">Để trở thành hội viên Chương trình Bông Sen Vàng, Quý khách vui lòng liên hệ đại lý để nhận mẫu form đăng ký.</span></p>\n<p><span style="color:#0000ff;"><strong><span style="font-size:12pt;">Lưu ý</span></strong></span></p>\n<p><span style="font-size:11pt;">♦ Quý khách thông báo số thẻ hội viên mỗi khi đặt chỗ và xuất trình thẻ hội viên khi làm thủ tục chuyến bay. Bằng cách này, quý khách sẽ bắt đầu tích luỹ dặm bay mặc dù quý khách vẫn chưa nhận được thẻ chính thức.</span><br /><span style="font-size:11pt;">♦ Quý khách cần lưu giữ thẻ lên máy bay gốc và bản sao cuống vé hoặc số vé nếu là vé điện tử (được dùng để khiếu nại dặm cho các chuyến bay còn thiếu trong tài khoản) hoá đơn mua, sử dụng sản phẩm dịch vụ của đối tác chương trình cho đến khi dặm đã được cộng vào tài khoản.</span><br /><span style="font-size:11pt;">♦ Thẻ hội viên chính thức và các ấn phẩm Chương trình sẽ được gửi đến địa chỉ thư tín của Quý khách sau khi Quý khách thực hiện chuyến bay đủ điều kiện cộng dặm đầu tiên với Vietnam Airlines hoặc bất kỳ hãng hàng không nào thuộc SkyTeam và dặm sẽ được cộng vào tài khoản.</span></p>\n<p style="text-align:center;"><span style="color:#ff6600;"><strong><span style="font-size:12pt;">Các hạng thẻ hội viên Bông Sen Vàng của Vietnam Airlines</span></strong></span></p>\n<p><span style="font-size:11pt;">Chương trình Khách hàng thuờng xuyên có 5 hạng thẻ là hạng Đăng ký, hạng Bạc, hạng Titan, hạng Vàng và hạng Bạch Kim, trong đó hạng Đăng ký là khi khách hàng trở thành hội viên của chương trình Bông Sen Vàng.</span></p>\n<p><span style="font-size:11pt;">Số dặm xét hạng sẽ được tích lũy vào tài khoản khi hội viên thực hiện các chuyến bay với Vietnam Airlines hoặc với các hãng hàng không trong SkyTeam. Tiêu chí xét hạng GLP và hạng thẻ SkyTeam tương ứng với mỗi loại thẻ GLP được liệt kê trong bảng dưới đây:</span></p>\n<table border="1" align="center"><tbody><tr><td style="text-align:center;"><strong>THE GLP</strong></td>\n<td style="text-align:center;"><strong>TIÊU CHÍ XET HẠNG</strong></td>\n<td style="text-align:center;"><strong>KỲ XÉT HẠNG</strong></td>\n<td style="text-align:center;"><strong>THE SKYTEAM</strong></td>\n</tr><tr><td style="text-align:center;"><strong>Bạch Kim</strong></td>\n<td style="text-align:left;"><strong>50,000 dặm xét hạng hoặc 50 chuyến bay</strong></td>\n<td style="text-align:left;"><strong>12 tháng liên tiếp</strong></td>\n<td style="text-align:center;"><strong>Elite Plus</strong></td>\n</tr><tr><td style="text-align:center;"><strong>Vàng</strong></td>\n<td style="text-align:left;"><strong>30,000 dặm xét hạng hoặc 30 chuyến bay</strong></td>\n<td style="text-align:left;"><strong>12 tháng liên tiếp</strong></td>\n<td style="text-align:center;"><strong>Elite</strong></td>\n</tr><tr><td style="text-align:center;"><strong>Titan</strong></td>\n<td style="text-align:left;"><strong>15,000 dặm xét hạng hoặc 20 chuyến bay</strong></td>\n<td style="text-align:left;"><strong>12 tháng liên tiếp</strong></td>\n<td style="text-align:center;"><strong>Elite</strong></td>\n</tr><tr><td style="text-align:center;" rowspan="3"><strong>Bạc</strong></td>\n<td style="text-align:left;"><strong>01 dặm xét hạng hoặc 01 chuyến bay</strong></td>\n<td style="text-align:center;"><strong> </strong></td>\n<td style="text-align:center;"><strong> </strong></td>\n</tr><tr><td style="text-align:left;"><strong>Là chủ thẻ Vietnam Airlines – Vietcombank – American Express hoặc</strong></td>\n<td style="text-align:center;"><strong> </strong></td>\n<td style="text-align:center;"><strong> </strong></td>\n</tr><tr><td style="text-align:left;"><strong>à chủ thẻ Vietnam Airlines – Techcombank – VISA đồng thời là khách hàng VIP của Techcombank</strong></td>\n<td style="text-align:center;"><strong> </strong></td>\n<td style="text-align:center;"><strong> </strong></td>\n</tr></tbody></table><p><span style="color:#0000ff;"><strong><span style="font-size:12pt;"> </span></strong></span></p>\n<p><span style="color:#0000ff;"><strong><span style="font-size:12pt;">Những điều cần biết</span></strong></span></p>\n<p><span style="font-size:11pt;">1. Chuyến bay đủ điều kiện cộng dặm được mua ở hạng đặt chỗ và trên chuyến bay được cộng dặm của Vietnam Airlines hoặc của các hãng hàng không thuộc liên minh SkyTeam.</span><br /><span style="font-size:11pt;">2. Các hãng hàng không thuộc SkyTeam: Air France (AF), Korean Air(KE), Royal Dutch Airlines(KL), Alitalia (AZ, China Southern Airlines (CZ), Delta Airlines (DL), Aeroflot (SU), Czech Airlines (OK), Aeromexico (AM), Kenya Airways (KQ), Tarom (RO), Air Europa (UX) và Vietnam Airlines (VN).</span><br /><span style="font-size:11pt;">3. Dặm xét hạng là dặm Hội viên tích luỹ được khi thực hiện các chuyến bay đủ điều kiện cộng dặm trên Vietnam Airlines hoặc của các hãng hàng không thuộc liên minh SkyTeam.</span><br /><span style="font-size:11pt;">4. Chi tiết về chuyến bay và hạng ghế đủ điều kiện cộng dặm của Vietnam Airlines và của các hãng hàng không thuộc liên minh SkyTeam có ở phần Tích lũy dặm.</span><br /><span style="font-size:11pt;">5. Để duy trì danh hiệu Hội viên đạt được trong năm tiếp theo, Hội viên cần tích luỹ được đủ số dặm xét hạng hoặc số chuyến bay đủ điều kiện cộng dặm (chuyến bay xét hạng) tương ứng với từng hạng thẻ trong 12 tháng liên tiếp của kỳ xét hạng.</span><br /><span style="font-size:11pt;">6. Nếu Hội viên không đáp ứng được các yêu cầu duy trì hạng thẻ, thẻ hội viên sẽ bị xuống hạng thấp hơn tương ứng với số dặm xét hạng (hoặc số chuyến bay đủ điều kiện cộng dặm) đã tích luỹ được trong kỳ xét hạng đó.</span></p>\n<p><span style="font-size:11pt;"> </span></p>', '', '', 2, '2012-07-16 03:06:06', 4, 1, '', '', 'the-bong-sen-vang', '', '', '', 1, 'khungtroiviets');

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
) ENGINE=InnoDB  DEFAULT CHARSET=utf8 AUTO_INCREMENT=178 ;

--
-- Dumping data for table `dos_module_supports`
--

INSERT INTO `dos_module_supports` (`support_id`, `support_name`, `support_nameen`, `support_phone`, `support_value`, `support_order`, `support_type`, `dos_usernames_username`) VALUES
(176, 'khungtroiviet11', '', '0903 613 438', 'Trong Nước', 0, 'yahoo', 'khungtroiviets'),
(177, 'numberone_nguye', '', '0935 090 286', 'Quốc Tế', 0, 'yahoo', 'khungtroiviets');

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
('keywords', 'Chuyên cung cấp các loại vé máy bay quốc nội và quốc tế,của các hãng hàng không uy tín ở Việt Nam và trên thế giới với cung cách phục vụ tận tình chu đáo sẽ làm hài lòng quý khác', 'khungtroiviets'),
('description', 'Chúng tôi cung cấp: vé máy bay Vietnam Airlines, vé máy bay giá rẻ Jetstar, Air Mekong, Vietjetair, American Airlines, Cathay Pacific, Air Canada, Air France, All Nippon Airways, Asiana Airlines, China Airlines,các loại vé máy bay đi Châu Mỹ, Châu Âu', 'khungtroiviets'),
('title', 'ĐẠI LÝ MÁY BAY KHUNG TRỜI VIỆT -Vietskyonline.com', 'khungtroiviets'),
('analytics', '<script type="text/javascript">\r\n\r\n  var _gaq = _gaq || [];\r\n  _gaq.push([''_setAccount'', ''UA-30151015-3'']);\r\n  _gaq.push([''_trackPageview'']);\r\n\r\n  (function() {\r\n    var ga = document.createElement(''script''); ga.type = ''text/javascript''; ga.async = true;\r\n    ga.src = (''https:'' == document.location.protocol ? ''https://ssl'' : ''http://www'') + ''.google-analytics.com/ga.js'';\r\n    var s = document.getElementsByTagName(''script'')[0]; s.parentNode.insertBefore(ga, s);\r\n  })();\r\n\r\n</script>', 'khungtroiviets');

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
('khungtroiviets', 'khungtroitroiviet11@gmail.com', 'e10adc3949ba59abbe56e057f20f883e', '2012-06-19 06:42:21', 'NGUYỄN MỘT', '0913928893', 'CÔNG TY TNHH TM - DV DU LỊCH KHUNG TRỜI VIỆT ', 'user', 'vi', '', '2012-08-30 16:00:00', 0, '20122012', '', 1, '020512', 30, 'du-lich');

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
('address1', 'Địa Chỉ: 303 Nơ Trang Long - F13 - Q.Binh Thạnh', '', 'khungtroiviets'),
('address2', 'Điện Thoại: 08 3507 9528  Fax: 3553 1329', '', 'khungtroiviets'),
('advs', 'Phần Quảng Cáo', '', 'khungtroiviets'),
('company_name', 'CÔNG TY TNHH TM - DV DU LỊCH KHUNGTRỜI VIỆT', '', 'khungtroiviets'),
('company_name_footer', 'CÔNG TY TNHH TM - DV DU LỊCH KHUNGTRỜI VIỆT', '', 'khungtroiviets'),
('company_phone', 'Hotline: 0903 613 438', '', 'khungtroiviets'),
('contact', 'ĐT: 0913 928 893', '', 'khungtroiviets'),
('developed', 'KHUNG TROI VIET', '', 'khungtroiviets'),
('services', 'Vé máy bay', '', 'khungtroiviets'),
('supports', 'Hỗ Trợ Trực Tuyến', '', 'khungtroiviets');

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
