-- phpMyAdmin SQL Dump
-- version 3.4.5
-- http://www.phpmyadmin.net
--
-- Host: localhost
-- Generation Time: Jun 18, 2012 at 03:23 PM
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
('advs_left_height', 200, '', '160512'),
('advs_left_width', 203, '', '160512'),
('banner_height', 315, '', '160512'),
('banner_width', 717, '', '160512'),
('logo_height', 77, '', '160512'),
('logo_width', 650, '', '160512'),
('max_image_height', 860, '', '160512'),
('max_image_width', 700, '', '160512'),
('news_cat_height', 90, '', '160512'),
('news_cat_width', 143, '', '160512'),
('news_height_thumb', 90, '', '160512'),
('news_num_paging_cat', 10, '', '160512'),
('news_num_paging_hot', 6, '', '160512'),
('news_num_paging_index', 10, '', '160512'),
('news_num_paging_new', 6, '', '160512'),
('news_width_thumb', 143, '', '160512'),
('products_cat_height', 160, '', '160512'),
('products_cat_width', 160, '', '160512'),
('products_height', 500, '', '160512'),
('products_height_thumb', 160, '', '160512'),
('products_num_paging_cat', 4, '', '160512'),
('products_num_paging_hot', 16, '', '160512'),
('products_num_paging_new', 20, '', '160512'),
('products_num_paging_other', 4, '', '160512'),
('products_width', 500, '', '160512'),
('products_width_thumb', 160, '', '160512'),
('services_height', 850, '', '160512'),
('services_width', 700, '', '160512'),
('video_height_thumb', 160, '', '160512'),
('video_num_paging_cat', 16, '', '160512'),
('video_num_paging_index', 16, '', '160512'),
('video_width_thumb', 160, '', '160512');

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
('160512', 'products', 'scroll.css|jquery.fancybox.css', 'css'),
('160512', 'products', 'jcarousellite_1.0.1.js|scroller.js|jquery.fancybox.js|jquery.scroll-1.4.2-min.js|jquery.serialScroll-1.2.2-min.js|product.js', 'javascript'),
('160512', 'video', 'prettyPhoto.css', 'css'),
('160512', 'video', 'jquery.prettyPhoto.js', 'javascript');

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
('about', 'baovebaouy'),
('advs', 'baovebaouy'),
('banner', 'baovebaouy'),
('contact', 'baovebaouy'),
('news', 'baovebaouy'),
('products', 'baovebaouy'),
('services', 'baovebaouy'),
('supports', 'baovebaouy');

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
) ENGINE=InnoDB  DEFAULT CHARSET=utf8 AUTO_INCREMENT=144 ;

--
-- Dumping data for table `dos_module_abouts`
--

INSERT INTO `dos_module_abouts` (`record_id`, `title`, `titleen`, `content`, `contenten`, `hit`, `created`, `record_order`, `hot`, `extra_field1`, `extra_field2`, `tag`, `tagen`, `description`, `descriptionen`, `activated`, `dos_usernames_username`) VALUES
(142, 'Kính chào quý khách!', '', '<p style="text-align:justify;"><span style="color:#ff6600;"><strong>          BẢO UY</strong></span> là Công ty chuyên cung cấp Dịch vụ Bảo vệ và Vệ sĩ chuyên nghiệp, chúng tôi nguyện cung cấp những nhân viên đã được huấn luyện, sát hạch một cách nghiêm ngặt để đảm bảo cho nhu cầu Thương mại, Giải trí và các nhu cầu thị trường nội địa khác. Phương châm của Công ty chúng tôi là toàn tâm, toàn ý phục vụ khách hàng, cung cấp dịch vụ chuyên nghiệp và giá cả cạnh tranh đối với mọi khách hàng.</p>\n<p style="text-align:justify;">         Tất cả nhân viên đều đã được chọn lựa và đào tạo kỹ càng để chứng tỏ năng lực của họ nhằm đáp ứng các yêu cầu nhiệm vụ của một nhân viên chuyên nghiệp và một phong cách lịch lãm trước công chúng.</p>\n<p style="text-align:justify;"><span style="color:#ff6600;"><strong>          BẢO UY</strong></span> hoạt động trên toàn lãnh thổ Việt Nam và cung cấp đầy đủ các dịch vụ an ninh cho các tổ chức, doanh nghiệp và cá nhân bao gồm các hình thức : Bảo vệ trụ sở, cao ốc, ngân hàng, khách sạn, bất động sản, nhà kho, nhà máy, các cơ sở công nghiệp, công trường xây dựng, áp tải hàng hóa, tiền bạc, các sự kiện khai trương, mít tinh, hòa nhạc, biểu diễn thời trang, các sự kiện thể thao, các buổi lễ tiệc, đám cuới ..v.v Chúng tôi không giới hạn hoạt động của mình vì luôn muốn cung cấp một dịch vụ chuyên nghiệp và nhân bản.</p>\n<p style="text-align:justify;">          Đội ngũ quản lý của Công ty được xây dựng trên nền tảng phẩm chất đạo đức kết hợp với đào tạo chuyên sâu tại mục tiêu, nhiều nhân viên đã từng là cựu sĩ quan an ninh và lực lượng cảnh sát. Tất cả các nhân viên bảo vệ và vệ sĩ đều đạt tiêu chuẩn quy định của Bộ Công an và đã từng có kinh nghiệm phục vụ khách hàng nhiều năm và đã trải qua hàng trăm giờ huấn luyện.</p>\n<p style="text-align:center;">Mọi việc làm, hành động của chúng tôi đều hướng đến một mục đích chung:</p>\n<p style="text-align:center;"><img src="/public/userfiles/image/baovebaouy/image/415589172152011_esvn.com.vn-gioithieudoanhnghiep.jpg" alt="" width="417" height="336" /></p>\n<p style="text-align:center;"><span style="color:#ff6600;"><strong>“CHẤT LƯỢNG TIÊN PHONG – DỊCH VỤ HOÀN HẢO”</strong>.</span></p>', '', 342, '2012-05-25 07:14:04', 1, 1, '', '', 'kinh-chao-quy-khach', '', '', '', 1, 'baovebaouy'),
(143, 'Giới thiệu về công ty', '', '<p style="text-align:center;"><span style="color:#ff0000;"><strong><img src="/public/userfiles/image/baovebaouy/image/bao_ve_Bao_Viet_1333644906.jpg" alt="" width="613" height="344" /><br /></strong></span></p>\n<p style="text-align:justify;"><span style="color:#ff0000;"><strong>SỨ MỆNH</strong></span></p>\n<p style="text-align:justify;"><em><strong>Đem lại Lợi Ích Cao Nhất , An Toàn Nhất Cho Khách Hàng Và Xã Hội.</strong></em></p>\n<p style="text-align:justify;">&gt;&gt;&gt; Tham gia đóng góp vào sự lớn mạnh, an toàn của nghành an ninh, bảo vệ Việt Nam. Chung sức cùng doanh nghiệp, cơ quan công an, chính quyền địa phương đảm bảo an toàn về tài sản, phòng chống cháy nổ cũng như giữ gìn an ninh, trật tự, góp phần vào sự phát triển kinh tế của đất nước.</p>\n<p style="text-align:justify;">&gt;&gt;&gt;  Là người bạn đồng hành của khách hàng, đáp ứng đầy đủ nhu cầu về an ninh, vì sự phát triển tồn tại, vì chữ tín của khách hàng.</p>\n<p style="text-align:justify;">&gt;&gt;&gt;  Tạo điều kiện thuận lợi nhất cho cán bộ - nhân viên, cố vấn, cộng tác viên và Đại gia đình <span style="color:#ff0000;"><strong>BẢO UY</strong></span>.</p>\n<p style="text-align:justify;"><strong><span style="color:#ff0000;">ĐỊNH HƯỚNG</span></strong></p>\n<p style="text-align:justify;">&gt;&gt;&gt;  Trở Thành Một Trong Những Công Ty Dịch Vụ Bảo Vệ Chuyên Nghiệp Hàng Đầu Của Việt Nam.</p>\n<p style="text-align:justify;">&gt;&gt;&gt; Trong 5 năm kể từ khi thành lập, chính thức hoạt động, <strong><span style="color:#ff0000;">BẢO UY</span></strong> phấn đấu chở thành một trong 10 công ty bảo vệ chuyên nghiệp hàng đầu Việt Nam.</p>\n<p style="text-align:justify;">&gt;&gt;&gt;  Sau 5 năm phấn đấu chở thành công ty dịch vụ bảo vệ chuyên nghiệp hàng đầu Việt Nam.</p>\n<p style="text-align:justify;"><strong><span style="color:#ff0000;">CHIẾN LƯỢC</span></strong></p>\n<p style="text-align:justify;">&gt;&gt;&gt; Đầu Tư Vào Dịch Vụ Bảo Vệ Chuyên Nghiệp, Tư Vấn Giải Pháp An Ninh Và Quan Tâm Chăm Sóc Khách Hàng.</p>', '', 91, '2012-05-25 07:23:39', 2, 0, '', '', 'gioi-thieu-ve-cong-ty', '', '', '', 1, 'baovebaouy');

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
) ENGINE=InnoDB  DEFAULT CHARSET=utf8 AUTO_INCREMENT=173 ;

--
-- Dumping data for table `dos_module_advs`
--

INSERT INTO `dos_module_advs` (`record_id`, `title`, `titleen`, `pic_thumb`, `url`, `create_date`, `start_date`, `end_date`, `hits`, `record_order`, `position`, `type`, `enable`, `dos_usernames_username`) VALUES
(145, 'Quảng cáo', '', 'quang-cao.gif', 'http://dos.vn', '2012-05-25 09:25:52', '2012-05-24 17:00:00', '2012-06-29 17:00:00', 0, 1, 'left', '_bank', 1, 'baovebaouy'),
(146, 'Quảng cáo 1', '', 'quang-cao-1.jpeg', 'http://dos.vn', '2012-05-25 09:26:19', '2012-05-24 17:00:00', '2012-06-29 17:00:00', 0, 2, 'left', '_bank', 0, 'baovebaouy'),
(172, 'Quảng cáo 2', '', 'quang-cao-2.jpg', 'http://dos.vn', '2012-05-31 08:56:23', '2012-05-30 17:00:00', '2012-06-29 17:00:00', 0, 3, 'left', '_bank', 1, 'baovebaouy');

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
) ENGINE=InnoDB  DEFAULT CHARSET=utf8 AUTO_INCREMENT=733 ;

--
-- Dumping data for table `dos_module_banners`
--

INSERT INTO `dos_module_banners` (`banner_id`, `banner_date`, `banner_name`, `banner_url`, `banner_link`, `banner_order`, `banner_type`, `position`, `enable`, `dos_usernames_username`) VALUES
(617, '2012-05-25 07:44:44', 'Logo', 'logo.png', '', 1, 'logo', 'default', 1, 'baovebaouy'),
(618, '2012-05-25 08:08:31', 'Banner', 'banner.jpg', '', 2, 'banners', 'default', 1, 'baovebaouy'),
(619, '2012-05-25 08:08:47', 'Banner 1', 'banner-1.jpg', '', 3, 'banners', 'default', 1, 'baovebaouy'),
(620, '2012-05-25 08:09:04', 'Banner 2', 'banner-2.jpg', '', 4, 'banners', 'default', 1, 'baovebaouy'),
(622, '2012-05-25 08:11:02', 'Banner 4', 'banner-4.jpg', '', 6, 'banners', 'news', 1, 'baovebaouy'),
(623, '2012-05-25 08:13:28', 'Banner 5', 'banner-5.jpg', '', 7, 'banners', 'news', 1, 'baovebaouy'),
(624, '2012-05-25 08:13:53', 'Banner 6', 'banner-6.jpg', '', 8, 'banners', 'news', 1, 'baovebaouy'),
(625, '2012-05-25 08:14:13', 'Banner 7', 'banner-7.jpg', '', 9, 'banners', 'news', 1, 'baovebaouy'),
(626, '2012-05-25 08:14:29', 'Banner 8', 'banner-8.jpg', '', 10, 'banners', 'products', 1, 'baovebaouy'),
(627, '2012-05-25 08:20:45', 'Banner 9', 'banner-9.jpg', '', 11, 'banners', 'products', 1, 'baovebaouy'),
(628, '2012-05-25 08:21:08', 'Banner 10', 'banner-10.jpg', '', 12, 'banners', 'products', 1, 'baovebaouy'),
(643, '2012-05-25 09:17:54', 'Banner 11', 'banner-11.jpg', '', 13, 'banners', 'contact', 1, 'baovebaouy'),
(644, '2012-05-25 09:18:28', 'Banner 12', 'banner-12.jpg', '', 14, 'banners', 'contact', 1, 'baovebaouy'),
(732, '2012-06-02 03:29:55', 'Banner 13', 'banner-13.jpg', '', 15, 'banners', 'news', 1, 'baovebaouy');

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
) ENGINE=InnoDB  DEFAULT CHARSET=utf8 AUTO_INCREMENT=24 ;

--
-- Dumping data for table `dos_module_contacts`
--

INSERT INTO `dos_module_contacts` (`record_id`, `title`, `titleen`, `content`, `contenten`, `create_date`, `record_order`, `hit`, `hot`, `tag`, `tagen`, `description`, `descriptionen`, `enable`, `dos_usernames_username`) VALUES
(23, 'Liên hệ với chúng tôi', '', '<p><strong><img style="float:left;margin-right:10px;margin-left:10px;" src="/public/userfiles/image/baovebaouy/image/images.jpeg" alt="" width="150" height="149" /></strong></p>\n<p><span style="color:#ff0000;"><strong>* CÔNG TY CỔ PHẦN DỊCH VỤ BẢO VỆ BẢO UY</strong></span></p>\n<p>* Điện thoại: 061.660 8573</p>\n<p>* Fax: 061.885 1437</p>\n<p>* Địa chỉ: Số 9P1, Đường Nguyễn Thị Tồn, Phường Bửu Hòa, TP. Biên Hòa, Tỉnh Đồng Nai</p>\n<p>* Email: <a href="mailto:info@baovebaouy.com%C3%82%C2%A0">info@baovebaouy.com </a></p>\n<p>* Website: <a href="http://www.baovebaouy.com">www.baovebaouy.com</a></p>\n<p> </p>\n<p> </p>', '', '2012-06-16 02:41:31', 1, 0, 0, 'lien-he-voi-chung-toi', '', '', '', '1', 'baovebaouy');

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
('Trang chủ', '', 'default', '', 1, '', '', '', '', 'baovebaouy'),
('Giới thiệu', '', 'about', '', 2, '', '', '', '', 'baovebaouy'),
('Phương án bảo vệ', '', 'products', '', 3, '', '', '', '', 'baovebaouy'),
('Dịch vụ', '', 'services', '', 4, '', '', '', '', 'baovebaouy'),
('Hình ảnh hoạt động', '', 'news', '', 5, '', '', '', '', 'baovebaouy'),
('Liên hệ', '', 'contact', '', 6, '', '', '', '', 'baovebaouy');

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
) ENGINE=InnoDB  DEFAULT CHARSET=utf8 AUTO_INCREMENT=93 ;

--
-- Dumping data for table `dos_module_news_cat`
--

INSERT INTO `dos_module_news_cat` (`cat_id`, `cat_parent_id`, `cat_title`, `cat_titleen`, `preview`, `previewen`, `tag`, `tagen`, `description`, `descriptionen`, `pic_full`, `cat_order`, `cat_extra1`, `cat_extra2`, `cat_enable`, `dos_usernames_username`) VALUES
(92, 0, 'Hình ảnh hoạt động', '', '', '', 'hinh-anh-hoat-dong', '', '', '', '', 1, '', '', 1, 'baovebaouy');

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
('day_time', 2456097),
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
('''::1''', 1340025029),
('''127.0.0.1''', 1340025618);

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
) ENGINE=InnoDB  DEFAULT CHARSET=utf8 AUTO_INCREMENT=644 ;

--
-- Dumping data for table `dos_module_products_cat`
--

INSERT INTO `dos_module_products_cat` (`cat_id`, `cat_parent_id`, `cat_title`, `cat_titleen`, `preview`, `previewen`, `tag`, `tagen`, `description`, `descriptionen`, `pic_full`, `pic_desc`, `cat_order`, `cat_extra1`, `cat_extra2`, `cat_enable`, `dos_usernames_username`) VALUES
(441, 0, 'Phương án PCCC', '', '', '', 'phuong-an-pccc', '', 'Phương án PCCC', '', 'phuong-an-pccc.jpg', '', 1, '', '', 1, 'baovebaouy'),
(637, 0, 'Phương án Bảo vệ Tòa nhà', '', '', '', 'phuong-an-bao-ve-toa-nha', '', '', '', 'phuong-an-bao-ve-toa-nha.jpeg', '', 2, '', '', 1, 'baovebaouy'),
(638, 0, 'Phương án Bảo vệ Quán Cafe', '', '', '', 'phuong-an-bao-ve-quan-cafe', '', '', '', 'phuong-an-bao-ve-quan-cafe.jpg', '', 4, '', '', 1, 'baovebaouy'),
(639, 0, 'Phương án Bảo vệ Công trình', '', '', '', 'phuong-an-bao-ve-cong-trinh', '', '', '', 'bao-ve-cong-trinh.jpeg', '', 3, '', '', 1, 'baovebaouy'),
(640, 0, 'Phương án Bảo vệ Công ty', '', '', '', 'phuong-an-bao-ve-cong-ty', '', '', '', 'phuong-an-bao-ve-cong-ty.jpg', '', 2, '', '', 1, 'baovebaouy'),
(641, 0, 'Phương án Bảo vệ Sự kiện', '', '', '', 'phuong-an-bao-ve-su-kien', '', '', '', 'phuong-an-bao-ve-su-kien.jpg', '', 6, '', '', 1, 'baovebaouy'),
(642, 0, 'Phương án bảo vệ chung cư', '', '', '', 'phuong-an-bao-ve-chung-cu', '', '', '', 'phuong-an-bao-ve-chung-cu.jpeg', '', 7, '', '', 1, 'baovebaouy'),
(643, 0, 'Phương án bảo vệ Siêu thị', '', '', '', 'phuong-an-bao-ve-sieu-thi', '', '', '', 'phuong-an-bao-ve-sieu-thi.jpeg', '', 2, '', '', 1, 'baovebaouy');

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
) ENGINE=InnoDB  DEFAULT CHARSET=utf8 AUTO_INCREMENT=83 ;

--
-- Dumping data for table `dos_module_services`
--

INSERT INTO `dos_module_services` (`record_id`, `title`, `titleen`, `preview`, `previewen`, `content`, `contenten`, `pic_full`, `hit`, `created`, `record_order`, `hot`, `extra_field1`, `extra_field2`, `tag`, `tagen`, `description`, `descriptionen`, `activated`, `dos_usernames_username`) VALUES
(78, 'Bảo vệ Vận chuyển', '', '', '', '<p style="text-align:center;"><span style="font-size:14pt;color:#00ff00;"><strong>DỊCH VỤ BẢO VỆ VẬN CHUYỂN<br /></strong></span></p>\n<p style="text-align:center;"><span style="font-size:14pt;color:#00ff00;"><strong><img src="/public/userfiles/image/baovebaouy/image/1290495333_134394743_1-Hinh-anh-ca--DCH-V-BO-V-aU-VIT-TP-H-CHi-MINH-1290495333.jpg" alt="" width="625" height="333" /></strong></span></p>\n<p style="text-align:justify;">Các công việc cho thuê xe, tài xế theo yêu cầu đặc biệt (thỏa thuận riêng với người sử dụng dịch vụ)</p>\n<p style="text-align:justify;"><strong>Nội dung chi tiết các công việc trong gói:</strong></p>\n<p style="text-align:justify;">Theo yêu cầu đặc biệt của người sử dụng dịch vụ, công ty chúng tôi bảo vệ và vận chuyển các loại tài sản, giấy tờ có giá trị. Nhân viên nhận nhiệm vụ này là những người có trình độ, võ thuật cao, lái xe tốt, trung thực xứng đáng với sự tin cậy của khách hàng.</p>\n<p style="text-align:justify;">Với phương châm "Thỏa mãn tối đa nhu cầu của khách hàng" dựa trên nền tảng yếu tố con người chuyên nghiệp kết hợp với các hệ thống thiết bị thích hợp, thông minh và hiện đại. Công ty bảo vệ luôn cam kết chất lượng và khả năng tối ưu hóa đối với mỗi sản phẩm - dịch vụ mà chúng tôi cung cấp.</p>', '', '', 26, '2012-05-25 08:30:15', 3, 0, '', '', 'bao-ve-van-chuyen', '', '', '', 1, 'baovebaouy'),
(79, 'Bảo vệ Doanh nghiệp', '', '', '', '<p style="text-align:center;"><span style="color:#00ff00;font-size:14pt;"><strong>DỊCH VỤ BẢO VỆ DOANH NGHIỆP<br /></strong></span></p>\n<p style="text-align:center;"><span style="color:#00ff00;font-size:14pt;"><strong><img src="/public/userfiles/image/baovebaouy/image/145-an-ninh.jpg" alt="" width="448" height="298" /></strong></span></p>\n<p>Quý khách hàng muốn có một môi trường an ninh trật tự thuận lợi tạo điều kiện cho hoạt động sản xuất kinh doanh, muốn thay đổi toàn bộ hay một phần lực lượng bảo vệ của mình nhằm đảm bảo sự an toàn, có tính chuyên nghiệp cao đồng thời tạo cho khách hàng một ấn tượng tốt đẹp và trọng thị khi đến công ty của bạn.</p>\n<p><strong>BẢO VỆ BẢO UY</strong> sẽ tổ chức, quản lý và triển khai lực lượng vệ sĩ, thực hiện các biện pháp nghiệp vụ để bảo vệ và duy trì môi trường an ninh thuận lợi cho hoạt động sản xuất, kinh doanh của Quý khách với các nhiệm vụ chủ yếu như sau:</p>\n<p>- Bảo vệ hàng hóa, tài sản, cơ sở vật chất kỷ thuật, máy móc, thiết bị của Quý khách.</p>\n<p>- Kiểm tra hướng dẫn, giám sát cán bộ, nhân viên, công nhân, người lao động chấp hành đúng nội quy, kỷ luật lao động theo quy định của Quý khách hàng đặt ra.</p>\n<p>- Phòng ngừa, phát hiện và ngăn chặn các hành vi trộm cắp hoặc làm mất mát, thất thoát tài sản.</p>\n<p>- Phòng ngừa, phát hiện và ngăn chặn các vụ việc đình công, bạo loạn, đánh nhau, gây rối trật tự có thể làm phương hại đến hoạt động sản xuất, kinh doanh và uy tín của Quý khách.</p>\n<p>- Kiểm tra, giám sát và hướng dẫn các loại phương tiện ra vào, hàng hóa, tài sản xuất nhập tại công ty.</p>\n<p>- Tiếp nhận, chuyển giao các loại báo chí, công văn, thư tín, điện tín, bưu phẩm, bưu kiện do bưu điện hoặc các cơ quan chuyển đến.</p>\n<p>- Tiếp đón và hướng dẫn khách hàng, khách tham quan, khách đến liên hệ công tác… ra vào công ty theo đúng quy định.</p>\n<p style="text-align:left;">- Thực hiện công tác an toàn phòng cháy, chữa cháy, phối kết hợp với cơ quan công an, các cơ quan hữu quan để giải quyết các vấn đề liên quan đến an ninh trật tự tại công ty Quý khách.</p>\n<p style="text-align:center;"><strong>AN TOÀN CỦA QUÍ KHÁCH LÀ TRỌNG TRÁCH CỦA BẢO VỆ BẢO UY</strong></p>\n<p> </p>', '', '', 25, '2012-05-25 08:41:49', 5, 0, '', '', 'bao-ve-doanh-nghiep', '', '', '', 1, 'baovebaouy'),
(80, 'Bảo vệ Cá nhân', '', '', '', '<p style="text-align:center;"><span style="color:#00ff00;font-size:14pt;"><strong>DỊCH VỤ BẢO VỆ CÁ NHÂN</strong></span></p>\n<p style="text-align:center;"><strong><img src="/public/userfiles/image/baovebaouy/image/thutuong-nguyentandung.jpg" alt="" width="482" height="362" /><br /></strong></p>\n<p style="text-align:justify;"><strong>BẢO VỆ BẢO UY</strong> cung cấp một số dịch vụ chuyên biệt cho khách hàng nhà riêng:</p>\n<p style="text-align:justify;"><strong>Hệ thống báo động:</strong></p>\n<p style="text-align:justify;">Trung tâm điều khiển của chúng tôi với tác phong 24 giờ trong ngày, 365 ngày trong năm, giữ chìa khoá nội bộ và cung cấp hệ thống báo động.</p>\n<p style="text-align:justify;"><strong>Canh gác:</strong></p>\n<p style="text-align:justify;">Chúng tôi tổ chức đội ngũ chuyên nghiệp, được huấn luyện và sát hạch qua các trung tâm huấn luyện thương mại khu vực, hoàn toàn đủ khả năng để quản lý ngôi nhà và chăm sóc những con vật yêu quý của quý vị khi quý vị vắng nhà.</p>\n<p style="text-align:justify;"><strong>Tuần tra:</strong></p>\n<p style="text-align:justify;">Khi ngôi nhà của quý vị không ai trông coi, một giải pháp chi phí hiệu quả là dịch vụ tuần tra. Đội tuần tra của chúng tôi sẽ kiểm tra bất cứ một dấu hiệu nào của sự đột nhập hoặc sự cố bất thường, và nếu cần thiết tư vấn cho quý vị khi có vấn đề.</p>\n<p style="text-align:justify;"><strong>Riêng tư chuyên biệt:</strong></p>\n<p style="text-align:justify;">Chúng tôi không những cung cấp đội ngũ đồng phục chỉnh tề hoặc ăn mặc lịch thiệp mà còn đảm bảo sự an ninh chuyên nghiệp cho vấn đề nội bộ gia đình, bao gồm cả các chức năng đám cưới và dạ tiệc. Chúng tôi ngăn chặn kẻ cắp, các vị khách không được đón chào và đảm bảo rằng xe cộ và tài sản của quý vị sẽ được bảo vệ an toàn.</p>', '', '', 25, '2012-05-25 08:46:50', 4, 0, '', '', 'bao-ve-ca-nhan', '', '', '', 1, 'baovebaouy'),
(81, 'Bảo vệ Chương trình - Sự kiện', '', '', '', '<p style="text-align:center;"><span style="color:#00ff00;font-size:14pt;"><strong>DỊCH VỤ BẢO VỆ CHƯƠNG TRÌNH - SỰ KIỆN</strong></span></p>\n<p style="text-align:center;"><span style="color:#00ff00;font-size:14pt;"><strong><img src="/public/userfiles/image/baovebaouy/image/banner_gioithieu.jpg" alt="" width="700" height="290" /></strong></span></p>\n<p style="text-align:justify;">Lực lượng bảo vệ sự kiện đặc biệt <strong>BẢO VỆ BẢO UY</strong> làm việc trong các đơn vị theo các chu kỳ hàng năm, đảm bảo sự kiện hoặc buổi lễ của quý vị sẽ diễn ra một cách thành công, từ các lễ mitting, hòa nhạc đến các buổi trình điễn thời trang, bên trong và bên ngoài các sự kiện thể thao, đến các đám cưới…</p>\n<p style="text-align:justify;">Không sự kiện nào giống sự kiện nào, đội ngũ bảo vệ của chúng tôi còn tổ chức đặc biệt cho từng loại hình sự kiện, mỗi đội ngũ từ 05 đến 100 người một lúc, được cung cấp bởi <strong>BẢO VỆ BẢO UY</strong>.</p>\n<p style="text-align:justify;">Chúng tôi hộ tống trên đường cùng ban nhạc và kiểm soát các đám đông tại ác buổi hòa nhạc, trước sau sân khấu, khu vực máy quay phim và các điểm cần thiết.</p>', '', '', 23, '2012-05-25 08:50:13', 2, 0, '', '', 'bao-ve-chuong-trinh-su-kien', '', '', '', 1, 'baovebaouy'),
(82, 'Đào tạo và cung cấp nhân sự', '', '', '', '<p style="text-align:center;"><span style="color:#00ff00;font-size:14pt;"><strong>DỊCH VỤ ĐÀO TẠO VÀ CUNG CẤP NHÂN SỰ</strong></span></p>\n<p style="text-align:center;"><span style="color:#00ff00;font-size:14pt;"><strong><img src="/public/userfiles/image/baovebaouy/image/huan-luyen.jpg" alt="" width="380" height="285" /></strong></span></p>\n<p style="text-align:justify;">Để đáp ứng nhu cầu cần thiết của quý khách hàng trong công tác bảo vệ, đặc biệt là phòng ngừa những nguy cơ cháy nổ, phòng trừ kẻ gian đột nhập trộm cắp và bảo mật thông tin. Chúng tôi không ngừng cập nhật các kiến thức thực tế và nâng cao nghiệp vụ của mình về: Phòng cháy chữa cháy, nghiệp vụ bảo vệ tại các cơ quan doanh nghiệp, thiết lập</p>\n<p style="text-align:justify;">Phương án tuần tra canh gác, phòng chống thất thoát tài sản, các loại biểu mẫu, sổ sách liên quan đến công</p>\n<p style="text-align:justify;">tác bảo vệ, kiến thức sơ cấp cứu tai nạn, ứng cứu tình huống khẩn cấp, các đòn thế võ thuật tự vệ và khống chế tội phạm, cách sử dụng thiết bị an toàn, các kỹ năng giao tiếp ứng sử trong công tác bảo vệ, các phẩm chất đạo đức cần có của người bảo vệ…để ứng dụng vào trong công việc thực tế tại cơ quan doanh nghiệp nhằm đạt được hiệu quả cao nhất.</p>\n<p style="text-align:justify;">Là công ty dịch vụ bảo vệ chuyên nghiệp uy tín tại Việt Nam chuyên đào tạo và cung cấp dịch vụ bảo vệ, vệ sỹ chuyên nghiệp, đang phát triển và mở rộng hoạt động trên toàn quốc. Chất lượng tiên phong - Dịch vụ hoàn hảo của <strong>BẢO VỆ BẢO UY</strong> được bao trọn gói với giá cả hợp lý nhât.</p>', '', '', 18, '2012-05-25 08:51:47', 1, 0, '', '', 'dao-tao-va-cung-cap-nhan-su', '', 'Đào tạo và cung cấp nhân sự', '', 1, 'baovebaouy');

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
) ENGINE=InnoDB  DEFAULT CHARSET=utf8 AUTO_INCREMENT=148 ;

--
-- Dumping data for table `dos_module_supports`
--

INSERT INTO `dos_module_supports` (`support_id`, `support_name`, `support_nameen`, `support_phone`, `support_value`, `support_order`, `support_type`, `dos_usernames_username`) VALUES
(146, 'Hỗ trợ Khách hàng 1', '', '', 'hongvietsoft', 1, 'yahoo', 'baovebaouy'),
(147, 'Hỗ trợ Khách hàng 2', '', '', 'maioanh7887', 1, 'yahoo', 'baovebaouy');

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
('keywords', 'bảo vệ Bảo Uy, dịch vụ bảo vệ toàn diện, phương án bảo vệ tốt, ....', 'baovebaouy'),
('description', 'bảo vệ Bảo Uy, dịch vụ bảo vệ toàn diện, phương án bảo vệ tốt, ....', 'baovebaouy'),
('title', 'Công ty CP Dịch vụ Bảo Uy - baovebouy.com', 'baovebaouy');

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
('160512', 'Mẫu ẩm thực 160512', '2012-05-15 21:22:58', 'Chuyên bán các loại ẩm thực đồ uống các loại.');

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
('160512', 'am-thuc-drink');

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
('160512', 'about', 'advs_left'),
('160512', 'about', 'list_supports'),
('160512', 'about', 'menu_about'),
('160512', 'contact', 'advs_left'),
('160512', 'contact', 'list_supports'),
('160512', 'contact', 'menu_products'),
('160512', 'default', 'about_home'),
('160512', 'default', 'advs_left'),
('160512', 'default', 'list_supports'),
('160512', 'default', 'menu_products'),
('160512', 'default', 'products_new'),
('160512', 'news', 'advs_left'),
('160512', 'news', 'list_supports'),
('160512', 'news', 'menu_news'),
('160512', 'products', 'advs_left'),
('160512', 'products', 'list_supports'),
('160512', 'products', 'menu_products'),
('160512', 'services', 'advs_left'),
('160512', 'services', 'list_supports'),
('160512', 'services', 'menu_services'),
('160512', 'video', 'advs_left'),
('160512', 'video', 'list_supports'),
('160512', 'video', 'menu_video');

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
('baovebaouy', 'info@baovebaouy.com', 'e10adc3949ba59abbe56e057f20f883e', '2012-05-25 07:09:45', '', '0987522003', '', 'user', 'vi', '', '2012-06-23 17:00:00', 0, '20122012', '', 1, '160512', 19, 'noi-that-ngoai-that');

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
('addcart', '', '', 'baovebaouy'),
('address1', 'Điện thoại: 061.660 8573 - Fax: 061.885 1437', '', 'baovebaouy'),
('address2', 'Số 9P1, Đường Nguyễn Thị Tồn, Phường Bửu Hòa, TP. Biên Hòa, Tỉnh Đồng Nai', '', 'baovebaouy'),
('cart', '', '', 'baovebaouy'),
('company_name', 'CÔNG TY CỔ PHẦN DỊCH VỤ BẢO VỆ BẢO UY', '', 'baovebaouy'),
('company_name_footer', 'CÔNG TY CỔ PHẦN DỊCH VỤ BẢO VỆ BẢO UY', '', 'baovebaouy'),
('company_phone', 'Hotline: 061.660 8573', '', 'baovebaouy'),
('copyright', 'Email: info@baovebaouy.com - Website: www.baovebaouy.com', '', 'baovebaouy'),
('news', 'Hình ảnh', '', 'baovebaouy'),
('no_record', 'Đang cập nhật ...', '', 'baovebaouy'),
('products', 'Phương án bảo vệ', '', 'baovebaouy');

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
