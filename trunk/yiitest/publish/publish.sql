-- phpMyAdmin SQL Dump
-- version 3.4.5
-- http://www.phpmyadmin.net
--
-- Host: localhost
-- Generation Time: Sep 20, 2012 at 10:45 PM
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
('products_height', 700, '', '160512'),
('products_height_thumb', 160, '', '160512'),
('products_num_paging_cat', 4, '', '160512'),
('products_num_paging_hot', 16, '', '160512'),
('products_num_paging_new', 20, '', '160512'),
('products_num_paging_other', 4, '', '160512'),
('products_width', 850, '', '160512'),
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
('about', 'xaydungvietanh'),
('advs', 'xaydungvietanh'),
('banner', 'xaydungvietanh'),
('contact', 'xaydungvietanh'),
('news', 'xaydungvietanh'),
('products', 'xaydungvietanh'),
('services', 'xaydungvietanh'),
('supports', 'xaydungvietanh'),
('video', 'xaydungvietanh');

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
) ENGINE=InnoDB  DEFAULT CHARSET=utf8 AUTO_INCREMENT=147 ;

--
-- Dumping data for table `dos_module_abouts`
--

INSERT INTO `dos_module_abouts` (`record_id`, `title`, `titleen`, `content`, `contenten`, `hit`, `created`, `record_order`, `hot`, `extra_field1`, `extra_field2`, `tag`, `tagen`, `description`, `descriptionen`, `activated`, `dos_usernames_username`) VALUES
(145, 'Tổng quan về công ty', '', '<p><br />Công ty Cổ phần Tư vấn Xây dựng Việt Anh (tên viết tắt VIETANH.,CO) là doanh nghiệp được thành lập ngày 15/05/2006, giấy phép ĐKKD số 3203001013 do Sở Kế hoạch Đầu tư Thành phố Đà nẵng cấp, chuyên hoạt động trong lĩnh vực tư vấn thiết kế, tư vấn đầu tư, thi công xây dựng các công trình dân dụng, công nghiệp, hạ tầng đô thị...</p>\n<p>Về nhâ lực, Công ty có một đội ngũ kiến trúc sư, kỹ sư, cử nhân và thợ lành nghề giàu kinh nghiệm, đã từng hoạt động lâu năm trong ngành thiết kế, thi công xây dựng. Công ty đã tư vấn thiết kế nhiều công trình xây dựng dân dụng và công nghiệp, thiết kế các nhà văn phòng, nhà xưởng, biệt thự, khách sạn, nhà mặt phố... Lập các dự án đầu tư xây dựng.</p>\n<p>Công ty đã tư vấn thiết kế nhiều công trình xây dựng dân dụng và công nghiệp, thiết kế các nhà văn phòng, nhà xưởng, biệt thự, khách sạn, nhà mặt phố... Lập các dự án đầu tư xây dựng.<br />Với phương châm “khoa học là nền tảng” dám nghĩ, dám làm, không ngừng đầu tư nâng cấp thiết bị lao động, học tập trau dồi kiến thức mới.Toàn thể cán bộ công nhân viên công ty đã ra sức rèn luyện, phát huy sáng kiến, cải tiến kỹ thuật, đem đến những sản phẩm có chất lượng cao, luôn đáp ứng thỏa mãn nhu cầu về kiến trúc, xây dựng, nhà ở, mỹ thuật và các dịch vụ văn hóa của qúy khách.</p>\n<p>Đội ngũ cán bộ công nhân viên công ty làm công tác Tư vấn thiết kế có 15 người chia làm 2 văn phòng. Đội ngũ cán bộ kỹ thuật có 3 thạc sĩ kiến trúc, 5 kỹ sư xây dựng, 1 kỹ sư điện- điện tử, 1 kỹ sư đô thị, 1 cử nhân kinh tế và các họa viên. Toàn thể 100% cán bộ công nhân viên công ty vẫn không ngừng cố gắng học tập nâng cao trình độ.</p>\n<p>Cá nhân Giám đốc Doanh nghiệp, 2 P. Giám đốc là Thạc sĩ Kiến trúc, là hội viên Hội Kiến trúc sư Đà Nẵng, giữ vai trò Chủ nhiệm Đồ án trong công ty, luôn đi đầu trong các công việc thiết kế và nghiên cứu khoa học.</p>\n<p>Công ty đã khẳng định được thế mạnh của một đơn vị hàng đầu trong thi công xây lắp, được sự tín nhiệm của các chủ đầu tư, và trở thành một đối tác tin cậy đối với nhiều nhà đầu tư nước ngoài đang tìm cơ hội để đầu tư vào Việt Nam. Hội nghị đã diễn ra trong không khí phấn khởi, đoàn kết và tự tin, sẵn sàng vượt qua khó khăn thử thách để hội nhập và phát triển.</p>\n<p>ĐỊA CHỈ LIÊN HỆ:<br />Công ty Cổ phần Tư vấn Xây dựng Việt Anh<br />Địa chỉ: Lô 196 Trần Thủ Độ, Quận Cẩm Lệ, TP Đà nẵng.<br />Điện thoại: (0511) 3267.369.<br />Fax: (0511)-3879044.<br />Tài khoản: 3410489 tại Ngân hàng TMCP Á Châu - Hải Phòng<br />Mã số thuế: 0400540458<br />Email: vietanhjsc@yahoo.com</p>', '', 24, '2012-05-25 06:54:56', 1, 0, '', '', 'tong-quan-ve-cong-ty', '', '', '', 1, 'xaydungvietanh'),
(146, 'Kính chào quý khách hàng!', '', '<p>Công ty Cổ phần Tư vấn Xây dựng Việt Anh (tên viết tắt VIETANH.,CO) là doanh nghiệp được thành lập ngày 15/05/2006, giấy phép ĐKKD số 3203001013 do Sở Kế hoạch Đầu tư Thành phố Đà nẵng cấp, chuyên hoạt động trong lĩnh vực tư vấn thiết kế, tư vấn đầu tư, thi công xây dựng các công trình dân dụng, công nghiệp, hạ tầng đô thị...Về nhâ lực, Công ty có một đội ngũ kiến trúc sư, kỹ sư, cử nhân và thợ lành nghề giàu kinh nghiệm, đã từng hoạt động lâu năm trong ngành thiết kế, thi công xây dựng. Công ty đã tư vấn thiết kế nhiều công trình xây dựng dân dụng và công nghiệp, thiết kế các nhà văn phòng, nhà xưởng, biệt thự, khách sạn, nhà mặt phố... Lập các dự án đầu tư xây dựng.</p>\n<p>Công ty đã tư vấn thiết kế nhiều công trình xây dựng dân dụng và công nghiệp, thiết kế các nhà văn phòng, nhà xưởng, biệt thự, khách sạn, nhà mặt phố... Lập các dự án đầu tư xây dựng.<br />Với phương châm “khoa học là nền tảng” dám nghĩ, dám làm, không ngừng đầu tư nâng cấp thiết bị lao động, học tập trau dồi kiến thức mới.Toàn thể cán bộ công nhân viên công ty đã ra sức rèn luyện, phát huy sáng kiến, cải tiến kỹ thuật, đem đến những sản phẩm có chất lượng cao, luôn đáp ứng thỏa mãn nhu cầu về kiến trúc, xây dựng, nhà ở, mỹ thuật và các dịch vụ văn hóa của qúy khách.</p>', '', 538, '2012-05-25 06:55:28', 2, 1, '', '', 'kinh-chao-quy-khach-hang', '', '', '', 1, 'xaydungvietanh');

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
) ENGINE=InnoDB  DEFAULT CHARSET=utf8 AUTO_INCREMENT=159 ;

--
-- Dumping data for table `dos_module_advs`
--

INSERT INTO `dos_module_advs` (`record_id`, `title`, `titleen`, `pic_thumb`, `url`, `create_date`, `start_date`, `end_date`, `hits`, `record_order`, `position`, `type`, `enable`, `dos_usernames_username`) VALUES
(153, 'quảng cáo', '', 'quang-cao.jpg', 'http://xaydungvietanh.dos.vn/san-pham', '2012-05-29 01:44:33', '2012-05-28 16:00:00', '2012-06-28 16:00:00', 0, 4, 'left', '_bank', 1, 'xaydungvietanh'),
(154, 'quảng cáo 1', '', 'quang-cao-1.jpg', 'http://xaydungvietanh.dos.vn/gioi-thieu', '2012-05-29 01:49:17', '2012-05-28 16:00:00', '2012-06-28 16:00:00', 0, 3, 'right', '_bank', 1, 'xaydungvietanh'),
(155, 'quảng cáo 2', '', 'quang-cao-2.jpg', 'http://xaydungvietanh.dos.vn/tin-tuc-su-kien', '2012-05-29 01:51:43', '2012-05-28 16:00:00', '2012-06-28 16:00:00', 0, 2, 'right', '_bank', 1, 'xaydungvietanh'),
(156, 'quảng cáo 3', '', 'quang-cao-3.jpg', 'http://xaydungvietanh.dos.vn/tin-tuc-su-kien', '2012-05-29 01:52:15', '2012-05-28 16:00:00', '2012-06-28 16:00:00', 0, 1, 'right', '_bank', 1, 'xaydungvietanh'),
(157, 'quảng cáo 4', '', 'quang-cao-4.jpg', 'http://xaydungvietanh.dos.vn/san-pham', '2012-05-29 01:55:43', '2012-05-28 16:00:00', '2012-06-28 16:00:00', 0, 5, 'left', '_bank', 1, 'xaydungvietanh'),
(158, 'quảng cáo 5', '', 'quang-cao-5.jpg', 'http://xaydungvietanh.dos.vn/san-pham', '2012-05-29 01:56:14', '2012-05-28 16:00:00', '2012-06-28 16:00:00', 0, 6, 'left', '_bank', 1, 'xaydungvietanh');

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
) ENGINE=InnoDB  DEFAULT CHARSET=utf8 AUTO_INCREMENT=703 ;

--
-- Dumping data for table `dos_module_banners`
--

INSERT INTO `dos_module_banners` (`banner_id`, `banner_date`, `banner_name`, `banner_url`, `banner_link`, `banner_order`, `banner_type`, `position`, `enable`, `dos_usernames_username`) VALUES
(629, '2012-05-25 07:26:32', 'Logo', 'logo.png', '', 1, 'logo', 'default', 1, 'xaydungvietanh'),
(645, '2012-05-25 13:49:06', 'Baner 1', 'baner-1.jpg', '', 2, 'banners', 'default', 1, 'xaydungvietanh'),
(646, '2012-05-25 13:49:19', 'Baner 2', 'baner-2.jpg', '', 3, 'banners', 'default', 1, 'xaydungvietanh'),
(702, '2012-05-29 07:19:37', 'banner3', 'banner3.jpg', '', 4, 'banners', 'default', 1, 'xaydungvietanh');

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
) ENGINE=InnoDB  DEFAULT CHARSET=utf8 AUTO_INCREMENT=13 ;

--
-- Dumping data for table `dos_module_contacts`
--

INSERT INTO `dos_module_contacts` (`record_id`, `title`, `titleen`, `content`, `contenten`, `create_date`, `record_order`, `hit`, `hot`, `tag`, `tagen`, `description`, `descriptionen`, `enable`, `dos_usernames_username`) VALUES
(12, 'Phòng kinh doanh', '', '<p>Hỗ trợ thông tin về tư vấn, thiết kế công trình xây dựng dân dụng và công nghiệp.</p>', '', '2012-05-27 14:15:14', 1, 0, 0, 'phong-kinh-doanh', '', '', '', '1', 'xaydungvietanh');

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
('Trang chủ', '', 'default', '', 1, '', '', '', '', 'xaydungvietanh'),
('Giới thiệu', '', 'about', '', 2, '', '', '', '', 'xaydungvietanh'),
('Dịch vụ', '', 'services', '', 3, '', '', '', '', 'xaydungvietanh'),
('Dự án & công trình', '', 'products', '', 4, '', '', '', '', 'xaydungvietanh'),
('Tin tức & sự kiện', '', 'news', '', 5, '', '', '', '', 'xaydungvietanh'),
('Video', '', 'video', '', 6, '', '', '', '', 'xaydungvietanh'),
('Liên hệ', '', 'contact', '', 7, 'Dự Án Hầm Thủ Thêm', '', '', '', 'xaydungvietanh');

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
) ENGINE=InnoDB  DEFAULT CHARSET=utf8 AUTO_INCREMENT=172 ;

--
-- Dumping data for table `dos_module_news`
--

INSERT INTO `dos_module_news` (`record_id`, `title`, `titleen`, `postdate`, `pic_thumb`, `preview`, `previewen`, `content`, `contenten`, `tag`, `tagen`, `description`, `descriptionen`, `hits`, `record_order`, `hot`, `extra_field1`, `extra_field2`, `enable`, `dos_module_item_cat_cat_id`) VALUES
(149, 'Công nghệ thi công Top-down', '', '2012-05-25 07:06:57', 'cong-nghe-thi-cong-top-down.jpg', '<p>Công nghệ thi công Top-down (từ trên xuống) là công nghệ thi công phần ngầm của công trình nhà, theo phương pháp khác với phương pháp truyền thống: thi công từ dưới lên. Trong công nghệ thi công Top-down người ta có thể đồng thời vừa thi công các tầng ngầm (bên dưới cốt ± 0,00 (cốt ± 0,00 tức là cao độ mặt nền hoàn thiện của tầng trệt công trình nhà, đọc là cốt không)) và móng của công trình, vừa thi công một số hữu hạn các tầng nhà, thuộc phần thân, bên trên cốt không (trên mặt đất).</p>', '', '<p><img style="float:left;margin:10px;" src="/public/userfiles/image/xaydungvietanh/image/tintuc.jpg" alt="" width="155" height="93" />Công nghệ thi công Top-down(từ trên xuống) là công nghệ thi công phần ngầm của công trình nhà, theo phương pháp khác với phương pháp truyền thống: thi công từ dưới lên. Trong công nghệ thi công Top-down người ta có thể đồng thời vừa thi công các tầng ngầm (bên dưới cốt ± 0,00 (cốt ± 0,00 tức là cao độ mặt nền hoàn thiện của tầng trệt công trình nhà, đọc là cốt không)) và móng của công trình, vừa thi công một số hữu hạn các tầng nhà, thuộc phần thân, bên trên cốt không (trên mặt đất).Phương pháp công nghệ chính</p>\n<p>Trong công nghệ Top-down, các tầng hầm được thi công bằng cách thi công phần tường vây bằng hệ cọc barette xung quanh nhà (sau này phần trên đỉnh của tường vây dùng làm tường bao của toàn bộ các tầng hầm) và hệ cọc khoan nhồi (nằm dưới chân các móng cột) bên trong mặt bằng nhà.</p>\n<p>Tường vây thi công theo công nghệ cọc nhồi bê tông tới cốt không (cốt nền ngay trên mặt đất) (không tính phần bê tông chất lượng kém trên đỉnh vào trong thành phần tường). Riêng các cọc khoan nhồi bê tông nằm dưới móng cột ở phía trong mặt bằng nhà thì không thi công tới mặt đất mà chỉ tới ngang cốt móng (không tính phần bê tông đầu cọc nhồi, phải tẩy bỏ đi sau này).</p>\n<p>Phần trên chịu lực tốt, ngay bên dưới móng của các cọc nhồi này được đặt sẵn các cốt thép bằng thép hình, chờ dài lên trên tới cốt không (cốt nền ngay tại mặt đất).</p>\n<p>Các cốt thép hình này, là trụ đỡ các tầng nhà hình thành trong khi thi công Top-down, nên nó phải được tính toán để chịu được tất cả các tầng nhà, mà được hoàn thành trước khi thi công xong phần ngầm (gồm tất cả các tầng hầm cộng thêm một số hữu hạn các tầng thuộc phân thân đã định trước).</p>\n<p>Tiếp theo đào rãnh trên mặt đất (làm khuôn dầm), dùng ngay mặt đất để làm khuôn hoặc một phần của khuôn đúc dầm và sàn bê tông cốt thép tại cốt không. Khi đổ bê tông sàn cốt không phải chừa lại phần sàn khu thang bộ lên xuống tầng ngầm, để (cùng kết hợp với ô thang máy) lấy lối đào đất và đưa đất lên khi thi công tầng hầm. Sàn này phải được liên kết chắc với các cốt thép hình làm trụ đỡ chờ sẵn nêu trên, và liên kết chắc với hệ tường vây (tường vây là gối đỡ chịu lực vĩnh viễn của sàn bê tông này).</p>\n<p>Sau khi bê tông dầm, sàn tại cốt không đã đạt cường độ tháo dỡ khuôn đúc, người ta tiến hành cho máy đào chui qua các lỗ thang chờ sẵn nêu ở trên, xuống đào đất tầng hầm ngay bên dưới sàn cốt không.</p>\n<p>sau đó lại tiến hành đổ bê tông sàn tầng hầm này, ngay trên mặt đất vừa đào, tương tự thi công như sàn tại cốt không, rồi tiến hành lắp ghép cốt thép cột tầng hầm, lắp khuôn cột tầng hầm và đổ bê tông chúng.</p>\n<p>Cứ làm như cách thi công tầng hầm đầu tiên này, với các tầng hầm bên dưới. Riêng tầng hầm cuối cùng thay vì đổ bê tông sàn thì tiến hành thi công kết cấu móng và đài móng.</p>\n<p>Đồng thời với việc thi công mỗi tầng hầm thì trên mặt đất người ta vẫn có thể thi công một hay vài tầng nhà thuộc phần thân như bình thường. Sau khi thi công xong hết các kết cấu của tầng hầm người ta mới thi công hệ thống thang bộ và thang máy lên xuống tầng hầm.</p>', '', 'cong-nghe-thi-cong-top-down', '', '', '', 0, 1, 1, '', '', 1, 89),
(150, 'Cao ốc kỳ lạ ở xứ sở nàng tiên cá', '', '2012-05-25 07:09:04', 'cao-oc-ky-la-o-xu-so-nang-tien-ca.jpg', '<p>Một hình khối ấn tượng, một thiết kế hợp lý, một không gian xanh bền vững cho người sử dụng.Đó là tòa nhà Rødovre ở thủ đô Copenhagen của Đan Mạch.<br />Tòa nhà chọc trời mới với diện tích sàn 21.688m2 này được đặt tại Roskildevej, một đại lộ chính phía Đông trung tâm Copenhagen, Đan Mạch.</p>\n<p> </p>', '', '<p>Một hình khối ấn tượng, một thiết kế hợp lý, một không gian xanh bền vững cho người sử dụng.Đó là tòa nhà Rødovre ở thủ đô Copenhagen của Đan Mạch.<br />Tòa nhà chọc trời mới với diện tích sàn 21.688m2 này được đặt tại Roskildevej, một đại lộ chính phía Đông trung tâm Copenhagen, Đan Mạch.</p>\n<p>Đây là sản phẩm của Liên danh 2 Cty thiết kế MVDRV (Hà Lan) và ADEPT (Đan Mạch).</p>\n<p>Mỗi công trình độc đáo đều bắt nguồn từ những ý tưởng đặc sắc.</p>\n<p style="text-align:center;"><img src="/public/userfiles/image/xaydungvietanh/image/31_tgkt_090331_1.jpg" alt="" width="450" height="483" /></p>\n<p> </p>', '', 'cao-oc-ky-la-o-xu-so-nang-tien-ca', '', '', '', 0, 2, 0, '', '', 1, 89),
(165, 'Nội thất – Cấm kỵ Phong Thủy và cách hóa giải', '', '2012-05-28 07:00:09', 'noi-that--cam-ky-phong-thuy-va-cach-hoa-giai.jpg', '<p>Mời bạn tham khảo những điều cấm kỵ trong phong thủy và thủ pháp hóa giải. Đây chưa hẳn là tất cả những gì mà khoa phong thủy đúc kết được. Nhưng chắc chắn nó cũng sẽ giúp bạn phần nào trong việc cân bằng cuộc sống của mình.</p>', '', '<p>Posted by admin on Tháng 1 15, 2010 | Leave a Comment</p>\n<p>Mời bạn tham khảo những điều cấm kỵ trong phong thủy và thủ pháp hóa giải. Đây chưa hẳn là tất cả những gì mà khoa phong thủy đúc kết được. Nhưng chắc chắn nó cũng sẽ giúp bạn phần nào trong việc cân bằng cuộc sống của mình.</p>\n<p>- Trước nhà có 1 cây to hoặc cây khô:</p>\n<p>Phong thủy tối kỵ có cây khô hoặc cây to trước nhà, sẽ khiến chủ nhà buồn khổ cô độc. Vì vậy cần chặt hết những cây khô trước nhà và không trồng duy nhất một cây to. Nếu có cây to và chưa chặt được thì dùng một đèn sáng trước cửa hoặc để tranh nhiều màu đỏ (thuộc Hoả) treo trước cửa.</p>\n<p>- Nhà ở đối diện đường vòng hoặc giao lộ :</p>\n<p>Nếu ở đối diện đường vòng hoặc đối diện giao lộ thì khí sẽ chiếu thẳng vào nhà. Sát khí gây thị phi bất hoà, ly tán gia đình và không tốt cho những người thân trong gia đình. Trường hợp nếu có những căn nhà như trên chỉ nên dùng làm cơ sở kinh doanh và không nên ở.</p>\n<p>- Gương trong phòng ngủ :</p>\n<p>Gương trong phong thủy có tác dụng phản xạ lại các luồng hung khí chiếu đến. Việc sử dụng gương phải hết sức cẩn thận không được đặt bừa bãi. Trong phòng ngủ, khi nằm không nên nhìn thấy mình trong gương. Vì điều này không tốt cho sức khỏe và làm cho bạn ngủ không sâu và không ngon giấc.</p>\n<p>- Xà nhà chắn ngang giường ngủ hoặc bàn thờ, bếp :</p>\n<p>Tại các vị trí đặt xà, khí của nó tương đối mạnh và thường là sát khí. Nếu giường ngủ đặt ngay dưới xà nhà hoặc dưới chân cầu thang thì vô cùng bất lợi. Cần khắc phục bằng cách kê giường chỗ khác hoặc dùng một trần gỗ hoặc giấy căng ngang phủ lấy xà nhà. Như vậy sẽ giảm bớt tác động xấu của xà. Điều này cũng áp dụng tương tự với bếp và bàn thờ.</p>\n<p>- Hai căn nhà có cửa chính xung đối nhau :</p>\n<p>Theo Phong Thuỷ, nếu hai nhà có cửa chính xung đối sẽ làm cho khí nhà này xung thẳng vào cửa nhà kia nên chắc chắn sẽ có một<br />nhà bị xấu. Để khắc phục có thể dùng gương Bát Quái hoặc chuông gió treo ở cửa. Gương trong Phong Thuỷ có tác dụng phản xạ lại luồng khí bay tới, nhưng việc sử dụng gương phải hết sức cẩn thận, không được sử dụng bừa bãi vì gương có thể phạn xạ cả cát khí..<br />Ngoài ra để hoá giải hung khí có thể dùng đôi con nghê, tượng Quan Công, tượng Phật Bà để trấn ở cửa hoặc dùng các loại cầu thuỷ tinh treo để hoá giải.</p>\n<p>- Nhà ở có đường đâm thẳng vào nhà :</p>\n<p>Nếu có con đường đâm thẳng vào nhà thì hung khí sẽ dội thẳng vào nhà. Ở nhà này không yên ổn dễ sinh thị phi bệnh tật, hao tổn<br />tài lộc. Để khắc phục có thể dùng gương Bát Quái hoặc xây tường cao để chắn. Ngoài ra để hoá giải hung khí có thể dùng đôi con nghê, tượng Quan Công, tượng Phật Bà để trấn ở cửa.</p>\n<p>- Nhà ở có dốc cao chạy thẳng vào nhà :</p>\n<p>Nếu có dốc cao chạy thẳng vào nhà thì khí sẽ xung thẳng vào nhà hoặc khí đổ thẳng ra đường. Khí vận chuyển trong ngôi nhà cũng<br />như mạch máu trong cơ thể, phải thu nạp sinh khí và xuất đi uế khí. Khí vận chuyển phải quanh co uốn lượn không được xộc thẳng<br />vào hoặc xộc thẳng ra ngoài. Trường hợp này cần xây nhiều bậc lên xuống để giảm xung khí và treo rèm ở cửa ra vào. Dùng thêm chó đá, đôi con nghê, hoặc tượng Quan Công, tượng Phật Bà chế ở vị trí dốc cao đâm vào nhà.</p>\n<p>- Nhà có cửa chính thông với cửa hậu :</p>\n<p>Nếu cửa chính thông với cửa hậu và cửa giữa (nếu có) thì tạp thành thế ba cửa thông nhau. Khí vào sẽ bị thất tán hết, chủ tiền tài không vượng, hao tổn tiền tài, khng cầm giữ được tài lộc. Trường hợp này cần sửa lại cửa hoặc đặt bình phong chắn ở giữa để cửa chính và cửa phụ không nhìn thấy nhau nữa. Dùng cầu thuỷ tinh treo ở vị trí thông giữa hai cửa, dùng tượng rùa đầu rồng hoặc tượng Tam Đa che chắn ở phía cửa phụ.</p>\n<p>- Nhà bị góc nhọn của nhà khác chiếu thẳng vào nhà :</p>\n<p>Góc nhọn của một nhà khác đâm thẳng vào nhà sẽ mang sát khí đến, rất tổn hại cho gia chủ, gây nên bất hoà, thị phi, hao tán tài lộc.</p>\n<p>- Nhà trước cao sau thấp :</p>\n<p>Theo Phong Thủy thì nhà trước cao sau thấp chủ không phát về hậu vận, càng ở lâu sẽ càng sinh ra suy bại, hao tốn tiền tài công danh. Vì vậy, nên khắc phục ngay bằng cách xây dựng một tường cao phía sau nhà, ở đó đặt một vài cột đèn sáng chiếu lên mái sau nhà. Phía trước nên hạ thấp cổng, cửa và chiều cao tường chắn phía trước nhà. Kết hợp thêm các yếu tố nội thất, sử dụng các vật khí để tăng vượng khí trong nhà.</p>\n<p>- Bếp của nhà lộ ngay ở ngoài :</p>\n<p>Theo Phong Thủy thì bếp là nguồn tài lộc và phải kín đáo sao cho người ngoài đi vào cửa không thể nhìn thấy bếp. Nếu đứng ở cửa nhà đã nhìn thấy bếp thì phạm điều tối kỵ. Nên khắc phục bằng cách bố trí lại bếp hoặc dùng một bình phong hoặc đôn che chắn cho bếp.</p>\n<p>- Giường ngủ đối diện với cửa phòng :</p>\n<p>Giường ngủ không nên đặt đối diện với cửa phòng vì khí từ cửa vào sẽ xung thẳng đến giường, gây tổn hại cho sức khoẻ người nằm. Vì thế nên kê giường nơi khác hoặc treo mành, rèm ở ngay cửa.</p>\n<p>- Bếp đặt ngay cạnh bồn rửa bát hoặc trên bể chứa :</p>\n<p>Bếp thuộc Hoả nên Hoả không thể dung hoà với Thủy. Vì vậy không được để bếp cạnh chậu rửa bát vì Thủy khắc Hoả làm giảm sinh khí của bếp. Nên thiết kế bếp ở xa bồn rửa và tủ lạnh cũng như các đồ dùng chứa nước.</p>\n<p>Theo : Sưu tầm</p>\n<p> </p>', '', 'noi-that-cam-ky-phong-thuy-va-cach-hoa-giai', '', '', '', 0, 3, 1, '', '', 1, 91),
(166, 'Bố trí góc làm việc thuận theo Phong Thủy', '', '2012-05-29 05:40:17', 'bo-tri-goc-lam-viec-thuan-theo-phong-thuy.jpg', '<p>Phòng làm việc tại nhà hiện nay xét về Phong Thủy là một không gian dung hợp giữa thư phòng theo kiểu Đông phương và văn phòng theo kiểu Tây phương…</p>', '', '<p>Góc làm việc là phần quan trọng của ngôi nhà. Thuận theo phong thuỷ không chỉ làm góc làm việc đẹp hơn mà còn làm công việc trở nên thuận lợi theo quan niệm của người Phương Đông.</p>\n<p><strong>Kết nối trong ngoài</strong></p>\n<p>Thông thường những góc làm việc ở nhà, yếu tố “nối kết” được ưu tiên tính đến. Một bàn làm việc ở nhà, vị trí thuận lợi là vị trí có thể để được điện thoại, nối kết internet, máy scan, máy in và gần đấy là tủ đựng tài liệu, hồ sơ cá nhân. Nếu rộng rãi hơn, chủ nhân có thể bố trí thêm kệ sách hoặc thư viện cho riêng mình.</p>\n<p><img style="vertical-align:middle;margin-left:auto;margin-right:auto;" src="http://www.archi.vn/Modules/CMS/Uploads/115/Nam_2009/Thang_2/Ngay_21/14.jpg" alt="" /></p>\n<p>                             Hình ảnh chỉ có tính chất minh họa.</p>\n<p>Việc trang bị máy tính xách tay khiến cho ngày nay những bàn làm việc gần như không còn chiếm quá nhiều diện tích. Thói quen làm việc, đọc, xem thời sự, nghe đài, tra cứu tài liệu…. và thư giãn sau khi làm việc của một số người khiến cho căn phòng đa chức năng hoàn toàn có thể nằm trong tầm tay của những nhà thiết kế, theo yêu cầu của chủ nhân. Và dĩ nhiên, những ai đã thường xuyên làm việc ở nhà chắc không bao giờ muốn chỗ làm việc của mình quá lạnh lùng khắc khổ như ở văn phòng (có thể treo ảnh gia đình, trang trí tranh, hoặc thậm chí là những vật dụng “độc” và lạ như con chuột, bàn phím, hộp đựng name card, điện thoại … thể hiện sở thích riêng của mình).</p>\n<p><strong>Luồng khí được kích hoạt</strong></p>\n<p>Vị trí chỗ làm việc (hay cả một phòng riêng) cần được cân nhắc sao cho luồng khí tại đây luôn được kích hoạt tốt mà vẫn ổn định, tức là tránh các luồng di chuyển xuyên qua và đảm bảo thông thoáng, chiếu sáng. Vai trò của dương quang (ánh sáng mặt trời) hoặc các nguồn sáng nhân tạo rất cần thiết, do đó góc làm việc (vốn thuộc Dương) nên bố trí ở chỗ yên tĩnh nhưng phải đủ ánh sáng và thông thoáng tự nhiên.</p>\n<p> <img style="margin-left:auto;margin-right:auto;" src="http://www.archi.vn/Modules/CMS/Uploads/115/Nam_2009/Thang_2/Ngay_21/24.jpg" alt="" width="500" height="375" /></p>\n<p>            Hình ảnh chỉ có tính chất minh họa.</p>\n<p>Nhiều máy móc thiết bị sử dụng làm tăng tính Kim của phòng làm việc, gây xung khắc với các không gian thuộc Mộc như phòng ngủ hoặc phòng ăn nếu đặt chỗ làm việc trong các không gian này vừa không hợp vệ sinh vừa gây ảnh hưởng xấu đến giấc ngủ và bữa ăn. Thổ sinh Kim nên hình thể lý tưởng của phòng làm việc nên là hình vuông hoặc gần vuông, có thể có góc bo tròn, bầu dục hoặc bát giác, lục giác với nhiều cửa sổ mở ra các tầm nhìn thoáng đãng. Cần tránh bố trí chỗ làm việc tại phòng hình thang hoặc góc nhọn (thuộc Hỏa, khắc Kim).</p>\n<p>Cửa phòng làm việc có thể thông sang phòng khách (dễ liên hệ đối ngoại), hoặc sang phòng ngủ và vệ sinh (để tiện cho làm việc về khuya), nhưng tránh gần bếp vì sẽ bị ảnh hưởng khói mùi. Không nên mở nhiều cửa tại phòng làm việc gây nhiễu luồng khí, mất tập trung và khó kê đồ đạc. Nếu kết hợp chỗ làm việc với phòng ngủ lớn thì phải có vách lửng, tủ ngăn hoặc rèm che để tránh làm trường khí của hai phần Kim – Mộc ảnh hưởng lẫn nhau.</p>\n<p>Màu sắc và bố trí vật dụng</p>\n<p>Theo nguyên tắc Ngũ hành tương sinh thì Thổ sinh Kim, Kim sinh Thủy, vì vậy các màu sắc dùng trong phòng làm việc nên là các màu thuộc sắc độ vàng (Thổ), trắng (Kim), có thể thêm các nét màu đen (Thủy) hoặc sắc độ xanh để tạo dáng mạnh mẽ và sự sạch sẽ, dịu mát. Nếu dùng những màu chói lọi dễ gây cảm giác căng thẳng, hoặc màu tối tăm gây u buồn, thụ động.</p>\n<p><img style="margin-left:auto;margin-right:auto;" src="http://www.archi.vn/Modules/CMS/Uploads/115/Nam_2009/Thang_2/Ngay_21/34.jpg" alt="" width="500" height="375" /></p>\n<p>           Hình ảnh chỉ có tính chất minh họa.</p>\n<p>Đối với người trẻ tuổi có thể bổ sung các màu nóng và đường nét vui để kích thích sáng tạo. Trang trí và sắp xếp vật dụng trong phòng làm việc cũng cần dựa theo tương sinh Ngũ Hành, ví dụ bàn ghế phù hợp là dạng tròn (Kim), vuông hoặc chữ nhật (Thổ), có thể bo góc để giảm va chạm khi đi lại.</p>\n<p>Bố trí thêm bể cá cảnh hay chậu cây cũng rất có ích trong việc tạo không khí sống động cho nơi làm việc. Cần tránh ngồi làm việc dưới quạt trần, đèn chùm hay dầm nhà vì các chỗ này thường hay đóng bụi, thổi gió hoặc ánh sáng gay gắt trên đầu, khuấy động trường khí, tác động xấu tới sức khoẻ và năng lực làm việc.</p>\n<p><strong>Tổ chức thư phòng theo dạng hành Mộc</strong></p>\n<p>Phòng làm việc tại nhà hiện nay xét về Phong Thủy là một không gian dung hợp giữa thư phòng theo kiểu Đông phương (nơi đọc sách, lưu trữ sách vở, đàm dạo…thuộc hành Mộc) và văn phòng theo kiểu Tây phương với các vật dụng tiện nghi (máy tính, trang thiết bị chuyên môn …thuộc hành Kim) ngày càng được hiện đại hóa. Hai hành đối lập này tưởng chừng xung khắc nhau nhưng thực ra mang tính bổ sung tương hỗ lẫn nhau. Nhiều gia chủ hiện nay khi có điều kiện đang quay về cách thức tổ chức thư phòng theo dạng truyền thống để phát huy tốt các thuận lợi cũng như hạn chế những ảnh hưởng xấu đến các không gian khác.</p>\n<p><img style="margin-left:auto;margin-right:auto;" src="http://www.archi.vn/Modules/CMS/Uploads/115/Nam_2009/Thang_2/Ngay_21/44.jpg" alt="" width="360" height="250" /></p>\n<p>                                  Hình ảnh chỉ có tính chất minh họa.</p>\n<p>Đối với không gian thiên về đọc sách, tra cứu dạng thư phòng thì các bố trí sẽ cần được bổ sung thêm hành Mộc trong sử dụng vật liệu. Ví dụ các tủ sách nên dùng gỗ và kính (Mộc và Thủy) và chạy quanh phòng tạo điểm dựa cho chỗ ngồi; sàn có thể lát gỗ hay thảm để cách âm và tạo sự ấm áp, đồng bộ. Dùng rèm vải, mành sáo hoặc nan chớp để giảm nắng chói đồng thời cũng tránh ảnh hưởng các phòng lân cận.Điểm chú ý đối với thư phòng nói riêng và phòng làm việc nói chung là bàn đọc sách cần thoải mái và có tiểu minh đường trước mặt (tức là khoảng trống thuận lợi để quan sát, tránh ngồi quay lưng ra cửa đi, vừa không thư giãn tốt, lại vừa bị giật mình khi có ai vào phòng từ sau lưng). Có thể bố trí sofa hay ghế dài đọc sách nhưng cần giảm việc đọc nhiều ở tư thế nằm, tốt nhất là đọc sách ngồi bên án thư, bàn rộng có đèn riêng, cạnh cửa sổ, đồng thời bổ sung cây xanh, tranh ảnh, tiểu cảnh trang trí tạo các điểm nhấn để nổi bật khí.</p>\n<p>Như vậy, về mặt Phong Thủy, không gian làm việc tại nhà không những phải đảm bảo yếu đối nội và riêng tư (tĩnh, âm) mà còn luôn cần sự thông thoáng, bố trí thiết bị hợp lý và khả năng kích thích năng lực làm việc (động, dương). Cách bố trí mang tính tổng hợp truyền thống – hiện đại rất cần quan tâm đúng mức, dù diện tích chiếm chỗ có thể không nhiều.</p>\n<p><strong>Sưu Tầm</strong></p>', '', 'bo-tri-goc-lam-viec-thuan-theo-phong-thuy', '', '', '', 0, 4, 1, '', '', 1, 91),
(167, 'Để căn bếp hợp Phong thủy', '', '2012-05-29 05:43:39', 'e-can-bep-hop-phong-thuy.jpg', '<p><strong>Trong Phong thủy, nhà bếp được xem như thước đo tình trạng sức khỏe của chủ nhân. Nhà bếp càng ấm cúng, thông thoáng và sạch sẽ, sức khỏe của bạn càng tốt. Nếu bạn muốn tình cảm thêm gắn bó, cơ thể thêm sức sống và tinh thần thêm lạc quan, hãy tham khảo vài giải pháp tạo ra căn bếp hợp Phong thủy sau.</strong></p>', '', '<p><strong>Nên</strong> – Hãy sử dụng bếp lò thường xuyên. Bếp lò tượng trưng cho sự phát triển khả năng tiềm ẩn của bạn. Càng nấu nướng thường, bạn sẽ càng dễ dàng cải thiện sức khỏe, tiền tài và tình cảm.</p>\n<p><img style="margin-left:auto;margin-right:auto;" src="http://image.diaoconline.vn/Tintuc/2009/07/10_DOOL_090710_T1_PT_1.jpg" alt="" width="300" height="246" /></p>\n<p><strong>Không nên</strong> – Bày biện dao kéo trong bếp. Những dụng cụ “cắt” năng lượng này có thể tạo ra mâu thuẫn và lo lắng. Hãy để dao trong giá cắm bằng gỗ và cất kéo trong ngăn.</p>\n<p><strong>Nên</strong> – Giữ thức ăn tươi ngon để mọi người cùng thưởng thức. Bạn có thể để trong bếp các loại thực phẩm tốt cho sức khỏe để ai cũng biết rằng bếp nhà bạn là “thiên đường” dinh dưỡng. Một đĩa trái cây tươi là sự lựa chọn tuyệt vời.</p>\n<p><img style="margin-left:auto;margin-right:auto;" src="http://image.diaoconline.vn/Tintuc/2009/07/10_DOOL_090710_T1_PT_3.jpg" alt="" width="300" height="419" /></p>\n<p><strong>Không nên</strong> – Để bếp bừa bãi. Nhà bếp lộn xộn có thể là một trong những nguyên nhân của sự thừa cân. Nếu bạn không muốn tăng thêm ký lô nào nữa, hãy tống khứ những thứ bề bộn ấy đi. Hãy xếp gọn gàng mọi vật dụng trong bếp theo đúng vị trí của nó và lau chùi chúng nếu bạn không sử dụng hằng ngày.</p>\n<p><strong>Nên</strong> – Có một ngăn đựng đồ lặt vặt trong bếp. Đây là nơi chứa đựng những thứ linh tinh và bếp là nơi thích hợp cho nó. Nhưng bạn hãy chắc rằng ngăn đựng này cũng cần được xếp gọn và có thể đóng mở nắp dễ dàng. Bạn có thể nhét vào đấy hàng đống thứ như dây, chìa khóa dự phòng, pin, keo dán… và bất cứ gì bạn muốn “quẳng” vào đó.</p>\n<p><img style="margin-left:auto;margin-right:auto;" src="http://image.diaoconline.vn/Tintuc/2009/07/10_DOOL_090710_T1_PT_4.jpg" alt="" width="300" height="300" /></p>\n<p><strong>Không nên</strong> – Cất đồ nặng, cồng kềnh trên cao. Nó sẽ gây cho bạn cảm giác choáng ngợp. Nếu bạn đang phải treo nồi niêu xoong chảo trên giá cao quá đầu, hãy đặt giá ở chỗ mà bạn không thường lui tới hay ngồi dưới nó.</p>\n<p><strong>Nên</strong> – Có thể quan sát rõ lối ra vào khi bạn đang nấu nướng. Nó không chỉ giúp bạn thư giãn hơn khi đang chuẩn bị bữa ăn mà bạn còn có thể đón nhận nhiều cơ hội trong các lĩnh vực khác của cuộc sống. Nếu bếp lò nhà bạn nằm dối diện với bức tường, hãy đặt một tấm kính để nó phản chiếu lối ra vào và bạn cũng sẽ thấy những gì bất thường sau lưng mình.</p>\n<p><strong>Không nên</strong> – Để nước trên bếp trong thời gian lâu mà không sử dụng. Điều này có thể làm giảm đi niềm vui sống của bạn. Hãy để ấm không khi bạn không dùng đến.</p>\n<p><strong>Nên</strong> – Bảo đảm rằng ống nước vẫn hoạt động tốt. Ống rò rỉ và vòi nước nhỏ giọt là tín hiệu cho thấy tiền tài đang hao tổn.</p>\n<p><strong>Không nên</strong> – Quên tạo ra những chỗ ngồi thoải mái trong bếp. Căn bếp càng gần gũi, bạn sẽ càng dễ đón nhận sự yêu thương và giúp đỡ khi cần.</p>\n<p><strong>Song Thu – DiaOcOnline</strong></p>', '', 'de-can-bep-hop-phong-thuy', '', '', '', 0, 5, 1, '', '', 1, 91),
(168, 'Phong thủy cho cây xanh trong nhà ở', '', '2012-05-29 05:46:55', 'phong-thuy-cho-cay-xanh-trong-nha-o.jpg', '<p>Cây xanh nói riêng và thiên nhiên nói chung luôn có vai trò quan trọng đối với đời sống hàng ngày. Do đó, việc lựa chọn loại cây và vị trí trồng được chú trọng và lựa chọn cẩn thận theo những quy luật của thuật phong thủy.</p>', '', '<p>Theo phong thủy, cây xanh cũng chia thành âm dương và ngũ hành. Những cây có tính dương mạnh nên trồng ở nơi có nhiều ánh sáng, ánh nắng. Ngược lại, cây có tính âm hơn nên đặt ở trong nhà hay bóng râm.</p>\n<p><img style="margin-left:auto;margin-right:auto;" src="http://www.dichvuvanchuyen.com/images/stories/phong_thuy/phong-thuy-01.jpg" alt="" /></p>\n<p>Những cây có dương tính là cây cần nhiều ánh sáng. Khi trồng ở nơi ẩm thấp, thiếu ánh sáng, chúng sẽ phát triển yếu ớt, khó ra hoa kết trái và dễ chết. Trong khi đó, loại cây có tính âm hơn như hoa hồng, cúc, thược dược, đỗ quyên… có thể đặt ở trong nhà hay nơi bóng râm.</p>\n<p>Trong không gian sân vườn bao quanh nhà, việc trồng cây xanh tính dương mạnh có tác dụng làm “bức tường” lọc tạp âm của môi trường bên ngoài, tránh sự ồn ào, ô nhiễm khói bụi, đồng thời như một bức rào chắn bảo vệ gia đình.</p>\n<p>Khi trồng cây quanh nhà, bạn nên ‎không nên trồng cây to ngay trước ngõ nhà hoặc cửa sổ vì điều này sẽ ngăn trở ánh sáng mặt trời và luồng khí đi vào nhà, ảnh hưởng không tốt đến sự luân chuyển và không khí bên trong.</p>\n<p><img style="margin-left:auto;margin-right:auto;" src="http://www.dichvuvanchuyen.com/images/stories/phong_thuy/phong-thuy-02.jpg" alt="" /></p>\n<p>Đối với không gian nội thất, việc trồng cây xanh có tính âm không chỉ khiến ngôi nhà thêm tươi tắn mà còn giúp tăng cường sinh khí thêm thịnh vượng, dồi dào. Những cây có gai hoặc hình lá kim như đỗ quyên, hoa hồng, tiên nhân… không thích hợp để bố trí trong nhà, gây ảnh hưởng đến sức khỏe của mọi người. Bạn nên chọn những cây có cành lá tươi tốt, xanh tươi hoặc có hoa để bày biện trang trí.</p>\n<p>Việc trồng Lan tử la, Vạn niên thanh, Hoàng kim cát… có thể làm cho sức khỏe của mọi người dồi dào hơn, đồng thời khiến không khí trong nhà được trong lành và tươi mát. Tuy nhiên, bạn nên lưu ý không nên để hoa, lá cây héo úa, chết rũ vì điều này lại mang ý nghĩa lụi tàn, suy kiệt không tốt cho vận khí của ngôi nhà.</p>\n<p><img style="margin-left:auto;margin-right:auto;" src="http://www.dichvuvanchuyen.com/images/stories/phong_thuy/phong-thuy-03.jpg" alt="" /></p>\n<p>Nếu không có nhiều thời gian chăm sóc, bạn có thể trang trí thêm những bình hoa bằng vải lụa, giấy, nhựa. Chúng cũng giúp không gian căn phòng thêm bừng sắc và rạng rỡ hơn mà không ảnh hưởng đến phong thủy.</p>\n<p>Tuy nhiên, khi gia đình định làm hòn non bộ, núi giả trong nhà, bạn không nên mua loại có hình dáng núi non hiểm trở - mang ý nghĩa sát, không tốt về mặt phong thủy. Đồng thời, nó có thể dễ làm các thành viên trong nhà – đặc biệt là trẻ nhỏ bị thương khi chơi đùa.</p>\n<p><strong>KTS. Lê Văn Cường</strong></p>', '', 'phong-thuy-cho-cay-xanh-trong-nha-o', '', '', '', 0, 6, 1, '', '', 1, 90),
(169, 'Sinh - lão - bệnh - tử trong cầu thang nhà ở', '', '2012-05-29 05:48:40', 'sinh-lao-benh-tu-trong-cau-thang-nha-o.jpg', '<p>Tổng bậc cầu thang nhà ở thường tuân theo quy luật vòng tuần hoàn Sinh - Lão - Bệnh - Tử. Lý tưởng nhất khi bậc cuối rơi vào cung “Sinh”, tương đương với các số lẻ (bội của 4 cộng thêm 1, ví dụ như 21, 17...)</p>', '', '<p>Cầu thang rất quan trọng trong giao thông theo trục đứng của ngôi nhà. Ngoài sự tiện nghi, theo phong thủy học cầu thang còn phải tuân theo những kiêng kỵ, lành dữ. Cầu thang là điểm khởi đầu dẫn luồng khí trong lành đến các phòng sinh hoạt của toàn bộ căn nhà. Vì thế điểm khởi đầu của cầu thang trong nhà phải sáng sủa, thông thoáng, và được đặt vào cung “lành”, hướng tốt.</p>\n<p>Việc tổng số bậc rơi vào cung “Sinh” sẽ đảm bảo không những thuận tiện về sinh hoạt, đồng thời cũng mang lại cho chúng ta cảm giác yên tâm, thoải mái trong ngôi nhà của mình. Số lượng bậc thang được tính từ bậc thứ nhất cho tới điểm kết thúc (chiếu tới, hành lang). Nếu có chiếu nghỉ thì chiếu nghỉ được tính như một bậc thang bình thường.</p>\n<p><img style="margin-left:auto;margin-right:auto;" src="http://www.dichvuvanchuyen.com/images/stories/phong_thuy/thang490.jpg" alt="" /></p>\n<p>Một số khái niệm và thông số kỹ thuật cầu thang nhà dân dụng:</p>\n<p>- Chiều rộng của thân thang: Trong kiến trúc nhà ở dân dụng hiện nay, cầu thang thường rộng từ 0,9 m đến khoảng 1,2 m.</p>\n<p>- Độ dốc của cầu thang: Độ dốc của cầu thang quyết định bởi tỷ lệ chiều cao và chiều rộng của bậc thang, có quan hệ mật thiết với khoảng rộng của bước đi, được tính bằng công thức 2h + b = 600 mm (trong đó h là chiều cao bậc thang; b là chiều rộng bậc thang). Trong các công trình kiến trúc, độ cao của bạc thang trong nhà thường từ 150 đến 180 mm, chiều rộng tương ứng từ 240 đến 300 mm.</p>\n<p>- Kích thước của chiếu nghỉ: Chiều rộng của chiếu nghỉ không được nhỏ hơn chiều rộng của thân thang, đồng thời phải thuận tiện trong quá trình vận chuyển.</p>\n<p>- Chiều cao của lan can: Có liên quan mật thiết với độ dốc của cầu thang, cầu thang không dốc yêu cầu lan can làm cao một chút.Thông thường chiều cao của lan can tính từ trung tâm của mặt bậc thang đến mặt trên của tay vịn là 900 mm.</p>\n<p><strong>KTS Vũ Quang Định</strong></p>', '', 'sinh-lao-benh-tu-trong-cau-thang-nha-o', '', '', '', 0, 7, 1, '', '', 1, 90),
(170, 'Phong thủy cho phòng tắm hiện đại', '', '2012-05-29 05:51:11', 'phong-thuy-cho-phong-tam-hien-dai.jpg', '<p> Vị trí của phòng tắm được khoa phong thủy coi trọng vì nước đồng nghĩa với sự giàu sang, phú quý. Dưới đây là một số gợi ý từ kiến trúc sư của Hafa Việt Nam - Eurostyle.</p>', '', '<p>Bản chất của phòng tắm là không sạch sẽ vì vậy bạn nên đặt nó ở hướng dữ, tránh đặt đè lên hướng lành (làm ảnh hưởng không tốt đến các sao lành, vận may của đất ở). Ngoài ra, phòng tắm nên đặt chỗ kín, cách xa cửa ra vào chính. Chủ nhà cũng không nên đặt không gian này gần nhà bếp vì vấn đề sức khỏe.</p>\n<p><img style="margin-left:auto;margin-right:auto;" src="http://www.dichvuvanchuyen.com/images/stories/phong_thuy/01.jpg" alt="" /></p>\n<p>Ngoài ra, nhà vệ sinh nên đặt ở nơi khuất tầm nhìn, có thể sử dụng màn che hoặc giấu sau một cánh cửa. Cửa nhà vệ sinh nên được đóng kín, bồn cầu phải luôn đậy lại. Đối với nội thất phòng tắm, gương soi có thể tạo ảo giác rộng hơn cho một không gian hẹp. Khoa học phong thủy kiêng kỵ đặt các gương soi đối diện hay xếp liền cạnh nhau. Gương nên gắn dính chặt hơn là nhô ra khỏi tường. Bạn cũng không nên dùng loại gương phóng lớn vì nó dễ làm méo mó hình ảnh. Các tủ trong phòng tắm là nơi dễ dàng tích chứa khí ứ đọng. Do đó, bạn cần phải thường xuyên lau chùi và giữ vệ sinh sạch sẽ các trang thiết bị nội thất phòng tắm.</p>\n<p><img style="margin-left:auto;margin-right:auto;" src="http://www.dichvuvanchuyen.com/images/stories/phong_thuy/02.jpg" alt="" /></p>\n<p>Theo quan niệm của phong thủy, việc sử dụng phòng tắm chung với các phòng khác là không phù hợp. Nếu được, chủ nhà nên tách phòng tắm khỏi nhà vệ sinh hoặc bảo đảm khu vực phòng tắm nằm trong phòng ngủ phải có hệ thống thông khí hoạt động tốt.</p>\n<p><img style="margin-left:auto;margin-right:auto;" src="http://www.dichvuvanchuyen.com/images/stories/phong_thuy/03.jpg" alt="" /></p>\n<p>Màu sắc dùng trang trí phòng tắm sẽ ảnh hưởng đến cảm giác của người dùng. Xu hướng xây dựng phòng tắm hiện nay đang hướng tới việc lựa chọn những gam màu “organic” gần với thiên nhiên như xanh dương, xanh lá cây… Tuy nhiên, dù chọn màu gì, bạn vẫn có thể tạo một không gian thư giãn với những bản ballad nhẹ nhàng cùng mùi hương quyến rũ của tinh dầu.</p>\n<p><img style="margin-left:auto;margin-right:auto;" src="http://www.dichvuvanchuyen.com/images/plg_imagesized/54-04.jpg" alt="" width="320" height="400" /></p>\n<p>Phòng tắm là một trong số ít nơi chúng ta có thể tạm xa lánh thế giới xung quanh và ở một mình. Ngày nay, với nhu cầu ngày một gia tăng thì phòng tắm nghiễm nhiên trở thành một nơi thư giãn lý tưởng cho con người sau mỗi ngày làm việc, tạm quên đi những lo âu bộn bề của cuộc sống.<br />Phòng tắm là nơi thư giãn lý tưởng cho con người sau mỗi ngày làm việc, tạm quên đi những lo âu bộn bề của cuộc sống.</p>\n<p>Cuối cùng, phòng tắm cần thường xuyên sạch sẽ, khô thoáng để đảm bảo sức khỏe cho người sinh hoạt trong nhà và không gây ảnh hưởng tới các không gian khác.</p>\n<p><strong>(Nguồn: Hafa Bathroom Viet Nam)</strong></p>\n<p> </p>', '', 'phong-thuy-cho-phong-tam-hien-dai', '', '', '', 0, 8, 1, '', '', 1, 91),
(171, 'Chọn màu sắc hợp phong thủy để đem vận may đến cho ngôi nhà của bạn', '', '2012-05-29 05:53:45', 'chon-mau-sac-hop-phong-thuy-de-dem-van-may-den-cho-ngoi-nha-cua-ban.jpeg', '<p>Theo phong thủy, có ba cấp độ hiệu quả khi dùng màu sắc và tương ứng với mỗi góc nhà là màu tốt nhất, màu bình thường và màu cấm kỵ. Bài trí nhà cửa theo phong thủy có liên quan mật thiết đến việc chọn lựa màu sắc và cách phối hợp các loại màu sắc đó với nhau.</p>', '', '<p>Lý do là mỗi màu sắc có tác dụng tốt nhất ở mỗi góc nhà hay góc phòng.</p>\n<p>Góc Nam: Màu tốt nhất là màu đỏ và da cam. Màu trung bình là màu vàng, xanh lục. Màu cấm kỵ là màu đen và xanh dương.</p>\n<p><img style="margin-left:auto;margin-right:auto;" src="http://phongthuyhoc.com/images/post/2011/09/30/22/2124/sac-mau-ngoi-nha-theo-phong-thuy.jpeg" alt="" width="499" height="347" /></p>\n<p>Góc Bắc: Màu tốt nhất là đen và xanh dương. Màu trung bình là trắng, bạc. Màu cấm kỵ là màu vàng và nâu nhạt.</p>\n<p>Góc Tây: Màu tốt nhất là trắng và xám. Màu trung bình là màu bạc, vàng. Màu cấm kỵ là đỏ và da cam.</p>\n<p>Góc Đông: Màu tốt nhất là xanh lục, nâu. Màu trung bình là đen, xanh dương. Màu cấm kỵ là trắng, bạc.</p>\n<p>Góc Đông Nam: Màu tốt nhất là xanh lục nhạt. Màu trung bình là xanh nhạt. Màu cấm kỵ là trắng và xám.</p>\n<p>Góc Tây Nam: Màu tốt nhất là vàng, nâu nhạt. Màu trung bình là đỏ, da cam. Màu cấm kỵ là xanh lục, nâu.</p>\n<p>Góc Đông Bắc: Màu tốt nhất là vàng, nâu nhạt. Màu trung bình là đỏ, da cam. Màu cấm kỵ là xanh lục, nâu.</p>\n<p>Góc Tây Bắc: Màu tốt nhất là trắng, bạc. Màu trung bình là xám, vàng. Màu cấm kỵ là đỏ, da cam.</p>\n<p>Nguồn: Phong Thuy – Phong Thuy Nha O – Phong Thuy Tu Vi</p>', '', 'chon-mau-sac-hop-phong-thuy-de-dem-van-may-den-cho-ngoi-nha-cua-ban', '', '', '', 0, 9, 1, '', '', 1, 90);

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
) ENGINE=InnoDB  DEFAULT CHARSET=utf8 AUTO_INCREMENT=92 ;

--
-- Dumping data for table `dos_module_news_cat`
--

INSERT INTO `dos_module_news_cat` (`cat_id`, `cat_parent_id`, `cat_title`, `cat_titleen`, `preview`, `previewen`, `tag`, `tagen`, `description`, `descriptionen`, `pic_full`, `cat_order`, `cat_extra1`, `cat_extra2`, `cat_enable`, `dos_usernames_username`) VALUES
(89, 0, 'Tin tức và sự kiện', '', '', '', 'tin-tuc-va-su-kien', '', '', '', '', 1, '', '', 1, 'xaydungvietanh'),
(90, 0, 'Phong thủy nhà ở', '', '', '', 'phong-thuy-nha-o', '', '', '', '', 2, '', '', 1, 'xaydungvietanh'),
(91, 0, 'Nội thất phong thủy', '', '', '', 'noi-that-phong-thuy', '', '', '', '', 3, '', '', 1, 'xaydungvietanh');

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
('''127.0.0.1''', 1348173739);

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
) ENGINE=InnoDB  DEFAULT CHARSET=utf8 AUTO_INCREMENT=2013 ;

--
-- Dumping data for table `dos_module_products`
--

INSERT INTO `dos_module_products` (`record_id`, `title`, `titleen`, `postdate`, `pic_thumb`, `pic_full`, `pic_desc`, `preview`, `previewen`, `content`, `contenten`, `tag`, `tagen`, `description`, `descriptionen`, `hits`, `record_order`, `unit`, `hot`, `specials`, `extra_field1`, `extra_field2`, `extra_field3`, `extra_field4`, `enable`, `dos_module_item_cat_cat_id`) VALUES
(1944, 'Khu du lịch sinh thái và nghỉ dưỡng cao cấp ven đầm Lập An - Lăng Cô', '', '2012-05-28 06:05:50', 'khu-du-lich-sinh-thai-va-nghi-duong-cao-cap-ven-dam-lap-an-lang-co-thumb.jpg', 'khu-du-lich-sinh-thai-va-nghi-duong-cao-cap-ven-dam-lap-an-lang-co.jpg', '', '<p><span style="font-size:12pt;">Địa điểm : Huyện Phú Lộc, tỉnh Thừa Thiên Huế.</span></p>\n<p><span style="font-size:12pt;">Chủ đầu tư: Công ty cổ phần đầu tư xây dựng và du lịch CIT</span></p>\n<p><span style="font-size:12pt;">Tổng diện tích: 90.000m2</span></p>', '', '<p><span style="font-size:12pt;">Địa điểm : Huyện Phú Lộc, tỉnh Thừa Thiên Huế.</span></p>\n<p><span style="font-size:12pt;">Chủ đầu tư: Công ty cổ phần đầu tư xây dựng và du lịch CIT</span></p>\n<p><span style="font-size:12pt;">Tổng diện tích: 90.000m2</span></p>', '', 'khu-du-lich-sinh-thai-va-nghi-duong-cao-cap-ven-dam-lap-an-lang-co', '', '', '', 0, 1, '', 1, 0, '', '', '', '', 1, 463),
(1945, 'Khu du lịch nghỉ dưỡng - thể thao hồ Tuyền Lâm', '', '2012-05-28 06:08:58', 'khu-du-lich-nghi-duong-the-thao-ho-tuyen-lam-thumb.jpg', 'khu-du-lich-nghi-duong-the-thao-ho-tuyen-lam.jpg', '', '<p><span style="font-size:12pt;">Địa điểm : Khu du lịch Hồ Tuyền Lâm, thành phố Đà Lạt, tỉnh Lâm Đồng.</span></p>\n<p><span style="font-size:12pt;">Chủ đầu tư:Công ty cổ phần đầu tư Gia Tuệ</span></p>\n<p><span style="font-size:12pt;">Tổng diện tích: 170.000m2</span></p>', '', '<p><span style="font-size:12pt;">Địa điểm : Khu du lịch Hồ Tuyền Lâm, thành phố Đà Lạt, tỉnh Lâm Đồng.</span></p>\n<p><span style="font-size:12pt;">Chủ đầu tư:Công ty cổ phần đầu tư Gia Tuệ</span></p>\n<p><span style="font-size:12pt;">Tổng diện tích: 170.000m2</span></p>', '', 'khu-du-lich-nghi-duong-the-thao-ho-tuyen-lam', '', '', '', 0, 2, '', 1, 0, '', '', '', '', 1, 463),
(1946, 'Khu du lịch hải đảo', '', '2012-05-28 06:10:41', 'khu-du-lich-hai-dao-thumb.jpg', 'khu-du-lich-hai-dao.jpg', '', '<p><span style="font-size:12pt;">Địa điểm : Đảo Ngọc Thảo, phường Ngọc Hiệp, thành phố Nha Trang.</span></p>\n<p><span style="font-size:12pt;">Chủ đầu tư: Công ty Cung ứng Tàu biển, Thương mại và Du lịch Nha Trang.</span></p>\n<p><span style="font-size:12pt;">Tổng diện tích: 90.000m2.</span></p>', '', '<p><span style="font-size:12pt;">Địa điểm : Đảo Ngọc Thảo, phường Ngọc Hiệp, thành phố Nha Trang.</span></p>\n<p><span style="font-size:12pt;">Chủ đầu tư: Công ty Cung ứng Tàu biển, Thương mại và Du lịch Nha Trang.</span></p>\n<p><span style="font-size:12pt;">Tổng diện tích: 90.000m2.</span></p>', '', 'khu-du-lich-hai-dao', '', '', '', 0, 3, '', 1, 0, '', '', '', '', 1, 463),
(1947, 'Nhà làm việc – hội trường nhà máy Đại Tây Dương', '', '2012-05-28 06:23:47', 'nha-lam-viec--hoi-truong-nha-may-ai-tay-duong-thumb.jpg', 'nha-lam-viec--hoi-truong-nha-may-ai-tay-duong.jpg', '', '<p><span style="font-size:12pt;">Địa điểm : Khu CN An Hồng, thôn Song Mai, Xã An Hồng, An Dương, Hải Phòng.</span></p>\n<p><span style="font-size:12pt;">Chủ đầu tư: Công ty TNHH đầu tư thương mại Đại Tây Dương.</span></p>\n<p><span style="font-size:12pt;">Tổng diện tích: 5000m2.</span></p>', '', '<p><span style="font-size:12pt;">Địa điểm : Khu CN An Hồng, thôn Song Mai, Xã An Hồng, An Dương, Hải Phòng.</span></p>\n<p><span style="font-size:12pt;">Chủ đầu tư: Công ty TNHH đầu tư thương mại Đại Tây Dương.</span></p>\n<p><span style="font-size:12pt;">Tổng diện tích: 5000m2.</span></p>', '', 'nha-lam-viec-hoi-truong-nha-may-dai-tay-duong', '', '', '', 0, 4, '', 1, 0, '', '', '', '', 1, 438),
(1948, 'Khu công viên văn phòng Quốc Bảo', '', '2012-05-28 06:26:58', 'khu-cong-vien-van-phong-quoc-bao-thumb.jpg', 'khu-cong-vien-van-phong-quoc-bao.jpg', '', '<p>Địa điểm : Đường Ngô Quyền, quận Sơn Trà, thành phố Đà Nẵng</p>\n<p>Chủ đầu tư: Công ty cổ phần đầu tư Quốc Bảo</p>\n<p>Tổng diện tích: 35.124m2.</p>', '', '<p>Địa điểm : Đường Ngô Quyền, quận Sơn Trà, thành phố Đà Nẵng</p>\n<p>Chủ đầu tư: Công ty cổ phần đầu tư Quốc Bảo</p>\n<p>Tổng diện tích: 35.124m2.</p>', '', 'khu-cong-vien-van-phong-quoc-bao', '', '', '', 0, 5, '', 1, 0, '', '', '', '', 1, 463),
(1949, 'Bệnh viện C Đà Nẵng.', '', '2012-05-28 06:31:02', 'benh-vien-c-a-nang--thumb.jpg', 'benh-vien-c-a-nang-.jpg', 'benh-vien-c-a-nang--desc-1.jpg', '<p>Địa điểm : 122 Hải Phòng, quận Hải Châu, thành phố Đà Nẵng</p>\n<p>Chủ đầu tư:</p>\n<p>Tổng diện tích:</p>', '', '<p>Địa điểm : 122 Hải Phòng, quận Hải Châu, thành phố Đà Nẵng</p>\n<p>Chủ đầu tư:</p>\n<p>Tổng diện tích:</p>', '', 'benh-vien-c-da-nang', '', '', '', 0, 6, '', 1, 0, '', '', '', '', 1, 438),
(1950, 'Khu chung cư thương mại Long Tân.', '', '2012-05-28 06:35:17', 'khu-chung-cu-thuong-mai-long-tan--thumb.jpg', 'khu-chung-cu-thuong-mai-long-tan-.jpg', '', '<p><span style="font-size:12pt;">Địa điểm : Xã Long Tân, huyện Nhơn Trạch, tỉnh Đồng Nai.</span></p>\n<p><span style="font-size:12pt;">Chủ đầu tư: Công ty cổ phẩn Licogi</span></p>\n<p><span style="font-size:12pt;">Tổng diện tích: 116.000m2</span></p>', '', '<p><span style="font-size:12pt;">Địa điểm : Xã Long Tân, huyện Nhơn Trạch, tỉnh Đồng Nai.</span></p>\n<p><span style="font-size:12pt;">Chủ đầu tư: Công ty cổ phẩn Licogi</span></p>\n<p><span style="font-size:12pt;">Tổng diện tích: 116.000m2</span></p>', '', 'khu-chung-cu-thuong-mai-long-tan', '', '', '', 0, 7, '', 1, 0, '', '', '', '', 1, 438),
(1951, 'Trường Cao đẳng Lạc Việt', '', '2012-05-28 06:39:37', 'truong-cao-dang-lac-viet-thumb.jpg', 'truong-cao-dang-lac-viet.jpg', '', '<p><span style="font-size:12pt;">Địa điểm : Lô B3,KDC số 4 Nguyễn Tri Phương, quận Hải Châu, TPĐN</span></p>\n<p><span style="font-size:12pt;">Chủ đầu tư: Trường Cao đẳng Lạc Việt</span></p>\n<p><span style="font-size:12pt;">Tổng diện tích: 5.000m2</span></p>', '', '<p><span style="font-size:12pt;">Địa điểm : Lô B3,KDC số 4 Nguyễn Tri Phương, quận Hải Châu, TPĐN</span></p>\n<p><span style="font-size:12pt;">Chủ đầu tư: Trường Cao đẳng Lạc Việt</span></p>\n<p><span style="font-size:12pt;">Tổng diện tích: 5.000m2</span></p>', '', 'truong-cao-dang-lac-viet', '', '', '', 0, 8, '', 1, 0, '', '', '', '', 1, 438),
(1952, 'Trường THPT Ngô Quyền', '', '2012-05-28 06:42:12', 'truong-thpt-ngo-quyen-thumb.jpg', 'truong-thpt-ngo-quyen.jpg', '', '<p><span style="font-size:12pt;">Địa điểm : K22/7 Lương Thế Vinh, quận Sơn Trà, thành phố Đà Nẵng.</span></p>\n<p><span style="font-size:12pt;">Chủ đầu tư: Sở Giáo dục và Đào tạo.</span></p>\n<p><span style="font-size:12pt;">Tổng diện tích: 9.000m2</span></p>', '', '<p><span style="font-size:12pt;">Địa điểm : K22/7 Lương Thế Vinh, quận Sơn Trà, thành phố Đà Nẵng.</span></p>\n<p><span style="font-size:12pt;">Chủ đầu tư: Sở Giáo dục và Đào tạo.</span></p>\n<p><span style="font-size:12pt;">Tổng diện tích: 9.000m2</span></p>', '', 'truong-thpt-ngo-quyen', '', '', '', 0, 9, '', 1, 0, '', '', '', '', 1, 438),
(1953, 'Trường mẫu giáo VietKids', '', '2012-05-28 06:44:33', 'truong-mau-giao-vietkids-thumb.jpg', 'truong-mau-giao-vietkids.jpg', '', '<p><span style="font-size:12pt;">Địa điểm: Lô A2.3 Tuyên sơn mở rộng, Hòa Cường Nam, quận Hải Châu, TPĐN.</span></p>\n<p><span style="font-size:12pt;">Chủ đầu tư: Trường mẫu giáo VietKids.</span></p>\n<p><span style="font-size:12pt;">Tổng diện tích: 4.300m2</span></p>', '', '<p><span style="font-size:12pt;">Địa điểm: Lô A2.3 Tuyên sơn mở rộng, Hòa Cường Nam, quận Hải Châu, TPĐN.</span></p>\n<p><span style="font-size:12pt;">Chủ đầu tư: Trường mẫu giáo VietKids.</span></p>\n<p><span style="font-size:12pt;">Tổng diện tích: 4.300m2</span></p>', '', 'truong-mau-giao-vietkids', '', '', '', 0, 10, '', 1, 0, '', '', '', '', 1, 438),
(2000, 'Khu chung cư Hưng Phú.', '', '2012-05-29 06:57:05', 'khu-chung-cu-hung-phu--thumb.jpg', 'khu-chung-cu-hung-phu-.jpg', '', '<p>Khu chung cư Hưng Phú.</p>', '', '<p>Địa điểm : Phường Hòa Khánh, quận Liên Chiểu, thành phố Đà Nẵng.</p>\n<p>Chủ đầu tư: Công ty cổ phẩn đầu tư xây dựng Hưng Phú</p>\n<p>Tổng diện tích: 58.000m2.</p>', '', 'khu-chung-cu-hung-phu', '', '', '', 0, 11, '', 1, 0, '', '', '', '', 1, 438),
(2002, 'Nhà văn hóa quận Sơn Trà', '', '2012-05-29 06:59:12', 'nha-van-hoa-quan-son-tra-thumb.jpg', 'nha-van-hoa-quan-son-tra.jpg', '', '<p>Nhà văn hóa quận Sơn Trà.</p>', '', '<p>Địa điểm : Lô C2, khu TĐC Nại Hiên Đông, quận Sơn Trà, thành phố Đà Nẵng.</p>\n<p>Chủ đầu tư: UBND quận Sơn Trà</p>\n<p>Tổng diện tích: 6.600m2.</p>', '', 'nha-van-hoa-quan-son-tra', '', '', '', 0, 12, '', 1, 0, '', '', '', '', 1, 438),
(2004, 'Khách sạn Nhật Linh', '', '2012-05-29 07:01:17', 'khach-san-nhat-linh-thumb.jpg', 'khach-san-nhat-linh.jpg', '', '<p>Khách sạn Nhật Linh.</p>', '', '<p>Địa điểm : 194 Nguyễn Chí Thanh – Hải Châu – Thành phố Đà Nẵng..</p>\n<p>Chủ đầu tư: Công ty TNHH Nhật Linh Đà Nẵng.</p>\n<p>Tổng diện tích: 212m2.</p>\n<p>Quy mô : 12 tầng + tầng hầm.</p>', '', 'khach-san-nhat-linh', '', '', '', 0, 13, '', 0, 0, '', '', '', '', 1, 440),
(2005, 'Cao ốc văn phòng cho thuê', '', '2012-05-29 07:03:46', 'cao-oc-van-phong-cho-thue-thumb.jpg', 'cao-oc-van-phong-cho-thue.jpg', '', '<p>Cao ốc văn phòng cho thuê</p>', '', '<p>Địa điểm : Đường Điện Biên Phủ, quận Thanh Khê, thành phố Đà Nẵng.</p>\n<p>Chủ đầu tư: Công ty TNHH Thư Dung.</p>\n<p>Quy mô : 07 tầng.</p>', '', 'cao-oc-van-phong-cho-thue', '', '', '', 0, 14, '', 1, 0, '', '', '', '', 1, 440),
(2011, 'Nhà làm việc cảng vụ hàng hải Đà Nẵng', '', '2012-05-29 07:07:40', 'nha-lam-viec-cang-vu-hang-hai-a-nang-thumb.jpg', 'nha-lam-viec-cang-vu-hang-hai-a-nang.jpg', '', '<p>Nhà làm việc cảng vụ hàng hải Đà Nẵng.</p>', '', '<p>Địa điểm : 07 Bạch Đằng, quận Hải Châu, TP Đà Nẵng.</p>\n<p>Chủ đầu tư: Cảng vụ hàng hải Đà Nẵng.</p>\n<p>Quy mô : 04 tầng.</p>', '', 'nha-lam-viec-cang-vu-hang-hai-da-nang', '', '', '', 0, 15, '', 1, 0, '', '', '', '', 1, 438),
(2012, 'Trụ sở công ty TNHH Nhà Mơ', '', '2012-05-29 07:08:58', 'tru-so-cong-ty-tnhh-nha-mo-thumb.jpg', 'tru-so-cong-ty-tnhh-nha-mo.jpg', '', '<p>Trụ sở công ty TNHH Nhà Mơ.</p>', '', '<p>Địa điểm : 44 Cách mạng tháng 8, quận Cẩm Lệ, thành phố Đà Nẵng.</p>\n<p>Chủ đầu tư: Công ty TNHH Nhà Mơ.</p>\n<p>Tổng diện tích sàn: 400m2.</p>\n<p>Quy mô : 04 tầng.</p>', '', 'tru-so-cong-ty-tnhh-nha-mo', '', '', '', 0, 16, '', 1, 0, '', '', '', '', 1, 438);

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
) ENGINE=InnoDB  DEFAULT CHARSET=utf8 AUTO_INCREMENT=464 ;

--
-- Dumping data for table `dos_module_products_cat`
--

INSERT INTO `dos_module_products_cat` (`cat_id`, `cat_parent_id`, `cat_title`, `cat_titleen`, `preview`, `previewen`, `tag`, `tagen`, `description`, `descriptionen`, `pic_full`, `pic_desc`, `cat_order`, `cat_extra1`, `cat_extra2`, `cat_enable`, `dos_usernames_username`) VALUES
(438, 0, 'Công trình, nhà phố', '', '', '', 'cong-trinh-nha-pho', '', '', '', '', '', 1, '', '', 1, 'xaydungvietanh'),
(439, 0, 'Nhà xưởng', '', '', '', 'nha-xuong', '', '', '', '', '', 2, '', '', 1, 'xaydungvietanh'),
(440, 0, 'Nhà biệt thự', '', '', '', 'nha-biet-thu', '', '', '', '', '', 3, '', '', 1, 'xaydungvietanh'),
(463, 0, 'Khu du lịch sinh thái', '', '', '', 'khu-du-lich-sinh-thai', '', '', '', 'khu-du-lich-sinh-thai.jpg', '', 4, '', '', 1, 'xaydungvietanh');

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
) ENGINE=InnoDB  DEFAULT CHARSET=utf8 AUTO_INCREMENT=90 ;

--
-- Dumping data for table `dos_module_services`
--

INSERT INTO `dos_module_services` (`record_id`, `title`, `titleen`, `preview`, `previewen`, `content`, `contenten`, `pic_full`, `hit`, `created`, `record_order`, `hot`, `extra_field1`, `extra_field2`, `tag`, `tagen`, `description`, `descriptionen`, `activated`, `dos_usernames_username`) VALUES
(76, 'Tư vấn thiết kế', '', '', '', '<p><img style="float:left;margin:10px;" src="/public/userfiles/image/xaydungvietanh/image/khachsan.jpg" alt="" width="216" height="138" />Trong lĩnh vực tư vấn, thiết kế, chúng tôiluôn tìm tòi, học hỏi không ngừng để đưa ra những ý tưởng mới, phù hợp với xu thế phát triển của thế giới hiện đại. Với đội ngũ kỹ sư, kiến trúc sư nhiệt tình, sáng tạo, chúng tôicó khả năng tư vấn đầu tư và xây dựng; lập dự án đầu tư, tư vấn đấu thầu, tư vấn giám sát và quản lý dự án, tư vấn thiết bị công nghệ mới và thiết bị tự động hóa; tư vấn khảo sát địa hình, địa chất thủy văn, đo đạc công trình; thí nghiệm, thiết kế; thẩm tra dự án đầu tư, đề án thiết kế, thiết kế kỹ thuật và tổng dự toán; lập quy hoạch và kiểm định chất lượng công trình..v.v.</p>\n<p>Hiện nay, để tập trung vào 2 lĩnh vực kinh doanh chủ yếu là kinh doanh bất động sản và xây dựng theo chiến lược phát triển lâu dài của doanh nghiệp, Tổng công ty là chuyển lĩnh vực này cho các đơn vị thành viên thực hiện.</p>', '', '', 38, '2012-05-25 06:58:00', 2, 0, '', '', 'tu-van-thiet-ke', '', '', '', 1, 'xaydungvietanh'),
(77, 'Xây dựng công trình dân dụng', '', '', '', '<p>Với đội ngũ kỹ sư năng động, sáng tạo nhiệt tình và khả năng đầu tư xây dựng chúng tôi đã thực hiện xây dựng rất nhiều các công trình dân dụng, các trung cư biệt thự khách sạn, resort lớn nhỏ, có quy mô lớn.Những bản thiết kế chất lượng cao, chất lượng thi công công trình đảm bảo, làm hài lòng những khách hàng khó tính trong và ngoài nước.</p>\n<p style="text-align:center;"><img src="/public/userfiles/image/xaydungvietanh/image/img_0191.jpg" alt="" width="400" height="303" /></p>\n<p style="text-align:center;"><img src="/public/userfiles/image/xaydungvietanh/image/hungyen.jpg" alt="" width="400" height="329" /></p>', '', '', 38, '2012-05-25 07:03:02', 1, 0, '', '', 'xay-dung-cong-trinh-dan-dung', '', '', '', 1, 'xaydungvietanh'),
(89, 'Giám sát thi công', '', '', '', '<p>Làm tư vấn giám sát là làm gì?</p>\n<p>Giám sát thi công xây dựng công trình là công việc bao gồm:</p>\n<p>1.Nghiệm thu xác nhận khi công trình đã thi công bảo đảm đúng thiết kế, theo quy chuẩn, tiêu chuẩn xây dựng và bảo đảm chất lượng;</p>\n<p>2.Yêu cầu nhà thầu thi công xây dựng thực hiện theo đúng hợp đồng;</p>\n<p>3.Từ chối nghiệm thu khi công trình không đạt yêu cầu chất lượng;</p>\n<p>4.Đề xuất với chủ đầu tư công trình những bất hợp lý về thiết kế để kịp thời sửa đổi;</p>\n<p>Người làm công việc này gọi là " Kĩ sư tư vấn giám sát chất lượng công trình" và phải có chứng chỉ hành nghề.</p>\n<p>(Điều kiện cấp chứng chỉ hành nghề Giám sát thi công xây dựng công trình:</p>\n<p>Kể từ ngày 10/8/2009, việc cấp chứng chỉ hành nghề Giám sát thi công xây dựng công trình, Kiến trúc sư hoạt động xây dựng, Kỹ sư hoạt động xây dựng (gọi tắt là chứng chỉ hành nghề hoạt động xây dựng) được thực hiện theo Nghị định số 12/2009/NĐ-CP ngày 12/02/2009 của Chính phủ và Thông tư số 12/2009/TT-BXD ngày 24/06/2009 của Bộ Xây dựng.</p>\n<p>Cá nhân được cấp chứng chỉ hành nghề Giám sát thi công xây dựng công trình phải đáp ứng các điều kiện sau:</p>\n<p>a) Có quyền công dân và có đủ năng lực hành vi dân sự theo quy định của pháp luật; đối với người nước ngoài và người Việt Nam định cư ở nước ngoài phải có giấy phép cư trú tại Việt Nam theo quy định của pháp luật.</p>\n<p>b) Có đạo đức nghề nghiệp và có hồ sơ đăng ký cấp chứng chỉ theo quy định và đã nộp lệ phí theo quy định.</p>\n<p>c) Có bằng tốt nghiệp đại học trở lên hoặc bằng tốt nghiệp cao đẳng, trung cấp (đối với chứng chỉ hành nghề Giám sát thi công xây dựng công trình cấp IV) thuộc chuyên ngành đào tạo phù hợp với nội dung đăng ký hành nghề, do cơ sở đào tạo hợp pháp của Việt Nam hoặc nước ngoài cấp.</p>\n<p>d) Đã trực tiếp tham gia thực hiện thiết kế hoặc thi công xây dựng từ 3 năm trở lên hoặc đã tham gia thực hiện thiết kế, thi công xây dựng ít nhất 5 công trình được nghiệm thu bàn giao.</p>\n<p>e) Đã thực hiện giám sát thi công xây dựng công trình từ 3 năm trở lên (áp dụng đối với trường hợp trước khi Luật Xây dựng có hiệu lực thi hành (ngày 01/7/2004)).</p>\n<p>f) Có chứng nhận bồi dưỡng nghiệp vụ giám sát thi công xây dựng phù hợp với loại công trình đăng ký cấp chứng chỉ do cơ sở đào tạo được Bộ Xây dựng công nhận cấp.)</p>', '', '', 23, '2012-05-28 05:59:35', 3, 0, '', '', 'giam-sat-thi-cong', '', '', '', 1, 'xaydungvietanh');

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
) ENGINE=InnoDB  DEFAULT CHARSET=utf8 AUTO_INCREMENT=80 ;

--
-- Dumping data for table `dos_module_supports`
--

INSERT INTO `dos_module_supports` (`support_id`, `support_name`, `support_nameen`, `support_phone`, `support_value`, `support_order`, `support_type`, `dos_usernames_username`) VALUES
(79, 'Lê Minh Trí', '', '0905104103', 'minhtri1404', 1, 'yahoo', 'xaydungvietanh');

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
('keywords', 'Công ty CP TV-XD Việt Anh chuyên tư vấn thiết kế,đầu tư, thi công xây dựng công nghiệp, hạ tầng đô thị,văn phòng, nhà xưởng, biệt thự, khách sạn', 'xaydungvietanh'),
('description', 'Công ty CP TV-XD Việt Anh chuyên tư vấn thiết kế,đầu tư, thi công xây dựng công nghiệp, hạ tầng đô thị,văn phòng, nhà xưởng, biệt thự, khách sạn', 'xaydungvietanh'),
('title', 'Công ty CP TV-XD Việt Anh', 'xaydungvietanh');

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
('160512', 'Mẫu ẩm thực 160512', '2012-05-15 20:22:58', 'Chuyên bán các loại ẩm thực đồ uống các loại.');

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
('xaydungvietanh', 'minhtri1404@gmail.com', 'e10adc3949ba59abbe56e057f20f883e', '2012-05-25 06:45:37', 'Lê Minh Trí', '0905104103', 'Công Ty Cổ Phần Tư Vấn Xây Dựng Việt Anh', 'user', 'vi', '', '2013-01-30 16:00:00', 0, '20122012', '', 1, '160512', 15, 'bds-kien-truc-xay-dung');

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
('company_name', 'CÔNG TY CỔ PHẦN TƯ VẤN XÂY DỰNG VIỆT ANH', '', 'xaydungvietanh'),
('company_name_footer', 'CÔNG TY CỔ PHẦN TƯ VẤN XÂY DỰNG VIỆT ANH', '', 'xaydungvietanh'),
('company_phone', 'Tư vấn thiết kế Mr. Trí: 0905104103', '', 'xaydungvietanh'),
('products', 'Dự án - Công trình', '', 'xaydungvietanh'),
('services', 'Tư vấn thiết kế', '', 'xaydungvietanh');

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
