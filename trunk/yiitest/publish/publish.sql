-- phpMyAdmin SQL Dump
-- version 3.4.5
-- http://www.phpmyadmin.net
--
-- Host: localhost
-- Generation Time: Sep 20, 2012 at 08:56 PM
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
('max_image_height', 947, '', '040712'),
('max_image_width', 710, '', '040712'),
('news_cat_height', 100, '', '040712'),
('news_cat_width', 143, '', '040712'),
('news_height_thumb', 100, '', '040712'),
('news_num_paging_cat', 10, '', '040712'),
('news_num_paging_hot', 6, '', '040712'),
('news_num_paging_index', 10, '', '040712'),
('news_num_paging_new', 6, '', '040712'),
('news_width_thumb', 143, '', '040712'),
('products_cat_height', 160, '', '040712'),
('products_cat_width', 160, '', '040712'),
('products_height', 947, '', '040712'),
('products_height_thumb', 160, '', '040712'),
('products_num_paging_cat', 20, '', '040712'),
('products_num_paging_hot', 20, '', '040712'),
('products_num_paging_new', 20, '', '040712'),
('products_num_paging_other', 4, '', '040712'),
('products_width', 710, '', '040712'),
('products_width_thumb', 160, '', '040712'),
('services_height', 170, '', '040712'),
('services_width', 170, '', '040712'),
('video_height_thumb', 160, '', '040712'),
('video_num_paging_cat', 9, '', '040712'),
('video_num_paging_index', 9, '', '040712'),
('video_width_thumb', 160, '', '040712');

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
('about', 'vihoang'),
('advs', 'vihoang'),
('banner', 'vihoang'),
('contact', 'vihoang'),
('news', 'vihoang'),
('products', 'vihoang'),
('services', 'vihoang'),
('supports', 'vihoang');

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
) ENGINE=InnoDB  DEFAULT CHARSET=utf8 AUTO_INCREMENT=481 ;

--
-- Dumping data for table `dos_module_abouts`
--

INSERT INTO `dos_module_abouts` (`record_id`, `title`, `titleen`, `content`, `contenten`, `hit`, `created`, `record_order`, `hot`, `extra_field1`, `extra_field2`, `tag`, `tagen`, `description`, `descriptionen`, `activated`, `dos_usernames_username`) VALUES
(450, 'Lĩnh vực hoạt động', '', '<p><strong>Lĩnh vực hoạt động:</strong></p>\n<p>+ Xây dựng công trình công nghiệp, dân dụng. San lấp mặt bằng, thi công cầu đường.</p>\n<p>+ Sản xuất kinh doanh vật liệu xây dựng.</p>\n<p>+ Đầu tư hạ tầng cơ sở. Giáo dục mầm non. Tin học ngoại ngữ.</p>\n<p><strong>Sản phẩm chính:</strong></p>\n<p>Xây dựng dân dụng, công nghiệp, nhà xưởng, hạ tầng cơ sở, đường sá, cầu cống.</p>\n<p><strong>Nhu cầu hợp tác với :</strong></p>\n<p>- Đối tác đầu tư xây dựng trường tin học.</p>\n<p>- Sản xuất phần mềm chuyên ngành XD.</p>\n<p>- Các công ty nước ngoài.</p>\n<p>- Thiết bị vật tư xây dựng.</p>\n<p><strong>Đơn vị trực thuộc:</strong></p>\n<p><em><strong><span style="text-decoration:underline;">Chi nhánh 1</span> :</strong></em><br /><em><strong>Thị trấn Lộc Thắng, Bảo Lâm, Lâm Đồng.</strong></em></p>\n<p style="text-align:center;"><span style="font-size:14pt;color:#ff0000;"><strong>“ Uy tín - hiệu quả ”</strong></span></p>\n<p> </p>', '', 132, '2012-09-14 06:30:05', 1, 0, '', '', 'linh-vuc-hoat-dong', '', '', '', 1, 'vihoang'),
(479, 'Giới thiệu chung', '', '<p style="text-align:justify;"><span style="color:#ff0000;"><strong><span style="color:#000080;"><img style="float:left;margin-left:10px;margin-right:10px;" src="/public/userfiles/image/vihoang/image/qbs5k4oz.pfl.jpg" alt="" width="300" height="202" /> CÔNG TY TNHH XÂY DỰNG - THƯƠNG MẠI</span> VỊ HOÀNG</strong></span> là doanh nghiệp hoạt động mạnh mẽ trên hầu hết các lĩnh vực xây dựng: </p>\n<p style="text-align:justify;">- Sản xuất gạch bê tông nhẹ.</p>\n<p style="text-align:justify;">- Xây dựng nhà các loại.</p>\n<p style="text-align:justify;">- Xây dựng công trình cầu đường bộ</p>\n<p style="text-align:justify;">- Chuẩn bị mặt bằng - Trồng trọt - Chăn nuôi.</p>\n<p style="text-align:justify;">- Giáo dục mầm non - Nghề nghiệp.</p>\n<p style="text-align:justify;">- Buôn bán vật liệu, thiết bị trong xây dựng</p>\n<p style="text-align:justify;"><span style="color:#ff0000;"><strong>     VỊ HOÀNG</strong></span> có Chứng nhận sự phù hợp chất lượng công trình xây dựng. Thí nghiệm, kiểm nghiệm vật liệu xây dựng và nền móng công trình.</p>\n<p style="text-align:justify;">     Vì sự tồn tại, phát triển ổn định và bền vững, <strong><span style="color:#ff0000;">VỊ HOÀNG</span></strong> luôn luôn đảm bảo tốt chất lượng dịch vụ cung cấp. Xem <em><strong>Chất Lượng là Kim Chỉ Nam</strong></em> cho hoạt động và là sự sống còn của <strong><span style="color:#ff0000;">VỊ HOÀNG</span></strong>. <strong><span style="color:#ff0000;">VỊ HOÀNG</span></strong> được thành lập với mục đích góp phần cho sự phát triển bền vững và đẩy mạnh hơn nữa vị thế của lĩnh vực Xây Dựng Cơ Bản Việt Nam.</p>\n<p style="text-align:center;"><img src="/public/userfiles/image/vihoang/image/Hung-dien-newtown-project(1).png" alt="" width="306" height="230" />        <img src="/public/userfiles/image/vihoang/image/0120-PicBox1.jpg" alt="" width="300" height="230" /></p>\n<p style="text-align:justify;">     Với đội ngũ kỹ sư và cán bộ kỹ thuật có bề dày kinh nghiệm trong các lĩnh vực: Tư vấn, thiết kế, thi công , kiểm định chất lượng các dự án trọng điểm trong lĩnh vực xây dựng, cùng với năng lực thiết bị hiện đai với độ chính xác cao, cùng với hệ thống quản lý chất lượng theo tiêu chuẩn ISO 9001:2008. <span style="color:#ff0000;"><strong><span style="color:#000080;">CÔNG TY TNHH XÂY DỰNG - THƯƠNG MẠI</span> VỊ HOÀNG</strong></span> đang từng bước khẳng định vị thế của mình tại Việt Nam và trên cả đấu trường Quốc Tế.</p>\n<p style="text-align:justify;">     Tất cả vì mục tiêu đưa <span style="color:#ff0000;"><strong>VỊ HOÀNG</strong></span> trở thành một trong những doanh nghiệp tư vấn kiểm định xây dựng hàng đầu tại Việt Nam. Góp phần thúc đẩy phát triển lĩnh vực Xây Dựng Cơ Bản tại Việt Nam.</p>\n<p style="text-align:justify;">     Với chính sách chất lượng<em><strong> “UY TÍN &amp; CHẤT LƯỢNG”</strong></em> đã đưa <strong><span style="color:#ff0000;">VỊ HOÀNG</span></strong> trở thành một trong những doanh nghiệp hàng đầu trong ngành xây dựng Việt Nam.</p>', '', 101, '2012-09-19 07:43:46', 2, 1, '', '', 'gioi-thieu-chung', '', '', '', 1, 'vihoang'),
(480, 'Bằng cấp - Chứng nhận', '', '<p style="text-align:center;"><img src="/public/userfiles/image/vihoang/image/hinh-6.jpg" alt="" width="200" height="309" /></p>\n<p style="text-align:center;"><em><strong>Hình 1: Cúp vàng Hội nhập của công ty TNHH Vị Hoàng</strong></em></p>\n<p><em><strong> </strong></em></p>\n<p><em><strong> </strong></em></p>\n<p style="text-align:center;"><strong><em><img src="/public/userfiles/image/vihoang/image/hinh-5.jpg" alt="" width="500" height="326" /><br /></em></strong></p>\n<p style="text-align:center;"><em><strong>Hình 2: Chứng nhận Biểu tượng vàng vì sự nghiệp Doanh nhân Việt Nam 2010 của Giám Đốc Cao Xuân Tụ</strong></em></p>', '', 10, '2012-09-19 13:00:22', 3, 0, '', '', 'bang-cap-chung-nhan', '', '', '', 1, 'vihoang');

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
) ENGINE=InnoDB  DEFAULT CHARSET=utf8 AUTO_INCREMENT=795 ;

--
-- Dumping data for table `dos_module_advs`
--

INSERT INTO `dos_module_advs` (`record_id`, `title`, `titleen`, `pic_thumb`, `url`, `create_date`, `start_date`, `end_date`, `hits`, `record_order`, `position`, `type`, `enable`, `dos_usernames_username`) VALUES
(782, 'Quảng cáo', '', 'quang-cao.png', 'http://vihoang.com', '2012-09-19 12:26:28', '2012-09-18 16:00:00', '2012-12-30 16:00:00', 0, 1, 'left', '_bank', 0, 'vihoang'),
(783, 'Quảng cáo 1', '', 'quang-cao-1.png', 'http://vihoang.com', '2012-09-19 12:27:06', '2012-09-18 16:00:00', '2012-10-30 16:00:00', 0, 2, 'left', '_bank', 0, 'vihoang'),
(784, 'Quảng cáo 2', '', 'quang-cao-2.png', 'http://vihoang.com', '2012-09-19 12:29:01', '2012-09-18 16:00:00', '2012-10-30 16:00:00', 0, 3, 'left', '_bank', 0, 'vihoang'),
(785, 'Quảng cáo 3', '', 'quang-cao-3.png', 'http://vihoang.com', '2012-09-19 12:29:32', '2012-09-18 16:00:00', '2012-10-30 16:00:00', 0, 4, 'left', '_bank', 0, 'vihoang'),
(786, 'Quảng cáo 4', '', 'quang-cao-4.png', 'http://vihoang.com', '2012-09-19 12:29:56', '2012-09-18 16:00:00', '2012-10-30 16:00:00', 0, 5, 'left', '_bank', 0, 'vihoang'),
(787, 'Quảng cáo 5', '', 'quang-cao-5.png', 'http://vihoang.com', '2012-09-19 12:30:31', '2012-09-18 16:00:00', '2012-10-30 16:00:00', 0, 6, 'left', '_bank', 0, 'vihoang'),
(788, 'Quảng cáo 6', '', 'quang-cao-6.png', 'http://vihoang.com', '2012-09-19 12:30:57', '2012-09-18 16:00:00', '2012-10-30 16:00:00', 0, 7, 'left', '_bank', 0, 'vihoang'),
(789, 'Quảng cáo 7', '', 'quang-cao-7.jpg', 'http://vihoang.com', '2012-09-19 13:38:51', '2012-09-18 16:00:00', '2012-10-30 16:00:00', 0, 12, 'left', '_bank', 1, 'vihoang'),
(790, 'Quảng cáo 8', '', 'quang-cao-8.jpg', 'http://vihoang.com', '2012-09-19 13:39:36', '2012-09-18 16:00:00', '2012-10-30 16:00:00', 0, 13, 'left', '_bank', 1, 'vihoang'),
(791, 'Quảng cáo 9', '', 'quang-cao-9.jpg', 'http://vihoang.com', '2012-09-19 13:40:25', '2012-09-18 16:00:00', '2012-10-30 16:00:00', 0, 11, 'left', '_bank', 1, 'vihoang'),
(792, 'Quảng cáo 10', '', 'quang-cao-10.jpg', 'http://vihoang.com', '2012-09-19 13:41:17', '2012-09-18 16:00:00', '2012-10-30 16:00:00', 0, 10, 'left', '_bank', 1, 'vihoang'),
(793, 'Quảng cáo 11', '', 'quang-cao-11.jpg', 'http://vihoang.com', '2012-09-19 13:41:54', '2012-09-18 16:00:00', '2012-10-30 16:00:00', 0, 9, 'left', '_bank', 1, 'vihoang'),
(794, 'Quảng cáo 12', '', 'quang-cao-12.jpg', 'http://vihoang.com', '2012-09-19 13:42:35', '2012-09-18 16:00:00', '2012-10-30 16:00:00', 0, 8, 'left', '_bank', 1, 'vihoang');

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
) ENGINE=InnoDB  DEFAULT CHARSET=utf8 AUTO_INCREMENT=3487 ;

--
-- Dumping data for table `dos_module_banners`
--

INSERT INTO `dos_module_banners` (`banner_id`, `banner_date`, `banner_name`, `banner_url`, `banner_link`, `banner_order`, `banner_type`, `position`, `enable`, `dos_usernames_username`) VALUES
(3228, '2012-09-14 07:36:25', 'Banner 1', 'banner-1.jpg', '', 1, 'banners', 'about', 1, 'vihoang'),
(3229, '2012-09-14 07:36:51', 'Banner 2', 'banner-2.jpg', '', 2, 'banners', 'news', 1, 'vihoang'),
(3230, '2012-09-14 07:37:19', 'Banner 3', 'banner-3.jpg', '', 3, 'banners', 'products', 1, 'vihoang'),
(3231, '2012-09-14 07:37:38', 'Banner 4', 'banner-4.jpg', '', 4, 'banners', 'about', 1, 'vihoang'),
(3232, '2012-09-14 07:37:59', 'Banner 5', 'banner-5.jpg', '', 5, 'banners', 'services', 1, 'vihoang'),
(3233, '2012-09-14 07:38:24', 'Banner 6', 'banner-6.jpg', '', 6, 'banners', 'services', 1, 'vihoang'),
(3234, '2012-09-14 07:39:01', 'Banner 7', 'banner-7.jpg', '', 7, 'banners', 'default', 1, 'vihoang'),
(3235, '2012-09-14 07:39:14', 'Banner 8', 'banner-8.jpg', '', 8, 'banners', 'default', 1, 'vihoang'),
(3236, '2012-09-14 07:39:32', 'Banner 9', 'banner-9.jpg', '', 9, 'banners', 'default', 1, 'vihoang'),
(3237, '2012-09-14 07:39:48', 'Banner 10', 'banner-10.jpg', '', 10, 'banners', 'products', 1, 'vihoang'),
(3238, '2012-09-14 07:40:14', 'Banner 11', 'banner-11.jpg', '', 11, 'banners', 'contact', 1, 'vihoang'),
(3239, '2012-09-14 07:40:29', 'Banner 12', 'banner-12.jpg', '', 12, 'banners', 'news', 1, 'vihoang'),
(3240, '2012-09-14 07:41:07', 'Banner 13', 'banner-13.jpg', '', 13, 'banners', 'contact', 1, 'vihoang'),
(3241, '2012-09-14 07:41:36', 'Banner 14', 'banner-14.jpg', '', 14, 'banners', 'products', 1, 'vihoang'),
(3242, '2012-09-14 07:42:04', 'Banner 15', 'banner-15.jpg', '', 15, 'banners', 'about', 1, 'vihoang'),
(3243, '2012-09-14 07:42:18', 'Banner 16', 'banner-16.jpg', '', 16, 'banners', 'services', 1, 'vihoang'),
(3480, '2012-09-19 06:13:20', 'home logo', 'home-logo.png', '', 17, 'logo', 'default', 1, 'vihoang'),
(3481, '2012-09-19 07:09:55', 'Banner 17', 'banner-17.jpg', '', 18, 'banners', 'default', 1, 'vihoang'),
(3482, '2012-09-19 07:10:13', 'Banner 18', 'banner-18.jpg', '', 19, 'banners', 'about', 1, 'vihoang'),
(3483, '2012-09-19 07:10:27', 'Banner 19', 'banner-19.jpg', '', 20, 'banners', 'news', 1, 'vihoang'),
(3484, '2012-09-19 07:10:44', 'Banner 20', 'banner-20.jpg', '', 21, 'banners', 'products', 1, 'vihoang'),
(3485, '2012-09-19 07:11:05', 'Banner 21', 'banner-21.jpg', '', 22, 'banners', 'contact', 1, 'vihoang'),
(3486, '2012-09-19 07:11:25', 'Banner 22', 'banner-22.jpg', '', 23, 'banners', 'about', 1, 'vihoang');

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
) ENGINE=InnoDB  DEFAULT CHARSET=utf8 AUTO_INCREMENT=68 ;

--
-- Dumping data for table `dos_module_contacts`
--

INSERT INTO `dos_module_contacts` (`record_id`, `title`, `titleen`, `content`, `contenten`, `create_date`, `record_order`, `hit`, `hot`, `tag`, `tagen`, `description`, `descriptionen`, `enable`, `dos_usernames_username`) VALUES
(67, 'Mọi chi tiết xin vui lòng liên hệ:', '', '<p><strong><span style="color:#000080;">CÔNG TY TNHH XÂY DỰNG - THƯƠNG MẠI <span style="color:#ff0000;">VỊ</span></span><span style="color:#ff0000;"> HOÀNG</span><br /></strong></p>\n<p>Địa chỉ: 2/G, Tổ 17, KP1, QL 51, P. Long Bình Tân, Biên Hòa, Đồng Nai.</p>\n<p>Điện thoại: 061. 3836051</p>\n<p>Người đại diện: Cao Xuân Tụ</p>', '', '2012-09-14 06:31:34', 1, 0, 0, 'moi-chi-tiet-xin-vui-long-lien-he', '', '', '', '1', 'vihoang');

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
('Trang chủ', '', 'default', '', 1, '', '', '', '', 'vihoang'),
('Giới thiệu', '', 'about', '', 2, '', '', '', '', 'vihoang'),
('Sản phẩm', '', 'products', '', 3, '', '', '', '', 'vihoang'),
('Dịch vụ', '', 'services', '', 4, '', '', '', '', 'vihoang'),
('Công trình thực hiện', '', 'news', '', 5, '', '', '', '', 'vihoang'),
('Liên hệ', '', 'contact', '', 6, '', '', '', '', 'vihoang');

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
) ENGINE=InnoDB  DEFAULT CHARSET=utf8 AUTO_INCREMENT=537 ;

--
-- Dumping data for table `dos_module_news`
--

INSERT INTO `dos_module_news` (`record_id`, `title`, `titleen`, `postdate`, `pic_thumb`, `preview`, `previewen`, `content`, `contenten`, `tag`, `tagen`, `description`, `descriptionen`, `hits`, `record_order`, `hot`, `extra_field1`, `extra_field2`, `enable`, `dos_module_item_cat_cat_id`) VALUES
(536, 'Công ty Vị Hoàng', '', '2012-09-19 12:45:20', 'cong-ty-vi-hoang.jpg', '<p>Giới thiệu các công trình Công ty TNHH Vị Hoàng đã thi công</p>', '', '<p style="text-align:center;"><img src="/public/userfiles/image/vihoang/image/hinh-1.jpg" alt="" width="550" height="359" /></p>\n<p style="text-align:center;"><em>Hình 1</em></p>\n<p> </p>\n<p style="text-align:center;"><img src="/public/userfiles/image/vihoang/image/hinh-2.jpg" alt="" width="550" height="357" /></p>\n<p style="text-align:center;"><em>Hình 2</em></p>\n<p> </p>\n<p style="text-align:center;"><img src="/public/userfiles/image/vihoang/image/hinh-7.jpg" alt="" width="550" height="351" /></p>\n<p style="text-align:center;"><em>Hình 3</em></p>\n<p style="text-align:center;"><em> </em></p>\n<p style="text-align:center;"><img src="/public/userfiles/image/vihoang/image/hinh-8.jpg" alt="" width="550" height="360" /></p>\n<p style="text-align:center;"><em>Hình 4</em></p>\n<p style="text-align:center;"> </p>\n<p style="text-align:center;"><img src="/public/userfiles/image/vihoang/image/hinh-9.jpg" alt="" width="550" height="357" /></p>\n<p style="text-align:center;"><em>Hình 5</em></p>\n<p style="text-align:center;"> </p>\n<p style="text-align:center;"><img src="/public/userfiles/image/vihoang/image/hinh-4.jpg" alt="" width="550" height="360" /></p>\n<p style="text-align:center;"><em>Hình 6</em></p>', '', 'cong-ty-vi-hoang', '', '', '', 0, 1, 0, '', '', 1, 414);

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
) ENGINE=InnoDB  DEFAULT CHARSET=utf8 AUTO_INCREMENT=415 ;

--
-- Dumping data for table `dos_module_news_cat`
--

INSERT INTO `dos_module_news_cat` (`cat_id`, `cat_parent_id`, `cat_title`, `cat_titleen`, `preview`, `previewen`, `tag`, `tagen`, `description`, `descriptionen`, `pic_full`, `cat_order`, `cat_extra1`, `cat_extra2`, `cat_enable`, `dos_usernames_username`) VALUES
(414, 0, 'Công trình đã thực hiện', '', '', '', 'cong-trinh-da-thuc-hien', '', '', '', '', 1, '', '', 1, 'vihoang');

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
('day_time', 2456191),
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
('''127.0.0.1''', 1348166742);

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
) ENGINE=InnoDB  DEFAULT CHARSET=utf8 AUTO_INCREMENT=11271 ;

--
-- Dumping data for table `dos_module_products`
--

INSERT INTO `dos_module_products` (`record_id`, `title`, `titleen`, `postdate`, `pic_thumb`, `pic_full`, `pic_desc`, `preview`, `previewen`, `content`, `contenten`, `tag`, `tagen`, `description`, `descriptionen`, `hits`, `record_order`, `unit`, `hot`, `specials`, `extra_field1`, `extra_field2`, `extra_field3`, `extra_field4`, `enable`, `dos_module_item_cat_cat_id`) VALUES
(11263, 'Gạch bê tông tự chèn', '', '2012-09-19 11:53:02', 'gach-be-tong-tu-chen-thumb.jpg', 'gach-be-tong-tu-chen.jpg', '', '<p>Chúng tôi chuyên cung cấp các sản phẩm gạch bê tông sau:</p>\n<p>- Gạch bê tông, gạch bê tông nhẹ, gạch bê tông siêu nhẹ</p>\n<p>- Gạch bê tông chưng khí áp</p>\n<p>- Gạch bê tông bột</p>\n<p>- Gạch bê tông đặc</p>\n<p>- Gạch bê tông rỗng 8 lỗ 12 lỗ</p>\n<p>- Gạch bê tông lát vỉa hè, lề đường, sân vườn, công viên...</p>\n<p>- Gạch bê tông tự chèn</p>\n<p>- Gạch block bê tông, gạch xây bê tông...</p>', '', '<p style="text-align:justify;">Gạch bê tông tự chèn của chúng tôi là sản phẩm gạch lát nền có cường độ chịu nén cao, khả năng chống mài mòn, chống trượt và thoát nước cục bộ. Đặc biệt, gạch bê tông tự chèn của chúng tôi không bị ảnh hưởng bởi các tác động môi trường như ẩm, nhiễm mặn và hóa chất công nghiệp.</p>\n<p>Gạch bê tông của chúng tôi được sản xuất theo công nghệ tự động hóa, sử dụng ít nhân công với hệ thống quản lý chất lượng theo tiêu chuẩn quốc tế. Sản phẩm gạch bê tông của chúng tôi luôn cung cấp cho khách hàng những sản phẩm tốt và ổn định.</p>\n<p>Với những tính năng ưu việt và chính sách hợp lý, sản phẩm gạch bê tông của chúng tôi trong thời gian qua đã nhận được sự ủng hộ của đông đảo khách hàng, các nhà đầu tư xây dựng.</p>', '', 'gach-be-tong-tu-chen', '', '', '', 0, 1, '', 0, 0, '', '', '', '', 1, 1942),
(11264, 'Gạch bê tông đặc', '', '2012-09-19 11:56:08', 'gach-be-tong-dac-thumb.jpg', 'gach-be-tong-dac.jpg', '', '<p><strong><span style="color:#3366ff;">1.Các thông số</span></strong>:</p>\n<p>- Kích thước : 220 x 105 x 60 mm.<br />- Trọng lượng viên: ≈ 2.6 kg/viên,<br />- Trọng lượng lên tường đơn ≈ 213 kg/m2 bao gồm cả vũa trát 2 mặt.(gạch đặc đất nung 206 kg/m2 tường đơn)</p>\n<p><span style="color:#3366ff;"><strong>2.Định mức xây dựng:</strong></span></p>\n<p>- Tường đơn: 59 viên/m2.<br />- Khối xây đặc: 505 viên/m3 (giả định mạch vữa xây dày 13 mm)</p>\n<p><span style="color:#3366ff;"><strong>3.Chất lượn</strong></span>g:</p>\n<p>- Theo tiêu chuẩn TCVN 6355 - 2 : 1998 và TCVN 6477:1999<br />- Cường độ chịu nén: 215 daN/cm2.<br />- Cường độ chịu uốn: 51 daN/cm2.<br />- Độ hút nước: 6%</p>', '', '<p><strong><span style="color:#3366ff;"><span style="color:#000000;">-</span></span></strong><span style="color:#3366ff;"><span style="color:#000000;"> Gạch bê tông đặc của chúng tôi là sản phẩm có kích thước: 220 x 105 x 60 mm</span></span></p>\n<p>- Sử dụng rất tốt cho xây các công trình cần độ bền vững cao, cần độ chịu lực nén cao, cần khả năng chịu nước như xây móng, xây bể ngầm, xây hệ thống cấp thoát nước, xây các công trình kiên cố hiện đại, nhà cao tầng.</p>\n<p><span style="color:#3366ff;"><strong><span style="color:#000000;">Kinh tế - xã hội:</span></strong></span></p>\n<p>Xây tường "10" bằng gạch bê tông đặc của Đại Kim thay thế gạch đất nung sẽ giảm 21 % vữa xây và vữa trát, giảm 21% tổng số tiền mua gạch, cát và xi măng cho công trình.</p>\n<p><span style="color:#3366ff;"><strong><span style="color:#000000;">Ứng dụng:</span></strong></span></p>\n<p>Gạch bê tông đặc của chúng tôi rất tốt cho xây các công trình cần độ bền vững cao, cần độ chịu lực nén cao, cần khả năng chịu nước như xây móng, xây bể ngầm, xây hệ thống cấp thoát nước, xây các công trình kiên cố hiện đại, nhà cao tầng.</p>', '', 'gach-be-tong-dac', '', '', '', 0, 5, '', 0, 0, '', '', '', '', 1, 1943),
(11265, 'Gạch bê tông rỗng 12 lỗ', '', '2012-09-19 12:02:35', 'gach-be-tong-rong-12-lo-thumb.jpg', 'gach-be-tong-rong-12-lo.jpg', '', '<p><strong><span style="color:#3366ff;">1.Các thông số</span></strong><span style="color:#3366ff;">:</span></p>\n<p>- Kích thước: 240 x 190 x 90 mm<br />- Trọng lượng viên: ≈ 7.0 kg/viên.<br />- Trọng lượng lên tường ≈ 342 kg/m2 tường đơn, bao gồm cả vữa trát hai mặt.<br />- Lỗ rỗng : kích thước 30 x 40 x 80 mm, số lượng 12 lỗ đứng cách đều.</p>\n<p><span style="color:#3366ff;"><strong>2.Định mức xây dựng:</strong></span></p>\n<p>- Tường đơn: 40 viên/m2 tường đơn (giả định mạch xây dày 10 mm).</p>\n<p><span style="color:#3366ff;"><strong>3.Chất lượng</strong></span>:</p>\n<p>- Theo tiêu chuẩn TCVN 6477: 1999 ; TCVN 6355:1998<br />- Cường độ nén: 102,4 daN/cm2.<br />- Độ hút nước trung bình: 11,6%<strong><br /></strong></p>', '', '<p>Gạch bê tông rỗng 12 lỗ có kích thước: 240 x 190 x 90 mm. Gạch 12 lỗ của chúng tôi rất thích hợp cho xây các công trình nhà cao tầng kiên cố hiện đại, xây nhà xưởng, tường rào, các công trình dưới nước và trên cạn.</p>\n<p><strong>Kinh tế - xã hội:</strong></p>\n<p>Xây tường "20" bằng gạch 12 lỗ thay gạch đặc thủ công sẽ giảm được 67% vữa xây và vữa trát, tiết kiệm sấp sỉ 43% tổng số tiền mua gạch, cát và xi măng, giảm công xây công trát tăng tiến độ thi công , tường vững trắc hơn, đẹp hơn.<br />Nếu xây tường rào thì không cần trát sẽ giảm được 78% vữa xây trát, giảm 52% tổng số tiền mua gạch cát và xi măng cho công trình.<br />Gạch được thiết kế 3 hàng lỗ rỗng đều nhẹ tường, cách âm, cách nhiệt rất tốt, tiết kiệm năng lượng điện cho phòng lắp máy điều hòa.</p>\n<p><strong>Ứng dụng:</strong></p>\n<p>Gạch 12 lỗ của chúng tôi rất thích hợp cho xây các công trình nhà cao tầng kiên cố hiện đại, xây nhà xưởng, tường rào, các công trình dưới nước và trên cạn. Đặc biệt xây các hạng mục như tường rào không cần trát, không xây mà rán vữa xi tinh tường rất đẹp.</p>', '', 'gach-be-tong-rong-12-lo', '', '', '', 0, 6, '', 0, 0, '', '', '', '', 1, 1942),
(11266, 'Gạch bê tông cốt liệu', '', '2012-09-19 12:08:19', 'gach-be-tong-cot-lieu-thumb.jpg', 'gach-be-tong-cot-lieu.jpg', '', '<p>Gạch bê tông cốt liệu với kích thước:</p>\n<p>1. Dài – rộng – cao : 220x115x60mm</p>\n<p><strong><em>Đặc điểm: </em></strong>Gạch đặc, không lỗ, là loại gạch tiêu chuẩn trong xây dựng.</p>\n<p>2. Dài – Rộng – Cao: 240x115x115mm</p>\n<p><strong><em>Đặc điểm</em></strong>: Gạch nhiều lỗ, đáy bịt, căn cứ vào độ dày phổ thông của tường.</p>\n<p>3. Dài – Rộng – Cao: 390x190x190mm</p>\n<p><strong><em>Đặc điểm</em></strong>: Gạch 4 lỗ, bịt đáy.</p>', '', '<p>Công ty chúng tôi chuyên cung cấp gạch bê tông cốt liệu với cường độ nén cao tới các công trình xây dựng với giá cạnh tranh. Gạch bê tông cốt liệu là sản phẩm gạch làm từ nguyên liệu: xi măng, cát, đá dăm sau khi pha trộn theo tỷ lệ nhất định rồi được ép bằng máy với cường độ cao do vậy mà sản phẩm có độ cứng và độ bền tốt, thích hợp cho việc xây dựng tường chịu lực.</p>\n<p>Gach bê tông cốt liệu sản xuất ra dùng để thay thế gạch đất sét nung truyền thống đang làm lãng phí tài nguyên đất và hủy hoại môi trường. Công nghệ sản xuất sạch không gây ra khí thải độc hại ảnh hưởng đến môi trường.</p>', '', 'gach-be-tong-cot-lieu', '', '', '', 0, 2, '', 0, 0, '', '', '', '', 1, 1942),
(11267, 'Gạch không nung siêu nhẹ', '', '2012-09-19 12:11:32', 'gach-khong-nung-sieu-nhe-thumb.jpg', 'gach-khong-nung-sieu-nhe.jpg', '', '<p>- Cường độ chịu lực gạch đặc ≥ 90 Kg/cm2,</p>\n<p>- Cường độ chịu lực gạch lỗ ≥ 60 Kg/cm2,</p>\n<p>- Cường độ chịu lực gạch tự chèn ≥ 200 Kg/cm2.</p>\n<p>- Độ hút nước ≤ 8%.</p>\n<p>- Sai lệch kích thước ≤ 3mm.</p>\n<p>- Sai lệch khối lượng ≤ 5%.</p>', '', '<p style="text-align:justify;">Với những tính năng ưu việt và chính sách hợp lý, sản phẩm gạch không nung xây của chúng tôi trong thời gian qua đã nhận được sự ủng hộ của đông đảo khách hàng, các nhà đầu tư xây dựng. Sản phẩm gạch không nung xây của chúng tôi đã được sử dụng trong các công trình lớn trên cả nước.</p>\n<p style="text-align:justify;"> - Gạch không nung của chúng tôi được sản xuất theo dây chuyền công nghệ hiện đại, kết cấu bê tông rỗng, cường độ chịu nén cao, kích thước chuẩn xác, khả năng cách âm, cách nhiệt, chống thấm cao, giúp tiết kiệm thời gian và chi phí trong thi công.</p>\n<p> - Gạch không nung của chúng tôiđa dạng về kích thước và chủng loại, sẵn sàng đáp ứng các nhu cầu của khách hàng. Khách hàng có thể chọn lựa trên 10 dòng sản phẩm mà của chúng tôiđã sản xuất hoặc có thể đặt hàng với kích thước phù hợp với phương án thiết kế của riêng mình.</p>\n<p> - Nguyên vật liệu để sản xuất gạch không nung hết sức phong phú và có sẵn trong nước như mạt đá, cát vàng, xi măng, xỉ nhiệt điện,… Ngoài ra còn có thể sử dụng các loại vật liệu không truyền thống như: chấu, mùn cưa, chất thải công nghiệp,...</p>\n<p> - Gạch không nung của chúng tôicó những sản phẩm với kích thước viên lớn hơn nhiều so với gạch nung (gấp từ 2 đến 11 lần thể tích viên gạch nung), cho phép giảm được chi phí nhân công, đạt được tiến độ nhanh hơn cho các công trình xây dựng. Ngoài ra, gạch không nung cũng giúp giảm đáng kể lượng vữa xây.</p>\n<p> - Gạch không nung của chúng tôi có thể dùng các chất độn nhẹ (ví dụ sỏi keramzit, đá basalt nhẹ, than xỉ…) để tạo ra dòng sản phẩm nhẹ nhưng vẫn đảm bảo chất lượng.</p>\n<p> </p>\n<p> </p>\n<p> </p>\n<p> </p>\n<p> </p>', '', 'gach-khong-nung-sieu-nhe', '', '', '', 0, 3, '', 0, 0, '', '', '', '', 1, 1943),
(11268, 'Gạch bê tông nhẹ', '', '2012-09-19 12:13:29', 'gach-be-tong-nhe-thumb.jpg', 'gach-be-tong-nhe.jpg', '', '<p>Siêu nhẹ: nhẹ hơn cả nước (với loại tỷ trọng nhỏ hơ 1.000kg/m3)</p>\n<p>Đa dạng chủng loại: Với nhiều tỷ trọng khác nhau theo yêu cầu của khách hàng từ 300÷1.200 kg/m3, tương ứng với cường độ nén từ 2÷10MPa.</p>\n<p>Đa dạng kích thước: cung cấp theo yêu cầu của khách hàng.</p>\n<p>Độ cách nhiệt cao: 0,028 Kcal/m.h.</p>\n<p>Khả năng chịu nhiệt cao: 1.2000ºC/4h gấp 2 lần so với gạch thông thường.</p>\n<p>Độ cách âm cao: RW đạt 42 db gấp 7 lần bê tông thường</p>\n<p>Giảm giá thành công trình: do giảm trọng lượng tường.</p>\n<p>Thân thiện môi trường: sản phẩm được sản xuất bời vật liệu thân thiện môi trường.</p>', '', '<p style="text-align:justify;">Gạch bê tông nhẹ có hai loại cơ bản là gạch bê tông nhẹ bọt và gạch bê tông nhẹ khí chưng áp. Sản suất bằng công nghệ tạo bọt, khí trong kết cấu nên tỷ trọng viên gạch giảm đi nhiều và nó trở thành đặc điểm ưu việt nhất của loại gạch này.</p>\n<p style="text-align:justify;">Thành phành cơ bản: Xi măng, tro bay nhiệt điện, cát mịn, phụ gia tạo bọt hoặc khí, vôi,.... Sản phẩm đã được kiểm định chất lượng vượt TCXDVN: 2004 về cường độ chịu nén đối với tỷ trọng D800. Gạch bê-tông khí chưng áp: Tên tiếng Anh là Autoclaved Aerated Concrete – gọi tắt là AAC được rất nhiều nước trên thế giới ứng dụng rộng rãi với rất nhiều ưu điểm như thân thiện với môi trường, siêu nhẹ, bền, tiết kiệm năng lượng hóa thạch do không phải nung đốt truyền thống, bảo ôn, chống cháy, cách âm, cách nhiệt, chống thấm rất tốt so với vật liệu đất sét nung. Nó còn được gọi là gạch bê-tông siêu nhẹ vì tỷ trọng chỉ bằng 1/2 hoặc thậm chí là chỉ bằng 1/3 so với gạch đất nung thông thường.</p>\n<p>Công trình xây dựng sẽ giảm tải, giảm chi phí xử lý nền móng và hệ thống kết cấu, góp phần giảm mức đầu tư xây dựng công trình từ 7- 10%, đẩy nhanh tiến độ thi công và hoàn thiện phần bao che của công trình lên 2 - 5 lần. Ngoài ra, khả năng cách âm và cách nhiệt của bê tông nhẹ rất cao, làm cho nhà ấm về mùa đông, mát về mùa hè, tiết kiệm điện năng sưởi hoặc điều hòa nhiệt độ... Kích thước thành phẩm lớn và chính xác (100mm x 200mm x 600mm) giúp rút ngắn thời gian thi công và kể cả thời gian hoàn thiện. Với thành phần cấu tạo là vật liệu trơ và các chất vô cơ, gạch bê-tông siêu nhẹ này hoàn toàn không độc hại, có độ bền rất cao và không bắt lửa.</p>\n<p>Ngoài ra, với cấu trúc thông thoáng, nó còn có thể tự khuếch tán hơi nước, giải phóng độ ẩm và loại trừ các vấn đề liên quan đến nẩm mốc – đặc biệt là trong điều kiện thời tiết nắng nóng của khí hậu vùng nhiệt đới, vùng biển và vùng có độ ẩm cao.</p>', '', 'gach-be-tong-nhe', '', '', '', 0, 4, '', 0, 0, '', '', '', '', 1, 1942),
(11269, 'Gạch block bê tông', '', '2012-09-19 12:17:33', 'gach-block-be-tong-thumb.jpg', 'gach-block-be-tong.jpg', '', '<p>- Đã được Nhiệt đới hóa: xây trát bình thường như gạch đất nung</p>\n<p>- Cách nhiệt: Hấp thụ nhiệt và truyền dẫn nhiệt ít hơn gạch đất nung gấp 2 lần</p>\n<p>- Cách âm: Cách âm hơn hẳn gạch đất nung đến 2 lần (trên 40db), phù hợp làm tường cách âm cho phòng thu âm, karaoke, nhà yến.</p>\n<p>- Chịu nhiệt: Chịu nhiệt 1200 độ C/ 4 giờ (gạch đất nung chỉ chịu nhiệt 2 giờ)</p>\n<p>- Chống thấm: Không hút nước</p>\n<p>- Nhiều loại tỉ trọng: 600 – 1200kg/m3</p>\n<p>- Cường độ nén: Cao hơn gạch đất nung có cùng tỉ trọng</p>\n<p>- Kích thước viên gạch lớn (100x200x400) nên thời gian thi công nhanh, rút lại còn ½ so với công trình xây dựng bằng gạch thường.</p>\n<p>- Tiết kiệm vữa hồ khi xây (ít mạch hồ), Độ nhám cao nên tăng độ bám dính của vữa hồ.</p>', '', '<p>Chúng tôi chuyên cung cấp gạch block bê tông nhẹ cho các công trình xây dựng lớn, vừa và nhỏ. Với giá cả cạnh tranh, chúng tôi sẵn sàng phục vụ quý khách hàng với chất lượng sản phẩm và chất lượng dịch vụ tốt nhất.</p>', '', 'gach-block-be-tong', '', '', '', 0, 7, '', 0, 0, '', '', '', '', 1, 1944),
(11270, 'Gạch bê tông rỗng 8 lỗ', '', '2012-09-19 12:20:42', 'gach-be-tong-rong-8-lo-thumb.jpg', 'gach-be-tong-rong-8-lo.jpg', '', '<p><span style="color:#3366ff;"><strong>1.Các thông số:</strong></span></p>\n<p>Kích thước: 240 x 115 x 90 mm<br />Trọng lượng viên: ≈ 3.5 kg/viên.<br />Trọng lượng lên tường 188 kg/m2 tường đơn, bao gồm cả vữa trát hai mặt.<br />Lỗ rỗng: kích thước 30 x 40 x 80 mm, số lượng 8 lỗ đứng cách đều.</p>\n<p><span style="color:#3366ff;"><strong>2.Định mức xây dựng:</strong></span></p>\n<p>Tường đơn: 40 viên/m2 tường đơn (giả định mạch xây dày 10 mm).</p>\n<p><span style="color:#3366ff;"><strong>3.Chất lượng: </strong></span></p>\n<p>Theo tiêu chuẩn TCVN 6477: 1999 ; TCVN 6355:1998<br />Cường độ nén: 123 daN/cm2.<br />Độ hút nước trung bình: 9,7%</p>', '', '<p>Gạch bê tông rỗng 8 lỗ có kích thước : 240 x 115 x 90 mm, rất thích hợp cho xây các công trình nhà cao tầng kiên cố hiện đại, xây tường ngăn phòng, nhà xưởng, tường rào, các công trình dưới nước và trên cạn. Đặc biệt xây các hạng mục như tường rào không cần trát, không xây mà rán vữa xi tinh tường rất đẹp</p>\n<p><strong>Kinh tế - xã hội:</strong></p>\n<p>Xây tường "10" bằng gạch 8 lỗ thay gạch đặc thủ công sẽ giảm được 28% vữa xây và vữa trát, tiết kiệm sấp sỉ 25% tổng số tiền mua gạch, cát và xi măng, giảm công xây công trát tăng tiến độ thi công mà tường lại dày hơn (11,5 cm chưa trát), vững hơn, đẹp hơn.</p>\n<p>Nếu xây tường rào thì không cần trát sẽ giảm được 38% tổng số tiền mua gạch, cát và xi măng cho công trình.</p>\n<p>Gạch được thiết kế 2 hàng lỗ rỗng đều nhẹ tường, cách âm, cách nhiệt rất tốt, tiết kiệm năng lượng điện cho phòng chạy máy điều hòa.</p>\n<p><strong>Ứng dụng:</strong></p>\n<p>Gạch 8 lỗ rất thích hợp cho xây các công trình nhà cao tầng kiên cố hiện đại, xây tường ngăn phòng, nhà xưởng, tường rào, các công trình dưới nước và trên cạn. Đặc biệt xây các hạng mục như tường rào không cần trát, không xây mà rán vữa xi tinh tường rất đẹp.</p>\n<p>Quý khách sử dụng gạch bê tông rỗng là đã góp phần cùng chúng tôi vào việc bảo vệ môi trường.</p>', '', 'gach-be-tong-rong-8-lo', '', '', '', 0, 8, '', 0, 0, '', '', '', '', 1, 1943);

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
) ENGINE=InnoDB  DEFAULT CHARSET=utf8 AUTO_INCREMENT=1945 ;

--
-- Dumping data for table `dos_module_products_cat`
--

INSERT INTO `dos_module_products_cat` (`cat_id`, `cat_parent_id`, `cat_title`, `cat_titleen`, `preview`, `previewen`, `tag`, `tagen`, `description`, `descriptionen`, `pic_full`, `pic_desc`, `cat_order`, `cat_extra1`, `cat_extra2`, `cat_enable`, `dos_usernames_username`) VALUES
(1942, 0, 'Gạch bê tông siêu nhẹ', '', '', '', 'gach-be-tong-sieu-nhe', '', '', '', 'gach-be-tong-sieu-nhe.jpg', '', 5, '', '', 1, 'vihoang'),
(1943, 0, 'Gạch siêu nhẹ không nung', '', '', '', 'gach-sieu-nhe-khong-nung', '', '', '', 'gach-sieu-nhe-khong-nung.jpg', '', 5, '', '', 1, 'vihoang'),
(1944, 0, 'Gạch bê tông khí chưng áp', '', '', '', 'gach-be-tong-khi-chung-ap', '', '', '', 'gach-be-tong-khi-chung-ap.jpg', '', 5, '', '', 1, 'vihoang');

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
) ENGINE=InnoDB  DEFAULT CHARSET=utf8 AUTO_INCREMENT=344 ;

--
-- Dumping data for table `dos_module_services`
--

INSERT INTO `dos_module_services` (`record_id`, `title`, `titleen`, `preview`, `previewen`, `content`, `contenten`, `pic_full`, `hit`, `created`, `record_order`, `hot`, `extra_field1`, `extra_field2`, `tag`, `tagen`, `description`, `descriptionen`, `activated`, `dos_usernames_username`) VALUES
(339, 'Xây dựng nhà các loại', '', '', '', '<p>Đang cập nhật ...</p>', '', '', 3, '2012-09-14 07:09:30', 5, 0, '', '', 'xay-dung-nha-cac-loai', '', '', '', 1, 'vihoang'),
(340, 'Xây dựng công trình cầu đường bộ', '', '', '', '<p>Đang cập nhật</p>', '', '', 2, '2012-09-14 07:10:19', 4, 0, '', '', 'xay-dung-cong-trinh-cau-duong-bo', '', '', '', 1, 'vihoang'),
(341, 'Chuẩn bị mặt bằng', '', '', '', '<p>Đang cập nhật ....</p>', '', '', 2, '2012-09-14 07:10:56', 3, 0, '', '', 'chuan-bi-mat-bang', '', '', '', 1, 'vihoang'),
(342, 'Trồng trọt - Chăn nuôi', '', '', '', '<p>Đang cập nhật ...</p>', '', '', 2, '2012-09-14 07:11:36', 2, 0, '', '', 'trong-trot-chan-nuoi', '', '', '', 1, 'vihoang'),
(343, 'Giáo dục mầm non - Nghề nghiệp', '', '', '', '<p>Đang cập nhật ...</p>', '', '', 2, '2012-09-14 07:12:14', 1, 0, '', '', 'giao-duc-mam-non-nghe-nghiep', '', '', '', 1, 'vihoang');

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
) ENGINE=InnoDB  DEFAULT CHARSET=utf8 AUTO_INCREMENT=325 ;

--
-- Dumping data for table `dos_module_supports`
--

INSERT INTO `dos_module_supports` (`support_id`, `support_name`, `support_nameen`, `support_phone`, `support_value`, `support_order`, `support_type`, `dos_usernames_username`) VALUES
(324, 'Tư vấn trực tuyến', '', '', 'maioanh7887', 1, 'yahoo', 'vihoang');

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
('keywords', 'Công ty TNHH XD - TM VỊ HOÀNG chuyên về xây dựng Sản xuất gạch bê tông nhẹ,Xây dựng công trình cầu đường bộ,Buôn bán vật liệu, thiết bị trong xây dựng ,UY TÍN & CHẤT LƯỢNG', 'vihoang'),
('description', 'Công ty TNHH XD - TM VỊ HOÀNG chuyên về xây dựng Sản xuất gạch bê tông nhẹ,Xây dựng công trình cầu đường bộ,Buôn bán vật liệu, thiết bị trong xây dựng ,UY TÍN & CHẤT LƯỢNG', 'vihoang'),
('title', 'Công ty TNHH XD - TM VỊ HOÀNG - ViHoang.com', 'vihoang');

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
('vihoang', 'maioanh@thuonghoi.com', 'e10adc3949ba59abbe56e057f20f883e', '2012-09-14 06:04:54', '', '0987522003', '', 'user', 'vi', '', '2012-12-12 16:00:00', 0, '87522003', '', 1, '040712', 19, 'bds-kien-truc-xay-dung');

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
('address1', 'Địa chỉ: 2/G, Tổ 17, KP1, QL 51, P. Long Bình Tân, Biên Hòa, Đồng Nai', '', 'vihoang'),
('address2', 'Email: info@vihoang.com - Website: www.vihoang.com', '', 'vihoang'),
('company_name', '', '', 'vihoang'),
('company_name_footer', 'CÔNG TY TNHH XÂY DỰNG - THƯƠNG MẠI VỊ HOÀNG', '', 'vihoang'),
('company_phone', '', '', 'vihoang'),
('news', 'Công trình thực hiện', '', 'vihoang');

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
