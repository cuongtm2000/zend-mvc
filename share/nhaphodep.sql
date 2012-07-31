-- phpMyAdmin SQL Dump
-- version 3.4.10.1
-- http://www.phpmyadmin.net
--
-- Host: localhost
-- Generation Time: Jul 31, 2012 at 01:52 AM
-- Server version: 5.1.61
-- PHP Version: 5.3.10

SET SQL_MODE="NO_AUTO_VALUE_ON_ZERO";
SET time_zone = "+00:00";


/*!40101 SET @OLD_CHARACTER_SET_CLIENT=@@CHARACTER_SET_CLIENT */;
/*!40101 SET @OLD_CHARACTER_SET_RESULTS=@@CHARACTER_SET_RESULTS */;
/*!40101 SET @OLD_COLLATION_CONNECTION=@@COLLATION_CONNECTION */;
/*!40101 SET NAMES utf8 */;

--
-- Database: `nhaphodep_data`
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
('advs_bottom_height', 32, '', 'nhadat'),
('advs_bottom_width', 980, '', 'nhadat'),
('advs_left_height', 220, '', 'nhadat'),
('advs_left_width', 200, '', 'nhadat'),
('advs_right_height', 400, '', 'nhadat'),
('advs_right_width', 300, '', 'nhadat'),
('banner_height', 290, '', 'nhadat'),
('banner_width', 725, '', 'nhadat'),
('logo_height', 110, '', 'nhadat'),
('logo_width', 285, '', 'nhadat'),
('max_image_height', 670, '', 'nhadat'),
('max_image_width', 720, '', 'nhadat'),
('news_cat_height', 100, '', 'nhadat'),
('news_cat_width', 143, '', 'nhadat'),
('news_height_thumb', 100, '', 'nhadat'),
('news_num_paging_cat', 10, '', 'nhadat'),
('news_num_paging_hot', 6, '', 'nhadat'),
('news_num_paging_index', 10, '', 'nhadat'),
('news_num_paging_new', 6, '', 'nhadat'),
('news_width_thumb', 143, '', 'nhadat'),
('products_cat_height', 198, '', 'nhadat'),
('products_cat_width', 170, '', 'nhadat'),
('products_height', 500, '', 'nhadat'),
('products_height_thumb', 198, '', 'nhadat'),
('products_num_paging_cat', 20, '', 'nhadat'),
('products_num_paging_hot', 20, '', 'nhadat'),
('products_num_paging_new', 20, '', 'nhadat'),
('products_num_paging_other', 4, '', 'nhadat'),
('products_width', 500, '', 'nhadat'),
('products_width_thumb', 170, '', 'nhadat'),
('services_height', 170, '', 'nhadat'),
('services_width', 170, '', 'nhadat'),
('video_height_thumb', 150, '', 'nhadat'),
('video_num_paging_cat', 16, '', 'nhadat'),
('video_num_paging_index', 16, '', 'nhadat'),
('video_width_thumb', 170, '', 'nhadat');

-- --------------------------------------------------------

--
-- Table structure for table `dos_districts`
--

CREATE TABLE IF NOT EXISTS `dos_districts` (
  `district_id` int(11) NOT NULL AUTO_INCREMENT,
  `district_name` varchar(45) NOT NULL,
  `district_order` int(11) NOT NULL DEFAULT '0',
  `dos_provinces_province` int(11) NOT NULL,
  PRIMARY KEY (`district_id`),
  KEY `dos_provinces_province` (`dos_provinces_province`)
) ENGINE=InnoDB  DEFAULT CHARSET=utf8 AUTO_INCREMENT=698 ;

--
-- Dumping data for table `dos_districts`
--

INSERT INTO `dos_districts` (`district_id`, `district_name`, `district_order`, `dos_provinces_province`) VALUES
(2, 'Long Xuyên', 0, 1),
(3, 'Châu Thành', 0, 1),
(4, 'Châu Phú', 0, 1),
(5, 'An Phú', 0, 1),
(6, 'Châu Đốc', 0, 1),
(7, 'Chợ Mới', 0, 1),
(8, 'Tri Tôn', 0, 1),
(9, 'Thoại Sơn', 0, 1),
(10, 'Phú Tân', 0, 1),
(11, 'Tịnh Biên', 0, 1),
(12, 'Tân Châu', 0, 1),
(13, 'Vũng Tàu', 0, 2),
(14, 'Xuyên Mộc', 0, 2),
(15, 'Tân Thành', 0, 2),
(16, 'Côn Đảo', 0, 2),
(17, 'Châu Đức', 0, 2),
(18, 'Đất Đỏ', 0, 2),
(19, 'Long Điền', 0, 2),
(20, 'Bà Rịa', 0, 2),
(21, 'Thủ Dầu Một', 0, 8),
(22, 'Dầu Tiếng', 0, 8),
(23, 'Dĩ An', 0, 8),
(24, 'Bến Cát', 0, 8),
(25, 'Phú Giáo', 0, 8),
(26, 'Thuận An', 0, 8),
(27, 'Tân Uyên', 0, 8),
(28, 'Đồng Phú', 0, 10),
(29, 'Đồng Xoài', 0, 10),
(30, 'Bù Gia Mập', 0, 10),
(31, 'Bù Đăng', 0, 10),
(32, 'Bù Đốp', 0, 10),
(33, 'Chơn Thành', 0, 10),
(34, 'Phước Long', 0, 10),
(35, 'Lộc Ninh', 0, 10),
(36, 'Hớn Quản', 0, 10),
(37, 'Bình Long', 0, 10),
(38, 'Hàm Thuận Nam', 0, 11),
(39, 'Hàm Tân', 0, 11),
(40, 'Phú Quý', 0, 11),
(41, 'Phan Thiết', 0, 11),
(42, 'Bắc Bình', 0, 11),
(43, 'La Gi', 0, 11),
(44, 'Hàm Thuận Bắc', 0, 11),
(45, 'Đức Linh', 0, 11),
(46, 'Tánh Linh', 0, 11),
(47, 'Tuy Phong', 0, 11),
(48, 'Tuy Phước', 0, 9),
(49, 'Vĩnh Thạnh', 0, 9),
(50, 'Vân Canh', 0, 9),
(51, 'Tây Sơn', 0, 9),
(52, 'An Nhơn', 0, 9),
(53, 'Hoài Nhơn', 0, 9),
(54, 'Qui Nhơn', 0, 9),
(55, 'Phù Cát', 0, 9),
(56, 'Phù Mỹ', 0, 9),
(57, 'Hoài Ân', 0, 9),
(58, 'An Lão', 0, 9),
(59, 'Giá Rai', 0, 3),
(60, 'Bạc Liêu', 0, 3),
(61, 'Hồng Dân', 0, 3),
(62, 'Vĩnh Lợi', 0, 3),
(63, 'Phước Long', 0, 3),
(64, 'Hoà Bình', 0, 3),
(65, 'Đông Hải', 0, 3),
(66, 'Yên Thế', 0, 5),
(67, 'Yên Dũng', 0, 5),
(68, 'Lạng Giang', 0, 5),
(69, 'Lục Nam', 0, 5),
(70, 'Lục Ngạn', 0, 5),
(71, 'Bắc Giang', 0, 5),
(72, 'Hiệp Hòa', 0, 5),
(73, 'Sơn Động', 0, 5),
(74, 'Tân Yên', 0, 5),
(75, 'Việt Yên', 0, 5),
(76, 'Ba Bể', 0, 4),
(77, 'Bắc Kạn', 0, 4),
(78, 'Bạch Thông', 0, 4),
(79, 'Na Rì', 0, 4),
(80, 'Ngân Sơn', 0, 4),
(81, 'Pác Nặm', 0, 4),
(82, 'Chợ Đồn', 0, 4),
(83, 'Chợ Mới', 0, 4),
(84, 'Bắc Ninh', 0, 6),
(85, 'Lương Tài', 0, 6),
(86, 'Yên Phong', 0, 6),
(87, 'Gia Bình', 0, 6),
(88, 'Tiên Du', 0, 6),
(89, 'Thuận Thành', 0, 6),
(90, 'Quế Võ', 0, 6),
(91, 'Từ Sơn', 0, 6),
(92, 'Thạnh Phú', 0, 7),
(93, 'Bình Đại', 0, 7),
(94, 'Chợ Lách', 0, 7),
(95, 'Giồng Trôm', 0, 7),
(96, 'Mỏ Cày Bắc', 0, 7),
(97, 'Mỏ Cày Nam', 0, 7),
(98, 'Ba Tri', 0, 7),
(99, 'Bến Tre', 0, 7),
(100, 'Châu Thành', 0, 7),
(101, 'Hà Quảng', 0, 13),
(102, 'Hòa An', 0, 13),
(103, 'Cao Bằng', 0, 13),
(104, 'Bảo Lâm', 0, 13),
(105, 'Bảo Lạc', 0, 13),
(106, 'Thông Nông', 0, 13),
(107, 'Thạch An', 0, 13),
(108, 'Quảng Uyên', 0, 13),
(109, 'Phục Hòa', 0, 13),
(110, 'Trà Lĩnh', 0, 13),
(111, 'Trùng Khánh', 0, 13),
(112, 'Nguyên Bình', 0, 13),
(113, 'Hạ Lang', 0, 13),
(114, 'Cà Mau', 0, 12),
(115, 'Thới Bình', 0, 12),
(116, 'Phú Tân', 0, 12),
(117, 'Cái Nước', 0, 12),
(118, 'Ngọc Hiển', 0, 12),
(119, 'Trần Văn Thời', 0, 12),
(120, 'U Minh', 0, 12),
(121, 'Năm Căn', 0, 12),
(122, 'Đầm Dơi', 0, 12),
(123, 'Ô Môn', 0, 14),
(124, 'Vĩnh Thạnh', 0, 14),
(125, 'Phong Điền', 0, 14),
(126, 'Ninh Kiều', 0, 14),
(127, 'Thốt Nốt', 0, 14),
(128, 'Thới Lai', 0, 14),
(129, 'Cờ Đỏ', 0, 14),
(130, 'Cái Răng', 0, 14),
(131, 'Bình Thủy', 0, 14),
(132, 'Đức Cơ', 0, 21),
(133, 'Đắk Pơ', 0, 21),
(134, 'Mang Yang', 0, 21),
(135, 'Ia Pa', 0, 21),
(136, 'Ia Grai', 0, 21),
(137, 'KBang', 0, 21),
(138, 'Krông Pa', 0, 21),
(139, 'Kông Chro', 0, 21),
(140, 'Ayun Pa', 0, 21),
(141, 'An Khê', 0, 21),
(142, 'Chư Păh', 0, 21),
(143, 'Chư Prông', 0, 21),
(144, 'Chư Pưh', 0, 21),
(145, 'Chư Sê', 0, 21),
(146, 'Phú Thiện', 0, 21),
(147, 'Pleiku', 0, 21),
(148, 'Đăk Đoa', 0, 21),
(149, 'Mai Châu', 0, 29),
(150, 'Lương Sơn', 0, 29),
(151, 'Lạc Thủy', 0, 29),
(152, 'Lạc Sơn', 0, 29),
(153, 'Đà Bắc', 0, 29),
(154, 'Yên Thủy', 0, 29),
(155, 'Kim Bôi', 0, 29),
(156, 'Kỳ Sơn', 0, 29),
(157, 'Cao Phong', 0, 29),
(158, 'Hoà Bình', 0, 29),
(159, 'Tân Lạc', 0, 29),
(160, 'Yên Minh', 0, 22),
(161, 'Đồng Văn', 0, 22),
(162, 'Bắc Mê', 0, 22),
(163, 'Quản Bạ', 0, 22),
(164, 'Quang Bình', 0, 22),
(165, 'Vị Xuyên', 0, 22),
(166, 'Xín Mần', 0, 22),
(167, 'Mèo Vạc', 0, 22),
(168, 'Hà Giang', 0, 22),
(169, 'Hoàng Su Phì', 0, 22),
(170, 'Bắc Quang', 0, 22),
(171, 'Thanh Liêm', 0, 23),
(172, 'Duy Tiên', 0, 23),
(173, 'Bình Lục', 0, 23),
(174, 'Kim Bảng', 0, 23),
(175, 'Lý Nhân', 0, 23),
(176, 'Phủ Lý', 0, 23),
(177, 'Ứng Hòa', 0, 24),
(178, 'Đống Đa', 0, 24),
(179, 'Đông Anh', 0, 24),
(180, 'Đan Phượng', 0, 24),
(181, 'Từ Liêm', 0, 24),
(182, 'Tây Hồ', 0, 24),
(183, 'Quốc Oai', 0, 24),
(184, 'Phú Xuyên', 0, 24),
(185, 'Phúc Thọ', 0, 24),
(186, 'Thanh Trì', 0, 24),
(187, 'Thanh Oai', 0, 24),
(188, 'Sóc Sơn', 0, 24),
(189, 'Sơn Tây', 0, 24),
(190, 'Thạch Thất', 0, 24),
(191, 'Thường Tín', 0, 24),
(192, 'Thanh Xuân', 0, 24),
(193, 'Hai Bà Trưng', 0, 24),
(194, 'Gia Lâm', 0, 24),
(195, 'Chương Mỹ', 0, 24),
(196, 'Cầu Giấy', 0, 24),
(197, 'Ba Đình', 0, 24),
(198, 'Ba Vì', 0, 24),
(199, 'Long Biên', 0, 24),
(200, 'Hà Đông', 0, 24),
(201, 'Hoàng Mai', 0, 24),
(202, 'Hoàn Kiếm', 0, 24),
(203, 'Hoài Đức', 0, 24),
(204, 'Mê Linh', 0, 24),
(205, 'Mỹ Đức', 0, 24),
(206, 'Can Lộc', 0, 25),
(207, 'Kỳ Anh', 0, 25),
(208, 'Hồng Lĩnh', 0, 25),
(209, 'Hà Tĩnh', 0, 25),
(210, 'Hương Khê', 0, 25),
(211, 'Hương Sơn', 0, 25),
(212, 'Lộc Hà', 0, 25),
(213, 'Nghi Xuân', 0, 25),
(214, 'Đức Thọ', 0, 25),
(215, 'Vũ Quang', 0, 25),
(216, 'Cẩm Xuyên', 0, 25),
(217, 'Thạch Hà', 0, 25),
(218, 'Yên Mỹ', 0, 31),
(219, 'Văn Giang', 0, 31),
(220, 'Ân Thi', 0, 31),
(221, 'Mỹ Hào', 0, 31),
(222, 'Hưng Yên', 0, 31),
(223, 'Kim Động', 0, 31),
(224, 'Khoái Châu', 0, 31),
(225, 'Tiên Lữ', 0, 31),
(226, 'Phù Cừ', 0, 31),
(227, 'Văn Lâm', 0, 31),
(228, 'Gia Lộc', 0, 26),
(229, 'Chí Linh', 0, 26),
(230, 'Cẩm Giàng', 0, 26),
(231, 'Bình Giang', 0, 26),
(232, 'Kim Thành', 0, 26),
(233, 'Kinh Môn', 0, 26),
(234, 'Hải Dương', 0, 26),
(235, 'Nam Sách', 0, 26),
(236, 'Tứ Kỳ', 0, 26),
(237, 'Ninh Giang', 0, 26),
(238, 'Thanh Hà', 0, 26),
(239, 'Thanh Miện', 0, 26),
(240, 'Tiên Lãng', 0, 27),
(241, 'Dương Kinh', 0, 27),
(242, 'Cát Hải', 0, 27),
(243, 'An Dương', 0, 27),
(244, 'An Lão', 0, 27),
(245, 'Bạch Long Vĩ', 0, 27),
(246, 'Kiến An', 0, 27),
(247, 'Kiến Thụy', 0, 27),
(248, 'Hải An', 0, 27),
(249, 'Hồng Bàng', 0, 27),
(250, 'Lê Chân', 0, 27),
(251, 'Ngô Quyền', 0, 27),
(252, 'Vĩnh Bảo', 0, 27),
(253, 'Thuỷ Nguyên', 0, 27),
(254, 'Đồ Sơn', 0, 27),
(255, 'Long Mỹ', 0, 28),
(256, 'Châu Thành', 0, 28),
(257, 'Ngã Bảy', 0, 28),
(258, 'Phụng Hiệp', 0, 28),
(259, 'Châu Thành A', 0, 28),
(260, 'Vị Thanh', 0, 28),
(261, 'Vị Thủy', 0, 28),
(262, 'Trường Sa', 0, 32),
(263, 'Vạn Ninh', 0, 32),
(264, 'Nha Trang', 0, 32),
(265, 'Khánh Vĩnh', 0, 32),
(266, 'Khánh Sơn', 0, 32),
(267, 'Cam Ranh', 0, 32),
(268, 'Diên Khánh', 0, 32),
(269, 'Ninh Hòa', 0, 32),
(270, 'Cam Lâm', 0, 32),
(271, 'Giồng Riềng', 0, 33),
(272, 'Giang Thành', 0, 33),
(273, 'Gò Quao', 0, 33),
(274, 'Phú Quốc', 0, 33),
(275, 'An Minh', 0, 33),
(276, 'An Biên', 0, 33),
(277, 'Châu Thành', 0, 33),
(278, 'Kiên Hải', 0, 33),
(279, 'Kiên Lương', 0, 33),
(280, 'Hà Tiên', 0, 33),
(281, 'Hòn Đất', 0, 33),
(282, 'Tân Hiệp', 0, 33),
(283, 'U Minh Thượng', 0, 33),
(284, 'Rạch Giá', 0, 33),
(285, 'Vĩnh Thuận', 0, 33),
(286, 'Đắk Hà', 0, 34),
(287, 'Đắk Glei', 0, 34),
(288, 'Đăk Tô', 0, 34),
(289, 'Tu Mơ Rông', 0, 34),
(290, 'Sa Thầy', 0, 34),
(291, 'Kon Tum', 0, 34),
(292, 'Kon Rẫy', 0, 34),
(293, 'Kon Plông', 0, 34),
(294, 'Ngọc Hồi', 0, 34),
(295, 'Tân Uyên', 0, 35),
(296, 'Phong Thổ', 0, 35),
(297, 'Mường Tè', 0, 35),
(298, 'Lai Châu', 0, 35),
(299, 'Sìn Hồ', 0, 35),
(300, 'Than Uyên', 0, 35),
(301, 'Tam Đường', 0, 35),
(302, 'Vĩnh Hưng', 0, 39),
(303, 'Thủ Thừa', 0, 39),
(304, 'Thạnh Hóa', 0, 39),
(305, 'Cần Đước', 0, 39),
(306, 'Cần Giuộc', 0, 39),
(307, 'Bến Lức', 0, 39),
(308, 'Châu Thành', 0, 39),
(309, 'Mộc Hóa', 0, 39),
(310, 'Đức Huệ', 0, 39),
(311, 'Tân Trụ', 0, 39),
(312, 'Tân Thạnh', 0, 39),
(313, 'Tân An', 0, 39),
(314, 'Tân Hưng', 0, 39),
(315, 'Đức Hòa', 0, 39),
(316, 'Sa Pa', 0, 37),
(317, 'Si Ma Cai', 0, 37),
(318, 'Văn Bàn', 0, 37),
(319, 'Lào Cai', 0, 37),
(320, 'Mường Khương', 0, 37),
(321, 'Bắc Hà', 0, 37),
(322, 'Bảo Yên', 0, 37),
(323, 'Bảo Thắng', 0, 37),
(324, 'Bát Xát', 0, 37),
(325, 'Đức Trọng', 0, 38),
(326, 'Đơn Dương', 0, 38),
(327, 'Đạ Tẻh', 0, 38),
(328, 'Đạ Huoai', 0, 38),
(329, 'Đam Rông', 0, 38),
(330, 'Lạc Dương', 0, 38),
(331, 'Lâm Hà', 0, 38),
(332, 'Bảo Lộc', 0, 38),
(333, 'Bảo Lâm', 0, 38),
(334, 'Cát Tiên', 0, 38),
(335, 'Di Linh', 0, 38),
(336, 'Đà Lạt', 0, 38),
(337, 'Bình Gia', 0, 36),
(338, 'Bắc Sơn', 0, 36),
(339, 'Cao Lộc', 0, 36),
(340, 'Chi Lăng', 0, 36),
(341, 'Hữu Lũng', 0, 36),
(342, 'Lộc Bình', 0, 36),
(343, 'Lạng Sơn', 0, 36),
(344, 'Đình Lập', 0, 36),
(345, 'Tràng Định', 0, 36),
(346, 'Vãn Lãng', 0, 36),
(347, 'Văn Quan', 0, 36),
(348, 'Trực Ninh', 0, 40),
(349, 'Giao Thủy', 0, 40),
(350, 'Hải Hậu', 0, 40),
(351, 'Mỹ Lộc', 0, 40),
(352, 'Nghĩa Hưng', 0, 40),
(353, 'Nam Trực', 0, 40),
(354, 'Nam Định', 0, 40),
(355, 'Vụ Bản', 0, 40),
(356, 'Ý Yên', 0, 40),
(357, 'Xuân Trường', 0, 40),
(358, 'Tân Kỳ', 0, 41),
(359, 'Vinh', 0, 41),
(360, 'Yên Thành', 0, 41),
(361, 'Đô Lương', 0, 41),
(362, 'Anh Sơn', 0, 41),
(363, 'Con Cuông', 0, 41),
(364, 'Cửa Lò', 0, 41),
(365, 'Diễn Châu', 0, 41),
(366, 'Thái Hòa', 0, 41),
(367, 'Thanh Chương', 0, 41),
(368, 'Quỳ Châu', 0, 41),
(369, 'Tương Dương', 0, 41),
(370, 'Quỳ Hợp', 0, 41),
(371, 'Quỳnh Lưu', 0, 41),
(372, 'Quế Phong', 0, 41),
(373, 'Nam Đàn', 0, 41),
(374, 'Nghi Lộc', 0, 41),
(375, 'Nghĩa Đàn', 0, 41),
(376, 'Hưng Nguyên', 0, 41),
(377, 'Kỳ Sơn', 0, 41),
(378, 'Kim Sơn', 0, 42),
(379, 'Nho Quan', 0, 42),
(380, 'Yên Mô', 0, 42),
(381, 'Ninh Bình', 0, 42),
(382, 'Tam Điệp', 0, 42),
(383, 'Hoa Lư', 0, 42),
(384, 'Gia Viễn', 0, 42),
(385, 'Yên Khánh', 0, 42),
(386, 'Phan Rang-Tháp Chàm', 0, 43),
(387, 'Ninh Phước', 0, 43),
(388, 'Ninh Hải', 0, 43),
(389, 'Ninh Sơn', 0, 43),
(390, 'Bác Ái', 0, 43),
(391, 'Thuận Nam', 0, 43),
(392, 'Thuận Bắc', 0, 43),
(393, 'Yên Lập', 0, 44),
(394, 'Đoan Hùng', 0, 44),
(395, 'Lâm Thao', 0, 44),
(396, 'Hạ Hòa', 0, 44),
(397, 'Cẩm Khê', 0, 44),
(398, 'Thanh Ba', 0, 44),
(399, 'Tam Nông', 0, 44),
(400, 'Thanh Sơn', 0, 44),
(401, 'Thanh Thủy', 0, 44),
(402, 'Phú Thọ', 0, 44),
(403, 'Phù Ninh', 0, 44),
(404, 'Việt Trì', 0, 44),
(405, 'Tân Sơn', 0, 44),
(406, 'Đồng Xuân', 0, 45),
(407, 'Đông Hòa', 0, 45),
(408, 'Tuy Hòa', 0, 45),
(409, 'Tuy An', 0, 45),
(410, 'Tây Hòa', 0, 45),
(411, 'Phú Hòa', 0, 45),
(412, 'Sông Hinh', 0, 45),
(413, 'Sông Cầu', 0, 45),
(414, 'Sơn Hòa', 0, 45),
(415, 'Quảng Trạch', 0, 46),
(416, 'Quảng Ninh', 0, 46),
(417, 'Bố Trạch', 0, 46),
(418, 'Minh Hóa', 0, 46),
(419, 'Lệ Thủy', 0, 46),
(420, 'Đồng Hới', 0, 46),
(421, 'Tuyên Hóa', 0, 46),
(422, 'Đông Giang', 0, 47),
(423, 'Phước Sơn', 0, 47),
(424, 'Quế Sơn', 0, 47),
(425, 'Tây Giang', 0, 47),
(426, 'Điện Bàn', 0, 47),
(427, 'Đại Lộc', 0, 47),
(428, 'Nam Trà My', 0, 47),
(429, 'Hội An', 0, 47),
(430, 'Bắc Trà My', 0, 47),
(431, 'Duy Xuyên', 0, 47),
(432, 'Hiệp Đức', 0, 47),
(433, 'Nông Sơn', 0, 47),
(434, 'Núi Thành', 0, 47),
(435, 'Phú Ninh', 0, 47),
(436, 'Tam Kỳ', 0, 47),
(437, 'Thăng Bình', 0, 47),
(438, 'Tiên Phước', 0, 47),
(439, 'Nam Giang', 0, 47),
(440, 'Mộ Đức', 0, 48),
(441, 'Lý Sơn', 0, 48),
(442, 'Minh Long', 0, 48),
(443, 'Nghĩa Hành', 0, 48),
(444, 'Bình Sơn', 0, 48),
(445, 'Trà Bồng', 0, 48),
(446, 'Sơn Tịnh', 0, 48),
(447, 'Sơn Tây', 0, 48),
(448, 'Ba Tơ', 0, 48),
(449, 'Quảng Ngãi', 0, 48),
(450, 'Tư Nghĩa', 0, 48),
(451, 'Sơn Hà', 0, 48),
(452, 'Tây Trà', 0, 48),
(453, 'Đức Phổ', 0, 48),
(454, 'Cẩm Phả', 0, 49),
(455, 'Bình Liêu', 0, 49),
(456, 'Ba Chẽ', 0, 49),
(457, 'Hoành Bồ', 0, 49),
(458, 'Hạ Long', 0, 49),
(459, 'Hải Hà', 0, 49),
(460, 'Móng Cái', 0, 49),
(461, 'Đông Triều', 0, 49),
(462, 'Đầm Hà', 0, 49),
(463, 'Cô Tô', 0, 49),
(464, 'Tiên Yên', 0, 49),
(465, 'Quảng Yên', 0, 49),
(466, 'Vân Đồn', 0, 49),
(467, 'Uông Bí', 0, 49),
(468, 'Vĩnh Linh', 0, 50),
(469, 'Quảng Trị', 0, 50),
(470, 'Đa Krông', 0, 50),
(471, 'Đông Hà', 0, 50),
(472, 'Hải Lăng', 0, 50),
(473, 'Hướng Hóa', 0, 50),
(474, 'Cam Lộ', 0, 50),
(475, 'Cồn Cỏ', 0, 50),
(476, 'Gio Linh', 0, 50),
(477, 'Triệu Phong', 0, 50),
(478, 'Châu Thành', 0, 51),
(479, 'Kế Sách', 0, 51),
(480, 'Long Phú', 0, 51),
(481, 'Mỹ Tú', 0, 51),
(482, 'Mỹ Xuyên', 0, 51),
(483, 'Ngã Năm', 0, 51),
(484, 'Trần Đề', 0, 51),
(485, 'Vĩnh Châu', 0, 51),
(486, 'Sóc Trăng', 0, 51),
(487, 'Thạnh Trị', 0, 51),
(488, 'Cù Lao Dung', 0, 51),
(489, 'Sơn La', 0, 52),
(490, 'Sốp Cộp', 0, 52),
(491, 'Phù Yên', 0, 52),
(492, 'Quỳnh Nhai', 0, 52),
(493, 'Yên Châu', 0, 52),
(494, 'Mộc Châu', 0, 52),
(495, 'Mường La', 0, 52),
(496, 'Mai Sơn', 0, 52),
(497, 'Bắc Yên', 0, 52),
(498, 'Thuận Châu', 0, 52),
(499, 'Sông Mã', 0, 52),
(500, 'Đông Sơn', 0, 56),
(501, 'Yên Định', 0, 56),
(502, 'Tĩnh Gia', 0, 56),
(503, 'Vĩnh Lộc', 0, 56),
(504, 'Quan Sơn', 0, 56),
(505, 'Nga Sơn', 0, 56),
(506, 'Mường Lát', 0, 56),
(507, 'Hậu Lộc', 0, 56),
(508, 'Hoằng Hóa', 0, 56),
(509, 'Hà Trung', 0, 56),
(510, 'Lang Chánh', 0, 56),
(511, 'Bỉm Sơn', 0, 56),
(512, 'Bá Thước', 0, 56),
(513, 'Cẩm Thủy', 0, 56),
(514, 'Triệu Sơn', 0, 56),
(515, 'Thọ Xuân', 0, 56),
(516, 'Thiệu Hóa', 0, 56),
(517, 'Thường Xuân', 0, 56),
(518, 'Thạch Thành', 0, 56),
(519, 'Sầm Sơn', 0, 56),
(520, 'Thanh Hóa', 0, 56),
(521, 'Như Xuân', 0, 56),
(522, 'Quan Hóa', 0, 56),
(523, 'Quảng Xương', 0, 56),
(524, 'Nông Cống', 0, 56),
(525, 'Như Thanh', 0, 56),
(526, 'Ngọc Lặc', 0, 56),
(527, 'Kiến Xương', 0, 54),
(528, 'Tiền Hải', 0, 54),
(529, 'Hưng Hà', 0, 54),
(530, 'Thái Thụy', 0, 54),
(531, 'Quỳnh Phụ', 0, 54),
(532, 'Thái Bình', 0, 54),
(533, 'Vũ Thư', 0, 54),
(534, 'Đông Hưng', 0, 54),
(535, 'Đại Từ', 0, 55),
(536, 'Võ Nhai', 0, 55),
(537, 'Phổ Yên', 0, 55),
(538, 'Phú Lương', 0, 55),
(539, 'Phú Bình', 0, 55),
(540, 'Sông Công', 0, 55),
(541, 'Thái Nguyên', 0, 55),
(542, 'Định Hóa', 0, 55),
(543, 'Đồng Hỷ', 0, 55),
(544, 'Hương Thủy', 0, 57),
(545, 'Nam Đông', 0, 57),
(546, 'Hương Trà', 0, 57),
(547, 'Huế', 0, 57),
(548, 'Quảng Điền', 0, 57),
(549, 'Phong Điền', 0, 57),
(550, 'Phú Lộc', 0, 57),
(551, 'Phú Vang', 0, 57),
(552, 'A Lưới', 0, 57),
(553, 'Tân Phước', 0, 58),
(554, 'Chợ Gạo', 0, 58),
(555, 'Gò Công Đông', 0, 58),
(556, 'Gò Công Tây', 0, 58),
(557, 'Gò Công', 0, 58),
(558, 'Tân Phú Đông', 0, 58),
(559, 'Mỹ Tho', 0, 58),
(560, 'Cai Lậy', 0, 58),
(561, 'Cái Bè', 0, 58),
(562, 'Châu Thành', 0, 58),
(563, 'Quận 4', 4, 30),
(564, 'Quận 3', 3, 30),
(565, 'Quận 2', 2, 30),
(566, 'Quận 12', 12, 30),
(567, 'Quận 11', 11, 30),
(568, 'Quận 10', 10, 30),
(569, 'Quận 1', 1, 30),
(570, 'Phú Nhuận', 21, 30),
(571, 'Nhà Bè', 20, 30),
(572, 'Thủ Đức', 24, 30),
(573, 'Gò Vấp', 18, 30),
(574, 'Củ Chi', 17, 30),
(575, 'Cần Giờ', 16, 30),
(576, 'Bình Thạnh', 15, 30),
(577, 'Bình Tân', 14, 30),
(578, 'Bình Chánh', 13, 30),
(579, 'Hóc Môn', 19, 30),
(580, 'Quận 9', 9, 30),
(581, 'Quận 8', 8, 30),
(582, 'Quận 7', 7, 30),
(583, 'Quận 6', 6, 30),
(584, 'Quận 5', 5, 30),
(585, 'Tân Phú', 23, 30),
(586, 'Tân Bình', 22, 30),
(587, 'Trà Cú', 0, 59),
(588, 'Trà Vinh', 0, 59),
(589, 'Tiểu Cần', 0, 59),
(590, 'Duyên Hải', 0, 59),
(591, 'Càng Long', 0, 59),
(592, 'Cầu Ngang', 0, 59),
(593, 'Cầu Kè', 0, 59),
(594, 'Châu Thành', 0, 59),
(595, 'Chiêm Hóa', 0, 60),
(596, 'Hàm Yên', 0, 60),
(597, 'Lâm Bình', 0, 60),
(598, 'Na Hang', 0, 60),
(599, 'Yên Sơn', 0, 60),
(600, 'Tuyên Quang', 0, 60),
(601, 'Sơn Dương', 0, 60),
(602, 'Tân Châu', 0, 53),
(603, 'Trảng Bàng', 0, 53),
(604, 'Tây Ninh', 0, 53),
(605, 'Gò Dầu', 0, 53),
(606, 'Dương Minh Châu', 0, 53),
(607, 'Bến Cầu', 0, 53),
(608, 'Châu Thành', 0, 53),
(609, 'Hòa Thành', 0, 53),
(610, 'Tân Biên', 0, 53),
(611, 'Vĩnh Long', 0, 61),
(612, 'Tam Bình', 0, 61),
(613, 'Bình Tân', 0, 61),
(614, 'Bình Minh', 0, 61),
(615, 'Mang Thít', 0, 61),
(616, 'Long Hồ', 0, 61),
(617, 'Vũng Liêm', 0, 61),
(618, 'Trà Ôn', 0, 61),
(619, 'Tam Dương', 0, 62),
(620, 'Phúc Yên', 0, 62),
(621, 'Vĩnh Tường', 0, 62),
(622, 'Vĩnh Yên', 0, 62),
(623, 'Yên Lạc', 0, 62),
(624, 'Lập Thạch', 0, 62),
(625, 'Bình Xuyên', 0, 62),
(626, 'Sông Lô', 0, 62),
(627, 'Tam Đảo', 0, 62),
(628, 'Trạm Tấu', 0, 63),
(629, 'Trấn Yên', 0, 63),
(630, 'Văn Yên', 0, 63),
(631, 'Văn Chấn', 0, 63),
(632, 'Mù Căng Chải', 0, 63),
(633, 'Yên Bình', 0, 63),
(634, 'Yên Bái', 0, 63),
(635, 'Nghĩa Lộ', 0, 63),
(636, 'Lục Yên', 0, 63),
(637, 'Mường Nhé', 0, 18),
(638, 'Mường Chà', 0, 18),
(639, 'Tủa Chùa', 0, 18),
(640, 'Mường Ảng', 0, 18),
(641, 'Mường Lay', 0, 18),
(642, 'Điện Biên Phủ', 0, 18),
(643, 'Điện Biên Đông', 0, 18),
(644, 'Tuần Giáo', 0, 18),
(645, 'Điện Biên', 0, 18),
(646, 'Thanh Khê', 0, 15),
(647, 'Sơn Trà', 0, 15),
(648, 'Hoà Vang', 0, 15),
(649, 'Cẩm Lệ', 0, 15),
(650, 'Liên Chiểu', 0, 15),
(651, 'Hoàng Sa', 0, 15),
(652, 'Hải Châu', 0, 15),
(653, 'Ngũ Hành Sơn', 0, 15),
(654, 'Ea Súp', 0, 16),
(655, 'Ea Kar', 0, 16),
(656, 'Ea H''leo', 0, 16),
(657, 'M''Đrăk', 0, 16),
(658, 'Lắk', 0, 16),
(659, 'Krông Bông', 0, 16),
(660, 'Krông Búk', 0, 16),
(661, 'Krông Năng', 0, 16),
(662, 'Krông Ana', 0, 16),
(663, 'Krông Pắk', 0, 16),
(664, 'Buôn Hồ', 0, 16),
(665, 'Buôn Ma Thuột', 0, 16),
(666, 'Buôn Đôn', 0, 16),
(667, 'Cư Kuin', 0, 16),
(668, 'Cư M''gar', 0, 16),
(669, 'Đăk Glong', 0, 17),
(670, 'Đăk Song', 0, 17),
(671, 'Tuy Đức', 0, 17),
(672, 'Đăk R''Lấp', 0, 17),
(673, 'Đăk Mil', 0, 17),
(674, 'Krông Nô', 0, 17),
(675, 'Gia Nghĩa', 0, 17),
(676, 'Cư Jút', 0, 17),
(677, 'Vĩnh Cửu', 0, 19),
(678, 'Tân Phú', 0, 19),
(679, 'Trảng Bom', 0, 19),
(680, 'Nhơn Trạch', 0, 19),
(681, 'Thống Nhất', 0, 19),
(682, 'Cẩm Mỹ', 0, 19),
(683, 'Biên Hòa', 0, 19),
(684, 'Long Thành', 0, 19),
(685, 'Long Khánh', 0, 19),
(686, 'Định Quán', 0, 19),
(687, 'Xuân Lộc', 0, 19),
(688, 'Tân Hồng', 0, 20),
(689, 'Tháp Mười', 0, 20),
(690, 'Cao Lãnh', 0, 20),
(691, 'Châu Thành', 0, 20),
(692, 'Hồng Ngự', 0, 20),
(693, 'Lai Vung', 0, 20),
(694, 'Lấp Vò', 0, 20),
(695, 'Sa Đéc', 0, 20),
(696, 'Tam Nông', 0, 20),
(697, 'Thanh Bình', 0, 20);

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
('add_new', 'Đăng tin', 'Add new', 0),
('add_row', 'Thêm dòng', 'Add row', 1),
('advs', 'Quảng cáo', 'Adv', 0),
('banner', 'Logo &amp; Banner', 'Logo &amp; Banner', 0),
('cancel', 'Hủy bỏ', 'Cancel', 0),
('cart', 'Giỏ hàng', 'Cart', 0),
('cat_parent', 'Danh mục', 'Category', 0),
('cat_title', 'Danh mục', 'Category', 0),
('cat_titleen', 'Danh mục En', 'Category', 1),
('company_name', 'Công ty cổ phần Thương Hội', 'Thuong Hoi JSC', 0),
('company_name_footer', 'Công ty cổ phần Thương Hội', 'Thuong Hoi JSC', 0),
('company_phone', 'Phone: 0929001001 (An)', 'Phone: 0929001001 (An)', 0),
('contact', 'Liên hệ', 'Contact', 0),
('contactSuccess', 'Cảm ơn bạn đã liên hệ với chúng tôi. Nhân viên chúng tôi sẽ liên hệ với bạn trong thời gian sớm nhất.', 'Thank you for contacting us. We will respond to you as soon as possible.', 0),
('contact_msg', 'Quý khách có thể liên hệ với chúng tôi bằng cách điền đầy đủ thông tin vào mẫu sau:', 'Complete the form below to contact us:', 0),
('content', 'Nội dung', 'Content', 0),
('contenten', 'Nội dung En', 'Content En', 0),
('copyright', 'Copyright © 2012 by Dos.vn', 'Copyright © 2012 by Dos.vn', 0),
('counter', 'Thống kê truy cập', 'Online counter', 0),
('create_date', 'Ngày tạo', 'Create date', 1),
('default', 'Trang chủ', 'Home page', 0),
('delete', 'Xóa', 'Delete', 1),
('description', 'Mô tả', 'Decription', 0),
('descriptionen', 'Mô tả En', 'Description', 0),
('detail', 'Chi tiết', 'Detail', 0),
('developed', 'Phát triển bởi', 'Developed by', 0),
('district', 'Quận/huyện', NULL, 0),
('edit', 'Chỉnh sửa', 'Edit', 0),
('en', 'English', 'English', 0),
('hidden', 'Ẩn', 'Hidden', 0),
('hot', 'Nổi bật', 'Hot', 0),
('new', 'Mới', 'New', 0),
('news', 'Tin tức', 'News & Events', 0),
('normal', 'Bình thường', 'Normal', 0),
('no_record', 'Không tồn tại mẫu tin', 'No record', 0),
('order', 'Thứ tự', 'Order', 1),
('other', 'Khác', 'Other', 0),
('picture', 'Hình ảnh', 'Picture', 1),
('pic_desc', 'Hình mô tả', 'Picture decription', 0),
('pic_full', 'Hình lớn', 'Picture large', 0),
('pic_thumb', 'Hình thu nhỏ', 'Picture thumbnail', 0),
('preview', 'Giới thiệu sơ lược', 'Preview', 1),
('previewen', 'Giới thiệu sơ lược En', 'Preview', 1),
('products', 'Sản phẩm', 'Products', 0),
('province', 'Tỉnh thành', NULL, 0),
('read_more', 'Xem tiếp', 'Read more', 0),
('remove_pic', 'Xóa ảnh này', 'Delete this picture', 0),
('services', 'Dịch vụ', 'Services', 0),
('show', 'Hiển thị', 'Show', 0),
('sort', 'Sắp xếp', 'Sort', 1),
('supports', 'Hỗ trợ trực tuyến', 'Online support', 0),
('synchronous', 'Đồng bộ', 'Synchronous', 1),
('tag', 'Liên kết', 'Link', 0),
('tagen', 'Liên kết En', 'Link', 0),
('title', 'Tiêu đề', 'Title', 0),
('titleen', 'Tiêu đề En', 'Title En', 0),
('type_parent', 'Nhu cầu', NULL, 0),
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
('about', 'nhaphodep'),
('advs', 'nhaphodep'),
('banner', 'nhaphodep'),
('contact', 'nhaphodep'),
('news', 'nhaphodep'),
('products', 'nhaphodep'),
('services', 'nhaphodep'),
('supports', 'nhaphodep');

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
) ENGINE=InnoDB  DEFAULT CHARSET=utf8 AUTO_INCREMENT=4 ;

--
-- Dumping data for table `dos_module_abouts`
--

INSERT INTO `dos_module_abouts` (`record_id`, `title`, `titleen`, `content`, `contenten`, `hit`, `created`, `record_order`, `hot`, `extra_field1`, `extra_field2`, `tag`, `tagen`, `description`, `descriptionen`, `activated`, `dos_usernames_username`) VALUES
(1, 'Nhà Phố Đẹp', '', '<p><a href="http://www.nhaphodep.vn">www.nhaphodep.vn</a> chuyên quảng cáo các sản phẩm BĐS là nơi đáng tin cậy để mọi người có thể quảng cáo các sản phẩm BĐS cần bán của mình</p>', '', 2144, '2012-07-04 08:13:47', 1, 1, NULL, NULL, 'nha-pho-dep', '', 'www.nhaphodep.vn chuyên quảng cáo các sản phẩm BĐS là nơi đáng tin cậy để mọi người có thể quảng cáo các sản phẩm BĐS cần bán của mình', '', 1, 'nhaphodep'),
(2, 'Các quy định tại NhaPhoDep.vn', '', '<p>QUY ĐỊNH ĐĂNG TIN TẠI NHAPHODEP.VN<br /><br />1. Chúng tôi toàn quyền quyết định về việc lưu giữ hay loại bỏ tin đã đăng trên trang web này mà không cần báo trước.<br />2. Chúng tôi không bảo đảm về tính chính xác cũng như Chúng tôi không chịu trách nhiệm về những thông tin từ các thành viên đăng ...<br />3. Chúng tôi không chịu bất cứ trách nhiệm pháp lý hoặc bồi thường thiệt hại nào về việc mất mát hay hư hỏng đối với những tin đã đăng...<br />4. Không đăng tin liên quan tới chính trị, tôn giáo, chống phá nhà nước CHXHCN VIỆT NAM.<br />5. Không đăng tin, hình ảnh liên quan tới sex..<br />6. Không quảng bá, giới thiệu các phần mềm crack, hack...<br />7. Không dùng từ ngữ thiếu văn hóa, không thách thức, nói xấu lẫn nhau.<br />8. Không đăng những tin vi phạm pháp luật Việt nam cũng như thuần phong mỹ tục của người Việt.<br />9. Không được đăng tin trùng lặp nhau liên tục, mỗi tin trùng lặp nội dung chỉ được phép đăng tin 01 lần/ 01 tháng. Tất cả thông tin muốn đăng trên nhaphodep.vn phải là thông tin mua, bán, thuê và cho thuê bất động sản.<br />10 . Các tin đăng phải có tiêu đề viết hoa và nội dung rõ ràng, đầy đủ, phải dùng tiếng Việt có dấu. Tránh gây hiểu lầm, phải điền đầy đủ thông tin như mức giá, kích thước, diện tích, địa chỉ, số điện thoại, email ....và hình ảnh của bất động sản nếu có.<br />12. Các trang web có nội dung tương tự nhaphodep.vn không được đăng quảng cáo trên site này.<br />Chúng tôi có toàn quyền thay đổi một hay nhiều điều khoản có trong quy định này mà không cần giải thích lý do và cũng không cần phải thông báo trước.</p>\n<p>Mọi thành viên, khách hàng, đối tác có trách nhiệm thường xuyên truy cập trang quy định này, xem mọi sự thay đổi, bổ sung, trong quy định, xác nhận và đồng ý với mọi phần sửa đổi, bổ sung.<br />NHAPHODEP.VN</p>', '', 17, '2012-07-21 08:37:37', 2, 0, NULL, NULL, 'cac-quy-dinh-tai-nhaphodepvn', '', '', '', 1, 'nhaphodep'),
(3, 'Hướng dẫn các thao tác trên nhaphodep.vn', '', '<ol><li>Đăng nhập</li>\n<li>Đăng xuất</li>\n<li>Viết tin</li>\n<li>Đổi thông tin, mật khẩu</li>\n</ol>', '', 37, '2012-07-21 09:36:32', 3, 0, NULL, NULL, 'huong-dan-cac-thao-tac-tren-nhaphodepvn', '', '', '', 1, 'nhaphodep');

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
) ENGINE=InnoDB  DEFAULT CHARSET=utf8 AUTO_INCREMENT=7 ;

--
-- Dumping data for table `dos_module_advs`
--

INSERT INTO `dos_module_advs` (`record_id`, `title`, `titleen`, `pic_thumb`, `url`, `create_date`, `start_date`, `end_date`, `hits`, `record_order`, `position`, `type`, `enable`, `dos_usernames_username`) VALUES
(3, 'Dịch vụ ký gửi nhà đất', NULL, 'dich-vu-ky-gui-nha-dat.jpg', 'http://nhaphodep.vn', '2012-07-04 04:27:06', '2012-07-03 17:00:00', '2012-07-30 17:00:00', 0, 1, 'right', '_bank', 0, 'nhaphodep'),
(4, 'Mua Yến Sào', NULL, 'mua-yen-sao.jpg', 'http://muayensao.dos.vn/', '2012-07-22 08:34:01', '2012-07-21 17:00:00', '2012-10-07 17:00:00', 0, 2, 'right', '_bank', 1, 'nhaphodep'),
(5, 'Thiết kế web', NULL, 'thiet-ke-web.jpg', 'http://dos.vn/', '2012-07-22 08:38:25', '2012-07-21 17:00:00', '2012-09-04 17:00:00', 0, 3, 'right', '_bank', 1, 'nhaphodep'),
(6, 'Nam Á Bank', NULL, 'nam--bank.gif', 'http://namabank.com.vn/content/read/70-tin-nam-a-bank/1626/nam-a-bank-giam-manh-lai-suat-cho-vay-tieu-dung-ca-nhan', '2012-07-30 07:46:44', '2012-07-29 17:00:00', '2012-08-30 17:00:00', 0, 4, 'right', '_bank', 0, 'nhaphodep');

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
) ENGINE=InnoDB  DEFAULT CHARSET=utf8 AUTO_INCREMENT=3 ;

--
-- Dumping data for table `dos_module_banners`
--

INSERT INTO `dos_module_banners` (`banner_id`, `banner_date`, `banner_name`, `banner_url`, `banner_link`, `banner_order`, `banner_type`, `position`, `enable`, `dos_usernames_username`) VALUES
(1, '2012-07-05 04:07:45', 'Cty CP TM - DV BĐS Khang Danh', 'cty-cp-tm-dv-bs-khang-danh.gif', 'http://khangdanh.com/', 1, 'banners', 'default', 1, 'nhaphodep'),
(2, '2012-07-16 02:35:02', 'http://nhaphodep.vn/', 'httpnhaphodep-vn.png', 'http://khangdanh.com/index.php', 2, 'logo', 'default', 1, 'nhaphodep');

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
(1, 'Liên hệ với chúng tôi', '', '<p style="text-align:center;"><span style="font-size:medium;"><strong>WWW.NHAPHODEP.VN</strong></span></p>\n<p style="text-align:center;">R4 - 16 Đường Hưng Gia 3 - Phú Mỹ Hưng Q.7 Tp.HCM</p>\n<p style="text-align:center;">CHUYÊN QUẢNG CÁO BẤT ĐỘNG SẢN TẠI TP.HCM</p>', '', '2012-07-11 09:21:01', 1, 0, 0, 'lien-he-voi-chung-toi', '', 'WWW.NHAPHODEP.VN', '', '1', 'nhaphodep');

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
) ENGINE=InnoDB  DEFAULT CHARSET=utf8 AUTO_INCREMENT=203 ;

--
-- Dumping data for table `dos_module_news`
--

INSERT INTO `dos_module_news` (`record_id`, `title`, `titleen`, `postdate`, `pic_thumb`, `preview`, `previewen`, `content`, `contenten`, `tag`, `tagen`, `description`, `descriptionen`, `hits`, `record_order`, `hot`, `extra_field1`, `extra_field2`, `enable`, `dos_module_item_cat_cat_id`) VALUES
(194, 'Nở rộ xu hướng... mua nhà trả góp', '', '2012-07-04 08:24:38', 'no-ro-xu-huong----mua-nha-tra-gop.jpg', '<p><strong>Thay vì trả tiền thuê nhà mỗi tháng, người mua có thể dùng khoản tiền tương đương để trả góp, mua dần cho mình một căn nhà.</strong></p>', '', '<p>Giá mua trả góp nhà giảm mạnh, thậm chí rẻ hơn giá thuê nhà hàng tháng đang khiến người tiêu dùng lại "dấy lên" mong muốn được sở hữu một ngôi nhà.</p>\n<p><img src="/public/userfiles/image/nhaphodep/image/advs/040707.jpeg" alt="" width="256" height="197" /></p>\n<p>Vào cuối tháng 5/2012, Shivram Anantharaman vẫn phải chi 2.060 USD mỗi tháng tiền thuê nhà. Nhưng từ tháng 6 này, anh chỉ cần chi khoảng 2.000 USD mỗi tháng. Điều đáng nói là, anh đang chi để cuối cùng sẽ sở hữu căn nhà này thay vì trả lại cho chủ nhà.</p>\n<p>Nhờ thị trường nhà đất đang giảm đi trông thấy từ Tây sang Đông, những người thu nhập khá tại Singapore như Shivram đã có một thay đổi mang tính cách mạng với cuộc sống của mình. Thay vì trả tiền thuê nhà mỗi tháng, họ dùng chính khoản tiền tương đương để trả góp, mua cho mình một căn nhà.</p>\n<p>Trong khi giá thuê căn hộ ở Singapore không giảm mấy, giá mua bán nhà đất lại xuống thấp rõ rệt. Cơn suy thoái của thị trường nhà đất đang trải rộng khắp nơi, từ Mỹ cho tới Singapore. Đồng thời, giống như nhiều nước khác tại khu vực Đông Nam Á, Chính phủ Singapore cũng muốn giảm nhiệt thị trường bất động sản nhằm tránh bong bóng nhà đất và đưa loại tài sản này về gần với giá trị thực hơn. Thêm vào đó, lãi suất ở các nước Đông Nam Á đang giảm dần tới mức có thể hấp dẫn người vay tiêu dùng.</p>\n<p>Những người có nhu cầu thực không bỏ qua cơ hội hiếm có đó. “Với giá nhà đất đang rẻ đi trông thấy, tạo ra cơ hội mua nhà cho những người không có nhiều tiền để dành nhưng có đủ tiền trả góp hằng tháng như tôi”, Shivram nói.</p>\n<p>Hiện nay, số người sẵn sàng mua nhà ở Singapore đã ở mức cao nhất trong lịch sử. Mua một căn hộ trung cấp khoảng 100 m2, một cặp vợ chồng trung lưu ở đây phải dành ra khoảng 36,7% tổng thu nhập hằng tháng để trả góp cho ngân hàng trong vòng 30 năm, theo tính toán của hãng truyền thông tài chính Mỹ Bloomberg. Đây là mức chi thấp nhất đối với việc mua nhà trả góp trong lịch sử đảo quốc này.</p>\n<p>Tương tự, ở Mỹ cũng đang có nhiều người quyết định ký hợp đồng mua nhà trong thời điểm nhà đất hạ giá. Theo Hiệp hội Bất động sản Mỹ, số người mua nhà đã qua sở hữu trong tháng 5 tăng 5,9% so với cùng kỳ năm ngoái. Tại Mỹ, việc mua nhà đã qua sở hữu chiếm khoảng 90% thị trường nhà đất.</p>\n<p>Sau 4 năm thuê nhà, Kelly Carlson, 36 tuổi, thu nhập 54.600 USD/năm, làm việc cho Ngân hàng Wells Fargo &amp; Co, đã quyết định thôi kiếp ở thuê. Chị mua căn hộ 2 phòng ngủ ở Minnesota trị giá 105.350 USD vào cuối tháng 5 vừa qua. Tiền mua nhà được trả bằng lương của chị, với lãi suất 3,875%, trả trong vòng 30 năm. “Con tôi rất thích khi được chơi trong căn nhà rộng rãi hơn. Còn tôi không phải trả nhiều hơn nhưng lại được sở hữu tài sản riêng”, chị nói.</p>\n<p>Những người như Kelly đang hưởng lợi từ giá nhà đất và lãi suất cho vay mua nhà cùng hạ tại Mỹ. Giá nhà đất hiện nay tại Mỹ đã giảm khoảng 34% so với tháng 7.2006. Cùng với đó, các công ty môi giới đã ra sức tung chiêu để giúp những người đang thuê nhà hướng tới việc mua luôn căn hộ. Thống kê của Hiệp hội các nhà môi giới bất động sản Mỹ cho thấy, số lượng người vay mua nhà trong năm nay sẽ tăng khoảng 2% ở Minnesota, 15% ở Iowa và 30% ở Maryland.</p>\n<p>“Các ngân hàng sẵn sàng cho những người có nhu cầu vay mua nhà. Chân thành mà nói, chúng tôi nhìn thấy triển vọng hưởng lợi lớn từ những thương vụ nhỏ lẻ kiểu này”, Rob Tietz, Giám đốc tín dụng của quỹ tín dụng Iowa Finance, nhận định.</p>\n<p>Ở Việt Nam, chưa có một thống kê chính thức nào về mức độ sẵn sàng mua nhà như ở Singapore hay Mỹ. Tuy nhiên, những gì đang diễn ra trên thị trường cho thấy đã xuất hiện những điểm tương đồng.</p>\n<p>Có lẽ chưa lúc nào những người có nhu cầu nhà ở lại cảm thấy cơ hội gần kề như lúc này. Nếu như trước đây giá bất động sản bị đẩy lên quá cao, người dân không thể mơ đến một ngôi nhà của riêng họ thì hiện nay các doanh nghiệp địa ốc đã buộc phải điều chỉnh giá bất động sản thấp hơn và nhiều giấc mơ an cư đang dần trở thành hiện thực.</p>\n<p>Các chủ dự án, sàn giao dịch nhà đất liên tục đưa ra những căn nhà tươm tất với giá ngày càng hấp dẫn. Các căn hộ chung cư cũng liên tiếp được bung ra với gói khuyến mãi kèm theo ngày càng phình to. Từ khuyến mãi 1 cây vàng cách đây vài tháng, nay cũng căn hộ đó khuyến mãi nguyên gói nội thất trị giá cả trăm triệu đồng.</p>\n<p>Không chuyên nghiệp trong khâu khuyến mãi, những người có nhà cần bán cũng có cách riêng để mời gọi khách mua tới với mình nhanh hơn. Trên nhiều trang rao bán bất động sản, có những căn nhà được rao bán với giá 3 tỉ đồng vào tháng 2.2012, một tháng sau đã rao lại với giá 2,7 tỉ đồng và lúc này thì đăng biển bán với giá 2,1 tỉ đồng. Tất nhiên cuối đoạn tin có kèm dòng “còn thương lượng, ưu tiên người có thiện chí mua”.</p>\n<p>Số người có thiện chí cũng đang tăng lên thấy rõ. Với giá nhà đất giảm đi trông thấy, đã xuất hiện ngày càng nhiều người đi săn nhà giá rẻ. Đặc biệt trong số đó, có sự gia nhập tích cực hơn hẳn của những người có thu nhập khá và ổn định ở các thành phố lớn như Hà Nội, Tp.HCM.</p>\n<p>Các ngân hàng Việt Nam đã nhìn thấy xu hướng đó và nhanh chóng thi nhau đưa lời gọi mời những đôi vợ chồng làm công ăn lương mau chóng dùng chính đồng lương của mình mà về với căn nhà mơ ước. “Sản phẩm Cho vay mua căn hộ, nhà đất dự án của chúng tôi sẽ nâng bước cho bạn thực hiện những dự định ấp ủ bấy lâu nay một cách hiệu quả nhất. Bạn sẽ được hỗ trợ đến 80% nhu cầu vốn với thời hạn cho vay đến 240 tháng. Để có được một căn hộ, nhà đất dự án như ý, bạn chỉ cần thực hiện những thủ tục đơn giản và nhanh chóng”. Đó là lời chào mời mà Ngân hàng Quân đội đang cho đăng tải. Các ngân hàng khác cũng có những lời mời tương tự.</p>\n<p>Mua nhà trả góp không xa lạ gì với người Việt Nam. Tuy nhiên, khi giá nhà rẻ đi trông thấy trong khi giá thuê căn hộ, nhà nguyên căn vẫn không giảm tương ứng khiến lựa chọn mua nhà trả góp càng được dịp nở rộ. Thay vì trả hơn 10 triệu/tháng cho căn nhà đang thuê tại quận 2, Tp.HCM, anh Phạm Khánh Việt, 40 tuổi, đã quyết định vay tiền Ngân hàng VID Public để trả góp mỗi tháng cũng từng ấy tiền cho Ngân hàng trong vòng 20 năm. “Tiền trả mỗi tháng cũng vậy, nhưng được ở căn hộ của mình. Nói là vay 20 năm, nhưng khi làm ăn khấm khá, có khoản tiền lớn tôi sẽ trả trước hạn cho Ngân hàng”, anh chia sẻ sau khi hoàn thành thủ tục vay tiền ngân hàng mua căn hộ giá 1,5 tỉ đồng ở quận Bình Thạnh.</p>\n<p>Hiện ngày càng nhiều chủ đầu tư dự án căn hộ thương mại phải chấp nhận lượm bạc lẻ thông qua việc đẩy mạnh bán trả góp căn hộ nhằm đưa sản phẩm tới gần tầm tay người mua. Đối với các chủ nhà đất cá nhân không quen bán trả góp, đã có hàng loạt ngân hàng tích cực nhập cuộc. Ngân hàng sẵn lòng cung cấp tiền chẵn cho người bán và chấp nhận thu tiền lẻ trả góp hằng tháng của người mua.</p>', '', 'no-ro-xu-huong-mua-nha-tra-gop', '', '', '', 0, 1, 0, NULL, NULL, 1, 113),
(195, 'Thị trường bất động sản: Vào dễ, ra mới khó', '', '2012-07-04 08:29:55', 'thi-truong-bat-dong-san-vao-de-ra-moi-kho.jpg', '<p>Vào lúc này, có không ít lý do để những người có tiền cũng không còn muốn "dây" vào nhà đất.</p>', '', '<p><strong>Vào lúc này, có không ít lý do để những người có tiền cũng không còn muốn "dây" vào nhà đất.</strong><br />Đã qua rồi cái thời nhà đầu tư, đầu cơ phải chạy chọt hoặc xếp hàng để có được một suất chuyển nhượng đất nền hay mua căn hộ chung cư. Hiện nay, khi cung bất động sản đang thừa thãi và người mua chưa sẵn lòng trả tiền cho loại hàng hóa mà giá cả đang bị xem là vượt xa giá trị thực thì đất nền hoặc căn hộ đã trở nên dễ mua hơn bao giờ hết.</p>\n<p>Quảng cáo rao bán bất động sản tràn ngập khắp nơi. Chủ đầu tư chiều chuộng người mua hết cỡ, tung ra nhiều chương trình khuyến mãi như mua nhà, đất tặng vàng, mua căn hộ tặng xe hơi, lãi suất ưu đãi, chiết khấu cao (tức giảm giá mà không nói ra).</p>\n<p>Tuy vậy, nhiều khó khăn vẫn chờ người mua phía trước.</p>\n<p><img src="/public/userfiles/image/nhaphodep/image/advs/040704.jpeg" alt="" width="259" height="194" /><br /><strong>Rắc rối chuyển nhượng</strong><br />Hiện nay, nếu nhà đầu tư, đầu cơ chưa nhận bàn giao căn hộ hoặc đất nền có nhà (từ năm 2004, Chính phủ không cho chuyển nhượng đất nền nữa) thì thủ tục chuyển nhượng khá phức tạp, gây phiền toái và mất thời gian cho cả họ lẫn người mua.</p>\n<p>Từ cuối năm 2010, theo quy định, mua bán căn hộ chung cư, chuyển nhượng đất nền, các bên phải lập văn bản chuyển nhượng hợp đồng mua bán và phải có chứng nhận của phòng công chứng. Tại đây, người chuyển nhượng phải xuất trình hợp đồng mua bán đã ký với chủ đầu tư. Nếu chuyển nhượng lần thứ hai thì xuất trình văn bản chuyển nhượng hợp đồng mua bán của lần trước.</p>\n<p>Sau đó, một trong hai bên nộp bản sao giấy tờ cho cơ quan thuế để làm thủ tục đóng thuế thu nhập. Đóng thuế xong, bên nhận chuyển nhượng sẽ nộp hồ sơ đề nghị chuyển nhượng để chủ đầu tư xác nhận vào hợp đồng.</p>\n<p>Hồ sơ này gồm bản sao biên lai thuế thu nhập hoặc giấy tờ chứng minh về việc miễn thuế thu nhập của cơ quan thuế; bản sao hợp đồng mua bán nhà ở ký với chủ đầu tư và bản gốc văn bản chuyển nhượng hợp đồng đã có công chứng. Các chủ đầu tư còn đòi người bán phải làm đơn gởi cho họ trước xin cấp giấy đồng ý cho chuyển nhượng, rồi mới được đi làm thủ tục công chứng và đóng thuế.</p>\n<p>Đối với người mua căn hộ chung cư, thậm chí dọn về ở đã lâu, vẫn phải chờ một thời gian mới được cấp giấy chứng nhận quyền sở hữu. Theo Bộ Tài nguyên và Môi trường, từ năm 2001 đến cuối năm 2011, tại Hà Nội và TP.HCM có 952 dự án phát triển nhà đã được triển khai với khoảng 333.000 căn hộ chung cư và nhà liền kề.</p>\n<p>Tuy nhiên, việc cấp giấy chứng nhận quyền sử dụng đất, quyền sở hữu nhà ở và tài sản khác gắn liền với đất cho người mua nhà tại các dự án này tính đến ngày kiểm tra, chỉ đạt khoảng 64.400 căn hộ, chiếm19,3% tổng số căn hộ theo dự án được duyệt; trong đó, Hà Nội đạt 9,3%, TP.HCM đạt 30%.</p>\n<p>Kiểm tra 10 tòa nhà tại TP.HCM, tổ công tác đã phát hiện chủ đầu tư chỉ mới nộp hồ sơ để làm thủ tục cấp giấy chứng nhận cho 2.140 căn hộ, chiếm 37,8% số căn hộ đã bán và mới chỉ có 1.495 trường hợp nhận được giấy này. Tại Hà Nội, chủ đầu tư của 9 dự án được kiểm tra chỉ nộp hồ sơ cho 710 trường hợp, chiếm 23,7%. Và mới có 4 chủ dự án giao giấy chứng nhận cho 557 chủ căn hộ, chiếm 18,4% số căn hộ đã bán.</p>\n<p>Thường thì từ khi nhận nhà chung cư cho tới lúc được cấp giấy chứng nhận sở hữu, người mua phải mất đến 2 năm, nếu nhanh. Có nơi lâu hơn, thậm chí có chủ đầu tư đã giao nhà cho khách từ nằm 2007 mà đến nay vẫn chưa làm giấy tờ, như chủ đầu tư chung cư Bình Minh, Thủ Thiêm, TP.HCM. Việc chậm trễ cấp giấy chứng nhận khiến nhiều nhà đầu tư khó bán lại được sản phẩm.</p>\n<p>Cách đánh thuế chuyển nhượng bất động sản cũng còn bất hợp lý. Theo đó, thuế suất 25% trên thu nhập chịu thuế chỉ áp dụng đối với cá nhân chuyển nhượng bất động sản có đủ giấy tờ, hóa đơn là căn cứ xác định giá và các khoản phí có liên quan. Các trường hợp còn lại sẽ áp dụng thuế suất 2% tính trên giá chuyển nhượng.</p>\n<p>Luật thuế thu nhập cá nhân đối với chuyển nhượng bất động sản quy định phải thỏa mãn 2 điều kiện để được hưởng cách tính thuế 25% trên chênh lệch: bất động sản phải có chủ quyền hợp pháp và hợp đồng mua bán phải qua công chứng. Hầu hết các trường hợp chuyển nhượng nhà đất đều bị áp thuế 2% trên giá trị chuyển nhượng vì nhiều bất động sản không xác định được chênh lệch giá mua với giá bán.</p>\n<p>Trong nhiều trường hợp, quy định nộp thuế 2% trên giá bán đã gây thiệt cho người bán, vì dù bán lỗ họ vẫn phải nộp thuế. Đó là trường hợp mua bất động sản chưa có giấy tờ hợp lệ, sau đó hoàn chỉnh giấy tờ và bán lại; trường hợp mua khi giá cao, sau đó phải bán giá thấp. Hoặc người vay vốn ngân hàng để mua bất động sản vào lúc lãi cao nhưng số tiền trả lãi không được tính vào chi phí để giảm bớt thuế thu nhập.<br /><strong>Gửi ngân hàng sướng hơn</strong><br />Đối với nhà đầu tư, đầu cơ, mua căn hộ chung cư hoặc nhận chuyển nhượng đất nền mà làm gì nếu chẳng thể bán lại được. Giấy tờ rắc rối cộng với thuế cao sẽ khiến người mua lại ngần ngại. Còn mua với ý định cho thuê thì cũng không dễ dàng gì.</p>\n<p>Nếu bỏ ra 1,5-2 tỉ đồng để mua một căn hộ, cho dù có thể cho thuê với giá 10 triệu/tháng, vẫn phải mất 13-17 năm mới lấy lại được vốn. Trong khi đó số tiền này nếu gửi ngân hàng, với lãi suất 10%/năm, chẳng hạn, mỗi tháng đã nhận được khoảng 15 triệu đồng tiền lãi.</p>\n<p>Những dự án bán nhà trên giấy, thu tiền trước cũng đẩy người mua vào chỗ bị rủi ro. Và các trường hợp thi công chậm trễ, không giao nhà đúng tiến độ không hề hiếm.</p>\n<p>Luật sư Đinh Thị Quỳnh Như, Trưởng Văn phòng Luật sư An Luật (TP.HCM), cho biết, hầu hết hợp đồng góp vốn mua nhà đất đều không bình đẳng, chủ đầu tư thường giành phần lợi cho mình. Chẳng hạn, nếu người mua thanh toán chậm sau 1 tháng sẽ bị phạt lãi suất nhưng quy định ngược lại thì chủ đầu tư trễ hạn giao nền đến 3-6 tháng mới phải chịu phạt lãi suất.</p>\n<p>Có những chung cư đã khởi công cách đây vài năm mà đến giờ vẫn chưa xong, dù chủ đầu tư đã thu khá nhiều tiền của người mua. Tại TP.HCM, Sở Xây dựng TP.HCM đã phát hiện 16 dự án được phê duyệt từ năm 2006-2009 nhưng đến nay vẫn chưa triển khai, như khu nhà ở Sài Gòn Castle, khu dân cư Tân Thuận, trung tâm thương mại - căn hộ chung cư phường Tân Kiểng, chung cư Mega, chung cư phường Tân Thới Nhất.</p>\n<p>Tệ hơn nữa, có chủ đầu tư đã ôm tiền bỏ trốn như chủ đầu tư Dự án Khu dân cư Phú Quang (Bình Dương). Dự án này được duyệt vào năm 2003. Tính từ đó đến nay, có 139 người mua góp vốn và hầu hết đều đã góp đến 60-70% giá trị hợp đồng, ước khoảng 20 tỉ đồng.<br /><strong>Không phải vội</strong><br />Hiện nay, cung đã vượt cầu khá xa. Ông Peter Ryder, Tổng Giám đốc Quỹ Đầu tư Indochina Capital, cho rằng không chỉ phân khúc bất động sản cao cấp, mà phân khúc nào cung cũng đều vượt cầu. Đầu tư bất động sản bây giờ giống như đem tiền cho người khác mượn, mà không biết bao giờ mới lấy lại được.</p>\n<p>Về phía cầu, người mua vẫn chờ giá giảm cho sát giá trị thực. Nếu so sánh giá bất động sản với thu nhập của người dân Việt Nam thì giá nhà ở, chung cư trung bình hiện nay đã gấp khoảng 25 lần thu nhập, trong khi ở Thái Lan là 6,3 lần và Singapore, 5,2 lần.</p>\n<p>Hiện tại, một số ít người đã vô cùng vui sướng vì kịp thời thoát khỏi thị trường bất động sản; họ thề sẽ không bao giờ quay lại. Tuy nhiên, nếu nhà đầu tư nào dư tiền và vẫn muốn làm ăn trong lĩnh vực này thì cũng nên chờ cho thị trường xuống tận đáy, không cần phải vội. Ông Đặng Hùng Võ, nguyên thứ trưởng Bộ Tài nguyên và Môi trường, khuyên người mua nên chờ giá nhà giảm hơn nữa. Theo ông, không ai dại gì đi đầu tư bất động sản vào lúc thị trường trong trạng thái này.</p>\n<p>Với tình hình hiện nay, có lẽ phải qua tới năm 2015 thị trường mới gượng dậy được. Tuy nhiên, chắc chắn thị trường sẽ không thể sôi động như những thời kỳ nóng sốt trước đây. Đã hết thời đầu cơ, đầu tư đất đai, nhà cửa.</p>', '', 'thi-truong-bat-dong-san-vao-de-ra-moi-kho', '', '', '', 0, 2, 0, NULL, NULL, 1, 112),
(196, 'Căn hộ trung bình sẽ lên ngôi', '', '2012-07-05 02:34:58', 'can-ho-trung-binh-se-len-ngoi.jpg', '<p><em><span style="color:#0000ff;">Mặc dù lãi suất cho vay giảm đáng kể nhưng thị trường bất động sản vẫn không khởi sắc. Nhằm đáp ứng nhu cầu thị trường, giải quyết hàng tồn kho và qoay vòng vốn nhiều doanh nghiệp bất động sản chuyển hướng kinh doanh bằng cách chia nhỏ căn hộ cao cấp thành những căn hộ có diện tích trung bình để hợp với túi tiền khách hàng</span></em></p>', '', '<p> </p>\n<p><strong><span style="color:#0000ff;"><em>Mặc dù lãi suất cho vay giảm đáng kể nhưng thị trường bất động sản vẫn không khởi sắc. Nhằm đáp ứng nhu cầu thị trường, giải quyết hàng tồn kho và qoay vòng vốn nhiều doanh nghiệp bất động sản chuyển hướng kinh doanh bằng cách chia nhỏ căn hộ cao cấp thành những căn hộ có diện tích trung bình để hợp với túi tiền khách hàng.</em></span></strong></p>\n<p>Thị trường đang “bội thực” căn hộ cao cấp và cần những căn hộ có diện tích trung bình phù hợp với túi tiền người dân<br /><strong>Bất động sản chưa khởi sắc</strong><br />Sau một thời gian ngân hàng Nhà nước liên tục hạ trần lãi suất cho vay nhưng thị trường bất động sản dường như chưa có dấu hiệu khởi sắc. Theo Hiệp hội bất động sản TP. Hồ Chí Minh, đến thời điểm hiện nay thành phố còn tồn kho khoảng 400 ngàn căn hộ kể cả đã hoàn tất và đang còn dang dở. Như vậy thị trường bất động sản vẫn đang giậm chân tại chỗ. Để có thể giải quyết các căn hộ tồn kho không ít doanh nghiệp bất động sản phải giảm giá sản phẩm thậm chí, có doanh nghiệp phải giảm giá căn hộ xuống mức thấp nhất. Đơn cử, Lê Thành đang giảm giá căn hộ xuống còn 12 triệu đồng/m2, Green building giảm đến mức 10 triệu đồng/m2. Về việc vay vốn để đầu tư những công trình đang dang dở và đầu tư mới, nhiều doanh nghiệp cho rằng, doanh nghiệp vẫn khó vay ngân hàng, trường hợp vay được thì phải "gồng gánh” mức lãi suất 16-18%. Vì vậy, nếu không được hỗ trợ một cách tích cực doanh nghiệp sẽ gặp nhiều bất lợi.<br />Nhận định được sự quan trọng của thị trường bất động sản trong phát triển nền kinh tế, Nhà nước đã đưa ra giải pháp hạ lãi suất xuống mức thấp để mong có sự kích cầu mới cho thị trường bất động sản. Cho nên, sau khi lãi suất hạ nhiều ngân hàng tung các chương trình vay vốn ưu đãi để mua nhà. Cụ thể, ngân hàng Đầu tư và Phát triển Việt Nam (BIDV) triển khai gói tín dụng 4.000 tỷ đồng để cho vay mua nhà tại các dự án do chính BIDV tài trợ với mức lãi suất cho vay 16%/năm, mức vay 85% giá trị căn nhà. Ngân hàng Quân đội ra chương trình bán nhà trả góp với mức vốn tài trợ cho khách hàng vay mua căn hộ The Flemington lên đến 70% giá trị căn hộ với lãi suất ưu đãi 0% cho 12 tháng đầu tiên. ACB cũng cho ra gói sản phẩm tín dụng "Hỗ trợ an cư trọn gói”, với mức lãi suất 17-17,5%/năm. Song trên thực tế, các ngân hàng đưa ra lãi suất thấp dành cho người mua nhà nhưng chỉ áp dụng với thời hạn từ 3 tháng đến 1 năm. Cho nên, các chương trình này chỉ mang tính ổn định tâm lý chứ không thật sự kích cầu và người dân vẫn đang còn e ngại với mức lãi suất hiện nay.<br />Nhận định về chương trình cho vay vốn mua nhà của các ngân hàng, đại diện một doanh nghiệp bất động sản khẳng định, một số ngân hàng ưu tiên đầu tư cho các căn hộ cao cấp với mức tiền lên đến mười mấy tỷ. Điều này gây bất hợp lý, thay vì tài trợ cho một căn hộ cao cấp ngân hàng nên hỗ trợ 30 căn hộ nhỏ.<br /><strong>Xuất hiện các căn hộ dưới 1 tỷ</strong><br />Theo tìm hiểu của chúng tôi, căn hộ có diện tích trung bình đang đáp ứng yêu cầu của người dân nhiều hơn. Qua phân tích thị trường của Hiệp hội Bất động sản TP. Hồ Chí Minh cho thấy, nhu cầu căn hộ dưới 40m2 là 50% nhưng thực tế trong những năm qua chính sách Nhà nước và chiến lược doanh nghiệp chỉ tập trung vào căn hộ lớn. Để tự cứu mình, nhiều doanh nghiệp đã lách luật bằng cách tự chia nhỏ căn hộ ra. Tức là những căn hộ từ 100m2, 60m2, 50m2 nay được họ chia đôi thành hai căn.<br />Ông Nguyễn Văn Đực, Phó giám đốc công ty địa ốc Đất Lành cho biết, bất động sản đã xuất hiện nhiều khuyết tật từ năm 2007 – 2008 nhưng không có chính sách ngăn chặn khiến nhiều người đổ xô đầu tư vào bất động sản cao cấp dẫn đến tình trạng nhà đất có giá 2-3 tỷ trở lên nóng sốt và bỏ quên phân khúc dưới 1 tỷ đồng. Trong khi đó có 95% người dân có nhu cầu sử dụng nhà trung bình lại không đáp ứng được.<br />Một trong những giải pháp để cứu thị trường bất động sản, theo ông Đực là cung ứng sản phẩm cho 95% người dân còn lại bằng cách tạo ra những căn hộ dưới 1 tỷ đồng và 500 triệu đồng với mức giá 14 - 15 triệu đồng/m2 thậm chí, có thể có mức giá rẻ hơn nữa. Cơ cấu diện tích và số người trong căn hộ chia theo kiểu: Căn hộ loại A diện tích 20 – 30m2; loại B diện tích 30 – 50m2; loại C có diện tích 50 – 70m2; loại D có diện tích &gt;70m2. Đồng thời, không ấn định tỷ lệ các loại căn hộ A, B, C, D trong 1 dự án, việc đầu tư loại căn hộ nào, tỷ lệ bao nhiêu nên để cho doanh nghiệp và thị trường quyết định. Kể cả chấp nhận dự án có 100% căn hộ loại A và B. Và, cho phép những doanh nghiệp đã đầu tư căn hộ trên 70m2 được phép chia hai hoặc chia ba thành những căn hộ dưới 40m2.</p>', '', 'can-ho-trung-binh-se-len-ngoi', '', '', '', 0, 3, 0, NULL, NULL, 1, 112),
(197, 'Viện Quy hoạch Xây dựng Hà Nội đề xuất 4 vị trí để di dời các bộ, ngành', '', '2012-07-22 08:53:20', 'vien-quy-hoach-xay-dung-ha-noi-de-xuat-4-vi-tri-de-di-doi-cac-bo-nganh.jpg', '<p>Vừa qua, Viện Quy hoạch Xây dựng Hà Nội đã có ý kiến đóng góp về đề xuất chức năng sử dụng đất sau khi di dời trụ sở một số cơ quan T.Ư ra ngoài nội thành.</p>', '', '<p>Vừa qua, Viện Quy hoạch Xây dựng Hà Nội đã có ý kiến đóng góp về đề xuất chức năng sử dụng đất sau khi di dời trụ sở một số cơ quan T.Ư ra ngoài nội thành.</p>\n<p>Viện thống nhất với đề xuất vị trí di dời tại Khu trung tâm Tây Hồ Tây và Khu Trung tâm Hội chợ triển lãm quốc gia (xã Mễ Trì, Từ Liêm).</p>\n<p>Trong trường họp quỹ đất tại hai vị trí trên không đủ, Viện đề nghị nghiên cứu quỹ đất dự phòng tại hai khu vực gồm: Khu trung tâm Phương Trạch trên trục đường Nhật Tân - sân bay Nội Bài và Trục Hồ Tây - Ba Vì (khu vực từ Vành đai 3,5 đến Vành đai 4).</p>\n<p>Viện cũng đề nghị cần phân kỳ di dời theo giai đoạn đối với từng đơn vị dự kiến di dời để các cơ quan, đơn vị chủ động xây dựng chương trình, kế hoạch và công tác tổ chức thực hiện, đảm bảo tính khả thi.</p>', '', 'vien-quy-hoach-xay-dung-ha-noi-de-xuat-4-vi-tri-de-di-doi-cac-bo-nganh', '', '', '', 0, 4, 0, NULL, NULL, 1, 115),
(198, 'Hà Nội: Công bố điều chỉnh quy hoạch chi tiết xây ga ngầm', '', '2012-07-22 08:59:04', 'hom-nay-207-so-quy-hoach-kien-truc-ha-noi-da-cong-bo-dieu-chinh-cuc-bo-quy-hoach-chi-tiet-xay-ga.jpg', '<p>Hôm nay (20/7), Sở Quy hoạch-Kiến trúc Hà Nội đã công bố điều chỉnh cục bộ quy hoạch chi tiết xây ga ngầm.</p>', '', '<p>Hôm nay (20/7), Sở Quy hoạch-Kiến trúc Hà Nội đã công bố điều chỉnh cục bộ quy hoạch chi tiết xây ga ngầm.</p>\n<p>Quy hoạch gồm các khu vực thuộc địa bàn quận Ba Đình, Đống Đa và Hoàn Kiếm để xây dựng các ga ngầm S9, S10, S11, S12 và quy hoạch mặt bằng tuyến cho phần đi ngầm (đoạn Kim Mã - ga Hà Nội), thuộc dự án tuyến đường sắt đô thị thí điểm thành phố Hà Nội, đoạn Nhổn-ga Hà Nội, tỷ lệ 1/500.</p>\n<p>Theo đó, tại quận Ba Đình, điều chỉnh cục bộ các ô đất nằm ngoài chỉ giới đường đỏ phố Kim Mã thuộc ô quy hoạch B22, A45, A46 từ chức năng đất nhà ở, đất cơ quan và đất bãi đỗ xe, vườn hoa sang chức năng đất hạ tầng kỹ thuật với tổng diện tích đất điều chỉnh chức năng sử dụng đất khoảng 1.443m2 để xây dựng các hạng mục của nhà ga ngầm và hầm đường sắt đô thị.</p>\n<p>Tại quận Đống Đa, điều chỉnh cục bộ các ô đất nằm ngoài chỉ giới đường đỏ các tuyến phố Cát Linh, Quốc Tử Giám thuộc các ô quy hoạch có số hiệu 57,58,41,62,63 từ chức năng đất công cộng, đất nhà ở, đất trường học, đất cơ quan sang chức năng sử dụng đất hạ tầng kỹ thuật với tổng diện tích đất điều chỉnh chức năng sử dụng đất khoảng 5.405m2 để xây dựng các hạng mục công trình của nhà ga ngầm và hầm đường sắt đô thị.</p>\n<p>Tại quận Hoàn Kiếm, điều chỉnh cục bộ các ô đất nằm ngoài chỉ giới đường đỏ các tuyến phố đường Trần Hưng Đạo, Phan Bội Châu, Yết Kiêu thuộc ô quy hoạch C36, C37, C46, C48 từ chức năng đất cơ quan, trường đào tạo, đất nhà ở, đất công cộng, bệnh viện sang chức năng sử dụng đất hạ tầng kỹ thuật với tổng diện tích đất điều chỉnh chức năng sử dụng đất khoảng 1.535 m2 để xây dựng các hạng mục công trình của nhà ga ngầm và hầm đường sắt đô thị.</p>\n<p>Các nội dung đề xuất trong bản vẽ quy hoạch tổng mặt bằng, tỷ lệ 1/500 các ga ngầm S9,S10,S11, S12 được xác định là nội dung điều chỉnh cục bộ Quy hoạch chi tiết tỷ lệ 1/2000 tại khu vực thuộc các quận Ba Đình, Đống Đa, Hoàn Kiếm.</p>\n<p>Quy hoạch mặt bằng đoạn tuyến đường sắt đô thị cho phần đi ngầm, đoạn từ Kim Mã đến ga Hà Nội được phê duyệt như sau: Mặt bằng đoạn tuyến này có chiều dài khoảng 3,5 km, xuất phát từ khu vực công viên Thủ Lệ đến khu vực ga Hà Nội, mặt bằng bố trí hai ống hầm song song. Hành lang an toàn Metro được xác định cách tim đường hầm về mỗi bên 30m đối với đoạn tuyến hầm.</p>\n<p>Đối với khu vực ga ngầm, hành lang an toàn Metro về mỗi bên 50m. Các công trình xây dựng trong khu vực giới hạn bởi hành lang an toàn Metro đã được xác định khi xây dựng phải được cơ quan quản lý tuyến Metro chấp thuận theo đúng quy định hiện hành để đảm bảo an toàn cho các kết cấu ngầm của tuyến Metro cũng như các công tình xây dựng trong khu vực dọc theo tuyến Metro.</p>\n<p>Ngoài ra, việc bố trí giếng và các hầm thoát hiểm khẩn cấp tại 2 khu vực trên phố Kim Mã, gần Đại sứ Quán Thụy Điển và tại khu vực cuối đường chuyển làn và gara sau khu vực ga ngầm S12. Quy mô, phạm vi chiếm dụng các ga ngầm S9, S10, S11, S12 đã được xác định cụ thể tại bản vẽ Quy hoạch tổng thể mặt bằng đã được Ủy ban Nhân dân thành phố phê duyệt./.<br />(Theo Vietnam+)</p>', '', 'ha-noi-cong-bo-dieu-chinh-quy-hoach-chi-tiet-xay-ga-ngam', '', '', '', 0, 5, 0, NULL, NULL, 1, 115),
(199, 'Đà Nẵng "tung chiêu" kích cầu nhà ở', '', '2012-07-23 09:02:06', 'a-nang-tung-chieu-kich-cau-nha-o.jpg', '<p>Chính quyền và doanh nghiệp TP.Đà Nẵng đang triển khai nhiều chương trình hỗ trợ mua bán nhà ở, căn hộ nhằm giúp thị trường nhà đất sôi động trở lại sau thời gian dài trầm lắng.</p>', '', '<p><span style="color:#0000ff;"><em><strong>Chính quyền và doanh nghiệp TP.Đà Nẵng đang triển khai nhiều chương trình hỗ trợ mua bán nhà ở, căn hộ nhằm giúp thị trường nhà đất sôi động trở lại sau thời gian dài trầm lắng.</strong></em></span></p>\n<p><strong>Cho nợ khi mua chung cư</strong><br />Trong cuộc họp giữa tháng 7/2012, Phó chủ tịch UBND TP.Đà Nẵng Nguyễn Ngọc Tuấn đã kết luận sẽ bán một số căn hộ chung cư ở Q.Sơn Trà có diện tích từ 50 - 55m2 cho cán bộ, công chức và đối tượng chính sách. Những đối tượng được duyệt mua nhà nêu trên chỉ phải trả 50% số tiền (giá bình quân 350 - 400 triệu đồng/căn) cho thành phố; còn lại sẽ được thành phố cho nợ và trả dần trong vòng 9 năm, với mức lãi suất ưu đãi. Những căn hộ chung cư nói trên nằm trong chương trình nhà ở xã hội, do Công ty CP tập đoàn xây dựng và phát triển nhà - Vicoland và Liên danh DMC-579 làm chủ đầu tư, được thành phố mua lại. Theo đó, có 351 căn hộ chung cư ở Khu chung cư cuối tuyến Bạch Đằng Đông và Khu chung cư nhà ở xã hội Blue House sẽ bán cho cán bộ, công chức với mức giá ưu đãi. Công ty quản lý nhà sẽ đứng ra thu nợ và quản lý số chung cư này.</p>\n<p>Trong khi đó, một chương trình kích cầu khác là bán đất nền giá ưu đãi nhằm hỗ trợ cán bộ, công chức (dự kiến ban đầu chỉ bán cho đối tượng trưởng, phó phòng ban trở lên) có điều kiện mua đất làm nhà đang được UBND TP.Đà Nẵng bàn thảo. Có nhiều ý kiến đề xuất mức giảm giá tới 40%, tuy nhiên, theo UBND TP.Đà Nẵng, mức giảm vậy là quá cao và đang nghiêng về hướng giảm 30% kèm điều kiện phải nộp tiền một lần.</p>\n<p><strong>Giảm lãi suất mua căn hộ</strong><br />Ngày 19/7, Tập đoàn VinaCapital và Ngân hàng đầu tư và phát triển Việt Nam - BIDV công bố chương trình hỗ trợ khách hàng mua nhà tại các dự án bất động sản do Tập đoàn VinaCapital đầu tư xây dựng tại Đà Nẵng với mức lãi suất cực kỳ hấp dẫn. Theo đó, BIDV cho vay thế chấp 12%/năm tại Khu nghỉ dưỡng phức hợp Đà Nẵng Beach Resort và Cao ốc căn hộ cao cấp 34 tầng Azura tọa lạc bên bờ sông Hàn. Ông Lê Minh Phúc, Tổng giám đốc VinaCapital Đà Nẵng, khẳng định: "Những người mua căn hộ ở Cao ốc Azura còn được VinaCapital hỗ trợ thêm lãi suất 3%/năm trong hai năm đầu tiên.</p>\n<p>Như vậy, trên thực tế, khách hàng mua căn hộ ở Azura chỉ còn phải trả lãi suất vay thế chấp 9%/năm". Những căn hộ ở Cao ốc Azura có diện tích từ 69m2 - 192m2 có mức giá thấp nhất là 1,8 tỉ đồng. Theo đại diện của VinaCapital, chi phí quản lý ở tòa nhà là 14.000 đồng/m2 (bao gồm chi phí điện chiếu sáng, an ninh, hồ bơi...)</p>\n<p>Những động thái tích cực từ phía chính quyền lẫn nhà đầu tư đang mở ra nhiều cơ hội sở hữu nhà đất cho người dân Đà Nẵng.<br />(Theo Thanh niên)</p>', '', 'da-nang-tung-chieu-kich-cau-nha-o', '', '', '', 0, 6, 0, NULL, NULL, 1, 114),
(200, 'Hội An: Không được bán, chuyển nhượng nhà cổ trong vòng 10 năm', '', '2012-07-23 09:23:02', 'hoi-an-khong-duoc-ban-chuyen-nhuong-nha-co-trong-vong-10-nam.jpg', '<p><br />Chính quyền TP.Hội An (Quảng Nam) đã đưa ra ràng buộc đối với các chủ di tích nếu muốn tham gia dự án “Đầu tư tu bổ khẩn cấp các di tích xuống cấp có nguy cơ sụp đổ trong khu di sản văn hóa thế giới Hội An”.</p>', '', '<p><span style="color:#0000ff;"><strong><em>Chính quyền TP.Hội An (Quảng Nam) đã đưa ra ràng buộc đối với các chủ di tích nếu muốn tham gia dự án “Đầu tư tu bổ khẩn cấp các di tích xuống cấp có nguy cơ sụp đổ trong khu di sản văn hóa thế giới Hội An”.</em></strong></span><br />Ngoài kinh phí hỗ trợ 40-75% tùy theo giá trị bảo tồn, chủ di tích sẽ được vay lãi suất 0% đối với phần kinh phí mà họ phải đóng góp (để đủ kinh phí tu bổ một di tích), thời hạn trả vốn không xác định. Tuy nhiên, thành phố đưa ra điều kiện chủ di tích không được bán, chuyển nhượng di tích trong vòng 10 năm kể từ khi vay vốn. Sau 10 năm, chấm dứt hợp đồng vay vốn, chủ di tích sẽ được nhà nước hỗ trợ toàn phần kinh phí tu bổ di tích. Ngược lại, nếu vi phạm quy định bán, chuyển nhượng, chủ di tích phải hoàn trả vốn và lãi suất vay trước thời hạn. Theo Trung tâm quản lý bảo tồn di sản văn hóa Hội An, hiện đã có 14 di tích ở khu phố cổ được đưa vào đề án với kinh phí đề nghị cho vay 5,8 tỉ đồng.</p>\n<p>Ngoài ra, để kịp cứu nguy di tích nhà cổ Hội An trước nguy cơ sụp đổ, UBND tỉnh Quảng Nam cũng vừa ban hành quyết định cho phép các chủ sở hữu tập thể, tư nhân tại Hội An vay 100% kinh phí tu bổ trong thời hạn 3 năm với lãi suất 0%. Đây là cơ chế ưu đãi cho các chủ di tích mạnh dạn tu bổ di tích với tổng kinh phí 7,7 tỉ đồng.</p>', '', 'hoi-an-khong-duoc-ban-chuyen-nhuong-nha-co-trong-vong-10-nam', '', '', '', 0, 7, 0, NULL, NULL, 1, 114),
(201, 'Tuyển nhân viên kinh doanh', '', '2012-07-28 05:14:15', 'tuyen-nhan-vien-kinh-doanh.jpg', '<p>Tên công ty: Cty CP TM- DV BĐS Khang Danh<br />Sơ lược về công ty: Cty CP TM- DV BĐS Khang Danh chuyên kinh doanh và môi giới BĐS, xây dựng công trình dân dụng, xuất khẫu các sản phẩm từ yến, kinh doanh đồ mỹ nghệ.<br />Địa chỉ: R4 -16 Hưng Gia 3 - Phú Mỹ Hưng - Q.7</p>', '', '<p>Thông tin tuyển dụng<br />Vị trí tuyển dụng:<br />Nhân Viên Môi Giới Bất Động Sản<br />Ngành/nghề:<br />KD bất động sản<br />Chức vụ:<br />Nhân viên<br />Loại hình công việc:<br />Toàn thời gian cố định<br />Địa điểm làm việc:<br />TP. HCM<br />Số lượng cần tuyển: 20<br />Mức lương khởi điểm: Thỏa Thuận<br />Mô tả công việc: Môi giới cho thuê văn phòng, nhà bán, nhà xưởng, căn hộ chung cư, khu vực Q.7, Q.1, Q.3, Q.PN, Q.TB, Q.BT<br />Quyền lợi được hưởng: - Lương<br />- Thưởng<br />- BHXH<br />Số năm kinh nghiệm: Dưới 1 năm<br />Yêu cầu Trình độ: Trung cấp<br />Yêu cầu khác: Có sức khõe tốt, năng động, ham thích kinh doanh, có phương tiện đi lại, ưu tiên ứng viên ở Q.7<br />Hồ sơ bao gồm - Sơ yéu lý lịch<br />- CMND<br />- Đơn xin việc<br />- Các bằng cấp kèm theo</p>\n<p>Liên hệ: 0916.968.001 a Long</p>', '', 'tuyen-nhan-vien-kinh-doanh', '', '', '', 0, 8, 0, NULL, NULL, 1, 116),
(202, 'Đà Nẵng: Sẽ cấp đất cho 1.000 sĩ quan quân đội', '', '2012-07-30 03:06:46', 'a-nang-se-cap-dat-cho-1-000-si-quan-quan-doi.jpg', '<p>Vừa qua, UBND thành phố Đà Nẵng đã thông qua địa điểm quy hoạch đầu tư xây dựng khu dân cư để cấp đất cho quân nhân xây dựng nhà ở, ổn định cuộc sống.</p>', '', '<p>Vừa qua, UBND thành phố Đà Nẵng đã thông qua địa điểm quy hoạch đầu tư xây dựng khu dân cư để cấp đất cho quân nhân xây dựng nhà ở, ổn định cuộc sống.</p>\n<p>Vị trí quy hoạch được chọn tại các xã Hòa Phước, Hòa Phong (huyện Hòa Vang), phường Hòa Khánh Nam (quận Liên Chiểu) và phường Hòa Phát (quận Cẩm Lệ). Theo đó, TP. Đà Nẵng sẽ cấp đất ở cho 1.000 sĩ quan quân đội đang công tác thuộc các đơn vị Quân khu V, nâng tổng số lô đất ở được cấp cho quân nhân tại thành phố lên trên 2.000 trường hợp. Hiện nhiều sĩ quan quân đội thuộc các quân binh chủng trực thuộc Bộ Quốc phòng cũng đã được cấp đất và đã làm nhà ở ổn định.</p>', '', 'da-nang-se-cap-dat-cho-1000-si-quan-quan-doi', '', '', '', 0, 9, 0, NULL, NULL, 1, 115);

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
) ENGINE=InnoDB  DEFAULT CHARSET=utf8 AUTO_INCREMENT=117 ;

--
-- Dumping data for table `dos_module_news_cat`
--

INSERT INTO `dos_module_news_cat` (`cat_id`, `cat_parent_id`, `cat_title`, `cat_titleen`, `preview`, `previewen`, `tag`, `tagen`, `description`, `descriptionen`, `pic_full`, `cat_order`, `cat_extra1`, `cat_extra2`, `cat_enable`, `dos_usernames_username`) VALUES
(112, 0, 'Phân Tích - Nhận Định', '', NULL, NULL, 'phan-tich-nhan-dinh', '', '', '', '', 1, NULL, NULL, 1, 'nhaphodep'),
(113, 0, 'Tin Thị Trường', '', NULL, NULL, 'tin-thi-truong', '', '', '', '', 2, NULL, NULL, 1, 'nhaphodep'),
(114, 0, 'Chính Sách - Quản Lý ', '', NULL, NULL, 'chinh-sach-quan-ly', '', '', '', '', 3, NULL, NULL, 1, 'nhaphodep'),
(115, 0, 'Thông Tin Quy Hoạch', '', NULL, NULL, 'thong-tin-quy-hoach', '', '', '', '', 4, NULL, NULL, 1, 'nhaphodep'),
(116, 0, 'Tin Tuyển Dụng', '', NULL, NULL, 'tin-tuyen-dung', '', '', '', '', 5, NULL, NULL, 1, 'nhaphodep');

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
('max_count', 1),
('counter', 3),
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
('''127.0.0.1''', 1339478521);

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
  `unit_currency` varchar(4) NOT NULL,
  `unit_unit` varchar(45) NOT NULL,
  `hot` tinyint(1) NOT NULL DEFAULT '0',
  `specials` tinyint(1) DEFAULT NULL,
  `extra_field1` varchar(100) DEFAULT NULL,
  `extra_field2` varchar(100) DEFAULT NULL,
  `extra_field3` varchar(100) DEFAULT NULL,
  `extra_field4` varchar(100) DEFAULT NULL,
  `enable` tinyint(1) NOT NULL DEFAULT '1',
  `dos_module_item_type_type_id` int(11) NOT NULL,
  `dos_module_item_cat_cat_id` int(11) NOT NULL,
  `dos_districts_district_id` int(11) NOT NULL,
  `dos_wards_ward_id` int(11) NOT NULL DEFAULT '323',
  `address` varchar(100) NOT NULL,
  `contact_name` varchar(45) NOT NULL,
  `contact_add` varchar(100) NOT NULL,
  `contact_mobile` varchar(11) NOT NULL,
  `contact_tel` varchar(11) NOT NULL,
  `dos_username` varchar(45) NOT NULL,
  PRIMARY KEY (`record_id`),
  KEY `fk_dos_module_products_dos_module_products_cat1` (`dos_module_item_cat_cat_id`),
  KEY `dos_districts_district_id` (`dos_districts_district_id`),
  KEY `dos_module_item_type_type_id` (`dos_module_item_type_type_id`),
  KEY `dos_username` (`dos_username`),
  KEY `dos_wards_ward_id` (`dos_wards_ward_id`)
) ENGINE=InnoDB  DEFAULT CHARSET=utf8 AUTO_INCREMENT=196 ;

--
-- Dumping data for table `dos_module_products`
--

INSERT INTO `dos_module_products` (`record_id`, `title`, `titleen`, `postdate`, `pic_thumb`, `pic_full`, `pic_desc`, `preview`, `previewen`, `content`, `contenten`, `tag`, `tagen`, `description`, `descriptionen`, `hits`, `record_order`, `unit`, `unit_currency`, `unit_unit`, `hot`, `specials`, `extra_field1`, `extra_field2`, `extra_field3`, `extra_field4`, `enable`, `dos_module_item_type_type_id`, `dos_module_item_cat_cat_id`, `dos_districts_district_id`, `dos_wards_ward_id`, `address`, `contact_name`, `contact_add`, `contact_mobile`, `contact_tel`, `dos_username`) VALUES
(38, 'Bán Gấp NhàĐường C1, phường 13, quận Tân Bình', '', '2012-07-04 07:38:03', NULL, NULL, NULL, '', '', '<p>Bán Gấp NhàĐường C1, phường 13, quận Tân Bình, mặt tiền đường nhựa 10m, DTKV : 4m x 28m, sổ hồng, hướng nam, nhà 1 trệt, 2 lầu, 3WC, 3PN, PK, NB, sân thượng, 2 sân trước sau, khu tập trung nhiều công ty, văn phòng. Giá 6.7 tỷ. Tel</p>', '', 'ban-gap-nhaduong-c1-phuong-13-quan-tan-binh', '', 'Bán Gấp NhàĐường C1, phường 13, quận Tân Bình, mặt tiền đường nhựa 10m, DTKV : 4m x 28m, sổ hồng, hướng nam, nhà 1 trệt, 2 lầu, 3WC, 3PN, PK, NB, sân thượng, 2 sân trước sau, khu tập trung nhiều công ty, văn phòng. Giá 6.7 tỷ. Tel', '', 35, 1, '6700000000', 'VND', 'Tổng diện tích', 0, NULL, NULL, NULL, NULL, NULL, 1, 1, 527, 582, 323, 'Đường C1, phường 13, quận Tân Bình', 'Minh Hoàng', '', '0906.808.00', '', 'nhaphodep'),
(39, 'Bán hoặc cho thuê dài hạn 2 mặt tiền đường Nguyễn Đình Chính, P.11, Phú Nhuận', '', '2012-07-04 08:41:50', NULL, NULL, NULL, '', '', '<p>Bán hoặc cho thuê dài hạn đất 2 mặt tiền đường Nguyễn Đình Chính 18m, Mai Văn Ngọc 22m, dài 30m.</p>\n<p>Vị trí thuận lợi, kinh doanh thương mại sầm uất, thuận lợi làm quán cafe, quán ăn, khu vui chơi thiếu nhi, nhà trẻ, trường học, phòng khám, văn phòng cho thuê và khách sạn.Hoặc kết hợp hợp tác đầu tư.</p>\n<p>Địa chỉ 240 Nguyễn Đình Chính, P11, Phú Nhuận.Tổng diện tích: 600m2. Sổ hồng chính chủ.</p>\n<p>Giá thuê: (7USD/m2) 146.000đ/m2/tháng (có thương lượng cho khách mua thiện chí).Giá bán: 32 tỷ (thương lượng). Miễn trung gian.</p>\n<p>Liên hệ : Anh Trường: 090 858 4706 - Chị Hương: 097 896 4070<br />(Gia đình đang định cư nước ngoài cần gấp liên hệ : 00491735669946 Mr.Sơn)</p>', '', 'ban-hoac-cho-thue-dai-han-2-mat-tien-duong-nguyen-dinh-chinh-p11-phu-nhuan', '', '', '', 49, 2, '32000000000', 'VND', 'Tổng diện tích', 0, NULL, NULL, NULL, NULL, NULL, 1, 1, 527, 570, 323, '240 Nguyễn Đình Chính, P11, Phú Nhuận', 'Anh Trường - Chị Hương', '', '097 896 407', '', 'nhaphodep'),
(40, 'Bán nhà mới cấp 4, có thể ở ngay tại Q.Bình Tân', '', '2012-07-05 02:00:07', NULL, NULL, NULL, '', '', '<p>Bán nhà mới cấp 4, có thể ở ngay tại Q.Bình Tân</p>\n<p>- Nhà mới cấp 4, có gác, gần chợ, trường học cấp 1,2,3, gần bệnh viện Bình Tân.. Hẻm 5m, xe hơi vào tận nơi. Điện nước chính đầy đủ.<br />- Đường tráng nhựa, khu dân cư đông đúc, an ninh, yên tĩnh, giao thông thuận tiện đi lại.<br />- Diện tích: 4m x 8m, SHCC<br />- Giá: 850 triệu (Tiếp người thiện chí mua nhà)<br />- Liên hệ chính chủ: 0903 684 478 - A.Hiếu</p>', '', 'ban-nha-moi-cap-4-co-the-o-ngay-tai-qbinh-tan', '', '', '', 9, 1, '850000000', 'VND', 'Tổng diện tích', 0, NULL, NULL, NULL, NULL, NULL, 1, 1, 527, 577, 323, '363/21/1, Đất Mới, Phường Bình Trị Đông A, Bình Tân, TP.Hồ Chí Minh', 'A.Hiếu', '', '0903 684 47', '', 'hhh'),
(41, 'Bán căn hộ XI River View-Q2.', '', '2012-07-05 02:23:28', NULL, NULL, NULL, '', '', '<p>Bán căn hộ XI River View-Q2.</p>\n<p>Vị Trí: Nguyễn Văn Hưởng, Thảo Điền<br />View sông Sài Gòn đẹp và không gian trong lành thoáng mát.<br />Tiện ích dịch vụ đầy đủ: gym, hồ bơi, thư viện…gần ngay trung tâm thành phố.<br />Gần các trường quốc tế Anh, Mỹ Úc…<br />Diện tích: 144,70m2, 145,01m2, 185,97m2, 201,56m2.(3 Phòng Ngủ)<br />Giá gốc chủ đầu tư: 2100USD/m2. Gồm VAT.<br />LH: 090.642.8018. Huỳnh Tín.</p>', '', 'ban-can-ho-xi-river-view-q2', '', '', '', 13, 1, '48000000', 'VND', 'm2', 0, NULL, NULL, NULL, NULL, NULL, 1, 1, 529, 565, 323, 'Nguyễn Văn Hưởng, Thảo Điền', 'Huỳnh Tín', '', '0906428018', '', 'nhaphodep'),
(42, 'Cần bán căn hộ Phú Hoàng Anh, đang giao nhà giá 1,7 tỷ', '', '2012-07-05 02:32:36', NULL, NULL, NULL, '', '', '<p>Cần Nhượng lại căn hộ Phú Hoàng Anh, dự án nằm ngay con sông thơ mộng Phú Mỹ Hưng, đầy đủ tiện ích 3 hồ bơi, công viên, shop kinh doanh... Căn hộ 2PN 88m2, View cao, thoáng mát. Giá bán : 1,7 tỷ Bao VAT. Ngân hàng hỗ trợ cho vay 50% giá trị căn hộ với lãi suất chỉ 12%/năm. Anh chị có nhu cầu mua, vui lòng liên hệ : Minh Nhật - 01234567.540. LH: Nhật, Quận 7, TP HCM, Tel. 098-5920208</p>', '', 'can-ban-can-ho-phu-hoang-anh-dang-giao-nha-gia-17-ty', '', 'dự án nằm ngay con sông thơ mộng Phú Mỹ Hưng, đầy đủ tiện ích 3 hồ bơi, công viên, shop kinh doanh... Căn hộ 2PN 88m2, View cao, thoáng mát', '', 11, 1, '1700000000', 'VND', 'm2', 0, NULL, NULL, NULL, NULL, NULL, 1, 1, 529, 582, 323, 'gần sông Phú Mỹ Hưng', 'Minh Nhật', '', ' 0985920208', '', 'omely437'),
(43, 'bán gấp biệt thự liên kế Mỹ Thái, Phú Mỹ Hưng, giá 9 tỷ', '', '2012-07-05 02:43:13', NULL, NULL, NULL, '', '', '<p>Cần tiền bán gấp biệt thự liên kế Mỹ Thái, Phú Mỹ Hưng, sổ hồng cầm tay giá rẻ.Tọa lạc tại khu Nam Viên, Phú Mỹ Hưng, cạnh công viên rộng 2 ha, có nhiều cây xanh, yên tĩnh, thoáng mát, đầy đủ các tiện ích, gần trường học, siêu thị, ngân hàng,...Giá: 9 tỷ.0933186086</p>', '', 'ban-gap-biet-thu-lien-ke-my-thai-phu-my-hung-gia-9-ty', '', '', '', 11, 1, '9000000000', 'VND', 'm2', 0, NULL, NULL, NULL, NULL, NULL, 1, 1, 528, 582, 323, 'quận 7', 'Nguyễn Nam', '', '0972940179 ', '', 'omely437'),
(44, 'Quận 1 - Cho thuê văn phòng mới giá rẻ', '', '2012-07-05 02:53:07', NULL, NULL, NULL, '', '', '<p>Quận 1 - Cho thuê văn phòng mới giá rẻ</p>\n<p>Cao ốc văn phòng Artex Saigon Building<br />Địa chỉ: Nguyễn Công Trứ, Quận 1<br />Số tầng: 1 trệt - 1 lững - 9 tầng<br />Diện tích sàn: 230m2<br />Tổng diện tích: 2.000m2<br />Diện tích cho thuê: 108m2 - 114m2 - 230m2<br />Giá thuê: 378.000 VNĐ/m2 (ước tính 18 USD/m2)<br />Phí dịch vụ: Đã bao gồm phí dịch vụ<br />Thuế GTGT: Đã có thuế 10%<br />Phí gửi xe: Xe máy 220.000VNĐ/xe; Xe hơi 3.000.000VNĐ/xe<br />Tiền điện: Miễn phí điện máy lạnh trong giờ làm<br />Thời hạn thuê: Tối thiểu 2 năm<br />Đặt cọc, thanh toán: 3 tháng &amp; thanh toán 3 tháng 1 lần</p>', '', 'quan-1-cho-thue-van-phong-moi-gia-re', '', '', '', 17, 1, '18', 'USD', 'm2', 0, NULL, NULL, NULL, NULL, NULL, 1, 2, 532, 569, 323, 'Nguyễn Công Trứ, Phường Nguyễn Thái Bình, Quận 1, TP.Hồ Chí Minh', 'Phượng Nguyễn', '', '0906642499', '', 'hhh'),
(45, 'Bán căn hộ chung cư An Phúc, Diện tích 51m2, Quận 2', '', '2012-07-05 02:54:14', NULL, NULL, NULL, '', '', '<p>Bán căn hộ cao cấp chung cư An Phúc, Diện tích 51m2. Nội thất cao cấp có sổ hồng. Giá bán 20.5 triệu/m2. Vị trí sau Metro đầy đủ tiện ích công cộng gần Trung Tâm Q1. Nằm trong tổng thể khu đô thị mới An Phú An Khánh.</p>', '', 'ban-can-ho-chung-cu-an-phuc-dien-tich-51m2-quan-2', '', '', '', 12, 1, '205000000', 'VND', 'm2', 0, NULL, NULL, NULL, NULL, NULL, 1, 1, 529, 569, 323, 'quận 1', 'Mr. Sơn', '', '0938 283 29', '', 'omely437'),
(46, 'Bán gấp biệt thự tứ lập Mỹ Gia, sổ hồng, giá 20,5 tỷ', '', '2012-07-05 03:05:42', NULL, NULL, NULL, '', '', '<p>Cần bán gấp Biệt thự tứ lập Mỹ Gia 1, diện tích đất 15x16.5m(247m2), xây dựng 1 trệt, 2 lầu, nhà thiết kế đẹp, sân vườn rộng, khu an ninh, yên tĩnh, thoáng mát, ngay cạnh công viên, đã có sổ hồng, giá bán 20,5 tỷ(TL). Liên hệ: 0917713462 Trung. LH: Trung, Mỹ Toàn 2, P.Tân Phong, Q.7, Tel. 0917713462</p>', '', 'ban-gap-biet-thu-tu-lap-my-gia-so-hong-gia-205-ty', '', '', '', 11, 1, '20500000000', 'VND', 'Tổng diện tích', 0, NULL, NULL, NULL, NULL, NULL, 1, 1, 528, 582, 323, 'quận 7', 'Mr. trung', '', '0917713462', '', 'omely437'),
(47, 'Cần cho thuê biệt thự Thảo Điền, sát khu compound Phú Nhuận, 900m2 có HB &amp; SV', '', '2012-07-05 03:13:10', NULL, NULL, NULL, '', '', '<p>Cần cho thuê biệt thự Thảo Điền, sát khu compound Phú Nhuận 1, diện tích 900m2, trệt , 2 lầu, sân thượng, 5PN chính, 01 phòng làm việc, đọc sách, 01 phòng cho người giúp việc, bảo vệ, gara 2 xe hơi, hồ bơi rộng, các phòng đều rộng và thoáng mát. Giá thuê 3500usd/tháng (xem hình thực tế) LH M.PTrâm 0938 124358 - 0916 220808</p>', '', 'can-cho-thue-biet-thu-thao-dien-sat-khu-compound-phu-nhuan-900m2-co-hb-sv', '', '', '', 11, 1, '3500', 'USD', 'Tháng', 0, NULL, NULL, NULL, NULL, NULL, 1, 2, 528, 565, 323, 'Thảo Điền Q.2', 'M.PTrâm ', '', '0938 124358', '', 'hhh'),
(48, 'Bán gấp Biệt thự Đoàn Thị Điểm – Ngay ngã 4 Phú Nhuận – Gía cực rẻ', '', '2012-07-05 03:20:40', NULL, NULL, NULL, '', '', '<p>Bán Biệt thự Đoàn Thị Điểm – Gía rẻ nhất thị trường :<br />- DT: 7 X 10 m<br />- Kết cầu: 1T – 5L – GARA ôtô.<br />- Ngay Trung Tâm Q.phú nhuận – Cách ngã 4 Phú Nhuận chỉ 200m<br />- Thiết kế theo phong cách Châu âu – Nội thất cao cấp<br />- Khu an ninh – Sạch sẽ - Thoáng Mát<br />- Sổ hồng chính chủ<br />- Kẹt tiền nên cần bán gấp trong tháng 7.<br />Gía bán :7,5 tỷ. LH: A.Khoa – SGD BĐS Vietnamese – 69 Hoa Lan – P2 – Q. PN – Tel: 0935.950.950</p>', '', 'ban-gap-biet-thu-doan-thi-diem-ngay-nga-4-phu-nhuan-gia-cuc-re', '', '', '', 11, 1, '7500000000', 'VND', 'Tổng diện tích', 0, NULL, NULL, NULL, NULL, NULL, 1, 1, 528, 570, 323, 'Quận Phú Nhận', 'Mr. Khoa', '', '0935.950.95', '', 'omely437'),
(49, 'Cần sang Shop bán Thủ công mỹ nghệ-Lưu niệm Rẻ', '', '2012-07-05 03:22:20', NULL, NULL, NULL, '', '', '<p>Cần sang Shop bán Thủ công mỹ nghệ-Lưu niệm Rẻ</p>\n<p>Shop mình mở ra cũng lâu, mua bán cũng rất ổn định, khách hàng biết đến rất nhiều nhưng do gia đình có việc, thời gian hiện tại mình ko thể một mình làm xuể việc nên nay mình có ý định muốn sang Shop.<br />Shop của mình có sẵn giấy phép đăng ký kinh doanh về hàng mỹ nghệ, có đủ cửa kính, kệ, tủ, đèn, bảng hiệu,..(tất cả được thiết kế hết),điện ,nước,máy tính, internet, website,....mặt tiền đường trần văn đang, quận 3, chủ nhà vui vẻ thoải mái, thuế ổn định, giá rẻ.<br />Shop còn rất nhiều hàng trong kho, mới , đẹp, mình sang lại tất cả từ a-z, ace chỉ việc sang shop mở cửa ra bán hàng ngày thôi, ko cần phải trang bị thêm gì cả. Với giá 50tr (thương lượng)<br />Mọi chi tiết xin liên hệ: 0902 799 689 (A.Viễn)</p>', '', 'can-sang-shop-ban-thu-cong-my-nghe-luu-niem-re', '', '', '', 11, 1, '50000000', 'VND', 'Tổng diện tích', 0, NULL, NULL, NULL, NULL, NULL, 1, 3, 534, 564, 323, 'Q.3', 'A.Viễn', '', '0902 799 68', '', 'nhaphodep'),
(50, 'cho thuê văn phòng quận Phú Nhuận - tòa nhà Golden Bee Building Nhaxanh’s', '', '2012-07-05 03:27:01', NULL, NULL, NULL, '', '', '<p>Tòa nhà Golden Bee Building Nhaxanh’s - Nơi lý tưởng để đặt văn phòng kinh doanh.<br />Địa chỉ: 607-609 Nguyễn Kiệm, P.9, Q.Phú Nhuận<br />- Tòa nhà mới xây 1 hầm, 1 trệt, 8 tầng lầu, 1 sân thượng. Vị trí giao thông thuận lợi, không gian được bố trí hợp lý, thuận tiện.Hệ thống điện nước, Internet, thang máy, phòng cháy chữa cháy, tầng hầm để xe đầy đủ, hiện đại.<br />- Hợp đồng thuê từ 3 năm đến 5 năm, giá thuê từ 12-13 USD/1m2 (xuất hóa đơn trực tiếp)và phí quản lý 3USD/1m2 (tầng 2 đến tầng 8), đặt cọc 3 tháng, thanh toán 03 tháng một lần. Hỗ trợ 1 tháng tiền thuê.<br />- Được quản lý chuyên nghiệp bởi Nhaxanh’s Management.<br />Thông tin chi tiết vui lòng liên hệ Trần Thế Vũ- 01228596685</p>', '', 'cho-thue-van-phong-quan-phu-nhuan-toa-nha-golden-bee-building-nhaxanhs', '', '', '', 11, 1, '13', 'USD', 'm2', 0, NULL, NULL, NULL, NULL, NULL, 1, 2, 528, 570, 323, 'Quận Phú Nhận', 'Mr.Vũ', '', '01228596685', '', 'omely437'),
(51, 'Căn Hộ Mb Babylon, Mặt Tiền Âu Cơ, Q Tân Phú Chỉ Từ 800 Triệu/căn', '', '2012-07-05 03:44:04', NULL, NULL, NULL, '', '', '<p>Căn Hộ Mb Babylon, Mặt Tiền Âu Cơ, Q Tân Phú Chỉ Từ 800 Triệu/căn<br />Căn hộ toạ lạc tại mặt tiền đường Âu Cơ, Cao ốc nằm ở Trung Tâm hành chính Quận Tân Phú gần các công trình phục vụ dân sinh như Bệnh viện Thống Nhất, Chợ Bàu Cát, Co- OpMart Lũy Bán Bích, sân bay Quốc tế Tân Sơn Nhất, Khu du lịch Đầm Sen, Trung tâm Thể thao Đa năng Phú Thọ, trường Đại học Bách Khoa TP. Hồ Chí Minh.<br />Căn hộ cao 18 tầng với 2 tầng trung tâm thương mại với đầy đủ các tiện ích cho sinh hoạt của cuộc sống hiện đại như: khu thương mại, dich vụ sức khỏe, nhà trẻ, hồ bơi, phòng tập thể dục, phục vụ cộng đồng. Thiết kế căn hộ với phong cách kiến trúc hiện đại, độc đáo, tất cả các căn hộ đều có 2-3 mặt tiếp giáp thiên nhiên, các phòng đều thông thoáng tạo đối lưu không khí thật lý tưởng.<br />Diện tích đa dạng từ 47 - 88 m2. Chỉ với 800 triệu Quý khách hàng có thể sở hữu 1 căn hộ đẳng cấp ngay trung tâm Quận Tân Phú, 1 cơ hội không thể bỏ qua.<br />Thanh toán linh hoạt,theo tiến độ xây dựng,có ngân hàng hỗ trợ cho vay 80% trong vòng 15 năm<br />Mọi thông tin chi tiết và đặt chỗ vui lòng liên hệ: Tuyết Anh-Sacomreal Tây Bắc: 0904.136.070 ; 0902.45.16.45</p>', '', 'can-ho-mb-babylon-mat-tien-au-co-q-tan-phu-chi-tu-800-trieucan', '', '', '', 5, 3, '800000000', 'VND', 'Tổng diện tích', 0, NULL, NULL, NULL, NULL, NULL, 0, 1, 529, 563, 323, 'âu Cơ, Tân Thạnh, Q. Tân Phú, Tp. Hồ Chí Minh', 'Tuyết Anh', '', '0949.238.68', '', 'nhaphodep'),
(52, 'Bán biệt thự đường Nguyễn Bá Lân giá 21 tỷ- T/Lượng', '', '2012-07-05 03:47:02', NULL, NULL, NULL, '', '', '<p>Bán biệt thự cao cấp Thảo Điền - Quận 2 , mặt tiền đường Nguyễn Bá Lân , diện tích : 501m2 , hướng Đông Bắc , 1 trệt , 1 lầu , 4 phòng ngũ , hồ bơi , sân vườn rộng , xe oto đậu thoải mái trong sân nhà , nội thất cao cấp , thiết kế kiểu Pháp , sổ hồng , giá bán 21 tỷ . Quý khách hàng có nhu cầu xem nhà xin liên hệ :<br />Thế Trọng . 0933999053</p>', '', 'ban-biet-thu-duong-nguyen-ba-lan-gia-21-ty-tluong', '', '', '', 11, 1, '21000000000', 'VND', 'Tổng diện tích', 0, NULL, NULL, NULL, NULL, NULL, 1, 1, 528, 565, 323, 'Nguyễn Bá Lân', 'Mr.trọng', '', '0933999053', '', 'omely437'),
(53, 'sang nhượng mặt bằng quán Cafe,quán nhậu ,140m2 giá rẻ 40triệu', '', '2012-07-05 03:55:33', NULL, NULL, NULL, '', '', '<p>Mình đang có công việc gia đình nên cần sang lại mặt bằng quán cafe với giá rẻ 40triệu.quán đã đầu tư nhieu nhung gio mình chỉ sang lai 40 triệu chi phí đầu tư thôi(đã bao gồm 3 tháng tiền cọc hết 12triệu rồi), mặt bằng 4tr/tháng,còn nếu ai co nhu cầu sang lại toàn bộ đồ dùng trong quán thì mình sẽ thương lượnng, đồ dùng bao gồm :bàn ghế nhựa giả mây cao cấp,bàn ghế tre,bàn ghế dây nhựa, ti vi LCD Plasma Samsung 43",còn bảo hành 20 tháng, vì mình mới mua dc 4tháng thôi,đầu đĩa ,am ly loa chuyên nghiêp.nghe hay....Quan buoi toi chieu da banh ,xem phim rat dong khach.Cụ thể hơn thì mình gặp rồi thương lượng sau.Mong tiếp người thiêṇ chí.Hơp đồng của mình còn hon 1,5 năm,điện nước chính,cáp, internet wifi đầy đủ, mời đến coi quán.liên hệ qua số dt : 01698527189- 0906829781, gặp Thủy nhé!cảm ơn vì đã xem tin</p>', '', 'sang-nhuong-mat-bang-quan-cafequan-nhau-140m2-gia-re-40trieu', '', '', '', 9, 1, '40000000', 'VND', 'Tổng diện tích', 0, NULL, NULL, NULL, NULL, NULL, 1, 3, 534, 570, 323, 'Quận Phú Nhận', 'Miss.Thủy', '', '01698527189', '', 'omely437'),
(54, 'sang gấp quán cafe sân vườn', '', '2012-07-05 03:59:32', NULL, NULL, NULL, '', '', '<p>Xuất cảnh cần sang gấp quán cafe sân vườn 2 MT đường Trần Huy Liệu &amp; Nguyễn Đình Chính, P.12, Q.Phú Nhuận. Dt : 1500m2, được thiết kế kiến trúc đọc đáo, không gian thơ mộng, sân vườn sang trọng với rất nhiều ý tượng sáng tạo,nơi thư giản lý tưởng, phục vụ điểm tâm, cơm trưa văn phòng nhận đặt tiệc,lượng khách ổn định, doanh thu 300tr/tháng,dữ xe hai lối đi riêng, Giá :1,5tỷ,thương lượng,trong đó có tiền cọc nhà 400tr,hợp đồng thuê còn 6năm,vui lòng liên hệ Chị Thủy 0949 888 346.MTG.</p>', '', 'sang-gap-quan-cafe-san-vuon', '', '', '', 12, 1, '1500000000', 'VND', 'Tổng diện tích', 0, NULL, NULL, NULL, NULL, NULL, 1, 3, 534, 570, 323, 'Quận Phú Nhận', 'chị Thủy', '', '0949 888 34', '', 'omely437'),
(56, 'Sang gấp shop quần áo thời trang nữ', '', '2012-07-05 04:04:14', NULL, NULL, NULL, '', '', '<p>Sang gấp shop quần áo thời trang nữ.Đ/c: 207 Nguyễn Thái Bình,P4,Q.Tân Bình,TP Hồ Chí Minh. Mặt tiền đẹp nhà mới xây, diện tich hơn 20m2 ,khu kinh doanh thời trang sầm uất,toilet riêng sạch đẹp,chỗ thử đỗ của khách riêng biệt rông rãi.Sang với giá 60tr(bao gồm 3 thang tiền cọc nhà 21tr,quầy tính tiền,tủ kệ còn mới 99%,manocanh...). Gía mặt bằng 7tr/1th bao gồm luôn cả điện nước.Ngoài ra còn sang luôn cả quấn áo giá sỉ có thương lượng.LH: trang, 61 nguyễn minh hoàng,p4,q.tân bình, tp hồ chí minh,. LH: trang, 61 nguyễn minh hoàng,p4,q.tân bình, tp hồ chí minh, Tel. 0912606003</p>', '', 'sang-gap-shop-quan-ao-thoi-trang-nu', '', '', '', 18, 1, '7000000', 'VND', 'Tháng', 0, NULL, NULL, NULL, NULL, NULL, 1, 3, 534, 563, 323, 'Quận Tân Bình', 'Miss. Trang', '', '0912606003', '', 'nhaphodep'),
(57, 'cần sang quán coffee đạt tiêu chuẩn 3 sao', '', '2012-07-05 04:12:56', NULL, NULL, NULL, '', '', '<p>Sàn BĐS Đông Dương kính chào quý khách, hiện khách hàng chúng tôi cần sang gấp quán coffee tiêu chuẩn 3 sao, đường Trần Huy Liệu, P15, Phú Nhuận, Tổng DT khuôn viên: 1200m2, nội thất cao cấp, thiết kế độc đáo, không gian thơ mộng, vào kinh doanh liền, lượng khách đông, thu nhập ổn định. Giá sang: 1,9 tỷ. Trong đó bao gồm 400 triệu tiền cọc, hợp đồng thuê mặt bằng còn 6 năm, giá thuê mặt bằng hàng tháng: 4.000/tháng. Lh: 0919 739 400 vui lòng hẹn trước, giá cả thương lượng trực tiếp với chủ. . xem ảnh thật phía dưới.</p>', '', 'can-sang-quan-coffee-dat-tieu-chuan-3-sao', '', '', '', 11, 1, '1900000000', 'VND', 'Tổng diện tích', 0, NULL, NULL, NULL, NULL, NULL, 1, 3, 534, 570, 323, 'Quận Phú Nhận', 'Mr', '', '0919739400', '', 'omely437'),
(58, 'Sang shop Grand View Phú Mỹ Hưng, quận 7', '', '2012-07-05 04:13:51', NULL, NULL, NULL, '', '', '<p>Bán shop Grand View Phú Mỹ Hưng, quận 7, giá 3, 25 tỷ.</p>\n<p>Cần bán gấp căn shop Grand View, Khu Đô Thị Phú Mỹ Hưng, quận 7, TP HCM. Diện tích 110m2, khu trung tâm Phú Mỹ Hưng, tiện mở văn phòng công ty, nhà hàng, cho thuê, … Bao ra sổ hồng. Giá bán 3, 25 tỷ. LH: 0913.98.2899 (Mr Vinh).</p>', '', 'sang-shop-grand-view-phu-my-hung-quan-7', '', '', '', 3, 4, '3250000000', 'VND', 'Tổng diện tích', 0, NULL, NULL, NULL, NULL, NULL, 0, 3, 534, 582, 323, 'Nguyễn Đức Cảnh, Phường Tân Phong, Quận 7, TP.Hồ Chí Minh', 'Mr Vinh', '', '0913982899', '', 'nhaphodep'),
(59, 'Sang quán cafe 2 mặt tiền ở Bình Thạnh', '', '2012-07-05 04:17:06', NULL, NULL, NULL, '', '', '<p>Sang quán cafe 2 mặt tiền đường Nguyễn Văn Đậu, quận Bình Thạnh, do có việc riêng nên sang quán cafe đang kinh doanh tốt, vị trí đẹp, khu dân cư đông đúc<br />Quán cafe mới. đẹp DT 4x35m,1 trệt 3 lầu 1 sân thượng, đang có 6 phòng cho thuê, mỗi phòng cho thuê 3tr, giá sang 290tr (có cọc 50tr) , giá thuê nguyên căn 22tr.<br />Còn nếu ko sang 6 phòng cho thuê thì giá sang là 180tr, giá thuê mặt bằng là 15tr, sang là vào kinh doanh ngay, còn thương lượng cho người có thiện chí<br />Tel.0989106223 Mr.Thắng. LH: Thắng, Tel. 0989106223</p>', '', 'sang-quan-cafe-2-mat-tien-o-binh-thanh', '', '', '', 11, 1, '290000000', 'VND', 'Tổng diện tích', 0, NULL, NULL, NULL, NULL, NULL, 1, 3, 534, 563, 323, 'quận Bình Thạnh', 'Mr.Thắng', '', '0989106223', '', 'omely437'),
(60, 'Bán  biệt thự số 3 Quốc Hương,  Quận 2, TP.Hồ Chí Minh', '', '2012-07-05 04:35:36', NULL, NULL, NULL, '', '', '<p>Chính chủ Bán nhà Biệt Thự trong khu compound khép kín mặt tiền số 3 Quốc Hương, P.Thảo Điền, Quận 2 HCM đối diện Tòa nhà Thảo Điền Pearl. Khu có cổng bảo vệ, biệt lập, yên tĩnh, vị trí tuyệt đẹp Quốc Hương giao Xuân Thủy, trung tâm của P.Thảo Điền, khu nhiều người nước ngoài.<br />DTXD: 17x18 (=311m2) gồm 2 lô đất thổ cư 100%.<br />DTSD: 900 m2 (5 tầng)<br />Thiết kế: 1 trệt, 1 lửng, 3 lầu, Phòng Khách lớn, Phòng Ăn, 8 Phòng Ngủ, 8 Phòng Tắm &amp; WC, Garage ô tô, thang máy, hồ bơi, Phòng xông hơi, sử dụng nước nóng năng lượng mặt trời, camera, máy phát điện, máy rửa chén, máy xấy khô, bồn tắm massage, sàn gỗ, internet, máy lạnh, ban công lớn, sân thượng.<br />Thích hợp để ở hoặc cho người nước ngoài thuê. Giấy tờ hợp lệ.<br />Giá 27 tỷ thương lượng.<br />LH: Tel. 0919042191 (chính chủ)<br />Chấp nhận môi giới. Miễn tiếp báo, quảng cáo.</p>', '', 'ban-biet-thu-so-3-quoc-huong-quan-2-tpho-chi-minh', '', '', '', 9, 5, '26000000000', 'VND', 'Tổng diện tích', 0, NULL, NULL, NULL, NULL, NULL, 0, 1, 527, 565, 323, '3 Quốc Hương,  Quận 2, TP.Hồ Chí Minh', 'chính chủ', '', '0919042191', '', 'nhaphodep'),
(61, 'Bán căn hộ Q7 giá gốc CĐT thanh toán linh hoạt 1 tỷ/căn lh: 0909111194', '', '2012-07-05 04:49:03', NULL, NULL, NULL, '', '', '<p>Bán căn hộ Era Town Q7 tọa lạc ngay mặt tiền đường Nguyễn Lương Bằng, liền kề khu đô thị Phú Mỹ Hưng, gần trường Quốc Tế RMIT, bệnh viện tim Tâm Đức, trung tâm thương mại Parkson Paragon... giáp 3 mặt tiền sông, nơi không gian lý tưởng. Dt: 66-161m2, 2 đến 3 PN, giá gốc CĐT 14tr/m2. Thanh toán 60% nhận nhà hoàn thiện. Cơ hội đầu tư và ở, Quy mô hơn 10ha..để biết thêm chi tiết và xem nhà mẫu vui lòng liên hệ : 0909111194 để được tư vấn tốt hơn..!!!.LH: thu ba, Tel. 0909111194</p>', '', 'ban-can-ho-q7-gia-goc-cdt-thanh-toan-linh-hoat-1-tycan-lh-0909111194', '', '', '', 9, 1, '14000000', 'VND', 'm2', 0, NULL, NULL, NULL, NULL, NULL, 1, 1, 529, 582, 323, 'quận 7', 'thu ba', '', ' 0909111194', '', 'omely437'),
(62, 'Sang quán ăn,diện tích 75m2,mặt tiền ,gần 2 trường 1chung cư giá 30tr ,5tr/tháng', '', '2012-07-05 04:56:06', NULL, NULL, NULL, '', '', '<p>Mặt tiền đường SONG HÀNH quận 12,gần ngã tư AN SƯƠNG vỉa hè rộng thênh thang , Gần sát bên 2 trường học điểm quốc gia và cách 1 khu chung cư lớn vài trăm mét , đường công nhân,học sinh, nhân viên đi làm,... qua lại cực đông.Sau lưng là chợ. Nhà nguyên căn,đẹp , sạch sẽ thoáng mát, với đầy đủ tiện nghi trong quán ăn như : tủ lạnh đông , tivi,bàn inox, ghế , tấm bạc che, nồi niêu , xoang chảo , lò , tủ kiếng , két bia và nước ngọt,... Tiếp người thiện chí , dứt khoát ,rõ ràng, ko thích lằng nhằng.09188.45579 gặp Vũ .sau 5h hàng ngày trừ thứ 7 , CN</p>', '', 'sang-quan-andien-tich-75m2mat-tien-gan-2-truong-1chung-cu-gia-30tr-5trthang', '', '', '', 9, 1, '5000000', 'VND', 'Tháng', 0, NULL, NULL, NULL, NULL, NULL, 1, 3, 534, 566, 323, 'quận 12', 'Mr.Vũ', '', '0918845579', '', 'omely437'),
(63, 'Sang quán ăn gia đình giá rẻ', '', '2012-07-05 05:00:15', NULL, NULL, NULL, '', '', '<p>Không có người quản lí cần sang lại quán ăn gia đình đang kinh doanh ổn định.<br />- Hình thức: Quán ăn gia đình chuyên đồ rừng, dê. Tầng trệt 8 bàn, 2 phòng VIP máy lạnh ( 4 bàn/P), sân thượng 8 bàn thoáng mát.<br />- Trang bị: Bàn ghế bằng gỗ sang trọng 21 bộ, tủ mát 1, tủ đông 1, tủ lạnh 1, bộ bếp khò 3 bếp, 2 bếp khò đơn, hệ thống ga, quạt hút.......<br />Mặt bằng 4,5*20 (nở hậu 6m), 3 lầu, hợp đồng còn 3 năm giá thuê 22tr/tháng<br />Giá sang 420tr (bao gồm 1 tháng tiền cọc). Mr Nhật 0933 204209</p>', '', 'sang-quan-an-gia-dinh-gia-re', '', '', '', 9, 1, '420000000', 'VND', 'Tổng diện tích', 0, NULL, NULL, NULL, NULL, NULL, 1, 3, 534, 576, 323, 'quận Bình Thạnh', 'Mr.nhật', '', '0933 204209', '', 'omely437'),
(64, 'Cần sang gấp CLB bida', '', '2012-07-05 05:08:42', NULL, NULL, NULL, '', '', '<p>Không người trông coi cần sang gấp clb bida. đường số 10 cây trâm mặt bằng 15 x 30m rộng, thoáng mát, có hệ thống phun sương. có chỗ ở lại cho nhân viên .giá thuê mb là 7 triệu/tháng. clb gồm 13 bàn ( 6 lỗ ,7 phăng) bàn mua của tân lộc. đá ngoại, băng đài loan còn mới. thu nhập ổn định. giá mình sang là 380 triệu, còn thương lượng . lh: 0902 54 74 64 ( a. trường ). LH: đỗ sơn trường, 61/1 đông lân bà điểm hm, Tel. 0902547464</p>', '', 'can-sang-gap-clb-bida', '', '', '', 10, 1, '380', 'VND', 'Tháng', 0, NULL, NULL, NULL, NULL, NULL, 1, 3, 534, 573, 323, 'quận Gò Vấp', 'Mr.trường', '', '0902547464', '', 'omely437'),
(65, 'Cần sang Shop túi xách thời trang gấp', '', '2012-07-05 05:12:41', NULL, NULL, NULL, '', '', '<p>Vợ sinh em bé mà tôi có 3 cửa hàng nên quản lý không nổi , nay muốn sang lại , shop túi xách trên đường Quang Trung gần ngã tư thống nhất , khu vực sầm uất nhất,shop làm lâu năm nhiều khách quen , shop đã có tiếng trên thị trường,sang lại tất cả khoảng 600 cái túi tivi đầu máy amply camera lcd kệ tủ, nói chung là sang lại tất cả,ace chỉ vào là bán thôi không cần làm gì, giá 170T trong đó có 3 tháng cọc nhà còn TL, ace liên hệ trực tiếp để biết rỏ hơn<br />Liên hệ :090.777.2270 Hoàng. LH: trieu hoang, 410 quang trung . p.10 q.go vap, Tel. mobi-0907772270</p>', '', 'can-sang-shop-tui-xach-thoi-trang-gap', '', '', '', 10, 1, '170000000', 'VND', 'Tổng diện tích', 0, NULL, NULL, NULL, NULL, NULL, 1, 3, 534, 573, 323, 'quận Gò Vấp', 'Mr.hoàng', '', '0907772270', '', 'omely437'),
(66, 'Sang shop thời trang cao cấp Q 1', '', '2012-07-05 05:16:28', NULL, NULL, NULL, '', '', '<p>Sang Shop Thời Trang Cao Cấp Đường HBT Q.1 4,2m x 10m<br />Toàn Bộ Kệ Và Thiết Bị Cao Cấp + Tiền Cọc Thuê 6000, Giá thuê 1800 /T .<br />Sang Giá 205 Tr , LH: A.Tuấn 090.88.35678. Tuấn - Ni 0908835678 - 0907999782</p>', '', 'sang-shop-thoi-trang-cao-cap-q-1', '', '', '', 9, 1, '205000000', 'VND', 'Tổng diện tích', 0, NULL, NULL, NULL, NULL, NULL, 1, 3, 534, 569, 323, 'quận 1', 'Ni', '', '0907999782', '', 'omely437'),
(67, 'Xuất cảnh nên cần sang lại quán cafe Điểm Hẹn.81 đường 8,P. Linh Trung,Q.Thủ Đức', '', '2012-07-05 05:19:44', NULL, NULL, NULL, '', '', '<p>Xuất cảnh nên cần sang lại quán cafe Điểm Hẹn.81 đường 8,P. Linh Trung,Q.Thủ Đức.Quán đang hoạt động bình thường,lượng khách ổn định.DT:14x22m.2 LCD 52in.1LCD 32in.4loa,giàn vi tính,K+,Wifi,tủ mát,36 bộ bàn ghế các loại.đủ đồ dùng.sang giá: 250tr nguyên cọc 30tr.Có TL.LH: ATHANG, 463B/53B/18 CMT8,P13.Q10, Tel. 01693595698</p>', '', 'xuat-canh-nen-can-sang-lai-quan-cafe-diem-hen81-duong-8p-linh-trungqthu-duc', '', '', '', 14, 1, '250000000', 'VND', 'Tổng diện tích', 0, NULL, NULL, NULL, NULL, NULL, 1, 3, 534, 572, 323, 'quận thủ đức', 'anh thắng', '', '01693595698', '', 'omely437'),
(68, 'Sang gấp quán ăn phong vũ mt đường số 9 kdc bình hưng dt 300 m2', '', '2012-07-05 05:22:55', NULL, NULL, NULL, '', '', '<p>Không người quản lý cần sang gấp quán ăn phong vũ , 2 mt đường số 9 khu dân cư bình hưng xả bình hưng , bình chánh , trong nhà và ngoài sân vườn khoảng 300 vuông , vị trí trắc địa , khu sầm uất , tập trung nhều quán ăn , quán đang hoạt đông lượng khách đông và ổn định , giấy phép kinh doanh ăn uống , giấy chứng nhận an toàn vệ sinh thực phẩm đầy đủ , bàn ghế chén đỉa và các dụng cụ phục vụ của quán còn sạch mới , chính chủ cần sang gấp giá 130 triệu , không tiếp trung gian. vui lòng trực tiếp với anh vinh 0909073940 . 0908250565</p>', '', 'sang-gap-quan-an-phong-vu-mt-duong-so-9-kdc-binh-hung-dt-300-m2', '', '', '', 10, 1, '130000000', 'VND', 'Tổng diện tích', 0, NULL, NULL, NULL, NULL, NULL, 1, 3, 534, 578, 323, 'huyện bình Chánh', 'mr.vinh', '', ' 0909073940', '', 'omely437'),
(69, 'BÁN hoặc CHO THUÊ NGUYÊN CĂN, nhà mặt tiền Q1.Gần chợ Bến thành (100m)', '', '2012-07-05 05:27:50', NULL, NULL, NULL, '', '', '<p>BÁN hoặc CHO THUÊ NGUYÊN CĂN,nhà mặt tiền số 43.Trương Định, P.BT, Q1. Gần chợ Bến Thành và khách sạn New World. Thuận tiện buôn bán tất cả các mặt hàng hoặc mở Văn phòng Công ty. Nằm khúc giữa công viên Tao Đàn và công viên 23/9. Khu vực cao ráo, không bao giờ ngập nước. Hiện đang cho thuê mặt bằng, bán shop thời trang đã trên 10 năm, Giá cao. Diện tích KV 3,6 x 22,5. Một lầu đúc. Hướng Đông Bắc. Sổ hồng 2010. Giá bán: 31 Tỷ. Cho thuê: 2500.USD (~52.Triệu)/Tháng.LH: A.Chính. Tel: 0934.573.468</p>', '', 'ban-hoac-cho-thue-nguyen-can-nha-mat-tien-q1gan-cho-ben-thanh-100m', '', '', '', 17, 1, '31000000000', 'VND', 'Tổng diện tích', 0, NULL, NULL, NULL, NULL, NULL, 1, 1, 527, 569, 323, 'quận 1', 'anh Chính', '', '0934573468', '', 'nhaphodep'),
(70, '5 Căn hộ cao cấp Ngọc Lan, Ở ngay, TT chậm ko L/S, kế Parkson PMH, giá tốt', '', '2012-07-05 05:32:22', NULL, NULL, NULL, '', '', '<p>Mở bán đợt cuối cùng 5 căn đẹp nhất căn hộ cao cấp Ngọc Lan Quận 7, View Công viên, Sông Sài Gòn, Cầu Phú Mỹ cực đẹp. Không khí trong lành thoáng mát.<br />- Kế bên Parkson PMH, BV Pháp Việt, công viên Mũi Đèn Đỏ.<br />- Thanh toán linh hoạt 2 năm không lãi suất, dân cư đã ở đông.<br />- Nội thất cao cấp, ga trung tâm, Thiết kế đẹp.<br />- Tặng bếp ga, máy hút mùi, kệ tủ bếp, sàn lát gỗ....<br />Số lượng còn rất ít nhanh chân chọn căn đẹp cho gia đình mình !!!. LH: Duy Phú, Sàn giao dịch BDS Nam Việt, Tel. 0946204499</p>', '', '5-can-ho-cao-cap-ngoc-lan-o-ngay-tt-cham-ko-ls-ke-parkson-pmh-gia-tot', '', '', '', 9, 1, '15500000', 'VND', 'm2', 0, NULL, NULL, NULL, NULL, NULL, 1, 1, 529, 582, 323, 'quận 7', 'anh Phú', '', '0946204499', '', 'omely437'),
(71, 'Bán biệt thự Nguyễn Văn Hưởng thảo điền quận 2 giá 22 tỷ', '', '2012-07-05 06:22:38', NULL, NULL, NULL, '', '', '<p>Bán biệt thự Nguyễn Văn Hưởng thảo điền quận 2 giá 22 tỷ<br />Liên hệ: Thanh Tâm 0932 136 556<br />• Nguyễn Văn Hưởng phường Thảo Điền Quận 2 TPHCM<br />• Diện tích: 10m x 25m.<br />• Di ện t ích s àn: 438m2.<br />• Đặc điểm: Nhà 1 trệt, 2 lầu, căn góc rất thoáng mát và đầy đủ ánh sáng ( ban ngày không cần dùng đèn<br />Có 5 phòng ngủ (4 phòng lớn, 1 phòng nhỏ), 1 garage, 1 phòng thờ, 4WC, có sân trước rộng, sân hông va sân sau. Nhà nội thất cao cấp, cửa sổ sử dụng cửa EURO WINDOW…</p>\n<p>Vị trí nhà: hẻm ngắn c ách m ặt ti ền Nguyễn Văn Hưởng khoảng 40m, cách trường British International vài căn nhà và gần trường quốc tế Mỹ và Úc, gần siêu thị An Phú và Metro</p>\n<p>Khu vực: nhiều người nước ngoài thuê ở, yên tĩnh và rất an ninh (trước nhà có chốt Bảo Vệ của Khu Biệ t Thự khép kín của Công ty Chiến Thắng)<br />Gía bán: 22 tỷ<br />Pháp lý: Sổ Hồng<br />Hướng: View Đông Nam,Cửa Tây Nam</p>', '', 'ban-biet-thu-nguyen-van-huong-thao-dien-quan-2-gia-22-ty', '', '', '', 6, 6, '22000000000', 'VND', 'Tổng diện tích', 0, NULL, NULL, NULL, NULL, NULL, 0, 1, 528, 565, 323, 'Nguyễn Văn Hưởng thảo điền quận 2 ', 'Thanh Tâm', '', '0932136556', '', 'nhaphodep'),
(72, 'Chỉ TT(55%) 400tr/120m2 Đất nền Anh Tuấn, Lê Văn Lương, H.Nhà Bè, giáp PMH_Q7_Tặng 2 vé đi Singapore', '', '2012-07-05 06:29:43', NULL, NULL, NULL, '', '', '<p style="margin-left:30px;">Chỉ TT(55%) 400tr/120m2 Đất nền Anh Tuấn, Lê Văn Lương, H.Nhà Bè, giáp PMH_Q7_Tặng 2 vé đi Singapore trị giá 20tr.</p>\n<p>Tặng 2 vé du lịch Singapore (trị giá 20tr) chiết khấu 8%. NGÂN HÀNG VIETTINBANK hỗ trợ vay vốn trong vòng 7 năm.<br />Nằm mặt tiền đường Lê Văn Lương cách Phú Mỹ Hưng 5km, chợ Bến Thành 12km...<br />Giao thông thuận lợi : đảm bảo không kẹt xe, không ngập nước<br />DT : 120m2(6x20). Giá 6,5tr/m2. Pháp lý sổ hồng<br />Thanh toán 10 đợt / 12 tháng<br />- Thanh toán 55% nhận nền ngay. Còn 45% còn lại trả chậm không lãi suất.<br />LIÊN HỆ: PKD Chủ đầu tư ANH TUẤN gặp :<br />Hoàng Minh Thoan – ĐT : 0983 85 85 12</p>', '', 'chi-tt55-400tr120m2-dat-nen-anh-tuan-le-van-luong-hnha-be-giap-pmhq7tang-2-ve-di-singapore', '', '', '', 9, 7, '400000000', 'VND', 'Tổng diện tích', 0, NULL, NULL, NULL, NULL, NULL, 0, 1, 525, 563, 323, ' Lê Văn Lương, H.Nhà Bè', 'Hoàng Minh Thoan', '', '0983858512', '', 'nhaphodep'),
(73, 'Đất nền sổ hồng 400 triệu/nền – đường Bà Hom nối dài', '', '2012-07-05 08:54:07', NULL, NULL, NULL, '', '', '<p>Đất nền sổ hồng 400 triệu/nền – đường Bà Hom nối dài</p>\n<p>Hãy đến với Tân Đô- Eco Village để tận hưởng cuộc sống với đầy đủ dịch vụ tiện ích, nơi có thể biến giấc mơ của bạn thành hiện thực, với đầy đủ dịch vụ tiện ích: trường học quốc tế, TTTM, công viên xanh….đặc biệt hồ sinh thái 15 ha và bến du thuyền<br />Cách khu tên lửa 15 phút, gần chợ Phú Lâm, Bình Tân, Q6, Tân Phú… Cách chợ Bến Thành 30 phút xe máy<br />Cơ sở hạ tầng 90%. Thanh toán 18 tháng không tính lãi suất Ngân Hàng. Đã có sổ đỏ từng nền.<br />Kính mời quý Khách đăng ký tham quan dự án miễn phí, có xe đưa đón mỗi ngày.<br />HOTLINE : 0933 884 881</p>', '', 'dat-nen-so-hong-400-trieunen-duong-ba-hom-noi-dai', '', '', '', 10, 1, '400000000', 'VND', 'Tổng diện tích', 0, NULL, NULL, NULL, NULL, NULL, 1, 1, 525, 583, 323, 'Bà Hom Q.6', 'Tư Vấn', '', '0933884881', '', 'hoanganh'),
(74, 'Cho thuê căn hộ Beehome giá rẻ tại đường Cộng Hòa', '', '2012-07-05 08:58:34', NULL, NULL, NULL, '', '', '<p>Cho thuê căn hộ Beehome giá rẻ tại đường Cộng Hòa Quận Tân Bình.<br />Liên hệ trực tiếp Chủ đầu tư: Ms.Nguyệt 0974.27.29.25 (24/24) để biết thêm chi tiết.<br />Thời hạn bàn giao: Q4/2012<br />Vị trí: đường B1- Khu VK 928 Cộng Hòa ,F.13 Quận Tân Bình.<br />Căn hộ nằm trong khu tiện ích : khu thể thao, thư viện, internet, café…. khu vực an ninh cao, đảm bảo điều kiện sống xanh, sạch, đẹp.<br />Diện tích: 35m2-36m2-65m2<br />Thời hạn thuê: 6 năm, 12 năm.<br />Giá thuê: 205 triệu/1 căn/ 6 năm.LH: Ms.Nguyệt, 60A Trường Sơn - Q.TB, Tel. 0974272925</p>', '', 'cho-thue-can-ho-beehome-gia-re-tai-duong-cong-hoa', '', '', '', 15, 1, '2000000', 'VND', 'Tháng', 0, NULL, NULL, NULL, NULL, NULL, 1, 2, 529, 586, 323, 'Quận Tân Bình', 'chị Nguyệt', '', '0974272925', '', 'omely437'),
(75, 'Nhà Xưởng &amp; Nhà Kho Cơ Sở Hạ Tầng Tốt, Chủ Quyền Đầy Đủ', '', '2012-07-05 09:05:01', NULL, NULL, NULL, '', '', '<p>Nhà Xưởng &amp; Nhà Kho Cơ Sở Hạ Tầng Tốt, Chủ Quyền Đầy Đủ</p>\n<p>Cần bán nhà xưởng và nhà kho tại khu công nghiệp Tân Tạo, TPHCM.<br />- Cơ sở hạ tầng hoàn chỉnh<br />- Giấy tờ chủ quyền đầy đủ.</p>\n<p>Tổng Diện tích: 5000m2.<br />- Có trạm biến áp riêng, đồng hồ điện riêng.<br />- Co khu văn phòng và nhà ăn.<br />- Đường rộng 12m, gần đường lớn rộng 60m.</p>\n<p>Giá: 200 USD/m2 (chưa thuế)<br />LH: Cô Năm - 0936 253 617</p>', '', 'nha-xuong-nha-kho-co-so-ha-tang-tot-chu-quyen-day-du', '', '', '', 14, 1, '200', 'USD', 'm2', 0, NULL, NULL, NULL, NULL, NULL, 1, 1, 531, 577, 323, 'Đường Số 5A, Bình Tân, TP.Hồ Chí Minh', 'Cô Năm', '', '0936253617', '', 'nhaphodep'),
(76, 'Cho thuê căn hộ cao cấp The Everich, đường 3 tháng 2, quận 11', '', '2012-07-05 09:10:07', NULL, NULL, NULL, '', '', '<p>Căn hộ cho thuê - The Everich, đường 3-2, quận 11. Căn hộ cao cấp mới xây dựng, siêu thị ở tầng trệt. Khu trung tâm thương mại. Lầu cao. Diện tích lớn: 151m2. Gồm: phòng khách, 3 phòng ngủ, 3 phòng tắm, bếp. Căn hộ trang bị đầy đủ tiện nghị cao cấp, hiện đại. Hợp đồng thuê 1 năm. Giá thuê: 1.300 USD ~ 27.300.000 VNĐ/tháng. Đặt cọc 3 tháng. Thanh toán 2 tháng. Miễn trung gian.Hương Giang. Tel: 090-957-7879. </p>', '', 'cho-thue-can-ho-cao-cap-the-everich-duong-3-thang-2-quan-11', '', '', '', 10, 1, '1300', 'USD', 'Tháng', 0, NULL, NULL, NULL, NULL, NULL, 1, 2, 529, 567, 323, 'quận 11', 'Mis. Hương Giang', '', '0909577879', '', 'omely437'),
(78, 'Cho thuê căn hộ SAIGON PEARL, đẳng cấp 5 sao, có và không nội thất', '', '2012-07-05 09:16:02', NULL, NULL, NULL, '', '', '<p>Căn hộ SAIGON PEARL, đẳng cấp 5 sao, sát Quận 1<br />- RUBY 1, tầng 9, 140m2, 3 pn, hướng TN,view city, có nội thất, Giá 1600<br />- RUBY 1, tầng 16, 86m2, 2 pn,view city, có nội thất, Giá 1300<br />- RUBY 2, tầng 10, 135m2, 3 pn, view city, Giá 1300<br />- TOPAZ 1, tầng 18, 86m2, 2 pn, view cầu Saigon, Giá 1200<br />- TOPAZ 1, tầng 30, 89m2, 2 pn, view Cảng, view sông Saigon, Giá 900<br />- SAPPHIRE 1, tầng 20, 90m2, 2 pn, view sông Saigon, view Cảng, Giá 950<br />- SAPPHIRE 2, tầng 5, 90m2, 2 pn, view city, Giá 900. Giá thuê từ 900 - 1700, tùy nội thất và view. Liên hệ: Định 09099 88697, Chuyên mua bán và cho thuê căn hộ SAIGON PEARL</p>', '', 'cho-thue-can-ho-saigon-pearl-dang-cap-5-sao-co-va-khong-noi-that', '', '', '', 11, 1, '1700', 'USD', 'Tổng diện tích', 0, NULL, NULL, NULL, NULL, NULL, 1, 2, 529, 569, 323, 'quận 1', 'anh Định', '', '09099 88697', '', 'omely437'),
(79, 'bán nhà mặt tiền đường số -quận 7', '', '2012-07-05 09:31:45', NULL, NULL, NULL, '', '', '<p>nhà diện tích 4x17,<strong> hướng bắc</strong> ,mặt tiền đường 14m, khu an ninh, cao thoáng, gần chợ, thuận tiện về giao thông, gần lotte, về quận 1 chỉ 10 phút, giá bán.2,8 tỷ</p>\n<p> </p>', '', 'ban-nha-mat-tien-duong-so-quan-7', '', '', '', 8, 1, '3000000000', 'VND', 'Tổng diện tích', 0, NULL, NULL, NULL, NULL, NULL, 1, 1, 527, 582, 323, 'đường số 17-tân quy-quận 7', 'A Hồng', '', '0903059236', '', 'donghong3168@gmail.com'),
(80, 'Bán nhà Bà Điểm giáp quận 12 ngay ngã tư an sương ,DT 4x13 đúc 1trệt 2lầu', '', '2012-07-05 14:33:48', NULL, NULL, NULL, '', '', '<p>Bán nhà Bà Điểm giáp quận 12 ngay ngã tư an sương ,DT 4x13 đúc 1trệt 2lầu , sổ hồng riêng , nhà xây dể ở , đường bê tông 6m diện nước riêng , nội thất cao cấp , tương áp gạch men , cầu thang áp đá hoa cương , trần dóng thạch cao , dân cư đông không mồ mã , gần trường học cấp 1,2,3 , ngã tư Trung Chánh , siêu thị , nhà sách , ttvh q12 500m , giá bán 1,8 tỷ triệu , sổ hồng chính chủ bao công chứng sang tên mtg.LH: quan, Tel. 0973633378</p>', '', 'ban-nha-ba-diem-giap-quan-12-ngay-nga-tu-an-suong-dt-4x13-duc-1tret-2lau', '', '', '', 7, 1, '1800000000', 'VND', 'Tổng diện tích', 0, NULL, NULL, NULL, NULL, NULL, 1, 1, 527, 566, 323, 'quận 12', 'Mr.Quân', '', '0973633378', '', 'omely437'),
(81, 'Bán 2 nền nhà Phố Tuyệt Đẹp Bùi Đình Túy 4x9 (GPXD 3 lầu) giá rất rẻ', '', '2012-07-05 14:37:53', NULL, NULL, NULL, '', '', '<p>- Nền đất đẹp tại hẻm 3m Bùi Đình Túy, Bình Thạnh<br />- DT:4x9<br />- có giấy phép XD, 3 lầu<br />- Khu an ninh<br />- có sổ hồng từng lô ( cơ hội tốt cho người có thu nhập TB)<br />- giá:1.15 tỷ/lô<br />- Huỳnh Nhạ: 0909 474 616. LH: Bất Động Sản Double Land , - 105 Hoa Lan - P2 - Phú Nhuận - Tel. 09 17 85 17 17</p>', '', 'ban-2-nen-nha-pho-tuyet-dep-bui-dinh-tuy-4x9-gpxd-3-lau-gia-rat-re', '', '', '', 9, 1, '1500000000', 'VND', 'Tổng diện tích', 0, NULL, NULL, NULL, NULL, NULL, 1, 1, 534, 576, 323, 'quận Bình Thạnh', 'Huỳnh Nhạ', '', '0909474616', '', 'omely437'),
(82, 'HOT.HOT trang thiết bị cao cấp.P15.Q8', '', '2012-07-05 14:42:32', NULL, NULL, NULL, '', '', '<p>Nhà chính chủ,nhà cao cấp cầu thang đá hoa cương,đá ốp tường ,cửa gỗ soan đào,dàn tủ bếp gỗ,đá bóng kiếng 60 lót nền, phòng ngũ ,phòng khách rộng thoáng mát.hẻm cán nhựa 6m xem là ưng ý ngay. 3,5*12m hai lầu 1ty4 . 4*14m hai lầu 1ty6.nhà 4,6* 14 hai lầu hai mặt tiền hẻm tất cả đều đổ thật . LH. 0909009117. Vạn … 0973499577 . Thanh. LH: van, 20/20b dong me coc phuong 15 quan 8, Tel. 0909009117</p>', '', 'hothot-trang-thiet-bi-cao-capp15q8', '', '', '', 7, 1, '0', 'VND', 'Tổng diện tích', 0, NULL, NULL, NULL, NULL, NULL, 1, 1, 527, 581, 323, 'quận 8', 'Van', '', '0909009117', '', 'omely437'),
(83, 'Nhà Bán đường chợ Lớn hẻm 2m.Q6 giá 900tr', '', '2012-07-05 14:46:13', NULL, NULL, NULL, '', '', '<p>Nhà mới xây dựng cuối năm 2010 vật liệu cao cấp nhà đẹp xem là ưng ý liền.địa chỉ.266/3/13a chợ lớn P11.Q6.ngang 2,8x7m 1 lầu khu yên tỉnh,nhà thoáng mát gần siu thị Metro và chợ Bình phú.tiếp người có thiện chí.miễng trung gian GTHL bao sang tên.Xem nhà xin liên hệ trước cám ơn. 0909009117 Vạn .LH: van, 20/20b dong me coc phuong 15 quan 8, Tel. 0909009117</p>', '', 'nha-ban-duong-cho-lon-hem-2mq6-gia-900tr', '', '', '', 7, 1, '0', 'VND', 'Tổng diện tích', 0, NULL, NULL, NULL, NULL, NULL, 1, 1, 527, 583, 323, 'quận 6', 'Van', '', '0909009117', '', 'omely437'),
(84, 'Giá hot 790 Tr hẻm 3m Lưu Quý Kỳ. cầu Nguyễn Tri Phương 200m', '', '2012-07-05 14:50:31', NULL, NULL, NULL, '', '', '<p>Nhà bán 3 x 7m nhỏ xinh 1 trệt 1 lầu 1 lững trang thiết bị cao cấp xem là thích,nhà gần chợ xóm củi gần cầu NTP. Qua quận 5 chỉ 5p.nhà giấy tờ hợp lệ bao sang tên cho khách mua.có giấy thông tin huynh hoạch của phòng quản lý dô thị Quận 8 tiếp người có thiện chí.giảm 2% cho người mua trực tiếp.xem nhà xin liên hệ trước cám ơn. 0909009117 vạn…. LH: van, 20/20b dong me coc phuong 15 quan 8, Tel. 0909009117</p>', '', 'gia-hot-790-tr-hem-3m-luu-quy-ky-cau-nguyen-tri-phuong-200m', '', '', '', 6, 1, '0', 'VND', 'Tổng diện tích', 0, NULL, NULL, NULL, NULL, NULL, 1, 1, 527, 563, 323, 'quận 4', 'van', '', '0909009117', '', 'omely437'),
(85, 'Giá Vip HXH Lũy Bán Bích P01 Q11.1ty825tr', '', '2012-07-05 14:54:16', NULL, NULL, NULL, '', '', '<p>Nhà bán ngang 5.5 nở hậu 7.5x7m.40m2.hai lầu,3 p ngũ,1p bếp,1p khách.nhà đẹp xem là ưng ý.khu an ninh dân chí cao gần công viên nước Đầm Sen.tổng DT 91m2.GTHL bao sang tên.tiếp người có thiện chí.giảm 2% cho khách hàng mua trực tiếp.miễng trung giang.Xem nhà xin liên hệ trước cám ơn. 0909009117 Vạn.LH: van, 20/20b dong me coc phuong 15 quan 8, Tel. 0909009117</p>', '', 'gia-vip-hxh-luy-ban-bich-p01-q111ty825tr', '', '', '', 8, 1, '0', 'VND', 'Tổng diện tích', 0, NULL, NULL, NULL, NULL, NULL, 1, 1, 527, 583, 323, 'quận 8', 'van', '', '0909009117', '', 'omely437'),
(86, 'Đất Cao Su Bình Phước xuất cảnh cần bán gấp', '', '2012-07-05 14:59:43', NULL, NULL, NULL, '', '', '<p>Xuất cảnh cần bán gấp lô đất Cao Su tại Đức Liễu, Bù Đăng, Bình Phước: 18ha: 14ha Cao Su + 4ha Sầu Siêng; tất cả đang thu hoạch 30tr/ngày và 1 trang trại heo rừng 100 con + 1 căn biệt thự.<br />Giá bán cho người thiện chí: 15tỷ<br />Lh: 0976.844.315(Mr.Hoàng)</p>', '', 'dat-cao-su-binh-phuoc-xuat-canh-can-ban-gap', '', '', '', 9, 1, '15000000000', 'VND', 'Tổng diện tích', 0, NULL, NULL, NULL, NULL, NULL, 1, 1, 521, 31, 323, 'Bù Đăng - Bình Phước', 'anh Hoàng', '', '0976.844.31', '', 'omely437'),
(87, 'Cần bán đất nông nghiệp Nguyễn Thị Rành, phường Nhuận Đức, Huyện Củ Chi, TP.HCM', '', '2012-07-05 15:02:33', NULL, NULL, NULL, '', '', '<p>cần bán đất mặt tiền Nguyễn Thị Rành-Nhuận Đức-Củ Chi: 58,67(NH65) x 103 = 6500m2, gần bò sữa, địa đạo củ chi. tiện xây dựng nhà xưởng, trang trại, nghĩ dưỡng...sổ đỏ chính chủ.<br />giá bán: 5,5 tỷ<br />lh: 0976.844.315(Mr.hoàng)</p>', '', 'can-ban-dat-nong-nghiep-nguyen-thi-ranh-phuong-nhuan-duc-huyen-cu-chi-tphcm', '', '', '', 9, 1, '5500000000', 'VND', 'Tổng diện tích', 0, NULL, NULL, NULL, NULL, NULL, 1, 1, 521, 574, 323, 'Củ Chi', 'anh Hoàng', '', '0976844315', '', 'omely437'),
(88, 'Kẹt tiền bán gấp nền đất giá rẻ ở đường Mã Lò', '', '2012-07-05 15:07:41', NULL, NULL, NULL, '', '', '<p>Cần bán nền đất diện tích: 4.3x12.5m ở đường Mã Lò, Q. Bình Tân. Đường rộng 6m đổ bê tông, ô tô ra vào thoải mái. Cách mặt tiền đường Mã Lò 150m, cách ngã tư HL2-ML 800m, gần trường học các cấp I,II,III, ra đường Lê Văn Quới khoảng 500m, ngay khu dân cư hiện hữu, an ninh tốt, đã có nước máy và điện sinh hoạt. Đất có sổ đỏ riêng. Giá: 760 triệu (còn bớt chút đỉnh)<br />Liên hệ: 0938.28.25.25 Anh Dương</p>', '', 'ket-tien-ban-gap-nen-dat-gia-re-o-duong-ma-lo', '', '', '', 12, 1, '760000000', 'VND', 'Tổng diện tích', 0, NULL, NULL, NULL, NULL, NULL, 1, 1, 533, 577, 323, 'Bình Tân', 'anh Dương', '', '0938282525', '', 'omely437');
INSERT INTO `dos_module_products` (`record_id`, `title`, `titleen`, `postdate`, `pic_thumb`, `pic_full`, `pic_desc`, `preview`, `previewen`, `content`, `contenten`, `tag`, `tagen`, `description`, `descriptionen`, `hits`, `record_order`, `unit`, `unit_currency`, `unit_unit`, `hot`, `specials`, `extra_field1`, `extra_field2`, `extra_field3`, `extra_field4`, `enable`, `dos_module_item_type_type_id`, `dos_module_item_cat_cat_id`, `dos_districts_district_id`, `dos_wards_ward_id`, `address`, `contact_name`, `contact_add`, `contact_mobile`, `contact_tel`, `dos_username`) VALUES
(89, 'Đất nông nghiệp chính chủ cần bán gấp', '', '2012-07-05 15:11:34', NULL, NULL, NULL, '', '', '<p>Cần nhượng QSDĐất nông nghiệp đường Trương Phước Phan sổ đỏ riêng Dt 4x12m, hướng Đông, đường nhựa 6m hẻm xe hơi vào được, điện nước máy đầy đủ, cách chợ Bình Trị Đông mới khoảng 80m, cách đường Tân hòa Đông khoảng 200m, cách đường Chiến Lược khoảng 150m, gần bệnh viện, khu dân cư đông đúc an ninh sạch đẹp. Giá 730tr TL Bao sang tên LH: Thủy, Công Ty TNHH-TM-DV Bất Động Sản THÀNH CÔNG 93 Lê Đình Cẩn- KP7- PTân Tạo- Q Bình Tân ., Tel. 0979645223, 01678484085</p>', '', 'dat-nong-nghiep-chinh-chu-can-ban-gap', '', '', '', 10, 1, '730000000', 'VND', 'Tổng diện tích', 0, NULL, NULL, NULL, NULL, NULL, 1, 3, 521, 577, 323, 'quận Bình Tân', 'Thủy', '', '0979645223', '', 'omely437'),
(90, 'BÁN 14000 M2 ĐẤT MẶT TIỀN TỈNH LỘ 887 VỊ TRÍ CỰC ĐẸP GIÁ CỰC RẺ TẠI TỈNH BẾN TRE', '', '2012-07-05 15:16:26', NULL, NULL, NULL, '', '', '<p>Cần sang miếng ĐẤT VƯỜN MẶT TIỀN TỈNH LỘ 887 ( đất đang trồng dừa) rộng 14.000 m2 (1,4 hecta), Diện tích ngang 40 mét - rộng 250 mét - nở hậu 50 mét, đất vuông vứt rất đẹp, hướng NAM, TÂY NAM (đường nối Cầu RẠCH MIỄU đi Huyện BA TRI) thuộc Tỉnh BẾN TRE, đường hiện trải nhựa đã hoàn thành và các tuyến xe Bus đang lưu thông đi từ BA TRI đến TP.BẾN TRE, đất thuộc Xã Tân Thanh Huyện GIỒNG TRÔM, nằm vị trí gần các khu công nghiệp đang triển khai tại Huyện BA TRI, KCN Phong Nẫm Huyện GIỒNG TRÔM, là tuyến đường chính nối từ cảng BA TRI đi CẦU RẠCH MIỄU trong tương lai, vị trí đất cao rất đẹp, nằm xa khu dân cư, giao thông cực kỳ thuận tiện, thích hợp làm mở CÔNG TY XÍ NGHIỆP, SẢN XUẤT VẬT LIỆU XÂY DỰNG, PHÂN BÓN, TRANG TRẠI CHĂN NUÔI HOẶC ĐẦU TƯ LÂU DÀI... Sổ đỏ chính chủ. GIÁ CỰC RẺ 375 Triệu (có thương lượng cho người có thiện chí). LIÊN HỆ : 0938.44.6768 (MIỄN TRUNG GIAN, MIỄN TIẾP BÁO). Lưu ý : có thể bán 12.000 m2 hoặc 14.000 m2.</p>', '', 'ban-14000-m2-dat-mat-tien-tinh-lo-887-vi-tri-cuc-dep-gia-cuc-re-tai-tinh-ben-tre', '', '', '', 5, 1, '375000000', 'VND', 'Tổng diện tích', 0, NULL, NULL, NULL, NULL, NULL, 1, 1, 527, 98, 323, 'Bến tre', 'Mr', '', '0938446768', '', 'omely437'),
(91, 'Bán đất xã Lương Hòa Bến Lức Long An 21.728 m ( 0972.773.275)', '', '2012-07-05 15:21:30', NULL, NULL, NULL, '', '', '<p>- Vị trí Xã Lương Hòa Bến Lức Long An.</p>\n<p>- Giao thông thuận lợi Xe 4 bánh vào tận nhà.</p>\n<p>- Cách tĩnh lộ 824, 120m,cách đường cao tốc TP (nút giao Bến Lức) 2,5 km.</p>\n<p>- Diện tích 21.278 m2 (210 x 100 m ).</p>\n<p>+ Thổ cư 2.845 m.</p>\n<p>+ Thổ vườn-mía 18.433 m.</p>\n<p>- Giá bán 7,5 tỷ/tổng diện tích.</p>\n<p>- Pháp lý sổ đỏ.</p>\n<p>Quý khách có nhu cầu xin vui lòng liên hệ 0972.773.275 Thùy Dung.</p>', '', 'ban-dat-xa-luong-hoa-ben-luc-long-an-21728-m-0972773275', '', '', '', 11, 1, '7500000000', 'VND', 'Tổng diện tích', 0, NULL, NULL, NULL, NULL, NULL, 1, 1, 521, 307, 323, 'Long An', 'Thùy Dung', '', '0972773275', '', 'omely437'),
(92, 'Bán đất nền Trung Sơn, Bình Chánh, sổ đỏ, lô A, hướng đông nam, đường số 7, dt 6x20m, giá 48tr/m2', '', '2012-07-05 15:23:49', NULL, NULL, NULL, '', '', '<p>Cần bán đất nền nhà phố dự án Trung Sơn, Bình Chánh, đã có sổ đỏ, lô A, diện tích 6m x 20m, hướng đông nam, đường số 7, ngay sau mặt tiền đường Nguyễn Thị Thập và Nguyễn Văn Cừ nối dài, giá 48 triệu/m2. LH: Thảo 0988279727.</p>', '', 'ban-dat-nen-trung-son-binh-chanh-so-do-lo-a-huong-dong-nam-duong-so-7-dt-6x20m-gia-48trm2', '', '', '', 7, 1, '48000000', 'VND', 'm2', 0, NULL, NULL, NULL, NULL, NULL, 1, 1, 527, 578, 323, 'Bình Chánh', 'Thảo', '', '0988279727', '', 'omely437'),
(93, 'Bán đất biệt thự T30, 6B, Bình Chánh, sổ đỏ, lô Q, hướng đông, giá 16 triệu/m2. LH 0988279727', '', '2012-07-05 15:27:11', NULL, NULL, NULL, '', '', '<p>Cần bán đất nền biệt thự dự án T30, Khu dân cư 6B - Nguyễn Tri Phương nối dài, Bình Chánh, đã có sổ đỏ, lô Q, hướng đông, đường nội bộ sau mặt tiền đường Nguyễn Tri Phương nối dài, diện tích 10m x 20m, giá 16 triệu/m2. LH: Thảo 0988279727.</p>', '', 'ban-dat-biet-thu-t30-6b-binh-chanh-so-do-lo-q-huong-dong-gia-16-trieum2-lh-0988279727', '', '', '', 8, 1, '16000000', 'VND', 'Tổng diện tích', 0, NULL, NULL, NULL, NULL, NULL, 1, 1, 533, 578, 323, 'Bình Chánh', 'thảo', '', '0988279727', '', 'omely437'),
(94, 'Cần bán đất ở-đất thổ cư Đường Số 17, phường Linh Trung, Quận Thủ Đức, TP.HCM', '', '2012-07-05 15:30:10', NULL, NULL, NULL, '', '', '<p>Cần tiền bán gấp đất nền Q.Thủ Đức gần Khu Công nghệ cao Q.9, gần trường ĐH Nông Lâm, gần chợ.Thích hợp để ở hoặc cho thuê nhà trọ.</p>\n<p>Diện tích 5x20, Đường nhựa</p>\n<p>Giấy tờ hoàn chỉnh. giá 9tr/m2</p>\n<p>LH: 0909 064 345 A.Trọng ( chính chủ)</p>', '', 'can-ban-dat-o-dat-tho-cu-duong-so-17-phuong-linh-trung-quan-thu-duc-tphcm', '', '', '', 10, 1, '9000000', 'VND', 'm2', 0, NULL, NULL, NULL, NULL, NULL, 1, 1, 533, 572, 323, 'Thủ Đức', 'anh Trọng', '', '909064345', '', 'omely437'),
(95, 'Cần bán gấp nhà mặt tiền đường 12m2', '', '2012-07-05 15:33:50', NULL, NULL, NULL, '', '', '<p>Cần bán gấp nhà MT đường 12m2, DT : 5*30m, khu Dc tiện kinh doanh buôn bán và cho thuê phòng. Gần chợ, 3 trường học, Nhà Van Hóa và Thu Viện quận Tân Bình, 2 chung cư đang xây dựng.</p>\n<p>*Nhà đúc 2 tấm, 4 phòng ngủ, 3 Toilet, phòng khách, bếp, phòng thờ, sân thượng. ( DTSD : 5*15m),</p>\n<p>*Phía sau nhà còn 6 phòng đang cho thuê có lối đi riêng hẻm 2m2. (DTSD : 5*15m).</p>\n<p>*Giá cả : 60triệu/m2</p>\n<p>*Liên hệ : A.Hà : 012.6400.7200</p>', '', 'can-ban-gap-nha-mat-tien-duong-12m2', '', '', '', 7, 1, '60000000', 'VND', 'm2', 0, NULL, NULL, NULL, NULL, NULL, 1, 1, 527, 586, 323, 'Tân Bình', 'anh Hà', '', '01264007200', '', 'omely437'),
(96, 'Văn Phòng cho thuê mặt tiền đường Bạch Đằng, Phường 02, Quận Tân Bình', '', '2012-07-06 01:34:17', NULL, NULL, NULL, '', '', '<p>Văn Phòng cho thuê mặt tiền đường Bạch Đằng, Phường 02, Quận Tân Bình</p>\n<p>Cho thuê nhà quận Tân Bình. Văn Phòng cho thuê mặt tiền đường Bạch Đằng, Phường 02, Quận Tân Bình: 6.5x30m,1 trệt, lửng, 5 Lầu, sân thượng, 10 phòng , wc, nhà mới đẹp, có trang bị đầy đủ máy lạnh, hệ thống PCCC, thang máy, thang bộ, lối thoát hiểm, khu dân cư tập trung nhiều vp, cty, dịch vụ kinh doanh sầm uất, nhà nằm trong khu vực huyết mạch của quận tân bình cửa ngõ vào sân bay tân sơn nhất, giáp ranh quận phú nhuận, vị trí cực đẹp rất Thích hợp làm spa, trung tâm đào tạo thẩm mỹ viện, khách sạn mini, karaoke, làm văn phòng - công ty, trường học !<br />Hướng nhà: Nam<br />Giá: 7000usd/ Tháng( gồm VAT), giá cả thương lượng+hợp đồng dài hạn<br />MS_TB71<br />Quý khách có nhu cầu thuê nhà Quận Tân Bình xin liên hệ:<br />Cty Bất Động Sản Nhất Tâm:<br />Hotline: 0983.333.111_0912.372.099</p>', '', 'van-phong-cho-thue-mat-tien-duong-bach-dang-phuong-02-quan-tan-binh', '', '', '', 65, 9, '7000', 'USD', 'Tháng', 0, NULL, NULL, NULL, NULL, NULL, 1, 2, 532, 586, 323, 'Bạch Đằng, Phường 02, Quận Tân Bình', 'Bất Động Sản Nhất Tâm', '', '0983333111', '', 'nhaphodep'),
(97, 'Biệt Thự Phú Mỹ Hưng, Phú Gia', '', '2012-07-06 01:50:47', NULL, NULL, NULL, '', '', '<p>Biệt thự Phú Mỹ Hưng – Phú Gia cho thuê giá tốt 3000$/tháng: Cho thuê biệt thự cao cấp Phú Gia, Phú Mỹ Hưng, Quận 7. Diện tích 370m2. Nội thất cao cấp đầy đủ, 3 phòng ngủ, 3 toilet, hồ bơi, sân vườn thoáng mát, sạch đẹp yên tỉnh, khu biệt thự cao cấp nhất Phú Mỹ Hưng. Giá 3200usd/tháng. Xem nhà vui lòng liên hệ. Lê Anh. 0916160766</p>', '', 'biet-thu-phu-my-hung-phu-gia', '', '', '', 14, 1, '60000000', 'VND', 'Tháng', 0, NULL, NULL, NULL, NULL, NULL, 1, 2, 528, 582, 323, 'Hà Huy Tập, Tân Phong, Quận 7, Tp. Hồ Chí Minh', ' Lê Anh', '', '0916160766 ', '', 'thanhsuong'),
(98, 'Bán căn hộ kề quận 1, giá 1,1tỷ/căn, giao nhà ngay', '', '2012-07-06 02:04:10', NULL, NULL, NULL, '', '', '<p>Chung cư Mỹ Đức do công ty Cổ phần Xây dựng Số 5 cùng công ty Cổ phần DETACO làm chủ đầu tư, tọa lạc tại đường Xô Viết Nghệ Tĩnh, phường 21, quận Bình Thạnh, TP.HCM.</p>\n<p>Dự án có quy mô hơn 32.000m2 bao gồm 4 block. Chung cư được thiết kế với chiều cao 21 tầng gồm 440 căn hộ có diện tích từ 43 – 165m2. Bên cạnh đó, dự án còn có đầy đủ các tiện ích công cộng như nhà trẻ mẫu giáo, siêu thị, phòng sinh hoạt cộng đồng. Đặc biệt tại đây còn xây dựng khu trường học 4 tầng trên diện tích 3.000m2.</p>\n<p>Được biết, dự án khởi công xây dựng vào tháng 2/2009 và bàn giao nhà giai đoạn 1 vào tháng 4/2011.<br />Phương thức thanh toán:<br />Đối với khối D1 và D2: thanh toán 97% và nhận nhà ngay.<br />Đối với Khối E1, E2: thanh toán 60%, nhận nhà thanh toán 37%.<br />Khi khách hàng mua căn hộ sẽ được hỗ trợ vay vốn từ ngân hàng với 70% giá trị căn hộ trong thời gian lên đến 20 năm.<br />LH chủ đầu tư: 0938 944 812</p>', '', 'ban-can-ho-ke-quan-1-gia-11tycan-giao-nha-ngay', '', '', '', 7, 1, '1100000000', 'VND', 'Tổng diện tích', 0, NULL, NULL, NULL, NULL, NULL, 1, 1, 527, 576, 323, 'Xô Viết Nghệ Tĩnh, phường 21, quận Bình Thạnh, TP.HCM. ', 'chủ đầu tư: ', '', '0938 944 81', '', 'thanhsuong'),
(99, 'Cần cho thuê kho MT Lý Thường Kiệt P. 8 Quận Tân Bình, DT 1200m,', '', '2012-07-06 02:16:34', NULL, NULL, NULL, '', '', '<p>Cần cho thuê kho MT Lý Thường Kiệt P. 8 Quận Tân Bình,<br />DT 1200m,gần chợ Tân Bình,giao thông thuận lợi,điện 3 pha,thích hợp làm kho chứa hàng.Giá 132 triệu/tháng. Liên hệ A.Đạt 0934046568</p>', '', 'can-cho-thue-kho-mt-ly-thuong-kiet-p-8-quan-tan-binh-dt-1200m', '', '', '', 13, 1, '132000000', 'VND', 'Tháng', 0, NULL, NULL, NULL, NULL, NULL, 1, 2, 531, 586, 323, 'Lý Thường Kiệt P. 8 Quận Tân Bình,', 'A.Đạt', '', '0934046568', '', 'thanhsuong'),
(100, 'Cho thuê xưởng đẹp Quang Trung P. 14 Q.Gò Vấp', '', '2012-07-06 02:22:39', NULL, NULL, NULL, '', '', '<p>Cho thuê xưởng đẹp Quang Trung P. 14 Q.Gò Vấp<br />DTkv: 15x20m, DTSD: 350m2, hẻm rộng 7m xe tải 5 tấn vào tận nơi, cách Quang Trung 200m gần Chợ Hạnh Thông Tây kho cao 8m xây dựng kiên cố. nền gạch men, phù hợp mở kho, sx mọi ngành nghề. Hợp đồng dài hạn. Giá 14tr/tháng. Liên hệ: 0902001927 gặp Anh Tùng (Miễn ĐT khác ngoài việc thuê nhà).</p>', '', 'cho-thue-xuong-dep-quang-trung-p-14-qgo-vap', '', '', '', 10, 1, '14000000', 'VND', 'Tháng', 0, NULL, NULL, NULL, NULL, NULL, 1, 2, 531, 573, 323, 'Quang Trung P. 14 Q.Gò Vấp', 'Anh Tùng', '', ' 0902001927', '', 'thanhsuong'),
(101, 'Cho Thuê Nhà Xưởng Đ.Nguyễn Xiển, phường Long Bình, quận 9', '', '2012-07-07 07:56:40', NULL, NULL, NULL, '', '', '<p>Cho Thuê  - Bán Nhà Xưởng Đ.Nguyễn Xiển, phường Long Bình, quận 9, mặt tiền lớn chính, DTSD : 3050m2, điện nước chính, trước mặt là trường học, tiện làm kho bãi.</p>\n<p>Giá bán : 3,5 tr/m2 (10 tỷ/tổng), cho thuê 30 tr/th - LH : 0937022696 a.Nam</p>', '', 'cho-thue-nha-xuong-dnguyen-xien-phuong-long-binh-quan-9', '', '', '', 14, 1, '30000000', 'VND', 'Tháng', 0, NULL, NULL, NULL, NULL, NULL, 1, 2, 531, 580, 323, 'Cho Thuê Nhà Xưởng Đ.Nguyễn Xiển, phường Long Bình, quận 9', 'a.Nam', '', '0937022696', '', 'hoanganh'),
(102, 'BÁN NHÀ MẶT TIỀN CMT8 Q.3', '', '2012-07-07 08:25:30', NULL, NULL, NULL, '', '', '<p>Bán khách sạn Mt CMT8, quận 3, giáp quận 1, Diện tích 10x40, hầm , 5 lầu, 40 phòng , đang kinh doanh cực tốt, sổ hồng ,Giá 104 tỷ. Bán nhà MT võ</p>', '', 'ban-nha-mat-tien-cmt8-q3', '', '', '', 6, 1, '104000000000', 'VND', 'Tổng diện tích', 0, NULL, NULL, NULL, NULL, NULL, 1, 1, 527, 564, 323, 'CÁCH MẠNG THÁNG 8 Q.3', 'công ty bất động sản Long Thịnh', '', ' 0909933649', '', 'thanhsuong'),
(103, 'Cần sang Shop bán Thủ công mỹ nghệ-Lưu niệm Rẻ', '', '2012-07-07 08:32:45', NULL, NULL, NULL, '', '', '<p>Shop mình mở ra cũng lâu, mua bán cũng rất ổn định, khách hàng biết đến rất nhiều nhưng do gia đình có việc, thời gian hiện tại mình ko thể một mình làm xuể việc nên nay mình có ý định muốn sang Shop.<br />Shop của mình có sẵn giấy phép đăng ký kinh doanh về hàng mỹ nghệ, có đủ cửa kính, kệ, tủ, đèn, bảng hiệu,..(tất cả được thiết kế hết),điện ,nước,máy tính, internet, website,....mặt tiền đường trần văn đang, quận 3, chủ nhà vui vẻ thoải mái, thuế ổn định, giá rẻ.<br />Shop còn rất nhiều hàng trong kho, mới , đẹp, mình sang lại tất cả từ a-z, ace chỉ việc sang shop mở cửa ra bán hàng ngày thôi, ko cần phải trang bị thêm gì cả. Với giá 50tr (thương lượng)</p>', '', 'CẦN SANG SHOP THỦ CÔNG MỸ NGHỆ', '', '', '', 0, 1, '50000000', 'VND', 'Tổng diện tích', 0, NULL, NULL, NULL, NULL, NULL, 1, 3, 534, 564, 323, 'CÁCH MẠNG THÁNG 8 Q.3', 'A VIỄN', '', '  090279968', '', 'thanhsuong'),
(104, 'Bán shop Grand View Phú Mỹ Hưng, quận 7, giá 3, 25 tỷ.', '', '2012-07-07 08:36:52', NULL, NULL, NULL, '', '', '<p>Cần bán gấp căn shop Grand View, Khu Đô Thị Phú Mỹ Hưng, quận 7, TP HCM. Diện tích 110m2, khu trung tâm Phú Mỹ Hưng, tiện mở văn phòng công ty, nhà hàng, cho thuê, … Bao ra sổ hồng. Giá bán 3, 25 tỷ. LH: 0913.98.2899 (Mr Vinh).</p>', '', 'ban-shop-grand-view-phu-my-hung-quan-7-gia-3-25-ty', '', '', '', 8, 1, '3250000000', 'VND', 'Tổng diện tích', 0, NULL, NULL, NULL, NULL, NULL, 1, 1, 534, 582, 323, 'Nguyễn Đức Cảnh, Phường Tân Phong, Quận 7, TP.Hồ Chí Minh', 'Mr Vinh', '', ' 0913.98.28', '', 'thanhsuong'),
(105, 'Chuyển nhượng quán Cafe góc 2 mặt tiền trung tâm Q.1, gần công ty và văn phòng', '', '2012-07-07 08:41:10', NULL, NULL, NULL, '', '', '<p>Quán vừa được thiết kế lại theo phong cách riêng, hiện đại, sang trọng. Đặc biệt, Quán có lượng khách quen ổn định, đội ngũ nhân viên trẻ năng động, nhiệt tình với công việc.</p>\n<p>Vỉa hè đường và sân rộng, tiện cho việc giữ xe cho khách.</p>\n<p>Tổng diện tích mặt bằng: 300 m2, Mặt tiền: 12m<br />Giá sang nhượng: chỉ 1.5tỷ (bao gồm 1 tháng tiền nhà và tiền cọc)</p>\n<p>Hợp đồng thuê có thể gia hạn lâu dài.<br />Mọi chi tiết xin vui lòng liên hệ chính chủ: Anh Tùng "0908 233 433"</p>', '', 'chuyen-nhuong-quan-cafe-goc-2-mat-tien-trung-tam-q1-gan-cong-ty-va-van-phong', '', '', '', 5, 1, '1500000000', 'VND', 'Tổng diện tích', 0, NULL, NULL, NULL, NULL, NULL, 1, 3, 534, 569, 323, 'Nguyễn Văn Thủ, Quận 1, TP.Hồ Chí Minh', ' Anh Tùng ', '', '"0908 233 4', '', 'thanhsuong'),
(106, 'Sang quán cà phê Q.10', '', '2012-07-07 08:45:18', NULL, NULL, NULL, '', '', '<p>Cần sang quán<br />Cà phê Mái Ngói Đỏ.<br />Địa chỉ : 339/12 Tô Hiến Thành p12 q10 ,<br />__ 10m * 14m,1 sân vườn,1 phòng lạnh,1 phòng kiểu Nhật,8 tivi,4 máy lạnh...<br />__Cơm trưa văn phòng,sử dụng đường truyền cáp quang...<br />__Gần công ty,siêu thị Big C,trường học,vào kinh doanh ngay.<br />__Giá sang 650triệu(có thể thương lượng)đã bao gồm 100triệu tiền cọc nhà.<br />__Giá thuê 28triệu/tháng<br />Đã kinh doanh 4 năm.Hợp đồng nhà còn 5 năm.<br />Liên hệ : 0933.796.874 chị Tuyền.</p>', '', 'sang-quan-ca-phe-q10', '', '', '', 11, 1, '650000000', 'VND', 'Tổng diện tích', 0, NULL, NULL, NULL, NULL, NULL, 1, 3, 534, 568, 323, 'Tô Hiến Thành, Phường 12, Quận 10, TP.Hồ Chí Minh', ' chị Tuyền.', '', ' 0933.796.8', '', 'thanhsuong'),
(107, 'Đất thổ cư hẻm 8m,đường LK 5-6,Q.Bình Tân.', '', '2012-07-07 08:51:41', NULL, NULL, NULL, '', '', '<p>Bán đất thổ cư:4x20,Chị Thảo :0949.809.837 ,hẻm 8m đường LK 5-6,P.BHHòa.B,Q.Bình Tân.<br />Bán đất thổ cư cuối đường TKTQúy:4x20, xây dựng ngay,Hẻm bê tông 8m,hướng tây,dân cư đông,gần trường,chợ,nhà thờ,ngay lộ lớn vào 200m,giá 780tr, khu an ninh yên tĩnh.<br />*Có nhiều loại đất thổ cư vị trí đẹp,hẻm bê tông từ 5 -8m,lựa chọn theo hướng ,giá từ 500 tr.trở nên.<br />Chị Thảo: 0949.809.837</p>', '', 'dat-tho-cu-hem-8mduong-lk-5-6qbinh-tan', '', '', '', 11, 1, '780000000', 'VND', 'Tổng diện tích', 0, NULL, NULL, NULL, NULL, NULL, 1, 1, 533, 577, 323, 'Liên khu 5-6, Bình Tân, TP.Hồ Chí Minh', 'Chị Thảo', '', '0949.809.83', '', 'thanhsuong'),
(108, 'Bán nhà phố đường Huỳnh Văn Bánh,P.13,Q.Phú Nhuận.', '', '2012-07-07 08:55:45', NULL, NULL, NULL, '', '', '<p>Nhà mới xây dựng năm 2011, hẻm ôtô 7 chỗ vào tận nhà, đường Huỳnh Văn Bánh, P.13, Quận Phú Nhuận. Nhà trong khu dân cư an ninh, yên tĩnh, dân trí cao. Nhà gần trường học, ngân hàng, siêu thị, chợ, khu thương mại, kinh doanh thời trang. Vị trí nhà thích hợp mở văn phòng, công ty, ở...DTKV: 4m x 13m, DTSD: 190m2, cấu trúc nhà: Trệt, lửng, 2 lầu, sân thương. Nhà mới xây năm 2011,thiết kế đẹp, NTCC, trang thiết bị hiện đại, 3PN, 3WC. Nhà hướng Tây Nam, sổ hồng, Giá: 4,5 tỷ (TL). L/H Bất Động Sản Santana: 0903 604499 - 0903 604479.</p>', '', 'ban-nha-pho-duong-huynh-van-banhp13qphu-nhuan', '', '', '', 7, 1, '4500000000', 'VND', 'Tổng diện tích', 0, NULL, NULL, NULL, NULL, NULL, 1, 1, 527, 570, 323, 'Huỳnh Văn Bánh,P.13,Q.Phú Nhuận.', 'Bất Động Sản Santana', '', ' 0903 60449', '', 'thanhsuong'),
(109, 'Bán nhà phố 3 lầu(5.05m x 15m),hẻm ôtô 7 chỗ, đường Lê Văn Sỹ,P.13,Q.3.', '', '2012-07-07 09:01:29', NULL, NULL, NULL, '', '', '<p>Nhà phố 3 lầu tọa lạc trong hẻm ôtô (ôtô 7 chỗ vào tận nhà) đường Lê Văn Sỹ,P.13,Q.3. Nhà trong khu vực an ninh, dân trí cao, khu nhiều văn phòng cty rất sang trọng. Vị trí nhà trung tâm Q.3 thuận tiện mở văn phòng, cty, spa...DTKV: 5,05m x 15m, DTSD: 264m2, cấu trúc: Trệt,lửng, 3 lầu, nhà thiết kế đẹp, vào ở ngay. Nhà hướng Tây, sổ hồng, Giá 6,9 tỷ. L/H Bất Động Sản SANTANA: 0903 604499 - 0903 604479.</p>', '', 'ban-nha-pho-3-lau505m-x-15mhem-oto-7-cho-duong-le-van-syp13q3', '', '', '', 6, 1, '6900000000', 'VND', 'Tổng diện tích', 0, NULL, NULL, NULL, NULL, NULL, 1, 1, 527, 564, 323, 'Lê Văn Sỹ, Phường 13, Quận 3, TP.Hồ Chí Minh', ' Bất Động Sản SANTANA:', '', ' 0903 60449', '', 'thanhsuong'),
(110, 'Bán nhà MT cấp 4 đường Lê Đức Thọ - Gò Vấp', '', '2012-07-07 09:06:35', NULL, NULL, NULL, '', '', '<p>Bán nhà MT cấp 4 đường Lê Đức Thọ - Gò Vấp, DT: 8mx25m,có thể bán một nửa, sổ hồng , giá 7,5 tỷ,</p>', '', 'ban-nha-mt-cap-4-duong-le-duc-tho-go-vap', '', '', '', 5, 1, '7500000000', 'VND', 'Tổng diện tích', 0, NULL, NULL, NULL, NULL, NULL, 1, 1, 527, 573, 323, 'Lê Đức Thọ, Phường 11, Gò Vấp, TP.Hồ Chí Minh', ' A. Tuấn', '', ':0982686423', '', 'thanhsuong'),
(111, 'Nhà Xưởng &amp; Nhà Kho Cơ Sở Hạ Tầng Tốt, Chủ Quyền Đầy Đủ', '', '2012-07-07 09:13:02', NULL, NULL, NULL, '', '', '<p>Cần bán nhà xưởng và nhà kho tại khu công nghiệp Tân Tạo, TPHCM.<br />- Cơ sở hạ tầng hoàn chỉnh<br />- Giấy tờ chủ quyền đầy đủ.</p>\n<p>Tổng Diện tích: 5000m2.<br />- Có trạm biến áp riêng, đồng hồ điện riêng.<br />- Co khu văn phòng và nhà ăn.<br />- Đường rộng 12m, gần đường lớn rộng 60m.</p>\n<p>Giá: 200 USD/m2 (chưa thuế)<br />LH: Cô Năm - 0936 253 617</p>', '', 'Cần bán nhà xưởng và nhà kho tại khu công nghiệp Tân Tạo, TPHCM', '', '', '', 0, 1, '200', 'USD', 'm2', 0, NULL, NULL, NULL, NULL, NULL, 1, 1, 531, 577, 323, '	Đường Số 5A, Bình Tân, TP.Hồ Chí Minh', ' Cô Năm', '', '0936 253 61', '', 'thanhsuong'),
(112, 'Bán Homy land ( chủ đầu tư), giá 19,2/m2, tặng nội thất + Ck13%', '', '2012-07-07 09:22:12', NULL, NULL, NULL, '', '', '<p>Cần bán căn hộ Homyland, căn hộ Quận 2, căn hộ ở liền Q2</p>\n<p>Căn hộ cao cấp Homyland, MT Nguyễn Duy Trinh Q2. Cạnh nhà thiếu nhi Q2, (đặc biệt có sân đỗ trực thăng trên nóc tòa nhà)<br />Giá gốc chủ đầu tư: từ 19tr/m2-24tr/m2, tùy loại căn hộ dưới 2 tỷ quận 2<br />Thiết kế hiện đại sang trọng gồm 2 PN, 3PN, 2 WC.<br />- ( Đăc biệt Pen House đã chính thức mở bán)<br />Nội thất cao cấp (Tủ kệ bếp gỗ, bếp từ, máy hút khỏi, thiết bị vệ sinh Toto,...)<br />Giấy dán tường, phòng ngủ sàn gỗ, tặng kèm 3 máy lạnh.<br />Hình thức thanh toán:<br />3) Thanh toán 50% nhận nhà<br />4) Sau 2 tháng trả nốt 45%, còn lại 5% thanh toán khi nhân sổ hồng<br />_ Đặc biệt khách hàng thanh toán 95% sẽ được CK 12%-13%<br />Liên hệ chủ đầu tư PKD Dự Án: 0938 944 812</p>', '', 'ban-homy-land-chu-dau-tu-gia-192m2-tang-noi-that-ck13', '', '', '', 10, 1, '19000000', 'VND', 'm2', 0, NULL, NULL, NULL, NULL, NULL, 1, 1, 529, 565, 323, ' Nguyễn Duy Trinh Q2', 'chủ đầu tư PKD Dự Án', '', ' 0938 944 8', '', 'thanhsuong'),
(113, 'Bán khách sạn, nhà nghỉ tại 164-166, Nguyễn Cửu Đàm , phường Tân Sơn Nhì, Quận Tân Phú, TP.HCM.', '', '2012-07-07 09:30:21', NULL, NULL, NULL, '', '', '<p>Địa chỉ: 164-166 Nguyễn Cửu Đàm, P. Tân Sơn Nhì, Q. Tân Phú. Gồm 1 trệt, 3 lầu, bếp, phòng ăn, tầng trệt tiếp tân và để xe. Nội thất, phần trang trí đẹp. DTKV: 8m x 16m. DTSD: 570m2.</p>\n<p>Khách sạn được công nhận 1 sao, kinh doanh ổn định. Giá: 11.2 tỷ.</p>\n<p>Liên hệ: Anh An - 0983 831 391.</p>', '', 'ban-khach-san-nha-nghi-tai-164-166-nguyen-cuu-dam-phuong-tan-son-nhi-quan-tan-phu-tphcm', '', '', '', 5, 1, '11200000000', 'VND', 'Tổng diện tích', 0, NULL, NULL, NULL, NULL, NULL, 1, 1, 519, 585, 323, ' 164-166 Nguyễn Cửu Đàm, P. Tân Sơn Nhì, Q. Tân Phú', ' Anh An ', '', '0983 831 39', '', 'thanhsuong'),
(114, 'Bán khách sạn, nhà nghỉ tại Cộng Hoà , phường 4, Quận Tân Bình, TP.HCM.', '', '2012-07-07 09:35:45', NULL, NULL, NULL, '', '', '<p>Cần bán khách sạn mặt tiền đường Cộng Hòa, diện tích 9.5m x 20m (nở hậu 11m) 1 trệt, hầm, 6 lầu, 30 phòng kinh doanh. Giá bán thương lượng với khách hàng có thiện chí đầu tư kinh doanh khách sạn.</p>', '', 'ban-khach-san-nha-nghi-tai-cong-hoa-phuong-4-quan-tan-binh-tphcm', '', '', '', 8, 1, '45000000000', 'VND', 'Tổng diện tích', 0, NULL, NULL, NULL, NULL, NULL, 1, 1, 519, 586, 323, 'Cộng Hoà , phường 4, Quận Tân Bình, TP.HCM', 'Đậu Văn Trường', '', ' 0902697277', '', 'thanhsuong'),
(115, 'BÁN KHÁCH SẠN , NHÀ NGHỈ ĐƯỜNG 35 P.BÌNH THUẬN Q.7', '', '2012-07-07 09:51:31', NULL, NULL, NULL, '', '', '<p>Cần bán gấp khách sạn tại quận 7, hướng bắc, đường 10m, cách đường lâm văn bền 20m, S = 10m x 17,5m, xây dựng Hầm + lửng + 6 lầu, thang máy, 24 phòng ngủ, đầy đủ nội thất, lầu 6 có 3 phòng vip ( căn hộ khép kín ) do ko có người quản lý lên cần bán gấp giá 13 tỷ. vị trí cực tốt để kinh doanh khách sạn, 5 phút qua quận 1, 3 phút qua tới Phú mỹ hưng, gần cư xá ngân hàng, khu đông dân cư. giá bán 13 tỷ: liên hệ : Ngọc Tuân 0908 345 808. BĐS Nguyễn Phi Hùng, 470 Nguyễn Thị Thập, Quận 7 Tp HCM.</p>', '', 'ban-khach-san-nha-nghi-duong-35-pbinh-thuan-q7', '', '', '', 5, 1, '13000000000', 'VND', 'Tổng diện tích', 0, NULL, NULL, NULL, NULL, NULL, 1, 1, 527, 582, 323, 'ĐƯỜNG 35 P.BÌNH THUẬN Q.7', 'BĐS Nguyễn Phi Hùng', '', '0908 345 80', '', 'thanhsuong'),
(116, 'Xuất ngoại cần bán gấp KS Cách Phan Huy Ích 50, Q.GV', '', '2012-07-07 09:58:17', NULL, NULL, NULL, '', '', '<p>Xuất ngoại cần bán gấp KS Cách Phan Huy Ích 50, Q.GV<br />KS có DT: 4 x 18 đường nhựa 5m<br />Có 15 phòng, thang máy, đang kinh doanh tốt.<br />Hiện cho thuê 50 triệu/tháng<br />Giá bán 5,8 tỷ<br />Tel: 0938621521 MS Lan.</p>', '', 'xuat-ngoai-can-ban-gap-ks-cach-phan-huy-ich-50-qgv', '', '', '', 10, 1, '5800000000', 'VND', 'Tổng diện tích', 0, NULL, NULL, NULL, NULL, NULL, 1, 1, 519, 573, 323, 'Phan Huy Ích, Gò Vấp, TP.Hồ Chí Minh', ' MS Lan.', '', ' 0938621521', '', 'thanhsuong'),
(117, 'sang nhượng 1/3 cổ phần quán cafe', '', '2012-07-07 10:07:58', NULL, NULL, NULL, '', '', '<p>Cần nhượng lại 1/3 cổ phần quán cafe ,cơm vp sang trọng,mới sửa lại được nửa tháng nên còn rất mới, nằm ở trung tâm quận 10 TP Hồ Chí Minh.</p>\n<p>Nhà 3 tầng, hợp đồng với chủ nhà còn 2 năm,24tr/ tháng</p>\n<p>(quá rẻ vì nhà bên cạnh y trang mà ngta cho thue 36 tr),</p>\n<p>Quán nằm trên mặt tiền đường Sư Vạn Hạnh quận 10 gần trường Huflit</p>\n<p>xung quanh rất nhiều văn phòng, vị trí tốt,ôtô xe máy để vô tư,kinh doanh tốt, quán mới sửa đẹp và sang trọng. Nay do có 1 số việc cần tập trung làm nên ko có thời gian chăm sóc quán muốn sang lại.</p>\n<p>ai co nhu cầu liên hệ: Mr.Vũ 0933221085. Giá : 270 triệu , fix giá cho ai có nhu cầu thực sự.</p>', '', 'sang-nhuong-13-co-phan-quan-cafe', '', '', '', 9, 1, '270000000', 'VND', 'Tổng diện tích', 0, NULL, NULL, NULL, NULL, NULL, 1, 3, 519, 568, 323, 'Sư Vạn Hạnh - Quận 10 - TP HCM', ' Mr.Vũ', '', ' 0933221085', '', 'thanhsuong'),
(118, 'CẦN SANG NHƯỢNG GÂP QUÁN CAFE,CƠM VĂN PHÒNG TẠI TT QUẬN 1,GIÁ CỰC TỐT', '', '2012-07-07 10:14:20', NULL, NULL, NULL, '', '', '<p>Tọa lạc tại khu cao ốc văn phòng, công ty nên lượng khách hàng đông và ổn định.<br />Được thiết kế lại theo phong cách riêng, hiện đại, sang trọng.<br />Đặc biệt, đội ngũ nhân viên trẻ năng động, nhiệt tình với công việc .<br />Tổng diện tích mặt bằng: 300m2, Mặt tiền: 12 m<br />Giá sang nhượng: chỉ 1.5tỷ (bao gồm 1 tháng tiền nhà và tiền cọc)<br />Hợp đồng thuê có thể gia hạn lâu dài<br />Mọi chi tiết xin vui lòng liên hệ chính chủ: Anh Tùng 0908 233 433</p>', '', 'can-sang-nhuong-gap-quan-cafecom-van-phong-tai-tt-quan-1gia-cuc-tot', '', '', '', 9, 1, '1500000000', 'VND', 'Tổng diện tích', 0, NULL, NULL, NULL, NULL, NULL, 1, 3, 519, 569, 323, 'Quận 1 - TP HCM', ' Anh Tùng', '', '0908 233 43', '', 'thanhsuong'),
(119, 'Cần sang quán ăn với 300 khách/ngày và lợi nhuận 45 – 60 triệu/tháng?', '', '2012-07-07 10:21:20', NULL, NULL, NULL, '', '', '<p>Do không có nguồn nhân lực để phát triển thành chuỗi, cần sang lại mô hình KD đông khách nhất nhì tại khu Bàu Cát:<br />1. TH nổi tiếng và độc đáo: MÌ QUẢNG PHÚ CHIÊM (nơi sản sinh ra ẩm thực mì quảng)<br />2. Lợi thế:<br />• DT (7 triệu/ngày) và LN (45 – 60 triệu/tháng)<br />• KH: 250 – 300 /ngày<br />• CL: được KH đánh giá là ngon nhất nhì tại TPHCM<br />• Vị trí đẹp (120 Trương Công Định Q.TB)<br />3. Giá sang: 345 triệu, có TL (33tr tiền cọc, đã đầu tư TSCĐ và sữa chữa 215tr)<br />Cơ hội tốt chỉ dành cho người biết nắm bắt!</p>', '', 'can-sang-quan-an-voi-300-khachngay-va-loi-nhuan-45-60-trieuthang', '', '', '', 12, 1, '345000000', 'VND', 'Tổng diện tích', 0, NULL, NULL, NULL, NULL, NULL, 1, 3, 519, 586, 323, '120 Trương Công Định - Tân Bình - TP HCM', 'Thống Thuận', '', '0908553140', '', 'thanhsuong'),
(120, 'Sang quán cafe máy lạnh', '', '2012-07-07 10:28:06', NULL, NULL, NULL, '', '', '<p>Vì bận nhiều lý do gia đình nay mình cần sang gấp quán cafe :<br />Tên quán : Cafe HV.<br />Địa chỉ :82 cầu xéo - P.tân quý - Q.tân phú.<br />Phong cách : máy lạnh + ngoài trời + trà đạo.<br />Hình thức : trẻ trung sang trọng &amp; trực tiếp đá banh K+.<br />Tình trạng :đang hoạt động ,lượng khách đá banh rất đông.<br />Quán bao gồm :<br />- 3 tivi LCD (2 tivi LG &amp; 1 tivi SamSung)<br />- 1 đầu chiếu flim HD (2 dây hdmi 10m chia 2 tivi)<br />- 1 cập loa boss(nghe nhạc cực chất) &amp; 1 cập loa pinoneer<br />- 1 dàn âm ly<br />- 1 dầu k+ (còn thuê bao 5 tháng)<br />- 1 bộ máy chiếu + màn chiếu<br />- 1 phòng lạnh + máy lạnh<br />- 1 bộ máy tính<br />- 1 hồ cá<br />- 1 tủ lạnh<br />- 1 bếp ga v.v.v...<br />Giá sang gấp : 120 triệu (20 tr tiền coc nhà 2 năm 2 mặt tiền 6tr/tháng)<br />Liên hệ : 0935313993(Mr Vũ)-0902515038 (Mr Hieu)<br />Quán 2 mặt tiền nằm hướng đông bắc (rất mát) xung quanh mình trồng nhiều cây lá , quán vẫn đang hoạt động có 1 lượng khách ổn định , có nhiều tiềm năng , quán trang bị đầy đủ vật dụng phục vụ bán cafe<br />Ưu tiên thương lượng với người có thiện chí ,nhận quán có thể</p>', '', 'sang-quan-cafe-may-lanh', '', '', '', 9, 1, '120000000', 'VND', 'Tổng diện tích', 0, NULL, NULL, NULL, NULL, NULL, 1, 1, 519, 585, 323, '82 cầu xéo P.sơn kỳ Q.tấn phú - Tân Phú - TP HCM', '(Mr Vũ)', '', '0935313993', '', 'thanhsuong'),
(121, 'Bấn đất TK21, lô F1,đường 12', '', '2012-07-07 10:38:15', NULL, NULL, NULL, '', '', '<p>Bấn đất TK21, lô F1, dt 5x20,5m,đường 12&amp;đường 40m,giá 33,5tr/m2,vị trí nền rất đẹp,gần như là MT đường 40m,rất thoáng,tiện kinh doanh hoặc ở,giao thông rất thuận tiện,cách Q.1 chỉ vài phút xe.Gía bán 33,5tr/m2,sô đỏ chính chủ. Thông tin chi tiết LH : 0909 026 629 Mr Phụng</p>', '', 'ban-dat-tk21-lo-f1duong-12', '', '', '', 9, 1, '33500000', 'VND', 'm2', 0, NULL, NULL, NULL, NULL, NULL, 1, 1, 533, 565, 323, ' Đường 12Phường Thạnh Mỹ Lợi, Quận 2, TP.Hồ Chí Minh', ' Mr Phụng', '', ' 0909 026 6', '', 'thanhsuong'),
(122, 'CHO THUÊ NHÀ XƯỞNG Đ.NGUYỄN XIỂN, PHƯỜNG LONG BÌNH, QUẬN 9', '', '2012-07-09 01:06:26', NULL, NULL, NULL, '', '', '<p>Bán _ Cho Thuê Nhà Xưởng Đ.Nguyễn Xiển, phường Long Bình, quận 9, mặt tiền lớn chính, DTSD : 3050m2, điện nước chính, trước mặt là trường học, tiện làm kho bãi.</p>\n<p>Giá bán : 3,5 tr/m2 (10 tỷ/tổng), cho thuê 30 tr/th - LH : 0937022696 a.Nam</p>', '', 'cho-thue-nha-xuong-nguyen-xien-phuong-long-binh-quan-9', '', '', '', 12, 1, '10000000000', 'VND', 'Tổng diện tích', 0, NULL, NULL, NULL, NULL, NULL, 1, 1, 531, 580, 323, ' Đ.Nguyễn Xiển, phường Long Bình, quận 9, ', ' a.Nam', '', '0937022696 ', '', 'thanhsuong'),
(123, 'NHÀ CHO THUÊ 79/8 KP3, ĐƯỜNG 16, PHƯỜNG HIỆP BÌNH CHÁNH, QUẬN THỦ ĐỨC', '', '2012-07-09 01:12:00', NULL, NULL, NULL, '', '', '<p>Nhà Cho Thuê 79/8 KP3, Đường 16, phường Hiệp Bình Chánh, quận Thủ Đức, DTKV : 3 x 8m, 1 trệt, 1 gác, điện nước chính, chính chủ cho thuê. Khu dân cư đông, an ninh lich sự, giao thông thuận lợi, tiện ở và kinh doanh các ngành nghề.</p>\n<p>Giá thuê : 4 triệu/tháng (thương lượng) - LH : 0903607052 c.Ngọc</p>', '', 'nha-cho-thue-798-kp3-duong-16-phuong-hiep-binh-chanh-quan-thu-duc', '', '', '', 13, 1, '4000000', 'VND', 'Tổng diện tích', 0, NULL, NULL, NULL, NULL, NULL, 1, 2, 527, 572, 323, ' 79/8 KP3, Đường 16, phường Hiệp Bình Chánh, quận Thủ Đức', ' c.Ngọc', '', '0903607052', '', 'thanhsuong'),
(124, 'NHÀ BÁN GẤP 98/12/6 TỈNH LỘ 15, KP 3B, PHƯỜNG THẠNH LỘC, QUẬN 12', '', '2012-07-09 01:18:24', NULL, NULL, NULL, '', '', '<p>Nhà Bán Gấp 98/12/6 Tỉnh Lộ 15, KP 3B, phường Thạnh Lộc, quận 12, DTXD : 40m2, tổng DT 104m2, nhà có sổ đỏ riêng 1 chủ. Khu dân cư đông, gần trường học, chợ, bệnh viện, giao thông thuận lợi.</p>\n<p>Giá bán : 1 tỷ (còn TL) - Liên hệ : Nhi 0902717440, cô Tuyến 0935116910</p>', '', 'nha-ban-gap-98126-tinh-lo-15-kp-3b-phuong-thanh-loc-quan-12', '', '', '', 7, 1, '1000000000', 'VND', 'Tổng diện tích', 0, NULL, NULL, NULL, NULL, NULL, 1, 1, 527, 566, 323, '98/12/6 Tỉnh Lộ 15, KP 3B, phường Thạnh Lộc, quận 12', 'cô Tuyến', '', ' 0935116910', '', 'thanhsuong'),
(125, 'NHÀ CẦN BÁN 230 PHAN ĐÌNH PHÙNG, PHƯỜNG 1, QUẬN PHÚ NHUẬN', '', '2012-07-09 01:22:25', NULL, NULL, NULL, '', '', '<p>Nhà Cần Bán 230 PHAN ĐÌNH PHÙNG, phường 1, quận Phú Nhuận, DTKV : 4m x 27m,1 trệt, 5 lầu, sân thượng, mặt tiền nội bộ rộng, 6PN, 1PK, NB, NTCC, điện nước đầy đủ, sổ hồng chính chủ. Giáp ranh Q1, Q3, Q.Tân Bình, khu dân cư kinh doanh sầm uất, nhà mới, sạch đẹp, thoáng mát, giao thông thuân lợi.</p>\n<p>Giá bán : 22.000.000.000 đ (thương lượng) - Liên hệ : 0903358639 C.Tuyền</p>', '', 'nha-can-ban-230-phan-dinh-phung-phuong-1-quan-phu-nhuan', '', '', '', 10, 1, '22000000000', 'VND', 'Tổng diện tích', 0, NULL, NULL, NULL, NULL, NULL, 1, 1, 527, 570, 323, ' 230 PHAN ĐÌNH PHÙNG, PHƯỜNG 1, QUẬN PHÚ NHUẬN', 'C.Tuyền', '', '0903358639', '', 'thanhsuong'),
(126, 'SANG HOẶC HỢP TÁC QUÁN HƯƠNG ĐỒNG 130/25/1 BÙI CÔNG TRỪNG, ẤP 4 XÃ NHỊ BÌNH HUYỆN HÓC MÔN', '', '2012-07-09 01:28:37', NULL, NULL, NULL, '', '', '<p>Sang Hoặc Hợp Tác Quán HƯƠNG ĐỒNG 130/25/1 Bùi Công Trừng, ấp 4, xã Nhị Bình, huyện hóc Môn, DT : 4000m2, giá thuê hơn 3 triệu/tháng, hợp đồng còn 6 năm, có ao câu cá, hồ bơi mini, dàn nhạc hát với nhau, 2 phòng karaoke, 5 phòng để ở, 15 chòi lá lớn Hóc Môn, đầu tư gần 1 tỷ.</p>\n<p>Giá sang : 400 triệu (thương lượng) - Liên hệ : 0903666671 C.Hạnh</p>', '', 'sang-hoac-hop-tac-quan-huong-dong-130251-bui-cong-trung-ap-4-xa-nhi-binh-huyen-hoc-mon', '', '', '', 10, 1, '400000000', 'VND', 'Tổng diện tích', 0, NULL, NULL, NULL, NULL, NULL, 1, 3, 519, 563, 323, '130/25/1 Bùi Công Trừng, ấp 4, xã Nhị Bình, huyện hóc Môn', 'C.Hạnh', '', '0903666671 ', '', 'thanhsuong'),
(129, 'SANG QUÁN ĂN MẶT TIỀN 18/3 LÊ VĂN LƯƠNG, XÃ PHƯỚC KIỂNG, HUYỆN NHÀ BÈ', '', '2012-07-09 01:32:56', NULL, NULL, NULL, '', '', '<p>Sang Quán Ăn Mặt Tiền 18/3 LÊ VĂN LƯƠNG, xã Phước Kiểng, huyện Nhà Bè : mặt tiền đường 8m, DTSD : 420m2, 2 phòng vip, điện nước chính, GTHL chính chủ. Giá thuê mặt bằng 2 năm đầu 16 triệu, 2 năm sau 20 triệu, tiền cọc 32 triệu. Khu vực đông dân cư, hiejn đang kinh doanh hoạt động bình thường, vào thu nhập cao ngay.</p>\n<p>Giá sang : 250.000.000 đ (thương lượng) - Liên hệ : 0907974481 - 0918803518 A.Huy</p>', '', 'sang-quan-an-mat-tien-183-le-van-luong-xa-phuoc-kieng-huyen-nha-be', '', '', '', 11, 1, '250000000', 'VND', 'Tổng diện tích', 0, NULL, NULL, NULL, NULL, NULL, 1, 3, 519, 571, 323, '18/3 LÊ VĂN LƯƠNG, XÃ PHƯỚC KIỂNG, HUYỆN NHÀ BÈ', ' A.Huy', '', ' 0907974481', '', 'thanhsuong'),
(130, 'SANG NHÀ HÀNG THU ÂM TRÊN NỀN NHẠC LONG PHƯƠNG', '', '2012-07-09 01:37:44', NULL, NULL, NULL, '', '', '<p>Sang Nhà Hàng thu Âm Trên Nền Nhạc LONG PHƯƠNG, 362 Ung Văn Khiêm, phường 25, quận Bình Thạnh, DTKV : 246m2, hẻm thông Đ.Điện Biên Phủ và D1, nhà 4 tầng, 3 dàn karaoke, điện nước chính, GTHL chính chủ. Nhà có 8 phòng đẹp, 5WC, khu trung tâm kinh doanh sầm uất, giao thông thuận lợi.</p>\n<p>Giá sang : 280.000.000 đ (thương lượng) - Liên hệ : 0909382555 C.Linh chính chủ</p>', '', 'sang-nha-hang-thu-am-tren-nen-nhac-long-phuong', '', '', '', 13, 1, '280000000', 'VND', 'Tổng diện tích', 0, NULL, NULL, NULL, NULL, NULL, 1, 3, 519, 576, 323, '362 Ung Văn Khiêm, phường 25, quận Bình Thạnh', ' C.Linh', '', '0909382555', '', 'thanhsuong'),
(131, 'SANG GẤP PHÒNG TRÀ CAFE 50/3 BA VÂN, PHƯỜNG 14, QUẬN TÂN BÌNH', '', '2012-07-09 01:46:06', NULL, NULL, NULL, '', '', '<p>Sang Quán Phòng Trà Cà Phê 50/3 BA VÂN, phường 14, quận Tân Bình, hẻm lớn rộng 4m, DTSD : 500m2, 1 trệt, 1 gác, 1 lầu, sân thượng, điện nước đầy đủ. Quán có tiện nghi, đồ dùng sang trọng, bên cạnh 2 chung cư lớn, đang kinh doanh đông khách, không người quản lý nên sang.</p>\n<p>Giá sang : 300.000.000 (thương lượng) - Liên hệ : 0907404076 A.Phương</p>', '', 'sang-gap-phong-tra-cafe-503-ba-van-phuong-14-quan-tan-binh', '', '', '', 15, 1, '300000000', 'VND', 'Tổng diện tích', 0, NULL, NULL, NULL, NULL, NULL, 1, 3, 519, 586, 323, '50/3 BA VÂN, PHƯỜNG 14, QUẬN TÂN BÌNH', 'A.Phương', '', '0907404076', '', 'thanhsuong'),
(132, 'BIỆT THỰ BÁN MT 03 ẤP 6A, XÃ BÌNH MỸ, HUYỆN CỦ CHI', '', '2012-07-09 01:50:55', NULL, NULL, NULL, '', '', '<p>Biệt Thự Bán MT 03 Ấp 6A, xã BÌNH MỸ, huyện Củ Chi, DTKV : 960m2, 1 trệt + sân thượng, 2 phòng, nhà cấp 4, điện chính thức, nước giếng sạch, GTHL bao sang tên. gần trường học, chợ, cách UBND 150m.</p>\n<p>Giá bán : 5.000.000.000 đ (thương lượng) - Liên hệ : 0913745195 A.Lừng</p>', '', 'biet-thu-ban-mt-03-ap-6a-xa-binh-my-huyen-cu-chi', '', '', '', 8, 1, '5000000000', 'VND', 'Tổng diện tích', 0, NULL, NULL, NULL, NULL, NULL, 1, 1, 528, 574, 323, 'MT 03 ẤP 6A, XÃ BÌNH MỸ, HUYỆN CỦ CHI', 'A.Lừng', '', '0913745195', '', 'thanhsuong'),
(134, 'bán nhà hẻm xe hơi huỳnh tấn phat-tân thuận đông-quận 7', '', '2012-07-10 02:44:54', '', '', NULL, '', '', '<p><strong>nhà diện tích 4x18, xây dựng 1 trêt 2 lầu, hẻm xe hơi 6m, khu an ninh.cao thoáng, khu dân cư hiện hửu,gần trung tâm điện máy, tiện về trung tâm..........</strong></p>\n<p><strong>giá bán 2 tỷ</strong></p>', '', 'ban-nha-hem-xe-hoi-huynh-tan-phat-tan-thuan-dong-quan-7', '', '', '', 12, 1, '2000000000', 'VND', 'Tổng diện tích', 0, NULL, NULL, NULL, NULL, NULL, 1, 1, 527, 582, 323, 'hẻm 458', 'A Hồng', '', '0903059236', '', 'donghong3168@gmail.com'),
(135, 'Miễn phí cho thuê mặt bằng kinh doanh tai TTTM Ngọc Khánh', '', '2012-07-10 04:09:39', '', '', NULL, '', '', '<p>Hiện nay Thương Xá Ngọc Khánh chúng tôi đang miễn phí tiền thuê mặt bằng tại Thương xá trong 3 tháng đầu cho quý khách có nhu cầu kinh doanh các mặt hàng như quần áo thời trang,mỹ phẩm,mỹ nghệ,trang sức....Hết 3 tháng,nếu quý khách không có nhu cầu kinh doanh tiếp thì được quyền trả lại mặt bằng cho chúng tôi mà không phải đóng thêm bất kỳ khoản phí nào.<br />Chúng tôi cần tìm nhiều tiểu thương hợp tác kinh doanh gấp.<br />Địa chỉ : 21-23 Nguyễn Biểu,P.1,Q.5<br />Liên hệ sớm để có vị trí đẹp nhất.<br />Lợi thế:<br />Co.op Food đã hoạt động sung túc<br />Nằm giữa Đại lộ Đông Tây và đường Nguyễn Biểu.<br />Thông tin chi tiết vui lòng liên hệ: Mr Long 0987 830 824- Ms Tuyền 0908 811 930</p>', '', 'mien-phi-cho-thue-mat-bang-kinh-doanh-tai-tttm-ngoc-khanh', '', '', '', 8, 1, '1000000', 'VND', 'Tổng diện tích', 0, NULL, NULL, NULL, NULL, NULL, 1, 2, 534, 584, 323, '21-23,Nguyễn Biểu,Q.5', 'le phi long', '', '0987830824', '', 'huynhtuyen1806'),
(136, 'Cho thuê gian hàng kinh doanh miễn phí', '', '2012-07-10 04:11:41', '', '', NULL, '', '', '<p>Hiện nay, công ty chúng tôi đang cho thuê kios/ gian hàng kinh doanh các mặt hàng thời trang, mỹ phẩm, mỹ nghệ, điện thoại….tại Trung tâm thương mại Ngọc Khánh ( 21-23 Nguyễn Biểu, phường 1, quận 5)<br />-DT mỗi gian hàng : 2-6 m2.<br />-Giá thuê mỗi gian hàng : 2 - 4.5triệu/tháng tùy vị trí<br />Phương thức cho thuê gian hàng:<br />- Miễn phí tiền thuê 3 tháng đầu, chỉ đóng phí quản lý (điện, nước, bảo trì máy lạnh, dịch vụ vệ sinh, bảo vệ) là 1 triệu/tháng/kios bất kỳ.</p>\n<p>-Hết 3 tháng,nếu quý khách không có nhu cầu kinh doanh tiếp thì được quyền trả lại mặt bằng cho chúng tôi mà không phải đóng thêm bất kỳ khoản phí nào.<br />- Mọi thông tin chi tiết xin liên hệ: Mr Long 0987 830 824 –Ms Tuyền 0908 811 930-Phòng kinh doanh Công ty TNHH TM DV Kim Kim Hoàn Mỹ (21-23 Nguyễn Biểu, phường 1, quận 5)<br />Xin chân thành cám ơn đã đọc tin!</p>\n<p> </p>', '', 'cho-thue-gian-hang-kinh-doanh-mien-phi', '', '', '', 9, 1, '1000000', 'VND', 'Tổng diện tích', 0, NULL, NULL, NULL, NULL, NULL, 1, 2, 534, 584, 323, 'nguyễn  biểu,quận 5', 'le phi long', '', '0987830824', '', 'huynhtuyen1806'),
(137, 'bán căn hộ  cao cấp sky garden -quận 7', '', '2012-07-10 06:58:19', '', 'ban-can-ho--cao-cap-sky-garden--quan-7.JPG', NULL, '', '', '<p><strong>căn hộ diện tích 74m2, căn góc, hướng đông nam, thiết kế rất đẹp, thoáng mát, có 2 phòng ngủ, 2 wc, bàn ăn,bếp, tủ âm tường,.....</strong></p>\n<p><strong>tiện nghi đầy đủ,cao cấp,lầu cao,</strong></p>\n<p><strong>giá bán 2 tỷ</strong></p>', '', 'ban-can-ho-cao-cap-sky-garden-quan-7', '', '', '', 10, 1, '2000000000', 'VND', 'Tổng diện tích', 0, NULL, NULL, NULL, NULL, NULL, 1, 1, 529, 582, 323, 'sky garden', 'A Hồng', '', '0903059236', '', 'donghong3168@gmail.com'),
(138, 'Cho thuê kiot/gian hàng TTTM Ngọc Khánh miễn phí', '', '2012-07-11 03:33:56', '', '', NULL, '', '', '<p>Hiện nay, công ty chúng tôi đang cho thuê kios/ gian hàng kinh doanh các mặt hàng thời trang, mỹ phẩm, mỹ nghệ, điện thoại….tại Trung tâm thương mại Ngọc Khánh ( 21-23 Nguyễn Biểu, phường 1, quận 5)<br />-DT mỗi gian hàng : 2-6 m2.<br />-Giá thuê mỗi gian hàng : 2 - 4.5triệu/tháng tùy vị trí<br />Phương thức cho thuê gian hàng:<br />- Miễn phí tiền thuê 3 tháng đầu, chỉ đóng phí quản lý là 1 triệu/tháng/kios bất kỳ.</p>\n<p>-Hết 3 tháng,nếu quý khách không có nhu cầu kinh doanh tiếp thì được quyền trả lại mặt bằng cho chúng tôi mà không phải đóng thêm bất kỳ khoản phí nào.</p>\n<p><span style="text-decoration:underline;">- Thông tin chi tiết xin liên hệ</span>: <strong>Mr Long 0987 830 824 –Ms Tuyền 0908 811 930</strong></p>', '', 'cho-thue-kiotgian-hang-tttm-ngoc-khanh-mien-phi', '', '', '', 11, 1, '1000000', 'VND', 'Tổng diện tích', 0, NULL, NULL, NULL, NULL, NULL, 1, 2, 534, 584, 323, '21-23 Nguyễn Biểu.quận 5', 'le phi long', '', '0987830824', '', 'huynhtuyen1806'),
(139, 'Cho Thuê Văn Phòng Tòa Nhà VIETRAN SỐ 17-19 HOÀNG DIỆU, P. 12, Q. 4, TP HCM', '', '2012-07-11 07:23:50', 'cho-thue-van-phong-toa-nha-vietran-s-17-19-hong-diu-p--12-q--4-tp-hcm-thumb.gif', 'cho-thue-van-phong-toa-nha-vietran-s-17-19-hong-diu-p--12-q--4-tp-hcm.gif', NULL, '', '', '<p>- Tòa nhà có 32 phòng, có 3 loại phòng:</p>\n<p>+ 25m2 giá cho thuê 4 đến 5 triệu/ tháng tùy phòng<br />+ 40m2 cho thuê 5 triệu/ tháng<br />+ phòng 60m2 cho thuê 8 đến 10 triệu/tháng</p>\n<p>- Tòa nhà vị trí đẹp, sát trung tâm quận 1 (2 phút đi Xe máy). Khu phố ngân hàng, vị trí trắc địa, tiện mở văn phòng đại diện hoặc chi nhánh, công ty.</p>\n<p>- Tiện nghi: tòa nhà sạch sẽ thoáng mát, có 2 thang máy, khu vực để xe máy rộng rãi, hẻm để xe hơi, bảo vệ 24/24. Trong phòng đã trang bị máy lạnh, toilet riêng từng phòng, điện nước riêng biệt. Sảnh tiếp tân tiếp đón khách hướng dẫn khách hàng khi đến tham quan công ty. Miễn phí phòng họp, phòng tiếp khách khi cần sử dụng làm việc. Phí trên đã bao gồm phí quản lý</p>\n<p>Liên hệ: Ms Trang: 0904083983 ( chính chủ)</p>', '', 'cho-thue-van-phong-toa-nha-vietran-so-17-19-hoang-dieu-p-12-q-4-tp-hcm', '', '', '', 20, 1, '5000000', 'VND', 'Tổng diện tích', 0, NULL, NULL, NULL, NULL, NULL, 1, 2, 532, 563, 323, 'SỐ 17-19 HOÀNG DIỆU, P. 12, Q. 4, TP HCM', ' Ms Trang', '', '0904083983', '', 'thanhsuong'),
(140, 'CHO THUÊ TẦNG TRỆT 305 HOÀNG DIỆU, PHƯỜNG 6, QUẬN 4', '', '2012-07-11 07:28:28', 'cho-thu-tng-trt-305-hong-diu-phng-6-qun-4-thumb.JPG', 'cho-thu-tng-trt-305-hong-diu-phng-6-qun-4.JPG', NULL, '', '', '<p>Cho Thuê Tầng trệt 305 Hoàng Diệu, phường 6, quận 4, DTKV : 4mx 9m, điện nước chính, GTHL chính chủ. Khu trung tâm rộng lớn, giáp Q1, cách chợ Bến Thành 3p xe máy, giao thông thuận lợi, tiện mở văn phòng hoặc nhà phân phối lớn, nhà có 1WC riêng, lối đi chung.</p>\n<p>Giá thuê : 15 triệu/tháng (thương lượng) - Liên hệ : 0923606606 - 0922505797 a.Sơn</p>', '', 'cho-thue-tang-tret-305-hoang-dieu-phuong-6-quan-4', '', '', '', 8, 1, '15000000', 'VND', 'Tổng diện tích', 0, NULL, NULL, NULL, NULL, NULL, 1, 1, 527, 563, 323, '305 HOÀNG DIỆU, PHƯỜNG 6, QUẬN 4', ' a.Sơn', '', '0923606606 ', '', 'thanhsuong'),
(142, 'BÁN ĐẤT MẶT TIỀN ĐƯỜNG SỐ 29, GẦN TRUNG TÂM HÀNH CHÁNH CỦ CHI', '', '2012-07-11 07:34:59', 'bn-t-mt-tin-ng-s-29-gn-trung-tm-hnh-chnh-c-chi-thumb.JPG', 'bn-t-mt-tin-ng-s-29-gn-trung-tm-hnh-chnh-c-chi.JPG', NULL, '', '', '<p>Bán Đất Mặt Tiền ĐƯỜNG SỐ 29, gần trung tâm hành chánh Củ Chi (cách 300m), xã Tân Thông Hội, huyện Củ Chi, DT : 750m2, có 300m2 thổ cư, còn lại thổ vườn, đã có giấy phép xây dựng.</p>\n<p>Giá bán : 1.800.000.000 đ (thương lượng) - Liên hệ : 0938787378 a.Vinh</p>', '', 'ban-dat-mat-tien-duong-so-29-gan-trung-tam-hanh-chanh-cu-chi', '', '', '', 6, 1, '1800000000', 'VND', 'Tổng diện tích', 0, NULL, NULL, NULL, NULL, NULL, 1, 1, 525, 574, 323, ' ĐƯỜNG SỐ 29, GẦN TRUNG TÂM HÀNH CHÁNH CỦ CHI', 'a.Vinh', '', '0938787378', '', 'thanhsuong'),
(143, 'BÁN NHÀ 106/215F TÔN THẤT HIỆP, PHƯỜNG 13, QUẬN 11', '', '2012-07-11 07:41:35', 'bn-nh-106215f-tn-tht-hip-phng-13-qun-11-thumb.JPG', 'bn-nh-106215f-tn-tht-hip-phng-13-qun-11.JPG', NULL, '', '', '<p>Bán Nhà 106/215F Tôn Thất Hiệp, phường 13, quận 11, DTKV : 3,8m x 8,7m, nhà 3 tầng, 3PN, tiện nghi đầy đủ, điện nước chính thức, sổ hồng hợp lệ chính chủ. Khu trung tâm, gần nhiều trường học, chợ, bệnh viện, giao thông thuận lợi.</p>\n<p>Giá bán : 2,2 tỷ (thương lượng) - Liên hệ : 0938456544 c.Lý</p>', '', 'ban-nha-106215f-ton-that-hiep-phuong-13-quan-11', '', '', '', 9, 1, '2000000000', 'VND', 'Tổng diện tích', 0, NULL, NULL, NULL, NULL, NULL, 1, 1, 527, 567, 323, '106/215F TÔN THẤT HIỆP, PHƯỜNG 13, QUẬN 11', 'c.Lý', '', '0938456544', '', 'thanhsuong');
INSERT INTO `dos_module_products` (`record_id`, `title`, `titleen`, `postdate`, `pic_thumb`, `pic_full`, `pic_desc`, `preview`, `previewen`, `content`, `contenten`, `tag`, `tagen`, `description`, `descriptionen`, `hits`, `record_order`, `unit`, `unit_currency`, `unit_unit`, `hot`, `specials`, `extra_field1`, `extra_field2`, `extra_field3`, `extra_field4`, `enable`, `dos_module_item_type_type_id`, `dos_module_item_cat_cat_id`, `dos_districts_district_id`, `dos_wards_ward_id`, `address`, `contact_name`, `contact_add`, `contact_mobile`, `contact_tel`, `dos_username`) VALUES
(144, 'NHÀ CHO THUÊ MT 94 TÂN SƠN NHÌ, PHƯỜNG TÂN SƠN NHÌ, QUẬN TÂN PHÚ', '', '2012-07-11 07:46:03', 'nh-cho-thu-mt-94-tn-sn-nh-phng-tn-sn-nh-qun-tn-ph-thumb.JPG', 'nh-cho-thu-mt-94-tn-sn-nh-phng-tn-sn-nh-qun-tn-ph.JPG', NULL, '', '', '<p>Nhà Cho Thuê MT 94 Tân Sơn Nhì, phường Tân Sơn Nhì, quận Tân Phú, diện tích sử dụng : 4,5m x 10m, nhà mặt tiền lớn chính khu trung tâm Tân Phú, giáp Tân Bình, giao thông thuận lợi, tiện mua bán, kinh doanh các ngành nghề.</p>\n<p>Giá cho thuê : 8 triệu/tháng - Liên hệ : 0975992787 c.Thủy</p>', '', 'nha-cho-thue-mt-94-tan-son-nhi-phuong-tan-son-nhi-quan-tan-phu', '', '', '', 9, 1, '8000000', 'VND', 'Tháng', 0, NULL, NULL, NULL, NULL, NULL, 1, 2, 528, 585, 323, '94 TÂN SƠN NHÌ, PHƯỜNG TÂN SƠN NHÌ, QUẬN TÂN PHÚ', 'c.Thủy', '', '0975992787', '', 'thanhsuong'),
(145, 'NHÀ BÁN 106/1 PHAN TÂY HỒ, PHƯỜNG 7, QUẬN PHÚ NHUẬN', '', '2012-07-11 07:49:47', 'nh-bn-1061-phan-ty-h-phng-7-qun-ph-nhun-thumb.JPG', 'nh-bn-1061-phan-ty-h-phng-7-qun-ph-nhun.JPG', NULL, '', '', '<p>Nhà Bán 106/1 Phan Tây Hồ, phường 7, quận Phú Nhuận, ngang 3m2, dài 10,5m, sổ hồng chính chủ, điện nước riêng. Gần siêu thị Coopmark Nhiêu Lộc, đường Phan Xích Long, sát bên trung tâm Q1.</p>\n<p>Giá bán : 1,4 tỷ (còn thương lượng) - LH : 0917562828 a.Thi</p>', '', 'nha-ban-1061-phan-tay-ho-phuong-7-quan-phu-nhuan', '', '', '', 9, 1, '1400000000', 'VND', 'Tổng diện tích', 0, NULL, NULL, NULL, NULL, NULL, 1, 1, 527, 570, 323, '106/1 PHAN TÂY HỒ, PHƯỜNG 7, QUẬN PHÚ NHUẬN', 'a.Thi', '', '0917562828 ', '', 'thanhsuong'),
(146, 'NHÀ CẦN BÁN 279/42 HUỲNH VĂN BÁNH, PHƯỜNG 11, QUẬN PHÚ NHUẬN', '', '2012-07-11 07:53:02', 'nh-cn-bn-27942-hunh-vn-bnh-phng-11-qun-ph-nhun-thumb.JPG', 'nh-cn-bn-27942-hunh-vn-bnh-phng-11-qun-ph-nhun.JPG', NULL, '', '', '<p>Nhà Cần Bán 279/42 HUỲNH VĂN BÁNH, phường 11, quận Phú Nhuận, DTKV : 6m x 24m, 1 trệt, 1 lầu, 11 phòng, NTCC, điện nước chính, giấy tờ hợp lệ. Khu trung tâm, giao thông thuận lợi, khu an ninh lịch sự, yên tĩnh.</p>\n<p>Giá bán : 8.000.000.000 đ (thương lượng) - Liên hệ : 0905091421 C.Lan</p>', '', 'nha-can-ban-27942-huynh-van-banh-phuong-11-quan-phu-nhuan', '', '', '', 5, 1, '8000000000', 'VND', 'Tổng diện tích', 0, NULL, NULL, NULL, NULL, NULL, 1, 1, 527, 570, 323, '279/42 HUỲNH VĂN BÁNH, PHƯỜNG 11, QUẬN PHÚ NHUẬN', 'C.Lan', '', '0905091421', '', 'thanhsuong'),
(147, 'BÁN CĂN HỘ CHUNG CƯ KHÁNH HỘI A, 360C BẾN VÂN ĐỒN, QUẬN 4', '', '2012-07-11 08:06:33', 'bn-cn-h-chung-c-khnh-hi-a-360c-bn-vn-n-qun-4-thumb.JPG', 'bn-cn-h-chung-c-khnh-hi-a-360c-bn-vn-n-qun-4.JPG', NULL, '', '', '<p>Bán Căn Hộ Chung Cư Khánh hội A, 360C BẾN VÂN ĐỒN, quận 4 : căn hộ A7, lầu 5, lô A, DTSD : 104m2, 3 phòng ngủ, 3 máy lạnh, 1PK, 1NB, 2WC, tiện nghi đầy đủ, gần trường học, chợ, siêu thị.</p>\n<p>Giá bán : 2.800.000.000 đ (thương lượng) - Liên hệ : 0906606747 chính chủ</p>', '', 'ban-can-ho-chung-cu-khanh-hoi-a-360c-ben-van-don-quan-4', '', '', '', 11, 1, '2800000000', 'VND', 'Tổng diện tích', 0, NULL, NULL, NULL, NULL, NULL, 1, 2, 529, 563, 323, '360C BẾN VÂN ĐỒN, QUẬN 4', 'chính chủ', '', '0906606747', '', 'thanhsuong'),
(148, 'CẦN TIỀN TRẢ NỢ NGÂN HÀNG BÁN GẤP NHÀ 26/11 NGUYỄN THỊ ĐỊNH', '', '2012-07-11 08:11:28', 'cn-tin-tr-n-ngn-hng-bn-gp-nh-2611-nguyn-th-nh-thumb.JPG', 'cn-tin-tr-n-ngn-hng-bn-gp-nh-2611-nguyn-th-nh.JPG', NULL, '', '', '<p>Cần Tiền Trả Nợ Ngân Hàng Bán Gấp Nhà 26/11 NGUYỄN THỊ ĐỊNH, phường Cát Lái, quận 2, DTKV : 214,8m2, hẻm chính nhựa rộng, 1 trệt, 1 gác, 3 phòng, sổ hồng chính chủ. Gần trường, khu phố mới, KCN cách cảng Cát Lái 800m.</p>\n<p>Giá bán : 3.900.000.000 đ (thương lượng) - LH : 0972029242 C.Huệ</p>', '', 'can-tien-tra-no-ngan-hang-ban-gap-nha-2611-nguyen-thi-dinh', '', '', '', 6, 1, '3900000000', 'VND', 'Tổng diện tích', 0, NULL, NULL, NULL, NULL, NULL, 1, 1, 527, 565, 323, ' 26/11 NGUYỄN THỊ ĐỊNH P.CÁT LÁI Q.2', 'C.Huệ', '', ' 0972029242', '', 'thanhsuong'),
(149, 'NHÀ CHO THUÊ 87/28 ĐƯỜNG 16, KP3, PHƯỜNG HIỆP BÌNH CHÁNH', '', '2012-07-11 08:17:07', 'nh-cho-thu-8728-ng-16-kp3-phng-hip-bnh-chnh-thumb.JPG', 'nh-cho-thu-8728-ng-16-kp3-phng-hip-bnh-chnh.JPG', NULL, '', '', '<p>Nhà Cho Thuê 87/28 ĐƯỜNG 16, KP3, phường Hiệp bình Chánh, quận Thủ Đức, DTKV : 5m x 37m, hẻm xe tải, nhà 1 trệt, 3 lầu, PK, 3PN, điện nước chính. Nhà sạch đẹp, thoáng mát, khu dân cư đông, gần trường học, chợ, bệnh viện, giao thông thuận lợi.</p>\n<p>Giá thuê : 8.500.000 đ/tháng - Liên hệ : A.Tâm 0903756765</p>', '', 'nha-cho-thue-8728-duong-16-kp3-phuong-hiep-binh-chanh', '', '', '', 7, 1, '8500000', 'VND', 'Tổng diện tích', 0, NULL, NULL, NULL, NULL, NULL, 1, 2, 527, 572, 323, '87/28 ĐƯỜNG 16, KP3, PHƯỜNG HIỆP BÌNH CHÁNH', ' A.Tâm', '', '0903756765', '', 'thanhsuong'),
(150, 'ĐẤT DỰ ÁN CTY PHÚ NHUẬN SỐ 2 LÊ THỊ HOA, PHƯỜNG BÌNH CHIỂU, QUẬN THỦ ĐỨC', '', '2012-07-11 08:20:44', 't-d-n-cty-ph-nhun-s-2-l-th-hoa-phng-bnh-chiu-qun-th-c-thumb.JPG', 't-d-n-cty-ph-nhun-s-2-l-th-hoa-phng-bnh-chiu-qun-th-c.JPG', NULL, '', '', '<p>Đất Dự Án CTy Phú Nhuận Số 2 LÊ THỊ HOA, phường Bình Chiểu, quận Thủ Đức, DTKV : 32m x 13m, DTSD : 335m2, sổ đỏ hợp lệ. Cơ sở hạ tầng hoàn chỉnh, khu dân cư đông, gần bệnh viện, chợ, trường học.</p>\n<p>Giá bán : 6.500.000 đ/m2 (thương lượng) - Liên hệ : 0907516000 C.Thúy</p>', '', 'dat-du-an-cty-phu-nhuan-so-2-le-thi-hoa-phuong-binh-chieu-quan-thu-duc', '', '', '', 12, 1, '6500000', 'VND', 'm2', 0, NULL, NULL, NULL, NULL, NULL, 1, 1, 525, 572, 323, 'SỐ 2 LÊ THỊ HOA, PHƯỜNG BÌNH CHIỂU, QUẬN THỦ ĐỨC', ' C.Thúy', '', '0907516000', '', 'thanhsuong'),
(151, 'CHO THUÊ KHO TẠI XÃ BÌNH MỸ, HUYỆN CỦ CHI, GIÁP Q12', '', '2012-07-11 08:26:58', 'cho-thu-kho-ti-x-bnh-m-huyn-c-chi-gip-q12-thumb.JPG', 'cho-thu-kho-ti-x-bnh-m-huyn-c-chi-gip-q12.JPG', NULL, '', '', '<p>Cho Thuê Kho Tại xã Bình Mỹ, huyện Củ Chi, giáp Q12, DTKV : 47 x 133m, mặt tiền đường chính, điện nước đầy đủ, GTHL. Đối diện UBND xã Bình Mỹ, kho mới xây dựng sạch đẹp, cơ sở hạ tầng hoàn thiện, đầy đủ tiện ích, có máy phát điện dự dự phòng, trạm điện 3 pha 560 kvA, nằm trong khuôn viên rộng 2ha, giáp Q12, giao thông thuận lợi.</p>\n<p>Giá cho thuê : 46.000 đ/m2 - Liên hệ : 0978877676 - 0918261062 a.Tuấn</p>', '', 'cho-thue-kho-tai-xa-binh-my-huyen-cu-chi-giap-q12', '', '', '', 15, 1, '46000', 'VND', 'm2', 0, NULL, NULL, NULL, NULL, NULL, 1, 2, 531, 574, 323, 'XÃ BÌNH MỸ, HUYỆN CỦ CHI, GIÁP Q12', 'a.Tuấn', '', '0978877676 ', '', 'thanhsuong'),
(152, 'BÁN GẤP CHCC NHIÊU LỘC LÔ D, LẦU 5, SỐ 511, PHƯỜNG TÂN QUÝ, QUẬN TÂN PHÚ', '', '2012-07-11 08:32:37', 'bn-gp-chcc-nhiu-lc-l-d-lu-5-s-511-phng-tn-qu-qun-tn-ph-thumb.JPG', 'bn-gp-chcc-nhiu-lc-l-d-lu-5-s-511-phng-tn-qu-qun-tn-ph.JPG', NULL, '', '', '<p>Bán Gấp CHCC NHIÊU LỘC Lô D, Lầu 5, Số 511, phường Tân Quý, quận Tân Phú, DTSD : 71,74m2, điện nước chính thức, sổ hồng hợp lệ. gần trường học, chợ, khu dân cư yên tĩnh, thoáng mát, xuất cảnh cần bán gấp.</p>\n<p>Giá bán : 770.000.000 đ (TL) - Liên hệ : 0989501617 A.Thành</p>', '', 'ban-gap-chcc-nhieu-loc-lo-d-lau-5-so-511-phuong-tan-quy-quan-tan-phu', '', '', '', 8, 1, '770000000', 'VND', 'Tổng diện tích', 0, NULL, NULL, NULL, NULL, NULL, 1, 1, 529, 585, 323, 'LẦU 5, SỐ 511, PHƯỜNG TÂN QUÝ, QUẬN TÂN PHÚ', 'A.Thành', '', '0989501617', '', 'thanhsuong'),
(153, 'NHÀ BÁN 924B TẠ QUANG BỬU, PHƯỜNG 5, QUẬN 8', '', '2012-07-11 08:37:54', 'nh-bn-924b-t-quang-bu-phng-5-qun-8-thumb.JPG', 'nh-bn-924b-t-quang-bu-phng-5-qun-8.JPG', NULL, '', '', '<p>Nhà Bán 924B TẠ QUANG BỬU, phường 5, quận 8, DTKV : 4m x 20m, DTXD : 300m2, 1 trệt, 1 lửng, 2 lầu, sân thượng, 6 phòng, NTCC, điện nước chính thức, GTHL bao sang tên. Nhà mới sạch đẹp, thoáng mát, khu dân cư an ninh, yên tĩnh, thuận tiện ở, kinhd doanh, buôn bán.</p>\n<p>Giá bán : 6.000.000.000 đ (thương lượng) - Liên hệ : anh Tú 0913695339</p>', '', 'nha-ban-924b-ta-quang-buu-phuong-5-quan-8', '', '', '', 14, 1, '600000000', 'VND', 'Tổng diện tích', 0, NULL, NULL, NULL, NULL, NULL, 1, 1, 527, 581, 323, '924B TẠ QUANG BỬU, PHƯỜNG 5, QUẬN 8', 'anh Tú ', '', '0913695339', '', 'thanhsuong'),
(154, 'SANG QUÁN GẤP 43/2 LÊ THỊ HÀ, XÃ TÂN XUÂN, HUYỆN HÓC MÔN', '', '2012-07-11 08:43:35', 'sang-qun-gp-432-l-th-h-x-tn-xun-huyn-hc-mn-thumb.JPG', 'sang-qun-gp-432-l-th-h-x-tn-xun-huyn-hc-mn.JPG', NULL, '', '', '<p>Sang Quán Gấp 43/2 LÊ THỊ HÀ, xã Tân Xuân, huyện Hóc Môn, DTSD : 388m2, mặt bằng MT, 1 trệt, 1 lầu, 2 phòng lạnh, điện nước chính, GPKD hợp lệ chính chủ. Khu dan cư đông, gần nhiều trường học, chợ, giá thuê MB 10 triệu/tháng, đặt cọc 20 triệu, quán đang kinh doanh tốt, có lượng khách đông, thu nhập cao, vào kinh doanh ngay.</p>\n<p>Giá sang : 180.000.000 đ (thương lượng) - Liên hệ : 0907788399 C.Ly</p>', '', 'sang-quan-gap-432-le-thi-ha-xa-tan-xuan-huyen-hoc-mon', '', '', '', 9, 1, '180000000', 'VND', 'Tổng diện tích', 0, NULL, NULL, NULL, NULL, NULL, 1, 3, 534, 579, 323, '43/2 LÊ THỊ HÀ, XÃ TÂN XUÂN, HUYỆN HÓC MÔN', 'C.Ly', '', '0907788399', '', 'thanhsuong'),
(155, 'CẦN BÁN BT Đ.TÚ XƯƠNG, PHƯỜNG 7, QUẬN 3', '', '2012-07-11 08:52:01', 'cn-bn-bt--t-xng-phng-7-qun-3-thumb.JPG', 'cn-bn-bt--t-xng-phng-7-qun-3.JPG', NULL, '', '', '<p>Cần Bán BT Đ.Tú Xương, phường 7, quận 3, MTNB 20m-4m, KDC an ninh yên tĩnh, DTKV : 9,35m x 17,68m = 222,2m2, nở hậu 13,61m, DTSD : 262,9m2, trệt, 2 lầu, mái ngói (biệt thự đơn lập kiểu Pháp), sổ hồng.</p>\n<p>Giá bán : 39 tỷ - LH a.Duy 0983383168, chú Hải 01887004560</p>', '', 'can-ban-bt-dtu-xuong-phuong-7-quan-3', '', '', '', 9, 1, '39000000000', 'VND', 'Tổng diện tích', 0, NULL, NULL, NULL, NULL, NULL, 1, 1, 528, 564, 323, 'TÚ XƯƠNG, PHƯỜNG 7, QUẬN 3', 'Chú Hải', '', '01887004560', '', 'thanhsuong'),
(156, 'BÁN BIỆT THỰ CAO CẤP NGAY MT NGUYỄN VĂN LINH', '', '2012-07-11 08:57:00', 'bn-bit-th-cao-cp-ngay-mt-nguyn-vn-linh-thumb.JPG', 'bn-bit-th-cao-cp-ngay-mt-nguyn-vn-linh.JPG', NULL, '', '', '<p>Bán Biệt Thự Cao Cấp Ngay MT NGUYỄN VĂN LINH Đ/C K22 Đ.Dân Cư Him Lam - Khu Biệt Thự, xã Bình Hưng, huyện Bình Chánh, DTKV : 250m2, DTSD : 407,3m2, 1 hầm, 1 lửng, 2 lầu, 1 PK đẹp sang trọng, phòng bếp, phòng ăn rộng, 7PN cao cấp, phòng làm việc, đầy đủ tiện nghi, máy lạnh, máy nước nóng, truyền hình cáp, internet...nội thất sàn gỗ cao cấp, sang trọng, vào ở ngay, tiện mở văn phòng công ty...</p>\n<p>Giá bán : 24.000.000.000 đ (TL) - Liên hệ : 0903333513 cô Hường</p>', '', 'ban-biet-thu-cao-cap-ngay-mt-nguyen-van-linh', '', '', '', 13, 1, '24000000000', 'VND', 'Tổng diện tích', 0, NULL, NULL, NULL, NULL, NULL, 1, 1, 528, 578, 323, ' MT NGUYỄN VĂN LINH Đ/C K22 Đ.Dân Cư Him Lam - Khu Biệt Thự, xã Bình Hưng, huyện Bình Chánh', 'cô Hường', '', ' 0903333513', '', 'thanhsuong'),
(157, 'BÁN ĐẤT Đ.LÊ MINH NHẬT, XÃ TÂN AN HỘI, HUYỆN CỦ CHI', '', '2012-07-11 09:02:40', 'bn-t--l-minh-nht-x-tn-an-hi-huyn-c-chi-thumb.JPG', 'bn-t--l-minh-nht-x-tn-an-hi-huyn-c-chi.JPG', NULL, '', '', '<p>Bán Đất Đ.Lê Minh Nhật, xã Tân An Hội, huyện Củ Chi, DTKV : 313,9m2, gồm đất ở và nhà ở, có 3PN, 3WC, nội thất đẹp, điện nước chính thức, GTHL. Giá 900 triệu.<br />Lô đất tại ấp xóm Huế, xã Tân An Hội, đất TCLN, có nhà cấp 4 mới xây đẹp, DT : 94m2, khu đất nằm gần nhiều công ty, xí nghiệp, đường lớn ô tô, xe tải vào tận nơi, giá 900 triệu.</p>\n<p>Liên hệ : 0903308514 c.My</p>', '', 'ban-dat-dle-minh-nhat-xa-tan-an-hoi-huyen-cu-chi', '', '', '', 14, 1, '900000000', 'VND', 'Tổng diện tích', 0, NULL, NULL, NULL, NULL, NULL, 1, 1, 521, 574, 323, 'LÊ MINH NHẬT, XÃ TÂN AN HỘI, HUYỆN CỦ CHI', ' c.My', '', '0903308514', '', 'thanhsuong'),
(158, 'BÁN GẤP BIỆT THỰ 1A ĐƯỜNG 21, PHƯỜNG BÌNH AN, QUẬN 2', '', '2012-07-11 09:06:51', 'bn-gp-bit-th-1a-ng-21-phng-bnh-an-qun-2-thumb.JPG', 'bn-gp-bit-th-1a-ng-21-phng-bnh-an-qun-2.JPG', NULL, '', '', '<ol><li>Bán Gấp Biệt Thự 1A ĐƯỜNG 21, phường Bình An, quận 2 (đường Trần Não), DTKV : 4m x 20m, DTXD : 80m2, đường nội bộ, 1 trệt, 1 lửng, 3 lầu, sân thượng, 5PN, PK, NB, 5WC, NTCC, điện nước chính, GTHL chính chủ. Khu dân cư cao cấp, gần nhiều trường học, chợ, bệnh viện, giao thông thuận tiện.\n<p>Giá bán : 7.200.000.000 đ (TL) - Liên hệ : 0903941983 A.Tài</p>\n</li>\n</ol>', '', 'ban-gap-biet-thu-1a-duong-21-phuong-binh-an-quan-2', '', '', '', 14, 1, '7200000000', 'VND', 'Tổng diện tích', 0, NULL, NULL, NULL, NULL, NULL, 1, 1, 528, 565, 323, 'ĐƯỜNG 21, PHƯỜNG BÌNH AN, QUẬN 2', 'A.Tài', '', '0903941983', '', 'thanhsuong'),
(159, 'QUÁN CÀ PHÊ SMILE 220/20 NGUYỄN TRỌNG TUYỂN, PHƯỜNG 8, QUẬN PHÚ NHUẬN', '', '2012-07-11 09:12:35', 'qun-c-ph-smile-22020-nguyn-trng-tuyn-phng-8-qun-ph-nhun-thumb.JPG', 'qun-c-ph-smile-22020-nguyn-trng-tuyn-phng-8-qun-ph-nhun.JPG', NULL, '', '', '<p>Cần Sang gấp Quán Cà Phê Smile 220/20 Nguyễn Trọng Tuyển, phường 8, quận Phú Nhuận, DT : 10m x 18m, 1 trệt, 1 lầu, nội thất đẹp, trang thiết bị đầy đủ, dàn âm thanh hát với nhau nhập từ Ý, doanh thu tốt.</p>\n<p>Giá sang : 500 triệu (có 50 triệu cọc) - Liên hệ : 0903370202</p>', '', 'quan-ca-phe-smile-22020-nguyen-trong-tuyen-phuong-8-quan-phu-nhuan', '', '', '', 6, 1, '500000000', 'VND', 'Tổng diện tích', 0, NULL, NULL, NULL, NULL, NULL, 1, 3, 534, 570, 323, '220/20 NGUYỄN TRỌNG TUYỂN, PHƯỜNG 8, QUẬN PHÚ NHUẬN', 'CHỦ QUÁN', '', ' 0903370202', '', 'thanhsuong'),
(160, 'BẬN VIỆC GIA ĐÌNH CẦN SANG GẤP QUÁN NGAY CHUNG CƯ TÂY THẠNH,', '', '2012-07-11 09:17:08', 'bn-vic-gia-nh-cn-sang-gp-qun-ngay-chung-c-ty-thnh-thumb.JPG', 'bn-vic-gia-nh-cn-sang-gp-qun-ngay-chung-c-ty-thnh.JPG', NULL, '', '', '<p>Bận Việc Gia Đình Cần Sang gấp Quán Ngay Chung Cư Tây Thạnh, KCN Tân Bình, nhà rộng 3 phòng, vỉa hè 6 x 8, sáng bán điểm tâm, cà phê, trưa bán cơm văn phòng, có săn khách, tối có thể bán cà phê hoặc quán nhậu. Sang 65 triệu đã có cọc 21 triệu tiền nhà, sang toàn bộ dụng cụ bán quán, 2 tủ lạnh, 1 tủ đông, 2 tủ nhôm, xe cơm...</p>\n<p>Liên hệ : 0918686628 - 0918676628 a.Huy</p>', '', 'ban-viec-gia-dinh-can-sang-gap-quan-ngay-chung-cu-tay-thanh', '', '', '', 7, 1, '65000000', 'VND', 'Tổng diện tích', 0, NULL, NULL, NULL, NULL, NULL, 1, 3, 534, 586, 323, 'Chung Cư Tây Thạnh, KCN Tân Bình', 'a.Huy', '', '0918686628 ', '', 'thanhsuong'),
(161, 'CẦN SANG MẶT BẰNG 429 ÂU CƠ, PHƯỜNG PHÚ TRUNG, QUẬN TÂN PHÚ', '', '2012-07-11 09:21:17', 'cn-sang-mt-bng-429-u-c-phng-ph-trung-qun-tn-ph-thumb.JPG', 'cn-sang-mt-bng-429-u-c-phng-ph-trung-qun-tn-ph.JPG', NULL, '', '', '<p>Cần Sang Mặt Bằng 429 Âu Cơ, phường Phú Trung, quận Tân Phú, DTKV : 8,6m x 42m, mặt tiền lớn kinh doanh đông, MB 1 trệt, 2 lầu, điện nước đầy đủ, tiền đặt cọc 6 tháng, tiện kinh doanh mọi ngành nghề.</p>\n<p>Giá thuê : 53 triệu/tháng ~ 2500 USD - LH : 0908973627 Mr Bình, 0903323627 Mr Tín</p>', '', 'can-sang-mat-bang-429-au-co-phuong-phu-trung-quan-tan-phu', '', '', '', 7, 1, '53000000', 'VND', 'Tháng', 0, NULL, NULL, NULL, NULL, NULL, 1, 3, 534, 585, 323, '429 ÂU CƠ, PHƯỜNG PHÚ TRUNG, QUẬN TÂN PHÚ', ' Mr Tín', '', '0903323627 ', '', 'thanhsuong'),
(162, 'SANG QUÁN 21G NGUYỄN ĐÌNH CHIỂU, PHƯỜNG ĐA KAO, QUẬN 1', '', '2012-07-11 09:24:43', 'sang-qun-21g-nguyn-nh-chiu-phng-a-kao-qun-1-thumb.JPG', 'sang-qun-21g-nguyn-nh-chiu-phng-a-kao-qun-1.JPG', NULL, '', '', '<p>Sang Quán 21G Nguyễn Đình Chiểu, phường Đa Kao, quận 1, diện tích khu vực : 6,2m x 18m, mặt tiền lớn chính, khu trung tâm, gần trường học, chợ, bệnh viện. Quán đang kinh doanh đông khách, bận việc gia đình nên sang.</p>\n<p>Giá sang : 750 triệu (thương lượng) - Liên hệ : 0989539779 c.Thành</p>', '', 'sang-quan-21g-nguyen-dinh-chieu-phuong-da-kao-quan-1', '', '', '', 23, 1, '750000000', 'VND', 'Tổng diện tích', 0, NULL, NULL, NULL, NULL, NULL, 1, 3, 534, 569, 323, '21G NGUYỄN ĐÌNH CHIỂU, PHƯỜNG ĐA KAO, QUẬN 1', 'C. Thành', '', '0989539779', '', 'thanhsuong'),
(163, 'KHÁCH SẠN BÁN 89D LÊ VĂN THỌ, PHƯỜNG 11, QUẬN GÒ VẤP', '', '2012-07-11 09:28:25', 'khch-sn-bn-89d-l-vn-th-phng-11-qun-g-vp-thumb.JPG', 'khch-sn-bn-89d-l-vn-th-phng-11-qun-g-vp.JPG', NULL, '', '', '<p>Khách Sạn Bán 89D LÊ VĂN THỌ, phường 11, quận Gò Vấp, DTKV : 80,4m2, 1 trệt, 5 lầu, 18 phòng, điện nước chính, sổ hồng chính chủ, sang luôn giấy phép kinh doanh.</p>\n<p>Giá bán : 7.000.000.000 đ (TL) - Liên hệ : 0909220236 A.Nhật</p>', '', 'khach-san-ban-89d-le-van-tho-phuong-11-quan-go-vap', '', '', '', 21, 1, '7000000000', 'VND', 'Tổng diện tích', 0, NULL, NULL, NULL, NULL, NULL, 1, 1, 519, 573, 323, '89D LÊ VĂN THỌ, PHƯỜNG 11, QUẬN GÒ VẤP', ' A.Nhật', '', ' 0909220236', '', 'thanhsuong'),
(164, 'Cho thuê kios / gian hàng miễn phí 3 tháng đầu', '', '2012-07-11 11:42:02', '', '', NULL, '', '', '<p> Hiện nay, công ty chúng tôi đang cho thuê kios/ gian hàng kinh doanh các mặt hàng thời trang, mỹ phẩm, mỹ nghệ, điện thoại….tại Trung tâm thương mại Ngọc Khánh ( 21-23 Nguyễn Biểu, phường 1, quận 5)<br /> Giá thuê: 2 triệu – 4,5 triệu/kios<br /> Ưu đãi đặc biệt cho khách hàng đăng ký thuê trước ngày 30/07/2012: CHO THUÊ MIỄN PHÍ TRONG 3 THÁNG ĐẦU (chỉ đóng tiền điện, nước, máy lạnh, bảo vệ là 1 triệu đồng/tháng/kios).</p>\n<p>Sau 3 tháng nếu Quý khách hàng không muốn kinh doanh tiếp được quyền trả lại mặt bằng và không phải bồi thường bất kì khoản chi phí nào.</p>\n<p> Hãy nhanh tay đặt cho mình 1 vị trí kinh doanh tốt nhất<br /> Mọi thông tin chi tiết xin liên hệ: Ms Tuyền 0908 811 930 – Phòng kinh doanh Công ty TNHH TM DV Kim Kim Hoàn Mỹ (21-23 Nguyễn Biểu, phường 1, quận 5).<br /> Xin chân thành cám ơn đã đọc tin!</p>', '', 'cho-thue-kios-gian-hang-mien-phi-3-thang-dau', '', 'Sau 3 tháng nếu Quý khách hàng không muốn kinh doanh tiếp được quyền trả lại mặt bằng và không phải bồi thường bất kì khoản chi phí nào.', '', 10, 1, '1000000', 'VND', 'Tháng', 0, NULL, NULL, NULL, NULL, NULL, 1, 2, 534, 584, 323, '21-23 Nguyễn Biểu, phường 1, quận 5', 'Huỳnh Tuyền ', '', '0908811930', '', 'longtuyen'),
(165, 'Miễn phí cho thuê mặt bằng kinh doanh!!', '', '2012-07-11 11:49:04', '', '', NULL, '', '', '<p>Chuẩn bị khai trương Thương Xá Ngọc Khánh, Tòa nhà, chúng tôi miễn phí tiền thuê mặt bằng tại Thương xá. Chúng tôi cần tìm nhiều tiểu thương hợp tác kinh doanh gấp.</p>\n<p>Miễn phí tiền thuê mặt bằng 3 tháng, sau 3 tháng nếu quý khách hàng không có nhu cầu kinh doanh tiếp thì được quyền trả lại mặt bằng mà không phải bồi thường bất kì khoản chi phí nào.<br />Liên hệ sớm để có vị trí đẹp nhất.<br />Lợi thế:<br />Coop mark đã hoạt động sung túc<br />Nằm giữa Đại lộ Đông Tây và đường Nguyễn Biểu.<br />Ưu đãi miễn phí tiền thuê mặt bằng..<br />LH ngay: Ms Tuyền 0908 811 930</p>', '', 'mien-phi-cho-thue-mat-bang-kinh-doanh', '', '', '', 15, 1, '1000000', 'VND', 'Tháng', 0, NULL, NULL, NULL, NULL, NULL, 1, 2, 534, 584, 323, '21-23 Nguyễn Biểu, phường 1, quận 5', 'Huỳnh Tuyền ', 'Quân 1', '0908811930', '', 'longtuyen'),
(166, 'Thử sức kinh doanh mặt bằng 3 tháng', '', '2012-07-11 11:57:42', '', '', NULL, '', '', '<p>Tại Trung tâm thương mại cao ốc Ngọc Khánh, người buôn bán nào cũng có thể thuê quầy kinh doanh (khác với các trung tâm thương mại có xét duyệt loại hàng, thương hiệu sản phẩm, giấy đăng ký kinh doanh… rồi mới cho thuê), giá thuê mặt bằng khá mềm.<br />Hiện cty chúng tôi đang có chính sách ưu đãi cho khách hàng, miễn phí tiền thuê gian hàng trong 3 tháng đầu, (chỉ đóng tiền điện, nước, máy lạnh, bảo vệ là 1 triệu đồng/tháng/kios).</p>\n<p>Liên hệ : Mr Long 0987 830 824 -  Ms Tuyền 0908 811 930</p>', '', 'thu-suc-kinh-doanh-mat-bang-3-thang', '', 'Miễn phí tiền thuê MB 3 tháng đầu, sau 3 tháng nếu không có nhu cầu kinh doanh tiếp, quý khách được quyền trả lại mặt bằng mà không phải bồi thường hoặc tốn thêm bất khoản chi phí nào cho cty chúng tôi', '', 15, 1, '1000000', 'VND', 'Tháng', 0, NULL, NULL, NULL, NULL, NULL, 1, 2, 534, 584, 323, '21-23 Nguyễn Biểu, phường 1, quận 5', 'Huỳnh Tuyền', 'Quân 1', '0908811930', '', 'longtuyen'),
(167, 'Căn hộ Âu Cơ Tower Giá gốc chủ đầu tư chỉ 1.1tỷ/căn', '', '2012-07-11 12:01:06', '', '', NULL, '', '', '<p>Căn hộ Âu Cơ Tower gồm 2 block gồm 18 tầng tọa lạc 2 mặt tiền đường Âu Cơ và Tân Thành, chỉ cách tâm Thành Phố 12 phút. Các căn hộ ở đây được thiết kế theo phong cách hiện đại, tiện nghi, các hướng cửa điều hướng ra ngoài để đón gió và nắng hài hòa với thiên nhiên sẽ khẳng định đẳng cấp của chủ nhân. Đặc biệt bên dưới mặt tiền là 2 tầng thương mại, với hệ thông shop, cửa hàng sang trọng và tiện nghi với hệ thống thang máy, thang cuốn hiện đại sẽ cung cấp tất cả những nhu cầu thiết yếu cho cư dân ở nơi đây.</p>\n<p>Căn hộ có nhiều diện tích: 51m2, 60m2, 65m2,70m2,77.5m2, 85m2 gồm 2 phòng ngủ và 3 phòng ngủ sẽ dễ dàng chọn cho mình 1 căn hộ ưng ý phù hợp với nhu cầu của mình. Giá bán: 1,1 tỷ/căn (giá bao gồm thuế VAT).</p>\n<p>Thanh toán chậm nhiều đợt. ngân hàng hỗ trợ vay 70% với lãi suất 12%/năm.</p>\n<p>Mọi chi tiết xin liên hệ: Ms. Tuyền 0908 811 930 để hướng dẫn xem căn hộ mẫu.</p>', '', 'can-ho-au-co-tower-gia-goc-chu-dau-tu-chi-11tycan', '', 'Giá cực rẻ, căn hộ đẹp, tiện ích đầy đủ', '', 14, 1, '1100000000', 'VND', 'Tổng diện tích', 0, NULL, NULL, NULL, NULL, NULL, 1, 1, 529, 584, 323, 'Âu Cơ, P. Tân Thành, Q. Tân Phú', 'Huỳnh Tuyền', 'Quân 1', '0908811930', '', 'longtuyen'),
(168, 'Bán CHCC Everich, lầu 10, view đẹp, giá 30 triệu/m2', '', '2012-07-11 12:04:52', '', '', NULL, '', '', '<p>Căn hộ cao cấp Everich nằm ngay mặt tiền đường 3/2 quận 11, căn hộ đang có hợp đồng thuê 1100usd, vị trí đẹp, view hồ bơi, đi quận 1 10 phút,gần trung tâm thương mại Parkson. hãy sở hữu căn hộ cao cấp dành cho giới thượng lưu...<br />Diện tích : 161m2, 3 PN, giá bán 30 triệu/m2<br />Liên hệ: Ms Tuyền 0908 811 930</p>', '', 'ban-chcc-everich-lau-10-view-dep-gia-30-trieum2', '', 'Căn hộ ngay trung tâm, tiện ích đầy đủ, hiện đại', '', 11, 1, '30000000', 'VND', 'm2', 0, NULL, NULL, NULL, NULL, NULL, 1, 1, 529, 567, 323, 'đường 3/2, quận 11', 'Huỳnh Tuyền', 'Quân 1', '0908811930', '', 'longtuyen'),
(169, 'Đất nền sổ đỏ MT Đỗ Xuân Hợp, P. Phước Long B, Q9', '', '2012-07-11 12:06:55', '', '', NULL, '', '', '<p>Đất nền sổ đỏ MT Đỗ Xuân Hợp, P. Phước Long B, Q9Mặt tiền Đỗ Xuân Hợp và ven Rạch Ông Cày,đối diện khu TDTDT Quốc Gia Rạch Chiếc,sân Gold, khu công nghệ cao, cơ hội đầu tư, cơ hội an cư.<br />Gần 2 con đường mang tính chiến lược,huyết mạch của thành phố<br />• Đường cao tốc Sài Gòn-Long Thành -Vũng Tàu nối sân bay quốc tế Long Thành và Thành Phố Vũng Tàu với đường hầm Thủ Thiêm<br />• Đường vành đai phía đông nối Sân Bay Tân Sơn Nhất và khu đô thị mới Đông Bắc với khu đô thị Nam Sài Gòn<br />• Cách trung tâm Sài Gòn 14km với 20 phút đi xe máy<br />Nhà phố 207 nền : dt từ 78m2-246m2<br />Biệt thự 74 nền: dt từ 201m2 -300m2<br />Giá chỉ từ 10 – 14 triệu/m2 ( thanh toán chia làm 3 đợt)<br />Liên hệ ngay : Ms Tuyền 0908 811 930</p>', '', 'dat-nen-so-do-mt-do-xuan-hop-p-phuoc-long-b-q9', '', '', '', 16, 1, '11000000', 'VND', 'm2', 0, NULL, NULL, NULL, NULL, NULL, 1, 1, 525, 580, 323, 'Đỗ Xuân Hợp, P. Phước Long B, Q9 ', 'Huỳnh Tuyền', 'Quân 1', '0908811930', '', 'longtuyen'),
(170, 'Cho thuê căn hộ h1 quận 4, đường hoàng diệu', '', '2012-07-11 12:15:48', 'cho-thue-can-ho-h1-quan-4-duong-hoang-dieu-thumb.jpg', '', NULL, '', '', '<p>Cho thuê căn hộ h1 quận 4, đường hoàng diệu, căn lầu 5, Dt 81.5m, giá 600USD/tháng<br />Cho thuê CHCC lầu 6 ,Chung Cư H1, Hoàng Diệu, phường 9, quận 4 : DTKV : 81,5m2, 2PN, NB, PK, 1WC, sổ hồng chính chủ. Gần trường học các cấp, chợ, bệnh viện, ngân hàng.<br />Liên hệ : Ms Tuyền 0908 811 930, xem nhà miễn phí</p>', '', 'cho-thue-can-ho-h1-quan-4-duong-hoang-dieu', '', '', '', 18, 1, '600', 'USD', 'Tháng', 0, NULL, NULL, NULL, NULL, NULL, 1, 2, 529, 563, 323, 'Hoàng Diệu, Q4', 'Huỳnh Tuyền', 'Quân 1', '0908811930', '', 'longtuyen'),
(171, 'bán nhà phường phú thuận -quận 7', '', '2012-07-11 12:38:29', '', '', NULL, '', '', '<p>nhà diện tích 5x18, xây dựng 1 trệt 2 lầu, theo phong cách châu âu,hướng đông, nhà có 4 phong ngủ, 5wc. rất đẹp.</p>\n<p>đường trước nhà 14m, kế bên phú mỹ hưng ,gần cầu phú mỹ tiện về trung tâm và các quận lân cận khác.</p>\n<p>giá bán 3,6 tỷ</p>\n<p> </p>', '', 'ban-nha-phuong-phu-thuan-quan-7', '', '', '', 34, 1, '3600000000', 'VND', 'Tổng diện tích', 0, NULL, NULL, NULL, NULL, NULL, 1, 1, 527, 582, 323, 'nam long phú thuận -quận 7', 'đồng hồng', 'R4-16 HƯNG GIA 3-PHÚ MỸ HƯNG-QUẬN 7', '0903059236', '', 'donghong3168@gmail.com'),
(173, 'NHÀ BÁN HẺM 207 NGUYỄN VĂN THỦ, PHƯỜNG ĐA KAO, QUẬN 1', '', '2012-07-12 06:33:44', 'nh-bn-hm-207-nguyn-vn-th-phng-a-kao-qun-1-thumb.JPG', 'nh-bn-hm-207-nguyn-vn-th-phng-a-kao-qun-1.JPG', NULL, '', '', '<p>Nhà Bán Hẻm 207 Nguyễn Văn Thủ, phường Đa Kao, quận 1, DT : 3m x 20m (nở hậu 3,25m), 1 trệt, 1 lầu, gần trường học, bệnh viện, gần chợ, siêu thị, ngay trung tâm thành phố, sổ hồng.</p>\n<p>Giá bán : 9,5 tỷ (có thương lượng) - Liên hệ : 0989866438 c.Thủ</p>', '', 'nha-ban-hem-207-nguyen-van-thu-phuong-da-kao-quan-1', '', '', '', 19, 10, '9500000000', 'VND', 'Tổng diện tích', 0, NULL, NULL, NULL, NULL, NULL, 1, 1, 527, 569, 323, '207 NGUYỄN VĂN THỦ, PHƯỜNG ĐA KAO, QUẬN 1 ', ' c.Thủ', '', '0989866438', '', 'nhaphodep'),
(174, 'Cần bán nhà phố,Bán nhà MT số 375  Nguyễn Thị Thập, phường Tân Phong, Quận 7, TP.HCM.', '', '2012-07-12 06:38:21', 'can-ban-nha-phoban-nha-mt-so-375--nguyen-thi-thap-phuong-tan-phong-quan-7-tp-hcm--thumb.jpg', 'can-ban-nha-phoban-nha-mt-so-375--nguyen-thi-thap-phuong-tan-phong-quan-7-tp-hcm-.jpg', NULL, '', '', '<p>Vị trí đẹp tại 375 đường Nguyễn Thị Thập, P.Tân Phong, Q.7. Nhà đẹp, thoáng mát. Cấu trúc nhà độc đáo gồm DTKV: 5m x 22m, DTSD: 110m2, hướng Bắc, sổ hồng chính chủ.</p>\n<p>Nhà nằm trong khu dân trí cao, an ninh, gần siêu thị, vị trí đẹp gần ngã tư, khu ngân hàng, khu cho phép xây cao tầng. Rất thích hợp để ở, văn phòng và ngân hàng và cho thuê, đường 35m.</p>\n<p>Mọi chi tiết xin liên hệ: Chính chủ - 0913155566</p>', '', 'can-ban-nha-phoban-nha-mt-so-375-nguyen-thi-thap-phuong-tan-phong-quan-7-tphcm', '', '', '', 18, 11, '125000000', 'VND', 'm2', 0, NULL, NULL, NULL, NULL, NULL, 1, 1, 527, 582, 323, '375  Nguyễn Thị Thập, phường Tân Phong, Quận 7, TP.HCM.', 'chính chủ', '', '0913155566', '', 'nhaphodep'),
(175, 'Cần bán nhà phố, 62/29/13, Lâm Văn Bền , phường Tân Kiểng, Quận 7, TP.HCM.', '', '2012-07-12 06:44:04', 'can-ban-nha-pho-622913-lam-van-ben--phuong-tan-kieng-quan-7-tp-hcm--thumb.jpg', 'can-ban-nha-pho-622913-lam-van-ben--phuong-tan-kieng-quan-7-tp-hcm-.jpg', NULL, '', '', '<p>Hẻm ô tô 6,5m, ĐC:62/29/13 Lâm Văn Bền Q7, cạnh trường THCS Nguyễn Hữu Thọ, Cc Petroland. Khu dân cư an ninh. Chính chủ bán. DTSD: 245 m2, sổ hồng, hướng Tây.</p>\n<p>1 trệt 3 lầu: 3 PN, 3 WC, Garage, PK, sân vườn - giếng trời lớn giữa nhà, P ăn, Bếp, P sinh hoạt chung, P thờ, P giặt, hiên phơi, sân thượng.</p>\n<p>Điều chỉnh thiết kế theo yêu cầu chủ nhà, Trang thiết bị - nội thất đầy đủ vào ở ngay (đóng mới theo ý chủ nhà). Giường, tủ, bàn phấn, kệ tivi, quầy Bar - tủ bếp, bàn ăn, sofa, rèm cửa, máy lạnh, camera an ninh...v v</p>', '', 'can-ban-nha-pho-622913-lam-van-ben-phuong-tan-kieng-quan-7-tphcm', '', '', '', 18, 12, '4700000000', 'VND', 'Tổng diện tích', 0, NULL, NULL, NULL, NULL, NULL, 1, 1, 527, 582, 323, '62/29/13, Lâm Văn Bền , phường Tân Kiểng, Quận 7, TP.HCM. ', 'Hùng', '', '0918046853 ', '', 'nhaphodep'),
(176, 'Cần bán villa-biệt thự, 214/19/81, Nguyễn Văn Nguyễn , phường Tân Định, Quận 1, TP.HCM.', '', '2012-07-12 06:48:17', 'can-ban-villa-biet-thu-2141981-nguyen-van-nguyen--phuong-tan-inh-quan-1-tp-hcm--thumb.jpg', 'can-ban-villa-biet-thu-2141981-nguyen-van-nguyen--phuong-tan-inh-quan-1-tp-hcm-.jpg', NULL, '', '', '<p>Biệt thự Quận 1, hẻm 8m, cách đường chính 20m. Nhà đúc, lửng, 2 lầu, sân thượng, garage. Vị trí chiến lược, khu dân cư yên tĩnh, gần BV, chợ Tân Định. Nhà Đẹp, thoáng, an ninh, NTCC, hướng Đông Bắc, nở hậu L, TV Cáp, ADSL, sân vườn. Cần bán: 17 tỷ.</p>\n<p>Xin liên hệ trước: 0913922536. Miễn báo đài.</p>', '', 'can-ban-villa-biet-thu-2141981-nguyen-van-nguyen-phuong-tan-dinh-quan-1-tphcm', '', '', '', 18, 13, '17000000000', 'VND', 'Tổng diện tích', 1, NULL, NULL, NULL, NULL, NULL, 1, 1, 528, 582, 323, '214/19/81, Nguyễn Văn Nguyễn , phường Tân Định, Quận 1, TP.HCM. ', 'chính chủ', '', '0913922536', '', 'nhaphodep'),
(177, 'Bán rất gấp nhà số 28/39,đường số 18,khu phố 1,phường Bình Hưng Hòa,quận Bình Tân', '', '2012-07-12 06:54:55', 'ban-rat-gap-nha-so-2839duong-so-18khu-pho-1phuong-binh-hung-hoaquan-binh-tan-thumb.jpg', 'ban-rat-gap-nha-so-2839duong-so-18khu-pho-1phuong-binh-hung-hoaquan-binh-tan.jpg', NULL, '', '', '<p>Cần bán gấp nhà : ngang = 4m , dài = 14.3m , DTXD = 58.7 m2 , nhà hướng Tây Bắc , đường hiện hữu rộng 8m hướng ra đường số 18 , thuộc khu rất an ninh , không kẹt xe , không ngập nước , thuận tiện đi lại các quận lân cận . Cấu trúc nhà 2,5 tầng rất kiên cố , xây dựng năm 2011 rất mới và đẹp , thiết kế tinh tế hiện đại , nhà rộng rãi thoáng mát gồm 01 phòng khách , 03 phòng ngủ , 02 WC , 01 phòng ăn , điện nước và tiện nghi đầy đủ , nội thất cao cấp . Nhà bán có vị trí rất đắc địa , nằm đối diện cổng chính KCN Vĩnh Lộc , thuộc khuôn viên 2 KCN là Vĩnh Lộc và Tân Bình , cách Quốc Lộ 1A là 1km , giao thông thuận lợi , vị trí đẹp cần vốn kinh doanh nên bán gấp giá rẻ có thể giao ngay .<br />Sổ hồng chính chủ bán , nhà không tranh chấp , bán giao ngay , liên hệ xem nhà mọi lúc , cảm ơn đã xem tin .<br />Giá bán : Có thương lượng cho người thiện chí .</p>', '', 'ban-rat-gap-nha-so-2839duong-so-18khu-pho-1phuong-binh-hung-hoaquan-binh-tan', '', '', '', 12, 14, '2100000000', 'VND', 'Tổng diện tích', 0, NULL, NULL, NULL, NULL, NULL, 1, 1, 527, 577, 323, '28/39,đường số 18,khu phố 1,phường Bình Hưng Hòa,quận Bình Tân', 'Nguyen Dang Huy', '', '0908940254', '', 'nhaphodep'),
(178, 'Bán gấp nhà giá rẻ ngay Trung tâm Q.3, tại số 86S22 Nguyễn Thông, P.9, Q.3', '', '2012-07-12 07:00:32', 'ban-gap-nha-gia-re-ngay-trung-tam-q-3-tai-so-86s22-nguyen-thong-p-9-q-3-thumb.JPG', 'ban-gap-nha-gia-re-ngay-trung-tam-q-3-tai-so-86s22-nguyen-thong-p-9-q-3.JPG', NULL, '', '', '<p>Bán gấp nhà tại số 86S22 Nguyễn Thông, P.9, Q.3 (Ngay trung tâm Q.3)<br />DT: 6 x 9m, DTSD: 110m2<br />Sổ hồng chính chủ.</p>\n<p>Nhà cấp 3, gồm 1PN, 2WC. Nhà mới, nội thất cao cấp, vào là ở ngay, sổ hồng 2012 chính chủ<br />Tiện kinh doanh buôn bán, hoặc mở VP công ty...tầng trệt đang kinh doanh,..<br />Nhà gần trường học, nhà thờ, siêu thị, cách ga Sài Gòn 100m.<br />Khu dân cư an ninh, yên tĩnh thoáng mát, cách MT đường 30m.</p>\n<p>Giá bán: 2.6 tỷ<br />Liên hệ: A.Nhân_0908988647 / 0909856477</p>', '', 'ban-gap-nha-gia-re-ngay-trung-tam-q3-tai-so-86s22-nguyen-thong-p9-q3', '', '', '', 32, 15, '2600000000', 'VND', 'Tổng diện tích', 0, NULL, NULL, NULL, NULL, NULL, 1, 1, 527, 564, 323, '86S22 Nguyễn Thông, P.9, Q.3 ', 'A.Nhân', '', '0909856477', '', 'nhaphodep'),
(179, 'Bán nhà mặt tiền số 51 Rạch bùng Binh, Q3', '', '2012-07-12 07:06:40', 'ban-nha-mat-tien-so-51-rach-bung-binh-q3-thumb.jpg', 'ban-nha-mat-tien-so-51-rach-bung-binh-q3.jpg', 'ban-nha-mat-tien-so-51-rach-bung-binh-q3-desc-1.jpg', '', '', '<p>Bán nhà mặt tiền số 51 Rạch Bùng Binh, Phường 9, Quân 3, ngang 4.5, dài 14m, 1 hầm 5 tầng lầu, nhà mới xây 2010 gồm 1 phòng khách lớn, 1 phòng Vip đầy đủ tiện nghi giải trí, 8 phòng ngủ, 5 wc, 1 phòng ăn và nhà bếp, nội thất rất cao cấp, nhà rất đẹp, kiến trúc hiện đại, được xây dựng rất kiên cố và tâm huyết, mặt dựng được lắp đặt toàn bộ kiếng cường lực, vị trí nhà đẹp, gần đường Bà Huyện Thanh Quan, đường rộng, có lề đường sạch đẹp, tiên ở và kinh doanh công ty văn phòng, diện tích đất không bị lộ giới, chủ quyền hồng, hướng Đông Nam, giá 13.6 tỷ ( còn thương lượng)<br />gặp anh Đông: 0936174338</p>', '', 'ban-nha-mat-tien-so-51-rach-bung-binh-q3', '', '', '', 54, 16, '13600000000', 'VND', 'Tổng diện tích', 0, NULL, NULL, NULL, NULL, NULL, 1, 1, 527, 564, 323, ' 51 Rạch bùng Binh, Q3', 'a Đông', '', '0936174338', '', 'nhaphodep'),
(180, 'Cho thuê Village Đà Lạt theo ngày', '', '2012-07-12 07:31:33', 'cho-thue-village-a-lat-theo-ngay-thumb.jpg', 'cho-thue-village-a-lat-theo-ngay.jpg', NULL, '', '', '<p>Cho thuê Village đường Hoàng Hoa Thám, Đà Lạt. Khuôn viên 1000m2 trồng hoa, cây cảnh đẹp, có 3 phòng ngủ chính, 1 bếp, 1 phòng khách. Nhà có thể ở được đoàn 12 người. Đầy đủ tiện nghi, cho thuê theo ngày. LH Ms Ngân 0933451421</p>', '', 'cho-thue-village-da-lat-theo-ngay', '', '', '', 43, 17, '50000000', 'VND', 'Tháng', 0, NULL, NULL, NULL, NULL, NULL, 1, 2, 527, 336, 323, 'Hoàng Hoa Thám, Đà Lạt.', 'Ms Ngân', '', '0933451421', '', 'nhaphodep'),
(181, 'SANG QUÁN NHẠC DANCE 84 CHU VĂN AN, PHƯỜNG 26, QUẬN BÌNH', '', '2012-07-17 16:29:32', 'sang-qun-nhc-dance-84-chu-vn-an-phng-26-qun-bnh-thumb.JPG', 'sang-qun-nhc-dance-84-chu-vn-an-phng-26-qun-bnh.JPG', NULL, '', '', '<p>Sang Quán Nhạc DANCE 84 CHU VĂN AN, phường 26, quận Bình Thạnh, DTKV : 4m x 16m, ngay mặt tiền kinh doanh sầm uất, quán 1 trệt, 1 lửng, trang thiết bị đẹp, cao cấp, điện nước chính thức mạnh, GTHL chính chủ. Khu trung tâm đông dân cư, giá thuê mặt bằng 12 triệu/tháng, đặt cọc 60 triệu, quán đang kinh doanh tốt, thu nhập cao, không người quản lý nên sang gấp.</p>\n<p>Giá sang : 650.000.000 VNĐ (thương lượng) - Liên hệ : 0938381315 C.Diệp</p>', '', 'sang-quan-nhac-dance-84-chu-van-an-phuong-26-quan-binh', '', '', '', 10, 18, '650000000', 'VND', 'Tổng diện tích', 0, NULL, NULL, NULL, NULL, NULL, 1, 3, 519, 576, 323, '84 CHU VĂN AN, PHƯỜNG 26, QUẬN BÌNH ', ' C.Diệp', '', '0938381315', '', 'nhaphodep'),
(182, 'SANG QUÁN 157 NGUYỄN HỮU LẦU, PHƯỜNG PHÚ MỸ, QUẬN 7', '', '2012-07-17 16:33:46', 'sang-qun-157-nguyn-hu-lu-phng-ph-m-qun-7-thumb.JPG', 'sang-qun-157-nguyn-hu-lu-phng-ph-m-qun-7.JPG', NULL, '', '', '<p>Sang Quán 157 Nguyễn Hữu Lầu, phường Phú Mỹ, quận 7, DTKV : 7m x 30m + bếp, mặt tiền đường chính lớn, MB 1 trệt, 1 lầu, có 2 phòng vip + mặt bằng, để lại toàn bộ nội thất, điện chính, nước máy, MB thuê 12 triệu/tháng, chuyển nhượng hợp đồng lâu dài.</p>\n<p>Giá sang : 500 triệu (thương lượng) - Liên hệ : 0907776011, 0906660207 c.Hoa</p>', '', 'sang-quan-157-nguyen-huu-lau-phuong-phu-my-quan-7', '', '', '', 14, 19, '500000000', 'VND', 'Tổng diện tích', 0, NULL, NULL, NULL, NULL, NULL, 1, 3, 519, 582, 323, '157 NGUYỄN HỮU LẦU, PHƯỜNG PHÚ MỸ, QUẬN 7', 'c.Hoa', '', '0907776011,', '', 'nhaphodep'),
(183, 'BÁN CĂN HỘ 520 LÔ E CHUNG CƯ HÙNG VƯƠNG Đ.TẢN ĐÀ, PHƯỜNG 11,Q.5', '', '2012-07-17 16:38:02', 'bn-cn-h-520-l-e-chung-c-hng-vng--tn--phng-11q-5-thumb.JPG', 'bn-cn-h-520-l-e-chung-c-hng-vng--tn--phng-11q-5.JPG', NULL, '', '', '<p>Bán căn Hộ 520 Lô E Chung Cư HÙNG VƯƠNG Đ.TẢN ĐÀ, phường 11, quận 5, DTKV : 72m2, PK, NB, 3PN, 2WC, điện nước chính mạnh, GTHL. Khu trung tâm Q5, gần Hùng Vương Plaza, đại học y dược, siêu thị điện máy, KDC đông, giao thông thuận lợi, sầm uất phát triển mạnh.</p>\n<p>Giá bán : 1.000.000.000 đ (thương lượng) - LH : 0938526799, 0902604967 C.Phụng</p>', '', 'ban-can-ho-520-lo-e-chung-cu-hung-vuong-dtan-da-phuong-11q5', '', '', '', 15, 20, '1000000000', 'VND', 'Tổng diện tích', 0, NULL, NULL, NULL, NULL, NULL, 1, 1, 529, 584, 323, '520 LÔ E CHUNG CƯ HÙNG VƯƠNG Đ.TẢN ĐÀ, PHƯỜNG 11, Q5', ' C.Phụng', '', '0938526799,', '', 'nhaphodep'),
(184, 'BÁN BIỆT THỰ CŨ SỐ 70 ĐƯỜNG SỐ 1 (KHU CƯ XÁ ĐIỆN LỰC THỦ ĐỨC', '', '2012-07-17 16:42:53', 'bn-bit-th-c-s-70-ng-s-1-khu-c-x-in-lc-th-c-thumb.JPG', 'bn-bit-th-c-s-70-ng-s-1-khu-c-x-in-lc-th-c.JPG', NULL, '', '', '<p>Bán Biệt Thự Cũ Số 70 ĐƯỜNG SỐ 1 (Khu cư xá điện lực Thủ Đức), phường Trường Thọ, quận Thủ Đức, DTKV : 13,5m x 22,5m, DTSD : 300m2, DTXD : 147m2, nhà cấp 4 (biệt thự cũ), điện nước chính, sổ hồng. Gần trường học, chợ, bệnh viện, khu an ninh lịch sự, giao thông thuận tiện.</p>\n<p>Giá bán : 4.250.000.000 đ (TL) - Liên hệ : 0909973919 C.Châu</p>', '', 'ban-biet-thu-cu-so-70-duong-so-1-khu-cu-xa-dien-luc-thu-duc', '', '', '', 30, 21, '4250000000', 'VND', 'Tổng diện tích', 1, NULL, NULL, NULL, NULL, NULL, 1, 1, 528, 572, 323, '70 ĐƯỜNG SỐ 1 (KHU CƯ XÁ ĐIỆN LỰC THỦ ĐỨC', 'C.Châu', '', '0909973919 ', '', 'nhaphodep'),
(185, 'NHÀ CHO THUÊ NGUYÊN CĂN 102/32 BÌNH LONG, PHƯỜNG PHÚ THẠNH,', '', '2012-07-17 16:53:17', 'nh-cho-thu-nguyn-cn-10232-bnh-long-phng-ph-thnh-thumb.JPG', 'nh-cho-thu-nguyn-cn-10232-bnh-long-phng-ph-thnh.JPG', NULL, '', '', '<p>Nhà Cho Thuê Nguyên căn 102/32 Bình Long, phường Phú Thạnh, quận Tân Phú, hẻm 5m, DT : 4m x 21m, sân 4m x 10m, đúc 1,5 tấm, 5PN, 3WC, thích hợp ở, may mặc, mở nhà trẻ. Khu dân cư đông, giao thông thuận lợi, xe tải vào tận nơi.</p>\n<p>Giá thuê : 14 triệu/tháng (còn TL) - Liên hệ : a.T</p>', '', 'nha-cho-thue-nguyen-can-10232-binh-long-phuong-phu-thanh', '', '', '', 18, 22, '14000000', 'VND', 'Tổng diện tích', 0, NULL, NULL, NULL, NULL, NULL, 1, 2, 527, 585, 323, '102/32 BÌNH LONG, PHƯỜNG PHÚ THẠNH, Q,TÂN PHÚ', ' a.Tâm', '', ' 0903308564', '', 'nhaphodep'),
(186, 'BÁN NHÀ GẤP ĐƯỜNG 36, PHƯỜNG 10, QUẬN 6', '', '2012-07-17 16:59:45', 'bn-nh-gp-ng-36-phng-10-qun-6-thumb.JPG', 'bn-nh-gp-ng-36-phng-10-qun-6.JPG', NULL, '', '', '<p>Bán Nhà Gấp ĐƯỜNG 36, phường 10, quận 6, DTKV : 5m x 20,5m, DTSD : 269m2, nhà 1 trệt, 2 lầu, 6 phòng, nội thất đẹp hiện đại, tiện nghi đầy đủ, 2WC, điện nước chính, sổ hồng 2011.</p>\n<p>Cho thuê : 15 triệu/tháng, giá bán : 6 tỷ - Liên hệ : 0908275572 A.Linh</p>', '', 'ban-nha-gap-duong-36-phuong-10-quan-6', '', '', '', 16, 23, '6000000000', 'VND', 'Tổng diện tích', 0, NULL, NULL, NULL, NULL, NULL, 1, 1, 527, 583, 323, 'ĐƯỜNG 36, PHƯỜNG 10, QUẬN 6', ' A.Linh', '', ' 0908275572', '', 'nhaphodep'),
(187, 'Nhà Cho Thuê Mặt Tiền 114 LÊ THỊ RIÊNG, phường bến Thành, quận 1', '', '2012-07-22 08:21:18', 'nha-cho-thue-mat-tien-114-l-th-ring-phuong-ben-thanh-quan-1-thumb.JPG', 'nha-cho-thue-mat-tien-114-l-th-ring-phuong-ben-thanh-quan-1.JPG', 'nha-cho-thue-mat-tien-114-l-th-ring-phuong-ben-thanh-quan-1-desc-1.JPG|nha-cho-thue-mat-tien-114-l-th-ring-phuong-ben-thanh-quan-1-desc-2.JPG', '', '', '<p>Nhà Cho Thuê Mặt Tiền 114 LÊ THỊ RIÊNG, phường bến Thành, quận 1, DTKV : 8m x 23m (nở hậu 11m), DTSD : 600m2, 3 tầng, nội thất mới, điện nước riêng, chủ quyền hồng. gần chợ Bến Thành, khách sạn NewWord, có hẻm hông, cửa hậu, tiền thông hậu thoáng, tiện văn phòng và kinh doanh mọi ngành nghề.</p>\n<p>Giá cho thuê : 105.000.000 VNĐ - Liên hệ : 0903343838 A.Tuấn</p>', '', 'nha-cho-thue-mat-tien-114-le-thi-rieng-phuong-ben-thanh-quan-1', '', '', '', 22, 1, '105000000', 'VND', 'Tổng diện tích', 0, NULL, NULL, NULL, NULL, NULL, 1, 2, 527, 569, 323, '114 LÊ THỊ RIÊNG, phường bến Thành, quận 1', 'A.Tuấn', 'Hoang Dieu Q.4', '0903343838', '', 'hoanganh');

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
) ENGINE=InnoDB  DEFAULT CHARSET=utf8 AUTO_INCREMENT=536 ;

--
-- Dumping data for table `dos_module_products_cat`
--

INSERT INTO `dos_module_products_cat` (`cat_id`, `cat_parent_id`, `cat_title`, `cat_titleen`, `preview`, `previewen`, `tag`, `tagen`, `description`, `descriptionen`, `pic_full`, `pic_desc`, `cat_order`, `cat_extra1`, `cat_extra2`, `cat_enable`, `dos_usernames_username`) VALUES
(519, 0, 'Nhà hàng - Khách sạn', '', '', '', 'nha-hang-khach-san', '', 'Nhà hàng - Khách sạn', '', 'folder.jpg', '', 13, '', '', 1, 'nhaphodep'),
(521, 0, 'Đất nông nghiệp', '', '', '', 'dat-nong-nghiep', '', 'Đất nông nghiệp', '', 'to-roi.jpg', '', 4, '', '', 1, 'nhaphodep'),
(525, 0, 'Đất dự án - Quy hoạch', '', '', '', 'dat-du-an-quy-hoach', '', 'Đất dự án - Quy hoạch', '', 'thiep.jpg', '', 14, '', '', 1, 'nhaphodep'),
(526, 0, 'Đất cho sản xuất', '', '', '', 'dat-cho-san-xuat', '', 'Đất cho sản xuất', '', 'danh-thiep.jpg', '', 6, '', '', 1, 'nhaphodep'),
(527, 0, 'Nhà phố', '', NULL, NULL, 'nha-pho', '', 'Nhà phố', '', 'nha-pho.jpg', NULL, 20, NULL, NULL, 1, 'nhaphodep'),
(528, 0, 'Biệt Thự', '', NULL, NULL, 'biet-thu', '', 'Biệt Thự', '', 'nha-tam.jpg', NULL, 19, NULL, NULL, 1, 'nhaphodep'),
(529, 0, 'Căn hộ cao cấp', '', NULL, NULL, 'can-ho-cao-cap', '', 'Căn hộ cao cấp', '', 'can-ho-cao-cap.jpg', NULL, 18, NULL, NULL, 1, 'nhaphodep'),
(530, 0, 'Đất lâm nghiệp', '', NULL, NULL, 'dat-lam-nghiep', '', 'Căn hộ cao cấp', '', 'at-lam-nghiep.jpg', NULL, 10, NULL, NULL, 1, 'nhaphodep'),
(531, 0, 'Nhà kho - Xưởng', '', NULL, NULL, 'nha-kho-xuong', '', 'Nhà kho - Xưởng', '', '', NULL, 11, NULL, NULL, 1, 'nhaphodep'),
(532, 0, 'Văn phòng', '', NULL, NULL, 'van-phong', '', 'Văn phòng', '', '', NULL, 17, NULL, NULL, 1, 'nhaphodep'),
(533, 0, 'Đất ở - Đất thổ cư', '', NULL, NULL, 'dat-o-dat-tho-cu', '', 'Đất ở - Đất thổ cư', '', '', NULL, 12, NULL, NULL, 1, 'nhaphodep'),
(534, 0, 'Mặt bằng - Cửa hàng', '', NULL, NULL, 'mat-bang-cua-hang', '', 'Mặt bằng - Cửa hàng', '', '', NULL, 16, NULL, NULL, 1, 'nhaphodep');

-- --------------------------------------------------------

--
-- Table structure for table `dos_module_products_feature`
--

CREATE TABLE IF NOT EXISTS `dos_module_products_feature` (
  `product_id` int(11) NOT NULL AUTO_INCREMENT,
  `area` varchar(45) NOT NULL,
  `area_build` varchar(45) NOT NULL,
  `area_used` float NOT NULL,
  `num_floor` int(11) DEFAULT '0',
  `sittingrom` int(11) DEFAULT '0',
  `bedroom` int(11) DEFAULT '0',
  `bathroom` int(11) DEFAULT '0',
  `other_room` int(11) DEFAULT '0',
  `direction` varchar(45) NOT NULL,
  `street` varchar(45) NOT NULL,
  `legal` varchar(45) NOT NULL,
  `road` varchar(45) DEFAULT NULL,
  PRIMARY KEY (`product_id`)
) ENGINE=InnoDB  DEFAULT CHARSET=utf8 AUTO_INCREMENT=196 ;

--
-- Dumping data for table `dos_module_products_feature`
--

INSERT INTO `dos_module_products_feature` (`product_id`, `area`, `area_build`, `area_used`, `num_floor`, `sittingrom`, `bedroom`, `bathroom`, `other_room`, `direction`, `street`, `legal`, `road`) VALUES
(38, '4m x 28m', '4m x 4m', 112, 2, 1, 4, 4, 1, 'Đông Nam', '10m', 'Sổ hồng', 'C1'),
(39, '18m x 30m', '18m x 18m', 600, 1, NULL, NULL, NULL, NULL, 'Chưa xác định', '20m', 'Sổ hồng', 'Nguyễn Đình Chính'),
(40, '4m x 8m', '4m x 4m', 32, 1, 1, 1, 1, 1, 'Chưa xác định', '5m', 'Sổ hồng', 'Đất Mới'),
(41, 'm x m', 'm x m', 144, 12, NULL, NULL, NULL, NULL, 'Không xác định', '', 'Sổ hồng', 'Nguyễn Văn Hưởng'),
(42, 'm x m', 'm x m', 89, 4, NULL, 2, 2, NULL, 'Đông Bắc', '', 'Sổ hồng', 'Nguễn Hữu Thọ'),
(43, 'm x m', 'm x m', 126, 5, NULL, NULL, NULL, NULL, 'Đông Bắc', '', 'Sổ hồng', 'Mỹ Hoàng'),
(44, 'm x m', 'm x m', 203, 9, NULL, NULL, NULL, NULL, 'Không xác định', '', 'Sổ hồng', 'Nguyễn Công Trứ'),
(45, 'm x m', 'm x m', 51, 3, NULL, NULL, NULL, NULL, 'Bắc', '', 'Sổ hồng', 'B27'),
(46, 'm x m', 'm x m', 247, 3, NULL, NULL, NULL, NULL, 'Đông', '', 'Sổ hồng', 'Mỹ Toàn'),
(47, 'm x m', 'm x m', 900, 3, 2, 5, 6, NULL, 'Không xác định', '10m', 'Sổ hồng', 'Thảo Điền'),
(48, 'm x m', 'm x m', 70, 6, NULL, NULL, NULL, NULL, 'Đông', '', 'Sổ hồng', 'Phú Nhuận'),
(49, 'm x m', 'm x m', 40, 2, NULL, NULL, NULL, NULL, 'Không xác định', '', 'Sổ hồng', 'Q.3'),
(50, 'm x m', 'm x m', 50, 8, NULL, NULL, NULL, NULL, 'Đông', '', 'Sổ hồng', 'Nguyễn Kiệm'),
(51, 'm x m', 'm x m', 88, 9, NULL, NULL, NULL, NULL, 'Không xác định', '', 'Sổ hồng', 'Âu Cơ'),
(52, 'm x m', 'm x m', 501, 2, NULL, NULL, NULL, NULL, 'Đông Bắc', '', 'Sổ hồng', 'Nguyễn Bá Lân'),
(53, 'm x m', 'm x m', 30, 1, NULL, NULL, NULL, NULL, 'Đông', '', 'Sổ hồng', 'đường Phú Nhuận'),
(54, 'm x m', 'm x m', 1.5e+06, 1, NULL, NULL, NULL, NULL, 'Đông Bắc', '', 'Sổ hồng', 'Trần Huy Liệu'),
(56, 'm x m', 'm x m', 20, 1, NULL, NULL, NULL, NULL, 'Đông Bắc', '', 'Sổ hồng', 'Nguyễn Thái Bình'),
(57, 'm x m', 'm x m', 1200, 2, NULL, NULL, NULL, NULL, 'Đông Bắc', '', 'Sổ hồng', 'Trần Huy Liệu'),
(58, 'm x m', 'm x m', 110, 1, NULL, NULL, NULL, NULL, 'Không xác định', '', 'Sổ hồng', 'Nguyễn Đức Cảnh'),
(59, 'm x m', 'm x m', 140, 3, NULL, NULL, NULL, NULL, 'Đông Bắc', '', 'Sổ hồng', 'Nguyễn Văn Đậu'),
(60, '17m x 18m', '17m x 16m', 900, 3, NULL, NULL, NULL, NULL, 'Tây Nam', '', 'Sổ hồng', 'Quốc Hương'),
(61, 'm x m', 'm x m', 161, 2, NULL, NULL, NULL, NULL, 'Đông Bắc', '', 'Sổ hồng', 'Nguyễn Lương Bằng'),
(62, 'm x m', 'm x m', 20, 1, NULL, NULL, NULL, NULL, 'Không xác định', '', 'Sổ hồng', 'song hành'),
(63, 'm x m', 'm x m', 100, 2, NULL, NULL, NULL, NULL, 'Không xác định', '', 'Sổ hồng', 'Thanh Đa'),
(64, 'm x m', 'm x m', 4500, 1, NULL, NULL, NULL, NULL, 'Không xác định', '', 'Sổ hồng', 'cây trâm'),
(65, 'm x m', 'm x m', 15, 1, NULL, NULL, NULL, NULL, 'Đông Nam', '', 'Sổ hồng', 'Quang Trung'),
(66, 'm x m', 'm x m', 142, 1, NULL, NULL, NULL, NULL, 'Tây', '', 'Sổ hồng', 'HBT'),
(67, 'm x m', 'm x m', 308, 1, NULL, NULL, NULL, NULL, 'Đông', '', 'Sổ hồng', 'CMT8'),
(68, 'm x m', 'm x m', 300, 1, NULL, NULL, NULL, NULL, 'Đông Bắc', '', 'Sổ hồng', 'đường số 9'),
(69, 'm x m', 'm x m', 160, 2, NULL, NULL, NULL, NULL, 'Đông Bắc', '', 'Sổ hồng', 'Trương Định'),
(70, 'm x m', 'm x m', 88, 3, NULL, NULL, NULL, NULL, 'Tây Bắc', '', 'Sổ hồng', 'Phú Thuận'),
(71, '10m x 25m', '10m x 10m', 438, 3, 2, 5, 6, 1, 'Đông Nam', '15m', 'Sổ hồng', 'Nguyễn Văn Hưởng'),
(72, 'm x m', 'm x m', 120, 3, NULL, NULL, NULL, NULL, 'Chưa xác định', '', 'Sổ hồng', 'Lê Văn Lương'),
(73, 'm x m', 'm x m', 120, 3, NULL, NULL, NULL, NULL, 'Không xác định', '', 'Sổ hồng', 'Bà Hom'),
(74, 'm x m', 'm x m', 36, 3, NULL, NULL, NULL, NULL, 'Không xác định', '', 'Sổ hồng', 'Cộng Hòa'),
(75, 'm x m', 'm x m', 5000, 1, NULL, NULL, NULL, NULL, 'Không xác định', '', 'Giấy tờ hợp lệ', 'Đường Số 5A'),
(76, 'm x m', 'm x m', 151, 10, NULL, NULL, NULL, NULL, 'Không xác định', '', 'Sổ hồng', '3 tháng 2'),
(78, 'm x m', 'm x m', 150, 20, NULL, NULL, NULL, NULL, 'Không xác định', '', 'Sổ hồng', 'Nguyễn hữu cảnh'),
(79, '4m x 17.5m', '4m x 17m', 70, 0, NULL, NULL, NULL, NULL, 'Bắc', '14m', 'Sổ hồng', '17'),
(80, 'm x m', 'm x m', 52, 3, NULL, NULL, NULL, NULL, 'Không xác định', '', 'Sổ hồng', 'ngã tư trung Chánh'),
(81, 'm x m', 'm x m', 39, 1, NULL, NULL, NULL, NULL, 'Không xác định', '', 'Sổ hồng', 'Bùi Đình Túy'),
(82, 'm x m', 'm x m', 70, 2, NULL, NULL, NULL, NULL, 'Không xác định', '', 'Sổ hồng', 'dong me coc'),
(83, 'm x m', 'm x m', 20, 2, NULL, NULL, NULL, NULL, 'Không xác định', '', 'Sổ hồng', 'dong me coc'),
(84, 'm x m', 'm x m', 21, 1, NULL, NULL, NULL, NULL, 'Không xác định', '', 'Sổ hồng', 'dong me coc'),
(85, 'm x m', 'm x m', 40, 2, NULL, NULL, NULL, NULL, 'Không xác định', '', 'Sổ hồng', 'dong me coc'),
(86, 'm x m', 'm x m', 140000, 0, NULL, NULL, NULL, NULL, 'Không xác định', '', 'Sổ hồng', 'Đức liễu'),
(87, 'm x m', 'm x m', 65000, 0, NULL, NULL, NULL, NULL, 'Không xác định', '', 'Sổ hồng', 'Nguyễn Thị Rành'),
(88, 'm x m', 'm x m', 53.75, 0, NULL, NULL, NULL, NULL, 'Không xác định', '', 'Sổ hồng', 'Mã Lò'),
(89, 'm x m', 'm x m', 48, 0, NULL, NULL, NULL, NULL, 'Đông', '', 'Sổ đỏ', 'Trương Phước Phan'),
(90, 'm x m', 'm x m', 14000, 0, NULL, NULL, NULL, NULL, 'Tây Nam', '', 'Sổ đỏ', '887'),
(91, 'm x m', 'm x m', 21278, 0, NULL, NULL, NULL, NULL, 'Không xác định', '', 'Sổ đỏ', 'xã Lương Hòa '),
(92, 'm x m', 'm x m', 120, 0, NULL, NULL, NULL, NULL, 'Đông Nam', '', 'Sổ hồng', 'đường số 7'),
(93, 'm x m', 'm x m', 200, 0, NULL, NULL, NULL, NULL, 'Đông', '', 'Sổ hồng', 'đường nội bộ phía sau đường Nguyễn Tri Phương'),
(94, 'm x m', 'm x m', 100, 0, NULL, NULL, NULL, NULL, 'Không xác định', '', 'Sổ đỏ', 'chưa xác định'),
(95, 'm x m', 'm x m', 150, 0, NULL, NULL, NULL, NULL, 'Không xác định', '', 'Sổ đỏ', 'chưa xác định'),
(96, '6.5m x 30m', 'm x m', 10000, 5, NULL, NULL, NULL, NULL, 'Chưa xác định', '', 'Sổ hồng', ' Bạch Đằng'),
(97, 'm x m', '20m x 20m', 1200, 3, NULL, NULL, NULL, NULL, 'Không xác định', '', 'Sổ hồng', 'Hà Huy Tập'),
(98, 'm x m', 'm x m', 44, 1, NULL, NULL, NULL, NULL, 'Không xác định', '', 'Sổ hồng', 'Xô Viết Nghệ Tĩnh'),
(99, 'm x m', '20m x 60m', 1200, 0, NULL, NULL, NULL, NULL, 'Không xác định', '', 'Sổ hồng', 'Lý Thường Kiệt'),
(100, 'm x m', 'm x m', 400, 0, NULL, NULL, NULL, NULL, 'Không xác định', '', 'Sổ hồng', 'Quang Trung P. 14 Q.Gò Vấp'),
(101, 'm x m', 'm x m', 3050, 1, NULL, NULL, NULL, NULL, 'Không xác định', '', 'Sổ hồng', 'Nguyễn Xiển'),
(102, 'm x m', 'm x m', 2000, 5, NULL, NULL, NULL, NULL, 'Không xác định', '', 'Sổ hồng', 'cách mạng tháng 8'),
(103, 'm x m', 'm x m', 12, 0, NULL, NULL, NULL, NULL, 'Không xác định', '', 'Sổ hồng', 'cách mạng tháng 8'),
(104, 'm x m', 'm x m', 110, 0, NULL, NULL, NULL, NULL, 'Không xác định', '', 'Sổ hồng', 'NGUYỄN ĐỨC CẢNH'),
(105, 'm x m', 'm x m', 300, 0, NULL, NULL, NULL, NULL, 'Không xác định', '', 'Sổ hồng', 'NGUYỄN ĂN THỦ'),
(106, 'm x m', 'm x m', 140, 0, NULL, NULL, NULL, NULL, 'Không xác định', '', 'Sổ hồng', ' Tô Hiến Thành '),
(107, 'm x m', 'm x m', 80, 0, NULL, NULL, NULL, NULL, 'Không xác định', '', 'Sổ hồng', 'LK 5-6'),
(108, 'm x m', 'm x m', 190, 2, NULL, 3, NULL, 3, 'Không xác định', '', 'Sổ hồng', 'Huỳnh Văn Bánh'),
(109, 'm x m', 'm x m', 264, 4, NULL, NULL, NULL, NULL, 'Không xác định', '', 'Sổ hồng', ' Lê Văn Sỹ'),
(110, 'm x m', 'm x m', 400, 2, NULL, NULL, NULL, NULL, 'Không xác định', '', 'Sổ hồng', ' Lê Đức Thọ '),
(111, 'm x m', 'm x m', 5000, 0, NULL, NULL, NULL, NULL, 'Không xác định', '', 'Sổ hồng', '	Đường Số 5A, Bình Tân, TP.Hồ Chí Minh'),
(112, 'm x m', 'm x m', 90.88, 0, NULL, NULL, NULL, NULL, 'Không xác định', '', 'Sổ hồng', 'Nguyễn Duy Trinh '),
(113, 'm x m', 'm x m', 570, 3, NULL, NULL, NULL, NULL, 'Không xác định', '', 'Sổ hồng', 'Nguyễn Cửu Đàm'),
(114, 'm x m', 'm x m', 1500, 6, 30, NULL, NULL, NULL, 'Không xác định', '', 'Sổ hồng', 'CỘNG HÒA'),
(115, 'm x m', 'm x m', 1000, 6, NULL, 24, NULL, NULL, 'Bắc', '', 'Sổ hồng', 'ĐƯỜNG 35'),
(116, 'm x m', 'm x m', 72, 6, NULL, 19, 19, NULL, 'Không xác định', '', 'Sổ hồng', 'Phan Huy Ích'),
(117, 'm x m', 'm x m', 230, 3, NULL, NULL, NULL, NULL, 'Không xác định', '', 'Sổ hồng', 'Sư Vạn Hạnh '),
(118, 'm x m', 'm x m', 300, 0, NULL, NULL, NULL, NULL, 'Không xác định', '', 'Sổ hồng', 'NGUYỄN THÁI HỌC'),
(119, 'm x m', 'm x m', 125, 0, NULL, NULL, NULL, NULL, 'Không xác định', '', 'Sổ hồng', '120 Trương Công Định'),
(120, 'm x m', 'm x m', 40, 0, NULL, NULL, NULL, NULL, 'Đông Bắc', '', 'Sổ hồng', '82 cầu xéo - P.tân quý'),
(121, 'm x m', 'm x m', 102.5, 0, NULL, NULL, NULL, NULL, 'Không xác định', '', 'Sổ hồng', 'đường 12'),
(122, 'm x m', 'm x m', 3050, 0, NULL, NULL, NULL, NULL, 'Không xác định', '', 'Sổ hồng', '.Nguyễn Xiển'),
(123, 'm x m', 'm x m', 24, 0, NULL, NULL, NULL, NULL, 'Không xác định', '', 'Sổ hồng', 'Đường 16'),
(124, 'm x m', 'm x m', 104, 0, NULL, NULL, NULL, NULL, 'Không xác định', '', 'Sổ hồng', 'p 98/12/6 Tỉnh Lộ 15, KP 3B'),
(125, 'm x m', 'm x m', 540, 5, 1, 6, NULL, NULL, 'Không xác định', '', 'Sổ hồng', ' PHAN ĐÌNH PHÙNG'),
(126, 'm x m', 'm x m', 4000, 0, NULL, 5, NULL, 2, 'Không xác định', '', 'Sổ hồng', '130/25/1 Bùi Công Trừng'),
(129, 'm x m', 'm x m', 420, 0, NULL, NULL, NULL, NULL, 'Không xác định', '', 'Sổ hồng', '18/3 LÊ VĂN LƯƠNG'),
(130, 'm x m', 'm x m', 246, 3, NULL, 8, 5, NULL, 'Không xác định', '', 'Sổ hồng', '362 Ung Văn Khiêm'),
(131, 'm x m', 'm x m', 500, 2, NULL, NULL, NULL, NULL, 'Không xác định', '', 'Sổ hồng', '50/3 BA VÂN, '),
(132, 'm x m', 'm x m', 960, 1, NULL, NULL, NULL, NULL, 'Không xác định', '', 'Sổ hồng', ' MT 03 Ấp 6A'),
(134, '4m x 18m', '4m x 17m', 150, 2, 1, NULL, NULL, NULL, 'Không xác định', '6m', 'Sổ hồng', 'huỳnh tấn phát'),
(135, 'm x m', 'm x m', 3, 3, NULL, NULL, NULL, NULL, 'Đông Bắc', '', 'Sổ hồng', 'Nguyễn Biểu'),
(136, 'm x m', 'm x m', 3, 3, NULL, NULL, NULL, NULL, 'Đông Bắc', '', 'Sổ hồng', 'Nguyễn Biểu'),
(137, 'm x m', 'm x m', 74, 1, 1, NULL, NULL, NULL, 'Đông Nam', '', 'Sổ hồng', 'trịnh văn nghị'),
(138, 'm x m', 'm x m', 3, 3, NULL, NULL, NULL, NULL, 'Đông Bắc', '', 'Sổ hồng', 'Nguyễn Biểu'),
(139, 'm x m', 'm x m', 40, 0, NULL, NULL, NULL, NULL, 'Không xác định', '', 'Sổ hồng', ' SỐ 17-19 HOÀNG DIỆU'),
(140, 'm x m', 'm x m', 36, 0, NULL, NULL, NULL, NULL, 'Không xác định', '', 'Sổ hồng', '305 Hoàng Diệu'),
(142, 'm x m', 'm x m', 750, 0, NULL, NULL, NULL, NULL, 'Không xác định', '', 'Sổ hồng', ' ĐƯỜNG SỐ 29'),
(143, 'm x m', 'm x m', 105, 3, NULL, 3, NULL, NULL, 'Không xác định', '', 'Sổ hồng', '106/215F Tôn Thất Hiệp'),
(144, '4.5m x 10m', 'm x m', 45, 0, NULL, NULL, NULL, NULL, 'Chưa xác định', '', 'Sổ hồng', 'Tân Sơn Nhì, phường Tân Sơn Nhì'),
(145, 'm x m', 'm x m', 31.5, 0, NULL, NULL, NULL, NULL, 'Không xác định', '', 'Sổ hồng', ' Phan Tây Hồ,'),
(146, '6m x 24m', 'm x m', 288, 2, NULL, NULL, NULL, NULL, 'Chưa xác định', '', 'Sổ hồng', '279/42 HUỲNH VĂN BÁNH'),
(147, 'm x m', 'm x m', 104, 0, NULL, 3, NULL, NULL, 'Không xác định', '', 'Sổ hồng', '360C BẾN VÂN ĐỒN'),
(148, 'm x m', 'm x m', 214.8, 2, NULL, NULL, NULL, NULL, 'Không xác định', '', 'Sổ hồng', ' 26/11 NGUYỄN THỊ ĐỊNH'),
(149, '5m x 37m', 'm x m', 555, 3, 1, 3, NULL, NULL, 'Chưa xác định', '', 'Sổ hồng', '87/28 ĐƯỜNG 16, KP3, PHƯỜNG HIỆP BÌNH CHÁNH'),
(150, '32m x 13m', 'm x m', 335, 0, NULL, NULL, NULL, NULL, 'Chưa xác định', '', 'Sổ hồng', 'Số 2 LÊ THỊ HOA'),
(151, '47m x 133m', 'm x m', 6251, 0, NULL, NULL, NULL, NULL, 'Chưa xác định', '', 'Sổ hồng', 'xã Bình Mỹ, huyện Củ Chi'),
(152, 'm x m', 'm x m', 71.74, 0, NULL, NULL, NULL, NULL, 'Không xác định', '', 'Sổ hồng', 'CHCC NHIÊU LỘC Lô D, Lầu 5, Số 511'),
(153, '4m x 20m', 'm x m', 300, 3, NULL, 6, NULL, NULL, 'Chưa xác định', '', 'Sổ hồng', '924B TẠ QUANG BỬU'),
(154, 'm x m', 'm x m', 388, 0, NULL, NULL, NULL, NULL, 'Không xác định', '', 'Sổ hồng', ' LÊ THỊ HÀ,'),
(155, '9.35m x 17.8m', 'm x m', 262.9, 3, NULL, NULL, NULL, NULL, 'Chưa xác định', '', 'Sổ hồng', 'TÚ XƯƠNG,'),
(156, 'm x m', 'm x m', 407.3, 3, 1, 7, NULL, NULL, 'Không xác định', '', 'Sổ hồng', 'NGUYỄN VĂN LINH'),
(157, 'm x m', 'm x m', 313.9, 0, NULL, NULL, NULL, NULL, 'Không xác định', '', 'Sổ hồng', 'LÊ MINH NHẬT'),
(158, '4m x 20m', 'm x m', 240, 3, 1, 5, 5, NULL, 'Chưa xác định', '', 'Sổ hồng', ' ĐƯỜNG 21, phường Bình An'),
(159, '10m x 18m', 'm x m', 180, 1, NULL, NULL, NULL, NULL, 'Chưa xác định', '', 'Sổ hồng', 'NGUYỄN TRỌNG TUYỂN'),
(160, '6m x 8m', 'm x m', 48, 1, NULL, NULL, NULL, NULL, 'Chưa xác định', '', 'Sổ hồng', 'Chung Cư Tây Thạnh'),
(161, '8.6m x 42m', 'm x m', 361.2, 1, NULL, NULL, NULL, NULL, 'Chưa xác định', '', 'Sổ hồng', '429 ÂU CƠ,'),
(162, '6.2m x 18m', 'm x m', 111.6, 1, NULL, NULL, NULL, NULL, 'Chưa xác định', '', 'Sổ hồng', ' NGUYỄN ĐÌNH CHIỂU'),
(163, 'm x m', 'm x m', 402, 6, NULL, NULL, NULL, NULL, 'Chưa xác định', '', 'Sổ hồng', '89D LÊ VĂN THỌ'),
(164, 'm x m', 'm x m', 4, 3, NULL, NULL, NULL, NULL, 'Không xác định', '', 'Sổ hồng', 'Nguyễn Biểu'),
(165, 'm x m', 'm x m', 4, 3, NULL, NULL, NULL, NULL, 'Không xác định', '', 'Sổ hồng', 'Nguyễn Biểu'),
(166, 'm x m', 'm x m', 2, 2, NULL, NULL, NULL, NULL, 'Đông', '', 'Sổ hồng', NULL),
(167, 'm x m', 'm x m', 60, 10, NULL, NULL, NULL, NULL, 'Chưa xác định', '', 'Sổ hồng', NULL),
(168, 'm x m', 'm x m', 161, 8, NULL, NULL, NULL, NULL, 'Đông Nam', '', 'Sổ hồng', NULL),
(169, 'm x m', 'm x m', 100, 0, NULL, NULL, NULL, NULL, 'Đông Bắc', '', 'Sổ hồng', NULL),
(170, 'm x m', 'm x m', 81, 5, NULL, NULL, NULL, NULL, 'Đông Nam', '', 'Sổ hồng', NULL),
(171, 'm x m', 'm x m', 210, 2, NULL, NULL, NULL, NULL, 'Đông', '', 'Sổ hồng', NULL),
(173, '3m x 20m', '3m x 19.5m', 150, 2, NULL, NULL, NULL, NULL, 'Chưa xác định', '', 'Sổ hồng', NULL),
(174, '5m x 22m', '5m x 5m', 110, 1, NULL, NULL, NULL, NULL, 'Chưa xác định', '', 'Sổ hồng', NULL),
(175, '4.3m x 18.6m', '4.3m x 18.6m', 245, 4, 1, 3, 3, 1, 'Đông Nam', '6m', 'Sổ hồng', NULL),
(176, '6.3m x 15m', '6.3m x 6.3m', 313.35, 3, 1, 3, 3, 1, 'Đông Bắc', '8m', 'Sổ hồng', NULL),
(177, '4m x 14.3m', '4m x 4m', 150, 2, 1, 3, 2, 1, 'Tây Bắc', '10m', 'Sổ hồng', NULL),
(178, '6m x 9m', '6m x 9m', 110, 1, 1, 1, 2, 1, 'Chưa xác định', '', 'Sổ hồng', NULL),
(179, '4.5m x 14m', '4.5m x 4.5m', 378, 6, 1, 8, 5, 1, 'Đông Nam', '20m', 'Sổ hồng', NULL),
(180, 'm x m', 'm x m', 1000, 3, 1, 3, 5, 3, 'Chưa xác định', '', 'Sổ hồng', NULL),
(181, '4m x 16m', 'm x m', 64, 1, NULL, NULL, NULL, NULL, 'Chưa xác định', '', 'Sổ hồng', NULL),
(182, '7m x 30m', 'm x m', 420, 2, NULL, NULL, NULL, NULL, 'Chưa xác định', '', 'Sổ hồng', NULL),
(183, 'm x m', 'm x m', 72, 1, NULL, NULL, NULL, NULL, 'Chưa xác định', '', 'Sổ hồng', NULL),
(184, '13.5m x 22.5m', 'm x m', 300, 1, NULL, NULL, NULL, NULL, 'Chưa xác định', '', 'Sổ hồng', NULL),
(185, 'm x m', 'm x m', 84, 1, NULL, NULL, NULL, NULL, 'Chưa xác định', '', 'Sổ hồng', NULL),
(186, 'm x m', 'm x m', 269, 2, NULL, NULL, NULL, 6, 'Chưa xác định', '', 'Sổ hồng', NULL),
(187, 'm x m', 'm x m', 600, 3, NULL, NULL, NULL, NULL, 'Chưa xác định', '', 'Sổ hồng', NULL);

-- --------------------------------------------------------

--
-- Table structure for table `dos_module_products_type`
--

CREATE TABLE IF NOT EXISTS `dos_module_products_type` (
  `type_id` int(11) NOT NULL AUTO_INCREMENT,
  `type_title` varchar(100) NOT NULL,
  `tag` varchar(100) NOT NULL,
  `pic_desc` varchar(200) DEFAULT NULL,
  `type_order` int(11) NOT NULL,
  `type_enable` tinyint(1) NOT NULL DEFAULT '1',
  `dos_usernames_username` varchar(45) NOT NULL,
  PRIMARY KEY (`type_id`),
  KEY `fk_dos_module_products_cat_dos_usernames1` (`dos_usernames_username`)
) ENGINE=InnoDB  DEFAULT CHARSET=utf8 AUTO_INCREMENT=4 ;

--
-- Dumping data for table `dos_module_products_type`
--

INSERT INTO `dos_module_products_type` (`type_id`, `type_title`, `tag`, `pic_desc`, `type_order`, `type_enable`, `dos_usernames_username`) VALUES
(1, 'Bất động sản Bán', 'nha-ban', NULL, 1, 1, ''),
(2, 'Bất động sản Cho thuê', 'cho-thue', NULL, 1, 1, ''),
(3, 'Bất động sản Sang nhượng', 'sang-nhuong', NULL, 3, 1, '');

-- --------------------------------------------------------

--
-- Table structure for table `dos_module_products_utility`
--

CREATE TABLE IF NOT EXISTS `dos_module_products_utility` (
  `product_id` int(11) NOT NULL AUTO_INCREMENT,
  `telephone` tinyint(1) NOT NULL DEFAULT '0',
  `power_meter` tinyint(1) NOT NULL DEFAULT '0',
  `heater` tinyint(1) NOT NULL DEFAULT '0',
  `gara` tinyint(1) NOT NULL DEFAULT '0',
  `cable_tv` tinyint(1) NOT NULL DEFAULT '0',
  `water_meter` tinyint(1) NOT NULL DEFAULT '0',
  `alarm_system` tinyint(1) NOT NULL DEFAULT '0',
  `garden` tinyint(1) NOT NULL DEFAULT '0',
  `internet` tinyint(1) NOT NULL DEFAULT '0',
  `air_conditioner` tinyint(1) NOT NULL DEFAULT '0',
  `parking` tinyint(1) NOT NULL DEFAULT '0',
  `pool` tinyint(1) NOT NULL DEFAULT '0',
  `furniture` tinyint(1) NOT NULL DEFAULT '0',
  PRIMARY KEY (`product_id`)
) ENGINE=InnoDB  DEFAULT CHARSET=utf8 AUTO_INCREMENT=196 ;

--
-- Dumping data for table `dos_module_products_utility`
--

INSERT INTO `dos_module_products_utility` (`product_id`, `telephone`, `power_meter`, `heater`, `gara`, `cable_tv`, `water_meter`, `alarm_system`, `garden`, `internet`, `air_conditioner`, `parking`, `pool`, `furniture`) VALUES
(38, 1, 1, 1, 0, 1, 1, 1, 0, 1, 1, 0, 0, 1),
(39, 1, 1, 1, 1, 1, 1, 1, 1, 1, 1, 1, 0, 1),
(40, 1, 1, 1, 0, 1, 1, 0, 0, 1, 1, 0, 0, 1),
(41, 1, 1, 1, 1, 1, 1, 1, 0, 1, 1, 1, 1, 1),
(42, 1, 1, 1, 1, 1, 1, 1, 1, 1, 1, 1, 1, 1),
(43, 1, 1, 1, 1, 1, 1, 1, 1, 1, 1, 1, 1, 1),
(44, 1, 1, 1, 0, 1, 1, 0, 0, 0, 0, 0, 1, 1),
(45, 1, 1, 1, 1, 1, 1, 1, 1, 1, 1, 1, 1, 1),
(46, 1, 1, 1, 1, 1, 1, 1, 1, 1, 1, 1, 1, 1),
(47, 1, 1, 1, 1, 1, 1, 1, 1, 1, 1, 1, 1, 1),
(48, 1, 1, 1, 1, 1, 1, 1, 1, 1, 1, 1, 1, 1),
(49, 1, 1, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0),
(50, 1, 1, 1, 1, 1, 1, 1, 1, 1, 1, 1, 1, 1),
(51, 1, 1, 1, 0, 1, 1, 1, 0, 1, 1, 1, 1, 1),
(52, 1, 1, 1, 1, 1, 1, 1, 1, 1, 1, 1, 1, 1),
(53, 0, 1, 0, 0, 1, 1, 0, 1, 1, 0, 1, 0, 0),
(54, 1, 1, 0, 0, 1, 1, 0, 1, 1, 1, 0, 0, 0),
(56, 1, 1, 0, 0, 1, 1, 0, 1, 1, 0, 0, 0, 0),
(57, 1, 1, 0, 1, 1, 1, 0, 1, 1, 1, 1, 0, 0),
(58, 1, 1, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0),
(59, 1, 1, 0, 0, 1, 1, 0, 1, 1, 0, 1, 0, 0),
(60, 1, 1, 1, 1, 1, 1, 1, 1, 1, 1, 1, 0, 1),
(61, 1, 1, 1, 1, 1, 1, 1, 0, 1, 1, 1, 0, 1),
(62, 1, 1, 0, 0, 1, 1, 0, 1, 1, 0, 1, 0, 0),
(63, 1, 1, 0, 0, 1, 1, 0, 1, 1, 1, 1, 0, 1),
(64, 1, 1, 0, 0, 1, 1, 0, 0, 1, 1, 1, 0, 0),
(65, 1, 1, 0, 0, 0, 1, 0, 0, 0, 1, 1, 0, 0),
(66, 1, 1, 0, 0, 1, 1, 0, 0, 0, 0, 0, 0, 0),
(67, 1, 1, 0, 0, 1, 1, 0, 1, 1, 1, 1, 0, 0),
(68, 1, 1, 0, 0, 1, 1, 0, 1, 1, 1, 1, 0, 0),
(69, 1, 1, 1, 1, 1, 1, 0, 1, 1, 1, 1, 0, 1),
(70, 1, 1, 1, 1, 1, 1, 1, 1, 1, 1, 1, 1, 1),
(71, 1, 1, 1, 1, 1, 1, 1, 1, 1, 1, 1, 0, 1),
(72, 1, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0),
(73, 0, 1, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0),
(74, 1, 1, 1, 1, 1, 1, 1, 1, 1, 1, 1, 1, 1),
(75, 1, 1, 0, 0, 1, 1, 0, 0, 0, 0, 0, 0, 0),
(76, 1, 1, 1, 1, 1, 1, 1, 1, 1, 1, 1, 1, 1),
(78, 1, 1, 1, 1, 1, 1, 1, 1, 1, 1, 1, 1, 1),
(79, 1, 1, 0, 0, 1, 1, 0, 1, 0, 0, 0, 0, 0),
(80, 1, 1, 1, 1, 1, 1, 0, 0, 1, 1, 1, 0, 1),
(81, 1, 1, 0, 0, 1, 1, 0, 0, 1, 0, 1, 0, 0),
(82, 1, 1, 0, 0, 1, 1, 0, 0, 0, 0, 0, 0, 0),
(83, 1, 1, 0, 0, 1, 1, 0, 0, 0, 0, 0, 0, 0),
(84, 1, 1, 0, 0, 1, 1, 0, 0, 1, 0, 0, 0, 0),
(85, 1, 1, 0, 1, 1, 1, 0, 0, 0, 0, 0, 0, 0),
(86, 0, 0, 0, 0, 0, 0, 0, 1, 0, 0, 0, 0, 0),
(87, 0, 0, 0, 0, 0, 0, 0, 1, 0, 0, 0, 0, 0),
(88, 1, 0, 0, 0, 0, 0, 0, 1, 1, 0, 0, 0, 0),
(89, 0, 0, 0, 0, 0, 0, 0, 1, 0, 0, 0, 0, 0),
(90, 0, 0, 0, 0, 0, 0, 0, 1, 0, 0, 0, 0, 0),
(91, 0, 0, 0, 0, 0, 0, 0, 1, 0, 0, 0, 0, 0),
(92, 0, 0, 0, 0, 0, 0, 0, 0, 1, 0, 0, 0, 0),
(93, 0, 0, 0, 0, 0, 0, 0, 1, 0, 0, 0, 0, 0),
(94, 0, 0, 0, 0, 0, 0, 0, 1, 0, 0, 1, 0, 0),
(95, 0, 0, 0, 0, 0, 0, 0, 1, 0, 0, 0, 0, 0),
(96, 1, 1, 1, 1, 1, 0, 1, 0, 1, 1, 0, 0, 0),
(97, 1, 1, 1, 1, 0, 0, 0, 1, 1, 1, 1, 1, 0),
(98, 1, 1, 1, 1, 1, 1, 1, 1, 1, 1, 1, 1, 1),
(99, 1, 1, 1, 1, 1, 1, 1, 1, 1, 1, 1, 1, 0),
(100, 1, 1, 1, 1, 1, 1, 1, 1, 1, 1, 1, 1, 1),
(101, 1, 1, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0),
(102, 1, 1, 1, 1, 1, 1, 1, 0, 1, 1, 1, 0, 0),
(103, 1, 1, 0, 0, 0, 1, 0, 0, 1, 0, 0, 0, 0),
(104, 1, 1, 1, 0, 0, 1, 0, 0, 1, 1, 1, 0, 0),
(105, 1, 1, 1, 0, 1, 1, 1, 0, 1, 1, 1, 0, 1),
(106, 1, 1, 1, 0, 1, 1, 0, 0, 1, 1, 0, 0, 0),
(107, 0, 0, 0, 0, 0, 0, 0, 1, 0, 0, 0, 0, 0),
(108, 1, 1, 1, 0, 1, 1, 1, 0, 0, 1, 0, 0, 0),
(109, 1, 1, 1, 0, 1, 1, 0, 0, 1, 1, 0, 0, 0),
(110, 1, 1, 1, 0, 1, 1, 0, 0, 1, 1, 0, 0, 0),
(111, 1, 1, 0, 0, 0, 1, 0, 0, 0, 0, 1, 0, 0),
(112, 1, 1, 1, 1, 1, 1, 1, 0, 1, 1, 1, 0, 0),
(113, 1, 1, 1, 0, 1, 1, 0, 0, 1, 1, 0, 0, 0),
(114, 1, 1, 1, 0, 1, 1, 1, 0, 1, 1, 1, 0, 0),
(115, 1, 1, 1, 0, 1, 1, 1, 0, 1, 1, 0, 0, 0),
(116, 1, 1, 1, 0, 1, 1, 0, 0, 1, 1, 0, 0, 0),
(117, 1, 1, 1, 0, 1, 1, 0, 0, 1, 0, 0, 0, 0),
(118, 1, 1, 1, 0, 1, 1, 0, 0, 1, 1, 0, 0, 1),
(119, 1, 1, 1, 0, 0, 0, 0, 0, 1, 0, 0, 0, 0),
(120, 1, 1, 1, 0, 1, 0, 0, 0, 1, 1, 0, 0, 0),
(121, 0, 0, 0, 0, 0, 0, 0, 1, 0, 0, 0, 0, 0),
(122, 1, 1, 0, 1, 0, 0, 0, 0, 0, 0, 0, 0, 0),
(123, 1, 1, 0, 0, 1, 0, 0, 0, 1, 0, 0, 0, 0),
(124, 1, 1, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 1),
(125, 1, 1, 1, 0, 1, 1, 0, 0, 1, 1, 1, 0, 1),
(126, 1, 1, 0, 0, 1, 1, 0, 1, 1, 0, 1, 1, 0),
(129, 1, 1, 0, 0, 0, 1, 0, 0, 0, 0, 1, 0, 0),
(130, 1, 1, 1, 0, 1, 1, 0, 0, 1, 1, 1, 0, 0),
(131, 1, 1, 1, 0, 1, 0, 0, 0, 1, 1, 1, 0, 0),
(132, 1, 1, 1, 0, 0, 1, 1, 1, 1, 0, 1, 0, 0),
(134, 1, 1, 0, 0, 1, 1, 0, 0, 1, 0, 0, 0, 1),
(135, 1, 0, 0, 0, 0, 0, 0, 0, 0, 1, 0, 0, 0),
(136, 1, 0, 0, 0, 0, 0, 0, 0, 0, 1, 0, 0, 0),
(137, 1, 1, 1, 1, 0, 1, 1, 0, 1, 1, 1, 1, 1),
(138, 1, 0, 0, 0, 0, 0, 0, 0, 0, 1, 0, 0, 0),
(139, 1, 1, 1, 0, 1, 1, 0, 0, 1, 1, 1, 0, 0),
(140, 1, 1, 1, 0, 0, 1, 0, 0, 1, 0, 0, 0, 0),
(142, 0, 0, 0, 0, 0, 0, 0, 1, 0, 0, 0, 0, 0),
(143, 1, 1, 1, 0, 0, 1, 0, 0, 1, 0, 0, 0, 0),
(144, 1, 1, 1, 0, 1, 0, 0, 0, 1, 0, 0, 0, 1),
(145, 1, 1, 1, 0, 0, 0, 0, 0, 1, 0, 0, 0, 0),
(146, 1, 1, 0, 0, 1, 1, 0, 0, 1, 0, 0, 0, 0),
(147, 1, 1, 1, 1, 0, 0, 0, 0, 1, 1, 0, 0, 0),
(148, 1, 1, 0, 0, 0, 0, 0, 0, 1, 0, 0, 0, 0),
(149, 1, 1, 0, 0, 1, 1, 0, 0, 0, 0, 1, 0, 0),
(150, 0, 0, 0, 0, 0, 0, 0, 1, 0, 0, 0, 0, 0),
(151, 1, 1, 0, 0, 0, 1, 0, 0, 0, 0, 1, 0, 0),
(152, 1, 1, 1, 0, 1, 1, 0, 0, 1, 1, 0, 0, 0),
(153, 1, 1, 1, 0, 1, 0, 0, 0, 1, 0, 0, 0, 0),
(154, 1, 1, 0, 0, 1, 1, 0, 0, 0, 0, 1, 0, 0),
(155, 1, 1, 1, 1, 1, 1, 1, 1, 1, 1, 1, 0, 1),
(156, 1, 1, 1, 1, 1, 1, 0, 0, 1, 0, 1, 0, 0),
(157, 0, 0, 0, 0, 0, 0, 0, 1, 0, 0, 0, 0, 0),
(158, 1, 1, 1, 0, 1, 1, 0, 0, 1, 1, 1, 0, 1),
(159, 1, 1, 1, 0, 0, 0, 0, 0, 1, 0, 0, 0, 0),
(160, 1, 1, 1, 0, 1, 0, 0, 0, 1, 1, 0, 0, 0),
(161, 1, 1, 1, 0, 1, 0, 0, 0, 1, 0, 0, 0, 0),
(162, 1, 1, 1, 0, 1, 1, 0, 0, 1, 1, 0, 0, 0),
(163, 1, 1, 1, 0, 1, 1, 0, 0, 1, 1, 0, 0, 1),
(164, 1, 0, 0, 0, 0, 0, 0, 0, 0, 1, 1, 0, 0),
(165, 1, 1, 0, 0, 0, 0, 0, 0, 0, 1, 1, 0, 0),
(166, 1, 1, 0, 0, 0, 0, 0, 0, 1, 0, 1, 0, 0),
(167, 1, 1, 1, 0, 1, 1, 1, 0, 1, 1, 1, 0, 1),
(168, 1, 1, 1, 0, 1, 1, 1, 1, 1, 1, 1, 1, 1),
(169, 1, 1, 0, 0, 1, 1, 0, 1, 1, 0, 0, 0, 0),
(170, 1, 1, 0, 0, 1, 1, 1, 0, 1, 1, 1, 0, 1),
(171, 1, 1, 0, 0, 1, 0, 1, 0, 0, 0, 0, 0, 0),
(173, 1, 1, 1, 0, 1, 0, 0, 0, 0, 0, 0, 0, 0),
(174, 1, 1, 1, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0),
(175, 1, 1, 1, 0, 1, 1, 1, 1, 1, 0, 1, 0, 1),
(176, 1, 1, 1, 1, 1, 1, 1, 1, 1, 1, 1, 0, 1),
(177, 1, 1, 1, 0, 1, 1, 0, 0, 1, 1, 0, 0, 1),
(178, 1, 1, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0),
(179, 1, 1, 1, 1, 1, 1, 1, 0, 1, 1, 1, 0, 1),
(180, 1, 1, 1, 1, 1, 1, 1, 1, 1, 1, 1, 0, 1),
(181, 1, 1, 0, 0, 1, 1, 0, 0, 1, 1, 1, 0, 0),
(182, 1, 1, 1, 0, 1, 1, 0, 0, 1, 1, 1, 0, 1),
(183, 1, 1, 1, 0, 1, 1, 0, 0, 1, 1, 0, 0, 0),
(184, 1, 1, 1, 0, 1, 1, 1, 1, 1, 1, 0, 0, 0),
(185, 1, 1, 0, 0, 1, 1, 0, 0, 0, 0, 0, 0, 0),
(186, 1, 1, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0),
(187, 1, 1, 1, 1, 1, 1, 1, 1, 1, 0, 0, 0, 0);

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
) ENGINE=InnoDB  DEFAULT CHARSET=utf8 AUTO_INCREMENT=107 ;

--
-- Dumping data for table `dos_module_services`
--

INSERT INTO `dos_module_services` (`record_id`, `title`, `titleen`, `preview`, `previewen`, `content`, `contenten`, `pic_full`, `hit`, `created`, `record_order`, `hot`, `extra_field1`, `extra_field2`, `tag`, `tagen`, `description`, `descriptionen`, `activated`, `dos_usernames_username`) VALUES
(105, 'Dịch Vụ Nhà Đất', '', NULL, NULL, '<p><span style="color:#0000ff;font-size:medium;"><em>Tìm nhà - đất phong thủy theo nhu cầu khách hàng. Liên hệ: <span style="color:#ff0000;">0984.168.117</span></em></span></p>\n<p><span style="color:#0000ff;font-size:medium;"><em><span style="color:#ff0000;"><span style="color:#0000ff;">Thiết kế và thi công xây dựng nhà phố, villa, nhà xưởng. Liên hệ:</span> 0984.168.117</span></em></span></p>\n<p><span style="color:#0000ff;font-size:medium;"><em><span style="color:#ff0000;"> </span></em></span></p>', '', '', 45, '2012-07-04 07:10:08', 2, 0, NULL, NULL, 'dich-vu-nha-dat', '', '', '', 1, 'nhaphodep'),
(106, 'Dịch Vụ Tra Số Điện Thoại Phong Thủy', '', NULL, NULL, '<p><span style="color:#0000ff;font-size:small;"><em>Số điện thoại có ảnh hưởng đến cuộc đời bạn (do năng lượng sóng), để kiểm tra xem tốt hay xấu, soạn tin theo cú pháp:</em></span><br /><span style="font-size:small;"><span style="color:#0000ff;"><em>phongthuy</em>  </span>  <span style="color:#0000ff;"><em>Sodienthoaicankiemtra</em></span></span><br /><span style="color:#0000ff;font-size:small;"><em>Gửi 8785.</em></span><br /><span style="color:#0000ff;font-size:small;"><em>Ví dụ: <span style="color:#ff0000;font-size:medium;">phongthuy 0987123456</span> gửi <span style="color:#ff0000;font-size:medium;">8785</span></em></span><br /><span style="color:#0000ff;font-size:small;"><em>Kết quả đã được kiểm nghiệm tương đối chính xác.</em></span></p>', '', '', 33, '2012-07-23 09:57:01', 1, 0, NULL, NULL, 'dich-vu-tra-so-dien-thoai-phong-thuy', '', '', '', 1, 'nhaphodep');

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
) ENGINE=InnoDB  DEFAULT CHARSET=utf8 AUTO_INCREMENT=4 ;

--
-- Dumping data for table `dos_module_supports`
--

INSERT INTO `dos_module_supports` (`support_id`, `support_name`, `support_nameen`, `support_phone`, `support_value`, `support_order`, `support_type`, `dos_usernames_username`) VALUES
(3, 'Minh Hoàng', '', '0916368001', 'hoangdiaoc', 1, 'yahoo', 'nhaphodep');

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
('keywords', 'Bất động sản, môi giới đầu tư dự án, đầu tư bất động sản, môi giới thương mại, đại lý ký gởi giao dịch', 'nhaphodep'),
('description', 'Bất động sản Khang Danh chuyên: Môi giới đầu tư dự án, đầu tư bất động sản, môi giới thương mại, đại lý ký gởi giao dịch', 'nhaphodep'),
('title', 'Sàn giao dịch Nhà đất - nhaphodep.vn', 'nhaphodep'),
('analytics', '<script type="text/javascript">\r\n\r\n  var _gaq = _gaq || [];\r\n  _gaq.push([''_setAccount'', ''UA-33144702-1'']);\r\n  _gaq.push([''_trackPageview'']);\r\n\r\n  (function() {\r\n    var ga = document.createElement(''script''); ga.type = ''text/javascript''; ga.async = true;\r\n    ga.src = (''https:'' == document.location.protocol ? ''https://ssl'' : ''http://www'') + ''.google-analytics.com/ga.js'';\r\n    var s = document.getElementsByTagName(''script'')[0]; s.parentNode.insertBefore(ga, s);\r\n  })();\r\n\r\n</script>', 'nhaphodep');

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
('nhadat', 'Mẫu nhaphodep.vn', '2012-06-14 07:25:21', 'Mẫu nhà đất');

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
('nhadat', 'bds-kien-truc-xay-dung');

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
('nhadat', 'about', 'advs_right'),
('nhadat', 'about', 'list_supports'),
('nhadat', 'about', 'menu_about'),
('nhadat', 'about', 'menu_news'),
('nhadat', 'about', 'menu_services'),
('nhadat', 'contact', 'advs_left'),
('nhadat', 'contact', 'advs_right'),
('nhadat', 'contact', 'list_supports'),
('nhadat', 'contact', 'menu_news'),
('nhadat', 'contact', 'menu_products'),
('nhadat', 'contact', 'menu_services'),
('nhadat', 'default', 'about_home'),
('nhadat', 'default', 'advs_bottom'),
('nhadat', 'default', 'advs_right'),
('nhadat', 'default', 'advs_top'),
('nhadat', 'default', 'list_supports'),
('nhadat', 'default', 'menu_news'),
('nhadat', 'default', 'menu_services'),
('nhadat', 'default', 'products_new'),
('nhadat', 'news', 'advs_left'),
('nhadat', 'news', 'advs_right'),
('nhadat', 'news', 'list_supports'),
('nhadat', 'news', 'menu_news'),
('nhadat', 'news', 'menu_services'),
('nhadat', 'products', 'advs_bottom'),
('nhadat', 'products', 'advs_left'),
('nhadat', 'products', 'advs_right'),
('nhadat', 'products', 'advs_top'),
('nhadat', 'products', 'list_supports'),
('nhadat', 'products', 'menu_news'),
('nhadat', 'products', 'menu_products'),
('nhadat', 'products', 'menu_services'),
('nhadat', 'services', 'advs_center'),
('nhadat', 'services', 'advs_right'),
('nhadat', 'services', 'list_supports'),
('nhadat', 'services', 'menu_news'),
('nhadat', 'services', 'menu_services'),
('nhadat', 'video', 'advs_bottom'),
('nhadat', 'video', 'advs_left'),
('nhadat', 'video', 'advs_top'),
('nhadat', 'video', 'list_supports'),
('nhadat', 'video', 'menu_video');

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
  `cmnd` int(10) NOT NULL,
  `address` varchar(100) NOT NULL,
  `phone` varchar(15) DEFAULT NULL,
  `company` varchar(100) DEFAULT NULL,
  `bank_name` varchar(45) DEFAULT NULL,
  `bank_number` int(13) DEFAULT NULL,
  `role` varchar(45) NOT NULL,
  `language` varchar(20) NOT NULL,
  `code` varchar(15) DEFAULT NULL,
  `expired` timestamp NOT NULL DEFAULT '0000-00-00 00:00:00',
  `import` tinyint(1) NOT NULL DEFAULT '0',
  `activated` tinyint(1) NOT NULL,
  `avartar` varchar(45) DEFAULT NULL,
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

INSERT INTO `dos_usernames` (`username`, `email`, `password`, `created`, `fullname`, `cmnd`, `address`, `phone`, `company`, `bank_name`, `bank_number`, `role`, `language`, `code`, `expired`, `import`, `activated`, `avartar`, `dos_templates_template`, `dos_provinces_province_id`, `dos_bussiness_bussiness_id`) VALUES
('admin', 'info@nhaphodep.vn', 'e10adc3949ba59abbe56e057f20f883e', '2012-07-21 09:34:14', 'Admin', 2147483647, 'Đồng Nai', '45345235', NULL, '', NULL, 'user', 'vi', NULL, '2012-08-19 17:00:00', 0, 1, 'admin.jpg', 'nhadat', 19, 'bds-kien-truc-xay-dung'),
('donghong3168@gmail.com', 'donghong3168@gmail.com', '39143d8111db85ccdb7c3d1489e933f0', '2012-07-05 09:22:23', 'đồng hồng', 212291156, 'R4-16 HƯNG GIA 3-PHÚ MỸ HƯNG-QUẬN 7', '0903059236', NULL, '', NULL, 'user', 'vi', NULL, '2012-08-03 17:00:00', 0, 1, NULL, 'nhadat', 19, 'bds-kien-truc-xay-dung'),
('dungsacomreal', 'dungsacomreal@gmail.com', '25f9e794323b453885f5181f1b624d0b', '2012-07-05 08:30:47', 'Pham Van Dung', 2147483647, '18 NTMK P.Đakao Q.1', '0908808004', NULL, 'Đông Á', 29358210, 'user', 'vi', NULL, '2012-08-03 17:00:00', 0, 1, NULL, 'nhadat', 19, 'bds-kien-truc-xay-dung'),
('hhh', 'minhhoangpkd@gmail.com', '25f9e794323b453885f5181f1b624d0b', '2012-07-05 01:54:17', 'Nguyen Minh Hoang', 212187976, 'r4 - 16 HUng Gia 3 - PMH - Q.7', '0906808004', NULL, 'Đông Á', 2147483647, 'user', 'vi', NULL, '2012-08-03 17:00:00', 0, 1, NULL, 'nhadat', 19, 'bds-kien-truc-xay-dung'),
('hoanganh', 'hoanganh@yahoo.com', '25f9e794323b453885f5181f1b624d0b', '2012-07-05 08:29:26', 'Hoang Anh', 1414124190, 'Hoang Dieu Q.4', '0978345234', NULL, 'Đông Á', 2147483647, 'user', 'vi', NULL, '2012-08-03 17:00:00', 0, 1, 'hoanganh.jpg', 'nhadat', 19, 'bds-kien-truc-xay-dung'),
('hoanglong', 'hoanglong@khangdanh.com', 'b1c8fd14bf353cb873b5bc1a2835ccf8', '2012-07-04 09:05:02', 'Hoang Long', 301302125, 'Phu My Hung', '0909206808', NULL, '', NULL, 'user', 'vi', NULL, '2012-08-02 17:00:00', 0, 1, NULL, 'nhadat', 19, 'bds-kien-truc-xay-dung'),
('huynhtuyen1806', 'huynhtuyen1806@gmail.com', '3a2e80396c43fff61a2f62bfb4441d11', '2012-07-10 03:37:16', '', 261112414, 'quận 1', '0987830824', NULL, '', NULL, 'user', 'vi', NULL, '2012-08-08 17:00:00', 0, 1, NULL, 'nhadat', 19, 'bds-kien-truc-xay-dung'),
('izumile', 'izumile888@yahoo.com', '721d746b4cd0da78f9bcbb3b24e52007', '2012-07-09 02:46:49', 'Lê Thu', 22423300, ' Vō Thị Sáu - Quận 3 - HCM', '090.647.8088', NULL, '', NULL, 'user', 'vi', NULL, '2012-08-07 17:00:00', 0, 1, NULL, 'nhadat', 19, 'bds-kien-truc-xay-dung'),
('kinhdoanh697', 'kinhdoanh697@yahoo.com.vn', '20544dbce70f40a48b5b3175c4cd9ddc', '2012-07-30 07:18:51', 'tran ngoc bao', 212287880, '697-truong chinh-tay thanh-tan phu-tphcm', '0933159118', NULL, '', NULL, 'user', 'vi', NULL, '2012-08-28 17:00:00', 0, 1, NULL, 'nhadat', 19, 'bds-kien-truc-xay-dung'),
('lethiphuongthao', 'lethiphuongthao@gmail.com', '25f9e794323b453885f5181f1b624d0b', '2012-07-05 08:35:43', 'Le Thi Phuong Thao', 2121563633, '18 C2 P.12 Q.TB', '0987987025', NULL, 'Vietcombank', 1110002342, 'user', 'vi', NULL, '2012-08-03 17:00:00', 0, 1, NULL, 'nhadat', 19, 'bds-kien-truc-xay-dung'),
('longtuyen', 'tuyenhuynh1806@gmail.com', 'a25199d4e859743c591356beaef70395', '2012-07-09 08:18:15', 'Huỳnh Tuyền', 280101673, 'Quân 1', '0908811930', NULL, '', NULL, 'user', 'vi', NULL, '2012-08-07 17:00:00', 0, 1, NULL, 'nhadat', 19, 'bds-kien-truc-xay-dung'),
('ngoctam', 'ngocyen.oriflame@gmail.com', '6ebe76c9fb411be97b3b0d48b791a7c9', '2012-07-19 06:36:26', '', 212324403, '830 đại lộ bình dương, phường hiệp thành, tp thủ dầu một', '01645128425', NULL, '', NULL, 'user', 'vi', NULL, '2012-08-17 17:00:00', 0, 1, NULL, 'nhadat', 19, 'bds-kien-truc-xay-dung'),
('nguyenthituyethoa', 'somawaa@yahoo.com', 'edbfc1184b2288166883e8242678faf0', '2012-07-10 03:33:34', 'NGUYỄN THỊ TUYẾT HOA', 24639897, '1206/37/14 huỳnh tấn phát q7', '0933615018', NULL, '', NULL, 'user', 'vi', NULL, '2012-08-08 17:00:00', 0, 1, NULL, 'nhadat', 19, 'bds-kien-truc-xay-dung'),
('nhaphodep', 'info@nhaphodep.vn', 'e10adc3949ba59abbe56e057f20f883e', '2012-06-14 07:31:44', 'Nhà phố đẹp', 1234564946, 'Đồng Nai', '0916368001', 'Công ty CP TM - DV BĐS Khang Danh', '', 0, 'admin', 'vi', NULL, '2012-08-18 17:00:00', 0, 1, 'nhaphodep.jpg', 'nhadat', 30, 'bds-kien-truc-xay-dung'),
('omely437', 'thanhminh19911992@gmail.com', '3aa6100288f6904c21d97aa0d6e085af', '2012-07-05 02:19:46', 'Bùi Thị Thanh Minh', 264360277, '27/314B Thống Nhất - P.15 - Q.Gò Vấp', '0166 746 4595 ', NULL, '', NULL, 'user', 'vi', NULL, '2012-08-03 17:00:00', 0, 1, NULL, 'nhadat', 19, 'bds-kien-truc-xay-dung'),
('rubyhamtien', 'ngocruby.dn@gmail.com', '6e2d5c33b92e3d0c1a4ff278722a6e41', '2012-07-30 06:04:04', 'Đặng Thị Ngọc', 245143861, 'Chưng cư K26, Dương Quảng Hàm, quận Gò Vấp', '0973850795', NULL, 'Agribank', 2147483647, 'user', 'vi', NULL, '2012-08-28 17:00:00', 0, 1, NULL, 'nhadat', 19, 'bds-kien-truc-xay-dung'),
('thanhansoft', 'thanhansoft@gmail.com', 'e10adc3949ba59abbe56e057f20f883e', '2012-07-09 01:27:47', 'Nguyen An', 271727306, 'J7, Kp1, Bửu Long, Bien Hoa, Dong Nai', '0929001001', NULL, '', NULL, 'user', 'vi', NULL, '2012-08-07 17:00:00', 0, 1, NULL, 'nhadat', 19, 'bds-kien-truc-xay-dung'),
('thanhsuong', 'hoahoctro.suong@yahoo.com.vn', '9ca03710ab6d44d7845f3ef31f70ce89', '2012-07-06 01:42:15', 'lê thị sương', 212322924, '55/17/10D thành mỹ p.8 q.tân bình', '01685193883', NULL, '', NULL, 'user', 'vi', NULL, '2012-08-04 17:00:00', 0, 1, NULL, 'nhadat', 19, 'bds-kien-truc-xay-dung'),
('thinhdatxanh', 'thinhdatxanh@yahoo.com', '25f9e794323b453885f5181f1b624d0b', '2012-07-05 08:32:30', 'Bui Van Thinh', 2147483647, 'Ngô Tất Tố Q.BT', '0909206808', NULL, 'Vietcombank', 2147483647, 'user', 'vi', NULL, '2012-08-03 17:00:00', 0, 1, NULL, 'nhadat', 19, 'bds-kien-truc-xay-dung'),
('thuonghoi', 'info@thuonghoi.com', 'e10adc3949ba59abbe56e057f20f883e', '2012-07-04 09:05:19', 'Nguyễn Văn Hồng', 211577500, 'J7, KP1, P. Bửu Long, Biên Hòa, Đồng Nai', '0987001001', NULL, '', NULL, 'user', 'vi', NULL, '2012-08-02 17:00:00', 0, 1, NULL, 'nhadat', 19, 'bds-kien-truc-xay-dung'),
('trangnguyen', 'trangnguyen@yahoo.com.vn', '25f9e794323b453885f5181f1b624d0b', '2012-07-05 08:33:57', 'Nguyen Thi Trang', 1312412412, 'Gò Vấp', '0908934568', NULL, 'Vietcombank', 124012412, 'user', 'vi', NULL, '2012-08-03 17:00:00', 0, 1, NULL, 'nhadat', 19, 'bds-kien-truc-xay-dung'),
('tuyenhuynh1806', 'tuyenhuynh1806@gmail.com', 'a25199d4e859743c591356beaef70395', '2012-07-09 08:19:42', 'Huỳnh Tuyền', 280101673, 'Quân 1', '0908811930', NULL, '', NULL, 'user', 'vi', NULL, '2012-08-07 17:00:00', 0, 1, NULL, 'nhadat', 19, 'bds-kien-truc-xay-dung');

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
('address1', 'R4 - 16 Đường Hưng Gia 3 - Phú Mỹ Hưng Q.7 Tp.HCM', '', 'donghong3168@gmail.com'),
('address2', '', '', 'donghong3168@gmail.com'),
('company_name_footer', 'CÔNG TY CỔ PHẦN THƯƠNG MẠI - DỊCH VỤ BẤT ĐỘNG SẢN  KHANG DANH', '', 'donghong3168@gmail.com'),
('company_phone', '0916 368 001 (Mr Hoàng)', '', 'donghong3168@gmail.com'),
('copyright', 'Copyright © 2012 Nhaphodep.vn,  All right reserved', '', 'donghong3168@gmail.com');

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

-- --------------------------------------------------------

--
-- Table structure for table `dos_wards`
--

CREATE TABLE IF NOT EXISTS `dos_wards` (
  `ward_id` int(11) NOT NULL AUTO_INCREMENT,
  `ward_name` varchar(45) NOT NULL,
  `dos_districts_district` int(11) NOT NULL,
  PRIMARY KEY (`ward_id`),
  KEY `dos_districts_district` (`dos_districts_district`)
) ENGINE=InnoDB  DEFAULT CHARSET=utf8 AUTO_INCREMENT=324 ;

--
-- Dumping data for table `dos_wards`
--

INSERT INTO `dos_wards` (`ward_id`, `ward_name`, `dos_districts_district`) VALUES
(1, 'Phường 01', 563),
(2, 'Phường 02', 563),
(3, 'Phường 03', 563),
(4, 'Phường 04', 563),
(5, 'Phường 05', 563),
(6, 'Phường 06', 563),
(7, 'Phường 08', 563),
(8, 'Phường 09', 563),
(9, 'Phường 10', 563),
(10, 'Phường 12', 563),
(11, 'Phường 13', 563),
(12, 'Phường 14', 563),
(13, 'Phường 15', 563),
(14, 'Phường 16', 563),
(15, 'Phường 18', 563),
(16, 'Phường 01', 564),
(17, 'Phường 02', 564),
(18, 'Phường 03', 564),
(19, 'Phường 04', 564),
(20, 'Phường 05', 564),
(21, 'Phường 06', 564),
(22, 'Phường 07', 564),
(23, 'Phường 08', 564),
(24, 'Phường 09', 564),
(25, 'Phường 10', 564),
(26, 'Phường 11', 564),
(27, 'Phường 12', 564),
(28, 'Phường 13', 564),
(29, 'Phường 14', 564),
(30, 'Phường An Khánh', 565),
(31, 'Phường An Lợi Đông', 565),
(32, 'Phường An Phú', 565),
(33, 'Phường Bình An', 565),
(34, 'Phường Bình Khánh', 565),
(35, 'Phường Bình Trưng Đông', 565),
(36, 'Phường Bình Trưng Tây', 565),
(37, 'Phường Cát Lái', 565),
(38, 'Phường Thạnh Mỹ Lợi', 565),
(39, 'Phường Thảo Điền', 565),
(40, 'Phường Thủ Thiêm', 565),
(41, 'Phường An Phú Đông', 566),
(42, 'Phường Đông Hưng Thuận', 566),
(43, 'Phường Hiệp Thành', 566),
(44, 'Phường Tân Chánh Hiệp', 566),
(45, 'Phường Tân Hưng Thuận', 566),
(46, 'Phường Tân Thới Hiệp', 566),
(47, 'Phường Tân Thới Nhất', 566),
(48, 'Phường Thạnh Lộc', 566),
(49, 'Phường Thạnh Xuân', 566),
(50, 'Phường Thới An', 566),
(51, 'Phường Trung Mỹ Tây', 566),
(52, 'Phường 01', 567),
(53, 'Phường 02', 567),
(54, 'Phường 03', 567),
(55, 'Phường 04', 567),
(56, 'Phường 05', 567),
(57, 'Phường 06', 567),
(58, 'Phường 07', 567),
(59, 'Phường 08', 567),
(60, 'Phường 09', 567),
(61, 'Phường 10', 567),
(62, 'Phường 11', 567),
(63, 'Phường 12', 567),
(64, 'Phường 13', 567),
(65, 'Phường 14', 567),
(66, 'Phường 15', 567),
(67, 'Phường 16', 567),
(68, 'Phường 01', 568),
(69, 'Phường 02', 568),
(70, 'Phường 03', 568),
(71, 'Phường 04', 568),
(72, 'Phường 05', 568),
(73, 'Phường 06', 568),
(74, 'Phường 07', 568),
(75, 'Phường 08', 568),
(76, 'Phường 09', 568),
(77, 'Phường 10', 568),
(78, 'Phường 11', 568),
(79, 'Phường 12', 568),
(80, 'Phường 13', 568),
(81, 'Phường 14', 568),
(82, 'Phường 15', 568),
(83, 'Phường Bến Nghé', 569),
(84, 'Phường Bến Thành', 569),
(85, 'Phường Cầu Kho', 569),
(86, 'Phường Cầu Ông Lãnh', 569),
(87, 'Phường Cô Giang', 569),
(88, 'Phường Đa Kao', 569),
(89, 'Phường Nguyễn Cư Trinh', 569),
(90, 'Phường Nguyễn Thái Bình', 569),
(91, 'Phường Phạm Ngũ Lão', 569),
(92, 'Phường Tân Định', 569),
(93, 'Phường 01', 570),
(94, 'Phường 02', 570),
(95, 'Phường 03', 570),
(96, 'Phường 04', 570),
(97, 'Phường 05', 570),
(98, 'Phường 07', 570),
(99, 'Phường 08', 570),
(100, 'Phường 09', 570),
(101, 'Phường 10', 570),
(102, 'Phường 11', 570),
(103, 'Phường 12', 570),
(104, 'Phường 13', 570),
(105, 'Phường 14', 570),
(106, 'Phường 15', 570),
(107, 'Phường 17', 570),
(108, 'Thị trấn Nhà Bè', 571),
(109, 'Xã Hiệp Phước', 571),
(110, 'Xã Long Thới', 571),
(111, 'Xã Nhơn Đức', 571),
(112, 'Xã Phú Xuân', 571),
(113, 'Xã Phước Kiển', 571),
(114, 'Xã Phước Lộc', 571),
(115, 'Phường Bình Chiểu', 572),
(116, 'Phường Bình Thọ', 572),
(117, 'Phường Hiệp Bình Chánh', 572),
(118, 'Phường Hiệp Bình Phước', 572),
(119, 'Phường Linh Chiểu', 572),
(120, 'Phường Linh Đông', 572),
(121, 'Phường Linh Tây', 572),
(122, 'Phường Linh Trung', 572),
(123, 'Phường Linh Xuân', 572),
(124, 'Phường Tam Bình', 572),
(125, 'Phường Tam Phú', 572),
(126, 'Phường Trường Thọ', 572),
(127, 'Phường 01', 573),
(128, 'Phường 03', 573),
(129, 'Phường 04', 573),
(130, 'Phường 05', 573),
(131, 'Phường 06', 573),
(132, 'Phường 07', 573),
(133, 'Phường 08', 573),
(134, 'Phường 09', 573),
(135, 'Phường 10', 573),
(136, 'Phường 11', 573),
(137, 'Phường 12', 573),
(138, 'Phường 13', 573),
(139, 'Phường 14', 573),
(140, 'Phường 15', 573),
(141, 'Phường 16', 573),
(142, 'Phường 17', 573),
(143, 'Thị trấn Củ Chi', 574),
(144, 'Xã An Nhơn Tây', 574),
(145, 'Xã An Phú', 574),
(146, 'Xã Bình Mỹ', 574),
(147, 'Xã Hòa Phú', 574),
(148, 'Xã Nhuận Đức', 574),
(149, 'Xã Phạm Văn Cội', 574),
(150, 'Xã Phú Hòa Đông', 574),
(151, 'Xã Phú Mỹ Hưng', 574),
(152, 'Xã Phước Hiệp', 574),
(153, 'Xã Phước Thạnh', 574),
(154, 'Xã Phước Vĩnh An', 574),
(155, 'Xã Tân An Hội', 574),
(156, 'Xã Tân Phú Trung', 574),
(157, 'Xã Tân Thạnh Đông', 574),
(158, 'Xã Tân Thạnh Tây', 574),
(159, 'Xã Tân Thông Hội', 574),
(160, 'Xã Thái Mỹ', 574),
(161, 'Xã Trung An', 574),
(162, 'Xã Trung Lập Hạ', 574),
(163, 'Xã Trung Lập Thượng', 574),
(164, 'Thị trấn Cần Thạnh', 575),
(165, 'Xã An Thới Đông', 575),
(166, 'Xã Bình Khánh', 575),
(167, 'Xã Long Hòa', 575),
(168, 'Xã Lý Nhơn', 575),
(169, 'Xã Tam Thôn Hiệp', 575),
(170, 'Xã Thạnh An', 575),
(171, 'Phường 01', 576),
(172, 'Phường 02', 576),
(173, 'Phường 03', 576),
(174, 'Phường 05', 576),
(175, 'Phường 06', 576),
(176, 'Phường 07', 576),
(177, 'Phường 11', 576),
(178, 'Phường 12', 576),
(179, 'Phường 13', 576),
(180, 'Phường 14', 576),
(181, 'Phường 15', 576),
(182, 'Phường 17', 576),
(183, 'Phường 19', 576),
(184, 'Phường 21', 576),
(185, 'Phường 22', 576),
(186, 'Phường 24', 576),
(187, 'Phường 25', 576),
(188, 'Phường 26', 576),
(189, 'Phường 27', 576),
(190, 'Phường 28', 576),
(191, 'Phường An Lạc', 577),
(192, 'Phường An Lạc A', 577),
(193, 'Phường Bình Hưng Hòa', 577),
(194, 'Phường Bình Hưng Hoà A', 577),
(195, 'Phường Bình Hưng Hoà B', 577),
(196, 'Phường Bình Trị Đông', 577),
(197, 'Phường Bình Trị Đông A', 577),
(198, 'Phường Bình Trị Đông B', 577),
(199, 'Phường Tân Tạo', 577),
(200, 'Phường Tân Tạo A', 577),
(201, 'Thị trấn Tân Túc', 578),
(202, 'Xã An Phú Tây', 578),
(203, 'Xã Bình Chánh', 578),
(204, 'Xã Bình Hưng', 578),
(205, 'Xã Bình Lợi', 578),
(206, 'Xã Đa Phước', 578),
(207, 'Xã Hưng Long', 578),
(208, 'Xã Lê Minh Xuân', 578),
(209, 'Xã Phạm Văn Hai', 578),
(210, 'Xã Phong Phú', 578),
(211, 'Xã Quy Đức', 578),
(212, 'Xã Tân Kiên', 578),
(213, 'Xã Tân Nhựt', 578),
(214, 'Xã Tân Quý Tây', 578),
(215, 'Xã Vĩnh Lộc A', 578),
(216, 'Xã Vĩnh Lộc B', 578),
(217, 'Thị trấn Hóc Môn', 579),
(218, 'Xã Bà Điểm', 579),
(219, 'Xã Đông Thạnh', 579),
(220, 'Xã Nhị Bình', 579),
(221, 'Xã Tân Hiệp', 579),
(222, 'Xã Tân Thới Nhì', 579),
(223, 'Xã Tân Xuân', 579),
(224, 'Xã Thới Tam Thôn', 579),
(225, 'Xã Trung Chánh', 579),
(226, 'Xã Xuân Thới Đông', 579),
(227, 'Xã Xuân Thới Sơn', 579),
(228, 'Xã Xuân Thới Thượng', 579),
(229, 'Phường Hiệp Phú', 580),
(230, 'Phường Long Bình', 580),
(231, 'Phường Long Phước', 580),
(232, 'Phường Long Thạnh Mỹ', 580),
(233, 'Phường Long Trường', 580),
(234, 'Phường Phú Hữu', 580),
(235, 'Phường Phước Bình', 580),
(236, 'Phường Phước Long A', 580),
(237, 'Phường Phước Long B', 580),
(238, 'Phường Tân Phú', 580),
(239, 'Phường Tăng Nhơn Phú A', 580),
(240, 'Phường Tăng Nhơn Phú B', 580),
(241, 'Phường Trường Thạnh', 580),
(242, 'Phường 01', 581),
(243, 'Phường 02', 581),
(244, 'Phường 03', 581),
(245, 'Phường 04', 581),
(246, 'Phường 05', 581),
(247, 'Phường 06', 581),
(248, 'Phường 07', 581),
(249, 'Phường 08', 581),
(250, 'Phường 09', 581),
(251, 'Phường 10', 581),
(252, 'Phường 11', 581),
(253, 'Phường 12', 581),
(254, 'Phường 13', 581),
(255, 'Phường 14', 581),
(256, 'Phường 15', 581),
(257, 'Phường 16', 581),
(258, 'Phường Bình Thuận', 582),
(259, 'Phường Phú Mỹ', 582),
(260, 'Phường Phú Thuận', 582),
(261, 'Phường Tân Hưng', 582),
(262, 'Phường Tân Kiểng', 582),
(263, 'Phường Tân Phong', 582),
(264, 'Phường Tân Phú', 582),
(265, 'Phường Tân Quy', 582),
(266, 'Phường Tân Thuận Đông', 582),
(267, 'Phường Tân Thuận Tây', 582),
(268, 'Phường 01', 583),
(269, 'Phường 02', 583),
(270, 'Phường 03', 583),
(271, 'Phường 04', 583),
(272, 'Phường 05', 583),
(273, 'Phường 06', 583),
(274, 'Phường 07', 583),
(275, 'Phường 08', 583),
(276, 'Phường 09', 583),
(277, 'Phường 10', 583),
(278, 'Phường 11', 583),
(279, 'Phường 12', 583),
(280, 'Phường 13', 583),
(281, 'Phường 14', 583),
(282, 'Phường 01', 584),
(283, 'Phường 02', 584),
(284, 'Phường 03', 584),
(285, 'Phường 04', 584),
(286, 'Phường 05', 584),
(287, 'Phường 06', 584),
(288, 'Phường 07', 584),
(289, 'Phường 08', 584),
(290, 'Phường 09', 584),
(291, 'Phường 10', 584),
(292, 'Phường 11', 584),
(293, 'Phường 12', 584),
(294, 'Phường 13', 584),
(295, 'Phường 14', 584),
(296, 'Phường 15', 584),
(297, 'Phường Hiệp Tân', 585),
(298, 'Phường Hoà Thạnh', 585),
(299, 'Phường Phú Thạnh', 585),
(300, 'Phường Phú Thọ Hoà', 585),
(301, 'Phường Phú Trung', 585),
(302, 'Phường Sơn Kỳ', 585),
(303, 'Phường Tân Qúy', 585),
(304, 'Phường Tân Sơn Nhì', 585),
(305, 'Phường Tân Thành', 585),
(306, 'Phường Tân Thới Hoà', 585),
(307, 'Phường Tây Thạnh', 585),
(308, 'Phường 01', 586),
(309, 'Phường 02', 586),
(310, 'Phường 03', 586),
(311, 'Phường 04', 586),
(312, 'Phường 05', 586),
(313, 'Phường 06', 586),
(314, 'Phường 07', 586),
(315, 'Phường 08', 586),
(316, 'Phường 09', 586),
(317, 'Phường 10', 586),
(318, 'Phường 11', 586),
(319, 'Phường 12', 586),
(320, 'Phường 13', 586),
(321, 'Phường 14', 586),
(322, 'Phường 15', 586),
(323, '____', 2);

--
-- Constraints for dumped tables
--

--
-- Constraints for table `dos_configs`
--
ALTER TABLE `dos_configs`
  ADD CONSTRAINT `fk_dos_configs_dos_templates1` FOREIGN KEY (`dos_templates_template`) REFERENCES `dos_templates` (`template`) ON DELETE NO ACTION ON UPDATE NO ACTION;

--
-- Constraints for table `dos_districts`
--
ALTER TABLE `dos_districts`
  ADD CONSTRAINT `dos_districts_ibfk_2` FOREIGN KEY (`dos_provinces_province`) REFERENCES `dos_provinces` (`province_id`);

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
  ADD CONSTRAINT `dos_module_products_ibfk_5` FOREIGN KEY (`dos_wards_ward_id`) REFERENCES `dos_wards` (`ward_id`),
  ADD CONSTRAINT `dos_module_products_ibfk_2` FOREIGN KEY (`dos_districts_district_id`) REFERENCES `dos_districts` (`district_id`) ON DELETE CASCADE ON UPDATE CASCADE,
  ADD CONSTRAINT `dos_module_products_ibfk_3` FOREIGN KEY (`dos_module_item_type_type_id`) REFERENCES `dos_module_products_type` (`type_id`) ON DELETE CASCADE ON UPDATE CASCADE,
  ADD CONSTRAINT `dos_module_products_ibfk_4` FOREIGN KEY (`dos_username`) REFERENCES `dos_usernames` (`username`),
  ADD CONSTRAINT `fk_dos_module_products_dos_module_products_cat1` FOREIGN KEY (`dos_module_item_cat_cat_id`) REFERENCES `dos_module_products_cat` (`cat_id`) ON DELETE NO ACTION ON UPDATE NO ACTION;

--
-- Constraints for table `dos_module_products_cat`
--
ALTER TABLE `dos_module_products_cat`
  ADD CONSTRAINT `fk_dos_module_products_cat_dos_usernames1` FOREIGN KEY (`dos_usernames_username`) REFERENCES `dos_usernames` (`username`) ON DELETE NO ACTION ON UPDATE NO ACTION;

--
-- Constraints for table `dos_module_products_feature`
--
ALTER TABLE `dos_module_products_feature`
  ADD CONSTRAINT `dos_module_products_feature_ibfk_1` FOREIGN KEY (`product_id`) REFERENCES `dos_module_products` (`record_id`) ON DELETE CASCADE ON UPDATE CASCADE;

--
-- Constraints for table `dos_module_products_utility`
--
ALTER TABLE `dos_module_products_utility`
  ADD CONSTRAINT `dos_module_products_utility_ibfk_1` FOREIGN KEY (`product_id`) REFERENCES `dos_module_products` (`record_id`) ON DELETE CASCADE ON UPDATE CASCADE;

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

--
-- Constraints for table `dos_wards`
--
ALTER TABLE `dos_wards`
  ADD CONSTRAINT `dos_wards_ibfk_1` FOREIGN KEY (`dos_districts_district`) REFERENCES `dos_districts` (`district_id`);

/*!40101 SET CHARACTER_SET_CLIENT=@OLD_CHARACTER_SET_CLIENT */;
/*!40101 SET CHARACTER_SET_RESULTS=@OLD_CHARACTER_SET_RESULTS */;
/*!40101 SET COLLATION_CONNECTION=@OLD_COLLATION_CONNECTION */;
