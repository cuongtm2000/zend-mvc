-- phpMyAdmin SQL Dump
-- version 3.4.5
-- http://www.phpmyadmin.net
--
-- Host: localhost
-- Generation Time: Sep 17, 2012 at 10:55 AM
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
('advs_center_height', 90, '', '050712'),
('advs_center_width', 120, '', '050712'),
('advs_left_height', 273, '', '050712'),
('advs_left_width', 205, '', '050712'),
('advs_right_height', 273, '', '050712'),
('advs_right_width', 205, '', '050712'),
('banner_height', 330, '', '050712'),
('banner_width', 950, '', '050712'),
('logo_height', 100, '', '050712'),
('logo_width', 950, '', '050712'),
('max_image_height', 667, '', '050712'),
('max_image_width', 500, '', '050712'),
('news_cat_height', 90, '', '050712'),
('news_cat_width', 130, '', '050712'),
('news_height_thumb', 90, '', '050712'),
('news_num_paging_cat', 10, '', '050712'),
('news_num_paging_hot', 6, '', '050712'),
('news_num_paging_index', 10, '', '050712'),
('news_num_paging_new', 6, '', '050712'),
('news_width_thumb', 130, '', '050712'),
('products_cat_height', 90, '', '050712'),
('products_cat_width', 120, '', '050712'),
('products_height', 667, '', '050712'),
('products_height_thumb', 90, '', '050712'),
('products_num_paging_cat', 20, '', '050712'),
('products_num_paging_hot', 20, '', '050712'),
('products_num_paging_new', 20, '', '050712'),
('products_num_paging_other', 4, '', '050712'),
('products_width', 500, '', '050712'),
('products_width_thumb', 120, '', '050712'),
('services_height', 150, '', '050712'),
('services_width', 150, '', '050712'),
('video_height_thumb', 90, '', '050712'),
('video_num_paging_cat', 20, '', '050712'),
('video_num_paging_index', 20, '', '050712'),
('video_width_thumb', 120, '', '050712');

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
('050712', 'default', 'prettyPhoto.css|skin.css', 'css'),
('050712', 'default', 'jquery.prettyPhoto.js|jquery.jcarousel.js|adv-config.js', 'javascript'),
('050712', 'video', 'prettyPhoto.css', 'css'),
('050712', 'video', 'jquery.prettyPhoto.js', 'javascript');

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
('about', 'nguyenanphuc'),
('advs', 'nguyenanphuc'),
('banner', 'nguyenanphuc'),
('contact', 'nguyenanphuc'),
('news', 'nguyenanphuc'),
('products', 'nguyenanphuc'),
('services', 'nguyenanphuc'),
('supports', 'nguyenanphuc');

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
) ENGINE=InnoDB  DEFAULT CHARSET=utf8 AUTO_INCREMENT=463 ;

--
-- Dumping data for table `dos_module_abouts`
--

INSERT INTO `dos_module_abouts` (`record_id`, `title`, `titleen`, `content`, `contenten`, `hit`, `created`, `record_order`, `hot`, `extra_field1`, `extra_field2`, `tag`, `tagen`, `description`, `descriptionen`, `activated`, `dos_usernames_username`) VALUES
(461, 'Thẩm mỹ viện - Đánh thức vẻ đẹp tiềm ẩn', '', '<p>Là phụ nữ, ai cũng muốn sở hữu một khuôn mặt đẹp, một làn da trắng mịn, một vóc dáng hoàn hảo cân đối. Một người phụ nữ đẹp sẽ dễ dàng thành công hơn trong cuộc sống gia đình và sự nghiệp. Có ai đó đã nói rằng: “Không có phụ nữ xấu chỉ có phụ nữ không biết làm đẹp”, vậy bạn đã biết đánh thức vẻ đẹp tiềm ẩn của mình để tự tin hơn với những đường nét, vóc dáng và làn da… Thẩm mỹ viện Việt Mỹ sẽ là nơi giúp bạn trả lời những câu hỏi đó.</p>\n<p style="text-align:center;"><img src="/public/userfiles/image/thammyvien/image/anh%20nha%20272%20copy.JPG" alt="" width="500" height="334" /></p>\n<p>Tọa lạc trên con phố Bà Triệu sầm uất, thẩm mỹ viện Việt Mỹ là một trong những địa chỉ uy tín hàng đầu về chăm sóc sức khỏe và vẻ đẹp cho phụ nữ.</p>\n<p>Với trang thiết bị công nghệ cao nhập khẩu hoàn toàn từ Châu Âu Việt Mỹ luôn mang lại phương pháp làm đẹp an toàn và hiệu quả. Việt Mỹ là nơi luôn đi đầu ứng dụng những thành tựu của công nghệ làm đẹp trên thế giới vào việc chăm sóc vẻ đẹp cho chị em phụ nữ tại Việt Nam. Đến với Việt Mỹ bạn sẽ được các chuyên gia tư vấn tận tình hướng dẫn và lựa chọn các phương pháp làm đẹp hiệu quả nhất tùy theo tính chất, đặc thù và các yêu cầu của cá nhân bạn.</p>\n<p style="text-align:center;"><img src="/public/userfiles/image/thammyvien/image/Gioi%20thieu/gt3.jpg" alt="" width="500" height="607" /></p>\n<p>Bạn đã biết công dụng của vàng như những món trang sức bên ngoài nhưng hiện nay vàng còn là một tác nhân quan trọng của công nghệ trẻ hóa da. Các khoa học gia ngày nay đã mô tả vàng như một thành phần hữu ích trong thẩm mỹ và cả sức khỏe, có thể đẩy mạnh hệ miễn dịch, khiến da trở nên rạng rỡ và khỏe mạnh hơn. Việt Mỹ đã ứng dụng phương pháp cải thiện da tiên tiến bằng mặt nạ vàng 24K giúp da trẻ và điều trị nám da trong thời gian ngắn. Với những tác dụng bất ngờ của mặt nạ vàng mang lại Việt Mỹ đã trở thành địa chỉ thường xuyên của nhiều bạn trẻ.</p>\n<p style="text-align:center;"><img src="/public/userfiles/image/thammyvien/image/Gioi%20thieu/gt5.jpg" alt="" width="500" height="769" /></p>\n<p style="text-align:center;"><img src="/public/userfiles/image/thammyvien/image/Gioi%20thieu/thammyvietmytc2121.jpg" alt="" width="550" height="367" /></p>\n<p>Đôi mắt đẹp quyến rũ, với ánh nhìn rộng mở, thu hút, phần lớn là nhờ vào làn lông mi dày, dài và cong của bạn. Nếu bạn cảm thấy thiếu tự tin về điều đó hãy đến Việt Mỹ để được sử dụng dịch vụ công nghệ kéo dài mi. Không chỉ thế khi đến với Việt Mỹ bạn còn được phục vụ những dịch vụ tốt nhất cho sức khỏe và vẻ đẹp của mình.</p>\n<p style="text-align:center;"><img src="/public/userfiles/image/thammyvien/image/Gioi%20thieu/8(3).jpg" alt="" width="500" height="411" /></p>\n<p>Ngoài ra tại Việt Mỹ bạn có thể lựa chọn nhiều dịch vụ khác nhau, như: Triệt lông vĩnh viễn, trẻ hóa da bằng công nghệ ánh sáng;trị nám, tàn nhang, trị mụn, tắm trắng, massage, xông hơi bằng gỗ bách xanh, giảm béo bằng máy ánh sáng và thông kinh lạc; xóa xăm lông mày</p>\n<p>Đặc biệt là sản phẩm mặt nạ cá hồi; mặt nạ bằng cá hồi có tác dụng bổ sung và duy trì độ ẩm cho da, cung cấp dinh dưỡng và bảo vệ da chống lại môi trường ô nhiễm bên ngoài. Ngoài ra, sản phẩm còn có khả năng xoá bỏ các nếp nhăn nông, cải thiện và làm mờ các nếp nhăn sâu do tuổi tác, phục hồi lại khả năng đàn hồi tự nhiên cho da, ngăn chặn sự hình thành nếp nhăn trên da, thúc đẩy trẻ hoá tế bào theo cơ chế tự nhiên.<br />Với dịch vụ đa dạng và phong cách phục vụ chuyên nghiệp Thẩm mỹ viện Việt Mỹ sẽ làm bạn hài lòng và trở thành địa chỉ ghé thăm thường xuyên của bạn.</p>\n<p style="text-align:center;"><img src="/public/userfiles/image/thammyvien/image/Gioi%20thieu/gt7.jpg" alt="" width="500" height="325" /></p>\n<p>Trong không gian ấm áp và nhẹ nhàng, đắm mình trong các liệu pháp hương hoa thiên nhiên, dưới bàn tay điêu luyện của các nhân viên được đào tạo bài bản tại Việt Mỹ khách hàng sẽ cảm thấy hài lòng nhất!</p>', '', 186, '2012-09-16 10:56:03', 1, 0, '', '', 'tham-my-vien-danh-thuc-ve-dep-tiem-an', '', '', '', 1, 'nguyenanphuc'),
(462, 'AN PHÚC KÍNH CHÀO QUÝ KHÁCH!', '', '<p><strong><span style="color:#ff0000;">        AN PHÚC</span></strong> được thành lập năm 2007, với hơn 5 năm kinh nghiệm khám và chữa bệnh, với đội ngũ Bác Sỹ, Y tá có nhiều năm kinh nghiệm, có trình độ chuyên môn cao, có tâm huyến trong nghề, có tấm lòng "Lương y như từ mẫu" đã được bệnh nhân đánh giá cáo là "<strong>TẬN TÌNH VÀ CHUYÊN NGHIỆP"</strong>, là nơi tin tưởng, an tâm cho người dân khám chữa bệnh ở TP. Biên Hòa, đặt biệt là Tân Phong, Trảng Dài.</p>\n<p><strong>        CÁC DỊCH VỤ Y TẾ CỦA PHÒNG KHÁM ĐA KHOA AN PHÚC</strong></p>\n<ul><li><strong>Khám chữa bệnh BHYT đúng tuyến, trái tuyến</strong></li>\n<li><strong>Khám sức khỏe tổng quán định kỳ</strong> (Dịch vụ này đã mang lại những ưu điểm trong việc phát hiện những căn bệnh tiền ẩn và nguy hiểm như ung thư, tiểu đường, huyết áp cao, bướu cổ, viêm gan siêu vi,...)</li>\n<li><strong>Khám điều trị, chăm sóc sức khỏe tại nhà.</strong></li>\n<li><strong>Tiêm phòng</strong></li>\n<li><strong>Dịch vụ đưa đón bệnh nhân.<br /><br /><span style="color:#ff0000;"><em>Đặt biệt:</em> Nhân viên tư vấn sức khỏe miễn phí 24/7.</span></strong></li>\n</ul>', '', 26, '2012-09-16 11:01:31', 2, 1, '', '', 'an-phuc-kinh-chao-quy-khach', '', 'khám chữa bệnh, phòng khám biên hòa, phong kham dong nai,', '', 1, 'nguyenanphuc');

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
) ENGINE=InnoDB  DEFAULT CHARSET=utf8 AUTO_INCREMENT=757 ;

--
-- Dumping data for table `dos_module_advs`
--

INSERT INTO `dos_module_advs` (`record_id`, `title`, `titleen`, `pic_thumb`, `url`, `create_date`, `start_date`, `end_date`, `hits`, `record_order`, `position`, `type`, `enable`, `dos_usernames_username`) VALUES
(754, 'Bí mật của làn da', '', 'bi-mat-cua-lan-da.png', 'http://thammyvien.dos.vn/', '2012-09-16 10:56:03', '2012-06-21 16:00:00', '2012-07-30 16:00:00', 0, 1, 'left', '_bank', 1, 'nguyenanphuc'),
(755, 'làn da khỏe', '', 'lan-da-khoe.png', 'http://thammyvien.dos.vn/gioi-thieu', '2012-09-16 10:56:03', '2012-06-21 16:00:00', '2012-07-30 16:00:00', 0, 2, 'left', '_bank', 0, 'nguyenanphuc'),
(756, 'Giảm giá', '', 'giam-gia.png', 'http://thammyvien.dos.vn/dich-vu', '2012-09-16 10:56:03', '2012-06-21 16:00:00', '2012-07-30 16:00:00', 0, 3, 'left', '_bank', 0, 'nguyenanphuc');

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
) ENGINE=InnoDB  DEFAULT CHARSET=utf8 AUTO_INCREMENT=3318 ;

--
-- Dumping data for table `dos_module_banners`
--

INSERT INTO `dos_module_banners` (`banner_id`, `banner_date`, `banner_name`, `banner_url`, `banner_link`, `banner_order`, `banner_type`, `position`, `enable`, `dos_usernames_username`) VALUES
(3306, '2012-09-16 10:56:03', 'Banner', 'banner.jpg', '', 1, 'banners', 'default', 1, 'nguyenanphuc'),
(3307, '2012-09-16 10:56:03', 'Banner 1', 'banner-1.jpg', '', 2, 'banners', 'default', 1, 'nguyenanphuc'),
(3308, '2012-09-16 10:56:03', 'Banner 2', 'banner-2.jpg', '', 3, 'banners', 'default', 1, 'nguyenanphuc'),
(3309, '2012-09-16 10:56:03', 'Banner 3', 'banner-3.jpg', '', 4, 'banners', 'default', 1, 'nguyenanphuc'),
(3310, '2012-09-16 10:56:03', 'home logo', 'home-logo.png', '', 5, 'logo', 'default', 1, 'nguyenanphuc'),
(3311, '2012-09-16 10:56:03', 'Banner 4', 'banner-4.jpg', '', 6, 'banners', 'about', 1, 'nguyenanphuc'),
(3312, '2012-09-16 10:56:03', 'Banner 5', 'banner-5.jpg', '', 7, 'banners', 'products', 1, 'nguyenanphuc'),
(3313, '2012-09-16 10:56:03', 'Banner 6', 'banner-6.jpg', '', 8, 'banners', 'services', 1, 'nguyenanphuc'),
(3314, '2012-09-16 10:56:03', 'Banner 7', 'banner-7.jpg', '', 9, 'banners', 'products', 1, 'nguyenanphuc'),
(3315, '2012-09-16 10:56:03', 'Banner 8', 'banner-8.jpg', '', 10, 'banners', 'news', 1, 'nguyenanphuc'),
(3316, '2012-09-16 10:56:03', 'Banner 9', 'banner-9.jpg', '', 11, 'banners', 'contact', 1, 'nguyenanphuc'),
(3317, '2012-09-16 10:56:03', 'Banner 10', 'banner-10.jpg', '', 12, 'banners', 'video', 1, 'nguyenanphuc');

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
('Trang chủ', '', 'default', '', 1, '', '', '', '', 'nguyenanphuc'),
('Giới thiệu', '', 'about', '', 2, '', '', '', '', 'nguyenanphuc'),
('Thư Viện Ảnh', '', 'products', '', 4, '', '', '', '', 'nguyenanphuc'),
('Dịch Vụ Khám Chữ Bệnh', '', 'services', '', 3, '', '', '', '', 'nguyenanphuc'),
('Cảm Nang', '', 'news', '', 5, '', '', '', '', 'nguyenanphuc'),
('Liên hệ', '', 'contact', '', 6, '', '', '', '', 'nguyenanphuc');

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
) ENGINE=InnoDB  DEFAULT CHARSET=utf8 AUTO_INCREMENT=520 ;

--
-- Dumping data for table `dos_module_news`
--

INSERT INTO `dos_module_news` (`record_id`, `title`, `titleen`, `postdate`, `pic_thumb`, `preview`, `previewen`, `content`, `contenten`, `tag`, `tagen`, `description`, `descriptionen`, `hits`, `record_order`, `hot`, `extra_field1`, `extra_field2`, `enable`, `dos_module_item_cat_cat_id`) VALUES
(517, 'Trị nám da: Đơn giản nếu biết cách', '', '2012-09-16 10:56:03', 'tri-nam-da-on-gian-neu-biet-cach.jpg', '<p>40% phụ nữ trên 30 tuổi và 90% phụ nữ trên 40 tuổi bị nám da, đốm nâu. 66% phụ nữ bị nám da sau khi sinh. Rõ ràng đây là mối lo lắng không nhỏ của nhiều phụ nữ.</p>', '', '<p>Nám da, đốm nâu không phải là bệnh nhưng ảnh hưởng nhiều đến thẩm mỹ, khiến họ mất tự tin trong giao tiếp với bạn bè, đồng nghiệp, đặc biệt là với người khác giới.<br />Gian nan trị chứng nám da</p>\n<p>Nhiều phụ nữ đã tìm đến những biện pháp trị nám khác nhau như điều trị bằng laser, sử dụng hóa chất lột tẩy hay dùng sóng điện từ. Tuy nhiên, kết quả không làm nhiều người hài lòng, thậm chí họ còn chịu những tác dụng phụ nguy hiểm.</p>\n<p>Việc sử dụng hóa chất lột tẩy, bào mòn da dễ gây dị ứng, khiến da tổn thương và tình trạng nám da càng nghiêm trọng hơn. Trong khi đó, sử dụng tia laser không những gây đau mà còn có thể gây bỏng da.</p>\n<p style="text-align:center;"><img src="/public/userfiles/image/thammyvien/image/Tin%20tuc/trinam.jpg" alt="" width="333" height="500" /></p>\n<p>Muốn trị nám, bạn cần hiểu rõ nguồn gốc của vấn đề này. Nguyên nhân chính gây ra tình trạng nám da là do tác động của ánh nắng mặt trời. Tác nhân này kích thích lớp đáy của thượng bì (là nơi chứa tế bào hắc tố melanin) sản sinh nhiều melanin. Chúng bị đẩy dần lên trên bề mặt da rồi tạo thành những đốm nâu, vết nám.</p>\n<p>Quá trình hình thành nám, sạm da bắt đầu từ sự hình thành của các gốc tự do trong cơ thể dưới tác động của ánh nắng mặt trời. Vì thế, muốn cải thiện tình trạng này, bạn cần bổ sung những chất chống ô-xy hóa ngoại sinh mà cơ thể không tự tổng hợp được.</p>\n<p>Dưỡng chất trị nám từ thực phẩm bổ sung</p>\n<p>Theo nghiên cứu, procianidin, vitamin C, beta carotene, vtamin E, selenium là những hoạt chất có khả năng chống lại các gốc tự do gây nám. Chúng phân bố trong một số thực phẩm. Tuy nhiên, với hàm lượng thấp, lại dễ "thất thoát" trong quá trình chế biến nên thực phẩm tự nhiên hàng ngày không thể giúp điều trị nám.</p>\n<p>Ngày nay, việc dùng viên uống bổ sung, chứa hoạt chất chống ô-xy hóa đã tinh chế được xem là giải pháp trị nám, sạm da khả thi. Hiệu quả của chúng cao hơn nhiều so với những cách điều trị trước đây. Không những vậy, viên uống bổ sung còn nhỏ gọn, tiện lợi cho bạn mang theo.</p>\n<p>Một số nhà sản xuất đã nghiên cứu và đưa ra thị trường loại thực phẩm bổ sung giúp loại bỏ nám da và đốm nâu. Sản phẩm có thành phần chiết xuát 100% từ thiên nhiên và sản xuất theo công nghệ tiên tiến Actisome để đạt hiệu quả điều trị tối ưu.</p>\n<p>Cơ chế trị nám hiệu quả, an toàn từ tự nhiên</p>\n<p>Công thức trị nám, sạm da hoàn hảo nhất là sử dụng procianidin, phối hợp với beta carotene, vitamin C và vitamin E. Procianidin chiết xuất từ vỏ thông biển Pháp, có hoạt tính chống ô-xy hóa cực mạnh, gấp 20 lần vitamin C và 50 lần vitamin E. Thành phần này có tác dụng đẩy lùi các gốc tự do, bảo vệ tế bào khỏi tác hại của tia cực tím. Nó cũng giúp ức chế men tyrosinase, tức là ức chế quá trình tổng hợp melanin.</p>\n<p>Bên cạnh đó, những chất chống ô-xy hóa trong công thức này còn có tác dụng chống lão hóa, kích thích quá trình tuần hoàn máu, giúp da hồng hào và khỏe mạnh.</p>\n<p>Nhiều nghiên cứ đã chứng minh tính an toàn và hiệu quả của procianidin đối với người châu Á. Trên 95% người sử dụng công nhận tình trạng nám da cải thiện cả về độ đậm màu và diện tích. Nhờ đó, da sáng lên đáng kể.</p>\n<p>Để đạt hiệu quả trị nám tối ưu, bạn cần kết hợp các biện pháp bảo vệ da khi ra nắng, uống nhiều nước và bổ sung thêm vitamin từ thực phẩm.</p>', '', 'tri-nam-da-don-gian-neu-biet-cach', '', '40% phụ nữ trên 30 tuổi và 90% phụ nữ trên 40 tuổi bị nám da, đốm nâu. 66% phụ nữ bị nám da sau khi sinh. Rõ ràng đây là mối lo lắng không nhỏ của nhiều phụ nữ.', '', 0, 1, 0, '', '', 1, 397),
(518, 'Trị mụn mủ - Chăm sóc da sai cách', '', '2012-09-16 10:56:03', 'tri-mun-mu-cham-soc-da-sai-cach.png', '<p style="text-align:left;">Phụ nữ ai cũng quan tâm chăm sóc làn da của mình hàng ngày. Nhưng chăm sóc thế nào là đúng? thế nào mới hiệu quả? Có rất nhiều ý kiến trái chiều trong việc chăm sóc da khiến khá nhiều người cảm thấy hoang mang.</p>', '', '<p>1. Mụn là vấn đề thường gặp phải với môi trường sống ô nhiễm như hiện nay. Đã có khá nhiều sản phẩm dành riêng cho việc điều trị mụn và cũng có nhiều phương pháp trị mụn dân gian. Tuy nhiên để điều trị mụn “tận gốc”, hiện đang có hai trường phái đối lập nhau. Một bên thì cho rằng nên lấy cồi mụn ra rồi sử dụng kem chống mụn. Một bên lại bảo rằng không nên nặn mụn vì sẽ làm cho da bị sưng tấy, đôi khi còn nổi thêm mụn ở vùng xung quanh nữa. Sự thật như thế nào?<br />Mụn là bệnh lý thường gặp ở tuổi dậy thì do tắc nghẽn nang lông, tăng tiết bã, bội nhiễm vi khuẩn.<br />Ở phụ nữ có rất nhiều yếu tố gây ra tình trạng nổi mụn: Sự thay đổi hàm lượng hóc-môn khi bắt đầu hoặc ngừng uống thuốc tránh thai, hoặc khi bị mãn kinh. Ngoài ra còn do một số loại thuốc, đặc biệt là thuốc chữa trầm cảm và chứng động kinh, hoặc do mỹ phẩm,...<br />Biểu hiện của mụn rất đa dạng: sẩn, mụn mủ, cồi đóng (trắng), cồi đen (mở), nang, cục, sẹo lõm, sẹo lồi. Da đỏ, nhờn. Để điều trị mụn tận gốc đầu tiên cần phải tuân theo những chế độ sau:</p>\n<p>-Tránh xa các thức ăn có chứa chất ngọt, mỡ, và chất kích thích như rượu, café và thuốc lá. Trong bữa ăn hằng ngày cần phải bổ sung nhiều rau xanh. Ăn nhiều trái cây.<br />- Thức khuya và căng thẳng là hai nguyên nhân dễ nổi mụn và tàn phá làn da nhanh nhất.<br />- Không nên để cơ thể bị thiếu nước dẫn đến táo bón. Nên uống đủ nước, đừng đợi đến khi cảm thấy khát nước mới uống. Vì khi ấy cơ thể bạn đã thiếu nước trầm trọng nên nó mới đòi hỏi bạn bổ sung nước. Ít nhất phải uống 2 lít mỗi ngày.</p>\n<p> <img src="/public/userfiles/image/thammyvien/image/Tin%20tuc/tri-mun-mu-cham-soc-da%20(1).png" alt="" width="400" height="300" /></p>\n<p>- Chống viêm, chống nhiễm trùng, mở chỗ tắc ở nang lông, giảm tiết bã.<br />Quá trình điều trị sẽ được bác sĩ da liễu quyết định sau khi thăm khám toàn diện và cẩn thận. Vì vậy theo Đẹp, để điều trị mụn có hiệu quả nhất thiết không nên tiến hành nặn mụn vì có thể gây nhiễm trùng lan rộng, phá vỡ cấu trúc da gây tụ máu, tạo sẹo xấu, để lại vết thâm, lõm trên làn da.<br />Nhất là trước khi nặn mụn nhiều người không rửa tay, vi khuẩn từ tay sẽ xâm nhập vào bên trong gây sưng tấy. Đừng lo lắng việc cồi mụn vẫn còn. Cứ để các nốt mụn khô và cồi mụn sẽ tự tróc ra.<br />2. Mùa nắng ở Việt Nam rất gắt, nên khi ra đường ai cũng phải cố gắng che chắn cho thật kỹ. Và một giải pháp rất được chị em ưa chuộng là sử dụng kem chống nắng. Tuy nhiên, hiện nay có một số tranh cãi về việc sử dụng kem chống nắng. Có chuyên gia cho rằng những người có làn da nhạy cảm và trẻ em không nên sử dụng kem chống nắng, còn một số khác lại khuyên tất cả mọi người đều cần sử dụng kem chống nắng khi bước ra ngoài đường. Sự thật là như thế nào?<br />Trẻ em từ 6 tháng trở lên và người có da nhạy cảm vẫn sử dụng được kem chống nắng, tuy nhiên cần phải lưu ý một số vấn đề sau:<br />- Trong thành phần của kem chống nắng không chứa chất bảo quản, tinh dầu thơm, PABA (Paraamino benzoic acid).<br />- Không có thành phần gây dị ứng, không nhờn, không cay mắt.<br />- Không chứa cồn vì có thể làm say em bé.<br />Những điều lưu ý khi sử dụng kem chống nắng<br />- Thoa một lớp đủ dày, khi ra mồ hôi nhiều hoặc xuống nước, đi bơi, sau 2 giờ phải thoa lại.<br />- Không dùng chung một loại kem chống nắng cho cả cơ thể và da mặt.<br />- Chọn loại kem chống cả được tia cực tím (Ultra Violet) bước sóng A và B.<br />- Ngoài ra cần dùng thêm áo, găng, nón, kính (chống được cả tia UVA và UVB)<br />- Nên hạn chế ra nắng trong thời gian từ 9 giờ sáng đến 3 giờ chiều.<br />- Tia UVA chính là nguyên nhân gây ung thư da vì làm tổn thương DNA của tế bào.<br />- Nên chọn loại kem chống nắng có SPF30, nếu đi biển thì dùng loại 50 hoặc 80.<br />- Thoa kem chống nắng đúng theo hướng dẫn, không quá mỏng hoặc quá dày.</p>\n<p>3. Các nhà khoa học đã đem những phát minh mới áp dụng vào công nghệ làm đẹp. Trên thị trường đã xuất hiện một số loại mỹ phẩm có thành phần chiết xuất từ tế bào gốc. Hiện nay đang có nhiều tranh cãi giữa việc nên hay không nên sử dụng các sản phẩm chăm sóc da từ tế bào gốc? Có ý kiến đang tranh cãi là nếu lấy tế bào gốc từ tế bào của con người thì có thể mang những mầm bệnh của người vào trong sản phẩm. Điều này đúng hay sai?<br />Tế bào gốc (TBG) trong cơ thể con người làm việc như một hệ thống sửa chữa, tái tạo bằng cách phân chia thành các tế bào chuyên biệt để bổ sung cho các dạng tế bào cần được thay thế. (Có những chức năng tương ứng với các tế bào này)<br />TBG chỉ có ở một vài nơi ở người đã trưởng thành như: phôi thai, dây rốn. Công nghệ TBG tìm kiếm các nguồn TBG tối ưu như TBG phôi thai, TBG từ dây rốn, TBG ở người trưởng thành.<br />Các tế bào này sẽ được nuôi cấy, nhân rộng, được tác động một cách khoa học để có thể biệt hóa thành những dòng tế bào khác nhau. Các sản phẩm tế bào khác nhau này để chữa bệnh, chăm sóc sắc đẹp, sức khỏe, chống lão hóa. Việc sử dụng TBG sẽ không làm lây truyền bệnh. Hiện nay có công nghệ TBG từ dây rốn ở Việt Nam rất hiệu quả, hạn chế được tác dụng phụ và duy trì tác dụng lâu so với sản phẩm TBG từ phôi bò hoặc sinh tổng hợp.<br />4. Phụ nữ bước qua tuổi 30 làn da bắt đầu lão hóa, xuất hiện một số nếp nhăn ở khóe mắt và quanh miệng, biện pháp giảm vết nhăn nhanh nhất là tiêm botox, nhưng hiện nay các bác sỹ khuyên không nên tiêm botox nữa maf nên dùng các sản phẩm chống lão hóa chăm sóc hàng ngày. Một số ý kiến khác lại cho rằng việc sử dụng sản phẩm chống lão hóa thực ra không có hiệu quả như mong đợi mà phải có chế độ ăn uống, chăm sóc và bảo vệ da ngay từ lúc còn trẻ chứ không nên lạm dụng quá nhiều vào các sản phẩm chống lão hóa. Thực sự thì nên làm gì để có làn da đẹp?<br />Botox là một loại độc chất có tên là Botulinum Toxin type A do công ty Allergan của Mỹ sản xuất.<br />Độc chất này do vi khuẩn Clostridium Botilinum tiết ra, có tác dụng ngăn các kích thích từ thần kinh đến sợi cơ do đó gây giãn cơ và xóa vết nhăn.<br />Ngoài ra Botox còn được dùng trong điều trị một số bệnh lý khác như: chứng co thắt cơ, rối loạn tiết mố hôi, rối loạn trương lực, đau nửa đầu.<br />Tuy nhiên việc tiêm Botox cần được thưc hiện bởi bác sĩ có tay nghề (đào tạo bài bản, kinh nghiệm) để hạn chế những tai biến và tác dụng phụ không mong muốn như: tụ máu, ngộ độc (do tiêm quá nhiều thuốc): yếu cơ, chóng mặt, chùng mi, mất kiểm soát chức năng bàng quang, mặt không biểu lộ cảm xúc, xệ môi miệng làm chảy nước bọt.<br />Vì vậy chỉ nên tiêm Botox ở vùng xung quanh mắt và trán.<br />Lão hóa da là một quá trình tự nhiên của cơ thể, bắt đầu ngay từ những năm 30 tuổi. Do 2 yếu tố nội và ngoại sinh.<br />Chúng ta chỉ có thể can thiệp vào yếu tố ngoại sinh để làm chậm quá trình này.<br />Việc sử dụng các sản phẩm chăm sóc da hàng ngày là việc cần thiết, tuy nhiên không nên lạm dụng.<br />Với kinh nghiệm trong ngành thẩm mỹ.Việt mỹ sẵn sàng tư vấn và mang đến cho bạn thông tin bổ ích cho làm da và các trị mụ hiệu quả nhất.</p>', '', 'tri-mun-mu-cham-soc-da-sai-cach', '', 'Phụ nữ ai cũng quan tâm chăm sóc làn da của mình hàng ngày. Nhưng chăm sóc thế nào là đúng? thế nào mới hiệu quả? Có rất nhiều ý kiến trái chiều trong việc chăm sóc da khiến khá nhiều người cảm thấy hoang mang.', '', 0, 3, 0, '', '', 1, 398),
(519, 'Tắm trắng tại nhà bằng trái cây', '', '2012-09-16 10:56:03', 'tam-trang-tai-nha-bang-trai-cay.jpg', '<p>Làn da của bạn sẽ trắng đẹp rạng ngời dưới nắng hè nhờ được tắm trắng tại nhà. Bạn có tin không? Các bước thực hiện cực kì đơn giản và dễ dàng nhé!</p>', '', '<p>Làn da của bạn sẽ trắng đẹp rạng ngời dưới nắng hè nhờ được tắm trắng tại nhà. Bạn có tin không? Các bước thực hiện cực kì đơn giản và dễ dàng nhé!</p>\n<p>1. Chuẩn bị:</p>\n<p>- Để làm hỗn hợp tắm trắng, bạn hãy sử dụng trái dâu tằm. Trong quả dâu tằm có chứa alpha hydro acid, chất có tác dụng tẩy tế bào chết, tái tạo tế bào mới và giúp làn da trắng mịn.<br />- Mật ong<br />- Đường cát/ muối (loại chuyên dụng để tẩy tế bào chết).</p>\n<p style="text-align:center;"><img src="/public/userfiles/image/thammyvien/image/Tin%20tuc/17__.jpg" alt="" width="500" height="365" /></p>\n<p>2. Thực hiện:</p>\n<p>Trước hết bạn cần làm ẩm da rồi tẩy tế bào chết: Sử dụng đường hoặc muối (loại chuyên dụng để tẩy tế bào chết). Bước này nhằm mục đích loại bỏ tế bào chết và tái tạo tế bào mới.<br />Làm hỗn hợp tắm trắng: Bạn hãy xay nhuyễn hai muỗng cà phê nước dâu tằm rồi trộn với 3 muỗng mật ong, sau đó trộng đều.<br />Thoa hỗn hợp này lên da và để khoảng 10 - 15 phút rồi tắm lại bằng nước mát. Như vậy là bạn đã có một làn da trằng hồng, mịn màng đầy sức sống hè này rồi.<br />Mách nhỏ: Nếu không có trái dâu tằm, bạn có thể sử dụng nước cốt cam để thay thế vì cam cũng có tác dụng tương tự dâu tằm trong việc tẩy tế bào chết và làm da trắng mịn.<br />Tam trang,tri tan nhang</p>', '', 'tam-trang-tai-nha-bang-trai-cay', '', 'Làn da của bạn sẽ trắng đẹp rạng ngời dưới nắng hè nhờ được tắm trắng tại nhà. Bạn có tin không? Các bước thực hiện cực kì đơn giản và dễ dàng nhé!', '', 0, 2, 0, '', '', 1, 399);

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
) ENGINE=InnoDB  DEFAULT CHARSET=utf8 AUTO_INCREMENT=400 ;

--
-- Dumping data for table `dos_module_news_cat`
--

INSERT INTO `dos_module_news_cat` (`cat_id`, `cat_parent_id`, `cat_title`, `cat_titleen`, `preview`, `previewen`, `tag`, `tagen`, `description`, `descriptionen`, `pic_full`, `cat_order`, `cat_extra1`, `cat_extra2`, `cat_enable`, `dos_usernames_username`) VALUES
(397, 0, 'Tri nám da', '', '', '', 'tri-nam-da', '', '', '', '', 1, '', '', 1, 'nguyenanphuc'),
(398, 0, 'Trị mụn', '', '', '', 'tri-mun', '', '', '', '', 2, '', '', 1, 'nguyenanphuc'),
(399, 0, 'Tắm trắng', '', '', '', 'tam-trang', '', '', '', '', 3, '', '', 1, 'nguyenanphuc');

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
('day_time', 2456188),
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
('''127.0.0.1''', 1347871546);

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
) ENGINE=InnoDB  DEFAULT CHARSET=utf8 AUTO_INCREMENT=1830 ;

--
-- Dumping data for table `dos_module_products_cat`
--

INSERT INTO `dos_module_products_cat` (`cat_id`, `cat_parent_id`, `cat_title`, `cat_titleen`, `preview`, `previewen`, `tag`, `tagen`, `description`, `descriptionen`, `pic_full`, `pic_desc`, `cat_order`, `cat_extra1`, `cat_extra2`, `cat_enable`, `dos_usernames_username`) VALUES
(1827, 0, 'Cơ Sở Hạ Tần', '', '', '', 'co-so-ha-tan', '', '', '', 'giam-beo.jpg', '', 6, '', '', 1, 'nguyenanphuc'),
(1828, 0, 'Máy Móc - Thiết Bị', '', '', '', 'may-moc-thiet-bi', '', '', '', 'cham-soc-than-the.jpg', '', 6, '', '', 1, 'nguyenanphuc'),
(1829, 0, 'Khám Chữa Bệnh', '', '', '', 'kham-chua-benh', '', '', '', 'spa.JPG', '', 6, '', '', 1, 'nguyenanphuc');

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
) ENGINE=InnoDB  DEFAULT CHARSET=utf8 AUTO_INCREMENT=356 ;

--
-- Dumping data for table `dos_module_services`
--

INSERT INTO `dos_module_services` (`record_id`, `title`, `titleen`, `preview`, `previewen`, `content`, `contenten`, `pic_full`, `hit`, `created`, `record_order`, `hot`, `extra_field1`, `extra_field2`, `tag`, `tagen`, `description`, `descriptionen`, `activated`, `dos_usernames_username`) VALUES
(352, 'Chăm sóc toàn thân bằng bùn biển chết', '', '', '', '<p>Mùa thu – đông đem lại cho bạn một bầu không khí thanh mát, dịu dàng nhưng cũng lại gây ra chút phiền toái cho làn da vốn cần đủ dinh dưỡng và độ ẩm trước những thay đổi mưa – nắng thất thường của thời tiết. Vì vậy, dù có bận rộn thế nào bạn cũng đừng bỏ quên việc chăm sóc làn da của mình, tránh cho làn da trở nên khô ráp và sạm màu. Thẩm mỹ viện Việt Mỹ sẽ giúp bạn vừa thư giãn hiệu quả vừa có thể đem tới một làn da toàn thân tươi sáng, mịn màng với dịch vụ chăm sóc toàn thân bằng bùn biển chết.</p>\n<p style="text-align:center;"><img src="/public/userfiles/image/thammyvien/image/Dich%20vu/27(1).jpg" alt="" width="500" height="500" /></p>\n<p>Tương truyền, nữ hoàng Ai Cập cổ xưa là người khám phá ra phương thức dùng bùn Biển Chết - Israel để tẩy da chết, kích thích các mạch máu và duy trì làn da trẻ trung, tươi tắn. Chình nhờ phương pháp độc đáo này mà các nữ hoàng Ai Cập luôn đẹp bí ấn và đầy cuốn hút, làm đắm say bao người.</p>\n<p>Kế thừa những tinh hoa của nghệ thuật chăm sóc sắc đẹp, Thẩm mỹ viện Việt Mỹ mang đến cho quý khách những giờ phút thật sự thoải mái sau một ngày làm việc vất vả. Chỉ 90 phút thư giãn, quý khách sẽ thấy ngay sự thay đổi bất ngờ khi thực hiện gói dịch vụ chăm sóc toàn thân bằng bùn Biển Chết. Đặc biệt, khi đến chăm sóc toàn thân bằng bùn Biển Chết, quý khách sẽ yên tâm tuyệt đối về chất lượng và hiệu quả cả dịch vụ. Việt Mỹ luôn cam kết chữ tín quý hơn vàng.</p>\n<p style="text-align:center;"><img src="/public/userfiles/image/thammyvien/image/Dich%20vu/28__.jpg" alt="" width="500" height="375" /></p>\n<p>Sau đây là các bước chăm sóc toàn thân bằng bùn Biển Chết ở Thẩm mỹ viện Việt Mỹ</p>\n<p>Bước 1: bạn sẽ được tẩy da chết toàn thân bằng Body Microfoliant. Đây là một liệu pháp tẩy da chết nhẹ nhàng, đem lại cảm giác ấm nóng. Thành phần từ bột Yến Mạch và Cám Gạo giúp lấy đi tế bào da chết một cách nhẹ nhàng, đem lại cảm giác sáng bóng, ngăn chặn sự xuất hiện nám. Chiết xuất từ dầu tự nhiên giúp làn da mịn màng, đem lại sức sống cho làn da.</p>\n<p style="text-align:center;"><img src="/public/userfiles/image/thammyvien/image/Dich%20vu/29(1).jpg" alt="" width="500" height="465" /></p>\n<p>Bước 2: Bạn được Massage body bằng Liệu pháp bùn biển (Bôi kem, massage ấn huyệt, tắm tráng). Một trị liệu độc đáo với sự kết hợp giữa làm sạch và giải độc của bùn biển thiên nhiên với dầu giữ ẩm quyền năng. Tinh dầu Oliu và Hạt Nho cung cấp độ mềm mượt và làm khỏe da, đồng thời chống oxy hóa, gia cố hàng rào bảo vệ da. Hỗn hợp thảo mộc Châu Á kích thích tuần hoàn.Tinh dầu cô đặc làm tăng khả năng thư giãn cơ bắp, giảm căng thẳng, kích thích các giác quan hoạt động.</p>\n<p style="text-align:center;"><img src="/public/userfiles/image/thammyvien/image/Dich%20vu/30.jpeg" alt="" width="500" height="464" /></p>\n<p>Bước 3: (30’) Nuôi dưỡng da bằng bùn biển (Đắp dưỡng toàn thân, quấn ủ ấm, tắm tráng). Bước này giúp làm sạch sâu và giải độc cơ thể với thành phần đất sét tự nhiên. Chiết xuất Tảo Bẹ, Tảo đơn bào giúp lấy đi những tạp chất trên da, mang lại cảm giác mềm mịn, bóng khỏe. Caffein và Ilex giúp làm đều tông màu da. Tinh dầu Chanh chống oxy hóa. Chiết xuất rễ cây Wasabi và Gừng kích thích tuần hoàn, làm dịu da. Chiết xuất Trà Trắng, Oải Hương, Cam Đắng, Chanh Vàng, Vở Quýt làm tinh khiết da, chống lão hóa.</p>\n<p>Bước 4: (10’) Thoa kem dưỡng toàn thân bằng Ultra Rich Body Cream. Đây là loại kem không chứa dầu, lý tưởng cho cả làn da nhạy cảm nhất. Công thức dạng lỏng độc nhất giữ được lâu trên da, cho làn da độ ẩm và sự trơn mượt, không để lại cảm giác nhờn dính. Chiết xuất Fumaric Acid, cây Lam Cận và Chanh giúp bảo vệ da khỏi ô nhiễm môi trường, nhiệt độ cao và dị ứng mỹ phẩm. Dầu Hoa Anh Thảo giúp chỉnh sửa làn da thiếu nước. Vitamin B5 phục hồi làn da cằn cỗi thiếu nước.</p>', '', '', 69, '2012-09-16 10:56:03', 1, 0, '', '', 'cham-soc-toan-than-bang-bun-bien-chet', '', 'Mùa thu – đông đem lại cho bạn một bầu không khí thanh mát, dịu dàng nhưng cũng lại gây ra chút phiền toái cho làn da vốn cần đủ dinh dưỡng..', '', 1, 'nguyenanphuc'),
(353, 'Tẩy da chết toàn thân bằng muối khoáng', '', '', '', '<p>Những cơn mưa phùn, gió bấc và bầu trời u ám khiến cho mọi vật đều khoác lên mình màu xám xịt. Mùa hanh khô làm làn da chúng ta khô đi và “sắc đẹp” của mỗi người dường như đều giảm sút phần nào. Bạn – một đại diện cho phái đẹp hãy là “tia nắng ấm áp” trong mùa Đông này. Hãy làm mới mình, đến Thẩm mỹ viện Việt Mỹ để lấy lại nét xuân và “tỏa sáng” nhé.</p>\n<p style="text-align:center;"><img src="/public/userfiles/image/thammyvien/image/Dich%20vu/23(1).jpg" alt="" width="500" height="348" /></p>\n<p>Đầu tiên bạn sẽ được tẩy da chết toàn thân bằng muối khoáng Hydro Active Mineral Salts (trong 30 phút). Liệu pháp tẩy da chết bằng muối khoáng giúp đánh bóng cơ thể, làm mịn và sáng bóng da, thêm ẩm và chất dinh dưỡng cho da. Chiết xuất dầu tự nhiên giúp làm sạch, đồng thời kích thích các giác quan. Ngay từ bước này bạn sẽ thấy cảm giác sảng khoái, mọi căng thẳng bay biến. Không chỉ làn da bạn được tiếp năng lượng đầu óc bạn cũng trở nên thư giãn sảng khoái.</p>\n<p style="text-align:center;"><img src="/public/userfiles/image/thammyvien/image/Dich%20vu/24__.jpg" alt="" width="500" height="598" /></p>\n<p>Sau khi có làn da thật sạch với muối khoáng bạn hãy sẵn sàng tận hưởng cảm giác tuyệt vời của quá trình Massage body bằng Clean Massage Oil Base. Trong tiếng nhạc nhẹ nhàng, thoang thưởng hương tinh dầu bạn hãy nhắm mắt lại cảm nhận đôi bàn tay mềm mại của các chuyên gia Việt Mỹ nhẹ nhàng chăm sóc cơ thể bạn. Những ngón tay bé nhỏ dường như đang trả lại, đánh thức sức sống căng tràn của làn da bạn. Những động tác miết dài, xoay vòng rồi nhấn vào những huyệt đạo quan trọng trên cơ thể cho bạn những phút giây thư thái nhất.</p>\n<p style="text-align:center;"><img src="/public/userfiles/image/thammyvien/image/Dich%20vu/25_____.jpeg" alt="" width="500" height="375" /></p>\n<p>Tinh dầu chiết xuất từ tinh dầu quả Oliu và Hạt Nho, tinh dầu Quả Mơ, vitamin E, sẽ làm mềm và chống oxy hóa cho làn da bạn. Rễ cây Wasabi và Gừng: kích thích tuần hoàn và làm dịu da. Cây Trà Trắng ngăn ngừa lão hóa. Thành phần Sillicone thấm sâu vào trong da, giúp giảm bớt các vết chân chim và làm mềm kết cấu da.</p>\n<p>Bước 3, trong 30 phút bạn sẽ được đắp dưỡng toàn thân bằng Power Recovery Pack cho toàn bộ cơ thể. Phương pháp quyền năng từ bột Yến Mạch và bột Đậu Nành giúp nuôi dưỡng, đồng thời thêm ẩm và làm khỏe da. Mật ong giúp làm mềm mịn bề mặt da. Chiết xuất từ rễ cây Wasabi và Camellia Sinensis (Trà Trắng) giàu chất Polyphenon giúp bảo vệ chống lại sự hủy hoại của các gốc tự do. Qúa trình này thật hoàn hảo khi trị liệu cho cơ thể, lý tưởng cho những vùng da bị chàm hay các bệnh về da như khô, bong tróc, ngứa rát, cháy nắng hoặc thiếu chất dinh dưỡng.</p>\n<p style="text-align:center;"><img src="/public/userfiles/image/thammyvien/image/Dich%20vu/26.jpg" alt="" width="500" height="332" /></p>\n<p>Sau khi có làn da thật sạch với muối khoáng bạn hãy sẵn sàng tận hưởng cảm giác tuyệt vời của quá trình Massage body bằng Clean Massage Oil Base (trong 20 phút). Trong tiếng nhạc nhẹ nhàng, thoang thưởng hương tinh dầu bạn hãy nhắm mắt lại cảm nhận đôi bàn tay mềm mại của các chuyên gia nhẹ nhàng chăm sóc cơ thể bạn. Những ngón tay bé nhỏ dường như đang trả lại, đánh thức sức sống căng tràn của làn da bạn. Những động tác miết dài, xoay vòng rồi nhấn vào những huyệt đạo quan trọng trên cơ thể cho bạn những phút giây thư thái nhất.</p>\n<p>Thêm một bước nữa để làn da bạn thực sự đẹp xinh, mịn màng, tỏa sáng khi được thoa kem dưỡng toàn thân cao cấp nhập khẩu từ Hoa Kỳ. Đây là loại kem dưỡng không chứa dầu, lý tưởng cho cả làn da nhạy cảm nhất. Công thức dạng lỏng độc nhất giữ được lâu trên da, cho làn da độ ẩm và sự trơn mượt, không để lại cảm giác nhờn dính.</p>\n<p>Liệu pháp Tái Sinh quyền năng quả thực sẽ trả lại cho bạn làn da đẹp đẽ, căng tràn sức sống. Đó chính là liệu pháp nuôi dưỡng da bằng muối khoáng. Một phương pháp thật tuyệt chỉ có ở Thẩm mỹ viện Việt Mỹ.</p>', '', '', 64, '2012-09-16 10:56:03', 2, 0, '', '', 'tay-da-chet-toan-than-bang-muoi-khoang', '', 'Những cơn mưa phùn, gió bấc và bầu trời u ám khiến cho mọi vật đều khoác lên mình màu xám xịt.', '', 1, 'nguyenanphuc'),
(354, 'Trẻ hóa toàn thân với parafin', '', '', '', '<p>Những làn da dễ mất nước có thể tìm lại vẻ săn chắc, hồng hào, khoẻ mạnh bằng mặt nạ Parafin. Đây là một dịch vụ rất được ưa thích, đặc biệt khi thời tiết đã bắt đầu lạnh và khô hơn vào mùa đông. Điều trị với mặt nạ nóng Parafin khi chăm sóc làn da có tác dụng tăng cường vòng tuần hoàn máu, cải thiện quá trình trao đổi chất của các tế bào, đồng thời tăng cường sự đàn hồi của làn da, mang lại sự cân bằng tươi trẻ cho làn da. Tuy nhiên, để có được hiểu quả tốt nhất thì chỉ có ở Thẩm mỹ viện Việt Mỹ</p>\n<p style="text-align:center;"><img src="/public/userfiles/image/thammyvien/image/Dich%20vu/19(2).jpg" alt="" width="500" height="300" /></p>\n<p>Parafinlà tên gọi chung cho nhóm các hydrocacbon dạng ankan với phân tử lượng lớn. Nó được dùng để sản xuất nến, tạo lớp phủ cho các loại giấy hay vải sáp, tạo các mẫu trong nghiên cứu thuộc lĩnh vực mô học... Trong da liễu học, nó được dùng làm thuốc làm mềm (giữ ẩm) đem lại làn da láng mượt, mịn màng.</p>\n<p>Parafin đặc biệt có tác dụng trong việc làm trẻ hoá và mịn màng đối với những bàn tay, bàn chân khô sần, gân guốc đồng thời có khả năng thấm sâu vào từng lớp cơ đem lại sự thư giãn tuyệt vời cho toàn cơ thể.</p>\n<p style="text-align:center;"><img src="/public/userfiles/image/thammyvien/image/Dich%20vu/20(2).jpg" alt="" width="500" height="334" /></p>\n<p>Từ những ưu điểm đó, Việt Mỹ đã áp dụng thành công liệu pháp ủ nóng bằng Parafin. Trước khi sử dụng Parafin, bạn sẽ được thanh tẩy cơ thể (xông hơi thải độc cơ thể, tẩy sạch lớp tế bào sừng, tế bào chết trên bề mặt da) thật sự với liệu pháp Spa, liệu pháp ngâm bồn thuốc bắc. Đó là tổng hợp hương vị thảo dược thơm và muối biển với hơn 40 khoáng chất và tinh dầu trị liệu. Bước đầu, bồn thuốc sẽ giúp cơ thể bạn giải độc tố và tuần hoàn máu.</p>\n<p style="text-align:center;"><img src="/public/userfiles/image/thammyvien/image/Dich%20vu/tm21.jpg" alt="" width="500" height="368" /></p>\n<p>Tiếp theo, toàn thân bạn sẽ được thả lỏng, cảm nhận hơi ấm lan tỏa từ đôi bàn tay massage, ấn huyệt, xoa dịu cơ thể và hương thơm làm tan biến mệt mỏi với các loại tinh dầu mà bạn ưa thích.<br />Cuối cùng chúng tôi ủ nóng toàn thân bạn trong sáp nóng Parafin. Nhiệt ấm sẽ kích thích toàn thân, làm cơ thể nóng ran lên, đẩy nhanh tuần hoàn máu. Sức nóng sẽ thấm sâu vào tận lớp cơ, xương cho bạn một cảm giác thật sự thoải mái và thư giãn hoàn toàn. Làn da bạn nhờ vậy luôn ẩm, căng mịn, sáng bóng và tăng tính đàn hồi.</p>\n<p>Cũng nhờ vậy, liệu pháp Parafin còn là một phương thuốc hữu hiệu trong điều trị giảm đau khớp, phong thấp, đổ mồ hôi tay chân, ngừa bệnh tật, giảm đi sự gân guốc và thô sần nhất là vùng tay và chân, giúp nuôi dưỡng cơ thể khỏe mạnh từ trong ra ngoài và ngăn ngừa lão hóa toàn thân cho Bạn</p>\n<p>Bạn là người quan tâm tới sức khỏe của mình? Chúng tôi khuyên Bạn nên dành chút thời gian chăm sóc cho cơ thể bằng Liệu pháp Parafin 1 tháng / 1 lần. Đó là phần thưởng tuyệt vời bạn dành cho cơ thể của mình.</p>\n<p>Một làn da luôn sáng đẹp và mịn màng như nhung khiến bạn luôn sảng khoái, lạc quan, tự tin và thành công hơn nữa.</p>', '', '', 39, '2012-09-16 10:56:03', 3, 0, '', '', 'tre-hoa-toan-than-voi-parafin', '', 'Những làn da dễ mất nước có thể tìm lại vẻ săn chắc, hồng hào, khoẻ mạnh bằng mặt nạ Parafin. Đây là một dịch vụ rất được ưa thích', '', 1, 'nguyenanphuc'),
(355, 'Thắp sáng làn da với ngọc Trân châu', '', '', '', '<p>Hiện nay, tại các thẩm mỹ viện có rất nhiều hình thức làm trắng da: Tẩy trắng da, tắm trắng bằng mỹ phẩm và tắm trắng bằng dược thảo. Riêng tắm trắng bằng dược thảo cũng có nhiều hình thức: tắm trắng hoàn toàn bằng thảo dược, linh dược quý từ thiên nhiên và tắm bằng thảo dược nhưng có pha trộn hoá chất.</p>\n<p style="text-align:center;"><img src="/public/userfiles/image/thammyvien/image/Dich%20vu/16.JPG" alt="" width="500" height="375" /></p>\n<p style="text-align:center;">Tẩy trắng da là hình thức lột nhẹ lớp da đen bên ngoài để phơi bày ra lớp da bên trong, trắng và mịn hơn. Phương pháp này cần được thực hiện một cách cẩn trọng và không nên lạm dụng vì da có thể dị ứng hoá chất. Bên cạnh đó, sau khi tẩy trắng da, bạn cần một chế độ bảo vệ nghiêm ngặt vì lớp da non rất dễ bắt nắng và bị tổn hại.</p>\n<p><img style="margin-left:auto;margin-right:auto;" src="/public/userfiles/image/thammyvien/image/Dich%20vu/17__.jpg" alt="" /></p>\n<p>Tắm trắng bằng mỹ phẩm là phương pháp sử dụng mỹ phẩm có chất làm trắng da, loại bỏ các tế bào sừng và các hắc sắc tố melanin. Tại các thẩm mỹ viện, các loại mỹ phẩm sử dụng để làm trắng da rất khác nhau, bạn cần chọn những địa chỉ tin cậy để tránh gây hại cho da.<br />Hiện nay, Thẩm mỹ viện Việt Mỹ đang áp dụng phương pháp tắm trắng bằng Ngọc trai Trân châu, là phương pháp an toàn 100% tự nhiên và mang lại hiệu quả trắng sáng một cách tự nhiên không gây kích ứng, không bắt nắng.</p>\n<p style="text-align:center;"><img src="/public/userfiles/image/thammyvien/image/Dich%20vu/18(1).jpg" alt="" width="500" height="376" /></p>\n<p>Với tinh chất từ Ngọc trai thiên nhiên hòa trộn với mật ong chúa hỗ trợ tẩy da chết nhẹ nhàng, đồng thời kiểm soát các sắc tố da, tiêu hủy tế bào sạm đen, phương pháp này không có tác dụng phụ ảnh hưởng tới sức khỏe. Đặc biệt, chỉ với 75 phút cho 1 lần chăm sóc bạn sẽ thấy ngay được kết quả là làn da trắng sáng với sắc hồng tự nhiên. Với 1 liệu trình từ 4 đến 6 lần bạn sẽ thấy vết thâm, giám nắng trên da mất đi trả lại nước da trắng sáng tự nhiên, mịn màng hồng hào không còn thiếu độ ẩm đó là nhờ sự cung cấp độ ẩm từ ngọc trai và sữa ong chúa. Sau khi xông hơi ủ trắng bằng gỗ Bách xanh giúp bạn tăng cường sức khỏe, thải hết mọi độc tố, tràn đầy năng lượng, cơ thể trở nên nhẹ nhàng.</p>', '', '', 42, '2012-09-16 10:56:03', 4, 0, '', '', 'thap-sang-lan-da-voi-ngoc-tran-chau', '', 'Hiện nay, tại các thẩm mỹ viện có rất nhiều hình thức làm trắng da: Tẩy trắng da, tắm trắng bằng mỹ phẩm và tắm trắng bằng dược thảo', '', 1, 'nguyenanphuc');

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
('keywords', 'AN PHÚC Khám chữa bệnh BHYT đúng tuyến, trái tuyến,Khám sức khỏe tổng quán định kỳ  Khám điều trị, chăm sóc sức khỏe tại nhà.,Tiêm phòng,Dịch vụ đưa đón bệnh nhân. Đặt biệt: Nhân viên tư vấn sức khỏe miễn phí 24/7', 'nguyenanphuc'),
('description', 'AN PHÚC Khám chữa bệnh BHYT đúng tuyến, trái tuyến,Khám sức khỏe tổng quán định kỳ  Khám điều trị, chăm sóc sức khỏe tại nhà.,Tiêm phòng,Dịch vụ đưa đón bệnh nhân. Đặt biệt: Nhân viên tư vấn sức khỏe miễn phí 24/7', 'nguyenanphuc'),
('title', 'An Phúc Nguyenanphuc.com', 'nguyenanphuc'),
('analytics', '<script type="text/javascript">\r\n\r\n  var _gaq = _gaq || [];\r\n  _gaq.push([''_setAccount'', ''UA-30151015-13'']);\r\n  _gaq.push([''_trackPageview'']);\r\n\r\n  (function() {\r\n    var ga = document.createElement(''script''); ga.type = ''text/javascript''; ga.async = true;\r\n    ga.src = (''https:'' == document.location.protocol ? ''https://ssl'' : ''http://www'') + ''.google-analytics.com/ga.js'';\r\n    var s = document.getElementsByTagName(''script'')[0]; s.parentNode.insertBefore(ga, s);\r\n  })();\r\n\r\n</script>', 'nguyenanphuc');

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
('050712', 'Mẫu viễn thông: 050712', '2012-07-04 22:32:23', 'Chuyên tổ chức sự kiện, truyền thông, quảng cáo event, event dalat, phan anh media, truyền thông, quảng cáo');

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
('050712', 'cong-nghe-thong-tin-vien-thong');

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
('050712', 'about', 'advs_left'),
('050712', 'about', 'advs_right'),
('050712', 'about', 'list_supports'),
('050712', 'about', 'menu_about'),
('050712', 'about', 'news_new'),
('050712', 'contact', 'advs_left'),
('050712', 'contact', 'advs_right'),
('050712', 'contact', 'list_supports'),
('050712', 'contact', 'menu_services'),
('050712', 'contact', 'news_new'),
('050712', 'default', 'about_home'),
('050712', 'default', 'advs_center'),
('050712', 'default', 'advs_left'),
('050712', 'default', 'advs_right'),
('050712', 'default', 'list_supports'),
('050712', 'default', 'menu_services'),
('050712', 'default', 'news_new'),
('050712', 'default', 'video_hot'),
('050712', 'news', 'advs_left'),
('050712', 'news', 'advs_right'),
('050712', 'news', 'list_supports'),
('050712', 'news', 'menu_news'),
('050712', 'news', 'news_hot'),
('050712', 'products', 'advs_left'),
('050712', 'products', 'advs_right'),
('050712', 'products', 'list_supports'),
('050712', 'products', 'menu_products'),
('050712', 'products', 'news_new'),
('050712', 'services', 'advs_left'),
('050712', 'services', 'advs_right'),
('050712', 'services', 'list_supports'),
('050712', 'services', 'menu_services'),
('050712', 'services', 'news_new'),
('050712', 'video', 'advs_left'),
('050712', 'video', 'advs_right'),
('050712', 'video', 'list_supports'),
('050712', 'video', 'menu_video'),
('050712', 'video', 'video_hot');

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
('nguyenanphuc', 'info@nguyenanphuc.com', 'e10adc3949ba59abbe56e057f20f883e', '2012-09-16 10:55:55', '', '', '', 'user', 'vi', '', '2012-12-14 16:00:00', 0, '87522003', '', 1, '050712', 19, 'tham-my-vien');

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
('addcart', '', '', 'nguyenanphuc'),
('company_phone', '', '', 'nguyenanphuc'),
('contact', '', '', 'nguyenanphuc'),
('news', 'CẨM NANG', '', 'nguyenanphuc'),
('products', 'THƯ VIỆN ẢNH', '', 'nguyenanphuc');

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
