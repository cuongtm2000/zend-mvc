-- phpMyAdmin SQL Dump
-- version 3.4.5
-- http://www.phpmyadmin.net
--
-- Host: localhost
-- Generation Time: May 03, 2012 at 06:38 AM
-- Server version: 5.5.16
-- PHP Version: 5.3.8

SET SQL_MODE="NO_AUTO_VALUE_ON_ZERO";
SET time_zone = "+00:00";


/*!40101 SET @OLD_CHARACTER_SET_CLIENT=@@CHARACTER_SET_CLIENT */;
/*!40101 SET @OLD_CHARACTER_SET_RESULTS=@@CHARACTER_SET_RESULTS */;
/*!40101 SET @OLD_COLLATION_CONNECTION=@@COLLATION_CONNECTION */;
/*!40101 SET NAMES utf8 */;

--
-- Database: `dos`
--

-- --------------------------------------------------------

--
-- Table structure for table `dos_agents`
--

CREATE TABLE IF NOT EXISTS `dos_agents` (
  `agent_id` varchar(8) NOT NULL,
  `email` varchar(45) NOT NULL,
  `password` varchar(45) NOT NULL,
  `created_date` timestamp NOT NULL DEFAULT CURRENT_TIMESTAMP,
  `fullname` varchar(45) NOT NULL,
  `phone` varchar(30) NOT NULL,
  `company` varchar(100) DEFAULT NULL,
  `website` varchar(60) DEFAULT NULL,
  `picture` varchar(60) DEFAULT NULL,
  `address` varchar(100) NOT NULL,
  `yahoo` varchar(45) DEFAULT NULL,
  `skype` varchar(45) DEFAULT NULL,
  `content` varchar(45) DEFAULT NULL,
  `point` varchar(15) NOT NULL DEFAULT '0',
  `bonus` varchar(15) NOT NULL DEFAULT '0',
  `type` varchar(45) NOT NULL DEFAULT '0',
  `parent_id` varchar(8) NOT NULL,
  `enable` tinyint(1) NOT NULL,
  `dos_provinces_province_id` int(11) NOT NULL,
  PRIMARY KEY (`agent_id`),
  KEY `fk_dos_agents_dos_provinces1` (`dos_provinces_province_id`)
) ENGINE=InnoDB DEFAULT CHARSET=utf8;

--
-- Dumping data for table `dos_agents`
--

INSERT INTO `dos_agents` (`agent_id`, `email`, `password`, `created_date`, `fullname`, `phone`, `company`, `website`, `picture`, `address`, `yahoo`, `skype`, `content`, `point`, `bonus`, `type`, `parent_id`, `enable`, `dos_provinces_province_id`) VALUES
('20122012', 'info@dos.vn', '1960fdca5ecf16c0ddb74fdc814ee348', '2012-05-01 16:05:05', 'Dos.vn', '0929001001', 'Công ty cổ phần Thương Hội', 'http://dos.vn', NULL, 'Gò Dầu - P. Tân Sơn Nhì - Q. Tân Phú - TpHCM', NULL, NULL, NULL, '0', '0', '0', '20122012', 1, 30);

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
('advs_bottom_height', 32, '', '020512'),
('advs_bottom_width', 980, '', '020512'),
('advs_left_height', 190, '', '010312'),
('advs_left_height', 220, '', '020512'),
('advs_left_height', 160, '', '070312'),
('advs_left_height', 200, '', '130312'),
('advs_left_height', 130, '', '180412'),
('advs_left_height', 200, '', '200312'),
('advs_left_height', 190, '', '220312'),
('advs_left_height', 200, '', '230412'),
('advs_left_height', 250, '', '240312'),
('advs_left_height', 200, '', '260312'),
('advs_left_height', 300, '', '270412'),
('advs_left_width', 190, '', '010312'),
('advs_left_width', 200, '', '020512'),
('advs_left_width', 160, '', '070312'),
('advs_left_width', 220, '', '130312'),
('advs_left_width', 204, '', '180412'),
('advs_left_width', 200, '', '200312'),
('advs_left_width', 190, '', '220312'),
('advs_left_width', 224, '', '230412'),
('advs_left_width', 210, '', '240312'),
('advs_left_width', 210, '', '260312'),
('advs_left_width', 179, '', '270412'),
('advs_right_height', 190, '', '010312'),
('advs_right_height', 190, '', '220312'),
('advs_right_height', 300, '', '270412'),
('advs_right_width', 190, '', '010312'),
('advs_right_width', 190, '', '220312'),
('advs_right_width', 179, '', '270412'),
('advs_top_height', 146, '', '020512'),
('advs_top_width', 250, '', '020512'),
('banner_height', 332, '', '010312'),
('banner_height', 290, '', '020512'),
('banner_height', 324, '', '070312'),
('banner_height', 300, '', '130312'),
('banner_height', 339, '', '180412'),
('banner_height', 328, '', '200312'),
('banner_height', 332, '', '220312'),
('banner_height', 297, '', '230412'),
('banner_height', 308, '', '240312'),
('banner_height', 387, '', '260312'),
('banner_height', 285, '', '270412'),
('banner_width', 951, '', '010312'),
('banner_width', 725, '', '020512'),
('banner_width', 757, '', '070312'),
('banner_width', 950, '', '130312'),
('banner_width', 940, '', '180412'),
('banner_width', 718, '', '200312'),
('banner_width', 950, '', '220312'),
('banner_width', 709, '', '230412'),
('banner_width', 750, '', '240312'),
('banner_width', 710, '', '260312'),
('banner_width', 597, '', '270412'),
('logo_height', 108, '', '010312'),
('logo_height', 110, '', '020512'),
('logo_height', 57, '', '070312'),
('logo_height', 100, '', '130312'),
('logo_height', 51, '', '180412'),
('logo_height', 55, '', '200312'),
('logo_height', 79, '', '220312'),
('logo_height', 65, '', '230412'),
('logo_height', 53, '', '240312'),
('logo_height', 46, '', '260312'),
('logo_height', 97, '', '270412'),
('logo_width', 155, '', '010312'),
('logo_width', 285, '', '020512'),
('logo_width', 260, '', '070312'),
('logo_width', 735, '', '130312'),
('logo_width', 239, '', '180412'),
('logo_width', 314, '', '200312'),
('logo_width', 259, '', '220312'),
('logo_width', 320, '', '230412'),
('logo_width', 367, '', '240312'),
('logo_width', 300, '', '260312'),
('logo_width', 107, '', '270412'),
('max_image_height', 667, '', '010312'),
('max_image_height', 670, '', '020512'),
('max_image_height', 600, '', '070312'),
('max_image_height', 600, '', '130312'),
('max_image_height', 700, '', '180412'),
('max_image_height', 600, '', '200312'),
('max_image_height', 667, '', '220312'),
('max_image_height', 600, '', '230412'),
('max_image_height', 660, '', '240312'),
('max_image_height', 450, '', '260312'),
('max_image_height', 420, '', '270412'),
('max_image_width', 500, '', '010312'),
('max_image_width', 720, '', '020512'),
('max_image_width', 700, '', '070312'),
('max_image_width', 650, '', '130312'),
('max_image_width', 670, '', '180412'),
('max_image_width', 450, '', '200312'),
('max_image_width', 500, '', '220312'),
('max_image_width', 680, '', '230412'),
('max_image_width', 600, '', '240312'),
('max_image_width', 600, '', '260312'),
('max_image_width', 560, '', '270412'),
('news_cat_height', 89, '', '010312'),
('news_cat_height', 100, '', '020512'),
('news_cat_height', 100, '', '070312'),
('news_cat_height', 90, '', '130312'),
('news_cat_height', 89, '', '180412'),
('news_cat_height', 89, '', '200312'),
('news_cat_height', 100, '', '230412'),
('news_cat_height', 100, '', '240312'),
('news_cat_height', 89, '', '260312'),
('news_cat_height', 100, '', '270412'),
('news_cat_width', 143, '', '010312'),
('news_cat_width', 143, '', '020512'),
('news_cat_width', 130, '', '070312'),
('news_cat_width', 143, '', '130312'),
('news_cat_width', 143, '', '180412'),
('news_cat_width', 143, '', '200312'),
('news_cat_width', 143, '', '230412'),
('news_cat_width', 143, '', '240312'),
('news_cat_width', 143, '', '260312'),
('news_cat_width', 143, '', '270412'),
('news_height_thumb', 89, '', '010312'),
('news_height_thumb', 100, '', '020512'),
('news_height_thumb', 89, '', '070312'),
('news_height_thumb', 90, '', '130312'),
('news_height_thumb', 89, '', '180412'),
('news_height_thumb', 100, '', '200312'),
('news_height_thumb', 100, '', '220312'),
('news_height_thumb', 100, '', '230412'),
('news_height_thumb', 100, '', '240312'),
('news_height_thumb', 89, '', '260312'),
('news_height_thumb', 100, '', '270412'),
('news_num_paging_cat', 10, '', '010312'),
('news_num_paging_cat', 10, '', '020512'),
('news_num_paging_cat', 10, '', '070312'),
('news_num_paging_cat', 10, '', '130312'),
('news_num_paging_cat', 10, '', '180412'),
('news_num_paging_cat', 10, '', '200312'),
('news_num_paging_cat', 10, '', '220312'),
('news_num_paging_cat', 10, '', '230412'),
('news_num_paging_cat', 10, '', '240312'),
('news_num_paging_cat', 10, '', '260312'),
('news_num_paging_cat', 10, '', '270412'),
('news_num_paging_hot', 6, '', '010312'),
('news_num_paging_hot', 6, '', '020512'),
('news_num_paging_hot', 6, '', '070312'),
('news_num_paging_hot', 6, '', '130312'),
('news_num_paging_hot', 6, '', '180412'),
('news_num_paging_hot', 6, '', '220312'),
('news_num_paging_hot', 6, '', '230412'),
('news_num_paging_hot', 6, '', '240312'),
('news_num_paging_hot', 6, '', '260312'),
('news_num_paging_hot', 6, '', '270412'),
('news_num_paging_index', 10, '', '010312'),
('news_num_paging_index', 10, '', '020512'),
('news_num_paging_index', 10, '', '070312'),
('news_num_paging_index', 10, '', '130312'),
('news_num_paging_index', 10, '', '180412'),
('news_num_paging_index', 10, '', '200312'),
('news_num_paging_index', 10, '', '220312'),
('news_num_paging_index', 10, '', '230412'),
('news_num_paging_index', 10, '', '240312'),
('news_num_paging_index', 10, '', '260312'),
('news_num_paging_index', 10, '', '270412'),
('news_num_paging_new', 6, '', '010312'),
('news_num_paging_new', 6, '', '020512'),
('news_num_paging_new', 10, '', '070312'),
('news_num_paging_new', 10, '', '130312'),
('news_num_paging_new', 6, '', '180412'),
('news_num_paging_new', 8, '', '200312'),
('news_num_paging_new', 6, '', '220312'),
('news_num_paging_new', 6, '', '230412'),
('news_num_paging_new', 6, '', '240312'),
('news_num_paging_new', 6, '', '260312'),
('news_num_paging_new', 6, '', '270412'),
('news_width_thumb', 143, '', '010312'),
('news_width_thumb', 143, '', '020512'),
('news_width_thumb', 143, '', '070312'),
('news_width_thumb', 143, '', '130312'),
('news_width_thumb', 143, '', '180412'),
('news_width_thumb', 143, '', '200312'),
('news_width_thumb', 145, '', '220312'),
('news_width_thumb', 143, '', '230412'),
('news_width_thumb', 143, '', '240312'),
('news_width_thumb', 143, '', '260312'),
('news_width_thumb', 143, '', '270412'),
('products_cat_height', 155, '', '010312'),
('products_cat_height', 198, '', '020512'),
('products_cat_height', 200, '', '070312'),
('products_cat_height', 121, '', '130312'),
('products_cat_height', 160, '', '180412'),
('products_cat_height', 170, '', '200312'),
('products_cat_height', 150, '', '220312'),
('products_cat_height', 150, '', '230412'),
('products_cat_height', 165, '', '240312'),
('products_cat_height', 160, '', '260312'),
('products_cat_height', 130, '', '270412'),
('products_cat_width', 115, '', '010312'),
('products_cat_width', 170, '', '020512'),
('products_cat_width', 150, '', '070312'),
('products_cat_width', 152, '', '130312'),
('products_cat_width', 175, '', '180412'),
('products_cat_width', 170, '', '200312'),
('products_cat_width', 200, '', '220312'),
('products_cat_width', 150, '', '230412'),
('products_cat_width', 165, '', '240312'),
('products_cat_width', 160, '', '260312'),
('products_cat_width', 130, '', '270412'),
('products_height', 400, '', '010312'),
('products_height', 500, '', '020512'),
('products_height', 500, '', '070312'),
('products_height', 400, '', '130312'),
('products_height', 550, '', '180412'),
('products_height', 600, '', '200312'),
('products_height', 400, '', '220312'),
('products_height', 650, '', '230412'),
('products_height', 660, '', '240312'),
('products_height', 450, '', '260312'),
('products_height', 550, '', '270412'),
('products_height_thumb', 121, '', '010312'),
('products_height_thumb', 198, '', '020512'),
('products_height_thumb', 200, '', '070312'),
('products_height_thumb', 121, '', '130312'),
('products_height_thumb', 160, '', '180412'),
('products_height_thumb', 170, '', '200312'),
('products_height_thumb', 135, '', '220312'),
('products_height_thumb', 150, '', '230412'),
('products_height_thumb', 165, '', '240312'),
('products_height_thumb', 160, '', '260312'),
('products_height_thumb', 130, '', '270412'),
('products_num_paging_cat', 15, '', '010312'),
('products_num_paging_cat', 20, '', '020512'),
('products_num_paging_cat', 16, '', '070312'),
('products_num_paging_cat', 12, '', '130312'),
('products_num_paging_cat', 16, '', '180412'),
('products_num_paging_cat', 16, '', '200312'),
('products_num_paging_cat', 8, '', '220312'),
('products_num_paging_cat', 16, '', '230412'),
('products_num_paging_cat', 16, '', '240312'),
('products_num_paging_cat', 16, '', '260312'),
('products_num_paging_cat', 16, '', '270412'),
('products_num_paging_hot', 9, '', '010312'),
('products_num_paging_hot', 20, '', '020512'),
('products_num_paging_hot', 8, '', '070312'),
('products_num_paging_hot', 8, '', '130312'),
('products_num_paging_hot', 8, '', '180412'),
('products_num_paging_hot', 12, '', '200312'),
('products_num_paging_hot', 8, '', '230412'),
('products_num_paging_hot', 8, '', '240312'),
('products_num_paging_hot', 30, '', '260312'),
('products_num_paging_hot', 12, '', '270412'),
('products_num_paging_new', 9, '', '010312'),
('products_num_paging_new', 20, '', '020512'),
('products_num_paging_new', 16, '', '070312'),
('products_num_paging_new', 8, '', '130312'),
('products_num_paging_new', 20, '', '180412'),
('products_num_paging_new', 12, '', '200312'),
('products_num_paging_new', 4, '', '220312'),
('products_num_paging_new', 16, '', '230412'),
('products_num_paging_new', 16, '', '240312'),
('products_num_paging_new', 8, '', '260312'),
('products_num_paging_new', 20, '', '270412'),
('products_num_paging_other', 3, '', '010312'),
('products_num_paging_other', 4, '', '020512'),
('products_num_paging_other', 4, '', '070312'),
('products_num_paging_other', 4, '', '130312'),
('products_num_paging_other', 4, '', '180412'),
('products_num_paging_other', 3, '', '200312'),
('products_num_paging_other', 2, '', '220312'),
('products_num_paging_other', 4, '', '230412'),
('products_num_paging_other', 4, '', '240312'),
('products_num_paging_other', 4, '', '260312'),
('products_num_paging_other', 4, '', '270412'),
('products_width', 500, '', '010312'),
('products_width', 500, '', '020512'),
('products_width', 600, '', '070312'),
('products_width', 500, '', '130312'),
('products_width', 550, '', '180412'),
('products_width', 500, '', '200312'),
('products_width', 500, '', '220312'),
('products_width', 700, '', '230412'),
('products_width', 460, '', '240312'),
('products_width', 500, '', '260312'),
('products_width', 660, '', '270412'),
('products_width_thumb', 152, '', '010312'),
('products_width_thumb', 170, '', '020512'),
('products_width_thumb', 150, '', '070312'),
('products_width_thumb', 152, '', '130312'),
('products_width_thumb', 175, '', '180412'),
('products_width_thumb', 170, '', '200312'),
('products_width_thumb', 200, '', '220312'),
('products_width_thumb', 150, '', '230412'),
('products_width_thumb', 165, '', '240312'),
('products_width_thumb', 160, '', '260312'),
('products_width_thumb', 130, '', '270412'),
('services_height', 90, '', '010312'),
('services_height', 170, '', '020512'),
('services_height', 100, '', '070312'),
('services_height', 89, '', '130312'),
('services_height', 100, '', '180412'),
('services_height', 200, '', '200312'),
('services_height', 90, '', '220312'),
('services_height', 110, '', '230412'),
('services_height', 160, '', '240312'),
('services_height', 90, '', '260312'),
('services_width', 144, '', '010312'),
('services_width', 170, '', '020512'),
('services_width', 150, '', '070312'),
('services_width', 143, '', '130312'),
('services_width', 160, '', '180412'),
('services_width', 200, '', '200312'),
('services_width', 145, '', '220312'),
('services_width', 192, '', '230412'),
('services_width', 160, '', '240312'),
('services_width', 144, '', '260312'),
('video_cat_height', 100, '', '260312'),
('video_cat_width', 145, '', '260312'),
('video_height_thumb', 115, '', '010312'),
('video_height_thumb', 150, '', '020512'),
('video_height_thumb', 160, '', '070312'),
('video_height_thumb', 121, '', '130312'),
('video_height_thumb', 160, '', '180412'),
('video_height_thumb', 170, '', '200312'),
('video_height_thumb', 150, '', '220312'),
('video_height_thumb', 169, '', '230412'),
('video_height_thumb', 100, '', '240312'),
('video_height_thumb', 130, '', '270412'),
('video_num_paging_cat', 4, '', '010312'),
('video_num_paging_cat', 16, '', '020512'),
('video_num_paging_cat', 8, '', '070312'),
('video_num_paging_cat', 8, '', '130312'),
('video_num_paging_cat', 8, '', '180412'),
('video_num_paging_cat', 8, '', '200312'),
('video_num_paging_cat', 2, '', '220312'),
('video_num_paging_cat', 8, '', '230412'),
('video_num_paging_cat', 8, '', '240312'),
('video_num_paging_cat', 8, '', '260312'),
('video_num_paging_cat', 8, '', '270412'),
('video_num_paging_index', 4, '', '010312'),
('video_num_paging_index', 16, '', '020512'),
('video_num_paging_index', 8, '', '070312'),
('video_num_paging_index', 8, '', '130312'),
('video_num_paging_index', 8, '', '180412'),
('video_num_paging_index', 8, '', '200312'),
('video_num_paging_index', 2, '', '220312'),
('video_num_paging_index', 8, '', '230412'),
('video_num_paging_index', 8, '', '240312'),
('video_num_paging_index', 8, '', '260312'),
('video_num_paging_index', 8, '', '270412'),
('video_width_thumb', 115, '', '010312'),
('video_width_thumb', 170, '', '020512'),
('video_width_thumb', 160, '', '070312'),
('video_width_thumb', 152, '', '130312'),
('video_width_thumb', 175, '', '180412'),
('video_width_thumb', 170, '', '200312'),
('video_width_thumb', 200, '', '220312'),
('video_width_thumb', 150, '', '230412'),
('video_width_thumb', 165, '', '240312'),
('video_width_thumb', 130, '', '270412');

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
('address1', 'Địa chỉ công ty 1', 'Address 1', 0),
('address2', 'Địa chỉ chi nhánh', 'Address 2', 0),
('add_new', 'Thêm mới', 'Add new', 1),
('add_row', 'Thêm dòng', 'Add row', 1),
('advs', 'Quảng cáo', 'Adv', 0),
('banner', 'Logo &amp; Banner', 'Logo &amp; Banner', 0),
('cancel', 'Hủy bỏ', 'Cancel', 1),
('cat_parent', 'Phân loại', 'Category', 1),
('cat_title', 'Danh mục', 'Category', 0),
('cat_titleen', 'Danh mục En', 'Category', 1),
('company_name', 'Công ty cổ phần Thương Hội', 'Thuong Hoi JSC', 0),
('company_name_footer', 'Công ty cổ phần Thương Hội', 'Thuong Hoi JSC', 0),
('company_phone', 'Phone: 0929001001 (An)', 'Phone: 0929001001 (An)', 0),
('contact', 'Liên hệ', 'Contact', 0),
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
('010312', 'video', 'jquery.prettyPhoto.js', 'javascript'),
('020512', 'products', 'scroll.css|jquery.fancybox.css', 'css'),
('020512', 'products', 'jcarousellite_1.0.1.js|scroller.js|jquery.fancybox.js|jquery.scroll-1.4.2-min.js|jquery.serialScroll-1.2.2-min.js|product.js|jquery.simplyscroll.vertical.js', 'javascript'),
('020512', 'video', 'prettyPhoto.css', 'css'),
('020512', 'video', 'jquery.prettyPhoto.js', 'javascript'),
('070312', 'video', 'prettyPhoto.css', 'css'),
('070312', 'video', 'jquery.prettyPhoto.js', 'javascript'),
('130312', 'video', 'prettyPhoto.css', 'css'),
('130312', 'video', 'jquery.prettyPhoto.js', 'javascript'),
('180412', 'products', 'scroll.css|jquery.fancybox.css', 'css'),
('180412', 'products', 'jcarousellite_1.0.1.js|scroller.js|jquery.fancybox.js|jquery.scroll-1.4.2-min.js|jquery.serialScroll-1.2.2-min.js|product.js', 'javascript'),
('180412', 'video', 'prettyPhoto.css', 'css'),
('180412', 'video', 'jquery.prettyPhoto.js', 'javascript'),
('200312', 'products', 'product-detail.css', 'css'),
('200312', 'products', 'prototype.js|effects.js|dragdrop.js|slider.js|product.js', 'javascript'),
('200312', 'video', 'prettyPhoto.css', 'css'),
('200312', 'video', 'jquery.prettyPhoto.js', 'javascript'),
('220312', 'default', 'prettyPhoto.css', 'css'),
('220312', 'default', 'jquery.prettyPhoto.js', 'javascript'),
('220312', 'video', 'prettyPhoto.css', 'css'),
('220312', 'video', 'jquery.prettyPhoto.js', 'javascript'),
('230412', 'products', 'scroll.css|jquery.fancybox.css', 'css'),
('230412', 'products', 'jcarousellite_1.0.1.js|scroller.js|jquery.fancybox.js|jquery.scroll-1.4.2-min.js|jquery.serialScroll-1.2.2-min.js|product.js', 'javascript'),
('230412', 'video', 'prettyPhoto.css', 'css'),
('230412', 'video', 'jquery.prettyPhoto.js', 'javascript'),
('240312', 'products', 'scroll.css|jquery.fancybox.css', 'css'),
('240312', 'products', 'jcarousellite_1.0.1.js|scroller.js|jquery.fancybox.js|jquery.scroll-1.4.2-min.js|jquery.serialScroll-1.2.2-min.js|product.js', 'javascript'),
('240312', 'video', 'prettyPhoto.css', 'css'),
('240312', 'video', 'jquery.prettyPhoto.js', 'javascript'),
('260312', 'default', 'jcarousellite.js|special-block.js|part.js', 'javascript'),
('260312', 'products', 'scroll.css|jquery.fancybox.css', 'css'),
('260312', 'products', 'jcarousellite_1.0.1.js|scroller.js|jquery.fancybox.js|jquery.scroll-1.4.2-min.js|jquery.serialScroll-1.2.2-min.js|product.js', 'javascript'),
('270412', 'default', 'simplyscroll.verticall.css|prettyPhoto.css', 'css'),
('270412', 'default', 'jquery.simplyscroll.vertical.js|verticall-config.js|jquery.prettyPhoto.js', 'javascript'),
('270412', 'products', 'scroll.css|jquery.fancybox.css', 'css'),
('270412', 'products', 'jcarousellite_1.0.1.js|scroller.js|jquery.fancybox.js|jquery.scroll-1.4.2-min.js|jquery.serialScroll-1.2.2-min.js|product.js', 'javascript'),
('270412', 'video', 'prettyPhoto.css', 'css'),
('270412', 'video', 'jquery.prettyPhoto.js', 'javascript');

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
('default', NULL, NULL, 1, 1),
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
('about', '070312'),
('about', '200312'),
('about', '230412'),
('about', 'cuasat24h'),
('about', 'dos'),
('about', 'gothuytung'),
('about', 'hoasaytinh'),
('advs', '070312'),
('advs', '200312'),
('advs', '230412'),
('advs', 'cuasat24h'),
('advs', 'dos'),
('advs', 'gothuytung'),
('advs', 'hoasaytinh'),
('banner', '200312'),
('banner', '230412'),
('banner', 'cuasat24h'),
('banner', 'dos'),
('banner', 'gothuytung'),
('banner', 'hoasaytinh'),
('contact', '070312'),
('contact', '200312'),
('contact', '230412'),
('contact', 'cuasat24h'),
('contact', 'dos'),
('contact', 'gothuytung'),
('contact', 'hoasaytinh'),
('news', '070312'),
('news', '200312'),
('news', '230412'),
('news', 'cuasat24h'),
('news', 'dos'),
('news', 'gothuytung'),
('news', 'hoasaytinh'),
('products', '070312'),
('products', '200312'),
('products', '230412'),
('products', 'cuasat24h'),
('products', 'dos'),
('products', 'gothuytung'),
('products', 'hoasaytinh'),
('services', '070312'),
('services', '200312'),
('services', '230412'),
('services', 'cuasat24h'),
('services', 'dos'),
('services', 'gothuytung'),
('services', 'hoasaytinh'),
('supports', '070312'),
('supports', '200312'),
('supports', '230412'),
('supports', 'cuasat24h'),
('supports', 'dos'),
('supports', 'gothuytung'),
('supports', 'hoasaytinh'),
('video', '200312'),
('video', '230412'),
('video', 'cuasat24h'),
('video', 'hoasaytinh');

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
) ENGINE=InnoDB  DEFAULT CHARSET=utf8 AUTO_INCREMENT=86 ;

--
-- Dumping data for table `dos_module_abouts`
--

INSERT INTO `dos_module_abouts` (`record_id`, `title`, `titleen`, `content`, `contenten`, `hit`, `created`, `record_order`, `hot`, `extra_field1`, `extra_field2`, `tag`, `tagen`, `description`, `descriptionen`, `activated`, `dos_usernames_username`) VALUES
(6, 'Về Dos.vn', 'Dos.vn about', '<p>\r\n	Kính gửi: <strong>Quý Doanh nghiệp</strong></p>\r\n<p style="margin-left:40px;">\r\n	<strong>DOS</strong> là công ty chuyên nghiệp trong việc <strong>Thiết kế Website</strong>. Những sản phẩm chính: Web Doanh nghiệp, Web cơ quan, Web trường học, Web du lịch, Web nhà hàng, Web máy tính, Web điện thoại,... và các loại Web theo đơn đặt hàng.</p>\r\n<p style="margin-left:40px;">\r\n	Với tiêu chí "Giao diện đẹp, tính năng nhiều, giá thành thấp". Qua 5 năm thiết kế Web, sản phẩm của chúng tôi được các Doanh nghiệp đánh giá cao. Chúng tôi có bề dày kinh nghiệm, có giải pháp và đội ngũ nhân lực tâm huyết để đảm bảo sản phẩm đáp ứng đúng nhu cầu, đem lại hiệu quả, với chi phí phù hợp.</p>\r\n<p style="margin-left:40px;">\r\n	Không ngừng học hỏi và phát triển công nghệ. <strong>DOS</strong> trở thành một công ty thiết kế Web tiên phong về chất lượng, có sản phẩm tiêu biểu, có thương hiệu uy tín trong và ngoài nước.</p>\r\n<p style="margin-left:40px;">\r\n	<strong>DOS</strong> thiết kế và cung cấp giải pháp Web trên đến các đơn vị: <strong>UBND Tân phú</strong>, <strong>SONADEZI</strong>, <strong>BENCO</strong>, <strong>Gạch Ngói Nhị Hiệp</strong>, <strong>An Gia Phú</strong>, <strong>Nội Thất Yến Bình Minh</strong>, <strong>Thuận Thành Glass</strong>, <strong>Thái Sơn</strong>, <strong>Thái Bình An Phú Thịnh...</strong></p>\r\n<p style="margin-left:40px;">\r\n	Tại Việt Nam, Sản phẩm <strong>DOS</strong> được giới thiệu tại các Công ty thiết kế in ấn, ở hầu hết các Trung Tâm tỉnh thành trên toàn quốc .</p>', '<p>\r\n	Kính gửi: Quý Doanh nghiệp<br />\r\n	      <br />\r\n	           DOS là công ty chuyên nghiệp trong việc Thiết kế Website. Những sản phẩm chính: Web Doanh nghiệp, Web cơ quan, Web trường học, Web du lịch, Web nhà hàng, Web máy tính, Web điện thoại,... và các loại Web theo đơn đặt hàng.<br />\r\n	          Với tiêu chí "Giao diện đẹp, tính năng nhiều, giá thành thấp". Qua 5 năm thiết kế Web, sản phẩm của chúng tôi được các Doanh nghiệp đánh giá cao. Chúng tôi có bề dày kinh nghiệm, có giải pháp và đội ngũ nhân lực tâm huyết để đảm bảo sản phẩm đáp ứng đúng nhu cầu, đem lại hiệu quả, với chi phí phù hợp.</p>\r\n<p>\r\n	          Không ngừng học hỏi và phát triển công nghệ. DOS trở thành một công ty thiết kế Web tiên phong về chất lượng, có sản phẩm tiêu biểu, có thương hiệu uy tín trong và ngoài nước.<br />\r\n	          DOS thiết kế và cung cấp giải pháp Web trên đến các đơn vị: UBND Tân phú, SONADEZI, BENCO, Gạch Ngói Nhị Hiệp, An Gia Phú, Nội Thất Yến Bình Minh, Thuận Thành Glass, Thái Sơn, Thái Bình An Phú Thịnh...</p>\r\n<p>\r\n	          Tại Việt Nam, Sản phẩm DOS được giới thiệu tại các Công ty thiết kế in ấn, ở hầu hết các Trung Tâm tỉnh thành trên toàn quốc .</p>', 75, '2012-04-07 02:13:52', 1, 0, NULL, NULL, 've-dos', 'dos-about', 'DOS là công ty chuyên nghiệp trong việc Thiết kế Website. Những sản phẩm chính: Web Doanh nghiệp, Web cơ quan, Web trường học, Web du lịch, Web nhà hàng, Web máy tính, Web điện thoại,... và các loại Web theo đơn đặt hàng', 'DOS là công ty chuyên nghiệp trong việc Thiết kế Website. Những sản phẩm chính: Web Doanh nghiệp, Web cơ quan, Web trường học, Web du lịch, Web nhà hàng, Web máy tính, Web điện thoại,... và các loại Web theo đơn đặt hàng', 1, 'dos'),
(7, 'Tầm nhìn và sứ mệnh Dos', 'Gioi thieu 2 En', '<p>\r\n	Tầm nhìn và Sứ mệnh của DOS được viết ra ngay từ khi thành lập, xác định lý tưởng, hướng đi lâu dài và những giá trị cơ bản mà mỗi thành viên sáng lập luôn hướng tới.</p>\r\n<p>\r\n	<strong>Tầm nhìn của DOS</strong><br />\r\n	Được công nhận là công ty đứng đầu trong lĩnh vực thiết kế Website. Với giải pháp tích hợp Marketing và Công Nghệ Thông Tin trong việc quảng cáo bán hàng dành riêng cho từng Doanh nghiệp.</p>\r\n<p>\r\n	<strong>Sứ mệnh của DOS</strong><br />\r\n	Mang lại cho Doanh nghiệp một kênh truyền thông nhanh chóng và hiệu quả qua những Website đầy tính sáng tạo.</p>\r\n<p>\r\n	<strong>Các giá trị cơ bản của DOS c</strong>ác giá trị cơ bản là tài sản vô cùng quý báu mà mỗi người thành viên của DOS đều trân trọng giữ gìn:</p>\r\n<ul><li>\r\n		<strong>Làm khách hàng hài lòng</strong>: Tận tuỵ với khách hàng và luôn phấn đấu để đáp ứng tốt nhất những nhu cầu, vượt trên mong đợi của họ.</li>\r\n	<li>\r\n		<strong>Con người là cốt lõi</strong>: Tôn trọng con người, tạo điều kiện cho các thành viên phát triển tối đa tài năng, đóng góp cho tổ chức và được đãi ngộ xứng đáng cả về vật chất và tinh thần.</li>\r\n	<li>\r\n		<strong>Chất lượng tốt nhất</strong>: Đảm bảo chất lượng tốt nhất trong mỗi sản phẩm, mỗi việc làm.</li>\r\n	<li>\r\n		<strong>Đề cao đạo đức kinh doanh</strong>: Mỗi nhân viên là một đại diện của Công ty, có nghĩa vụ tuân thủ đạo đức kinh doanh cao nhất, luôn hợp tác, cởi mở và thân thiện với đồng nghiệp, đóng góp cho cộng đồng và xã hội.</li>\r\n</ul>', '<p>\r\n	NOi dung en</p>', 45, '2012-04-07 02:14:02', 2, 0, NULL, NULL, 'tam-nhin-va-su-menh-dos', 'gioi-thieu-2-en', 'Tầm nhìn và Sứ mệnh của DOS được viết ra ngay từ khi thành lập, xác định lý tưởng, hướng đi lâu dài và những giá trị cơ bản mà mỗi thành viên sáng lập luôn hướng tới', 'Mo ta 2 En', 1, 'dos'),
(8, 'Lĩnh vực hoạt động', 'Gioi thieu 3 En', '<p>\r\n	<strong>DỊCH VỤ CHUYÊN NGHIỆP</strong>:</p>\r\n<ul><li>\r\n		Thiết kế website</li>\r\n	<li>\r\n		Phương pháp quảng cáo bán hàng trực tuyến</li>\r\n	<li>\r\n		Giải pháp CNTT trọn gói cho Doanh nghiệp</li>\r\n	<li>\r\n		Thương mại điện tử</li>\r\n</ul><p>\r\n	 </p>\r\n<p>\r\n	<strong>SẢN PHẨM VÀ DỊCH VỤ GTGT:</strong></p>\r\n<ul><li>\r\n		Đăng ký tên miền</li>\r\n	<li>\r\n		Cung cấp Hosting</li>\r\n	<li>\r\n		Xử lý hình ảnh nhập liệu cho web</li>\r\n	<li>\r\n		Thiết kế Logo</li>\r\n	<li>\r\n		Thiết Kế Name Card</li>\r\n	<li>\r\n		Thiết kế ấn phầm Quảng cáo theo đơn đặt hàng</li>\r\n</ul><p>\r\n	 </p>\r\n<p>\r\n	<strong>HỖ TRỢ TƯ VẤN MIỄN PHÍ:</strong></p>\r\n<ul><li>\r\n		Thành lập Doanh nghiệp</li>\r\n	<li>\r\n		Quản lý Doanh nghiệp</li>\r\n	<li>\r\n		Tư vấn Marketing và phát triển Doanh nghiệp</li>\r\n	<li>\r\n		Tư vấn và định hướng đào tạo nhân viên bán hàng</li>\r\n	<li>\r\n		Tư vấn phong thủy</li>\r\n</ul>', '<p>\r\n	Noi dung 3 en</p>', 32, '2012-04-07 02:14:12', 3, 0, NULL, NULL, 'linh-vuc-hoat-dong', 'gioi-thieu-3-en', 'Mo ta 3', 'Mo ta 3 En', 1, 'dos'),
(69, 'Thủy Tùng - Gỗ quý hiếm', '', '<p style="text-align:justify;"><span style="color:#993300;"><strong>THỦY TÙNG</strong></span> (có tên khoa học Glyptostrobus pensilis, xuất hiện cách đây khoảng 10 triệu năm) là cây gỗ lớn thường cao tới 25m, đường kính thân hơn 1,3m. <span style="color:#993300;"><strong>THỦY TÙNG </strong></span>có tên trong Sách đỏ Việt Nam và theo công bố của Quỹ Sinh vật hoang dã thế giới (WWF), đây là một trong những loại bị săn lung ráo riết nhất.</p>\n<p style="text-align:justify;">Hiên nay, trên thế giới chỉ con sót lại 2 quần thể cuối cùng ở Huyện Ea H’Leo và Krông Năng, tỉnh Đắc Lắc với khoảng 290 cây. <span style="color:#993300;"><strong>THỦY TÙNG</strong> </span>thuộc danh mục gỗ nhóm IA.</p>\n<p style="text-align:justify;">Gỗ <strong><span style="color:#993300;">THỦY TÙNG</span></strong> có hương thơm quý phái, không mọt, xua đuổi được côn trùng, muỗi kiến, bọ cọp, không cong vênh, thớ gỗ mịn, có mùi thơm. và trường tồn với thời gian.</p>\n<p style="text-align:justify;">Đặc biệt, Gỗ <strong><span style="color:#993300;">THỦY TÙNG</span></strong> mang lại may mắn, tài lộc, tiền bạc cho người làm ăn kinh doanh.</p>', '', 61, '2012-04-28 08:50:55', 1, 1, '', '', 'thuy-tung-go-quy-hiem', '', 'Thủy Tùng - Gỗ quý hiếm', '', 1, 'gothuytung'),
(77, 'Thư ngỏ', '', 'Thời trang đóng vai trò quan trọng trong việc xây dựng hình ảnh cá nhân của mỗi người. Thấu hiểu điều đó 3S shop luôn nắm bắt xu hướng thời trang từng năm để cung cấp tới bạn những dòng sản phẩm thời trang hợp thời:\n\n- Các mẫu thiết kế nổi bật, có phom dáng chuẩn phù hợp với người Việt…từ đó làm tăng niềm tin của khách hàng với dòng sản phẩm Made in Việt Nam.\n\n - Với hệ thống máy móc hiện đại chúng tôi cam kết đưa ra những sản phẩm đa dạng và hoàn hảo về màu sắc. Nhờ đó bạn có rất nhiều lựa chọn về màu sắc và kiểu dáng.\n\n - “Thử tẹt ga – Mua thỏa mái” đó là phương châm phục vụ của chúng tôi.\n\n Bộ sản phẩm thời trang của 3S Shop bao gồm:\n\n- Quần kaki, quần Gờ Tô, Quần âu: Với phom dáng chuẩn phù hợp với người việt, chất vải đẹp không nhăn, không bám bụi và bền màu. Bảo Hành 6 Tháng.\n\n - Áo sơ mi body kiểu dáng Hàn Quốc: Bạn sẽ thật thỏa mái khi đi học, đi chơi hay đi làm, tất cả chất liệu đều được chọn lọc kỹ lưỡng bảo đảm thấm mồ hôi và không nhăn.\n\n- Véc body cực cá tính và năng động: Bạn sẽ ko phải lo lắng hay băn khoăn về độ thùng thình và độ dài của vec làm mất dáng của bạn… Vì tất cả các mẫu thiết kế của chúng tôi đã loại bỏ điều lo lắng đó của bạn. Bạn sẽ khoác lên cơ thể mình một bộ véc đúng như mong đợi…!\n\n - Phụ Kiện thời trang đa dạng: Giầy, ví, thắt lưng, bật lửa kiểu….tất cả đều được chúng tôi lựa chọn kỹ để phù hợp với quần áo, từ đó các bạn sẽ có nhiều lựa chọn cho nhiều phong cách khác nhau.\n\n Sản phẩm của 3S shop phong phú về chủng loại cùng với kiểu dáng đa dạng, ấn tượng. Chúng tôi có một đội ngũ chuyên viên tư vấn và thiết kế được đào tạo chuyên nghiệp đầy sức sáng tạo và lòng nhiệt tình. Đến với 3S shop bạn sẽ thực sự nổi bật và khác biệt.\n\n Nhấc máy gọi số 0904.80.83.85 bất cứ khi nào bạn muốn Design cho mình một bộ cánh mới. Hãy để chúng tôi cùng làm điều đó với bạn. ^^', '', 7, '2012-04-25 08:05:08', 1, 0, '', '', 'thu-ngo', '', '', '', 1, '070312'),
(81, 'Thư viện sách', '', '<p>Thư viện sách thành phố được thành lập vào 12/1994 nằm ở trung tâm thành phố tại số 2, Phú Lợi, khóm 1, phường 2, thành phố Biên Hòa.</p>\n<p>- Kinh phí hoạt động hàng năm của Thư viện không ổn định, thường dao động từ 5 - 23 triệu đồng.</p>\n<p>* Nhân sự: Thư viện có 02 nhân sự, trong đó: 01 nhân sự trình độ Đại học Thông tin Thư viện, 01 nhân sự trình độ Cao đẳng Thông tin Thư viện.</p>\n<p>- Thư viện hiện có 11.593 tên với 29.168 bản sách, trong đó sách thiếu nhi là 10.992 tên với 28.364 bản.</p>\n<p>- Tổng số báo, tạp chí hiện có của Thư viện 70 tên với 7.445 bản.</p>\n<p>Để đảm bảo nguồn sách phục vụ bạn đọc, Thư viện luôn chú trọng công tác bổ sung sách mới. Hàng năm Thư viện bổ sung khoảng 300- 1.000 bản sách và 20 loại báo, tạp chí.</p>\n<p>* Tổ chức phục vụ: Thư viện mở cửa phục vụ bạn đọc 5 ngày trong tuần (từ thứ hai đến thứ sáu), phục vụ chủ yếu là độc giả thiếu nhi trên địa bàn thành phố Biên Hòa.</p>\n<p>- Hàng năm thư viện đã cấp được trên 800 thẻ bạn đọc, phục vụ trên 40.000 lượt người với hơn 100.000 lượt tài liệu.</p>\n<p>Số điện thoại liên hệ: 0987522003</p>', '', 6, '2012-04-26 08:51:30', 1, 0, '', '', 'thu-vien-sach', '', 'Thư viện sách', '', 1, '200312'),
(82, '230412 COFFEE', '', '<p style="text-align:justify;">Các bạn thân mến,<br />Trong thời gian vừa qua. <span style="color:#993300;"><strong>230412 COFFEE </strong></span>đã chuyển qua 2 giai đoạn với 2 phiên bản demo và mở rộng. Tuy nhiên, chưa thực sự trở thành website hữu ích với mức độ tương tác giữa người truy cập. Do đó, chúng tôi hân hoan thông báo tới toàn thể thành viên thường xuyên truy cập vào <strong><span style="color:#993300;">230412 COFFEE</span></strong> , thành viên góp ý về việc nâng cấp phiên bản mới với các nội dung trong bản Beta như sau:<br />- Bạn có thể sử dụng guidebook cho các chuyến đi của mình trên 2 bản App cho điện thoại và online trực tuyến.<br />- Đăng kí thành viên. Tham gia trực tiếp và quản lý các hoạt động offline, chuyến đi của mình.<br />- Chia sẻ chuyến đi, post bài kinh nghiệm v.v qua khả năng kết nối mới.<br />- Giao diện thân thiện, dễ sử dụng<br />- Các tiện ích khác biệt, lợi ích vô hạn cho thành viên thường xuyên.<br />Và còn rất nhiều các tiện ích khác.</p>\n<p style="text-align:justify;">Dự tính phiên bản <strong><span style="color:#993300;">230412 COFFEE</span></strong> sẽ thử nghiệm online trong khoảng thời gian từ 15/2/2012 - 30/2/2012.</p>\n<p style="text-align:justify;">Rất mong trong thời gian chờ đợi phiên bản mới. Các bạn vẫn luôn theo sát chúng tôi và chia sẻ cùng chúng tôi tại phuotcafe.com hiện tại.</p>\n<p style="text-align:justify;"> </p>', '', 9, '2012-04-26 09:25:37', 1, 0, '', '', '230412-coffee', '', '230412 COFFEE', '', 1, '230412'),
(83, 'Giới thiệu sơ lược', '', '<p>Từ ngàn xưa, dẫu cuộc sống nghèo khó, cha ông ta cũng đã biết thưởng ngoạn vẻ đẹp món quà đặc biệt của thiên nhiên, sự tinh túy của đất trời, làm phong phú thêm vẻ đẹp tâm hồn của con người, đó là hương và sắc của ngàn hoa rực rỡ!</p>\r\n<p>Ngày nay, nhịp sống hối hả có thể khiến nhiều người quên đi thú vui bình dị mà thanh tao, giản đơn mà cao quý ấy. Nhưng, cùng với sự thành đạt của mỗi người, sự tiến bộ của xã hội, hương sắc của hoa dần trở thành một phần tất yếu của cuộc sống.</p>\r\n<p>Không chỉ là vật trang trí cho không gian được sang trọng, hoa còn trở thành công cụ thể hiện đẳng cấp và phong cách sống khác biệt, là phương tiện để sẻ chia những niềm vui nỗi buồn, và đặc biệt, hoa trở thành phương tiện để giao tế một cách hiệu quả khó có thể thay thế.</p>\r\n<p>Cuộc sống và công việc của bạn dù có bộn bề với những lo toan, hãy đến với Hoa Sài Gòn, chúng tôi sẽ giúp bạn bắc nhịp cầu nối những bờ vui, làm vững bền mối thâm giao bằng hữu, giúp bạn tạo dựng quan hệ thân tình, tạo dựng đẳng cấp và phong cách khác biệt trong cuộc sống và công việc hay để chia ngọt sẻ bùi, gửi gắm tâm tư ...</p>\r\n<p>Chỉ đơn giản bằng một mẩu tin nhắn hay một cuộc điện thoại, mọi nhu cầu về hoa của bạn sẽ được Hoa Sài Gòn đáp ứng tận nơi!</p>', '', 45, '2012-05-02 07:20:32', 1, 1, NULL, NULL, 'gioi-thieu-so-luoc', '', 'Từ ngàn xưa, dẫu cuộc sống nghèo khó, cha ông ta cũng đã biết thưởng ngoạn vẻ đẹp món quà đặc biệt của thiên nhiên, sự tinh túy của đất trời, làm phong phú thêm vẻ đẹp tâm hồn của con người, đó là hương và sắc của ngàn hoa rực rỡ!', '', 1, 'hoasaytinh'),
(84, 'Giới thiệu sơ lược', '', '<p>Hoà mình vào sự phát triển chung của đất nước với những biến đổi không ngừng của thời cuộc, mỗi doanh nghiệp bằng thực lực và những kế sách đúng đắn của mình luôn tìm được một vị trí xứng đáng trong nền kinh tế thị trường đầy khắc nghiệt. Không là một ngoại lệ DNTN CỬA SẮT 24H với kinh nghiệm nhiều năm hoạt động trong lĩnh vực. SẮT - NHÔM – INOX, với một đội ngũ công nhân lành nghề, tác phong chuyên nghiệp, sản phẩm chất lượng, đa dạng phù hợp kiến trúc và thẩm mỹ mọi công trình, cùng với giá cả hợp lý, hậu mãi chu đáo đã nhanh chóng chiếm lĩnh và chinh phục nhiều khách hàng lớn và khó tính, dần dần khẳng định vị thế của mình trong lĩnh vực xây dựng nói chung và hoạt động sản xuất kinh doanh cửa panô, cửa cuốn, cửa sắt, cửa cổng xếp, trụ lan can kính, cầu thang kính, lan can, cầu thang sắt, Inox, mặt dựng nhôm kính, mặt dựng aluminium, vách ngăn</p>', '', 44, '2012-05-03 01:33:33', 1, 1, NULL, NULL, 'gioi-thieu-so-luoc', '', 'Hoà mình vào sự phát triển chung của đất nước với những biến đổi không ngừng của thời cuộc, mỗi doanh nghiệp bằng thực lực và những kế sách đúng đắn của mình luôn tìm được một vị trí xứng đáng trong nền kinh tế thị trường đầy khắc nghiệt. Không là mộ', '', 1, 'cuasat24h'),
(85, 'Nhân sự', '', '<p>SƠ ĐỒ TỔ CHỨC</p>\r\n<p style="text-align:center;"><img src="/public/userfiles/image/cuasat24h/image/sodotochuc.gif" alt="" width="520" height="329" /></p>\r\n<p>DANH SÁCH CÁN BỘ CHỦ CHỐT CÔNG TY CỔ PHẦN NỐP</p>\r\n<p>1. Lưu Thanh Hùng - Giám đốc</p>\r\n<p>2. Hồ Châu Tuấn - Phó giám đốc</p>\r\n<p>3. Lê Anh Tuấn - Trưởng phòng Tài Chính Nhân Sự Kinh Doanh</p>\r\n<p>4. Phạm Thị Hạnh - Phó phòng Tài Chính Nhân Sự Kinh Doanh</p>\r\n<p>5. Nguyễn Ngọc Cẩm Thúy - Phó phòng Kỹ Thuật Tổ Chức Thi Công</p>\r\n<p>6. Ngô Hoàng Tuấn - Phó quản đốc vườn ươm</p>\r\n<p>7. Nguyễn Văn Tặng - Phó quản đốc vườn ươm</p>', '', 10, '2012-05-03 01:36:57', 2, 0, NULL, NULL, 'nhan-su', '', '', '', 1, 'cuasat24h');

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
) ENGINE=InnoDB  DEFAULT CHARSET=utf8 AUTO_INCREMENT=67 ;

--
-- Dumping data for table `dos_module_advs`
--

INSERT INTO `dos_module_advs` (`record_id`, `title`, `titleen`, `pic_thumb`, `url`, `create_date`, `start_date`, `end_date`, `hits`, `record_order`, `position`, `type`, `enable`, `dos_usernames_username`) VALUES
(51, 'Quảng cáo', '', 'quang-cao.jpeg', 'http://dos.vn', '2012-04-25 07:55:33', '2012-04-24 17:00:00', '2012-05-30 17:00:00', 0, 1, 'left', '_bank', 1, '070312'),
(52, 'Quảng cáo 1', '', 'quang-cao-1.jpeg', 'http://dos.vn', '2012-04-25 09:08:48', '2012-04-24 17:00:00', '2012-05-30 17:00:00', 0, 2, 'left', '_bank', 1, '070312'),
(53, 'Quảng cáo 2', '', 'quang-cao-2.jpeg', 'http://dos.vn', '2012-04-25 09:13:53', '2012-04-24 17:00:00', '2012-05-30 17:00:00', 0, 3, 'left', '_bank', 0, '070312'),
(61, 'Quảng cáo', '', 'quang-cao.jpg', 'http://dos.vn', '2012-04-26 07:46:17', '2012-04-25 17:00:00', '2012-05-30 17:00:00', 0, 1, 'left', '_bank', 1, '200312'),
(62, 'Chân thành cám ơn', NULL, 'chan-thanh-cam-on.jpg', 'http://dantri.com.vn', '2012-05-02 06:46:56', '2012-05-01 16:00:00', '2012-05-23 16:00:00', 0, 1, 'bottom', '_parent', 1, 'hoasaytinh'),
(63, 'trai', NULL, 'trai.jpg', 'http://grouplaptrinh.com', '2012-05-02 06:51:57', '2012-05-01 16:00:00', '2012-05-15 16:00:00', 0, 2, 'left', '_bank', 1, 'hoasaytinh'),
(64, 'top1', NULL, 'top1.gif', 'http://hoasaytinh.dos.vn/', '2012-05-02 06:59:10', '2012-05-01 16:00:00', '2012-05-23 16:00:00', 0, 3, 'top', '_bank', 1, 'hoasaytinh'),
(65, 'top2', NULL, 'top2.gif', 'http://hoasaytinh.dos.vn/', '2012-05-02 06:59:38', '2012-05-01 16:00:00', '2012-05-22 16:00:00', 0, 4, 'top', '_bank', 1, 'hoasaytinh'),
(66, 'Tin môi trường', NULL, 'tin-moi-truong.png', 'http://www.tinmoitruong.vn/doanh-nghiep_36_1_1_trang-1.html', '2012-05-03 03:32:07', '2012-05-02 16:00:00', '2012-06-09 16:00:00', 0, 1, 'left', '_bank', 1, 'cuasat24h');

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
) ENGINE=InnoDB  DEFAULT CHARSET=utf8 AUTO_INCREMENT=334 ;

--
-- Dumping data for table `dos_module_banners`
--

INSERT INTO `dos_module_banners` (`banner_id`, `banner_date`, `banner_name`, `banner_url`, `banner_link`, `banner_order`, `banner_type`, `position`, `enable`, `dos_usernames_username`) VALUES
(189, '2012-04-28 08:15:54', 'Logo', 'logo.gif', '', 1, 'logo', 'default', 1, 'gothuytung'),
(306, '2012-04-26 08:06:57', 'Banner', 'banner.jpg', '', 1, 'banners', 'default', 1, '200312'),
(307, '2012-04-26 08:09:37', 'Banner 1', 'banner-1.jpg', '', 2, 'banners', 'default', 1, '200312'),
(308, '2012-04-26 08:09:56', 'Banner 2', 'banner-2.jpg', '', 3, 'banners', 'default', 1, '200312'),
(309, '2012-04-26 08:10:17', 'Banner 3', 'banner-3.jpg', '', 4, 'banners', 'default', 1, '200312'),
(310, '2012-04-26 08:11:23', 'Banner 4', 'banner-4.jpg', '', 5, 'banners', 'about', 1, '200312'),
(311, '2012-04-26 08:11:38', 'Banner 5', 'banner-5.jpg', '', 6, 'banners', 'about', 1, '200312'),
(312, '2012-04-26 08:12:02', 'Banner 6', 'banner-6.jpg', '', 7, 'banners', 'products', 0, '200312'),
(313, '2012-04-26 08:12:19', 'Banner 7', 'banner-7.jpg', '', 8, 'banners', 'products', 0, '200312'),
(314, '2012-04-26 08:12:40', 'Banner 8', 'banner-8.jpg', '', 9, 'banners', 'products', 0, '200312'),
(315, '2012-04-26 08:12:59', 'Banner 9', 'banner-9.jpg', '', 10, 'banners', 'contact', 1, '200312'),
(316, '2012-04-26 08:13:15', 'Banner 10', 'banner-10.jpg', '', 11, 'banners', 'services', 1, '200312'),
(317, '2012-04-26 08:13:37', 'Banner 11', 'banner-11.jpg', '', 12, 'banners', 'video', 1, '200312'),
(318, '2012-04-26 08:14:01', 'Banner 13', 'banner-13.jpg', '', 13, 'banners', 'news', 1, '200312'),
(319, '2012-04-26 08:16:19', 'Banner 14', 'banner-14.jpg', '', 14, 'banners', 'contact', 1, '200312'),
(320, '2012-04-26 08:16:50', 'Banner 15', 'banner-15.jpg', '', 15, 'banners', 'services', 1, '200312'),
(321, '2012-04-26 08:17:18', 'Banner 16', 'banner-16.jpg', '', 16, 'banners', 'video', 1, '200312'),
(322, '2012-04-26 08:18:10', 'Banner 17', 'banner-17.jpg', '', 17, 'banners', 'news', 1, '200312'),
(323, '2012-04-26 09:04:26', 'Banner', 'banner.jpg', '', 1, 'banners', 'default', 1, '230412'),
(324, '2012-04-26 09:04:38', 'Banner 1', 'banner-1.jpg', '', 2, 'banners', 'default', 1, '230412'),
(325, '2012-04-26 09:04:48', 'Banner 2', 'banner-2.jpg', '', 3, 'banners', 'default', 1, '230412'),
(326, '2012-04-26 09:04:57', 'Banner 3', 'banner-3.jpg', '', 4, 'banners', 'default', 1, '230412'),
(328, '2012-05-02 07:08:33', 'ba1', 'ba1.jpg', 'http://hoasaytinh.dos.vn/', 1, 'banners', 'default', 1, 'hoasaytinh'),
(329, '2012-05-02 07:09:31', 'ban3', 'ban3.jpg', '', 2, 'banners', 'default', 1, 'hoasaytinh'),
(330, '2012-05-03 03:07:58', 'banner 1', 'ba1.jpg', '', 2, 'banners', 'default', 1, 'cuasat24h'),
(332, '2012-05-03 03:08:15', 'banner2', 'ba3.jpg', '', 4, 'banners', 'default', 1, 'cuasat24h'),
(333, '2012-05-03 03:19:55', 'Logo', 'logo.png', '', 5, 'logo', 'default', 1, 'cuasat24h');

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
) ENGINE=InnoDB  DEFAULT CHARSET=utf8 AUTO_INCREMENT=2 ;

--
-- Dumping data for table `dos_module_contacts`
--

INSERT INTO `dos_module_contacts` (`record_id`, `title`, `titleen`, `content`, `contenten`, `create_date`, `record_order`, `hit`, `hot`, `tag`, `tagen`, `description`, `descriptionen`, `enable`, `dos_usernames_username`) VALUES
(1, 'Liên hệ với chúng tôi', '', '<p>CÔNG TY CP SẢN XUẤT VÀ THƯƠNG MẠI CỬA SẮT 24H<br />- Địa chỉ văn phòng: 650-652 Nguyễn Khoái - phường Vĩnh Hưng - quận Hoàng Mai - HN<br />- Xưởng sản xuất tại: thôn Chanh Khúc xã Duyên Hà huyện Thanh Trì – HN<br />- Điện thoại: 0436440805<br />- Hotline: 0912.85.25.85<br />- Email: ctductuyen@gmail.com<br />- Website: http://cuasat24h.com</p>', '', '2012-05-03 02:11:47', 1, 0, 0, 'lien-he-voi-chung-toi', '', 'CÔNG TY CP SẢN XUẤT VÀ THƯƠNG MẠI CỬA SẮT 24H\r\n- Địa chỉ văn phòng: 650-652 Nguyễn Khoái - phường Vĩnh Hưng - quận Hoàng Mai - HN', '', '1', 'cuasat24h');

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
('Trang chủ', NULL, 'default', NULL, 1, '', 'Homepage', 'Mô ta', 'Description', 'dos'),
('Giới thiệu', NULL, 'about', NULL, 2, '', '1', '', 'dsdsdsd', 'dos'),
('Sản phẩm', NULL, 'products', NULL, 3, 'Tieu de', 'Titiel website', 'Mọ', '', 'dos'),
('Dịch vụ', NULL, 'services', NULL, 4, '', '1', '', '1', 'dos'),
('Liên hệ', NULL, 'contact', NULL, 5, 'Tieu de Lien he', 'Title Contact', 'Mo ta', 'Mo ta en', 'dos'),
('Trang chủ', '', 'default', '', 1, '', '', '', '', 'gothuytung'),
('Giới thiệu', '', 'about', '', 2, '', '', '', '', 'gothuytung'),
('Sản phẩm', '', 'products', '', 3, '', '', '', '', 'gothuytung'),
('Dịch vụ', '', 'services', '', 4, '', '', '', '', 'gothuytung'),
('Tin tức & sự kiện', '', 'news', '', 5, '', '', '', '', 'gothuytung'),
('Liên hệ', '', 'contact', '', 6, '', '', '', '', 'gothuytung'),
('Trang chủ', '', 'default', '', 1, '', '', '', '', '230412'),
('Giới thiệu', '', 'about', '', 2, '', '', '', '', '230412'),
('Sản phẩm', '', 'products', '', 3, '', '', '', '', '230412'),
('Dịch vụ', '', 'services', '', 4, '', '', '', '', '230412'),
('Tin tức & sự kiện', '', 'news', '', 5, '', '', '', '', '230412'),
('Video', '', 'video', '', 6, '', '', '', '', '230412'),
('Liên hệ', '', 'contact', '', 7, '', '', '', '', '230412'),
('Trang chủ', '', 'default', '', 1, '', '', '', '', '200312'),
('Giới thiệu', '', 'about', '', 2, '', '', '', '', '200312'),
('Sản phẩm', '', 'products', '', 3, '', '', '', '', '200312'),
('Sắp phát hành', '', 'services', '', 4, '', '', '', '', '200312'),
('Tin tức & sự kiện', '', 'news', '', 5, '', '', '', '', '200312'),
('Video', '', 'video', '', 6, '', '', '', '', '200312'),
('Liên hệ', '', 'contact', '', 7, '', '', '', '', '200312'),
('Trang chủ', '', 'default', '', 1, '', '', '', '', '070312'),
('Giới thiệu', '', 'about', '', 2, '', '', '', '', '070312'),
('Sản phẩm', '', 'products', '', 3, '', '', '', '', '070312'),
('Khuyến mãi', '', 'services', '', 4, '', '', '', '', '070312'),
('Tin tức & sự kiện', '', 'news', '', 5, '', '', '', '', '070312'),
('Liên hệ', '', 'contact', '', 6, '', '', '', '', '070312'),
('Trang chủ', NULL, 'default', NULL, 1, NULL, NULL, NULL, NULL, 'hoasaytinh'),
('Giới thiệu', NULL, 'about', NULL, 2, NULL, NULL, NULL, NULL, 'hoasaytinh'),
('Sản phẩm', NULL, 'products', NULL, 3, NULL, NULL, NULL, NULL, 'hoasaytinh'),
('Dịch vụ', NULL, 'services', NULL, 4, NULL, NULL, NULL, NULL, 'hoasaytinh'),
('Tin tức & sự kiện', NULL, 'news', NULL, 5, NULL, NULL, NULL, NULL, 'hoasaytinh'),
('Video', NULL, 'video', NULL, 6, NULL, NULL, NULL, NULL, 'hoasaytinh'),
('Liên hệ', NULL, 'contact', NULL, 7, NULL, NULL, NULL, NULL, 'hoasaytinh'),
('Trang chủ', NULL, 'default', NULL, 1, NULL, NULL, NULL, NULL, 'cuasat24h'),
('Giới thiệu', NULL, 'about', NULL, 2, NULL, NULL, NULL, NULL, 'cuasat24h'),
('Sản phẩm', NULL, 'products', NULL, 3, NULL, NULL, NULL, NULL, 'cuasat24h'),
('Dịch vụ', NULL, 'services', NULL, 4, NULL, NULL, NULL, NULL, 'cuasat24h'),
('Tin tức & sự kiện', NULL, 'news', NULL, 5, NULL, NULL, NULL, NULL, 'cuasat24h'),
('Video', NULL, 'video', NULL, 6, NULL, NULL, NULL, NULL, 'cuasat24h'),
('Liên hệ', NULL, 'contact', NULL, 7, NULL, NULL, NULL, NULL, 'cuasat24h');

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
) ENGINE=InnoDB  DEFAULT CHARSET=utf8 AUTO_INCREMENT=75 ;

--
-- Dumping data for table `dos_module_news`
--

INSERT INTO `dos_module_news` (`record_id`, `title`, `titleen`, `postdate`, `pic_thumb`, `preview`, `previewen`, `content`, `contenten`, `tag`, `tagen`, `description`, `descriptionen`, `hits`, `record_order`, `hot`, `extra_field1`, `extra_field2`, `enable`, `dos_module_item_cat_cat_id`) VALUES
(54, 'Mẹo tẩy các loại quần áo', '', '2012-04-25 08:10:18', 'meo-tay-cac-loai-quan-ao.jpg', '10 mẹo tẩy các loại quần áo', '', '1. Xì dầu hoặc tương: Dùng tăm bông hoặc vải thấm nước tẩy vết bẩn, sau đó dùng bột giặt trung tính giặt lại.\n\n \n\n2. Kẹo cao su: Cho đá lạnh vào để nó cứng lại rồi bóc ra.\n\n \n\n3.Sôcôla: Dùng khăn thấm nước để cọ, sau đó giặt bằng bột giặt, nếu không hết thì dùng xăng.\n\n \n\n4. Sữa: Tẩy bằng vải thấm dầu bay hơi, sau đó giặt bằng nước xà phòng ấm.\n\n \n\n5. Trứng: Ngâm trong nước ấm có hòa bột giặt chứa thành phần enzyme, sau đó tẩy bằng Ammonia. Lòng đỏ trứng có thể tẩy bằng xăng.\n\n \n\n6. Bút sáp, bút chì màu: Dùng tăm bông thấm xăng để tẩy, sau đó pha loãng bột giặt trung tính, dùng tăm bông tẩy lại một lần nữa nếu tẩy không hết thì dùng thuốc tẩy.\n\n \n\n7. Mực: Trộn cơm với bột giặt bôi lên vết bẩn rồi giặt.\n\n \n\n8. Máu: Giặt bằng nước ( không dùng nước nóng) hoặc dùng củ cải để tẩy.\n\n \n\n9. Mực bút bi: Thấm tăm bông vào cồn tẩy, sau đó pha loãng bột giặt trung tính rồi thấm tăm bông cọ sạch.\n\n \n\n10. Vết son môi: Tấm ướt chỗ dính son, bôi cồn lên rồi giặt bằng xà phòng.\n\n \n\nQuần áo trước khi giặt phải phân loại theo màu sắc, sau đó giặt riêng mới không bị dính mầu.', '', 'meo-tay-cac-loai-quan-ao', '', '', '', 0, 1, 0, '', '', 1, 37),
(59, 'Hội sách có thể kích cầu văn hóa đọc?', '', '2012-04-26 08:24:35', 'hoi-sach-co-the-kich-cau-van-hoa-doc.jpg', '<p style="text-align:justify;">Hội sách TPHCM năm 2012 diễn ra khá tưng bừng tại Công viên Lê Văn Tám từ ngày 19/3 đến ngày 25/3. Đã qua 7 lần tổ chức, Hội sách TPHCM dần dần trở thành nhiệt kế để đo sự chuyển động của viết sách, đọc sách và kinh doanh sách. Hàng vạn đầu sách với hàng triệu bản in được trưng bày và mua bán trong suốt một tuần lễ, chứng tỏ công chúng vẫn chưa hờ hững với món ăn tinh thần này!</p>', '', '<p><strong>Hội sách TPHCM năm 2012 diễn ra khá tưng bừng tại Công viên Lê Văn Tám từ ngày 19/3 đến ngày 25/3. Đã qua 7 lần tổ chức, Hội sách TPHCM dần dần trở thành nhiệt kế để đo sự chuyển động của viết sách, đọc sách và kinh doanh sách. Hàng vạn đầu sách với hàng triệu bản in được trưng bày và mua bán trong suốt một tuần lễ, chứng tỏ công chúng vẫn chưa hờ hững với món ăn tinh thần này!</strong></p>\n<p style="text-align:center;"><em><img src="/public/userfiles/image/200312/image/sach.jpg" alt="" width="400" height="300" /></em></p>\n<p style="text-align:center;"><em>Số đông vẫn thờ ơ với sách (Ảnh minh họa)</em></p>\n<p>Với sự góp mặt của tư nhân vào đời sống xuất bản, thì thị trường sách đã trở nên cực kỳ sôi động. Ở các đô thị lớn, nhà sách bề thế chiếm lĩnh ở những vị trí đắc địa và đều có dấu hiệu ăn nên làm ra. Thế nhưng, thói quen đọc sách và chất lượng đọc sách của người Việt hôm nay vẫn còn là một ẩn số. Ngoài hệ thống sách giáo khoa, số lượng in mỗi cuốn sách tại Việt Nam chỉ trên dưới 1000 bản và chỉ tập trung chủ yếu ở thành phố. Rõ ràng, nhiều vùng nông thôn vẫn chưa có cơ hội để tiếp cận sách. Hơn nữa, giá thành từng cuốn sách đang nằm ở mức khá cao đối với thu nhập của người lao động.</p>\n<p>Nhân Hội sách TPHCM, một câu hỏi cũ lại được đặt ra: làm sao xây dựng văn hóa đọc cho người Việt? GS. TS Trần Hữu Tá băn khoăn: “Là nhà giáo, tôi ngờ là tình hình đọc sách gần đây trong các cấp học, ở khắp các địa phương cũng không sáng sủa gì. Không thể phủ nhận, từ cấp Mầm non - Tiểu học đến bậc Đại học, có một số thầy cô đã nêu gương hiếu học hết sức cảm động. Các bạn đồng nghiệp ấy đã quyết tâm cập nhật sự hiểu biết của mình bằng công phu tự học, bằng tinh thần cần cù đọc sách, dù hoàn cảnh kinh tế cũng chẳng hơn ai. Thế nhưng, số người đáng phục này chiếm mấy phần trăm trong non một triệu thầy cô? E rằng tỉ lệ này khó đạt đến 2 chữ số!”.</p>\n<p>Cũng từ tâm tư ấy, nhà văn Nguyên Ngọc cho rằng: “Cách làm giáo dục như ở ta hiện nay thì thật khó lòng mà có được thói quen ham mê đọc sách. Thường đến 20 tuổi rồi mà không hề biết đến ham thích và cái thú đọc sách thì cả đời sẽ khó lòng trở thành người ham đọc và biết đọc sách. Mà vì sao giáo dục của ta lại đi theo con đường tắc tị đó? Tôi đã có nhiều lần nói, nay xin được nói lại lần nữa: vì chính cái triết lý xã hội mà nền giáo dục của chúng ta theo đuổi. Đó là một nền giáo dục căn cứ trên niềm tin rằng có những chân lý tuyệt đối, bất biến, dạy học là truyền bá những chân lý đó, đi học là để thấm nhuần những chân lý đó đặng dùng suốt đời. Có thể nói, với kiểu giáo dục đó thì chẳng cần đọc sách làm gì!”</p>\n<p>Có một sự thật khá đau lòng, các loại sách có nội dung dễ dãi bám theo đề tài tình – tiền – tù- tội thì lại bán chạy hơn những cuốn sách có giá trị nâng cao thẩm mỹ và tâm hồn cho con người hội nhập. Đi tìm lời giải cho thực trạng này không đơn giản, cần phải có điều tra xã hội học nghiêm túc và cần phải có những phương pháp thay đổi thiện chí.</p>\n<p>Giáo sư Phong Lê gửi gắm ưu tư: “Người đọc, số đông vẫn còn thờ ơ với sách. Người ta dường như chưa được biết nhiều đến hiệu quả của một cách tự học bằng đọc các sách kiến thức nền, sách khoa học, kinh tế, sách công cụ... Sách có lẽ chưa được sử dụng tối đa với đúng nghĩa “nuôi dưỡng tâm hồn, khơi nguồn và bồi đắp tri thức”. So với người đọc ở nước ngoài, thì có lẽ, người đọc ở ta chuộng đọc báo hơn là đọc sách. Mà sách thì mới thực sự là thước đo dân trí”.</p>\n<p>Tác giả bài viết: Tâm Huyền</p>\n<p>Nguồn tin: nongnghiep.vn</p>\n<p><strong> </strong></p>', '', 'hoi-sach-co-the-kich-cau-van-hoa-doc', '', 'Hội sách có thể kích cầu văn hóa đọc?', '', 0, 3, 0, '', '', 1, 42),
(60, 'Mua sách xịn giá rẻ', '', '2012-04-26 08:28:17', 'mua-sach-xin-gia-re.jpg', '<p>Nhiều nhà sách tuyên chiến với sách lậu, nạn photocopy bằng cách giảm giá tối đa, nhằm “lấy công làm lãi”.</p>', '', '<p style="text-align:justify;"><strong>Nhiều nhà sách tuyên chiến với sách lậu, nạn photocopy bằng cách giảm giá tối đa, nhằm “lấy công làm lãi”.</strong></p>\n<p style="text-align:center;"><em><img src="/public/userfiles/image/200312/image/vh-2611-sach-in1.jpg" alt="" width="450" height="285" /></em></p>\n<p style="text-align:center;"><em>Sách lậu rẻ mà hóa đắt. Ảnh: Kim Anh</em></p>\n<p style="text-align:justify;">Thông thường, mỗi cuốn sách được in ấn, phát hành dưới nhiều dạng khác nhau, từ bìa cứng đóng hộp chất lượng cao, tới bìa mềm rồi đến loại sách bỏ túi/giá rẻ và cuối cùng là ebook. Mỗi dạng lại có một giá khác nhau, người đọc có thể lựa chọn cho mình loại sách phù hợp với túi tiền.</p>\n<p style="text-align:justify;"><strong>Bán sách theo… trang</strong></p>\n<p style="text-align:justify;">Theo tiết lộ của một người làm sách, các yếu tố để làm nên giá sách bao gồm tiền mua bản quyền hoặc nhuận bút tác giả, chi phí biên tập, thiết kế, vẽ bìa, tiền giấy in và in ấn, chi phí phát hành… Trong đó, chiếm 60 - 65% là chi phí cho nội dung, còn lại là phí phát hành, gồm tiền vận chuyển, chiết khấu…</p>\n<p style="text-align:justify;">Với dòng sách giá rẻ, nhà sách Alphabooks quyết định đột phá với giá sách theo trang, từ 110 - 140 đồng/trang. Tuy nhiên, Alphabooks cũng chỉ dám làm với những đầu sách đã bán chạy trước đó. Ngoài ra, người đọc sẽ phải chấp nhận sách có khổ nhỏ hơn, lề cũng căn chỉnh để tiết kiệm tối đa diện tích, và muốn mua ấn bản này thì phải chờ từ 6 tháng đến một năm sau khi sách khổ lớn chất lượng cao ra đời.Từng xuất bản sách giá rẻ ngay từ lần in đầu, nhưng giá sách khổ nhỏ của Phương Nam books và First News nhỉnh hơn một chút, khoảng 200 đồng/trang và lâu nay ít thấy họ làm loại sách này. Rẻ nhất hiện nay là ebook bởi nhà phát hành có thể tiết kiệm tới 60% chi phí, nhưng bù lại, người mua lại tốn kém thiết bị đầu vào như Kindle, Ipad, điện thoại công nghệ cao. Còn nhà xuất bản thì phải đầu tư vào công nghệ để chống sao chép, không bị phát tán.</p>\n<p style="text-align:justify;">Một cách nữa để người mua có thể tiết kiệm chi phí, đó là tới thẳng công ty hoặc NXB của cuốn sách mình cần mua. Mua sách trực tiếp sẽ được giảm 20 - 30%, bởi đây chính là tỉ lệ chiết khấu mà các đơn vị làm sách chi cho nhà phát hành. Như vậy, nếu mua loại sách giá rẻ ở trụ sở công ty sách, độc giả có thể tiết kiệm được tới 50%. Ở một số hội chợ sách thường niên, các NXB cũng tranh thủ “dọn kho” với mức giá rẻ như mơ.</p>\n<p style="text-align:justify;"><strong>Sách lậu có thực sự rẻ?</strong></p>\n<p style="text-align:justify;">Theo công ty Trí Việt First News, nhiều đầu sách lậu đã để giá bìa cao hơn hẳn so với sách chính gốc. Tiêu biểu là cuốn 7 thói quen của bạn trẻ thành đạt, giá bìa sách thật chỉ 32.000 đồng, nhưng sách lậu lên tới 55.000 đồng, tức là tăng tới 72%.<br />Cuốn Để trở thành người bán hàng xuất sắc giá “đội” lên tới 55%, sách Hạt giống tâm hồn giả cũng tăng 46%... Tương tự, cuốn Eron Katz của công ty sách Alpha Books giá bìa chỉ có 79.000 đồng, nhưng sách lậu lại lên tới 90.000 đồng.</p>\n<p style="text-align:justify;">Như vậy, nếu ở những cửa hàng bán sách lậu có giảm giá ồ ạt 30 - 40% thì giá vẫn cao hơn nhiều so với sách thật, đó là còn chưa kể đến chất lượng in ấn lem nhem, sách còn mới nhưng rất dễ bung, rách… Vì không tốn bất kì chi phí nào, kinh phí in ấn, phát hành lại ở mức tối thiểu nên người làm sách lậu có siêu lợi nhuận. Trước khi đến tay bạn đọc với giá 60.000 đồng, cuốn sách Quẳng gánh lo đi mà vui sống được các đầu nậu làm sách lậu bán sỉ chỉ trên dưới 10.000 đồng, đủ thấy chất lượng ra sao.</p>\n<p style="text-align:justify;">Một luật sư cho rằng người mua sách lậu có thể vô tình hoặc tiếp tay cho việc bóp chết ngành xuất bản. “Sẽ không còn ai dám viết sách, làm sách nếu tình trạng bị ăn cắp chất xám vẫn diễn ra như thế này”, vị luật sư này nói.</p>\n<p style="text-align:right;"><em>Tác giả bài viết: Lê Thoa</em></p>\n<p style="text-align:right;"><em>Nguồn tin: baodatviet.v</em></p>\n<p style="text-align:justify;"><strong> </strong></p>', '', 'mua-sach-xin-gia-re', '', 'Mua sách xịn giá rẻ', '', 0, 2, 0, '', '', 1, 43),
(61, '‘Hãy chăm sóc mẹ’ đoạt giải Man Asian', '', '2012-04-26 08:30:02', 'hay-cham-soc-me-doat-giai-man-asian.jpg', '<p>Với tiểu thuyết ‘Hãy chăm sóc mẹ’ (Please Look After Mom), nhà văn Hàn Quốc Shin Kyung Sook là người phụ nữ đầu tiên dành giải Man Asian, giải văn học hàng đầu châu Á.</p>', '', '<p style="text-align:justify;"><strong>Với tiểu thuyết ‘Hãy chăm sóc mẹ’ (Please Look After Mom), nhà văn Hàn Quốc Shin Kyung Sook là người phụ nữ đầu tiên dành giải Man Asian, giải văn học hàng đầu châu Á.</strong></p>\n<p style="text-align:center;"><em><img src="/public/userfiles/image/200312/image/shin.jpg" alt="" width="420" height="309" /></em></p>\n<p style="text-align:center;"><em>Nhà văn Shin Kyung Sook nhận giải Man Asian. Ảnh: Johnny Gi.</em></p>\n<p style="text-align:justify;">Theo AFP, giải thưởng trị giá 30.000 USD (624 triệu đồng) được công bố cuối tuần trước. Để được vinh danh, Shin Kyung Sook đã vượt qua những tên tuổi lớn của văn học châu Á như Haruki Murakami, Amitav Ghosh, Tahmima Anam, Banana Yoshimoto...</p>\n<p style="text-align:justify;">Razia Iqbal, nhà báo của BBC và là Chủ tịch ban giám khảo, nhận xét về cuốn Hãy chăm sóc mẹ: “Cuốn sách không chỉ dựng lên bức chân dung cảm động với đầy đủ những gì làm nên một người, mà còn mô tả các nét truyền thống và hiện đại trong một gia đình Hàn Quốc”.<br />“Tôi cảm thấy cả hai cánh cửa, một cho các nhà văn nữ và một cho các nhà văn Hàn Quốc, đều đã được mở rộng”, Shin Kyung Sook phát biểu cảm tưởng với AFP khi nghe tin nhận giải. Chị là nhà văn Hàn Quốc đầu tiên được lọt vào danh sách rút gọn của giải và chiến thắng luôn.</p>\n<p style="text-align:justify;">Ra mắt năm 2009, Hãy chăm sóc mẹ đã đưa Shin Kyung Sook trở thành một biểu tượng mới của văn học Hàn Quốc đương đại. Nữ văn sĩ đã có 28 năm viết văn bằng tiếng Hàn Quốc mẹ đẻ nhưng vẫn được coi như một gương mặt mới mẻ của làng văn châu Á.</p>\n<p style="text-align:justify;">Hãy chăm sóc mẹ đã được xuất bản ở Việt Nam, do công ty Nhã Nam và nhà xuất bản Hà Nội ấn hành, từng gây chú ý khi bán rất chạy tại Hội chợ triển lãm sách và sản phẩm giáo dục ở Hà Nội năm ngoái, với số lượng 2.000 cuốn. Còn tại Hàn Quốc quê hương, cuốn sách đã bán được gần 2 triệu bản.</p>\n<p style="text-align:right;">Tác giả bài viết: Pham Mi Ly</p>\n<p style="text-align:right;">Nguồn tin: evan</p>\n<p style="text-align:justify;"> </p>\n<p style="text-align:justify;"><strong> </strong></p>', '', 'hay-cham-soc-me-doat-giai-man-asian', '', '‘Hãy chăm sóc mẹ’ đoạt giải Man Asian', '', 0, 1, 0, '', '', 1, 44),
(62, 'Café sữa và café đen', '', '2012-04-26 09:31:50', 'cafe-sua-va-cafe-den.jpg', '<p>Vào quán uống nước, em luôn gọi café đen. Anh luôn gọi café sữa.</p>', '', '<p><img style="margin-left:auto;margin-right:auto;" src="/public/userfiles/image/230412/image/cafety5.jpg" alt="" width="271" height="205" /></p>\n<p style="text-align:justify;">Vào quán uống nước, em luôn gọi café đen. Anh luôn gọi café sữa.</p>\n<p style="text-align:justify;">Người ta mang nước ra, luôn luôn nhầm lẫn. Anh café đen. Em café sữa.</p>\n<p style="text-align:justify;">Em nhanh tay đổi 2 món. Người bồi bàn đứng ngẩn ra, mặt đầy vẻ thắc mắc. Anh cười trừ. Đợi người ta đi, anh trách: “Sao không để người ta đi rồi em hãy đổi? Làm mất mặt anh quá!!!” Em cười phá lên: “Đằng nào cũng vậy. Đâu có gì mắc cỡ!”.</p>\n<p style="text-align:justify;">Em con gái mà lại thích café đen.</p>\n<p style="text-align:justify;">Anh con trai nhưng rất thích café sữa.</p>\n<p style="text-align:justify;">Em bảo café đen nguyên chất, tuy đắng nhưng uống rồi sẽ mang lại dư vị, mà nếu pha thêm sữa thì sẽ chẳng còn cảm giác café nữa.</p>\n<p style="text-align:justify;">Anh bảo café cho thêm tí sữa sẽ đậm mùi café hơn, lại còn cảm giác ngọt ngào của sữa…</p>\n<p style="text-align:justify;">Anh và em luôn thế. Khác nhau hoàn toàn.</p>\n<p style="text-align:justify;">Anh và em không yêu nhau. Đơn giản chỉ là bạn bè. Mà không, trên bạn bè 1 chút. Gần giống như tình anh em.</p>\n<p style="text-align:justify;">Nhưng em không chịu làm em gái anh. Em bảo, em gái có vẻ phụ thuộc vào anh trai, có vẻ yếu đuối, có vẻ… hàng trăm cái “có vẻ” và em không đồng tình.</p>\n<p style="text-align:justify;">Anh cũng không muốn anh là anh trai của em. Anh trai suốt ngày phải lo cho em gái, bị nhõng nhẽo, vòi vĩnh đủ thứ. Anh không thể kiên nhẫn.</p>\n<p style="text-align:justify;">Lâu lâu em hẹn anh ra ngoài đi uống café. Em café đen, anh café sữa.</p>\n<p style="text-align:justify;">Thỉnh thoảng buồn buồn anh lôi em đi vòng vòng, rốt cuộc cũng đến quán nước. Anh café sữa. Em café đen.</p>\n<p style="text-align:justify;">Anh có bạn gái. Bạn gái anh xinh xắn, rất dịu dàng, nữ tính. Đi với anh giống như 1 con thỏ non yếu ớt. Anh tự hào bảo, cô ấy không “ba gai”, bướng bỉnh như em.</p>\n<p style="text-align:justify;">Em có bạn trai. Bạn trai em đẹp trai, galant, luôn chiều chuộng em. Đi với em, anh ấy không bao giờ khiến em tức chết. Em kiêu hãnh khoe, anh ấy thực sự là chỗ dựa vững chắc.</p>\n<p style="text-align:justify;">2 cặp thỉnh thoảng gặp nhau. Em vẫn café đen. Anh luôn café sữa.</p>\n<p style="text-align:justify;">Bạn trai em nói, anh đổi ly cho em. Em không chịu, café đen là sở thích của em.</p>\n<p style="text-align:justify;">Bạn gái anh thắc mắc, anh không uống café đen như những người con trai khác. Anh nhún vai, café sữa hợp khẩu vị với anh.</p>\n<p style="text-align:justify;">Trong lúc nói chuyện, thường thường anh và em vẫn cãi nhau. Bạn trai em luôn là người hòa giải. Bạn gái anh dịu dàng nói anh phải biết nhường nhịn con gái.</p>\n<p style="text-align:justify;">Cuối cùng anh là anh. Em vẫn là em.</p>\n<p style="text-align:justify;">Anh chia tay bạn gái. Cũng có thời gian chông chênh. Nhưng anh không hối tiếc. Anh và cô căn bản không hợp nhau. Dù cô ra sức chiều chuộng anh, nhưng anh vẫn thấy thiếu thiếu cá tính gì đó. Mà cá tính thiếu ấy mới thật sự hấp dẫn anh.</p>\n<p style="text-align:justify;">Em chia tay bạn trai. Có một lúc cảm thấy trống vắng. Nhưng em không hối hận. Em và bạn trai không tìm được tiếng nói chung. Dù anh ấy không khiến em bực mình, ít khi gây sự với em. Nhưng em vẫn thấy thiếu thiếu. Mà “thiếu thiếu” ấy làm em chán nản.</p>\n<p style="text-align:justify;">Anh và em không hẹn mà gặp nhau ở quán café cũ.</p>\n<p style="text-align:justify;">Em gọi café đen.</p>\n<p style="text-align:justify;">Anh gọi café sữa.</p>\n<p style="text-align:justify;">Người bồi đã quen với 2 người. Anh ta không để nhầm chỗ nữa.</p>\n<p style="text-align:justify;">Anh yên lặng. Em cũng không nói. Đợi người bồi đi, anh kéo ly café đen về phía mình, đẩy ly café sữa về phía em.</p>\n<p style="text-align:justify;">Hôm đó 2 người uống thử “khẩu vị” của người kia.</p>\n<p style="text-align:justify;">Đêm ấy, anh nhắn tin cho em “Café đen hay thật! Anh bắt đầu thấy thích nó!”</p>\n<p style="text-align:justify;">Em nhắn tin lại cho anh “Café thêm sữa cũng rất tuyệt vời. Em sẽ uống café sữa…”</p>\n<p style="text-align:justify;">Sau đó em và anh luôn đi cùng nhau, bất luận ở đâu, em cũng luôn gọi café sữa cho em và không quên gọi café đen cho anh…</p>\n<p style="text-align:justify;">Café đen hay café sữa đều là café, phải không?</p>\n<p style="text-align:justify;">Tình yêu đắng hay tình yêu ngọt đều là tình yêu… chẳng phải sao???</p>', '', 'cafe-sua-va-cafe-den', '', 'Café sữa và café đen', '', 0, 3, 0, '', '', 1, 46),
(63, 'Vị đắng cà phê', '', '2012-04-26 09:34:20', 'vi-dang-ca-phe.jpg', '<p>Rất nhiều bạn đọc chia sẻ với Blog Việt rằng mỗi khi nghe Blog Radio, họ thường tìm đến một thức uống đặc biệt đó là cà phê!</p>', '', '<p style="text-align:justify;">Rất nhiều bạn đọc chia sẻ với Blog Việt rằng mỗi khi nghe Blog Radio, họ thường tìm đến một thức uống đặc biệt đó là cà phê! Cà phê đã trở thành một món ngon dành cho tâm hồn mỗi người, người tìm đến cà phê khi có những tâm sự, trăn trở, người tìm đến cà phê như tìm một nguồn cảm hứng sáng tạo trong công việc, người tìm đến cà phê đơn giản như một cách thưởng thức cuộc sống! Đã bao giờ bạn nghĩ cà phê cũng là một hương vị của tình yêu? Điều gì đọng lại sau mỗi giọt cà phê đắng của tình yêu? Mời các bạn cùng đến với một truyện ngắn nhẹ nhàng dành cho ngày cuối tuần này, Blog Radio 130: Vị đắng cà phê - chuyển thể từ truyện ngắn cùng tên của bạn đọc Hồng Minh!</p>\n<p style="text-align:justify;"><img style="vertical-align:middle;" src="/public/userfiles/image/230412/image/img_13505.jpg" alt="" width="399" height="237" /></p>\n<p style="text-align:justify;">Cô có thói quen uống cà phê buổi sáng. Thói quen ngắm những giọt cà phê đen, đắng nhưng thơm nồng đọng lại trên đầu lưỡi, đọng lại trên trên chiếc thìa màu trắng bạc. Lanh canh, tiếng thìa chạm vào đáy cốc làm cô bừng tỉnh. Những phút ưu tư luôn chỉ được có trong khoảnh khắc! 6h rưỡi sáng, mùa đông cũng như mùa hè, khi ánh sáng không còn chớm nhẹ mà trở nên gay gắt hơn một chút là đến lúc chen chân vào cuộc sống đông đúc, lắm bon chen ngoài kia. Đứng dậy khỏi bàn ăn và dắt xe ra hòa vào dòng người đông đúc.</p>\n<p style="text-align:justify;">Một năm, khoảng thời gian không quá dài nhưng cũng không ngắn đối với một đời người. Một năm, tính từ câu nói: “Dù không đến được với nhau nhưng ta làm bạn nhé” - giọng anh lịch sự và lạnh lùng, không một chút gì cảm xúc. Nhớ lại cái cảm giác cố gắng để không thốt ra câu nói: “Không anh ạ, em không muốn gặp lại anh nữa và không muốn làm bạn với anh, vì dù sao em cũng có quyền chọn lựa bạn cho mình”. Nghĩ đến đây cô bật cười vì sự mỉa mai của hoàn cảnh ấy. Đối với cô tình bạn cũng là một điều thiêng liêng không kém gì tình yêu, hay là vì, cô không muốn gặp lại anh ta để tránh cho mình khỏi một sự tổn thương? Cảm giác đắng ngắt như nuốt phải một ngụm cà phê không đường.</p>\n<p style="text-align:justify;">Mùa thu năm ấy, cô gặp Nam. Một sự khởi đầu mới. Gặp Nam, dưới những tàng cây hoa sữa trong mùa thu Hà Nội. Và cảm xúc cũng bắt đầu một cách dịu dàng như chiều thu năm ấy và ngọt ngào tựa mùi hoa sữa. Chiều mùa hè vàng ánh, nắng hào phóng phủ vàng mọi ngóc ngách của những tàng cây góc phố. Và lãng mạn như phim Hàn Quốc, hắn ta mạnh dạn bước tới làm quen với cô. Lúc đó, cô đang lấy xe trong bãi đỗ xe gần Đinh Lễ nên thật sự là ngỡ ngàng… . Cô nhìn hắn ta lạ lẫm, tưởng hắn có ý đồ gì, và thực sự là có ý đồ! Hắn ta bước tới cô hỏi :</p>\n<p style="text-align:justify;">- Bạn là sinh viên à? - khuôn mặt căng thẳng lo âu trông đến buồn cười. Về sau hắn kể lại là lúc đó trông cô “mặt non choẹt và tay không đeo nhẫn nên đoán là cô chưa có chồng! Thế là hắn cứ tiến ra làm quen…”.</p>\n<p style="text-align:justify;">- Bạn học năm thứ mấy? - Câu trước cô còn trả lời nhưng đến câu này thì nhìn hắn ta một cách kì lạ.</p>\n<p style="text-align:justify;">- Bạn định làm quen với mình? - Cô hỏi.</p>\n<p style="text-align:justify;">Đó là buổi đầu tiên khi cô và Nam gặp nhau, bắt đầu một tình yêu đẹp và bình dị, có lẽ, bình dị giống như mọi tình yêu bền chặt khác. Anh hơn cô một tuổi.</p>\n<p style="text-align:justify;">Một buổi chiều mùa đông giá rét của tháng mười hai, khi mọi vật xung quanh đều nhuốm vẻ xám xịt đầy u ám y như màu của cái nền trời đáng ngán, cô mặc một cái áo khoác màu đỏ thắm như mọt cây nến nhỏ có thể làm ấm lòng một ai đó. Và lại ngồi tại một quán cà phê, xa nhà của cả hai đứa. Gọi hai cốc cà phê nâu nhiều sữa. Cả hai ngồi lặng im, trong màu xám của không khí, trong giai điệu của bài hát “If you are not the one” của Daniel Bettingfield, và khi đến câu : “ ‘cause I miss you, body and soul so strong that it takes my breathe away….” Thì cô chợt hỏi: “Vì sao anh lại yêu em?”</p>\n<p style="text-align:justify;">Nam trả lời: “Lan ạ, đây không phải lần đầu tiên em hỏi anh câu đó. Đôi khi anh cũng tự hỏi, tại sao em không xinh, không thông minh mà anh lại yêu em được nhỉ?”, nói xong anh cười ngặt nghẽo. Điệu cười thật là đáng ghét. Cô nghĩ, anh ta thật là vô duyên. Dù sao, thì ít nhất anh ta cũng phải nhĩ ra một câu nịnh nọt nào đó chứ, vì con gái vốn yêu bằng tai mà. Nhưng không bao giờ anh ta nói điều ấy, khi trả lời cho câu hỏi vì sao anh yêu cô. Cho đến một ngày, trong khi lau cầu thang cô bị trượt chân ngã, từ tầng ba xuống tầng hai. Bị rạn xương cánh tay, phải bó bột một thời gian. Anh đến thăm và bảo:</p>\n<p style="text-align:justify;">- Xem nào, cô bé. Em luôn mong anh phải nịnh em rằng em thật là xinh xắn và anh yêu em vì điều ấy. Thế nhưng bây giờ trông em thật xấu và anh vẫn yêu em!</p>\n<p style="text-align:justify;">Cô mỉm cười và nhìn vào đôi mắt anh, thấy tình yêu và tình thương chứa chan trong ánh mắt.....</p>\n<p style="text-align:justify;">Thời gian thấm thoắt trôi qua, một năm trôi qua, mùa thu đến. Mùa thu đến, Hà Nội tràn ngập trong một thứ ánh sáng vàng êm dịu. Năm ấy là năm cuối cấp của cô. Đột nhiên Lan thấy anh xa cô đến kì lạ, chưa bao giờ anh tắt máy đối với cô hoặc không trả lời tin nhắn. Nhưng giờ thì thế. Một tháng rồi hai tháng anh tránh mặt cô. Đến nhà không bao giờ gặp. Qua một người bạn chung, cô biết anh bị ung thư ruột. Hai tuần nữa sẽ mổ.</p>\n<p style="text-align:justify;">- Không biết có khỏi được không? Nó bảo em nếu có yêu ai thì cứ việc yêu nhưng có điều khi nào yêu hãy nói với nó trước. Anh ta nói.</p>\n<p style="text-align:justify;">Cà phê luôn luôn đắng và cuộc sống cũng vậy. Cô vào thăm anh trong bệnh viện. Anh nhìn cô rồi nói:</p>\n<p style="text-align:justify;">- Anh rất vui vì em đã đến.</p>\n<p style="text-align:justify;">- Bác sĩ bảo thế nào?_ cô hỏi.</p>\n<p style="text-align:justify;">- U lành tính, nhưng nào ai biết được - Anh cười xòa.</p>\n<p style="text-align:justify;">Cô khóc. Đừng khóc em…, anh an ủi. Anh sẽ khỏi, chắc chắn thế.</p>\n<p style="text-align:justify;">- Sao anh định bỏ em? , cô nói và khóc to hơn.</p>\n<p style="text-align:justify;">- Bởi vì anh muốn em hạnh phúc - Anh mỉm cười.</p>\n<p style="text-align:justify;">Lúc đó cô chỉ muốn đánh anh ta một cái. Cô tủi thân chạy ra ngoài…</p>\n<p style="text-align:justify;">Ca mổ thành công và Nam…. vẫn sống đến bây giờ. Nhưng cô vẫn giận Nam. Vì anh không bao giờ biết, dù anh có ra sao, có như thế nào cô vẫn yêu anh, và anh thật ngốc khi nghĩ rằng bỏ anh cô sẽ hạnh phúc. Anh không biết rắng sẽ mãi mãi không bao giờ cô tìm được một người giống như anh dù cô có sống thêm ngàn năm nữa. Ít nhất, về điểm này, cô có thể vênh mặt mà nghĩ rằng cô thông minh hơn anh dù anh thường bảo cô thật ngốc!</p>\n<p style="text-align:justify;">Vì cô tin chắc một điều, trong cuộc sống luôn có một người dành cho một người. Cái chính là phải có một chút may mắn để ta có thể tìm ra họ. Lan đã may mắn vì đã tìm được Nam và cô chọt nhận ra rằng, cuộc sống của cô dường như đã được pha thêm sữa, do vậy, nó không còn quá đắng nữa.</p>\n<p style="text-align:justify;">Trong cuộc sống có muôn vàn điều kì diệu. Và trong muôn vàn điều kì diệu có tình yêu!</p>\n<p style="text-align:justify;">Lan nhấp nốt ngụm cà phê rồi lại đi ra ngoài đường hòa vào dòng người đông đúc….</p>', '', 'vi-dang-ca-phe', '', '', '', 0, 2, 0, '', '', 1, 45),
(64, 'Cà phê có lợi cho nhân viên văn phòng', '', '2012-04-26 09:36:23', 'ca-phe-co-loi-cho-nhan-vien-van-phong.jpg', '<p style="text-align:justify;">Theo một nghiên cứu mới đây, những tách cà phê vào giờ nghỉ giải lao ở công sở mà người ta gọi là “coffee break” có thể giúp cho người lao động làm việc hứng khởi, tích cực và có hiệu quả hơn.</p>', '', '<p style="text-align:justify;">Theo một nghiên cứu mới đây, những tách cà phê vào giờ nghỉ giải lao ở công sở mà người ta gọi là “coffee break” có thể <strong>giúp cho người lao động làm việc hứng khởi, tích cực và có hiệu quả hơn.</strong></p>\n<p style="text-align:justify;">Các nhà nghiên cứu tại Viện Y học Nhiệt đới Luân Đôn (Anh) đã chỉ ra rằng, chất cafein có thể giúp cải thiện trí nhớ, làm cho người lao động tập trung hơn vào công việc. Hơn thế nữa, nó còn có thể làm giảm số lượng những lỗi sai mà người lao động thường mắc phải trong khi làm việc.</p>\n<p style="text-align:justify;">Đối với những người phải làm việc vào ban đêm, cafein cũng có tác dụng tương tự như những “giấc ngủ ngắn”. Đây là những phát hiện được công bố trên tờ tạp chí Cochrane Library, tạp chí của tổ chức Cochrane Collaboration, một tổ chức quốc tế chuyên đánh giá các nghiên cứu y khoa.</p>\n<p><img style="vertical-align:middle;margin-left:auto;margin-right:auto;" src="/public/userfiles/image/230412/image/img_12918.jpg" alt="" width="450" height="300" /></p>\n<p style="text-align:justify;">Các nhà nghiên cứu cũng gợi ý rằng, uống cà phê có thể giúp giảm thiểu các vụ tai nạn tại nơi làm việc, tai nạn giao thông. Thậm chí, nó có thể làm giảm sai sót y tế của các bác sĩ phải làm việc trong điều kiện căng thẳng kéo dài.</p>\n<p style="text-align:justify;">Nhóm nghiên cứu đã xem xét kết quả của 13 cuộc nghiên cứu độc lập được thực hiện ở khắp nơi trên thế giới liên quan đến những người lao động theo ca, hầu hết ở độ tuổi 20, trong điều kiện làm việc mô phỏng. Các tình nguyện viên đã được yêu cầu thực hiện nhiệm vụ để kiểm tra bộ nhớ và sự tập trung của họ, sử dụng lời nói và lí trí.</p>\n<p style="text-align:justify;">Một số các tình nguyện viên đã sử dụng cafein, trong khi các tình nguyên viên còn lại sử dụng giả dược. Sau đó, các tình nguyện viên sẽ tiếp xúc với các yếu tố khác như ánh sáng hoặc có một giấc ngủ ngắn. Tiếp đó, sẽ làm test trí nhớ, sự tập trung…. Kết quả cho thấy những tình nguyện viên dùng chất cafein có điểm số cao hơn so với những tình nguyện viên dùng giả dược.</p>\n<p style="text-align:justify;">Cà phê, đồ uống tăng lực hay ăn những thực phẩm có hàm lượng cafein cao đều cho kết quả tương tự.</p>\n<p style="text-align:justify;">Mặc dù sự khác biệt không lớn nhưng người dùng cafein thường ít mắc lỗi hơn so với những người có được giấc ngủ ngắn.</p>\n<p style="text-align:justify;">Ông Katharine Ker, nhà nghiên cứu hàng đầu của Viện Y học Nhiệt đới Luận Đôn cho hay: “Kết quả của những cuộc thử nghiệm cho thấy rằng, caffeine có thể giảm số lượng các lỗi và cải thiện hiệu suất chuyển đổi nhận thức trong công nhân”.</p>\n<p style="text-align:justify;">Nhóm nghiên cứu kêu gọi có nhiều nghiên cứu hơn về tác dụng của cafein đối với những người lớn tuổi.</p>', '', 'ca-phe-co-loi-cho-nhan-vien-van-phong', '', 'Cà phê có lợi cho nhân viên văn phòng', '', 0, 1, 0, '', '', 1, 47),
(65, 'Hoa lan', '', '2012-05-02 07:56:36', 'hoa-lan.jpg', '<p>Hoa lan – Orchidaceae - Là một trong những cây hoa đặc sắc, được quan tâm nuôi trồng từ những năm đầu khi phá ra vùng đất Đà lạt. Bắt đầu từ những cây lan thu hoạch trong tự nhiên của địa phương cho đến những năm 1960, việc nhập nội đã mang lại cho Đà Lạt những chủng loại giống mới và từ đó đã phát triển cho đến hiện nay.</p>', '', '<p>Hoa lan – Orchidaceae - Là một trong những cây hoa đặc sắc, được quan tâm nuôi trồng từ những năm đầu khi phá ra vùng đất Đà lạt. Bắt đầu từ những cây lan thu hoạch trong tự nhiên của địa phương cho đến những năm 1960, việc nhập nội đã mang lại cho Đà Lạt những chủng loại giống mới và từ đó đã phát triển cho đến hiện nay.</p>\r\n<p>Các cây lan nhập nội được nuôi trồng ở Đà Lạt nằm trong các chi: Catleya, Cymbidium, Dendrobium, Paphiopedillum, Oncidium, Odontoglossum, Vanda.<br />Các cây lan nhập nội được trồng trọt nhiều nhất là trong chi Cymbidium với trên 300 giống. Các giống Bengal Bay Golden Hue, Suva Royal Velvet, Sayonara Raritan, Balkis, Eliotte…được nhập nội từ những năm 1960 cho đến nay vẫn còn được ưa chuộng và trồng trọt khá nhiều tại các vườn lan.<br />Các loài lan nội địa cũng đã được sưu tập và trồng trọt phổ biến tại Đà lạt từ những năm 1940 cho đến nay. Các loài lan được ưa chuộng tại các vườn lan Đà Lạt là Long tu (Dendrobium primulinum Lindl.) Kim điệp (Den. Chrysotosum Lindl. var. Delacourii Gagn.), Thủy tiên trắng (Den. Farmeri Paxton.), Thủy tiên vàng (Den. Thyrsiflorum Rchb.f.), Thủy tiên mỡ gà (Den. Densiflorum Wall.), Long nhãn kim điệp (Den. Fimbriatum Hook.var.oculatum Hook.), Giả hạc (Den. Superbum Reich.in Walp.), Ý thảo (Den. gratiotissimum Rchb.f.), Các loại Lọng (Bulbophyllum sp.), Tuyết ngọc (Coelogyne psectrantha Gagn.), Hàm lân (Coelogyne Lawrenceana Rofle), Mỹ dung dạ hương (Vanda denisoniana Bens.et.Rchb.f.), Tóc tiên (Vanda Watsonii Rolfe), Cẩm báo (Vandopsis parishii (Veitsch) Reichb.f.), Huyết nhung (Renanthera Imschootiana Rolfe.), Bò cạp (Renanthera Evrardii Guillaum.), Hồ điệp (Phalaenopsis manii Reichb.f.), Vân hài (Paphiopedilum callosum Kerchove), Kim hài (Paphiopedilum villosum (Lindl.)Pfitz.), Hồng dâu (Aerides lawrenceana), Hạc đỉnh (Phajus tankervilleae (Ait.) Bl.).</p>', '', 'hoa-lan', '', 'Hoa lan – Orchidaceae - Là một trong những cây hoa đặc sắc, được quan tâm nuôi trồng từ những năm đầu khi phá ra vùng đất Đà lạt. Bắt đầu từ những cây lan thu hoạch trong tự nhiên của địa phương cho đến những năm 1960, việc nhập nội đã mang lại cho', '', 0, 1, 0, NULL, NULL, 1, 48),
(66, 'Hoa hồng', '', '2012-05-02 07:58:40', 'hoa-hong.jpg', '<p>Tên khoa học Rosa hybrida Hook. (họ Rosaceae). Hoa hồng có nguồn gốc từ Trung quốc, được trồng ở Đà lạt từ khá lâu, năm 1958 đã nhập các giống trồng trọt mới và phổ biến rộng rãi với mục đích khai thác hoa cắt cành.</p>', '', '<p>Tên khoa học Rosa hybrida Hook. (họ Rosaceae). Hoa hồng có nguồn gốc từ Trung quốc, được trồng ở Đà lạt từ khá lâu, năm 1958 đã nhập các giống trồng trọt mới và phổ biến rộng rãi với mục đích khai thác hoa cắt cành.</p>', '', 'hoa-hong', '', 'Tên khoa học Rosa hybrida Hook. (họ Rosaceae). Hoa hồng có nguồn gốc từ Trung quốc, được trồng ở Đà lạt từ khá lâu, năm 1958 đã nhập các giống trồng trọt mới và phổ biến rộng rãi với mục đích khai thác hoa cắt cành.', '', 0, 2, 0, NULL, NULL, 1, 48),
(67, 'Hoa cúc', '', '2012-05-02 07:59:01', 'hoa-cuc.jpg', '<p>Tên khoa học Chrysanthemum sp. (họ Asteraceae), có nguồn gốc từ trung quốc và các nước Châu Au. Hoa cúc được trồng làm cảnh tại Đà Lạt từ lâu nhưng thực sự trở thành sản phẩm kinh tế từ năm 1995.</p>', '', '<p>Tên khoa học Chrysanthemum sp. (họ Asteraceae), có nguồn gốc từ trung quốc và các nước Châu Au. Hoa cúc được trồng làm cảnh tại Đà Lạt từ lâu nhưng thực sự trở thành sản phẩm kinh tế từ năm 1995.</p>', '', 'hoa-cuc', '', 'Tên khoa học Chrysanthemum sp. (họ Asteraceae), có nguồn gốc từ trung quốc và các nước Châu Au. Hoa cúc được trồng làm cảnh tại Đà Lạt từ lâu nhưng thực sự trở thành sản phẩm kinh tế từ năm 1995.', '', 0, 3, 0, NULL, NULL, 1, 48),
(68, 'Đồ gỗ nội thất Những sai lầm thường gặp trong trang trí nội thất', '', '2012-05-03 02:25:33', 'o-go-noi-that-nhung-sai-lam-thuong-gap-trong-trang-tri-noi-that.jpg', '<p>Đồ gỗ nội thất Những sai lầm thường gặp trong trang trí nội thất ...</p>', '', '<p>1. Sao chép máy móc các chi tiết của công trình khác (có diện tích gần giống với nhà mình) sẽ dẫn tới sự lai căng, pha tạp.</p>\r\n<p>2. Muốn làm đẹp phải có nhiều tiền. Làm đẹp, tất nhiên phải tốn tiền, nhưng không tốn đến mức như bạn nghĩ. Hãy phân tích và tìm hiểu giá cả một số mặt hàng trên thị trường nội thất.</p>\r\n<p>3. Thuê thiết kế tốn kém và không cần thiết. Thật ra, thiết kế không tốn tiền bởi vì thiết kế phí chỉ chiếm từ 3-5% tổng giá trị công trình. Khi có thiết kế tốt sẽ tiết kiệm được chi phí xây dựng, tiết kiệm không gian (có nhiều nhà rất nhỏ nhưng không gian lại rộng và ngược lại có nhiều nhà rộng mà không gian lại rất nhỏ hẹp)</p>\r\n<p>4. Bảo thủ ý kiến. Rất nhiều chủ nhà không thèm nghe ý kiến của các kiến trúc sư. Họ cho rằng muốn đẹp thì phải thế này, phải thế kia mà không chịu chấp nhận các ý kiến khác. Hãy nhớ là bạn chỉ xây vài nhà thôi, còn kiến trúc sư, họ sống bằng nghề thiết kế.</p>\r\n<p>5. Gỗ tốt, gỗ quí hiếm sẽ đem lại vẻ đẹp cho nội thất. Gỗ tốt chỉ đem lại độ bền sử dụng, muốn đẹp phải tạo sự hài hòa, phù hợp với không gian và các vật dụng khác.</p>\r\n<p>6. Kiến thức làm đẹp nội thất thiếu cập nhật, bổ sung. Hãy mua sách, báo, tìm kiếm các bài viết hay trên internet nếu bạn thật sự muốn làm đẹp cho tổ ấm.</p>\r\n<p>7. Chạy theo phong trào. Hẳn chúng ta vẫn còn nhớ về thời kỳ mà trên nóc nhà ai cũng có một con đại bàng đậu trên quả địa cầu. Hiện nay thì là các mảng tường giật cấp ở cầu thang, các lỗ tường nho nhỏ, chi chít như lỗ châu mai.</p>\r\n<p>8. Sân vườn là phải có cây thế, có non bộ. Chỉ nên như thế nếu ngôi nhà của bạn mạng đậm nét Á đông. Một biệt thự phong cách “Tây” gần như không có chỗ cho non bộ kiểu Á đông.</p>\r\n<p>9. To sụ, dữ dằn, hầm hố mới đẹp. Có nhiều phong cách thiết kế: có mảnh mai, nhẹ nhàng, cầu kỳ, đơn giản, chắc khỏe…Vấn đề chính yếu là với diện tích như thế thì bài trí như vậy có hợp lý hay không.</p>\r\n<p>10. Phải dật cấp trần, phải ốp lát gạch gốm, đá chẻ, phải gắn đèn “mắt ếch”, phải sử dụng khối mạnh, phải dùng màu đặc biệt mới đep. Hãy biết cách dừng lại đúng lúc. Bài trí nội thất cũng tinh tế như nấu một món ăn vậy, không phải bạn thích món gì, sử dụng liều lượng bao nhiêu cũng được. Trang trí quá tay giống như bạn nêm quá nhiều muối vào món ăn .</p>\r\n<p>11. Thiếu sự phối hợp giữa kiến trúc sư và thầy phong thủy. Rất nhiều phương án thiết kế hay không trở thành hiện thực vì thầy “phán”. Hãy cho người thiết kế biết các yêu cầu về phong thủy của mình hoặc để họ gặp gỡ trao đổi với thầy phong thủy. Tốt nhất, hãy kiếm một kiến trúc sư rành về phong thủy.</p>\r\n<p>12. Không phân biệt được vẽ và thiết kế. Các bản vẽ xin phép xây dựng chính xác chỉ là bản vẽ bởi vì mới chỉ tạm thời phân chia công năng các phòng ốc mà chưa có sự nghiên cứu tỉ mỉ các thành phần kiến trúc và mối quan hệ giữa các thành phần kiến trúc đó.</p>\r\n<p>Tóm lại: Nội thất nhà ở không nên dùng nhiều mảng tường ốp lát có màu sắc, hoa văn rối ren làm rối loạn trường nhìn và mất cân bằng về tâm lý thụ cảm. Nội thất nên lịch sự mà tránh xa xỉ, phải tiện nghi sang trọng nhưng tránh phô trương, đó cũng chính là văn hóa nội thất.</p>', '', 'do-go-noi-that-nhung-sai-lam-thuong-gap-trong-trang-tri-noi-that', '', '', '', 0, 1, 1, NULL, NULL, 1, 53),
(69, 'Những thế bonsai đẹp không tưởng', '', '2012-05-03 02:29:19', 'nhung-the-bonsai-dep-khong-tuong.jpg', '<p>Tạo thế cho cây bonsai đã là một quá trình vô cùng khó nhọc và gian truân, nhưng việc xây dựng cảnh quan cho hợp với thế cây sẽ tạo ra một vẻ đẹp tuyệt diệu kèm theo sự khó nhọc bội phần.</p>', '', '<p><strong>Tạo thế cho cây bonsai đã là một quá trình vô cùng khó nhọc và gian truân, nhưng việc xây dựng cảnh quan cho hợp với thế cây sẽ tạo ra một vẻ đẹp tuyệt diệu kèm theo sự khó nhọc bội phần.</strong></p>\r\n<p>Tuy nhiên, đó là cách mà nghệ nhân Takanori Aiba người Nhật Bản đã lựa chọn để thổi hồn vào những cây bonsai của mình. Với sự đam mê cây, Aiba đã sử dụng giấy, nhựa, thạch cao, sơn… để xây dựng những thành phố nguy nga lộng lẫy quanh những chậu cây bonsai kì công của mình.</p>\r\n<p>Tạo thế bonsai cần sự kiên nhẫn nhưng việc xây dựng những thành phố với các tòa lâu đài nguy nga, những cối xay gió, bậc thang dài, những ngọn hải đăng… cho phù hợp với thế cây lại cần sự tỉ mỉ và khéo léo không kém.</p>\r\n<p>Để có được những tuyệt phẩm như thế, nghệ nhân Aiba đã phải bỏ ra 10 năm làm việc miệt mài tỉ mẩn bên những chậu cây nhỏ, hoàn thành từng chi tiết dù là bé nhất. Trên trang web cá nhân, Aiba mô tả đó là một hình thức nghệ thuật để thể hiện sự hòa hợp giữa con người và thiên nhiên trong một thế giới thu nhỏ.</p>\r\n<p>Được đào tạo về hội họa và kiến trúc, người đàn ông từng làm họa sĩ cho tạp chí thời trang Popye của Nhật Bản đã vận dụng tri thức, kinh nghiệm và cả tâm trí của mình để tạo nên những chậu cây cảnh ba chiều nghệ thuật.</p>\r\n<p>Nghệ thuật tạo thế cây bonsai bao gồm các kĩ thuật cắt tỉa, làm rụng lá, ghép cành, tạo thế… để cho chúng trở nên giống với cây trưởng thành, nhưng có kích cỡ nhỏ hơn rất nhiều. Nếu xét về tuổi, những cây bonsai có thể sống rất nhiều năm, nhưng do điều kiện sinh trưởng và tác động của con người, hình dáng của chúng vẫn rất còi cọc và nhỏ bé.</p>\r\n<p>Dưới đây là những thế bonsai tuyệt đẹp mà nghệ nhân Takanori Aiba mất hàng chục năm để tạo thành.</p>\r\n<p style="text-align:center;"><img src="/public/userfiles/image/cuasat24h/image/bon-1.jpg" alt="" width="403" height="420" /></p>\r\n<p style="text-align:center;"><img src="/public/userfiles/image/cuasat24h/image/bon-2.jpg" alt="" width="303" height="420" /></p>\r\n<p style="text-align:center;"><img src="/public/userfiles/image/cuasat24h/image/bon-10.jpg" alt="" width="431" height="420" /></p>\r\n<p style="text-align:center;"><img src="/public/userfiles/image/cuasat24h/image/bon-4.jpg" alt="" width="333" height="420" /></p>', '', 'nhung-the-bonsai-dep-khong-tuong', '', '', '', 0, 2, 0, NULL, NULL, 1, 54);
INSERT INTO `dos_module_news` (`record_id`, `title`, `titleen`, `postdate`, `pic_thumb`, `preview`, `previewen`, `content`, `contenten`, `tag`, `tagen`, `description`, `descriptionen`, `hits`, `record_order`, `hot`, `extra_field1`, `extra_field2`, `enable`, `dos_module_item_cat_cat_id`) VALUES
(70, 'DN xuất khẩu đồ gỗ: Nỗ lực cán đích', '', '2012-05-03 02:31:47', 'dn-xuat-khau-do-go-no-luc-can-dich.jpg', '<p>Chiến lược đề ra cho ngành gỗ là đến năm 2015 phải đạt kim ngạch xuất khẩu 5,4 tỷ USD, năm 2020 đạt 7 tỷ USD. Riêng năm 2010, ngành gỗ VN đăng ký với Chính phủ mục tiêu đạt kim ngạch xuất khẩu 3 tỷ USD.</p>', '', '<p>Chiến lược đề ra cho ngành gỗ là đến năm 2015 phải đạt kim ngạch xuất khẩu 5,4 tỷ USD, năm 2020 đạt 7 tỷ USD. Riêng năm 2010, ngành gỗ VN đăng ký với Chính phủ mục tiêu đạt kim ngạch xuất khẩu 3 tỷ USD.</p>\r\n<p>st) nhận định: Mục tiêu 3 tỷ USD tổng kim ngạch XK đồ gỗ trong năm 2010 là hoàn toàn khả thi.</p>\r\n<p>Ba trở ngại lớn</p>\r\n<p>Giữa quý 2/2010, lượng đơn hàng của các DN đã ký được đến hết năm 2010, với tổng kim ngạch 3 tỷ USD, tăng hơn 400 triệu USD so với năm 2009. Tuy nhiên, theo ông Nguyễn Tôn Quyền - Chủ tịch Viforest, DN xuất khẩu gỗ vẫn đang gặp phải nhiều trở ngại lớn.</p>\r\n<p>Thứ nhất, DN phải ứng phó khi đạo luật mới của Mỹ (Lacey) có hiệu lực từ ngày 1/4/2010 và của EU (FLEGT) có hiệu lực từ tháng 1/2012. Đặc điểm chung của cả FLEGT và Lacey đều đòi hỏi nhà xuất khẩu phải trình bày chuỗi hành trình của lâm sản, tất cả các khâu từ khai thác cho đến thành phẩm một cách minh bạch để nhà chức trách Mỹ và EU có thể truy xét nguồn gốc nguyên liệu.</p>\r\n<p>Tuy nhiên, hiện các DN VN vẫn chưa thể đáp ứng yêu cầu của các đạo luật trên vì chưa có hướng dẫn cụ thể từ phía các cơ quan chức năng. Mặt khác, để triển khai và xin cấp chứng chỉ thì mỗi lâm trường trồng rừng nguyên liệu gỗ phải cần đến 2 triệu USD, trong khi các DN chế biến gỗ lại không đủ tài chính để lo liệu việc này. Theo ước tính của ông Nguyễn Tôn Quyền - Chủ tịch Hiệp hội đồ gỗ và lâm sản VN (Viforest) sẽ có khoảng 300 DN trực tiếp xuất khẩu gỗ của VN bị ảnh hướng bởi các đạo luật trên.</p>\r\n<p>Các DN gỗ mong mỏi có nguồn nguyên liệu gỗ ổn định trong nước để sản xuất<br />Trở ngại thứ hai là hiện nay, DN VN còn thiếu thông tin về các quốc gia, các Cty nào có thể bán gỗ cho VN với đầy đủ các giấy phép như vậy. Trước kia, nhập khẩu gỗ chỉ cần quan tâm đến chứng chỉ FSC (chương trình toàn cầu kiểm định chuỗi hành trình sản phẩm từ khâu nguyên liệu đến thành phẩm) nhưng nay, ngoài FSC ra còn cần nhiều chứng chỉ khác.</p>\r\n<p>Trở ngại thứ ba, đó là 70% nguyên liệu sản xuất gỗ của VN phải nhập khẩu, chi phí phục vụ sản xuất như than, điện, nước đều quá cao vì vậy, sức cạnh tranh của các DN gỗ VN còn kém so với các nước khác như Myanmar, Malaysia và Indonesia... Các nước này có đủ nguồn gỗ không cần phải nhập khẩu nguyên liệu nên tạo ra được những sản phẩm chất lượng cao với giá thành hạ hơn.</p>\r\n<p>DN lạc quan</p>\r\n<p>Không thể phủ nhận việc đạo luật Lacey thực thi sẽ là một rào cản lớn đối với các DN. Tuy nhiên, nhiều DN lớn tỏ ra không ngại Lacey bởi lâu nay khi xuất khẩu vào thị trường Mỹ nhiều DN trong nước đã áp dụng chứng chỉ COC, thậm chí còn áp dụng cả Internal Auditor (chứng nhận của BVQI, SGS, hai trong số các tổ chức tư vấn và chứng nhận chất lượng quốc tế). Vì thế, những DN nào có COC tốt sẽ không sợ bị ảnh hưởng.</p>\r\n<p>Thực tế cho thấy, trong 5 tháng qua, lượng hàng các DN xuất khẩu vào thị trường Mỹ tăng mạnh (ước tăng gần 10% so với cùng kỳ năm 2009). Cho đến thời điểm này, chưa có lô hàng nào bị phía nhập khẩu trả về vì vi phạm quy định.</p>\r\n<p>Bên cạnh sự khởi sắc đáng mừng tại thị trường Mỹ, nhu cầu nhu cầu ở các thị trường nhập khẩu truyền thống như Nhật Bản, Trung Quốc, Liên minh Châu Âu (EU)... cũng tăng cao. Chỉ trong 5 tháng đầu năm, nhiều DN đã ký được hợp đồng và đơn hàng cho đến cuối năm 2010. Từ đầu năm đến nay, giá bán sản phẩm gỗ luôn giữ mức tăng khoảng 3% so với năm 2009.</p>\r\n<p>Đón tín hiệu lạc quan từ thị trường, năm nay, các DN chế biến gỗ đã chuẩn bị khá tốt nguyên liệu sản xuất. Đối với nguyên liệu nhập khẩu từ gỗ rừng trồng như thông, keo, bạch đàn..., Nhiều DN đã tăng cường sử dụng nguồn gỗ rừng trồng trong nước.</p>\r\n<p>Do chủ động tích trữ nguồn nguyên liệu ngay từ đầu năm, nên mặc dù tại thời điểm này, giá gỗ nguyên liệu nhập khẩu đang tăng nhưng đa số DN vẫn không bị ảnh hưởng nhiều.</p>\r\n<p style="text-align:center;"><img src="/public/userfiles/image/cuasat24h/image/DNsanxuatdogo.jpg" alt="" width="450" height="338" /></p>\r\n<p>Hiện, VN có khoảng 2.000 DN sản xuất sản phẩm gỗ trong đó có 500 DN chuyên sản xuất đồ nội thất, xuất khẩu đi 120 quốc gia/lãnh thổ trên thế giới. Hoa Kỳ và EU là hai thị trường lớn nhất, chiếm 44% và 29%. Để tạo ra sức cạnh tranh cao cho sản phẩm, giảm được chi phí sản xuất, các DN gỗ mong mỏi sẽ có được nguồn nguyên liệu gỗ ổn định trong nước để sản xuất.</p>\r\n<p>Trong chiến lược phát triển của ngành gỗ xuất khẩu, Viforest đang xúc tiến thành lập trung tâm giao dịch gỗ tại ba miền: Bắc, Trung, Nam. Khi trung tâm đi vào hoạt động, DN sẽ giảm được giá thành sản phẩm, tiết kiệm được thời gian sản xuất và đặc biệt nguồn gốc, xuất xứ gỗ rất rõ ràng.</p>\r\n<p>Tuy nhiên, việc này không thể thực hiện “một sớm, một chiều” bởi chỉ riêng về quỹ đất, mỗi trung tâm cũng phải khoảng 20 ha, vốn ban đầu hàng chục triệu USD... Vì vậy, nếu có sự hỗ trợ của các DN và nhà nước, tin rằng, một ngày không xa, các DN chế biến gỗ sẽ không còn nỗi lo nhập khẩu nguyên liệu chế biến, yên tâm sản xuất kinh doanh, góp phần đẩy mạnh kim ngạch xuất khẩu của ngành lên cao hơn nữa.</p>', '', 'dn-xuat-khau-do-go-no-luc-can-dich', '', 'Chiến lược đề ra cho ngành gỗ là đến năm 2015 phải đạt kim ngạch xuất khẩu 5,4 tỷ USD, năm 2020 đạt 7 tỷ USD. Riêng năm 2010, ngành gỗ VN đăng ký với Chính phủ mục tiêu đạt kim ngạch xuất khẩu 3 tỷ USD.', '', 0, 3, 0, NULL, NULL, 1, 53),
(71, 'Bảo vệ đồ gỗ ngoài trời', '', '2012-05-03 02:35:40', 'bao-ve-do-go-ngoai-troi.jpg', '<p>Những chiếc bàn gỗ, ghế gỗ bầy ngoài vườn cho bữa tiệc trà, những chiếc xích đu bằng gỗ cho con chơi đùa..., chúng rất dễ bị hỏng khi phơi ngoài trời. Bạn có biết cách bảo vệ chúng?</p>', '', '<p>Những chiếc bàn gỗ, ghế gỗ bầy ngoài vườn cho bữa tiệc trà, những chiếc xích đu bằng gỗ cho con chơi đùa..., chúng rất dễ bị hỏng khi phơi ngoài trời. Bạn có biết cách bảo vệ chúng?</p>\r\n<p style="text-align:center;"><img src="/public/userfiles/image/cuasat24h/image/08_DOOL_100709_K1_1.jpg" alt="" width="500" height="399" /></p>\r\n<p style="text-align:left;">Bạn nên đặt đồ gỗ ở những nơi không có ánh nắng trực tiếp, tốt nhất là dưới bóng râm và mái hiên.</p>\r\n<p>Khi trời quá nắng hoặc quá lạnh hãy phủ lên chúng một lớp vải bọc.</p>\r\n<p>Nên lau chùi bàn ghế thường xuyên.</p>\r\n<p>Bộ dụng cụ đơn giản để bảo quản đồ gỗ ngoài trời bao gồm: khăn mềm, nước rửa (có thể sử dụng loại nước rửa chén gia đình pha loãng), giấy nhám cỡ hạt 320, găng tay nhựa, cọ sơn và không thể thiếu dầu bảo quản gỗ chuyên dùng.</p>\r\n<p><strong>Bước 1</strong></p>\r\n<p style="text-align:center;"><img src="/public/userfiles/image/cuasat24h/image/08_DOOL_100709_K1_2.jpg" alt="" width="500" height="375" /></p>\r\n<p style="text-align:left;">- Trong quá trình thực hiện bảo trì sản phẩm bạn nên chọn nơi khô ráo, không bị mưa để thực hiện quá trình.</p>\r\n<p>- Bước đầu tiên là bạn làm sạch các bụi bẩn trên sản phẩm bằng cách cọ rửa bằng nước, có thể kết hợp nước rửa pha loãng để làm sạch các vết bẩn cứng đầu.</p>\r\n<p>- Sau đó rửa sạch lại bằng nước cho trôi hết các vết bẩn và nước rửa. Sau khi làm sạch xong, bạn lau khô đồ gỗ và để sản phẩm khô khoảng 24h, nếu muốn, hãy dời đồ gỗ ra chỗ có nắng để nước trên bề mặt gỗ được bốc hơi nhanh.</p>\r\n<p><strong>Bước 2</strong></p>\r\n<p style="text-align:center;"><img src="/public/userfiles/image/cuasat24h/image/08_DOOL_100709_K1_3.jpg" alt="" width="500" height="342" /></p>\r\n<p style="text-align:left;">- Khi sản phẫm gỗ đã khô ráo, sử dụng giấy nhám cỡ hạt #320 (loại giấy nhám mịn) làm phẳng lại bề mặt sản phẩm gỗ, thao tác chỉ cần chà nhẹ thôi là đủ để làm phẳng bề mặt. Sau khi làm phẳng xong, dùng vải lau sạch bụi gỗ trên sản phẩm.</p>\r\n<p style="text-align:left;"><strong>Bước 3</strong></p>\r\n<p style="text-align:center;"><img src="/public/userfiles/image/cuasat24h/image/08_DOOL_100709_K1_4.jpg" alt="" width="303" height="420" /></p>\r\n<p style="text-align:left;">- Tiến hành phủ lại lớp dầu bảo quản lên bề mặt sản phẩm, nên đeo găng tay nhựa (không dùng găng cao su vì sẽ bị vỡ khi tiếp xúc với dầu bảo quản gỗ) khi thao tác phủ dầu bảo quản.</p>\r\n<p>- Phương pháp phủ rất đơn giản bằng cách bạn có thể dùng cọ sơn hoặc vải lau mềm để thấm dầu quét lên bề mặt. Nhưng lưu ý là quét không để sót chi tiết nào của sản phẩm. Khi hoàn tất toàn bộ sản phẩm, dùng vải lau ráo các vệt dầu dư trên bề mặt và để sản phẩm vào nơi khô ráo, không bị mưa để lớp dầu bảo quản được khô (tương tự như khi chúng ta quét sơn trên cửa sắt, phải để màng sơn khô). Thời gian khô là khoảng 24h cho nên không sử dụng sản phẩm trong thời gian này.</p>\r\n<p>- Thao tác trên có thể được lặp lại sau 24h, để tăng thêm một lớp dầu bảo quản trên bề mặt (nhưng tối đa chì khoảng 2-3 lớp). Bạn nên nhớ rằng khi số lớp dầu bảo quản nhiều hơn một lớp thì cũng có nghĩa là sản phẩm gỗ của bạn được bảo vệ tốt hơn.</p>\r\n<p>- Bạn có thể sử dụng sản phẩm đồ gỗ lại sau 24h kể từ lúc phủ lớp dầu bảo quản sau cùng.</p>\r\n<p>Loại dầu bảo quản chuyên dùng có các khả năng như thẩm thấu sâu vào các sợi gỗ, chống chịu được mưa, nắng, tia tử ngoại, nấm mốc,..và co giãn theo gỗ khi gặp thời tiết nóng, lạnh, cho nên khả năng bảo vệ cho đồ gỗ ngoài trời rất tốt.</p>\r\n<p>Một số loại sơn hay vec- ni ngoài thị trường được bày bán ở các tiệm sơn cùng có thể có một trong các tính năng trên nhưng tốt nhất là bạn nên tìm đúng loại chuyên dùng với các yêu cầu cơ bản như: chịu mưa nắng tốt, không bị bong tróc, kháng nấm mốc.</p>\r\n<p>Chu kỳ thực hiện bảo trì là 03 tháng/lần hoặc bạn là người rất bận rộn thì ít nhất là khoảng 06 tháng/lần. Còn ngược lại, để giản đơn thì khoảng lâu nhất là 02 năm bạn nên mua lại bộ đồ gỗ ngoài trời mới cho ngôi nhà của mình.</p>', '', 'bao-ve-do-go-ngoai-troi', '', '', '', 0, 4, 0, NULL, NULL, 1, 53),
(72, 'Khoảng sân nhỏ xanh mát giữa nhà', '', '2012-05-03 02:50:33', 'khoang-san-nho-xanh-mat-giua-nha.JPG', '<p>Ở những ngôi nhà phố rất cần một khoảng xanh tươi giữa các không gian trong nhà để làm dịu đi cái nắng oi ả của mùa hè.</p>', '', '<p>Ở những ngôi nhà phố rất cần một khoảng xanh tươi giữa các không gian trong nhà để làm dịu đi cái nắng oi ả của mùa hè.</p>\r\n<p>Với khoảng diện tích khiêm tốn trong những ngôi nhà phố, nếu biết cách khéo léo thiết kế, bố trí thì vẫn có thể tạo nên khoảng xanh mát của cây cối, hoa lá, chim chóc mang đến vẻ đẹp thanh lịch và mát mẻ cho không gian.</p>\r\n<p>Thông thường, gia chủ ở những ngôi nhà phố thường “để lại” một khoảng đất nhỏ phía trước hoặc sau nhà để tạo nên khoảng patio xinh xắn ngồi hóng mát trong mỗi chiều mùa hè. Tuy nhiên, archi.vn lại muốn giới thiệu đến bạn những giải pháp thiết kế độc đáo, tạo khoảng sân nhỏ được nối tiếp từ nhà trước đến nhà sau hoặc từ cổng nghỉ vào đến nhà là một giải pháp thú vị. Đây cũng là một cách tận dụng không gian để mang lại bầu không khí trong lành và thoải mái cho ngôi nhà của bạn.</p>\r\n<p>Để thực sự tạo kết nối không gian trong nhà và ngoài sân, bạn nên chọn những vật liệu thân thiện với môi trường như gỗ, đá, sỏi… Thêm những yếu tố thiên nhiên như cây cỏ, hoa lá, nước… để thực sự biến căn nhà của bạn thành không gian nghỉ dưỡng tuyệt vời ngay trong lòng thành phố.</p>\r\n<p style="text-align:center;"><img src="/public/userfiles/image/cuasat24h/image/02_020512DOOLThangMB0.JPG" alt="" width="501" height="278" /></p>\r\n<p style="text-align:left;">Thông thường, khoảng sân nhỏ kết nối giữa hai không gian sống trong cùng một ngôi nhà sẽ được chia thành hai khu vực tương đối rõ ràng. Một khu vực được thiết kế sàn bằng phẳng tiện lợi cho việc đi lại, đặt ghế hay bàn ăn cho những buổi tiệc cuối tuần. Một khu vực sử dụng để bài trí tiểu cảnh, được thiết kế như một khu “sinh thái mini” tạo vẻ đẹp sinh động và bắt mắt cho khoảng sân nhỏ.</p>\r\n<p style="text-align:center;"><img src="/public/userfiles/image/cuasat24h/image/02_020512DOOLThangMB01.JPG" alt="" width="503" height="304" /></p>\r\n<p style="text-align:left;">Tùy vào tính cách của gia chủ để mang đến nét đẹp riêng cho khoảng sân. Khu vườn nhỏ xinh này được thiết kế bởi các hình khối chữ nhật đơn giản với các ô được phân chia chức năng rõ ràng như: trồng rau, trồng hoa, xung quanh là lối đi bằng đá trắng xinh xắn. Ở giữa là khu vực bằng phẳng dành đặt chiếc ghế tựa dài ngồi đọc sách hay ngắm đất trời mỗi buổi chiều hè.</p>\r\n<p style="text-align:center;"><img src="/public/userfiles/image/cuasat24h/image/02_020512DOOLThangMB02.jpg" alt="" width="501" height="317" /></p>\r\n<p style="text-align:left;">Khác với cách bố trí thông thường, khu vực kết nối 2 không gian của ngôi nhà được gia chủ thiết kế mang đậm phong cách Á Đông với hệ thống non bộ và ao nhỏ nuôi cá cảnh. Một vài cây, hoa được đặt trên các phiến đá tạo nên không gian rất gần với thiên nhiên. Đặt một chiếc ghế giường nho nhỏ bên cạnh ao cá cảnh, tiếng nước róc rách và hơi nước mát mẻ sẽ giúp tinh thần của bạn thêm thư thái trong mỗi buổi trưa hè.</p>', '', 'khoang-san-nho-xanh-mat-giua-nha', '', '', '', 0, 5, 0, NULL, NULL, 1, 55),
(73, 'Dùng tượng rồng tránh họa mang vận may đến gia đình', '', '2012-05-03 02:52:00', 'dung-tuong-rong-tranh-hoa-mang-van-may-den-gia-dinh.jpg', '<p>Rồng là linh vật trong phong thủy, ngoài việc đem lại những ý nghĩa tốt đẹp và tránh họa tiểu nhân, sử dụng hình tượng rồng còn đem lại may mắn cho...</p>', '', '<p>Rồng là linh vật trong phong thủy, ngoài việc đem lại những ý nghĩa tốt đẹp và tránh họa tiểu nhân, sử dụng hình tượng rồng còn đem lại may mắn cho...</p>\r\n<p>Một trong những vấn đề được phong thủy đặc biệt quan tâm là việc tạo ra sự cân bằng về năng lượng.</p>\r\n<p>Cách tốt nhất để có được điều đó là vận dụng những vật phẩm phong thủy vào không gian sống. Với phụ nữ, nên sử dụng biểu tượng rồng để thu hút năng lượng dương.</p>\r\n<p style="text-align:center;"><img src="/public/userfiles/image/cuasat24h/image/02_020512DOOLThangTT010.jpg" alt="" width="439" height="420" /></p>\r\n<p style="text-align:left;">Rồng là biểu tượng cung cấp năng lượng dương rất mạnh, chủ về vận may trong tình yêu cho những phụ nữ độc thân sống 1 mình hoặc sống với mẹ.</p>\r\n<p>Trong trường hợp này, năng lượng toàn âm tạo ra sự mất cân bằng. Nếu việc trang trí của ngôi nhà phản ánh quá nhiều năng lượng âm, sẽ khiến người phụ nữ trong gia đình gặp khó khăn trong việc tìm kiếm người yêu và bạn đời của mình.</p>\r\n<p>Bạn có thể khắc phục bằng cách khai thác năng lượng dương rất mạnh của rồng. Nơi tốt nhất để tạo năng lượng dương của rồng là phòng khách.</p>\r\n<p>Bạn đứng ở giửa phòng khách nhìn ra phía trước và chọn bờ tường bên trái của phòng khách, tức là phương vị Thanh long, để bố trí một kệ nhỏ và đặt rồng trên kệ này, đầu rồng nhìn ra cửa chính của ngôi nhà.</p>\r\n<p>Để đạt hiệu quả tốt nhất, bạn nên chọn ngày tốt để đặt rồng trong nhà.</p>\r\n<p>Những ngày tốt đó gồm có 5 ngày (còn gọi là ngũ long nhật: 5 ngày rồng) như sau: Giáp Thìn, Bính Thìn, Mậu Thìn, Canh Thìn, Nhâm Thìn.</p>', '', 'dung-tuong-rong-tranh-hoa-mang-van-may-den-gia-dinh', '', 'Dùng tượng rồng tránh họa mang vận may đến gia đình', '', 0, 6, 0, NULL, NULL, 1, 55),
(74, 'Choáng ngợp với khu rừng tre tuyệt đẹp ở Nhật', '', '2012-05-03 02:53:46', 'choang-ngop-voi-khu-rung-tre-tuyet-dep-o-nhat.jpg', '<p>Rừng tre Sagano nằm ở phía tây bắc của Kyoto trên diện tích 16 km2. Đây là một trong những khu tự nhiên đẹp nhất ở Nhật.</p>', '', '<p>Rừng tre Sagano nằm ở phía tây bắc của Kyoto trên diện tích 16 km2. Đây là một trong những khu tự nhiên đẹp nhất ở Nhật.</p>\r\n<p>Không chỉ ấn tượng bởi vẻ đẹp tự nhiên, rừng tre Sagano còn tạo ra những bản nhạc du dương khi gió thổi qua những rặng tre xào xạc. Âm thanh của tre ở đây còn được bầu chọn trong top 100 âm thanh cần được bảo tồn ở Nhật. Theo Amusing Planet, bạn chỉ cần mất 30 phút đi tàu từ Kyoto để tới rừng Sagano.</p>\r\n<p style="text-align:center;"><img src="/public/userfiles/image/cuasat24h/image/27_270412DOOLThangTT010.jpg" alt="" width="560" height="372" /></p>\r\n<p style="text-align:center;"><img src="/public/userfiles/image/cuasat24h/image/27_270412DOOLThangTT011.jpg" alt="" width="560" height="372" /></p>\r\n<p style="text-align:center;"><img src="/public/userfiles/image/cuasat24h/image/27_270412DOOLThangTT09.jpg" alt="" width="560" height="314" /></p>', '', 'choang-ngop-voi-khu-rung-tre-tuyet-dep-o-nhat', '', '', '', 0, 7, 0, NULL, NULL, 1, 55);

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
) ENGINE=InnoDB  DEFAULT CHARSET=utf8 AUTO_INCREMENT=56 ;

--
-- Dumping data for table `dos_module_news_cat`
--

INSERT INTO `dos_module_news_cat` (`cat_id`, `cat_parent_id`, `cat_title`, `cat_titleen`, `preview`, `previewen`, `tag`, `tagen`, `description`, `descriptionen`, `pic_full`, `cat_order`, `cat_extra1`, `cat_extra2`, `cat_enable`, `dos_usernames_username`) VALUES
(37, 0, 'Mẹo vặt', '', '', '', 'meo-vat', '', 'Mẹo vặt', '', '', 1, '', '', 1, '070312'),
(42, 0, 'Cẩm nang - Kiến thức', '', '', '', 'cam-nang-kien-thuc', '', 'Cẩm nang - Kiến thức', '', '', 1, '', '', 1, '200312'),
(43, 0, 'Sách và Cuộc Sống', '', '', '', 'sach-va-cuoc-song', '', 'Sách và Cuộc Sống', '', '', 2, '', '', 1, '200312'),
(44, 0, 'Sự kiện', '', '', '', 'su-kien', '', 'Sự kiện', '', '', 3, '', '', 1, '200312'),
(45, 0, 'Góc cà phê', '', '', '', 'goc-ca-phe', '', 'Góc cà phê', '', '', 1, '', '', 1, '230412'),
(46, 0, 'Văn hóa cà phê', '', '', '', 'van-hoa-ca-phe', '', 'Câu chuyện cà phê', '', '', 2, '', '', 1, '230412'),
(47, 0, 'Cẩm nang - Kiến thức', '', '', '', 'cam-nang-kien-thuc', '', 'Cẩm nang - Kiến thức', '', '', 3, '', '', 1, '230412'),
(48, 0, 'Thị trường hoa trong nước', '', NULL, NULL, 'thi-truong-hoa-trong-nuoc', '', 'Thị trường hoa trong nước', '', '', 1, NULL, NULL, 1, 'hoasaytinh'),
(49, 48, 'Tin tức về hoa', '', NULL, NULL, 'tin-tuc-ve-hoa', '', '', '', '', 2, NULL, NULL, 1, 'hoasaytinh'),
(50, 48, 'Tin tức về rượu', '', NULL, NULL, 'tin-tuc-ve-ruou', '', '', '', '', 3, NULL, NULL, 1, 'hoasaytinh'),
(51, 48, 'Tin tức về quà tặng cho tình nhân', '', NULL, NULL, 'tin-tuc-ve-qua-tang-cho-tinh-nhan', '', '', '', '', 4, NULL, NULL, 1, 'hoasaytinh'),
(52, 0, 'Quà tặng', '', NULL, NULL, 'qua-tang', '', '', '', '', 5, NULL, NULL, 1, 'hoasaytinh'),
(53, 0, 'Tin tức về đồ gỗ', '', NULL, NULL, 'tin-tuc-ve-do-go', '', 'Tin tức về đồ gỗ', '', 'tin-tuc-ve-do-go.jpg', 1, NULL, NULL, 1, 'cuasat24h'),
(54, 0, 'Tin tức trong nước', '', NULL, NULL, 'tin-tuc-trong-nuoc', '', '', '', 'tin-tuc-trong-nuoc.jpg', 2, NULL, NULL, 1, 'cuasat24h'),
(55, 0, 'Khám phá trải nghiệm', '', NULL, NULL, 'kham-pha-trai-nghiem', '', 'Khám phá trải nghiệm', '', '', 3, NULL, NULL, 1, 'cuasat24h');

-- --------------------------------------------------------

--
-- Table structure for table `dos_module_pcounter_save`
--

CREATE TABLE IF NOT EXISTS `dos_module_pcounter_save` (
  `save_name` varchar(10) NOT NULL,
  `save_value` int(11) NOT NULL,
  `dos_usernames_username` varchar(45) NOT NULL,
  KEY `fk_dos_module_pcounter_save_dos_usernames1` (`dos_usernames_username`)
) ENGINE=InnoDB DEFAULT CHARSET=utf8;

--
-- Dumping data for table `dos_module_pcounter_save`
--

INSERT INTO `dos_module_pcounter_save` (`save_name`, `save_value`, `dos_usernames_username`) VALUES
('day_time', 2456030, 'dos'),
('max_count', 0, 'dos'),
('counter', 0, 'dos'),
('yesterday', 0, 'dos'),
('day_time', 2456046, 'gothuytung'),
('max_count', 0, 'gothuytung'),
('counter', 0, 'gothuytung'),
('yesterday', 0, 'gothuytung'),
('day_time', 2456046, '230412'),
('max_count', 0, '230412'),
('counter', 0, '230412'),
('yesterday', 0, '230412'),
('day_time', 2456046, '200312'),
('max_count', 0, '200312'),
('counter', 0, '200312'),
('yesterday', 0, '200312'),
('day_time', 2456046, '070312'),
('max_count', 0, '070312'),
('counter', 0, '070312'),
('yesterday', 0, '070312'),
('day_time', 2456050, 'hoasaytinh'),
('max_count', 0, 'hoasaytinh'),
('counter', 0, 'hoasaytinh'),
('yesterday', 0, 'hoasaytinh'),
('day_time', 2456051, 'cuasat24h'),
('max_count', 1, 'cuasat24h'),
('counter', 1, 'cuasat24h'),
('yesterday', 1, 'cuasat24h');

-- --------------------------------------------------------

--
-- Table structure for table `dos_module_pcounter_users`
--

CREATE TABLE IF NOT EXISTS `dos_module_pcounter_users` (
  `user_ip` varchar(39) NOT NULL,
  `user_time` int(11) NOT NULL,
  `dos_usernames_username` varchar(45) NOT NULL,
  KEY `fk_dos_module_pcounter_users_dos_usernames1` (`dos_usernames_username`)
) ENGINE=InnoDB DEFAULT CHARSET=utf8;

--
-- Dumping data for table `dos_module_pcounter_users`
--

INSERT INTO `dos_module_pcounter_users` (`user_ip`, `user_time`, `dos_usernames_username`) VALUES
('''127.0.0.1''', 1336019879, 'cuasat24h');

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
) ENGINE=InnoDB  DEFAULT CHARSET=utf8 AUTO_INCREMENT=459 ;

--
-- Dumping data for table `dos_module_products`
--

INSERT INTO `dos_module_products` (`record_id`, `title`, `titleen`, `postdate`, `pic_thumb`, `pic_full`, `pic_desc`, `preview`, `previewen`, `content`, `contenten`, `tag`, `tagen`, `description`, `descriptionen`, `hits`, `record_order`, `unit`, `hot`, `specials`, `extra_field1`, `extra_field2`, `extra_field3`, `extra_field4`, `enable`, `dos_module_item_cat_cat_id`) VALUES
(150, 'SẬP GỖ THỦY TÙNG', '', '2012-04-28 09:35:45', 'sp-g-thy-tng-thumb.jpg', 'sp-g-thy-tng.JPG', '', '<p style="text-align:justify;">Đây là bộ sập duy nhất có kích thước lớn, chạm khắc độc đáo tỉ mỉ.Loại gỗ được làm là loại thuỷ tùng vân chuối ( hiện được ưa chuộng nhất hiện nay ).</p>', '', '<p>Đây là bộ sập ( ngựa ) được làm tất cả bằng gỗ thuỷ tùng kích thước1.73m X 2.53m , cao 63cm, độ dày viền 10cm và rộng 16cm, 2 miếng gép dày 6cm, tất cả kích thước điều theo thước Lỗ Ban chuẫn.</p>\n<p><img style="margin-left:auto;margin-right:auto;" src="/public/userfiles/image/gothuytung/image/DSC03500.JPG" alt="" width="518" height="291" /></p>\n<p>Đây là bộ sập duy nhất có kích thước lớn, chạm khắc độc đáo tỉ mỉ.Loại gỗ được làm là loại thuỷ tùng vân chuối ( hiện được ưa chuộng nhất hiện nay ).</p>\n<p style="text-align:center;"><img src="/public/userfiles/image/gothuytung/image/DSC03501.JPG" alt="" width="518" height="291" /></p>\n<p>Theo một số dân chơi trong nghề thì đây là bộ Sập ( độc nhất vô nhị ) chỉ ghép bởi hai tấm lớn. hầu như các bộ khác điều ghép tù nhiều tấm nhỏ.</p>\n<p><img style="margin-left:auto;margin-right:auto;" src="/public/userfiles/image/gothuytung/image/03.jpg" alt="" width="518" height="389" /></p>\n<p> </p>\n<p><img style="margin-left:auto;margin-right:auto;" src="/public/userfiles/image/gothuytung/image/02.JPG" alt="" width="518" height="389" /></p>\n<p style="text-align:justify;"> </p>', '', 'sap-go-thuy-tung', '', 'SẬP GỖ THỦY TÙNG', '', 0, 4, '', 0, 0, '', '', '', '', 1, 67),
(151, 'SẬP GỖ THỦY TÙNG 2', '', '2012-04-28 09:49:04', 'sp-g-thy-tng-2-thumb.jpg', 'sp-g-thy-tng-2.jpg', '', '<p>Đây là bộ sập ( ngựa ) được làm tất cả bằng gỗ thuỷ tùng kích thước1.73m X 2.53m , cao 63cm, độ dày viền 10cm và rộng 16cm, 2 miếng gép dày 6cm, tất cả kích thước điều theo thước Lỗ Ban chuẫn.</p>', '', '<p>Đây là bộ sập ( ngựa ) được làm tất cả bằng gỗ thuỷ tùng kích thước1.73m X 2.53m , cao 63cm, độ dày viền 10cm và rộng 16cm, 2 miếng gép dày 6cm, tất cả kích thước điều theo thước Lỗ Ban chuẫn.</p>\n<p style="text-align:center;"><img src="/public/userfiles/image/gothuytung/image/DSC03488.JPG" alt="" width="518" height="291" /></p>\n<p>Đây là bộ sập duy nhất có kích thước lớn, chạm khắc độc đáo tỉ mỉ.Loại gỗ được làm là loại thuỷ tùng vân chuối ( hiện được ưa chuộng nhất hiện nay ).</p>\n<p style="text-align:center;"><img src="/public/userfiles/image/gothuytung/image/DSC03485.JPG" alt="" width="518" height="291" /></p>\n<p>Theo một số dân chơi trong nghề thì đây là bộ Sập ( độc nhất vô nhị ) chỉ ghép bởi hai tấm lớn. hầu như các bộ khác điều ghép tù nhiều tấm nhỏ.</p>', '', 'sap-go-thuy-tung-2', '', 'SẬP GỖ THỦY TÙNG 2', '', 0, 8, '', 0, 0, '', '', '', '', 1, 67),
(152, 'PHƯỚC - LỘC - THỌ', '', '2012-04-28 10:00:04', 'phc-lc-th-thumb.jpg', 'phc-lc-th.JPG', '', '<p>Cung cấp gỗ thủy tùng theo các qui cách khác nhau để quý khách hàng có thể tiện các tượng Thần, Phật cung tiến Đền, Chùa</p>', '', '<p>Cung cấp gỗ thủy tùng theo các qui cách khác nhau để quý khách hàng có thể tiện các tượng Thần, Phật cung tiến Đền, Chùa</p>\n<p><img style="margin-left:auto;margin-right:auto;" src="/public/userfiles/image/gothuytung/image/DSC03480.JPG" alt="" width="518" height="291" /></p>\n<p> </p>\n<p><img style="margin-left:auto;margin-right:auto;" src="/public/userfiles/image/gothuytung/image/DSC03479.JPG" alt="" width="518" height="291" /></p>', '', 'phuoc-loc-tho', '', 'PHƯỚC - LỘC - THỌ', '', 0, 6, '', 0, 0, '', '', '', '', 1, 68),
(153, 'PHẬT DI LẶC', '', '2012-04-28 10:03:17', 'pht-di-lc-thumb.jpg', 'pht-di-lc.JPG', '', '<p>Cung cấp gỗ thủy tùng theo các qui cách khác nhau để quý khách hàng có thể tiện các tượng Thần, Phật cung tiến Đền, Chùa</p>', '', '<p>Cung cấp gỗ <span style="color:#993300;"><strong>THỦY TÙNG</strong></span> theo các qui cách khác nhau để quý khách hàng có thể tiện các tượng Thần, Phật cung tiến Đền, Chùa</p>\n<p style="text-align:center;"><img src="/public/userfiles/image/gothuytung/image/DSC03477.JPG" alt="" width="500" height="281" /></p>', '', 'phat-di-lac', '', 'PHẬT DI LẶC', '', 0, 2, '', 0, 0, '', '', '', '', 1, 68),
(154, 'LỤC BÌNH', '', '2012-04-28 10:08:31', 'lc-bnh-thumb.jpg', 'lc-bnh.jpg', '', '<p>Lục Bình gỗ <span style="color:#800000;"><strong>THỦY TÙNG</strong></span></p>', '', '<p>Các loại Lục Bình gỗ <span style="color:#800000;"><strong>THỦY TÙNG</strong></span>:Gỗ có vân đẹp, có đủ loại kích thước, chúng tôi nhận làm theo yêu cầu của khách hàng.</p>\n<p style="text-align:center;"><img src="/public/userfiles/image/gothuytung/image/DSC02920.JPG" alt="" width="500" height="375" /></p>', '', 'luc-binh', '', '', '', 0, 3, '', 0, 0, '', '', '', '', 1, 69),
(155, 'BÀN GHẾ', '', '2012-04-28 10:13:13', 'bn-gh-thumb.jpg', 'bn-gh.JPG', '', '<p>Bàn ghế <span style="color:#993300;"><strong>THỦY TÙNG</strong></span></p>', '', '<p>Bộ bàn ghế: Minh Quốc đầy đủ 10 món, không chắp vá, vân chuối đẹp, duy nhất tại Đắc Lắc</p>\n<p><img style="margin-left:auto;margin-right:auto;" src="/public/userfiles/image/gothuytung/image/Ban%203.JPG" alt="" width="518" height="389" /></p>\n<p> </p>\n<p><img style="margin-left:auto;margin-right:auto;" src="/public/userfiles/image/gothuytung/image/Ban%204.JPG" alt="" width="518" height="389" /></p>\n<p> </p>\n<p><img src="/public/userfiles/image/gothuytung/image/Ban%207.JPG" alt="" width="518" height="389" /></p>', '', 'ban-ghe', '', '', '', 0, 1, '', 0, 0, '', '', '', '', 1, 71),
(156, 'VẬT DỤNG TRANG TRÍ', '', '2012-04-28 10:18:47', 'vt-dng-trang-tr-thumb.jpg', 'vt-dng-trang-tr.JPG', '', '<p>THỦY TÙNG - Vật trang trí phong thủy</p>', '', '<p style="text-align:justify;">Gỗ THỦY TÙNG có hương thơm quý phái, không mọt, xua đuổi được côn trùng, muỗi kiến, bọ cọp, không cong vênh, thớ gỗ mịn, có mùi thơm. và trường tồn với thời gian.</p>\n<p style="text-align:justify;"><img src="/public/userfiles/image/gothuytung/image/DSC03515.JPG" alt="" width="500" height="281" /></p>\n<p style="text-align:justify;">Đặc biệt, Gỗ THỦY TÙNG mang lại may mắn, tài lộc, tiền bạc cho người làm ăn kinh doanh.</p>', '', 'vat-dung-trang-tri', '', '', '', 0, 5, '', 0, 0, '', '', '', '', 1, 70),
(157, 'GHẾ GỖ THỦY TÙNG', '', '2012-04-28 10:23:36', 'gh-g-thy-tng-thumb.jpg', 'gh-g-thy-tng.JPG', '', '<p>Bộ Ghế <span style="color:#993300;"><strong>THỦY TÙNG</strong></span> không chắp vá, vân chuối đẹp</p>', '', '<p>Bộ Ghế THỦY TÙNG không chắp vá, vân chuối đẹp</p>\n<p><img src="/public/userfiles/image/gothuytung/image/DSC03505.JPG" alt="" width="500" height="281" /></p>', '', 'ghe-go-thuy-tung', '', 'GHẾ GỖ THỦY TÙNG', '', 0, 7, '', 0, 0, '', '', '', '', 1, 71),
(284, 'Fine-gauge V-neck', '', '2012-04-25 07:44:46', 'fine-gauge-v-neck-thumb.jpg', 'fine-gauge-v-neck.jpg', '', 'Fine-gauge V-neck', '', 'Fine-gauge V-neck', '', 'fine-gauge-v-neck', '', 'Fine-gauge V-neck', '', 0, 1, '', 1, 0, '', '', '', '', 1, 102),
(285, 'Cowl neck knit top', '', '2012-04-25 07:45:27', 'cowl-neck-knit-top-thumb.jpg', 'cowl-neck-knit-top.jpg', '', 'Cowl neck knit top', '', 'Cowl neck knit top', '', 'cowl-neck-knit-top', '', 'Cowl neck knit top', '', 0, 2, '', 1, 0, '', '', '', '', 1, 102),
(286, 'Dolman sleeve knit top', '', '2012-04-25 07:46:15', 'dolman-sleeve-knit-top-thumb.jpg', 'dolman-sleeve-knit-top.jpg', '', 'Dolman sleeve knit top', '', 'Dolman sleeve knit top', '', 'dolman-sleeve-knit-top', '', 'Dolman sleeve knit top', '', 0, 3, '', 1, 0, '', '', '', '', 1, 102),
(287, 'Empire waist knit top', '', '2012-04-25 07:46:42', 'empire-waist-knit-top-thumb.jpg', 'empire-waist-knit-top.jpg', '', 'Empire waist knit top', '', 'Empire waist knit top', '', 'empire-waist-knit-top', '', 'Empire waist knit top', '', 0, 4, '', 1, 0, '', '', '', '', 1, 102),
(288, 'Ribbon-trim Top', '', '2012-04-25 07:48:43', 'ribbon-trim-top-thumb.jpg', 'ribbon-trim-top.jpg', '', 'Ribbon-trim Top', '', 'Ribbon-trim Top', '', 'ribbon-trim-top', '', 'Ribbon-trim Top', '', 0, 5, '', 1, 0, '', '', '', '', 1, 102),
(289, 'Striped ruffled pintck', '', '2012-04-25 07:49:01', 'striped-ruffled-pintck-thumb.jpg', 'striped-ruffled-pintck.jpg', '', 'Striped ruffled pintck', '', 'Striped ruffled pintck', '', 'striped-ruffled-pintck', '', 'Striped ruffled pintck', '', 0, 6, '', 1, 0, '', '', '', '', 1, 102),
(290, 'Elegant cowl neck', '', '2012-04-25 07:49:22', 'elegant-cowl-neck-thumb.jpg', 'elegant-cowl-neck.jpg', '', 'Elegant cowl neck', '', 'Elegant cowl neck', '', 'elegant-cowl-neck', '', 'Elegant cowl neck', '', 0, 7, '', 1, 0, '', '', '', '', 1, 102),
(291, 'Appliqued bib-front', '', '2012-04-25 07:49:42', 'appliqued-bib-front-thumb.jpg', 'appliqued-bib-front.jpg', '', 'Appliqued bib-front', '', 'Appliqued bib-front', '', 'appliqued-bib-front', '', 'Appliqued bib-front', '', 0, 8, '', 1, 0, '', '', '', '', 1, 102),
(292, 'Cutout knit top', '', '2012-04-25 07:50:03', 'cutout-knit-top-thumb.jpg', 'cutout-knit-top.jpg', '', 'Cutout knit top', '', 'Cutout knit top', '', 'cutout-knit-top', '', 'Cutout knit top', '', 0, 9, '', 1, 0, '', '', '', '', 1, 102),
(293, 'Tulip Pocket Skirt Mini', '', '2012-04-25 07:50:25', 'tulip-pocket-skirt-mini-thumb.jpg', 'tulip-pocket-skirt-mini.jpg', '', 'Tulip Pocket Skirt Mini', '', 'Tulip Pocket Skirt Mini', '', 'tulip-pocket-skirt-mini', '', 'Tulip Pocket Skirt Mini', '', 0, 10, '', 1, 0, '', '', '', '', 1, 102),
(294, 'Leather-look tunic', '', '2012-04-25 07:51:04', 'leather-look-tunic-thumb.jpg', 'leather-look-tunic.jpg', '', 'Leather-look tunic', '', 'Leather-look tunic', '', 'leather-look-tunic', '', 'Leather-look tunic', '', 0, 11, '', 1, 0, '', '', '', '', 1, 102),
(295, 'Basic stretch cami', '', '2012-04-25 07:51:41', 'basic-stretch-cami-thumb.jpg', 'basic-stretch-cami.jpg', '', 'Basic stretch cami', '', 'Basic stretch cami', '', 'basic-stretch-cami', '', 'Basic stretch cami', '', 0, 12, '', 1, 0, '', '', '', '', 1, 102),
(296, 'edallion graphic ribbed', '', '2012-04-25 07:52:00', 'edallion-graphic-ribbed-thumb.jpg', 'edallion-graphic-ribbed.jpg', '', 'edallion graphic ribbed', '', 'edallion graphic ribbed', '', 'edallion-graphic-ribbed', '', 'edallion graphic ribbed', '', 0, 13, '', 1, 0, '', '', '', '', 1, 102),
(297, 'Snakeskin Tube Dress', '', '2012-04-25 07:52:30', 'snakeskin-tube-dress-thumb.jpg', 'snakeskin-tube-dress.jpg', '', 'Snakeskin Tube Dress', '', 'Snakeskin Tube Dress', '', 'snakeskin-tube-dress', '', 'Snakeskin Tube Dress', '', 0, 14, '', 1, 0, '', '', '', '', 1, 102),
(298, 'Vanessa Ruffle Pipe', '', '2012-04-25 07:52:47', 'vanessa-ruffle-pipe-thumb.jpg', 'vanessa-ruffle-pipe.jpg', '', 'Vanessa Ruffle Pipe', '', 'Vanessa Ruffle Pipe', '', 'vanessa-ruffle-pipe', '', 'Vanessa Ruffle Pipe', '', 0, 15, '', 1, 0, '', '', '', '', 1, 102),
(299, 'Lurex Stripe Print Tunic', '', '2012-04-25 07:53:19', 'lurex-stripe-print-tunic-thumb.jpg', 'lurex-stripe-print-tunic.jpg', '', 'Lurex Stripe Print Tunic', '', 'Lurex Stripe Print Tunic', '', 'lurex-stripe-print-tunic', '', 'Lurex Stripe Print Tunic', '', 0, 16, '', 1, 0, '', '', '', '', 1, 102),
(300, 'Áo sơ mi nam Bigamex nền trắng sọc nhuyễn tay dài', '', '2012-04-25 08:18:40', 'o-so-mi-nam-bigamex-nen-trang-soc-nhuyen-tay-dai-thumb.jpeg', 'o-so-mi-nam-bigamex-nen-trang-soc-nhuyen-tay-dai.jpeg', '', 'Áo sơ mi nam Bigamex nền trắng sọc nhuyễn tay dài', '', 'Áo sơ mi nam Bigamex nền trắng sọc nhuyễn tay dài', '', 'ao-so-mi-nam-bigamex-nen-trang-soc-nhuyen-tay-dai', '', 'Áo sơ mi nam Bigamex nền trắng sọc nhuyễn tay dài', '', 0, 17, '', 0, 0, '', '', '', '', 1, 97),
(301, 'Áo sơ mi nam Bigamex nền trắng sọc xanh xám tay dài', '', '2012-04-25 08:18:59', 'o-so-mi-nam-bigamex-nen-trang-soc-xanh-xam-tay-dai-thumb.jpeg', 'o-so-mi-nam-bigamex-nen-trang-soc-xanh-xam-tay-dai.jpeg', '', 'Áo sơ mi nam Bigamex nền trắng sọc xanh xám tay dài', '', 'Áo sơ mi nam Bigamex nền trắng sọc xanh xám tay dài', '', 'ao-so-mi-nam-bigamex-nen-trang-soc-xanh-xam-tay-dai', '', 'Áo sơ mi nam Bigamex nền trắng sọc xanh xám tay dài', '', 0, 18, '', 0, 0, '', '', '', '', 1, 97),
(302, 'Áo sơ mi nam dài tay Gendai nền hồng sọc trắng', '', '2012-04-25 08:19:16', 'o-so-mi-nam-dai-tay-gendai-nen-hong-soc-trang-thumb.jpeg', 'o-so-mi-nam-dai-tay-gendai-nen-hong-soc-trang.jpeg', '', 'Áo sơ mi nam dài tay Gendai nền hồng sọc trắng', '', 'Áo sơ mi nam dài tay Gendai nền hồng sọc trắng', '', 'ao-so-mi-nam-dai-tay-gendai-nen-hong-soc-trang', '', 'Áo sơ mi nam dài tay Gendai nền hồng sọc trắng', '', 0, 32, '', 0, 0, '', '', '', '', 1, 97),
(303, 'Áo sơ mi nam dài tay Gendai nền tím sọc trắng', '', '2012-04-25 08:20:20', 'o-so-mi-nam-dai-tay-gendai-nen-tim-soc-trang-thumb.jpeg', 'o-so-mi-nam-dai-tay-gendai-nen-tim-soc-trang.jpeg', '', 'Áo sơ mi nam dài tay Gendai nền tím sọc trắng', '', 'Áo sơ mi nam dài tay Gendai nền tím sọc trắng', '', 'ao-so-mi-nam-dai-tay-gendai-nen-tim-soc-trang', '', 'Áo sơ mi nam dài tay Gendai nền tím sọc trắng', '', 0, 31, '', 0, 0, '', '', '', '', 1, 97),
(304, 'Áo sơ mi nam dài tay Gendai nền xám sọc nâu', '', '2012-04-25 08:21:21', 'o-so-mi-nam-dai-tay-gendai-nen-xam-soc-nau-thumb.jpeg', 'o-so-mi-nam-dai-tay-gendai-nen-xam-soc-nau.jpeg', '', 'Áo sơ mi nam dài tay Gendai nền xám sọc nâu', '', 'Áo sơ mi nam dài tay Gendai nền xám sọc nâu', '', 'ao-so-mi-nam-dai-tay-gendai-nen-xam-soc-nau', '', 'Áo sơ mi nam dài tay Gendai nền xám sọc nâu', '', 0, 30, '', 0, 0, '', '', '', '', 1, 97),
(305, 'Áo sơ mi nam dài tay Gendai nền xanh đen sọc trắng', '', '2012-04-25 08:21:40', 'o-so-mi-nam-dai-tay-gendai-nen-xanh-den-soc-trang-thumb.jpeg', 'o-so-mi-nam-dai-tay-gendai-nen-xanh-den-soc-trang.jpeg', '', 'Áo sơ mi nam dài tay Gendai nền xanh đen sọc trắng', '', 'Áo sơ mi nam dài tay Gendai nền xanh đen sọc trắng', '', 'ao-so-mi-nam-dai-tay-gendai-nen-xanh-den-soc-trang', '', 'Áo sơ mi nam dài tay Gendai nền xanh đen sọc trắng', '', 0, 29, '', 0, 0, '', '', '', '', 1, 97),
(306, 'Áo sơ mi nam dài tay Gendai nền xanh lơ sọc trắng', '', '2012-04-25 08:22:01', 'o-so-mi-nam-dai-tay-gendai-nen-xanh-lo-soc-trang-thumb.jpeg', 'o-so-mi-nam-dai-tay-gendai-nen-xanh-lo-soc-trang.jpeg', '', 'Áo sơ mi nam dài tay Gendai nền xanh lơ sọc trắng', '', 'Áo sơ mi nam dài tay Gendai nền xanh lơ sọc trắng', '', 'ao-so-mi-nam-dai-tay-gendai-nen-xanh-lo-soc-trang', '', 'Áo sơ mi nam dài tay Gendai nền xanh lơ sọc trắng', '', 0, 28, '', 0, 0, '', '', '', '', 1, 97),
(307, 'Áo sơ mi nam dài tay Gendai nền xanh nhạt sọc trắng', '', '2012-04-25 08:22:23', 'o-so-mi-nam-dai-tay-gendai-nen-xanh-nhat-soc-trang-thumb.jpeg', 'o-so-mi-nam-dai-tay-gendai-nen-xanh-nhat-soc-trang.jpeg', '', 'Áo sơ mi nam dài tay Gendai nền xanh nhạt sọc trắng', '', 'Áo sơ mi nam dài tay Gendai nền xanh nhạt sọc trắng', '', 'ao-so-mi-nam-dai-tay-gendai-nen-xanh-nhat-soc-trang', '', 'Áo sơ mi nam dài tay Gendai nền xanh nhạt sọc trắng', '', 0, 27, '', 0, 0, '', '', '', '', 1, 97),
(308, 'Áo sơ mi nam Gendai caro đỏ đen tay ngắn', '', '2012-04-25 08:23:08', 'o-so-mi-nam-gendai-caro-do-den-tay-ngan-thumb.jpeg', 'o-so-mi-nam-gendai-caro-do-den-tay-ngan.jpeg', '', 'Áo sơ mi nam Gendai caro đỏ đen tay ngắn', '', 'Áo sơ mi nam Gendai caro đỏ đen tay ngắn', '', 'ao-so-mi-nam-gendai-caro-do-den-tay-ngan', '', 'Áo sơ mi nam Gendai caro đỏ đen tay ngắn', '', 0, 26, '', 0, 0, '', '', '', '', 1, 97),
(309, 'Áo sơ mi nam Gendai caro trắng xanh tay ngắn', '', '2012-04-25 08:23:30', 'o-so-mi-nam-gendai-caro-trang-xanh-tay-ngan-thumb.jpeg', 'o-so-mi-nam-gendai-caro-trang-xanh-tay-ngan.jpeg', '', 'Áo sơ mi nam Gendai caro trắng xanh tay ngắn', '', 'Áo sơ mi nam Gendai caro trắng xanh tay ngắn', '', 'ao-so-mi-nam-gendai-caro-trang-xanh-tay-ngan', '', 'Áo sơ mi nam Gendai caro trắng xanh tay ngắn', '', 0, 26, '', 0, 0, '', '', '', '', 1, 97),
(310, 'Áo sơ mi nam Gendai caro xanh tay ngắn', '', '2012-04-25 08:23:59', 'o-so-mi-nam-gendai-caro-xanh-tay-ngan-thumb.jpeg', 'o-so-mi-nam-gendai-caro-xanh-tay-ngan.jpeg', '', 'Áo sơ mi nam Gendai caro xanh tay ngắn', '', 'Áo sơ mi nam Gendai caro xanh tay ngắn', '', 'ao-so-mi-nam-gendai-caro-xanh-tay-ngan', '', 'Áo sơ mi nam Gendai caro xanh tay ngắn', '', 0, 24, '', 0, 0, '', '', '', '', 1, 97),
(311, 'Áo sơ mi nam Gendai hai sọc trắng tím nhạt', '', '2012-04-25 08:24:16', 'o-so-mi-nam-gendai-hai-soc-trang-tim-nhat-thumb.jpeg', 'o-so-mi-nam-gendai-hai-soc-trang-tim-nhat.jpeg', '', 'Áo sơ mi nam Gendai hai sọc trắng tím nhạt', '', 'Áo sơ mi nam Gendai hai sọc trắng tím nhạt', '', 'ao-so-mi-nam-gendai-hai-soc-trang-tim-nhat', '', 'Áo sơ mi nam Gendai hai sọc trắng tím nhạt', '', 0, 23, '', 0, 0, '', '', '', '', 1, 97),
(312, 'Áo sơ mi nam Gendai màu cam sọc ca rô trắng', '', '2012-04-25 08:24:38', 'o-so-mi-nam-gendai-mau-cam-soc-ca-ro-trang-thumb.jpeg', 'o-so-mi-nam-gendai-mau-cam-soc-ca-ro-trang.jpeg', '', 'Áo sơ mi nam Gendai màu cam sọc ca rô trắng', '', 'Áo sơ mi nam Gendai màu cam sọc ca rô trắng', '', 'ao-so-mi-nam-gendai-mau-cam-soc-ca-ro-trang', '', 'Áo sơ mi nam Gendai màu cam sọc ca rô trắng', '', 0, 22, '', 0, 0, '', '', '', '', 1, 97),
(313, 'Áo sơ mi nam Gendai màu đen hoa văn tay ngắn', '', '2012-04-25 08:25:35', 'o-so-mi-nam-gendai-mau-den-hoa-van-tay-ngan-thumb.jpeg', 'o-so-mi-nam-gendai-mau-den-hoa-van-tay-ngan.jpeg', '', 'Áo sơ mi nam Gendai màu đen hoa văn tay ngắn', '', 'Áo sơ mi nam Gendai màu đen hoa văn tay ngắn', '', 'ao-so-mi-nam-gendai-mau-den-hoa-van-tay-ngan', '', 'Áo sơ mi nam Gendai màu đen hoa văn tay ngắn', '', 0, 21, '', 0, 0, '', '', '', '', 1, 97),
(314, 'Áo sơ mi nam Gendai màu đen hoa văn trắng tay ngắn', '', '2012-04-25 08:26:39', 'o-so-mi-nam-gendai-mau-den-hoa-van-trang-tay-ngan-thumb.jpeg', 'o-so-mi-nam-gendai-mau-den-hoa-van-trang-tay-ngan.jpeg', '', 'Áo sơ mi nam Gendai màu đen hoa văn trắng tay ngắn', '', 'Áo sơ mi nam Gendai màu đen hoa văn trắng tay ngắn', '', 'ao-so-mi-nam-gendai-mau-den-hoa-van-trang-tay-ngan', '', 'Áo sơ mi nam Gendai màu đen hoa văn trắng tay ngắn', '', 0, 20, '', 0, 0, '', '', '', '', 1, 97),
(315, 'Áo sơ mi nam Gendai màu đen in hoa văn trắng tay ...', '', '2012-04-25 08:26:56', 'o-so-mi-nam-gendai-mau-den-in-hoa-van-trang-tay-----thumb.jpeg', 'o-so-mi-nam-gendai-mau-den-in-hoa-van-trang-tay----.jpeg', '', 'Áo sơ mi nam Gendai màu đen in hoa văn trắng tay ...', '', 'Áo sơ mi nam Gendai màu đen in hoa văn trắng tay ...', '', 'ao-so-mi-nam-gendai-mau-den-in-hoa-van-trang-tay-', '', 'Áo sơ mi nam Gendai màu đen in hoa văn trắng tay ...', '', 0, 19, '', 0, 0, '', '', '', '', 1, 97),
(316, 'Áo thun nam Gendai màu hồng ngắn tay kiểu có cổ', '', '2012-04-25 08:32:30', 'o-thun-nam-gendai-mau-hong-ngan-tay-kieu-co-co-thumb.jpeg', 'o-thun-nam-gendai-mau-hong-ngan-tay-kieu-co-co.jpeg', '', 'Áo thun nam Gendai màu hồng ngắn tay kiểu có cổ', '', 'Áo thun nam Gendai màu hồng ngắn tay kiểu có cổ', '', 'ao-thun-nam-gendai-mau-hong-ngan-tay-kieu-co-co', '', 'Áo thun nam Gendai màu hồng ngắn tay kiểu có cổ', '', 0, 33, '', 0, 0, '', '', '', '', 1, 98),
(317, 'Áo thun nam Gendai màu trắng ngắn tay cổ phối', '', '2012-04-25 08:32:53', 'o-thun-nam-gendai-mau-trang-ngan-tay-co-phoi-thumb.jpeg', 'o-thun-nam-gendai-mau-trang-ngan-tay-co-phoi.jpeg', '', 'Áo thun nam Gendai màu trắng ngắn tay cổ phối', '', 'Áo thun nam Gendai màu trắng ngắn tay cổ phối', '', 'ao-thun-nam-gendai-mau-trang-ngan-tay-co-phoi', '', 'Áo thun nam Gendai màu trắng ngắn tay cổ phối', '', 0, 34, '', 0, 0, '', '', '', '', 1, 98),
(318, 'Áo thun nam Gendai màu trắng ngắn tay kiểu có cổ', '', '2012-04-25 08:33:12', 'o-thun-nam-gendai-mau-trang-ngan-tay-kieu-co-co-thumb.jpeg', 'o-thun-nam-gendai-mau-trang-ngan-tay-kieu-co-co.jpeg', '', 'Áo thun nam Gendai màu trắng ngắn tay kiểu có cổ', '', 'Áo thun nam Gendai màu trắng ngắn tay kiểu có cổ', '', 'ao-thun-nam-gendai-mau-trang-ngan-tay-kieu-co-co', '', 'Áo thun nam Gendai màu trắng ngắn tay kiểu có cổ', '', 0, 35, '', 0, 0, '', '', '', '', 1, 98),
(319, 'Áo thun nam Gendai màu xám ngắn tay kiểu có cổ', '', '2012-04-25 08:33:33', 'o-thun-nam-gendai-mau-xam-ngan-tay-kieu-co-co-thumb.jpeg', 'o-thun-nam-gendai-mau-xam-ngan-tay-kieu-co-co.jpeg', '', 'Áo thun nam Gendai màu xám ngắn tay kiểu có cổ', '', 'Áo thun nam Gendai màu xám ngắn tay kiểu có cổ', '', 'ao-thun-nam-gendai-mau-xam-ngan-tay-kieu-co-co', '', 'Áo thun nam Gendai màu xám ngắn tay kiểu có cổ', '', 0, 36, '', 0, 0, '', '', '', '', 1, 98),
(320, 'Áo thun nam Gendai màu xám phối trắng đỏ', '', '2012-04-25 08:34:13', 'o-thun-nam-gendai-mau-xam-phoi-trang-do-thumb.jpeg', 'o-thun-nam-gendai-mau-xam-phoi-trang-do.jpeg', '', 'Áo thun nam Gendai màu xám phối trắng đỏ', '', 'Áo thun nam Gendai màu xám phối trắng đỏ', '', 'ao-thun-nam-gendai-mau-xam-phoi-trang-do', '', 'Áo thun nam Gendai màu xám phối trắng đỏ', '', 0, 37, '', 0, 0, '', '', '', '', 1, 98),
(321, 'Áo thun nam Gendai màu xanh đen phối trắng đỏ', '', '2012-04-25 08:35:55', 'o-thun-nam-gendai-mau-xanh-den-phoi-trang-do-thumb.jpeg', 'o-thun-nam-gendai-mau-xanh-den-phoi-trang-do.jpeg', '', 'Áo thun nam Gendai màu xanh đen phối trắng đỏ', '', 'Áo thun nam Gendai màu xanh đen phối trắng đỏ', '', 'ao-thun-nam-gendai-mau-xanh-den-phoi-trang-do', '', 'Áo thun nam Gendai màu xanh đen phối trắng đỏ', '', 0, 38, '', 0, 0, '', '', '', '', 1, 98),
(322, 'Áo thun nam Gendai màu xanh dương đậm ngắn tay cổ ...', '', '2012-04-25 08:36:50', 'o-thun-nam-gendai-mau-xanh-duong-dam-ngan-tay-co-----thumb.jpeg', 'o-thun-nam-gendai-mau-xanh-duong-dam-ngan-tay-co----.jpeg', '', 'Áo thun nam Gendai màu xanh dương đậm ngắn tay cổ ...', '', 'Áo thun nam Gendai màu xanh dương đậm ngắn tay cổ ...', '', 'ao-thun-nam-gendai-mau-xanh-duong-dam-ngan-tay-co-', '', 'Áo thun nam Gendai màu xanh dương đậm ngắn tay cổ ...', '', 0, 39, '', 0, 0, '', '', '', '', 1, 98),
(323, 'Áo thun nam Gendai màu xanh dương ngắn tay cổ phối', '', '2012-04-25 08:37:26', 'o-thun-nam-gendai-mau-xanh-duong-ngan-tay-co-phoi-thumb.jpeg', 'o-thun-nam-gendai-mau-xanh-duong-ngan-tay-co-phoi.jpeg', '', 'Áo thun nam Gendai màu xanh dương ngắn tay cổ phối', '', 'Áo thun nam Gendai màu xanh dương ngắn tay cổ phối', '', 'ao-thun-nam-gendai-mau-xanh-duong-ngan-tay-co-phoi', '', 'Áo thun nam Gendai màu xanh dương ngắn tay cổ phối', '', 0, 40, '', 0, 0, '', '', '', '', 1, 98),
(324, 'Áo thun nam Gendai màu xanh dương phối trắng đỏ', '', '2012-04-25 08:37:43', 'o-thun-nam-gendai-mau-xanh-duong-phoi-trang-do-thumb.jpeg', 'o-thun-nam-gendai-mau-xanh-duong-phoi-trang-do.jpeg', '', 'Áo thun nam Gendai màu xanh dương phối trắng đỏ', '', 'Áo thun nam Gendai màu xanh dương phối trắng đỏ', '', 'ao-thun-nam-gendai-mau-xanh-duong-phoi-trang-do', '', 'Áo thun nam Gendai màu xanh dương phối trắng đỏ', '', 0, 41, '', 0, 0, '', '', '', '', 1, 98),
(325, 'Áo thun nam Gendai màu xanh ngắn tay cổ phối', '', '2012-04-25 08:38:02', 'o-thun-nam-gendai-mau-xanh-ngan-tay-co-phoi-thumb.jpeg', 'o-thun-nam-gendai-mau-xanh-ngan-tay-co-phoi.jpeg', '', 'Áo thun nam Gendai màu xanh ngắn tay cổ phối', '', 'Áo thun nam Gendai màu xanh ngắn tay cổ phối', '', 'ao-thun-nam-gendai-mau-xanh-ngan-tay-co-phoi', '', 'Áo thun nam Gendai màu xanh ngắn tay cổ phối', '', 0, 42, '', 0, 0, '', '', '', '', 1, 98),
(326, 'Áo thun nam Gendai màu đen cổ khóa dài tay', '', '2012-04-25 08:38:19', 'o-thun-nam-gendai-mau-den-co-khoa-dai-tay-thumb.jpeg', 'o-thun-nam-gendai-mau-den-co-khoa-dai-tay.jpeg', '', 'Áo thun nam Gendai màu đen cổ khóa dài tay', '', 'Áo thun nam Gendai màu đen cổ khóa dài tay', '', 'ao-thun-nam-gendai-mau-den-co-khoa-dai-tay', '', 'Áo thun nam Gendai màu đen cổ khóa dài tay', '', 0, 43, '', 0, 0, '', '', '', '', 1, 98),
(327, 'Áo thun nam Gendai màu xanh đen kiểu polo cổ phối', '', '2012-04-25 08:41:08', 'o-thun-nam-gendai-mau-xanh-den-kieu-polo-co-phoi-thumb.jpeg', 'o-thun-nam-gendai-mau-xanh-den-kieu-polo-co-phoi.jpeg', '', 'Áo thun nam Gendai màu xanh đen kiểu polo cổ phối', '', 'Áo thun nam Gendai màu xanh đen kiểu polo cổ phối', '', 'ao-thun-nam-gendai-mau-xanh-den-kieu-polo-co-phoi', '', 'Áo thun nam Gendai màu xanh đen kiểu polo cổ phối', '', 0, 44, '', 0, 0, '', '', '', '', 1, 98),
(328, 'Áo khoác nam Gendai màu xanh đậm phối xanh dương ...', '', '2012-04-25 08:44:09', 'o-khoac-nam-gendai-mau-xanh-dam-phoi-xanh-duong-----thumb.jpeg', 'o-khoac-nam-gendai-mau-xanh-dam-phoi-xanh-duong----.jpeg', '', 'Áo khoác nam Gendai màu xanh đậm phối xanh dương ...', '', 'Áo khoác nam Gendai màu xanh đậm phối xanh dương ...', '', 'ao-khoac-nam-gendai-mau-xanh-dam-phoi-xanh-duong-', '', 'Áo khoác nam Gendai màu xanh đậm phối xanh dương ...', '', 0, 45, '', 0, 0, '', '', '', '', 1, 99),
(329, 'Áo khoác nam Gendai màu xanh đậm phối xanh nhạt', '', '2012-04-25 08:44:23', 'o-khoac-nam-gendai-mau-xanh-dam-phoi-xanh-nhat-thumb.jpeg', 'o-khoac-nam-gendai-mau-xanh-dam-phoi-xanh-nhat.jpeg', '', 'Áo khoác nam Gendai màu xanh đậm phối xanh nhạt', '', 'Áo khoác nam Gendai màu xanh đậm phối xanh nhạt', '', 'ao-khoac-nam-gendai-mau-xanh-dam-phoi-xanh-nhat', '', 'Áo khoác nam Gendai màu xanh đậm phối xanh nhạt', '', 0, 46, '', 0, 0, '', '', '', '', 1, 99),
(330, 'Áo khoác nam Gendai màu xanh đen kiểu thể thao có ...', '', '2012-04-25 08:44:46', 'o-khoac-nam-gendai-mau-xanh-den-kieu-the-thao-co-----thumb.jpeg', 'o-khoac-nam-gendai-mau-xanh-den-kieu-the-thao-co----.jpeg', '', 'Áo khoác nam Gendai màu xanh đen kiểu thể thao có ...', '', 'Áo khoác nam Gendai màu xanh đen kiểu thể thao có ...', '', 'ao-khoac-nam-gendai-mau-xanh-den-kieu-the-thao-co-', '', 'Áo khoác nam Gendai màu xanh đen kiểu thể thao có ...', '', 0, 47, '', 0, 0, '', '', '', '', 1, 99),
(331, 'Áo khoác nam Gendai màu xanh đen viền đỏ có nón ...', '', '2012-04-25 08:45:17', 'o-khoac-nam-gendai-mau-xanh-den-vien-do-co-non-----thumb.jpeg', 'o-khoac-nam-gendai-mau-xanh-den-vien-do-co-non----.jpeg', '', 'Áo khoác nam Gendai màu xanh đen viền đỏ có nón ...', '', 'Áo khoác nam Gendai màu xanh đen viền đỏ có nón ...', '', 'ao-khoac-nam-gendai-mau-xanh-den-vien-do-co-non-', '', 'Áo khoác nam Gendai màu xanh đen viền đỏ có nón ...', '', 0, 48, '', 0, 0, '', '', '', '', 1, 99),
(332, 'Áo khoác nam Gendai màu xanh kiểu thể thao có nón', '', '2012-04-25 08:45:37', 'o-khoac-nam-gendai-mau-xanh-kieu-the-thao-co-non-thumb.jpeg', 'o-khoac-nam-gendai-mau-xanh-kieu-the-thao-co-non.jpeg', '', 'Áo khoác nam Gendai màu xanh kiểu thể thao có nón', '', 'Áo khoác nam Gendai màu xanh kiểu thể thao có nón', '', 'ao-khoac-nam-gendai-mau-xanh-kieu-the-thao-co-non', '', 'Áo khoác nam Gendai màu xanh kiểu thể thao có nón', '', 0, 49, '', 0, 0, '', '', '', '', 1, 99),
(333, 'Áo khoác nam Gendai màu xanh phối đỏ cổ đen', '', '2012-04-25 08:46:02', 'o-khoac-nam-gendai-mau-xanh-phoi-do-co-den-thumb.jpeg', 'o-khoac-nam-gendai-mau-xanh-phoi-do-co-den.jpeg', '', 'Áo khoác nam Gendai màu xanh phối đỏ cổ đen', '', 'Áo khoác nam Gendai màu xanh phối đỏ cổ đen', '', 'ao-khoac-nam-gendai-mau-xanh-phoi-do-co-den', '', 'Áo khoác nam Gendai màu xanh phối đỏ cổ đen', '', 0, 50, '', 0, 0, '', '', '', '', 1, 99),
(334, 'Áo khoác nam Gendai màu xanh viền đỏ có nón T426', '', '2012-04-25 08:46:21', 'o-khoac-nam-gendai-mau-xanh-vien-do-co-non-t426-thumb.jpeg', 'o-khoac-nam-gendai-mau-xanh-vien-do-co-non-t426.jpeg', '', 'Áo khoác nam Gendai màu xanh viền đỏ có nón T426', '', 'Áo khoác nam Gendai màu xanh viền đỏ có nón T426', '', 'ao-khoac-nam-gendai-mau-xanh-vien-do-co-non-t426', '', 'Áo khoác nam Gendai màu xanh viền đỏ có nón T426', '', 0, 51, '', 0, 0, '', '', '', '', 1, 99),
(335, 'Áo khoác nam Gendai màu xanh viền đỏ có nón T579', '', '2012-04-25 08:46:40', 'o-khoac-nam-gendai-mau-xanh-vien-do-co-non-t579-thumb.jpeg', 'o-khoac-nam-gendai-mau-xanh-vien-do-co-non-t579.jpeg', '', 'Áo khoác nam Gendai màu xanh viền đỏ có nón T579', '', 'Áo khoác nam Gendai màu xanh viền đỏ có nón T579', '', 'ao-khoac-nam-gendai-mau-xanh-vien-do-co-non-t579', '', 'Áo khoác nam Gendai màu xanh viền đỏ có nón T579', '', 0, 52, '', 0, 0, '', '', '', '', 1, 99),
(336, 'Áo sơ mi nữ Gendai màu trắng tay ngắn', '', '2012-04-25 08:50:34', 'o-so-mi-nu-gendai-mau-trang-tay-ngan-thumb.jpeg', 'o-so-mi-nu-gendai-mau-trang-tay-ngan.jpeg', '', 'Áo sơ mi nữ Gendai màu trắng tay ngắn', '', 'Áo sơ mi nữ Gendai màu trắng tay ngắn', '', 'ao-so-mi-nu-gendai-mau-trang-tay-ngan', '', 'Áo sơ mi nữ Gendai màu trắng tay ngắn', '', 0, 53, '', 0, 0, '', '', '', '', 1, 100),
(337, 'Áo sơ mi nữ Gendai màu vàng ngắn tay', '', '2012-04-25 08:50:57', 'o-so-mi-nu-gendai-mau-vang-ngan-tay-thumb.jpeg', 'o-so-mi-nu-gendai-mau-vang-ngan-tay.jpeg', '', 'Áo sơ mi nữ Gendai màu vàng ngắn tay', '', 'Áo sơ mi nữ Gendai màu vàng ngắn tay', '', 'ao-so-mi-nu-gendai-mau-vang-ngan-tay', '', 'Áo sơ mi nữ Gendai màu vàng ngắn tay', '', 0, 54, '', 0, 0, '', '', '', '', 1, 100),
(338, 'Áo sơ mi nữ Gendai màu vàng sọc xanh ngắn tay', '', '2012-04-25 08:51:30', 'o-so-mi-nu-gendai-mau-vang-soc-xanh-ngan-tay-thumb.jpeg', 'o-so-mi-nu-gendai-mau-vang-soc-xanh-ngan-tay.jpeg', '', 'Áo sơ mi nữ Gendai màu vàng sọc xanh ngắn tay', '', 'Áo sơ mi nữ Gendai màu vàng sọc xanh ngắn tay', '', 'ao-so-mi-nu-gendai-mau-vang-soc-xanh-ngan-tay', '', 'Áo sơ mi nữ Gendai màu vàng sọc xanh ngắn tay', '', 0, 55, '', 0, 0, '', '', '', '', 1, 100),
(339, 'Áo sơ mi nữ Gendai màu xám phối trắng ngắn tay', '', '2012-04-25 08:51:52', 'o-so-mi-nu-gendai-mau-xam-phoi-trang-ngan-tay-thumb.jpeg', 'o-so-mi-nu-gendai-mau-xam-phoi-trang-ngan-tay.jpeg', '', 'Áo sơ mi nữ Gendai màu xám phối trắng ngắn tay', '', 'Áo sơ mi nữ Gendai màu xám phối trắng ngắn tay', '', 'ao-so-mi-nu-gendai-mau-xam-phoi-trang-ngan-tay', '', 'Áo sơ mi nữ Gendai màu xám phối trắng ngắn tay', '', 0, 56, '', 0, 0, '', '', '', '', 1, 100),
(340, 'Áo sơ mi nữ Gendai màu đen viền chỉ xanh', '', '2012-04-25 08:53:51', 'o-so-mi-nu-gendai-mau-den-vien-chi-xanh-thumb.jpeg', 'o-so-mi-nu-gendai-mau-den-vien-chi-xanh.jpeg', '', 'Áo sơ mi nữ Gendai màu đen viền chỉ xanh', '', 'Áo sơ mi nữ Gendai màu đen viền chỉ xanh', '', 'ao-so-mi-nu-gendai-mau-den-vien-chi-xanh', '', 'Áo sơ mi nữ Gendai màu đen viền chỉ xanh', '', 0, 57, '', 0, 0, '', '', '', '', 1, 100),
(341, 'Áo sơ mi nữ Gendai màu đỏ tay ngắn', '', '2012-04-25 08:54:16', 'o-so-mi-nu-gendai-mau-do-tay-ngan-thumb.jpeg', 'o-so-mi-nu-gendai-mau-do-tay-ngan.jpeg', '', 'Áo sơ mi nữ Gendai màu đỏ tay ngắn', '', 'Áo sơ mi nữ Gendai màu đỏ tay ngắn', '', 'ao-so-mi-nu-gendai-mau-do-tay-ngan', '', 'Áo sơ mi nữ Gendai màu đỏ tay ngắn', '', 0, 58, '', 0, 0, '', '', '', '', 1, 100),
(342, 'Áo sơ mi nữ Gendai màu hồng cổ sọc ngắn tay', '', '2012-04-25 08:54:39', 'o-so-mi-nu-gendai-mau-hong-co-soc-ngan-tay-thumb.jpeg', 'o-so-mi-nu-gendai-mau-hong-co-soc-ngan-tay.jpeg', '', 'Áo sơ mi nữ Gendai màu hồng cổ sọc ngắn tay', '', 'Áo sơ mi nữ Gendai màu hồng cổ sọc ngắn tay', '', 'ao-so-mi-nu-gendai-mau-hong-co-soc-ngan-tay', '', 'Áo sơ mi nữ Gendai màu hồng cổ sọc ngắn tay', '', 0, 59, '', 0, 0, '', '', '', '', 1, 100),
(343, 'Áo sơ mi nữ Gendai màu hồng nhạt', '', '2012-04-25 08:55:01', 'o-so-mi-nu-gendai-mau-hong-nhat-thumb.jpeg', 'o-so-mi-nu-gendai-mau-hong-nhat.jpeg', '', 'Áo sơ mi nữ Gendai màu hồng nhạt', '', 'Áo sơ mi nữ Gendai màu hồng nhạt', '', 'ao-so-mi-nu-gendai-mau-hong-nhat', '', 'Áo sơ mi nữ Gendai màu hồng nhạt', '', 0, 60, '', 0, 0, '', '', '', '', 1, 100),
(344, 'Áo khoác nữ Gendai màu đỏ kiểu jacket', '', '2012-04-25 08:57:14', 'o-khoac-nu-gendai-mau-do-kieu-jacket-thumb.jpeg', 'o-khoac-nu-gendai-mau-do-kieu-jacket.jpeg', '', 'Áo khoác nữ Gendai màu đỏ kiểu jacket', '', 'Áo khoác nữ Gendai màu đỏ kiểu jacket', '', 'ao-khoac-nu-gendai-mau-do-kieu-jacket', '', 'Áo khoác nữ Gendai màu đỏ kiểu jacket', '', 0, 61, '', 0, 0, '', '', '', '', 1, 101),
(345, 'Áo khoác nữ Gendai màu nâu kiểu jacket', '', '2012-04-25 08:57:35', 'o-khoac-nu-gendai-mau-nau-kieu-jacket-thumb.jpeg', 'o-khoac-nu-gendai-mau-nau-kieu-jacket.jpeg', '', 'Áo khoác nữ Gendai màu nâu kiểu jacket', '', 'Áo khoác nữ Gendai màu nâu kiểu jacket', '', 'ao-khoac-nu-gendai-mau-nau-kieu-jacket', '', 'Áo khoác nữ Gendai màu nâu kiểu jacket', '', 0, 62, '', 0, 0, '', '', '', '', 1, 101),
(346, 'Áo khoác nữ Gendai màu tím kiểu jacket', '', '2012-04-25 08:58:40', 'o-khoac-nu-gendai-mau-tim-kieu-jacket-thumb.jpeg', 'o-khoac-nu-gendai-mau-tim-kieu-jacket.jpeg', '', 'Áo khoác nữ Gendai màu tím kiểu jacket', '', 'Áo khoác nữ Gendai màu tím kiểu jacket', '', 'ao-khoac-nu-gendai-mau-tim-kieu-jacket', '', 'Áo khoác nữ Gendai màu tím kiểu jacket', '', 0, 63, '', 0, 0, '', '', '', '', 1, 101),
(347, 'Áo khoác nữ Gendai màu xám kiểu jacket', '', '2012-04-25 08:59:01', 'o-khoac-nu-gendai-mau-xam-kieu-jacket-thumb.jpeg', 'o-khoac-nu-gendai-mau-xam-kieu-jacket.jpeg', '', 'Áo khoác nữ Gendai màu xám kiểu jacket', '', 'Áo khoác nữ Gendai màu xám kiểu jacket', '', 'ao-khoac-nu-gendai-mau-xam-kieu-jacket', '', 'Áo khoác nữ Gendai màu xám kiểu jacket', '', 0, 64, '', 0, 0, '', '', '', '', 1, 101),
(414, 'Auto CAD 2008', '', '2012-04-26 07:32:28', 'auto-cad-2008-thumb.jpg', 'auto-cad-2008.jpg', '', '<p>Auto CAD 2008</p>', '', '<p>Auto CAD 2008</p>', '', 'auto-cad-2008', '', 'Auto CAD 2008', '', 0, 10, '', 0, 0, '', '', '', '', 1, 117),
(415, 'Age of Conversation 2', '', '2012-04-26 07:33:17', 'age-of-conversation-2-thumb.jpg', 'age-of-conversation-2.jpg', '', '<p>Age of Conversation 2</p>', '', '<p>Age of Conversation 2</p>', '', 'age-of-conversation-2', '', 'Age of Conversation 2', '', 0, 9, '', 1, 0, '', '', '', '', 1, 119),
(416, 'Guidance For Today', '', '2012-04-26 07:33:52', 'guidance-for-today-thumb.gif', 'guidance-for-today.gif', '', '<p>Guidance For Today</p>', '', '<p>Guidance For Today</p>', '', 'guidance-for-today', '', 'Guidance For Today', '', 0, 8, '', 1, 0, '', '', '', '', 1, 123),
(417, 'The Word For You Today', '', '2012-04-26 07:34:43', 'the-word-for-you-today-thumb.gif', 'the-word-for-you-today.gif', '', '<p>The Word For You Today</p>', '', '<p>The Word For You Today</p>', '', 'the-word-for-you-today', '', 'The Word For You Today', '', 0, 7, '', 1, 0, '', '', '', '', 1, 121),
(418, 'After the Rain', '', '2012-04-26 07:35:25', 'after-the-rain-thumb.jpg', 'after-the-rain.jpg', '', '<p>After the Rain</p>', '', '<p>After the Rain</p>', '', 'after-the-rain', '', 'After the Rain', '', 0, 6, '', 1, 0, '', '', '', '', 1, 123),
(419, 'The Shack', '', '2012-04-26 07:35:50', 'the-shack-thumb.jpg', 'the-shack.jpg', '', '<p>The Shack</p>', '', '<p>The Shack</p>', '', 'the-shack', '', 'The Shack', '', 0, 5, '', 1, 0, '', '', '', '', 1, 121),
(420, 'Amulet', '', '2012-04-26 07:36:22', 'amulet-thumb.jpg', 'amulet.jpg', '', '<p>Amulet</p>', '', '<p>Amulet</p>', '', 'amulet', '', 'Amulet', '', 0, 4, '', 1, 0, '', '', '', '', 1, 122),
(421, 'Be Not Afraid', '', '2012-04-26 07:37:20', 'be-not-afraid-thumb.gif', 'be-not-afraid.gif', '', '<p>Be Not Afraid</p>', '', '<p>Be Not Afraid</p>', '', 'be-not-afraid', '', 'Be Not Afraid', '', 0, 3, '', 1, 0, '', '', '', '', 1, 118),
(422, 'Flax &amp; Java', '', '2012-04-26 07:37:51', 'flax-amp-java-thumb.jpg', 'flax-amp-java.jpg', '', '<p>Flax &amp; Java</p>', '', '<p>Flax &amp; Java</p>', '', 'flax-java', '', 'Flax &amp; Java', '', 0, 2, '', 1, 0, '', '', '', '', 1, 117),
(423, 'JAVA Programming', '', '2012-04-26 07:39:06', 'java-programming-thumb.jpg', 'java-programming.jpg', '', '<p>JAVA Programming</p>', '', '<p>JAVA Programming</p>', '', 'java-programming', '', 'JAVA Programming', '', 0, 1, '', 1, 0, '', '', '', '', 1, 117),
(424, 'Almond Flavored Coffee', '', '2012-04-26 09:10:10', 'almond-flavored-coffee-thumb.jpg', 'almond-flavored-coffee.jpg', '', '<p>Almond Flavored Coffee</p>', '', '<p>Almond Flavored Coffee</p>', '', 'almond-flavored-coffee', '', 'Almond Flavored Coffee', '', 0, 12, '', 1, 0, '', '', '', '', 1, 125),
(425, 'Angel Face Coffee', '', '2012-04-26 09:11:47', 'angel-face-coffee-thumb.jpg', 'angel-face-coffee.jpg', '', '<p>Angel Face Coffee</p>', '', '<p>Angel Face Coffee</p>', '', 'angel-face-coffee', '', 'Angel Face Coffee', '', 0, 11, '', 1, 0, '', '', '', '', 1, 125),
(426, 'Blizzard Flavored Coffee', '', '2012-04-26 09:12:19', 'blizzard-flavored-coffee-thumb.jpg', 'blizzard-flavored-coffee.jpg', '', '<p>Blizzard Flavored Coffee</p>', '', '<p>Blizzard Flavored Coffee</p>', '', 'blizzard-flavored-coffee', '', 'Blizzard Flavored Coffee', '', 0, 10, '', 1, 0, '', '', '', '', 1, 125),
(427, 'Starbuck''s Coffee', '', '2012-04-26 09:12:48', 'starbucks-coffee-thumb.jpg', 'starbucks-coffee.jpg', '', '<p>Starbuck''s Coffee</p>', '', '<p>Starbuck''s Coffee</p>', '', 'starbucks-coffee', '', 'Starbuck''s Coffee', '', 0, 9, '', 1, 0, '', '', '', '', 1, 125),
(428, 'Cafe Parisian Flavored Coffee', '', '2012-04-26 09:13:34', 'cafe-parisian-flavored-coffee-thumb.jpg', 'cafe-parisian-flavored-coffee.jpg', '', '<p>Cafe Parisian Flavored Coffee</p>', '', '<p>Cafe Parisian Flavored Coffee</p>', '', 'cafe-parisian-flavored-coffee', '', 'Cafe Parisian Flavored Coffee', '', 0, 8, '', 1, 0, '', '', '', '', 1, 128),
(429, 'Cinnamon Hazelnut Flavored Coffee', '', '2012-04-26 09:14:00', 'cinnamon-hazelnut-flavored-coffee-thumb.jpg', 'cinnamon-hazelnut-flavored-coffee.jpg', '', '<p>Cinnamon Hazelnut Flavored Coffee</p>', '', '<p>Cinnamon Hazelnut Flavored Coffee</p>', '', 'cinnamon-hazelnut-flavored-coffee', '', 'Cinnamon Hazelnut Flavored Coffee', '', 0, 7, '', 1, 0, '', '', '', '', 1, 125),
(430, 'Cookiedoodle Flavored Coffee', '', '2012-04-26 09:14:40', 'cookiedoodle-flavored-coffee-thumb.jpg', 'cookiedoodle-flavored-coffee.jpg', '', '<p>Cookiedoodle Flavored Coffee</p>', '', '<p>Cookiedoodle Flavored Coffee</p>', '', 'cookiedoodle-flavored-coffee', '', 'Cookiedoodle Flavored Coffee', '', 0, 6, '', 1, 0, '', '', '', '', 1, 125),
(431, 'French Vanilla Flavored Coffee', '', '2012-04-26 09:15:57', 'french-vanilla-flavored-coffee-thumb.jpg', 'french-vanilla-flavored-coffee.jpg', '', '<p>French Vanilla Flavored Coffee</p>', '', '<p>French Vanilla Flavored Coffee</p>', '', 'french-vanilla-flavored-coffee', '', 'French Vanilla Flavored Coffee', '', 0, 5, '', 1, 0, '', '', '', '', 1, 126),
(432, 'Hawaiian Coffee', '', '2012-04-26 09:17:03', 'hawaiian-coffee-thumb.jpg', 'hawaiian-coffee.jpg', '', '<p>Hawaiian Coffee</p>', '', '<p>Hawaiian Coffee</p>', '', 'hawaiian-coffee', '', 'Hawaiian Coffee', '', 0, 4, '', 1, 0, '', '', '', '', 1, 125),
(433, 'Hazelnut Flavored Coffee', '', '2012-04-26 09:17:35', 'hazelnut-flavored-coffee-thumb.jpg', 'hazelnut-flavored-coffee.jpg', '', '<p>Hazelnut Flavored Coffee</p>', '', '<p>Hazelnut Flavored Coffee</p>', '', 'hazelnut-flavored-coffee', '', 'Hazelnut Flavored Coffee', '', 0, 3, '', 1, 0, '', '', '', '', 1, 127),
(434, 'Sinful Delight Flavored Coffee', '', '2012-04-26 09:19:09', 'sinful-delight-flavored-coffee-thumb.jpg', 'sinful-delight-flavored-coffee.jpg', '', '<p>Sinful Delight Flavored Coffee</p>', '', '<p>Sinful Delight Flavored Coffee</p>', '', 'sinful-delight-flavored-coffee', '', 'Sinful Delight Flavored Coffee', '', 0, 2, '', 1, 0, '', '', '', '', 1, 127),
(435, 'Sticky Buns Flavored Coffee', '', '2012-04-26 09:20:07', 'sticky-buns-flavored-coffee-thumb.jpg', 'sticky-buns-flavored-coffee.jpg', '', '<p>Sticky Buns Flavored Coffee</p>', '', '<p>Sticky Buns Flavored Coffee</p>', '', 'sticky-buns-flavored-coffee', '', 'Sticky Buns Flavored Coffee', '', 0, 1, '', 1, 0, '', '', '', '', 1, 125),
(436, 'Hoa cô dâu - CD43', '', '2012-05-02 07:12:33', 'hoa-co-dau-cd43-thumb.jpg', 'hoa-co-dau-cd43.jpg', NULL, '', '', '<p>- Sản phẩm này cần đặt trước 2h – 4h ( chat, điện thoại), 24h (qua email, website).</p>\r\n<p>- Về màu sắc, loại hoa, nguyên vật liệu cắm hoa phụ thuộc thời tiết và mùa màng trong năm nên thỉnh thoảng có sự thay đổi chút ít giữa mẫu trên website và thực tế. Tuy nhiên, Hoa Sài Gòn sẽ liên lạc trước với Quý khách để xin ý kiến. Trường hợp không liên lạc được Hoa Sài Gòn sẽ chủ động thay thế bằng một loại hoa hay nguyên vật liệu phù hợp nhưng vẫn đảm bảo ý nghĩa và tính mỹ quan của sản phẩm.</p>', '', 'hoa-co-dau-cd43', '', '', '', 0, 1, '598000', 0, NULL, NULL, NULL, NULL, NULL, 1, 132),
(437, 'Hoa tình yêu - TY136', '', '2012-05-02 07:27:43', 'hoa-tinh-yeu-ty136-thumb.JPG', 'hoa-tinh-yeu-ty136.JPG', NULL, '', '', '<p>chi tiet1</p>', '', 'hoa-tinh-yeu-ty136', '', '', '', 0, 2, '1650000', 0, NULL, NULL, NULL, NULL, NULL, 1, 130),
(438, 'Xe hoa - XH27', '', '2012-05-02 07:29:57', 'xe-hoa-xh27-thumb.jpg', 'xe-hoa-xh27.jpg', NULL, '', '', '<p>CHI TIET</p>', '', 'xe-hoa-xh27', '', '', '', 0, 3, '1300000', 0, NULL, NULL, NULL, NULL, NULL, 1, 134),
(439, 'OV11', '', '2012-05-02 07:30:41', 'ov11-thumb.JPG', 'ov11.JPG', NULL, '', '', '<p>CHI TIET</p>', '', 'ov11', '', '', '', 0, 4, '240000', 0, NULL, NULL, NULL, NULL, NULL, 1, 129),
(440, 'Xe hoa - XH26A', '', '2012-05-02 08:40:01', 'xe-hoa-xh26a-thumb.jpg', 'xe-hoa-xh26a.jpg', NULL, '', '', '<p>chi tiet</p>', '', 'xe-hoa-xh26a', '', 'Xe hoa - XH26A', '', 0, 5, '', 0, NULL, NULL, NULL, NULL, NULL, 1, 134),
(441, 'Xe hoa - XH19', '', '2012-05-02 08:53:41', 'xe-hoa-xh19-thumb.jpg', 'xe-hoa-xh19.jpg', NULL, '<p>Sản phẩm này cần đặt trước 2h – 4h ( chat, điện thoại), 24h (qua email, website).</p>\r\n<p>- Về màu sắc, loại hoa, nguyên vật liệu cắm hoa phụ thuộc thời tiết và mùa màng trong năm nên thỉnh thoảng có sự thay đổi chút ít giữa mẫu trên website và thực tế. Tuy nhiên, Hoa Sài Gòn sẽ liên lạc trước với Quý khách để xin ý kiến. Trường hợp không liên lạc được Hoa Sài Gòn sẽ chủ động thay thế bằng một loại hoa hay nguyên vật liệu phù hợp nhưng vẫn đảm bảo ý nghĩa và tính mỹ quan của sản phẩm.</p>', '', '<p>Sản phẩm này cần đặt trước 2h – 4h ( chat, điện thoại), 24h (qua email, website).</p>\r\n<p>- Về màu sắc, loại hoa, nguyên vật liệu cắm hoa phụ thuộc thời tiết và mùa màng trong năm nên thỉnh thoảng có sự thay đổi chút ít giữa mẫu trên website và thực tế. Tuy nhiên, Hoa Sài Gòn sẽ liên lạc trước với Quý khách để xin ý kiến. Trường hợp không liên lạc được Hoa Sài Gòn sẽ chủ động thay thế bằng một loại hoa hay nguyên vật liệu phù hợp nhưng vẫn đảm bảo ý nghĩa và tính mỹ quan của sản phẩm.</p>', '', 'xe-hoa-xh19', '', 'Xe hoa - XH19', '', 0, 6, '790000', 0, NULL, NULL, NULL, NULL, NULL, 1, 134),
(442, 'Cổng hoa cưới - CH03', '', '2012-05-02 08:54:41', 'cong-hoa-cuoi-ch03-thumb.JPG', 'cong-hoa-cuoi-ch03.JPG', NULL, '', '', '<p>chi tiet</p>', '', 'cong-hoa-cuoi-ch03', '', 'Cổng hoa cưới - CH03', '', 0, 7, '', 0, NULL, NULL, NULL, NULL, NULL, 1, 135),
(443, 'Cổng hoa cưới - CH02(KS intercontiental)', '', '2012-05-02 08:55:22', 'cong-hoa-cuoi-ch02ks-intercontiental-thumb.jpg', 'cong-hoa-cuoi-ch02ks-intercontiental.jpg', NULL, '', '', '<p>chi tiet</p>', '', 'cong-hoa-cuoi-ch02ks-intercontiental', '', 'Cổng hoa cưới - CH02(KS intercontiental)', '', 0, 8, '', 0, NULL, NULL, NULL, NULL, NULL, 1, 135),
(444, 'Cổng hoa cưới - CH01', '', '2012-05-02 08:55:44', 'cong-hoa-cuoi-ch01-thumb.JPG', 'cong-hoa-cuoi-ch01.JPG', NULL, '', '', '<p>chi tiet</p>', '', 'cong-hoa-cuoi-ch01', '', 'Cổng hoa cưới - CH01', '', 0, 9, '', 0, NULL, NULL, NULL, NULL, NULL, 1, 135),
(445, 'Cửa Pano gỗ 01', '', '2012-05-03 01:49:25', 'cua-pano-go-01-thumb.jpg', 'cua-pano-go-01.jpg', NULL, '', '', '<p>Chi tiết</p>', '', 'cua-pano-go-01', '', '', '', 0, 1, '', 1, NULL, NULL, NULL, NULL, NULL, 1, 136),
(446, 'Cửa Pano gỗ 02', '', '2012-05-03 01:49:45', 'cua-pano-go-02-thumb.jpg', 'cua-pano-go-02.jpg', NULL, '', '', '<p>chi tiet</p>', '', 'cua-pano-go-02', '', '', '', 0, 2, '', 1, NULL, NULL, NULL, NULL, NULL, 1, 136),
(447, 'Cửa Pano gỗ 04', '', '2012-05-03 01:50:13', 'cua-pano-go-04-thumb.jpg', 'cua-pano-go-04.jpg', NULL, '', '', '<p>chi tiết</p>', '', 'cua-pano-go-04', '', '', '', 0, 3, '', 1, NULL, NULL, NULL, NULL, NULL, 1, 136),
(448, 'Cửa pano gỗ - kính 02', '', '2012-05-03 01:57:34', 'cua-pano-go-kinh-02-thumb.jpg', 'cua-pano-go-kinh-02.jpg', NULL, '', '', '<p>chi tiet</p>', '', 'cua-pano-go-kinh-02', '', '', '', 0, 4, '', 1, NULL, NULL, NULL, NULL, NULL, 1, 137),
(449, 'Cửa Pano gỗ - kính 01', '', '2012-05-03 01:57:57', 'cua-pano-go-kinh-01-thumb.jpg', 'cua-pano-go-kinh-01.jpg', NULL, '', '', '<p>chi tiet</p>', '', 'cua-pano-go-kinh-01', '', 'Cửa Pano gỗ - kính 01', '', 0, 5, '', 1, NULL, NULL, NULL, NULL, NULL, 1, 137),
(450, 'Cửa Pano đặc gỗ Lim Lào', '', '2012-05-03 01:59:27', 'cua-pano-dac-go-lim-lao-thumb.jpg', 'cua-pano-dac-go-lim-lao.jpg', 'cua-pano-dac-go-lim-lao-desc-1.jpg|cua-pano-dac-go-lim-lao-desc-2.jpg|cua-pano-dac-go-lim-lao-desc-3.jpg', '', '', '<p>Tình trạng: Còn hàng<br />Cửa Pano đặc gỗ Lim Lào được sản xuất tại xưởng Đức Tuyến.<br />Tất cả các sản phẩm về gỗ được sản xuất tại Đức Tuyến đều được tẩm sấy, xử lý rất kỹ càng đảm bảo không cong vênh, co ngót. Đặc biệt sản phẩm không có rác.</p>', '', 'cua-pano-dac-go-lim-lao', '', 'Cửa Pano đặc gỗ Lim Lào', '', 0, 6, '', 1, NULL, NULL, NULL, NULL, NULL, 1, 136),
(451, 'Cửa Pano gỗ 08', '', '2012-05-03 02:04:05', 'cua-pano-go-08-thumb.jpg', 'cua-pano-go-08.jpg', 'cua-pano-go-08-desc-1.jpg|cua-pano-go-08-desc-2.jpg', '', '', '<p>Tình trạng: Còn hàng</p>', '', 'cua-pano-go-08', '', '', '', 0, 7, '', 1, NULL, NULL, NULL, NULL, NULL, 1, 136),
(452, 'Cửa pano gỗ-kính 07', '', '2012-05-03 02:08:14', 'cua-pano-go-kinh-07-thumb.jpg', 'cua-pano-go-kinh-07.jpg', NULL, '', '', '<p>Tình trạng: Còn hàng</p>', '', 'cua-pano-go-kinh-07', '', '', '', 0, 8, '', 1, NULL, NULL, NULL, NULL, NULL, 1, 138),
(453, 'Cửa pano gỗ-kính 06', '', '2012-05-03 02:08:49', 'cua-pano-go-kinh-06-thumb.jpg', 'cua-pano-go-kinh-06.jpg', NULL, '', '', '<p>Tình trạng: Còn hàng</p>', '', 'cua-pano-go-kinh-06', '', 'Cửa pano gỗ-kính 06', '', 0, 9, '', 0, NULL, NULL, NULL, NULL, NULL, 1, 137),
(454, 'Cửa pano gỗ-kính 05', '', '2012-05-03 02:09:35', 'cua-pano-go-kinh-05-thumb.jpg', 'cua-pano-go-kinh-05.jpg', NULL, '', '', '<p>Tình trạng: Còn hàng</p>', '', 'cua-pano-go-kinh-05', '', 'Cửa pano gỗ-kính 05', '', 0, 10, '', 1, NULL, NULL, NULL, NULL, NULL, 1, 137),
(455, 'Cửa pano gỗ-kính 10', '', '2012-05-03 02:10:04', 'cua-pano-go-kinh-10-thumb.jpg', 'cua-pano-go-kinh-10.jpg', NULL, '', '', '<p>Tình trạng: Còn hàng</p>', '', 'cua-pano-go-kinh-10', '', 'Cửa pano gỗ-kính 10', '', 0, 11, '', 1, NULL, NULL, NULL, NULL, NULL, 1, 138),
(456, 'Cửa gỗ chớp lật 01', '', '2012-05-03 02:41:50', 'cua-go-chop-lat-01-thumb.jpg', 'cua-go-chop-lat-01.jpg', NULL, '', '', '<p>Mã hàng: Cửa gỗ chớp lật 01<br />Hãng sản xuất : VietNam</p>', '', 'cua-go-chop-lat-01', '', '', '', 0, 12, '', 1, NULL, NULL, NULL, NULL, NULL, 1, 139),
(457, 'Cửa gỗ chớp lật 02', '', '2012-05-03 02:43:32', 'cua-go-chop-lat-02-thumb.jpg', 'cua-go-chop-lat-02.jpg', NULL, '', '', '<p>Mã hàng: Cửa gỗ chớp lật 02<br />Hãng sản xuất : VietNam</p>', '', 'cua-go-chop-lat-02', '', '', '', 0, 13, '', 0, NULL, NULL, NULL, NULL, NULL, 1, 139);
INSERT INTO `dos_module_products` (`record_id`, `title`, `titleen`, `postdate`, `pic_thumb`, `pic_full`, `pic_desc`, `preview`, `previewen`, `content`, `contenten`, `tag`, `tagen`, `description`, `descriptionen`, `hits`, `record_order`, `unit`, `hot`, `specials`, `extra_field1`, `extra_field2`, `extra_field3`, `extra_field4`, `enable`, `dos_module_item_cat_cat_id`) VALUES
(458, 'Cửa pano kính 06', '', '2012-05-03 02:44:25', 'cua-pano-kinh-06-thumb.jpg', 'cua-pano-kinh-06.jpg', NULL, '', '', '<p>Tình trang: Còn hàng</p>', '', 'cua-pano-kinh-06', '', 'Cửa pano kính 06', '', 0, 14, '', 1, NULL, NULL, NULL, NULL, NULL, 1, 138);

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
) ENGINE=InnoDB  DEFAULT CHARSET=utf8 AUTO_INCREMENT=140 ;

--
-- Dumping data for table `dos_module_products_cat`
--

INSERT INTO `dos_module_products_cat` (`cat_id`, `cat_parent_id`, `cat_title`, `cat_titleen`, `preview`, `previewen`, `tag`, `tagen`, `description`, `descriptionen`, `pic_full`, `pic_desc`, `cat_order`, `cat_extra1`, `cat_extra2`, `cat_enable`, `dos_usernames_username`) VALUES
(67, 0, 'GIƯỜNG - SẬP', '', '', '', 'giuong-sap', '', 'GIƯỜNG - NGỰA', '', 'ging-nga.jpg', '', 3, '', '', 1, 'gothuytung'),
(68, 0, 'TƯỢNG GỖ', '', '', '', 'tuong-go', '', 'TƯỢNG GỖ', '', 'tng-g.JPG', '', 5, '', '', 1, 'gothuytung'),
(69, 0, 'LỤC BÌNH', '', '', '', 'luc-binh', '', 'LỤC BÌNH', '', 'lc-bnh.jpg', '', 2, '', '', 1, 'gothuytung'),
(70, 0, 'GỖ TRANG TRÍ', '', '', '', 'go-trang-tri', '', 'GỖ TRANG TRÍ', '', 'g-trang-tr.JPG', '', 4, '', '', 1, 'gothuytung'),
(71, 0, 'SALON GỖ', '', '', '', 'salon-go', '', 'SALON GỖ', '', 'salon-g.JPG', '', 1, '', '', 1, 'gothuytung'),
(95, 0, 'Thời trang Nữ', '', '', '', 'thoi-trang-nu', '', 'Thời trang nữ', '', 'thoi-trang-nu.jpg', '', 1, '', '', 1, '070312'),
(96, 0, 'Thời trang Nam', '', '', '', 'thoi-trang-nam', '', 'Thời trang Nam', '', 'thoi-trang-nam.jpg', '', 2, '', '', 1, '070312'),
(97, 96, 'Áo sơ mi', '', '', '', 'ao-so-mi', '', 'Áo sơ mi', '', 'o-so-mi.jpeg', '', 3, '', '', 1, '070312'),
(98, 96, 'Áo thun', '', '', '', 'ao-thun', '', 'Áo thun', '', 'o-thun.jpeg', '', 4, '', '', 1, '070312'),
(99, 96, 'Áo khoác', '', '', '', 'ao-khoac', '', 'Áo khoác', '', 'o-khoac.jpeg', '', 5, '', '', 1, '070312'),
(100, 95, 'Áo sơ mi nữ', '', '', '', 'ao-so-mi-nu', '', 'Áo sơ mi nữ', '', 'o-so-mi-nu.jpeg', '', 6, '', '', 1, '070312'),
(101, 95, 'Áo khoác nữ', '', '', '', 'ao-khoac-nu', '', 'Áo khoác nữ', '', 'o-khoac-nu.jpeg', '', 7, '', '', 1, '070312'),
(102, 95, 'Tổng hợp', '', '', '', 'tong-hop', '', 'Tổng hợp', '', 'tong-hop.jpg', '', 8, '', '', 1, '070312'),
(117, 0, 'Sách Giáo Dục', '', '', '', 'sach-giao-duc', '', 'Sách giáo dục', '', 'sach-giao-duc.jpg', '', 3, '', '', 1, '200312'),
(118, 0, 'Sách Khoa Học', '', '', '', 'sach-khoa-hoc', '', 'Sách khoa học', '', 'sach-khoa-hoc.jpg', '', 4, '', '', 1, '200312'),
(119, 0, 'Sách Kinh Tế', '', '', '', 'sach-kinh-te', '', 'Sách Kinh Tế', '', 'sach-kinh-te.jpg', '', 3, '', '', 1, '200312'),
(120, 0, 'Sách Nấu Ăn', '', '', '', 'sach-nau-an', '', 'Sách Nấu Ăn', '', 'sach-nau-n.gif', '', 3, '', '', 1, '200312'),
(121, 0, 'Sách Giải Trí', '', '', '', 'sach-giai-tri', '', 'Sách Giải Trí', '', 'sach-giai-tri.jpg', '', 3, '', '', 1, '200312'),
(122, 0, 'Sách Trẻ Em', '', '', '', 'sach-tre-em', '', 'Sách Trẻ Em', '', 'sach-tre-em.jpg', '', 3, '', '', 1, '200312'),
(123, 0, 'Sách Truyện', '', '', '', 'sach-truyen', '', 'Sách Truyện', '', 'sach-truyen.gif', '', 2, '', '', 1, '200312'),
(125, 0, 'Cà phê', '', '', '', 'ca-phe', '', 'Cà phê', '', 'ca-phe.jpg', '', 4, '', '', 1, '230412'),
(126, 0, 'Trà', '', '', '', 'tra', '', 'Trà', '', 'tra.jpg', '', 4, '', '', 1, '230412'),
(127, 0, 'Bánh &amp; Kẹo', '', '', '', 'banh-keo', '', 'Bánh &amp; Kẹo', '', 'banh-amp-keo.jpg', '', 3, '', '', 1, '230412'),
(128, 0, 'Phụ kiện pha chế', '', '', '', 'phu-kien-pha-che', '', 'Phụ kiện pha chế', '', 'phu-kien-pha-che.jpg', '', 2, '', '', 1, '230412'),
(129, 0, 'Hoa tươi đi tỉnh', '', NULL, NULL, 'hoa-tuoi-di-tinh', '', 'Hoa tươi đi tỉnh', '', 'hoa-tuoi-di-tinh.gif', NULL, 1, NULL, NULL, 1, 'hoasaytinh'),
(130, 0, 'Hoa tình yêu', '', NULL, NULL, 'hoa-tinh-yeu', '', 'Hoa tình yêu', '', 'hoa-tinh-yeu.jpg', NULL, 2, NULL, NULL, 1, 'hoasaytinh'),
(131, 0, 'Hoa bó', '', NULL, NULL, 'hoa-bo', '', 'Hoa bó', '', 'hoa-bo.jpg', NULL, 3, NULL, NULL, 1, 'hoasaytinh'),
(132, 0, 'Hoa cưới', '', NULL, NULL, 'hoa-cuoi', '', 'Hoa cưới', '', '', NULL, 4, NULL, NULL, 1, 'hoasaytinh'),
(133, 132, 'Hoa cô dâu', '', NULL, NULL, 'hoa-co-dau', '', 'Hoa cô dâu', '', 'hoa-co-dau.jpg', NULL, 5, NULL, NULL, 1, 'hoasaytinh'),
(134, 132, 'Xe hoa', '', NULL, NULL, 'xe-hoa', '', 'Xe hoa', '', 'xe-hoa.jpg', NULL, 6, NULL, NULL, 1, 'hoasaytinh'),
(135, 132, 'Cổng hoa cưới', '', NULL, NULL, 'cong-hoa-cuoi', '', 'Cổng hoa cưới', '', 'cong-hoa-cuoi.JPG', NULL, 7, NULL, NULL, 1, 'hoasaytinh'),
(136, 0, 'Cửa pano gỗ', '', NULL, NULL, 'cua-pano-go', '', 'Cửa pano gỗ', '', 'cua-pano-go.jpg', NULL, 1, NULL, NULL, 1, 'cuasat24h'),
(137, 0, 'Cửa panô gỗ - kính', '', NULL, NULL, 'cua-pano-go-kinh', '', 'Cửa panô gỗ - kính', '', 'cua-pano-go-kinh.jpg', NULL, 2, NULL, NULL, 1, 'cuasat24h'),
(138, 0, 'Cửa panô kính', '', NULL, NULL, 'cua-pano-kinh', '', 'Cửa panô kính', '', 'cua-pano-kinh.jpg', NULL, 3, NULL, NULL, 1, 'cuasat24h'),
(139, 0, 'Cửa panô chớp lật', '', NULL, NULL, 'cua-pano-chop-lat', '', 'Cửa panô chớp lật', '', 'cua-pano-chop-lat.JPG', NULL, 4, NULL, NULL, 1, 'cuasat24h');

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
) ENGINE=InnoDB  DEFAULT CHARSET=utf8 AUTO_INCREMENT=42 ;

--
-- Dumping data for table `dos_module_services`
--

INSERT INTO `dos_module_services` (`record_id`, `title`, `titleen`, `preview`, `previewen`, `content`, `contenten`, `pic_full`, `hit`, `created`, `record_order`, `hot`, `extra_field1`, `extra_field2`, `tag`, `tagen`, `description`, `descriptionen`, `activated`, `dos_usernames_username`) VALUES
(34, 'Ngủ Cùng Sói', '', '', '', '<p><img style="float:right;" src="/public/userfiles/image/200312/image/_fill_300_49541.jpg" alt="" width="300" height="300" /></p>\n<p> </p>\n<p>Tác giả: Diệp Lạc Vô Tâm. - Dịch giả: Hoàng Anh.</p>\n<p>Nhà xuất bản: Nxb văn học</p>\n<p>Chưa có nhận xét nào. Bạn là người đầu tiên ?</p>\n<p>Số trang: 584</p>\n<p>Giảm 10 %</p>\n<p>Hình thức bìa: Bìa mềm<br />Kích thước: 14.5 x 20.5 cm Ngày xuất bản: 5 - 2012<br />Trọng lượng: 700 gram Số lần xem: 2159<br />(Chi tiết về phí vận chuyển)<br />Giá bìa: 118.000 VNĐ<br />Giá bán: 106.200 VNĐ<br />Giảm giá: (10%)</p>\n<p> </p>\n<p> </p>\n<p> </p>\n<p> </p>\n<p> </p>\n<p> </p>', '', 'ngu-cung-soi.jpg', 4, '2012-04-26 08:39:22', 1, 0, '', '', 'ngu-cung-soi', '', 'Ngủ Cùng Sói', '', 1, '200312'),
(35, 'Nếu Xa Nhau, Em Chúc Anh Hạnh Phúc', '', '', '', '<p><img style="float:right;" src="/public/userfiles/image/200312/image/_si_fill_300_49572.jpg" alt="" width="300" height="300" /></p>\n<p>Tác giả: Dư Tư. - Dịch giả: Hồng Hoa.</p>\n<p>Nhà xuất bản: Nxb văn học</p>\n<p>Chưa có nhận xét nào. Bạn là người đầu tiên ?</p>\n<p>Số trang: 368</p>\n<p>Giảm 10 %</p>\n<p>Hình thức bìa: Bìa mềm<br />Kích thước: 13.5 x 20.5 cm Ngày xuất bản: 2011<br />Trọng lượng: 352 gram Số lần xem: 955<br />(Chi tiết về phí vận chuyển)<br />Giá bìa: 72.000 VNĐ<br />Giá bán: 64.800 VNĐ<br />Giảm giá: (10%)</p>\n<p>Xếp hạng: 60 ( trong những cuốn Sách bán chạy )</p>\n<p> </p>', '', 'neu-xa-nhau-em-chuc-anh-hanh-phuc.jpg', 2, '2012-04-26 08:42:00', 2, 0, '', '', 'neu-xa-nhau-em-chuc-anh-hanh-phuc', '', '', '', 1, '200312'),
(36, 'A Mạch Tòng Quân - Tập 2 (Phát Hành 25-04-2012)', '', '', '', '<p style="text-align:justify;"><img style="float:right;" src="/public/userfiles/image/200312/image/_fill_300_49537.jpg" alt="" width="300" height="300" /></p>\n<p style="text-align:justify;">Tác giả: Tiên Chanh. - Dịch giả: Nguyễn Thanh An.</p>\n<p style="text-align:justify;">Nhà xuất bản: Nxb văn học</p>\n<p style="text-align:justify;">Chưa có nhận xét nào. Bạn là người đầu tiên ?</p>\n<p style="text-align:justify;">Số trang: 444</p>\n<p style="text-align:justify;">Giảm 10 %</p>\n<p style="text-align:justify;">Hình thức bìa: Bìa mềm<br />Kích thước: 16 x 24 cm Ngày xuất bản: 04 - 2012<br />Trọng lượng: 700 gram Số lần xem: 621<br />(Chi tiết về phí vận chuyển)<br />Giá bìa: 129.000 VNĐ<br />Giá bán: 116.100 VNĐ<br />Giảm giá: (10%)</p>\n<p style="text-align:justify;"> </p>\n<p style="text-align:justify;"> </p>', '', 'a-mach-tong-quan-tap-2-phat-hanh-25-04-2012.jpg', 3, '2012-04-26 08:45:27', 3, 0, '', '', 'a-mach-tong-quan-tap-2-phat-hanh-25-04-2012', '', 'A Mạch Tòng Quân - Tập 2 (Phát Hành 25-04-2012)', '', 1, '200312'),
(37, 'Dịch vụ 230412 Cafe', '', '', '', '<p><img style="float:left;margin-left:10px;margin-right:10px;" src="/public/userfiles/image/230412/image/images.jpeg" alt="" width="183" height="261" /></p>\n<p style="text-align:justify;"> </p>\n<p style="text-align:justify;">Khuôn viên rộng rãi, thoáng mát gần gũi với thiên nhiên, phòng ăn sạch sẽ, lịch sự sẽ là điểm hẹn lý tưởng của quý khách cho những buổi gặp gỡ, trò chuyện hàng ngày cũng như những sự kiện quan trọng như sinh nhật, liên hoan, tiệc cưới.</p>\n<p style="text-align:justify;">Sự đa dạng của các món ăn, đồ uống cũng như kinh nghiệm chế biến truyền thống sẽ tạo cho quý khách cảm nhận đích thực về nghệ thuật ẩm thực tại <strong>230412 Cafe.</strong></p>\n<p style="text-align:justify;">Chúng tôi luôn tự hào về phong cách phục vụ mang đậm bản sắc quê hương Việt Nam của đội ngũ nhân viên phục vụ chuyên nghiệp và hiếu khách, quý khách sẽ thấy hài lòng về chất lượng phục vụ khi đến với chúng tôi.</p>\n<p style="text-align:justify;">Để biết thêm chi tiết về các dịch vụ của chúng tôi vui lòng lựa chọn dịch vụ ở menu bên phải.</p>\n<p style="text-align:right;"><strong> </strong></p>\n<p style="text-align:right;"><strong>FREE WIFI INTERNET - FREE WIFI INTERNET</strong></p>', '', '', 1, '2012-04-26 09:38:50', 1, 0, '', '', 'dich-vu-230412-cafe', '', 'Dịch vụ', '', 1, '230412'),
(38, 'Dịch vụ vẫn chuyển tận nơi', '', NULL, NULL, '<p>Dịch vụ vẫn chuyển tận nơiDịch vụ vẫn chuyển tận nơi Dịch vụ vẫn chuyển tận nơi</p>', '', '', 1, '2012-05-02 07:47:48', 1, 0, NULL, NULL, 'dich-vu-van-chuyen-tan-noi', '', 'Dịch vụ vẫn chuyển tận nơi', '', 1, 'hoasaytinh'),
(39, 'Dịch vụ tặng quà', '', NULL, NULL, '<p>Dịch vụ tặng quà</p>', '', '', 1, '2012-05-02 07:52:01', 2, 0, NULL, NULL, 'dich-vu-tang-qua', '', 'Dịch vụ tặng quà', '', 1, 'hoasaytinh'),
(40, 'CHUYÊN SẢN XUẤT VÀ GIA CÔNG', '', NULL, NULL, '<ol><li><strong>CỬA CUỐN</strong> - cửa cuốn, cửa cuốn cao cấp, cửa cuốn giá rẻ, cửa cuốn Đài Loan, cửa cuốn Úc, cửa cuốn đức, cửa cuốn khe thoáng, cửa cuốn hợp kim nhôm, cửa cuốn inox, cửa cuốn song ngang, cửa cuốn công nghệ đức.</li>\r\n<li><strong>CỬA KÉO</strong> - cửa kéo Đài Loan, cửa kéo giả Đài Loan , cửa xếp đài loan.</li>\r\n<li><strong>CỬA SẮ</strong>T - cửa pano sắt, cửa số sắt, bông bảo vệ, hàng rào sắt, cửa cổng mở, cửa cổng lùa.</li>\r\n<li><strong>CỬA NHÔM</strong> - cửa pano nhôm, cửa sổ nhôm, cửa bản lề sàn kính cường lực, cửa kính tự động, phòng tắm - phòng xông hơi kính, vách ngăn - mặt dựng nhôm kính - mặt dựng aluminium.</li>\r\n<li><strong>CỬA INOX</strong> - cửa inox, cột cờ inox.</li>\r\n<li><strong>LAN CAN</strong> - CẦU THANG.</li>\r\n<li><strong>TRỤ CẦU THAN</strong>G - trụ cầu thang inox, inox ốp gỗ, gỗ, gỗ xỏ giữa, inox xỏ giữa, sắt sơn tĩnh điện.</li>\r\n<li><strong>CỬA CỔNG XẾP</strong> - xếp sơn tĩnh điện, xếp inox.</li>\r\n<li><strong>MÁI NGÓI - BIỆT THỰ</strong> - mái ngói biệt thự, vì kèo - kho xưởng.</li>\r\n</ol>', '', '', 2, '2012-05-03 01:40:20', 1, 0, NULL, NULL, 'chuyen-san-xuat-va-gia-cong', '', 'CỬA CUỐN - cửa cuốn, cửa cuốn cao cấp, cửa cuốn giá rẻ, cửa cuốn Đài Loan, cửa cuốn Úc, cửa cuốn đức, cửa cuốn khe thoáng, cửa cuốn hợp kim nhôm, cửa cuốn inox, cửa cuốn song ngang, cửa cuốn công nghệ đức.', '', 1, 'cuasat24h'),
(41, 'DỊCH VỤ BẢO HÀNH', '', NULL, NULL, '<p>Mọi sản phẩm cửa cuốn, cửa kéo, cửa sắt, cửa nhôm...của CUASAT24H được bảo hành theo tiêu chuẩn của nhà sản xuất.</p>\r\n<p>Mọi thông tin xin vui lòng liên hệ :</p>\r\n<p>Địa chỉ văn phòng: 93 A (số mới 101) Bình Long, P. Bình Hưng Hoà A, Q. Bình Tân, Tp.HCM</p>\r\n<p>Điện thoại :</p>\r\n<p>Bộ phận văn phòng : (08) 6267 2879 - xin số 101</p>\r\n<p>Bộ phận Kinh Doanh : - xin số 103</p>\r\n<p>Bộ phận thiết kế : - xin số 104</p>\r\n<p>Giám Đốc Kinh Doanh: 0978 745 745 ( Anh Xuân )</p>', '', '', 3, '2012-05-03 01:41:06', 2, 0, NULL, NULL, 'dich-vu-bao-hanh', '', '', '', 1, 'cuasat24h');

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
) ENGINE=InnoDB  DEFAULT CHARSET=utf8 AUTO_INCREMENT=2 ;

--
-- Dumping data for table `dos_module_supports`
--

INSERT INTO `dos_module_supports` (`support_id`, `support_name`, `support_nameen`, `support_phone`, `support_value`, `support_order`, `support_type`, `dos_usernames_username`) VALUES
(1, 'Hỗ trợ khách hàng', '', '01230 456 789', 'groupitsoft', 1, 'yahoo', 'hoasaytinh');

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
) ENGINE=InnoDB  DEFAULT CHARSET=utf8 AUTO_INCREMENT=23 ;

--
-- Dumping data for table `dos_module_video`
--

INSERT INTO `dos_module_video` (`record_id`, `title`, `titleen`, `postdate`, `tag`, `tagen`, `description`, `descriptionen`, `pic_thumb`, `url`, `record_order`, `hits`, `extra_field1`, `extra_field2`, `hot`, `enable`, `dos_module_item_cat_cat_id`) VALUES
(18, 'Bí Quyết Thành Công Dành Cho Tuổi Teen ', '', '2012-04-26 07:52:48', 'bi-quyet-thanh-cong-danh-cho-tuoi-teen', '', 'Bí Quyết Thành Công Dành Cho Tuổi Teen ', '', 'bi-quyet-thanh-cong-danh-cho-tuoi-teen.jpg', 'http://www.youtube.com/watch?v=FzdzK96W6DA', 1, 0, '', '', 0, 1, 11),
(19, 'Nghệ thuật pha chế cà phê ', '', '2012-04-26 09:46:27', 'nghe-thuat-pha-che-ca-phe', '', 'Nghệ thuật pha chế cà phê ', '', 'nghe-thuat-pha-che-ca-phe.jpg', 'http://www.youtube.com/watch?v=wcdnGqBDiA0', 3, 0, '', '', 0, 1, 12),
(20, 'Nghệ thuật trang trí ly cafe', '', '2012-04-26 09:47:41', 'nghe-thuat-trang-tri-ly-cafe', '', 'Nghệ thuật trang trí ly cafe', '', 'nghe-thuat-trang-tri-ly-cafe.jpg', 'http://www.youtube.com/watch?v=x7NgdZPEmxU&feature=related', 2, 0, '', '', 0, 1, 12),
(21, 'Cà Phê Đắng Và Mưa', '', '2012-04-26 09:50:38', 'ca-phe-dang-va-mua', '', 'Cà Phê Đắng Và Mưa (w/ Lyrics) - Thanh Ngọc ', '', 'ca-phe-ang-va-mua.jpg', 'http://www.youtube.com/watch?v=y7JlskJN1DM', 1, 0, '', '', 0, 1, 13),
(22, 'Video Hoa Quỳnh nở', '', '2012-05-02 08:14:01', 'video-hoa-quynh-no', '', '', '', 'video-hoa-quynh-no.jpg', 'http://www.youtube.com/watch?v=JJYDp06iixw', 1, 0, NULL, NULL, 0, 1, 14);

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
) ENGINE=InnoDB  DEFAULT CHARSET=utf8 AUTO_INCREMENT=15 ;

--
-- Dumping data for table `dos_module_video_cat`
--

INSERT INTO `dos_module_video_cat` (`cat_id`, `cat_parent_id`, `pic_thumb`, `cat_title`, `cat_titleen`, `tag`, `tagen`, `description`, `descriptionen`, `cat_order`, `cat_enable`, `dos_usernames_username`) VALUES
(11, 0, '', 'Giới thiệu sách', '', 'gioi-thieu-sach', '', 'Giới thiệu sách', '', 1, 1, '200312'),
(12, 0, '', 'Pha chế cà phê', '', 'pha-che-ca-phe', '', 'Pha chế', '', 1, 1, '230412'),
(13, 0, '', 'Thưởng thức Âm nhạc', '', 'thuong-thuc-am-nhac', '', '', '', 2, 1, '230412'),
(14, 0, '', 'Về hoa Việt Nam', '', 've-hoa-viet-nam', '', '', '', 1, 1, 'hoasaytinh');

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
('keywords', 'Dịch vụ tạo website trực tuyến, create website online, thiết kế web online', 'dos'),
('description', 'Dịch vụ tạo website trực tuyến: Chọn mẫu website, đăng ký tài khoản, chạy thử website, dể dàng quản lý và nhập liệu, dữ liệu được nhập tự động theo ngành nghề bạn chọn', 'dos'),
('title', 'Dos.vn', 'dos'),
('analytics', '<script type="text/javascript">\r\n\r\n  var _gaq = _gaq || [];\r\n  _gaq.push([''_setAccount'', ''UA-30151015-1'']);\r\n  _gaq.push([''_setDomainName'', ''dos.vn'']);\r\n  _gaq.push([''_trackPageview'']);\r\n\r\n  (function() {\r\n    var ga = document.createElement(''script''); ga.type = ''text/javascript''; ga.async = true;\r\n    ga.src = (''https:'' == document.location.protocol ? ''https://ssl'' : ''http://www'') + ''.google-analytics.com/ga.js'';\r\n    var s = document.getElementsByTagName(''script'')[0]; s.parentNode.insertBefore(ga, s);\r\n  })();\r\n\r\n</script>', 'dos');

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
-- Table structure for table `dos_sys_articles`
--

CREATE TABLE IF NOT EXISTS `dos_sys_articles` (
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
  KEY `fk_dos_sys_articles_dos_sys_articles_cat1` (`dos_module_item_cat_cat_id`)
) ENGINE=InnoDB  DEFAULT CHARSET=utf8 AUTO_INCREMENT=9 ;

--
-- Dumping data for table `dos_sys_articles`
--

INSERT INTO `dos_sys_articles` (`record_id`, `title`, `titleen`, `postdate`, `pic_thumb`, `preview`, `previewen`, `detail`, `detailen`, `tag`, `description`, `hits`, `record_order`, `hot`, `extra_field1`, `extra_field2`, `enable`, `dos_module_item_cat_cat_id`) VALUES
(7, 'Bản tin web số 1', NULL, '2012-02-27 01:07:03', '', '<p>\r\n	Mô tả bản tin</p>\r\n', NULL, '<p>\r\n	Chi tiết bản tin</p>\r\n', NULL, 'ban-tin-web-so-1', 'Mô tả bản tin', 0, 1, 0, NULL, NULL, 1, 1),
(8, 'Ban tin 2', NULL, '2012-02-29 02:36:41', '', '<p>\r\n	Mo ta</p>\r\n', NULL, '<p>\r\n	Chi tiet</p>\r\n', NULL, 'ban-tin-2', 'Mo ta', 0, 2, 0, NULL, NULL, 1, 1);

-- --------------------------------------------------------

--
-- Table structure for table `dos_sys_articles_cat`
--

CREATE TABLE IF NOT EXISTS `dos_sys_articles_cat` (
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
) ENGINE=InnoDB  DEFAULT CHARSET=utf8 AUTO_INCREMENT=3 ;

--
-- Dumping data for table `dos_sys_articles_cat`
--

INSERT INTO `dos_sys_articles_cat` (`cat_id`, `cat_parent_id`, `cat_title`, `cat_titleen`, `preview`, `previewen`, `tag`, `description`, `pic_full`, `cat_order`, `cat_extra1`, `cat_extra2`, `cat_enable`) VALUES
(1, 0, 'Hướng dẫn sử dụng web', NULL, 'Các video, bài viết hướng dẫn sử dụng các chức năng, cấu hình các thông số web tại Dos.vn', NULL, 'huong-dan-su-dung-web', 'Các video, bài viết hướng dẫn sử dụng các chức năng, cấu hình các thông số web tại Dos.vn', NULL, 0, NULL, NULL, 1),
(2, 0, 'Cẩm nang chăm sóc khách hàng', NULL, NULL, NULL, 'cam-nang-cham-soc-khach-hang', '', NULL, 1, NULL, NULL, 1);

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
('010312', 'Mẫu than đá: 010312', '2012-02-29 11:38:05', 'Chuyên bán các loại than đá, than cám'),
('020512', 'Mẫu hoa tươi 020512', '2012-05-02 03:10:52', 'Chuyên cung cấp hoa tuoi, hoa cuoi, điện hoa, hoa tuoi van phong, hoa khai trương, hoa chúc mừng, hoa xe, hoa online, hoa chia buồn'),
('070312', 'Mẫu thời trang: 070312', '2012-03-06 13:21:26', 'Chuyên bán các sản phẩm thời trang quần áo mới nhất, với các dịch vụ ưu đãi'),
('130312', 'Mẫu cơ khí: 130312', '2012-03-12 12:01:59', 'Chuyên nghiệp sản xuất ván lạng, ván ép cong định hình và keo tiêu chuẩn Carb p2, keo chịu nước, keo menamim, test mẫu thí nghiệm gỗ đặt tiêu chuẩn Carb p2'),
('180412', 'Mẫu máy tính: 180412', '2012-04-18 00:58:03', 'Mẫu máy tính mã số 180412'),
('200312', 'Mẫu giáo dục: 200312', '2012-03-19 23:43:27', 'Chuyên bán các loại sách cho sinh viên, giá cả bình dân'),
('220312', 'Mẫu nội thất: 220312', '2012-03-21 20:04:36', 'Chuyên bán các loại đồ nội thất, dân dụng'),
('230412', 'Mẫu cafe: 230412', '2012-04-23 07:25:18', 'Mẫu ẩm thực, đồ uống caffe'),
('240312', 'Mẫu thời trang: 240312', '2012-03-24 03:00:26', 'Chuyên bán các loại túi xách cho phụ nữ, và nhiều phụ điện...'),
('260312', 'Mẫu máy tính: 260312', '2012-03-26 06:44:07', 'Chuyên bán các loại máy tính, linh kiện, laptop, pc, sửa chữa'),
('270412', 'Mẫu cơ khí: 270412', '2012-04-27 06:27:56', 'Chuyên bán các loại máy móc, thiết bị cơ khí, cửa sắt...');

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
('010312', 'bds-kien-truc-xay-dung'),
('020512', 'hoa-tuoi'),
('070312', 'thoi-trang'),
('130312', 'bds-kien-truc-xay-dung'),
('180412', 'cong-nghe-thong-tin-vien-thong'),
('200312', 'giao-duc-dao-tao'),
('220312', 'noi-that-ngoai-that'),
('230412', 'am-thuc-drink'),
('240312', 'thoi-trang'),
('260312', 'cong-nghe-thong-tin-vien-thong'),
('270412', 'co-khi-may-moc-thiet-bi');

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
('010312', 'about', 'list_supports'),
('010312', 'about', 'menu_about'),
('010312', 'about', 'products_hot'),
('010312', 'contact', 'advs_left'),
('010312', 'contact', 'list_supports'),
('010312', 'contact', 'menu_products'),
('010312', 'contact', 'products_hot'),
('010312', 'default', 'about_home'),
('010312', 'default', 'advs_left'),
('010312', 'default', 'advs_right'),
('010312', 'default', 'list_supports'),
('010312', 'default', 'menu_products'),
('010312', 'default', 'news_new'),
('010312', 'default', 'products_hot'),
('010312', 'default', 'products_new'),
('010312', 'default', 'video_hot'),
('010312', 'news', 'advs_left'),
('010312', 'news', 'menu_news'),
('010312', 'news', 'news_hot'),
('010312', 'news', 'news_new'),
('010312', 'news', 'video_hot'),
('010312', 'products', 'advs_left'),
('010312', 'products', 'list_supports'),
('010312', 'products', 'menu_products'),
('010312', 'products', 'products_hot'),
('010312', 'services', 'advs_left'),
('010312', 'services', 'list_supports'),
('010312', 'services', 'menu_services'),
('010312', 'services', 'news_new'),
('010312', 'services', 'products_hot'),
('010312', 'video', 'advs_left'),
('010312', 'video', 'list_supports'),
('010312', 'video', 'menu_video'),
('010312', 'video', 'news_new'),
('020512', 'about', 'advs_bottom'),
('020512', 'about', 'advs_left'),
('020512', 'about', 'advs_top'),
('020512', 'about', 'list_supports'),
('020512', 'about', 'menu_about'),
('020512', 'contact', 'advs_bottom'),
('020512', 'contact', 'advs_left'),
('020512', 'contact', 'advs_top'),
('020512', 'contact', 'list_supports'),
('020512', 'contact', 'menu_products'),
('020512', 'default', 'about_home'),
('020512', 'default', 'advs_bottom'),
('020512', 'default', 'advs_left'),
('020512', 'default', 'advs_top'),
('020512', 'default', 'list_supports'),
('020512', 'default', 'menu_products'),
('020512', 'default', 'products_new'),
('020512', 'news', 'advs_bottom'),
('020512', 'news', 'advs_left'),
('020512', 'news', 'advs_top'),
('020512', 'news', 'list_supports'),
('020512', 'news', 'menu_news'),
('020512', 'products', 'advs_bottom'),
('020512', 'products', 'advs_left'),
('020512', 'products', 'advs_top'),
('020512', 'products', 'list_supports'),
('020512', 'products', 'menu_products'),
('020512', 'services', 'advs_bottom'),
('020512', 'services', 'advs_center'),
('020512', 'services', 'advs_top'),
('020512', 'services', 'list_supports'),
('020512', 'services', 'menu_services'),
('020512', 'video', 'advs_bottom'),
('020512', 'video', 'advs_left'),
('020512', 'video', 'advs_top'),
('020512', 'video', 'list_supports'),
('020512', 'video', 'menu_video'),
('070312', 'about', 'advs_left'),
('070312', 'about', 'list_supports'),
('070312', 'about', 'menu_about'),
('070312', 'contact', 'advs_left'),
('070312', 'contact', 'list_supports'),
('070312', 'contact', 'menu_products'),
('070312', 'default', 'about_home'),
('070312', 'default', 'advs_left'),
('070312', 'default', 'list_supports'),
('070312', 'default', 'menu_products'),
('070312', 'default', 'products_hot'),
('070312', 'default', 'products_new'),
('070312', 'news', 'advs_left'),
('070312', 'news', 'list_supports'),
('070312', 'news', 'menu_news'),
('070312', 'news', 'news_new'),
('070312', 'products', 'advs_left'),
('070312', 'products', 'list_supports'),
('070312', 'products', 'menu_products'),
('070312', 'services', 'advs_left'),
('070312', 'services', 'list_supports'),
('070312', 'services', 'menu_services'),
('070312', 'video', 'advs_left'),
('070312', 'video', 'list_supports'),
('070312', 'video', 'menu_video'),
('130312', 'about', 'advs_left'),
('130312', 'about', 'list_supports'),
('130312', 'about', 'menu_about'),
('130312', 'contact', 'advs_left'),
('130312', 'contact', 'list_supports'),
('130312', 'contact', 'menu_products'),
('130312', 'default', 'about_home'),
('130312', 'default', 'advs_left'),
('130312', 'default', 'list_supports'),
('130312', 'default', 'menu_products'),
('130312', 'default', 'products_hot'),
('130312', 'news', 'advs_left'),
('130312', 'news', 'list_supports'),
('130312', 'news', 'menu_news'),
('130312', 'news', 'news_new'),
('130312', 'products', 'advs_left'),
('130312', 'products', 'list_supports'),
('130312', 'products', 'menu_products'),
('130312', 'services', 'advs_left'),
('130312', 'services', 'list_supports'),
('130312', 'services', 'menu_services'),
('130312', 'video', 'advs_left'),
('130312', 'video', 'list_supports'),
('130312', 'video', 'menu_video'),
('180412', 'about', 'advs_left'),
('180412', 'about', 'list_supports'),
('180412', 'about', 'menu_about'),
('180412', 'contact', 'advs_left'),
('180412', 'contact', 'list_supports'),
('180412', 'contact', 'menu_products'),
('180412', 'default', 'about_home'),
('180412', 'default', 'advs_left'),
('180412', 'default', 'list_supports'),
('180412', 'default', 'menu_products'),
('180412', 'default', 'products_hot'),
('180412', 'default', 'products_new'),
('180412', 'news', 'advs_left'),
('180412', 'news', 'list_supports'),
('180412', 'news', 'menu_news'),
('180412', 'news', 'news_new'),
('180412', 'products', 'advs_left'),
('180412', 'products', 'list_supports'),
('180412', 'products', 'menu_products'),
('180412', 'services', 'advs_left'),
('180412', 'services', 'list_supports'),
('180412', 'services', 'menu_services'),
('180412', 'video', 'advs_left'),
('180412', 'video', 'list_supports'),
('180412', 'video', 'menu_video'),
('200312', 'about', 'advs_left'),
('200312', 'about', 'list_supports'),
('200312', 'about', 'menu_about'),
('200312', 'contact', 'advs_left'),
('200312', 'contact', 'list_supports'),
('200312', 'contact', 'menu_products'),
('200312', 'default', 'about_home'),
('200312', 'default', 'advs_left'),
('200312', 'default', 'list_supports'),
('200312', 'default', 'menu_products'),
('200312', 'default', 'products_hot'),
('200312', 'default', 'products_new'),
('200312', 'news', 'advs_left'),
('200312', 'news', 'list_supports'),
('200312', 'news', 'menu_news'),
('200312', 'products', 'advs_left'),
('200312', 'products', 'list_supports'),
('200312', 'products', 'menu_products'),
('200312', 'services', 'advs_left'),
('200312', 'services', 'list_supports'),
('200312', 'services', 'menu_services'),
('200312', 'video', 'advs_left'),
('200312', 'video', 'list_supports'),
('200312', 'video', 'menu_video'),
('220312', 'about', 'advs_left'),
('220312', 'about', 'advs_right'),
('220312', 'about', 'list_supports'),
('220312', 'about', 'menu_about'),
('220312', 'about', 'news_new'),
('220312', 'about', 'products_hot'),
('220312', 'contact', 'advs_left'),
('220312', 'contact', 'advs_right'),
('220312', 'contact', 'list_supports'),
('220312', 'contact', 'menu_products'),
('220312', 'contact', 'news_new'),
('220312', 'contact', 'products_hot'),
('220312', 'default', 'about_home'),
('220312', 'default', 'advs_left'),
('220312', 'default', 'advs_right'),
('220312', 'default', 'list_supports'),
('220312', 'default', 'menu_products'),
('220312', 'default', 'news_new'),
('220312', 'default', 'products_hot'),
('220312', 'default', 'products_new'),
('220312', 'default', 'video_hot'),
('220312', 'news', 'advs_right'),
('220312', 'news', 'menu_news'),
('220312', 'news', 'news_hot'),
('220312', 'news', 'news_new'),
('220312', 'products', 'advs_right'),
('220312', 'products', 'list_supports'),
('220312', 'products', 'menu_products'),
('220312', 'products', 'news_new'),
('220312', 'services', 'advs_right'),
('220312', 'services', 'menu_services'),
('220312', 'services', 'news_new'),
('220312', 'video', 'advs_right'),
('220312', 'video', 'menu_video'),
('220312', 'video', 'news_new'),
('230412', 'about', 'advs_left'),
('230412', 'about', 'list_supports'),
('230412', 'about', 'menu_about'),
('230412', 'contact', 'advs_left'),
('230412', 'contact', 'list_supports'),
('230412', 'contact', 'menu_products'),
('230412', 'default', 'about_home'),
('230412', 'default', 'advs_left'),
('230412', 'default', 'list_supports'),
('230412', 'default', 'menu_products'),
('230412', 'default', 'products_hot'),
('230412', 'news', 'advs_left'),
('230412', 'news', 'list_supports'),
('230412', 'news', 'menu_news'),
('230412', 'products', 'advs_left'),
('230412', 'products', 'list_supports'),
('230412', 'products', 'menu_products'),
('230412', 'services', 'advs_left'),
('230412', 'services', 'list_supports'),
('230412', 'services', 'menu_services'),
('230412', 'video', 'advs_left'),
('230412', 'video', 'list_supports'),
('230412', 'video', 'menu_video'),
('240312', 'about', 'advs_left'),
('240312', 'about', 'list_supports'),
('240312', 'about', 'menu_about'),
('240312', 'contact', 'advs_left'),
('240312', 'contact', 'list_supports'),
('240312', 'contact', 'menu_products'),
('240312', 'default', 'about_home'),
('240312', 'default', 'advs_left'),
('240312', 'default', 'list_supports'),
('240312', 'default', 'menu_products'),
('240312', 'default', 'products_hot'),
('240312', 'default', 'products_new'),
('240312', 'news', 'advs_left'),
('240312', 'news', 'list_supports'),
('240312', 'news', 'menu_news'),
('240312', 'products', 'advs_left'),
('240312', 'products', 'list_supports'),
('240312', 'products', 'menu_products'),
('240312', 'services', 'advs_left'),
('240312', 'services', 'list_supports'),
('240312', 'services', 'menu_services'),
('240312', 'video', 'advs_left'),
('240312', 'video', 'list_supports'),
('240312', 'video', 'menu_video'),
('260312', 'about', 'advs_left'),
('260312', 'about', 'list_supports'),
('260312', 'about', 'menu_about'),
('260312', 'contact', 'advs_left'),
('260312', 'contact', 'list_supports'),
('260312', 'contact', 'menu_products'),
('260312', 'default', 'about_home'),
('260312', 'default', 'advs_left'),
('260312', 'default', 'list_supports'),
('260312', 'default', 'menu_products'),
('260312', 'default', 'products_hot'),
('260312', 'default', 'products_new'),
('260312', 'news', 'advs_left'),
('260312', 'news', 'list_supports'),
('260312', 'news', 'menu_news'),
('260312', 'news', 'news_new'),
('260312', 'products', 'advs_left'),
('260312', 'products', 'list_supports'),
('260312', 'products', 'menu_products'),
('260312', 'services', 'advs_left'),
('260312', 'services', 'list_supports'),
('260312', 'services', 'menu_services'),
('260312', 'video', 'advs_left'),
('260312', 'video', 'list_supports'),
('260312', 'video', 'menu_video'),
('270412', 'about', 'advs_left'),
('270412', 'about', 'advs_right'),
('270412', 'about', 'list_supports'),
('270412', 'about', 'menu_about'),
('270412', 'about', 'products_hot'),
('270412', 'contact', 'advs_left'),
('270412', 'contact', 'advs_right'),
('270412', 'contact', 'list_supports'),
('270412', 'contact', 'menu_products'),
('270412', 'contact', 'products_hot'),
('270412', 'default', 'about_home'),
('270412', 'default', 'advs_left'),
('270412', 'default', 'advs_right'),
('270412', 'default', 'list_supports'),
('270412', 'default', 'menu_products'),
('270412', 'default', 'products_hot'),
('270412', 'default', 'products_new'),
('270412', 'default', 'video_hot'),
('270412', 'news', 'advs_left'),
('270412', 'news', 'advs_right'),
('270412', 'news', 'list_supports'),
('270412', 'news', 'menu_news'),
('270412', 'news', 'news_hot'),
('270412', 'news', 'products_hot'),
('270412', 'products', 'advs_left'),
('270412', 'products', 'advs_right'),
('270412', 'products', 'list_supports'),
('270412', 'products', 'menu_products'),
('270412', 'products', 'news_hot'),
('270412', 'products', 'products_hot'),
('270412', 'services', 'advs_left'),
('270412', 'services', 'advs_right'),
('270412', 'services', 'list_supports'),
('270412', 'services', 'menu_services'),
('270412', 'services', 'products_hot'),
('270412', 'video', 'advs_left'),
('270412', 'video', 'advs_right'),
('270412', 'video', 'list_supports'),
('270412', 'video', 'menu_video'),
('270412', 'video', 'products_hot'),
('270412', 'video', 'video_hot');

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
('070312', 'maioanh@thuonghoi.com', 'e10adc3949ba59abbe56e057f20f883e', '2012-04-25 07:28:23', '', '', '', 'user', 'vi', '', '2012-05-24 17:00:00', 0, '', NULL, 1, '070312', 19, 'thoi-trang'),
('200312', 'maioanh@thuonghoi.com', 'e10adc3949ba59abbe56e057f20f883e', '2012-04-25 07:17:56', '', '', '', 'user', 'vi', '', '2012-05-24 17:00:00', 0, '', NULL, 1, '200312', 1, 'giao-duc-dao-tao'),
('230412', 'maioanh@thuonghoi.com', 'e10adc3949ba59abbe56e057f20f883e', '2012-04-26 09:03:32', '', '', '', 'user', 'vi', '', '2012-05-25 17:00:00', 0, '', NULL, 1, '230412', 19, 'nha-hang-cafe'),
('cuasat24h', 'groupitsoft@gmail.com', 'e10adc3949ba59abbe56e057f20f883e', '2012-05-02 06:35:34', NULL, '', NULL, 'user', 'vi', NULL, '2012-05-31 16:00:00', 0, '20122012', NULL, 1, '270412', 1, 'co-khi-may-moc-thiet-bi'),
('dos', 'thanhansoft@gmail.com', '1960fdca5ecf16c0ddb74fdc814ee348', '2012-02-06 09:58:28', '', '', '', 'administrator', 'vi|en', NULL, '2012-04-14 17:00:00', 0, '', NULL, 1, '230412', 2, 'cong-nghe-thong-tin-vien-thong'),
('gothuytung', 'maioanh@thuonghoi.com', 'e10adc3949ba59abbe56e057f20f883e', '2012-04-28 08:03:03', '', '', '', 'user', 'vi', '', '2012-05-27 17:00:00', 0, '', NULL, 1, '220312', 19, 'noi-that-ngoai-that'),
('hoasaytinh', 'mailgooglepig@gmail.com', 'e10adc3949ba59abbe56e057f20f883e', '2012-05-02 03:14:04', NULL, '01234 567 890', NULL, 'user', 'vi', NULL, '2012-05-31 16:00:00', 0, '20122012', NULL, 1, '020512', 19, 'hoa-tuoi');

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
  PRIMARY KEY (`lang_name`,`dos_usernames_username`),
  KEY `fk_dos_user_langs_dos_usernames1` (`dos_usernames_username`)
) ENGINE=InnoDB DEFAULT CHARSET=utf8;

--
-- Dumping data for table `dos_user_langs`
--

INSERT INTO `dos_user_langs` (`lang_name`, `lang`, `langen`, `dos_usernames_username`) VALUES
('company_name', 'Mẫu 200312', '', '200312'),
('company_name', 'Mẫu 200312', '', '230412'),
('company_name', '', '', 'gothuytung'),
('company_name_footer', 'Mẫu 200312', '', '200312'),
('company_name_footer', 'GỖ THỦY TÙNG', '', 'gothuytung'),
('company_phone', 'Hot line: 0987 001 001', '', 'gothuytung');

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
-- Constraints for table `dos_agents`
--
ALTER TABLE `dos_agents`
  ADD CONSTRAINT `fk_dos_agents_dos_provinces1` FOREIGN KEY (`dos_provinces_province_id`) REFERENCES `dos_provinces` (`province_id`) ON DELETE NO ACTION ON UPDATE NO ACTION;

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
-- Constraints for table `dos_module_pcounter_save`
--
ALTER TABLE `dos_module_pcounter_save`
  ADD CONSTRAINT `fk_dos_module_pcounter_save_dos_usernames1` FOREIGN KEY (`dos_usernames_username`) REFERENCES `dos_usernames` (`username`) ON DELETE NO ACTION ON UPDATE NO ACTION;

--
-- Constraints for table `dos_module_pcounter_users`
--
ALTER TABLE `dos_module_pcounter_users`
  ADD CONSTRAINT `fk_dos_module_pcounter_users_dos_usernames1` FOREIGN KEY (`dos_usernames_username`) REFERENCES `dos_usernames` (`username`) ON DELETE NO ACTION ON UPDATE NO ACTION;

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
-- Constraints for table `dos_sys_articles`
--
ALTER TABLE `dos_sys_articles`
  ADD CONSTRAINT `fk_dos_sys_articles_dos_sys_articles_cat1` FOREIGN KEY (`dos_module_item_cat_cat_id`) REFERENCES `dos_sys_articles_cat` (`cat_id`) ON DELETE NO ACTION ON UPDATE NO ACTION;

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