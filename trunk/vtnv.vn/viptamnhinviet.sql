-- phpMyAdmin SQL Dump
-- version 3.4.9
-- http://www.phpmyadmin.net
--
-- Host: localhost
-- Generation Time: Mar 25, 2012 at 10:45 AM
-- Server version: 5.5.8
-- PHP Version: 5.3.5

SET SQL_MODE="NO_AUTO_VALUE_ON_ZERO";
SET time_zone = "+00:00";


/*!40101 SET @OLD_CHARACTER_SET_CLIENT=@@CHARACTER_SET_CLIENT */;
/*!40101 SET @OLD_CHARACTER_SET_RESULTS=@@CHARACTER_SET_RESULTS */;
/*!40101 SET @OLD_COLLATION_CONNECTION=@@COLLATION_CONNECTION */;
/*!40101 SET NAMES utf8 */;

--
-- Database: `viptamnhinviet2`
--

-- --------------------------------------------------------

--
-- Table structure for table `dos_configs`
--

CREATE TABLE IF NOT EXISTS `dos_configs` (
  `config_name` varchar(30) NOT NULL,
  `config_value` int(11) NOT NULL,
  `config_desc` varchar(50) DEFAULT NULL,
  `dos_templates_template` varchar(6) NOT NULL,
  PRIMARY KEY (`config_name`),
  KEY `fk_dos_configs_dos_templates1` (`dos_templates_template`)
) ENGINE=InnoDB DEFAULT CHARSET=utf8;

--
-- Dumping data for table `dos_configs`
--

INSERT INTO `dos_configs` (`config_name`, `config_value`, `config_desc`, `dos_templates_template`) VALUES
('advs_bottom_height', 145, NULL, '080312'),
('advs_bottom_width', 992, NULL, '080312'),
('advs_center_height', 80, NULL, '080312'),
('advs_center_width', 770, NULL, '080312'),
('advs_left_height', 300, NULL, '080312'),
('advs_left_width', 200, NULL, '080312'),
('advs_top_height', 75, NULL, '080312'),
('advs_top_width', 660, NULL, '080312'),
('banner_height', 255, NULL, '080312'),
('banner_width', 686, NULL, '080312'),
('logo_height', 67, NULL, '080312'),
('logo_width', 148, NULL, '080312'),
('news_cat_height', 100, NULL, '080312'),
('news_cat_width', 145, NULL, '080312'),
('news_height_thumb', 100, NULL, '080312'),
('news_width_thumb', 145, NULL, '080312'),
('products_cat_height', 141, NULL, '080312'),
('products_cat_width', 143, NULL, '080312'),
('products_height', 500, NULL, '080312'),
('products_height_thumb', 141, NULL, '080312'),
('products_width', 740, NULL, '080312'),
('products_width_thumb', 143, NULL, '080312'),
('video_cat_height_thumb', 100, NULL, '080312'),
('video_cat_width_thumb', 145, NULL, '080312'),
('video_height_thumb', 255, NULL, '080312'),
('video_width_thumb', 300, NULL, '080312');

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
('address', 'Trụ sở: Lô L4,KP.1, P.Bửu Long, Biên Hòa, Đồng Nai', NULL, 0),
('advs', 'Quảng cáo', 'Adv', 0),
('banners', 'Logo &amp; Banner', 'Logo &amp; Banner', 0),
('contact', 'Liên hệ', 'Contact', 0),
('copyright', 'Bản quyền 2012 thuộc về <strong>CÔNG TY CỔ PHẦN TM - DV VIP TẦM NHÌN VIỆT</strong>', NULL, 0),
('default', 'Trang chủ', 'Home page', 0),
('fax', 'Fax: <span>0618 850 747</span>', NULL, 0),
('news', 'Tin tức &amp; sự kiện', NULL, 0),
('phone', 'Điện thoại: 0618 850 747', NULL, 0),
('products', 'Sản phẩm', 'Products', 0),
('services', 'Dịch vụ', 'Services', 0),
('supports', 'Hỗ trợ trực tuyến', 'Online support', 0),
('video', 'Video', 'Video', 0);

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
('advs', 'advs', 'Danh sách', 7, 0),
('banners', 'banners', 'Danh sách', 5, 0),
('contact', 'contact', 'Danh sách', 8, 1),
('default', NULL, NULL, 1, 1),
('news', 'news/cats|news', 'Danh mục|Danh sách', 9, 1),
('products', 'products/cats|products', 'Danh mục|Danh sách', 3, 1),
('services', 'services', 'Danh sách', 4, 1),
('supports', 'supports', 'Danh sách', 6, 0),
('video', 'video/cats|video', 'Danh mục|Danh sách', 10, 1);

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
('about', 'viptamnhinviet'),
('advs', 'viptamnhinviet'),
('banners', 'viptamnhinviet'),
('contact', 'viptamnhinviet'),
('news', 'viptamnhinviet'),
('products', 'viptamnhinviet'),
('services', 'viptamnhinviet'),
('supports', 'viptamnhinviet'),
('video', 'viptamnhinviet');

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
  `description` varchar(250) NOT NULL,
  `activated` tinyint(1) NOT NULL DEFAULT '1',
  PRIMARY KEY (`record_id`),
  KEY `tag` (`tag`)
) ENGINE=InnoDB  DEFAULT CHARSET=utf8 AUTO_INCREMENT=4 ;

--
-- Dumping data for table `dos_module_abouts`
--

INSERT INTO `dos_module_abouts` (`record_id`, `title`, `titleen`, `content`, `contenten`, `hit`, `created`, `record_order`, `hot`, `extra_field1`, `extra_field2`, `tag`, `description`, `activated`) VALUES
(2, 'Giới thiệu', NULL, '<p>\r\n	Chi tiết</p>\r\n', NULL, 15, '2012-03-07 03:24:59', 1, 0, NULL, NULL, 'gioi-thieu', 'Mô tả', 1),
(3, 'Tiêu đề giới thiệu', NULL, '<p>\n	<span style="font-size:16px;"> <strong> CÔNG TY CỔ PHẦN TM- DV VIP TẦM NHÌN VIỆT</strong></span><br />\n	     <strong> <span style="font-size:14px;"> Trụ sở: Lô L4, KP1, P. Bửu Long, Biên Hòa, Đồng Nai<br />\n	       Điện thoại: 0618 850 747<br />\n	       Website: www.viptamnhinviet.com<br />\n	       Email: viptamnhinviet@gmail.com</span></strong></p>\n<p style="text-align:center;">\n	<span style="font-size:18px;"><b>GIẤY CHỨNG NHẬN ĐĂNG KÝ KINH DOANH</b></span></p>\n<p style="text-align:center;">\n	<img alt="" src="/public/userfiles/images/viptamnhinviet/images/cover.png" style="width:700px;height:990px;" /></p>\n<p style="text-align:center;">\n	<img alt="" src="/public/userfiles/images/viptamnhinviet/images/Untitled-1.png" style="width:700px;height:990px;" /></p>\n<p style="text-align:center;">\n	<img alt="" src="/public/userfiles/images/viptamnhinviet/images/Untitled-2.png" style="width:700px;height:990px;" /></p>\n<p style="text-align:center;">\n	<img alt="" src="/public/userfiles/images/viptamnhinviet/images/Untitled-3.png" style="width:700px;height:990px;" /></p>\n<p style="text-align:center;">\n	<img alt="" src="/public/userfiles/images/viptamnhinviet/images/Untitled-4.png" style="width:700px;height:990px;" /></p>\n<p>\n	<span style="font-size:14px;"><strong>VIP TẦM NHÌN VIỆT</strong> là một công ty truyền thông hoạt động trong nhiều lĩnh vực như: Thiết kế website, quảng cáo doanh nghiệp, marketting online, đào tạo kỹ năng mềm, tổ chức sự kiện……. Công Ty được thành lập với sứ mệnh kết nối cộng đồng, làm giàu tri thức, kiến thức và tài chánh cho tất cả mọi người.<br />\n	Nắm bắt được xu hướng Marketting Online toàn cầu công ty chúng tôi đã và đang nổ lực hết mình để trở thành một trong những tập đoàn lớn mạnh về Marketting Online tại Việt Nam phát triển bền vững gắn liền với nhiệm vụ kết nối cộng đồng.<br /><strong><span style="color:#ff0000;">1/ Giới thiệu về dự án VIP TẦM NHÌN VIỆT:</span></strong><br />\n	   Chúng tôi hoạt động với sứ mệnh “ Kết nối cộng đồng – nâng tầm cuộc sống”. <strong>VIP TẦM NHÌN VIỆT</strong> là một trong những Công Ty tiên phong đưa ngành TMĐT phát triển lên một tầm cao mới với xu hướng kinh doanh  rõ ràng cụ thể. <strong>VIP TẦM NHÌN VIỆT</strong> tập hợp được một đội ngũ điều hành xuất sắc, một tầm nhìn chiến lược quốc tế và đặc biêt kế hoạch trả thưởng đột phá hứa hẹn một tương lai bền vững, một cuộc sống đầy thịnh vượng dành cho tất cả mọi Thành Viên tham gia.<br /><span style="color:#ff0000;"><strong>2/ Công ty mang lại cho bạn điều gì?</strong></span><br />\n	    Một sân chơi công bằng và mang tính cộng đồng cao sẽ giúp bạn chinh phục đỉnh cao danh hiệu<br />\n	Những dịch vụ tốt với  những dòng sản phẩm chất lượng cao.<br />\n	    Một cơ hội làm việc với mức thu nhập cao không giới hạn và ổn định.<br /><strong><span style="color:#ff0000;">3/ Tại sao phải chọn VIP TẦM NHÌN VIỆT</span></strong><br />\n	    Chúng tôi tự hào vì đã  tạo ra một sân chơi an toàn và công bằng cho tất cả mọi người .<br />\n	Kế hoạch trả thưởng cao và tiến bộ.<br />\n	    Ngoài việc bạn có thể lãnh những khoản hoa hồng cao, bạn còn có những phần thưởng kèm theo rất có giá trị, nhưng trên hết bạn sẽ có được sức khỏe tốt với những dòng sản phẩm mà chúng tôi mang đến cho bạn .<br />\n	    Là một môi trường năng động để bạn giao lưu học hỏi kinh nghiệm và hoàn thiện bản thân.<br /><br /><span style="color:#ff0000;"><strong>TẦM NHÌN - CHIẾN LƯỢC - MỤC TIÊU</strong></span><br />\n	• Xây dựng Website và gian hàng trực tuyến cho các doanh nghiệp.<br />\n	• Xây dựng kênh bán lẻ sản phẩm &amp; dịch vụ trực tuyến hàng đầu.<br />\n	• Cung cấp các Giải Pháp Đầu Tư &amp; Thương Mại Hóa Toàn Cầu.<br />\n	• Kết nối cộng đồng gắn với các hoạt động xã hội.<br />\n	• Là tổ chức hàng đầu về ứng dụng TMĐT vào nhiều lĩnh vực như kinh tế, giáo dục, văn hóa, xã hội.<br />\n	• Trở thành đơn vị truyền thông đa phương tiện.<br />\n	• Vươn lên tầm cao mới – Hội  nhập cùng thế giới.<br /><span style="color:#ff0000;"><strong>1. Đối với thị trường:</strong></span><br />\n	Cung cấp các giải pháp tối ưu về TMĐT mang lại lợi ích kinh tế cao cho các cá nhân, doanh nghiệp và nhà nước, đồng thời nâng cao được trình độ internet cho người tiêu dùng.<br /><span style="color:#ff0000;"><strong>2. Đối với nhân viên, Thành viên:</strong></span><br />\n	Xây dựng môi trường làm việc chuyên nghiệp, năng động, sáng tạo, tạo điều kiện thu nhập cao và cơ hội phát triển công bằng cho cán bộ công nhân viên, Thành viên.<br /><span style="color:#ff0000;"><strong>3. Đối với xã hội:</strong></span></span></p>\n<p>\n	<br /><span style="font-size:14px;">Với sự lớn mạnh của internet và những thành quả của thương mại điện tử, Công ty đã và đang thực hiện:</span></p>\n<p>\n	<span style="font-size:14px;">• Xây dựng sàn giao dịch : C2C - B2C - B2B.</span></p>\n<p>\n	<span style="font-size:14px;">• Xây dựng một hệ thống siêu thị trực tuyến, sàn đấu giá ... thanh toán trực tuyến và một ngân hàng Thương Mại Điện Tử.</span></p>\n<p>\n	<span style="font-size:14px;">• Tạo lập hệ thống truyền thông đa phương tiện, một kênh thông tin của người tiêu dùng...</span></p>\n<p>\n	<span style="font-size:14px;">• Cung cấp các giải pháp xây dựng và quảng bá thương hiệu.</span></p>\n<p>\n	<span style="font-size:14px;">• Xây dựng hệ thống phân phối sản phẩm thông qua siêu thị TMĐT<strong> VIP TẦM NHÌN VIỆT.</strong></span></p>\n<p>\n	<span style="font-size:14px;">• Sàn đấu giá sản phẩm trực tuyến.</span></p>\n<p>\n	<span style="font-size:14px;">• Chương trình mua hàng ưu đãi</span></p>\n<p>\n	<span style="font-size:14px;">• Chương trình mua hàng tích điểm.</span></p>\n<p>\n	<span style="font-size:14px;">• Các chương trình gameshow:</span></p>\n<p>\n	<span style="font-size:14px;">Giờ vàng giảm giá, hội chợ trực tuyến, chọn giá sản phẩm…</span></p>\n<p>\n	<span style="font-size:14px;"><img alt="" src="/public/userfiles/images/viptamnhinviet/images/thuong%20hieu.jpg" style="width:680px;height:550px;" /></span></p>\n<p>\n	<span style="font-size:14px;">Cùng với những thành công của các tập đoàn ứng dụng <strong>INTERNET</strong> trên Thế Giới<br />\n	và sự phát triển như vũ bão của mạng toàn cầu tại Việt Nam. <strong>VIP TẦM NHÌN VIỆT</strong> ra đời<br />\n	nhằm ứng dụng những tinh hoa của internet vào cuộc sống</span></p>\n<p style="text-align:center;">\n	<span style="color:#ff0000;"><span style="font-size:18px;"><strong>CHÍNH SÁCH CÔNG TY</strong></span></span></p>\n<p>\n	<span style="font-size:14px;"><img alt="" src="/public/userfiles/images/viptamnhinviet/images/cs1.jpg" style="width:700px;height:990px;" /></span></p>\n<p>\n	<span style="font-size:14px;"><img alt="" src="/public/userfiles/images/viptamnhinviet/images/cs2.jpg" style="width:700px;height:992px;" /></span></p>\n<p>\n	<span style="font-size:14px;"><img alt="" src="/public/userfiles/images/viptamnhinviet/images/cs3.jpg" style="width:700px;height:990px;" /></span></p>\n<p>\n	<img alt="" src="/public/userfiles/images/viptamnhinviet/images/cs4.jpg" style="width:700px;height:990px;" /></p>\n<p>\n	<img alt="" src="/public/userfiles/images/viptamnhinviet/images/cs5.jpg" style="width:700px;height:990px;" /></p>\n<p>\n	<img alt="" src="/public/userfiles/images/viptamnhinviet/images/cs6.jpg" style="width:700px;height:990px;" /></p>\n<p>\n	<img alt="" src="/public/userfiles/images/viptamnhinviet/images/cs7.jpg" style="width:700px;height:990px;" /></p>\n<p>\n	<img alt="" src="/public/userfiles/images/viptamnhinviet/images/cs8.jpg" style="width:700px;height:990px;" /></p>\n', NULL, 173, '2012-03-07 03:25:14', 2, 0, NULL, NULL, 'tieu-de-gioi-thieu', 'Mô tả', 1);

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
  PRIMARY KEY (`record_id`)
) ENGINE=InnoDB  DEFAULT CHARSET=utf8 AUTO_INCREMENT=8 ;

--
-- Dumping data for table `dos_module_advs`
--

INSERT INTO `dos_module_advs` (`record_id`, `title`, `titleen`, `pic_thumb`, `url`, `create_date`, `start_date`, `end_date`, `hits`, `record_order`, `position`, `type`, `enable`) VALUES
(6, 'CÁC TRUNG TÂM PHÂN PHỐI', NULL, 'cc-trung-tm-phn-phi.jpg', 'http://viptamnhinviet.com/about/index/view/id/31/cac-van-phong-dai-dien', '2012-03-22 04:25:08', '2012-03-21 17:00:00', '2015-04-29 17:00:00', 0, 1, 'left', '_bank', 1),
(7, 'tin nhanh', NULL, 'tin-nhanh.gif', 'http://www.zing.vn/news/', '2012-03-22 09:41:19', '2012-03-21 17:00:00', '2015-04-29 17:00:00', 0, 2, 'center', '_bank', 1);

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
  PRIMARY KEY (`banner_id`)
) ENGINE=InnoDB  DEFAULT CHARSET=utf8 AUTO_INCREMENT=12 ;

--
-- Dumping data for table `dos_module_banners`
--

INSERT INTO `dos_module_banners` (`banner_id`, `banner_date`, `banner_name`, `banner_url`, `banner_link`, `banner_order`, `banner_type`, `position`, `enable`) VALUES
(8, '2012-03-12 01:54:34', 'Banner', 'banner.jpg', '', 1, 'banner', 'default', 1),
(9, '2012-03-22 04:20:47', 'hình kêt nối', 'hinh-ket-noi.jpg', '', 2, 'banner', 'default', 1),
(10, '2012-03-22 04:21:51', 'hình ban lảnh đạo', 'hinh-ban-lanh-dao.jpg', '', 3, 'banner', 'default', 1),
(11, '2012-03-22 04:22:23', 'sản phẩm mới', 'san-pham-moi.jpg', '', 4, 'banner', 'default', 1);

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
  `description` varchar(250) NOT NULL,
  `enable` varchar(45) NOT NULL DEFAULT '1',
  PRIMARY KEY (`record_id`)
) ENGINE=InnoDB  DEFAULT CHARSET=utf8 AUTO_INCREMENT=4 ;

--
-- Dumping data for table `dos_module_contacts`
--

INSERT INTO `dos_module_contacts` (`record_id`, `title`, `titleen`, `content`, `contenten`, `create_date`, `record_order`, `hit`, `hot`, `tag`, `description`, `enable`) VALUES
(2, 'Tiêu đề', '', '<p>\n	<span style="color:#0000ff;">CÔNG TY CỔ PHẦN TM - DV VIP TẦM NHÌN VIỆT                  </span></p>\n<p>\n	<span style="color:#0000ff;">Trụ sở: LÔ L4, KP1, P.BỬU LONG, BIÊN HÒA, ĐỒNG NAI     </span></p>\n<p>\n	<span style="color:#0000ff;">Điện thoại: 0618 850 747</span></p>\n<p>\n	<span style="color:#0000ff;">Fax: 0618 850 747</span></p>\n<p>\n	<span style="color:#0000ff;">Giấy phép kinh doanh số: 3602648481</span></p>\n<p>\n	<span style="color:#0000ff;">Do Sở Kế Hoạch và đầu tư Tỉnh Đồng Nai cấp ngày: 11 tháng 11 năm 2011 .</span></p>\n', '', '2012-03-08 01:34:22', 1, 0, 1, 'tieu-de', 'Mô tả', '1'),
(3, 'Liên Hệ Với Chúng Tôi', '', '<p style="text-align:center;">\n	<span style="color:#008000;"><span style="font-size:18px;"><strong>CÔNG TY CỔ PHẦN TM-DV VIP TẦM NHÌN VIỆT</strong></span></span></p>\n<p style="text-align:center;">\n	<span style="font-size:14px;"><strong>Trụ sở: LÔ L4, KP1, P.BỬU LONG, BIÊN HÒA ,ĐỒNG NAI .</strong></span></p>\n<p style="text-align:center;">\n	<span style="font-size:14px;"><strong>Số tài khoản : 0121 000 652 106 vietcombank.</strong></span></p>\n<p style="text-align:center;">\n	<span style="font-size:14px;"><strong>Tên tài khoản : VIP TẦM NHÌN VIỆT .</strong></span></p>\n<p style="text-align:center;">\n	<span style="font-size:14px;"><strong>Email</strong></span>: <em><span style="font-size:14px;">viptamnhinviet@gmail.com</span></em></p>\n<p>\n	 </p>\n<p style="text-align:center;">\n	 </p>\n', '', '2012-03-22 02:21:14', 2, 0, 0, 'lien-he-voi-chung-toi', 'mô tả', '1');

-- --------------------------------------------------------

--
-- Table structure for table `dos_module_log`
--

CREATE TABLE IF NOT EXISTS `dos_module_log` (
  `record_id` int(11) NOT NULL AUTO_INCREMENT,
  `log_type` varchar(45) DEFAULT '0',
  `detail` varchar(320) NOT NULL,
  `time` timestamp NOT NULL DEFAULT CURRENT_TIMESTAMP,
  `sender` varchar(45) NOT NULL,
  `receiver` varchar(45) NOT NULL,
  `value` float NOT NULL,
  PRIMARY KEY (`record_id`)
) ENGINE=InnoDB  DEFAULT CHARSET=utf8 AUTO_INCREMENT=73 ;

--
-- Dumping data for table `dos_module_log`
--

INSERT INTO `dos_module_log` (`record_id`, `log_type`, `detail`, `time`, `sender`, `receiver`, `value`) VALUES
(1, 'gioithieu', 'Thành viên viptamnhinviet được kích hoạt. Người giới thiệu:', '2012-03-25 08:16:02', 'Công ty', 'grouplaptrinh', 0),
(2, 'gioithieu', 'Thành viên typhu được kích hoạt. Người giới thiệu:viptamnhinviet', '2012-03-25 08:17:01', 'Công ty', 'grouplaptrinh', 0),
(3, 'gioithieu', 'Thành viên trieuphu được kích hoạt. Người giới thiệu:viptamnhinviet', '2012-03-25 08:17:01', 'Công ty', 'grouplaptrinh', 0),
(4, 'gioithieu', 'Thành viên trieuphu1 được kích hoạt. Người giới thiệu:trieuphu', '2012-03-25 08:17:01', 'Công ty', 'grouplaptrinh', 0),
(5, 'gioithieu', 'Thành viên trieuphu2 được kích hoạt. Người giới thiệu:trieuphu', '2012-03-25 08:17:02', 'Công ty', 'grouplaptrinh', 0),
(6, 'gioithieu', 'Thành viên typhu1 được kích hoạt. Người giới thiệu:typhu', '2012-03-25 08:17:02', 'Công ty', 'grouplaptrinh', 0),
(7, 'tangcap', 'Hoa hồng đạt cấp 1', '2012-03-25 08:17:18', '', 'viptamnhinviet', 2000),
(8, 'gioithieu', 'Thành viên typhu3 được kích hoạt. Người giới thiệu:typhu1', '2012-03-25 08:17:18', 'Công ty', 'grouplaptrinh', 0),
(9, 'gioithieu', 'Thành viên typhu4 được kích hoạt. Người giới thiệu:typhu1', '2012-03-25 08:17:19', 'Công ty', 'grouplaptrinh', 0),
(10, 'gioithieu', 'Thành viên typhu5 được kích hoạt. Người giới thiệu:typhu2', '2012-03-25 08:17:19', 'Công ty', 'grouplaptrinh', 0),
(11, 'tangcap', 'Hoa hồng đạt cấp 1', '2012-03-25 08:17:19', '', 'trieuphu', 2000),
(12, 'gioithieu', 'Thành viên trieuphu3 được kích hoạt. Người giới thiệu:trieuphu1', '2012-03-25 08:17:47', 'Công ty', 'grouplaptrinh', 0),
(13, 'gioithieu', 'Thành viên trieuphu4 được kích hoạt. Người giới thiệu:trieuphu1', '2012-03-25 08:17:47', 'Công ty', 'grouplaptrinh', 0),
(14, 'gioithieu', 'Thành viên trieuphu5 được kích hoạt. Người giới thiệu:trieuphu2', '2012-03-25 08:17:48', 'Công ty', 'grouplaptrinh', 0),
(15, 'tangcap', 'Hoa hồng đạt cấp 1', '2012-03-25 08:17:48', '', 'typhu', 2000),
(16, 'gioithieu', 'Thành viên ngochien được kích hoạt. Người giới thiệu:typhu4', '2012-03-25 08:19:36', 'Công ty', 'grouplaptrinh', 0),
(17, 'gioithieu', 'Thành viên ngochien1 được kích hoạt. Người giới thiệu:ngochien', '2012-03-25 08:19:37', 'Công ty', 'grouplaptrinh', 0),
(18, 'gioithieu', 'Thành viên ngochien2 được kích hoạt. Người giới thiệu:ngochien', '2012-03-25 08:19:37', 'Công ty', 'grouplaptrinh', 0),
(19, 'tangcap', 'Hoa hồng đạt cấp 1', '2012-03-25 08:19:38', '', 'typhu1', 2000),
(20, 'gioithieu', 'Thành viên ngochien4 được kích hoạt. Người giới thiệu:ngochien1', '2012-03-25 08:19:46', 'Công ty', 'grouplaptrinh', 0),
(21, 'gioithieu', 'Thành viên ngochien5 được kích hoạt. Người giới thiệu:ngochien2', '2012-03-25 08:19:47', 'Công ty', 'grouplaptrinh', 0),
(22, 'gioithieu', 'Thành viên ngochien6 được kích hoạt. Người giới thiệu:ngochien2', '2012-03-25 08:19:47', 'Công ty', 'grouplaptrinh', 0),
(23, 'tangcap', 'Hoa hồng đạt cấp 1', '2012-03-25 08:19:48', '', 'typhu2', 2000),
(24, 'gioithieu', 'Thành viên ngochien8 được kích hoạt. Người giới thiệu:ngochien3', '2012-03-25 08:19:49', 'Công ty', 'grouplaptrinh', 0),
(25, 'gioithieu', 'Thành viên ngochien9 được kích hoạt. Người giới thiệu:ngochien4', '2012-03-25 08:19:50', 'Công ty', 'grouplaptrinh', 0),
(26, 'gioithieu', 'Thành viên typhu được kích hoạt. Người giới thiệu:viptamnhinviet', '2012-03-25 08:22:34', 'Công ty', 'grouplaptrinh', 0),
(27, 'gioithieu', 'Thành viên trieuphu được kích hoạt. Người giới thiệu:viptamnhinviet', '2012-03-25 08:22:34', 'Công ty', 'grouplaptrinh', 0),
(28, 'gioithieu', 'Thành viên trieuphu1 được kích hoạt. Người giới thiệu:trieuphu', '2012-03-25 08:22:35', 'Công ty', 'grouplaptrinh', 0),
(29, 'gioithieu', 'Thành viên trieuphu2 được kích hoạt. Người giới thiệu:trieuphu', '2012-03-25 08:22:35', 'Công ty', 'grouplaptrinh', 0),
(30, 'gioithieu', 'Thành viên typhu1 được kích hoạt. Người giới thiệu:typhu', '2012-03-25 08:22:35', 'Công ty', 'grouplaptrinh', 0),
(31, 'tangcap', 'Hoa hồng đạt cấp 1', '2012-03-25 08:22:36', '', 'viptamnhinviet', 2000),
(32, 'gioithieu', 'Thành viên typhu3 được kích hoạt. Người giới thiệu:typhu1', '2012-03-25 08:22:37', 'Công ty', 'grouplaptrinh', 0),
(33, 'gioithieu', 'Thành viên typhu4 được kích hoạt. Người giới thiệu:typhu1', '2012-03-25 08:22:37', 'Công ty', 'grouplaptrinh', 0),
(34, 'gioithieu', 'Thành viên typhu5 được kích hoạt. Người giới thiệu:typhu2', '2012-03-25 08:22:37', 'Công ty', 'grouplaptrinh', 0),
(35, 'tangcap', 'Hoa hồng đạt cấp 1', '2012-03-25 08:22:37', '', 'trieuphu', 2000),
(36, 'gioithieu', 'Thành viên trieuphu3 được kích hoạt. Người giới thiệu:trieuphu1', '2012-03-25 08:23:44', 'Công ty', 'grouplaptrinh', 0),
(37, 'gioithieu', 'Thành viên trieuphu4 được kích hoạt. Người giới thiệu:trieuphu1', '2012-03-25 08:23:44', 'Công ty', 'grouplaptrinh', 0),
(38, 'gioithieu', 'Thành viên trieuphu5 được kích hoạt. Người giới thiệu:trieuphu2', '2012-03-25 08:23:44', 'Công ty', 'grouplaptrinh', 0),
(39, 'tangcap', 'Hoa hồng đạt cấp 1', '2012-03-25 08:23:45', '', 'typhu', 2000),
(40, 'gioithieu', 'Thành viên ngochien được kích hoạt. Người giới thiệu:typhu4', '2012-03-25 08:24:47', 'Công ty', 'grouplaptrinh', 0),
(41, 'gioithieu', 'Thành viên ngochien1 được kích hoạt. Người giới thiệu:ngochien', '2012-03-25 08:24:47', 'Công ty', 'grouplaptrinh', 0),
(42, 'gioithieu', 'Thành viên ngochien2 được kích hoạt. Người giới thiệu:ngochien', '2012-03-25 08:24:47', 'Công ty', 'grouplaptrinh', 0),
(43, 'tangcap', 'Hoa hồng đạt cấp 1', '2012-03-25 08:24:48', '', 'typhu1', 2000),
(44, 'gioithieu', 'Thành viên ngochien4 được kích hoạt. Người giới thiệu:ngochien1', '2012-03-25 08:24:49', 'Công ty', 'grouplaptrinh', 0),
(45, 'gioithieu', 'Thành viên ngochien5 được kích hoạt. Người giới thiệu:ngochien2', '2012-03-25 08:24:49', 'Công ty', 'grouplaptrinh', 0),
(46, 'gioithieu', 'Thành viên ngochien6 được kích hoạt. Người giới thiệu:ngochien2', '2012-03-25 08:24:50', 'Công ty', 'grouplaptrinh', 0),
(47, 'tangcap', 'Hoa hồng đạt cấp 1', '2012-03-25 08:24:50', '', 'typhu2', 2000),
(48, 'gioithieu', 'Thành viên ngochien8 được kích hoạt. Người giới thiệu:ngochien3', '2012-03-25 08:24:51', 'Công ty', 'grouplaptrinh', 0),
(49, 'gioithieu', 'Thành viên ngochien9 được kích hoạt. Người giới thiệu:ngochien4', '2012-03-25 08:24:52', 'Công ty', 'grouplaptrinh', 0),
(50, 'gioithieu', 'Thành viên ngochien10 được kích hoạt. Người giới thiệu:ngochien4', '2012-03-25 08:25:05', 'Công ty', 'grouplaptrinh', 0),
(51, 'tangcap', 'Hoa hồng đạt cấp 1', '2012-03-25 08:25:06', '', 'trieuphu1', 2000),
(52, 'gioithieu', 'Thành viên ngochien12 được kích hoạt. Người giới thiệu:ngochien5', '2012-03-25 08:25:07', 'Công ty', 'grouplaptrinh', 0),
(53, 'gioithieu', 'Thành viên ngochien13 được kích hoạt. Người giới thiệu:ngochien6', '2012-03-25 08:25:07', 'Công ty', 'grouplaptrinh', 0),
(54, 'gioithieu', 'Thành viên ngochien14 được kích hoạt. Người giới thiệu:ngochien6', '2012-03-25 08:25:08', 'Công ty', 'grouplaptrinh', 0),
(55, 'tangcap', 'Hoa hồng đạt cấp 2', '2012-03-25 08:25:09', '', 'viptamnhinviet', 4000),
(56, 'gioithieu', 'Thành viên ngochien16 được kích hoạt. Người giới thiệu:ngochien7', '2012-03-25 08:25:10', 'Công ty', 'grouplaptrinh', 0),
(57, 'gioithieu', 'Thành viên ngochien17 được kích hoạt. Người giới thiệu:ngochien8', '2012-03-25 08:25:11', 'Công ty', 'grouplaptrinh', 0),
(58, 'gioithieu', 'Thành viên ngochien18 được kích hoạt. Người giới thiệu:ngochien8', '2012-03-25 08:25:12', 'Công ty', 'grouplaptrinh', 0),
(59, 'tangcap', 'Hoa hồng đạt cấp 1', '2012-03-25 08:25:13', '', 'trieuphu2', 2000),
(60, 'gioithieu', 'Thành viên ngochien20 được kích hoạt. Người giới thiệu:ngochien9', '2012-03-25 08:25:14', 'Công ty', 'grouplaptrinh', 0),
(61, 'gioithieu', 'Thành viên ngochien21 được kích hoạt. Người giới thiệu:ngochien10', '2012-03-25 08:25:43', 'Công ty', 'grouplaptrinh', 0),
(62, 'gioithieu', 'Thành viên ngochien22 được kích hoạt. Người giới thiệu:ngochien10', '2012-03-25 08:25:44', 'Công ty', 'grouplaptrinh', 0),
(63, 'tangcap', 'Hoa hồng đạt cấp 1', '2012-03-25 08:25:45', '', 'ngochien', 2000),
(64, 'gioithieu', 'Thành viên ngochien24 được kích hoạt. Người giới thiệu:ngochien11', '2012-03-25 08:25:47', 'Công ty', 'grouplaptrinh', 0),
(65, 'gioithieu', 'Thành viên ngochien25 được kích hoạt. Người giới thiệu:ngochien12', '2012-03-25 08:25:48', 'Công ty', 'grouplaptrinh', 0),
(66, 'gioithieu', 'Thành viên ngochien26 được kích hoạt. Người giới thiệu:ngochien12', '2012-03-25 08:25:49', 'Công ty', 'grouplaptrinh', 0),
(67, 'tangcap', 'Hoa hồng đạt cấp 1', '2012-03-25 08:25:50', '', 'ngochien1', 2000),
(68, 'gioithieu', 'Thành viên ngochien28 được kích hoạt. Người giới thiệu:ngochien13', '2012-03-25 08:25:52', 'Công ty', 'grouplaptrinh', 0),
(69, 'gioithieu', 'Thành viên ngochien29 được kích hoạt. Người giới thiệu:ngochien14', '2012-03-25 08:25:54', 'Công ty', 'grouplaptrinh', 0),
(70, 'gioithieu', 'Thành viên ngochien30 được kích hoạt. Người giới thiệu:ngochien14', '2012-03-25 08:25:55', 'Công ty', 'grouplaptrinh', 0),
(71, 'thanhtich', 'Hoa hồng thành tích do đạt được mỗi nhánh là 15', '2012-03-25 08:25:56', '', 'ngochien', 5000),
(72, 'tangcap', 'Hoa hồng đạt cấp 1', '2012-03-25 08:34:35', '', 'ngochien2', 2000);

-- --------------------------------------------------------

--
-- Table structure for table `dos_module_menus`
--

CREATE TABLE IF NOT EXISTS `dos_module_menus` (
  `menu` varchar(50) NOT NULL,
  `menuen` varchar(50) DEFAULT NULL,
  `url` varchar(100) DEFAULT NULL,
  `target` varchar(20) DEFAULT NULL,
  `position` tinyint(4) DEFAULT NULL
) ENGINE=InnoDB DEFAULT CHARSET=utf8;

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
  `detail` text NOT NULL,
  `detailen` text,
  `tag` varchar(100) NOT NULL,
  `description` varchar(250) NOT NULL,
  `hits` int(11) NOT NULL DEFAULT '0',
  `record_order` int(11) NOT NULL DEFAULT '1',
  `hot` tinyint(1) NOT NULL DEFAULT '0',
  `extra_field1` varchar(100) DEFAULT NULL,
  `extra_field2` varchar(100) DEFAULT NULL,
  `enable` tinyint(1) NOT NULL DEFAULT '1',
  `dos_module_item_cat_cat_id` int(11) NOT NULL,
  PRIMARY KEY (`record_id`),
  KEY `fk_dos_module_news_dos_module_news_cat1` (`dos_module_item_cat_cat_id`)
) ENGINE=InnoDB  DEFAULT CHARSET=utf8 AUTO_INCREMENT=5 ;

--
-- Dumping data for table `dos_module_news`
--

INSERT INTO `dos_module_news` (`record_id`, `title`, `titleen`, `postdate`, `pic_thumb`, `preview`, `previewen`, `detail`, `detailen`, `tag`, `description`, `hits`, `record_order`, `hot`, `extra_field1`, `extra_field2`, `enable`, `dos_module_item_cat_cat_id`) VALUES
(1, 'Bài viết', NULL, '2012-03-15 08:50:17', '', '<p>\r\n	Mo ta</p>\r\n', NULL, '<p>\r\n	Chi tie</p>\r\n', NULL, 'bai-viet', 'adsadsad', 0, 1, 0, NULL, NULL, 1, 11),
(2, 'sad sad', NULL, '2012-03-15 08:50:25', '', '<p>\r\n	asdasd</p>\r\n', NULL, '<p>\r\n	asdasd</p>\r\n', NULL, 'sad-sad', 'asd asdasd', 0, 2, 0, NULL, NULL, 1, 11),
(3, 'fgdfgdf', NULL, '2012-03-15 08:54:28', '', '<p>\r\n	gdfgdfg</p>\r\n', NULL, '<p>\r\n	g dfgdfg</p>\r\n', NULL, 'fgdfgdf', 'dfg dfgdfg', 0, 3, 0, NULL, NULL, 1, 11),
(4, 'dfg dfg', NULL, '2012-03-15 08:56:16', 'dfg-dfg.jpg', '<p>\r\n	dfgdfgdf g</p>\r\n', NULL, '<p>\r\n	dfgdfg</p>\r\n', NULL, 'dfg-dfg', 'dfg dgdf g', 0, 4, 0, NULL, NULL, 1, 11);

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
  `description` varchar(250) NOT NULL,
  `pic_full` varchar(100) DEFAULT NULL,
  `cat_order` int(11) NOT NULL,
  `cat_extra1` varchar(45) DEFAULT NULL,
  `cat_extra2` varchar(45) DEFAULT NULL,
  `cat_enable` tinyint(1) NOT NULL DEFAULT '1',
  PRIMARY KEY (`cat_id`)
) ENGINE=InnoDB  DEFAULT CHARSET=utf8 AUTO_INCREMENT=12 ;

--
-- Dumping data for table `dos_module_news_cat`
--

INSERT INTO `dos_module_news_cat` (`cat_id`, `cat_parent_id`, `cat_title`, `cat_titleen`, `preview`, `previewen`, `tag`, `description`, `pic_full`, `cat_order`, `cat_extra1`, `cat_extra2`, `cat_enable`) VALUES
(11, 0, 'asdasd', NULL, NULL, NULL, 'asdasd', 'sdaddasdsad', '', 2, NULL, NULL, 1);

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
('day_time', 2456012),
('max_count', 9),
('counter', 26),
('yesterday', 1),
('max_time', 0);

-- --------------------------------------------------------

--
-- Table structure for table `dos_module_pcounter_users`
--

CREATE TABLE IF NOT EXISTS `dos_module_pcounter_users` (
  `user_ip` varchar(39) NOT NULL,
  `user_time` int(10) unsigned NOT NULL,
  UNIQUE KEY `user_ip` (`user_ip`)
) ENGINE=InnoDB DEFAULT CHARSET=utf8;

--
-- Dumping data for table `dos_module_pcounter_users`
--

INSERT INTO `dos_module_pcounter_users` (`user_ip`, `user_time`) VALUES
('''127.0.0.1''', 1332665160);

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
  `detail` text NOT NULL,
  `detailen` text,
  `tag` varchar(100) NOT NULL,
  `description` varchar(250) NOT NULL,
  `hits` int(11) NOT NULL DEFAULT '0',
  `record_order` int(11) NOT NULL DEFAULT '1',
  `unit` int(11) DEFAULT '0',
  `hot` tinyint(1) NOT NULL DEFAULT '0',
  `specials` tinyint(1) DEFAULT '0',
  `extra_field1` varchar(100) DEFAULT NULL,
  `extra_field2` varchar(100) DEFAULT NULL,
  `extra_field3` varchar(100) DEFAULT NULL,
  `extra_field4` varchar(100) DEFAULT NULL,
  `enable` tinyint(1) NOT NULL DEFAULT '1',
  `dos_module_item_cat_cat_id` int(11) NOT NULL,
  `dos_module_usernames_username` varchar(45) NOT NULL,
  PRIMARY KEY (`record_id`),
  KEY `fk_dos_module_products_dos_module_products_cat1` (`dos_module_item_cat_cat_id`),
  KEY `fk_dos_module_products_dos_module_usernames1` (`dos_module_usernames_username`)
) ENGINE=InnoDB  DEFAULT CHARSET=utf8 AUTO_INCREMENT=45 ;

--
-- Dumping data for table `dos_module_products`
--

INSERT INTO `dos_module_products` (`record_id`, `title`, `titleen`, `postdate`, `pic_thumb`, `pic_full`, `pic_desc`, `preview`, `previewen`, `detail`, `detailen`, `tag`, `description`, `hits`, `record_order`, `unit`, `hot`, `specials`, `extra_field1`, `extra_field2`, `extra_field3`, `extra_field4`, `enable`, `dos_module_item_cat_cat_id`, `dos_module_usernames_username`) VALUES
(18, 'Máy Công nghệ O3 (Ozone)', NULL, '2012-03-19 00:43:49', 'may-cong-nghe-o3-ozone-thumb.jpg', 'may-cong-nghe-o3-ozone.jpg', NULL, NULL, NULL, '<p>\n	<span style="font-size:14px;">* Công dụng:<br />\n	1. Ngâm rửa rau quả<br />\n	2. Xử lý nước kim loại nặng<br />\n	3. Khử mùi cá, hải sản và thịt<br />\n	4. Khử mùi không khí<br />\n	5. Rửa chén bát và ly cốc<br />\n	6. Rửa tay<br />\n	7. Dùng sát trùng và vệ sinh chống lão hóa da</span></p>\n<p style="text-align:center;">\n	<br /><span style="font-size:14px;"><span style="color:#ff0000;">LIÊN HỆ CÔNG TY CỔ PHẦN TM - DV VIP TẦM NHÌN VIỆT<br />\n	ĐC: LÔ L4, ĐƯỜNG 4, KP1, P.BỬU LONG, ĐỒNG NAI, BIÊN HÒA<br />\n	EMAIL: viptamnhinviet@gmail.com<br />\n	WEB: VIPTAMNHINVIET.COM<br />\n	ĐT: 0618850747</span></span></p>\n', NULL, 'may-cong-nghe-o3-ozone', 'sản phẩm liên kết', 0, 4, 1299000, 1, 1, NULL, NULL, NULL, NULL, 1, 11, 'viptamnhinviet'),
(19, 'IC đổi nguồn điện (Khi mất điện)', NULL, '2012-03-19 01:06:04', 'ic-doi-nguon-dien-khi-mat-dien-thumb.jpg', '', NULL, NULL, NULL, '<p>\n	<span style="font-size:14px;"><span style="color:#ff0000;">IC ĐỔI NGUỒN ĐIỆN TRÊN XE MÁY, ÔTÔ, GHE THUYỀN, BÌNH ACCU RỜI (12VDC - 220VAC</span> chống giật)<br />\n	Cơ chế hoạt động:  IC Đổi nguồn điện 12VDC sang 220VAC Công suất 20W (INVERTER )<br />\n	- Khi dùng, bật công tắc điện đèn left sáng báo có điện là bạn có thể sử dụng và có thể sử dụng khi tắt máy không bật công tắc khóa xe.<br />\n	Sử dụng:  Gắn vào vị trí bất kỳ thích hợp, tốt nhất là ở dưới yên xe hoặc có thể mua bình accu sử dụng lâu dài.... Dây đỏ gắn vào cọc dương của bình Accu, dây đen gắn vào cọc âm của bình Accu (dây đỏ cho vào dương bình và dây đen vào âm bình).<br />\n	Chức năng và hiệu quả ưu việt của sản phẩm duy nhất trên thế giới do các bạn khuyết tật Việt nam sản xuất:<br />\n	1.Khi gia đình bị cúp điện hoặc về những vùng nông thôn không có điện,đi dã ngoại...Bạn chỉ cần mua bóng đèn 2U 220VAC 7W - 15W là có thể sử dụng thỏa mái tự nhiên có nguồn điện chiếu sáng từ 4 tiếng đến 6 tiếng. Nếu muốn kéo xa chỉ cần mua thêm dây ổ cắm tại các tiệm điện.<br />\n	2. Bạn có ĐTDĐ nhưng sử dụng nhiều, Pin yếu hoặc quên sạc ĐTDĐ nên mất liên lạc ảnh hưởng lớn đến công việc của bạn. Bạn chỉ cần trong cốp xe bao giờ cũng có cục sạc theo máy. Khi cần sử dụng chỉ cắm sạc vào Bộ đổi nguồn ICEVN như cắm vào điện gia đình và sử dụng thỏa mái khi đã sạc đầy máy tự động ngắt nguồn...<br />\n	3. Bạn đi công tác xa hoặc dã ngoại yên tâm sử dụng các loại máy MP3-MP4, Radio mini..sử dụng như đang ở gia đình dùng điện lưới quốc gia..<br /><span style="color:#ff0000;">BẢO HÀNH 12 THÁNG (HOÀN TOÀN ĐỔI MỚI)</span></span></p>\n<p style="text-align:center;">\n	<br /><span style="font-size:14px;"><span style="color:#ff0000;">LIÊN HỆ CÔNG TY CỔ PHẦN TM - DV VIP TẦM NHÌN VIỆT<br />\n	ĐC: LÔ L4, ĐƯỜNG 4, KP1, P.BỬU LONG, ĐỒNG NAI, BIÊN HÒA<br />\n	EMAIL: viptamnhinviet@gmail.com<br />\n	WEB: VIPTAMNHINVIET.COM<br />\n	ĐT: 0618850747</span></span></p>\n', NULL, 'ic-doi-nguon-dien-khi-mat-dien', 'sản phẩm', 0, 5, 99000, 1, 1, NULL, NULL, NULL, NULL, 1, 11, 'viptamnhinviet'),
(20, 'IC Chống trộm xe máy', NULL, '2012-03-19 01:30:43', 'ic-chong-trom-xe-may-thumb.jpg', '', NULL, NULL, NULL, '<p>\n	<span style="font-size:14px;">CHỨC NĂNG:</span></p>\n<p>\n	<span style="font-size:14px;">* Chống chìa vạn năng ( vam phá khoá ):<br />\n	- Với chức năng này khi xe của bạn bị bẻ khoá bằng chìa vạn năng ( hoặc vam ) hệ thống sẽ ngắt nguồn điện đồng thời còi báo động và xe không nổ máy được.<br />\n	* Báo động khi bị bẻ khoá:<br />\n	- Khi xe của bạn bị bẻ khoá lập tức hệ thống sẽ báo động cho bạn biết.<br />\n	* Chống cướp xe:<br />\n	- Bạn vô ý để chìa khóa ở trên xe hoặc khi đang đi đường mà bị cướp xe chộm có khoá xe cũng không thể đi được khi chưa mở khoá từ ra và còi sẽ báo động (hú).<br />\n	- Vì Chế độ khóa tự động chống trộm này được sử dụng khi ta tắt máy xe thì lập tức chế độ bảo vệ tự động bật lên.<br />\n	* Trộm có chìa khóa cũng không đi được.</span></p>\n<p>\n	<span style="font-size:14px;">ĐẶC ĐIỂM:</span></p>\n<p>\n	<span style="font-size:14px;">- Sản phẩm được lập trình trên chip điện tử nên tránh bị kẻ gian dùng nam châm phá<br />\n	- Công tắc mở khóa là chạm vào điểm bí mật nên không sợ bị chạm khi rửa xe, và chịu được thời tiết mưa nắng bên ngoài.<br />\n	- Động tác giải mã đơn giản như vô tình chạm điểm bí mật nên không ai nghĩ rằng xe đang được bảo vệ.<br />\n	- Không hao bình, không bị hú còi khi đụng vào xe.<br />\n	- An toàn, đơn giản, dễ dàng lắp ráp.<br />\n	  - Bảo hành 06 tháng (Hoàn toàn đổi mới)   </span></p>\n<p>\n	<span style="font-size:14px;">                                                                                                                        </span></p>\n<p style="text-align:center;">\n	<span style="color:#ff0000;"><span style="font-size:14px;">LIÊN HỆ CÔNG TY CỔ PHẦN TM - DV VIP TẦM NHÌN VIỆT<br />\n	ĐC: LÔ L4, ĐƯỜNG 4, KP1, P.BỬU LONG, ĐỒNG NAI, BIÊN HÒA<br />\n	EMAIL: viptamnhinviet@gmail.com<br />\n	WEB: VIPTAMNHINVIET.COM<br />\n	ĐT: 0618850747<br />\n	 </span></span></p>\n', NULL, 'ic-chong-trom-xe-may', 'SẢN PHẨM', 0, 6, 149000, 1, 1, NULL, NULL, NULL, NULL, 1, 11, 'viptamnhinviet'),
(21, 'Sản phẩm mới Ổ cắm chống sét', NULL, '2012-03-19 01:34:37', 'san-pham-moi--cam-chong-set-thumb.jpg', '', NULL, NULL, NULL, '<p>\n	<span style="font-size:14px;"><span style="color:#ff0000;">Sau 5 năm nghiên cứu, Công ty CP Thanh Niên Việt Nam đã chế tạo thành công ổ cắm PC Care (đã đăng ký bằng sáng chế Quốc tế, đơn chấp nhận ngày 19/11/2008) với tính năng vượt trội so với các sản phẩm cùng loai như sau:</span><br />\n	- Nhịp đàn hồi theo dạng hai vòng cung có rãnh giữa kẹp chặt phích cắm điện đa năng (Tuyệt đối không làm lỏng phích cắm điện đa năng) nên không gây ra hiện tượng chập chờn di chuyển, tạo tia lửa điện gây cháy máy tính và các thiết bị điện tử khác.<br />\n	- Trong sản phẩm thiết bị có hạn chế chống sốc và sét máy tính bằng tụ (Giám định KHHS của Bộ Công an 672/C21B số ngày 17/2/2006).<br />\n	- Vỏ bằng nhựa chống cháy.<br />\n	- Bảo vệ, nâng tuổi thọ cho các thiết bị điện.</span></p>\n<p style="text-align:center;">\n	<br /><span style="font-size:14px;"><span style="color:#ff0000;">LIÊN HỆ CÔNG TY CỔ PHẦN TM - DV VIP TẦM NHÌN VIỆT<br />\n	ĐC: LÔ L4, ĐƯỜNG 4, KP1, P.BỬU LONG, ĐỒNG NAI, BIÊN HÒA<br />\n	EMAIL: viptamnhinviet@gmail.com<br />\n	WEB: VIPTAMNHINVIET.COM<br />\n	ĐT: 0618850747</span></span></p>\n', NULL, 'san-pham-moi-o-cam-chong-set', 'sản phẩm', 0, 7, 119000, 1, 1, NULL, NULL, NULL, NULL, 1, 12, 'viptamnhinviet'),
(22, 'Đèn năng lượng mặt trời', NULL, '2012-03-19 01:38:05', 'en-nang-luong-mat-troi-thumb.jpg', '', NULL, NULL, NULL, '<p>\n	<span style="font-size:14px;">Đèn năng lượng mặt trời, trang trí nhà, ban công, hàng rào, sân vườn, biệt thự, khách sạn, resort...<br />\n	Đèn tự nạp điện bằng năng lượng mặt trời, tự động bật khi trời tối, không phí điện, hiện đại, thân thiện môi trường, đèn LED siêu sáng, chịu nước. Màu sáng trắng, đỏ, vàng, xanh và đổi màu theo yêu cầu của khách hàng...<br />\n	- Cường độ ánh sáng cao.<br />\n	- Thời gian sạc 6 - 8 giờ<br />\n	- Thời gian chiếu sáng : 24 giờ<br />\n	- Không dây dẫn<br />\n	- Lắp đặt đơn giản, thuận tiện</span></p>\n<p style="text-align:center;">\n	<br /><span style="font-size:14px;"><span style="color:#ff0000;">LIÊN HỆ CÔNG TY CỔ PHẦN TM - DV VIP TẦM NHÌN VIỆT<br />\n	ĐC: LÔ L4, ĐƯỜNG 4, KP1, P.BỬU LONG, ĐỒNG NAI, BIÊN HÒA<br />\n	EMAIL: viptamnhinviet@gmail.com<br />\n	WEB: VIPTAMNHINVIET.COM<br />\n	ĐT: 0618850747</span></span></p>\n', NULL, 'den-nang-luong-mat-troi', 'sản phẩm', 0, 8, 499000, 1, 1, NULL, NULL, NULL, NULL, 1, 12, 'viptamnhinviet'),
(23, ' Công nghệ tiết kiệm gas', NULL, '2012-03-19 01:48:30', 'cong-nghe-tiet-kiem-gas-thumb.jpg', 'cong-nghe-tiet-kiem-gas.jpg', NULL, NULL, NULL, '<p>\n	<br /><span style="font-size:14px;">Chúng tôi chuyên cung cấp các sản phẩm mang tính giải pháp cao về tiết kiệm năng lượng ứng dụng trong đời sống sinh hoạt hàng ngày hoặc sản xuất kinh doanh của Quý khách hàng.</span></p>\n<p>\n	<span style="font-size:14px;">Chúng tôi xin trân trọng giới thiệu đến Quý khách hàng một dòng sản phẩm mới sau :<br />\n	Thiết bị tiết kiệm gas – EcoMaX.</span></p>\n<p>\n	<span style="font-size:14px;">EcoMaX là thiết bị được lắp đặt vào bếp gas công nghiệp hoặc bếp gas gia đình nhằm tác động trực tiếp lên chuỗi phân tử Hydrocacbon trong gas làm cho Oxy dễ tiếp xúc với gas hơn, nhờ đó gas dễ cháy và cháy triệt để hơn. Với những tính năng đạt được sau :</span></p>\n<p>\n	<span style="font-size:14px;">            - Ngọn lửa cháy xanh và đều hơn.<br />\n	            - Tăng hiệu suất nhiệt của bếp gas.<br />\n	            - Giảm thời gian đun nấu.<br />\n	            - Giảm mùi gas sống. Giảm khí thải độc hại.<br />\n	            - Tiết kiệm đến 30% gas.<br />\n	            - An toàn hơn với bộ phận chống cháy ngược được thiết kế bên trong.<br />\n	            - Dễ dàng lắp đặt, không cần bảo trì.<br />\n	            - Được chế tạo bằng thép không rỉ.</span></p>\n<p>\n	<strong><span style="font-size:14px;">EcoMaX – Tiết kiệm 30% chi phí cho bạn.<br />\n	+ Sản phẩm được bảo hiểm trên phạm vi toàn quốc bởi bảo hiểm Viễn Đông.</span></strong></p>\n<p>\n	 </p>\n<p>\n	<img alt="" src="/public/userfiles/images/viptamnhinviet/images/20111116_1414358.jpg" style="width:680px;height:936px;" /></p>\n<p>\n	<img alt="" src="/public/userfiles/images/viptamnhinviet/images/2011-11-16_141410.jpg" style="width:680px;height:955px;" /></p>\n<p>\n	<img alt="" src="/public/userfiles/images/viptamnhinviet/images/2011-11-16_141504.jpg" style="width:680px;height:946px;" /></p>\n<br /><p>\n	 </p>\n<p>\n	 </p>\n<p style="text-align:center;">\n	<span style="font-size:18px;"><strong>GIẢI PHÁP BÀI TOÁN KINH TẾ</strong></span></p>\n<p>\n	<br /><br />\n	  <span style="font-size:14px;">1. Đối với hộ gia đình, quán ăn nhỏ, ...                                                                                                                                                      <br />\n	        Dùng bình gas 12 kg dùng sản phẩm: Ecogas-E25 = 390.000đMỗi tháng bạn tốn 340.000đ cho 01 bình gas . Khi bạn dùng Sản phẩm thiết bị tiết kiệm gas Ecogas giúp bạn tiết kiệm 35% lượng gas tương đương:                                                          <br />\n	       119.000đ / tháng x 12 tháng = 1.428.000đ/năm.<br />\n	       Sản phẩm bảo hành 2 năm và độ bền lên đến 15 năm. Vậy trong 15 năm bạn chỉ phải bỏ ra 390.000đ cho sản phẩm. Nhưng sẽ giúp ta kiết kiệm được:                                                          <br />\n	       1.428.000đ x 15 năm = 21.420.000đ/15 năm.<br />\n	   2. Đối với nhà hàng, khách sạn.  bếp ăn công nghiệp…                                                                                                                                                                                                                                <br />\n	        Dùng Ecogas-E32 = 990.000đ; EcogaS E50= 1.500.000đ.Cơ quan của bạn (nhà hàng , khách sạn, bếp ăn công nghiệp, lò nung, sấy…) phải chi trả tương đối lớn cho chi phí dùng gas hàng năm. Vậy khi dùng sản phẩm Ecogas E32 và E50 giúp bạn tiết kiệm được 35% lượng gas tiêu thụ tương đương hàng năm có thể giúp tiết kiệm được một khoảng tiền không hề nhỏ. Vậy với thời gian bảo hành 02 năm và độ bền của sản phẩm là 15 năm thì sẽ giúp bạn tiết kiệm lớn đến bao nhiêu ??? THIẾT BỊ TIẾT KIỆM GAS ECOGAS giúp bạn tiết kiệm đến 35% lượng gas tiêu thụ. Một giải pháp tiết kiệm năng lượng và mang đến lợi ích cực lớn về kinh tế.<br />\n	GIÁ BÁN LẺ CÔNG BỐ TRÊN TOÀN QUỐC 390.000VNĐ MỘT THIẾT BỊ<br />\n	CÔNG TY CẦN NHIỀU ĐẠI LÍ PHÂN PHỐI TRÊN TOÀN QUỐC</span></p>\n<p style="text-align:center;">\n	<br /><span style="font-size:14px;"><span style="color:#ff0000;">LIÊN HỆ CÔNG TY CỔ PHẦN TM - DV VIP TẦM NHÌN VIỆT<br />\n	ĐC: LÔ L4, ĐƯỜNG 4, KP1, P.BỬU LONG, BIÊN HÒA, ĐỒNG NAI<br />\n	EMAIL: viptamnhinviet@gmail.com<br />\n	WEB: VIPTAMNHINVIET.COM    <br />\n	ĐT: 0618850747</span></span></p>\n', NULL, 'cong-nghe-tiet-kiem-gas', 'sản phẩm liên kết', 0, 9, 390000, 1, 1, NULL, NULL, NULL, NULL, 1, 11, 'viptamnhinviet'),
(24, 'Bếp điện quang _ bếp hồng ngoại', NULL, '2012-03-19 01:59:54', 'bep-dien-quang--bep-hong-ngoai-thumb.jpg', 'bep-dien-quang--bep-hong-ngoai.jpg', NULL, NULL, NULL, '<p>\n	<span style="font-size:14px;">Rubiluck - hc12 :<br />\n	Công suất      : 0,2 kw - 1,8 kw<br />\n	Điện áp           : 80 - 230 V<br />\n	Trọng lượng   : 2,5 kg<br />\n	Tần số             : 50HZ<br /><span style="color:#0000cd;">Giá bán trên thị trường: 3 999 000 VNĐ</span><br /><span style="color:#ff0000;">Giá bán tại công ty vip tầm nhìn việt chỉ còn: 3 200 000 VNĐ<br />\n	Hiện nay công ty khuyến mãi tặng kèm bộ sản phẩm.<br />\n	"Bộ nồi Orison 3cái-3D, N16 + N20+<br />\n	N 24, nắp inox, quai đũa, đích soán dẫn nhiệt nhanh thức ăn chín điều tiết kiệm gas và điện, sử dụng các loại bếp"</span></span></p>\n<p>\n	 </p>\n<p>\n	<span style="font-size:14px;"><span style="color:#ff0000;"><img alt="" src="/public/userfiles/images/viptamnhinviet/images/Picture3.jpg" style="width:550px;height:325px;" /></span></span></p>\n<p style="text-align:left;">\n	<span style="font-size:14px;"><span style="color:#ff0000;">Sản phẩm được bảo hành lên đến 24 tháng, bảo trì vĩnh viễn</span>.<br />\n	Bếp hồng ngoại Rubiluck là dòng sản phẩm chất lượng cao điều khiển bằng phím cảm ứng.<br />\n	Họa tiết hoa văn trống đồng trang nhã, đậm đà bản sắc dân tộc Việt .<br />\n	Với 8 chức năng :  Nướng, chiên - xào, nấu lẩu, nấu súp, đun nước, giữ ấm, khóa phím, hẹn giờ.<br /><span style="color:#ff0000;">Đặc biệt</span> với chức năng nướng rất tốt , có thể dùng để nướng thịt, nướng mực, quay gà và không kén nồi đã tạo sự khác biệt cao giữa bếp hồng ngoại với bếp điện từ.<br />\n	Mặt bếp cấu tạo bằng vật liệu chuyên biệt có độ bền cao, chịu được nhiệt độ lên tới 800 độ C.<br />\n	Có chức năng tự bảo vệ khi quá dòng, quá nhiệt .<br /><span style="color:#ff0000;">Đặc biệt</span> với công nghệ dùng sợi đốt carbon giúp tuổi thọ sản phẩm gấp nhiều lần so với sản phẩm cùng loại khác.<br />\n	Mặt bếp liền với phím bấm cảm ứng thể hiện đẳng cấp vượt trội,<br />\n	Chức năng khóa trẻ em tự động sau 8 giây giúp bảo vệ an toàn tuyệt đối<br />\n	Chức năng hẹn giờ giúp các bà nội trợ chủ động thời gian với các món hầm và kho.<br />\n	Mặt điều khiển thoáng với những tùy chọn kèm hình ảnh giúp dễ dàng sử dụng.<br />\n	Nấu được tất cả các nồi, kể cả nồi đất .</span></p>\n<p style="text-align:center;">\n	<br /><br /><span style="font-size:14px;">                    <span style="color:#ff0000;"> LIÊN HỆ CÔNG TY CỔ PHẦN TM - DV VIP TẦM NHÌN VIỆT<br />\n	                     ĐC: LÔ L4, ĐƯỜNG N1, KP1, P.BỬU LONG, ĐỒNG NAI, BIÊN HÒA<br />\n	                     EMAIL: viptamnhinviet@gmail.com<br />\n	                     WEB: VIPTAMNHINVIET.COM<br />\n	                     ĐT: 0618850747</span></span></p>\n', NULL, 'bep-dien-quang-bep-hong-ngoai', 'sản phẩm liên kết', 0, 10, 3200000, 1, 1, NULL, NULL, NULL, NULL, 1, 12, 'viptamnhinviet'),
(25, 'Quả Giặt Sinh Học Biowashball THUỴ SỸ', NULL, '2012-03-19 02:16:02', 'qua-giat-sinh-hoc-biowashball-thu-s-thumb.jpg', 'qua-giat-sinh-hoc-biowashball-thu-s.jpg', NULL, NULL, NULL, '<p>\n	<br /><span style="font-size:14px;">- 1000 lần = 3 năm sử dụng.<br /><span style="color:#ff0000;">- Giặt không dùng bột giặt.</span><br />\n	- Tiết kiệm chi phí.<br />\n	- Diệt khuẩn , bảo vệ da.<br />\n	- Thân thiện môi trường.<br />\n	- Bảo vệ quần áo không bị phai mục ví hoá chất.<br /><span style="color:#ff0000;">- Đã được tổng cục đo lường tiêu chuẩn chất lượng VIỆT NAM xác nhận về khả năng giặt tẩy vượt trội.</span><br /><span style="color:#ff0000;">- Biowashball càng giặt càng sạch.</span><br /><strong>Tính năng vượt trội, lợi ích vô biên !</strong><br /><strong>- Tiết kiệm tiền bạc, thời gian</strong>: Với tuổi thọ 3 năm, tương đương 120Kg Bột Giặt, giá bán lẻ chính hãng là 490.000 đồng một quả như hiện nay, thì Biowashball giúp gia đình bạn tiết kiệm tới 80% chi phí so với cách giặt tẩy thông thường. Người ta tính rằng tại Mỹ, bình quân một gia đình sẽ tiết kiệm được ít nhất 1.000 USD chi phí bột giặt mỗi năm nếu sử dụng Biowashball. Đó là chưa tính đến tiết kiệm về điện nước, vì Biowashball sử dụng ít điện và nước hơn.<br /><br /><strong>- Cách sử dụng:</strong> Cho quả giặt Biowashball cùng đồ cần giặt vào trong lòng máy giặt, chọn quy trình giặt cho máy giặt giống như giặt với bột giặt ( hiệu quả cao ở chế độ giặt ngâm, và vẫn dùng nước xả cho thơm  ). Sau khi máy giặt bơm đủ nước vào lòng máy, bạn có thể sử dụng chức năng Pause (tạm dừng) để ngâm đồ trong vòng 30 phút cho hiệu quả giặt cao hơn. Đối với vết bẩn khó giặt ở cổ áo, tay áo nên vò trước hoặc cho 1 ít bột giặt để giặt sạch chúng. Một quả giặt chỉ giặt được &lt;5Kg quần áo cho mỗi lần giặt, để giặt từ 5-8kg quần áo bạn phải dùng 2 quả hoặc kết hợp thêm bột giặt. Dùng cho tất cả các loại máy giặt gia đình.<br /><br />\n	- Có thể được sử dụng để giặt tay (giặt tay ngâm 1 giờ với bóng trước khi giặt)</span></p>\n<p>\n	<span style="font-size:14px;">- Bảo vệ sức khỏe, không gây dị ứng cho da : Biowashball loại bỏ liên kết đến phản ứng gây dị ứng trên da do các hoá chất còn lưu lại trên quần áo sau khi giặt.<br /><br />\n	- Bạn cũng có thể đặt một trong Biowashball tủ lạnh của bạn để duy trì sự tươi mát của trái cây của bạn, rau, thịt và cá.</span></p>\n<p>\n	<span style="font-size:14px;"><strong>- Diệt khuẩn </strong>: Những hạt gốm nhỏ bên trong Biowashball phát ra tia hồng ngoại xa với bước sóng dài cùng với các tia ion âm hút bay vết bẩn ra khỏi sợi vải đồng thời diệt khuẩn giúp tiêu diệt các loại vi khuẩn bám trên quần áo và khử mùi hôi. Biowashball có khả năng diệt trên 5.000 loại Vi khuẩn .</span></p>\n<p>\n	<span style="font-size:14px;">- Kéo dài tuổi thọ quần áo, giữ màu sắc luôn tươi mới : Vì không chịu tác động của hoá chất, nên không có tác dụng phụ ảnh hưởng đến các đặc tính hoá lý và thẩm mỹ của quần áo.<br />\n	 <br />\n	- Bảo vệ môi trường, không gây ô nhiễm : Biowashball giúp bảo vệ nước và đất nước vì chúng không chứa Phosphates mà làm tổn hại môi trường.</span></p>\n<p>\n	<span style="font-size:14px;">- Giúp quần áo không bị hôi do thiếu ánh sáng trong mùa đông.</span></p>\n<p>\n	<br /><span style="font-size:14px;"><strong>- Nguyên tắc hoạt động</strong>: Tia hồng ngoại xa phát ra từ các hạt gốm, chia nhỏ các phân tử nước, chất bẩn, dầu và các chất béo (dầu thức ăn), nhiên liệu ( xăng , dầu máy, dầu lửa)… và đồng thời kích thích, làm tăng hoạt động của các phân tử này -&gt; Nước sẽ thấm sâu vào các sợi vải (tăng tính thấm của nước) các chất bẩn mất dần liên kết và giảm khả năng bám dính trên quần áo. Đồng thời, với lực hút của các ion- được tạo ra trong môi trường PH 10 (tương tự bột giặt) giúp đánh bật các chất bẩn đã mất dần liên kết nói trên ra khỏi quần áo, giúp cho quần áo trở nên mềm mại, tươi sáng, thơm mát.</span></p>\n<p>\n	<span style="font-size:14px;">- Biowashball có hình dạng là một quả cầu nhựa mềm, với kích thước 100 x 90mm, lõi của Biowashball là các loại hạt gốm chứa rất nhiều TM (tổng hợp hiệu ứng câu trúc phân tử - Total effective Micro organisms):<br />\n	- Với 4 loại hạt gốm đặc biệt phát ra ion  (-) và bức xạ hồng ngoại xa, Biowashball đánh bật các vết bẩn cứng đầu nhất mà không cần sử dụng hoá chất giặt tẩy ( tiết kiệm chi phí rất lớn) đồng thời bảo vệ da , môi trường, bảo vệ quần áo không bị phai - mục và diệt khuẩn ký sinh trên quần áo.<br /><span style="color:#ff0000;"><strong>*Lưu ý</strong></span>: Trước khi sử dụng phải khởi động quả giặt bằng cách phơi dưới ánh nắng mặt trời từ 2- 4 tiếng, sau mỗi tháng phải lập lại quá trình trên.<br /><br /><span style="font-size:18px;"><span style="color:#ff0000;">Biowashball THUỴ SỸ</span></span></span></p>\n<p style="text-align:center;">\n	<span style="font-size:14px;">   </span><span style="font-size:14px;"><img alt="" src="/public/userfiles/images/viptamnhinviet/images/Tinh%20nang%20cua%20cac%20hat%20gom%20.jpg" style="width:700px;height:824px;" /></span></p>\n<p style="text-align:center;">\n	<span style="font-size:14px;"><span style="color:#0000cd;"><span style="font-size:18px;"><strong>Giấy chứng nhận của cơ quan chức năng VIỆT NAM và HÀN QUỐC.</strong></span></span></span></p>\n<p>\n	<img alt="" src="/public/userfiles/images/viptamnhinviet/images/Giay%20chung%20nhan%20biowashball.jpg" style="width:700px;height:963px;" /></p>\n<p>\n	<img alt="" src="/public/userfiles/images/viptamnhinviet/images/2007-12_BIOWASHBALL_CE.jpg" style="width:700px;height:1041px;" /><br style="font-size:14px;text-align:center;" /><span style="font-size:14px;"><span style="color:#0000cd;"><span style="font-size:18px;">Hỏi - Đáp VỀ SẢN PHẨM</span><br />\n	“Đây là sản phẩm tốt nhất mà tôi từng sử dụng. Nó làm sạch quần áo, và tôi thích sự chống khuẩn trong thực tế của nó. Nhờ sản phẩm vĩ đại và thân thiện với môi trường như thế này khiến tôi thực sự không thể nghĩ rằng lại có một sản phẩm nào tốt hơn với mọi người như thế. Nó sẽ tiết kiệm rất nhiều tiền bạc cho chúng ta.”<br />\n	Michelle Williams<br />\n	Lansing, MI</span><br />\n	....................................................................................................................................<br />\n	     Biowasball có giặt sạch quần áo như bột giặt giống như quảng cáo hay không ?<br />\n	     Biowashball là sản phẩm giặt tẩy công nghệ sinh học tiến tiến, đã được bán rộng rãi tại 30 Quốc gia như : Mỹ, Anh, Pháp, Đức, Thụy Sỹ, Úc, Đan Mạch , Singapore, HongKong.... trên 3 năm qua, hàng triệu người sử dụng đều rất hài lòng với Biowashball. Nếu không có chất lượng hay thông tin sai sự thật  thì sản phẩm không thể bán rộng rãi và được ưa chuộng ở các nước tiên tiến có hệ thống pháp lý bảo vệ quyền lợi khách hàng cao như Mỹ và Châu Âu được, Quí khách có thể tham khảo các thông tin Biowashball trên thế giới mà chúng tôi đã hệ thống  tại đây  hoặc thông qua các công cụ tìm kiếm .  Tổng Cục Đo Lường Chất Lượng Việt Nam đã kiểm nghiệm và chứng nhận kết quả giặt tẩy của Biowashball  chi tiết ...<br />\n	....................................................................................................................................<br />\n	     Sản phẩm có phiếu bảo hành đi kèm , nếu có thì  bảo hành bao lâu ?<br />\n	     Mỗi sản phẩm quả giặt Biowashball đều có 01 phiếu bảo hành đi kèm, khách hàng phải giữ phiếu để đảm bảo thực hiện việc bảo hành theo đúng quy định, sản phẩm được bảo hành 12 tháng .<br />\n	....................................................................................................................................<br />\n	     Quả giặt Biowashball giúp bảo vệ môi trường?<br />\n	     Quả giặt sinh học Biowashball rất thân thiện với môi trường. Do không chứa các hóa chất độc hại nên các chất mà quả bóng thải ra sẽ không gây hại cho nguồn nước, đất và sông ngòi. Vỏ nhựa đặc biệt bên ngoài Biowashball cũng được nghiên cứu với mục đích bảo vệ môi trường và sức khỏe con người với khả năng tái sinh và đạt tiêu chuẩn an toàn sử dụng của nhiều quốc gia trên thế giới.<br />\n	....................................................................................................................................<br />\n	     Tại sao quả giặt Biowashball lại giặt sạch quần áo mà không dùng bột giặt ?<br />\n	     Tia hồng ngoại xa phát ra từ các hạt gốm, chia nhỏ các phân tử nước, chất bẩn, dầu và các chất béo (dầu thức ăn), nhiên liệu ( xăng , dầu máy, dầu lửa)… và đồng thời kích thích, làm tăng hoạt động của các phân tử này -&gt; Nước sẽ thấm sâu vào các sợi vải (tăng tính thấm của nước) các chất bẩn mất dần liên kết và giảm khả năng bám dính trên quần áo. Đồng thời, với lực hút của các ion- được tạo ra trong môi trường PH 10 (tương tự bột giặt) giúp đánh bật các chất bẩn đã mất dần liên kết nói trên ra khỏi quần áo.<br />\n	....................................................................................................................................<br />\n	     Sử dụng quả giặt Biowashball như thế nào?<br />\n	     Rất đơn giản, chỉ cần đưa quả cầu giặt Biowashball cùng quần áo vào trong lồng giặt, chọn chu trình giặt  và bấm nút. Thế là xong! Bỏ quả giặt ra khỏi lồng giặt và để ở nơi khô ráo sau khi giặt. Phơi quả giặt 2- 3 h sau mỗi tháng sử dụng.<br />\n	....................................................................................................................................<br />\n	     Sử dụng quả giặt Biowashball có lợi gì cho sức khỏe?<br />\n	     Các kiểm nghiệm tại các tổ chức có uy tín cho thấy Biowashball đạt được các chỉ số rất cao về khả năng làm sạch, độ trắng, tính diệt khuẩn, và an toàn với sức khoẻ. Do không dùng hóa chất kết hợp cùng các hạt gốm có tác dụng diệt khuẩn giúp bảo vệ làn da của bạn, đặc biệt làn da nhậy cảm của phụ nữ và trẻ em.<br />\n	....................................................................................................................................<br />\n	     Có thể sử dụng quả giặt Biowashball để giặt quần áo của trẻ em được không?<br />\n	     Rất tốt khi sử dụng Biowashball để giặt quần áo trẻ em vì Biowashball không chứa hóa chất và diệt khuẩn, khử mùi quần áo, bảo vệ làn da trẻ em.<br />\n	....................................................................................................................................<br />\n	     Khi sử dụng quả giặt Biowashball có được dùng thêm nước xả vải không?<br />\n	     Quả giặt Biowashball tạo ra mùi thơm mát tự nhiên, và làm mềm sợi vải sau khi giặt, tuy nhiên chúng ta có thể sử dụng bình thường với nước xả vải mà mình thích như đối với bột giặt.<br />\n	....................................................................................................................................<br />\n	     Biowashball có thể sử dụng với tất cả các loại máy giặt ?<br />\n	     Quả bóng giặt Biowashball được thiết kế dùng cho tất cả các loại máy giặt gia đình : cửa đứng, cửa ngang và mày giặt công nghiệp.<br />\n	....................................................................................................................................<br />\n	     Quả bóng giặt có thể sử dụng khi giặt tay không?<br />\n	     Quả giặt Biowashball có thể dùng khi giặt tay, bạn có thể ngâm quần áo với quả giặt Biowashball 30 phút trước khi giũ quần áo. <br />\n	....................................................................................................................................<br />\n	     Có làm ảnh hưởng đến quần áo khi giặt ?<br />\n	     Quả giặt Biowashball không những không làm ảnh hưởng gì đến quần áo khi giặt mà trái lại còn bảo vệ quần áo của bạn luôn tươi mới không bị bạc phai, sờn màu do không tiếp xúc với hóa chất.<br />\n	....................................................................................................................................<br />\n	     Giữ quần áo không bị phai màu ?<br />\n	     Với phương pháp giặt tẩy hoàn toàn sạch, không có hóa chất, Quả giặt Biowashball bảo vệ quần áo không bị phai màu do chất tẩy rửa.<br />\n	....................................................................................................................................<br />\n	     Có gây tiếng ồn khi sử dụng và ảnh hưởng đến máy giặt không?<br />\n	     Hoàn toàn yên lặng như khi bạn sử dụng hàng ngày với bột giặt, không va đập, không gây bất cứ ảnh hưởng nào đến máy giặt của bạn.<br />\n	....................................................................................................................................<br />\n	     Có thể tái sử dụng nước giặt quần áo sau khi giặt ?<br />\n	     Do không sử dụng hóa chất, nước giặt quần áo ( khi không sử dụng nước xả vải) có thể được sử dụng để tưới cây, xả nhà vệ sinh… do không chứa chất hóa học và không gây ô nhiễm.<br />\n	....................................................................................................................................<br />\n	     Tuổi thọ của quả giặt Biowashball là 3 năm sử dụng ?<br />\n	      Mỗi quả giặt Biowashball có thể sử dụng trên 1000 lần giặt, nếu ngày nào chúng ta cũng giặt 1 lần thì sẽ sử dụng liên tục được khoảng 3 năm. Đương nhiên sử dụng với tần suất ít hơn thì tuổi thọ của Biowashball sẽ được lâu hơn.<br />\n	....................................................................................................................................<br />\n	     Tôi nghe nói cho Biowashball vào tủ lạnh giúp thực phẩm tươi lâu, làm sao Biowashball có thể làm được việc này và nó có độc hại gì cho thực phẩm hay không ?<br />\n	      Biowashball chứa các hạt gốm phát ra tia ion âm có bước sóng dài, các bước sóng này có lợi cho con người trong y khoa còn có thể sự dụng trị bệnh, nhờ vậy mà nó có khả năng diệt khuẩn và khử mùi, để trong tủ lạnh vi khuẩn bị tiêu diệt do đó mà thực phẩm của bạn tươi lâu, tủ lạnh không còn mùi hôi. Buổi tối không giặt mình tranh thủ cho vào tủ lạnh thì còn ai thông minh và hữu ích như Biowashball nữa!<br />\n	....................................................................................................................................<br />\n	     Chế độ bảo dưỡng cho quả bóng giặt này thế nào?<br />\n	     Bỏ quả giặt ra khỏi lồng giặt và để ở nơi khô ráo sau khi giặt. Phơi quả giặt (như phơi quần áo) 2- 3 h sau mỗi tháng sử dụng, hoặc phơi thường xuyên sau khi tranh thủ để trong tủ lạnh  .<br />\n	....................................................................................................................................<br />\n	     Sao tôi thấy quảng cáo là Biowashball nhập khẩu từ Châu Âu mà trên sản phẩm lại ghi "made in Korea " ?<br />\n	     Sản phẩm Biowashball thuộc quyền sở hữu của tập Đoàn Emker Thụy Sỹ và được sản xuất theo tiêu chuẩn-chất lượng Châu Âu, được chúng tôi nhập khẩu trực tiếp từ Châu Âu. Vì nhà máy sản xuất Biowashball đặt tại Hàn Quốc, về nguyên tắc bắt buộc trên sản phẩm phải ghi rõ sản xuất tại Hàn Quốc (made in Korea).</span></p>\n<p style="text-align:center;">\n	<br /><br /><span style="font-size:14px;">                <span style="color:#ff0000;">   LIÊN HỆ CÔNG TY CỔ PHẦN TM - DV VIP TẦM NHÌN VIỆT<br />\n	                     ĐC: LÔ L4, ĐƯỜNG N1, KP1, P.BỬU LONG, ĐỒNG NAI, BIÊN HÒA<br />\n	                     EMAIL: viptamnhinviet@gmail.com<br />\n	                     WEB: viptamnhinviet.com<br />\n	                     ĐT: 0618 850 747</span></span></p>\n', NULL, 'qua-giat-sinh-hoc-biowashball-thuy-sy', 'sản phẩm liên kết', 0, 11, 450000, 1, 1, NULL, NULL, NULL, NULL, 1, 12, 'viptamnhinviet'),
(26, 'Hộp bẫy gián !', NULL, '2012-03-19 02:42:24', 'hop-bay-gian--thumb.jpg', '', NULL, NULL, NULL, '<p>\n	<span style="font-size:14px;"> Gián là loại côn trùng có hại cho sinh hoạt hàng ngày và sức khỏe của con người vì chúng có tập tính sống ở những nơi bẩn thỉu, hủy hoại và làm thức ăn bị nhiễm khuẩn, đồng thời có thể gặm nhấm làm hư hỏng một số vật dụng như quần áo, vải vóc, bìa gáy sách vở...<br />\n	   Đặc biệt, gián có mùi hôi rất khó chịu và đọng lại rất lâu trên những vật dụng mà nó đi qua khiến cho bạn ghê người. Vì vậy hộp bẫy gián này là một giải pháp giúp bạn loại bỏ được loài côn trùng này.<br />\n	   Hộp bẫy gián này là nghiên cứu mới nhất cho phép bẫy gián một cách an toàn, hiệu quả mà không dùng đến bất kỳ chất hóa học hay dùng đến điện và đặc biệt là không gây ô nhiễm.</span></p>\n<p>\n	<span style="font-size:14px;"><img alt="" src="/public/userfiles/images/viptamnhinviet/images/1277484383-hop-bay-gian-2.jpg" style="width:400px;height:341px;" /></span></p>\n<p>\n	<span style="font-size:14px;">   Chỉ cần đặt một ít thức ăn như bánh, kẹo vào giữa hộp bẫy gián, tự động gián sẽ chui vào hộp và lập tức bị xập bẫy, không ra được. Bạn có thể đặt hộp bẫy gián này ở trong tủ, trong phòng ngủ hay trong nhà vệ sinh… và bất kỳ đâu có gián.<br /><strong>Giá bán sản phẩm:  55.000 - 90.000 tùy số lượng<br />\n	Chi tiết liên hệ Mrs.Cầm 0919071888(Chi nhánh viptamnhinviet Phan Thiết)<br />\n	Chi tiết liên hệ Mrs.Quỳnh 0917486575(Sài Gòn)</strong></span></p>\n', NULL, 'hop-bay-gian-', 'sản phẩm', 0, 12, NULL, 0, 0, NULL, NULL, NULL, NULL, 1, 11, 'viptamnhinviet'),
(27, 'Máy cắt lông xù và hút bụi quần áo !', NULL, '2012-03-19 02:49:05', 'may-cat-long-xu-va-hut-bui-quan-ao--thumb.JPG', '', NULL, NULL, NULL, '<p>\n	<span style="font-size:14px;">Điểm nổi bật<br />\n	    Sản phẩm rất thích hợp với các sản phẩm len, dạ, chất liệu cotton,...<br />\n	    Dễ sử dụng, an toàn.<br />\n	    Kiểu dáng đẹp, màu sắc trang nhã, trẻ trung.<br />\n	    Thiết kế nhỏ gọn, với kích thước 8cm x 8cm x 4cm.<br />\n	    Dùng năng lượng pin tiểu.<br />\n	    Sản phẩm có thể dùng làm quà tặng.<br />\n	    Xuất xứ: Trung Quốc.<br />\n	    Sản phẩm bảo hành 03 tháng, 1 đổi 1 trong vòng 1 tháng nếu sản phẩm bị lỗi do nhà sản xuất.<br />\n	Giới thiệu chi tiết<br />\n	Máy cắt lông xù trên quần áo được thiết kế nhỏ gọn, giúp bạn dễ dàng cắt sạch đi những phần lông bị xù trên quần áo. Rất đơn giản, bạn chỉ cần bật máy lên và chà nhẹ lên chỗ áo quần cần cắt lông bị xù. Sau khi dùng xong chỉ cần tháo nắp hộp ra và đổ rác.<br />\n	Sản phẩm sẽ giúp cho đồ của chúng ta trở lại như mới sau khi được cắt sạch những phần lông bị xù trên áo len, khăn choàng, vớ, chăn...Với những chiếc áo có lông quá dài, bạn có thể tháo rời chiếc nắp đậy để việc cắt lông được dễ dàng và hiệu quả hơn.</span></p>\n<p>\n	<span style="font-size:14px;"><img alt="" src="/public/userfiles/images/viptamnhinviet/images/extendImage_2585_s2.jpg" style="width:496px;height:300px;" /></span></p>\n<p>\n	<span style="font-size:14px;"><img alt="" src="/public/userfiles/images/viptamnhinviet/images/extendImage_2585_3.JPG" style="width:496px;height:300px;" /></span></p>\n<p>\n	<span style="font-size:14px;"><img alt="" src="/public/userfiles/images/viptamnhinviet/images/extendImage_2585_3.JPG" style="width:496px;height:300px;" /><br /><br /><strong>Chi tiết liên hệ Mrs.Cầm 0919071888(Chi nhánh viptamnhinviet Phan Thiết)<br />\n	Chi tiết liên hệ Mrs.Quỳnh 0917486575(Sài Gòn)<br />\n	Giá thị trường: 200.000<br />\n	Giá bán sản phẩm: 125.000</strong></span></p>\n', NULL, 'may-cat-long-xu-va-hut-bui-quan-ao-', 'sản phẩm', 0, 13, 125000, 0, 0, NULL, NULL, NULL, NULL, 1, 11, 'viptamnhinviet'),
(28, 'Iphone mới 100% sắp về, giá sốc', NULL, '2012-03-19 02:51:52', 'iphone-moi-100-sap-ve-gia-soc-thumb.jpg', 'iphone-moi-100-sap-ve-gia-soc.jpg', NULL, NULL, NULL, '<p>\n	 </p>\n<p>\n	<span style="font-size:14px;">Điểm nổi bật<br />\n	   Kiểu dáng Kiểu thẳng<br />\n	Số sim sử dụng 2 Loại màn hình Cảm ứng<br />\n	Kích thước màn hình 3.5inch<br />\n	Thẻ nhớ hỗ trợ MicroSD Tính năng nổi bật<br />\n	• Chụp ảnh• Ghi âm• Quay Video<br />\n	Kết nối không dây • Bluetooth<br />\n	• GPRS• Kiểu khác<br />\n	Cổng giao tiếp • USB• MicroUSB<br />\n	nguyên hộp: pin, sạc, tai nghe,<br />\n	cáp kết nối máy tính, sách hướng dẩn...<br />\n	Hàng bảo hành 1 năm</span></p>\n<p>\n	<strong><span style="font-size:14px;">Chi tiết liên hệ Mrs.Cầm 0919071888(Chi nhánh viptamnhinviet Phan Thiết)<br />\n	Chi tiết liên hệ Mrs.Quỳnh 0917486575 (Sài Gòn)<br />\n	Giao hàng tận nơi<br />\n	Giá bán: 1.500.000-1.600.000</span></strong></p>\n', NULL, 'iphone-moi-100-sap-ve-gia-soc', 'sản phẩm', 0, 14, 1500000, 0, 0, NULL, NULL, NULL, NULL, 1, 11, 'viptamnhinviet'),
(33, 'Máy uốn tóc Hello Kitty', NULL, '2012-03-19 19:26:03', 'may-uon-toc-hello-kitty-thumb.jpg', '', NULL, NULL, NULL, '<p>\n	   Bạn luôn muốn thay đổi phong cách cho mái tóc của mình? Bạn đang sở hữu một mái tóc thẳng dài? Đôi lúc bạn muốn có một mái tóc uốn sang trọng, trẻ trung với nhiều kiểu khác nhau?... rất đơn giảm, chỉ cần một Máy uốn tóc Hello Kitty nhỏ nhắn, xinh xắn là bạn có thể hoàn toàn tự tin khi xuống phố hay xuất hiện bất cứ nơi đâu.<br />\n	 Với kích thước nhỏ, gọn, nhẹ… Máy uốn tóc Hello Kitty  có thể trở thành người bạn, luôn có mặt trong túi xách để cùng bạn “đi du lịch” hay đến bất kì nơi đâu. </p>\n<p style="text-align:center;">\n	<img alt="" src="/public/userfiles/images/viptamnhinviet/images/khuyen-mai-vang_vn-may-duoi-toc-07122011-content-004.jpg" style="width:500px;height:350px;" /></p>\n<p>\n	Mẫu mã đẹp, đáng yêu cùng gam màu hồng nữ tính. Kiểu dáng mèo Kitty xinh xắn dễ thương, Máy uốn tóc Hello Kitty là dụng cụ làm đẹp đáng yêu dành cho phái nữ. Hãy cùng thay đổi phong cách cho máy tóc bạn nhé!</p>\n<p style="text-align:center;">\n	<img alt="" src="/public/userfiles/images/viptamnhinviet/images/khuyen-mai-vang_vn-may-duoi-toc-07122011-content-001.jpg" style="width:500px;height:350px;" /><br />\n	 Cách thực hiện:</p>\n<p>\n	Bước 1: Trước tiên gội đầu sạch, sau đó sấy cho tóc khô vừa.<br />\n	Bước 2: Bạn chia phần tóc ở phía sau đỉnh đầu và cố định bằng kẹp. Nếu tóc nhiều thì nhớ chọn loạI kẹp to để giữ cho tóc không bị bung ra.<br />\n	Bước 3: Dùng Máy uốn tóc Hello Kitty để uốn lần lượt mỗi bên tóc từ đuôi tóc trở ngược vào trong. Mỗi lần uốn ta chỉ uốn một vòng rưỡi máy uốn trong thời gian 3 giây.<br />\n	Bước 4: Chia đều mỗi phần tóc của mỗi bên tóc làm 2, uốn thêm lần nữa giống thao tác ở bước 3. Nhẹ nhàng lấy máy uốn ra khỏi tóc.<br />\n	Bước 5: Tiếp tục uốn phần tóc ở đỉnh đầu theo hướng cuộn ngược trở lại. Chú ý cầm chắc máy uốn, điều phối tay linh hoạt và di chuyển máy một cách nhẹ nhàng.<br />\n	Kết thúc, xịt keo làm bóng, mượt tóc.<br />\n	Bạn sẽ sở hữu ngay một mái tóc như ý, thỏa sức tung tăng làm điệu cùng Hello Kitty nhé!<br /><strong>Giá bán sản phẩm: 160.000 VNĐ<br />\n	Chi tiết liên hệ Mrs Cầm 0919.071.888 (chi nhánh viptamnhinviet Phan Thiết)<br />\n	Chi tiết liên hệ Mrs Quỳnh 0917.486.575 (Sài Gòn)</strong></p>\n', NULL, 'may-uon-toc-hello-kitty', ' Với kích thước nhỏ, gọn, nhẹ… Máy uốn tóc Hello Kitty  có thể trở thành người bạn, luôn có mặt trong túi xách để cùng bạn “đi du lịch” hay đến bất kì nơi đâu. ', 0, 18, 160000, 0, 0, NULL, NULL, NULL, NULL, 1, 24, 'viptamnhinviet'),
(34, 'Bình bơm dầu gội tự động!', NULL, '2012-03-19 19:38:04', 'binh-bom-dau-goi-tu-dong-thumb.jpg', '', NULL, NULL, NULL, '<p>\n	       Bạn sẽ chưa thể hình dung ra được sự thú vị, tiện lợi của sản phẩm máy bơm xà phòng, sữa tắm... tự động nếu như chưa được biết và thử dùng...</p>\n<p style="text-align:center;">\n	<img alt="" src="/public/userfiles/images/viptamnhinviet/images/st1018-new.jpg" style="width:375px;height:350px;" /></p>\n<p>\n	       Hãy hình dung về một sản phẩm tự động hoàn toàn khiến ngôi nhà của bạn trở nên gọn gàng, sạch sẽ, hiện đại và thông minh hơn, cuộc sống thêm đơn giản và tiện lợi hơn nhờ những tiến bộ của công nghệ dễ dàng áp dụng ngay trong nhà bạn... Tất cả những điều tuyệt vời đó sẽ là của bạn với sản phẩm bình bơm chất lỏng thông minh hoàn toàn tự động<br />\n	Với thiết kế nhỏ gọn, trang trọng, bạn có thể sử dụng sản phẩm cho rất nhiều mục đích khác nhau như đựng các loại kem dưỡng da, chống nắng... trên bàn trang điểm, hay dùng đựng các loại xà phòng rửa tay, dầu gội, sữa tắm...</p>\n<p style="text-align:center;">\n	<img alt="" src="/public/userfiles/images/viptamnhinviet/images/compact-sensor-pump-white__SL600_.jpg" style="width:341px;height:550px;" /></p>\n<p>\n	        Bạn hãy hình dung về sự tiện lợi cụ thể như khi bạn dùng kem chống nắng hay sữa tắm, bạn sẽ phải đổ thật nhiều kem trong 1 lần duy nhất, cách làm như vậy sẽ khiến lượng kem đó thừa hoặc thiếu gây lãng phí và khó khăn trong lúc sử dụng nếu phải lấy thêm trong tình huống tay bạn đã đầy bọt xà phòng, hơn thế bạn chỉ có thể sử dụng 1 tay để thoa kem bởi tay còn lại đã phải giữ kem liên tục trong suốt quá trình sử dụng<br />\n	Sản phẩm sử dụng pin tiểu AAA thông dụng nên rất tiện lợi khi cần thay thế và đã loại bỏ sự phức tạp và vướng víu của dây điện nguồn nên bạn hoàn toàn cho thể yên tâm sử dụng ngay cả trong môi trường có độ ẩm cao như nhà tắm mà không lo ngại về vấn đề an toàn điện<br />\n	Bình bơm dung dịch tự động, đơn giản, thuận tiện, tiết kiệm, luôn sạch sẽ và khô ráo sẽ là một sự lựa chọn thông minh cho cuộc sống hiện tại và tiện nghi, một món quà tuyệt vời cho mọi phụ nữ và gia đình...<br /><strong>Giá bán sản phẩm: 270.000<br />\n	Chi tiết liên hệ Mrs Cầm 0919.071.888 (chi nhánh viptamnhinviet Phan Thiết)<br />\n	Chi tiết liên hệ Mrs Quỳnh 0917.486.575 (Sài Gòn)<br />\n	 </strong></p>\n', NULL, 'binh-bom-dau-goi-tu-dong', 'Với thiết kế nhỏ gọn, trang trọng, bạn có thể sử dụng sản phẩm cho rất nhiều mục đích khác nhau như đựng các loại kem dưỡng da, chống nắng... trên bàn trang điểm, hay dùng đựng các loại xà phòng rửa tay, dầu gội, sữa tắm...', 0, 19, 270000, 0, 0, NULL, NULL, NULL, NULL, 1, 11, 'viptamnhinviet');
INSERT INTO `dos_module_products` (`record_id`, `title`, `titleen`, `postdate`, `pic_thumb`, `pic_full`, `pic_desc`, `preview`, `previewen`, `detail`, `detailen`, `tag`, `description`, `hits`, `record_order`, `unit`, `hot`, `specials`, `extra_field1`, `extra_field2`, `extra_field3`, `extra_field4`, `enable`, `dos_module_item_cat_cat_id`, `dos_module_usernames_username`) VALUES
(36, 'Máy cạo râu', NULL, '2012-03-19 19:56:58', 'may-cao-rau-thumb.jpg', '', NULL, NULL, NULL, '<p>\n	Điểm Nổi Bật<br />\n	    Được thiết kế nhỏ gọn, kích thước 10 x 5.5cm, Boteng Shaver nằm gọn trong bàn tay bạn, tạo cảm giác chắc chắn khi sử dụng.<br />\n	    Lưỡi dao cạo được bảo vệ bên dưới lớp lưới chắc chắn cho bạn tránh khỏi những vết thương do lưỡi dao cạo gây ra.<br />\n	    Boteng Shaver sử dụng pin sạc nên bạn có thể sạc nhiều lần, và thời gian sử dụng liên tục.<br />\n	    Tặng kèm 1 bộ vệ sinh máy và 1 bộ dao cạo thay thế.<br />\n	    Nhanh chóng, thuận tiện khi bạn đi du lịch hay công tác.<br />\n	    Thiết kế sang trọng để là món quà đáng yêu.</p>\n<p style="text-align:center;">\n	<img alt="" src="/public/userfiles/images/viptamnhinviet/images/May-Cao-Rau-Boteng-Shaver_2012224143652680.jpg" style="width:480px;height:297px;" /></p>\n<p>\n	Phần lớn nam giới đều cạo râu mỗi ngày nên cũng ảnh hưởng đến da mặt. Vì vậy, bạn cần có biện pháp chăm sóc da và dưỡng da để tránh cho da không bị khô, rát đặc biệt với những người có da nhạy cảm. Được thiết kế nhỏ gọn, kích thước 10 x 5.5cm, Boteng Shaver nằm gọn trong bàn tay bạn, tạo cảm giác chắc chắn khi sử dụng. Thêm nữa, với chiếc gương được thiết kế ngay trên thân máy, chính điều đó cho phép bạn có thể dễ dàng mang theo sử dụng trong bất cứ trường hợp nào và vô cùng thoải mái.</p>\n<p style="text-align:center;">\n	<img alt="" src="/public/userfiles/images/viptamnhinviet/images/May-Cao-Rau-Boteng-Shaver_201222414365050.jpg" style="width:480px;height:297px;" /></p>\n<p>\n	Lưỡi dao cạo được bảo vệ bên dưới lớp lưới chắc chắn cho bạn tránh khỏi những vết thương do lưỡi dao cạo gây ra. Động cơ của máy quay với tốc độ cao vì được làm bằng hợp kim Bạc Pd.<br /><strong>Giá bán sản phẩm: 150.000<br />\n	Chi tiết liên hệ Mrs Cầm 0919.071.888 (chi nhánh viptamnhinviet Phan Thiết)<br />\n	Chi tiết liên hệ Mrs Quỳnh 0917.486.575 (Sài Gòn)</strong><br /><br />\n	 </p>\n', NULL, 'may-cao-rau', ' Được thiết kế nhỏ gọn, kích thước 10 x 5.5cm, Boteng Shaver nằm gọn trong bàn tay bạn, tạo cảm giác chắc chắn khi sử dụng.', 0, 21, 150000, 0, 0, NULL, NULL, NULL, NULL, 1, 18, 'viptamnhinviet'),
(37, 'Thác nước phong thủy !', NULL, '2012-03-19 20:02:56', 'thac-nuoc-phong-thuy--thumb.jpg', '', NULL, NULL, NULL, '<p>\n	     Mang lại "Mưa thuận gió hòa" cho gia chủ. Cực kỳ bắt mắt, thu hút với tiếng nước chảy róc rách và những dòng nước tự đổi màu huyền ảo nhờ hệ thống đèn Led 7 màu phản chiếu trên những tầng sóng lung linh ... Một món đồ độc đáo dựa trên thuật Phong Thủy, với ý nghĩa cầu mong sự no đủ, sung túc và phát đạt "tiền vào như nước". Tiếng nước chảy róc rách, êm dịu như một dòng suối nhỏ mang lại cho không gian nội thất không khí của thiên nhiên thật gần gũi, thật thư thái tâm hồn ...<br />\n	Thác nước Âm Dương Ngũ Hành là sản phẩm mang ý nghĩa Phong Thủy, cầu "Mưa thuận gió hòa" cho gia chủ. Theo phong thủy, vạn vật đều được sinh ra và phải trải qua năm thái trạng cơ bản của tạo hóa là: Kim - Thủy - Hỏa - Mộc - Thổ. Thuyết Ngũ Hành thể hiện sự giao hoa, tương tác của vạn vật trong vũ trụ. Mối quan hệ ràng buộc và tất yếu này được thể hiện qua 2 vòng quan hệ tuần hoàn:<br />\n	  Trong mối quan hệ Sinh thì Mộc sinh Hỏa; Hỏa sinh Thổ; Thổ sinh Kim, Kim sinh Thủy, Thủy sinh Mộc.<br />\n	  Trong mối quan hệ Khắc thì Mộc khắc Thổ, Thổ khắc Thủy, Thủy khắc Hỏa, Hỏa khắc Kim, Kim khắc Mộc.</p>\n<p>\n	        Dựa trên nền tảng là thuyết Phong Thủy, sản phẩm được tạo ra để thể hiện, biểu trưng cho quy luật quan hệ tương tác khép kín và vĩnh hằng, những dòng nước chảy tuần hoàn của thác nước cũng nói nên điều này. Trong bộ sản phẩm còn có 5 viên đá ngũ sắc tượng trưng cho 5 vật chất, 5 trạng thái, 5 mối ràng buộc tất yếu của thuyết "Âm - Dương - Ngũ - Hành", mang ý nghĩa cầu toàn, cầu "Mưa thuận gió hòa" cho gia chủ.<br />\n	Nếu bạn chưa phải là người sùng bái Phong Thủy thì sản phẩm cũng là một món quà thú vị mang lại sự mới lạ cho ngôi nhà của bạn. Không gian nội thất sẽ trở nên cuốn hút và sống động hơn nhờ tiếng nước chảy róc rách rât tự nhiên, rất êm tai. Những dòng nước chảy tuần hoàn, gợn sóng lung linh với hiệu ứng ánh sáng huyền ảo tự động đổi màu nhờ bộ đèn Led 3 màu siêu tiết kiệm điện. Chắc chắn không gian sẽ trở nên lôi cuốn hơn bao giờ hết!<br /><b><img alt="" src="/public/userfiles/images/viptamnhinviet/images/180611150447-thac-nuoc-phong-thuy.jpg" style="width:600px;height:799px;" /></b></p>\n<p>\n	<strong>Giá bán sản phẩm: 250.000</strong></p>\n<p>\n	<strong>Chi tiết liên hệ Mrs Cầm 0919.071.888 (chi nhánh viptamnhinviet Phan Thiết)<br />\n	Chi tiết liên hệ Mrs Quỳnh 0917.486.575 (Sài Gòn)<br />\n	 </strong></p>\n', NULL, 'thac-nuoc-phong-thuy-', '  Mang lại "Mưa thuận gió hòa" cho gia chủ', 0, 22, 250000, 0, 0, NULL, NULL, NULL, NULL, 1, 21, 'viptamnhinviet'),
(38, ' Bộ nước hoa Fujiyama Gentleman - Pháp', NULL, '2012-03-19 20:09:27', 'bo-nuoc-hoa-fujiyama-gentleman-phap-thumb.JPG', '', NULL, NULL, NULL, '<p style="text-align:center;">\n	<img alt="" src="/public/userfiles/images/viptamnhinviet/images/dscn0592255b1255d15.JPG" style="width:450px;height:338px;" /></p>\n<p>\n	<strong>Giá bán: 1tr5<br />\n	Liên hệ: Nguyễn Thanh Phong<br />\n	Địa chỉ: 612 Nguyễn An Ninh, P8, Vũng Tàu (Khu Angel House, bùng binh Nguyễn An Ninh + 3 tháng 2)<br />\n	SĐT: 01212.945.007<br />\n	Email: phongthanhnguyen.vt@gmail.com<br />\n	Ym: KetNoiTheGioiAo</strong></p>\n', NULL, 'bo-nuoc-hoa-fujiyama-gentleman-phap', ' Bộ nước hoa Fujiyama Gentleman - Pháp', 0, 23, 1500000, 0, 0, NULL, NULL, NULL, NULL, 1, 11, 'viptamnhinviet'),
(41, 'Máy phun sương mini !', NULL, '2012-03-22 09:24:34', 'may-phun-suong-mini--thumb.JPG', '', NULL, NULL, NULL, '<p>\n	<span style="font-size:14px;">Máy phun sương là một giải pháp điều hòa trong phòng, làm lắng bụi, thanh lọc không khí, tăng độ ẩm, giảm nhiệt độ từ 5 - 7 độ C<br />\n	Những phòng kín được lắp đặt máy điều hòa sẽ làm cho độ ẩm rất thấp. Từ đây, da bạn dễ bị môi trường "hút nước" &amp; trở nên khô ráp. Hãy cân bằng độ ẩm trong phòng &amp; bảo vệ da bạn bằng máy phun sương hình thú dễ thương. Có nhiều hình thú để lựa chọn</span></p>\n<p>\n	<span style="font-size:14px;"><img alt="" src="/public/userfiles/images/viptamnhinviet/images/untitled1.JPG" style="width:512px;height:384px;" /></span></p>\n<p>\n	<span style="font-size:14px;"><img alt="" src="/public/userfiles/images/viptamnhinviet/images/untitled2.JPG" style="width:512px;height:384px;" /></span></p>\n<br /><p>\n	<span style="font-size:14px;">1. Phương thức hoạt động:<br />\n	Máy phun sương là một giải pháp điều hòa không khí trong phòng, đã được cấp bằng sáng chế, hoạt động bằng sóng siêu âm: Nước sạch được sóng tách ra thành vô số những hạt nước li ti, được phun qua những vòi thành dạng sương, khuếch tán vào không khí &amp; hấp thụ nhiệt lượng để biến thành hơi, thoát ra môi trường bên ngoài</span></p>\n<p>\n	<span style="font-size:14px;">2. Chức năng:<br />\n	Gồm 3 chức năng phun sương, làm mát và cân bằng độ ẩm.<br />\n	3. Lợi ích:<br />\n	Khi phun hơi nước, máy làm tăng độ ẩm trong phòng - nhất là phòng có máy điều hòa, những hạt nước li ti kết hợp với bụi bẩn lơ lửng &amp; kéo chúng rơi xuống nền nhà để cho môi trường trong lành, mát mẻ hơn - như sau một cơn mưa rào vậy<br /><strong>Giá bán sản phẩm: 300.000<br />\n	Chi tiết liên hệ Mrs Cầm 0919.071.888 (chi nhánh viptamnhinviet Phan Thiết)<br />\n	Chi tiết liên hệ Mrs Quỳnh 0917.486.575 (Sài Gòn)</strong></span></p>\n', NULL, 'may-phun-suong-mini-', 'thành viên', 0, 25, 360000, 0, 0, NULL, NULL, NULL, NULL, 1, 11, 'viptamnhinviet'),
(42, 'Quạt không cánh !', NULL, '2012-03-22 09:31:10', 'quat-khong-canh--thumb.jpg', 'quat-khong-canh-.jpg', NULL, NULL, NULL, '<p>\n	 <br /><span style="font-size:14px;">Khi bạn dùng một chiếc quạt có cánh thông thường để thổi vào tay bị ướt nhằm làm cho nó khô cũng giống như bạn dùng khăn lau, các cánh quạt sẽ chém vào không khi tạo ra các luồng không khi mỏng hơn và đẩy nó về phía trước, các miếng không khí này lướt vào tay bạn giống như khăn  lau và mang di các giọt hơi nước.</span></p>\n<p>\n	<span style="font-size:14px;">Loại quạt này có một động cơ điện 40 W. Không khí bị động cơ hút vào những lỗ nhỏ dưới đế quạt và di chuyển dọc theo khung lõm hình tròn. Khi bị đẩy qua khe rộng 1,3 mm nằm dọc theo khung, lượng không khí tăng lên 15 lần và tốc độ di chuyển có thể đạt 35,2 km/h. Gió của Air Multiplier êm và liên tục hơn so với gió của quạt thường. Do không có cánh và trục quay nên nó không thể gây ồn<br />\n	Như tính toán không khí đẩy ra phía trước tăng lên 15 lần như vậy không khí rút từ cánh quạt nhỏ trong thân máy rất nhỏ, luồng khí nhỏ này được kích thích tăng dần lên kết hợp không khí phía sau và bên cạnh tạo thành lực khá lớn.</span></p>\n<p>\n	<span style="font-size:14px;"><img alt="" src="/public/userfiles/images/viptamnhinviet/images/fdu1308407080(1).jpg" style="width:450px;height:461px;" /></span></p>\n<p>\n	<span style="font-size:14px;">Không khí do không bị cắt và thổi một luồng liên tục khiến người dùng cảm giác không ngắt quãng và rất tự nhiên cũng như không ồn ào vì luồng khí cọ vào nhau.<br />\n	Air Multiplier không có cánh nên những đứa trẻ tò mò sẽ không bị tổn thương ngón tay khi sờ quạt. Ngoài ra người sử dụng sẽ không phải mất thời gian để lau chùi cánh mỗi khi chúng bị phủ kín bởi bụi như quạt thường.</span></p>\n<p style="text-align:center;">\n	<span style="font-size:14px;"><img alt="" src="/public/userfiles/images/viptamnhinviet/images/dyson-air-mutiplier4(1).jpg" style="width:355px;height:550px;" /></span></p>\n<p>\n	 </p>\n<p>\n	<span style="font-size:14px;">Air Multiplier có thể xoay 90 độ theo phương ngang như quạt điện truyền thống. Ngoài ra nó còn có một nút kiểm soát tốc độ không khí<br /><strong>Giá bán sản phẩm: 1.500.000-2.000.000(tùy loại lớn nhỏ)<br />\n	Chi tiết liên hệ Mrs Cầm 0919.071.888 (chi nhánh viptamnhinviet Phan Thiết)<br />\n	Chi tiết liên hệ Mrs Quỳnh 0917.486.575 (Sài Gòn)</strong></span><br />\n	 </p>\n', NULL, 'quat-khong-canh-', 'thành viên', 0, 26, 1500000, 0, 0, NULL, NULL, NULL, NULL, 1, 24, 'viptamnhinviet'),
(43, 'Son môi MAC 16 màu đa phong cách !', NULL, '2012-03-22 09:35:26', 'son-moi-mac-16-mau-da-phong-cach--thumb.jpg', '', NULL, NULL, NULL, '<p>\n	Sản phẩm nhập khẩu từ Hàn Quốc.<br />\n	- Kích thước nhỏ gọn, tiện dụng khi mang theo bên mình.<br />\n	- Tự tin với màu sắc tinh tế .Giúp bạn có đôi môi tự nhiên, tươi trẻ, căng mọng và mịn màng.<br />\n	- Sản phẩm không chỉ giúp làm đẹp mà còn dưỡng và bảo vệ môi khỏi tác động của ánh nắng và môi trường.<br />\n	- Sang trọng, độc đáo, tiện dụng và hữu ích, là một món quà tặng thật đặc biệt cho người phụ nữ bạn yêu thương.<br />\n	- Được chiết xuất từ thiên nhiên.<br />\n	- Được ưa thích và là sự lựa chọn phổ biến của phụ nữ Châu Á.<br />\n	Thông tin chi tiết:<br />\n	Hiện nay, dòng sản phẩm giữ ẩm, nuôi dưỡng, không chất gây dị ứng, không phụ gia bảo quản lại được ưa chuộng hơn cả. Kết hợp các xu hướng thời trang, chăm sóc dịu nhẹ cùng màu sắc ấn tượng. Son môi MAC 16 màu chính là sản phẩm đảm bảo được tất cả những xu hướng ấy.</p>\n<p>\n	<img alt="" src="/public/userfiles/images/viptamnhinviet/images/smac1.jpg" style="width:600px;height:376px;" /></p>\n<p>\n	 </p>\n<p>\n	Bạn sẽ không còn phải lo lắng khi băn khoăn chọn lựa loại son môi tạo màu ấn tượng hay son dưỡng nhẹ nhàng. Bạn cũng không còn phải mang theo nhiều loại son để cùng kếp hợp 1 lúc mỗi khi ra ngoài nữa. Từ giờ, mỗi khi ra ngoài, bạn chỉ cần mang theo hộp son MAC 16 màu đã có thể có một làn môi ấn tượng, căng mọng và quyến rũ, nhưng vẩn bảo vệ được đôi môi.</p>\n<p>\n	<img alt="" src="/public/userfiles/images/viptamnhinviet/images/smac3jpg_1331019325.jpg" style="width:600px;height:376px;" /></p>\n<p>\n	<strong>Giá bán sản phẩm: 80 000vnđ<br />\n	Chi tiết liên hệ Mrs Cầm 0919.071.888 (chi nhánh viptamnhinviet Phan Thiết)<br />\n	Chi tiết liên hệ Mrs Quỳnh 0917.486.575 (Sài Gòn)</strong></p>\n', NULL, 'son-moi-mac-16-mau-da-phong-cach-', 'thành viên', 0, 27, 80000, 0, 0, NULL, NULL, NULL, NULL, 1, 18, 'viptamnhinviet'),
(44, '  Dù ngộ nghĩnh!', NULL, '2012-03-22 09:38:33', 'du-ngo-nghinh-thumb.jpg', '', NULL, NULL, NULL, '<p>\n	  <span style="font-size:14px;">Bạn mang theo dù đi làm &amp; sử dụng khi trời mưa; làm sao mà bỏ vô túi xách khi nó ướt nhẹp mà lại không tiện khi bung ra phơi giữa công ty. Thật khó xử quá<br />\n	Với dù trong chai, mọi thứ trở thành...chuyện nhỏ nhé</span></p>\n<p>\n	<span style="font-size:14px;"><img alt="" src="/public/userfiles/images/viptamnhinviet/images/1315762918_5.jpg" style="width:494px;height:349px;" /></span></p>\n<p>\n	<span style="font-size:14px;">   Một món quà nhỏ nhưng đầy bất ngờ và ý nghĩa của tình yêu thương, sự che chở… của các bạn nam dành cho bạn nữ của mình<br />\n	   Một vật dụng cá nhân thiết thực nhưng cũng rất thú vị với thiết kế gấp gọn gàng tiện lợi có thể mang theo bạn đi bất cứ nơi đâu.</span></p>\n<p>\n	<span style="font-size:14px;">   Rất nhiều mẫu thiết kế sinh động phong cách Nhật Bản, những chiếc ô đầy màu sắc trong vỏ ngoài là một chai rượu, bạn có thể sử dụng chiếc ô gấp siêu cơ động này như một món đồ trang khí phòng hoặc muốn treo lên giá, móc áo sau cánh cửa ,…</span></p>\n<p>\n	<span style="font-size:14px;"><img alt="" src="/public/userfiles/images/viptamnhinviet/images/2(3).jpg" style="width:624px;height:458px;" /></span></p>\n<p>\n	<strong><span style="font-size:14px;">Chi tiết liên hệ Mrs.Cầm 0919071888(Chi nhánh viptamnhinviet Phan Thiết)<br />\n	Chi tiết liên hệ Mrs.Quỳnh 0917486575(Sài Gòn)</span></strong></p>\n', NULL, 'du-ngo-nghinh', 'thành viên', 0, 28, 110000, 0, 0, NULL, NULL, NULL, NULL, 1, 24, 'viptamnhinviet');

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
  `description` varchar(250) NOT NULL,
  `pic_full` varchar(100) DEFAULT NULL,
  `pic_desc` varchar(200) DEFAULT NULL,
  `cat_order` int(11) NOT NULL,
  `cat_extra1` varchar(45) DEFAULT NULL,
  `cat_extra2` varchar(45) DEFAULT NULL,
  `cat_enable` tinyint(1) NOT NULL DEFAULT '1',
  PRIMARY KEY (`cat_id`)
) ENGINE=InnoDB  DEFAULT CHARSET=utf8 AUTO_INCREMENT=27 ;

--
-- Dumping data for table `dos_module_products_cat`
--

INSERT INTO `dos_module_products_cat` (`cat_id`, `cat_parent_id`, `cat_title`, `cat_titleen`, `preview`, `previewen`, `tag`, `description`, `pic_full`, `pic_desc`, `cat_order`, `cat_extra1`, `cat_extra2`, `cat_enable`) VALUES
(11, 0, 'Danh mục', NULL, NULL, NULL, 'danh-muc', 'Mô tả danh mục', 'danh-muc.jpg', NULL, 1, NULL, NULL, 1),
(12, 0, ' VIP Tầm Nhìn Việt', NULL, NULL, NULL, 'vip-tam-nhin-viet', 'sản phẩm công ty', '', NULL, 2, NULL, NULL, 1),
(13, 0, ' Laptop - Máy Vi Tính', NULL, NULL, NULL, 'laptop-may-vi-tinh', 'sản phẩm liên kết', '', NULL, 3, NULL, NULL, 1),
(14, 0, 'Điện thoại -IPAD', NULL, NULL, NULL, 'dien-thoai-ipad', 'sản phẩm liên kết', '', NULL, 4, NULL, NULL, 1),
(15, 0, 'Ôtô - Xe máy', NULL, NULL, NULL, 'oto-xe-may', 'sản phẩm liên kết', '', NULL, 5, NULL, NULL, 1),
(16, 0, ' Điện tử - Điện lạnh', NULL, NULL, NULL, 'dien-tu-dien-lanh', 'thành viên', '', NULL, 6, NULL, NULL, 1),
(17, 0, 'Thời Trang, Trang Sức', NULL, NULL, NULL, 'thoi-trang-trang-suc', 'thành viên', '', NULL, 7, NULL, NULL, 1),
(18, 0, ' Mỹ Phẩm, Làm Đẹp', NULL, NULL, NULL, 'my-pham-lam-dep', 'thành viên', '', NULL, 8, NULL, NULL, 1),
(19, 0, ' Thực Phẩm, Đồ Uống', NULL, NULL, NULL, 'thuc-pham-do-uong', 'thành viên', '', NULL, 9, NULL, NULL, 1),
(20, 0, ' Y Tế, Dược Phẩm', NULL, NULL, NULL, 'y-te-duoc-pham', 'thành viên', '', NULL, 10, NULL, NULL, 1),
(21, 0, ' Nội Thất - Ngoại Thất', NULL, NULL, NULL, 'noi-that-ngoai-that', 'thành viên', '', NULL, 11, NULL, NULL, 1),
(22, 0, 'Bất Động Sản', NULL, NULL, NULL, 'bat-dong-san', 'thành viên', '', NULL, 12, NULL, NULL, 1),
(23, 0, ' Rao Vặt', NULL, NULL, NULL, 'rao-vat', 'thành viên', '', NULL, 13, NULL, NULL, 1),
(24, 0, 'Đồ Dùng Sinh Hoạt', NULL, NULL, NULL, 'do-dung-sinh-hoat', 'thành viên', '', NULL, 14, NULL, NULL, 1),
(25, 0, 'Sản Phẩm Khác', NULL, NULL, NULL, 'san-pham-khac', 'thành viên', '', NULL, 15, NULL, NULL, 1),
(26, 0, 'Sản Phẩm Hot', NULL, NULL, NULL, 'san-pham-hot', 'thành viên', '', NULL, 16, NULL, NULL, 1);

-- --------------------------------------------------------

--
-- Table structure for table `dos_module_supports`
--

CREATE TABLE IF NOT EXISTS `dos_module_supports` (
  `support_id` int(11) NOT NULL AUTO_INCREMENT,
  `support_name` varchar(45) NOT NULL,
  `support_phone` varchar(45) DEFAULT NULL,
  `support_value` varchar(45) NOT NULL,
  `support_order` smallint(6) NOT NULL,
  `support_type` varchar(20) NOT NULL,
  PRIMARY KEY (`support_id`)
) ENGINE=InnoDB  DEFAULT CHARSET=utf8 AUTO_INCREMENT=8 ;

--
-- Dumping data for table `dos_module_supports`
--

INSERT INTO `dos_module_supports` (`support_id`, `support_name`, `support_phone`, `support_value`, `support_order`, `support_type`) VALUES
(6, 'HỔ TRỢ ITI Mr. TRUNG', '0618850747', 'quangtrung_manly', 0, 'yahoo'),
(7, 'Nguyễn An', '0929001001', 'thanhansoft', 1, 'yahoo');

-- --------------------------------------------------------

--
-- Table structure for table `dos_module_tables`
--

CREATE TABLE IF NOT EXISTS `dos_module_tables` (
  `left_child` varchar(45) DEFAULT NULL,
  `right_child` varchar(45) DEFAULT NULL,
  `four_child` varchar(180) DEFAULT NULL,
  `priority` int(11) DEFAULT NULL,
  `upgrade_date` datetime DEFAULT NULL,
  `dos_module_usernames_username` varchar(45) NOT NULL,
  PRIMARY KEY (`dos_module_usernames_username`)
) ENGINE=InnoDB DEFAULT CHARSET=utf8;

--
-- Dumping data for table `dos_module_tables`
--

INSERT INTO `dos_module_tables` (`left_child`, `right_child`, `four_child`, `priority`, `upgrade_date`, `dos_module_usernames_username`) VALUES
('ngochien1', 'ngochien2', '', 26, '2012-03-25 15:34:36', 'ngochien'),
('', '', '', 0, '2012-03-25 15:25:50', 'ngochien1'),
('ngochien21', 'ngochien22', '', 21, '2012-03-25 15:25:44', 'ngochien10'),
('ngochien23', 'ngochien24', '', 22, '2012-03-25 15:25:47', 'ngochien11'),
('ngochien25', 'ngochien26', '', 23, '2012-03-25 15:25:49', 'ngochien12'),
('ngochien27', 'ngochien28', '', 24, '2012-03-25 15:25:52', 'ngochien13'),
('ngochien29', 'ngochien30', '', 25, '2012-03-25 15:25:55', 'ngochien14'),
('', '', '', 0, '2012-03-25 15:34:35', 'ngochien2'),
('ngochien7', 'ngochien8', '', 13, '2012-03-25 15:24:51', 'ngochien3'),
('ngochien9', 'ngochien10', '', 14, '2012-03-25 15:25:05', 'ngochien4'),
('ngochien11', 'ngochien12', '', 15, '2012-03-25 15:25:07', 'ngochien5'),
('ngochien13', 'ngochien14', '', 16, '2012-03-25 15:25:08', 'ngochien6'),
('ngochien15', 'ngochien16', '', 17, '2012-03-25 15:25:10', 'ngochien7'),
('ngochien17', 'ngochien18', '', 18, '2012-03-25 15:25:12', 'ngochien8'),
('ngochien19', 'ngochien20', '', 20, '2012-03-25 15:25:14', 'ngochien9'),
('trieuphu1', 'trieuphu2', '', 19, '2012-03-25 15:25:13', 'trieuphu'),
('', '', '', 0, '2012-03-25 15:25:06', 'trieuphu1'),
('', '', '', 0, '2012-03-25 15:25:13', 'trieuphu2'),
('typhu1', 'typhu2', '', 12, '2012-03-25 15:24:50', 'typhu'),
('', 'ngochien', '', 0, '2012-03-25 15:24:48', 'typhu1'),
('', '', '', 0, '2012-03-25 15:24:50', 'typhu2'),
('ngochien', 'ngochien', '', 27, '2012-03-25 15:34:36', 'typhu4'),
('', '', '', 0, '2012-03-25 15:25:09', 'viptamnhinviet');

-- --------------------------------------------------------

--
-- Table structure for table `dos_module_usernames`
--

CREATE TABLE IF NOT EXISTS `dos_module_usernames` (
  `username` varchar(45) NOT NULL,
  `password` varchar(45) NOT NULL,
  `create_date` timestamp NOT NULL DEFAULT CURRENT_TIMESTAMP,
  `full_name` varchar(150) DEFAULT NULL,
  `email` varchar(45) DEFAULT NULL,
  `birthday` date DEFAULT NULL,
  `address` varchar(200) DEFAULT NULL,
  `cmnd` varchar(10) DEFAULT NULL,
  `phone` varchar(15) DEFAULT NULL,
  `bank_number` varchar(20) DEFAULT NULL,
  `bank_name` varchar(100) DEFAULT NULL,
  `user_gioithieu` varchar(45) NOT NULL,
  `balance` int(11) NOT NULL DEFAULT '0',
  `user_group` varchar(45) NOT NULL,
  `level` int(11) NOT NULL DEFAULT '0',
  `enable` tinyint(1) NOT NULL,
  PRIMARY KEY (`username`)
) ENGINE=InnoDB DEFAULT CHARSET=utf8;

--
-- Dumping data for table `dos_module_usernames`
--

INSERT INTO `dos_module_usernames` (`username`, `password`, `create_date`, `full_name`, `email`, `birthday`, `address`, `cmnd`, `phone`, `bank_number`, `bank_name`, `user_gioithieu`, `balance`, `user_group`, `level`, `enable`) VALUES
('ngochien', 'e10adc3949ba59abbe56e057f20f883e', '2012-03-23 10:01:48', 'NGUYỄN NGỌC HIỂN', 'nguyenngochien1960@gmail.com', '1960-06-10', 'TÂN BIÊN , BIÊN HÒA , ĐỒNG NAI', '271520331', '0975553939', '034555888822', 'vcbank', 'typhu4', 7000, 'user', 1, 1),
('ngochien1', 'e10adc3949ba59abbe56e057f20f883e', '2012-03-23 10:03:12', 'NGUYỄN NGỌC HIỂN', 'nguyenngochien1960@gmail.com', '2019-01-01', 'TÂN BIÊN , BIÊN HÒA , ĐỒNG NAI', '271520331', '0975553939', '034555888822', 'vcbank', 'ngochien', 2000, 'user', 1, 1),
('ngochien10', 'e10adc3949ba59abbe56e057f20f883e', '2012-03-23 10:18:20', 'NGUYỄN NGỌC HIỂN', 'nguyenngochien1960@gmail.com', '1987-01-01', 'TÂN BIÊN , BIÊN HÒA , ĐỒNG NAI', '271520331', '0975553939', '034555888822', 'vcbank', 'ngochien4', 0, 'user', 0, 1),
('ngochien11', 'e10adc3949ba59abbe56e057f20f883e', '2012-03-23 10:20:18', 'NGUYỄN NGỌC HIỂN', 'nguyenngochien1960@gmail.com', '1987-01-01', 'TÂN BIÊN , BIÊN HÒA , ĐỒNG NAI', '271520331', '0975553939', '034555888822', 'vcbank', 'ngochien5', 0, 'user', 0, 1),
('ngochien12', 'e10adc3949ba59abbe56e057f20f883e', '2012-03-23 10:20:54', 'NGUYỄN NGỌC HIỂN', 'nguyenngochien1960@gmail.com', '1987-01-01', 'TÂN BIÊN , BIÊN HÒA , ĐỒNG NAI', '271520331', '0975553939', '034555888822', 'vcbank', 'ngochien5', 0, 'user', 0, 1),
('ngochien13', 'e10adc3949ba59abbe56e057f20f883e', '2012-03-23 10:21:25', 'NGUYỄN NGỌC HIỂN', 'nguyenngochien1960@gmail.com', '1987-01-01', 'TÂN BIÊN , BIÊN HÒA , ĐỒNG NAI', '271520331', '0975553939', '034555888822', 'vcbank', 'ngochien6', 0, 'user', 0, 1),
('ngochien14', 'e10adc3949ba59abbe56e057f20f883e', '2012-03-23 10:21:54', 'NGUYỄN NGỌC HIỂN', 'nguyenngochien1960@gmail.com', '1987-01-01', 'TÂN BIÊN , BIÊN HÒA , ĐỒNG NAI', '271520331', '0975553939', '034555888822', 'vcbank', 'ngochien6', 0, 'user', 0, 1),
('ngochien15', 'e10adc3949ba59abbe56e057f20f883e', '2012-03-23 10:28:26', 'NGUYỄN NGỌC HIỂN', 'nguyenngochien1960@gmail.com', '1987-01-01', 'TÂN BIÊN , BIÊN HÒA , ĐỒNG NAI', '271520331', '0975553939', '034555888822', 'vcbank', 'ngochien7', 0, 'user', 0, 1),
('ngochien16', 'e10adc3949ba59abbe56e057f20f883e', '2012-03-23 10:30:24', 'NGUYỄN NGỌC HIỂN', 'nguyenngochien1960@gmail.com', '1987-01-01', 'TÂN BIÊN , BIÊN HÒA , ĐỒNG NAI', '271520331', '0975553939', '034555888822', 'vcbank', 'ngochien7', 0, 'user', 0, 1),
('ngochien17', 'e10adc3949ba59abbe56e057f20f883e', '2012-03-23 10:30:58', 'NGUYỄN NGỌC HIỂN', 'nguyenngochien1960@gmail.com', '1987-01-01', 'TÂN BIÊN , BIÊN HÒA , ĐỒNG NAI', '271520331', '0975553939', '034555888822', 'vcbank', 'ngochien8', 0, 'user', 0, 1),
('ngochien18', 'e10adc3949ba59abbe56e057f20f883e', '2012-03-23 10:31:32', 'NGUYỄN NGỌC HIỂN', 'nguyenngochien1960@gmail.com', '1987-01-01', 'TÂN BIÊN , BIÊN HÒA , ĐỒNG NAI', '271520331', '0975553939', '034555888822', 'vcbank', 'ngochien8', 0, 'user', 0, 1),
('ngochien19', 'e10adc3949ba59abbe56e057f20f883e', '2012-03-23 10:33:54', 'NGUYỄN NGỌC HIỂN', 'nguyenngochien1960@gmail.com', '1987-01-01', 'TÂN BIÊN , BIÊN HÒA , ĐỒNG NAI', '271520331', '0975553939', '034555888822', 'vcbank', 'ngochien9', 0, 'user', 0, 1),
('ngochien2', 'e10adc3949ba59abbe56e057f20f883e', '2012-03-23 10:04:06', 'NGUYỄN NGỌC HIỂN', 'nguyenngochien1960@gmail.com', '1987-01-01', 'TÂN BIÊN , BIÊN HÒA , ĐỒNG NAI', '271520331', '0975553939', '034555888822', 'vcbank', 'ngochien', 2000, 'user', 1, 1),
('ngochien20', 'e10adc3949ba59abbe56e057f20f883e', '2012-03-23 10:41:09', 'NGUYỄN NGỌC HIỂN', 'nguyenngochien1960@gmail.com', '1987-01-01', 'TÂN BIÊN , BIÊN HÒA , ĐỒNG NAI', '271520331', '0975553939', '034555888822', 'vcbank', 'ngochien9', 0, 'user', 0, 1),
('ngochien21', 'e10adc3949ba59abbe56e057f20f883e', '2012-03-23 10:41:44', 'NGUYỄN NGỌC HIỂN', 'nguyenngochien1960@gmail.com', '1987-01-01', 'TÂN BIÊN , BIÊN HÒA , ĐỒNG NAI', '271520331', '0975553939', '034555888822', 'vcbank', 'ngochien10', 0, 'user', 0, 1),
('ngochien22', 'e10adc3949ba59abbe56e057f20f883e', '2012-03-23 10:42:17', 'NGUYỄN NGỌC HIỂN', 'nguyenngochien1960@gmail.com', '1987-01-01', 'TÂN BIÊN , BIÊN HÒA , ĐỒNG NAI', '271520331', '0975553939', '034555888822', 'vcbank', 'ngochien10', 0, 'user', 0, 1),
('ngochien23', 'e10adc3949ba59abbe56e057f20f883e', '2012-03-23 10:44:59', 'NGUYỄN NGỌC HIỂN', 'nguyenngochien1960@gmail.com', '1987-01-01', 'TÂN BIÊN , BIÊN HÒA , ĐỒNG NAI', '271520331', '0975553939', '034555888822', 'vcbank', 'ngochien11', 0, 'user', 0, 1),
('ngochien24', 'e10adc3949ba59abbe56e057f20f883e', '2012-03-23 10:45:46', 'NGUYỄN NGỌC HIỂN', 'nguyenngochien1960@gmail.com', '1987-01-01', 'TÂN BIÊN , BIÊN HÒA , ĐỒNG NAI', '271520331', '0975553939', '034555888822', 'vcbank', 'ngochien11', 0, 'user', 0, 1),
('ngochien25', 'e10adc3949ba59abbe56e057f20f883e', '2012-03-23 10:46:19', 'NGUYỄN NGỌC HIỂN', 'nguyenngochien1960@gmail.com', '1987-01-01', 'TÂN BIÊN , BIÊN HÒA , ĐỒNG NAI', '271520331', '0975553939', '034555888822', 'vcbank', 'ngochien12', 0, 'user', 0, 1),
('ngochien26', 'e10adc3949ba59abbe56e057f20f883e', '2012-03-23 10:46:42', 'NGUYỄN NGỌC HIỂN', 'nguyenngochien1960@gmail.com', '1987-01-01', 'TÂN BIÊN , BIÊN HÒA , ĐỒNG NAI', '271520331', '0975553939', '034555888822', 'vcbank', 'ngochien12', 0, 'user', 0, 1),
('ngochien27', 'e10adc3949ba59abbe56e057f20f883e', '2012-03-23 10:47:51', 'NGUYỄN NGỌC HIỂN', 'nguyenngochien1960@gmail.com', '1987-01-01', 'TÂN BIÊN , BIÊN HÒA , ĐỒNG NAI', '271520331', '0975553939', '034555888822', 'vcbank', 'ngochien13', 0, 'user', 0, 1),
('ngochien28', 'e10adc3949ba59abbe56e057f20f883e', '2012-03-23 10:52:55', 'NGUYỄN NGỌC HIỂN', 'nguyenngochien1960@gmail.com', '1987-01-01', 'TÂN BIÊN , BIÊN HÒA , ĐỒNG NAI', '271520331', '0975553939', '034555888822', 'vcbank', 'ngochien13', 0, 'user', 0, 1),
('ngochien29', 'e10adc3949ba59abbe56e057f20f883e', '2012-03-23 10:53:27', 'NGUYỄN NGỌC HIỂN', 'nguyenngochien1960@gmail.com', '1987-01-01', 'TÂN BIÊN , BIÊN HÒA , ĐỒNG NAI', '271520331', '0975553939', '034555888822', 'vcbank', 'ngochien14', 0, 'user', 0, 1),
('ngochien3', 'e10adc3949ba59abbe56e057f20f883e', '2012-03-23 10:08:15', 'NGUYỄN NGỌC HIỂN', 'nguyenngochien1960@gmail.com', '1987-01-01', 'TÂN BIÊN , BIÊN HÒA , ĐỒNG NAI', '271520331', '0975553939', '034555888822', 'vcbank', 'ngochien1', 0, 'user', 0, 1),
('ngochien30', 'e10adc3949ba59abbe56e057f20f883e', '2012-03-23 10:53:52', 'NGUYỄN NGỌC HIỂN', 'nguyenngochien1960@gmail.com', '1987-01-01', 'TÂN BIÊN , BIÊN HÒA , ĐỒNG NAI', '271520331', '0975553939', '034555888822', 'vcbank', 'ngochien14', 0, 'user', 0, 1),
('ngochien4', 'e10adc3949ba59abbe56e057f20f883e', '2012-03-23 10:13:21', 'NGUYỄN NGỌC HIỂN', 'nguyenngochien1960@gmail.com', '1987-01-01', 'TÂN BIÊN , BIÊN HÒA , ĐỒNG NAI', '271520331', '0975553939', '034555888822', 'vcbank', 'ngochien1', 0, 'user', 0, 1),
('ngochien5', 'e10adc3949ba59abbe56e057f20f883e', '2012-03-23 10:14:04', 'NGUYỄN NGỌC HIỂN', 'nguyenngochien1960@gmail.com', '1987-01-01', 'TÂN BIÊN , BIÊN HÒA , ĐỒNG NAI', '271520331', '0975553939', '034555888822', 'vcbank', 'ngochien2', 0, 'user', 0, 1),
('ngochien6', 'e10adc3949ba59abbe56e057f20f883e', '2012-03-23 10:14:37', 'NGUYỄN NGỌC HIỂN', 'nguyenngochien1960@gmail.com', '1987-01-01', 'TÂN BIÊN , BIÊN HÒA , ĐỒNG NAI', '271520331', '0975553939', '034555888822', 'vcbank', 'ngochien2', 0, 'user', 0, 1),
('ngochien7', 'e10adc3949ba59abbe56e057f20f883e', '2012-03-23 10:16:45', 'NGUYỄN NGỌC HIỂN', 'nguyenngochien1960@gmail.com', '1987-01-01', 'TÂN BIÊN , BIÊN HÒA , ĐỒNG NAI', '271520331', '0975553939', '034555888822', 'vcbank', 'ngochien3', 0, 'user', 0, 1),
('ngochien8', 'e10adc3949ba59abbe56e057f20f883e', '2012-03-23 10:17:19', 'NGUYỄN NGỌC HIỂN', 'nguyenngochien1960@gmail.com', '1987-01-01', 'TÂN BIÊN , BIÊN HÒA , ĐỒNG NAI', '271520331', '0975553939', '034555888822', 'vcbank', 'ngochien3', 0, 'user', 0, 1),
('ngochien9', 'e10adc3949ba59abbe56e057f20f883e', '2012-03-23 10:17:48', 'NGUYỄN NGỌC HIỂN', 'nguyenngochien1960@gmail.com', '1987-01-01', 'TÂN BIÊN , BIÊN HÒA , ĐỒNG NAI', '271520331', '0975553939', '034555888822', 'vcbank', 'ngochien4', 0, 'user', 0, 1),
('trieuphu', 'e10adc3949ba59abbe56e057f20f883e', '2012-03-22 02:52:01', 'nguyễn trung nam', 'trungnam_nguyen9@yahoo.com', '1987-01-01', 'biên hoa dong nai', '2646888888', '0987976879', '008100555858', 'vietcombank', 'viptamnhinviet', 2000, 'user', 1, 1),
('trieuphu1', 'e10adc3949ba59abbe56e057f20f883e', '2012-03-22 02:53:28', 'nguyễn trung nam', 'trungnam_nguyen9@yahoo.com', '1987-01-01', 'biên hoa dong nai', '2646888888', '0987976879', '008100555858', 'vietcombank', 'trieuphu', 2000, 'user', 1, 1),
('trieuphu2', 'e10adc3949ba59abbe56e057f20f883e', '2012-03-22 02:54:59', 'nguyễn trung nam', 'trungnam_nguyen9@yahoo.com', '1987-01-01', 'biên hoa dong nai', '2646888888', '0987976879', '008100555858', 'vietcombank', 'trieuphu', 2000, 'user', 1, 1),
('trieuphu3', 'e10adc3949ba59abbe56e057f20f883e', '2012-03-23 08:42:22', 'nguyễn trung nam', 'trungnam_nguyen9@yahoo.com', '1987-01-01', 'biên hoa dong nai', '2646888888', '0987976879', '008100555858', 'vietcombank', 'trieuphu1', 0, 'user', 0, 1),
('trieuphu4', 'e10adc3949ba59abbe56e057f20f883e', '2012-03-23 08:42:39', 'nguyễn trung nam', 'trungnam_nguyen9@yahoo.com', '1987-01-01', 'biên hoa dong nai', '2646888888', '0987976879', '008100555858', 'vietcombank', 'trieuphu1', 0, 'user', 0, 1),
('trieuphu5', 'e10adc3949ba59abbe56e057f20f883e', '2012-03-23 08:43:11', 'nguyễn trung nam', 'trungnam_nguyen9@yahoo.com', '1987-01-01', 'biên hoa dong nai', '2646888888', '0987976879', '008100555858', 'vietcombank', 'trieuphu2', 0, 'user', 0, 1),
('trieuphu6', 'e10adc3949ba59abbe56e057f20f883e', '2012-03-23 08:48:38', 'nguyễn trung nam', 'trungnam_nguyen9@yahoo.com', '1987-01-01', 'biên hoa dong nai', '2646888888', '0987976879', '008100555858', 'vietcombank', 'trieuphu2', 0, 'user', 0, 1),
('typhu', 'e10adc3949ba59abbe56e057f20f883e', '2012-03-22 02:50:20', 'nguyễn trung nam', 'trungnam_nguyen9@yahoo.com', '1983-09-01', 'biên hoa dong nai', '2646888888', '0987976879', '008100555858', 'vietcombank', 'viptamnhinviet', 2000, 'user', 1, 1),
('typhu1', 'e10adc3949ba59abbe56e057f20f883e', '2012-03-22 02:58:55', 'nguyễn trung nam', 'trungnam_nguyen9@yahoo.com', '1987-01-01', 'biên hoa dong nai', '2646888888', '0987976879', '008100555858', 'vietcombank', 'typhu', 2000, 'user', 1, 1),
('typhu2', 'e10adc3949ba59abbe56e057f20f883e', '2012-03-22 02:59:30', 'nguyễn trung nam', 'trungnam_nguyen9@yahoo.com', '1987-01-01', 'biên hoa dong nai', '2646888888', '0987976879', '008100555858', 'vietcombank', 'typhu', 2000, 'user', 1, 1),
('typhu3', 'e10adc3949ba59abbe56e057f20f883e', '2012-03-23 08:30:13', 'nguyễn trung nam', 'trungnam_nguyen9@yahoo.com', '1987-01-01', 'biên hoa dong nai', '2646888888', '0987976879', '008100555858', 'vietcombank', 'typhu1', 0, 'user', 0, 1),
('typhu4', 'e10adc3949ba59abbe56e057f20f883e', '2012-03-23 08:30:55', 'nguyễn trung nam', 'trungnam_nguyen9@yahoo.com', '1987-01-01', 'biên hoa dong nai', '2646888888', '0987976879', '008100555858', 'vietcombank', 'typhu1', 0, 'user', 0, 1),
('typhu5', 'e10adc3949ba59abbe56e057f20f883e', '2012-03-23 08:31:24', 'nguyễn trung nam', 'trungnam_nguyen9@yahoo.com', '1987-01-01', 'biên hoa dong nai', '2646888888', '0987976879', '008100555858', 'vietcombank', 'typhu2', 0, 'user', 0, 1),
('typhu6', 'e10adc3949ba59abbe56e057f20f883e', '2012-03-23 08:31:40', 'nguyễn trung nam', 'trungnam_nguyen9@yahoo.com', '1987-01-01', 'biên hoa dong nai', '2646888888', '0987976879', '008100555858', 'vietcombank', 'typhu2', 0, 'user', 0, 1),
('viptamnhinviet', 'e10adc3949ba59abbe56e057f20f883e', '2012-03-04 14:30:34', 'Viptamnhinviet', 'aaa@aa.ccc', '1980-01-01', '', '2165454549', '12316546754', 'ACB', '', '', 6000, 'administrator', 2, 1);

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
  `description` varchar(250) DEFAULT NULL,
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

INSERT INTO `dos_module_video` (`record_id`, `title`, `titleen`, `postdate`, `tag`, `description`, `pic_thumb`, `url`, `record_order`, `hits`, `extra_field1`, `extra_field2`, `hot`, `enable`, `dos_module_item_cat_cat_id`) VALUES
(1, 'Asus demo', NULL, '2012-03-15 06:52:16', 'asus-demo', '', 'asus-demo.jpg', 'http://www.youtube.com/watch?v=_ioNXTAo1Pc', 1, 0, NULL, NULL, 1, 1, 11);

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
  `description` varchar(250) DEFAULT NULL,
  `cat_order` int(11) NOT NULL,
  `cat_enable` tinyint(1) NOT NULL DEFAULT '1',
  PRIMARY KEY (`cat_id`)
) ENGINE=InnoDB  DEFAULT CHARSET=utf8 AUTO_INCREMENT=12 ;

--
-- Dumping data for table `dos_module_video_cat`
--

INSERT INTO `dos_module_video_cat` (`cat_id`, `cat_parent_id`, `pic_thumb`, `cat_title`, `cat_titleen`, `tag`, `description`, `cat_order`, `cat_enable`) VALUES
(11, 0, 'danh-muc.png', 'Danh mục', NULL, 'danh-muc', 'Mô tả', 1, 1);

-- --------------------------------------------------------

--
-- Table structure for table `dos_templates`
--

CREATE TABLE IF NOT EXISTS `dos_templates` (
  `template` varchar(6) NOT NULL,
  `template_name` varchar(45) NOT NULL,
  `created` timestamp NOT NULL DEFAULT CURRENT_TIMESTAMP,
  `description` text,
  `publish` tinyint(1) NOT NULL DEFAULT '0',
  PRIMARY KEY (`template`)
) ENGINE=InnoDB DEFAULT CHARSET=utf8;

--
-- Dumping data for table `dos_templates`
--

INSERT INTO `dos_templates` (`template`, `template_name`, `created`, `description`, `publish`) VALUES
('080312', 'Mẫu web công ty Vip Tầm Nhìn Việt', '2012-03-09 04:28:40', 'Mẫu web công ty Vip Tầm Nhìn Việt', 1);

--
-- Constraints for dumped tables
--

--
-- Constraints for table `dos_configs`
--
ALTER TABLE `dos_configs`
  ADD CONSTRAINT `fk_dos_configs_dos_templates1` FOREIGN KEY (`dos_templates_template`) REFERENCES `dos_templates` (`template`) ON DELETE NO ACTION ON UPDATE NO ACTION;

--
-- Constraints for table `dos_modules_has_dos_usernames`
--
ALTER TABLE `dos_modules_has_dos_usernames`
  ADD CONSTRAINT `fk_dos_modules_has_dos_usernames_dos_modules1` FOREIGN KEY (`dos_modules_module_id`) REFERENCES `dos_modules` (`module_id`) ON DELETE NO ACTION ON UPDATE NO ACTION,
  ADD CONSTRAINT `fk_dos_modules_has_dos_usernames_dos_usernames1` FOREIGN KEY (`dos_usernames_username`) REFERENCES `dos_module_usernames` (`username`) ON DELETE NO ACTION ON UPDATE NO ACTION;

--
-- Constraints for table `dos_module_news`
--
ALTER TABLE `dos_module_news`
  ADD CONSTRAINT `fk_dos_module_news_dos_module_news_cat1` FOREIGN KEY (`dos_module_item_cat_cat_id`) REFERENCES `dos_module_news_cat` (`cat_id`) ON DELETE NO ACTION ON UPDATE NO ACTION;

--
-- Constraints for table `dos_module_products`
--
ALTER TABLE `dos_module_products`
  ADD CONSTRAINT `fk_dos_module_products_dos_module_products_cat10` FOREIGN KEY (`dos_module_item_cat_cat_id`) REFERENCES `dos_module_products_cat` (`cat_id`) ON DELETE NO ACTION ON UPDATE NO ACTION,
  ADD CONSTRAINT `fk_dos_module_products_dos_module_usernames10` FOREIGN KEY (`dos_module_usernames_username`) REFERENCES `dos_module_usernames` (`username`) ON DELETE NO ACTION ON UPDATE NO ACTION;

--
-- Constraints for table `dos_module_tables`
--
ALTER TABLE `dos_module_tables`
  ADD CONSTRAINT `fk_dos_module_table_dos_module_usernames10` FOREIGN KEY (`dos_module_usernames_username`) REFERENCES `dos_module_usernames` (`username`) ON DELETE NO ACTION ON UPDATE NO ACTION;

--
-- Constraints for table `dos_module_video`
--
ALTER TABLE `dos_module_video`
  ADD CONSTRAINT `fk_dos_module_video_dos_module_video_cat1` FOREIGN KEY (`dos_module_item_cat_cat_id`) REFERENCES `dos_module_video_cat` (`cat_id`) ON DELETE NO ACTION ON UPDATE NO ACTION;

/*!40101 SET CHARACTER_SET_CLIENT=@OLD_CHARACTER_SET_CLIENT */;
/*!40101 SET CHARACTER_SET_RESULTS=@OLD_CHARACTER_SET_RESULTS */;
/*!40101 SET COLLATION_CONNECTION=@OLD_COLLATION_CONNECTION */;
