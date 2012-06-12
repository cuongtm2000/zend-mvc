-- phpMyAdmin SQL Dump
-- version 3.4.5
-- http://www.phpmyadmin.net
--
-- Host: localhost
-- Generation Time: Jun 12, 2012 at 04:33 AM
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
('about', 'trasammay'),
('advs', 'trasammay'),
('banner', 'trasammay'),
('contact', 'trasammay'),
('news', 'trasammay'),
('products', 'trasammay'),
('services', 'trasammay'),
('supports', 'trasammay');

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
) ENGINE=InnoDB  DEFAULT CHARSET=utf8 AUTO_INCREMENT=108 ;

--
-- Dumping data for table `dos_module_abouts`
--

INSERT INTO `dos_module_abouts` (`record_id`, `title`, `titleen`, `content`, `contenten`, `hit`, `created`, `record_order`, `hot`, `extra_field1`, `extra_field2`, `tag`, `tagen`, `description`, `descriptionen`, `activated`, `dos_usernames_username`) VALUES
(107, 'Giới thiệu công ty', '', '<p style="text-align:justify;">Shop thời trang <strong>240312 </strong>là doanh nghiệp chuyên cung cấp các sản phẩm đồ da trên thị trường Việt Nam từ năm 2001.</p>\n<p style="text-align:justify;"><strong>240312 </strong>là nhà phân phối trực tuyến các sản phẩm túi xách, ví da, dây lưng da, kính thời trang, giầy, xăng đan, thời trang quốc tế được nhập khẩu từ nước ngoài về.</p>\n<p style="text-align:justify;">Bên cạnh việc phân phối trực tuyến cho các khách hàng Hà Nội, TPHCM và các tỉnh, shop còn có 4 showroom trưng bày tại Hà Nội, mở cửa từ 8h - 22h hàng ngày.</p>\n<p style="text-align:justify;">Nhịp sống hiện đại ngày càng ảnh hưởng đến lối sống của mọi tầng lớp xã hội. Trong đó, giới trẻ là những người chịu ảnh hưởng nhiều nhất của lối sống mới này. Trong một cuộc điều tra nhỏ về nhu cầu mua sắm và chăm chút cho vẻ bề ngoài xinh đẹp của giới nữ thì có tới 99% cho kết quả thuận. Bởi vì đời sống ngày càng phát triền, những bộ trang phục và theo đó những phụ kiệm đi kèm, có thể nói lên phong cách và cá tính rất riêng của họ. Chúng tôi hiểu và đã cho ra đời website <strong>240312</strong> nhằm đáp ứng nhu cầu đấy, nhưng theo một cách khác, mới hơn và hoàn hảo hơn.</p>\n<p style="text-align:justify;">Hiện nay, xu hướng thương mại điện tử đang phát triển rất mạnh, trong tương lai sẽ là mô hình chủ đạo và tất yếu, <strong>240312</strong> đã tạo nên sự khác biệt bởi chính hình thức này: Một mô hình cửa hàng trực tuyến, cung cấp mọi góc độ của sản phẩm nhằm giúp khách hàng dễ dàng chọn lựa sản phẩm yêu thích, liên tục cập nhật mẫu mã đa dạng và kèm theo đó là phong cách bán hàng chuyên nghiệp, chu đáo giúp cho bạn trẻ, những người bận rộn, những người làm việc văn phòng không có thời gian đi shopping vẫn có thể thỏa sức mua sắm. với mô hình này chúng tôi đã và đang làm hài lòng tất cả các Khách hàng.</p>', '', 52, '2012-05-11 02:49:55', 1, 0, '', '', 'gioi-thieu-cong-ty', '', 'tui xach  túi xách thời trang  giới thiệu  túi xách  túi hàng hiệu  túi hàng hiệu  cặp da cao cấp  túi ví  túi máy tính  cặp xách  tui dep  may tinh bo tui  túi xách nam  túi xách nữ  túi chống sốc  hang tui xach  túi xách đẹp  tui xach dep  công ty', '', 1, 'trasammay');

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
) ENGINE=InnoDB  DEFAULT CHARSET=utf8 AUTO_INCREMENT=91 ;

--
-- Dumping data for table `dos_module_advs`
--

INSERT INTO `dos_module_advs` (`record_id`, `title`, `titleen`, `pic_thumb`, `url`, `create_date`, `start_date`, `end_date`, `hits`, `record_order`, `position`, `type`, `enable`, `dos_usernames_username`) VALUES
(90, 'Quảng cáo', '', 'quang-cao.jpg', 'http://dos.vn', '2012-05-11 02:49:55', '2012-05-02 16:00:00', '2012-06-29 16:00:00', 0, 1, 'left', '_bank', 1, 'trasammay');

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
) ENGINE=InnoDB  DEFAULT CHARSET=utf8 AUTO_INCREMENT=795 ;

--
-- Dumping data for table `dos_module_banners`
--

INSERT INTO `dos_module_banners` (`banner_id`, `banner_date`, `banner_name`, `banner_url`, `banner_link`, `banner_order`, `banner_type`, `position`, `enable`, `dos_usernames_username`) VALUES
(445, '2012-05-11 02:49:55', 'Banner', 'banner.jpg', '', 1, 'banners', 'default', 1, 'trasammay'),
(446, '2012-05-11 02:49:55', 'Banner 1', 'banner-1.jpg', '', 2, 'banners', 'default', 1, 'trasammay'),
(447, '2012-05-11 02:49:55', 'Banner 2', 'banner-2.jpg', '', 3, 'banners', 'default', 1, 'trasammay'),
(448, '2012-05-14 01:15:13', 'logo-trasammay', 'logo-trasammay.png', '', 4, 'logo', 'default', 1, 'trasammay'),
(788, '2012-06-07 07:30:44', 'Banner 3', 'banner-3.jpg', '', 5, 'banners', 'news', 1, 'trasammay'),
(789, '2012-06-07 07:31:12', 'Banner 4', 'banner-4.jpg', '', 6, 'banners', 'services', 1, 'trasammay'),
(790, '2012-06-07 07:32:02', 'Banner 5', 'banner-5.jpg', '', 7, 'banners', 'about', 1, 'trasammay'),
(791, '2012-06-07 07:32:29', 'Banner 6', 'banner-6.jpg', '', 8, 'banners', 'news', 1, 'trasammay'),
(792, '2012-06-07 07:32:52', 'Banner 7', 'banner-7.jpg', '', 9, 'banners', 'products', 1, 'trasammay'),
(793, '2012-06-07 07:33:40', 'Banner 8', 'banner-8.jpg', '', 10, 'banners', 'products', 1, 'trasammay'),
(794, '2012-06-07 07:34:00', 'Banner 9', 'banner-9.jpg', '', 11, 'banners', 'contact', 1, 'trasammay');

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
('Trang chủ', '', 'default', '', 1, '', '', '', '', 'trasammay'),
('Giới thiệu', '', 'about', '', 2, '', '', '', '', 'trasammay'),
('Sản phẩm', '', 'products', '', 3, '', '', '', '', 'trasammay'),
('Dịch vụ', '', 'services', '', 4, '', '', '', '', 'trasammay'),
('Tin tức & sự kiện', '', 'news', '', 5, '', '', '', '', 'trasammay'),
('Liên hệ', '', 'contact', '', 6, '', '', '', '', 'trasammay');

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
) ENGINE=InnoDB  DEFAULT CHARSET=utf8 AUTO_INCREMENT=98 ;

--
-- Dumping data for table `dos_module_news`
--

INSERT INTO `dos_module_news` (`record_id`, `title`, `titleen`, `postdate`, `pic_thumb`, `preview`, `previewen`, `content`, `contenten`, `tag`, `tagen`, `description`, `descriptionen`, `hits`, `record_order`, `hot`, `extra_field1`, `extra_field2`, `enable`, `dos_module_item_cat_cat_id`) VALUES
(96, 'Túi xách da, túi xách lông thú cho bạn gái', '', '2012-05-11 02:49:55', 'tui-xach-da-tui-xach-long-thu-cho-ban-gai.jpg', '<p>Dù bạn bao nhiêu tuổi, thân hình ra sao, phong cách thời trang như thế nào, bạn cũng có thể chọn cho mình một chiếc túi ưng ý...</p>', '', '<p style="text-align:justify;">Những chiếc túi xách bằng da được điểm xuyết lông thú với nhiều hình dáng, thích hợp cho các bạn gái.</p>\n<p style="text-align:justify;">Dù bạn bao nhiêu tuổi, thân hình ra sao, phong cách thời trang như thế nào, bạn cũng có thể chọn cho mình một chiếc túi xách ưng ý với đủ loại kích thước, kiểu dáng to, nhỏ khác nhau. Với túi xách da, túi xách lông thú, các bạn gái sẽ tự tin hơn trong việc thể hiện phong cách và cá tính bản thân.</p>\n<p><img style="margin-left:auto;margin-right:auto;" src="/public/userfiles/image/240312/image/tui-xach-ban-gai-2.jpg" alt="" width="550" height="410" /></p>\n<p><img style="margin-left:auto;margin-right:auto;" src="/public/userfiles/image/240312/image/tui-xach-ban-gai-3.jpg" alt="" width="550" height="407" /></p>\n<p style="text-align:center;"><img style="float:left;" src="/public/userfiles/image/240312/image/tui-xach-ban-gai-4.jpg" alt="" width="550" height="516" /></p>\n<p style="text-align:center;"><img style="float:left;" src="/public/userfiles/image/240312/image/tui-xach-ban-gai-5.jpg" alt="" width="550" height="531" /></p>\n<p style="text-align:justify;">Để hòa mình vào thế giới túi xách, túi xách da, túi xách thời trang sành điệu truy cập ngay http://shoptuixachda.com - chuyên cung cấp túi xách, túi xách thời trang, túi xách hàng hiệu, túi xách nam, túi xách nữ, túi xách laptop, túi xách đẹp, túi xách tay, túi xách da.</p>', '', 'tui-xach-da-tui-xach-long-thu-cho-ban-gai', '', 'Túi xách da, túi xách lông thú cho bạn gái', '', 0, 4, 0, '', '', 1, 64),
(97, 'Túi xách của bạn, phong cách của bạn', '', '2012-05-11 02:49:55', 'tui-xach-cua-ban-phong-cach-cua-ban.jpg', '<p>Dù bạn bao nhiêu tuổi, thân hình ra sao, phong cách thời trang như thế nào, bạn cũng có thể chọn cho mình một chiếc túi ưng ý...</p>', '', '<p style="text-align:justify;">Các bạn gái hãy thể hiện cá tính riêng của mình với phong cách túi xách 2012.</p>\n<p style="text-align:justify;">Bên cạnh trang phục và phụ kiện đi kèm, túi xách là "người bạn thân thiết" khó thể tách rời mỗi khi các bạn gái đi ra ngoài. Chúng không chỉ giúp các cô gái chứa những vật dụng cần thiết, là một món "nữ trang" mà còn cho các nàng thỏa sức phô diễn phong cách thời trang riêng.</p>\n<p style="text-align:justify;">Với những cô bạn công sở hay yêu thích sự điệu đà, duyên dáng, chiếc túi xách hoặc khoác vai là lựa chọn hợp lý nhất.</p>\n<p><img style="margin-left:auto;margin-right:auto;" src="/public/userfiles/image/240312/image/tui-xach-phong-cach-3.jpg" alt="" width="541" height="660" /></p>\n<p> </p>\n<p><img style="margin-left:auto;margin-right:auto;" src="/public/userfiles/image/240312/image/tui-xach-phong-cach-2.jpg" alt="" width="550" height="397" /></p>\n<p style="text-align:justify;">Để hòa mình vào thế giới túi xách, túi xách da, túi xách thời trang sành điệu truy cập ngay http://240312.dos.vn - chuyên cung cấp túi xách, túi xách thời trang, túi xách hàng hiệu, túi xách nam, túi xách nữ, túi xách laptop, túi xách đẹp, túi xách tay, túi xách da.</p>', '', 'tui-xach-cua-ban-phong-cach-cua-ban', '', 'Dù bạn bao nhiêu tuổi, thân hình ra sao, phong cách thời trang như thế nào, bạn cũng có thể chọn cho mình một chiếc túi ưng ý...', '', 0, 3, 0, '', '', 1, 64);

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
) ENGINE=InnoDB  DEFAULT CHARSET=utf8 AUTO_INCREMENT=65 ;

--
-- Dumping data for table `dos_module_news_cat`
--

INSERT INTO `dos_module_news_cat` (`cat_id`, `cat_parent_id`, `cat_title`, `cat_titleen`, `preview`, `previewen`, `tag`, `tagen`, `description`, `descriptionen`, `pic_full`, `cat_order`, `cat_extra1`, `cat_extra2`, `cat_enable`, `dos_usernames_username`) VALUES
(64, 0, 'TIN TỨC THỜI TRANG', '', '', '', 'tin-tuc-thoi-trang', '', 'TIN TỨC THỜI TRANG', '', '', 1, '', '', 1, 'trasammay');

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
('''127.0.0.1''', 1339467753);

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
) ENGINE=InnoDB  DEFAULT CHARSET=utf8 AUTO_INCREMENT=958 ;

--
-- Dumping data for table `dos_module_products`
--

INSERT INTO `dos_module_products` (`record_id`, `title`, `titleen`, `postdate`, `pic_thumb`, `pic_full`, `pic_desc`, `preview`, `previewen`, `content`, `contenten`, `tag`, `tagen`, `description`, `descriptionen`, `hits`, `record_order`, `unit`, `hot`, `specials`, `extra_field1`, `extra_field2`, `extra_field3`, `extra_field4`, `enable`, `dos_module_item_cat_cat_id`) VALUES
(916, 'Mandarin Knitting Bag', '', '2012-05-11 02:49:55', 'mandarin-knitting-bag-thumb.jpg', 'mandarin-knitting-bag.jpg', '', '<p>Mandarin Knitting Bag</p>', '', '<p>Mandarin Knitting Bag</p>', '', 'mandarin-knitting-bag', '', 'Mandarin Knitting Bag', '', 0, 5, '', 0, 0, '', '', '', '', 1, 256),
(917, 'Tribed Large Shopper', '', '2012-05-11 02:49:55', 'tribed-large-shopper-thumb.jpg', 'tribed-large-shopper.jpg', '', '<p>Tribed Large Shopper</p>', '', '<p>Tribed Large Shopper</p>', '', 'tribed-large-shopper', '', 'Tribed Large Shopper', '', 0, 10, '', 0, 0, '', '', '', '', 1, 256),
(918, 'Rainbow Large Shopper', '', '2012-05-11 02:49:55', 'rainbow-large-shopper-thumb.jpg', 'rainbow-large-shopper.jpg', '', '<p>Rainbow Large Shopper</p>', '', '<p>Rainbow Large Shopper</p>', '', 'rainbow-large-shopper', '', 'Rainbow Large Shopper', '', 0, 11, '', 0, 0, '', '', '', '', 1, 256),
(919, 'Croc Leather Handbag', '', '2012-05-11 02:49:55', 'croc-leather-handbag-thumb.jpg', 'croc-leather-handbag.jpg', '', '<p>Croc Leather Handbag</p>', '', '<p>Croc Leather Handbag</p>', '', 'croc-leather-handbag', '', 'Croc Leather Handbag', '', 0, 1, '', 0, 0, '', '', '', '', 1, 257),
(920, 'Allison Leather Handbag', '', '2012-05-11 02:49:55', 'allison-leather-handbag-thumb.jpg', 'allison-leather-handbag.jpg', '', '<p>Allison Leather Handbag</p>', '', '<p>Allison Leather Handbag</p>', '', 'allison-leather-handbag', '', 'Allison Leather Handbag', '', 0, 4, '', 0, 0, '', '', '', '', 1, 257),
(921, 'Animal Magnetism Handbag', '', '2012-05-11 02:49:55', 'animal-magnetism-handbag-thumb.jpg', 'animal-magnetism-handbag.jpg', '', '<p>Animal Magnetism Handbag</p>', '', '<p>Animal Magnetism Handbag</p>', '', 'animal-magnetism-handbag', '', 'Animal Magnetism Handbag', '', 0, 7, '', 0, 0, '', '', '', '', 1, 257),
(922, 'Spirited Small Drawstring', '', '2012-05-11 02:49:55', 'spirited-small-drawstring-thumb.jpg', 'spirited-small-drawstring.jpg', '', '<p>Spirited Small Drawstring</p>', '', '<p>Spirited Small Drawstring</p>', '', 'spirited-small-drawstring', '', 'Spirited Small Drawstring', '', 0, 8, '', 0, 0, '', '', '', '', 1, 257),
(926, 'Medium Grab Bag', '', '2012-05-11 02:49:55', 'medium-grab-bag-thumb.jpg', 'medium-grab-bag.jpg', '', '<p>Medium Grab Bag</p>', '', '<p>Medium Grab Bag</p>', '', 'medium-grab-bag', '', 'Medium Grab Bag', '', 0, 2, '', 0, 0, '', '', '', '', 1, 258),
(927, 'Eve Knit &amp; Crochet Bag', '', '2012-05-11 02:49:55', 'eve-knit-amp-crochet-bag-thumb.jpg', 'eve-knit-amp-crochet-bag.jpg', '', '<p>Eve Knit &amp; Crochet Bag</p>', '', '<p>Eve Knit &amp; Crochet Bag</p>', '', 'eve-knit-crochet-bag', '', 'Eve Knit &amp; Crochet Bag', '', 0, 3, '', 0, 0, '', '', '', '', 1, 258),
(928, 'Polly Floral Fabric Bag', '', '2012-05-11 02:49:55', 'polly-floral-fabric-bag-thumb.jpg', 'polly-floral-fabric-bag.jpg', '', '<p>Polly Floral Fabric Bag</p>', '', '<p>Polly Floral Fabric Bag</p>', '', 'polly-floral-fabric-bag', '', 'Polly Floral Fabric Bag', '', 0, 6, '', 0, 0, '', '', '', '', 1, 258),
(929, 'Rocked Small Saddle Bag', '', '2012-05-11 02:49:55', 'rocked-small-saddle-bag-thumb.jpg', 'rocked-small-saddle-bag.jpg', '', '<p>Rocked Small Saddle Bag</p>', '', '<p>Rocked Small Saddle Bag</p>', '', 'rocked-small-saddle-bag', '', 'Rocked Small Saddle Bag', '', 0, 9, '', 0, 0, '', '', '', '', 1, 258),
(930, 'Deep Coffee Keylock Bag', '', '2012-05-11 02:49:55', 'deep-coffee-keylock-bag-thumb.jpg', 'deep-coffee-keylock-bag.jpg', '', '<p>Deep Coffee Keylock Bag</p>', '', '<p>Deep Coffee Keylock Bag</p>', '', 'deep-coffee-keylock-bag', '', 'Deep Coffee Keylock Bag', '', 0, 12, '', 0, 0, '', '', '', '', 1, 258),
(931, 'Plastic Summer Tote', '', '2012-05-11 02:49:55', 'plastic-summer-tote-thumb.jpg', 'plastic-summer-tote.jpg', '', '<p>Plastic Summer Tote</p>', '', '<p>Plastic Summer Tote</p>', '', 'plastic-summer-tote', '', 'Plastic Summer Tote', '', 0, 13, '', 0, 0, '', '', '', '', 1, 258),
(933, '40109_Hồng', '', '2012-05-11 02:49:55', '40109hong-thumb.jpg', '40109hong.jpg', '40109hong-desc-1.jpg|40109hong-desc-2.jpg|40109hong-desc-3.jpg|40109hong-desc-4.jpg|40109hong-desc-5.jpg|40109hong-desc-6.jpg', '<p>Túi thời trang xuất Hàn độc đáo. Kiểu dáng Hermes.</p>\n<p>Chất liệu: da PU cao cấp, bề mặt dập nổi độc đáo.</p>\n<p>Màu sắc: Hồng, Trắng, Đen</p>\n<p>Kiểu dáng: xách tay</p>\n<p>Phong cách: Hermes</p>\n<p>Kích thước: 25/32/16 (cm)</p>\n<p>Cấu trúc bên trong túi: có ngăn đựng mobile phone, ngăn đựng tài liệu có khóa kéo.</p>', '', '<p>40109_Hồng</p>', '', '40109hong', '', 'Túi thời trang xuất Hàn độc đáo. Kiểu dáng Hermes. \nChất liệu: da PU cao cấp, bề mặt dập nổi độc đáo.\nMàu sắc: Hồng, Trắng, Đen\nKiểu dáng: xách tay\nPhong cách: Hermes\nKích thước: 25/32/16 (cm)', '', 0, 14, '', 0, 0, '', '', '', '', 1, 259),
(934, '40023_Vàng', '', '2012-05-11 02:49:55', '40023vang-thumb.JPG', '40023vang.JPG', '40023vang-desc-1.JPG', '<p>Túi xách tay nữ, phong cách Hàn quốc. Kiểu dáng độc đáo</p>\n<p>Chất liệu: da PU cao cấp</p>\n<p>Kiểu dáng:xách tay, đeo chéo, đeo vai có thể điều chỉnh dây được</p>\n<p>Màu sắc: be, vàng, cam</p>\n<p>Kích thước: 28/19/6 (cm)</p>', '', '<p>40023_Vàng</p>', '', '40023vang', '', 'Túi xách tay nữ, phong cách Hàn quốc. Kiểu dáng độc đáo\nChất liệu: da PU cao cấp\nKiểu dáng:xách tay, đeo chéo, đeo vai có thể điều chỉnh dây được\nMàu sắc: be, vàng, cam\nKích thước: 28/19/6  (cm)', '', 0, 15, '', 0, 0, '', '', '', '', 1, 259),
(935, '40023_Be', '', '2012-05-11 02:49:55', '40023be-thumb.JPG', '40023be.JPG', '40023be-desc-1.JPG', '<p>Túi thời trang xuất Hàn độc đáo. Kiểu dáng Hermes.</p>\n<p>Chất liệu: da PU cao cấp, bề mặt dập nổi độc đáo.</p>\n<p>Màu sắc: Hồng, Trắng, Đen</p>\n<p>Kiểu dáng: xách tay</p>\n<p>Phong cách: Hermes</p>\n<p>Kích thước: 25/32/16 (cm)</p>\n<p>Cấu trúc bên trong túi: có ngăn đựng mobile phone, ngăn đựng tài liệu có khóa kéo.</p>', '', '<p>40023_Be</p>', '', '40023be', '', 'Túi thời trang xuất Hàn độc đáo. Kiểu dáng Hermes.\nChất liệu: da PU cao cấp, bề mặt dập nổi độc đáo.\nMàu sắc: Hồng, Trắng, Đen\nKiểu dáng: xách tay', '', 0, 16, '', 0, 0, '', '', '', '', 1, 259),
(936, '40023_Cam', '', '2012-05-11 02:49:55', '40023cam-thumb.JPG', '40023cam.JPG', '40023cam-desc-1.JPG', '<p>Túi xách tay nữ, phong cách Hàn quốc. Kiểu dáng độc đáo</p>\n<p>Chất liệu: da PU cao cấp</p>\n<p>Kiểu dáng:xách tay, đeo chéo, đeo vai có thể điều chỉnh dây được</p>\n<p>Màu sắc: be, vàng, cam</p>\n<p>Kích thước: 28/19/6 (cm)</p>', '', '<p>40023_Cam</p>', '', '40023cam', '', 'Túi xách tay nữ, phong cách Hàn quốc. Kiểu dáng độc đáo\nChất liệu: da PU cao cấp\nKiểu dáng:xách tay, đeo chéo, đeo vai có thể điều chỉnh dây được\nMàu sắc: be, vàng, cam\nKích thước: 28/19/6 (cm)', '', 0, 17, '', 0, 0, '', '', '', '', 1, 259),
(937, '40092_Vàng bò', '', '2012-05-11 02:49:55', '40092vang-bo-thumb.jpg', '40092vang-bo.jpg', '40092vang-bo-desc-1.jpg|40092vang-bo-desc-2.jpg|40092vang-bo-desc-3.jpg|40092vang-bo-desc-4.jpg', '<p>Túi thời trang xuất Hàn độc đáo.</p>\n<p>Chất liệu: da PU cao cấp kết hợp lớp nhung mịn bề mặt. Có khóa an toàn.</p>\n<p>Màu sắc: Vàng bò, đen</p>\n<p>Kiểu dáng: xách tay, đeo vai (dây có thể điều chỉnh)</p>\n<p>Phong cách: Hàn quốc</p>\n<p>Kích thước: 33/25/17 (cm)</p>\n<p>Cấu trúc bên trong túi: có ngăn đựng mobile phone, ngăn đựng tài liệu có khóa kéo.</p>', '', '<p>40092_Vàng bò</p>', '', '40092vang-bo', '', 'Túi thời trang xuất Hàn độc đáo.\nChất liệu: da PU cao cấp kết hợp lớp nhung mịn bề mặt. Có khóa an toàn.\nMàu sắc: Vàng bò, đen\nKiểu dáng: xách tay, đeo vai (dây có thể điều chỉnh)', '', 0, 18, '', 0, 0, '', '', '', '', 1, 259),
(938, '40092_Đen', '', '2012-05-11 02:49:55', '40092en-thumb.jpg', '40092en.jpg', '40092en-desc-1.jpg|40092en-desc-2.jpg', '<p>Túi thời trang xuất Hàn độc đáo.</p>\n<p>Chất liệu: da PU cao cấp kết hợp lớp nhung mịn bề mặt. Có khóa an toàn.</p>\n<p>Màu sắc: Vàng bò, đen</p>\n<p>Kiểu dáng: xách tay, đeo vai (dây có thể điều chỉnh)</p>\n<p>Phong cách: Hàn quốc</p>\n<p>Kích thước: 33/25/17 (cm)</p>\n<p>Cấu trúc bên trong túi: có ngăn đựng mobile phone, ngăn đựng tài liệu có khóa kéo.</p>', '', '<p>40092_Đen</p>', '', '40092den', '', 'Túi thời trang xuất Hàn độc đáo.\nChất liệu: da PU cao cấp kết hợp lớp nhung mịn bề mặt. Có khóa an toàn.\nMàu sắc: Vàng bò, đen\nKiểu dáng: xách tay, đeo vai (dây có thể điều chỉnh)', '', 0, 19, '', 0, 0, '', '', '', '', 1, 259),
(939, '40051', '', '2012-05-11 02:49:55', '40051-thumb.JPG', '40051.JPG', '40051-desc-1.JPG', '<p>Túi thời trang xuất Hàn độc đáo. Kiểu dáng Hermes</p>\n<p>Chất liệu: da PU cao cấp. Chất liệu bền, đẹp</p>\n<p>Màu sắc: Như hình</p>\n<p>Kiểu dáng: xách tay</p>\n<p>Phong cách: Hàn quốc</p>\n<p>Kích thước: (cm)</p>\n<p>Cấu trúc bên trong túi: có ngăn đựng mobile phone, ngăn đựng tài liệu có khóa kéo. Nội thất đẹp</p>', '', '<p>40051</p>', '', '40051', '', 'Túi thời trang xuất Hàn độc đáo. Kiểu dáng Hermes\nChất liệu: da PU cao cấp. Chất liệu bền, đẹp\nMàu sắc: Như hình\nKiểu dáng: xách tay', '', 0, 20, '', 0, 0, '', '', '', '', 1, 259),
(940, '40107_Đen', '', '2012-05-11 02:49:55', '40107en-thumb.jpg', '40107en.jpg', '40107en-desc-1.jpg|40107en-desc-2.jpg|40107en-desc-3.jpg', '<p>Túi thời trang xuất Hàn độc đáo. Có thể đựng được laptop 15 inches. Theo khuynh hướng túi thu đông LV 2012.</p>\n<p>Chất liệu: da PU cao cấp, dập nổi vân kiểu da rắn độc đáo, tinh xảo</p>\n<p>Màu sắc: Đen, Cam</p>\n<p>Kiểu dáng: xách tay</p>\n<p>Phong cách: Hàn quốc</p>\n<p>Kích thước: 38/30/16 (cm)</p>\n<p>Cấu trúc bên trong túi: có ngăn đựng mobile phone, ngăn đựng tài liệu có khóa kéo.</p>', '', '<p>40107_Đen</p>', '', '40107den', '', 'Túi thời trang xuất Hàn độc đáo. Có thể đựng được laptop 15 inches. Theo khuynh hướng túi thu đông LV 2012.\nChất liệu: dập nổi vân kiểu da rắn độc đáo, tinh xảo\nMàu sắc: Đen, Cam\nKiểu dáng: xách tay', '', 0, 21, '', 0, 0, '', '', '', '', 1, 259),
(941, '0960', '', '2012-05-11 02:49:55', '0960-thumb.jpg', '0960.jpg', '', '<p>Túi da thật cao cấp, kiểu dáng trẻ trung, năng động, có cả dây xách và dây đeo dài.</p>\n<p>Đựng vừa laptop nhỏ, Galaxy, notebook.....</p>\n<p>Chất liệu: da bò cao cấp. mềm, mịn</p>\n<p>Kích thước: 22/20/6 (cm)</p>', '', '<p>0960</p>', '', '0960', '', '', '', 0, 22, '', 0, 0, '', '', '', '', 1, 259),
(948, '1328', '', '2012-05-11 02:49:55', '1328-thumb.JPG', '1328.JPG', '40037den-desc-1.JPG|1328-desc-1.JPG|1328-desc-2.JPG|1328-desc-3.JPG', '<p>Túi da nam thương hiệu polo xuất khẩu Châu Âu.</p>\n<p>Có thể đựng được Ipad, Galaxy.</p>\n<p>Chất liệu: da bò cao cấp</p>\n<p>Phong cách: Hàn Quốc</p>\n<p>Độ cứng: Vừa</p>\n<p>Màu sắc: đen và nâu</p>\n<p>Kiểu dáng: Đeo dài (quai có thể điều chỉnh)</p>\n<p>Kích thước: 29/25/7 (cm)</p>', '', '<p>1328</p>', '', '1328', '', 'Túi da nam thương hiệu polo xuất khẩu Châu Âu.\nCó thể đựng được Ipad, Galaxy.\nChất liệu: da bò cao cấp\nPhong cách: Hàn Quốc', '', 0, 23, '', 0, 0, '', '', '', '', 1, 260),
(949, '1358', '', '2012-05-11 02:49:55', '1358-thumb.JPG', '1358.JPG', '1358-desc-1.JPG|1358-desc-2.JPG|1358-desc-3.JPG', '<p>Túi da nam thương hiệu Vetework xuất khẩu Châu Âu.</p>\n<p>Túi có thể đựng được IPAD, Galaxy và notebook 10 inches.</p>\n<p>Chất liệu: da bò cao cấp</p>\n<p>Phong cách: Hàn Quốc</p>\n<p>Độ cứng: Vừa</p>\n<p>Màu sắc: nâu đậm</p>\n<p>Kiểu dáng: Xách tay hoặc đeo dài</p>\n<p>Kích thước: 34/26/6(cm)</p>', '', '<p>1358</p>', '', '1358', '', 'Túi da nam thương hiệu Vetework xuất khẩu Châu Âu.\nTúi có thể đựng được IPAD, Galaxy và notebook 10 inches.\nChất liệu: da bò cao cấp\nPhong cách: Hàn Quốc', '', 0, 24, '', 0, 0, '', '', '', '', 1, 260),
(950, '1337', '', '2012-05-11 02:49:55', '1337-thumb.JPG', '1337.JPG', '1337-desc-1.JPG|1337-desc-2.JPG', '<p>Túi da nam thương hiệu Videng Polo xuất khẩu Châu Âu.</p>\n<p>Túi có nhiều ngăn tiện lợi. Có thể đựng được laptop, Galaxy 10 inches, IPAD.</p>\n<p>Chất liệu: da bò cao cấp</p>\n<p>Phong cách: Hàn Quốc</p>\n<p>Độ cứng: Vừa</p>\n<p>Màu sắc: nâu</p>\n<p>Kiểu dáng: Đeo chéo hoặc đeo dài (quai túi có thể điều chỉnh)</p>\n<p>Kích thước: 25/28/8(cm)</p>', '', '<p>1337</p>', '', '1337', '', 'Túi da nam thương hiệu Videng Polo xuất khẩu Châu Âu.\nTúi có nhiều ngăn tiện lợi. Có thể đựng được laptop, Galaxy 10 inches, IPAD.\nChất liệu: da bò cao cấp\nPhong cách: Hàn Quốc', '', 0, 25, '', 0, 0, '', '', '', '', 1, 260),
(951, '10023', '', '2012-05-11 02:49:55', '10023-thumb.JPG', '10023.JPG', '10023-desc-1.JPG|10023-desc-2.JPG', '<p>Túi da nam thương hiệu GIORGIO ARMANI xuất khẩu Châu Âu.</p>\n<p>Chất liệu: da Composite (da PU)</p>\n<p>Phong cách: Châu Âu</p>\n<p>Độ cứng: Mềm mịn</p>\n<p>Màu sắc: DA BÒ</p>\n<p>Kiểu dáng: Xách tay hoặc đeo dài (quai túi có thể điều chỉnh)</p>\n<p>Kích thước: 29/ 34/ 8 (cm)</p>', '', '<p>10023</p>', '', '10023', '', 'Túi da nam thương hiệu GIORGIO ARMANI xuất khẩu Châu Âu.\nChất liệu: da Composite (da PU)\nPhong cách: Châu Âu\nĐộ cứng: Mềm mịn', '', 0, 26, '', 0, 0, '', '', '', '', 1, 260),
(955, '30010', '', '2012-05-11 02:49:55', '30010-thumb.JPG', '30010.JPG', '30010-desc-1.jpg|30010-desc-2.jpg', '<p>Balo xuất Hàn 3 trong 1, vừa xách tay, đeo dài, đeo balo.</p>\n<p>Kiểu dáng trẻ trung</p>\n<p>Màu sắc: Vàng, vàng bò, đỏ, đen, nâu</p>', '', '<p>30010</p>', '', '30010', '', 'Balo xuất Hàn 3 trong 1, vừa xách tay, đeo dài, đeo balo.\nKiểu dáng trẻ trung\nMàu sắc: Vàng, vàng bò, đỏ, đen, nâu', '', 0, 27, '', 0, 0, '', '', '', '', 1, 261),
(956, '1206', '', '2012-05-11 02:49:55', '1206-thumb.png', '1206.png', '', '<p>TẠM HẾT MÀU ĐEN, CHỈ CÒN MÀU NÂU</p>\n<p>Balo xuất Nhật, Hàn chất liệu da cừu, mềm mại. Kiểu dáng phong cách, nam tính.</p>\n<p>Kích thước vừa phải tiện dụng đi công tác, du lịch, đi chơi.</p>\n<p>Màu sắc: Màu cafe, màu đen.</p>\n<p>Giá thị trường: Không dưới 1.500.000</p>\n<p>Kích thước:</p>\n<p>Ngang: 31cm</p>\n<p>Cao: 46cm</p>\n<p>Rộng: 18cm</p>\n<p>Chiều dài tối đa dây đeo vai - khoảng 82cm</p>', '', '<p>1206</p>', '', '1206', '', 'Balo xuất Nhật, Hàn chất liệu da cừu, mềm mại. Kiểu dáng phong cách, nam tính.\nKích thước vừa phải tiện dụng đi công tác, du lịch, đi chơi.\nMàu sắc: Màu cafe, màu đen.', '', 0, 28, '', 0, 0, '', '', '', '', 1, 261),
(957, '30025', '', '2012-05-11 02:49:55', '30025-thumb.jpg', '30025.jpg', '30025-desc-1.jpg|30025-desc-2.jpg|30025-desc-3.jpg|30025-desc-4.jpg', '<p>Balo chất liệu da PU mềm, kiểu dáng thời trang</p>', '', '<p>30025</p>', '', '30025', '', 'Balo chất liệu da PU mềm, kiểu dáng thời trang', '', 0, 29, '', 0, 0, '', '', '', '', 1, 261);

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
) ENGINE=InnoDB  DEFAULT CHARSET=utf8 AUTO_INCREMENT=262 ;

--
-- Dumping data for table `dos_module_products_cat`
--

INSERT INTO `dos_module_products_cat` (`cat_id`, `cat_parent_id`, `cat_title`, `cat_titleen`, `preview`, `previewen`, `tag`, `tagen`, `description`, `descriptionen`, `pic_full`, `pic_desc`, `cat_order`, `cat_extra1`, `cat_extra2`, `cat_enable`, `dos_usernames_username`) VALUES
(256, 0, 'TÚI STYLE', '', '', '', 'tui-style', '', 'Túi phong cách', '', 'tui-phong-cach.jpg', '', 1, '', '', 1, 'trasammay'),
(257, 0, 'TÚI DA THẬT', '', '', '', 'tui-da-that', '', 'Túi da thật', '', 'tui-da.jpg', '', 2, '', '', 1, 'trasammay'),
(258, 0, 'TÚI THIẾT KẾ RIÊNG', '', '', '', 'tui-thiet-ke-rieng', '', 'Túi thiết kế', '', 'tui-thiet-ke.jpg', '', 2, '', '', 1, 'trasammay'),
(259, 0, 'TÚI DOANH NHÂN', '', '', '', 'tui-doanh-nhan', '', 'TÚI DOANH NHÂN', '', 'ti-doanh-nhn.JPG', '', 1, '', '', 1, 'trasammay'),
(260, 0, 'TÚI, BA LÔ LAPTOP, IPAD, GALAXY', '', '', '', 'tui-ba-lo-laptop-ipad-galaxy', '', 'TÚI, BA LÔ LAPTOP, IPAD, GALAXY', '', 'ti-ba-l-laptop-ipad-galaxy.JPG', '', 1, '', '', 1, 'trasammay'),
(261, 0, 'TÚI MÁY ẢNH', '', '', '', 'tui-may-anh', '', 'TÚI MÁY ẢNH', '', 'ti-my-nh.JPG', '', 1, '', '', 1, 'trasammay');

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
) ENGINE=InnoDB  DEFAULT CHARSET=utf8 AUTO_INCREMENT=56 ;

--
-- Dumping data for table `dos_module_services`
--

INSERT INTO `dos_module_services` (`record_id`, `title`, `titleen`, `preview`, `previewen`, `content`, `contenten`, `pic_full`, `hit`, `created`, `record_order`, `hot`, `extra_field1`, `extra_field2`, `tag`, `tagen`, `description`, `descriptionen`, `activated`, `dos_usernames_username`) VALUES
(55, 'MAY ĐỒNG PHỤC', '', '', '', '<p style="text-align:justify;">Xã hội ngày càng phát triển con người không còn dừng lại ở việc ăn no, mặc ấm mà chính là ăn ngon mặc đẹp,mặc đẹp chính là một nhu cầu thể hiện bản thân ,nhu cầu thể hiện bản thân mình là ai? từ đâu? hiểu được nhu cầu ngày càng cao đó <strong>240312</strong> sẽ cung ứng cho quý khách những sản phẩm may mặc như:</p>\n<p style="text-align:justify;">Đồng phục học sinh Đồng phục văn phòng Đồng phục bệnh viên Đồng phục nhà máy xí nghiệp Đồng phục nhà hàng,khách sạn, đồng phục lớp, nhóm, tập thể</p>\n<p style="text-align:justify;">Khi quý khách khoác lên người bộ đồng phục mang thương hiệu của tổ chức, công ty mình, quý khách sẽ tự tin hơn về thương hiệu của mình đồng thời cũng phân biệt được quý khách là ai? đến từ đâu? Giữa muôn vạn các thương hiệu khác, mặc đồng phục để tạo nên sự chuyên nghiệp, ”khác biệt” và đặc biệt hơn là sự tỏa sáng cho thương hiệu mình.</p>\n<p style="text-align:justify;">Bên cạnh đó công ty chúng tôi còn cung cấp cho quý khách những sản phẩm làm quà tặng quảng cáo ,quà tặng khuyến mãi cho đối tác ,khách hàng của mình như:</p>\n<p style="text-align:justify;">Áo thun,áo gió ,áo mưa Mũ,nón Ba lô ,túi sách,ví Gối Giày dép</p>\n<p style="text-align:justify;">Tất cả những sản phẩm của chúng tôi đều có in, thêu logo,tên công ty trên sản phẩm.</p>\n<p style="text-align:justify;">Với giá cả cạnh tranh, sản phẩm chất lượng, uy tín đến với công ty chúng tôi là sự lựa chọn hoàn hảo của quý khách.</p>\n<p style="text-align:justify;">Với phương châm <strong>TỎA SÁNG THƯƠNG HIỆU – NÂNG BƯỚC THÀNH CÔNG</strong>. <strong>240312</strong> hy vọng sẽ mang đến cho quý khách sự tự tin ,thoải mái và nguồn năng lực dồi dào khi khoát lên mình sản phẩm của chúng tôi.</p>\n<p style="text-align:justify;">Thành công của quý khách là niềm tự hào của chúng tôi!</p>', '', '', 11, '2012-05-11 02:49:55', 1, 0, '', '', 'may-dong-phuc', '', '', '', 1, 'trasammay');

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
) ENGINE=InnoDB  DEFAULT CHARSET=utf8 AUTO_INCREMENT=34 ;

--
-- Dumping data for table `dos_module_video`
--

INSERT INTO `dos_module_video` (`record_id`, `title`, `titleen`, `postdate`, `tag`, `tagen`, `description`, `descriptionen`, `pic_thumb`, `url`, `record_order`, `hits`, `extra_field1`, `extra_field2`, `hot`, `enable`, `dos_module_item_cat_cat_id`) VALUES
(33, 'Túi xách thời trang', '', '2012-05-11 02:49:55', 'tui-xach-thoi-trang', '', '', '', 'tui-xach-thoi-trang.jpg', 'http://www.youtube.com/watch?v=IwckCuHqrDc&feature=fvsr', 1, 0, '', '', 0, 1, 25);

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
) ENGINE=InnoDB  DEFAULT CHARSET=utf8 AUTO_INCREMENT=26 ;

--
-- Dumping data for table `dos_module_video_cat`
--

INSERT INTO `dos_module_video_cat` (`cat_id`, `cat_parent_id`, `pic_thumb`, `cat_title`, `cat_titleen`, `tag`, `tagen`, `description`, `descriptionen`, `cat_order`, `cat_enable`, `dos_usernames_username`) VALUES
(25, 0, '', 'TÚI XÁCH', '', 'tui-xach', '', 'TÚI XÁCH', '', 1, 1, 'trasammay');

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
('trasammay', 'info@thuonghoi.com', 'e10adc3949ba59abbe56e057f20f883e', '2012-05-11 02:49:41', '', '0987001001', '', 'user', 'vi', '', '2012-07-09 16:00:00', 0, '20122012', '', 1, '010312', 55, 'tham-my-vien');

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
('company_name', 'CÔNG TY CỔ PHẦN TRÀ SÂM MÂY', '', 'trasammay'),
('company_name_footer', 'Mẫu 240312', '', 'trasammay');

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
