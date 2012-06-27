-- phpMyAdmin SQL Dump
-- version 3.4.5
-- http://www.phpmyadmin.net
--
-- Host: localhost
-- Generation Time: Jun 27, 2012 at 03:37 AM
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
('logo_height', 125, '', '010312'),
('logo_width', 167, '', '010312'),
('max_image_height', 667, '', '010312'),
('max_image_width', 500, '', '010312'),
('news_cat_height', 100, '', '010312'),
('news_cat_width', 143, '', '010312'),
('news_height_thumb', 100, '', '010312'),
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
('about', 'chaugiangthanh'),
('advs', 'chaugiangthanh'),
('banner', 'chaugiangthanh'),
('contact', 'chaugiangthanh'),
('news', 'chaugiangthanh'),
('products', 'chaugiangthanh'),
('services', 'chaugiangthanh'),
('supports', 'chaugiangthanh'),
('video', 'chaugiangthanh');

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
) ENGINE=InnoDB  DEFAULT CHARSET=utf8 AUTO_INCREMENT=194 ;

--
-- Dumping data for table `dos_module_abouts`
--

INSERT INTO `dos_module_abouts` (`record_id`, `title`, `titleen`, `content`, `contenten`, `hit`, `created`, `record_order`, `hot`, `extra_field1`, `extra_field2`, `tag`, `tagen`, `description`, `descriptionen`, `activated`, `dos_usernames_username`) VALUES
(192, 'GIỚI THIỆU', '', '<p><strong>NÓI VỀ CHÚNG TÔI</strong><br /><span style="color:#ff0000;font-size:10pt;"><strong>Công ty Châu Giang Thành</strong> </span><strong><span style="font-size:10pt;">được thành lập từ năm 2006. Gồm những chuyên gia trong lĩnh vực luật và kinh tế. Chúng tôi chuyên về dịch vụ và tư vấn hỗ trợ cho doanh nghiệp trong quá trình hoạt động kinh doanh trên toàn quốc.</span></strong><br /><strong><span style="font-size:10pt;">Sau nhiều năm hoạt động Công ty Chúng tôi không ngừng thay đổi và cải tiến để tạo nên những dịch vụ có giá trị chất lượng, mang lại cho Quý doanh nghiệp một giá trị gia tăng đích thực, trong các quan hệ dịch vụ của chúng tôi.</span></strong><br /><span style="font-size:10pt;"><strong>Chúng tôi luôn cam kết rằng khi quý doanh nghiệp tham gia các dịch vụ của chúng tôi luôn đảm bảo về : "</strong><span style="color:#000000;"><strong><span style="color:#ff0000;"> Độ chính xác - Nhanh chóng - Hiệu quả cao nhất</span>" với </strong></span><strong>"Chi phí cạnh tranh nhấ</strong>t<strong>". Và hơn thế nữa chúng tôi luôn đưa ra những giải pháp tối ưu để quý khách lựa chọn, chúng tôi sẵn lòng tư vấn và hướng dẫn để quý vị tư đi làm mà không phải mất một chi phí nào.</strong></span><br /><strong><span style="font-size:10pt;">Chúng tôi luôn tự hào là "<span style="color:#0000ff;">Làm như đã nói</span>".</span></strong><br /><strong><span style="font-size:10pt;">Cảm ơn quý công ty, các nhà doanh nghiệp đã ghé qua trang điện tử của chúng tôi. Công ty chúng tôi kính chúc quý vị thành công và sức khỏe.</span></strong><br /><span style="color:#0000ff;"><strong><span style="font-size:10pt;">Hãy tham gia "dịch vụ" của chúng tôi để cảm nhận được giá trị đích thực.</span></strong></span><br /><strong><span style="font-size:10pt;">Trân trọng cảm ơn và hợp tác.</span></strong></p>\n<p style="text-align:center;"><span style="font-size:11pt;"><strong><span style="color:#ff0000;">CÔNG TY CHÂU GIANG THÀNH</span></strong></span></p>\n<p style="text-align:center;"><span style="color:#0000ff;"><strong><span style="font-size:11pt;">BAN GIÁM ĐỐC</span></strong></span></p>', '', 69, '2012-06-26 02:13:08', 1, 1, '', '', 'gioi-thieu', '', 'Công ty Châu Giang Thành được thành lập từ năm 2006. Gồm những chuyên gia trong lĩnh vực luật và kinh tế. Chúng tôi chuyên về dịch vụ và tư vấn hỗ trợ cho doanh nghiệp trong quá trình hoạt động kinh doanh trên toàn quốc.', '', 1, 'chaugiangthanh'),
(193, 'Lĩnh vực hoạt động', '', '<p><strong><span style="font-size:11pt;color:#ff0000;">Công ty Châu Giang Thành hoạt động lĩnh vực chủ yếu là tư vấn và dịch vụ :</span></strong></p>\n<p><strong><span style="font-size:11pt;color:#ff0000;">Gồm :</span></strong></p>\n<p><strong>1.Tư vấn hướng dẫn và soan thảo hồ sơ thành lập mới doanh nghiệp, chi nhánh, văn phòng đại diện ...vv trong nứơc và có vốn của nhà đầu tư nước ngòai.</strong></p>\n<p><strong>2.Thay đổi nội dung đăng ký trong quá trình kinh doanh.</strong></p>\n<p><strong>3.Giải thể và chấm dứt hoạt động kinh doanh.</strong></p>\n<p><strong>4.Kê khai thuế hàng tháng, hàng quý...</strong></p>\n<p><strong>5.Viết sổ sách và in sổ kế toán</strong></p>\n<p><strong>6.Lập báo cáo tài chính quý, năm.</strong></p>\n<p><strong>7.Quyết toán thuế, giải trình thuế.</strong></p>\n<p><strong>8.Đăng ký lao động, thang bảng lương, đăng ký bảo hiểm XH, YT, TN.</strong></p>\n<p><strong>9.Hướng dẫn làm kế toán thực tế, hướng dẫn ôn thi CC ngoại ngữ, tin học A-B.</strong></p>\n<p><strong>10.Tư vấn vay vốn ngân hàng.</strong></p>\n<p><strong>11.Hướng dẫn mua bán, tặng cho, thừa kế di sản, di chúc nhà đất.</strong></p>\n<p><strong>12.Dịch vụ hành chính công khác : Hộ chiếu, CMND, ISO, Nhãn hiệu hàng hóa ....</strong></p>\n<p><strong>13.Và hơn thế nữa.</strong></p>', '', 12, '2012-06-26 02:37:50', 2, 0, '', '', 'linh-vuc-hoat-dong', '', '', '', 1, 'chaugiangthanh');

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
) ENGINE=InnoDB  DEFAULT CHARSET=utf8 AUTO_INCREMENT=245 ;

--
-- Dumping data for table `dos_module_advs`
--

INSERT INTO `dos_module_advs` (`record_id`, `title`, `titleen`, `pic_thumb`, `url`, `create_date`, `start_date`, `end_date`, `hits`, `record_order`, `position`, `type`, `enable`, `dos_usernames_username`) VALUES
(235, 'Tra cứu doanh nghiệp', '', 'tra-cuu-doanh-nghiep.jpg', 'http://www.dangkykinhdoanh.gov.vn/', '2012-06-26 02:43:14', '2012-06-25 16:00:00', '2012-07-30 16:00:00', 0, 1, 'right', '_bank', 1, 'chaugiangthanh'),
(241, 'Công thư điện tử Bộ Tài Chính', '', 'cong-thu-dien-tu-bo-tai-chinh.jpg', 'http://www.mof.gov.vn/portal/page/portal/mof_vn', '2012-06-27 00:16:39', '2012-06-26 16:00:00', '2012-07-27 16:00:00', 0, 2, 'right', '_bank', 1, 'chaugiangthanh'),
(242, 'Nộp Tờ Khai Thuế Qua Mạng', '', 'nop-to-khai-thue-qua-mang.jpg', 'http://nhantokhai.gdt.gov.vn/ihtkk_nnt/home_public.jsp', '2012-06-27 00:19:47', '2012-06-26 16:00:00', '2013-06-25 16:00:00', 0, 3, 'right', '_bank', 1, 'chaugiangthanh'),
(243, 'SKHDT - Long An', '', 'skhdt-long-an.jpg', 'http://skhdt.longan.gov.vn/tabid/36/default.aspx', '2012-06-27 00:23:03', '2012-06-26 16:00:00', '2013-06-26 16:00:00', 0, 4, 'right', '_bank', 1, 'chaugiangthanh'),
(244, 'SỞ KẾ HOẠCH VÀ ĐẦU TƯ  TỈNH BÀ RỊA - VŨNG TÀU', '', 's-k-hoch-v-u-t--tnh-b-ra-vng-tu.png', 'http://sokhdt.baria-vungtau.gov.vn/', '2012-06-27 00:51:30', '2012-06-26 16:00:00', '2013-01-04 16:00:00', 0, 5, 'right', '_bank', 1, 'chaugiangthanh');

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
) ENGINE=InnoDB  DEFAULT CHARSET=utf8 AUTO_INCREMENT=1007 ;

--
-- Dumping data for table `dos_module_banners`
--

INSERT INTO `dos_module_banners` (`banner_id`, `banner_date`, `banner_name`, `banner_url`, `banner_link`, `banner_order`, `banner_type`, `position`, `enable`, `dos_usernames_username`) VALUES
(971, '2012-06-26 02:10:51', 'Logo', 'logo.png', '', 1, 'logo', 'default', 1, 'chaugiangthanh'),
(979, '2012-06-26 08:00:37', 'Banner trang chu 1', 'banner-trang-chu-1.jpg', 'http://chaugiangthanh.com', 2, 'banners', 'default', 1, 'chaugiangthanh'),
(980, '2012-06-26 08:01:44', 'banner2', 'bann2.jpg', 'http://chaugiangthanh.com', 3, 'banners', 'default', 1, 'chaugiangthanh'),
(981, '2012-06-26 08:02:05', 'banner3', 'banner3.jpg', 'http://chaugiangthanh.com', 4, 'banners', 'default', 1, 'chaugiangthanh'),
(982, '2012-06-26 08:02:45', 'banner4', 'banner4.jpg', 'http://chaugiangthanh.com', 5, 'banners', 'default', 1, 'chaugiangthanh'),
(983, '2012-06-26 08:03:05', 'banner1', 'banner1.jpg', 'http://chaugiangthanh.com', 6, 'banners', 'about', 1, 'chaugiangthanh'),
(984, '2012-06-26 08:03:21', 'banner2', 'banner2.jpg', 'http://chaugiangthanh.com', 7, 'banners', 'about', 1, 'chaugiangthanh'),
(985, '2012-06-26 08:04:52', 'banner3', 'banner39.jpg', 'http://chaugiangthanh.com', 8, 'banners', 'about', 1, 'chaugiangthanh'),
(986, '2012-06-26 08:05:14', 'banner4', 'banner47.jpg', 'http://chaugiangthanh.com', 9, 'banners', 'about', 1, 'chaugiangthanh'),
(987, '2012-06-26 08:05:37', 'banner1', 'banner18.jpg', 'http://chaugiangthanh.com', 10, 'banners', 'contact', 1, 'chaugiangthanh'),
(988, '2012-06-26 08:07:06', 'banner2', 'banner23.jpg', '', 11, 'banners', 'contact', 1, 'chaugiangthanh'),
(989, '2012-06-26 08:08:15', 'banner3', 'banner38.jpg', '', 12, 'banners', 'contact', 1, 'chaugiangthanh'),
(990, '2012-06-26 08:08:32', 'banner4', 'banner45.jpg', '', 13, 'banners', 'contact', 1, 'chaugiangthanh'),
(991, '2012-06-26 08:09:02', 'banner1', 'banner12.jpg', '', 14, 'banners', 'news', 1, 'chaugiangthanh'),
(992, '2012-06-26 08:09:18', 'banner2', 'banner27.jpg', '', 15, 'banners', 'news', 1, 'chaugiangthanh'),
(993, '2012-06-26 08:10:23', 'banner3', 'banner393.jpg', '', 16, 'banners', 'news', 1, 'chaugiangthanh'),
(994, '2012-06-26 08:10:44', 'banner4', 'banner43.jpg', '', 17, 'banners', 'news', 1, 'chaugiangthanh'),
(995, '2012-06-26 08:11:07', 'banner1', 'banner182.jpg', '', 18, 'banners', 'products', 1, 'chaugiangthanh'),
(996, '2012-06-26 08:11:25', 'banner2', 'banner29.jpg', '', 19, 'banners', 'products', 1, 'chaugiangthanh'),
(997, '2012-06-26 08:11:42', 'banner3', 'banner386.jpg', '', 20, 'banners', 'products', 1, 'chaugiangthanh'),
(998, '2012-06-26 08:13:07', 'banner4', 'banner457.jpg', '', 21, 'banners', 'products', 1, 'chaugiangthanh'),
(999, '2012-06-26 08:13:55', 'banner1', 'banner17.jpg', '', 22, 'banners', 'services', 1, 'chaugiangthanh'),
(1000, '2012-06-26 08:14:17', 'banner2', 'banner22.jpg', '', 23, 'banners', 'services', 1, 'chaugiangthanh'),
(1001, '2012-06-26 08:14:35', 'banner3', 'banner33.jpg', '', 24, 'banners', 'services', 1, 'chaugiangthanh'),
(1002, '2012-06-26 08:14:57', 'banner4', 'banner4579.jpg', '', 25, 'banners', 'services', 1, 'chaugiangthanh'),
(1003, '2012-06-26 08:15:11', 'banner1', 'banner14.jpg', '', 26, 'banners', 'video', 1, 'chaugiangthanh'),
(1004, '2012-06-26 08:15:26', 'banner2', 'banner26.jpg', '', 27, 'banners', 'video', 1, 'chaugiangthanh'),
(1005, '2012-06-26 08:15:38', 'banner3', 'banner333.jpg', '', 28, 'banners', 'video', 1, 'chaugiangthanh'),
(1006, '2012-06-26 08:15:51', 'banner4', 'banner436.jpg', '', 29, 'banners', 'video', 1, 'chaugiangthanh');

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
) ENGINE=InnoDB  DEFAULT CHARSET=utf8 AUTO_INCREMENT=27 ;

--
-- Dumping data for table `dos_module_contacts`
--

INSERT INTO `dos_module_contacts` (`record_id`, `title`, `titleen`, `content`, `contenten`, `create_date`, `record_order`, `hit`, `hot`, `tag`, `tagen`, `description`, `descriptionen`, `enable`, `dos_usernames_username`) VALUES
(26, 'Liên hệ với chúng tôi', '', '<p><span style="color:#0000ff;"><strong>CÔNG TY TNHH CHÂU GIANG THÀNH</strong></span></p>\n<p>Địa chỉ: 30/16 Gò Dầu, P. Tân Sơn Nhì, Q. Tân Phú, Hồ Chí Minh</p>\n<p>Điện thoại: 08. 3559 1327 - 62 74 39 59 - 22 46 16 26 - Fax: 08. 355 941 69</p>\n<p>Email: <a href="mailto:chaugiangthanhco@yahoo.com.vn">chaugiangthanhco@yahoo.com.vn</a></p>', '', '2012-06-26 03:01:28', 1, 0, 0, 'lien-he-voi-chung-toi', '', 'CÔNG TY TNHH CHÂU GIANG THÀNH\n\nĐịa chỉ: 30/16 Gò Dầu, P. Tân Sơn Nhì, Q. Tân Phú, Hồ Chí Minh\n\nĐiện thoại: 08. 3559 1327 - 62 74 39 59 - 22 46 16 26 - Fax: 08. 355 941 69', '', '1', 'chaugiangthanh');

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
('Trang chủ', '', 'default', '', 1, '', '', '', '', 'chaugiangthanh'),
('Giới thiệu', '', 'about', '', 2, '', '', '', '', 'chaugiangthanh'),
('Biểu mẫu', '', 'products', '', 3, '', '', '', '', 'chaugiangthanh'),
('Dịch vụ', '', 'services', '', 4, '', '', '', '', 'chaugiangthanh'),
('Tin chuyên mục', '', 'news', '', 5, '', '', '', '', 'chaugiangthanh'),
('Video', '', 'video', '', 6, '', '', '', '', 'chaugiangthanh'),
('Liên hệ', '', 'contact', '', 7, '', '', '', '', 'chaugiangthanh');

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
) ENGINE=InnoDB  DEFAULT CHARSET=utf8 AUTO_INCREMENT=253 ;

--
-- Dumping data for table `dos_module_news`
--

INSERT INTO `dos_module_news` (`record_id`, `title`, `titleen`, `postdate`, `pic_thumb`, `preview`, `previewen`, `content`, `contenten`, `tag`, `tagen`, `description`, `descriptionen`, `hits`, `record_order`, `hot`, `extra_field1`, `extra_field2`, `enable`, `dos_module_item_cat_cat_id`) VALUES
(245, 'Giới siêu giàu châu Á và đẳng cấp máy bay riêng', '', '2012-06-26 02:55:19', 'gioi-sieu-giau-chau--va-dang-cap-may-bay-rieng.jpg', '<p>Với giới siêu giàu ở châu Á, sở hữu một chiếc máy bay phản lực tư nhân đã trở thành biểu tượng đẳng cấp tối thượng.</p>', '', '<p>Với giới siêu giàu ở châu Á, sở hữu một chiếc máy bay phản lực tư nhân đã trở thành biểu tượng đẳng cấp tối thượng.</p>\n<p>Các nhà sản xuất máy bay phản lực chuyên phục vụ doanh nhân đang tìm cách thu hút hàng ngũ ngày càng tăng lên các tỉ phú và triệu phú đô la xuất hiện rất đông tại Hội chợ hàng không Singapore, đã đi tới hồi kết vào cuối tuần.</p>\n<p>Công ty Embraer của Brazil, vốn nhận đơn đặt hàng của minh tinh Thành Long (Jackie Chan) mua chiếc phản lực tư nhân Legacy 650, với màu trắng đỏ và vàng độc đáo, lấy cảm hứng từ loài rồng trong văn hóa Trung Quốc, đã đưa chiếc máy bay này tới triển lãm ở Singapore.</p>\n<p>Ngôi sao võ thuật Hong Kong, vốn có hàng lượng khổng lồ người hâm mộ ở Trung Quốc, đã được chọn làm đại sứ thương hiệu đầu tiên của hãng sản xuất máy bay. Chiếc máy bay 13 chỗ ngồi, với giá niêm yết 31,5 triệu USD, là một trong các phản lực tư nhân được trưng bày tại cuộc triển lãm, bên cạnh hãng Bombardier của Canada và Gulfstream Aerospace Corp ở Mỹ.</p>\n<p>"Châu Á - Thái Bình Dương, như mọi người điều biết, là một thị trường đang tăng trưởng rất tuyệt" - chủ tịch Embraer, ông Ernest Edwards, cho biết.</p>\n<p>Châu Á giờ là nơi trập trung tâm triệu phú thứ hai thế giới chỉ sau Mỹ, với Trung Quốc và Ấn Độ đang sản sinh ra những người giàu mới với tốc độ chóng mặt, theo một nghiên cứu do công ty Merrill Lynch Global Wealth Management &amp; Capgemini tiến hành.</p>\n<p>Các nhà sản xuất máy bay phản lực tư nhân đang chăm sóc một đội ngũ những người gọi là "có lượng tài sản siêu cao" và các gia đình với tài sản đầu tư có giá ít nhất 30 triệu USD.</p>\n<p>Con số của họ đã tăng lên 23.000 người trong năm 2010 ở châu Á, trong khi tạp chí Forbes ước tính riêng Trung Quốc đã có gần 150 tỉ phú.</p>\n<p>Một chiếc Phenom 1000 thuộc loại "nhập môn" do Embraer sản xuất có giá khởi điểm 4,055 triệu USD, một con số rất mời gọi, hấp dẫn với các khách hàng tiềm năng.</p>\n<p>Embraer kỳ vọng rằng họ sẽ bán được lượng máy bay trị giá 40 - 48 tỉ USD tại châu Á trong 10 năm tiếp theo, với một nửa là ở Trung Quốc.</p>\n<p>Công ty mang chiếc phản lực tư nhân đầu tiên tới châu Á cho một khách hàng không nêu danh hồi năm 2004 và giờ có 40 chiếc như vậy đang bay lượn trong vùng.</p>\n<p>Không muốn bị bỏ ngoài cuộc, Gulfstream đã mở văn phòng kinh doanh ở Bắc Kinh và thành lập một dự án đầu tư mạo hiểm để điều hành hoạt động sửa chữa, bảo dưỡng máy bay tư nhân tại sân bay quốc tế ở thủ đô Bắc Kinh.</p>\n<p>Đây sẽ là công ty sản xuất máy bay phản lực tư nhân đầu tiên cung cấp các dịch vụ bảo dưỡng, sửa chữa và đại tu cho khách hàng ở Trung Quốc. Chủ tịch Hỗ trợ Sản phẩm của Gulfstream, ông Mark Burn nói rằng về lâu dài dịch vụ sẽ mở rộng ra để giúp đưa công ty lên vị trí số 1 tại Trung Quốc về thị phần và danh tiếng.</p>\n<p>Gulfstream nói rằng gần nửa đơn đặt hàng của họ trong quý 3.2011 tới từ châu Á Thái Bình Dương và hơn 40 chiếc đã sử dụng tại Trung Quốc. Tháng 10 năm ngoái, Gulfstream mới nhận đơn đặt hàng bán 20 chiếc phản lực tư nhân cho công ty cho thuê máy bay Minsheng Leasing tại Trung Quốc.</p>\n<p>Muốn giành phần trong chiếc bánh ngọt Trung Quốc là công ty Sino Jet có trụ sở ở Hong Kong, một công ty chuyên về phản lực tư nhân đã được thành lập hồi tháng 5 năm ngoái bởi doanh nhân người Trung Quốc Jenny Lau, một ông trùm nhà băng.</p>\n<p>Công ty của Lau, được thuê bởi Jacky Chan để chăm sóc chiếc máy bay riêng của ông, còn cung cấp nhiều dịch vụ khác nhau cho khách hàng, từ bảo trì máy bay, tới việc cho thuê đội lái, lên lịch bay và tổ chức bữa ăn trong chuyến bay.</p>\n<p>"Tôi tin đây là một ngày công nghiệp đang bùng nổ ở Trung Quốc. Với lợi thế văn hóa và ngôi ngữ, chúng tôi nắm ưu thế tuyệt đối thông qua việc khởi động lĩnh vực làm ăn này" - Lau nói với AFP.</p>', '', 'gioi-sieu-giau-chau-a-va-dang-cap-may-bay-rieng', '', 'Với giới siêu giàu ở châu Á, sở hữu một chiếc máy bay phản lực tư nhân đã trở thành biểu tượng đẳng cấp tối thượng.', '', 0, 1, 0, '', '', 1, 157),
(246, 'Bộ Tài chính yêu cầu doanh nghiệp giải trình về giá sữa', '', '2012-06-26 02:58:12', 'bo-tai-chinh-yeu-cau-doanh-nghiep-giai-trinh-ve-gia-sua.jpg', '<p>Ngày 20.2, Bộ Tài chính đã có công văn số yêu cầu các công ty không đăng ký điều chỉnh tăng giá đối với mặt hàng sữa bột dành cho trẻ em dưới 6 tuổi khi các yếu tố hình thành giá không thay đổi.</p>', '', '<p>Ngày 20.2, Bộ Tài chính đã có công văn số yêu cầu các công ty không đăng ký điều chỉnh tăng giá đối với mặt hàng sữa bột dành cho trẻ em dưới 6 tuổi khi các yếu tố hình thành giá không thay đổi.</p>\n<p>Đối với sản phẩm sữa nước đã điều chỉnh tăng giá vừa từ 1.1.2012, các công ty phải báo cáo giải trình chi tiết tỷ lệ tăng giá, nguyên nhân tăng giá và gửi về Cục Quản lý giá trước ngày 15.3.2012.</p>\n<p>Cùng ngày, Bộ Tài chính chấp nhận cho tăng giá đối với mặt hàng sữa NAN HA NWHB019-4 12x400g của Công ty TNHH Nestle Việt Nam. Theo đó, sữa NAN HA NWHB019-4 12x400g sẽ tăng giá 12% kể từ ngày 1.3.2012 do giá nhập khẩu sữa tăng 25% dẫn đến giá vốn nhập khẩu tăng 16%. Hai mặt hàng còn lại là PRE NAN B NW026-1 12x400g VN và NAN AL 110 DS082-4 12x400g VN chưa được Bộ Tài chính cho phép tăng giá do giá nhập khẩu đầu vào không tăng, có mặt hàng còn giảm giá.</p>\n<p>Bộ Tài chính đang cân nhắc các phương án xử lý đối giá bán lẻ xăng dầu trong nước, khi giá thế giới tăng cao trong những tháng gần đây. Nguồn tin cho biết, cơ quan điều hành giá nghiêng về phương án giảm thuế nhập khẩu, vốn được giữ ở mức 4-5% trong vòng gần 2 tháng qua (thuế nhập khẩu xăng dầu đã được giữ ở mức 0% trong suốt 10 tháng trước đó).</p>\n<p>Việc xem xét các phương án xử lý đối với giá xăng dầu trong nước được Bộ Tài chính đặt ra trong bối cảnh giá nhập khẩu mặt hàng này từ Singapore tăng kể từ đầu năm và đặc biệt mạnh trong nửa đầu tháng 2. Trong đó, xăng RON 92 tăng mạnh nhất, tới 5,18% so với nửa đầu tháng 1 (trung bình 125,94USD/thùng)...?</p>', '', 'bo-tai-chinh-yeu-cau-doanh-nghiep-giai-trinh-ve-gia-sua', '', 'Ngày 20.2, Bộ Tài chính đã có công văn số yêu cầu các công ty không đăng ký điều chỉnh tăng giá đối với mặt hàng sữa bột dành cho trẻ em dưới 6 tuổi khi các yếu tố hình thành giá không thay đổi.', '', 0, 2, 0, '', '', 1, 156),
(247, 'Miễn thuế thu nhập cá nhân bậc 1 đến hết năm 2012', '', '2012-06-26 02:58:59', '', '<p>(TNO) Chiều 21.6, Quốc hội (QH) đã thông qua nghị quyết về ban hành một số chính sách thuế nhằm tháo gỡ khó khăn cho tổ chức và cá nhân.</p>', '', '<p>(TNO) Chiều 21.6, Quốc hội (QH) đã thông qua nghị quyết về ban hành một số chính sách thuế nhằm tháo gỡ khó khăn cho tổ chức và cá nhân.</p>\n<p>QH đồng ý miễn thuế thu nhập cá nhân từ ngày 1.7.2012 đến hết ngày 31.12.2012 đối với cá nhân có thu nhập tính thuế từ tiền lương, tiền công và từ kinh doanh đến mức phải chịu thuế ở bậc 1.</p>\n<p>Theo đó, cá nhân có thu nhập tính thuế từ tiền lương, tiền công và từ kinh doanh đến mức phải chịu thuế thu nhập cá nhân ở bậc 1 (có thu nhập tính thuế đến 5 triệu đồng, chiếm khoảng 73% số người đang nộp thuế hiện nay) sẽ được miễn trong vòng 6 tháng cuối năm. Nếu có người phụ thuộc, ngưỡng chịu thuế cũng sẽ tính thêm phần giảm trừ gia cảnh.</p>\n<p>Ngoài ra, QH đồng ý giảm 30% số thuế thu nhập doanh nghiệp (DN) phải nộp năm 2012 đối với: DN nhỏ và vừa (không bao gồm DN nhỏ và vừa kinh doanh trong lĩnh vực xổ số, bất động sản, chứng khoán, tài chính, ngân hàng, bảo hiểm, sản xuất hàng hóa, dịch vụ thuộc diện chịu thuế tiêu thụ đặc biệt, DN được xếp hạng 1, hạng đặc biệt thuộc tập đoàn kinh tế, tổng công ty); DN sử dụng nhiều lao động trong lĩnh vực sản xuất, gia công, chế biến: nông sản, lâm sản, thủy sản, dệt may, da giày, linh kiện điện tử; xây dựng công trình hạ tầng kinh tế - xã hội.</p>\n<p>Miễn thuế khoán (thuế giá trị gia tăng, thuế thu nhập cá nhân) và thuế thu nhập DN năm 2012 đối với: hộ, cá nhân kinh doanh nhà trọ - phòng trọ cho thuê đối với công nhân, người lao động, sinh viên, học sinh; hộ, cá nhân chăm sóc trông giữ trẻ; hộ, cá nhân, tổ chức cung ứng suất ăn ca cho công nhân - với điều kiện hộ, cá nhân, tổ chức này giữ ổn định mức giá cho thuê nhà trọ - phòng trọ, giá chăm sóc trông giữ trẻ và giá cung ứng suất ăn ca như cuối năm 2011.</p>\n<p>Cũng trong chiều nay, QH thông qua Nghị quyết của phê chuẩn quyết toán NSNN năm 2010.</p>\n<p>Theo đó: tổng số thu cân đối NSNN là 777.283 tỉ đồng; tổng số chi cân đối NSNN là 850.874 tỉ đồng, bao gồm cả số chi chuyển nguồn từ năm 2010 sang năm 2011; bội chi 109.191 tỉ đồng, bằng 5,5% tổng sản phẩm trong nước (GDP), không bao gồm số kết dư của ngân sách địa phương.</p>\n<p>Nguồn bù đắp bội chi ngân sách nhà nước: vay trong nước 68.967 tỉ đồng và vay ngoài nước 40.224 tỉ đồng.</p>', '', 'mien-thue-thu-nhap-ca-nhan-bac-1-den-het-nam-2012', '', '(TNO) Chiều 21.6, Quốc hội (QH) đã thông qua nghị quyết về ban hành một số chính sách thuế nhằm tháo gỡ khó khăn cho tổ chức và cá nhân.', '', 0, 3, 0, '', '', 1, 156),
(248, 'Ngân hàng hạ lãi suất cho vay: Chờ tiếp cận vốn “rẻ” hơn', '', '2012-06-26 02:59:52', 'ngan-hang-ha-lai-suat-cho-vay-cho-tiep-can-von-re-hon.jpg', '<p>Dấu hiệu lãi suất cho vay đang rục rịch hạ nhiệt khi các “ông lớn” trong hệ thống ngân hàng công khai mức lãi suất mới</p>', '', '<p>Dấu hiệu lãi suất cho vay đang rục rịch hạ nhiệt khi các “ông lớn” trong hệ thống ngân hàng công khai mức lãi suất mới. Tuy nhiên, khách hàng vẫn chờ lãi suất cho vay hạ nhiệt đồng loạt và nguồn vốn giá rẻ hơn thực sự đến tay.</p>\n<p>Lãi suất “ngập ngừng” hạ nhiệt</p>\n<p>Ngân hàng TMCP Vietinbank, Vietcombank, BIDV đã áp dụng mức lãi suất cho vay hạ hơn so với mặt bằng lãi suất chung trên thị trường. Đại diện Vietinbank cho biết: Lãi suất cho vay thấp nhất áp dụng với cho vay nông nghiệp, nông thôn là 16,3%/năm.</p>\n<p>Hiện tại, Vietinbank vẫn đang duy trì các chương trình tài trợ cho xuất khẩu, nông nghiệp nông thôn, công nghiệp phụ trợ... với mức cho vay thấp hơn 2% so với lãi suất thông thường. BIDV cũng đã hạ mức cho vay xuất khẩu là 15%, còn lĩnh vực nông nghiệp nông thôn ở mức 15,5%.</p>\n<p>Theo ghi nhận của NTNN, ngoài một vài NH đã công bố mức lãi suất hạ nhiệt, còn lại hầu hết các NHTM vẫn đang trong tình trạng “nghe ngóng” thị trường bởi lo ngại hạ lãi suất vào thời điểm này sẽ gây nên sự “xáo trộn” đối với nguồn vốn của NH.</p>\n<p>Bình luận về khả năng hạ lãi suất cho vay đồng loạt ở các NHTM, TS Nguyễn Minh Phong - Viện Nghiên cứu phát triển kinh tế xã hội Hà Nội) cho rằng: “Đang có rất nhiều cơ sở để giảm lãi suất, vấn đề chỉ là quyết định của các NHTM”.</p>\n<p>Về nguyên nhân khiến các NHTM chưa tích cực hưởng ứng xu hướng hạ lãi suất cho vay, ông Phong lý giải: Có hai lý do chính. Thứ nhất sức cản lạm phát chưa rõ ràng. Mặc dù chỉ số tiêu dùng tháng 1 ở dưới ngưỡng 1% nhưng tháng 2, và các tháng tiếp theo sẽ không giảm sâu và có thể cao hơn mức này. Thứ hai, thanh khoản của các NH hiện nay vẫn đang chưa thật “vững”.</p>\n<p>Cùng chung quan điểm này, TS Nguyễn Trí Hiếu -chuyên gia tài chính, ngân hàng nhận định: “Rất khó dự báo thời điểm nào lãi suất sẽ hạ, bởi ngay cả khi ở mức cao như hiện nay, nhiều NH vẫn trong tình trạng căng thẳng thanh khoản do đó nguồn vốn để cho vay vẫn còn bị bó hẹp”.</p>\n<p>Đầu tuần qua, NHNN cũng đã thông báo chỉ tiêu tăng trưởng tín dụng năm 2012, chia theo 4 nhóm mà theo lãnh đạo một ngân hàng cổ phần nhận xét đây vừa là tín hiệu vừa là cơ sở để lãi suất cho vay có thể hạ trong thời gian tới.</p>\n<p>Tuy nhiên, một số ý kiến chuyên gia thì lạc quan khi cho rằng: 5 NH vừa được Thống đốc NHNN Nguyễn Văn Bình cho phép áp dụng tỷ lệ dự trữ bắt buộc bằng VND bằng 1/5 mức thông thường được kỳ vọng sẽ là những NH có nguồn vốn dôi dư để có thể hạ nhiệt lãi suất, cho vay lĩnh vực sản xuất, mà ưu tiên được tập trung vào lĩnh vực nông nghiệp, nông thôn.</p>\n<p>Chờ cơ hội vay vốn giá rẻ!</p>\n<p>TS Nguyễn Trọng Tài - Phó Viện trưởng Viện Nghiên cứu Khoa học NH (Học viện NH) khẳng định: Hạ lãi suất là điều cần làm nhất thời điểm này. Các doanh nghiệp đang mong ngóng, hy vọng khả năng vay được vốn “giá rẻ” trong thời gian sớm nhất.</p>\n<p>Tuy nhiên, việc lãi suất cho vay hạ nhiệt với mức như công bố của nhiều NH vẫn chưa phải là đảm bảo để khách hàng là nông dân và các doanh nghiệp trong lĩnh vực nông nghiệp, nông thôn có thế vay được nguồn vốn giá rẻ này.</p>\n<p>“Lãi suất giảm, không có nghĩa tất cả các hồ sơ của doanh nghiệp đều được chấp nhận, giải ngân bởi những yêu cầu khắt khe về thủ tục giấy tờ mà quan trọng nhất là sẽ phải chứng minh doanh nghiệp hoạt động ổn định, an toàn và đảm bảo có khả năng trả nợ” - ông Nguyễn Huy Hùng - Giám đốc một doanh nghiệp may mặc xuất khẩu ở Hà Nội cho biết.</p>\n<p>Ông Lê Đức Nam - chủ trang trại nuôi gà tại Hòa Bình cho biết, ông nhiều lần vay vốn của NH, nhưng trên thực tế rất hiếm khi vay được vốn với mức lãi suất “rẻ” như công bố. Trong quá trình làm hồ sơ, thủ tục thường khách hàng sẽ bị nâng mức lãi suất lên cao hơn bởi những tiêu chí khắt khe do NH yêu cầu mình không đáp ứng được.</p>\n<p>Để những chính sách ưu đãi lãi suất và nguồn vốn đối với lĩnh vực “tam nông” trở thành hiện thực và phát huy hiệu quả, khách hàng khu vực nông thôn, nông nghiệp được có trong tay nguồn vốn giá rẻ, theo các chuyên gia kinh tế vẫn rất cần những chính sách hỗ trợ từ phía NHNN.</p>\n<p>Và một trong những biện pháp hỗ trợ từ phía NHNN được kỳ vọng là sớm hiện thực hóa lời cam kết của Thống đốc NHNN khi định hướng cho vay lĩnh vực nông nghiệp, nông thôn: “Sẽ dành một phần tiền cung ứng cho tái cấp vốn để các tổ chức tín dụng cho vay nông nghiệp và phát triển nông thôn”.</p>', '', 'ngan-hang-ha-lai-suat-cho-vay-cho-tiep-can-von-re-hon', '', 'Dấu hiệu lãi suất cho vay đang rục rịch hạ nhiệt khi các “ông lớn” trong hệ thống ngân hàng công khai mức lãi suất mới', '', 0, 4, 0, '', '', 1, 156),
(249, 'TUYỂN THỰC TẬP KẾ TOÁN', '', '2012-06-27 00:04:07', '', '<p>Công ty chúng tôi hoạt động trong lĩnh vực tư vấn và dịch vụ. Do nhu cầu, Công ty chúng tôi thường xuyên tuyển dụng thực tập kế toán. Cụ thể như sau :</p>', '', '<p><strong>Công ty chúng tôi hoạt động trong lĩnh vực tư vấn và dịch vụ. Do nhu cầu, Công ty chúng tôi thường xuyên tuyển dụng thực tập kế toán. Cụ thể như sau :</strong></p>\n<p>- Số lượng : 100 Nam/Nữ</p>\n<p>- Điều kiện : Năm cuối hoặc đã tốt nghiệp chuyên ngành kế toán từ trung cấp trở lên.</p>\n<p>- Hồ sơ : Đơn xin thực tập; CMND Sao y; Thẻ SV hoặc giấy CN tốt nghiệp.</p>\n<p>- Thời gian tuyển dụng : Nộp hồ sơ từ thứ 2 - thứ 6 hằng tuần. Trong giờ hành chính.</p>\n<p>- Thực tập dự kiến : 2-3 tháng.</p>\n<p><strong>LH :</strong> 0913 100 223 Mr. Ngàn để biết thêm chi tiết</p>', '', 'tuyen-thuc-tap-ke-toan', '', 'Công ty chúng tôi hoạt động trong lĩnh vực tư vấn và dịch vụ. Do nhu cầu, Công ty chúng tôi thường xuyên tuyển dụng thực tập kế toán. Cụ thể như sau :', '', 0, 5, 0, '', '', 1, 159),
(250, 'Kỳ vọng gì về đầu tư gián tiếp trong năm 2012', '', '2012-06-27 00:05:50', 'ky-vong-gi-ve-dau-tu-gian-tiep-trong-nam-2012.jpg', '<p>Có lẽ 2011 là năm thất vọng nhất đối với dòng vốn đầu tư gián tiếp (FPI) chảy vào Việt Nam kể từ khi chúng ta trở thành thành viên của Tổ chức Thương mại thế giới (WTO).</p>', '', '<p>Có lẽ 2011 là năm thất vọng nhất đối với dòng vốn đầu tư gián tiếp (FPI) chảy vào Việt Nam kể từ khi chúng ta trở thành thành viên của Tổ chức Thương mại thế giới (WTO). Chứng khoán và bất động sản liên tục đi xuống, chưa thấy điểm dừng. Thị trường vay nợ bên ngoài gần như đóng băng do sự rắc rối từ khoản nợ của Vinashin.</p>\n<p>Liệu cơn mưa đã qua chưa để trời hửng sáng là điều được nhiều người quan tâm. Theo người viết, với những gì đang xảy ra trên thế giới và thực tế ở Việt Nam, chưa thể kỳ vọng có sự đột biến của dòng vốn FPI vào Việt Nam trong năm 2012.</p>\n<p>Tuy nhiên, nếu quyết tâm đảm bảo ổn định vĩ mô song song với việc cải thiện môi trường kinh doanh được duy trì thì bức tranh trong vài năm tới có khả năng sẽ sáng hơn.</p>\n<p>Bức tranh kinh tế toàn cầu vẫn chưa thể sáng</p>\n<p>Kinh tế Hoa Kỳ vẫn chưa thể thoát khỏi tình trạng trì trệ khi mà các động thái chính sách của cả hai đảng Dân chủ và Cộng hòa đều hướng đến tranh giành khả năng thắng cử trong cuộc đua vào Nhà trắng vào tháng 11 năm nay.</p>\n<p>Khả năng hai đảng cùng ngồi lại để đưa ra những chính sách cần thiết nhằm vực dậy nền kinh tế sẽ không cao. Xu hướng vẫn là giằng co và tranh giành ảnh hưởng.</p>\n<p>Đối với khu vực đồng euro, cả Thủ tướng Đức Merkel và Tổng thống Pháp Sarkozy đều thừa nhận rằng tình hình của khu vực này sẽ khó khăn trong thời gian tới. Goldman Sachs, một ngân hàng đầu tư hàng đầu trên thế giới, dự báo rằng khu vực châu Âu sẽ rơi vào suy thoái và chỉ có khả năng ổn định vào cuối năm 2012.</p>\n<p>Trong bốn nền kinh tế lớn nhất ở các nước đang phát triển (BRIC), có lẽ sẽ không có sự thay đổi đáng kể về chính sách ở Ấn Độ và Brazil, trong khi đó động thái “chờ” có thể xảy ra ở Trung Quốc và Nga.</p>\n<p>Ở trường hợp Trung Quốc, tuy ông Tập Cận Bình dường như chắc chắn sẽ là người kế nhiệm ông Hồ Cẩm Đào, nhưng vẫn còn nhiều ẩn số ở những vị trí chủ chốt khác. Ai lên, ai xuống sẽ ảnh hưởng đáng kể đến đường hướng kinh tế của nước này.</p>\n<p>Đối với Nga, khả năng ông Putin sẽ trở lại cương vị tổng thống gần như chắc chắn, nhưng cuộc bầu cử sắp tới là thước đo uy tín của người lãnh đạo nước Nga trong hơn một thập kỷ qua.</p>\n<p>Đỉnh điểm của mùa xuân Ả Rập đã qua, nhưng những dư chấn của nó vẫn đang kéo dài. Khả năng thêm một vài nước nữa mà trước mắt là Syria có sự thay đổi chế độ là rất cao. Định hình về địa chính trị trong khu vực này như thế nào vẫn đang là dấu hỏi lớn. Ai Cập vừa kỷ niệm một năm sự kiện này trong tình trạng chia rẽ sâu sắc.</p>\n<p>Sự qua đời của lãnh đạo Bắc Triều Tiên Kim Jong Il vừa đặt ra những thách thức cũng như cơ hội cho tam giác phát triển và cũng là động lực kinh tế của toàn thế giới gồm: Nhật Bản, Hàn Quốc và Trung Quốc. Nếu bức tranh theo chiều sáng thì dòng vốn sẽ chảy mạnh hơn vào khu vực này.</p>\n<p>Trong bối cảnh quốc tế như vậy, xu hướng chung của các nhà đầu tư quốc tế vẫn là phòng thủ và có lẽ không quan tâm nhiều đến các nền kinh tế còn nhỏ như Việt Nam.</p>\n<p>Chưa thể lạc quan với các yếu tố bên trong</p>\n<p>Thất bại của người này có thể là cơ hội cho người khác. Sự tuột dốc không phanh của chứng khoán và bất động sản đang đẩy nhiều doanh nghiệp đến bờ vực phá sản. Đây là cơ hội cho nhiều người.</p>\n<p>Do vậy, có giả thuyết cho rằng dòng vốn đầu tư gián tiếp sẽ quay trở lại. Việc mua bán, sáp nhập các doanh nghiệp, chuyển nhượng các dự án sẽ trở nên sôi động trong thời gian tới.</p>\n<p>Thực ra, có lẽ đây chỉ là cảm nhận của “người trong nhà” hay những nhà đầu tư đang ở Việt Nam. Góc nhìn từ bên ngoài có lẽ không lạc quan cho lắm. Các thông số vĩ mô căn bản vẫn chưa thể hiện xu hướng rõ ràng và các tín hiệu tích cực vẫn còn rất yếu.</p>\n<p>Bóng ma lạm phát, yếu tố gây ra bất ổn vĩ mô, xói mòn lòng tin và ảnh hưởng sức cạnh tranh của Việt Nam vẫn còn quá lớn. Thâm hụt ngân sách và thâm hụt thương mại đã được cải thiện, nhưng vẫn còn ở mức rất cao.</p>\n<p>Hơn thế, tuy đầu tư tính theo phần trăm GDP đã giảm, nhưng tỷ phần đầu tư công trong tổng đầu tư lại gia tăng. Đây chính là biểu hiện của sự chèn lấn và nguồn vốn chưa được sử dụng hiệu quả nhất.</p>\n<p>Điều đáng nói nhất là sự không nhất quán cộng với một số chính sách chữa cháy của chúng ta đã làm mai một rất nhiều lòng tin của các nhà đầu tư quốc tế.</p>\n<p>Cho dù đầu năm mới, nhưng vẫn phải nhắc lại rằng sự kiện chậm trả nợ của Vinashin đã tạo ra điểm đen rất lớn trong mắt các nhà đầu tư bên ngoài mà có lẽ phải một thời gian khá lâu mới có thể nhòa đi với điều kiện các chính sách của Việt Nam trong thời gian tới phải nhất quán hơn theo hướng đảm bảo ổn định vĩ mô và cải thiện môi trường kinh doanh.</p>\n<p>Tóm lại, cộng đồng các nhà đầu tư quốc tế, cho dù có “kinh nghiệm đầy mình” nhưng chủ yếu vẫn hành xử theo đám đông. Đây là cái khó của Việt Nam, ít nhất là trong ngắn hạn. Khi mô-men tích cực của năm 2007 đã bị bỏ lỡ, môi trường kinh tế vĩ mô trong nước trở nên bấp bênh hơn rất nhiều đã làm Việt Nam trở thành “địa điểm bị lãng quên” giống như Indonesia sau năm 1997.</p>\n<p>Điều này có khả năng sẽ làm cho dòng vốn gián tiếp, nhất là nguồn vốn của các nhà đầu tư lớn, chưa thể trở lại Việt Nam năm 2012 này.</p>', '', 'ky-vong-gi-ve-dau-tu-gian-tiep-trong-nam-2012', '', 'Có lẽ 2011 là năm thất vọng nhất đối với dòng vốn đầu tư gián tiếp (FPI) chảy vào Việt Nam kể từ khi chúng ta trở thành thành viên của Tổ chức Thương mại thế giới (WTO). Chứng khoán và bất động sản liên tục đi xuống, chưa thấy điểm dừng.', '', 0, 6, 0, '', '', 1, 156),
(251, 'Bộ Tài chính: Giảm thuế nhập khẩu xăng về 0%', '', '2012-06-27 00:07:23', 'bo-tai-chinh-giam-thue-nhap-khau-xang-ve-0.jpg', '<p>Từ ngày hôm nay 21.2, các mặt hàng xăng, dầu sẽ có mức thuế mới từ 0-3% thay vì 3-5% như hiện nay.</p>', '', '<p>Từ ngày hôm nay 21.2, các mặt hàng xăng, dầu sẽ có mức thuế mới từ 0-3% thay vì 3-5% như hiện nay.<br />Đây là nội dung của Thông tư số 25/2012/TT/BTC vừa được Thứ trưởng Bộ Tài chính Vũ Thị Mai ký ban hành sáng cùng ngày, nhằm giảm áp lực tăng giá bán trong nước.</p>\n<p>Cụ thể, giảm thuế suất thuế nhập khẩu xuống 0% tất cả mặt hàng xăng động cơ bao gồm: Các loại xăng Ron 90, Ron 97 và cao hơn, bao gồm cả mặt hàng xăng pha chì hay không pha chì. Trước đây, mức thuế suất với mặt hàng xăng ở mức 4%.</p>\n<p>Ngoài ra, mặt hàng dầu nhiên liệu gồm các loại Nhiên liệu động cơ máy bay cũng có thuế suất 0%.</p>\n<p>Với dầu diesel, Bộ Tài chính cũng thông báo, mặt hàng này cũng có mức thuế mới là 3% với nhiên liệu diesel cho ôtô và nhiên liệu diesel khác thay vì 5% như trước đây.</p>\n<p>Quyết định động thái này được Bộ Tài chính thực hiện trong bối cảnh trong suốt 20 ngày đầu tháng 2, giá nhập khẩu xăng tại Singapore liên tục tăng cao, có lúc vượt ngưỡng 130 USD/thùng, tăng gần 6% so với tháng 1. Theo tính toán của các doanh nghiệp, trong nửa đầu tháng 2, giá xăng dầu thế giới tăng 0,89%- 5,18%. Với giá bán hiện hành (20.800 đồng một lít xăng RON 92), theo phản ánh của doanh nghiệp, thì họ đang lỗ khoảng 1.000 đồng mỗi lít.</p>\n<p>Như vậy sau gần 2 tháng áp dụng mức 4-5% đối với các mặt hàng xăng dầu, Bộ Tài chính đã một lần nữa phải điều chỉnh thuế. Trước đó, lần điều chỉnh mức thuế suất với mặt hàng xăng, dầu gần nhất là cuối tháng 12.2011. Thời điểm ấy, sau 10 tháng được miễn thuế nhập khẩu các doanh nghiệp kinh doanh xăng dầu đã bắt đầu phải đóng thuế trở lại với mức 4-5% kể từ cuối tháng 12 năm ngoái.</p>', '', 'bo-tai-chinh-giam-thue-nhap-khau-xang-ve-0', '', 'Từ ngày hôm nay 21.2, các mặt hàng xăng, dầu sẽ có mức thuế mới từ 0-3% thay vì 3-5% như hiện nay.', '', 0, 7, 0, '', '', 1, 156),
(252, 'Lãi suất huy động vàng giảm mạnh', '', '2012-06-27 00:09:18', 'lai-suat-huy-dong-vang-giam-manh.png', '<p><strong>Lãi suất huy động vàng đã đồng loạt giảm mạnh từ đầu tuần qua. Đến hôm nay (26-6), lãi suất huy động chứng chỉ vàng chủ yếu dưới 1%, chỉ một số ngân hàng nhỏ huy động ở mức 2%/năm nhưng không phổ biến.</strong></p>', '', '<p><strong>Lãi suất huy động vàng đã đồng loạt giảm mạnh từ đầu tuần qua. Đến hôm nay (26-6), lãi suất huy động chứng chỉ vàng chủ yếu dưới 1%, chỉ một số ngân hàng nhỏ huy động ở mức 2%/năm nhưng không phổ biến.</strong></p>\n<p>Ngân hàng Nhà nước hôm nay cũng đã gửi công văn nhắc nhở các ngân hàng sớm ngưng huy động vàng.</p>\n<p>Tại Ngân hàng TMCP Sài Gòn (SCB), một trong những ngân hàng có mức lãi suất huy động vàng rất cao, có khi lên đến 4,6%/năm thì nay đã hạ xuống, cao nhất chỉ còn mức 2,2% dành cho kỳ hạn 6-9 tháng, còn lại chủ yếu ở mức 2%.</p>\n<p>Cũng từng huy động với lãi suất đến 4%/năm, nhưng nhân viên Ngân hàng Nam Á cho hay đến hôm nay lãi suất huy động vàng đã về mức 1,8% cho kỳ hạn 1 đến 3 tháng, các kỳ hạn dài hơn cũng chỉ khoảng 2%/năm.</p>\n<p>Còn tại Ngân hàng Á Châu (ACB), mức lãi suất huy động vàng đến nay chỉ còn cao nhất là 0,9%/năm, cho kỳ hạn 11 tháng, lãnh lãi cuối kỳ, trong khi lãi suất vào tháng trước thường xấp xỉ 2%. Tại Việt Á, Eximbank lãi suất huy động vàng cũng chỉ còn dao động từ 0,6-0,9%. Các ngân hàng cũng rút ngắn kỳ hạn huy động xuống, cao nhất chỉ còn 9 tháng.</p>\n<p>Theo lãnh đạo một ngân hàng, trong thời gian qua, nhiều ngân hàng nhỏ tăng lãi suất huy động vàng để tăng thanh khoản, dùng vàng làm tài sản thế chấp để vay tiền trên thị trường liên ngân hàng, nay việc vay vốn trên thị trường này không còn quá căng thẳng, thanh khoản nhiều ngân hàng cũng cải thiện, cộng vào đó, quy định các ngân hàng phải chấm dứt huy động vàng từ ngày 25-11 tới đã khiến các ngân hàng giảm bớt hoạt động huy động vàng.</p>\n<p>Trong ngày hôm qua, Ngân hàng Nhà nước (NHNN) đã ra văn bản yêu cầu các ngân hàng chấm dứt huy động và cho vay vốn bằng vàng đúng theo quy định tại Thông tư số 12/2012/TT-NHNN và Chỉ thị số 05/CT-NHNN (gia hạn thời gian được phép huy động vàng đến 25-11 thay vì phải chấm dứt vào ngày 1-5 vừa qua). NHNN cũng nói rõ là các ngân hàng chỉ phát hành chứng chỉ ngắn hạn bằng vàng với khối lượng cần thiết để đáp ứng nhu cầu chi trả theo yêu cầu của khách hàng khi số vàng thu nợ và tồn quỹ không đủ để chi trả và đảm bảo việc phát hành chứng chỉ ngắn hạn bằng vàng chấm dứt vào ngày 25-11.</p>\n<p>Đồng thời, nếu có nhu cầu phát hành chứng chỉ vàng, ngân hàng thương mại có trách nhiệm báo cáo trước cho NHNN (Vụ Quản lý ngoại hối) trong đó phải làm rõ sự cần thiết và mục đích của đợt phát hành. Đồng thời, có lộ trình giảm lãi suất huy động chứng chỉ ngắn hạn vàng ở mức phù hợp để giảm lượng vàng huy động.</p>\n<p>Cũng theo văn bản này, nếu NHNN phát hiện dấu hiệu vi phạm các quy định liên quan đến huy động và cho vay vốn bằng vàng của ngân hàng thương mại, cơ quan thanh tra, giám sát ngân hàng và NHNN chi nhánh tỉnh, thành phố sẽ tiến hành ngay việc kiểm tra, thanh tra ngân hàng đó.</p>\n<p>Văn bản cũng nói thêm rằng việc tuân thủ thời hạn chấm dứt hoạt động huy động và cho vay vốn bằng vàng theo quy định tại Thông tư 12 của các ngân hàng thương mại là một trong những cơ sở để xem xét cấp giấy phép kinh doanh mua bán vàng miếng cho các ngân hàng thương mại.</p>', '', 'lai-suat-huy-dong-vang-giam-manh', '', 'Lãi suất huy động vàng đã đồng loạt giảm mạnh từ đầu tuần qua. Đến hôm nay (26-6), lãi suất huy động chứng chỉ vàng chủ yếu dưới 1%, chỉ một số ngân hàng nhỏ huy động ở mức 2%/năm nhưng không phổ biến.', '', 0, 8, 0, '', '', 1, 156);

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
) ENGINE=InnoDB  DEFAULT CHARSET=utf8 AUTO_INCREMENT=161 ;

--
-- Dumping data for table `dos_module_news_cat`
--

INSERT INTO `dos_module_news_cat` (`cat_id`, `cat_parent_id`, `cat_title`, `cat_titleen`, `preview`, `previewen`, `tag`, `tagen`, `description`, `descriptionen`, `pic_full`, `cat_order`, `cat_extra1`, `cat_extra2`, `cat_enable`, `dos_usernames_username`) VALUES
(150, 0, 'Những trường hợp thường gặp', '', '', '', 'nhung-truong-hop-thuong-gap', '', 'Những trường hợp thường gặp', '', '', 1, '', '', 1, 'chaugiangthanh'),
(151, 0, 'Chuyên mục phạt thuế -  kế toán', '', '', '', 'chuyen-muc-phat-thue-ke-toan', '', 'Chuyên mục phạt thuế -  kế toán', '', '', 2, '', '', 1, 'chaugiangthanh'),
(152, 0, 'Chuyên mục Phí -  Lệ phí', '', '', '', 'chuyen-muc-phi-le-phi', '', 'Chuyên mục Phí -  Lệ phí', '', '', 3, '', '', 1, 'chaugiangthanh'),
(153, 0, 'Chuyên mục thuế GTGT', '', '', '', 'chuyen-muc-thue-gtgt', '', 'Chuyên mục thuế GTGT', '', '', 4, '', '', 1, 'chaugiangthanh'),
(154, 0, 'Chuyên mục hóa đơn -  chứng từ', '', '', '', 'chuyen-muc-hoa-don-chung-tu', '', 'Chuyên mục hóa đơn -  chứng từ', '', '', 5, '', '', 1, 'chaugiangthanh'),
(155, 0, 'Tin công ty', '', '', '', 'tin-cong-ty', '', 'Tin công ty', '', '', 6, '', '', 1, 'chaugiangthanh'),
(156, 0, 'Tin trong nước', '', '', '', 'tin-trong-nuoc', '', 'Tin trong nước', '', '', 7, '', '', 1, 'chaugiangthanh'),
(157, 0, 'Tin thế giới', '', '', '', 'tin-the-gioi', '', 'Tin thế giới', '', '', 8, '', '', 1, 'chaugiangthanh'),
(158, 0, 'Tin tức chuyên ngành', '', '', '', 'tin-tuc-chuyen-nganh', '', 'Tin tức chuyên ngành', '', '', 9, '', '', 1, 'chaugiangthanh'),
(159, 0, 'Tuyển dụng', '', '', '', 'tuyen-dung', '', 'Tuyển dụng', '', '', 10, '', '', 1, 'chaugiangthanh'),
(160, 154, 'Từ In và đặt in', '', '', '', 'tu-in-va-dat-in', '', 'Từ In và đặt in', '', '', 11, '', '', 1, 'chaugiangthanh');

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
('day_time', 2456106),
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
('''127.0.0.1''', 1340760308);

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
) ENGINE=InnoDB  DEFAULT CHARSET=utf8 AUTO_INCREMENT=2930 ;

--
-- Dumping data for table `dos_module_products`
--

INSERT INTO `dos_module_products` (`record_id`, `title`, `titleen`, `postdate`, `pic_thumb`, `pic_full`, `pic_desc`, `preview`, `previewen`, `content`, `contenten`, `tag`, `tagen`, `description`, `descriptionen`, `hits`, `record_order`, `unit`, `hot`, `specials`, `extra_field1`, `extra_field2`, `extra_field3`, `extra_field4`, `enable`, `dos_module_item_cat_cat_id`) VALUES
(2928, 'Doanh nghiệp tư nhân', '', '2012-06-26 07:54:31', '', '', '', '', '', '<p>Doanh nghiệp tư nhân, <a href="/public/userfiles/image/chaugiangthanh/file/phieu%20yeu%20cau%20cung%20cap%20hs_TLM.doc">tải form đăng ký tại đây</a></p>', '', 'doanh-nghiep-tu-nhan', '', 'Doanh nghiệp tư nhân', '', 0, 1, '', 0, 0, '', '', '', '', 1, 697),
(2929, 'Mẫu đăng ký tiền lương', '', '2012-06-26 07:59:02', '', '', '', '', '', '<p>Mẫu đăng ký tiền lương <span style="color:#0000ff;"><a href="/public/userfiles/image/chaugiangthanh/file/phieu%20yeu%20cau%20cung%20cap%20HS_Thay%20doi.doc"><span style="color:#0000ff;">tải mẫu</span></a></span></p>', '', 'mau-dang-ky-tien-luong', '', 'Mẫu đăng ký tiền lương tải mẫu', '', 0, 2, '', 0, 0, '', '', '', '', 1, 698);

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
) ENGINE=InnoDB  DEFAULT CHARSET=utf8 AUTO_INCREMENT=700 ;

--
-- Dumping data for table `dos_module_products_cat`
--

INSERT INTO `dos_module_products_cat` (`cat_id`, `cat_parent_id`, `cat_title`, `cat_titleen`, `preview`, `previewen`, `tag`, `tagen`, `description`, `descriptionen`, `pic_full`, `pic_desc`, `cat_order`, `cat_extra1`, `cat_extra2`, `cat_enable`, `dos_usernames_username`) VALUES
(697, 0, 'Mẫu đăng ký doanh nghiệp', '', '', '', 'mau-dang-ky-doanh-nghiep', '', 'Mẫu đăng ký doanh nghiệp', '', 'mau-dang-ky-doanh-nghiep.png', '', 1, '', '', 1, 'chaugiangthanh'),
(698, 0, 'Tiền lương và bảo hiểm', '', '', '', 'tien-luong-va-bao-hiem', '', 'Tiền lương và bảo hiểm', '', '', '', 2, '', '', 1, 'chaugiangthanh'),
(699, 0, 'Mẫu liên quan thuế', '', '', '', 'mau-lien-quan-thue', '', 'Mẫu liên quan thuế', '', 'mau-lien-quan-thue.jpg', '', 3, '', '', 1, 'chaugiangthanh');

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
) ENGINE=InnoDB  DEFAULT CHARSET=utf8 AUTO_INCREMENT=166 ;

--
-- Dumping data for table `dos_module_services`
--

INSERT INTO `dos_module_services` (`record_id`, `title`, `titleen`, `preview`, `previewen`, `content`, `contenten`, `pic_full`, `hit`, `created`, `record_order`, `hot`, `extra_field1`, `extra_field2`, `tag`, `tagen`, `description`, `descriptionen`, `activated`, `dos_usernames_username`) VALUES
(151, 'Thành lập mới Doanh Nghiệp', '', '', '', '<p style="text-align:left;"><span style="font-size:10pt;"><strong>Thành lập mới Doanh Nghiệp</strong></span><br /><span style="font-size:9pt;"><span style="font-size:10pt;"><strong>A./. Doanh nghiệp trong nước </strong></span>: Do cá nhân hay tổ chức trong nước bỏ vốn ra để thành lập doanh nghiệp và hoạt động theo luật Doanh nghiệp gồm : Doanh nghiệp tư nhân, Công ty TNHH một thành viên, Công ty TNHH hai thành viên trở lên, Công ty cổ phần, Công ty hợp doanh ...vv</span></p>\n<p style="text-align:center;"><br /><span style="font-size:14pt;"><strong>GỌI : 0913 100 223 ĐỂ ĐƯỢC TƯ VẤN</strong></span></p>\n<p style="text-align:center;"><span style="font-size:14pt;"><strong>HOẶC XEM CHI TIẾT</strong></span></p>\n<p><strong>1. Doanh nghiệp trong nước</strong></p>\n<p><strong>1.1 Doanh nghiệp tư nhân</strong></p>\n<p><strong>1.1.1</strong> <strong>Sơ lược về Doanh nghiệp tư nhân</strong> : Do một cá nhân bỏ vốn ra đầu tư và chịu trách nhiêm vô hạn tất cả các khoản nợ mà trong quá trình doanh nghiệp hoạt động, không căn cứ vào vốn đầu tư ghi trên giấy Chứng nhận đăng ký doanh nghiệp. DNTN có con dấu riêng, được mở tài khoản giao dịch ...vv. Nhưng Không có tư cách Pháp Nhân.</p>\n<p><strong>1.1.2 Thủ tục (Theo Nghị định số 43/2010/NĐ-CP ngày 15/4/2010 của Chính phủ về Đăng ký doanh nghiệp)</strong></p>\n<p> Giấy đề nghị đăng ký doanh nghiệp (do chủ doanh nghiệp ký) (mẫu quy định).<br /> Bản sao hợp lệ một trong các giấy tờ chứng thực cá nhân còn hiệu lực của của chủ doanh nghiệp tư nhân: Chứng minh nhân dân hoặc hộ chiếu;<br /> Văn bản xác nhận vốn pháp định của cơ quan, tổ chức có thẩm quyền đối với doanh nghiệp kinh doanh ngành, nghề mà theo quy định của pháp luật phải có vốn pháp định<br /> Bản sao hợp lệ chứng chỉ hành nghề của một hoặc một số cá nhân nếu doanh nghiệp kinh doanh ngành, nghề mà theo quy định của pháp luật phải có chứng chỉ hành nghề.</p>\n<p><strong>1.2</strong> <strong>Công ty TNHH MTV do cá nhân làm chủ sở hữu.</strong></p>\n<p><strong>1.2.1 Sơ lược về Công ty TNHH MTV</strong> : Công ty TNHH MTV do 1 cá nhân bỏ vốn ra thành lập doanh nghiệp, vốn này được gọi là vốn điều lệ, chủ sở hữu chịu trách nhiệm trên vốn đăng ký về các nghĩa vụ nợ; cá nhân bỏ vốn ra gọi là chủ sở hữu, chủ sở hữu có thể là người đại diện pháp luật hoặc thuê người khác làm đại diện pháp luật với chức danh giám đốc/tổng giám đốc. Có con dấu riêng, được mở tài khoản giao dịch…vv . Nhưng không có tư cách pháp nhân.</p>\n<p><strong>1.2.2 Thủ tục (Theo Nghị định số 43/2010/NĐ-CP ngày 15/4/2010 của Chính phủ về Đăng ký doanh nghiệp)</strong><br /> Giấy đề nghị đăng ký doanh nghiệp (do người đại diện theo pháp luật ký) (mẫu quy định);<br /> Dự thảo Điều lệ công ty (có đầy đủ chữ ký của chủ sở hữu công ty, người đại diện theo pháp luật) (mẫu tham khảo);<br /> Bản sao hợp lệ một trong các giấy tờ chứng thực cá nhân còn hiệu lực của chủ sở hữu công ty: Cá nhân có quốc tịch Việt Nam: Chứng minh nhân dân hoặc hộ chiếu;<br /> Văn bản xác nhận vốn pháp định của cơ quan, tổ chức có thẩm quyền đối với công ty kinh doanh ngành, nghề mà theo quy định của pháp luật phải có vốn pháp định<br /> Bản sao hợp lệ chứng chỉ hành nghề của một hoặc một số cá nhân nếu công ty kinh doanh ngành, nghề mà theo quy định của pháp luật phải có chứng chỉ hành nghề.</p>\n<p><strong>1.3 Công ty TNHH 2 thành viên trở lên</strong></p>\n<p><strong>1.3.1 Sơ lược về Công ty TNHH 2TV trở lên</strong> : Công ty TNHH 2TV trở lên do 2 hay nhiều cá nhân hoặc tổ chức bỏ vốn ra thành lập doanh nghiệp, vốn này được gọi là vốn điều lệ, Công ty chịu trách nhiệm trên vốn đăng ký về các nghĩa vụ nợ; có cơ cấu tổ chức . Có con dấu riêng, được mở tài khoản giao dịch…vv . Có tư cách pháp nhân</p>\n<p><strong>1.3.2 Thủ tục (Theo Nghị định số 43/2010/NĐ-CP ngày 15/4/2010 của Chính phủ về Đăng ký doanh nghiệp)</strong><br /> Giấy đề nghị đăng ký doanh nghiệp (do người đại diện theo pháp luật ký) (mẫu quy định);<br /> Dự thảo điều lệ công ty (phải có đầy đủ chữ ký của người đại diện theo pháp luật, của các thành viên hoặc người đại diện theo ủy quyền của thành viên) (mẫu tham khảo);<br /> Danh sách thành viên (mẫu quy định);<br /> Bản sao hợp lệ một trong các giấy tờ chứng thực cá nhân hoặc pháp nhân còn hiệu lực của tất cả thành viên, người đại diện theo pháp luật:<br />- Cá nhân có quốc tịch Việt Nam: Chứng minh nhân dân hoặc hộ chiếu.<br />- Nếu thành viên là tổ chức:<br />- Quyết định thành lập; Giấy chứng nhận đăng ký doanh nghiệp (hoặc Giấy chứng nhận đăng ký kinh doanh và Giấy chứng nhận đăng ký thuế hoặc Giấy chứng nhận đăng ký kinh doanh và đăng ký thuế).<br />- Một trong các giấy tờ chứng thực cá nhân theo khoản 4.1 nêu trên của người đại diện theo ủy quyền và quyết định ủy quyền tương ứng (tham khảo nội dung ủy quyền tại Điều 48 Luật Doanh nghiệp).<br /> Văn bản xác nhận vốn pháp định của cơ quan, tổ chức có thẩm quyền đối với công ty kinh doanh ngành, nghề mà theo quy định của pháp luật phải có vốn pháp định<br /> Bản sao hợp lệ chứng chỉ hành nghề của một hoặc một số cá nhân nếu công ty kinh doanh ngành, nghề mà theo quy định của pháp luật phải có chứng chỉ hành nghề</p>\n<p><strong>1.4 Công ty cổ phần</strong></p>\n<p><strong>1.4.1 Sơ lược về Công ty Cổ phần</strong> : Công ty cổ phần từ 3 cá nhân hoặc tổ chức bỏ vốn ra thành lập doanh nghiệp, vốn này được gọi là vốn điều lệ, số vốn này được chia thành nhiều phần bằng nhau được gọi là cổ phần. Công ty chịu trách nhiệm trên vốn đăng ký về các nghĩa vụ nợ; có cơ cấu tổ chức. Có con dấu riêng, được phát hành cổ phiếu khi lên sàn, được mở tài khoản giao dịch…vv . Có tư cách pháp nhân.</p>\n<p><strong>1.4.2 Thủ tục (Theo Nghị định số 43/2010/NĐ-CP ngày 15/4/2010 của Chính phủ về Đăng ký doanh nghiệp)</strong><br /> Giấy đề nghị đăng ký doanh nghiệp (do người đại diện theo pháp luật ký) (mẫu quy định);<br /> Dự thảo điều lệ công ty (phải có đầy đủ chữ ký của người đại diện theo pháp luật, của các cổ đông sáng lập hoặc người đại diện theo ủy quyền của cổ đông sáng lập) (mẫu tham khảo);<br /> Danh sách cổ đông sáng lập (mẫu quy định);<br /> Bản sao hợp lệ một trong các giấy tờ chứng thực cá nhân hoặc pháp nhân còn hiệu lực của tất cả các cổ đông sáng lập, người đại diện theo pháp luật:<br />- Cá nhân có quốc tịch Việt Nam: Chứng minh nhân dân hoặc hộ chiếu.<br />- Nếu thành viên là tổ chức:<br />- Quyết định thành lập; Giấy chứng nhận đăng ký doanh nghiệp (hoặc Giấy chứng nhận đăng ký kinh doanh và Giấy chứng nhận đăng ký thuế hoặc Giấy chứng nhận đăng ký kinh doanh và đăng ký thuế).<br />- Một trong các giấy tờ chứng thực cá nhân theo khoản 4.1 nêu trên của người đại diện theo ủy quyền và quyết định ủy quyền tương ứng (tham khảo nội dung ủy quyền tại Điều 48 Luật Doanh nghiệp).<br /> Văn bản xác nhận vốn pháp định của cơ quan, tổ chức có thẩm quyền đối với công ty kinh doanh ngành, nghề mà theo quy định của pháp luật phải có vốn pháp định<br /> Bản sao hợp lệ chứng chỉ hành nghề của một hoặc một số cá nhân nếu công ty kinh doanh ngành, nghề mà theo quy định của pháp luật phải có chứng chỉ hành nghề</p>\n<p><strong>1.5 Công ty hợp doanh</strong></p>\n<p><strong>1.5.1 Sơ lược về Công ty Hợp danh :</strong></p>\n<p><strong>1.5.1.1</strong> Thành viên hợp danh phải là cá nhân, có trình độ chuyên môn và uy tín nghề nghiệp và phải chịu trách nhiệm bằng toàn bộ tài sản của mình về các nghĩa vụ pháp lý của Công ty;<br /><strong>1.5.1.2</strong> Thành viên góp vốn chỉ chịu trách nhiệm về các khoản nợ của Công ty trong phạm vi số vốn đã góp vốn vào Công ty. vốn này được gọi là vốn điều lệ, có cơ cấu tổ chức. Có con dấu riêng, được mở tài khoản giao dịch…vv . Không Có tư cách pháp nhân</p>\n<p><strong>1.5.2 Thủ tục (Theo Nghị định số 43/2010/NĐ-CP ngày 15/4/2010 của Chính phủ về Đăng ký doanh nghiệp)</strong><br /> Giấy đề nghị đăng ký doanh nghiệp (do người đại diện theo pháp luật ký) (mẫu quy định);<br /> Dự thảo điều lệ công ty (phải có đầy đủ chữ ký của các thành viên hợp danh) (mẫu tham khảo);<br /> Danh sách thành viên (mẫu quy định);<br /> Bản sao hợp lệ một trong các giấy tờ chứng thực cá nhân hoặc pháp nhân còn hiệu lực của các thành viên sáng lập:<br />o Đối với thành viên hợp danh và thành viên góp vốn là cá nhân: Chứng minh nhân dân hoặc hộ chiếu;<br />o Đối với thành viên góp vốn là tổ chức:<br />o Quyết định thành lập, Giấy chứng nhận đăng ký doanh nghiệp (hoặc Giấy chứng nhận đăng ký kinh doanh và Giấy chứng nhận đăng ký thuế hoặc Giấy chứng nhận đăng ký kinh doanh và đăng ký thuế);<br />o Một trong các giấy tờ chứng thực cá nhân còn hiệu lực theo khoản 4.1 của người đại diện theo ủy quyền và quyết định ủy quyền tương ứng. (tham khảo nội dung ủy quyền tại Điều 48 Luật Doanh nghiệp);<br /> Văn bản xác nhận vốn pháp định của cơ quan, tổ chức có thẩm quyền đối với công ty kinh doanh ngành, nghề mà theo quy định của pháp luật phải có vốn pháp định<br /> Bản sao hợp lệ chứng chỉ hành nghề của các thành viên hợp danh nếu công ty kinh doanh ngành, nghề mà theo quy định của pháp luật phải có chứng chỉ hành nghề.</p>', '', '', 5, '2012-06-26 02:12:32', 15, 0, '', '', 'thanh-lap-moi-doanh-nghiep', '', 'Doanh nghiệp trong nước : Do cá nhân hay tổ chức trong nước bỏ vốn ra để thành lập doanh nghiệp và hoạt động theo luật Doanh nghiệp gồm : Doanh nghiệp tư nhân, Công ty TNHH một thành viên, Công ty TNHH hai thành viên', '', 1, 'chaugiangthanh'),
(152, 'Chuyển đổi loại hình doanh nghiệp', '', '', '', '<h3><span style="font-size:14pt;">CHUYỂN ĐỔ LOẠI HÌNH DOANH NGHIỆP</span></h3>\n<ol><li>Chuyển đổi từ Công ty TNHH Một Thành Viên</li>\n<li>Chuyển đổi từ Công ty TNHH Hai Thành Viên Trở Lên</li>\n<li>Chuyển đổi từ Công ty Cổ phần</li>\n<li>Chuyển đổi từ Doanh nghiệp Tư nhân</li>\n</ol><h4 style="text-align:center;"><span style="font-size:14pt;">GỌI : 0913 100 223 ĐỂ ĐƯỢC TƯ VẤN</span><br /><span style="font-size:14pt;">HOẶC XEM CHI TIẾT</span></h4>\n<p><strong>1.1 Chuyển đổi công ty TNHH một thành viên thành công ty TNHH hai thành viên trở lên - Trường hợp Chủ sở hữu công ty chuyển nhượng, cho, tặng một phần sở hữu của mình tại công ty cho một hoặc một số người khác.</strong><br /> Hồ sơ Gồm có :<br /> Đơn đề nghị chuyển đổi. phụ lục I-3<br /> Điều lệ công ty<br /> Danh sách thành viên<br /> CMND của các thành viên sao y không quá 3 tháng và còn hiệu lực cấp CMND không quá 15 năm.<br /> Hợp đồng chuyển nhượng, cho tăng một phần sở hữu của mình tại công ty cho một hoặc một số người khác<br /> Nộp lại bản gốc giấy Chứng nhận đăng ký doanh nghiệp<br /><strong> Mẫu hồ sơ chuyển đổi tham khảo tại danh sách biểu mẫu</strong></p>\n<p><strong>1.2 Chuyển đổi công ty TNHH một thành viên thành công ty TNHH hai thành viên trở lên - Trường hợp Công ty huy động thêm vốn góp từ một hoặc một số người khác.</strong><br /> Hồ sơ Gồm có :<br /> Đơn đề nghị chuyển đổi. phụ lục I-3<br /> Điều lệ công ty<br /> Danh sách thành viên<br /> CMND của các thành viên sao y không quá 3 tháng và còn hiệu lực cấp CMND không quá 15 năm.<br /> Quyết định của chủ sở hữu công ty về việc huy động thêm vốn góp<br /> Nộp lại bản gốc giấy Chứng nhận đăng ký doanh nghiệp<br /><strong> Mẫu hồ sơ chuyển đổi tham khảo tại danh sách biểu mẫu</strong></p>\n<p><span style="color:#000000;"><strong>1.3 Chuyển đổi công ty TNHH một thành viên thành công ty cổ phần.</strong></span><br /> Hồ sơ Gồm có :<br /> Đơn đề nghị chuyển đổi. phụ lục I-4<br /> Điều lệ công ty<br /> Danh sách cổ đông sáng lập/ cổ đông phổ thông II-2<br /> CMND của các cổ đông sao y không quá 3 tháng và còn hiệu lực cấp CMND không quá 15 năm.<br /> Quyết định của chủ sở hữu công ty về việc chuyển đổi công ty<br /> Hợp đồng chuyển nhượng phần vốn góp hoặc văn bản thỏa thuận góp vốn đầu tư<br /> Nộp lại bản gốc giấy Chứng nhận đăng ký doanh nghiệp<br /> Mẫu hồ sơ chuyển đổi tham khảo tại danh sách biểu mẫu</p>\n<p><strong>2.1 Chuyển đổi Công ty TNHH hai thành viên trở lên thành công ty TNHH một thành viên.</strong><br /> Hồ sơ Gồm có :<br /> Đơn đề nghị chuyển đổi. phụ lục I-2<br /> Điều lệ công ty<br /> CMND của chủ sở hữu sao y không quá 3 tháng và còn hiệu lực cấp CMND không quá 15 năm.<br /> Quyết định của HĐTV về việc chuyển đổi công ty<br /> Biên bản họp HĐTV về việc chuển đổi công ty<br /> Hợp đồng chuyển nhượng phần vốn góp hoặc văn bản thỏa thuận góp vốn đầu tư<br /> Nộp lại bản gốc giấy Chứng nhận đăng ký doanh nghiệp<br /><strong> Mẫu hồ sơ chuyển đổi tham khảo tại danh sách biểu mẫu</strong></p>\n<p><strong>2.2 Chuyển đổi công ty TNHH hai thành viên công ty cổ phần.</strong><br /> Hồ sơ Gồm có :<br /> Đơn đề nghị chuyển đổi. phụ lục I-4<br /> Điều lệ công ty<br /> Danh sách cổ đông sáng lập/ cổ đông phổ thông II-2<br /> CMND của các cổ đông sao y không quá 3 tháng và còn hiệu lực cấp CMND không quá 15 năm.<br /> Quyết định của HĐTV về việc chuyển đổi công ty<br /> Biên bản họp HĐTV về việc chuển đổi công ty<br /> Hợp đồng chuyển nhượng phần vốn góp hoặc văn bản thỏa thuận góp vốn đầu tư<br /> Nộp lại bản gốc giấy Chứng nhận đăng ký doanh nghiệp<br /> Mẫu hồ sơ chuyển đổi tham khảo tại danh sách biểu mẫu</p>\n<p><strong>3.Chuyển đổi công ty cổ phần thành công ty TNHH một thành viên.</strong><br /> Hồ sơ Gồm có :<br /> Đơn đề nghị chuyển đổi. phụ lục I-2<br /> Điều lệ công ty<br /> CMND của chủ sở hữu sao y không quá 3 tháng và còn hiệu lực cấp CMND không quá 15 năm.<br /> Quyết định của đại hội đồng cổ đông về việc chuyển đổi công ty<br /> Biên bản họp ĐHĐCĐ về việc chuển đổi công ty<br /> Hợp đồng chuyển nhượng cổ phần hoặc văn bản thỏa thuận góp vốn đầu tư<br /> Nộp lại bản gốc giấy Chứng nhận đăng ký doanh nghiệp<br /><strong> Mẫu hồ sơ chuyển đổi tham khảo tại danh sách biểu mẫu</strong></p>\n<p><strong>4.1 Chuyển đổi doanh nghiệp tư nhân thành công ty TNHH 1 thành viên.</strong><br /> Hồ sơ Gồm có :<br /> Đơn đề nghị chuyển đổi. phụ lục I-2<br /> Điều lệ công ty<br /> CMND của chủ sở hữu sao y không quá 3 tháng và còn hiệu lực cấp CMND không quá 15 năm.<br /> Hợp đồng chuyển nhượng cổ phần hoặc văn bản thỏa thuận góp vốn đầu tư<br /> Nộp lại bản gốc giấy Chứng nhận đăng ký doanh nghiệp<br /> Danh sách chủ nợ và số nợ chưa thanh toán, gồm cả nợ thuế, thời hạn thanh toán; danh sách người lao động hiện có; danh sách các hợp đồng chưa thanh lý;<br />Văn bản cam kết chịu trách nhiệm cá nhân bằng toàn bộ tài sản của Chủ doanh nghiệp tư nhân đối với tất cả các khoản nợ chưa thanh toán của doanh nghiệp tư nhân và cam kết thanh toán đủ số nợ khi đến hạn;<br />Văn bản thoả thuận của Chủ doanh nghiệp tư nhân với các bên của hợp đồng chưa thanh lý về việc công ty TNHH được chuyển đổi tiếp nhận và thực hiện các hợp đồng đó;<br /><br />Văn bản cam kết hoặc thoả thuận của Chủ doanh nghiệp tư nhân với các thành viên góp vốn khác về việc tiếp nhận và sử dụng lao động hiện có của doanh nghiệp tư nhân.<br /><strong> Giấy xác nhận hoàn tất nghĩa vụ thuế và thanh quyết toán hóa đơn.</strong><br /><strong> Mẫu hồ sơ chuyển đổi tham khảo tại danh sách biểu mẫu</strong></p>\n<p><strong>4.2 Chuyển đổi doanh nghiệp tư nhân thành công ty TNHH hai thành viên</strong><br /> Hồ sơ Gồm có :<br /> Đơn đề nghị chuyển đổi. phụ lục I-3<br /> Danh sách thành viên<br /> Điều lệ công ty<br /> CMND của các thành viên sao y không quá 3 tháng và còn hiệu lực cấp CMND không quá 15 năm.<br /> Hợp đồng chuyển nhượng vốn hoặc văn bản thỏa thuận góp vốn đầu tư<br /> Nộp lại bản gốc giấy Chứng nhận đăng ký doanh nghiệp<br /> Danh sách chủ nợ và số nợ chưa thanh toán, gồm cả nợ thuế, thời hạn thanh toán; danh sách người lao động hiện có; danh sách các hợp đồng chưa thanh lý;<br /> Văn bản cam kết chịu trách nhiệm cá nhân bằng toàn bộ tài sản của Chủ doanh nghiệp tư nhân đối với tất cả các khoản nợ chưa thanh toán của doanh nghiệp tư nhân và cam kết thanh toán đủ số nợ khi đến hạn;<br /> Văn bản thoả thuận của Chủ doanh nghiệp tư nhân với các bên của hợp đồng chưa thanh lý về việc công ty TNHH được chuyển đổi tiếp nhận và thực hiện các hợp đồng đó;<br /> Văn bản cam kết hoặc thoả thuận của Chủ doanh nghiệp tư nhân với các thành viên góp vốn khác về việc tiếp nhận và sử dụng lao động hiện có của doanh nghiệp tư nhân.<br /> Giấy xác nhận hoàn tất nghĩa vụ thuế và thanh quyết toán hóa đơn.<br /><strong> Mẫu hồ sơ chuyển đổi tham khảo tại danh sách biểu mẫu</strong></p>', '', '', 2, '2012-06-26 02:16:39', 14, 0, '', '', 'chuyen-doi-loai-hinh-doanh-nghiep', '', 'CHUYỂN ĐỔ LOẠI HÌNH DOANH NGHIỆP\nChuyển đổi từ Công ty TNHH Một Thành Viên\nChuyển đổi từ Công ty TNHH Hai Thành Viên Trở Lên\nChuyển đổi từ Công ty Cổ phần\nChuyển đổi từ Doanh nghiệp Tư nhân', '', 1, 'chaugiangthanh'),
(153, 'Thành lập Chi nhánh, VPĐD, kho, xưởng', '', '', '', '<p><strong>THÀNH LẬP CHI NHÁNH, VPĐD, KHO XƯỞNG, ĐỊA DIỂM KINH DOANH</strong><br /><strong>1. THÀNH LẬP CHI NHÁNH, VPĐD, KHO XƯỞNG, ĐỊA ĐIỂM KD CỦA DNTN</strong><br /><strong>2. THÀNH LẬP CHI NHÁNH, VPĐD, KHO XƯỞNG, ĐỊA ĐIỂM KD CỦA CTY TNHH 1TV</strong><br /><strong>3. THÀNH LẬP CHI NHÁNH, VPĐD, KHO XƯỞNG, ĐỊA ĐIỂM KD CỦA CTY TNHH 2TV TRỞ LÊN</strong><br /><strong>4. THÀNH LẬP CHI NHÁNH, VPĐD, KHO XƯỞNG, ĐỊA ĐIỂM KD CỦA CTY CỔ PHẦN</strong><br /><strong>GỌI 0913 100 223 MR NGÀN, ĐỂ ĐƯỢC TƯ VẤN</strong><br /><strong>HOẶC XEM CHI TIẾT</strong><br /><strong>A. THÀNH LẬP CHI NHÁNH,VPĐD, ĐỊA ĐIỂM KD CỦA DNTN</strong></p>\n<p><strong>1. Hồ sơ đăng ký hoạt động chi nhánh, văn phòng đại diện</strong><br />(Theo Nghị định số 43/2010/NĐ-CP ngày 15/4/2010 của Chính phủ về Đăng ký doanh nghiệp)<br /><strong>Hồ sơ gồm :</strong><br />- Thông báo lập chi nhánh, văn phòng đại diện (do chủ doanh nghiệp ký) (mẫu quy định);<br />- Bản sao hợp lệ quyết định bổ nhiệm người đứng đầu chi nhánh, văn phòng đại diện (mẫu tham khảo).<br />- Bản sao hợp lệ một trong các giấy tờ chứng thực cá nhân còn hiệu lực của người đứng đầu chi nhánh,văn phòng đại diện:<br />1- Cá nhân có quốc tịch Việt Nam: Chứng minh nhân dân hoặc hộ chiếu;<br />2- Cá nhân có quốc tịch nước ngoài: Giấy đăng ký tạm trú do cơ quan có thẩm quyền của Việt Nam cấp, Giấy phép lao động và Hộ chiếu;<br />- Bản sao hợp lệ chứng chỉ hành nghề của người đứng đầu chi nhánh hoặc của cá nhân khác nếu chi nhánh hoạt động ngành, nghề mà theo quy định của pháp luật phải có chứng chỉ hành nghề Danh sách một số ngành nghề yêu cầu có chứng chỉ hành nghề;</p>\n<p><strong>2. Hồ sơ đăng ký lập địa điểm kinh doanh</strong><br />Theo Nghị định số 43/2010/NĐ-CP ngày 15/4/2010 của Chính phủ về Đăng ký doanh nghiệp)<br />Hồ sơ gồm :<br />- Thông báo lập địa điểm kinh doanh (do người đại diện theo pháp luật ký) (mẫu quy định);<br />- Bản gốc Giấy chứng nhận đăng ký hoạt động, Giấy chứng nhận đăng ký kinh doanh và Giấy chứng nhận đăng ký thuế hoặc Giấy chứng nhận đăng ký kinh doanh và đăng ký thuế</p>\n<p><strong>Ghi chú:</strong> Địa điểm kinh doanh có thể trực thuộc công ty hoặc chi nhánh công ty (nếu địa điểm kinh doanh có trụ sở cùng tỉnh, thành phố với trụ sở công ty hoặc chi nhánh)</p>\n<p><strong>B. THÀNH LẬP CHI NHÁNH,VPĐD, ĐỊA ĐIỂM KD CỦA CTY TNHH 1 TV</strong></p>\n<p><strong>1. Hồ sơ đăng ký hoạt động chi nhánh, văn phòng đại diện</strong><br />(Theo Nghị định số 43/2010/NĐ-CP ngày 15/4/2010 của Chính phủ về Đăng ký doanh nghiệp)<br /><strong>Hồ sơ gồm :</strong><br />- Thông báo lập chi nhánh, văn phòng đại diện (do người đại diện theo pháp luật ký) (mẫu quy định);<br />- Quyết định bằng văn bản về việc thành lập chi nhánh, văn phòng đại diện của chủ sở hữu (do Chủ sở hữu hoặc Chủ tịch hội đồng thành viên mô hình thành viên ký) (mẫu tham khảo);<br />- Bản sao hợp lệ quyết định bổ nhiệm người đứng đầu chi nhánh, văn phòng đại diện (mẫu tham khảo)<br />- Bản sao hợp lệ một trong các giấy tờ chứng thực cá nhân còn hiệu lực của người đứng đầu chi nhánh,văn phòng đại diện:<br />1- Cá nhân có quốc tịch Việt Nam: Chứng minh nhân dân hoặc hộ chiếu;<br />2- Cá nhân có quốc tịch nước ngoài: Giấy đăng ký tạm trú do cơ quan có thẩm quyền của Việt Nam cấp, Giấy phép lao động và Hộ chiếu;<br />- Bản sao hợp lệ chứng chỉ hành nghề của người đứng đầu chi nhánh hoặc của cá nhân khác nếu chi nhánh hoạt động ngành, nghề mà theo quy định của pháp luật phải có chứng chỉ hành nghề Danh sách một số ngành nghề yêu cầu có chứng chỉ hành nghề;</p>\n<p><strong>2. Hồ sơ đăng ký lập địa điểm kinh doanh</strong><br />Theo Nghị định số 43/2010/NĐ-CP ngày 15/4/2010 của Chính phủ về Đăng ký doanh nghiệp)<br /><strong>Hồ sơ gồm :</strong><br />- Thông báo lập địa điểm kinh doanh (do người đại diện theo pháp luật của công ty ký) (mẫu quy định);<br />- Bản gốc Giấy chứng nhận đăng ký hoạt động, Giấy chứng nhận đăng ký kinh doanh và Giấy chứng nhận đăng ký thuế hoặc Giấy chứng nhận đăng ký kinh doanh và đăng ký thuế</p>\n<p>Ghi chú: Địa điểm kinh doanh có thể trực thuộc công ty hoặc chi nhánh công ty (nếu địa điểm kinh doanh có trụ sở cùng tỉnh, thành phố với trụ sở công ty hoặc chi nhánh)<br /><strong>C. THÀNH LẬP CHI NHÁNH,VPĐD, ĐỊA ĐIỂM KD CỦA CTY TNHH 2 TV</strong><br /><strong>1. Hồ sơ đăng ký hoạt động chi nhánh</strong><br />Theo Nghị định số 43/2010/NĐ-CP ngày 15/4/2010 của Chính phủ về Đăng ký doanh nghiệp)<br /><strong>Hồ sơ gồm :</strong><br />- Thông báo lập chi nhánh (do người đại diện theo pháp luật ký) (mẫu quy định);<br />- Quyết định bằng văn bản về việc thành lập chi nhánh của Hội đồng thành viên đối (do Chủ tịch hội đồng thành viên ký) (mẫu tham khảo);<br />- Bản sao biên bản họp về việc lập chi nhánh của Hội đồng thành viên (có chữ ký của các thành viên dự họp) (mẫu tham khảo)<br />- Bản sao hợp lệ quyết định bổ nhiệm người đứng đầu chi nhánh (mẫu tham khảo)<br />- Bản sao hợp lệ một trong các giấy tờ chứng thực cá nhân còn hiệu lực của người đứng đầu chi nhánh:<br />1- Cá nhân có quốc tịch Việt Nam: Chứng minh nhân dân hoặc hộ chiếu;<br />2- Cá nhân có quốc tịch nước ngoài: Giấy đăng ký tạm trú do cơ quan có thẩm quyền của Việt Nam cấp, Giấy phép lao động và Hộ chiếu;<br />- Bản sao hợp lệ chứng chỉ hành nghề của người đứng đầu chi nhánh hoặc của cá nhân khác nếu chi nhánh hoạt động ngành, nghề mà theo quy định của pháp luật phải có chứng chỉ hành nghề Danh sách một số ngành nghề yêu cầu chứng chỉ hành nghề;</p>\n<p><strong>2. Hồ sơ đăng ký hoạt động VPĐD</strong><br /><strong>Theo Nghị định số 43/2010/NĐ-CP ngày 15/4/2010 của Chính phủ về Đăng ký doanh nghiệp)</strong><br /><strong>Hồ sơ gồm :</strong><br />- Thông báo lập văn phòng đại diện (do người đại diện theo pháp luật ký) (mẫu quy định);<br />- Quyết định bằng văn bản về việc thành lập văn phòng đại diện của Hội đồng thành viên đối (do Chủ tịch hội đồng thành viên ký) (mẫu tham khảo);<br />- Bản sao biên bản họp về việc lập văn phòng đại diện của Hội đồng thành viên (có chữ ký của các thành viên dự họp) nội dung gồm (mẫu tham khảo)<br />- Bản sao hợp lệ quyết định bổ nhiệm người đứng đầu văn phòng đại diện (mẫu tham khảo)<br />- Bản sao hợp lệ một trong các giấy tờ chứng thực cá nhân còn hiệu lực của người đứng đầu văn phòng đại diện:<br />1- Cá nhân có quốc tịch Việt Nam: Chứng minh nhân dân hoặc hộ chiếu;<br />2- Cá nhân có quốc tịch nước ngoài: Giấy đăng ký tạm trú do cơ quan có thẩm quyền của Việt Nam cấp, Giấy phép lao động và Hộ chiếu;<br /><strong>3. Hồ sơ đăng ký lập địa điểm kinh doanh</strong><br />Theo Nghị định số 43/2010/NĐ-CP ngày 15/4/2010 của Chính phủ về Đăng ký doanh nghiệp)<br /><strong>Hồ sơ gồm :</strong><br />- Thông báo lập địa điểm kinh doanh (do người đại diện theo pháp luật của công ty ký) (mẫu quy định);<br />- Bản gốc Giấy chứng nhận đăng ký hoạt động, Giấy chứng nhận đăng ký kinh doanh và Giấy chứng nhận đăng ký thuế hoặc Giấy chứng nhận đăng ký kinh doanh và đăng ký thuế</p>\n<p><strong>Ghi chú:</strong> Địa điểm kinh doanh có thể trực thuộc công ty hoặc chi nhánh công ty (nếu địa điểm kinh doanh có trụ sở cùng tỉnh, thành phố với trụ sở công ty hoặc chi nhánh)</p>\n<p><strong>D. THÀNH LẬP CHI NHÁNH,VPĐD, ĐỊA ĐIỂM KD CỦA CTY CỔ PHẦN</strong></p>\n<p><strong>1. Hồ sơ đăng ký hoạt động chi nhánh</strong><br />Theo Nghị định số 43/2010/NĐ-CP ngày 15/4/2010 của Chính phủ về Đăng ký doanh nghiệp)<br /><strong>Hồ sơ gồm :</strong><br />- Thông báo lập chi nhánh (do đại diện pháp luật của doanh nghiệp ký) (mẫu quy định);<br />- Quyết định bằng văn bản về việc thành lập chi nhánh của Hội đồng quản trị (do Chủ tịch hội đồng quản trị ký) (mẫu tham khảo);<br />- Bản sao biên bản họp về việc lập chi nhánh, của Hội đồng quản trị (có chữ ký tất cả thành viên hội đồng quản trị) (mẫu tham khảo).<br />- Bản sao hợp lệ quyết định bổ nhiệm người đứng đầu chi nhánh (mẫu tham khảo).<br />- Bản sao hợp lệ một trong các giấy tờ chứng thực cá nhân còn hiệu lực của người đứng đầu chi nhánh,văn phòng đại diện:<br />1- Cá nhân có quốc tịch Việt Nam: Chứng minh nhân dân hoặc hộ chiếu;<br />2- Cá nhân có quốc tịch nước ngoài: Giấy đăng ký tạm trú do cơ quan có thẩm quyền của Việt Nam cấp, Giấy phép lao động và Hộ chiếu;<br />- Bản sao hợp lệ chứng chỉ hành nghề của người đứng đầu chi nhánh hoặc của cá nhân khác nếu chi nhánh hoạt động ngành, nghề mà theo quy định của pháp luật phải có chứng chỉ hành nghề Danh sách một số ngành nghề yêu cầu chứng chỉ hành nghề;<br /><span style="color:#000000;"><strong>2. Hồ sơ đăng ký hoạt động VPĐD</strong></span><br /><span style="color:#000000;"><strong>Theo Nghị định số 43/2010/NĐ-CP ngày 15/4/2010 của Chính phủ về Đăng ký doanh nghiệp)</strong></span><br /><span style="color:#000000;"><strong>Hồ sơ gồm :</strong></span><br />- Thông báo lập văn phòng đại diện (do đại diện pháp luật của doanh nghiệp ký) (mẫu quy định);<br />- Quyết định bằng văn bản về việc thành lập văn phòng đại diện của Hội đồng quản trị (do Chủ tịch hội đồng quản trị ký) (mẫu tham khảo);<br />- Bản sao biên bản họp về việc lập văn phòng đại diện của Hội đồng quản trị (có chữ ký tất cả thành viên hội đồng quản trị) (mẫu tham khảo).<br />- Bản sao hợp lệ quyết định bổ nhiệm người đứng đầu chi nhánh (mẫu tham khảo).<br />- Bản sao hợp lệ một trong các giấy tờ chứng thực cá nhân còn hiệu lực của người đứng đầu chi nhánh,văn phòng đại diện:<br />1- Cá nhân có quốc tịch Việt Nam: Chứng minh nhân dân hoặc hộ chiếu;<br />2- Cá nhân có quốc tịch nước ngoài: Giấy đăng ký tạm trú do cơ quan có thẩm quyền của Việt Nam cấp, Giấy phép lao động và Hộ chiếu;<br />- Bản sao hợp lệ chứng chỉ hành nghề của người đứng đầu chi nhánh hoặc của cá nhân khác nếu chi nhánh hoạt động ngành, nghề mà theo quy định của pháp luật phải có chứng chỉ hành nghề Danh sách một số ngành nghề yêu cầu chứng chỉ hành nghề;</p>\n<p><strong>3. Hồ sơ đăng ký lập địa điểm kinh doanh</strong><br /><strong>Theo Nghị định số 43/2010/NĐ-CP ngày 15/4/2010 của Chính phủ về Đăng ký doanh nghiệp)</strong><br /><strong>Hồ sơ gồm :</strong><br />- Thông báo lập địa điểm kinh doanh (do người đại diện theo pháp luật của công ty ký) (mẫu quy định);<br />- Bản gốc Giấy chứng nhận đăng ký hoạt động, Giấy chứng nhận đăng ký kinh doanh và Giấy chứng nhận đăng ký thuế hoặc Giấy chứng nhận đăng ký kinh doanh và đăng ký thuế</p>\n<p><strong>Ghi chú:</strong> Địa điểm kinh doanh có thể trực thuộc công ty hoặc chi nhánh công ty (nếu địa điểm kinh doanh có trụ sở cùng tỉnh, thành phố với trụ sở công ty hoặc chi nhánh)</p>\n<p><strong>*****LƯU Ý : DOANH NGHIỆP THÀNH LẬP TRƯỚC NGÀY NGHỊ ĐỊNH 43/2010/NĐ-CP CỦA CHÍNH PHỦ. THÌ KHI THÀNH LẬP CHI NHÁNH HAY ĐỊA ĐIỂM KINH DOANH, PHẢI MÃ HÓA NGÀNH NGHỀ KINH DOANH CỦA DOANH NGHIỆP TRƯỚC - BẰNG CÁCH THÔNG BÁO BỔ SUNG NGÀNH NGHỀ KINH DOANH - SAU ĐÓ MỚI MỞ CHI NHÁNH VÀ ĐỊA ĐIỂM KINH DOANH</strong></p>', '', '', 1, '2012-06-26 02:23:40', 12, 0, '', '', 'thanh-lap-chi-nhanh-vpdd-kho-xuong', '', 'Thành lập Chi nhánh, VPĐD, kho, xưởng - Dịch vụ - Chaugiangthanh.com, dangkydoanhnghiep.net.vn, thành lập doanh nghiệp, thay đổi nội dung DKKD, giải thể,Chaugiangthanh.com, dangkydoanhnghiep.net.vn, thànđăng ký kinh doanh, khai báo thuế, ...', '', 1, 'chaugiangthanh');
INSERT INTO `dos_module_services` (`record_id`, `title`, `titleen`, `preview`, `previewen`, `content`, `contenten`, `pic_full`, `hit`, `created`, `record_order`, `hot`, `extra_field1`, `extra_field2`, `tag`, `tagen`, `description`, `descriptionen`, `activated`, `dos_usernames_username`) VALUES
(154, 'Thay đổi nội dung đăng ký DN', '', '', '', '<p style="text-align:center;"><span style="font-size:11pt;"><strong>THAY ĐỔI NỘI DUNG ĐĂNG KÝ DOANH NGHIỆP</strong></span></p>\n<p><strong>1. THAY ĐỔI CỦA DOANH NGHIỆP TƯ NHÂN</strong></p>\n<p><strong>2. THAY ĐỔI CỦA CÔNG TY TNHH MỘT THÀNH VIÊN</strong></p>\n<p><strong>3. THAY ĐỔI CỦA CÔNG TY TNHH HAI THÀNH VIÊN TRỞ LÊN</strong></p>\n<p><strong>4. THAY ĐỔI CỦA CÔNG TY CỔ PHẦN</strong></p>\n<p><strong>5. THAY ĐỔI CỦA CÔNG TY HỢP DANH</strong></p>\n<p style="text-align:center;"><span style="font-size:11pt;"><strong><span style="color:#ff0000;">GỌI 0913 100 223 ĐỂ ĐƯỢC TƯ VẤN</span></strong></span></p>\n<p style="text-align:center;"><span style="font-size:11pt;"><strong><span style="color:#ff0000;">HOẶC XEM CHI TIẾT</span></strong></span></p>\n<p><strong>A./ DOANH NGHIỆP TƯ NHÂN</strong></p>\n<p><strong>1. Đăng ký bổ sung, thay đổi ngành nghề kinh doanh</strong><br />(Theo Nghị định số 43/2010/NĐ-CP ngày 15/4/2010 của Chính phủ về Đăng ký doanh nghiệp)</p>\n<p style="text-align:center;"><span style="font-size:10pt;"><strong>Hồ sơ gồm:</strong></span></p>\n<p>- Thông báo bổ sung, thay đổi ngành, nghề kinh doanh (do chủ doanh nghiệp ký) (mẫu quy định);</p>\n<p>- Văn bản xác nhận vốn pháp định của cơ quan, tổ chức có thẩm quyền đối với doanh nghiệp kinh doanh ngành, nghề mà theo quy định của pháp luật phải có vốn pháp định Danh sách một số ngành nghề yêu cầu vốn pháp định;</p>\n<p>- Bản sao hợp lệ chứng chỉ hành nghề của một hoặc một số cá nhân nếu doanh nghiệp kinh doanh ngành, nghề mà theo quy định của pháp luật phải có chứng chỉ hành nghề Danh sách một số ngành nghề yêu cầu có chứng chỉ hành nghề;</p>\n<p>- Bản gốc Giấy chứng nhận đăng ký kinh doanh và Giấy chứng nhận đăng ký thuế hoặc Giấy chứng nhận đăng ký kinh doanh và đăng ký thuế;</p>\n<p><strong>* Lưu ý :</strong> Nếu DN được cấp giấy chứng nhận trước ngày nghị định 43/2010/NĐ-CP, mà chưa mã hóa ngành nghề theo QĐ số 10. Thì khi bổ sung ngành nghề phải mã hóa.</p>\n<p><strong>2. Đăng ký thay đổi địa chỉ trụ sở chính của DNTN</strong><br />(Theo Nghị định số 43/2010/NĐ-CP ngày 15/4/2010 của Chính phủ về Đăng ký doanh nghiệp)</p>\n<p style="text-align:center;"><strong><span style="font-size:10pt;">Hồ sơ gồm:</span></strong></p>\n<p>- Thông báo thay đổi địa chỉ trụ sở chính (do chủ doanh nghiệp ký) (mẫu quy định);</p>\n<p>- Thông báo thay đổi nội dung đăng ký thuế đến cớ quan đăng ký kinh doanh trong đó nêu rõ địa chỉ nơi nhận thông báo thuế (mẫu quy định);</p>\n<p>- Bản gốc Giấy chứng nhận đăng ký kinh doanh và Giấy chứng nhận đăng ký thuế hoặc Giấy chứng nhận đăng ký kinh doanh và đăng ký thuế;</p>\n<p><strong>* Lưu ý</strong> : Nếu DN được cấp giấy chứng nhận trước ngày nghị định 43/2010/NĐ-CP, mà chưa mã hóa ngành nghề theo QĐ số 10. Thì khi thay đổi địa chỉ phải mã hóa ngành nghề kinh doanh (Thông báo bổ sung ngành nghề KD).</p>\n<p><strong>3. Thay đổi tên doanh nghiệp</strong><br />Theo Nghị định số 43/2010/NĐ-CP ngày 15/4/2010 của Chính phủ về Đăng ký doanh nghiệp)</p>\n<p style="text-align:center;"><span style="font-size:10pt;"><strong>Hồ sơ gồm:</strong></span></p>\n<p>- Thông báo thay đổi tên doanh nghiệp (do chủ doanh nghiệp ký) (mẫu quy định);</p>\n<p>- Bản gốc Giấy chứng nhận đăng ký kinh doanh và Giấy chứng nhận đăng ký thuế hoặc Giấy chứng nhận đăng ký kinh doanh và đăng ký thuế;</p>\n<p><strong>* Lưu ý :</strong> Nếu DN được cấp giấy chứng nhận trước ngày nghị định 43/2010/NĐ-CP, mà chưa mã hóa ngành nghề theo QĐ số 10. Thì khi thay đổi tên doanh nghiệp phải mã hóa ngành nghề kinh doanh (Thông báo bổ sung ngành nghề KD). Tên mới phải kiểm tra tên trùng</p>\n<p><strong>4. Đăng ký thay đổi vốn đầu tư doanh nghiệp</strong><br />Theo Nghị định số 43/2010/NĐ-CP ngày 15/4/2010 của Chính phủ về Đăng ký doanh nghiệp)</p>\n<p style="text-align:center;"><strong><span style="font-size:10pt;">Hồ sơ gồm :</span></strong></p>\n<p>- Thông báo tăng, giảm vốn đầu tư (do chủ doanh nghiệp ký) (mẫu quy định);</p>\n<p>- Bản gốc Giấy chứng nhận đăng ký kinh doanh và Giấy chứng nhận đăng ký thuế hoặc Giấy chứng nhận đăng ký kinh doanh và đăng ký thuế;</p>\n<p><strong>* Lưu ý :</strong> Nếu DN được cấp giấy chứng nhận trước ngày nghị định 43/2010/NĐ-CP, mà chưa mã hóa ngành nghề theo QĐ số 10. Thì khi thay đổi vốn đầu tư phải mã hóa ngành nghề kinh doanh (Thông báo bổ sung ngành nghề KD)</p>\n<p><strong>5. Đăng thay đổi chủ doanh nghiệp</strong><br />(Theo Nghị định số 43/2010/NĐ-CP ngày 15/4/2010 của Chính phủ về Đăng ký doanh nghiệp)</p>\n<p style="text-align:center;"><strong><span style="font-size:10pt;">Hồ sơ gồm:</span></strong></p>\n<p><strong>5.1. Trường hợp :Chủ DNTN bán doanh nghiệp</strong></p>\n<p>- Thông báo thay đổi chủ doanh nghiệp tư nhân (có chữ ký của người bán, người mua) (mẫu quy định);</p>\n<p>- Bản sao hợp lệ một trong các giấy tờ chứng thực cá nhân còn hiệu lực của người mua: Chứng minh nhân dân hoặc hộ chiếu;</p>\n<p>- Hợp đồng mua bán và các giấy tờ chứng minh hoàn tất việc chuyển nhượng;</p>\n<p>- Bản gốc Giấy chứng nhận đăng ký kinh doanh và Giấy chứng nhận đăng ký thuế hoặc Giấy chứng nhận đăng ký kinh doanh và đăng ký thuế;</p>\n<p><strong>5.2 Trường hợp :Chủ DNTN tặng, cho doanh nghiệp</strong></p>\n<p>- Thông báo thay đổi chủ doanh nghiệp tư nhân (có chữ ký của người tặng cho; người được tặng cho) (mẫu quy định);</p>\n<p>- Bản sao hợp lệ một trong các giấy tờ chứng thực cá nhân còn hiệu lực của người được tặng cho: Chứng minh nhân dân hoặc hộ chiếu;</p>\n<p>- Hợp đồng hợp đồng tặng cho doanh nghiệp và các giấy tờ chứng minh hoàn tất việc tặng cho;</p>\n<p>- Bản gốc Giấy chứng nhận đăng ký kinh doanh và Giấy chứng nhận đăng ký thuế hoặc Giấy chứng nhận đăng ký kinh doanh và đăng ký thuế;</p>\n<p><strong>5.3 Trường hợp :Chủ DNTN chết, mất tích</strong></p>\n<p>- Thông báo thay đổi chủ doanh nghiệp tư nhân (có chữ ký của người người thừa kế) (mẫu quy định);</p>\n<p>- Bản sao hợp lệ một trong các giấy tờ chứng thực cá nhân còn hiệu lực của người người thừa kế: Chứng minh nhân dân hoặc hộ chiếu;</p>\n<p>- Giấy chứng tử, tuyên bố mất tích của Tòa án đối với chủ doanh nghiệp tư nhân trong trường hợp chủ doanh nghiệp tư nhân chết, mất tích, văn bản xác nhận quyền thừa kế hợp pháp của người được thừa kế;</p>\n<p>- Bản gốc Giấy chứng nhận đăng ký kinh doanh và Giấy chứng nhận đăng ký thuế hoặc Giấy chứng nhận đăng ký kinh doanh và đăng ký thuế;</p>\n<p><strong>* Lưu ý :</strong> trong những trường hợp trên : Nếu DN được cấp giấy chứng nhận trước ngày nghị định 43/2010/NĐ-CP, mà chưa mã hóa ngành nghề theo QĐ số 10. Thì khi thay đổi chủ doanh nghiệp phải mã hóa ngành nghề kinh doanh (Thông báo bổ sung ngành nghề KD), do Chủ DN mới ký.</p>\n<p><strong>B./ CÔNG TY TNHH MỘT THÀNH VIÊN</strong></p>\n<p><strong>1. Đăng ký bổ sung ngành nghề kinh doanh</strong><br />(Theo Nghị định số 43/2010/NĐ-CP ngày 15/4/2010 của Chính phủ về Đăng ký doanh nghiệp)</p>\n<p style="text-align:center;"><span style="font-size:10pt;"><strong>Hồ sơ gồm:</strong></span></p>\n<p>- Thông báo bổ sung, thay đổi ngành, nghề kinh doanh (do người đại diện theo pháp luật ký) (mẫu quy định);</p>\n<p>- Quyết định bằng văn bản về việc bổ sung, thay đổi ngành, nghề kinh doanh của chủ sở hữu công ty (do chủ sở hữu ký). Quyết định phải ghi rõ những nội dung được thay đổi trong Điều lệ công ty (mẫu tham khảo);</p>\n<p>- Văn bản xác nhận vốn pháp định của cơ quan, tổ chức có thẩm quyền đối với công ty kinh doanh ngành, nghề mà theo quy định của pháp luật phải có vốn pháp định Danh sách một số ngành nghề yêu cầu vốn pháp định;</p>\n<p>- Bản sao hợp lệ chứng chỉ hành nghề của một hoặc một số cá nhân nếu công ty kinh doanh ngành, nghề mà theo quy định của pháp luật phải có chứng chỉ hành nghề Danh sách một số ngành nghề yêu cầu có chứng chỉ hành nghề;</p>\n<p>- Bản gốc Giấy chứng nhận đăng ký kinh doanh và Giấy chứng nhận đăng ký thuế hoặc Giấy chứng nhận đăng ký kinh doanh và đăng ký thuế;</p>\n<p><strong>* Lưu ý :</strong> Nếu DN được cấp giấy chứng nhận trước ngày nghị định 43/2010/NĐ-CP, mà chưa mã hóa ngành nghề theo QĐ số 10. Thì khi bổ sung ngành nghề phải mã hóa.</p>\n<p><strong>2. Thay đổi địa chỉ trụ sở chính</strong><br />Theo Nghị định số 43/2010/NĐ-CP ngày 15/4/2010 của Chính phủ về Đăng ký doanh nghiệp)</p>\n<p style="text-align:center;"><strong><span style="font-size:10pt;">Hồ sơ gồm:</span></strong></p>\n<p><strong>2.1/ Thay đổi địa chỉ trụ sở chính của doanh nghiệp trong phạm vi TP.HCM</strong></p>\n<p>- Thông báo thay đổi địa chỉ trụ sở chính (do người đại diện theo pháp luật ký) (mẫu quy định);</p>\n<p>- Quyết định bằng văn bản về việc thay đổi địa chỉ trụ sở chính của chủ sở hữu công ty (do chủ sở hữu ký). Quyết định phải ghi rõ những nội dung được sửa đổi trong Điều lệ công ty (mẫu tham khảo);</p>\n<p>- Thông báo thay đổi nội dung đăng ký thuế đến cớ quan đăng ký kinh doanh trong đó nêu rõ địa chỉ nơi nhận thông báo thuế (mẫu quy định);</p>\n<p>- Bản gốc Giấy chứng nhận đăng ký kinh doanh và Giấy chứng nhận đăng ký thuế hoặc Giấy chứng nhận đăng ký kinh doanh và đăng ký thuế;</p>\n<p><strong>2.2/ Thay đổi địa chỉ trụ sở chính của doanh nghiệp từ tỉnh, TP khác đến TP.HCM</strong></p>\n<p>- Thông báo thay đổi địa chỉ trụ sở chính (do người đại diện theo pháp luật ký) (mẫu quy định);</p>\n<p>- Bản sao Điều lệ đã sửa đổi của công ty (mẫu tham khảo);</p>\n<p>- Thông báo thay đổi nội dung đăng ký thuế đến cớ quan đăng ký kinh doanh trong đó nêu rõ địa chỉ nơi nhận thông báo thuế (mẫu quy định);</p>\n<p>- Danh sách người đại diện theo ủy quyền (đối với công ty TNHH một thành viên được tổ chức quản lý theo mô hình hội đồng thành viên được quy định tại khoản 3 Điều 67 Luật Doanh nghiệp) (mẫu quy định);</p>\n<p>- Quyết định bằng văn bản về việc thay đổi địa chỉ trụ sở chính của chủ sở hữu công ty (do chủ sở hữu ký) (mẫu tham khảo);</p>\n<p>- Bản gốc Giấy chứng nhận đăng ký kinh doanh và Giấy chứng nhận đăng ký thuế hoặc Giấy chứng nhận đăng ký kinh doanh và đăng ký thuế</p>\n<p><strong>Lưu ý :</strong> Trước khi đăng ký thay đổi địa chỉ trụ sở chính, doanh nghiệp phải thực hiện các thủ tục với cơ quan thuế liên quan đến việc chuyển địa điểm theo quy định của pháp luật về thuế. Việc thay đổi địa chỉ trụ sở chính của doanh nghiệp không làm thay đổi quyền và nghĩa vụ của doanh nghiệp.</p>\n<p><strong>3. Thay đổi tên doanh nghiệp</strong><br />Theo Nghị định số 43/2010/NĐ-CP ngày 15/4/2010 của Chính phủ về Đăng ký doanh nghiệp)</p>\n<p style="text-align:center;"><span style="font-size:10pt;"><strong>Hồ sơ gồm:</strong></span></p>\n<p>- Thông báo đổi tên doanh nghiệp (do người đại diện theo pháp luật ký) (mẫu quy định);</p>\n<p>- Quyết định bằng văn bản về việc đổi tên doanh nghiệp của chủ sở hữu công ty (do chủ sở hữu ký). Quyết định phải ghi rõ những nội dung được sửa đổi trong Điều lệ công ty (mẫu tham khảo);</p>\n<p>- Bản gốc Giấy chứng nhận đăng ký kinh doanh và Giấy chứng nhận đăng ký thuế hoặc Giấy chứng nhận đăng ký kinh doanh và đăng ký thuế;</p>\n<p><strong>* Lưu ý :</strong> Nếu DN được cấp giấy chứng nhận trước ngày nghị định 43/2010/NĐ-CP, mà chưa mã hóa ngành nghề theo QĐ số 10. Thì khi thay đổi tên doanh nghiệp phải mã hóa ngành nghề kinh doanh (Thông báo bổ sung ngành nghề KD). Tên mới phải kiểm tra tên trùng</p>\n<p><strong>4. Đăng ký tăng vốn điều lệ</strong><br />Theo Nghị định số 43/2010/NĐ-CP ngày 15/4/2010 của Chính phủ về Đăng ký doanh nghiệp)</p>\n<p style="text-align:center;"><strong><span style="font-size:10pt;">Hồ sơ gồm:</span></strong></p>\n<p>- Thông báo tăng vốn điều lệ (do người đại diện theo pháp luật ký) (mẫu quy định);</p>\n<p>- Quyết định bằng văn bản về việc tăng vốn điều lệ của chủ sở hữu công ty (do chủ sở hữu ký). Quyết định phải ghi rõ những nội dung được sửa đổi trong Điều lệ công ty (mẫu tham khảo);</p>\n<p>- Bản gốc Giấy chứng nhận đăng ký kinh doanh và Giấy chứng nhận đăng ký thuế hoặc Giấy chứng nhận đăng ký kinh doanh và đăng ký thuế;</p>\n<p><strong>* Lưu ý :</strong> Nếu DN được cấp giấy chứng nhận trước ngày nghị định 43/2010/NĐ-CP, mà chưa mã hóa ngành nghề theo QĐ số 10. Thì khi thay đổi vốn điều lệ doanh nghiệp phải mã hóa ngành nghề kinh doanh (Thông báo bổ sung ngành nghề KD). Công ty TNHH 1TV không được giảm vốn điều lệ.</p>\n<p><strong>5. Đăng ký thay đổi chủ sở hữu</strong><br />Theo Nghị định số 43/2010/NĐ-CP ngày 15/4/2010 của Chính phủ về Đăng ký doanh nghiệp)</p>\n<p style="text-align:center;"><span style="font-size:10pt;"><strong>Hồ sơ gồm:</strong></span></p>\n<p>- Thông báo thay đổi nội dung đăng ký doanh nghiệp (do chủ sở hữu hoặc đại diện theo pháp luật của chủ sở hữu cũ và chủ sở hữu mới hoặc đại diện theo pháp luật của chủ sở hữu mới ký) (mẫu quy định).</p>\n<p>- Bản sao hợp lệ một trong các giấy tờ chứng thực cá nhân hoặc pháp nhân còn hiệu lực của chủ sở hữu mới:</p>\n<p>2.1- Cá nhân có quốc tịch Việt Nam: Chứng minh nhân dân hoặc hộ chiếu.</p>\n<p>2.2- Chủ sở hữu là tổ chức:</p>\n<p>- Quyết định thành lập hoặc Giấy chứng nhận đăng ký doanh nghiệp (hoặc Giấy chứng nhận đăng ký kinh doanh và Giấy chứng nhận đăng ký thuế hoặc Giấy chứng nhận đăng ký kinh doanh và đăng ký thuế).</p>\n<p>- Một trong các giấy tờ chứng thực cá nhân theo khoản 2.1 nêu trên của người đại diện theo ủy quyền.</p>\n<p>- Điều lệ sửa đổi, bổ sung của công ty (mẫu tham khảo);</p>\n<p>- Hợp đồng chuyển nhượng vốn và các giấy tờ chứng minh hoàn tất chuyển nhượng vốn;</p>\n<p>- Bản gốc Giấy chứng nhận đăng ký kinh doanh và Giấy chứng nhận đăng ký thuế hoặc Giấy chứng nhận đăng ký kinh doanh và đăng ký thuế;</p>\n<p><strong>* Lưu ý :</strong> Nếu DN được cấp giấy chứng nhận trước ngày nghị định 43/2010/NĐ-CP, mà chưa mã hóa ngành nghề theo QĐ số 10. Thì khi thay đổi chủ sở hữu doanh nghiệp phải mã hóa ngành nghề kinh doanh (Thông báo bổ sung ngành nghề KD). Do người đại diên pháp luật ký.</p>\n<p><strong>6. Đăng ký thay đổi người đại diên theo pháp luật</strong><br />Theo Nghị định số 43/2010/NĐ-CP ngày 15/4/2010 của Chính phủ về Đăng ký doanh nghiệp)</p>\n<p style="text-align:center;"><strong><span style="font-size:10pt;">Hồ sơ gồm:</span></strong></p>\n<p>- Thông báo thay đổi người đại diện theo pháp luật (do chủ sở hữu công ty hoặc Chủ tịch Hội đồng thành viên hoặc Chủ tịch công ty ký) (mẫu quy định);</p>\n<p>- Quyết định bằng văn bản về việc thay đổi người đại diện theo pháp luật của chủ sở hữu công ty (do chủ sở hữu công ty ký). Quyết định phải ghi rõ những nội dung được sửa đổi trong Điều lệ công ty (mẫu tham khảo);</p>\n<p>- Bản sao hợp lệ một trong các giấy tờ chứng thực cá nhân còn hiệu lực của người thay thế làm đại diện theo pháp luật của công ty:</p>\n<p>1- Cá nhân có quốc tịch Việt Nam: Chứng minh nhân dân hoặc hộ chiếu;</p>\n<p>2- Cá nhân có quốc tịch nước ngoài: Giấy đăng ký tạm trú do cơ quan có thẩm quyền của Việt Nam cấp, giấy phép lao động và hộ chiếu;</p>\n<p>- Bản gốc Giấy chứng nhận đăng ký kinh doanh và Giấy chứng nhận đăng ký thuế hoặc Giấy chứng nhận đăng ký kinh doanh và đăng ký thuế;</p>\n<p><strong>* Lưu ý :</strong> Nếu DN được cấp giấy chứng nhận trước ngày nghị định 43/2010/NĐ-CP, mà chưa mã hóa ngành nghề theo QĐ số 10. Thì khi thay đổi người đại diện pháp luật doanh nghiệp phải mã hóa ngành nghề kinh doanh (Thông báo bổ sung ngành nghề KD). Do người đại diên pháp luật ký.</p>', '', '', 1, '2012-06-26 02:29:34', 12, 0, '', '', 'thay-doi-noi-dung-dang-ky-dn', '', 'Thay đổi nội dung đăng ký DN - Dịch vụ - Chaugiangthanh.com, dangkydoanhnghiep.net.vn, thành lập doanh nghiệp, thay đổi nội dung DKKD, giải thể,Chaugiangthanh.com, dangkydoanhnghiep.net.vn, thànđăng ký kinh doanh, khai báo thuế, dịch vụ thuế ...', '', 1, 'chaugiangthanh'),
(155, 'Thay đổi Chi nhánh, địa điểm KD', '', '', '', '<p>Thay đổi Chi nhánh, địa điểm KD</p>', '', '', 1, '2012-06-26 02:30:04', 11, 0, '', '', 'thay-doi-chi-nhanh-dia-diem-kd', '', 'Thay đổi Chi nhánh, địa điểm KD', '', 1, 'chaugiangthanh'),
(156, 'Giải thế doanh nghiệp', '', '', '', '<p>Làm thủ tục giải thế</p>', '', '', 1, '2012-06-26 02:30:17', 10, 0, '', '', 'giai-the-doanh-nghiep', '', 'Làm thủ tục giải thế', '', 1, 'chaugiangthanh'),
(157, 'Giải thể chi nhánh, VPĐD, ĐĐ, KX', '', '', '', '<p>Giải thể chi nhánh, VPĐD, kho xưởng, địa điểm</p>', '', '', 1, '2012-06-26 02:30:27', 9, 0, '', '', 'giai-the-chi-nhanh-vpdd-dd-kx', '', 'Giải thể chi nhánh, VPĐD, ĐĐ, KX', '', 1, 'chaugiangthanh'),
(158, 'Kê khai thuế', '', '', '', '<p>Kê khai thuế</p>', '', '', 1, '2012-06-26 02:30:50', 8, 0, '', '', 'ke-khai-thue', '', 'Kê khai thuế', '', 1, 'chaugiangthanh'),
(159, 'Quyết toán thuế', '', '', '', '<p>Quyết toán thuế</p>', '', '', 1, '2012-06-26 02:30:59', 7, 0, '', '', 'quyet-toan-thue', '', 'Quyết toán thuế', '', 1, 'chaugiangthanh'),
(160, 'Lập báo cáo tài chính', '', '', '', '<p>Lập báo cáo tài chính</p>', '', '', 1, '2012-06-26 02:31:08', 6, 0, '', '', 'lap-bao-cao-tai-chinh', '', 'Lập báo cáo tài chính', '', 1, 'chaugiangthanh'),
(161, 'Đăng ký lao động và bảo hiểm', '', '', '', '<p>Đăng ký lao động và bảo hiểm</p>', '', '', 2, '2012-06-26 02:31:21', 5, 0, '', '', 'dang-ky-lao-dong-va-bao-hiem', '', 'Đăng ký lao động và bảo hiểm', '', 1, 'chaugiangthanh'),
(162, 'Hướng dẫn làm kế toán thực tế', '', '', '', '<p>Đào tạo và hướng dẫn làm kế toán thực tế</p>', '', '', 1, '2012-06-26 02:31:42', 4, 0, '', '', 'huong-dan-lam-ke-toan-thuc-te', '', 'Đào tạo và hướng dẫn làm kế toán thực tế', '', 1, 'chaugiangthanh'),
(163, 'Tư vấn vay ngân hàng', '', '', '', '<p>Tư vấn vay ngân hàng</p>', '', '', 1, '2012-06-26 02:31:56', 3, 0, '', '', 'tu-van-vay-ngan-hang', '', 'Tư vấn vay ngân hàng', '', 1, 'chaugiangthanh'),
(164, 'Hướng dẫn tặng, cho, thừa kế nhà', '', '', '', '<p>Hướng dẫn tặng, cho, thừa kế nhà</p>', '', '', 1, '2012-06-26 02:32:07', 2, 0, '', '', 'huong-dan-tang-cho-thua-ke-nha', '', 'Hướng dẫn tặng, cho, thừa kế nhà', '', 1, 'chaugiangthanh'),
(165, 'Dịch vụ hành chính công khác', '', '', '', '<p>Dịch vụ hành chính công khác</p>', '', '', 1, '2012-06-26 02:32:18', 1, 0, '', '', 'dich-vu-hanh-chinh-cong-khac', '', 'Dịch vụ hành chính công khác', '', 1, 'chaugiangthanh');

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
) ENGINE=InnoDB  DEFAULT CHARSET=utf8 AUTO_INCREMENT=164 ;

--
-- Dumping data for table `dos_module_supports`
--

INSERT INTO `dos_module_supports` (`support_id`, `support_name`, `support_nameen`, `support_phone`, `support_value`, `support_order`, `support_type`, `dos_usernames_username`) VALUES
(161, '', '', '0987 99 00 66', 'thanhlapdoanhnghiepvina', 3, 'yahoo', 'chaugiangthanh'),
(162, '', '', '0913 100 223', 'chaugiangthanhco', 2, 'yahoo', 'chaugiangthanh'),
(163, '', '', '0907 517 866', 'hoangthanh_601', 1, 'yahoo', 'chaugiangthanh');

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
) ENGINE=InnoDB  DEFAULT CHARSET=utf8 AUTO_INCREMENT=75 ;

--
-- Dumping data for table `dos_module_video`
--

INSERT INTO `dos_module_video` (`record_id`, `title`, `titleen`, `postdate`, `tag`, `tagen`, `description`, `descriptionen`, `pic_thumb`, `url`, `record_order`, `hits`, `extra_field1`, `extra_field2`, `hot`, `enable`, `dos_module_item_cat_cat_id`) VALUES
(74, 'Thành Lập Công ty - Báo cáo thuế', '', '2012-06-26 07:49:41', 'thanh-lap-cong-ty-bao-cao-thue', '', 'Thành Lập Công ty - Báo cáo thuế.', '', 'thanh-lap-cong-ty-bao-cao-thue.jpg', 'http://www.youtube.com/watch?v=GIvor7j5ozE', 1, 0, '', '', 0, 1, 63);

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
) ENGINE=InnoDB  DEFAULT CHARSET=utf8 AUTO_INCREMENT=64 ;

--
-- Dumping data for table `dos_module_video_cat`
--

INSERT INTO `dos_module_video_cat` (`cat_id`, `cat_parent_id`, `pic_thumb`, `cat_title`, `cat_titleen`, `tag`, `tagen`, `description`, `descriptionen`, `cat_order`, `cat_enable`, `dos_usernames_username`) VALUES
(63, 0, '', 'Video Châu Giang Thành', '', 'video-chau-giang-thanh', '', 'Video Châu Giang Thành', '', 1, 1, 'chaugiangthanh');

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
('keywords', 'Thành lập doanh nghiệp, giải thể công ty, doanh nghiệp, báo cáo thuế,thành lập 100% vốn nước ngoài.', 'chaugiangthanh'),
('description', 'Thành lập doanh nghiệp. giải thể công ty, doanh nghiệp. báo cáo thuế, quyết toán thuế, thành lập cty 100% vốn nước ngoài. thành lập VPĐD nước ngoài tại việt nam.', 'chaugiangthanh'),
('title', 'Thành lập doanh nghiệp - Chaugiangthanh.com', 'chaugiangthanh'),
('analytics', '<script type="text/javascript">\r\n\r\n  var _gaq = _gaq || [];\r\n  _gaq.push([''_setAccount'', ''UA-32955851-1'']);\r\n  _gaq.push([''_trackPageview'']);\r\n\r\n  (function() {\r\n    var ga = document.createElement(''script''); ga.type = ''text/javascript''; ga.async = true;\r\n    ga.src = (''https:'' == document.location.protocol ? ''https://ssl'' : ''http://www'') + ''.google-analytics.com/ga.js'';\r\n    var s = document.getElementsByTagName(''script'')[0]; s.parentNode.insertBefore(ga, s);\r\n  })();\r\n\r\n</script>', 'chaugiangthanh');

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
('chaugiangthanh', 'info@dos.vn', 'e10adc3949ba59abbe56e057f20f883e', '2012-06-25 01:48:02', '', '0929001001', '', 'user', 'vi|en', '', '2012-09-22 16:00:00', 0, '20122012', '', 1, '010312', 30, 'luat-ke-toan');

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
('address1', 'Địa chỉ: 30/16 Gò Dầu, P. Tân Sơn Nhì, Q. Tân Phú, Hồ Chí Minh', '', 'chaugiangthanh'),
('address2', '', '', 'chaugiangthanh'),
('company_name', 'CÔNG TY TNHH CHÂU GIANG THÀNH', '', 'chaugiangthanh'),
('company_phone', 'Tư vấn : 0913 100 223 (Mr Ngàn)', '', 'chaugiangthanh'),
('copyright', 'Điện thoại: 08. 355 913 27 - 62 74 39 59 - 22 46 16 26 - Fax: 08. 355 941 69', '', 'chaugiangthanh'),
('developed', 'Phát triển bởi', '', 'chaugiangthanh');

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
