-- phpMyAdmin SQL Dump
-- version 3.4.5
-- http://www.phpmyadmin.net
--
-- Host: localhost
-- Generation Time: Jun 12, 2012 at 03:26 AM
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
('logo_height', 99, '', '010312'),
('logo_width', 630, '', '010312'),
('max_image_height', 667, '', '010312'),
('max_image_width', 500, '', '010312'),
('news_cat_height', 89, '', '010312'),
('news_cat_width', 143, '', '010312'),
('news_height_thumb', 89, '', '010312'),
('news_num_paging_cat', 10, '', '010312'),
('news_num_paging_hot', 6, '', '010312'),
('news_num_paging_index', 10, '', '010312'),
('news_num_paging_new', 6, '', '010312'),
('news_width_thumb', 143, '', '010312'),
('products_cat_height', 155, '', '010312'),
('products_cat_width', 115, '', '010312'),
('products_height', 400, '', '010312'),
('products_height_thumb', 121, '', '010312'),
('products_num_paging_cat', 15, '', '010312'),
('products_num_paging_hot', 9, '', '010312'),
('products_num_paging_new', 9, '', '010312'),
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
('about', 'aasc'),
('advs', 'aasc'),
('banner', 'aasc'),
('contact', 'aasc'),
('news', 'aasc'),
('products', 'aasc'),
('services', 'aasc'),
('supports', 'aasc');

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
) ENGINE=InnoDB  DEFAULT CHARSET=utf8 AUTO_INCREMENT=177 ;

--
-- Dumping data for table `dos_module_abouts`
--

INSERT INTO `dos_module_abouts` (`record_id`, `title`, `titleen`, `content`, `contenten`, `hit`, `created`, `record_order`, `hot`, `extra_field1`, `extra_field2`, `tag`, `tagen`, `description`, `descriptionen`, `activated`, `dos_usernames_username`) VALUES
(175, 'Kính chào quý khách hàng!', '', '<p><span style="color:#ff0000;"><strong>AASCN</strong></span> đã được Ủy ban chứng khoán Nhà Nước chấp thuận được thực hiện kiểm toán cho các tổ chức phát hành, tổ chức niêm yết và tổ chức kinh doanh chứng khoán từ năm 2009 theo Quyết định số 798/QĐ-UBCK ngày 24/11/2009, năm 2012 Công ty kiểm toán Nam Việt tiếp tục được <span style="color:#ff0000;"><strong>Ủy ban chứng khoán Nhà Nước chấp thuận theo Quyết định số 874/QĐ-UBCK ngày 18/11/2011.</strong></span></p>\n<p>AASCN cũng là một trong các công ty kiểm toán nằm trong danh sách công bố công khai lần 1 danh sách các công ty kiểm toán đủ điều kiện thực hiện kiểm toán năm 2012 theo Văn bản số 16227/BTC-CĐKT ngày 29/11/2011 của Bộ Tài chính.</p>\n<ul><li><span style="color:#000080;"><strong>Mục tiêu hoạt động</strong></span></li>\n</ul><p>Với quan điểm vì lợi ích cao nhất của khách hàng, mục tiêu hoạt động của chúng tôi là cung cấp các dịch vụ chuyên ngành và các thông tin đáng tin cậy nhằm giúp khách hàng ra các quyết định quản lý, tài chính và kinh tế một cách có hiệu quả. Hơn thế nữa, với kinh nghiệm thực tiễn về chuyên ngành, gần gũi với khách hàng, tận tình, thông thạo nghiệp vụ, chúng tôi am hiểu các yêu cầu, các khó khăn mà khách hàng gặp phải khi tiến hành kinh doanh tại Việt Nam. Dựa trên cơ sở này, chúng tôi sẽ hỗ trợ khách hàng giải quyết tốt các vấn đề mà ít có một tổ chức dịch vụ chuyên ngành nào có thể thực hiện được.</p>\n<ul><li><span style="color:#000080;"><strong>Đội ngũ nhân viên</strong></span></li>\n</ul><p>Để hoạt động thành công và có hiệu quả chúng tôi luôn coi trọng vấn đề trình độ và kinh nghiệm đội ngũ nhân viên, hiện nay AASCN có đội ngũ bao gồm trên 60 cán bộ, kiểm toán viên được đào tạo đại học và trên đại học chuyên ngành tài chính - ngân hàng - kế toán và kiểm toán ở trong nước và ở nước ngoài, trong đó có 11 Kiểm toán viên được cấp chứng chỉ kiểm toán viên cấp Nhà nước, và Thạc sỹ, kỹ sư, chuyên gia đầu ngành với kinh nghiệm và chuyên môn dầy dạn chắc chắn sẽ đáp ứng những yêu cầu cao nhất của khách hàng.</p>\n<ul><li><span style="color:#000080;"><strong>Phương châm hoạt động</strong></span></li>\n</ul><p>Nhằm đảm bảo cung cấp những dịch vụ có chất lượng tốt nhất, mọi hoạt động của chúng tôi luôn tôn trọng nguyên tắc: độc lập, trung thực khách quan và bảo mật, tuân thủ các quy định của Nhà nước Việt nam, các Chuẩn mực kiểm toán Việt nam do Nhà nước ban hành cũng như các Chuẩn mực kiểm toán quốc tế được chấp nhận chung. Bên cạnh đó chúng tôi cũng luôn nhận thức đặt lợi ích hợp pháp của khách hàng lên hàng đầu.</p>\n<p>Năng lực và tính chuyên nghiệp của AASCN còn được thừa nhận tại tất các doanh nghiệp, các tổ chức kinh tế xã hội hoạt động tại Việt Nam như các Tổng Công ty CP Bia - Rượu – Nước giải khát Sài Gòn (SABECO), Tổng Công ty Bia – Rượu – Nước giải khát Hà Nội (Habeco), Tổng công ty xây dựng số 1, Tổng Công ty Xây dựng sài Gòn v.v…. và Doanh nghiệp có vốn đầu tư nước ngoài ...vv</p>\n<ul><li><span style="color:#000080;"><strong>Khách hàng</strong></span></li>\n</ul><p>Do chất lượng dịch vụ cung cấp, hiện nay AASCN đã có hàng trăm khách hàng hoạt động trên mọi lĩnh vực của nền kinh tế gồm các doanh nghiệp có vốn đầu tư nước ngoài, các doanh nghiệp Nhà nước (danh sách khách hàng được chúng tôi đính kèm phần sau).</p>\n<p>Góp phần vào sự phát triển chung của đất nước và cam kết đảm bảo chất lượng các dịch vụ cung cấp cho từng khách hàng, AASCN luôn là người bạn đồng hành, luôn chia sẻ kinh nghiệm của mình với khách hàng và sự thành công của khách hàng luôn là mục tiêu phấn đấu của chúng tôi.</p>\n<p>Với trình độ và những kinh nghiệm thực tiễn của mình, AASCN sẽ là đơn vị đi tiên phong, dẫn đầu trong hoạt động cung cấp dịch vụ chuyên ngành tại Việt nam và luôn đáp ứng mọi yêu cầu cao nhất của khách hàng.</p>', '', 446, '2012-06-06 08:06:52', 2, 1, '', '', 'kinh-chao-quy-khach-hang', '', '', '', 1, 'aasc'),
(176, 'tong quan ve cty', '', '<p><span style="background-color:#ff6600;"><strong>tong quan ve cty</strong></span></p>', '', 16, '2012-06-08 01:57:32', 1, 0, '', '', 'tong-quan-ve-cty', '', '', '', 1, 'aasc');

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
) ENGINE=InnoDB  DEFAULT CHARSET=utf8 AUTO_INCREMENT=202 ;

--
-- Dumping data for table `dos_module_advs`
--

INSERT INTO `dos_module_advs` (`record_id`, `title`, `titleen`, `pic_thumb`, `url`, `create_date`, `start_date`, `end_date`, `hits`, `record_order`, `position`, `type`, `enable`, `dos_usernames_username`) VALUES
(194, 'Đăng ký doanh nghiệp', '', 'ang-ky-doanh-nghiep.jpg', 'http://www.dangkykinhdoanh.gov.vn/', '2012-06-06 08:21:34', '2012-06-05 16:00:00', '2012-07-30 16:00:00', 0, 1, 'right', '_bank', 1, 'aasc'),
(197, 'Nhân sự', '', 'nhan-su.jpg', 'http://www.dangkykinhdoanh.gov.vn/', '2012-06-06 08:35:40', '2012-06-05 16:00:00', '2012-06-29 16:00:00', 0, 2, 'right', '_bank', 1, 'aasc'),
(198, 'Phần mềm kế toán mới', '', 'phan-mem-ke-toan-moi4.jpg', 'http://aasc.dos.vn/dich-vu', '2012-06-07 06:05:57', '2012-06-06 16:00:00', '2012-07-30 16:00:00', 0, 3, 'left', '_bank', 1, 'aasc'),
(199, 'Quảng cáo 5', '', 'quang-cao-5.jpg', 'http://aasc.dos.vn/gioi-thieu', '2012-06-07 06:07:11', '2012-06-06 16:00:00', '2012-07-30 16:00:00', 0, 4, 'left', '_bank', 1, 'aasc'),
(200, 'quảng cáo 4', '', 'quang-cao-4.jpg', 'http://aasc.dos.vn/lien-he', '2012-06-07 06:08:14', '2012-06-06 16:00:00', '2012-07-30 16:00:00', 0, 5, 'right', '_bank', 1, 'aasc'),
(201, 'quảng cáo 1', '', 'quang-cao-1.jpg', 'http://dos.vn/', '2012-06-07 06:09:29', '2012-06-06 16:00:00', '2012-07-30 16:00:00', 0, 6, 'right', '_bank', 1, 'aasc');

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
) ENGINE=InnoDB  DEFAULT CHARSET=utf8 AUTO_INCREMENT=788 ;

--
-- Dumping data for table `dos_module_banners`
--

INSERT INTO `dos_module_banners` (`banner_id`, `banner_date`, `banner_name`, `banner_url`, `banner_link`, `banner_order`, `banner_type`, `position`, `enable`, `dos_usernames_username`) VALUES
(773, '2012-06-06 08:02:57', 'logo_aascn', 'logoaascn.png', '', 1, 'logo', 'default', 1, 'aasc'),
(778, '2012-06-06 08:12:33', 'Baner 1', 'baner-1.jpg', '', 2, 'banners', 'default', 1, 'aasc'),
(779, '2012-06-06 08:12:51', 'Baner 2', 'baner-2.jpg', '', 3, 'banners', 'default', 1, 'aasc'),
(780, '2012-06-06 08:13:03', 'Baner 3', 'baner-3.jpg', '', 4, 'banners', 'news', 1, 'aasc'),
(781, '2012-06-06 08:13:14', 'Baner 4', 'baner-4.jpg', '', 5, 'banners', 'default', 1, 'aasc'),
(782, '2012-06-07 05:56:40', 'Baner 5', 'baner-5.jpg', '', 6, 'banners', 'about', 1, 'aasc'),
(783, '2012-06-07 05:57:19', 'Baner 6', 'baner-6.jpg', '', 7, 'banners', 'services', 1, 'aasc'),
(784, '2012-06-07 06:04:42', 'Baner 7', 'baner-7.jpg', '', 8, 'banners', 'contact', 1, 'aasc'),
(785, '2012-06-07 06:35:59', 'Baner 8', 'baner-8.jpg', '', 9, 'banners', 'news', 1, 'aasc'),
(786, '2012-06-07 06:36:32', 'Baner 9', 'baner-9.jpg', '', 10, 'banners', 'services', 1, 'aasc'),
(787, '2012-06-07 06:37:17', 'Baner 10', 'baner-10.jpg', '', 11, 'banners', 'contact', 1, 'aasc');

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
) ENGINE=InnoDB  DEFAULT CHARSET=utf8 AUTO_INCREMENT=20 ;

--
-- Dumping data for table `dos_module_contacts`
--

INSERT INTO `dos_module_contacts` (`record_id`, `title`, `titleen`, `content`, `contenten`, `create_date`, `record_order`, `hit`, `hot`, `tag`, `tagen`, `description`, `descriptionen`, `enable`, `dos_usernames_username`) VALUES
(19, 'Liên hệ với chúng tôi', '', '<p><span style="color:#0000ff;"><strong>CÔNG TY TNHH DỊCH VỤ TƯ VẤN TÀI CHÍNH KẾ TOÁN VÀ KIỂM TOÁN <span style="color:#ff0000;">NAM VIỆT</span></strong></span></p>\n<p>Trụ sở chính: 29 Hoàng Sa, Quận 1, TP. Hồ Chí Minh</p>\n<p>Điện thoại: (84-8) 10 3908 - 3910 4880</p>\n<p>Fax: (84-8) 3910 4880</p>\n<p>Website: <a href="http://www.aascn.com.vn">www.aascn.com.vn</a></p>', '', '2012-06-08 02:03:09', 1, 0, 0, 'lien-he-voi-chung-toi', '', '', '', '1', 'aasc');

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
('Trang chủ', '', 'default', '', 1, '', '', '', '', 'aasc'),
('Giới thiệu', '', 'about', '', 2, '', '', '', '', 'aasc'),
('Dịch vụ', '', 'services', '', 4, '', '', '', '', 'aasc'),
('Tin tức & sự kiện', '', 'news', '', 5, '', '', '', '', 'aasc'),
('Liên hệ', '', 'contact', '', 6, '', '', '', '', 'aasc');

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
) ENGINE=InnoDB  DEFAULT CHARSET=utf8 AUTO_INCREMENT=209 ;

--
-- Dumping data for table `dos_module_news`
--

INSERT INTO `dos_module_news` (`record_id`, `title`, `titleen`, `postdate`, `pic_thumb`, `preview`, `previewen`, `content`, `contenten`, `tag`, `tagen`, `description`, `descriptionen`, `hits`, `record_order`, `hot`, `extra_field1`, `extra_field2`, `enable`, `dos_module_item_cat_cat_id`) VALUES
(206, 'Kỳ vọng gì về đầu tư gián tiếp trong năm 2012', '', '2012-06-06 08:17:57', 'ky-vong-gi-ve-dau-tu-gian-tiep-trong-nam-2012.jpg', '<p>Có lẽ 2011 là năm thất vọng nhất đối với dòng vốn đầu tư gián tiếp (FPI) chảy vào Việt Nam kể từ khi chúng ta trở thành thành viên của Tổ chức Thương mại thế giới (WTO)</p>', '', '<p>Có lẽ 2011 là năm thất vọng nhất đối với dòng vốn đầu tư gián tiếp (FPI) chảy vào Việt Nam kể từ khi chúng ta trở thành thành viên của Tổ chức Thương mại thế giới (WTO). Chứng khoán và bất động sản liên tục đi xuống, chưa thấy điểm dừng. Thị trường vay nợ bên ngoài gần như đóng băng do sự rắc rối từ khoản nợ của Vinashin.</p>\n<p>Liệu cơn mưa đã qua chưa để trời hửng sáng là điều được nhiều người quan tâm. Theo người viết, với những gì đang xảy ra trên thế giới và thực tế ở Việt Nam, chưa thể kỳ vọng có sự đột biến của dòng vốn FPI vào Việt Nam trong năm 2012.</p>\n<p>Tuy nhiên, nếu quyết tâm đảm bảo ổn định vĩ mô song song với việc cải thiện môi trường kinh doanh được duy trì thì bức tranh trong vài năm tới có khả năng sẽ sáng hơn.</p>\n<p>Bức tranh kinh tế toàn cầu vẫn chưa thể sáng</p>\n<p>Kinh tế Hoa Kỳ vẫn chưa thể thoát khỏi tình trạng trì trệ khi mà các động thái chính sách của cả hai đảng Dân chủ và Cộng hòa đều hướng đến tranh giành khả năng thắng cử trong cuộc đua vào Nhà trắng vào tháng 11 năm nay.</p>\n<p>Khả năng hai đảng cùng ngồi lại để đưa ra những chính sách cần thiết nhằm vực dậy nền kinh tế sẽ không cao. Xu hướng vẫn là giằng co và tranh giành ảnh hưởng.</p>\n<p>Đối với khu vực đồng euro, cả Thủ tướng Đức Merkel và Tổng thống Pháp Sarkozy đều thừa nhận rằng tình hình của khu vực này sẽ khó khăn trong thời gian tới. Goldman Sachs, một ngân hàng đầu tư hàng đầu trên thế giới, dự báo rằng khu vực châu Âu sẽ rơi vào suy thoái và chỉ có khả năng ổn định vào cuối năm 2012.</p>\n<p>Trong bốn nền kinh tế lớn nhất ở các nước đang phát triển (BRIC), có lẽ sẽ không có sự thay đổi đáng kể về chính sách ở Ấn Độ và Brazil, trong khi đó động thái “chờ” có thể xảy ra ở Trung Quốc và Nga.</p>\n<p>Ở trường hợp Trung Quốc, tuy ông Tập Cận Bình dường như chắc chắn sẽ là người kế nhiệm ông Hồ Cẩm Đào, nhưng vẫn còn nhiều ẩn số ở những vị trí chủ chốt khác. Ai lên, ai xuống sẽ ảnh hưởng đáng kể đến đường hướng kinh tế của nước này.</p>\n<p>Đối với Nga, khả năng ông Putin sẽ trở lại cương vị tổng thống gần như chắc chắn, nhưng cuộc bầu cử sắp tới là thước đo uy tín của người lãnh đạo nước Nga trong hơn một thập kỷ qua.</p>\n<p>Đỉnh điểm của mùa xuân Ả Rập đã qua, nhưng những dư chấn của nó vẫn đang kéo dài. Khả năng thêm một vài nước nữa mà trước mắt là Syria có sự thay đổi chế độ là rất cao. Định hình về địa chính trị trong khu vực này như thế nào vẫn đang là dấu hỏi lớn. Ai Cập vừa kỷ niệm một năm sự kiện này trong tình trạng chia rẽ sâu sắc.</p>\n<p>Sự qua đời của lãnh đạo Bắc Triều Tiên Kim Jong Il vừa đặt ra những thách thức cũng như cơ hội cho tam giác phát triển và cũng là động lực kinh tế của toàn thế giới gồm: Nhật Bản, Hàn Quốc và Trung Quốc. Nếu bức tranh theo chiều sáng thì dòng vốn sẽ chảy mạnh hơn vào khu vực này.</p>\n<p>Trong bối cảnh quốc tế như vậy, xu hướng chung của các nhà đầu tư quốc tế vẫn là phòng thủ và có lẽ không quan tâm nhiều đến các nền kinh tế còn nhỏ như Việt Nam.</p>\n<p>Chưa thể lạc quan với các yếu tố bên trong</p>\n<p>Thất bại của người này có thể là cơ hội cho người khác. Sự tuột dốc không phanh của chứng khoán và bất động sản đang đẩy nhiều doanh nghiệp đến bờ vực phá sản. Đây là cơ hội cho nhiều người.</p>\n<p>Do vậy, có giả thuyết cho rằng dòng vốn đầu tư gián tiếp sẽ quay trở lại. Việc mua bán, sáp nhập các doanh nghiệp, chuyển nhượng các dự án sẽ trở nên sôi động trong thời gian tới.</p>\n<p>Thực ra, có lẽ đây chỉ là cảm nhận của “người trong nhà” hay những nhà đầu tư đang ở Việt Nam. Góc nhìn từ bên ngoài có lẽ không lạc quan cho lắm. Các thông số vĩ mô căn bản vẫn chưa thể hiện xu hướng rõ ràng và các tín hiệu tích cực vẫn còn rất yếu.</p>\n<p>Bóng ma lạm phát, yếu tố gây ra bất ổn vĩ mô, xói mòn lòng tin và ảnh hưởng sức cạnh tranh của Việt Nam vẫn còn quá lớn. Thâm hụt ngân sách và thâm hụt thương mại đã được cải thiện, nhưng vẫn còn ở mức rất cao.</p>\n<p>Hơn thế, tuy đầu tư tính theo phần trăm GDP đã giảm, nhưng tỷ phần đầu tư công trong tổng đầu tư lại gia tăng. Đây chính là biểu hiện của sự chèn lấn và nguồn vốn chưa được sử dụng hiệu quả nhất.</p>\n<p>Điều đáng nói nhất là sự không nhất quán cộng với một số chính sách chữa cháy của chúng ta đã làm mai một rất nhiều lòng tin của các nhà đầu tư quốc tế.</p>\n<p>Cho dù đầu năm mới, nhưng vẫn phải nhắc lại rằng sự kiện chậm trả nợ của Vinashin đã tạo ra điểm đen rất lớn trong mắt các nhà đầu tư bên ngoài mà có lẽ phải một thời gian khá lâu mới có thể nhòa đi với điều kiện các chính sách của Việt Nam trong thời gian tới phải nhất quán hơn theo hướng đảm bảo ổn định vĩ mô và cải thiện môi trường kinh doanh.</p>\n<p>Tóm lại, cộng đồng các nhà đầu tư quốc tế, cho dù có “kinh nghiệm đầy mình” nhưng chủ yếu vẫn hành xử theo đám đông. Đây là cái khó của Việt Nam, ít nhất là trong ngắn hạn. Khi mô-men tích cực của năm 2007 đã bị bỏ lỡ, môi trường kinh tế vĩ mô trong nước trở nên bấp bênh hơn rất nhiều đã làm Việt Nam trở thành “địa điểm bị lãng quên” giống như Indonesia sau năm 1997.</p>\n<p>Điều này có khả năng sẽ làm cho dòng vốn gián tiếp, nhất là nguồn vốn của các nhà đầu tư lớn, chưa thể trở lại Việt Nam năm 2012 này.</p>', '', 'ky-vong-gi-ve-dau-tu-gian-tiep-trong-nam-2012', '', '', '', 0, 1, 1, '', '', 1, 117),
(207, 'Ngân hàng hạ lãi suất cho vay: Chờ tiếp cận vốn “rẻ” hơn', '', '2012-06-06 08:19:31', 'ngan-hang-ha-lai-suat-cho-vay-cho-tiep-can-von-re-hon.jpg', '<p>Dấu hiệu lãi suất cho vay đang rục rịch hạ nhiệt khi các “ông lớn” trong hệ thống ngân hàng công khai mức lãi suất mới</p>', '', '<p>Dấu hiệu lãi suất cho vay đang rục rịch hạ nhiệt khi các “ông lớn” trong hệ thống ngân hàng công khai mức lãi suất mới. Tuy nhiên, khách hàng vẫn chờ lãi suất cho vay hạ nhiệt đồng loạt và nguồn vốn giá rẻ hơn thực sự đến tay.</p>\n<p>Lãi suất “ngập ngừng” hạ nhiệt</p>\n<p>Ngân hàng TMCP Vietinbank, Vietcombank, BIDV đã áp dụng mức lãi suất cho vay hạ hơn so với mặt bằng lãi suất chung trên thị trường. Đại diện Vietinbank cho biết: Lãi suất cho vay thấp nhất áp dụng với cho vay nông nghiệp, nông thôn là 16,3%/năm.</p>\n<p>Hiện tại, Vietinbank vẫn đang duy trì các chương trình tài trợ cho xuất khẩu, nông nghiệp nông thôn, công nghiệp phụ trợ... với mức cho vay thấp hơn 2% so với lãi suất thông thường. BIDV cũng đã hạ mức cho vay xuất khẩu là 15%, còn lĩnh vực nông nghiệp nông thôn ở mức 15,5%.</p>\n<p>Theo ghi nhận của NTNN, ngoài một vài NH đã công bố mức lãi suất hạ nhiệt, còn lại hầu hết các NHTM vẫn đang trong tình trạng “nghe ngóng” thị trường bởi lo ngại hạ lãi suất vào thời điểm này sẽ gây nên sự “xáo trộn” đối với nguồn vốn của NH.</p>\n<p>Bình luận về khả năng hạ lãi suất cho vay đồng loạt ở các NHTM, TS Nguyễn Minh Phong - Viện Nghiên cứu phát triển kinh tế xã hội Hà Nội) cho rằng: “Đang có rất nhiều cơ sở để giảm lãi suất, vấn đề chỉ là quyết định của các NHTM”.</p>\n<p>Về nguyên nhân khiến các NHTM chưa tích cực hưởng ứng xu hướng hạ lãi suất cho vay, ông Phong lý giải: Có hai lý do chính. Thứ nhất sức cản lạm phát chưa rõ ràng. Mặc dù chỉ số tiêu dùng tháng 1 ở dưới ngưỡng 1% nhưng tháng 2, và các tháng tiếp theo sẽ không giảm sâu và có thể cao hơn mức này. Thứ hai, thanh khoản của các NH hiện nay vẫn đang chưa thật “vững”.</p>\n<p>Cùng chung quan điểm này, TS Nguyễn Trí Hiếu -chuyên gia tài chính, ngân hàng nhận định: “Rất khó dự báo thời điểm nào lãi suất sẽ hạ, bởi ngay cả khi ở mức cao như hiện nay, nhiều NH vẫn trong tình trạng căng thẳng thanh khoản do đó nguồn vốn để cho vay vẫn còn bị bó hẹp”.</p>\n<p>Đầu tuần qua, NHNN cũng đã thông báo chỉ tiêu tăng trưởng tín dụng năm 2012, chia theo 4 nhóm mà theo lãnh đạo một ngân hàng cổ phần nhận xét đây vừa là tín hiệu vừa là cơ sở để lãi suất cho vay có thể hạ trong thời gian tới.</p>\n<p>Tuy nhiên, một số ý kiến chuyên gia thì lạc quan khi cho rằng: 5 NH vừa được Thống đốc NHNN Nguyễn Văn Bình cho phép áp dụng tỷ lệ dự trữ bắt buộc bằng VND bằng 1/5 mức thông thường được kỳ vọng sẽ là những NH có nguồn vốn dôi dư để có thể hạ nhiệt lãi suất, cho vay lĩnh vực sản xuất, mà ưu tiên được tập trung vào lĩnh vực nông nghiệp, nông thôn.</p>\n<p>Chờ cơ hội vay vốn giá rẻ!</p>\n<p>TS Nguyễn Trọng Tài - Phó Viện trưởng Viện Nghiên cứu Khoa học NH (Học viện NH) khẳng định: Hạ lãi suất là điều cần làm nhất thời điểm này. Các doanh nghiệp đang mong ngóng, hy vọng khả năng vay được vốn “giá rẻ” trong thời gian sớm nhất.</p>\n<p>Tuy nhiên, việc lãi suất cho vay hạ nhiệt với mức như công bố của nhiều NH vẫn chưa phải là đảm bảo để khách hàng là nông dân và các doanh nghiệp trong lĩnh vực nông nghiệp, nông thôn có thế vay được nguồn vốn giá rẻ này.</p>\n<p>“Lãi suất giảm, không có nghĩa tất cả các hồ sơ của doanh nghiệp đều được chấp nhận, giải ngân bởi những yêu cầu khắt khe về thủ tục giấy tờ mà quan trọng nhất là sẽ phải chứng minh doanh nghiệp hoạt động ổn định, an toàn và đảm bảo có khả năng trả nợ” - ông Nguyễn Huy Hùng - Giám đốc một doanh nghiệp may mặc xuất khẩu ở Hà Nội cho biết.</p>\n<p>Ông Lê Đức Nam - chủ trang trại nuôi gà tại Hòa Bình cho biết, ông nhiều lần vay vốn của NH, nhưng trên thực tế rất hiếm khi vay được vốn với mức lãi suất “rẻ” như công bố. Trong quá trình làm hồ sơ, thủ tục thường khách hàng sẽ bị nâng mức lãi suất lên cao hơn bởi những tiêu chí khắt khe do NH yêu cầu mình không đáp ứng được.</p>\n<p>Để những chính sách ưu đãi lãi suất và nguồn vốn đối với lĩnh vực “tam nông” trở thành hiện thực và phát huy hiệu quả, khách hàng khu vực nông thôn, nông nghiệp được có trong tay nguồn vốn giá rẻ, theo các chuyên gia kinh tế vẫn rất cần những chính sách hỗ trợ từ phía NHNN.</p>\n<p>Và một trong những biện pháp hỗ trợ từ phía NHNN được kỳ vọng là sớm hiện thực hóa lời cam kết của Thống đốc NHNN khi định hướng cho vay lĩnh vực nông nghiệp, nông thôn: “Sẽ dành một phần tiền cung ứng cho tái cấp vốn để các tổ chức tín dụng cho vay nông nghiệp và phát triển nông thôn”.</p>', '', 'ngan-hang-ha-lai-suat-cho-vay-cho-tiep-can-von-re-hon', '', '', '', 0, 2, 1, '', '', 1, 117),
(208, 'Các ngân hàng lớn sẽ biến mất trong tương lai?', '', '2012-06-06 08:30:32', 'cac-ngan-hang-lon-se-bien-mat-trong-tuong-lai.jpg', '<p>Nhận định này chắc chắn khiến nhiều người ngạc nhiên bởi các định chế tài chính hàng đầu thế giới trong những năm gần đây đã có những bước phát triển vượt bậc.</p>', '', '<p>Nhận định này chắc chắn khiến nhiều người ngạc nhiên bởi các định chế tài chính hàng đầu thế giới trong những năm gần đây đã có những bước phát triển vượt bậc.</p>\n<p>Những ngày tháng tươi đẹp đối với các định chế tài chính xuyên quốc gia có thể đã kết thúc. Nhận định này chắc chắn khiến nhiều người ngạc nhiên bởi các định chế tài chính hàng đầu thế giới trong những năm gần đây đã có những bước phát triển vượt bậc. Bước qua nhiều lần khủng hoảng, các ngân hàng lớn sống sót, thâu tóm những ngân hàng yếu kém và dường như trở nên “bất khả chiến bại”.</p>\n<p>Ngày nay, khoảng 10 định chế tài chính lớn nhất thế giới quản lý 77% tổng số tài sản tài chính. Không chỉ “quá lớn để phá sản”, các ngân hàng này được dự báo sẽ ngày càng vững mạnh. Tuy nhiên, liệu các ngân hàng này sẽ tiếp tục vươn lên và thống trị trong tương lai hay ngược lại sẽ bị nhấn chìm bởi khủng hoảng?</p>\n<p>Trước hết, trong nội tại các ngân hàng lớn tồn tại rất nhiều mâu thuẫn. Với vai trò là người quản lý quỹ và nhà đầu tư tổ chức, các ngân hàng là bên mua trong khi với vai trò là người bảo lãnh và người giao dịch, họ lại là bên bán. Khi là nhà tư vấn tài chính, các ngân hàng đảm nhận cả 2 vai trò. Ăn sâu vào cơ cấu tổ chức, chiến lược và các quyết định của các ngân hàng lớn, những mâu thuẫn này khiến ngân hàng lâm vào tình trạng xung đột với lợi ích chung.</p>\n<p>Các định chế tài chính khổng lồ cũng có những yếu kém về cơ cấu khiến các lãnh đạo cấp cao khó có thể điều hành hiệu quả. Quyền lực ngày càng tập trung vào những lãnh đạo cấp trung vốn là những người hay có các quyết định rủi ro thậm chí là vô trách nhiệm. Các lãnh đạo cấp cao phải quản lý và giám sát quá nhiều hoạt động xảy ra tại các đơn vị xa xôi. Do thiếu thời gian và công cụ để có thể điều hành một cách sát sao, họ bắt buộc phải phụ thuộc vào tính trung thực của người khác.</p>\n<p>Đã có rất nhiều biện pháp được đưa ra để hạn chế sự bất cẩn tồn tại trong các định chế tài chính lớn. Tuy nhiên, các luật lệ với hàng tá các điều được làm và không được làm không phải là giải pháp có thể kiểm soát được hành vi của họ. Nâng tỷ lệ vốn yêu cầu cũng không phải là cách làm đúng đắn. Thậm chí, để có được tỷ lệ vốn như mong muốn, các ngân hàng còn tiến hành các hoạt động rủi ro hơn.</p>\n<p>Sức mạnh của các định chế tài chính toàn cầu cũng đang bị suy giảm. Sáng tạo ra các sản phẩm mới và áp dụng công nghệ cho phép các ngân hàng đi trước các nhà quản lý hàng thập kỷ. Tuy nhiên, giờ đây khoảng cách đã bị thu hẹp lại. Với khủng hoảng 2008, cả nhà đầu tư và cơ quan quản lý đều nhận ra những cải tiến này không thể đa dạng hóa rủi ro.</p>\n<p>Công nghệ thông tin giờ đây lại trở thành công cụ của các nhà quản lý. Không khó để hình dung trong một ngày không xa tất cả các dữ liệu về giao dịch, nợ, đầu tư, thay đổi trong tài sản… ngay lập tức được các nhà quản lý nắm bắt.</p>\n<p>Thậm chí, trong tương lai xa hơn, Chính phủ nắm quyền điều hành toàn bộ các ngân hàng thông qua mạng lưới điện toán đám mây. Chi nhánh ngân hàng trở nên lỗi thời bởi khách hàng thực hiện giao dịch trên các thiết bị cầm tay.</p>\n<p>Sự thay đổi này chắc chắn sẽ không làm hài lòng các ngân hàng lớn, đặc biệt là khi họ đang nắm vị thế dẫn đầu trong lĩnh vực quan trọng của nền kinh tế. Các cổ đông mới là những người cần hối thúc hành động. Các ngân hàng cần phải xóa bớt một số hoạt động và chỉ tập trung vào các nghiệp vụ cốt lõi. Chiến lược này mang lại lợi ích cho các ngân hàng, cho thị trường tài chính cũng như cho toàn bộ nền kinh tế.</p>\n<p style="text-align:right;">Thu Hương</p>\n<p style="text-align:right;">Theo TTVN/WSJ</p>', '', 'cac-ngan-hang-lon-se-bien-mat-trong-tuong-lai', '', '', '', 0, 3, 0, '', '', 1, 117);

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
) ENGINE=InnoDB  DEFAULT CHARSET=utf8 AUTO_INCREMENT=118 ;

--
-- Dumping data for table `dos_module_news_cat`
--

INSERT INTO `dos_module_news_cat` (`cat_id`, `cat_parent_id`, `cat_title`, `cat_titleen`, `preview`, `previewen`, `tag`, `tagen`, `description`, `descriptionen`, `pic_full`, `cat_order`, `cat_extra1`, `cat_extra2`, `cat_enable`, `dos_usernames_username`) VALUES
(115, 0, 'Tin từ công ty', '', '', '', 'tin-tu-cong-ty', '', '', '', '', 1, '', '', 1, 'aasc'),
(116, 0, 'Tin thị trường', '', '', '', 'tin-thi-truong', '', '', '', '', 2, '', '', 1, 'aasc'),
(117, 0, 'Tin pháp luật', '', '', '', 'tin-phap-luat', '', '', '', '', 3, '', '', 1, 'aasc');

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
('day_time', 2456091),
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
('''127.0.0.1''', 1339463951);

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
) ENGINE=InnoDB  DEFAULT CHARSET=utf8 AUTO_INCREMENT=591 ;

--
-- Dumping data for table `dos_module_products_cat`
--

INSERT INTO `dos_module_products_cat` (`cat_id`, `cat_parent_id`, `cat_title`, `cat_titleen`, `preview`, `previewen`, `tag`, `tagen`, `description`, `descriptionen`, `pic_full`, `pic_desc`, `cat_order`, `cat_extra1`, `cat_extra2`, `cat_enable`, `dos_usernames_username`) VALUES
(587, 0, 'Kế toán', '', '', '', 'ke-toan', '', '', '', '', '', 1, '', '', 0, 'aasc'),
(588, 0, 'Kiểm toán', '', '', '', 'kiem-toan', '', '', '', '', '', 2, '', '', 0, 'aasc'),
(589, 0, 'Tư Vấn', '', '', '', 'tu-van', '', '', '', '', '', 3, '', '', 0, 'aasc'),
(590, 0, 'Kiểm toán Báo cáo Quyết toán vốn đầu tư', '', '', '', 'kiem-toan-bao-cao-quyet-toan-von-dau-tu', '', '', '', '', '', 4, '', '', 0, 'aasc');

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
) ENGINE=InnoDB  DEFAULT CHARSET=utf8 AUTO_INCREMENT=117 ;

--
-- Dumping data for table `dos_module_services`
--

INSERT INTO `dos_module_services` (`record_id`, `title`, `titleen`, `preview`, `previewen`, `content`, `contenten`, `pic_full`, `hit`, `created`, `record_order`, `hot`, `extra_field1`, `extra_field2`, `tag`, `tagen`, `description`, `descriptionen`, `activated`, `dos_usernames_username`) VALUES
(111, 'Kế toán', '', '', '', '<p><span style="text-decoration:underline;color:#000080;"><strong>Kiểm toán:</strong></span></p>\n<p>- Kiểm toán các Báo cáo Tài chính</p>\n<p>- Kiểm toán hoạt động các Dự án</p>\n<p>- Kiểm toán Báo cáo Quyết toán công trình xây dựng cơ bản</p>\n<p>- Kiểm toán xác định vốn góp liên doanh</p>\n<p>- Giám định tài liệu kế toán, tài chính</p>\n<p>- Kiểm toán quyết toán tỷ lệ nội địa hóa</p>\n<p><span style="text-decoration:underline;"><strong><span style="color:#000080;text-decoration:underline;">Kế toán:</span></strong></span></p>\n<p>- Hướng dẫn áp dụng chế độ kế toán - tài chính.</p>\n<p>- Xây dựng các mô hình tổ chức bộ máy - tổ chức công tác kế toán</p>\n<p>- Mở, ghi sổ kế toán và lập các Báo cáo Tài chính</p>\n<p>- Lập hồ sơ đăng ký chế độ kế toán.</p>\n<p><span style="text-decoration:underline;"><strong><span style="color:#000080;text-decoration:underline;">Tư vấn:</span></strong></span></p>\n<p>- Tư vấn về thực hiện các quy định pháp luật</p>\n<p>- Tư vấn về thuế</p>\n<p>- Tư vấn thực hiện các quy định tài chính, huy động và sử dụng vốn, phân tích tài chính..v.v</p>\n<p>- Tư vấn quyết toán tài chính và quyết toán vốn đầu tư.</p>\n<p>- Thẩm định giá tài sản</p>\n<p><span style="text-decoration:underline;"><strong><span style="color:#000080;text-decoration:underline;">Xác định giá trị doanh nghiệp và tư vấn cổ phần hoá:</span></strong></span></p>\n<p>- Tư vấn xác định giá trị tài sản doanh nghiệp để cổ phần hóa</p>\n<p>- Tư vấn xác định và lập hồ sơ xác định giá trị doanh nghiệp</p>\n<p>- Tư vấn đề xuất phương án xử lý lao động sau khi chuyển sang Công ty cổ phần</p>\n<p>- Tư vấn xây dựng phương án kinh doanh sau khi chuyển sang Công ty cổ phần</p>\n<p>- Tư vấn xây dựng điều lệ Công ty cổ phần</p>\n<p>- Tư vấn tổ chức đại hội CNVC.</p>\n<p>- Tư vấn các vấn đề sau khi có quyết định chuyển đổi DNNN thành Công ty cổ phần</p>\n<p>- Tư vấn tổ chức đại hội đồng cổ đông</p>\n<p>- Tư vấn các công việc phải thực hện sau khi chuyển đổi doanh nghiệp:</p>\n<p><span style="text-decoration:underline;"><strong><span style="color:#000080;text-decoration:underline;">Đào tạo cán bộ và ứng dụng tin học:</span></strong></span></p>\n<p>- Tổ chức các khoá học bồi dưỡng kế toán trưởng, bồi dưỡng nghiệp vụ kế toán, kiểm toán nội bộ, quản trị doanh nghiệp, ứng dụng tin học trong công tác kế toán.</p>\n<p>- Cung cấp và hướng dẫn sử dụng phần mềm kế toán.</p>\n<p>- Cung cấp các văn bản pháp qui, các thông tin kinh tế - tài chính, sổ sách biểu mẫu, chứng từ.</p>\n<p>- Hỗ trợ tuyển dụng nhân viên.</p>', '', '', 16, '2012-06-06 08:08:53', 6, 0, '', '', 'ke-toan', '', '', '', 1, 'aasc'),
(112, 'Kiểm toán', '', '', '', '<p><span style="text-decoration:underline;"><strong><span style="color:#ff6600;text-decoration:underline;">Kiểm toán:</span></strong></span></p>\n<p>- Kiểm toán các Báo cáo Tài chính</p>\n<p>- Kiểm toán hoạt động các Dự án</p>\n<p>- Kiểm toán Báo cáo Quyết toán công trình xây dựng cơ bản</p>\n<p>- Kiểm toán xác định vốn góp liên doanh</p>\n<p>- Giám định tài liệu kế toán, tài chính</p>\n<p>- Kiểm toán quyết toán tỷ lệ nội địa hóa</p>\n<p><span style="text-decoration:underline;color:#ff6600;"><strong>Kế toán:</strong></span></p>\n<p>- Hướng dẫn áp dụng chế độ kế toán - tài chính.</p>\n<p>- Xây dựng các mô hình tổ chức bộ máy - tổ chức công tác kế toán</p>\n<p>- Mở, ghi sổ kế toán và lập các Báo cáo Tài chính</p>\n<p>- Lập hồ sơ đăng ký chế độ kế toán.</p>\n<p><span style="text-decoration:underline;"><strong><span style="color:#ff6600;text-decoration:underline;">Tư vấn:</span></strong></span></p>\n<p>- Tư vấn về thực hiện các quy định pháp luật</p>\n<p>- Tư vấn về thuế</p>\n<p>- Tư vấn thực hiện các quy định tài chính, huy động và sử dụng vốn, phân tích tài chính..v.v</p>\n<p>- Tư vấn quyết toán tài chính và quyết toán vốn đầu tư.</p>\n<p>- Thẩm định giá tài sản</p>\n<p><span style="text-decoration:underline;color:#ff6600;"><strong>Xác định giá trị doanh nghiệp và tư vấn cổ phần hoá:</strong></span></p>\n<p>- Tư vấn xác định giá trị tài sản doanh nghiệp để cổ phần hóa</p>\n<p>- Tư vấn xác định và lập hồ sơ xác định giá trị doanh nghiệp</p>\n<p>- Tư vấn đề xuất phương án xử lý lao động sau khi chuyển sang Công ty cổ phần</p>\n<p>- Tư vấn xây dựng phương án kinh doanh sau khi chuyển sang Công ty cổ phần</p>\n<p>- Tư vấn xây dựng điều lệ Công ty cổ phần</p>\n<p>- Tư vấn tổ chức đại hội CNVC.</p>\n<p>- Tư vấn các vấn đề sau khi có quyết định chuyển đổi DNNN thành Công ty cổ phần</p>\n<p>- Tư vấn tổ chức đại hội đồng cổ đông</p>\n<p>- Tư vấn các công việc phải thực hện sau khi chuyển đổi doanh nghiệp:</p>\n<p><span style="text-decoration:underline;color:#ff6600;"><strong>Đào tạo cán bộ và ứng dụng tin học:</strong></span></p>\n<p>- Tổ chức các khoá học bồi dưỡng kế toán trưởng, bồi dưỡng nghiệp vụ kế toán, kiểm toán nội bộ, quản trị doanh nghiệp, ứng dụng tin học trong công tác kế toán.</p>\n<p>- Cung cấp và hướng dẫn sử dụng phần mềm kế toán.</p>\n<p>- Cung cấp các văn bản pháp qui, các thông tin kinh tế - tài chính, sổ sách biểu mẫu, chứng từ.</p>\n<p>- Hỗ trợ tuyển dụng nhân viên.</p>', '', '', 13, '2012-06-06 08:09:03', 5, 0, '', '', 'kiem-toan', '', '', '', 1, 'aasc'),
(113, 'Tư vấn', '', '', '', '<p>ë Kiểm toán</p>\n<p>- Kiểm toán các Báo cáo Tài chính</p>\n<p>- Kiểm toán hoạt động các Dự án</p>\n<p>- Kiểm toán Báo cáo Quyết toán công trình xây dựng cơ bản</p>\n<p>- Kiểm toán xác định vốn góp liên doanh</p>\n<p>- Giám định tài liệu kế toán, tài chính</p>\n<p>- Kiểm toán quyết toán tỷ lệ nội địa hóa</p>\n<p>ë Kế toán</p>\n<p>- Hướng dẫn áp dụng chế độ kế toán - tài chính.</p>\n<p>- Xây dựng các mô hình tổ chức bộ máy - tổ chức công tác kế toán</p>\n<p>- Mở, ghi sổ kế toán và lập các Báo cáo Tài chính</p>\n<p>- Lập hồ sơ đăng ký chế độ kế toán.</p>\n<p>ë Tư vấn</p>\n<p>- Tư vấn về thực hiện các quy định pháp luật</p>\n<p>- Tư vấn về thuế</p>\n<p>- Tư vấn thực hiện các quy định tài chính, huy động và sử dụng vốn, phân tích tài chính..v.v</p>\n<p>- Tư vấn quyết toán tài chính và quyết toán vốn đầu tư.</p>\n<p>- Thẩm định giá tài sản</p>\n<p>ë Xác định giá trị doanh nghiệp và tư vấn cổ phần hoá</p>\n<p>- Tư vấn xác định giá trị tài sản doanh nghiệp để cổ phần hóa</p>\n<p>- Tư vấn xác định và lập hồ sơ xác định giá trị doanh nghiệp</p>\n<p>- Tư vấn đề xuất phương án xử lý lao động sau khi chuyển sang Công ty cổ phần</p>\n<p>- Tư vấn xây dựng phương án kinh doanh sau khi chuyển sang Công ty cổ phần</p>\n<p>- Tư vấn xây dựng điều lệ Công ty cổ phần</p>\n<p>- Tư vấn tổ chức đại hội CNVC.</p>\n<p>- Tư vấn các vấn đề sau khi có quyết định chuyển đổi DNNN thành Công ty cổ phần</p>\n<p>- Tư vấn tổ chức đại hội đồng cổ đông</p>\n<p>- Tư vấn các công việc phải thực hện sau khi chuyển đổi doanh nghiệp:</p>\n<p>ë Đào tạo cán bộ và ứng dụng tin học</p>\n<p>- Tổ chức các khoá học bồi dưỡng kế toán trưởng, bồi dưỡng nghiệp vụ kế toán, kiểm toán nội bộ, quản trị doanh nghiệp, ứng dụng tin học trong công tác kế toán.</p>\n<p>- Cung cấp và hướng dẫn sử dụng phần mềm kế toán.</p>\n<p>- Cung cấp các văn bản pháp qui, các thông tin kinh tế - tài chính, sổ sách biểu mẫu, chứng từ.</p>\n<p>- Hỗ trợ tuyển dụng nhân viên.</p>', '', '', 11, '2012-06-06 08:09:11', 4, 0, '', '', 'tu-van', '', '', '', 1, 'aasc'),
(114, 'Xác định giá trị doanh nghiệp', '', '', '', '<p>ë Kiểm toán</p>\n<p>- Kiểm toán các Báo cáo Tài chính</p>\n<p>- Kiểm toán hoạt động các Dự án</p>\n<p>- Kiểm toán Báo cáo Quyết toán công trình xây dựng cơ bản</p>\n<p>- Kiểm toán xác định vốn góp liên doanh</p>\n<p>- Giám định tài liệu kế toán, tài chính</p>\n<p>- Kiểm toán quyết toán tỷ lệ nội địa hóa</p>\n<p>ë Kế toán</p>\n<p>- Hướng dẫn áp dụng chế độ kế toán - tài chính.</p>\n<p>- Xây dựng các mô hình tổ chức bộ máy - tổ chức công tác kế toán</p>\n<p>- Mở, ghi sổ kế toán và lập các Báo cáo Tài chính</p>\n<p>- Lập hồ sơ đăng ký chế độ kế toán.</p>\n<p>ë Tư vấn</p>\n<p>- Tư vấn về thực hiện các quy định pháp luật</p>\n<p>- Tư vấn về thuế</p>\n<p>- Tư vấn thực hiện các quy định tài chính, huy động và sử dụng vốn, phân tích tài chính..v.v</p>\n<p>- Tư vấn quyết toán tài chính và quyết toán vốn đầu tư.</p>\n<p>- Thẩm định giá tài sản</p>\n<p>ë Xác định giá trị doanh nghiệp và tư vấn cổ phần hoá</p>\n<p>- Tư vấn xác định giá trị tài sản doanh nghiệp để cổ phần hóa</p>\n<p>- Tư vấn xác định và lập hồ sơ xác định giá trị doanh nghiệp</p>\n<p>- Tư vấn đề xuất phương án xử lý lao động sau khi chuyển sang Công ty cổ phần</p>\n<p>- Tư vấn xây dựng phương án kinh doanh sau khi chuyển sang Công ty cổ phần</p>\n<p>- Tư vấn xây dựng điều lệ Công ty cổ phần</p>\n<p>- Tư vấn tổ chức đại hội CNVC.</p>\n<p>- Tư vấn các vấn đề sau khi có quyết định chuyển đổi DNNN thành Công ty cổ phần</p>\n<p>- Tư vấn tổ chức đại hội đồng cổ đông</p>\n<p>- Tư vấn các công việc phải thực hện sau khi chuyển đổi doanh nghiệp:</p>\n<p>ë Đào tạo cán bộ và ứng dụng tin học</p>\n<p>- Tổ chức các khoá học bồi dưỡng kế toán trưởng, bồi dưỡng nghiệp vụ kế toán, kiểm toán nội bộ, quản trị doanh nghiệp, ứng dụng tin học trong công tác kế toán.</p>\n<p>- Cung cấp và hướng dẫn sử dụng phần mềm kế toán.</p>\n<p>- Cung cấp các văn bản pháp qui, các thông tin kinh tế - tài chính, sổ sách biểu mẫu, chứng từ.</p>\n<p>- Hỗ trợ tuyển dụng nhân viên.</p>', '', '', 13, '2012-06-06 08:09:18', 3, 0, '', '', 'xac-dinh-gia-tri-doanh-nghiep', '', '', '', 1, 'aasc'),
(115, 'Kiểm toán Báo cáo Quyết toán vốn đầu tư', '', '', '', '<p>Kiểm toán Báo cáo Quyết toán vốn đầu tư</p>', '', '', 16, '2012-06-06 08:22:28', 2, 0, '', '', 'kiem-toan-bao-cao-quyet-toan-von-dau-tu', '', '', '', 1, 'aasc'),
(116, 'Dịch vụ mới', '', '', '', '<p>Đang cập nhật ...</p>', '', '', 6, '2012-06-08 01:52:51', 1, 0, '', '', 'dich-vu-moi', '', '', '', 1, 'aasc');

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
) ENGINE=InnoDB  DEFAULT CHARSET=utf8 AUTO_INCREMENT=119 ;

--
-- Dumping data for table `dos_module_supports`
--

INSERT INTO `dos_module_supports` (`support_id`, `support_name`, `support_nameen`, `support_phone`, `support_value`, `support_order`, `support_type`, `dos_usernames_username`) VALUES
(117, 'Tư vấn kế toán', '', '0929 001 001', 'thanhansoft', 1, 'yahoo', 'aasc'),
(118, 'Tư vấn kiểm toán', '', '0987 001 001', 'hongvietsoft', 1, 'yahoo', 'aasc');

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
('010312', 'default', 'menu_services'),
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
('aasc', 'info@thuonghoi.com', 'e10adc3949ba59abbe56e057f20f883e', '2012-06-06 08:01:17', '', '', '', 'user', 'vi', '', '2012-07-05 16:00:00', 0, '20122012', '', 1, '010312', 30, 'luat-ke-toan');

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
('address1', 'Trụ sở chính: 29 Hoàng Sa, Quận 1, TP. Hồ Chí Minh - ĐT: (84-8) 10 3908 - 3910 4880 - Fax: (84-8) 3910 4880', '', 'aasc'),
('address2', 'ĐT: (84-8) 10 3908 - 3910 4880 - Fax: (84-8) 3910 4880', '', 'aasc'),
('advs', 'Đoi tac', '', 'aasc'),
('company_name', '', '', 'aasc'),
('company_phone', 'Tư vấn: (84-8) 3910 39 08 - 3910 48 81', '', 'aasc'),
('products', '', '', 'aasc');

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
