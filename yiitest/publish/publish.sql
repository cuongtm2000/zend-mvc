-- phpMyAdmin SQL Dump
-- version 3.4.5
-- http://www.phpmyadmin.net
--
-- Host: localhost
-- Generation Time: Sep 14, 2012 at 02:19 AM
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
('banner_width', 750, '', '160512'),
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
('about', 'muayensao'),
('advs', 'muayensao'),
('banner', 'muayensao'),
('contact', 'muayensao'),
('news', 'muayensao'),
('products', 'muayensao'),
('services', 'muayensao'),
('supports', 'muayensao'),
('video', 'muayensao');

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
) ENGINE=InnoDB  DEFAULT CHARSET=utf8 AUTO_INCREMENT=449 ;

--
-- Dumping data for table `dos_module_abouts`
--

INSERT INTO `dos_module_abouts` (`record_id`, `title`, `titleen`, `content`, `contenten`, `hit`, `created`, `record_order`, `hot`, `extra_field1`, `extra_field2`, `tag`, `tagen`, `description`, `descriptionen`, `activated`, `dos_usernames_username`) VALUES
(275, 'GIỚI THIỆU VỀ YẾN SÀO', '', '<p>Yến sào có hình chén trà bổ đôi, được làm từ nước bọt của chim yến trống và chim yến mái từ tuyến nước bọt dưới lưỡi. Nó bị đông cứng lại sau khi tiếp xúc với không khí. Là một vật chất hữu cơ thiên nhiên và hầu như là một dạng tươi tự nhiên và dễ hấp thụ ….</p>\n<p><span style="color:#ff0000;"><strong>YẾN SÀO LÀ GÌ?</strong></span><br />Yến sào xét theo nghĩa từ nguyên có nghĩa là cái tổ của chim yến.<br />Yến sào có hình chén trà bổ đôi, được làm từ nước bọt của chim yến trống và chim yến mái từ tuyến nước bọt dưới lưỡi. Nó bị đông cứng lại sau khi tiếp xúc với không khí. Là một vật chất hữu cơ thiên nhiên và hầu như là một dạng tươi tự nhiên và dễ hấp thụ.<br />Người ta cho rằng tổ yến là một loại thuốc bổ cung cấp thêm năng lượng cuộc sống, tăng cường trao đổi chất, cải thiện sự tiêu hóa và hấp thu dinh dưỡng, có tác dụng dưỡng da, làm đẹp da hơn và cải thiện tình trạng của tóc. Ăn tổ yến liên tục sau một thời gian sẽ giữ cho cơ thể trẻ, khỏe, không bị bệnh, nhờ đó cải thiện sức khỏe kéo dài tuổi thọ. Tổ yến cũng có tác dụng nâng cao hoạt động sinh dục, có tác dụng bổ phổi, làm ẩm ướt đường hô hấp, giúp cải thiện tình trạng hen suyễn, lên đờm quá mức trong phổi và cổ họng, chống ho, nhổ ra máu và chiều hướng bị lao phổi, cũng tốt cho tim và sự tuần hoàn máu.<br />Sử dụng tổ yến trong thời gian mang thai làm tăng sức khỏe của cả mẹ và con. Phụ nữ dùng súp yến sau khi sinh con sẽ nhanh chóng mảnh mai, thon thả hơn, giữ gìn sắc đẹp của mình. Chức năng của dạ dày và lá lách của trẻ em nhỏ tuổi còn yếu ớt, cho trẻ em ăn yến có thể cải thiện và bổ sung sự thiếu hụt dinh dưỡng, khỏe mạnh và tăng trưởng. Tổ yến có thể dùng cho các nhóm tuổi khác nhau và cả nam – nữ.</p>\n<p>Ăn tổ yến giúp phục hồi sức khỏe của các bệnh nhân sau phẫu thuật và sau bị bệnh tật. Đặc biệt là tăng cường hệ thống miễn dịch và chức năng của hệ nội tiết. Gần đây người ta còn cho rằng tổ yến giúp hạn chế sự phát triển của bệnh AIDS qua con đường kích hoạt sự phân chia tế bào trong hệ thống miễn dịch.<br />Thành phần hóa học của tổ yến quyết định tác dụng của tổ yến:<br />- Có 31 nguyên tố đa vi lượng. Phương pahps huỳnh quang tia X, rất giàu Ca, Fe. Các nguyên tố có ích cho ổn định thần kinh, trí nhớ như Mn, Br, Cu, Zn cũng có hàm lượng cao, Se chất phóng xạ.<br />- Theo số liệu của trung tâm công nghệ sinh học Đại học Thủy sản và Viện Công nghệ sinh học thuộc trung tâm khoa học tự nhiên và công nghệ quốc gia. Trong thành phần Yến sào có 18 loại Acid amin, một số hàm lượng rất cao như: Acpartic Acid, Serine, Tyrosine, Leucine… là những chất có tác dụng phục hồi nhanh chóng các tổn thương khi bị nhiễm xạ hoặc chất độc hại.</p>\n<p><span style="color:#ff0000;"><strong>SỰ KHÁC BIỆT GIỮA YẾN ĐẢO VÀ YẾN NHÀ.</strong></span><br />Có một số ý kiến cho rằng chất lượng Yến Đảo tự nhiên tốt hơn Yến Nhà do giá bán cao hơn. Mùi vị các loại yến khác nhau có đem lại sự cảm nhận khác nhau. Nhưng sự thật là chim yến sống trong nhà cũng hoàn toàn kiếm ăn ngoài tự nhiên như Yến Đảo. nhiều người vẫn nghĩ rằng yến nhà là yến có thể nuôi được và trong thực tế chúng ta chỉ có thể dựa vào kỹ thuật và thiết kế để dẫn dụ chim yến vào nhà làm tổ chứ không thể cho chúng ăn như gà công nghiệp.<br />Nói cách khác đơn giản là chúng ta có thể làm nhà cho chúng làm tổ, đẻ trứng, nuôi con và ngủ đêm chứ không chạm vào họa bắt chúng vì chim yến là loài chim đặc biệt, chúng bay kiên tục không đậu trên mặt đất hoặc cành cây (đặc tính đôi chân bé mãnh), chúng ăn côn trùng bay trong thiên nhiên, chỉ có thiên nhiên là nơi cung cấp thức ăn cho chúng<br />Hơn nữa yến nhà còn được bảo vệ khỏi các dịch hại như: chuột, gián, nấm mốc, bọ… vốn khó phòng ngừa tại các hang động, do vậy tổ yến trong nhà sạch hơn và không cần dùng những hóa chất để tẩy sạch vết bẩn. Nhũng phân tích tại Hồng Kông cho thấy Yến Nhà có thành phần tương đương Yến Đảo. Theo những người sử dụng và buôn bán Yến Sào lâu năm thì yến trong nhà Việt Nam có chất lượng vượt trội thể hiện qua mùi vị và sợi yến còn nguyên sau khi chưng.</p>', '', 188, '2012-07-15 23:41:19', 1, 0, '', '', 'gioi-thieu-ve-yen-sao', '', '', '', 1, 'muayensao'),
(448, 'Giới thiệu về công ty', '', '<p>Yến sào có hình chén trà bổ đôi, được làm từ nước bọt của chim yến trống và chim yến mái từ tuyến nước bọt dưới lưỡi. Nó bị đông cứng lại sau khi tiếp xúc với không khí. Là một vật chất hữu cơ thiên nhiên và hầu như là một dạng tươi tự nhiên và dễ hấp thụ ….</p>', '', 8, '2012-09-13 03:51:12', 2, 1, '', '', 'gioi-thieu-ve-cong-ty', '', 'Yến sào có hình chén trà bổ đôi, được làm từ nước bọt của chim yến trống và chim yến mái từ tuyến nước bọt dưới lưỡi. Nó bị đông cứng lại sau khi tiếp xúc với không khí.', '', 0, 'muayensao');

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
) ENGINE=InnoDB  DEFAULT CHARSET=utf8 AUTO_INCREMENT=418 ;

--
-- Dumping data for table `dos_module_advs`
--

INSERT INTO `dos_module_advs` (`record_id`, `title`, `titleen`, `pic_thumb`, `url`, `create_date`, `start_date`, `end_date`, `hits`, `record_order`, `position`, `type`, `enable`, `dos_usernames_username`) VALUES
(417, 'quang cao 1', '', 'quang-cao-1.png', 'http://muayensao.dos.vn/san-pham', '2012-07-16 01:23:34', '2012-07-15 16:00:00', '2012-08-30 16:00:00', 0, 1, 'left', '_bank', 1, 'muayensao');

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
) ENGINE=InnoDB  DEFAULT CHARSET=utf8 AUTO_INCREMENT=1617 ;

--
-- Dumping data for table `dos_module_banners`
--

INSERT INTO `dos_module_banners` (`banner_id`, `banner_date`, `banner_name`, `banner_url`, `banner_link`, `banner_order`, `banner_type`, `position`, `enable`, `dos_usernames_username`) VALUES
(1605, '2012-07-16 00:56:08', 'logo-muayensao', 'logo-muayensao.png', '', 1, 'logo', 'default', 0, 'muayensao'),
(1606, '2012-07-16 01:10:06', 'Banner 1', 'banner-1.jpg', '', 2, 'banners', 'default', 1, 'muayensao'),
(1607, '2012-07-16 01:15:41', 'Banner 2', 'banner-2.jpg', '', 3, 'banners', 'default', 1, 'muayensao'),
(1608, '2012-07-16 01:16:06', 'Banner 3', 'banner-3.jpg', '', 4, 'banners', 'products', 1, 'muayensao'),
(1609, '2012-07-16 01:16:19', 'Banner 4', 'banner-4.jpg', '', 5, 'banners', 'products', 1, 'muayensao'),
(1610, '2012-07-16 01:16:36', 'Banner 5', 'banner-5.jpg', '', 6, 'banners', 'about', 1, 'muayensao'),
(1611, '2012-07-16 01:16:54', 'Banner 6', 'banner-6.jpg', '', 7, 'banners', 'services', 1, 'muayensao'),
(1612, '2012-07-16 01:17:16', 'Banner 7', 'banner-7.jpg', '', 8, 'banners', 'services', 1, 'muayensao'),
(1613, '2012-07-16 01:17:33', 'Banner 8', 'banner-8.jpg', '', 9, 'banners', 'news', 1, 'muayensao'),
(1614, '2012-07-16 01:17:49', 'Banner 9', 'banner-9.jpg', '', 10, 'banners', 'contact', 1, 'muayensao'),
(1615, '2012-07-16 01:18:07', 'Banner 10', 'banner-10.jpg', '', 11, 'banners', 'video', 1, 'muayensao'),
(1616, '2012-07-16 01:18:38', 'Banner 11', 'banner-11.jpg', '', 12, 'banners', 'about', 1, 'muayensao');

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
) ENGINE=InnoDB  DEFAULT CHARSET=utf8 AUTO_INCREMENT=54 ;

--
-- Dumping data for table `dos_module_contacts`
--

INSERT INTO `dos_module_contacts` (`record_id`, `title`, `titleen`, `content`, `contenten`, `create_date`, `record_order`, `hit`, `hot`, `tag`, `tagen`, `description`, `descriptionen`, `enable`, `dos_usernames_username`) VALUES
(53, 'Liên hệ với chúng tôi', '', '<p>Công Ty Cổ Phần Yến Quê Hương</p>\n<p>R4 - 16 Đường Hưng Gia 3 - Phú Mỹ Hưng Q.7 Tp.HCM</p>\n<p>CHUYÊN CUNG CẤP CÁC SẢN PHẨM YẾN VIỆT NAM</p>', '', '2012-07-27 08:08:03', 1, 0, 0, 'lien-he-voi-chung-toi', '', '', '', '1', 'muayensao');

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
('Trang chủ', '', 'default', '', 0, NULL, NULL, NULL, NULL, 'muayensao'),
('Giới thiệu', '', 'about', '', 1, NULL, NULL, NULL, NULL, 'muayensao'),
('Sản phẩm', '', 'products', '', 2, NULL, NULL, NULL, NULL, 'muayensao'),
('Chế Biến', '', 'services', '', 3, NULL, NULL, NULL, NULL, 'muayensao'),
('Tin tức', '', 'news', '', 5, NULL, NULL, NULL, NULL, 'muayensao'),
('Video', '', 'video', '', 6, NULL, NULL, NULL, NULL, 'muayensao'),
('Liên hệ', '', 'contact', '', 7, NULL, NULL, NULL, NULL, 'muayensao');

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
) ENGINE=InnoDB  DEFAULT CHARSET=utf8 AUTO_INCREMENT=315 ;

--
-- Dumping data for table `dos_module_news`
--

INSERT INTO `dos_module_news` (`record_id`, `title`, `titleen`, `postdate`, `pic_thumb`, `preview`, `previewen`, `content`, `contenten`, `tag`, `tagen`, `description`, `descriptionen`, `hits`, `record_order`, `hot`, `extra_field1`, `extra_field2`, `enable`, `dos_module_item_cat_cat_id`) VALUES
(314, 'Yến sào chống lão hóa da cho phụ nữ', '', '2012-07-13 06:56:33', 'yen-sao-chong-lao-hoa-da-cho-phu-nu.jpg', '<p>Yến sào bí quyết giử gìn nét thanh xuân cho phụ nữ: Làm cách nào để có thể giữ được một sức khoẻ “dẻo dai” cùng nét thanh xuân, tươi trẻ trên gương mặt và cơ thể? Đây có lẽ là nỗi lo lớn nhất của rất nhiều chị em phụ nữ. Họ thật sự đang ở đỉnh cao của cuộc đời nhờ sự từng trải, chín chắn nhưng cũng đang bắt đầu thấy lo âu nhiều hơn là tự tin.</p>', '', '<p><img src="/public/userfiles/image/muayensao/image/1a.jpg" alt="" width="202" height="148" />Yến sào bí quyết giử gìn nét thanh xuân cho phụ nữ: Làm cách nào để có thể giữ được một sức khoẻ “dẻo dai” cùng nét thanh xuân, tươi trẻ trên gương mặt và cơ thể? Đây có lẽ là nỗi lo lớn nhất của rất nhiều chị em phụ nữ. Họ thật sự đang ở đỉnh cao của cuộc đời nhờ sự từng trải, chín chắn nhưng cũng đang bắt đầu thấy lo âu nhiều hơn là tự tin.<br />Tại sao phụ nữ U30 có nhiều nỗi lo?</p>\n<p>Nói chung phụ nữ ở lứa tuổi nào dùng yến cũng phù hợp. Đặc biệt, khi chị em bước vào thời kỳ lão hóa sau tuổi 30 thì lượng collagen bắt đấu suy giảm, khiến xuất hiện các nếp nhăn quanh miệng, quanh mắt. Ngoài ra nếu cơ thể đang trong tình trạng suy kiệt do bệnh tật, phẫu thuật hoặc sau khi sinh… thì lượng hồng cầu bị suy giảm, người mệt mỏi, sụt cân, sức đề kháng yếu.</p>\n<p>Lý do ở đây khá đơn giản vì ở độ tuổi từ 30 tuổi trở lên, phụ nữ thường là từng mang thai nên cơ thể bị chèn ép, vóc dáng thay đổi nhiều. Họ sinh con và bận rộn chăm sóc con cái cùng với gia đình nên cũng dành ít thời gian chăm sóc bản thân hơn trước.</p>\n<p>Ở tuổi này, chị em đã bắt đầu chín chắn trong công việc, muốn khẳng định mình ở vị trí cao hơn, nên cũng đầu tư nhiều thời gian phấn đấu cho sự nghiệp, cuộc sống của họ trở nên vô cùng tất bật, thiếu vận động, thiếu thời gian nghỉ ngơi… và theo thời gian các nếp nhăn trên da bắt dầu xuất hiện trên khuôn mặt của chị e phụ nử. đó cũng là nỗi lo của chị e phụ nữ</p>\n<p><span style="color:#0000ff;"><strong>Yến sào hỗ trợ làm đẹp da, đẹp dáng cho phụ nữ.</strong></span></p>\n<p>Ngoài việc bồi bổ thể lực và trí lực, yến sào còn được nhiều người công nhận là một “trợ tá đắc lực” trong việc duy trì sức khỏe và sắc đẹp cho phụ nữ. Thành phần yến sào chứa nhiều threonine là chất hình thành elastine và collagen giúp ngăn ngừa lão hóa, duy trì làn da tươi trẻ, giúp kéo dài nét thanh xuân cho chị em. Hơn nữa, trong yến chỉ có đường tự nhiên galactose mà không chứa chất béo, có thể dùng mỗi ngày mà không sợ tăng cân. Phụ nữ nếu ăn yến thường xuyên sẽ ít bị nổi mụn, tàn nhang, vết nám, hơn nữa còn có được làn da mịn màng, đặc biệt làm chậm quá trình lão hóa.</p>\n<p>Đối tượng cũng nên dùng bổ sung yến sào là phụ nữ mang thai (thai sau 03 tháng) để tăng dưỡng chất cho cả mẹ và thai nhi. Thai phụ nếu ăn yến được thì cũng ăn trước 01 lượng nhỏ và theo dõi trước khi bắt đầu dùng thường xuyên.</p>\n<p><strong><span style="color:#0000ff;">Cách chế biến yến sào:</span></strong></p>\n<p>Yến sào có thể chế biến thành nhiều món ăn khác nhau nhưng mà cách đơn giản nhất và hiệu quả nhất là chưng cách thủy với đường phèn.</p>\n<p>Việc ngâm nở và chưng cất yến sào khá đơn giản, người tiêu dùng hoàn toàn có thể tự làm. Sau khi ngâm nở nếu để trong tủ lạnh thì có thể bảo quản tới 10 ngày. Ngâm tổ yến trong nước sạch để có thể lấy ra được lông chim và các tạp chất khác trong các loại tổ khác nhau sẻ có thời gian ngâm khác nhau thường thì 3h trở lên. Tổ càng có chất lượng tốt thì có thời gian ngâm lâu hơn. Sau khi ngâm kích thướt tổ sẻ lớn hơn rất nhiều so với trước khi ngâm. Loại tổ yến tự nhiên thường có lẫn tạp chất và lông chim, do đó ta nên sử dụng dòng nước chảy và nhíp để làm sạch tổ.</p>\n<p>Đầu tiên ngâm nở tổ yến trong nước khoản 600C. Khi ngâm cần lưu ý nước phải ngậm tổ yến để tổ yến hút đủ lượng nước cần thiết.</p>\n<p>Dùng nhíp để lấy sạch lông chim và tạp chất ra khỏi tổ yến. Nếu yến vẫn còn nguyên tổ quý khách tách thành từng sợi sau đó cho yến vào tay, đặt tay vào tô nước dùng muỗn khuấy đều nhẹ nhưng đồng thời nhấc lên nhấc xuống lông tơ yến sẻ theo nước ra ngoài. Thay nước 4-5 lần, quý khách sẻ có tổ yến trắng sạch.</p>\n<p><strong><span style="color:#0000ff;">Với tổ yến đã làm sạch ra khỏi nước để một lúc cho ráo.</span></strong></p>\n<p>Dùng hai nồi có kích thướt khác nhau để chưng tổ yến. Cho một ít nước sôi vào nồi nhỏ đổ đầy nước vào nồi lớn cho tổ yến đã làm sạch vào nồi nhỏ đun lửa nhỏ. Thời gian chưng tùy thuột vào loại tổ yến nếu chưng quá lâu tổ yến sẻ mền và nát vụn.</p>\n<p>Thời điểm ăn yến sào là lúc bụng đói vào buổi sáng hoặc buổi tối trước khi đi ngủ để dưỡng chất được hấp thụ tốt nhất.</p>', '', 'yen-sao-chong-lao-hoa-da-cho-phu-nu', '', '', '', 0, 1, 0, '', '', 1, 204);

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
) ENGINE=InnoDB  DEFAULT CHARSET=utf8 AUTO_INCREMENT=388 ;

--
-- Dumping data for table `dos_module_news_cat`
--

INSERT INTO `dos_module_news_cat` (`cat_id`, `cat_parent_id`, `cat_title`, `cat_titleen`, `preview`, `previewen`, `tag`, `tagen`, `description`, `descriptionen`, `pic_full`, `cat_order`, `cat_extra1`, `cat_extra2`, `cat_enable`, `dos_usernames_username`) VALUES
(204, 0, 'Cẩm Nang Yến Sào', '', '', '', 'cam-nang-yen-sao', '', '', '', 'cam-nang-yen-sao.jpg', 1, '', '', 1, 'muayensao'),
(384, 0, 'Tác dụng của yến sào', '', '', '', 'tac-dung-cua-yen-sao', '', '', '', '', 2, '', '', 1, 'muayensao'),
(385, 384, 'Chữa bệnh', '', '', '', 'chua-benh', '', '', '', '', 3, '', '', 1, 'muayensao'),
(386, 384, 'Nâng cáo sức khỏe', '', '', '', 'nang-cao-suc-khoe', '', '', '', '', 4, '', '', 1, 'muayensao'),
(387, 0, 'Lịch sử của yến sáo', '', '', '', 'lich-su-cua-yen-sao', '', '', '', '', 5, '', '', 1, 'muayensao');

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
('day_time', 2456184),
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
('''127.0.0.1''', 1347516751);

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
) ENGINE=InnoDB  DEFAULT CHARSET=utf8 AUTO_INCREMENT=5494 ;

--
-- Dumping data for table `dos_module_products`
--

INSERT INTO `dos_module_products` (`record_id`, `title`, `titleen`, `postdate`, `pic_thumb`, `pic_full`, `pic_desc`, `preview`, `previewen`, `content`, `contenten`, `tag`, `tagen`, `description`, `descriptionen`, `hits`, `record_order`, `unit`, `hot`, `specials`, `extra_field1`, `extra_field2`, `extra_field3`, `extra_field4`, `enable`, `dos_module_item_cat_cat_id`) VALUES
(5482, 'Yến đảo trắng còn nguyên', '', '2012-07-15 23:47:44', 'yen-dao-trang-con-nguyen-to-thumb.jpg', 'yen-dao-trang-con-nguyen-to.jpg', '', '<p>MSP : YTNT01</p>', '', '<p><strong>Yến đảo trắng còn nguyên tổ ( <span style="color:#ff0000;">7.500.000 đến 7.800.000 VND/100Gr</span> )</strong></p>\n<p>Yến trắng đẹp, thân dày và tròn, còn nguyên tổ, nở nhiều trong nước, nguồn yến được lấy trực tiếp từ Khánh Hòa, HộiAn ..., luôn đạt chất lượng tốt nhất và độ khô tối đa, luôn có tại cửa hàng.</p>', '', 'yen-dao-trang-con-nguyen', '', '', '', 0, 12, '', 0, 0, '', '', '', '', 1, 972),
(5483, 'yến huyết còn nguyên tổ', '', '2012-07-15 23:49:11', 'to-yen-huyet-con-nguyen-to-thumb.jpg', 'to-yen-huyet-con-nguyen-to.jpg', '', '<p>MSP : YHNT01</p>', '', '<p><strong>Tổ yến huyết còn nguyên tổ (<span style="color:#ff0000;">giá 15.000.000 đến 15.200.000 VNĐ</span>)</strong></p>\n<p>Yến màu đỏ và đỏ nâu còn nguyên tổ, do chim yến làm tổ trên lớp đá vôi, hấp thụ khoáng và các chất vi lượng từ đá, rất tốt cho người đang bệnh nặng. Nở nhiều trong nước, nguồn Yến được lấy trực tiếp từ Khánh Hòa, Hội An, các tỉnh miền trung Việt Nam, luôn đạt chất lượng tốt nhất và độ khô tối đa, luôn có tại cửa hàng.</p>', '', 'yen-huyet-con-nguyen-to', '', '', '', 0, 11, '', 0, 0, '', '', '', '', 1, 972),
(5484, 'Yến còn nguyên tổ', '', '2012-07-15 23:50:31', 'yen-con-nguyen-to-thumb.jpg', 'yen-con-nguyen-to.jpg', '', '<p>MSP : YNT01</p>', '', '<p>MSP : YNT01</p>', '', 'yen-con-nguyen-to', '', '', '', 0, 10, '', 0, 0, '', '', '', '', 1, 972),
(5485, 'Tổ Yến nhà còn nguyên', '', '2012-07-15 23:54:03', 'to-yen-nha-con-nguyen-thumb.jpg', 'to-yen-nha-con-nguyen.jpg', '', '<p>MSP : YNNT01</p>', '', '<p><strong>Yến nhà tổ trắng, còn nguyên tổ (<span style="color:#ff0000;">3.700.000 đến 4.800.000 VND/100Gr</span>)</strong></p>\n<p>Yến trắng đẹp, thân mỏng và dài, còn nguyên tổ, nở nhiều trong nước, nguồn yến được lấy trực tiếp từ các nhà yến tại Khánh Hòa, Hội An và các tỉnh miền trung Việt Nam, luôn đạt chất lượng tốt nhất và độ khô tối đa, luôn có tại cửa hàng.</p>', '', 'to-yen-nha-con-nguyen', '', '', '', 0, 9, '', 0, 0, '', '', '', '', 1, 971),
(5486, 'Yến đảo đã làm sạch', '', '2012-07-15 23:55:58', 'yen-dao-da-lam-sach-thumb.jpg', 'yen-dao-da-lam-sach.jpg', '', '<p>MSP : YDLS01</p>', '', '<p><strong>Yến đảo đã làm sạch (<span style="color:#ff0000;">giá 6.200.000 VNĐ/ 100gr</span>)</strong></p>\n<p>Có hộp 50gr</p>', '', 'yen-dao-da-lam-sach', '', '', '', 0, 8, '', 0, 0, '', '', '', '', 1, 970),
(5487, 'Yến nhà đã làm sạch', '', '2012-07-16 00:02:11', 'yen-nha-da-lam-sach-thumb.jpg', 'yen-nha-da-lam-sach.jpg', '', '<p>MSP : YNLS01</p>', '', '<p><strong>Yến nhà đã làm sạch (<span style="color:#ff0000;">4.000.000 VND/100Gr</span>)</strong></p>\n<p>Yến trắng đẹp, được đóng thành bánh nhỏ, dễ sử dụng, đã được làm sạch lông, nở nhiều trong nước, nguồn yến được lấy trực tiếp từ các nhà yến các tỉnh miền trung Việt Nam, luôn đạt chất lượng tốt nhất và độ khô tối đa, luôn có tại cửa hàng.</p>', '', 'yen-nha-da-lam-sach', '', '', '', 0, 6, '', 0, 0, '', '', '', '', 1, 970),
(5488, 'Yến đảo sơ chế loại 2', '', '2012-07-16 00:27:55', 'yen-dao-so-che-loai-2-thumb.jpg', 'yen-dao-so-che-loai-2.jpg', '', '<p>Chi tiết sản phẩm</p>', '', '<p>Chi tiết sản phẩm</p>', '', 'yen-dao-so-che-loai-2', '', '', '', 0, 7, '', 0, 0, '', '', '', '', 1, 972),
(5489, 'Tổ huyết yến thô', '', '2012-07-16 00:29:24', 'to-huyet-yen-tho-thumb.jpg', 'to-huyet-yen-tho.jpg', '', '<p>Chi tiết sản phẩm</p>', '', '<p>Chi tiết sản phẩm</p>', '', 'to-huyet-yen-tho', '', '', '', 0, 5, '', 0, 0, '', '', '', '', 1, 970),
(5490, 'Huyết yến tinh chế loại 1', '', '2012-07-16 00:30:27', 'huyet-yen-tinh-che-loai-1-thumb.jpg', 'huyet-yen-tinh-che-loai-1.jpg', '', '<p>Chi tiết sản phẩm</p>', '', '<p>Chi tiết sản phẩm</p>', '', 'huyet-yen-tinh-che-loai-1', '', '', '', 0, 4, '', 0, 0, '', '', '', '', 1, 970),
(5491, 'Chè yến bạch quả', '', '2012-07-16 00:31:34', 'che-yen-bach-qua-thumb.jpg', 'che-yen-bach-qua.jpg', '', '<p>Chi tiết sản phẩm</p>', '', '<p>Chi tiết sản phẩm</p>', '', 'che-yen-bach-qua', '', '', '', 0, 3, '', 0, 0, '', '', '', '', 1, 1044),
(5492, 'Chè yến thập cẩm', '', '2012-07-16 00:32:27', 'che-yen-thap-cam-thumb.jpg', 'che-yen-thap-cam.jpg', '', '<p>Chi tiết sản phẩm</p>', '', '<p>Chi tiết sản phẩm</p>', '', 'che-yen-thap-cam', '', '', '', 0, 2, '', 0, 0, '', '', '', '', 1, 1044),
(5493, 'Chè yến táo', '', '2012-07-16 00:35:12', 'che-yen-tao-thumb.jpg', 'che-yen-tao.jpg', '', '<p>Chi tiết sản phẩm</p>', '', '<p>Chi tiết sản phẩm</p>', '', 'che-yen-tao', '', '', '', 0, 1, '', 0, 0, '', '', '', '', 1, 1044);

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
) ENGINE=InnoDB  DEFAULT CHARSET=utf8 AUTO_INCREMENT=1783 ;

--
-- Dumping data for table `dos_module_products_cat`
--

INSERT INTO `dos_module_products_cat` (`cat_id`, `cat_parent_id`, `cat_title`, `cat_titleen`, `preview`, `previewen`, `tag`, `tagen`, `description`, `descriptionen`, `pic_full`, `pic_desc`, `cat_order`, `cat_extra1`, `cat_extra2`, `cat_enable`, `dos_usernames_username`) VALUES
(970, 0, 'Tổ Yến Đã Làm Sạch', '', '', '', 'to-yen-da-lam-sach', '', '', '', 'to-yen-a-lam-sach.jpg', '', 4, '', '', 1, 'muayensao'),
(971, 0, 'Tổ Yến Nhà', '', '', '', 'to-yen-nha', '', '', '', 'to-yen-nha.jpg', '', 6, '', '', 1, 'muayensao'),
(972, 0, 'Tổ Yến Đảo', '', '', '', 'to-yen-dao', '', '', '', 'to-yen-ao.jpg', '', 4, '', '', 1, 'muayensao'),
(1044, 0, 'Món Ăn Từ Yến', '', '', '', 'mon-an-tu-yen', '', '', '', 'mon-n-tu-yen.jpg', '', 4, '', '', 1, 'muayensao'),
(1780, 0, 'Yến khánh hòa', '', '', '', 'yen-khanh-hoa', '', '', '', '', '', 7, '', '', 1, 'muayensao'),
(1781, 1780, 'Tổ yến nhà aaa', '', '', '', 'to-yen-nha-aaa', '', '', '', '', '', 8, '', '', 1, 'muayensao'),
(1782, 1780, 'Tổ yến đã làm sạch ddd', '', '', '', 'to-yen-da-lam-sach-ddd', '', '', '', '', '', 9, '', '', 1, 'muayensao');

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
) ENGINE=InnoDB  DEFAULT CHARSET=utf8 AUTO_INCREMENT=212 ;

--
-- Dumping data for table `dos_module_services`
--

INSERT INTO `dos_module_services` (`record_id`, `title`, `titleen`, `preview`, `previewen`, `content`, `contenten`, `pic_full`, `hit`, `created`, `record_order`, `hot`, `extra_field1`, `extra_field2`, `tag`, `tagen`, `description`, `descriptionen`, `activated`, `dos_usernames_username`) VALUES
(209, 'Công dụng của yến sào', '', '', '', '<p><strong>Yến sào,</strong> theo dân gian vẫn gọi, hay tổ yến là tên một loại thực phẩm - dược phẩm nổi tiếng được tìm thấy trên vách đá, hang động nơi chim yến sinh sống.</p>\n<p>Tổ yến được kết tinh từ nước bọt được tiết ra từ cặp tuyến dưới lưỡi chim yến. Đây là một trong tám món ăn cao lương mĩ vị hay bát trân mà từ ngàn xưa đã được các vua chúa dùng trong các buổi yến tiệc, làm quà tặng cho nhau, xem như một tặng phẩm quý giá.</p>\n<p style="text-align:center;"><img src="/public/userfiles/image/muayensao/image/hnh11.jpg" alt="" width="400" height="283" /></p>\n<p>Ngày nay, các nhà nghiên cứu khoa học trên thế giới và các chuyên gia dinh dưỡng trong nước đã nghiên cứu và một lần nữa khẳng định cho chúng ta thấy tổ yến là một loại thực phẩm có giá trị dinh dưỡng rất cao.</p>\n<p> </p>\n<p><img src="/public/userfiles/image/muayensao/image/h_10.jpg" alt="" width="99" height="100" />Yến sào cũng được cho là thần dược với tác dụng tăng cường hệ miễn dịch, tình dục, cải thiện giọng nói, tăng cường tập trung. Phục hồi nhanh các tế bào bị tổn thương, chống lão hóa, có tác dụng hỗ trợ điều trị các bệnh như lao phổi,viêm gan siêu vi B,C... tiêu đờm, ho, viêm phế quản mãn tính, suyễn, huyết áp cao, tiểu đường, đau dạ dày, mụn,nám, giảm khả năng bị cúm thường xuyên...</p>\n<p>Theo số liệu của Trung tâm Công nghệ Sinh học Đại học Thủy sản và Viện Công nghệ sinh học thuộc Trung tâm Khoa học Tự nhiên và công nghệ quốc gia, trong thành phần yến sào có 18 loại acid amin, một số có hàm lượng rất cao như Aspartic acid, Serine, Tyrosine, Phenylalanine, Valine, Arginine, Leucine, ... Đặc biệt, acid syalic với hàm lượng 8,6% và Tyrosine là những chất có tác dụng phục hồi nhanh chóng các tổn thương khi bị nhiễm xạ hay chất độc hại, kích thích sinh trưởng hồng cầu. Ngoài ra, yến sào có cấu trúc glucoprotein, có năng lượng cao, cơ thể dễ hấp thụ. Các nguyên tố đa, vi lượng trong yến sào rất phong phú, có đến 31 nguyên tố xuất hiện bằng phương pháp huỳnh quang tia X, rất giàu Ca và Fe là các khoáng chất cần thiết cho cơ thể.</p>\n<p>Các nguyên tố có ích cho ổn định thần kinh trí nhớ như Mn, Br, Cu, Zn cũng có hàm lượng cao. Một số nguyên tố hiếm tuy với hàm lượng thấp, nhưng rất quý giá trong kích thích tăng tiêu hóa hấp thu qua màng ruột như Cr, chống lão hóa, chống chất phóng xạ như Se..</p>\n<p>Qua đó chúng ta càng không ngạc nhiên về giá trị dinh dưỡng cao và quý giá của yến sào. Yến sào có tác dụng làm sạch phổi và các cơ quan hô hấp, làm giảm bệnh cúm và các triệu chứng dị ứng, làm tăng thể trọng, cân bằng các quá trình trao đổi chất trong cơ thể, tăng cường khả năng hoạt động thể lực và phản xạ thần kinh, bổ đối với hệ huyết học, làm tăng số lượng hồng cầu, huyết sắc tố, giảm thời gian đông máu, tăng cường các kích thích sinh trưởng cho các tế bào, phục hồi các tế bào bị thương tổn, chống lão hóa, hồi xuân, tăng tuổi thọ. Gần đây, khi nghiên cứu tác dụng của yến sào trong trường hợp cơ thể bị nhiễm chất độc hại, người ta nhận thấy yến sào hạn chế mức độ sút cân, phục hồi sức khoẻ nhanh , ổn định các chỉ tiêu huyết học. Người ta cũng đang nghiên cứu dùng yến sào điều trị các bệnh ung thư và HIV/AIDS vì phát hiện có một số hoạt chất sinh học kích thích sinh trưởng tế bào bạch cầu ngoại biên trong yến sào.</p>', '', '', 15, '2012-07-16 00:09:09', 1, 0, '', '', 'cong-dung-cua-yen-sao', '', '', '', 1, 'muayensao'),
(210, 'Khuyên dùng Yến sào', '', '', '', '<p><strong>NGƯỜI LỚN:</strong><br />- Những người ốm đau, bệnh tật (đặc biệt là đối với các bệnh nặng như ung thư, tiểu đường, viêm gan, chạy thận, hậu phẫu...)<br />- Người già sức khỏe yếu<br />- Người suy nhược cơ thể (ăn ngủ kém, mất ngủ, ăn không ngon)<br />- Người có hệ hô hấp kém, thở gấp, hay viêm họng, viêm mũi<br />- Người có hệ tiêu hóa kém, bị đường ruột</p>\n<p><strong>PHỤ NỮ</strong><br />- Phụ nữ mang bầu, sau sinh<br />- Phụ nữ muốn trẻ hóa, đẹp da</p>\n<p><strong>TRẺ EM</strong><br />- Trẻ em biếng ăn, suy dinh dưỡng, kém ăn (trẻ có thể ăn tổ yến từ khi biết ăn bột)<br />- Trẻ hay bị viêm họng, viêm mũi</p>\n<p><strong>LIỀU LƯỢNG:</strong></p>\n<p>- Người lớn: 5gr/1lần;<br />- Trẻ em: Dưới 2 tuổi: 1.5gr-2gr/lần;<br />- Trẻ em từ 2 tuổi trở lên: 2.5gr/lần;</p>\n<p><strong>1. Đối với người ốm hoặc đang suy nhược cơ thể, mệt mỏi:</strong></p>\n<p>- Ăn hàng ngày</p>\n<p>- Ăn cách ngày</p>\n<p>- Ăn 3 lần/ tuần</p>\n<p><strong>2. Đối với người khỏe mạnh, chỉ cần duy trì sức khỏe, tăng sức đề kháng: có thể ăn ít nhất 2 lần/1 tuần</strong></p>\n<p><strong>Lưu ý</strong><br />- Phụ nữ mang thai và trẻ em biết ăn bột đều dùng được.<br />- Những người huyết áp cao, huyết áp thấp, tim mạch, tiểu đường...đều sử dụng được.(có thể tham khảo thêm ý kiến bác sĩ)</p>\n<p>- Nên ăn vào buổi tối, trước khi đi ngủ.</p>\n<p>Tham khảo thêm CÔNG DỤNG để hiểu thêm tại sao chúng ta nên sử dụng tổ yến để giữ sức khoẻ và chống lão hoá</p>', '', '', 17, '2012-07-16 00:10:25', 2, 0, '', '', 'khuyen-dung-yen-sao', '', '', '', 1, 'muayensao'),
(211, 'Hướng dẫn ngâm tổ yến', '', '', '', '<p>Việc ngâm nở và chưng tổ yến khá đơn giản, người tiêu dùng hoàn toàn có thể tự làm. Sau khi ngâm nở nếu để trong tủ lạnh tổ yến có thể được bảo quản tới 10 ngày. Ngâm tổ yến trong nước để có thể lấy ra được lông chim và các tạp chất khác dính trong tổ, các loại tổ khác nhau có thời gian ngâm khác nhau thường thì 3 giờ trở lên. Tổ càng có chất lượng tốt thì đòi hỏi thời gian ngâm lâu hơn. Sau khi ngâm kích thước tổ sẽ lớn hơn rất nhiều so với trước khi ngâm. Loại tổ yến tự nhiên thường có lẩn tạp chất và lông chim do đó ta nên sử dụng dòng nước chảy và nhíp để làm sạch tổ.<br />1. Đầu tiên ngâm nở tổ trong nước khoảng 30oC.<br />Khi ngâm cần lưu ý nước phải ngập tổ để tổ yến hút đủ lượng nước cần thiết.<br />2. Dùng nhíp để lấy sạch lông chim và tạp chất ra khỏi tổ yến.<br />Nếu yến còn nguyên tổ Quý khách tách từng sợi sau đó cho yến vào ray, đặt ray vào tô nước dùng muỗng khuấy nhẹ đồng thời nhấc lên nhấc xuống lông tơ yến sẽ theo nước ra ngoài. Thay nước 4-5 lần. Quý khách sẽ có tổ yến trắng sạch.<br />3. Vớt tổ yến đã sạch ra khỏi nước để một lúc cho ráo<br />4. Dùng 1 cái nồi và 1 cái tô để chưng tổ yến.<br />Cho một ít nước sôi để nguội vào tô - đổ đầy nước vào nồi, cho tổ yến đã làm sạch vào tổ để đun lửa nhỏ.<br />Thời gian chưng tùy thuộc vào loại tổ yến, nếu chưng quá lâu, tổ yến rất mềm và dễ nát vụng</p>', '', '', 19, '2012-07-16 00:24:13', 3, 0, '', '', 'huong-dan-ngam-to-yen', '', '', '', 1, 'muayensao');

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
) ENGINE=InnoDB  DEFAULT CHARSET=utf8 AUTO_INCREMENT=218 ;

--
-- Dumping data for table `dos_module_supports`
--

INSERT INTO `dos_module_supports` (`support_id`, `support_name`, `support_nameen`, `support_phone`, `support_value`, `support_order`, `support_type`, `dos_usernames_username`) VALUES
(215, 'Hoàng Long', '', '0909206808', 'hoanglong808', 2, 'yahoo', 'muayensao'),
(216, 'Thiên Lý', '', '0908808004', 'lely1003', 0, 'yahoo', 'muayensao'),
(217, 'Minh Hoàng', '', '0984168117', 'hoangdiaoc', 1, 'yahoo', 'muayensao');

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
) ENGINE=InnoDB  DEFAULT CHARSET=utf8 AUTO_INCREMENT=97 ;

--
-- Dumping data for table `dos_module_video`
--

INSERT INTO `dos_module_video` (`record_id`, `title`, `titleen`, `postdate`, `tag`, `tagen`, `description`, `descriptionen`, `pic_thumb`, `url`, `record_order`, `hits`, `extra_field1`, `extra_field2`, `hot`, `enable`, `dos_module_item_cat_cat_id`) VALUES
(96, 'Chế Biến Yến Sào', '', '2012-07-27 07:55:34', 'che-bien-yen-sao', '', '', '', 'che-bien-yen-sao.jpg', 'http://www.youtube.com/watch?v=wF70WUFaU7c', 1, 0, '', '', 0, 1, 83);

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
) ENGINE=InnoDB  DEFAULT CHARSET=utf8 AUTO_INCREMENT=84 ;

--
-- Dumping data for table `dos_module_video_cat`
--

INSERT INTO `dos_module_video_cat` (`cat_id`, `cat_parent_id`, `pic_thumb`, `cat_title`, `cat_titleen`, `tag`, `tagen`, `description`, `descriptionen`, `cat_order`, `cat_enable`, `dos_usernames_username`) VALUES
(83, 0, '', 'Qui Trình Chế Biến Yến Sào', '', 'qui-trinh-che-bien-yen-sao', '', '', '', 1, 1, 'muayensao');

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
('keywords', 'Chuyên mua bán yến sào các loại,tổ yến giúp hạn chế sự phát triển của bệnh AIDS,,dinh dưỡng, khỏe mạnh và tăng trưởng', 'muayensao'),
('description', 'Chuyên mua bán yến sào các loại,tổ yến giúp hạn chế sự phát triển của bệnh AIDS,,dinh dưỡng, khỏe mạnh và tăng trưởng', 'muayensao'),
('title', 'Công Ty Cổ Phần Yến Quê Hương - Muayensao.com', 'muayensao'),
('analytics', '<script type="text/javascript">\r\n\r\n  var _gaq = _gaq || [];\r\n  _gaq.push([''_setAccount'', ''UA-30151015-12'']);\r\n  _gaq.push([''_trackPageview'']);\r\n\r\n  (function() {\r\n    var ga = document.createElement(''script''); ga.type = ''text/javascript''; ga.async = true;\r\n    ga.src = (''https:'' == document.location.protocol ? ''https://ssl'' : ''http://www'') + ''.google-analytics.com/ga.js'';\r\n    var s = document.getElementsByTagName(''script'')[0]; s.parentNode.insertBefore(ga, s);\r\n  })();\r\n\r\n</script>', 'muayensao');

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
('muayensao', 'minhhoangpkd@gmail.com', '25f9e794323b453885f5181f1b624d0b', '2012-07-13 06:39:16', 'Nguyễn Minh Hoàng', '0909802368', 'Công ty CP TM - DV BĐS Khang Danh', 'user', 'vi', '', '2012-10-10 16:00:00', 0, '20122012', '', 1, '160512', 30, 'am-thuc-drink');

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
('address1', 'R4 - 16 Đường Hưng Gia 3 - Phú Mỹ Hưng Q.7 Tp.HCM', '', 'muayensao'),
('address2', '', '', 'muayensao'),
('company_name', '', '', 'muayensao'),
('company_name_footer', 'Công Ty Cổ Phần Yến Quê Hương', '', 'muayensao'),
('company_phone', '0916 368 001 (Mr Hoàng)', '', 'muayensao'),
('copyright', 'Copyright © 2012 by Muayensao.com', '', 'muayensao'),
('services', 'Chế biết', '', 'muayensao');

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
