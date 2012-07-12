-- phpMyAdmin SQL Dump
-- version 3.4.5
-- http://www.phpmyadmin.net
--
-- Host: localhost
-- Generation Time: Jul 12, 2012 at 03:01 AM
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
('advs_left_height', 238, '', '040712'),
('advs_left_width', 206, '', '040712'),
('advs_right_height', 238, '', '040712'),
('advs_right_width', 206, '', '040712'),
('banner_height', 300, '', '040712'),
('banner_width', 950, '', '040712'),
('logo_height', 100, '', '040712'),
('logo_width', 950, '', '040712'),
('max_image_height', 667, '', '040712'),
('max_image_width', 500, '', '040712'),
('news_cat_height', 100, '', '040712'),
('news_cat_width', 143, '', '040712'),
('news_height_thumb', 100, '', '040712'),
('news_num_paging_cat', 10, '', '040712'),
('news_num_paging_hot', 6, '', '040712'),
('news_num_paging_index', 10, '', '040712'),
('news_num_paging_new', 6, '', '040712'),
('news_width_thumb', 143, '', '040712'),
('products_cat_height', 155, '', '040712'),
('products_cat_width', 155, '', '040712'),
('products_height', 667, '', '040712'),
('products_height_thumb', 155, '', '040712'),
('products_num_paging_cat', 15, '', '040712'),
('products_num_paging_hot', 15, '', '040712'),
('products_num_paging_new', 15, '', '040712'),
('products_num_paging_other', 3, '', '040712'),
('products_width', 500, '', '040712'),
('products_width_thumb', 155, '', '040712'),
('services_height', 170, '', '040712'),
('services_width', 170, '', '040712'),
('video_height_thumb', 155, '', '040712'),
('video_num_paging_cat', 9, '', '040712'),
('video_num_paging_index', 9, '', '040712'),
('video_width_thumb', 155, '', '040712');

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
('040712', 'default', 'prettyPhoto.css', 'css'),
('040712', 'default', 'jquery.prettyPhoto.js', 'javascript'),
('040712', 'products', 'scroll.css|jquery.fancybox.css', 'css'),
('040712', 'products', 'jcarousellite_1.0.1.js|scroller.js|jquery.fancybox.js|jquery.scroll-1.4.2-min.js|jquery.serialScroll-1.2.2-min.js|product.js', 'javascript'),
('040712', 'video', 'prettyPhoto.css', 'css'),
('040712', 'video', 'jquery.prettyPhoto.js', 'javascript');

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
('about', 'cuongthuan'),
('advs', 'cuongthuan'),
('banner', 'cuongthuan'),
('contact', 'cuongthuan'),
('news', 'cuongthuan'),
('products', 'cuongthuan'),
('services', 'cuongthuan'),
('supports', 'cuongthuan');

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
) ENGINE=InnoDB  DEFAULT CHARSET=utf8 AUTO_INCREMENT=250 ;

--
-- Dumping data for table `dos_module_abouts`
--

INSERT INTO `dos_module_abouts` (`record_id`, `title`, `titleen`, `content`, `contenten`, `hit`, `created`, `record_order`, `hot`, `extra_field1`, `extra_field2`, `tag`, `tagen`, `description`, `descriptionen`, `activated`, `dos_usernames_username`) VALUES
(244, 'Lời giới thiệu', '', '<p style="text-align:center;"><img src="/public/userfiles/image/cuongthuan/image/loi%20gioi%20thieu.JPG" alt="" width="500" height="352" /></p>\n<p>Công ty Cổ Phần Đầu tư Phát triển <span style="color:#ff0000;"><strong>Cường Thuận IDICO</strong></span> là nhà cung cấp chính các sản phẩm bê tông đúc sẵn, bê tông nhựa nóng với công nghệ sản xuất hiện đại và nhiều năm kinh nghiệm đã được các nhà thầu lớn trong nước và ngoài nước tín nhiệm</p>\n<p><strong><span style="color:#0000ff;">CÁC NGHÀNH NGHỀ KINH DOANH CHÍNH:</span></strong></p>\n<p>+ Thiết kế thi công các công trình dân dụng, công nghiệp, giao thông, thủy lợi.</p>\n<p>+ San lắp mặt bằng.</p>\n<p>+ Sản xuất, cung cấp các loại cống bê tông cốt thép theo công nghệ quay ép, rung ép và bê tông nhựa nóng.</p>\n<p>+ Đầu tư các công trình theo hình thức: BOT, BTO, BOO.</p>\n<p>+ Gia công chế biến đất, đá, cát.</p>\n<p>+ Vận tải hàng hóa đường bộ.</p>\n<p>+ Mua bán vật liệu xây dựng. Mua bán, cho thuê máy móc, thiết bị công trình.</p>\n<p>+ Đầu tư kinh doanh địa ốc và các hoạt động thương mại dịch vụ.</p>\n<p> </p>', '', 96, '2012-07-09 06:28:47', 2, 0, '', '', 'loi-gioi-thieu', '', 'Công ty Cổ Phần Đầu tư Phát triển Cường Thuận IDICO là nhà cung cấp chính các sản phẩm bê tông đúc sẵn, bê tông nhựa nóng với công nghệ sản xuất hiện đại và nhiều năm kinh nghiệm đã được các nhà thầu lớn trong nước và ngoài nước tín nhiệm', '', 1, 'cuongthuan'),
(245, 'Lời cảm ơn', '', '<p style="text-align:center;"><img src="/public/userfiles/image/cuongthuan/image/loi%20cam%20on.jpg" alt="" width="500" height="295" /></p>\n<p>Công Ty Cổ Phần Đầu Tư Phát Triển <span style="color:#ff0000;"><strong>Cường Thuận IDICO</strong></span> xin được gửi lời cảm ơn sâu sắc và chân thành đến các đối tác và quý khách hàng. Sự quan tâm, ủng hộ và tin cậy của quý khách hàng là nguồn động lực to lớn thúc đẩy công ty chúng tôi phải liên tục cải tiến, đổi mới sản phẩm để phục vụ khách hàng ngày một tốt hơn</p>', '', 51, '2012-07-09 06:40:09', 3, 0, '', '', 'loi-cam-on', '', 'Công Ty Cổ Phần Đầu Tư Phát Triển Cường Thuận IDICO xin được gửi lời cảm ơn sâu sắc và chân thành đến các đối tác và quý khách hàng. Sự quan tâm, ủng hộ và tin cậy của quý khách hàng là nguồn động lực to lớn thúc đẩy công ty chúng tôi phải liên tục', '', 1, 'cuongthuan'),
(249, 'Chào mừng bạn ghé thăm website của chúng tôi!', '', '<p style="text-align:justify;"><em>Công ty Cổ Phần Đầu tư Phát triển Cường Thuận IDICO là nhà cung cấp chính các sản phẩm bê tông đúc sẵn, bê tông nhựa nóng với công nghệ sản xuất hiện đại và nhiều năm kinh nghiệm đã được các nhà thầu lớn trong nước và ngoài nước tín nhiệm</em></p>\n<p style="text-align:center;"><em><img src="/public/userfiles/image/cuongthuan/image/loi%20gioi%20thieu.JPG" alt="" width="500" height="352" /><br /></em></p>\n<p style="text-align:justify;">1. Tên công ty: <strong>CÔNG TY CỔ PHẦN ĐẦU TƯ PHÁT TRIỂN CƯỜNG THUẬN IDICO</strong></p>\n<p style="text-align:justify;">2.  Địa chỉ trụ sở chính: 168 KP11, Phường Bình,  TP .Biên Hòa, Tỉnh Đồng Nai<strong><br /></strong></p>\n<p style="text-align:justify;">      + Số điện thoại: 061. 6291 081</p>\n<p style="text-align:justify;">      + Số Fax: 061. 6291 082</p>\n<p style="text-align:justify;">3. Năm thành lập: Ngày 03 tháng 05 năm 2000 (Ngày nay là công ty TNHH Cường Thuận)</p>\n<p style="text-align:justify;">      + Mã số thuế: 3600459834</p>\n<p style="text-align:justify;">      + Số tài khoản: 102010000265892. Tại Ngân hàng TMCP Công Thương  Việt Nam - Chi nhánh Nhơn Trạch</p>\n<p style="text-align:justify;">       Do Ông Trần Như Hoàng. Chức vụ: Tổng Giám Đốc làm đại diện</p>\n<p style="text-align:justify;">       Vồn điều lệ: 150.000.000.000 VND</p>\n<p style="text-align:justify;"><span style="color:#0000ff;"><strong>CÁC NGHÀNH NGHỀ KINH DOANH CHÍNH:</strong></span></p>\n<p style="text-align:justify;">+ Thiết kế thi công các công trình dân dụng, công nghiệp, giao thông, thủy lợi.</p>\n<p style="text-align:justify;">+ San lắp mặt bằng.</p>\n<p style="text-align:justify;">+ Sản xuất, cung cấp các loại cống bê tông cốt thép theo công nghệ quay ép, rung ép và bê tông nhựa nóng.</p>\n<p style="text-align:justify;">+ Đầu tư các công trình theo hình thức: BOT, BTO, BOO.</p>\n<p style="text-align:justify;">+ Gia công chế biến đất, đá, cát.</p>\n<p style="text-align:justify;">+ Vận tải hàng hóa đường bộ.</p>\n<p style="text-align:justify;">+ Mua bán vật liệu xây dựng. Mua bán, cho thuê máy móc, thiết bị công trình.</p>\n<p style="text-align:justify;">+ Đầu tư kinh doanh địa ốc và các hoạt động thương mại dịch vụ.</p>', '', 177, '2012-07-09 09:00:05', 1, 1, '', '', 'chao-mung-ban-ghe-tham-website-cua-chung-toi', '', 'Công ty Cổ Phần Đầu tư Phát triển Cường Thuận IDICO là nhà cung cấp chính các sản phẩm bê tông đúc sẵn, bê tông nhựa nóng với công nghệ sản xuất hiện đại và nhiều năm kinh nghiệm đã được các nhà thầu lớn trong nước và ngoài nước tín nhiệm', '', 1, 'cuongthuan');

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
) ENGINE=InnoDB  DEFAULT CHARSET=utf8 AUTO_INCREMENT=379 ;

--
-- Dumping data for table `dos_module_advs`
--

INSERT INTO `dos_module_advs` (`record_id`, `title`, `titleen`, `pic_thumb`, `url`, `create_date`, `start_date`, `end_date`, `hits`, `record_order`, `position`, `type`, `enable`, `dos_usernames_username`) VALUES
(373, 'chung nhan', '', 'chung-nhan.png', 'http://cuongthuan.dos.vn/san-pham', '2012-07-10 01:31:25', '2012-07-08 16:00:00', '2012-08-30 16:00:00', 0, 1, 'left', '_bank', 1, 'cuongthuan'),
(374, 'cup vang', '', 'cup-vang.png', 'http://cuongthuan.dos.vn/lien-he', '2012-07-10 01:36:10', '2012-07-08 16:00:00', '2012-08-30 16:00:00', 0, 2, 'left', '_bank', 1, 'cuongthuan'),
(375, 'du an', '', 'du-an.png', 'http://cuongthuan.dos.vn/', '2012-07-10 01:49:16', '2012-07-08 16:00:00', '2012-08-30 16:00:00', 0, 3, 'left', '_parent', 1, 'cuongthuan'),
(376, 'du an -1', '', 'du-an--1.png', 'http://cuongthuan.dos.vn/', '2012-07-10 01:50:03', '2012-07-08 16:00:00', '2012-08-30 16:00:00', 0, 4, 'right', '_parent', 1, 'cuongthuan'),
(377, 'du an -2', '', 'du-an--2.png', 'http://cuongthuan.dos.vn/', '2012-07-10 01:50:40', '2012-07-08 16:00:00', '2012-08-30 16:00:00', 0, 5, 'right', '_parent', 1, 'cuongthuan'),
(378, 'san xuat', '', 'san-xuat.png', 'http://cuongthuan.dos.vn/', '2012-07-10 01:51:41', '2012-07-08 16:00:00', '2012-08-30 16:00:00', 0, 6, 'right', '_parent', 1, 'cuongthuan');

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
) ENGINE=InnoDB  DEFAULT CHARSET=utf8 AUTO_INCREMENT=1506 ;

--
-- Dumping data for table `dos_module_banners`
--

INSERT INTO `dos_module_banners` (`banner_id`, `banner_date`, `banner_name`, `banner_url`, `banner_link`, `banner_order`, `banner_type`, `position`, `enable`, `dos_usernames_username`) VALUES
(1010, '2012-06-28 00:21:21', 'logo-cuonthuan', 'logo-cuonthuan.png', '', 1, 'logo', 'default', 1, 'cuongthuan'),
(1495, '2012-07-09 08:05:56', 'Banner', 'banner.jpg', '', 2, 'banners', 'about', 1, 'cuongthuan'),
(1496, '2012-07-09 08:06:19', 'Banner 1', 'banner-1.jpg', '', 3, 'banners', 'about', 1, 'cuongthuan'),
(1497, '2012-07-09 08:06:42', 'Banner 2', 'banner-2.jpg', '', 4, 'banners', 'default', 1, 'cuongthuan'),
(1498, '2012-07-09 08:07:11', 'Banner 3', 'banner-3.jpg', '', 5, 'banners', 'default', 1, 'cuongthuan'),
(1499, '2012-07-09 08:07:38', 'Banner 4', 'banner-4.jpg', '', 6, 'banners', 'products', 1, 'cuongthuan'),
(1500, '2012-07-10 01:11:57', 'Banner 5', 'banner-5.jpg', '', 7, 'banners', 'default', 1, 'cuongthuan'),
(1501, '2012-07-10 01:27:02', 'Banner 6', 'banner-6.jpg', '', 8, 'banners', 'services', 1, 'cuongthuan'),
(1502, '2012-07-10 01:27:28', 'Banner 7', 'banner-7.jpg', '', 9, 'banners', 'products', 1, 'cuongthuan'),
(1503, '2012-07-10 01:27:41', 'Banner 8', 'banner-8.jpg', '', 10, 'banners', 'news', 1, 'cuongthuan'),
(1504, '2012-07-10 01:28:02', 'Banner 9', 'banner-9.jpg', '', 11, 'banners', 'services', 1, 'cuongthuan'),
(1505, '2012-07-10 01:28:15', 'Banner 10', 'banner-10.jpg', '', 12, 'banners', 'contact', 1, 'cuongthuan');

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
) ENGINE=InnoDB  DEFAULT CHARSET=utf8 AUTO_INCREMENT=36 ;

--
-- Dumping data for table `dos_module_contacts`
--

INSERT INTO `dos_module_contacts` (`record_id`, `title`, `titleen`, `content`, `contenten`, `create_date`, `record_order`, `hit`, `hot`, `tag`, `tagen`, `description`, `descriptionen`, `enable`, `dos_usernames_username`) VALUES
(35, 'ban do', '', '<p style="text-align:center;"><img src="/public/userfiles/image/cuongthuan/image/ban-do.png" alt="" width="500" height="600" /></p>', '', '2012-07-10 01:55:11', 1, 0, 0, 'ban-do', '', '', '', '1', 'cuongthuan');

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
('Trang chủ', '', 'default', '', 1, NULL, NULL, NULL, NULL, 'cuongthuan'),
('Giới thiệu', '', 'about', '', 2, NULL, NULL, NULL, NULL, 'cuongthuan'),
('Sản phẩm', '', 'products', '', 3, NULL, NULL, NULL, NULL, 'cuongthuan'),
('Dịch vụ', '', 'services', '', 4, NULL, NULL, NULL, NULL, 'cuongthuan'),
('Tin tức & sự kiện', '', 'news', '', 5, NULL, NULL, NULL, NULL, 'cuongthuan'),
('Liên hệ', '', 'contact', '', 7, NULL, NULL, NULL, NULL, 'cuongthuan');

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
) ENGINE=InnoDB  DEFAULT CHARSET=utf8 AUTO_INCREMENT=310 ;

--
-- Dumping data for table `dos_module_news`
--

INSERT INTO `dos_module_news` (`record_id`, `title`, `titleen`, `postdate`, `pic_thumb`, `preview`, `previewen`, `content`, `contenten`, `tag`, `tagen`, `description`, `descriptionen`, `hits`, `record_order`, `hot`, `extra_field1`, `extra_field2`, `enable`, `dos_module_item_cat_cat_id`) VALUES
(302, 'Đầu tư tín chỉ các-bon trong lâm nghiệp: Thị trường còn bỏ ngỏ', '', '2012-07-09 06:04:25', 'au-tu-tin-chi-cac-bon-trong-lam-nghiep-thi-truong-con-bo-ngo.jpg', '<p>“Tín chỉ các-bon”, “tài chính các-bon” là khái niệm còn rất mới tại Việt Nam nhưng lại là chủ đề đang được thảo luận sôi nổi và cũng đang gây ra nhiều tranh cãi trên thế giới. Khi các công cụ kinh tế tiếp tục được áp dụng vào lĩnh vực môi trường nhằm giải quyết sự ấm lên toàn cầu, chúng ta cũng cần tìm hiểu cơ chế hoạt động của những công cụ này để chủ động tìm được cho mình một chỗ đứng thích hợp khi dòng chảy của chúng đã và đang tìm đến nước ta.</p>', '', '<p>Từ thế giới<br />Kể từ khi các nhà hoạt động môi trường, thay vì kịch liệt phê phán giới kinh doanh là thủ phạm chính gây ô nhiễm môi trường, chuyển sang bắt tay với các nhà kinh tế để cùng tìm ra lời giải cho bài toán phát triển bền vững thì phong trào bảo vệ môi trường đã theo một hướng mới. Người ta đã bắt đầu sử dụng những công cụ kinh tế để nhằm điều tiết hiệu quả hơn những tác động của con người, cả tích cực lẫn tiêu cực, đối với trái đất.</p>\n<p>Sự ra đời của Nghị định thư Kyoto năm 1997 với cam kết cắt giảm 5% lượng khí nhà kính (so với mức của năm 1990) trong vòng 5 năm, từ 2008 đến 2012, của 37 nước công nghiệp phát triển và Cộng đồng châu Âu (EC) đã tạo điều kiện cho sự hình thành và phát triển của một loại thị trường đặc biệt - thị trường buôn bán sự phát thải. Khí CO2 là khí do các ngành công nghiệp thải ra và chiếm chủ yếu trong 4 loại khí gây hiệu ứng nhà kính, bởi vậy từ lâu nay người ta vẫn quen gọi đây là “thị trường các-bon” (carbon market).</p>\n<p>Trên thị trường các-bon, việc mua bán các-bon hay chính xác hơn là việc mua bán sự phát thải khí CO2, được thực hiện thông qua tín dụng các-bon (carbon credit). Mỗi một công ty gây ô nhiễm sẽ có một hạn mức thải CO2 nhất định mà nếu muốn vượt quá hạn mức này cần phải bỏ tiền ra mua thêm hạn mức, gọi là tín dụng các-bon. Tín dụng các-bon có thể được thông qua đầu tư một số dự án góp phần làm giảm phát thải CO2 hoặc được mua lại từ các công ty khác.</p>\n<p>Với việc thay thuế các-bon trực tiếp bằng tín dụng các-bon, CO2 trở thành một loại hàng hóa được đem ra mua bán trên thị trường và do đó, giá cả của nó sẽ do thị trường tự điều tiết. Điều này giúp tránh được các ý kiến phê phán việc mức thuế các-bon do chính phủ đưa ra không hợp lý và việc sử dụng tiền thuế thu được có thể không đúng với mục đích hoặc thiếu hiệu quả.</p>\n<p>Hoạt động của thị trường các-bon được hỗ trợ bởi 3 cơ chế chính được nêu ra trong Nghị định thư Kyoto, đó là cơ chế buôn bán sự phát thải, cơ chế phát triển sạch (CDM) và cơ chế đồng thực hiện (JI). Trong Kế hoạch Hành động Bali được thông qua tại Cuộc thảo luận lần thứ 13 giữa các bên đối với Công ước khung về Biến đổi Khí hậu của Liên Hiệp Quốc (COP13) vào tháng 12/2007 tại Bali (Indonesia), một cơ chế mới được bổ sung nhằm nhấn mạnh vai trò của rừng đối với biến đổi khí hậu. Đó là cơ chế giảm phát thải do phá rừng và thoái hóa rừng, viết tắt là REDD. Thông qua các cơ chế này, các nước phát triển với hạn ngạch phát thải khí rất thấp sẽ phải tìm cách đầu tư những dự án góp phần làm giảm phát thải CO2 và sẽ ưu tiên thực hiện tại các nước đang phát triển bởi chi phí thấp.</p>\n<p>Về lý thuyết, các nước đang phát triển nhờ các dự án các-bon mà có được sự đầu tư cho bảo vệ môi trường, tiếp nhận kỹ thuật tiên tiến (qua các dự án CDM) và đồng thời cũng có thêm một khoản thu nhờ bán các chứng chỉ các-bon cho các nước phát triển. Các nước phát triển với tư cách là người mua trên thị trường các-bon cũng tiết kiệm được chi phí để giảm thải các-bon bởi các dự án thực hiện ở những nước đang phát triển sẽ ít tốn kém hơn nhiều so với một dự án tương tự triển khai ở các nước phát triển.</p>\n<p>Tuy nhiên, trên thực tế, các dự án các-bon nhận được không ít những chỉ trích từ giới quan sát và bản thân những người trong cuộc. Trong khi một số công ty cho rằng quá trình phê duyệt dự án hiện còn mất thời gian, thủ tục rườm rà thì có một câu hỏi lớn được đặt ra về việc liệu có một sự bắt tay ngầm giữa giới chính trị và các tập đoàn kinh tế để phục vụ lợi ích của các nhà tư bản mà quên đi mục tiêu chính là vấn đề môi trường, chưa kể đến những hy vọng đây đồng thời là một phương tiện giúp xóa đói giảm nghèo. Đã có lời châm biếm rằng các dự án các-bon là các dự án thân thiện với doanh nghiệp chứ không phải thân thiện với môi trường!.</p>\n<p>Hơn nữa, chất lượng dự án này cũng đang đặt ra một dấu hỏi lớn. Tại Ấn Độ, một trong những quốc gia nhận được nhiều dự án CDM nhất thì tình trạng ô nhiễm không khí, hủy hoại đất nông nghiệp và sức khỏe của công đồng do các dự án CDM được ghi lại ở nhiều nơi như: Gujrat, Bengal, Jharkhand…(Theo Development Today). Bên cạnh đó, các nhà khoa học cũng như giới quan sát còn còn băn khoăn rằng bản thân Nghị định thư Kyoto với phương pháp tiếp cận dựa vào thị trường để giải quyết vấn đề môi trường toàn cầu là thay đổi khí hậu có phải là một lối đi đúng đắn? Theo Jim Watson, một thành viên của Nhóm nghiên cứu năng lượng thuộc trường Đại học Sussex (Anh), thị trường các-bon là một vũ khí quá thô sơ trong cái đang được gọi là cuộc chiến đấu để cứu nhân loại.</p>\n<p>Tới Việt Nam<br />Bất chấp mọi lời chỉ trích, thị trường các-bon vẫn đang lớn lên từng ngày. Theo báo cáo Thực tế và các Xu hướng phát triển của Thị trường các-bon năm 2008 của Ngân hàng Thế giới, giá trị của thị trường các-bon của năm 2007 tăng gấp đôi so với của năm 2006, tức là từ 31 tỉ lên đến 64 tỉ USD Mỹ. Trong đó, 50 tỉ USD là giá trị của các thị trường mua bán hạn ngạch trực tiếp. Phần còn lại, 14 tỉ, thuộc về các thị trường giao dịch thông qua dự án.Trong khi EU là thị trường các-bon nội địa sôi động nhất thì khối này cũng là người mua chủ yếu trong các thị trường các-bon thông qua dự án. Về phía “người bán”, Trung Quốc là nước bán được nhiều chứng chỉ các-bon (CERs) nhất rồi đến các nước như Ấn Độ, Braxin. Nga và Ukraina là hai nước giao dịch bằng cơ chế đồng thực hiện (JI) nhiều nhất.</p>\n<p>Tại Việt Nam, các dự án CDM trên thực tế đã được triển khai. Bà Lê Thị Bảo Ngọc – Giám đốc Trung tâm các-bon của Công ty cổ phần Năng lượng và Môi trường (RCEE), một đơn vị đi tiên phong trong việc nghiên cứu và xúc tiến các dự án CDM tại Việt Nam – cho biết, trước năm 2008, RCEE đã xây dựng được 10 dự án CDM và trong năm 2008 tiếp tục có khoảng 20 dự án nữa. Dự tính một năm Việt Nam có thể thu về 24 triệu USD từ những dự án này. Con số này dĩ nhiên chưa thể so được với con số hàng tỉ USD của những nước như Trung Quốc, Ấn Độ.<br />Nhận thấy tiềm năng lớn của rừng, trong đó rừng nhiệt đới lại có thể lưu giữ khí các-bon nhiều hơn 50% so với các kiểu rừng khác, các nhà đầu tư nước ngoài đã nhanh chóng nhảy vào thị trường các-bon rừng tại Việt Nam.<br />Một trong số đó có dự án của Công ty tài chính Voluntary của Úc hợp tác với Công ty Vietnam Carbon Echange đầu tư vào dự án các-bon rừng tại Vườn quốc gia Tam Đảo (Vĩnh Phúc) triển khai trong tháng 8 vừa qua. Theo tính toán, mỗi năm dự án này sẽ hấp thụ khoảng 40.000 - 50.000 tấn các-bon. Khi sở hữu CERs, nhà đầu tư có thể bán lại cho các công ty của Úc hoặc bán trên thị trường quốc tế. Đại diện Công ty Vietnam Carbon Echange cho hay: “Sau dự án ở Tam Đảo, chúng tôi sẽ tiếp tục kéo các nhà đầu tư nước ngoài vào dự án các-bon rừng tại Vườn quốc gia Bạch Mã (Thừa Thiên - Huế), Xuân Sơn (Phú Thọ) và Ba Bể (Bắc Kạn). Chúng tôi hy vọng, 5 năm nữa sẽ bán được chứng chỉ carbon rừng”.<br />Gần đây nhất, Viện Điều tra quy hoạch rừng (Bộ NN-PTNT) cũng đã khởi động dự án Tính toán trữ lượng các-bon và đánh giá sự biến đổi của rừng. Ông Phú Hùng, Phó viện trưởng Viện Điều tra quy hoạch rừng, cho hay: “Nhiều doanh nghiệp Nhật Bản đang rất muốn mua CERs của Việt Nam. Tuy nhiên, các nghiên cứu tính toán trữ lượng carbon ở Việt Nam triển khai còn rất ít. Do đó, rất khó để trả lời được với đối tác là chúng ta sẽ bán được bao nhiêu”. Theo ông Hùng, để đánh giá chính xác, Viện đang xây dựng đề án tính toán trữ lượng các-bon từ rừng Việt Nam và tìm các nơi có tiềm năng xây dựng dự án CDM và REDD. Kinh phí dự kiến khoảng 1.600 tỉ đồng. Nếu việc tính toán trữ lượng các-bon được đẩy nhanh sẽ giúp đẩy nhanh quá trình bán trữ lượng các-bon, giúp tăng thu nhập, xóa đói giảm nghèo cho người dân.<br />Vấn đề đặt ra là một khi các dự án các-bon được thực hiện hàng loạt ở Việt Nam, liệu chúng ta có vấp phải những mặt trái của thị trường các-bon mà các nước khác đã phải trải qua? Chính phủ khi đang dành nhiều ưu tiên cho phát triển kinh tế liệu có “nhẹ tay” với những dự án không đảm bảo tiêu chuẩn về môi trường?</p>\n<p>Trên thực tế, dòng tài chính các-bon chảy vào nước ta thực ra chưa nhiều, và đó là một cơ hội để chúng ta dần tìm hiểu, nghiên cứu và học hỏi từ các nước đi trước. Nếu làm đúng ngay từ đầu, chúng ta sẽ có cơ hội để có được những lợi ích mà phương pháp tiếp cận này hướng tới. Những bất cập về quy trình xét duyệt sẽ khắc phục được nếu ngay từ bây giờ chúng ta bắt tay vào nghiêm túc xây dựng một hệ thống chặt chẽ và minh bạch. Ngoài CDM, cơ chế giảm phát thải do phá rừng và thoái hóa rừng (REDD) đã mở ra một lối đi khác. Các nhà quản lý, các nhà bảo tồn và doanh nghiệp có tận dụng nguồn tài chính các-bon và cơ chế REDD để đầu tư cho chiến lược phát triển bền vững cũng đang là một câu hỏi còn đang bỏ ngỏ.</p>\n<p>Thị trường các-bon cũng giống như các thị trường khác, một khi đã được hình thành thì sẽ vận hành liên tục. Chúng ta không có cách nào khác là phải tìm cách nắm bắt và điều khiển nó. Câu hỏi đặt ra đối với Việt Nam về sân chơi (thị trường) các-bon, giống như đã từng đặt ra đối với sân chơi toàn cầu hóa, không phải là chúng ta có tham gia hay không mà là chúng ta sẽ tham gia như thế nào. Lý thuyết kinh tế đã chỉ ra đầy đủ các khuyết tật của thị trường, vấn đề là chúng ta sẽ làm gì để hạn chế được các “khuyết tật” của thị trường các-bon.</p>', '', 'dau-tu-tin-chi-cac-bon-trong-lam-nghiep-thi-truong-con-bo-ngo', '', '', '', 0, 1, 0, '', '', 1, 192),
(303, 'Dự báo kinh tế 2012: “Dẫu sao cũng nhẹ nhàng hơn”', '', '2012-07-09 06:06:05', 'du-bao-kinh-te-2012-dau-sao-cung-nhe-nhang-hon.jpg', '<p>Cho rằng âm hưởng chủ đạo của kinh tế 2012 là khó khăn, song đi kèm với những phân tích về cơ hội, dự báo (cũng là hy vọng) của nhiều chuyên gia về bức tranh kinh tế năm nay cũng phần nào nhẹ nhàng hơn, ở một số thách thức.</p>', '', '<p>Có được cảm giác này cũng nhờ tài ăn nói dí dỏm và sinh động, vốn là thế mạnh của nhiều vị chuyên gia, dù những gì nền kinh tế đã trải qua trong năm 2011 vẫn để lại dấu ấn khá nặng nề.</p>\n<p>TS. Lê Xuân Nghĩa, Phó chủ tịch Ủy ban Giám sát tài chính Quốc gia tâm tư với các doanh nghiệp phía nam rằng, khi bạn bè "đòi” câu đối năm nào ông cũng gửi tặng các doanh nghiệp, ông cứ suy nghĩ hoài, cuối cùng cũng có một câu.</p>\n<p>Đó là “Hàng ế chất chồng chờ tết đến. Nợ đòi réo rắt đón xuân sang”.</p>\n<p>Mình không thích lắm nhưng mà nó đúng như thế, không thể hay hơn được, ông Nghĩa thanh minh về đôi câu đối mừng xuân không được lạc quan như mong đợi, khi kết quả khảo sát về nợ nần, rồi hàng tồn kho ứ đọng... khiến ông khá nặng nề.</p>\n<p>Vậy nên, qua thông điệp đã được người đứng đầu Chính phủ đưa ra tại một số diễn đàn về chính sách cho năm nay, ông Nghĩa hy vọng 2012 khó khăn của doanh nghiệp sẽ được giảm thiểu.</p>\n<p>Đã có 1 vài dấu hiệu để phục hồi thị trường bất động sản và chứng khoán, chính sách tiền tệ chắc cũng sẽ có điều chỉnh nhất định ...để xử lý tổng thể khó khăn, hỗ trợ cho sản xuất kinh doanh, ông Nghĩa nhìn nhận.</p>\n<p>"Xuân này vẫn khó quá xuân qua", dù đã mượn thơ để nói, song dự báo của TS. Võ Trí Thành, Phó viện trưởng Viện Nghiên cứu và Quản lý kinh tế Trung ương vẫn không mấy lạc quan.</p>\n<p>Theo ông, thông điệp có thể nói là bất di bất dịch, một thông điệp mà không thể để thị trường lầm lẫn được, là năm tới chính sách vĩ mô của Việt Nam vẫn hết sức chặt chẽ, cả chính sách tài khóa và tiền tệ.</p>\n<p>Bình luận là dù các chỉ tiêu kinh tế đã được đặt ra ở mức khiêm nhường, song theo ông Thành, tăng trưởng GDP 6% là mức mà rất nhiều nhà kinh tế không nghĩ là có thể đạt được.</p>\n<p>Bên cạnh đó thì đầu tư nhà nước giảm, thu hút đầu tư nước ngoài sẽ khó khăn.</p>\n<p>Cũng theo vị chuyên gia này thì tinh thần chung của 2012 không chỉ vật lộn với câu chuyện vĩ mô ngắn hạn, ổn định cho bằng được, đưa lạm phát về 8 -9% mà còn phải tốn không ít tiền của và thời gian khi tiến hành tái cấu trúc ba lĩnh vực đầu tư công, doanh nghiệp nhà nước và ngân hàng.</p>\n<p>Cho rằng sự đồng thuận rất cao trong cả hệ thống chính trị về quyết tâm tái cấu trúc nền kinh tế là điểm sáng nhất của năm qua, TS. Trần Du Lịch, Ủy viên Ủy ban Kinh tế của Quốc hội nhìn nhận đây là cơ hội để gia cố ngôi nhà kinh tế từ móng, chứ không chỉ là trang trí nội thất.</p>\n<p>Cũng theo phân tích của vị chuyên gia này thì mức tăng trưởng tín dụng năm 2012 cao hơn dự kiến 12% của 2011 có thể sẽ gỡ dần một số tảng băng của nền kinh tế hiện nay, giảm dần khó khăn cho doanh nghiệp.</p>\n<p>Dự báo và cũng là hy vọng của ông là, trong năm mới này, những tín hiệu tích cực từ điều hành của Chính phủ sẽ rõ hơn để doanh nghiệp nhìn chính sách nhà nước giống như con tàu theo tín hiệu của hoa tiêu.</p>\n<p>Nhấn mạnh quan điểm cá nhân, đạt được mức tăng trưởng 6% là cực kỳ khó, song chuyên gia Trương Đình Tuyển, thành viên Hội đồng tư vấn chính sách tài chính – tiền tệ quốc gia lại khá tin tưởng vào khả năng kiềm chế lạm phát ở 1 con số ở năm nay.</p>\n<p>Theo ông, hiện tại những dự báo về kinh tế thế giới 2012 cực kỳ bất định, thay đổi thường xuyên nhưng đều theo xu hướng phục hồi chậm, xấu đi chứ không lạc quan hơn.</p>\n<p>Còn ở trong nước, chính sách tài khóa so với 2011 là thắt chặt, "tôi dùng chữ thắt chặt tài khóa", vị chuyên gia này nhấn mạnh, với bội chi 4,8% GDP và tổng đầu tư công chỉ khoảng 33,5% GDP.</p>\n<p>Về độ "cực kỳ khó" của con số tăng trưởng, ông Tuyển nói rằng, lịch sử và logic đều nói 1 điều là khi kiềm chế lạm phát phải hy sinh tăng trưởng.</p>\n<p>Theo ông, nếu không có sự điều chỉnh cơ cấu đầu tư, cơ cấu tín dụng theo hướng chuyển nguồn lực cho doanh nghiệp vừa và nhỏ, cho khu vực xuất khẩu và có sức lan tỏa lớn mà vẫn tập trung cho doanh nghiệp nhà nước như hiện nay thì đạt được 6% là mục tiêu rất khó.</p>\n<p>Với lạm phát 9%, niềm tin của vị chuyên gia này là có khả năng làm được. Sau những cú vấp ngã, tôi tin là chúng ta có thể làm tốt hơn chính sách tài khóa, tiền tệ trong 2012 này, ông nói.</p>\n<p>Lạm phát giảm sẽ kéo theo lãi suất giảm cũng được ông Tuyển nhìn nhận như là một điểm tích cực khiến cho các doanh nghiệp dễ thở” hơn trong năm mới.</p>\n<p>Kết quả của một nghiên cứu cho thấy, nếu lạm phát ở mức 9% thì lãi suất huy động của 2012 khoảng 11%, lãi suất cho vay có thể 14 – 15%, ông nói tiếp.</p>\n<p>Tuy lạm phát 9% vẫn còn là rất khó với doanh nghiệp, song "dẫu sao cũng nhẹ nhàng hơn 2011", vị chuyên gia này chia sẻ.</p>\n<p>Bên cạnh lãi suất có thể giảm ở mức khá mạnh, ông Tuyển cũng nhấn mạnh thông điệp Chính phủ đã thể hiện rõ ràng thái độ sẽ giảm mức huy động vào ngân sách nhà nước để nuôi dưỡng nguồn thu và tăng sức đầu tư từ khu vực tư nhân, tư tưởng chung là giảm bớt khó khăn cho doanh nghiệp, theo đề xuất của nhiều chuyên gia kinh tế.</p>\n<p>Kinh tế thế giới phục hồi chậm, còn nhiều biến động bất thường phải đối phó, lãi suất còn cao, tái cấu trúc nền kinh tế vừa mang lại cơ hội nhưng trước mắt có thể cũng phải chấp nhận hy sinh... ông Tuyển "gói’ lại dự báo về cả thách thức và cơ hội của 2012.</p>', '', 'du-bao-kinh-te-2012-dau-sao-cung-nhe-nhang-hon', '', '', '', 0, 2, 0, '', '', 1, 194),
(309, 'Đổi mới phương pháp quy hoạch', '', '2012-07-09 08:19:56', 'oi-moi-phuong-phap-quy-hoach.jpg', '<p>Đổi mới phương pháp quy hoạch ở nước ta để đảm bảo phát triển bền vững trong cơ chế thị trường và toàn cầu hóa.</p>', '', '<p>Ở nước ta hiện nay là cơ chế “Kinh tế thị trường theo định hướng XHCN” với quá trình hội nhập toàn cầu, hệ thống kinh tế này trở nên hỗn hợp. Tuy nhiên vẫn sử dụng phương pháp quy hoạch truyền thống, vẫn kế thừa từ nền kinh tế kế hoạch hóa tập trung nên còn nhiều tồn tại như: Sản phẩm quy hoạch bị lạc hậu trước những sự thay đổi liên tục và nhanh chóng của thực tiễn. Cách tiếp cận còn nặng từ trên xuống, mang tính áp đặt, thiếu linh hoạt và hạn chế khả năng phát huy mọi nguồn lực trong xã hội. Sự phối hợp đa ngành trong quá trình lập quy hoạch còn rất hạn chế dẫn tới sự chồng chéo giữa các loại quy hoạch, tụt hậu về phương pháp trong bối cảnh toàn cầu hóa. Có thể nói “mạnh ai nấy làm” nên “khập khễnh” không thể phát triển bền vững.</p>\n<p style="text-align:center;"><img src="/public/userfiles/image/cuongthuan/image/tin%20tuc/dt1.jpg" alt="" width="615" height="461" /></p>\n<p>Quy hoạch chiến lược hợp nhất</p>\n<p>Theo Bộ trưởng Bộ Kế hoạch Đầu tư (KH-ĐT), “Chính phủ đang giao Bộ chủ trì soạn thảo Luật Quy hoạch. Bộ KH-ĐT đang tiến hành bước triển khai đầu tiên. Bộ KH-ĐT cũng là cơ quan độc lập có thể thẩm định quy hoạch nên khi soạn luật, sẽ đưa một phương án là để Bộ đứng ra làm cơ quan đầu mối thẩm định liên kết các loại quy hoạch, tránh chồng chéo, dàn trải lãng phí. Bộ đang là đầu mối tham mưu Chính phủ hoạch định, phân bố vốn nên đủ khả năng xem chúng ta có đủ nguồn lực thực hiện tổng thể các quy hoạch đã được duyệt hay không” (Báo Tuổi Trẻ ngày 20/2/2012).<br />Các điều nêu trên chính là cơ sở để đưa phương pháp “Quy hoạch chiến lược hợp nhất” (ra đời từ thập niên 1990 trong thời kỳ toàn cầu hóa để đáp ứng yêu cầu phát triển bền vững) vào Luật Quy hoạch đang soạn thảo.</p>\n<p>Quy hoạch chiến lược hợp nhất là hợp nhất các quy hoạch: kinh tế, xã hội, bảo vệ môi trường, cơ sở hạ tầng và quy hoạch đô thị để tìm vùng chung/tiếng nói chung đảm bảo yêu cầu công bằng, sống tốt và tính bền vững. Trên cơ sở vùng chung, tiếng nói chung cần điều chỉnh các bản quy hoạch chuyên ngành cho phù hợp với mục tiêu phát triển bền vững. Mỗi quy hoạch lại có nhiều chiến lược, mỗi chiến lược lại có nhiều dự án, chương trình, mỗi dự án, chương trình có thể có nhu cầu về không gian. Đó chính là đầu vào của quy hoạch đô thị đã được điều chỉnh hướng tới mục tiêu phát triển bền vững. Tuy nhiên quy hoạch chiến lược hợp nhất không thay thế được các bản quy hoạch kinh tế, xã hội, bảo vệ môi trường và quy hoạch đô thị, đúng hơn là quy hoạch chiến lược như một cái dù bao trùm lên các loại quy hoạch nêu trên. Do vậy cần giao cho một đơn vị đứng ra làm đầu mối hợp nhất các bản quy hoạch cả ở cấp quốc gia và cấp tỉnh, thành phố.</p>\n<p>Quy hoạch chiến lược là sự hợp tác về mặt tổ chức giữa Nhà nước, cộng đồng và doanh nghiệp theo phương pháp quy hoạch có sự tham gia. Điều đó là sức mạnh để huy động các nguồn lực và phối hợp hành động trên diện rộng, là công cụ quản lý của chính quyền, cho nên sẽ thay đổi từ quan niệm “lập quy hoạch thành phố” sang “thành phố lập quy hoạch”.</p>\n<p style="text-align:center;"><img src="/public/userfiles/image/cuongthuan/image/tin%20tuc/dt2.jpg" alt="" width="615" height="461" /></p>\n<p>Quy hoạch đô thị hiện đại hay hậu hiện đại?<br />Ở nước ta về quy hoạch đô thị từ sau 1954 tới nay (theo Luật Quy hoạch đô thị năm 2009) vẫn sử dụng theo phương pháp quy hoạch của Liên Xô cũ, chịu ảnh hưởng mạnh mẽ của quy hoạch chức năng do Le Corbusier đề xướng từ 1933 vào thời kỳ công nghiệp, hay còn được gọi là quy hoạch tổng thể, quy hoạch đô thị hiện đại và quy hoạch đô thị truyền thống. Đó là quy hoạch phân khu chức năng kiểu hình học cứng nhắc, thiếu linh hoạt, không thích ứng với cơ chế thị trường, toàn cầu hóa với hàng trăm hàng ngàn các dự án của các nhà đầu tư tư nhân và cá nhân mà trong đó sự điều tiết của Nhà nước rất hạn chế.</p>\n<p>Thời kỳ hiện nay là thời kỳ hậu công nghiệp - thông tin và lập trình - toàn cầu hóa thì không thể sử dụng mãi phương pháp quy hoạch đô thị hiện đại mà chuyển sang sử dụng phương pháp quy hoạch đô thị hậu hiện đại.</p>\n<p>Quy hoạch đô thị hậu hiện đại ngoài việc phân khu chức năng linh hoạt, hợp lý còn được quyết định nhiều hơn bởi các đại lượng như vị trí địa hình, sự liên hệ giữa cảnh quan và nước, các di sản kiến trúc cần bảo tồn v.v.. Cần linh hoạt hợp nhất giữa khu ở, khu làm việc và dịch vụ công cộng để giảm ách tắc giao thông, tạo ra một cơ cấu đô thị hợp lý, nhất là trong quy hoạch tái tạo hoặc tái đô thị hóa các khu đô thị cũ. Một thành phố sinh động phải là một bản liên hợp. Quy hoạch đô thị hậu hiện đại chứa đựng nhu cầu về không gian của các bản quy hoạch: kinh tế, xã hội, bảo vệ môi trường và cơ sở hạ tầng trong sự hợp nhất hài hòa hướng tới mục tiêu phát triển bền vững theo phương pháp quy hoạch chiến lược hợp nhất.</p>\n<p style="text-align:center;"><img src="/public/userfiles/image/cuongthuan/image/tin%20tuc/dt3.jpg" alt="" width="615" height="409" /></p>\n<p>Để đáp ứng được nhu cầu phát triển nhanh chóng trong cơ chế thị trường và toàn cầu hóa còn cần chú ý một số vần đề:</p>\n<p>- Cần có một sản phẩm quy hoạch duy nhất bao gồm cả quy hoạch sử dụng đất (SDĐ) và quy hoạch xây dựng chi tiết trong đó có có phần SDĐ. Hiện nay tồn tại 2 loại quy hoạch có giá trị như nhau là quy hoạch SDĐ (do ngành TN-MT lập) và quy hoạch xây dựng chi tiết (do ngành xây dựng lập). Trong quá trình triển khai thực hiện, 2 loại quy hoạch này thường có những điểm khác nhau gây khó khăn trong việc lựa chọn loại quy hoạch làm căn cứ giao đất, cho thuê đất, cho phép chuyển mục đích SDĐ và nhiều khi gây ra những khiếu nại của dân.</p>\n<p>- Cần kết hợp giữa quy hoạch theo quy chế và quy hoạch theo dự án, đưa khái niệm dự án vào trong các quy định. Chính dự án giúp điều chỉnh quy hoạch và là công cụ để kiểm soát đất đai.</p>\n<p>- Cần có những quy định cứng đối với những mảng không thể xâm phạm, song cũng cần có những quy định mềm đối với những mảng gắn với sự phát triển kinh tế - xã hội.</p>\n<p>- Thời hạn điều chỉnh quy hoạch chi tiết là 3 năm, kể từ ngày quy hoạch chi tiết được phê duyệt là quá dài. Dự báo thì không bao giờ trở thành hiện thực hoàn toàn, cho dù đó có là dự báo của những nhà quy hoạch giỏi nhất.</p>\n<p>- Công tác quy hoạch nên đưa ra những mục tiêu mang tính định hướng dựa trên cơ sở dự báo và thực tế sẽ tìm ra lời giải thích và đưa ra các biện pháp điều chỉnh. Nên điều chỉnh quy hoạch chi tiết hàng năm và phân cấp cho chính quyền địa phương thực hiện.</p>\n<p>- Suy nghĩ công tác quy hoạch như một hệ thống luôn điều chỉnh sẽ dẫn đến thay đổi đáng kể trong văn hóa trách nhiệm của các cơ quan chuyên môn.</p>\n<p style="text-align:center;"><img src="/public/userfiles/image/cuongthuan/image/tin%20tuc/dt4.jpg" alt="" width="615" height="357" /></p>\n<p>Quy hoạch đô thị cũng cần tính đến các yếu tố vừa cơ bản và vừa mới phát sinh như:</p>\n<p>- Phát triển mở rộng không gian thành vùng đô thị mở rộng. Hiện nay mới chỉ có quy hoạch vùng đô thị mở rộng của thủ đô Hà Nội vàTPHCM song chưa có cơ chế vận hành.</p>\n<p>- Phát triển mở rộng thời gian xuyên suốt quá khứ - hiên tại - tương lai. Một mặt chúng ta cần nghiên cứu dưới góc độ lịch sử, “ôn cũ biết mới”, “lấy xưa xét nay”. Một mặt cần dự đoán về tương lai, cho dù những dự đoán này không được chính xác lắm nhưng nhận thức có thể không ngừng phát triển, điều quan trọng là biết thu nhận những nhận thức và quan điểm đúng đắn dù cho chúng còn phiến diện.</p>\n<p>- Quy hoạch vì tính hài hòa xã hội. Cần sử dụng phương pháp quy hoạch có sự tham gia của các bên liên quan bao gồm cả tư nhân, các ngành khác, các ngành công cộng các tổ chức dựa vào cộng đồng, các tổ chức phi chính phủ và các tổ chức quốc tế. Điều quan trọng là cần liên kết những ảnh hưởng lẫn nhau của các nhóm kinh tế xã hội khác nhau, tăng cường hợp tác hiểu biết và biết nhượng bộ nhau giữa các thành viên trong xã hội. Quy hoạch đô thị cần dựa trên sự nhất trí lẫn nhau và bình đẳng trong cộng đồng.</p>\n<p>- Quy hoạch thích ứng với biến đổi khí hậu trên cơ sở kết hợp từ trên xuống và từ dưới lên, với diều kiện phải đáp ứng cho phép tạo nên “hệ thống học thích ứng” là kết hợp 2 quan niệm trái ngược.</p>\n<p>Điểm mới trong quy hoạch chiến lược hợp nhất:</p>\n<p>- Linh hoạt thay vì cứng nhắc.<br />- Mang tính hành động thay vì lý thuyết.<br />- Tập trung vào quy trình thay vì sản phẩm.<br />- Có sự tham gia rộng rãi của cộng đồng và các bên liên quan thay vì ý chí chính trị và quan - điểm chuyên gia thuần túy.<br />- Tầm nhìn dài hạn thay vì nhiệm kỳ.<br />- Tính đến toàn cầu hóa thay vì chỉ địa phương.<br />- Đóng vai trò điều phối và hợp nhất liên ngành trong hoạch định chính sách phát triển và quản lý đô thị thông qua khuyến khích các cơ quan quản lý phối hợp quy hoạch ngành theo không gian.<br />- Kiến tạo hình thức đô thị hóa mới và hình thái đô thị theo hướng thân thiện với môi trường, bảo vệ tài nguyên và nâng cao chất lượng không gian sống.</p>', '', 'doi-moi-phuong-phap-quy-hoach', '', '', '', 0, 3, 0, '', '', 1, 194);

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
) ENGINE=InnoDB  DEFAULT CHARSET=utf8 AUTO_INCREMENT=195 ;

--
-- Dumping data for table `dos_module_news_cat`
--

INSERT INTO `dos_module_news_cat` (`cat_id`, `cat_parent_id`, `cat_title`, `cat_titleen`, `preview`, `previewen`, `tag`, `tagen`, `description`, `descriptionen`, `pic_full`, `cat_order`, `cat_extra1`, `cat_extra2`, `cat_enable`, `dos_usernames_username`) VALUES
(192, 0, 'Thông tin kinh tế', '', '', '', 'thong-tin-kinh-te', '', '', '', '', 1, '', '', 1, 'cuongthuan'),
(193, 0, 'Thông tin thị trường', '', '', '', 'thong-tin-thi-truong', '', '', '', '', 2, '', '', 1, 'cuongthuan'),
(194, 0, 'Tin tức mới', '', '', '', 'tin-tuc-moi', '', '', '', '', 3, '', '', 1, 'cuongthuan');

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
('day_time', 2456121),
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
('''127.0.0.1''', 1342054531);

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
) ENGINE=InnoDB  DEFAULT CHARSET=utf8 AUTO_INCREMENT=4758 ;

--
-- Dumping data for table `dos_module_products`
--

INSERT INTO `dos_module_products` (`record_id`, `title`, `titleen`, `postdate`, `pic_thumb`, `pic_full`, `pic_desc`, `preview`, `previewen`, `content`, `contenten`, `tag`, `tagen`, `description`, `descriptionen`, `hits`, `record_order`, `unit`, `hot`, `specials`, `extra_field1`, `extra_field2`, `extra_field3`, `extra_field4`, `enable`, `dos_module_item_cat_cat_id`) VALUES
(4751, 'Cống souveraen 1', '', '2012-07-11 07:42:59', 'san-pham-1-thumb.jpg', 'san-pham-1.jpg', '', '<p>chi tiết sản phẩm</p>', '', '<p>chi tiết sản phẩm</p>', '', 'cong-souveraen-1', '', '', '', 0, 1, '', 0, 0, '', '', '', '', 0, 917),
(4752, 'Cống souveraen 2', '', '2012-07-11 07:45:05', 'cong-souveraen-2-thumb.jpg', 'cong-souveraen-2.jpg', '', '<p>chi tiết sản phẩm</p>', '', '<p>chi tiết sản phẩm</p>', '', 'cong-souveraen-2', '', '', '', 0, 2, '', 0, 0, '', '', '', '', 1, 917),
(4753, 'Cống souveraen 3', '', '2012-07-11 07:46:17', 'cong-souveraen-3-thumb.jpg', 'cong-souveraen-3.jpg', '', '<p>chi tiết sản phẩm</p>', '', '<p>chi tiết sản phẩm</p>', '', 'cong-souveraen-3', '', '', '', 0, 3, '', 0, 0, '', '', '', '', 1, 917),
(4754, 'Cống souveraen 4', '', '2012-07-11 07:48:10', 'cong-souveraen-4-thumb.jpg', 'cong-souveraen-4.JPG', '', '<p>chi tiết sản phẩm</p>', '', '<p>chi tiết sản phẩm</p>', '', 'cong-souveraen-4', '', '', '', 0, 4, '', 0, 0, '', '', '', '', 1, 917),
(4755, 'Cống souveraen 5', '', '2012-07-11 07:49:34', 'cong-souveraen-5-thumb.jpg', 'cong-souveraen-5.jpg', '', '<p>chi tiết sản phẩm</p>', '', '<p>chi tiết sản phẩm</p>', '', 'cong-souveraen-5', '', '', '', 0, 5, '', 0, 0, '', '', '', '', 1, 917),
(4756, 'Máy hàn lồng thép MBK', '', '2012-07-11 07:53:43', 'may-han-long-thep-mbk-thumb.jpg', 'may-han-long-thep-mbk.jpg', '', '<p>chi tiết sản phẩm</p>', '', '<p>chi tiết sản phẩm</p>', '', 'may-han-long-thep-mbk', '', '', '', 0, 6, '', 0, 0, '', '', '', '', 1, 935),
(4757, 'Sản phẩm máy Jumbo', '', '2012-07-11 07:56:46', 'san-pham-may-jumbo-thumb.jpg', 'san-pham-may-jumbo.jpg', '', '<p>chi tiết sản phẩm</p>', '', '<p>chi tiết sản phẩm</p>', '', 'san-pham-may-jumbo', '', '', '', 0, 7, '', 0, 0, '', '', '', '', 1, 918);

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
) ENGINE=InnoDB  DEFAULT CHARSET=utf8 AUTO_INCREMENT=937 ;

--
-- Dumping data for table `dos_module_products_cat`
--

INSERT INTO `dos_module_products_cat` (`cat_id`, `cat_parent_id`, `cat_title`, `cat_titleen`, `preview`, `previewen`, `tag`, `tagen`, `description`, `descriptionen`, `pic_full`, `pic_desc`, `cat_order`, `cat_extra1`, `cat_extra2`, `cat_enable`, `dos_usernames_username`) VALUES
(917, 0, 'Cống Souveraen', '', '', '', 'cong-souveraen', '', '', '', 'cong-souveraen.jpg', '', 4, '', '', 1, 'cuongthuan'),
(918, 0, 'Sản phẩm máy Jumbo', '', '', '', 'san-pham-may-jumbo', '', '', '', 'san-pham-may-jumbo.jpg', '', 4, '', '', 1, 'cuongthuan'),
(935, 0, 'Máy hàn lồng thép MBK', '', '', '', 'may-han-long-thep-mbk', '', '', '', 'may-han-long-thep-mbk.jpg', '', 4, '', '', 1, 'cuongthuan'),
(936, 0, 'Trạm trộn Bê Tông', '', '', '', 'tram-tron-be-tong', '', '', '', '', '', 4, '', '', 1, 'cuongthuan');

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
) ENGINE=InnoDB  DEFAULT CHARSET=utf8 AUTO_INCREMENT=191 ;

--
-- Dumping data for table `dos_module_services`
--

INSERT INTO `dos_module_services` (`record_id`, `title`, `titleen`, `preview`, `previewen`, `content`, `contenten`, `pic_full`, `hit`, `created`, `record_order`, `hot`, `extra_field1`, `extra_field2`, `tag`, `tagen`, `description`, `descriptionen`, `activated`, `dos_usernames_username`) VALUES
(189, 'Dịch vụ 1', '', '', '', '<p>adsadsa</p>', '', '', 2, '2012-07-09 05:58:42', 1, 0, '', '', 'dich-vu-1', '', '', '', 1, 'cuongthuan'),
(190, 'Dịch vụ 2', '', '', '', '<p>asdasdsa</p>', '', '', 2, '2012-07-09 05:58:55', 2, 0, '', '', 'dich-vu-2', '', '', '', 1, 'cuongthuan');

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
('keywords', 'Công ty Cổ Phần Đầu tư Phát triển Cường Thuận IDICO là nhà cung cấp chính các sản phẩm bê tông đúc sẵn, bê tông nhựa nóng với công nghệ sản xuất hiện đại và nhiều năm kinh nghiệm đã được các nhà thầu lớn trong nước và ngoài nước tín nhiệm', 'cuongthuan'),
('description', 'Công ty CP ĐT PT Cường Thuận IDICO chuyên cung cấp bê tông đúc sẵn, bê tông nhựa nóng, sản xuất hiện đại và nhiều năm kinh nghiệm,phục vụ trong nước vào nước ngoài.', 'cuongthuan'),
('title', 'Công ty Cổ Phần Đầu tư Phát triển Cường Thuận IDICO - Cuongthuan.vn', 'cuongthuan'),
('analytics', '<script type="text/javascript">\r\n\r\n  var _gaq = _gaq || [];\r\n  _gaq.push([''_setAccount'', ''UA-33333302-1'']);\r\n  _gaq.push([''_trackPageview'']);\r\n\r\n  (function() {\r\n    var ga = document.createElement(''script''); ga.type = ''text/javascript''; ga.async = true;\r\n    ga.src = (''https:'' == document.location.protocol ? ''https://ssl'' : ''http://www'') + ''.google-analytics.com/ga.js'';\r\n    var s = document.getElementsByTagName(''script'')[0]; s.parentNode.insertBefore(ga, s);\r\n  })();\r\n\r\n</script>', 'cuongthuan');

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
('040712', 'Mẫu cơ khí: 040712', '2012-07-03 22:08:53', 'Chuyên bán các loại máy móc, thiết bị cơ khí, cửa sắt...');

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
('040712', 'co-khi-may-moc-thiet-bi');

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
('040712', 'about', 'advs_left'),
('040712', 'about', 'advs_right'),
('040712', 'about', 'list_supports'),
('040712', 'about', 'menu_about'),
('040712', 'about', 'news_new'),
('040712', 'contact', 'advs_left'),
('040712', 'contact', 'advs_right'),
('040712', 'contact', 'list_supports'),
('040712', 'contact', 'menu_products'),
('040712', 'contact', 'news_new'),
('040712', 'default', 'about_home'),
('040712', 'default', 'advs_left'),
('040712', 'default', 'advs_right'),
('040712', 'default', 'list_supports'),
('040712', 'default', 'menu_products'),
('040712', 'default', 'news_new'),
('040712', 'default', 'products_new'),
('040712', 'default', 'video_hot'),
('040712', 'news', 'advs_left'),
('040712', 'news', 'advs_right'),
('040712', 'news', 'list_supports'),
('040712', 'news', 'menu_news'),
('040712', 'news', 'news_hot'),
('040712', 'news', 'news_new'),
('040712', 'products', 'advs_left'),
('040712', 'products', 'advs_right'),
('040712', 'products', 'list_supports'),
('040712', 'products', 'menu_products'),
('040712', 'products', 'news_new'),
('040712', 'services', 'advs_left'),
('040712', 'services', 'advs_right'),
('040712', 'services', 'list_supports'),
('040712', 'services', 'menu_services'),
('040712', 'services', 'news_new'),
('040712', 'video', 'advs_left'),
('040712', 'video', 'advs_right'),
('040712', 'video', 'list_supports'),
('040712', 'video', 'menu_video'),
('040712', 'video', 'news_new');

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
('cuongthuan', 'info@thuonghoi.com', 'e10adc3949ba59abbe56e057f20f883e', '2012-06-27 23:46:53', '', '', '', 'user', 'vi', '', '2012-09-25 16:00:00', 0, '20122012', '', 1, '040712', 19, 'bds-kien-truc-xay-dung');

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
('address1', 'Địa chỉ trụ sở chính: 168 KP11, Phường Bình,  TP .Biên Hòa, Tỉnh Đồng Nai', '', 'cuongthuan'),
('address2', 'Điện thoại: 061. 6291 081 - Fax: 061. 6291 082', '', 'cuongthuan'),
('company_name', '', '', 'cuongthuan'),
('company_name_footer', 'CÔNG TY CP ĐẦU TƯ PHÁT TRIỂN CƯỜNG THUẬN IDICO', '', 'cuongthuan'),
('company_phone', '', '', 'cuongthuan');

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
