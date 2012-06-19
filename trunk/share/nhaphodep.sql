-- phpMyAdmin SQL Dump
-- version 3.4.5
-- http://www.phpmyadmin.net
--
-- Host: localhost
-- Generation Time: Jun 19, 2012 at 02:22 AM
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
  `dos_provinces_province` int(11) NOT NULL,
  PRIMARY KEY (`district_id`),
  KEY `dos_provinces_province` (`dos_provinces_province`)
) ENGINE=InnoDB  DEFAULT CHARSET=utf8 AUTO_INCREMENT=1025 ;

--
-- Dumping data for table `dos_districts`
--

INSERT INTO `dos_districts` (`district_id`, `district_name`, `dos_provinces_province`) VALUES
(2, 'Long Xuyên', 1),
(3, 'Châu Thành', 1),
(4, 'Châu Phú', 1),
(5, 'An Phú', 1),
(6, 'Châu Đốc', 1),
(7, 'Chợ Mới', 1),
(8, 'Tri Tôn', 1),
(9, 'Thoại Sơn', 1),
(10, 'Phú Tân', 1),
(11, 'Tịnh Biên', 1),
(12, 'Tân Châu', 1),
(13, 'Vũng Tàu', 2),
(14, 'Xuyên Mộc', 2),
(15, 'Tân Thành', 2),
(16, 'Côn Đảo', 2),
(17, 'Châu Đức', 2),
(18, 'Đất Đỏ', 2),
(19, 'Long Điền', 2),
(20, 'Bà Rịa', 2),
(21, 'Thủ Dầu Một', 8),
(22, 'Dầu Tiếng', 8),
(23, 'Dĩ An', 8),
(24, 'Bến Cát', 8),
(25, 'Phú Giáo', 8),
(26, 'Thuận An', 8),
(27, 'Tân Uyên', 8),
(28, 'Đồng Phú', 10),
(29, 'Đồng Xoài', 10),
(30, 'Bù Gia Mập', 10),
(31, 'Bù Đăng', 10),
(32, 'Bù Đốp', 10),
(33, 'Chơn Thành', 10),
(34, 'Phước Long', 10),
(35, 'Lộc Ninh', 10),
(36, 'Hớn Quản', 10),
(37, 'Bình Long', 10),
(38, 'Hàm Thuận Nam', 11),
(39, 'Hàm Tân', 11),
(40, 'Phú Quý', 11),
(41, 'Phan Thiết', 11),
(42, 'Bắc Bình', 11),
(43, 'La Gi', 11),
(44, 'Hàm Thuận Bắc', 11),
(45, 'Đức Linh', 11),
(46, 'Tánh Linh', 11),
(47, 'Tuy Phong', 11),
(48, 'Tuy Phước', 9),
(49, 'Vĩnh Thạnh', 9),
(50, 'Vân Canh', 9),
(51, 'Tây Sơn', 9),
(52, 'An Nhơn', 9),
(53, 'Hoài Nhơn', 9),
(54, 'Qui Nhơn', 9),
(55, 'Phù Cát', 9),
(56, 'Phù Mỹ', 9),
(57, 'Hoài Ân', 9),
(58, 'An Lão', 9),
(59, 'Giá Rai', 3),
(60, 'Bạc Liêu', 3),
(61, 'Hồng Dân', 3),
(62, 'Vĩnh Lợi', 3),
(63, 'Phước Long', 3),
(64, 'Hoà Bình', 3),
(65, 'Đông Hải', 3),
(66, 'Yên Thế', 5),
(67, 'Yên Dũng', 5),
(68, 'Lạng Giang', 5),
(69, 'Lục Nam', 5),
(70, 'Lục Ngạn', 5),
(71, 'Bắc Giang', 5),
(72, 'Hiệp Hòa', 5),
(73, 'Sơn Động', 5),
(74, 'Tân Yên', 5),
(75, 'Việt Yên', 5),
(76, 'Ba Bể', 4),
(77, 'Bắc Kạn', 4),
(78, 'Bạch Thông', 4),
(79, 'Na Rì', 4),
(80, 'Ngân Sơn', 4),
(81, 'Pác Nặm', 4),
(82, 'Chợ Đồn', 4),
(83, 'Chợ Mới', 4),
(84, 'Bắc Ninh', 6),
(85, 'Lương Tài', 6),
(86, 'Yên Phong', 6),
(87, 'Gia Bình', 6),
(88, 'Tiên Du', 6),
(89, 'Thuận Thành', 6),
(90, 'Quế Võ', 6),
(91, 'Từ Sơn', 6),
(92, 'Thạnh Phú', 7),
(93, 'Bình Đại', 7),
(94, 'Chợ Lách', 7),
(95, 'Giồng Trôm', 7),
(96, 'Mỏ Cày Bắc', 7),
(97, 'Mỏ Cày Nam', 7),
(98, 'Ba Tri', 7),
(99, 'Bến Tre', 7),
(100, 'Châu Thành', 7),
(101, 'Hà Quảng', 13),
(102, 'Hòa An', 13),
(103, 'Cao Bằng', 13),
(104, 'Bảo Lâm', 13),
(105, 'Bảo Lạc', 13),
(106, 'Thông Nông', 13),
(107, 'Thạch An', 13),
(108, 'Quảng Uyên', 13),
(109, 'Phục Hòa', 13),
(110, 'Trà Lĩnh', 13),
(111, 'Trùng Khánh', 13),
(112, 'Nguyên Bình', 13),
(113, 'Hạ Lang', 13),
(114, 'Cà Mau', 12),
(115, 'Thới Bình', 12),
(116, 'Phú Tân', 12),
(117, 'Cái Nước', 12),
(118, 'Ngọc Hiển', 12),
(119, 'Trần Văn Thời', 12),
(120, 'U Minh', 12),
(121, 'Năm Căn', 12),
(122, 'Đầm Dơi', 12),
(123, 'Ô Môn', 14),
(124, 'Vĩnh Thạnh', 14),
(125, 'Phong Điền', 14),
(126, 'Ninh Kiều', 14),
(127, 'Thốt Nốt', 14),
(128, 'Thới Lai', 14),
(129, 'Cờ Đỏ', 14),
(130, 'Cái Răng', 14),
(131, 'Bình Thủy', 14),
(132, 'Đức Cơ', 21),
(133, 'Đắk Pơ', 21),
(134, 'Mang Yang', 21),
(135, 'Ia Pa', 21),
(136, 'Ia Grai', 21),
(137, 'KBang', 21),
(138, 'Krông Pa', 21),
(139, 'Kông Chro', 21),
(140, 'Ayun Pa', 21),
(141, 'An Khê', 21),
(142, 'Chư Păh', 21),
(143, 'Chư Prông', 21),
(144, 'Chư Pưh', 21),
(145, 'Chư Sê', 21),
(146, 'Phú Thiện', 21),
(147, 'Pleiku', 21),
(148, 'Đăk Đoa', 21),
(149, 'Mai Châu', 29),
(150, 'Lương Sơn', 29),
(151, 'Lạc Thủy', 29),
(152, 'Lạc Sơn', 29),
(153, 'Đà Bắc', 29),
(154, 'Yên Thủy', 29),
(155, 'Kim Bôi', 29),
(156, 'Kỳ Sơn', 29),
(157, 'Cao Phong', 29),
(158, 'Hoà Bình', 29),
(159, 'Tân Lạc', 29),
(160, 'Yên Minh', 22),
(161, 'Đồng Văn', 22),
(162, 'Bắc Mê', 22),
(163, 'Quản Bạ', 22),
(164, 'Quang Bình', 22),
(165, 'Vị Xuyên', 22),
(166, 'Xín Mần', 22),
(167, 'Mèo Vạc', 22),
(168, 'Hà Giang', 22),
(169, 'Hoàng Su Phì', 22),
(170, 'Bắc Quang', 22),
(171, 'Thanh Liêm', 23),
(172, 'Duy Tiên', 23),
(173, 'Bình Lục', 23),
(174, 'Kim Bảng', 23),
(175, 'Lý Nhân', 23),
(176, 'Phủ Lý', 23),
(177, 'Ứng Hòa', 24),
(178, 'Đống Đa', 24),
(179, 'Đông Anh', 24),
(180, 'Đan Phượng', 24),
(181, 'Từ Liêm', 24),
(182, 'Tây Hồ', 24),
(183, 'Quốc Oai', 24),
(184, 'Phú Xuyên', 24),
(185, 'Phúc Thọ', 24),
(186, 'Thanh Trì', 24),
(187, 'Thanh Oai', 24),
(188, 'Sóc Sơn', 24),
(189, 'Sơn Tây', 24),
(190, 'Thạch Thất', 24),
(191, 'Thường Tín', 24),
(192, 'Thanh Xuân', 24),
(193, 'Hai Bà Trưng', 24),
(194, 'Gia Lâm', 24),
(195, 'Chương Mỹ', 24),
(196, 'Cầu Giấy', 24),
(197, 'Ba Đình', 24),
(198, 'Ba Vì', 24),
(199, 'Long Biên', 24),
(200, 'Hà Đông', 24),
(201, 'Hoàng Mai', 24),
(202, 'Hoàn Kiếm', 24),
(203, 'Hoài Đức', 24),
(204, 'Mê Linh', 24),
(205, 'Mỹ Đức', 24),
(206, 'Can Lộc', 25),
(207, 'Kỳ Anh', 25),
(208, 'Hồng Lĩnh', 25),
(209, 'Hà Tĩnh', 25),
(210, 'Hương Khê', 25),
(211, 'Hương Sơn', 25),
(212, 'Lộc Hà', 25),
(213, 'Nghi Xuân', 25),
(214, 'Đức Thọ', 25),
(215, 'Vũ Quang', 25),
(216, 'Cẩm Xuyên', 25),
(217, 'Thạch Hà', 25),
(218, 'Yên Mỹ', 31),
(219, 'Văn Giang', 31),
(220, 'Ân Thi', 31),
(221, 'Mỹ Hào', 31),
(222, 'Hưng Yên', 31),
(223, 'Kim Động', 31),
(224, 'Khoái Châu', 31),
(225, 'Tiên Lữ', 31),
(226, 'Phù Cừ', 31),
(227, 'Văn Lâm', 31),
(228, 'Gia Lộc', 26),
(229, 'Chí Linh', 26),
(230, 'Cẩm Giàng', 26),
(231, 'Bình Giang', 26),
(232, 'Kim Thành', 26),
(233, 'Kinh Môn', 26),
(234, 'Hải Dương', 26),
(235, 'Nam Sách', 26),
(236, 'Tứ Kỳ', 26),
(237, 'Ninh Giang', 26),
(238, 'Thanh Hà', 26),
(239, 'Thanh Miện', 26),
(240, 'Tiên Lãng', 27),
(241, 'Dương Kinh', 27),
(242, 'Cát Hải', 27),
(243, 'An Dương', 27),
(244, 'An Lão', 27),
(245, 'Bạch Long Vĩ', 27),
(246, 'Kiến An', 27),
(247, 'Kiến Thụy', 27),
(248, 'Hải An', 27),
(249, 'Hồng Bàng', 27),
(250, 'Lê Chân', 27),
(251, 'Ngô Quyền', 27),
(252, 'Vĩnh Bảo', 27),
(253, 'Thuỷ Nguyên', 27),
(254, 'Đồ Sơn', 27),
(255, 'Long Mỹ', 28),
(256, 'Châu Thành', 28),
(257, 'Ngã Bảy', 28),
(258, 'Phụng Hiệp', 28),
(259, 'Châu Thành A', 28),
(260, 'Vị Thanh', 28),
(261, 'Vị Thủy', 28),
(262, 'Trường Sa', 32),
(263, 'Vạn Ninh', 32),
(264, 'Nha Trang', 32),
(265, 'Khánh Vĩnh', 32),
(266, 'Khánh Sơn', 32),
(267, 'Cam Ranh', 32),
(268, 'Diên Khánh', 32),
(269, 'Ninh Hòa', 32),
(270, 'Cam Lâm', 32),
(271, 'Giồng Riềng', 33),
(272, 'Giang Thành', 33),
(273, 'Gò Quao', 33),
(274, 'Phú Quốc', 33),
(275, 'An Minh', 33),
(276, 'An Biên', 33),
(277, 'Châu Thành', 33),
(278, 'Kiên Hải', 33),
(279, 'Kiên Lương', 33),
(280, 'Hà Tiên', 33),
(281, 'Hòn Đất', 33),
(282, 'Tân Hiệp', 33),
(283, 'U Minh Thượng', 33),
(284, 'Rạch Giá', 33),
(285, 'Vĩnh Thuận', 33),
(286, 'Đắk Hà', 34),
(287, 'Đắk Glei', 34),
(288, 'Đăk Tô', 34),
(289, 'Tu Mơ Rông', 34),
(290, 'Sa Thầy', 34),
(291, 'Kon Tum', 34),
(292, 'Kon Rẫy', 34),
(293, 'Kon Plông', 34),
(294, 'Ngọc Hồi', 34),
(295, 'Tân Uyên', 35),
(296, 'Phong Thổ', 35),
(297, 'Mường Tè', 35),
(298, 'Lai Châu', 35),
(299, 'Sìn Hồ', 35),
(300, 'Than Uyên', 35),
(301, 'Tam Đường', 35),
(302, 'Vĩnh Hưng', 39),
(303, 'Thủ Thừa', 39),
(304, 'Thạnh Hóa', 39),
(305, 'Cần Đước', 39),
(306, 'Cần Giuộc', 39),
(307, 'Bến Lức', 39),
(308, 'Châu Thành', 39),
(309, 'Mộc Hóa', 39),
(310, 'Đức Huệ', 39),
(311, 'Tân Trụ', 39),
(312, 'Tân Thạnh', 39),
(313, 'Tân An', 39),
(314, 'Tân Hưng', 39),
(315, 'Đức Hòa', 39),
(316, 'Sa Pa', 37),
(317, 'Si Ma Cai', 37),
(318, 'Văn Bàn', 37),
(319, 'Lào Cai', 37),
(320, 'Mường Khương', 37),
(321, 'Bắc Hà', 37),
(322, 'Bảo Yên', 37),
(323, 'Bảo Thắng', 37),
(324, 'Bát Xát', 37),
(325, 'Đức Trọng', 38),
(326, 'Đơn Dương', 38),
(327, 'Đạ Tẻh', 38),
(328, 'Đạ Huoai', 38),
(329, 'Đam Rông', 38),
(330, 'Lạc Dương', 38),
(331, 'Lâm Hà', 38),
(332, 'Bảo Lộc', 38),
(333, 'Bảo Lâm', 38),
(334, 'Cát Tiên', 38),
(335, 'Di Linh', 38),
(336, 'Đà Lạt', 38),
(337, 'Bình Gia', 36),
(338, 'Bắc Sơn', 36),
(339, 'Cao Lộc', 36),
(340, 'Chi Lăng', 36),
(341, 'Hữu Lũng', 36),
(342, 'Lộc Bình', 36),
(343, 'Lạng Sơn', 36),
(344, 'Đình Lập', 36),
(345, 'Tràng Định', 36),
(346, 'Vãn Lãng', 36),
(347, 'Văn Quan', 36),
(348, 'Trực Ninh', 40),
(349, 'Giao Thủy', 40),
(350, 'Hải Hậu', 40),
(351, 'Mỹ Lộc', 40),
(352, 'Nghĩa Hưng', 40),
(353, 'Nam Trực', 40),
(354, 'Nam Định', 40),
(355, 'Vụ Bản', 40),
(356, 'Ý Yên', 40),
(357, 'Xuân Trường', 40),
(358, 'Tân Kỳ', 41),
(359, 'Vinh', 41),
(360, 'Yên Thành', 41),
(361, 'Đô Lương', 41),
(362, 'Anh Sơn', 41),
(363, 'Con Cuông', 41),
(364, 'Cửa Lò', 41),
(365, 'Diễn Châu', 41),
(366, 'Thái Hòa', 41),
(367, 'Thanh Chương', 41),
(368, 'Quỳ Châu', 41),
(369, 'Tương Dương', 41),
(370, 'Quỳ Hợp', 41),
(371, 'Quỳnh Lưu', 41),
(372, 'Quế Phong', 41),
(373, 'Nam Đàn', 41),
(374, 'Nghi Lộc', 41),
(375, 'Nghĩa Đàn', 41),
(376, 'Hưng Nguyên', 41),
(377, 'Kỳ Sơn', 41),
(378, 'Kim Sơn', 42),
(379, 'Nho Quan', 42),
(380, 'Yên Mô', 42),
(381, 'Ninh Bình', 42),
(382, 'Tam Điệp', 42),
(383, 'Hoa Lư', 42),
(384, 'Gia Viễn', 42),
(385, 'Yên Khánh', 42),
(386, 'Phan Rang-Tháp Chàm', 43),
(387, 'Ninh Phước', 43),
(388, 'Ninh Hải', 43),
(389, 'Ninh Sơn', 43),
(390, 'Bác Ái', 43),
(391, 'Thuận Nam', 43),
(392, 'Thuận Bắc', 43),
(393, 'Yên Lập', 44),
(394, 'Đoan Hùng', 44),
(395, 'Lâm Thao', 44),
(396, 'Hạ Hòa', 44),
(397, 'Cẩm Khê', 44),
(398, 'Thanh Ba', 44),
(399, 'Tam Nông', 44),
(400, 'Thanh Sơn', 44),
(401, 'Thanh Thủy', 44),
(402, 'Phú Thọ', 44),
(403, 'Phù Ninh', 44),
(404, 'Việt Trì', 44),
(405, 'Tân Sơn', 44),
(406, 'Đồng Xuân', 45),
(407, 'Đông Hòa', 45),
(408, 'Tuy Hòa', 45),
(409, 'Tuy An', 45),
(410, 'Tây Hòa', 45),
(411, 'Phú Hòa', 45),
(412, 'Sông Hinh', 45),
(413, 'Sông Cầu', 45),
(414, 'Sơn Hòa', 45),
(415, 'Quảng Trạch', 46),
(416, 'Quảng Ninh', 46),
(417, 'Bố Trạch', 46),
(418, 'Minh Hóa', 46),
(419, 'Lệ Thủy', 46),
(420, 'Đồng Hới', 46),
(421, 'Tuyên Hóa', 46),
(422, 'Đông Giang', 47),
(423, 'Phước Sơn', 47),
(424, 'Quế Sơn', 47),
(425, 'Tây Giang', 47),
(426, 'Điện Bàn', 47),
(427, 'Đại Lộc', 47),
(428, 'Nam Trà My', 47),
(429, 'Hội An', 47),
(430, 'Bắc Trà My', 47),
(431, 'Duy Xuyên', 47),
(432, 'Hiệp Đức', 47),
(433, 'Nông Sơn', 47),
(434, 'Núi Thành', 47),
(435, 'Phú Ninh', 47),
(436, 'Tam Kỳ', 47),
(437, 'Thăng Bình', 47),
(438, 'Tiên Phước', 47),
(439, 'Nam Giang', 47),
(440, 'Mộ Đức', 48),
(441, 'Lý Sơn', 48),
(442, 'Minh Long', 48),
(443, 'Nghĩa Hành', 48),
(444, 'Bình Sơn', 48),
(445, 'Trà Bồng', 48),
(446, 'Sơn Tịnh', 48),
(447, 'Sơn Tây', 48),
(448, 'Ba Tơ', 48),
(449, 'Quảng Ngãi', 48),
(450, 'Tư Nghĩa', 48),
(451, 'Sơn Hà', 48),
(452, 'Tây Trà', 48),
(453, 'Đức Phổ', 48),
(454, 'Cẩm Phả', 49),
(455, 'Bình Liêu', 49),
(456, 'Ba Chẽ', 49),
(457, 'Hoành Bồ', 49),
(458, 'Hạ Long', 49),
(459, 'Hải Hà', 49),
(460, 'Móng Cái', 49),
(461, 'Đông Triều', 49),
(462, 'Đầm Hà', 49),
(463, 'Cô Tô', 49),
(464, 'Tiên Yên', 49),
(465, 'Quảng Yên', 49),
(466, 'Vân Đồn', 49),
(467, 'Uông Bí', 49),
(468, 'Vĩnh Linh', 50),
(469, 'Quảng Trị', 50),
(470, 'Đa Krông', 50),
(471, 'Đông Hà', 50),
(472, 'Hải Lăng', 50),
(473, 'Hướng Hóa', 50),
(474, 'Cam Lộ', 50),
(475, 'Cồn Cỏ', 50),
(476, 'Gio Linh', 50),
(477, 'Triệu Phong', 50),
(478, 'Châu Thành', 51),
(479, 'Kế Sách', 51),
(480, 'Long Phú', 51),
(481, 'Mỹ Tú', 51),
(482, 'Mỹ Xuyên', 51),
(483, 'Ngã Năm', 51),
(484, 'Trần Đề', 51),
(485, 'Vĩnh Châu', 51),
(486, 'Sóc Trăng', 51),
(487, 'Thạnh Trị', 51),
(488, 'Cù Lao Dung', 51),
(489, 'Sơn La', 52),
(490, 'Sốp Cộp', 52),
(491, 'Phù Yên', 52),
(492, 'Quỳnh Nhai', 52),
(493, 'Yên Châu', 52),
(494, 'Mộc Châu', 52),
(495, 'Mường La', 52),
(496, 'Mai Sơn', 52),
(497, 'Bắc Yên', 52),
(498, 'Thuận Châu', 52),
(499, 'Sông Mã', 52),
(500, 'Đông Sơn', 56),
(501, 'Yên Định', 56),
(502, 'Tĩnh Gia', 56),
(503, 'Vĩnh Lộc', 56),
(504, 'Quan Sơn', 56),
(505, 'Nga Sơn', 56),
(506, 'Mường Lát', 56),
(507, 'Hậu Lộc', 56),
(508, 'Hoằng Hóa', 56),
(509, 'Hà Trung', 56),
(510, 'Lang Chánh', 56),
(511, 'Bỉm Sơn', 56),
(512, 'Bá Thước', 56),
(513, 'Cẩm Thủy', 56),
(514, 'Triệu Sơn', 56),
(515, 'Thọ Xuân', 56),
(516, 'Thiệu Hóa', 56),
(517, 'Thường Xuân', 56),
(518, 'Thạch Thành', 56),
(519, 'Sầm Sơn', 56),
(520, 'Thanh Hóa', 56),
(521, 'Như Xuân', 56),
(522, 'Quan Hóa', 56),
(523, 'Quảng Xương', 56),
(524, 'Nông Cống', 56),
(525, 'Như Thanh', 56),
(526, 'Ngọc Lặc', 56),
(527, 'Kiến Xương', 54),
(528, 'Tiền Hải', 54),
(529, 'Hưng Hà', 54),
(530, 'Thái Thụy', 54),
(531, 'Quỳnh Phụ', 54),
(532, 'Thái Bình', 54),
(533, 'Vũ Thư', 54),
(534, 'Đông Hưng', 54),
(535, 'Đại Từ', 55),
(536, 'Võ Nhai', 55),
(537, 'Phổ Yên', 55),
(538, 'Phú Lương', 55),
(539, 'Phú Bình', 55),
(540, 'Sông Công', 55),
(541, 'Thái Nguyên', 55),
(542, 'Định Hóa', 55),
(543, 'Đồng Hỷ', 55),
(544, 'Hương Thủy', 57),
(545, 'Nam Đông', 57),
(546, 'Hương Trà', 57),
(547, 'Huế', 57),
(548, 'Quảng Điền', 57),
(549, 'Phong Điền', 57),
(550, 'Phú Lộc', 57),
(551, 'Phú Vang', 57),
(552, 'A Lưới', 57),
(553, 'Tân Phước', 58),
(554, 'Chợ Gạo', 58),
(555, 'Gò Công Đông', 58),
(556, 'Gò Công Tây', 58),
(557, 'Gò Công', 58),
(558, 'Tân Phú Đông', 58),
(559, 'Mỹ Tho', 58),
(560, 'Cai Lậy', 58),
(561, 'Cái Bè', 58),
(562, 'Châu Thành', 58),
(563, 'Quận 4', 30),
(564, 'Quận 3', 30),
(565, 'Quận 2', 30),
(566, 'Quận 12', 30),
(567, 'Quận 11', 30),
(568, 'Quận 10', 30),
(569, 'Quận 1', 30),
(570, 'Phú Nhuận', 30),
(571, 'Nhà Bè', 30),
(572, 'Thủ Đức', 30),
(573, 'Gò Vấp', 30),
(574, 'Củ Chi', 30),
(575, 'Cần Giờ', 30),
(576, 'Bình Thạnh', 30),
(577, 'Bình Tân', 30),
(578, 'Bình Chánh', 30),
(579, 'Hóc Môn', 30),
(580, 'Quận 9', 30),
(581, 'Quận 8', 30),
(582, 'Quận 7', 30),
(583, 'Quận 6', 30),
(584, 'Quận 5', 30),
(585, 'Tân Phú', 30),
(586, 'Tân Bình', 30),
(587, 'Trà Cú', 59),
(588, 'Trà Vinh', 59),
(589, 'Tiểu Cần', 59),
(590, 'Duyên Hải', 59),
(591, 'Càng Long', 59),
(592, 'Cầu Ngang', 59),
(593, 'Cầu Kè', 59),
(594, 'Châu Thành', 59),
(595, 'Chiêm Hóa', 60),
(596, 'Hàm Yên', 60),
(597, 'Lâm Bình', 60),
(598, 'Na Hang', 60),
(599, 'Yên Sơn', 60),
(600, 'Tuyên Quang', 60),
(601, 'Sơn Dương', 60),
(602, 'Tân Châu', 53),
(603, 'Trảng Bàng', 53),
(604, 'Tây Ninh', 53),
(605, 'Gò Dầu', 53),
(606, 'Dương Minh Châu', 53),
(607, 'Bến Cầu', 53),
(608, 'Châu Thành', 53),
(609, 'Hòa Thành', 53),
(610, 'Tân Biên', 53),
(611, 'Vĩnh Long', 61),
(612, 'Tam Bình', 61),
(613, 'Bình Tân', 61),
(614, 'Bình Minh', 61),
(615, 'Mang Thít', 61),
(616, 'Long Hồ', 61),
(617, 'Vũng Liêm', 61),
(618, 'Trà Ôn', 61),
(619, 'Tam Dương', 62),
(620, 'Phúc Yên', 62),
(621, 'Vĩnh Tường', 62),
(622, 'Vĩnh Yên', 62),
(623, 'Yên Lạc', 62),
(624, 'Lập Thạch', 62),
(625, 'Bình Xuyên', 62),
(626, 'Sông Lô', 62),
(627, 'Tam Đảo', 62),
(628, 'Trạm Tấu', 63),
(629, 'Trấn Yên', 63),
(630, 'Văn Yên', 63),
(631, 'Văn Chấn', 63),
(632, 'Mù Căng Chải', 63),
(633, 'Yên Bình', 63),
(634, 'Yên Bái', 63),
(635, 'Nghĩa Lộ', 63),
(636, 'Lục Yên', 63),
(637, 'Mường Nhé', 18),
(638, 'Mường Chà', 18),
(639, 'Tủa Chùa', 18),
(640, 'Mường Ảng', 18),
(641, 'Mường Lay', 18),
(642, 'Điện Biên Phủ', 18),
(643, 'Điện Biên Đông', 18),
(644, 'Tuần Giáo', 18),
(645, 'Điện Biên', 18),
(646, 'Thanh Khê', 15),
(647, 'Sơn Trà', 15),
(648, 'Hoà Vang', 15),
(649, 'Cẩm Lệ', 15),
(650, 'Liên Chiểu', 15),
(651, 'Hoàng Sa', 15),
(652, 'Hải Châu', 15),
(653, 'Ngũ Hành Sơn', 15),
(654, 'Ea Súp', 16),
(655, 'Ea Kar', 16),
(656, 'Ea H''leo', 16),
(657, 'M''Đrăk', 16),
(658, 'Lắk', 16),
(659, 'Krông Bông', 16),
(660, 'Krông Búk', 16),
(661, 'Krông Năng', 16),
(662, 'Krông Ana', 16),
(663, 'Krông Pắk', 16),
(664, 'Buôn Hồ', 16),
(665, 'Buôn Ma Thuột', 16),
(666, 'Buôn Đôn', 16),
(667, 'Cư Kuin', 16),
(668, 'Cư M''gar', 16),
(669, 'Đăk Glong', 17),
(670, 'Đăk Song', 17),
(671, 'Tuy Đức', 17),
(672, 'Đăk R''Lấp', 17),
(673, 'Đăk Mil', 17),
(674, 'Krông Nô', 17),
(675, 'Gia Nghĩa', 17),
(676, 'Cư Jút', 17),
(677, 'Vĩnh Cửu', 19),
(678, 'Tân Phú', 19),
(679, 'Trảng Bom', 19),
(680, 'Nhơn Trạch', 19),
(681, 'Thống Nhất', 19),
(682, 'Cẩm Mỹ', 19),
(683, 'Biên Hòa', 19),
(684, 'Long Thành', 19),
(685, 'Long Khánh', 19),
(686, 'Định Quán', 19),
(687, 'Xuân Lộc', 19),
(688, 'Tân Hồng', 20),
(689, 'Tháp Mười', 20),
(690, 'Cao Lãnh', 20),
(691, 'Châu Thành', 20),
(692, 'Hồng Ngự', 20),
(693, 'Lai Vung', 20),
(694, 'Lấp Vò', 20),
(695, 'Sa Đéc', 20),
(696, 'Tam Nông', 20),
(697, 'Thanh Bình', 20);

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
('cat_parent', 'Danh mục', 'Category', 1),
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
('district', 'Quận/huyện', NULL, 0),
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
('province', 'Tỉnh thành', NULL, 0),
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
('type_parent', 'Phân loại', NULL, 0),
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
) ENGINE=InnoDB DEFAULT CHARSET=utf8 AUTO_INCREMENT=1 ;

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
) ENGINE=InnoDB  DEFAULT CHARSET=utf8 AUTO_INCREMENT=3 ;

--
-- Dumping data for table `dos_module_advs`
--

INSERT INTO `dos_module_advs` (`record_id`, `title`, `titleen`, `pic_thumb`, `url`, `create_date`, `start_date`, `end_date`, `hits`, `record_order`, `position`, `type`, `enable`, `dos_usernames_username`) VALUES
(1, 'Quang cao phai', NULL, 'quang-cao-phai.jpg', 'http://hoiit.com/', '2012-06-15 08:38:15', '2012-06-14 16:00:00', '2013-06-05 16:00:00', 0, 1, 'right', '_bank', 1, 'nhaphodep'),
(2, 'Quảng cáo 2', NULL, 'quang-cao-2.jpg', 'http://mp3.zing.vn/radio', '2012-06-15 08:38:47', '2012-06-14 16:00:00', '2013-06-05 16:00:00', 0, 2, 'right', '_bank', 1, 'nhaphodep');

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
) ENGINE=InnoDB DEFAULT CHARSET=utf8 AUTO_INCREMENT=1 ;

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
) ENGINE=InnoDB  DEFAULT CHARSET=utf8 AUTO_INCREMENT=194 ;

--
-- Dumping data for table `dos_module_news`
--

INSERT INTO `dos_module_news` (`record_id`, `title`, `titleen`, `postdate`, `pic_thumb`, `preview`, `previewen`, `content`, `contenten`, `tag`, `tagen`, `description`, `descriptionen`, `hits`, `record_order`, `hot`, `extra_field1`, `extra_field2`, `enable`, `dos_module_item_cat_cat_id`) VALUES
(189, 'Anapurna M2 UV – Gia tăng tốc độ và sản lượng', '', '2012-06-02 17:50:24', 'anapurna-m2-uv--gia-tang-toc-do-va-san-luong.jpg', '<p>Agfa Graphics tự hào công bố dòng máy in phun mực UV khổ lớn Anapurna M2 UV. Dựa trên dòng máy in phun mực UV khổ lớn Anapurna M từng đạt giải thưởng công nghiệp và giải thưởng bán chạy nhất, Anapurna M2 là một hệ thống in phun mực UV thuộc dòng máy công nghiệp nặng có đầy đủ mọi chức năng.</p>', '', '<p><strong>Agfa Graphics tự hào công bố dòng máy in phun mực UV khổ lớn Anapurna M2 UV. Dựa trên dòng máy in phun mực UV khổ lớn Anapurna M từng đạt giải thưởng công nghiệp và giải thưởng bán chạy nhất, Anapurna M2 là một hệ thống in phun mực UV thuộc dòng máy công nghiệp nặng có đầy đủ mọi chức năng.</strong></p>\n<p><strong><img src="http://vhp.dos.vn/public/userfiles/image/vhp/image/nss_1314782881.jpg" alt="" width="459" height="345" /></strong></p>\n<p>Nhiều chức năng tự động được bổ sung đã giúp cho Anapurna M2 trở thành dòng máy dẫn đầu trong thị trường in phun mực UV khổ lớn. Hệ thống điều khiển lực hút chân không đồng bộ được thiết kế phù hợp cho phép vật liệu có thể đi qua trơn tru với tốc độ rất nhanh. Dãy cảm biến an toàn có nhiệm vụ bảo vệ đầu in trong trường hợp vật liệu in có độ dày không ổn định, và bộ phận ion hóa ngăn chặn sự tích điện xảy ra trên vật liệu, bảo đảm điều kiện tốt nhất cho việc phun mực chính xác do đó giúp đạt được chất lượng in cao nhất. Các bộ phận của Anapurna M2 được thiết kế theo tiêu chuẩn nhằm đáp ứng tối đa các nhu cầu sản xuất đòi hỏi cao. Anapurna M2 tăng số đầu in lên 6 đơn vị với 1024 lỗ phun mực cho phép gia tăng tốc độ in. Với thiết kế tiện lợi, máy điều khiển vật liệu theo dạng in cuộn rất vững chãi, vật liệu được đưa thẳng trực tiếp vào máy in thông qua hệ thống định vị vật liệu tự động.</p>\n<p>Willy Van Dromme, quản lý hệ thống kinh doanh in khổ lớn của Agfa Graphics nói: “Anapurna M2 là ý tưởng thích hợp cho nhu cầu in quảng cáo, in thương mại, in bảng hiệu và các phòng photo lab yêu cầu chất lượng cao. Nó được chế tạo thật bền bỉ nhằm phục vụ cho yêu cầu công nghiệp. Nó là dòng máy in phun mực UV cao cấp có thể đáp ứng tối đa các nhu cầu sản xuất đòi hỏi cao”.</p>\n<p>Anapurna M2 đáp ứng vật liệu có khổ bề rộng tối đa là 62inch (1,57m) và sử dụng đầu in mới nhất Konica-Minolta 12 pico cho phép in hình ảnh có độ phân giải không đồng nhất (unparalleled image) 720 x 1440dpi.</p>\n<p>Cả hai chế độ in hai chiều và một chiều đều sắc nét, thể hiện được nhiều chi tiết và chữ rõ nét. In ở chế độ 8 lần một chiều cho hình ảnh có chất lượng cao nhất, chế độ 4 lần hai chiều cho sản lượng in cao nhất, khoảng 23m2/giờ.</p>\n<p>Khi kết hợp sử dụng với mực in UV Anapurna do Afga chế tạo, Anapurna M2 cho chất lượng ảnh nhìn sắc nét với tốc độ in cao.</p>', '', 'anapurna-m2-uv-gia-tang-toc-do-va-san-luong', '', '', '', 0, 1, 0, '', '', 1, 109),
(190, 'Quite công bố phiên bản Quite Imposing Plus 3', '', '2012-06-02 17:52:41', 'quite-cong-bo-phien-ban-quite-imposing-plus-3.gif', '<p>Quite Software, công ty phát triển các giải pháp cho PDF trên toàn cầu vừa công bố phiên bản bình trang điện tử QUITE IMPOSING PLUS 3. Quite tập trung giải quyết những phản hồi của khách hàng về những yêu cầu của họ trong việc bình trang điện tử</p>', '', '<p>Quite Software, công ty phát triển các giải pháp cho PDF trên toàn cầu vừa công bố phiên bản bình trang điện tử QUITE IMPOSING PLUS 3. Quite tập trung giải quyết những phản hồi của khách hàng về những yêu cầu của họ trong việc bình trang điện tử. Những tính năng mới của Quite Imposing Plus 3 giúp cho công việc bình trang được nhanh chóng và thuận tiện hơn.Trong phiên bản update lần này, Quite nâng cấp các chức năng về xử lý trang trong PDF như: thêm trang, nhóm trang, nhân bản trang, chia tách trang, thay đổi kích thước trang, thêm dữ liệu biến đổi cho trang như thêm số trang, ngày và giờ, tên tài liệu. Quite củng bổ sung thêm chức năng Creep với việc cho khai báo độ dày giấy nhằm bù trừ hiện tượng các tay sách bên ngoài lệch so với các tay sách bên trong khi đóng xén. Quite cũng bổ sung thêm các chức năng cho phép chủ động hơn trong việc sử dụng Crop marks trong bình trang thủ công (Manual Imposition).</p>\n<p>Quite Imposing Plus 3 hỗ trợ đầy đủ cho phiên bản mới nhất của Acrobat X (10.0) và có thể làm việc với PDF/X-4 và PDF/X-5.</p>\n<p>Download Quite Imposing Plus 3 (Demo)</p>\n<p>Download Quite Imposing 3 (Demo)</p>\n<p>Vietnamprint</p>', '', 'quite-cong-bo-phien-ban-quite-imposing-plus-3', '', '', '', 0, 2, 0, '', '', 1, 109),
(191, 'Hà Nội ban hành đơn giá xây nhà ở mới', '', '2012-06-12 07:17:26', 'ha-noi-ban-hanh-don-gia-xay-nha-o-moi.jpg', '<p>UBND thành phố Hà Nội vừa ban hành bảng đơn giá xây dựng mới nhà ở, nhà tạm, vật kiến trúc làm cơ sở xác định giá trị bồi thường, hỗ trợ khi nhà nước thu hồi đất trên địa bàn.</p>', '', '<p>UBND thành phố Hà Nội vừa ban hành bảng đơn giá xây dựng mới nhà ở, nhà tạm, vật kiến trúc làm cơ sở xác định giá trị bồi thường, hỗ trợ khi nhà nước thu hồi đất trên địa bàn.</p>\r\n<p style="text-align:center;"><img src="/public/userfiles/image/nhaphodep/image/1323873989-365752.jpg" alt="" width="500" height="330" /></p>\r\n<p>Theo đó, đơn giá xây dựng nhà cấp 4 sẽ từ hơn 1,76 triệu đến trên 5,16 triệu đồng/m2; nhà cấp 3 có đơn giá từ trên 5,3 triệu đến trên 6,1 triệu đồng/m2.</p>\r\n<p>Giá xây dựng mới nhà cấp 4 một tầng (loại 1, loại 2) chưa bao gồm bể phốt, bể nước, còn nếu có trần mái ngói hoặc mái tôn thì được tính thêm tiền xây dựng. Về giá xây dựng mới nhà tạm, đơn giá dao động từ 362.000 đồng đến hơn 1,6 triệu đồng/m2.</p>\r\n<p>Đối với nhà bán mái, đơn giá cũng được quy định từ khoảng 667.000 đồng/m2 (mái giấy dầu) đến 943.000 đồng/m2 (nhà đất bán mái tường xây gạch). Giá xây dựng nhà sàn cũng dao động từ 494.000 đồng đến 1,42 triệu đồng/m2.</p>\r\n<p>Bên cạnh đó, thành phố cũng quy định đơn giá xây dựng chi tiết đối với quán bán hàng, sân, đường, tường rào, mái vẩy và các loại công trình khác như gác xép, giếng, cống, rãnh thoát nước...</p>\r\n<p>Giá xây dựng nhà ở cấp 3 từ cuối năm 2010 được thành phố quy định chỉ từ 4,3 triệu đến hơn 4,98 triệu đồng/m2.</p>', '', 'ha-noi-ban-hanh-don-gia-xay-nha-o-moi', '', 'UBND thành phố Hà Nội vừa ban hành bảng đơn giá xây dựng mới nhà ở, nhà tạm, vật kiến trúc làm cơ sở xác định giá trị bồi thường, hỗ trợ khi nhà nước thu hồi đất trên địa bàn.', '', 0, 3, 0, NULL, NULL, 1, 110),
(192, 'Thị trường bất động sản nhiều dấu hiệu khởi sắc', '', '2012-06-12 07:51:07', 'thi-truong-bat-dong-san-nhieu-dau-hieu-khoi-sac.jpg', '<p>Kể từ một tháng trở lại đây, thị trường nhà đất đã đón nhận nhiều chính sách tích cực. Đây được xem là động thái tốt nhằm kích thích thị trường bật dậy.</p>', '', '<p>Kể từ một tháng trở lại đây, thị trường nhà đất đã đón nhận nhiều chính sách tích cực. Đây được xem là động thái tốt nhằm kích thích thị trường bật dậy.</p>\r\n<p style="text-align:center;"><img src="/public/userfiles/image/nhaphodep/image/1339563833.jpg" alt="" width="300" height="195" /></p>\r\n<p><strong>Vốn được khơi thông</strong></p>\r\n<p>Đầu tuần trước, Thứ trưởng Bộ Xây dựng Nguyễn Trần Nam cho biết, trong 5 tháng đầu năm 2012, nhiều ngân hàng đang trong tình trạng tăng trưởng tín dụng âm. Như vậy, để đảm bảo mục tiêu tăng trưởng theo kế hoạch đã đề ra là 14%-15%, thì trong 7 tháng còn lại, các doanh nghiệp phải giải ngân hơn 300.000 tỉ đồng.</p>\r\n<p>Bên cạnh đó, vừa mới đây Ngân hàng nhà nước đã có quyết định điều chỉnh trần lãi suất huy động vốn xuống còn 9%/năm. Đây được xem là động lực lớn giúp những người đang có nhu cầu về nhà ở sớm ra quyết định mua nhà.</p>\r\n<p>Kế đến, việc Ngân hàng nhà nước yêu cầu tổ chức tín dụng điều chỉnh lãi suất cho vay đối với những hợp đồng cũ để giảm tải chi phí cho khách hàng.</p>\r\n<p>Ngoài ra, còn hàng loạt các giải pháp mới đã được Chính phủ thông qua nhằm mục đích hỗ trợ doanh nghiệp như chính sách giảm 50% tiền thuế đất phải nộp của năm 2012 đối với các tổ chức kinh tế, doanh nghiệp hoạt động trong lĩnh vực thương mại, dịch vụ đang được Nhà nước cho thuê đất trả tiền hằng năm.</p>\r\n<p>Các chủ dự án còn được gia hạn nộp tiền sử dụng đất. Theo đó, các chủ dự án đã có thông báo nộp thuế nhưng đến ngày 10/5/2012 chưa nộp hoặc chưa nộp đủ tiền thì được gia hạn tối đa 12 tháng kể từ ngày trên, nhưng khi nộp sẽ phải chịu phạt khoản tiền chậm nộp.</p>\r\n<p>Các chủ dự án có nghĩa vụ nộp thuế sử dụng đất phát sinh từ ngày 11/5 đến 31/12/2012 thì được gia hạn nộp tối đa 12 tháng và không tính khoản tiền phạt chậm nộp...</p>\r\n<p>Gia tăng hình thức hỗ trợ khách hàng</p>\r\n<p>Cùng với sự hỗ trợ tích cực từ chính sách tín dụng, nhiều chủ đầu tư dự án đã mạnh dạn tung ra các hình thức bán hàng mới trong đó tập trung hỗ trợ tối đa cho khách hàng của mình.</p>\r\n<p>Cụ thể, tại dự án Golden Land (Nguyễn Trãi), dự án Golden Palace (Mễ Trì), dự án Nam Đô Complex (Trương Định)…các chủ đầu tư đều đưa ra các gói hỗ trợ lãi suất trong đó chủ đầu tư Nam Đô Complex cam kết hỗ trợ 4% lãi suất cho khách hàng mua dự án. Dự án Golden Land hỗ trợ cho khách hàng vay mua nhà 100% lãi suất. Hay như dự án Golden Palace chủ đầu tư đã liên kết với ngân hàng cho các khách hàng mua nhà tại dự án vay 85% giá trị với lãi suất 16%/năm….</p>\r\n<p>Song hành cũng với chủ đầu tư, nhiều ngân hàng thương mại cũng đưa ra các mức lãi suất cho vay rất hấp dẫn nhằm kích thích nhu vay vay mua nhà người dân. Trong đó, ngân hàng HSBC Việt Nam giảmlãi suất cho vay 15,5%/năm, BIDV đã đưa ra mức lãi vay "sốc" là 10%/năm tại một số dự án, VIB là 14,2%/năm trong 3 tháng đầu, Vietcombank là 13%...</p>\r\n<p>Thị trường có tín hiệu khởi sắc</p>\r\n<p>Sau khi một loạt các thông tin tốt được đưa ra, thị trường bất động sản đã có nhiều tín hiệu khởi sắc trở lại. Trong đó, nhiều dự án mở bán tại thời điểm này đã tạo được sức hút cho khách hàng. Nhiều người có nhu cầu thực về nhà ở đã bắt đầu rục rịch vay tiền mua nhà. Họ lo ngại khi dòng tiền được mở, nhiều người sẽ có thể mua nhà và với quan hệ cung cầu thì có thể giá nhà sẽ bị đẩy lên cao sau một thời gian ngắn nữa.</p>\r\n<p>Đơn cử, như dự án chung cư CT8A KĐT Đại Thanh vừa được mở bán cuối tuần trước với mức giá xấp xỉ 600 triệu đồng/căn, diện tích căn hộ từ 44 - 66m2/căn và giá bán từ 14 đến 14,3 triệu đồng/m2 đã bao gồm cả VAT. Đây là mức giá rất hấp dẫn với những người thu nhập thấp và có nhu cầu về nhà ở. Chính vì vậy, ngay ngày đầu mở bán đã có nhiều khách hàng đặt cọc và đóng tiền đợt 1 hơn 120 căn.</p>\r\n<p>Tương tự, tại dự án Golden Palace (Mễ Trì), sau khi chủ đầu tư áp dụng chính sách giảm giá bán từ 180-320 triệu đồng/căn cho khách hàng cũ và mới, nhiều khách hàng có nhu cầu về nhà ở đã quyết định mua tại thời điểm này….</p>\r\n<p>Động thái này cho thấy thị trường bất động sản đã dần xuất hiện tâm lý bắt đáy. Tuy nhiên trong bối cảnh nguồn cung dồi dào và quá nhiều dự án bị ngưng trệ, chủ đầu tư gặp khó khăn, dự án đình đốn thì đâu sẽ là những dự án người mua tìm tới. Với thời “khách hàng là thượng đế”, cuộc đua tranh người mua đã thực sự là bài toán buộc các nhà đầu tư bất động sản còn trụ lại của thị trường bất động sản phải cân não.</p>', '', 'thi-truong-bat-dong-san-nhieu-dau-hieu-khoi-sac', '', 'Kể từ một tháng trở lại đây, thị trường nhà đất đã đón nhận nhiều chính sách tích cực. Đây được xem là động thái tốt nhằm kích thích thị trường bật dậy.', '', 0, 4, 0, NULL, NULL, 1, 111),
(193, 'Bất động sản và mối quan hệ hữu cơ', '', '2012-06-12 07:52:23', 'bat-dong-san-va-moi-quan-he-huu-co.jpg', '<p>Bất động sản (BĐS) và mối quan hệ với ngân hàng, lạm phát, phát triển kinh tế, an sinh xã hội trong tái cấu trúc nền kinh tế.</p>', '', '<p><strong>Bất động sản (BĐS) và mối quan hệ với ngân hàng, lạm phát, phát triển kinh tế, an sinh xã hội trong tái cấu trúc nền kinh tế.</strong></p>\r\n<p style="text-align:center;"><img src="/public/userfiles/image/nhaphodep/image/1339466332.jpg" alt="" width="300" height="240" /></p>\r\n<p>Gần đây có nhận định cho rằng, Việt Nam đang đứng trước nhiều nguy cơ như công nghệ lạc hậu, hạ tầng kỹ thuật yếu kém, nhân lực trình độ thấp, vốn còn hạn chế… Song nếu chúng ta có giải pháp thích hợp, khắc phục được những nguy cơ trên thì đó lại là cơ hội, tạo thêm động lực hỗ trợ tăng trưởng kinh tế, việc làm, tạo ra những giá trị gia tăng mà các nước phát triển như Mỹ, Nhật Bản, Singapore… không có được.</p>\r\n<p>Nguy cơ từ BĐS giá cao</p>\r\n<p>Về kinh tế, có lẽ nguy cơ lớn nhất hiện nay là chúng ta “chưa quyết liệt giải quyết và chưa giải quyết cốt lõi vấn đề BĐS giá cao”. Lý do là, BĐS giá cao thường tạo bong bóng và luôn là nguyên nhân số 1 gây khủng hoảng tài chính quốc gia hoặc toàn cầu. Thế nhưng, một khi chính phủ các nước quyết liệt xử lý hạ nhiệt BĐS thì nền kinh tế sẽ sớm phục hồi. Điều này được kiểm chứng qua thực tế tại một số quốc gia Đông Nam Á năm 1998 và ở Mỹ hiện nay. Do vậy, BĐS giá cao không phải là nguy cơ lâu dài nếu quyết liệt xử lý, mà nguy cơ thực sự nằm ở chỗ có quyết liệt xử lý vấn đề BĐS giá cao hay không.</p>\r\n<p>Đang có những động thái trong việc hướng các chính sách giải cứu BĐS giúp kinh tế phát triển. Trong những động thái đó, đã có những nhận định cố lờ đi một thực tế là, đầu cơ BĐS đẩy giá cao trong những năm qua là tác nhân quan trọng, dẫn đến những khó khăn cho nền kinh tế hiện nay. Trên thực tế, đầu tư BĐS giá cao còn dẫn đến các nguy cơ mang tính cốt lõi dưới đây:<br />Thứ nhất, vốn đầu tư bị hút vào lĩnh vực BĐS vừa làm tăng bong bóng BĐS, vừa gây ra tình trạng thiếu vốn phát triển sản xuất, kinh doanh. Kết quả là, sản xuất hàng hoá giảm, lạm phát tăng, nền kinh tế thiếu tiền (do vốn quay vòng chậm) và giảm đà tăng trưởng, số việc làm giảm, lãi suất tăng.</p>\r\n<p>Thứ hai, các doanh nghiệp chuyển sang kinh doanh BĐS sẽ không dồn sức phát triển ngành nghề sản xuất, kinh doanh chính (thực tiễn 2007 - 2011 đã cho thấy điều đó). Hệ quả là, hàng hoá tăng giá, việc làm giảm, năng lực kinh tế quốc gia suy yếu, lạm phát bị cộng hưởng, kinh tế đình đốn, tình hình an sinh xã hội bị tác động tiêu cực.</p>\r\n<p>Thứ ba, BĐS giá cao sẽ khiến bài toán vốn cho phát triển hạ tầng kỹ thuật đô thị ngày càng phức tạp; vấn đề nhà ở ngày càng khó giải quyết, diện tích đất nông nghiệp và tài nguyên môi trường luôn bị đe doạ, doanh nghiệp sản xuất và dịch vụ phải chịu thêm nhiều chi phí. Đó là chưa kể, BĐS giá cao sẽ trực tiếp làm tổn hại tới năng lực cạnh tranh quốc gia.</p>\r\n<p>Thứ tư, BĐS được duy trì giá cao sẽ khiến hệ thống ngân hàng phụ thuộc nhiều hơn vào sức khoẻ của thị trường BĐS, kéo theo đó là rủi ro trong hệ thống ngân hàng tăng mạnh. Nếu không cương quyết xử lý vấn đề này thì sẽ xuất hiện khủng hoảng tài chính tầm quốc gia.</p>\r\n<p>Tựu trung, để tái cấu trúc nền kinh tế theo hướng bền vững, cần lưu ý các quan điểm sau:</p>\r\n<p>Một là, không thể phát triển kinh tế bền vững nếu duy trì BĐS giá cao.</p>\r\n<p>Hai là, không thể bảo vệ giá BĐS để hỗ trợ hệ thống tài chính ngân hàng</p>\r\n<p>Ba là, không thể giải quyết vấn đề BĐS - ngân hàng riêng lẻ, mà phải giải quyết toàn cục vấn đề lạm phát – ngân hàng – tăng trưởng kinh tế - an sinh xã hội.</p>\r\n<p>Đề xuất hướng giải quyết</p>\r\n<p>Hình 1 cho thấy, tỷ lệ tín dụng/GDP có xu hướng ngày càng tăng, ngay cả năm 2011 (là năm Chính phủ siết mạnh quản lý tiền tệ), tỷ lệ này vẫn tăng. Sự gia tăng tỷ lệ tín dụng/GDP giai đoạn 2006 – 2011 cho thấy mối quan hệ chặt chẽ giữa CPI và tăng trưởng tín dụng, song mức tăng lại không tương xứng, trong đó có nguyên nhân quan trọng là đầu cơ vào BĐS quá lớn. Thực trạng đó khiến nền kinh tế ngày càng thâm dụng vốn, mặc dù chúng ta đưa ra khá nhiều giải pháp để gia tăng giá trị sản xuất.</p>\r\n<p>Nhằm khắc phục những bất hợp lý trên, có thể xem việc tăng cung tiền có kiểm soát vào quý II/2012 là giải pháp ngắn hạn quan trọng nhất để kích thích kinh tế, song phải kiểm soát thật chặt, không cho dòng tiền lại chuyển vào đầu cơ BĐS (tham khảo hình 2).</p>\r\n<p>Về ngắn hạn, hướng giải quyết trong năm 2012 có thể là:</p>\r\n<p>Trước hết, thực hiện nghiêm việc xử lý huy động vượt trần lãi suất. Sau nữa, phải giám sát chặt nguồn vốn tín dụng, hướng dòng tín dụng vào cho vay nông nghiệp, sản xuất, dịch vụ (phi tài chính), tiêu dùng (trừ vay đầu cơ BĐS). Kiên quyết xử lý các hoạt động đảo nợ BĐS sân sau, hoạt động đảo nợ của doanh nghiệp lớn có thể làm trì hoãn tiến trình xử lý BĐS hoặc dung dưỡng mối quan hệ BĐS - ngân hàng để trục lợi nhóm. Cuối cùng, phải chuẩn bị một lượng tiền thích hợp để kịp thời xử lý các ngân hàng yếu kém có dư nợ tín dụng BĐS lớn theo hướng quyết liệt thanh lý BĐS, thu hồi vốn vay. Đây là hoạt động tiên quyết trong việc giải quyết nợ, tăng khả năng thanh khoản cho hệ thống ngân hàng và góp phần hạ nhiệt giá BĐS.</p>\r\n<p>Tất cả các hoạt động này phải được tiến hành đồng bộ, quyết liệt, kết hợp với việc cung tiền trong ngắn hạn và giải pháp tái cấu trúc hệ thống ngân hàng. Nếu làm như trên, thì lượng cung tiền sẽù mạnh hơn các tháng đầu năm, nhưng lạm phát sẽ không tăng cao như năm 2011. Ngoài ra, do dòng tiền tập trung, nên hoạt động sản xuất, kinh doanh cũng thuận lợi hơn, nguồn vốn sẽ được tăng cường cho khu vực kinh tế thực, lãi suất sẽ ở mức hợp lý hơn.</p>\r\n<p>Một khi các biện pháp trên được thực hiện quyết liệt trong 6 tháng cuối năm, thì kinh tế có thể đi vào xu thế mới trong quý III/2012, tạo hiệu ứng gia tăng sản xuất hàng hoá, tăng việc làm, kích thích tiêu dùng.</p>\r\n<p>Về dài hạn, cần xem việc tập trung hạ nhiệt giá BĐS trong mối quan hệ xử lý nợ BĐS và xử lý nợ của các ngân hàng thương mại như là yếu tố quan trọng trong chiến lược phát triển kinh tế bền vững, đồng thời phải thực hiện kiên trì trong vòng 3 - 5 năm.</p>\r\n<p>Hướng xử lý có thể là:</p>\r\n<p>- Quyết liệt thực hiện việc tách hoạt động đầu tư khỏi hệ thống ngân hàng thương mại theo lộ trình. Hình thành hệ thống các định chế tài chính chuyên biệt với hành lang pháp lý rõ ràng, bao gồm ngân hàng bán lẻ, ngân hàng đầu tư, quỹ đầu tư….</p>\r\n<p>- Thay đổi nguồn thu tài sản BĐS hiện nay theo hướng tương tự như các nước phát triển đã làm. Giảm thu tiền sử dụng đất để đảm bảo mọi người dân có khả năng tài chính hợp pháp hoá sở hữu nhà, song cần đánh thuế tài sản BĐS hàng năm theo giá thị trường. Mức thuế này đủ cao để điều tiết những người có trên 1 căn nhà, nhưng đủ thấp để người sở hữu có thể khai thác cho thuê và nộp thuế, tạo điều kiện cho các nhà kinh doanh BĐS xây nhà cho thuê ở, làm văn phòng… Tại các nước phát triển, mức thuế này dao động từ 0,5 - 2% trên trị giá BĐS.</p>\r\n<p>Như vậy, ngân sách luôn có nguồn tiền hàng năm để phát triển hạ tầng và an sinh xã hội, người giàu có nhiều BĐS sẽ phải nộp thuế BĐS hàng năm, qua đó điều tiết, đảm bảo công bằng, an sinh xã hội. Lĩnh vực BĐS sẽ được đầu tư khai thác, tạo giá trị gia tăng cho nhà đầu tư và nền kinh tế.</p>\r\n<p>- Chỉ cho phép doanh nghiệp BĐS bán nhà, không cho bán đất nền. Điều này sẽ góp phần giảm tình trạng đầu cơ lướt sóng, bởi doanh nghiệp phải chọn lọc đầu tư theo nhu cầu và BĐS sẽ được sử dụng nhằm tạo ra giá trị để ở hoặc nguồn thu nếu cho thuê.</p>\r\n<p>Tất cả giải pháp trên cần được nghiên cứu đầy đủ, thực hiện đồng bộ, dựa trên quan điểm xoá bỏ việc duy trì BĐS giá cao, với các quy định rõ ràng. Ở đây cũng cần tránh việc áp đặt giá hoặc trợ giá nhà thông qua các chương trình ưu đãi, bởi điều đó sẽ làm méo mó thị trường, hình thành cơ chế bao cấp, xin – cho.</p>', '', 'bat-dong-san-va-moi-quan-he-huu-co', '', 'Bất động sản (BĐS) và mối quan hệ với ngân hàng, lạm phát, phát triển kinh tế, an sinh xã hội trong tái cấu trúc nền kinh tế.', '', 0, 5, 0, NULL, NULL, 1, 111);

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
) ENGINE=InnoDB  DEFAULT CHARSET=utf8 AUTO_INCREMENT=112 ;

--
-- Dumping data for table `dos_module_news_cat`
--

INSERT INTO `dos_module_news_cat` (`cat_id`, `cat_parent_id`, `cat_title`, `cat_titleen`, `preview`, `previewen`, `tag`, `tagen`, `description`, `descriptionen`, `pic_full`, `cat_order`, `cat_extra1`, `cat_extra2`, `cat_enable`, `dos_usernames_username`) VALUES
(109, 0, 'Tin trong nước', '', '', '', 'tin-trong-nuoc', '', '', '', '', 1, '', '', 1, 'nhaphodep'),
(110, 0, 'Tin tức Thông tin Nhà đất mới nhất', '', NULL, NULL, 'tin-tuc-thong-tin-nha-dat-moi-nhat', '', 'Tin tức Thông tin Nhà đất mới nhất', '', '', 2, NULL, NULL, 1, 'nhaphodep'),
(111, 0, 'Thị trường bật động sản', '', NULL, NULL, 'thi-truong-bat-dong-san', '', 'Thị trường bật động sản', '', '', 3, NULL, NULL, 1, 'nhaphodep');

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
  `hot` tinyint(1) NOT NULL DEFAULT '0',
  `specials` tinyint(1) DEFAULT NULL,
  `extra_field1` varchar(100) DEFAULT NULL,
  `extra_field2` varchar(100) DEFAULT NULL,
  `extra_field3` varchar(100) DEFAULT NULL,
  `extra_field4` varchar(100) DEFAULT NULL,
  `enable` tinyint(1) NOT NULL DEFAULT '1',
  `dos_module_item_type_type_id` int(11) NOT NULL,
  `dos_module_item_cat_cat_id` int(11) NOT NULL,
  `dos_provinces_province_id` int(11) NOT NULL,
  `dos_districts_district_id` int(11) NOT NULL,
  PRIMARY KEY (`record_id`),
  KEY `fk_dos_module_products_dos_module_products_cat1` (`dos_module_item_cat_cat_id`),
  KEY `dos_provinces_province` (`dos_provinces_province_id`),
  KEY `dos_provinces_province_id` (`dos_provinces_province_id`),
  KEY `dos_districts_district_id` (`dos_districts_district_id`),
  KEY `dos_module_item_type_type_id` (`dos_module_item_type_type_id`)
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
) ENGINE=InnoDB  DEFAULT CHARSET=utf8 AUTO_INCREMENT=535 ;

--
-- Dumping data for table `dos_module_products_cat`
--

INSERT INTO `dos_module_products_cat` (`cat_id`, `cat_parent_id`, `cat_title`, `cat_titleen`, `preview`, `previewen`, `tag`, `tagen`, `description`, `descriptionen`, `pic_full`, `pic_desc`, `cat_order`, `cat_extra1`, `cat_extra2`, `cat_enable`, `dos_usernames_username`) VALUES
(516, 0, 'Bộ ấn phẩm văn phòng', '', '', '', 'bo-an-pham-van-phong', '', '', '', 'bo-an-pham-van-phong.jpg', '', 1, '', '', 1, 'nhaphodep'),
(517, 0, 'Brochure', '', '', '', 'brochure', '', '', '', 'brochure.jpg', '', 2, '', '', 1, 'nhaphodep'),
(518, 0, 'Catalogue', '', '', '', 'catalogue', '', '', '', 'catalogue.jpg', '', 3, '', '', 1, 'nhaphodep'),
(519, 0, 'Folder', '', '', '', 'folder', '', '', '', 'folder.jpg', '', 4, '', '', 1, 'nhaphodep'),
(520, 0, 'Lịch độc quyền', '', '', '', 'lich-doc-quyen', '', '', '', 'lich-doc-quyen.jpg', '', 5, '', '', 1, 'nhaphodep'),
(521, 0, 'Tờ rơi', '', '', '', 'to-roi', '', '', '', 'to-roi.jpg', '', 6, '', '', 1, 'nhaphodep'),
(522, 0, 'Túi giấy', '', '', '', 'tui-giay', '', '', '', 'tui-giay.jpg', '', 7, '', '', 1, 'nhaphodep'),
(523, 0, 'Bao bì carton', '', '', '', 'bao-bi-carton', '', '', '', 'bao-bi-carton.jpg', '', 8, '', '', 1, 'nhaphodep'),
(524, 0, 'Poster', '', '', '', 'poster', '', '', '', 'poster.jpg', '', 9, '', '', 1, 'nhaphodep'),
(525, 0, 'Thiệp', '', '', '', 'thiep', '', '', '', 'thiep.jpg', '', 10, '', '', 1, 'nhaphodep'),
(526, 0, 'Danh thiếp', '', '', '', 'danh-thiep', '', '', '', 'danh-thiep.jpg', '', 11, '', '', 1, 'nhaphodep'),
(527, 0, 'Bandroll - Bảng quảng cáo', '', '', '', 'bandroll-bang-quang-cao', '', '', '', 'bandroll-bang-quang-cao.jpg', '', 12, '', '', 1, 'nhaphodep'),
(534, 0, 'In kỹ thuật số khổ lớn', '', '', '', 'in-ky-thuat-so-kho-lon', '', '', '', 'in-ky-thuat-so.jpg', '', 13, '', '', 1, 'nhaphodep');

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
(1, 'Nhà bán', 'nha-ban', NULL, 1, 1, ''),
(2, 'Cho thuê', 'cho-thue', NULL, 1, 1, ''),
(3, 'Sang nhượng', 'sang-nhuong', NULL, 3, 1, '');

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
) ENGINE=InnoDB  DEFAULT CHARSET=utf8 AUTO_INCREMENT=105 ;

--
-- Dumping data for table `dos_module_services`
--

INSERT INTO `dos_module_services` (`record_id`, `title`, `titleen`, `preview`, `previewen`, `content`, `contenten`, `pic_full`, `hit`, `created`, `record_order`, `hot`, `extra_field1`, `extra_field2`, `tag`, `tagen`, `description`, `descriptionen`, `activated`, `dos_usernames_username`) VALUES
(101, 'Dịch vụ Tư vấn Phong thủy Nhà ở, Văn phòng', '', '', '', '<p>Dịch vụ Tư vấn Phong thủy Nhà ở, Biệt thự, Văn phòng, Nhà hàng, Khách sạn, Quán Bar... Tư vấn Chọn đất, Mua nhà, chọn Hướng nhà, Hướng cửa, Màu sắc, Xem tuổi chủ nhà<br />Tư vấn Phong thuỷ, Nhà đất bao gồm:<br />Tư vấn chọn đất, mua nhà, cải tạo đất theo tuổi chủ nhà theo phong thuỷ<br />Tư vấn chọn hướng cửa chính, vị trí phòng ốc, cửa đi, cửa sổ<br />Tư vấn sự lưu thông không khí, không gian tránh tụ khí, ám khí<br />Tư vấn chọn màu sắc, chất liệu, cách bố trí các vật dụng, đồ đạc trong phòng theo ngũ hành<br />Tư vấn chọn màu sơn tường, sơn cửa, màu thảm, màu rèm theo ngũ hành<br />Xác định kích thước dài, rộng của cửa đi, cửa sổ, giường ngủ theo tuổi bằng thước Lỗ Ban<br />Xem tuổi chủ nhà để chọn ngày xây nhà, sửa nhà, chuyển nhà, đổ móng, đổ trần</p>', '', '', 12, '2012-06-02 17:49:17', 1, 0, '', '', 'dich-vu-tu-van-phong-thuy-nha-o-van-phong', '', 'Dịch vụ Tư vấn Phong thủy Nhà ở, Biệt thự, Văn phòng, Nhà hàng, Khách sạn, Quán Bar... Tư vấn Chọn đất, Mua nhà, chọn Hướng nhà, Hướng cửa, Màu sắc, Xem tuổi chủ nhà', '', 1, 'nhaphodep'),
(102, 'Trung tâm tư vấn pháp luật và dịch vụ nhà - đất', '', '', '', '<p>Trung tâm tư vấn pháp luật và dịch vụ nhà - đất là một đơn vị trực thuộc của HSLAWS.<br />Trung tâm tư vấn pháp luật và dịch vụ nhà - đất là chuyên gia tư vấn về trình tự, thủ tục cấp các loại giấy phép liên quan đến lĩnh vực nhà - đất, thủ tục đăng ký biến động nhà - đất, thủ tục phê duyệt dự án, thủ tục thu hồi đất, bồi thường giải phóng mặt bằng, thủ tục giải quyết tranh chấp đất đai.</p>\r\n<p>Chúng tôi coi việc phát triển mối quan hệ lâu dài với khách hàng là tiêu chí hoạt động hàng đầu. Trung tâm tư vấn pháp luật và dịch vụ nhà - đất luôn xem công việc của khách hàng như chính công việc của mình để đưa ra những tư vấn hợp lý nhất nhằm đảm bảo quyền lợi tối đa cho khách hàng.</p>\r\n<p>Với đội ngũ chuyên viên tư vấn nhiều kinh nghiệm, có quá trình hoạt động thực tiễn lâu dài, có danh sách khách hàng thường xuyên đa dạng trên các lĩnh vực hoạt động, trung tâm tư vấn pháp luật và dịch vụ nhà - đất tích lũy được nhiều thành công và xây dựng được hệ thống tư vấn pháp luật chuyên nghiệp. Hơn nữa, chúng tôi còn thiết lập nhiều mối quan hệ hợp tác tốt với những Văn phòng Luật sư và cơ quan tiến hành thủ tục hành chính trong cả nước.</p>\r\n<p>Uy tín của từng thành viên kết hợp với tinh thần đoàn kết tập thể cùng phấn đấu vì mục tiêu chung là động lực quan trọng để trung tâm tư vấn pháp luật và dịch vụ nhà - đất luôn đáp ứng các yêu cầu ngày càng đa dạng và phức tạp của khách hàng nhằm đảm bảo mang lại sự hài lòng nhất cho khách hàng.</p>\r\n<p>Đến với trung tâm tư vấn pháp luật và dịch vụ nhà - đất, Khách hàng không chỉ nhận được sự tư vấn theo yêu cầu mà còn được tư vấn những phương án tối ưu nhất để đảm bảo quyền và lợi ích hợp pháp của khách hàng.</p>', '', '', 7, '2012-06-02 17:49:30', 2, 0, '', '', 'trung-tam-tu-van-phap-luat-va-dich-vu-nha-dat', '', 'Trung tâm tư vấn pháp luật và dịch vụ nhà - đất', '', 1, 'nhaphodep'),
(103, 'Thiết kế Xây dựng', '', NULL, NULL, '<p>Tư vấn, Thiết kế Xây dựng, Thiết kế sơ bộ, Lập bản vẻ 3D, Thiết kế Kỹ thuật: Kiến trúc, Kết cấu, Điện nước, Khảo sát địa hình và Địa chất công trình, Thẩm định hồ sơ thiết kế<br />Dịch vụ Tư vấn Thiết kế Xây dựng bao gồm:<br />Khảo sát địa hình và Địa chất công trình<br />Tư vấn, Thiết kế, Quy hoạch tổng thể<br />Thiết kế sơ bộ, Lập bản vẽ 3D<br />Thiết kế kỹ thuật: Kiến trúc, Kết cấu, Điện nước<br />Tư vấn Thiết kế Ngoại thất, Cảnh quan, Sân vườn<br />Thiết kế Nhà ở, Nhà phố, Biệt thự, Văn phòng, Nhà hàng, Khách sạn, Quán Bar<br />Thẩm định Hồ sơ thiết kế</p>', '', '', 3, '2012-06-12 07:01:03', 3, 0, NULL, NULL, 'thiet-ke-xay-dung', '', 'Tư vấn, Thiết kế Xây dựng, Thiết kế sơ bộ, Lập bản vẻ 3D, Thiết kế Kỹ thuật: Kiến trúc, Kết cấu, Điện nước, Khảo sát địa hình và Địa chất công trình, Thẩm định hồ sơ thiết kế', '', 1, 'nhaphodep'),
(104, 'cvbcvbcvb', '', NULL, NULL, '<p>bcbvcbcv</p>\r\n<p>vcbcvbvcbv<br />jnjnjnjnjn</p>\r\n<p>cvbcvbcvbcvb</p>\r\n<p>cvbcvbcvbcvbcvbcvbcvbcvb</p>', '', '', 15, '2012-06-15 03:33:16', 4, 0, NULL, NULL, 'cvbcvbcvb', '', '', '', 1, 'nhaphodep');

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
('nhadat', 'about', 'advs_bottom'),
('nhadat', 'about', 'advs_left'),
('nhadat', 'about', 'advs_top'),
('nhadat', 'about', 'list_supports'),
('nhadat', 'about', 'menu_about'),
('nhadat', 'contact', 'advs_bottom'),
('nhadat', 'contact', 'advs_left'),
('nhadat', 'contact', 'advs_top'),
('nhadat', 'contact', 'list_supports'),
('nhadat', 'contact', 'menu_products'),
('nhadat', 'default', 'about_home'),
('nhadat', 'default', 'advs_bottom'),
('nhadat', 'default', 'advs_right'),
('nhadat', 'default', 'advs_top'),
('nhadat', 'default', 'list_supports'),
('nhadat', 'default', 'menu_news'),
('nhadat', 'default', 'menu_services'),
('nhadat', 'default', 'products_new'),
('nhadat', 'news', 'advs_bottom'),
('nhadat', 'news', 'advs_left'),
('nhadat', 'news', 'advs_top'),
('nhadat', 'news', 'list_supports'),
('nhadat', 'news', 'menu_news'),
('nhadat', 'products', 'advs_bottom'),
('nhadat', 'products', 'advs_left'),
('nhadat', 'products', 'advs_top'),
('nhadat', 'products', 'list_supports'),
('nhadat', 'products', 'menu_products'),
('nhadat', 'services', 'advs_bottom'),
('nhadat', 'services', 'advs_center'),
('nhadat', 'services', 'advs_top'),
('nhadat', 'services', 'list_supports'),
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

INSERT INTO `dos_usernames` (`username`, `email`, `password`, `created`, `fullname`, `cmnd`, `address`, `phone`, `company`, `bank_name`, `bank_number`, `role`, `language`, `code`, `expired`, `import`, `activated`, `dos_templates_template`, `dos_provinces_province_id`, `dos_bussiness_bussiness_id`) VALUES
('nhaphodep', 'info@nhaphodep.vn', 'e10adc3949ba59abbe56e057f20f883e', '2012-06-14 07:31:44', 'Nhà phố đẹp', 0, '', '0929001001', 'Công ty cổ phần Thương Hội', '', 0, 'user', 'vi', NULL, '2013-05-31 17:00:00', 0, 1, 'nhadat', 30, 'bds-kien-truc-xay-dung'),
('ninh', 'ninh@yac.com', 'aa7b65c231f7cd2e0ab4fa9c26ccdaf5', '2012-06-16 17:48:55', 'Ninh', 2147483647, 'Đồng Nai', '235466789099089', NULL, 'ACB', 2147483647, 'user', 'vi', NULL, '2012-07-15 17:00:00', 0, 1, 'nhadat', 19, 'bds-kien-truc-xay-dung'),
('ninh1', 'ninh@yac.com', 'aa7b65c231f7cd2e0ab4fa9c26ccdaf5', '2012-06-16 18:01:40', 'Ninh', 2147483647, 'Đồng Nai', '235466789099089', NULL, 'ACB', 2147483647, 'user', 'vi', NULL, '2012-07-15 17:00:00', 0, 1, 'nhadat', 19, 'bds-kien-truc-xay-dung'),
('thanhansoft', 'thanhansoft@gmail.com', 'e10adc3949ba59abbe56e057f20f883e', '2012-06-18 08:46:09', 'Nguyen An', 271726306, 'J7, Kp1, Bửu Long, Bien Hoa, Dong Nai', '0929001001', NULL, '', NULL, 'user', 'vi', NULL, '2012-07-17 17:00:00', 0, 1, 'nhadat', 19, 'bds-kien-truc-xay-dung'),
('tinhungphat', 'ninh@yac.com', 'aa7b65c231f7cd2e0ab4fa9c26ccdaf5', '2012-06-16 18:05:20', 'ds', 2147483647, 'Đồng Nai', '235466789099089', NULL, 'ACB', 2147483647, 'user', 'vi', NULL, '2012-07-15 17:00:00', 0, 1, 'nhadat', 19, 'bds-kien-truc-xay-dung');

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
-- Constraints for table `dos_districts`
--
ALTER TABLE `dos_districts`
  ADD CONSTRAINT `dos_districts_ibfk_1` FOREIGN KEY (`dos_provinces_province`) REFERENCES `dos_provinces` (`province_id`) ON DELETE CASCADE ON UPDATE CASCADE;

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
  ADD CONSTRAINT `dos_module_products_ibfk_1` FOREIGN KEY (`dos_provinces_province_id`) REFERENCES `dos_provinces` (`province_id`) ON DELETE CASCADE ON UPDATE CASCADE,
  ADD CONSTRAINT `dos_module_products_ibfk_2` FOREIGN KEY (`dos_districts_district_id`) REFERENCES `dos_districts` (`district_id`) ON DELETE CASCADE ON UPDATE CASCADE,
  ADD CONSTRAINT `dos_module_products_ibfk_3` FOREIGN KEY (`dos_module_item_type_type_id`) REFERENCES `dos_module_products_type` (`type_id`) ON DELETE CASCADE ON UPDATE CASCADE,
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
