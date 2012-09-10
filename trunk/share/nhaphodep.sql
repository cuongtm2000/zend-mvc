-- phpMyAdmin SQL Dump
-- version 3.4.5
-- http://www.phpmyadmin.net
--
-- Host: localhost
-- Generation Time: Sep 10, 2012 at 03:18 AM
-- Server version: 5.5.16
-- PHP Version: 5.3.8

SET SQL_MODE="NO_AUTO_VALUE_ON_ZERO";
SET time_zone = "+00:00";


/*!40101 SET @OLD_CHARACTER_SET_CLIENT=@@CHARACTER_SET_CLIENT */;
/*!40101 SET @OLD_CHARACTER_SET_RESULTS=@@CHARACTER_SET_RESULTS */;
/*!40101 SET @OLD_COLLATION_CONNECTION=@@COLLATION_CONNECTION */;
/*!40101 SET NAMES utf8 */;

--
-- Database: `nhaphodep`
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
(1, 'Nhà Phố Đẹp', '', '<p><a href="http://www.nhaphodep.vn">www.nhaphodep.vn</a> chuyên quảng cáo các sản phẩm BĐS là nơi đáng tin cậy để mọi người có thể quảng cáo các sản phẩm BĐS cần bán của mình</p>', '', 2169, '2012-07-04 08:13:47', 1, 1, NULL, NULL, 'nha-pho-dep', '', 'www.nhaphodep.vn chuyên quảng cáo các sản phẩm BĐS là nơi đáng tin cậy để mọi người có thể quảng cáo các sản phẩm BĐS cần bán của mình', '', 1, 'nhaphodep'),
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
) ENGINE=InnoDB  DEFAULT CHARSET=utf8 AUTO_INCREMENT=42 ;

--
-- Dumping data for table `dos_module_products`
--

INSERT INTO `dos_module_products` (`record_id`, `title`, `titleen`, `postdate`, `pic_thumb`, `pic_full`, `pic_desc`, `preview`, `previewen`, `content`, `contenten`, `tag`, `tagen`, `description`, `descriptionen`, `hits`, `record_order`, `unit`, `unit_currency`, `unit_unit`, `hot`, `specials`, `extra_field1`, `extra_field2`, `extra_field3`, `extra_field4`, `enable`, `dos_module_item_type_type_id`, `dos_module_item_cat_cat_id`, `dos_districts_district_id`, `dos_wards_ward_id`, `address`, `contact_name`, `contact_add`, `contact_mobile`, `contact_tel`, `dos_username`) VALUES
(38, 'Bán Gấp NhàĐường C1, phường 13, quận Tân Bình', '', '2012-07-04 07:38:03', NULL, NULL, NULL, '', '', '<p>Bán Gấp NhàĐường C1, phường 13, quận Tân Bình, mặt tiền đường nhựa 10m, DTKV : 4m x 28m, sổ hồng, hướng nam, nhà 1 trệt, 2 lầu, 3WC, 3PN, PK, NB, sân thượng, 2 sân trước sau, khu tập trung nhiều công ty, văn phòng. Giá 6.7 tỷ. Tel</p>', '', 'ban-gap-nhaduong-c1-phuong-13-quan-tan-binh', '', 'Bán Gấp NhàĐường C1, phường 13, quận Tân Bình, mặt tiền đường nhựa 10m, DTKV : 4m x 28m, sổ hồng, hướng nam, nhà 1 trệt, 2 lầu, 3WC, 3PN, PK, NB, sân thượng, 2 sân trước sau, khu tập trung nhiều công ty, văn phòng. Giá 6.7 tỷ. Tel', '', 35, 1, '6700000000', 'VND', 'Tổng diện tích', 0, NULL, NULL, NULL, NULL, NULL, 1, 1, 527, 582, 323, 'Đường C1, phường 13, quận Tân Bình', 'Minh Hoàng', '', '0906.808.00', '', 'nhaphodep'),
(40, 'Bán nhà mới cấp 4, có thể ở ngay tại Q.Bình Tân', '', '2012-07-05 02:00:07', NULL, NULL, NULL, '', '', '<p>Bán nhà mới cấp 4, có thể ở ngay tại Q.Bình Tân</p>\n<p>- Nhà mới cấp 4, có gác, gần chợ, trường học cấp 1,2,3, gần bệnh viện Bình Tân.. Hẻm 5m, xe hơi vào tận nơi. Điện nước chính đầy đủ.<br />- Đường tráng nhựa, khu dân cư đông đúc, an ninh, yên tĩnh, giao thông thuận tiện đi lại.<br />- Diện tích: 4m x 8m, SHCC<br />- Giá: 850 triệu (Tiếp người thiện chí mua nhà)<br />- Liên hệ chính chủ: 0903 684 478 - A.Hiếu</p>', '', 'ban-nha-moi-cap-4-co-the-o-ngay-tai-qbinh-tan', '', '', '', 9, 1, '850000000', 'VND', 'Tổng diện tích', 0, NULL, NULL, NULL, NULL, NULL, 1, 1, 527, 577, 323, '363/21/1, Đất Mới, Phường Bình Trị Đông A, Bình Tân, TP.Hồ Chí Minh', 'A.Hiếu', '', '0903 684 47', '', 'hhh'),
(41, 'Bán căn hộ XI River View-Q2.', '', '2012-07-05 02:23:28', NULL, NULL, NULL, '', '', '<p>Bán căn hộ XI River View-Q2.</p>\n<p>Vị Trí: Nguyễn Văn Hưởng, Thảo Điền<br />View sông Sài Gòn đẹp và không gian trong lành thoáng mát.<br />Tiện ích dịch vụ đầy đủ: gym, hồ bơi, thư viện…gần ngay trung tâm thành phố.<br />Gần các trường quốc tế Anh, Mỹ Úc…<br />Diện tích: 144,70m2, 145,01m2, 185,97m2, 201,56m2.(3 Phòng Ngủ)<br />Giá gốc chủ đầu tư: 2100USD/m2. Gồm VAT.<br />LH: 090.642.8018. Huỳnh Tín.</p>', '', 'ban-can-ho-xi-river-view-q2', '', '', '', 13, 1, '48000000', 'VND', 'm2', 0, NULL, NULL, NULL, NULL, NULL, 1, 1, 529, 565, 323, 'Nguyễn Văn Hưởng, Thảo Điền', 'Huỳnh Tín', '', '0906428018', '', 'nhaphodep');

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
) ENGINE=InnoDB  DEFAULT CHARSET=utf8 AUTO_INCREMENT=535 ;

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
) ENGINE=InnoDB  DEFAULT CHARSET=utf8 AUTO_INCREMENT=42 ;

--
-- Dumping data for table `dos_module_products_feature`
--

INSERT INTO `dos_module_products_feature` (`product_id`, `area`, `area_build`, `area_used`, `num_floor`, `sittingrom`, `bedroom`, `bathroom`, `other_room`, `direction`, `street`, `legal`, `road`) VALUES
(38, '4m x 28m', '4m x 4m', 112, 2, 1, 4, 4, 1, 'Đông Nam', '10m', 'Sổ hồng', 'C1'),
(40, '4m x 8m', '4m x 4m', 32, 1, 1, 1, 1, 1, 'Chưa xác định', '5m', 'Sổ hồng', 'Đất Mới'),
(41, 'm x m', 'm x m', 144, 12, NULL, NULL, NULL, NULL, 'Không xác định', '', 'Sổ hồng', 'Nguyễn Văn Hưởng');

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
) ENGINE=InnoDB  DEFAULT CHARSET=utf8 AUTO_INCREMENT=42 ;

--
-- Dumping data for table `dos_module_products_utility`
--

INSERT INTO `dos_module_products_utility` (`product_id`, `telephone`, `power_meter`, `heater`, `gara`, `cable_tv`, `water_meter`, `alarm_system`, `garden`, `internet`, `air_conditioner`, `parking`, `pool`, `furniture`) VALUES
(38, 1, 1, 1, 0, 1, 1, 1, 0, 1, 1, 0, 0, 1),
(40, 1, 1, 1, 0, 1, 1, 0, 0, 1, 1, 0, 0, 1),
(41, 1, 1, 1, 1, 1, 1, 1, 0, 1, 1, 1, 1, 1);

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
  ADD CONSTRAINT `dos_module_products_ibfk_2` FOREIGN KEY (`dos_districts_district_id`) REFERENCES `dos_districts` (`district_id`) ON DELETE CASCADE ON UPDATE CASCADE,
  ADD CONSTRAINT `dos_module_products_ibfk_3` FOREIGN KEY (`dos_module_item_type_type_id`) REFERENCES `dos_module_products_type` (`type_id`) ON DELETE CASCADE ON UPDATE CASCADE,
  ADD CONSTRAINT `dos_module_products_ibfk_4` FOREIGN KEY (`dos_username`) REFERENCES `dos_usernames` (`username`),
  ADD CONSTRAINT `dos_module_products_ibfk_5` FOREIGN KEY (`dos_wards_ward_id`) REFERENCES `dos_wards` (`ward_id`),
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
