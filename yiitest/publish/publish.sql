-- phpMyAdmin SQL Dump
-- version 3.4.5
-- http://www.phpmyadmin.net
--
-- Host: localhost
-- Generation Time: Jul 10, 2012 at 08:49 AM
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
('advs_left_height', 267, '', '180512'),
('advs_left_width', 203, '', '180512'),
('banner_height', 323, '', '180512'),
('banner_width', 929, '', '180512'),
('logo_height', 55, '', '180512'),
('logo_width', 263, '', '180512'),
('max_image_height', 950, '', '180512'),
('max_image_width', 750, '', '180512'),
('news_cat_height', 100, '', '180512'),
('news_cat_width', 143, '', '180512'),
('news_height_thumb', 100, '', '180512'),
('news_num_paging_cat', 10, '', '180512'),
('news_num_paging_hot', 8, '', '180512'),
('news_num_paging_index', 10, '', '180512'),
('news_num_paging_new', 8, '', '180512'),
('news_width_thumb', 143, '', '180512'),
('products_cat_height', 145, '', '180512'),
('products_cat_width', 145, '', '180512'),
('products_height', 650, '', '180512'),
('products_height_thumb', 145, '', '180512'),
('products_num_paging_cat', 20, '', '180512'),
('products_num_paging_hot', 20, '', '180512'),
('products_num_paging_new', 20, '', '180512'),
('products_num_paging_other', 5, '', '180512'),
('products_width', 650, '', '180512'),
('products_width_thumb', 145, '', '180512'),
('services_height', 950, '', '180512'),
('services_width', 750, '', '180512'),
('video_height_thumb', 145, '', '180512'),
('video_num_paging_cat', 8, '', '180512'),
('video_num_paging_index', 8, '', '180512'),
('video_width_thumb', 145, '', '180512');

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
('180512', 'products', 'scroll.css|jquery.fancybox.css', 'css'),
('180512', 'products', 'jcarousellite_1.0.1.js|scroller.js|jquery.fancybox.js|jquery.scroll-1.4.2-min.js|jquery.serialScroll-1.2.2-min.js|product.js', 'javascript'),
('180512', 'video', 'prettyPhoto.css', 'css'),
('180512', 'video', 'jquery.prettyPhoto.js', 'javascript');

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
('about', 'thammyvien'),
('advs', 'thammyvien'),
('banner', 'thammyvien'),
('contact', 'thammyvien'),
('news', 'thammyvien'),
('products', 'thammyvien'),
('services', 'thammyvien'),
('supports', 'thammyvien'),
('video', 'thammyvien');

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
) ENGINE=InnoDB  DEFAULT CHARSET=utf8 AUTO_INCREMENT=189 ;

--
-- Dumping data for table `dos_module_abouts`
--

INSERT INTO `dos_module_abouts` (`record_id`, `title`, `titleen`, `content`, `contenten`, `hit`, `created`, `record_order`, `hot`, `extra_field1`, `extra_field2`, `tag`, `tagen`, `description`, `descriptionen`, `activated`, `dos_usernames_username`) VALUES
(188, 'Thẩm mỹ viện - Đánh thức vẻ đẹp tiềm ẩn', '', '<p>Là phụ nữ, ai cũng muốn sở hữu một khuôn mặt đẹp, một làn da trắng mịn, một vóc dáng hoàn hảo cân đối. Một người phụ nữ đẹp sẽ dễ dàng thành công hơn trong cuộc sống gia đình và sự nghiệp. Có ai đó đã nói rằng: “Không có phụ nữ xấu chỉ có phụ nữ không biết làm đẹp”, vậy bạn đã biết đánh thức vẻ đẹp tiềm ẩn của mình để tự tin hơn với những đường nét, vóc dáng và làn da… Thẩm mỹ viện Việt Mỹ sẽ là nơi giúp bạn trả lời những câu hỏi đó.</p>\n<p style="text-align:center;"><img src="/public/userfiles/image/thammyvien/image/anh%20nha%20272%20copy.JPG" alt="" width="500" height="334" /></p>\n<p>Tọa lạc trên con phố Bà Triệu sầm uất, thẩm mỹ viện Việt Mỹ là một trong những địa chỉ uy tín hàng đầu về chăm sóc sức khỏe và vẻ đẹp cho phụ nữ.</p>\n<p>Với trang thiết bị công nghệ cao nhập khẩu hoàn toàn từ Châu Âu Việt Mỹ luôn mang lại phương pháp làm đẹp an toàn và hiệu quả. Việt Mỹ là nơi luôn đi đầu ứng dụng những thành tựu của công nghệ làm đẹp trên thế giới vào việc chăm sóc vẻ đẹp cho chị em phụ nữ tại Việt Nam. Đến với Việt Mỹ bạn sẽ được các chuyên gia tư vấn tận tình hướng dẫn và lựa chọn các phương pháp làm đẹp hiệu quả nhất tùy theo tính chất, đặc thù và các yêu cầu của cá nhân bạn.</p>\n<p style="text-align:center;"><img src="/public/userfiles/image/thammyvien/image/Gioi%20thieu/gt3.jpg" alt="" width="500" height="607" /></p>\n<p>Bạn đã biết công dụng của vàng như những món trang sức bên ngoài nhưng hiện nay vàng còn là một tác nhân quan trọng của công nghệ trẻ hóa da. Các khoa học gia ngày nay đã mô tả vàng như một thành phần hữu ích trong thẩm mỹ và cả sức khỏe, có thể đẩy mạnh hệ miễn dịch, khiến da trở nên rạng rỡ và khỏe mạnh hơn. Việt Mỹ đã ứng dụng phương pháp cải thiện da tiên tiến bằng mặt nạ vàng 24K giúp da trẻ và điều trị nám da trong thời gian ngắn. Với những tác dụng bất ngờ của mặt nạ vàng mang lại Việt Mỹ đã trở thành địa chỉ thường xuyên của nhiều bạn trẻ.</p>\n<p style="text-align:center;"><img src="/public/userfiles/image/thammyvien/image/Gioi%20thieu/gt5.jpg" alt="" width="500" height="769" /></p>\n<p style="text-align:center;"><img src="/public/userfiles/image/thammyvien/image/Gioi%20thieu/thammyvietmytc2121.jpg" alt="" width="550" height="367" /></p>\n<p>Đôi mắt đẹp quyến rũ, với ánh nhìn rộng mở, thu hút, phần lớn là nhờ vào làn lông mi dày, dài và cong của bạn. Nếu bạn cảm thấy thiếu tự tin về điều đó hãy đến Việt Mỹ để được sử dụng dịch vụ công nghệ kéo dài mi. Không chỉ thế khi đến với Việt Mỹ bạn còn được phục vụ những dịch vụ tốt nhất cho sức khỏe và vẻ đẹp của mình.</p>\n<p style="text-align:center;"><img src="/public/userfiles/image/thammyvien/image/Gioi%20thieu/8(3).jpg" alt="" width="500" height="411" /></p>\n<p>Ngoài ra tại Việt Mỹ bạn có thể lựa chọn nhiều dịch vụ khác nhau, như: Triệt lông vĩnh viễn, trẻ hóa da bằng công nghệ ánh sáng;trị nám, tàn nhang, trị mụn, tắm trắng, massage, xông hơi bằng gỗ bách xanh, giảm béo bằng máy ánh sáng và thông kinh lạc; xóa xăm lông mày</p>\n<p>Đặc biệt là sản phẩm mặt nạ cá hồi; mặt nạ bằng cá hồi có tác dụng bổ sung và duy trì độ ẩm cho da, cung cấp dinh dưỡng và bảo vệ da chống lại môi trường ô nhiễm bên ngoài. Ngoài ra, sản phẩm còn có khả năng xoá bỏ các nếp nhăn nông, cải thiện và làm mờ các nếp nhăn sâu do tuổi tác, phục hồi lại khả năng đàn hồi tự nhiên cho da, ngăn chặn sự hình thành nếp nhăn trên da, thúc đẩy trẻ hoá tế bào theo cơ chế tự nhiên.<br />Với dịch vụ đa dạng và phong cách phục vụ chuyên nghiệp Thẩm mỹ viện Việt Mỹ sẽ làm bạn hài lòng và trở thành địa chỉ ghé thăm thường xuyên của bạn.</p>\n<p style="text-align:center;"><img src="/public/userfiles/image/thammyvien/image/Gioi%20thieu/gt7.jpg" alt="" width="500" height="325" /></p>\n<p>Trong không gian ấm áp và nhẹ nhàng, đắm mình trong các liệu pháp hương hoa thiên nhiên, dưới bàn tay điêu luyện của các nhân viên được đào tạo bài bản tại Việt Mỹ khách hàng sẽ cảm thấy hài lòng nhất!</p>', '', 96, '2012-06-21 06:50:31', 1, 0, '', '', 'tham-my-vien-danh-thuc-ve-dep-tiem-an', '', '', '', 1, 'thammyvien');

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
) ENGINE=InnoDB  DEFAULT CHARSET=utf8 AUTO_INCREMENT=231 ;

--
-- Dumping data for table `dos_module_advs`
--

INSERT INTO `dos_module_advs` (`record_id`, `title`, `titleen`, `pic_thumb`, `url`, `create_date`, `start_date`, `end_date`, `hits`, `record_order`, `position`, `type`, `enable`, `dos_usernames_username`) VALUES
(228, 'Bí mật của làn da', '', 'bi-mat-cua-lan-da.png', 'http://thammyvien.dos.vn/', '2012-06-22 07:28:40', '2012-06-21 16:00:00', '2012-07-30 16:00:00', 0, 1, 'left', '_bank', 1, 'thammyvien'),
(229, 'làn da khỏe', '', 'lan-da-khoe.png', 'http://thammyvien.dos.vn/gioi-thieu', '2012-06-22 07:31:06', '2012-06-21 16:00:00', '2012-07-30 16:00:00', 0, 2, 'left', '_bank', 0, 'thammyvien'),
(230, 'Giảm giá', '', 'giam-gia.png', 'http://thammyvien.dos.vn/dich-vu', '2012-06-22 07:31:48', '2012-06-21 16:00:00', '2012-07-30 16:00:00', 0, 3, 'left', '_bank', 0, 'thammyvien');

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
) ENGINE=InnoDB  DEFAULT CHARSET=utf8 AUTO_INCREMENT=979 ;

--
-- Dumping data for table `dos_module_banners`
--

INSERT INTO `dos_module_banners` (`banner_id`, `banner_date`, `banner_name`, `banner_url`, `banner_link`, `banner_order`, `banner_type`, `position`, `enable`, `dos_usernames_username`) VALUES
(915, '2012-06-22 06:57:29', 'Banner', 'banner.jpg', '', 1, 'banners', 'default', 1, 'thammyvien'),
(916, '2012-06-22 06:57:39', 'Banner 1', 'banner-1.jpg', '', 2, 'banners', 'default', 1, 'thammyvien'),
(917, '2012-06-22 06:57:51', 'Banner 2', 'banner-2.jpg', '', 3, 'banners', 'default', 1, 'thammyvien'),
(918, '2012-06-22 06:58:01', 'Banner 3', 'banner-3.jpg', '', 4, 'banners', 'default', 1, 'thammyvien'),
(970, '2012-06-26 00:58:31', 'home logo', 'home-logo.png', '', 5, 'logo', 'default', 1, 'thammyvien'),
(972, '2012-06-26 06:32:35', 'Banner 4', 'banner-4.jpg', '', 6, 'banners', 'about', 1, 'thammyvien'),
(973, '2012-06-26 06:33:12', 'Banner 5', 'banner-5.jpg', '', 7, 'banners', 'products', 1, 'thammyvien'),
(974, '2012-06-26 06:33:32', 'Banner 6', 'banner-6.jpg', '', 8, 'banners', 'services', 1, 'thammyvien'),
(975, '2012-06-26 06:34:24', 'Banner 7', 'banner-7.jpg', '', 9, 'banners', 'products', 1, 'thammyvien'),
(976, '2012-06-26 06:34:49', 'Banner 8', 'banner-8.jpg', '', 10, 'banners', 'news', 1, 'thammyvien'),
(977, '2012-06-26 06:35:12', 'Banner 9', 'banner-9.jpg', '', 11, 'banners', 'contact', 1, 'thammyvien'),
(978, '2012-06-26 06:36:02', 'Banner 10', 'banner-10.jpg', '', 12, 'banners', 'video', 1, 'thammyvien');

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
('Trang chủ', '', 'default', '', 1, '', '', '', '', 'thammyvien'),
('Giới thiệu', '', 'about', '', 2, '', '', '', '', 'thammyvien'),
('Hình ảnh', '', 'products', '', 3, '', '', '', '', 'thammyvien'),
('Dịch vụ', '', 'services', '', 4, '', '', '', '', 'thammyvien'),
('Tin tức & sự kiện', '', 'news', '', 5, '', '', '', '', 'thammyvien'),
('Video', '', 'video', '', 6, '', '', '', '', 'thammyvien'),
('Liên hệ', '', 'contact', '', 7, '', '', '', '', 'thammyvien');

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
) ENGINE=InnoDB  DEFAULT CHARSET=utf8 AUTO_INCREMENT=239 ;

--
-- Dumping data for table `dos_module_news`
--

INSERT INTO `dos_module_news` (`record_id`, `title`, `titleen`, `postdate`, `pic_thumb`, `preview`, `previewen`, `content`, `contenten`, `tag`, `tagen`, `description`, `descriptionen`, `hits`, `record_order`, `hot`, `extra_field1`, `extra_field2`, `enable`, `dos_module_item_cat_cat_id`) VALUES
(236, 'Trị nám da: Đơn giản nếu biết cách', '', '2012-06-21 07:55:52', 'tri-nam-da-on-gian-neu-biet-cach.jpg', '<p>40% phụ nữ trên 30 tuổi và 90% phụ nữ trên 40 tuổi bị nám da, đốm nâu. 66% phụ nữ bị nám da sau khi sinh. Rõ ràng đây là mối lo lắng không nhỏ của nhiều phụ nữ.</p>', '', '<p>Nám da, đốm nâu không phải là bệnh nhưng ảnh hưởng nhiều đến thẩm mỹ, khiến họ mất tự tin trong giao tiếp với bạn bè, đồng nghiệp, đặc biệt là với người khác giới.<br />Gian nan trị chứng nám da</p>\n<p>Nhiều phụ nữ đã tìm đến những biện pháp trị nám khác nhau như điều trị bằng laser, sử dụng hóa chất lột tẩy hay dùng sóng điện từ. Tuy nhiên, kết quả không làm nhiều người hài lòng, thậm chí họ còn chịu những tác dụng phụ nguy hiểm.</p>\n<p>Việc sử dụng hóa chất lột tẩy, bào mòn da dễ gây dị ứng, khiến da tổn thương và tình trạng nám da càng nghiêm trọng hơn. Trong khi đó, sử dụng tia laser không những gây đau mà còn có thể gây bỏng da.</p>\n<p style="text-align:center;"><img src="/public/userfiles/image/thammyvien/image/Tin%20tuc/trinam.jpg" alt="" width="333" height="500" /></p>\n<p>Muốn trị nám, bạn cần hiểu rõ nguồn gốc của vấn đề này. Nguyên nhân chính gây ra tình trạng nám da là do tác động của ánh nắng mặt trời. Tác nhân này kích thích lớp đáy của thượng bì (là nơi chứa tế bào hắc tố melanin) sản sinh nhiều melanin. Chúng bị đẩy dần lên trên bề mặt da rồi tạo thành những đốm nâu, vết nám.</p>\n<p>Quá trình hình thành nám, sạm da bắt đầu từ sự hình thành của các gốc tự do trong cơ thể dưới tác động của ánh nắng mặt trời. Vì thế, muốn cải thiện tình trạng này, bạn cần bổ sung những chất chống ô-xy hóa ngoại sinh mà cơ thể không tự tổng hợp được.</p>\n<p>Dưỡng chất trị nám từ thực phẩm bổ sung</p>\n<p>Theo nghiên cứu, procianidin, vitamin C, beta carotene, vtamin E, selenium là những hoạt chất có khả năng chống lại các gốc tự do gây nám. Chúng phân bố trong một số thực phẩm. Tuy nhiên, với hàm lượng thấp, lại dễ "thất thoát" trong quá trình chế biến nên thực phẩm tự nhiên hàng ngày không thể giúp điều trị nám.</p>\n<p>Ngày nay, việc dùng viên uống bổ sung, chứa hoạt chất chống ô-xy hóa đã tinh chế được xem là giải pháp trị nám, sạm da khả thi. Hiệu quả của chúng cao hơn nhiều so với những cách điều trị trước đây. Không những vậy, viên uống bổ sung còn nhỏ gọn, tiện lợi cho bạn mang theo.</p>\n<p>Một số nhà sản xuất đã nghiên cứu và đưa ra thị trường loại thực phẩm bổ sung giúp loại bỏ nám da và đốm nâu. Sản phẩm có thành phần chiết xuát 100% từ thiên nhiên và sản xuất theo công nghệ tiên tiến Actisome để đạt hiệu quả điều trị tối ưu.</p>\n<p>Cơ chế trị nám hiệu quả, an toàn từ tự nhiên</p>\n<p>Công thức trị nám, sạm da hoàn hảo nhất là sử dụng procianidin, phối hợp với beta carotene, vitamin C và vitamin E. Procianidin chiết xuất từ vỏ thông biển Pháp, có hoạt tính chống ô-xy hóa cực mạnh, gấp 20 lần vitamin C và 50 lần vitamin E. Thành phần này có tác dụng đẩy lùi các gốc tự do, bảo vệ tế bào khỏi tác hại của tia cực tím. Nó cũng giúp ức chế men tyrosinase, tức là ức chế quá trình tổng hợp melanin.</p>\n<p>Bên cạnh đó, những chất chống ô-xy hóa trong công thức này còn có tác dụng chống lão hóa, kích thích quá trình tuần hoàn máu, giúp da hồng hào và khỏe mạnh.</p>\n<p>Nhiều nghiên cứ đã chứng minh tính an toàn và hiệu quả của procianidin đối với người châu Á. Trên 95% người sử dụng công nhận tình trạng nám da cải thiện cả về độ đậm màu và diện tích. Nhờ đó, da sáng lên đáng kể.</p>\n<p>Để đạt hiệu quả trị nám tối ưu, bạn cần kết hợp các biện pháp bảo vệ da khi ra nắng, uống nhiều nước và bổ sung thêm vitamin từ thực phẩm.</p>', '', 'tri-nam-da-don-gian-neu-biet-cach', '', '40% phụ nữ trên 30 tuổi và 90% phụ nữ trên 40 tuổi bị nám da, đốm nâu. 66% phụ nữ bị nám da sau khi sinh. Rõ ràng đây là mối lo lắng không nhỏ của nhiều phụ nữ.', '', 0, 1, 0, '', '', 1, 140),
(237, 'Tắm trắng tại nhà bằng trái cây', '', '2012-06-21 07:58:29', 'tam-trang-tai-nha-bang-trai-cay.jpg', '<p>Làn da của bạn sẽ trắng đẹp rạng ngời dưới nắng hè nhờ được tắm trắng tại nhà. Bạn có tin không? Các bước thực hiện cực kì đơn giản và dễ dàng nhé!</p>', '', '<p>Làn da của bạn sẽ trắng đẹp rạng ngời dưới nắng hè nhờ được tắm trắng tại nhà. Bạn có tin không? Các bước thực hiện cực kì đơn giản và dễ dàng nhé!</p>\n<p>1. Chuẩn bị:</p>\n<p>- Để làm hỗn hợp tắm trắng, bạn hãy sử dụng trái dâu tằm. Trong quả dâu tằm có chứa alpha hydro acid, chất có tác dụng tẩy tế bào chết, tái tạo tế bào mới và giúp làn da trắng mịn.<br />- Mật ong<br />- Đường cát/ muối (loại chuyên dụng để tẩy tế bào chết).</p>\n<p style="text-align:center;"><img src="/public/userfiles/image/thammyvien/image/Tin%20tuc/17__.jpg" alt="" width="500" height="365" /></p>\n<p>2. Thực hiện:</p>\n<p>Trước hết bạn cần làm ẩm da rồi tẩy tế bào chết: Sử dụng đường hoặc muối (loại chuyên dụng để tẩy tế bào chết). Bước này nhằm mục đích loại bỏ tế bào chết và tái tạo tế bào mới.<br />Làm hỗn hợp tắm trắng: Bạn hãy xay nhuyễn hai muỗng cà phê nước dâu tằm rồi trộn với 3 muỗng mật ong, sau đó trộng đều.<br />Thoa hỗn hợp này lên da và để khoảng 10 - 15 phút rồi tắm lại bằng nước mát. Như vậy là bạn đã có một làn da trằng hồng, mịn màng đầy sức sống hè này rồi.<br />Mách nhỏ: Nếu không có trái dâu tằm, bạn có thể sử dụng nước cốt cam để thay thế vì cam cũng có tác dụng tương tự dâu tằm trong việc tẩy tế bào chết và làm da trắng mịn.<br />Tam trang,tri tan nhang</p>', '', 'tam-trang-tai-nha-bang-trai-cay', '', 'Làn da của bạn sẽ trắng đẹp rạng ngời dưới nắng hè nhờ được tắm trắng tại nhà. Bạn có tin không? Các bước thực hiện cực kì đơn giản và dễ dàng nhé!', '', 0, 2, 0, '', '', 1, 142),
(238, 'Trị mụn mủ - Chăm sóc da sai cách', '', '2012-06-21 08:03:06', 'tri-mun-mu-cham-soc-da-sai-cach.png', '<p style="text-align:left;">Phụ nữ ai cũng quan tâm chăm sóc làn da của mình hàng ngày. Nhưng chăm sóc thế nào là đúng? thế nào mới hiệu quả? Có rất nhiều ý kiến trái chiều trong việc chăm sóc da khiến khá nhiều người cảm thấy hoang mang.</p>', '', '<p>1. Mụn là vấn đề thường gặp phải với môi trường sống ô nhiễm như hiện nay. Đã có khá nhiều sản phẩm dành riêng cho việc điều trị mụn và cũng có nhiều phương pháp trị mụn dân gian. Tuy nhiên để điều trị mụn “tận gốc”, hiện đang có hai trường phái đối lập nhau. Một bên thì cho rằng nên lấy cồi mụn ra rồi sử dụng kem chống mụn. Một bên lại bảo rằng không nên nặn mụn vì sẽ làm cho da bị sưng tấy, đôi khi còn nổi thêm mụn ở vùng xung quanh nữa. Sự thật như thế nào?<br />Mụn là bệnh lý thường gặp ở tuổi dậy thì do tắc nghẽn nang lông, tăng tiết bã, bội nhiễm vi khuẩn.<br />Ở phụ nữ có rất nhiều yếu tố gây ra tình trạng nổi mụn: Sự thay đổi hàm lượng hóc-môn khi bắt đầu hoặc ngừng uống thuốc tránh thai, hoặc khi bị mãn kinh. Ngoài ra còn do một số loại thuốc, đặc biệt là thuốc chữa trầm cảm và chứng động kinh, hoặc do mỹ phẩm,...<br />Biểu hiện của mụn rất đa dạng: sẩn, mụn mủ, cồi đóng (trắng), cồi đen (mở), nang, cục, sẹo lõm, sẹo lồi. Da đỏ, nhờn. Để điều trị mụn tận gốc đầu tiên cần phải tuân theo những chế độ sau:</p>\n<p>-Tránh xa các thức ăn có chứa chất ngọt, mỡ, và chất kích thích như rượu, café và thuốc lá. Trong bữa ăn hằng ngày cần phải bổ sung nhiều rau xanh. Ăn nhiều trái cây.<br />- Thức khuya và căng thẳng là hai nguyên nhân dễ nổi mụn và tàn phá làn da nhanh nhất.<br />- Không nên để cơ thể bị thiếu nước dẫn đến táo bón. Nên uống đủ nước, đừng đợi đến khi cảm thấy khát nước mới uống. Vì khi ấy cơ thể bạn đã thiếu nước trầm trọng nên nó mới đòi hỏi bạn bổ sung nước. Ít nhất phải uống 2 lít mỗi ngày.</p>\n<p> <img src="/public/userfiles/image/thammyvien/image/Tin%20tuc/tri-mun-mu-cham-soc-da%20(1).png" alt="" width="400" height="300" /></p>\n<p>- Chống viêm, chống nhiễm trùng, mở chỗ tắc ở nang lông, giảm tiết bã.<br />Quá trình điều trị sẽ được bác sĩ da liễu quyết định sau khi thăm khám toàn diện và cẩn thận. Vì vậy theo Đẹp, để điều trị mụn có hiệu quả nhất thiết không nên tiến hành nặn mụn vì có thể gây nhiễm trùng lan rộng, phá vỡ cấu trúc da gây tụ máu, tạo sẹo xấu, để lại vết thâm, lõm trên làn da.<br />Nhất là trước khi nặn mụn nhiều người không rửa tay, vi khuẩn từ tay sẽ xâm nhập vào bên trong gây sưng tấy. Đừng lo lắng việc cồi mụn vẫn còn. Cứ để các nốt mụn khô và cồi mụn sẽ tự tróc ra.<br />2. Mùa nắng ở Việt Nam rất gắt, nên khi ra đường ai cũng phải cố gắng che chắn cho thật kỹ. Và một giải pháp rất được chị em ưa chuộng là sử dụng kem chống nắng. Tuy nhiên, hiện nay có một số tranh cãi về việc sử dụng kem chống nắng. Có chuyên gia cho rằng những người có làn da nhạy cảm và trẻ em không nên sử dụng kem chống nắng, còn một số khác lại khuyên tất cả mọi người đều cần sử dụng kem chống nắng khi bước ra ngoài đường. Sự thật là như thế nào?<br />Trẻ em từ 6 tháng trở lên và người có da nhạy cảm vẫn sử dụng được kem chống nắng, tuy nhiên cần phải lưu ý một số vấn đề sau:<br />- Trong thành phần của kem chống nắng không chứa chất bảo quản, tinh dầu thơm, PABA (Paraamino benzoic acid).<br />- Không có thành phần gây dị ứng, không nhờn, không cay mắt.<br />- Không chứa cồn vì có thể làm say em bé.<br />Những điều lưu ý khi sử dụng kem chống nắng<br />- Thoa một lớp đủ dày, khi ra mồ hôi nhiều hoặc xuống nước, đi bơi, sau 2 giờ phải thoa lại.<br />- Không dùng chung một loại kem chống nắng cho cả cơ thể và da mặt.<br />- Chọn loại kem chống cả được tia cực tím (Ultra Violet) bước sóng A và B.<br />- Ngoài ra cần dùng thêm áo, găng, nón, kính (chống được cả tia UVA và UVB)<br />- Nên hạn chế ra nắng trong thời gian từ 9 giờ sáng đến 3 giờ chiều.<br />- Tia UVA chính là nguyên nhân gây ung thư da vì làm tổn thương DNA của tế bào.<br />- Nên chọn loại kem chống nắng có SPF30, nếu đi biển thì dùng loại 50 hoặc 80.<br />- Thoa kem chống nắng đúng theo hướng dẫn, không quá mỏng hoặc quá dày.</p>\n<p>3. Các nhà khoa học đã đem những phát minh mới áp dụng vào công nghệ làm đẹp. Trên thị trường đã xuất hiện một số loại mỹ phẩm có thành phần chiết xuất từ tế bào gốc. Hiện nay đang có nhiều tranh cãi giữa việc nên hay không nên sử dụng các sản phẩm chăm sóc da từ tế bào gốc? Có ý kiến đang tranh cãi là nếu lấy tế bào gốc từ tế bào của con người thì có thể mang những mầm bệnh của người vào trong sản phẩm. Điều này đúng hay sai?<br />Tế bào gốc (TBG) trong cơ thể con người làm việc như một hệ thống sửa chữa, tái tạo bằng cách phân chia thành các tế bào chuyên biệt để bổ sung cho các dạng tế bào cần được thay thế. (Có những chức năng tương ứng với các tế bào này)<br />TBG chỉ có ở một vài nơi ở người đã trưởng thành như: phôi thai, dây rốn. Công nghệ TBG tìm kiếm các nguồn TBG tối ưu như TBG phôi thai, TBG từ dây rốn, TBG ở người trưởng thành.<br />Các tế bào này sẽ được nuôi cấy, nhân rộng, được tác động một cách khoa học để có thể biệt hóa thành những dòng tế bào khác nhau. Các sản phẩm tế bào khác nhau này để chữa bệnh, chăm sóc sắc đẹp, sức khỏe, chống lão hóa. Việc sử dụng TBG sẽ không làm lây truyền bệnh. Hiện nay có công nghệ TBG từ dây rốn ở Việt Nam rất hiệu quả, hạn chế được tác dụng phụ và duy trì tác dụng lâu so với sản phẩm TBG từ phôi bò hoặc sinh tổng hợp.<br />4. Phụ nữ bước qua tuổi 30 làn da bắt đầu lão hóa, xuất hiện một số nếp nhăn ở khóe mắt và quanh miệng, biện pháp giảm vết nhăn nhanh nhất là tiêm botox, nhưng hiện nay các bác sỹ khuyên không nên tiêm botox nữa maf nên dùng các sản phẩm chống lão hóa chăm sóc hàng ngày. Một số ý kiến khác lại cho rằng việc sử dụng sản phẩm chống lão hóa thực ra không có hiệu quả như mong đợi mà phải có chế độ ăn uống, chăm sóc và bảo vệ da ngay từ lúc còn trẻ chứ không nên lạm dụng quá nhiều vào các sản phẩm chống lão hóa. Thực sự thì nên làm gì để có làn da đẹp?<br />Botox là một loại độc chất có tên là Botulinum Toxin type A do công ty Allergan của Mỹ sản xuất.<br />Độc chất này do vi khuẩn Clostridium Botilinum tiết ra, có tác dụng ngăn các kích thích từ thần kinh đến sợi cơ do đó gây giãn cơ và xóa vết nhăn.<br />Ngoài ra Botox còn được dùng trong điều trị một số bệnh lý khác như: chứng co thắt cơ, rối loạn tiết mố hôi, rối loạn trương lực, đau nửa đầu.<br />Tuy nhiên việc tiêm Botox cần được thưc hiện bởi bác sĩ có tay nghề (đào tạo bài bản, kinh nghiệm) để hạn chế những tai biến và tác dụng phụ không mong muốn như: tụ máu, ngộ độc (do tiêm quá nhiều thuốc): yếu cơ, chóng mặt, chùng mi, mất kiểm soát chức năng bàng quang, mặt không biểu lộ cảm xúc, xệ môi miệng làm chảy nước bọt.<br />Vì vậy chỉ nên tiêm Botox ở vùng xung quanh mắt và trán.<br />Lão hóa da là một quá trình tự nhiên của cơ thể, bắt đầu ngay từ những năm 30 tuổi. Do 2 yếu tố nội và ngoại sinh.<br />Chúng ta chỉ có thể can thiệp vào yếu tố ngoại sinh để làm chậm quá trình này.<br />Việc sử dụng các sản phẩm chăm sóc da hàng ngày là việc cần thiết, tuy nhiên không nên lạm dụng.<br />Với kinh nghiệm trong ngành thẩm mỹ.Việt mỹ sẵn sàng tư vấn và mang đến cho bạn thông tin bổ ích cho làm da và các trị mụ hiệu quả nhất.</p>', '', 'tri-mun-mu-cham-soc-da-sai-cach', '', 'Phụ nữ ai cũng quan tâm chăm sóc làn da của mình hàng ngày. Nhưng chăm sóc thế nào là đúng? thế nào mới hiệu quả? Có rất nhiều ý kiến trái chiều trong việc chăm sóc da khiến khá nhiều người cảm thấy hoang mang.', '', 0, 3, 0, '', '', 1, 141);

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
) ENGINE=InnoDB  DEFAULT CHARSET=utf8 AUTO_INCREMENT=143 ;

--
-- Dumping data for table `dos_module_news_cat`
--

INSERT INTO `dos_module_news_cat` (`cat_id`, `cat_parent_id`, `cat_title`, `cat_titleen`, `preview`, `previewen`, `tag`, `tagen`, `description`, `descriptionen`, `pic_full`, `cat_order`, `cat_extra1`, `cat_extra2`, `cat_enable`, `dos_usernames_username`) VALUES
(140, 0, 'Tri nám da', '', '', '', 'tri-nam-da', '', '', '', '', 1, '', '', 1, 'thammyvien'),
(141, 0, 'Trị mụn', '', '', '', 'tri-mun', '', '', '', '', 2, '', '', 1, 'thammyvien'),
(142, 0, 'Tắm trắng', '', '', '', 'tam-trang', '', '', '', '', 3, '', '', 1, 'thammyvien');

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
('day_time', 2456119),
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
('''127.0.0.1''', 1341901275);

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
) ENGINE=InnoDB  DEFAULT CHARSET=utf8 AUTO_INCREMENT=2862 ;

--
-- Dumping data for table `dos_module_products`
--

INSERT INTO `dos_module_products` (`record_id`, `title`, `titleen`, `postdate`, `pic_thumb`, `pic_full`, `pic_desc`, `preview`, `previewen`, `content`, `contenten`, `tag`, `tagen`, `description`, `descriptionen`, `hits`, `record_order`, `unit`, `hot`, `specials`, `extra_field1`, `extra_field2`, `extra_field3`, `extra_field4`, `enable`, `dos_module_item_cat_cat_id`) VALUES
(2847, 'Xông hơi bằng gỗ Bách xanh', '', '2012-06-22 06:07:04', 'xong-hoi-bang-go-bach-xanh-thumb.jpg', 'xong-hoi-bang-go-bach-xanh.jpg', '', '<p>Công việc bận rộn, áp lực gia đình nhiều lúc khiến bạn mệt mỏi; chế độ ăn uống, luyện tập không hợp lý khiến bạn béo phì. Bạn đang lo lắng không biết làm cách nào để có vẻ đẹp hoàn hảo như thủa đôi mươi. Hãy xông hơi bằng gỗ Bách xanh ở Thẩm mỹ viện Việt Mỹ, mọi ưu phiền của bạn sẽ tan biến theo làn hơi ấm ấp nồng nàn hương thơm ngất ngây.</p>', '', '<p>Công việc bận rộn, áp lực gia đình nhiều lúc khiến bạn mệt mỏi; chế độ ăn uống, luyện tập không hợp lý khiến bạn béo phì. Bạn đang lo lắng không biết làm cách nào để có vẻ đẹp hoàn hảo như thủa đôi mươi. Hãy xông hơi bằng gỗ Bách xanh ở Thẩm mỹ viện Việt Mỹ, mọi ưu phiền của bạn sẽ tan biến theo làn hơi ấm ấp nồng nàn hương thơm ngất ngây.</p>\n<p style="text-align:center;"><img src="/public/userfiles/image/thammyvien/image/San%20pham/1(2).jpg" alt="" width="500" height="750" /></p>\n<p>Có rất nhiều kiểu xông hơi, mỗi kiểu đều có tác dụng riêng nhưng đối với những khách hàng yêu quý Thẩm mỹ viện Việt Mỹ thì phương pháp xông hơi bằng gỗ Bách xanh mang lại những hiểu quả tuyệt vời hơn cả. Bách xanh (còn gọi là Tùng Hương) là một loại gỗ quý có hương thơm đặc biệt cùng công dụng đào thải mọi độc tố trong cơ thể, làm da thêm sáng bóng đẹp tự nhiên.</p>\n<p style="text-align:center;"><img src="/public/userfiles/image/thammyvien/image/San%20pham/2(2).jpg" alt="" width="500" height="378" /></p>\n<p>Với phương pháp xông hơi bằng gỗ Tùng xanh, quý khách sẽ có những phút giây nghỉ ngơi thật sự thoải mái, để tâm hồn tĩnh lặng, gạt bỏ mọi ưu lo bụi bặm của cuộc sống thường ngày. Chỉ 20 phút xông hơi và ngâm bồn bằng gỗ Tùng xanh tất cả những độc tố ẩn chứa dưới da ra ngoài theo tuyến mồ hôi, tăng cường tái tạo tế bào mới mang đến bạn làn da toàn thân sáng hồng, mịn màng.</p>\n<p style="text-align:center;"><img src="/public/userfiles/image/thammyvien/image/San%20pham/3(2).jpg" alt="" width="500" height="375" /></p>\n<p>Không những vậy, một suất xông hơi dẫn đến thân nhiệt tăng từ 1 đến 3 độ F, báo hiệu cho cơ thể bạn sản sinh ra tế bào bạch cầu và tế bào T để phòng chống vi khuẩn, vi trùng và bệnh truyền nhiễm. Kết quả là cải thiện hệ thống miễn dịch, tăng cường sức đề kháng, phòng chống cảm cúm.</p>\n<p>Vậy còn chần chừ gì mà không đến với Thẩm mỹ viện Việt Mỹ để đắm mình trong làn hơi thơm ngát, để những hương thơm đó giúp bạn xóa đi mệt mỏi, căng thẳng và cả những cân mỡ thừa đáng ghét. Chắc chắn, chỉ sau một tháng xông hơi tại đây, bạn sẽ có một thân hình tuyệt hảo, một làn da sáng đẹp để đón chào những ngày mới đầy niềm vui, hạnh phúc và thành công.</p>', '', 'xong-hoi-bang-go-bach-xanh', '', '', '', 0, 11, '', 0, 0, '', '', '', '', 1, 661),
(2848, 'Massage thư giãn', '', '2012-06-22 06:12:36', 'massage-thu-gian-thumb.JPG', 'massage-thu-gian.JPG', '', '<p style="text-align:left;">Dạo này công việc dồn dập khiến cơ thể mình rã rời, cứ về nhà là nhờ ông xã đấm bóp. Tuy nhiên, hiệu quả không được là mấy. Giải pháp cuối cùng là đến Thẩm mỹ viện Việt Mỹ thân yêu để massage thư giãn cơ thể giúp loại bỏ sự co cứng, giảm căng cơ, lấy lại năng lượng, làm dịu lại hệ thần kinh để chuẩn bị cho một ngày làm việc mới.</p>\n<p style="text-align:left;"> </p>', '', '<p>Dạo này công việc dồn dập khiến cơ thể mình rã rời, cứ về nhà là nhờ ông xã đấm bóp. Tuy nhiên, hiệu quả không được là mấy. Giải pháp cuối cùng là đến Thẩm mỹ viện Việt Mỹ thân yêu để massage thư giãn cơ thể giúp loại bỏ sự co cứng, giảm căng cơ, lấy lại năng lượng, làm dịu lại hệ thần kinh để chuẩn bị cho một ngày làm việc mới.</p>\n<p style="text-align:center;"><img src="/public/userfiles/image/thammyvien/image/San%20pham/4.JPG" alt="" width="500" height="334" /></p>\n<p>Theo gốc Hy Lạp, từ massage có nghĩa là xoa bóp, với quan niệm rằng cơ thể con người có một dòng chảy năng lượng còn gọi là "khí". Sự lưu chuyển tốt của khí giúp cơ thể duy trì được sức khỏe và sinh lực còn khi dòng khí này bị ngưng trệ là lúc cơ thể yếu đuối và nảy sinh nhiều bệnh tật. Massage chính là cách vận khí, chuyển khí để dòng chảy này lưu thông tốt nhất trong cơ thể con người, khơi thông lại nguồn năng lượng tiềm năng trong cơ thể. Chính vì những tác dụng thần bí của nó mà massage đã rất phát triển và ngày càng đa dạng về phong cách.</p>\n<p style="text-align:center;"><img src="/public/userfiles/image/thammyvien/image/San%20pham/5(1).jpg" alt="" width="500" height="334" /></p>\n<p>Đến thẩm mỹ Viện Việt Mỹ thật yên tâm, bởi đội ngũ nhân viên luôn nhiệt tình tư vấn để lựa chọn một dịch vụ massage thích hợp nhất: body thư giãn hương liệu, thư giãn gừng tươi, thư giãn đá nóng, thư giãn 4 hand, ngâm mình dưới bồn bằng gỗ Bách tùng…. Dưới đôi tay khéo léo, chuyên nghiệp của đội ngũ nhân viên, cộng với trang thiết bị hiện đại, việc sử dụng dòng mỹ phẩm hàng cao cấp cùng các thảo dược và mỹ phẩm được chiết xuất từ thiên nhiên, Việt Mỹ mang đến cho bạn một tinh thần sảng khoái, một cơ thể khỏe mạnh, một vẻ đẹp hoàn mỹ.</p>\n<p>Điều làm nên sự khác biệt của Thẩm mỹ viện Việt Mỹ là chất lượng của các dịch vụ điều trị, luôn tự tin và đảm bảo vào tay nghề cũng như tâm huyết trong lĩnh vực chăm sóc sắc đẹp cho phụ nữ của mình. Và theo mỗi bước chân, cái ồn ào mệt mỏi của thành phố như lùi lại, chỉ còn không gian êm đềm, thoải mái. Những buổi chiều tan sở hay những ngày cuối tuần rảnh rỗi được đắm mình trong hương thơm dịu nhẹ của tinh dầu, lắng nghe tiếng nhạc du dương và tan chảy cùng những động tác massage chuyên nghiệp, cả cơ thể như được hồi sinh, mọi mệt mỏi của cuộc sống dường như tan biến.</p>\n<p style="text-align:center;"><img src="/public/userfiles/image/thammyvien/image/San%20pham/7(2).jpg" alt="" width="500" height="354" /></p>\n<p>Hãy đến và cảm nhận những điều thật tuyệt ở Thẩm mỹ viện Việt Mỹ nhé! Chúc bạn có những phút giây tuyệt vời tại đây.</p>', '', 'massage-thu-gian', '', '', '', 0, 14, '', 0, 0, '', '', '', '', 1, 661),
(2849, 'Chăm sóc thân thể chuyên sâu', '', '2012-06-22 06:16:33', 'cham-soc-than-the-chuyen-sau-thumb.jpg', 'cham-soc-than-the-chuyen-sau.jpg', '', '<p>Mỗi đường cong trên cơ thể đều là nét đẹp quyến rũ của phái yếu khiến ai cũng mê mẩn ngắm nhìn. Một thân hình khỏe mạnh, một làn da trắng sáng, hay một khuôn mặt đẹp không tì vết sẽ mang lại những thuận lợi vô cùng cho người phụ nữ trong công việc và cuộc sống. Nhưng thời gian vẫn như thoi đưa đã ít nhiều tàn phai sắc đẹp của các chị em. Thấu hiểu nhu cầu muốn đẹp rạng ngời, trẻ mãi của một nửa dân số thế giới, Thẩm mỹ viện Việt Mỹ mang đến cho khách hàng một chương trình chăm sóc thân thể chuyên sâu với nhiều dịch vụ uy tín chất lượng để bạn lựa chọn.</p>', '', '<p>Mỗi đường cong trên cơ thể đều là nét đẹp quyến rũ của phái yếu khiến ai cũng mê mẩn ngắm nhìn. Một thân hình khỏe mạnh, một làn da trắng sáng, hay một khuôn mặt đẹp không tì vết sẽ mang lại những thuận lợi vô cùng cho người phụ nữ trong công việc và cuộc sống. Nhưng thời gian vẫn như thoi đưa đã ít nhiều tàn phai sắc đẹp của các chị em. Thấu hiểu nhu cầu muốn đẹp rạng ngời, trẻ mãi của một nửa dân số thế giới, Thẩm mỹ viện Việt Mỹ mang đến cho khách hàng một chương trình chăm sóc thân thể chuyên sâu với nhiều dịch vụ uy tín chất lượng để bạn lựa chọn.</p>\n<p style="text-align:center;"><img src="/public/userfiles/image/thammyvien/image/San%20pham/08____.jpg" alt="" width="500" height="316" /></p>\n<p>Là thương hiệu chăm sóc sắc đẹp nổi tiếng tại Việt Nam, Thẩm mỹ viện Việt Mỹ luôn đi đầu trong việc cập nhật những phương pháp chăm sóc thân thể tiên tiến nhất trên thế giới để phục vụ như cầu làm đẹp của các chị em. Đa dạng với các dịch vụ chăm sóc thân thể, uy tín với các liệu pháp làm đẹp, chắc chắn Thẩm mỹ viện Việt Mỹ sẽ luôn làm hài lòng mọi vị khách dù khó tính nhất.</p>\n<p style="text-align:center;"><img src="/public/userfiles/image/thammyvien/image/San%20pham/09_.jpg" alt="" width="500" height="422" /></p>\n<p>Bạn muốn có một làn da đẹp trắng sáng dù thời tiết có thay đổi thế nào, hãy đến với chương trình chăm sóc da chuyên sâu của Việt Mỹ để được tư vấn để lựa chọn những dịch vụ chăm sóc da tốt nhất như: Thắp sáng làn da với ngọc trai trân châu; Trẻ hoá toàn thân với parafin; Tẩy da chết toàn thân bằng muối khoáng; Chăm sóc toàn thân bằng bùn biển chết.</p>\n<p style="text-align:center;"><img src="/public/userfiles/image/thammyvien/image/San%20pham/10(2).jpg" alt="" width="500" height="500" /></p>\n<p>Một khuôn mặt đẹp, trắng xinh không tì vết luôn là ước ao của mọi người đẹp, nhưng lựa chọn được một dịch vụ chăm sóc da mặt phù hợp thì không phải ai cũng làm được. Với đội ngũ chuyên viên giàu kinh nghiệm, nhiệt tình cùng các dịch vụ như: Đắp mặt nạ vàng 24k; Chương trình trị liệu sinh học Dna vital; Chăm sóc da bằng mặt nạ trứng cá hồi; Điều trị vết thâm do mụn để lại; Đặc trị làm trắng da; Đặc trị cho da nhạy cảm; Chăm sóc da khô và mất nước;Chăm sóc da khô và lão hoá sẽ mang lại cho bạn những phút giây thật thoải mái tại Việt Mỹ.</p>\n<p style="text-align:center;"><img src="/public/userfiles/image/thammyvien/image/San%20pham/11(2).jpg" alt="" width="500" height="332" /></p>\n<p>Có một thân hình đẹp với ba đường cong tuyệt mỹ là điều tất cả phái đẹp mong mỏi, nhưng do những do một số nguyên nhân như công việc, chế độ ăn uống, tập luyện không hợp lý khiến chị em mất đi thân hình thon gọn. Phải làm sao đây? Hãy đến Thẩm mỹ viện Việt Mỹ để chúng tôi hồi sinh thân hình đẹp tựa tuổi 20 của bạn với dịch vụ hút mỡ bụng tạo thành bụng mới; Nâng ngực; Thon gọn toàn thân; Công nghệ điều trị rạn da sau sinh…, chắc chắn sau khi chăm sóc toàn thân chuyên sâu tại Thẩm mỹ Viện Việt Mỹ bạn sẽ có một thân hình hoàn hảo, một sức khỏe dồi dào, một tinh thần sáng khoái để vui chơi, học tập và làm việc.</p>', '', 'cham-soc-than-the-chuyen-sau', '', '', '', 0, 9, '', 0, 0, '', '', '', '', 1, 660),
(2850, 'Tắm trắng hiệu quả ngay lần đầu tiên', '', '2012-06-22 06:20:46', 'tam-trang-hieu-qua-ngay-lan-dau-tien-thumb.JPG', 'tam-trang-hieu-qua-ngay-lan-dau-tien.JPG', '', '<p style="text-align:left;">Sở hữu một làn da trắng mịn, thuần khiết và hoàn toàn khỏe mạnh là điều tất cả các bạn nữ đều ao ước. Vậy làm thế nào để biến niềm mơ ước đó thành sự thật? Thẩm mỹ viện Việt Mỹ đã tìm ra bí quyết làm đẹp bằng dịch vụ tắm trắng hiệu quả ngay lần đầu tiên. Hãy đến và kiểm chứng ngay.</p>', '', '<p>Sở hữu một làn da trắng mịn, thuần khiết và hoàn toàn khỏe mạnh là điều tất cả các bạn nữ đều ao ước. Vậy làm thế nào để biến niềm mơ ước đó thành sự thật? Thẩm mỹ viện Việt Mỹ đã tìm ra bí quyết làm đẹp bằng dịch vụ tắm trắng hiệu quả ngay lần đầu tiên. Hãy đến và kiểm chứng ngay.</p>\n<p style="text-align:center;"><img src="/public/userfiles/image/thammyvien/image/San%20pham/12.JPG" alt="" width="500" height="749" /></p>\n<p> Hầu hết các thẩm mỹ viên, spa đều có dịch vụ tắm trắng và mỗi trung tâm đều có những bí quyết, phương pháp riêng để đem lại sự thoải mái cho khách hàng. Tuy nhiên, không phải trung tâm thẩm mỹ nào cũng tìm ra được bí quyết tắm trắng làm hài lòng mỹ mãn mọi khách hàng. Chỉ có Thẩm mỹ viện Việt Mỹ với sự am hiểu về thẩm mỹ, y học và sự tìm tòi đã khám phá một phương pháp tắm trắng độc nhất vô nhị, hiệu quả ngay lần đầu tiên, giữ được làn da trắng mịn lâu dài mà không gây tác dụng phụ.</p>\n<p style="text-align:center;"><img src="/public/userfiles/image/thammyvien/image/San%20pham/13(2).jpg" alt="" width="500" height="204" /></p>\n<p>Đến với Thẩm mỹ viện Việt Mỹ, bạn sẽ được tắm trắng bằng thảo dược phương Đông kết hợp với các mỹ phẩm cao cấp của Mỹ được các ngôi sao điện ảnh Hollywood yêu thích, chắc chắn làn da bạn sẽ trắng hồng rạng rỡ như nắng xuân, đẹp không tì vết ngay lần tắm đầu tiên. Sử dụng các dưỡng chất thiên nhiên, khi tắm thấm sẽ thâm sâu vào dưới da, nuôi dưỡng và hỗ trợ các chức năng của da giúp da mịn màng và làm mờ đi các đốm nâu, vết thâm nán trên da.</p>\n<p style="text-align:center;"><img src="/public/userfiles/image/thammyvien/image/San%20pham/14(2).jpg" alt="" width="500" height="369" /></p>\n<p>Chỉ sau 120 phút tắm trắng tại Thẩm mỹ viện Việt Mỹ, bạn sẽ trở thành nàng bạch tuyết trẻ trung, xinh đẹp. Đó là nhờ bộ sản phẩm trắng da chỉ có ở Việt Mỹ. Bộ sản phẩm với các thành phần như: Hydrolyzed silk protein có tác dụng chống tỉnh điện và cung cấp độ ẩm; Green algae chứa hàm lượng DNA và RNA phong phú vói hàm lượng lớn Vitamin và axit amin, giữ ẩm cao, làm trắng sáng da; Lô hội giữ ẩm kháng dị ứng, có hiệu quả xoa dịu làn da bị hư tổn, bao gồm chống sự tăng trưởng của vi khuẩn, ngăn ngừa viêm nhiễm, giúp mau lành vết thương; Ficus Religiosa có tác dụng làm thư giản, thường được sử dụng trong việc giúp ngủ ngon, giảm sự lo lắng, có công hiệu chống viêm nhẹ, và thích hợp sử dụng đối với làn da khô; Birch giúp kháng khuẩn, cân bằng điều tiết dầu.</p>\n<p style="text-align:center;"><img src="/public/userfiles/image/thammyvien/image/San%20pham/15(2).jpg" alt="" width="500" height="375" /></p>\n<p>120 phút để có làn da mịn màng, trắng sáng nhiều người ngưỡng mộ là điều Thẩm mỹ viện Việt Mỹ chúng tôi cam kết. Hãy đến và trở thành người bạn thân thiết của Việt Mỹ, chắc chắn bạn sẽ hài lòng mỹ mãn.</p>', '', 'tam-trang-hieu-qua-ngay-lan-dau-tien', '', '', '', 0, 6, '', 0, 0, '', '', '', '', 1, 660),
(2851, 'Giảm béo bằng công nghệ ánh sáng', '', '2012-06-22 06:30:39', 'giam-beo-bang-cong-nghe-anh-sang-thumb.jpg', 'giam-beo-bang-cong-nghe-anh-sang.jpg', '', '<p style="text-align:left;">Trong thời đại công nghiệp phát triển người phụ nữ rất bận rộn cho cuộc sống, không có thời gian lo cho chính bản thân của mình nữa, việc chăm lo gia đình, công việc cơ quan, stress,... .Hầu hết những phụ nữ có sau khi sinh lại càng khó khăn trong việc giảm cân theo ý muốn.Cũng do áp lực công việc, cuộc sống ngày càng nhiều, thời gian luyện tập hiếm hoi, làm cho nhiều chị em thân hình không được thon thả.</p>', '', '<p>Trong thời đại công nghiệp phát triển người phụ nữ rất bận rộn cho cuộc sống, không có thời gian lo cho chính bản thân của mình nữa, việc chăm lo gia đình, công việc cơ quan, stress,... .Hầu hết những phụ nữ có sau khi sinh lại càng khó khăn trong việc giảm cân theo ý muốn.Cũng do áp lực công việc, cuộc sống ngày càng nhiều, thời gian luyện tập hiếm hoi, làm cho nhiều chị em thân hình không được thon thả.</p>\n<p style="text-align:center;"><img src="/public/userfiles/image/thammyvien/image/San%20pham/38(1).jpg" alt="" width="500" height="375" /></p>\n<p>Đã có rất nhiều phương pháp giảm béo được đưa ra như thuốc giảm béo, sữa giảm béo, trà giảm béo… nhưng không đạt được được hiệu quả giảm béo như bạn mong muốn.Cũng có rất nhiều người lại chọn biện pháp giảm cân massage, nhưng với phương pháp này bạn sẽ mất rất nhiều thời gian và công sức. Tìm hiểu nguyên nhân của vấn đề, Thẩm mỹ viện Việt Mỹ đã đưa ra liệu pháp giảm béo hiệu quả mà không gây ảnh hưởng đến vấn đề về sức khỏe. Đó là giảm béo bằng công nghệ ánh sáng không gây tác dụng phụ</p>\n<p style="text-align:center;"><img src="/public/userfiles/image/thammyvien/image/San%20pham/39(1).jpg" alt="" width="500" height="729" /></p>\n<p>Đến với Việt Mỹ bạn sẽ được giảm béo bằng phương pháp ánh sáng. Ánh sáng màu sẽ đẩy nhanh tốc độ tự đốt của tế bào mô mỡ và quá trình thay da, ngăn chặn sự tái tạo mỡ, tăng tính đàn hồi, căng da, tải độc, có hiệu quả giảm stress. Đặc biệt, tại Việt Mỹ bạn có thể tiến hành giảm béo cấp tốc làm cho bụng nhỏ, eo thon bằng công nghệ mới PF kết hợp với phi thuyền ánh sáng.</p>\n<p>Dịch vụ tiêu mỡ Phi thuyền giúp tiêu 2 lớp mỡ trên một cách an toàn. Đầu tiên, khách hàng được nằm thư giãn trong phi thuyền khoảng 15-20 phút, dưới 4 loại ánh sáng khác nhau. Sau đó, bạn sẽ được tắm rồi massage bằng 4 loại tinh dầu. Tiếp theo, là điều trị tiêu độc bằng khí nén bằng cách đi một loại ủng hơi. Sau khi được massage sâu bằng thiết bị chuyên dụng, họ sẽ được quấn trong chăn có tia hồng ngoại để đốt mỡ thừa. Tác động tổng hợp của ánh sáng, khí nén và các loại tinh dầu sẽ loại bỏ độc tố tích tụ dưới da, phá vỡ màng chắn toxin, giúp thu gọn hơn những phần béo bệu như hông, đùi, bắp tay. Da những vùng này nhờ đó cũng trở nên mịn màng, tươi tắn hơn.</p>\n<p style="text-align:center;"><img src="/public/userfiles/image/thammyvien/image/San%20pham/40(1).jpg" alt="" width="500" height="317" /></p>\n<p>Số đo của bạn sẽ giảm đi ngay từ lần trị liệu đầu tiên và không bị hồi lại ở những lần điều trị tiếp theo. Các cục mỡ cellulite bướng bỉnh sẽ bị loại bỏ và bạn có thể giảm tối đa 8-15 cm vùng bụng sau 10-20 lần trị liệu (2 ngày một lần), tùy thuộc vào lượng mỡ thừa. Ngoài việc tiêu mỡ, thiết bị phi thuyền và các tinh dầu còn có tác dụng giảm stress, giúp ngủ ngon, hồi phục hoạt động của hệ tuần hoàn và tái tạo tế bào da.</p>', '', 'giam-beo-bang-cong-nghe-anh-sang', '', '', '', 0, 7, '', 0, 0, '', '', '', '', 1, 659),
(2852, 'Trị Nám bằng dòng mỹ phẩm cao cấp Dermalogica và Ericson Laboratoire', '', '2012-06-22 06:38:23', 'tri-nam-bang-dong-my-pham-cao-cap-dermalogica-va-ericson-laboratoire-thumb.jpg', 'tri-nam-bang-dong-my-pham-cao-cap-dermalogica-va-ericson-laboratoire.jpg', '', '<p>Bạn sẽ tự tin hơn với làn da láng sạch nhẹ tênh của mình với gói điều trị da nám bằng mỹ phẩm cao cấp Ericson Laboratoire hoặc Dermalogica của Thẩm mỹ Việt Mỹ.<br />Các chuyên gia thẩm mỹ trên toàn thế giới đã nghiên cứu và kết luận rằng: “Nám chỉ có thể được loại bỏ hiệu quả khi sử dụng sản phẩm đặc trị để loại bỏ nám từ bên ngoài và các công nghệ thẩm mỹ, y tế hiện đại để ngăn ngừa nám từ bên trong.”</p>', '', '<p>Bạn sẽ tự tin hơn với làn da láng sạch nhẹ tênh của mình với gói điều trị da nám bằng mỹ phẩm cao cấp Ericson Laboratoire hoặc Dermalogica của Thẩm mỹ Việt Mỹ.<br />Các chuyên gia thẩm mỹ trên toàn thế giới đã nghiên cứu và kết luận rằng: “Nám chỉ có thể được loại bỏ hiệu quả khi sử dụng sản phẩm đặc trị để loại bỏ nám từ bên ngoài và các công nghệ thẩm mỹ, y tế hiện đại để ngăn ngừa nám từ bên trong.”</p>\n<p style="text-align:center;"><img src="/public/userfiles/image/thammyvien/image/San%20pham/19.jpg" alt="" width="500" height="500" /></p>\n<p>- Loại bỏ nám từ bên ngoài: Các thành phần chuyên biệt có trong các sản phẩm đặc trị nám giúp loại bỏ các tế bào thâm nám, xỉn màu trên bề mặt, tái tạo và làm sáng dần các tế bào thâm nám ở sâu dưới da. Khác với các sản phẩm làm trắng và dưỡng da thông thường, sản phẩm đặc trị nám còn có khả năng ngăn chặn sự hình thành tiền hắc sắc tố làm nám không còn cơ hội trở lại tấn công làn da của bạn. Bạn có thể tham khảo bộ sản phẩm đặc trị nám Chroma White (Sản Phẩm của Dermalogica, Hoa Kỳ).</p>\n<p style="text-align:center;"><img src="/public/userfiles/image/thammyvien/image/San%20pham/20(1).jpg" alt="" width="500" height="354" /></p>\n<p>- Loại bỏ nám từ bên trong: Bên cạnh đó, chị em cũng cần lưu ý cải thiện sức khỏe để trị nám tận gốc và ngăn ngừa nám quay trở lại. Hiện nay, một số trung tâm thẩm mỹ và phục hồi sức khỏe đã ứng dụng các công nghệ thẩm mỹ, y tế hiện đại vào đặc trị nám như máy IPL (E-light) và trị liệu tinh dầu, giúp đào thải độc tố, phục hồi cơ thể, giảm stress, cân bằng tâm lý, cân bằng hormone…</p>\n<p>Các bước trị nám ở Thẩm mỹ viện Việt Mỹ</p>\n<p>-Bước 1: Rửa sạch da<br />-Bước 2: Tẩy da chết giúp lấy đi những tế bào sừng, cằn cỗi và giúp sản phẩm thấm sâu, nuôi dưỡng da tốt.<br />-Bước 3: Dùng máy Spatular hoặc điện di ion (+ - ) để giúp đẩy serum đặc trị nám vào tế bào đáy giúp tan sắc tố melanine và ngăn chặn sự tổng hợp sắc tố.<br />-Bước 4: Chiếu máy ánh sáng sinh học giúp tổng hợp sợi collagen tăng sinh tế bào mới làm da trẻ đẹp hơn.<br />-Bước 5: Đắp mặt nạ Vitamin hoặc tảo…giúp thêm dưỡng chất nuôi da.<br />Liệu trình 6 lần. Mỗi tuần 1 lần.</p>\n<p>* Ngoài ra, tại nhà bạn cần có 1 bộ kem dưỡng thích hợp:</p>\n<p>-Sữa rửa mặt ngày 2 lần.<br />-Toner se khít lỗ chân lông và thêm ẩm.<br />-Kem dưỡng ngày đêm.<br />-Kem chống nắng SPF 20-30, thoa trước khi ra nắng 10-30 phút.<br />Cần có 1 chế độ sinh hoạt cân bằng giữa làm việc và nghỉ ngơi hợp lý.</p>', '', 'tri-nam-bang-dong-my-pham-cao-cap-dermalogica-va-ericson-laboratoire', '', '', '', 0, 1, '', 0, 0, '', '', '', '', 1, 658),
(2853, 'Đặc trị vết thâm do mụn để lại bằng mỹ phẩm cao cấp', '', '2012-06-22 06:41:34', 'ac-tri-vet-tham-do-mun-de-lai-bang-my-pham-cao-cap-thumb.jpg', 'ac-tri-vet-tham-do-mun-de-lai-bang-my-pham-cao-cap.jpg', '', '<p>Mặt tôi có nhiều vết thâm do cách đây một năm mặt bị mụn. Dù đã sử dụng nhiều loại kem dưỡng trắng da, đắp cam tươi và cà rốt nhưng chỉ đỡ được một chút. Tôi có tham khảo các phương pháp làm mờ vết thâm quảng cáo trên các báo nhưng không biết phương pháp nào an toàn và hiệu quả. (Phạm Thị Hồng Thúy).</p>', '', '<p>Mặt tôi có nhiều vết thâm do cách đây một năm mặt bị mụn. Dù đã sử dụng nhiều loại kem dưỡng trắng da, đắp cam tươi và cà rốt nhưng chỉ đỡ được một chút. Tôi có tham khảo các phương pháp làm mờ vết thâm quảng cáo trên các báo nhưng không biết phương pháp nào an toàn và hiệu quả. (Phạm Thị Hồng Thúy).</p>\n<p style="text-align:center;"><img src="/public/userfiles/image/thammyvien/image/San%20pham/12__.jpg" alt="" width="500" height="334" /></p>\n<p>Thông thường, khi bị mụn, chúng ta thường hay dùng tay bấm nặn rất mạnh lên nốt mụn. Việc làm này làm tổn thương sâu đến vùng da tại nơi bị mụn, làm cho da bị thâm tím. Do kết cấu tế bào ở vùng này bị huỷ hoại và tổn thương nặng nề, việc nặn mụn quá đà còn gây ra hiện tượng sẹo lõm trên mặt. Vậy là khi không còn nỗi lo lắng về các nốt mụn nữa thì bạn lại phải đối diện với một vấn đề mới, đó là các vết thâm và sẹo lõm.</p>\n<p style="text-align:center;"><img src="/public/userfiles/image/thammyvien/image/San%20pham/13__.jpg" alt="" width="500" height="393" /></p>\n<p>Dermalogica là bộ sản phẩm đa năng có thể giúp hồi sinh và khôi phục chức năng của các sợi collagen, làm cho những vết thâm mờ đi một cách nhanh chóng và các sẹo lõm cũng được cải thiện đáng kể.</p>\n<p>Làn da sau bị mụn thường dầy bì, sần sùi do bị bao bọc bởi một lớp dày tế bào đã bị sừng hoá, thường tạo thành lớp vảy cứng, đặc biệt là tại các nốt thâm. Scaling Fluid Dermalogica với thành phần chiết xuất từ dược thảo, có tác dụng loại bỏ các tế bào bị sừng hoá trên bề mặt da, làm cho da sáng mịn, giúp da hồi phục nhanh và giảm thiểu hiện tượng vết thâm, sẹo lõm. Ngoài ra, các loại măt nạ hỗ trợ giúp tái tạo làn da thâm và xỉn màu, mang lại một vẻ đẹp tươi mới cho làn da.</p>\n<p>Ưu điểm của phương pháp đều trị này này là: Không tốn nhiều thời gian (chỉ mất từ 15 đến 17 ngày), không đau, không bị đỏ, có thể làm giảm 90-98% các vết thâm và sẹo lõm trong các trường hợp bình thường. Nếu ở trường hợp vết thâm do bị tổn thương quá sâu và các sẹo lõm cũng như vậy thì giảm được 60-70%. Phù hợp cho cả việc trẻ hoá da và làm mờ các nếp nhăn, thu hẹp lỗ chân lông, mờ các vết sẹo lõm mà không gây tổn thương cho da. 98% khách hàng hoàn toàn hài lòng với kết quả sau điều trị.</p>', '', 'dac-tri-vet-tham-do-mun-de-lai-bang-my-pham-cao-cap', '', '', '', 0, 3, '', 0, 0, '', '', '', '', 1, 658),
(2854, 'Thêu và điêu khắc lông mày', '', '2012-06-22 06:44:45', 'theu-va-dieu-khac-long-may-thumb.jpg', 'theu-va-dieu-khac-long-may.png', '', '<p style="text-align:left;">Nói đến Thẩm mỹ viện Việt Mỹ, khách hàng đều biết đến kỹ thuật phun thêu và xóa chỉnh sửa mắt môi, chân mày chuyên nghiệp. Với hơn 10 năm kinh nghiệm và đội ngũ bác sỹ và kỹ thuật viên phun thêu tay nghề cao, luôn được cập nhật những kỹ thuât phun thêu mới nhất của các chuyên gia đến từ Hongkong, Singapore, Trung Quốc…..</p>', '', '<p>Nói đến Thẩm mỹ viện Việt Mỹ, khách hàng đều biết đến kỹ thuật phun thêu và xóa chỉnh sửa mắt môi, chân mày chuyên nghiệp. Với hơn 10 năm kinh nghiệm và đội ngũ bác sỹ và kỹ thuật viên phun thêu tay nghề cao, luôn được cập nhật những kỹ thuât phun thêu mới nhất của các chuyên gia đến từ Hongkong, Singapore, Trung Quốc…..</p>\n<p style="text-align:center;"><img src="/public/userfiles/image/thammyvien/image/San%20pham/1.png" alt="" width="500" height="283" /></p>\n<p>Quý khách hàng sẽ thật sự hài lòng với khi đến với chúng tôi. Trước hết quý khách sẽ được tư vấn thật kỹ các kiểu dáng chân mày, màu môi phù hợp với từng khuôn mặt và nghề nghiệp của mình. Với kỹ thuât mới phun thêu thật nhẹ nhàng không sưng không đau chỉ với 30 phút quý khách sẽ có một đôi lông mày tự nhiên, đôi môi mọng gợi cảm. Mọi dụng cụ sử dụng đều riêng biệt cho từng quý khách, phòng ốc hoàn toàn vô trùng đảm bảo vệ sinh an toàn.</p>\n<p>Đa dạng với các kiểu phun thêu và điêu khắc, đến với Thẩm mỹ viện Việt Mỹ khách hàng sẽ thỏa thích lựa chọn những kiểu phun thêu phù hợp nhất với khuôn mặt của mình. Thẩm mỹ viện Việt Mỹ có những kiểu phun thêu và điêu khắc như sau:</p>\n<p><em>Phun thêu</em></p>\n<p><em>Phun Lông Mày</em></p>\n<p>Lông mày có tác dụng điều hòa quan trọng ngũ quan và sắc mặt, lông mày là khung giá của mắt. hai cái đó quan hệ tốt về khung vẽ và khuôn mặt</p>\n<p><em>Phun Lụa</em><br />Kỹ thuật mới tạo một lớp mày mỏng trên da rất tự nhiên, phù hợp với màu da và màu tóc của từng người.</p>\n<p><em>Thêu lông mày</em><br />Kỹ thuật thêu lông mày là tạo ra từng sợi lông mày xen kẽ với lông mày thật nên trông nhẹ nhàng hơn phun và xăm. Thời gian thực hiện từ 40 – 60 phút. Màu mực dùng để thêu dựa trên màu tóc, màu da và khuôn mặt. chuyên viên sẽ dùng một loại kim thêu đặc biệt vẽ lên từng sợi như lông mày that chứ không tạo nên mảng màu như phun. Do tính tỉ mỹ nên kỹ thuật này được gọi là thêu, kim thêu chỉ đi vào da 0.2mm nên không gây đau, không sưng, không chảy máu. Thời gian thêu tồn tại 2 – 3 năm.</p>\n<p>Kỹ thuật thêu lông mày là tạo ra từng sợi lông mày xen kẽ với lông mày thật nên trông nhẹ nhàng hơn phun và xăm. Thời gian thực hiện từ 40 – 60 phút. Màu mực dùng để thêu dựa trên màu tóc, màu da và khuôn mặt. chuyên viên sẽ dùng một loại kim thêu đặc biệt vẽ lên từng sợi như lông mày that chứ không tạo nên mảng màu như phun. Do tính tỉ mỹ nên kỹ thuật này được gọi là thêu, kim thêu chỉ đi vào da 0.2mm nên không gây đau, không sưng, không chảy máu. Thời gian thêu tồn tại 2 – 3 năm.</p>\n<p><em>Thêu rơi lông mi</em></p>\n<p>Kỹ thuật này làm cho hàng mi rậm lên, điều chỉnh được mắt xếch, sụp mí, mắt nhỏ.<br />Điêu khắc<br />Điêu Khắc 3D - Khắc Rơi lông mày<br />Kỹ thuật này phù hợp với những lông mày thưa, mỏng, lợt, mất lông ở đuôi mày. Kỹ thuật này dùng tay để tạo thành những sợi lông mày mềm mại, có gốc có ngọn, tạo nên những lông mày tự nhiên không có khung bao quanh.</p>', '', 'theu-va-dieu-khac-long-may', '', '', '', 0, 10, '', 0, 0, '', '', '', '', 1, 654),
(2855, 'Phun viền mí mắt', '', '2012-06-22 06:46:39', 'phun-vien-mi-mat-thumb.jpg', 'phun-vien-mi-mat.jpeg', '', '<p>Phun (xăm) mí mắt là một hình thức trang điểm vĩnh viễn mí mắt giống như vẽ viền mi mắt bằng chỉ kẻ mắt.<br />Trong hình thức phun viền mí mắt, đương viền được hạn chế là rất nhỏ và mỏng nên đòi hòi các chuyên gia thẩm mỹ phải thật khéo léo, tỉ mỉ trong từng đường di. Mặt khác mí mắt là bộ phần tiếp xúc với mắt nên đòi hỏi mực xăm phải là loại tốt đảm bảo không gây hại đến mắt.</p>', '', '<p>Phun (xăm) mí mắt là một hình thức trang điểm vĩnh viễn mí mắt giống như vẽ viền mi mắt bằng chỉ kẻ mắt.<br />Trong hình thức phun viền mí mắt, đương viền được hạn chế là rất nhỏ và mỏng nên đòi hòi các chuyên gia thẩm mỹ phải thật khéo léo, tỉ mỉ trong từng đường di. Mặt khác mí mắt là bộ phần tiếp xúc với mắt nên đòi hỏi mực xăm phải là loại tốt đảm bảo không gây hại đến mắt.</p>\n<p style="text-align:center;"><img src="/public/userfiles/image/thammyvien/image/San%20pham/6.jpeg" alt="" width="500" height="378" /></p>\n<p>Các bước xăm mí mắt:<br />Khi đến với thẩm mỹ viện Linh Nhung là bạn đã tìm cho mình một địa chỉ tin cậy, với nhiều chuyên viên thẩm mỹ có uy tín đã được đào tạo bài bản, nhiều năm kinh nghiệm trong phun xăm thẩm mỹ đặc biệt là phun (xăm) mí mắt. Các chuyên gia thẩm mỹ của Linh Nhung sẽ tiến hành phun xăm mí cho bạn qua các bước:<br />- Rửa mắt với nước muối<br />- Làm sạch vùng xăm bằng mỡ kháng sinh<br />- Gây tê nhẹ lên viền mi<br />- Phun mực xăm lên viền mi</p>\n<p style="text-align:center;"><img src="/public/userfiles/image/thammyvien/image/San%20pham/7(1).jpg" alt="" width="500" height="339" /></p>\n<p>Thời gian xăm mí mắt thường lâu hơn thời gian xăm mày, xăm môi nên đòi hỏi kỷ thuật viên phải thật nhẹ nhàng, tỉ mỉ hơn. Thông thường thời gian phun (xăm) cả mí trên, mí dưới là 45 phút.Sau khi xăm mí mắt xong bạn có thể có cảm gíac hơi căng tức do thuốc tê. Một số người gặp khó khăn trong vấn đề tầm nhìn của mắt 1 vài ngày sau khi phun(xăm) mí mắt.<br />Chăm sóc sau xăm mí mắt:<br />- Rửa mặt tránh nước lên vùng xăm trong 1 tuần đầu.<br />- Tránh dụi mắt trong mấy ngày đầu.<br />Kết quả sau xăm mí:<br />- Bạn sẽ có một viền mi như ý mà không mất thời gian trang điểm<br />- Mắt trông to, sắc sảo hơn hẳn</p>', '', 'phun-vien-mi-mat', '', '', '', 0, 13, '', 0, 0, '', '', '', '', 1, 654),
(2856, 'Laser điều trị nám và tàn nhang', '', '2012-06-22 06:50:51', 'laser-dieu-tri-nam-va-tan-nhang-thumb.jpg', 'laser-dieu-tri-nam-va-tan-nhang.jpg', '', '<p>Là phái đẹp, ai cũng muốn sở hữu một khuôn mặt đẹp không tì vết để tự tin dạo phố và giao tiếp với mọi người. Tuy nhiên do nhiều nguyên nhân khác nhau: ánh nắng, thay đổi nội tiết, mang thai và di truyền, lạm dụng mỹ phẩm tẩy trắng, chăm sóc da không đúng cách… khiến bạn bị tàn nhang và nám da. Hãy đến Thẩm mỹ viện Việt Mỹ, mọi vết nám và tàn nhang sẽ hoàn toàn biến mất, thay vào đó là một khuôn mặt mịn màng, sáng ngời không tì vết.</p>', '', '<p>Là phái đẹp, ai cũng muốn sở hữu một khuôn mặt đẹp không tì vết để tự tin dạo phố và giao tiếp với mọi người. Tuy nhiên do nhiều nguyên nhân khác nhau: ánh nắng, thay đổi nội tiết, mang thai và di truyền, lạm dụng mỹ phẩm tẩy trắng, chăm sóc da không đúng cách… khiến bạn bị tàn nhang và nám da. Hãy đến Thẩm mỹ viện Việt Mỹ, mọi vết nám và tàn nhang sẽ hoàn toàn biến mất, thay vào đó là một khuôn mặt mịn màng, sáng ngời không tì vết.</p>\n<p style="text-align:center;"><img src="/public/userfiles/image/thammyvien/image/San%20pham/06.jpg" alt="" width="500" height="711" /></p>\n<p>Đến đây, khách hàng sẽ được các bác sĩ uy tín của Thẩm mỹ viện Việt Mỹ tư vấn nhiệt tình, cặn kẽ nguyên nhân gây bệnh nám má (melasma) và tàn nhang (freckles). Theo đó, đây là một loại bệnh do da tăng sắc tố, phổ biến ở phụ nữ (90%), đặc biệt là phụ nữ thời kỳ mang thai. Tổn thương sắc tố thường là các vùng nhỏ, không đều, màu nâu hoặc đen nằm đối xứng ở vùng trán, má, thái dương, đôi khi ở cổ. Đặc biệt, khi tiếp xúc ánh sáng mạnh và lâu, nám càng đậm lên.</p>\n<p style="text-align:center;"><img src="/public/userfiles/image/thammyvien/image/San%20pham/07.jpg" alt="" width="500" height="333" /></p>\n<p>Thấu hiểu tâm trạng ngại ngùng và lo lắng của chị em khi bị nám và tàn nhang, Thẩm mỹ viện Việt Mỹ đã tìm tòi và áp dụng thành công phương pháp trị nám và tàn nhang bằng công nghệ Laser YAG Q-Switched kết hợp trị liệu và phục hồi da bằng dinh dưỡng gây kích thích tái tạo lớp màng đáy để giúp bạn có một khuôn mặt tươi trẻ, mịn màng.</p>\n<p style="text-align:center;"><img src="/public/userfiles/image/thammyvien/image/San%20pham/08.jpg" alt="" width="500" height="333" /></p>\n<p>Là phương pháp tiên tiến nhất hiện nay trên thế giới, Laser YAG Q-Switched với 2 bước sóng 532 và 1064nm giúp điều trị nám và tàn nhang hiệu quả nhất. Đến Thẩm mỹ viện Việt Mỹ, các bác sĩ sẽ lựa chọn tia laser có bước sóng phù hợp, chiếu lên các vùng da có hắc tố melanin (nám, bớt). Tia laser đi xuyên qua da, và chỉ tác động vào melanin trong một khoảng thời gian rất ngắn (0.1 giây). Melanin hấp thu năng lượng laser sẽ phân hủy, làm nhạt đi màu của nám, bớt. Các chất bị phân hủy sẽ được loại bỏ ra khỏi cơ thể. Sau một số lần chiếu laser, các vùng nám, bớt sắc tố dưới da sẽ được điều trị hiệu quả, không gây hại cho da.</p>\n<p style="text-align:center;"><img src="/public/userfiles/image/thammyvien/image/San%20pham/09_(1).jpg" alt="" width="500" height="721" /></p>\n<p>Sau khi kết thúc quá trình điều trị nám bằng ánh sáng, các bác sĩ chuyên môn cao của Thẩm mỹ viện Việt Mỹ sẽ kết hợp thêm trị liệu và phục hồi da bằng dinh dưỡng. Việc này sẽ giúp nhanh chóng tái tạo làn da mới mịn màng và trắng sáng. Đạt được kết quả tốt nhất mà các phương pháp đơn thuần khác không thể điều trị được.</p>\n<p>Đặc biệt sau khi điều trị nám và tàn nhang tại Thẩm mỹ viện Việt Anh sau 3 đến 7 lần nám da sẽ biến mất 80%, tàn nhang từ 1 đến 2 lần giảm 90%. Chúng tôi xin cam đoan, trong vòng 7 ngày khách hàng sẽ thấy sự thay đổi vô cùng hoàn hảo; một khuôn mặt trắng sáng, không tì vết dần hiện ra. Không những vậy hiệu quả này sẽ còn giữ được lâu dài hàng chục năm không tái phát.</p>', '', 'laser-dieu-tri-nam-va-tan-nhang', '', '', '', 0, 8, '', 0, 0, '', '', '', '', 1, 657),
(2857, 'Laser triệt lông vĩnh viễn', '', '2012-06-22 07:06:07', 'laser-triet-long-vinh-vien-thumb.jpg', 'laser-triet-long-vinh-vien.jpg', '', '<p style="text-align:center;">Một đôi chân thon dài, không tì vết luôn là ước mơ của các eva xinh đẹp. Thật tuyệt khi được diện bộ váy mới tung tăng dạo bước phố trước ánh mắt đắm say của bao người. Tuy nhiên, vì một lý do hết sức khó chụi: sự nổi dậy của các nàng lông khiến chị em không dám khoe đôi chân rất thon dài của mình ở những chỗ đông người. Vậy phải làm sao đây? Hãy đến với Thẩm mỹ viện Việt Mỹ, nỗi lo đó sẽ biến mất chỉ sau vài lần điều trị với công nghệ Laser IPL</p>', '', '<p style="text-align:center;"><img src="/public/userfiles/image/thammyvien/image/San%20pham/14(3).jpg" alt="" width="500" height="752" /></p>\n<p><br />Một đôi chân thon dài, không tì vết luôn là ước mơ của các eva xinh đẹp. Thật tuyệt khi được diện bộ váy mới tung tăng dạo bước phố trước ánh mắt đắm say của bao người. Tuy nhiên, vì một lý do hết sức khó chụi: sự nổi dậy của các nàng lông khiến chị em không dám khoe đôi chân rất thon dài của mình ở những chỗ đông người. Vậy phải làm sao đây? Hãy đến với Thẩm mỹ viện Việt Mỹ, nỗi lo đó sẽ biến mất chỉ sau vài lần điều trị với công nghệ Laser IPL</p>\n<p style="text-align:center;"><img src="/public/userfiles/image/thammyvien/image/San%20pham/15(3).jpg" alt="" width="500" height="347" /></p>\n<p>Vẫn sử dụng phương pháp điều trị bằng Laser IPL nhưng ở Thẩm mỹ viện Việt Mỹ luôn có sự cần thận, tỉ mỉ đến từng chi tiết từ tư vấn đến lựa chọn bước sóng sao cho phù hợp để đạt hiểu quả tốt nhất. IPL (Intense Pulsed Light) là công nghệ hiện đại nhất hiện nay dùng để điều trị một số bệnh về da bằng cách chiếu chùm tia ánh sáng đa sắc với một lượng thích hợp vào vị trí cần chữa trị. Tia IPL sẽ tiếp xúc vào nang lông rất nhẹ nhàng, năng lượng ánh sáng sẽ chuyển thành nhiệt năng phá huỷ chân lông đang phát triển mà không ảnh hưởng đến lớp da bên ngoài và các mô xung quanh. IPL thường được biết đến cho một giải pháp là "Triệt lông vĩnh viễn"</p>\n<p style="text-align:center;"><img src="/public/userfiles/image/thammyvien/image/San%20pham/16(3).jpg" alt="" width="500" height="422" /></p>\n<p>Đặc biệt, tẩy lông bằng Laser IPL đã được các tổ chức uy tín như: CE, FDA, TUV, ISO.. chứng nhận kết quả ngoài sức mong đợi, lại không có tác dụng phụ, tiết kiệm thời gian, công sức và tiền bạc. Vậy còn chần chừ gì mà bạn không đến Thẩm mỹ viện Việt Mỹ để thổi bay những chiếc lông xấu xí chỉ trong 6 -8 ghé thăm.</p>\n<p><img style="margin-left:auto;margin-right:auto;" src="/public/userfiles/image/thammyvien/image/San%20pham/17.jpg" alt="" width="500" height="333" /></p>', '', 'laser-triet-long-vinh-vien', '', '', '', 0, 12, '', 0, 0, '', '', '', '', 1, 657),
(2858, 'Nâng sống mũi - thu gọn cánh mũi', '', '2012-06-22 07:09:33', 'nang-song-mui-thu-gon-canh-mui-thumb.jpg', 'nang-song-mui-thu-gon-canh-mui.jpg', '', '<p style="text-align:left;">Trong quan niệm người phương Đông, vẻ bên ngoài không những thể hiện tướng mạo mà còn bộc lộ tính cách con người: “Trông mặt mà bắt hình dong”. Đôi lúc nó trở thành định kiến xã hội về những người có tướng xấu, ít gặp may mắn và không nên kết bạn. Trên khuôn mặt tập trung nhiều nét về tướng số, mũi cũng không phải ngoại lệ.</p>', '', '<p>Trong quan niệm người phương Đông, vẻ bên ngoài không những thể hiện tướng mạo mà còn bộc lộ tính cách con người: “Trông mặt mà bắt hình dong”. Đôi lúc nó trở thành định kiến xã hội về những người có tướng xấu, ít gặp may mắn và không nên kết bạn. Trên khuôn mặt tập trung nhiều nét về tướng số, mũi cũng không phải ngoại lệ.</p>\n<p><img style="margin-left:auto;margin-right:auto;" src="/public/userfiles/image/thammyvien/image/San%20pham/1(1).jpg" alt="" width="500" height="333" /></p>\n<p>Mũi tẹt và sống mũi thấp hoặc bị đứt gãy dễ làm phần dưới khuôn mặt đưa ra đằng trước khiến nhiều người thiếu tin tưởng. Cánh mũi quá rộng vừa không đẹp, nhất là với phụ nữ lại vừa bị cho là không giữ được tiền của. Để có chiếc mũi đẹp cả hình lẫn tướng, bạn nên suy nghĩ về việc thay đổi và tạo cho mình khuôn mặt hài hòa thuần khiết.</p>\n<p>Với trang thiết bị hiện đại và đội ngũ bác sĩ tận tâm, Thẩm mỹ viện Việt Mỹ đáp ứng cho bạn một hay kết hợp cả hai yêu cầu này trong ca phẫu thuật chỉnh hình mũi duy nhất tùy theo thể trạng. Phẫu thuật nâng sống mũi – thu gọn cánh mũi đều là giải pháp nhanh chóng, an toàn và đáng tin cậy. Hơn thế nữa, mũi bạn còn được chỉnh lệch, thu gọn đầu mũi và lỗ mũi sao cho hợp lý và cân xứng.</p>\n<p style="text-align:center;"><img src="/public/userfiles/image/thammyvien/image/San%20pham/2__.jpg" alt="" width="500" height="500" /></p>\n<p>Nhằm nâng cao sống mũi, mảnh ghép silicone khối đã được tạo theo kích cỡ mũi được cấy vào và đảm bảo không gây phản ứng với cơ thể. Với việc thu gọn cánh mũi, đường rạch sẽ thực hiện bên trong lỗ mũi để không nhìn thấy sẹo. Bác sĩ sẽ hướng dẫn bạn đầy đủ những điều cần biết trước và sau khi phẫu thuật, đạt tới kết quả cuối cùng là một chiếc mũi dọc dừa vừa ý bạn.</p>', '', 'nang-song-mui-thu-gon-canh-mui', '', '', '', 0, 5, '', 0, 0, '', '', '', '', 1, 656);
INSERT INTO `dos_module_products` (`record_id`, `title`, `titleen`, `postdate`, `pic_thumb`, `pic_full`, `pic_desc`, `preview`, `previewen`, `content`, `contenten`, `tag`, `tagen`, `description`, `descriptionen`, `hits`, `record_order`, `unit`, `hot`, `specials`, `extra_field1`, `extra_field2`, `extra_field3`, `extra_field4`, `enable`, `dos_module_item_cat_cat_id`) VALUES
(2859, 'Tạo mắt 2 mí', '', '2012-06-22 07:12:51', 'tao-mat-2-mi-thumb.jpg', 'tao-mat-2-mi.jpg', '', '<p style="text-align:left;">Khi cảm nhận về một con người, đôi mắt sẽ nói lên rất nhiều điều không thể diễn đạt bằng lời. Trong giao tiếp, ánh mắt là phương tiện phi ngôn ngữ thể hiện rõ nhất tình cảm của bạn. Thông thường, đôi mắt đẹp là đôi mắt to tròn, sáng và có chiều sâu. Mí mắt là bộ phận quyết định trực tiếp tới sự biểu cảm của đôi mắt.</p>', '', '<p>Khi cảm nhận về một con người, đôi mắt sẽ nói lên rất nhiều điều không thể diễn đạt bằng lời. Trong giao tiếp, ánh mắt là phương tiện phi ngôn ngữ thể hiện rõ nhất tình cảm của bạn. Thông thường, đôi mắt đẹp là đôi mắt to tròn, sáng và có chiều sâu. Mí mắt là bộ phận quyết định trực tiếp tới sự biểu cảm của đôi mắt.</p>\n<p>Mắt hai mí được coi là chuẩn mực của đôi mắt song có nhiều người châu Á không có may mắn này. Đôi mắt một mí trở nên lộ liễu trên khuôn mặt, làm bạn kém tự tin khi giao tiếp. Không chỉ dễ gây mất thiện cảm ban đầu, đôi mắt một mí còn khiến đôi mắt buồn, lạnh, kém linh hoạt và không có hồn.</p>\n<p><img style="margin-left:auto;margin-right:auto;" src="/public/userfiles/image/thammyvien/image/San%20pham/3(1).jpg" alt="" width="500" height="410" /></p>\n<p>Để không phải vất vả tìm cách hóa trang mỗi khi tiếp xúc với mọi người, những người có mắt một mí dễ dàng biến thành mắt hai mí nhờ phương pháp phẫu thuật tạo mí đôi. Thẩm mỹ viện Việt Mỹ hiểu được mong muốn ấy và luôn sẵn sàng cung cấp dịch vụ phẫu thuật này một cách hoàn hảo nhất.</p>\n<p>Đôi mắt chỉ có một mí vì thiếu sự kết dính một phần của cân cơ nâng mi với da mi mắt tại vùng ranh giới giữa phần sụn và phần vách của mi mắt trên. Chỉ cần gây tê tại chỗ, bác sĩ sẽ tạo đường lằn mí bằng chỉ thẩm mỹ. Thời gian thẩm mỹ không quá 60 phút. Trong quá trình tạo mí đôi, bạn có thể kết hợp phẫu thuật cắt túi mỡ mắt để đôi mắt đạt hiệu quả thẩm mỹ tối đa.</p>\n<p style="text-align:center;"><img src="/public/userfiles/image/thammyvien/image/San%20pham/4(1).jpg" alt="" width="500" height="320" /></p>\n<p>Kết quả đạt được là mí mắt đôi vừa vặn với mắt bạn. Khi hoàn thành phẫu thuật, bạn có thể trở lại sinh hoạt bình thường, uống thuốc và quay lại cắt chỉ sau một tuần. Chúng tôi xin cam kết sẽ đem đến cho bạn dôi mắt thật đẹp, mang thán thái tươi vui và lôi cuốn</p>', '', 'tao-mat-2-mi', '', '', '', 0, 15, '', 0, 0, '', '', '', '', 1, 656),
(2860, 'Chăm sóc da bằng mặt nạ trứng cá hồi', '', '2012-06-22 07:18:50', 'cham-soc-da-bang-mat-na-trung-ca-hoi-thumb.jpg', 'cham-soc-da-bang-mat-na-trung-ca-hoi.jpg', '', '<p style="text-align:left;">Từ sau tuổi 25, làn da phụ nữ đã bắt đầu bị lão hóa, do cấu trúc Collagen trong da bị tổn thương, tuối tác, ánh nắng, môi trường, chế độ dinh dưỡng. Những dấu hiệu như nám, khô da, xuất hiện mụn, những nếp nhăn nhỏ…</p>', '', '<p>Từ sau tuổi 25, làn da phụ nữ đã bắt đầu bị lão hóa, do cấu trúc Collagen trong da bị tổn thương, tuối tác, ánh nắng, môi trường, chế độ dinh dưỡng. Những dấu hiệu như nám, khô da, xuất hiện mụn, những nếp nhăn nhỏ…</p>\n<p><img src="/public/userfiles/image/thammyvien/image/San%20pham/4.jpg" alt="" width="500" height="333" /></p>\n<p>Collagen là loại protein có nhiều nhất trong cơ thể người, chiếm khoảng một phần ba tổng lượng protein của cơ thể. Collagen có nhiều trong da, xương, sụn khớp và gân. Cho nên, bổ sung collagen được xem là liệu pháp hữu hiệu đem lại làn da mịn màng, sáng, khỏe. Mỗi lứa tuổi phụ nữ có những mong ước riêng cho bản thân nhưng họ luôn có chung một ước mong về nhan sắc đó là “ Đẹp, đẹp nữa và đẹp mãi”.</p>\n<p><img src="/public/userfiles/image/thammyvien/image/San%20pham/5.JPG" alt="" width="500" height="375" /></p>\n<p>Ngày nay, collagen không còn xa lạ đối với phụ nữ nữa mà nó có khả năng điều trị rất đặc biệt và là sản phẩm chăm sóc da xuất sắc nhất. Nó là một trong những chất quan trọng hàng đầu của ngành dược mỹ phẩm và được xem nhu một yếu tố thiên nhiên dành để chăm sóc da, nổi bật về khả năng dễ thích hợp với mọi loại da và nhu cầu của người sử dụng.</p>\n<p>Là mặt nạ có tác dụng đỉnh cao trong việc trị liệu chống lão hóa da. Mặt nạ trứng cá hồi tươi được chiết xuất từ cá hồi tươi, trứng cá caviar rất hiếm và quí, nó rất giàu chất dinh dưỡng gọi là vitellus (sự sống) rất cần thiết cho sự phát triển và xây dựng cấu trúc làn da mới. Caviar thực sự là nguồn cung cấp sự sống cho việc trẻ hóa làn da, vì vậy caviar chứa các nguồn chất cung cấp cốt yếu cho sự trẻ trung của làn da. Nó chính là sự thay thế chiết xuất từ nhau thai vốn rất nổi tiếng từ lâu trong liệu pháp sử dụng tế bào của Thụy Sĩ.</p>\n<p><img src="/public/userfiles/image/thammyvien/image/San%20pham/6___.jpg" alt="" width="500" height="560" /></p>\n<p>Mặt nạ Collagen cá hồi đưa sâu vào lớp màng đáy của da sẽ giúp bạn xoá nếp nhăn và làm săn chắc cơ mặt hoàn hảo nhất, phát huy hết khả năng cải lão hoàn đồng, giúp da căng mịn,làm trắng da và giảm mụn, giảm nám…</p>\n<p>Có tác dụng thẩm thấu vào da cho kết quả tốt nhất, giảm nhăn kích thích sản xuất collagen và elastin, xóa vết nhăn li ti, chống lão hóa da, căng da, chống nhăn, chống dị ứng, làm săn chắc cơ mặt hoàn hảo nhất, hút dầu nhờn, khít lỗ chân lông, thải độc tố, giúp da trắng sáng và giảm nám.</p>', '', 'cham-soc-da-bang-mat-na-trung-ca-hoi', '', '', '', 0, 4, '', 0, 0, '', '', '', '', 1, 658),
(2861, 'Đặc trị mụn cám không viêm bằng mỹ phẩm cao cấp Dermalogica', '', '2012-06-22 07:22:02', 'ac-tri-mun-cam-khong-viem-bang-my-pham-cao-cap-dermalogica-thumb.jpg', 'ac-tri-mun-cam-khong-viem-bang-my-pham-cao-cap-dermalogica.jpg', '', '<p style="text-align:left;">Mụn cám ở da nhờn là tình trạng phổ biến ở nhiều người, nguyên nhân do tăng tiết bã nhờn và sự tích tụ bã nhờn trong nang lông mà lỗ nang lông bị tắt nghẽn do da chết và bã nhờn gây bít chặt. Mụn cám tuy không ảnh hưởng nghiêm trọng đến sức khoẻ, nhưng lại là gánh nặng tâm lý và ảnh hưởng nhiều về mặt thẩm mỹ khiến bạn mất tự tin trong giao tiếp cũng như trong công việc. Hãy cùng các chuyên gia của Thẩm mỹ viện Việt Mỹ loại bỏ mọi nỗi lo lắng về mụn cám, lấy lại làn da láng mịn, rạng ngời.</p>', '', '<p>Mụn cám ở da nhờn là tình trạng phổ biến ở nhiều người, nguyên nhân do tăng tiết bã nhờn và sự tích tụ bã nhờn trong nang lông mà lỗ nang lông bị tắt nghẽn do da chết và bã nhờn gây bít chặt. Mụn cám tuy không ảnh hưởng nghiêm trọng đến sức khoẻ, nhưng lại là gánh nặng tâm lý và ảnh hưởng nhiều về mặt thẩm mỹ khiến bạn mất tự tin trong giao tiếp cũng như trong công việc. Hãy cùng các chuyên gia của Thẩm mỹ viện Việt Mỹ loại bỏ mọi nỗi lo lắng về mụn cám, lấy lại làn da láng mịn, rạng ngời.</p>\n<p><img style="margin-left:auto;margin-right:auto;" src="/public/userfiles/image/thammyvien/image/San%20pham/9.jpg" alt="" width="500" height="333" /></p>\n<p>Thẩm mỹ viện Việt Mỹ tự hào là trung tâm có có uy tín trong lĩnh vực làm đẹp, riêng về<br />trị mụn<br />cám, Việt Mỹ mang đến cho bạn hai sự lựa chọn: sử dụng công nghệ tiên tiến anh sáng IPL + RF hoặc dùng mỹ phẩm cao cấp Dermalogica để đặc trị. Hai phương pháp đều vô cùng tiên tiến và có hiệu quả 100%. Tùy sở thích của từng khách hàng mà Việt Mỹ áp dụng phương pháp sao cho phù hợp nhất.</p>\n<p>Được thành lập vào năm 1986 tại Los Angeles, Dermalogica là một trong những thương hiệu sản phẩm chăm sóc da có tốc độ phát triển nhanh nhất thế giới. Trong hơn 20 năm, Dermalogica vươn ra khỏi nước Mỹ, đến Châu Âu, Châu Á và Châu Úc đồng thời trở thành chọn lựa của những chuyên viên chăm sóc da, chuyên viên trang điểm cũng như các siêu sao hàng đầu.</p>\n<p style="text-align:center;"><img src="/public/userfiles/image/thammyvien/image/San%20pham/10(1).jpg" alt="" width="500" height="334" /></p>\n<p>Nhiều năm liền, những công thức sản xuất từ Dermalogica đã dẫn đầu tiêu chuẩn về sản phẩm. Với việc sử dụng những thành phần tốt nhất có thể, tất cả các sản phẩm của Dermalogica đều không gây mụn, không chứa dầu khoáng hay lanolin gây tắc nghẽn, không màu hay hương thơm nhân tạo và không chứa SD alcohol gây khô da. Không những vậy, Dermalogica còn là sản phẩm trị mụn cám hữu hiệu bậc nhất.</p>\n<p style="text-align:center;"><img src="/public/userfiles/image/thammyvien/image/San%20pham/11.jpg" alt="" width="500" height="683" /></p>\n<p>Các bước trị mụn cám bằng dòng sản phẩm Dermalogica ở Thẩm mỹ viện Việt Mỹ</p>\n<p>1.Tẩy trang bằng per clean<br />2. Rửa mặt sạch,tinh khiết da bằng speciel leansing gel<br />3. Tẩy tế bào chết bằng Skin Exfoliant Aystem( A+B)<br />4. Xông hơi hút dầu làm sạch mụn cám, đầu đen bằng scaling Fluid<br />5. Se khít lỗ chân lông bằng cầu lạnh<br />6. Massage Châu Âu kết hợp Massage ấn huyệt giúp lưu thông máu và săn chắc da<br />7.Serum làm cân bằng sắc tố hoặc cân bằng dầu mụn bằng chromawhite hoặc Medibac clearing complex<br />8. Di máy ánh sáng giúp đẩy sâu serum, ánh sáng sinh học giúp giải quyết tất cả các vấn đề cần cải thiện trên da<br />9. Đắp mặt nạ theo số đo khuôn mặt (đắp theo da mặt thực tế)<br />10. Xịt toner,thoa kem dưỡng cân bằng da (Mitiactive toner và Active Moist)<br />11. Bôi kem chống nắng (Sola defrense Boster SPF 30)</p>', '', 'dac-tri-mun-cam-khong-viem-bang-my-pham-cao-cap-dermalogica', '', '', '', 0, 2, '', 0, 0, '', '', '', '', 1, 658);

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
) ENGINE=InnoDB  DEFAULT CHARSET=utf8 AUTO_INCREMENT=662 ;

--
-- Dumping data for table `dos_module_products_cat`
--

INSERT INTO `dos_module_products_cat` (`cat_id`, `cat_parent_id`, `cat_title`, `cat_titleen`, `preview`, `previewen`, `tag`, `tagen`, `description`, `descriptionen`, `pic_full`, `pic_desc`, `cat_order`, `cat_extra1`, `cat_extra2`, `cat_enable`, `dos_usernames_username`) VALUES
(654, 0, 'Phun Xăm thẩm mỹ', '', '', '', 'phun-xam-tham-my', '', '', '', 'phun-xam-tham-my.jpg', '', 1, '', '', 1, 'thammyvien'),
(656, 0, 'Phẫu thuật thẩm mỹ', '', '', '', 'phau-thuat-tham-my', '', '', '', 'phau-thuat-tham-my.jpg', '', 2, '', '', 1, 'thammyvien'),
(657, 0, 'Thẫm mỹ công nghệ cao', '', '', '', 'tham-my-cong-nghe-cao', '', '', '', 'tham-my-cong-nghe-cao.jpg', '', 3, '', '', 1, 'thammyvien'),
(658, 0, 'Chăm sóc da mặt', '', '', '', 'cham-soc-da-mat', '', '', '', 'cham-soc-da-mat.jpg', '', 4, '', '', 1, 'thammyvien'),
(659, 0, 'Giảm béo', '', '', '', 'giam-beo', '', '', '', 'giam-beo.jpg', '', 5, '', '', 1, 'thammyvien'),
(660, 0, 'Chăm sóc thân thể', '', '', '', 'cham-soc-than-the', '', '', '', 'cham-soc-than-the.jpg', '', 6, '', '', 1, 'thammyvien'),
(661, 0, 'Spa', '', '', '', 'spa', '', '', '', 'spa.JPG', '', 7, '', '', 1, 'thammyvien');

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
) ENGINE=InnoDB  DEFAULT CHARSET=utf8 AUTO_INCREMENT=138 ;

--
-- Dumping data for table `dos_module_services`
--

INSERT INTO `dos_module_services` (`record_id`, `title`, `titleen`, `preview`, `previewen`, `content`, `contenten`, `pic_full`, `hit`, `created`, `record_order`, `hot`, `extra_field1`, `extra_field2`, `tag`, `tagen`, `description`, `descriptionen`, `activated`, `dos_usernames_username`) VALUES
(134, 'Chăm sóc toàn thân bằng bùn biển chết', '', '', '', '<p>Mùa thu – đông đem lại cho bạn một bầu không khí thanh mát, dịu dàng nhưng cũng lại gây ra chút phiền toái cho làn da vốn cần đủ dinh dưỡng và độ ẩm trước những thay đổi mưa – nắng thất thường của thời tiết. Vì vậy, dù có bận rộn thế nào bạn cũng đừng bỏ quên việc chăm sóc làn da của mình, tránh cho làn da trở nên khô ráp và sạm màu. Thẩm mỹ viện Việt Mỹ sẽ giúp bạn vừa thư giãn hiệu quả vừa có thể đem tới một làn da toàn thân tươi sáng, mịn màng với dịch vụ chăm sóc toàn thân bằng bùn biển chết.</p>\n<p style="text-align:center;"><img src="/public/userfiles/image/thammyvien/image/Dich%20vu/27(1).jpg" alt="" width="500" height="500" /></p>\n<p>Tương truyền, nữ hoàng Ai Cập cổ xưa là người khám phá ra phương thức dùng bùn Biển Chết - Israel để tẩy da chết, kích thích các mạch máu và duy trì làn da trẻ trung, tươi tắn. Chình nhờ phương pháp độc đáo này mà các nữ hoàng Ai Cập luôn đẹp bí ấn và đầy cuốn hút, làm đắm say bao người.</p>\n<p>Kế thừa những tinh hoa của nghệ thuật chăm sóc sắc đẹp, Thẩm mỹ viện Việt Mỹ mang đến cho quý khách những giờ phút thật sự thoải mái sau một ngày làm việc vất vả. Chỉ 90 phút thư giãn, quý khách sẽ thấy ngay sự thay đổi bất ngờ khi thực hiện gói dịch vụ chăm sóc toàn thân bằng bùn Biển Chết. Đặc biệt, khi đến chăm sóc toàn thân bằng bùn Biển Chết, quý khách sẽ yên tâm tuyệt đối về chất lượng và hiệu quả cả dịch vụ. Việt Mỹ luôn cam kết chữ tín quý hơn vàng.</p>\n<p style="text-align:center;"><img src="/public/userfiles/image/thammyvien/image/Dich%20vu/28__.jpg" alt="" width="500" height="375" /></p>\n<p>Sau đây là các bước chăm sóc toàn thân bằng bùn Biển Chết ở Thẩm mỹ viện Việt Mỹ</p>\n<p>Bước 1: bạn sẽ được tẩy da chết toàn thân bằng Body Microfoliant. Đây là một liệu pháp tẩy da chết nhẹ nhàng, đem lại cảm giác ấm nóng. Thành phần từ bột Yến Mạch và Cám Gạo giúp lấy đi tế bào da chết một cách nhẹ nhàng, đem lại cảm giác sáng bóng, ngăn chặn sự xuất hiện nám. Chiết xuất từ dầu tự nhiên giúp làn da mịn màng, đem lại sức sống cho làn da.</p>\n<p style="text-align:center;"><img src="/public/userfiles/image/thammyvien/image/Dich%20vu/29(1).jpg" alt="" width="500" height="465" /></p>\n<p>Bước 2: Bạn được Massage body bằng Liệu pháp bùn biển (Bôi kem, massage ấn huyệt, tắm tráng). Một trị liệu độc đáo với sự kết hợp giữa làm sạch và giải độc của bùn biển thiên nhiên với dầu giữ ẩm quyền năng. Tinh dầu Oliu và Hạt Nho cung cấp độ mềm mượt và làm khỏe da, đồng thời chống oxy hóa, gia cố hàng rào bảo vệ da. Hỗn hợp thảo mộc Châu Á kích thích tuần hoàn.Tinh dầu cô đặc làm tăng khả năng thư giãn cơ bắp, giảm căng thẳng, kích thích các giác quan hoạt động.</p>\n<p style="text-align:center;"><img src="/public/userfiles/image/thammyvien/image/Dich%20vu/30.jpeg" alt="" width="500" height="464" /></p>\n<p>Bước 3: (30’) Nuôi dưỡng da bằng bùn biển (Đắp dưỡng toàn thân, quấn ủ ấm, tắm tráng). Bước này giúp làm sạch sâu và giải độc cơ thể với thành phần đất sét tự nhiên. Chiết xuất Tảo Bẹ, Tảo đơn bào giúp lấy đi những tạp chất trên da, mang lại cảm giác mềm mịn, bóng khỏe. Caffein và Ilex giúp làm đều tông màu da. Tinh dầu Chanh chống oxy hóa. Chiết xuất rễ cây Wasabi và Gừng kích thích tuần hoàn, làm dịu da. Chiết xuất Trà Trắng, Oải Hương, Cam Đắng, Chanh Vàng, Vở Quýt làm tinh khiết da, chống lão hóa.</p>\n<p>Bước 4: (10’) Thoa kem dưỡng toàn thân bằng Ultra Rich Body Cream. Đây là loại kem không chứa dầu, lý tưởng cho cả làn da nhạy cảm nhất. Công thức dạng lỏng độc nhất giữ được lâu trên da, cho làn da độ ẩm và sự trơn mượt, không để lại cảm giác nhờn dính. Chiết xuất Fumaric Acid, cây Lam Cận và Chanh giúp bảo vệ da khỏi ô nhiễm môi trường, nhiệt độ cao và dị ứng mỹ phẩm. Dầu Hoa Anh Thảo giúp chỉnh sửa làn da thiếu nước. Vitamin B5 phục hồi làn da cằn cỗi thiếu nước.</p>', '', 'cham-soc-toan-than-bang-bun-bien-chet.jpg', 8, '2012-06-21 06:55:54', 1, 0, '', '', 'cham-soc-toan-than-bang-bun-bien-chet', '', 'Mùa thu – đông đem lại cho bạn một bầu không khí thanh mát, dịu dàng nhưng cũng lại gây ra chút phiền toái cho làn da vốn cần đủ dinh dưỡng..', '', 1, 'thammyvien'),
(135, 'Tẩy da chết toàn thân bằng muối khoáng', '', '', '', '<p>Những cơn mưa phùn, gió bấc và bầu trời u ám khiến cho mọi vật đều khoác lên mình màu xám xịt. Mùa hanh khô làm làn da chúng ta khô đi và “sắc đẹp” của mỗi người dường như đều giảm sút phần nào. Bạn – một đại diện cho phái đẹp hãy là “tia nắng ấm áp” trong mùa Đông này. Hãy làm mới mình, đến Thẩm mỹ viện Việt Mỹ để lấy lại nét xuân và “tỏa sáng” nhé.</p>\n<p style="text-align:center;"><img src="/public/userfiles/image/thammyvien/image/Dich%20vu/23(1).jpg" alt="" width="500" height="348" /></p>\n<p>Đầu tiên bạn sẽ được tẩy da chết toàn thân bằng muối khoáng Hydro Active Mineral Salts (trong 30 phút). Liệu pháp tẩy da chết bằng muối khoáng giúp đánh bóng cơ thể, làm mịn và sáng bóng da, thêm ẩm và chất dinh dưỡng cho da. Chiết xuất dầu tự nhiên giúp làm sạch, đồng thời kích thích các giác quan. Ngay từ bước này bạn sẽ thấy cảm giác sảng khoái, mọi căng thẳng bay biến. Không chỉ làn da bạn được tiếp năng lượng đầu óc bạn cũng trở nên thư giãn sảng khoái.</p>\n<p style="text-align:center;"><img src="/public/userfiles/image/thammyvien/image/Dich%20vu/24__.jpg" alt="" width="500" height="598" /></p>\n<p>Sau khi có làn da thật sạch với muối khoáng bạn hãy sẵn sàng tận hưởng cảm giác tuyệt vời của quá trình Massage body bằng Clean Massage Oil Base. Trong tiếng nhạc nhẹ nhàng, thoang thưởng hương tinh dầu bạn hãy nhắm mắt lại cảm nhận đôi bàn tay mềm mại của các chuyên gia Việt Mỹ nhẹ nhàng chăm sóc cơ thể bạn. Những ngón tay bé nhỏ dường như đang trả lại, đánh thức sức sống căng tràn của làn da bạn. Những động tác miết dài, xoay vòng rồi nhấn vào những huyệt đạo quan trọng trên cơ thể cho bạn những phút giây thư thái nhất.</p>\n<p style="text-align:center;"><img src="/public/userfiles/image/thammyvien/image/Dich%20vu/25_____.jpeg" alt="" width="500" height="375" /></p>\n<p>Tinh dầu chiết xuất từ tinh dầu quả Oliu và Hạt Nho, tinh dầu Quả Mơ, vitamin E, sẽ làm mềm và chống oxy hóa cho làn da bạn. Rễ cây Wasabi và Gừng: kích thích tuần hoàn và làm dịu da. Cây Trà Trắng ngăn ngừa lão hóa. Thành phần Sillicone thấm sâu vào trong da, giúp giảm bớt các vết chân chim và làm mềm kết cấu da.</p>\n<p>Bước 3, trong 30 phút bạn sẽ được đắp dưỡng toàn thân bằng Power Recovery Pack cho toàn bộ cơ thể. Phương pháp quyền năng từ bột Yến Mạch và bột Đậu Nành giúp nuôi dưỡng, đồng thời thêm ẩm và làm khỏe da. Mật ong giúp làm mềm mịn bề mặt da. Chiết xuất từ rễ cây Wasabi và Camellia Sinensis (Trà Trắng) giàu chất Polyphenon giúp bảo vệ chống lại sự hủy hoại của các gốc tự do. Qúa trình này thật hoàn hảo khi trị liệu cho cơ thể, lý tưởng cho những vùng da bị chàm hay các bệnh về da như khô, bong tróc, ngứa rát, cháy nắng hoặc thiếu chất dinh dưỡng.</p>\n<p style="text-align:center;"><img src="/public/userfiles/image/thammyvien/image/Dich%20vu/26.jpg" alt="" width="500" height="332" /></p>\n<p>Sau khi có làn da thật sạch với muối khoáng bạn hãy sẵn sàng tận hưởng cảm giác tuyệt vời của quá trình Massage body bằng Clean Massage Oil Base (trong 20 phút). Trong tiếng nhạc nhẹ nhàng, thoang thưởng hương tinh dầu bạn hãy nhắm mắt lại cảm nhận đôi bàn tay mềm mại của các chuyên gia nhẹ nhàng chăm sóc cơ thể bạn. Những ngón tay bé nhỏ dường như đang trả lại, đánh thức sức sống căng tràn của làn da bạn. Những động tác miết dài, xoay vòng rồi nhấn vào những huyệt đạo quan trọng trên cơ thể cho bạn những phút giây thư thái nhất.</p>\n<p>Thêm một bước nữa để làn da bạn thực sự đẹp xinh, mịn màng, tỏa sáng khi được thoa kem dưỡng toàn thân cao cấp nhập khẩu từ Hoa Kỳ. Đây là loại kem dưỡng không chứa dầu, lý tưởng cho cả làn da nhạy cảm nhất. Công thức dạng lỏng độc nhất giữ được lâu trên da, cho làn da độ ẩm và sự trơn mượt, không để lại cảm giác nhờn dính.</p>\n<p>Liệu pháp Tái Sinh quyền năng quả thực sẽ trả lại cho bạn làn da đẹp đẽ, căng tràn sức sống. Đó chính là liệu pháp nuôi dưỡng da bằng muối khoáng. Một phương pháp thật tuyệt chỉ có ở Thẩm mỹ viện Việt Mỹ.</p>', '', 'tay-da-chet-toan-than-bang-muoi-khoang.jpg', 7, '2012-06-21 07:00:23', 2, 0, '', '', 'tay-da-chet-toan-than-bang-muoi-khoang', '', 'Những cơn mưa phùn, gió bấc và bầu trời u ám khiến cho mọi vật đều khoác lên mình màu xám xịt.', '', 1, 'thammyvien'),
(136, 'Trẻ hóa toàn thân với parafin', '', '', '', '<p>Những làn da dễ mất nước có thể tìm lại vẻ săn chắc, hồng hào, khoẻ mạnh bằng mặt nạ Parafin. Đây là một dịch vụ rất được ưa thích, đặc biệt khi thời tiết đã bắt đầu lạnh và khô hơn vào mùa đông. Điều trị với mặt nạ nóng Parafin khi chăm sóc làn da có tác dụng tăng cường vòng tuần hoàn máu, cải thiện quá trình trao đổi chất của các tế bào, đồng thời tăng cường sự đàn hồi của làn da, mang lại sự cân bằng tươi trẻ cho làn da. Tuy nhiên, để có được hiểu quả tốt nhất thì chỉ có ở Thẩm mỹ viện Việt Mỹ</p>\n<p style="text-align:center;"><img src="/public/userfiles/image/thammyvien/image/Dich%20vu/19(2).jpg" alt="" width="500" height="300" /></p>\n<p>Parafinlà tên gọi chung cho nhóm các hydrocacbon dạng ankan với phân tử lượng lớn. Nó được dùng để sản xuất nến, tạo lớp phủ cho các loại giấy hay vải sáp, tạo các mẫu trong nghiên cứu thuộc lĩnh vực mô học... Trong da liễu học, nó được dùng làm thuốc làm mềm (giữ ẩm) đem lại làn da láng mượt, mịn màng.</p>\n<p>Parafin đặc biệt có tác dụng trong việc làm trẻ hoá và mịn màng đối với những bàn tay, bàn chân khô sần, gân guốc đồng thời có khả năng thấm sâu vào từng lớp cơ đem lại sự thư giãn tuyệt vời cho toàn cơ thể.</p>\n<p style="text-align:center;"><img src="/public/userfiles/image/thammyvien/image/Dich%20vu/20(2).jpg" alt="" width="500" height="334" /></p>\n<p>Từ những ưu điểm đó, Việt Mỹ đã áp dụng thành công liệu pháp ủ nóng bằng Parafin. Trước khi sử dụng Parafin, bạn sẽ được thanh tẩy cơ thể (xông hơi thải độc cơ thể, tẩy sạch lớp tế bào sừng, tế bào chết trên bề mặt da) thật sự với liệu pháp Spa, liệu pháp ngâm bồn thuốc bắc. Đó là tổng hợp hương vị thảo dược thơm và muối biển với hơn 40 khoáng chất và tinh dầu trị liệu. Bước đầu, bồn thuốc sẽ giúp cơ thể bạn giải độc tố và tuần hoàn máu.</p>\n<p style="text-align:center;"><img src="/public/userfiles/image/thammyvien/image/Dich%20vu/tm21.jpg" alt="" width="500" height="368" /></p>\n<p>Tiếp theo, toàn thân bạn sẽ được thả lỏng, cảm nhận hơi ấm lan tỏa từ đôi bàn tay massage, ấn huyệt, xoa dịu cơ thể và hương thơm làm tan biến mệt mỏi với các loại tinh dầu mà bạn ưa thích.<br />Cuối cùng chúng tôi ủ nóng toàn thân bạn trong sáp nóng Parafin. Nhiệt ấm sẽ kích thích toàn thân, làm cơ thể nóng ran lên, đẩy nhanh tuần hoàn máu. Sức nóng sẽ thấm sâu vào tận lớp cơ, xương cho bạn một cảm giác thật sự thoải mái và thư giãn hoàn toàn. Làn da bạn nhờ vậy luôn ẩm, căng mịn, sáng bóng và tăng tính đàn hồi.</p>\n<p>Cũng nhờ vậy, liệu pháp Parafin còn là một phương thuốc hữu hiệu trong điều trị giảm đau khớp, phong thấp, đổ mồ hôi tay chân, ngừa bệnh tật, giảm đi sự gân guốc và thô sần nhất là vùng tay và chân, giúp nuôi dưỡng cơ thể khỏe mạnh từ trong ra ngoài và ngăn ngừa lão hóa toàn thân cho Bạn</p>\n<p>Bạn là người quan tâm tới sức khỏe của mình? Chúng tôi khuyên Bạn nên dành chút thời gian chăm sóc cho cơ thể bằng Liệu pháp Parafin 1 tháng / 1 lần. Đó là phần thưởng tuyệt vời bạn dành cho cơ thể của mình.</p>\n<p>Một làn da luôn sáng đẹp và mịn màng như nhung khiến bạn luôn sảng khoái, lạc quan, tự tin và thành công hơn nữa.</p>', '', 'tre-hoa-toan-than-voi-parafin.jpg', 7, '2012-06-21 07:05:00', 3, 0, '', '', 'tre-hoa-toan-than-voi-parafin', '', 'Những làn da dễ mất nước có thể tìm lại vẻ săn chắc, hồng hào, khoẻ mạnh bằng mặt nạ Parafin. Đây là một dịch vụ rất được ưa thích', '', 1, 'thammyvien'),
(137, 'Thắp sáng làn da với ngọc Trân châu', '', '', '', '<p>Hiện nay, tại các thẩm mỹ viện có rất nhiều hình thức làm trắng da: Tẩy trắng da, tắm trắng bằng mỹ phẩm và tắm trắng bằng dược thảo. Riêng tắm trắng bằng dược thảo cũng có nhiều hình thức: tắm trắng hoàn toàn bằng thảo dược, linh dược quý từ thiên nhiên và tắm bằng thảo dược nhưng có pha trộn hoá chất.</p>\n<p style="text-align:center;"><img src="/public/userfiles/image/thammyvien/image/Dich%20vu/16.JPG" alt="" width="500" height="375" /></p>\n<p style="text-align:center;">Tẩy trắng da là hình thức lột nhẹ lớp da đen bên ngoài để phơi bày ra lớp da bên trong, trắng và mịn hơn. Phương pháp này cần được thực hiện một cách cẩn trọng và không nên lạm dụng vì da có thể dị ứng hoá chất. Bên cạnh đó, sau khi tẩy trắng da, bạn cần một chế độ bảo vệ nghiêm ngặt vì lớp da non rất dễ bắt nắng và bị tổn hại.</p>\n<p><img style="margin-left:auto;margin-right:auto;" src="/public/userfiles/image/thammyvien/image/Dich%20vu/17__.jpg" alt="" /></p>\n<p>Tắm trắng bằng mỹ phẩm là phương pháp sử dụng mỹ phẩm có chất làm trắng da, loại bỏ các tế bào sừng và các hắc sắc tố melanin. Tại các thẩm mỹ viện, các loại mỹ phẩm sử dụng để làm trắng da rất khác nhau, bạn cần chọn những địa chỉ tin cậy để tránh gây hại cho da.<br />Hiện nay, Thẩm mỹ viện Việt Mỹ đang áp dụng phương pháp tắm trắng bằng Ngọc trai Trân châu, là phương pháp an toàn 100% tự nhiên và mang lại hiệu quả trắng sáng một cách tự nhiên không gây kích ứng, không bắt nắng.</p>\n<p style="text-align:center;"><img src="/public/userfiles/image/thammyvien/image/Dich%20vu/18(1).jpg" alt="" width="500" height="376" /></p>\n<p>Với tinh chất từ Ngọc trai thiên nhiên hòa trộn với mật ong chúa hỗ trợ tẩy da chết nhẹ nhàng, đồng thời kiểm soát các sắc tố da, tiêu hủy tế bào sạm đen, phương pháp này không có tác dụng phụ ảnh hưởng tới sức khỏe. Đặc biệt, chỉ với 75 phút cho 1 lần chăm sóc bạn sẽ thấy ngay được kết quả là làn da trắng sáng với sắc hồng tự nhiên. Với 1 liệu trình từ 4 đến 6 lần bạn sẽ thấy vết thâm, giám nắng trên da mất đi trả lại nước da trắng sáng tự nhiên, mịn màng hồng hào không còn thiếu độ ẩm đó là nhờ sự cung cấp độ ẩm từ ngọc trai và sữa ong chúa. Sau khi xông hơi ủ trắng bằng gỗ Bách xanh giúp bạn tăng cường sức khỏe, thải hết mọi độc tố, tràn đầy năng lượng, cơ thể trở nên nhẹ nhàng.</p>', '', 'thap-sang-lan-da-voi-ngoc-tran-chau.jpg', 14, '2012-06-21 07:09:06', 4, 0, '', '', 'thap-sang-lan-da-voi-ngoc-tran-chau', '', 'Hiện nay, tại các thẩm mỹ viện có rất nhiều hình thức làm trắng da: Tẩy trắng da, tắm trắng bằng mỹ phẩm và tắm trắng bằng dược thảo', '', 1, 'thammyvien');

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
('180512', 'Mẫu nội thất: 180512', '2012-05-18 00:57:47', 'Chuyên bán các loại đồ nội thất, dân dụng');

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
('180512', 'noi-that-ngoai-that');

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
('180512', 'about', 'advs_left'),
('180512', 'about', 'list_supports'),
('180512', 'about', 'menu_about'),
('180512', 'contact', 'advs_left'),
('180512', 'contact', 'list_supports'),
('180512', 'contact', 'menu_products'),
('180512', 'default', 'about_home'),
('180512', 'default', 'advs_left'),
('180512', 'default', 'list_supports'),
('180512', 'default', 'menu_products'),
('180512', 'default', 'products_new'),
('180512', 'news', 'advs_left'),
('180512', 'news', 'list_supports'),
('180512', 'news', 'menu_news'),
('180512', 'products', 'advs_left'),
('180512', 'products', 'list_supports'),
('180512', 'products', 'menu_products'),
('180512', 'services', 'advs_left'),
('180512', 'services', 'list_supports'),
('180512', 'services', 'menu_services'),
('180512', 'video', 'advs_left'),
('180512', 'video', 'advs_top'),
('180512', 'video', 'menu_video');

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
('thammyvien', 'maioanh@thuonghoi.com', 'e10adc3949ba59abbe56e057f20f883e', '2012-06-21 06:19:29', '', '0987522003', '', 'user', 'vi', '', '2012-09-18 16:00:00', 1, '20122012', '', 1, '180512', 19, 'tham-my-vien');

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
('company_phone', '', '', 'thammyvien'),
('products', 'Hình ảnh', '', 'thammyvien');

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
