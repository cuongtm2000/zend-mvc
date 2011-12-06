-- phpMyAdmin SQL Dump
-- version 3.4.7
-- http://www.phpmyadmin.net
--
-- Host: localhost
-- Generation Time: Dec 06, 2011 at 07:22 PM
-- Server version: 5.5.8
-- PHP Version: 5.3.5

SET SQL_MODE="NO_AUTO_VALUE_ON_ZERO";
SET time_zone = "+00:00";


/*!40101 SET @OLD_CHARACTER_SET_CLIENT=@@CHARACTER_SET_CLIENT */;
/*!40101 SET @OLD_CHARACTER_SET_RESULTS=@@CHARACTER_SET_RESULTS */;
/*!40101 SET @OLD_COLLATION_CONNECTION=@@COLLATION_CONNECTION */;
/*!40101 SET NAMES utf8 */;

--
-- Database: `vuonghai`
--

-- --------------------------------------------------------

--
-- Table structure for table `dos_module_about`
--

CREATE TABLE IF NOT EXISTS `dos_module_about` (
  `record_id` int(11) NOT NULL AUTO_INCREMENT,
  `title` varchar(45) DEFAULT NULL,
  `titleen` varchar(45) DEFAULT NULL,
  `titlefr` varchar(45) DEFAULT NULL,
  `content` text,
  `contenten` text,
  `contentfr` text,
  `hits` int(11) DEFAULT '1',
  `posted_date` timestamp NULL DEFAULT CURRENT_TIMESTAMP,
  `record_order` int(11) DEFAULT '1',
  `extra_field1` varchar(45) DEFAULT NULL,
  `extra_field2` varchar(45) DEFAULT NULL,
  `hot` tinyint(1) NOT NULL DEFAULT '0',
  `enable` tinyint(1) DEFAULT '1',
  PRIMARY KEY (`record_id`)
) ENGINE=InnoDB  DEFAULT CHARSET=utf8 AUTO_INCREMENT=29 ;

--
-- Dumping data for table `dos_module_about`
--

INSERT INTO `dos_module_about` (`record_id`, `title`, `titleen`, `titlefr`, `content`, `contenten`, `contentfr`, `hits`, `posted_date`, `record_order`, `extra_field1`, `extra_field2`, `hot`, `enable`) VALUES
(27, 'Giới Thiệu công ty', '', '', '&lt;p&gt;\r\n	&lt;strong&gt;13 Với hơn 20 năm kinh nghiệm trong ngành ẩm thực, cho đến ngày hôm nay chúng tôi mới mạnh dạn hình thành Công ty nhằm đáp ứng yêu cầu ngày càng cao trong lĩnh vực nhà hàng khách sạn. Nhờ vào tinh thần đoàn kết của một tập thể năng động,chuyên nghiệp và không ngừng học hỏi, chúng tôi hy vọng sẽ làm hài lòng Quý khách hàng.&lt;/strong&gt;&lt;/p&gt;\r\n&lt;p&gt;\r\n	Công ty TNHH TRẦN PHẠM {TRANPHAM LTD CO.} chúng tôi chuyên hoạt động trong lĩnh vực: Set up Nhà hàng, Công Nghệ Tiệc cưới, và hoạt động mạnh nhất là đào tạo và cung cấp đầu bếp cũng như chuyên giảng dạy nấu ăn theo yêu cầu của Quý khách.&lt;/p&gt;\r\n&lt;p&gt;\r\n	          Với mong muốn mang lại kỹ thuật chế biến món ăn đậm đà và đặc sắc nhất cho quý khách..chúng tôi còn đưa vệ sinh an toàn thực phẩm lên hàng  đầu là kim chỉ nam giúp chúng tôi tiến bước phía trước.Đội ngũ nhân viên của chúng tôi chuyên nấu các món ăn Âu, Á, Hải sản, Đặc sản 3 miền. Ngoài ra luôn nhận tổ chức Tiệc cưới, Buffet, Tea break, Finger food, Tiệc outside catering…..Chúng tôi sẳn sàng đáp ứng mọi yêu cầu từ  phía các đối tác một cách chu đáo và chuyên nghiệp.&lt;/p&gt;\r\n&lt;p&gt;\r\n	Tự hào với thành tích của mình, song chúng tôi hiểu rằng tất cả còn đang ở phía trước. Chúng tôi đang từng ngày bằng tâm huyết, say mê nghiên cứu, sáng tạo ra những món ăn mang tầm quốc tế.&lt;/p&gt;\r\n&lt;p&gt;\r\n	Rất mong nhận được sự hợp tác của Quý vị, những bạn hàng, khách hàng đã và sẽ đến với Công ty. Quý vị chính là nguồn động lực mạnh mẽ cho sự  phát triển và thành công của chúng tôi.&lt;/p&gt;\r\n&lt;p&gt;\r\n	Chúc sức khoẻ và thành công.&lt;/p&gt;\r\n&lt;p style=&quot;text-align:right;&quot;&gt;\r\n	Giám đốc&lt;/p&gt;\r\n', '', '', 551, '2011-08-16 02:32:39', 1, '', '', 0, 1),
(28, 'Gioi thieu so luoc', '', '', '&lt;p&gt;\r\n	&lt;span style=&quot;font-size:14px;&quot;&gt;&lt;strong&gt;Danh hiệu đầu bếp được trao cho những người có kiến thức chuyên môn cao và nhiều kinh nghiệp trong lĩnh vực nấu ăn. Đứng ở vị trí cáo nhất kà bếp trưởng - người quản lý toàn bộ hoạt động của bếp. Đó cũng là người giàu kinh nghiệm và có khả năng tổ chức để công việc được chạy đều, đảm bảo bữa ăn ngon lành, sạch sẽ, đúng giới, nóng suốt và trình bày đẹp nhất&lt;/strong&gt;&lt;/span&gt;&lt;/p&gt;\r\n', '', '', 1028, '2011-08-16 03:35:14', 1, '', '', 1, 1);

-- --------------------------------------------------------

--
-- Table structure for table `dos_module_adv`
--

CREATE TABLE IF NOT EXISTS `dos_module_adv` (
  `record_id` int(11) NOT NULL AUTO_INCREMENT,
  `pic_thumb` varchar(50) NOT NULL DEFAULT '',
  `title` varchar(50) NOT NULL DEFAULT '',
  `titleen` varchar(50) DEFAULT NULL,
  `titlefr` varchar(50) DEFAULT NULL,
  `url` varchar(500) DEFAULT NULL,
  `description` varchar(1000) DEFAULT NULL,
  `create_date` timestamp NULL DEFAULT CURRENT_TIMESTAMP,
  `start_date` timestamp NULL DEFAULT NULL,
  `end_date` timestamp NULL DEFAULT NULL,
  `hits` int(11) NOT NULL DEFAULT '0',
  `record_order` int(11) DEFAULT '1',
  `position` varchar(45) DEFAULT NULL,
  `type` varchar(45) DEFAULT NULL,
  `enable` tinyint(1) NOT NULL DEFAULT '1',
  PRIMARY KEY (`record_id`)
) ENGINE=InnoDB  DEFAULT CHARSET=utf8 AUTO_INCREMENT=10 ;

--
-- Dumping data for table `dos_module_adv`
--

INSERT INTO `dos_module_adv` (`record_id`, `pic_thumb`, `title`, `titleen`, `titlefr`, `url`, `description`, `create_date`, `start_date`, `end_date`, `hits`, `record_order`, `position`, `type`, `enable`) VALUES
(8, 'logo.jpg', 'Banner', '', '', 'http://grouplaptrinh.com', '', '2011-12-06 09:22:29', '2011-11-20 17:00:00', '2011-11-22 17:00:00', 0, 1, 'left', '_bank', 1),
(9, 'alo123ma.jpg', 'Banner', '', '', 'http://grouplaptrinh.com', '', '2011-12-06 09:23:07', '2011-11-20 17:00:00', '2011-12-22 17:00:00', 0, 1, 'right-top', '_bank', 1);

-- --------------------------------------------------------

--
-- Table structure for table `dos_module_banner`
--

CREATE TABLE IF NOT EXISTS `dos_module_banner` (
  `banner_id` int(11) NOT NULL AUTO_INCREMENT,
  `banner_date` timestamp NOT NULL DEFAULT CURRENT_TIMESTAMP,
  `banner_name` varchar(45) NOT NULL,
  `banner_url` varchar(45) DEFAULT NULL,
  `banner_link` varchar(200) DEFAULT NULL,
  `banner_order` int(11) NOT NULL DEFAULT '1',
  `enable` tinyint(1) NOT NULL DEFAULT '1',
  `position` varchar(45) NOT NULL,
  PRIMARY KEY (`banner_id`)
) ENGINE=InnoDB  DEFAULT CHARSET=utf8 AUTO_INCREMENT=10 ;

--
-- Dumping data for table `dos_module_banner`
--

INSERT INTO `dos_module_banner` (`banner_id`, `banner_date`, `banner_name`, `banner_url`, `banner_link`, `banner_order`, `enable`, `position`) VALUES
(7, '2011-10-13 10:06:57', 'Quảng cáo hiệu quả', 'banner.jpg', '', 1, 1, 'banner'),
(8, '2011-10-13 10:07:19', 'Duy nhất - độc đáo', 'only.gif', '', 2, 1, 'banner'),
(9, '2011-10-13 10:07:32', 'Connet', 'connect.jpg', 'www.tcmcompany.com', 3, 1, 'banner');

-- --------------------------------------------------------

--
-- Table structure for table `dos_module_conference`
--

CREATE TABLE IF NOT EXISTS `dos_module_conference` (
  `record_id` int(11) NOT NULL AUTO_INCREMENT,
  `title` varchar(45) DEFAULT NULL,
  `titleen` varchar(45) DEFAULT NULL,
  `titlefr` varchar(45) DEFAULT NULL,
  `content` text,
  `contenten` text,
  `contentfr` text,
  `hits` int(11) DEFAULT '1',
  `posted_date` timestamp NULL DEFAULT CURRENT_TIMESTAMP,
  `record_order` int(11) DEFAULT '1',
  `extra_field1` varchar(45) DEFAULT NULL,
  `extra_field2` varchar(45) DEFAULT NULL,
  `hot` tinyint(1) NOT NULL DEFAULT '0',
  `enable` tinyint(1) DEFAULT '1',
  PRIMARY KEY (`record_id`)
) ENGINE=InnoDB  DEFAULT CHARSET=utf8 AUTO_INCREMENT=32 ;

--
-- Dumping data for table `dos_module_conference`
--

INSERT INTO `dos_module_conference` (`record_id`, `title`, `titleen`, `titlefr`, `content`, `contenten`, `contentfr`, `hits`, `posted_date`, `record_order`, `extra_field1`, `extra_field2`, `hot`, `enable`) VALUES
(30, 'Tiệc hoi nghi', '', '', '&lt;p&gt;\r\n	testing&lt;/p&gt;\r\n', '', '', 13, '2011-09-09 07:23:38', 1, '', '', 0, 1),
(31, 'dasdsadsa', '', '', '&lt;p&gt;\r\n	test&lt;/p&gt;\r\n', '', '', 1, '2011-09-09 07:23:51', 2, '', '', 0, 1);

-- --------------------------------------------------------

--
-- Table structure for table `dos_module_contact`
--

CREATE TABLE IF NOT EXISTS `dos_module_contact` (
  `record_id` int(11) NOT NULL AUTO_INCREMENT,
  `create_date` timestamp NOT NULL DEFAULT CURRENT_TIMESTAMP,
  `title` varchar(70) NOT NULL,
  `titleen` varchar(70) DEFAULT NULL,
  `titlefr` varchar(70) DEFAULT NULL,
  `content` varchar(1000) NOT NULL,
  `contenten` varchar(5000) DEFAULT NULL,
  `contentfr` varchar(5000) DEFAULT NULL,
  `hot` tinyint(1) NOT NULL DEFAULT '0',
  `enable` tinyint(1) NOT NULL DEFAULT '1',
  PRIMARY KEY (`record_id`)
) ENGINE=InnoDB  DEFAULT CHARSET=utf8 AUTO_INCREMENT=9 ;

--
-- Dumping data for table `dos_module_contact`
--

INSERT INTO `dos_module_contact` (`record_id`, `create_date`, `title`, `titleen`, `titlefr`, `content`, `contenten`, `contentfr`, `hot`, `enable`) VALUES
(7, '2011-06-17 03:52:09', 'Liên hệ với chúng tôi', '', '', '&lt;p&gt;\r\n	VUONG HAI CORPORATION Copyright © 2011. Develop by Dos.vn&lt;br /&gt;\r\n	Office: C1B Dong Khoi, hamlet 4, Tan Hiep ward, Bien Hoa city, Dong Nai province&lt;br /&gt;\r\n	Factory: Ong Huong Hamlet, Thien Tan commune, Vinh Cuu district, Dong Nai province&lt;br /&gt;\r\n	Phone: (+8461) 3895 060 - (+8461) 3865 819&lt;br /&gt;\r\n	Fax: (+8461) 3895 573 - (+8461) 3865 8219&lt;br /&gt;\r\n	Website: www.vuonghai.com - www.block-betongnhe.com&lt;/p&gt;\r\n', '', '', 0, 1),
(8, '2011-12-06 07:07:19', 'Liên hệ Home', '', '', '&lt;p style=&quot;text-align:center;&quot;&gt;\r\n	VUONG HAI CORPORATION Copyright © 2011. Develop by Dos.vn&lt;br /&gt;\r\n	Office: C1B Dong Khoi, hamlet 4, Tan Hiep ward, Bien Hoa city, Dong Nai province&lt;br /&gt;\r\n	Factory: Ong Huong Hamlet, Thien Tan commune, Vinh Cuu district, Dong Nai province&lt;br /&gt;\r\n	Phone: (+8461) 3895 060 - (+8461) 3865 819&lt;br /&gt;\r\n	Fax: (+8461) 3895 573 - (+8461) 3865 8219&lt;br /&gt;\r\n	Website: &lt;a href=&quot;http://vuonghai.com&quot;&gt;www.vuonghai.com&lt;/a&gt; - www.&lt;a href=&quot;http://block-betongnhe.com&quot;&gt;block-betongnhe.com&lt;/a&gt;&lt;/p&gt;\r\n', '', '', 1, 1);

-- --------------------------------------------------------

--
-- Table structure for table `dos_module_gallery`
--

CREATE TABLE IF NOT EXISTS `dos_module_gallery` (
  `record_id` int(11) NOT NULL AUTO_INCREMENT,
  `postdate` timestamp NOT NULL DEFAULT CURRENT_TIMESTAMP,
  `pic_thumb` varchar(45) DEFAULT NULL,
  `pic_full` varchar(45) DEFAULT NULL,
  `title` varchar(100) DEFAULT NULL,
  `titleen` varchar(100) DEFAULT NULL,
  `titlefr` varchar(100) DEFAULT NULL,
  `hits` int(11) DEFAULT '0',
  `record_order` int(11) DEFAULT '1',
  `enable` tinyint(1) NOT NULL DEFAULT '1',
  `dos_module_gallery_cat_cat_id` int(11) NOT NULL,
  PRIMARY KEY (`record_id`),
  KEY `fk_dos_module_gallery_dos_module_gallery_cat` (`dos_module_gallery_cat_cat_id`)
) ENGINE=InnoDB  DEFAULT CHARSET=utf8 AUTO_INCREMENT=3 ;

--
-- Dumping data for table `dos_module_gallery`
--

INSERT INTO `dos_module_gallery` (`record_id`, `postdate`, `pic_thumb`, `pic_full`, `title`, `titleen`, `titlefr`, `hits`, `record_order`, `enable`, `dos_module_gallery_cat_cat_id`) VALUES
(1, '2011-09-07 14:29:47', 'longchau_new.png', 'longchau_new1.png', 'test', '', '', 0, 1, 1, 20),
(2, '2011-09-23 01:52:36', NULL, NULL, 'asaf', '', '', 0, 2, 1, 18);

-- --------------------------------------------------------

--
-- Table structure for table `dos_module_gallery_cat`
--

CREATE TABLE IF NOT EXISTS `dos_module_gallery_cat` (
  `cat_id` int(11) NOT NULL AUTO_INCREMENT,
  `cat_parent_id` int(11) NOT NULL DEFAULT '0',
  `pic_thumb` varchar(45) DEFAULT NULL,
  `pic_full` varchar(45) DEFAULT NULL,
  `cat_title` varchar(45) NOT NULL,
  `cat_titleen` varchar(45) DEFAULT NULL,
  `cat_titlefr` varchar(45) DEFAULT NULL,
  `preview` text,
  `previewen` text,
  `previewfr` text,
  `cat_order` int(11) NOT NULL DEFAULT '1',
  `cat_extra1` varchar(45) DEFAULT NULL,
  `cat_hot` tinyint(1) NOT NULL,
  `cat_enable` tinyint(1) NOT NULL DEFAULT '1',
  PRIMARY KEY (`cat_id`)
) ENGINE=InnoDB  DEFAULT CHARSET=utf8 AUTO_INCREMENT=22 ;

--
-- Dumping data for table `dos_module_gallery_cat`
--

INSERT INTO `dos_module_gallery_cat` (`cat_id`, `cat_parent_id`, `pic_thumb`, `pic_full`, `cat_title`, `cat_titleen`, `cat_titlefr`, `preview`, `previewen`, `previewfr`, `cat_order`, `cat_extra1`, `cat_hot`, `cat_enable`) VALUES
(17, 0, NULL, NULL, 'Đã tổ chức cưới', '', '', '', '', '', 1, NULL, 1, 1),
(18, 0, NULL, NULL, 'Sắp tới', '', '', '', '', '', 2, NULL, 1, 1),
(19, 17, 'image5.jpg', NULL, 'Binh - Minh', '', '', '', '', '', 3, NULL, 0, 1),
(20, 17, 'image3.jpg', NULL, 'Hong - Oanh', '', '', '', '', '', 4, NULL, 0, 1),
(21, 18, 'image1.jpg', NULL, 'Ong - Ba', '', '', '', '', '', 5, NULL, 0, 1);

-- --------------------------------------------------------

--
-- Table structure for table `dos_module_handbook`
--

CREATE TABLE IF NOT EXISTS `dos_module_handbook` (
  `record_id` int(11) NOT NULL AUTO_INCREMENT,
  `pic_thumb` varchar(45) DEFAULT NULL,
  `title` varchar(100) NOT NULL,
  `titleen` varchar(100) DEFAULT NULL,
  `titlefr` varchar(100) DEFAULT NULL,
  `preview` text NOT NULL,
  `previewen` text,
  `previewfr` text,
  `content` text NOT NULL,
  `contenten` text,
  `contentfr` text,
  `author` varchar(45) DEFAULT NULL,
  `hits` int(11) NOT NULL DEFAULT '1',
  `postdate` timestamp NULL DEFAULT CURRENT_TIMESTAMP,
  `record_order` int(11) NOT NULL DEFAULT '1',
  `record_type` tinyint(1) NOT NULL DEFAULT '0',
  `extra_field1` varchar(45) DEFAULT NULL,
  `extra_field2` varchar(45) DEFAULT NULL,
  `enable` tinyint(1) NOT NULL DEFAULT '1',
  `dos_module_handbook_cat_cat_id` int(11) NOT NULL,
  PRIMARY KEY (`record_id`),
  KEY `fk_dos_module_handbook_dos_module_handbook_cat` (`dos_module_handbook_cat_cat_id`)
) ENGINE=InnoDB  DEFAULT CHARSET=utf8 AUTO_INCREMENT=6 ;

--
-- Dumping data for table `dos_module_handbook`
--

INSERT INTO `dos_module_handbook` (`record_id`, `pic_thumb`, `title`, `titleen`, `titlefr`, `preview`, `previewen`, `previewfr`, `content`, `contenten`, `contentfr`, `author`, `hits`, `postdate`, `record_order`, `record_type`, `extra_field1`, `extra_field2`, `enable`, `dos_module_handbook_cat_cat_id`) VALUES
(5, NULL, 'dasdsadsa', '', '', '&lt;p&gt;\r\n	ttt&lt;/p&gt;\r\n', '', '', '&lt;p&gt;\r\n	sdfsdfsdf&lt;/p&gt;\r\n', '', '', NULL, 1, '2011-09-12 03:46:55', 1, 0, NULL, NULL, 1, 14);

-- --------------------------------------------------------

--
-- Table structure for table `dos_module_handbook_cat`
--

CREATE TABLE IF NOT EXISTS `dos_module_handbook_cat` (
  `cat_id` int(11) NOT NULL AUTO_INCREMENT,
  `cat_parent_id` int(11) NOT NULL DEFAULT '0',
  `cat_title` varchar(45) NOT NULL,
  `cat_titleen` varchar(45) DEFAULT NULL,
  `cat_titlefr` varchar(45) DEFAULT NULL,
  `cat_order` int(11) NOT NULL DEFAULT '1',
  `cat_enable` tinyint(1) NOT NULL DEFAULT '1',
  PRIMARY KEY (`cat_id`)
) ENGINE=InnoDB  DEFAULT CHARSET=utf8 AUTO_INCREMENT=15 ;

--
-- Dumping data for table `dos_module_handbook_cat`
--

INSERT INTO `dos_module_handbook_cat` (`cat_id`, `cat_parent_id`, `cat_title`, `cat_titleen`, `cat_titlefr`, `cat_order`, `cat_enable`) VALUES
(14, 0, 'Danh mục', '', '', 1, 1);

-- --------------------------------------------------------

--
-- Table structure for table `dos_module_interests`
--

CREATE TABLE IF NOT EXISTS `dos_module_interests` (
  `record_id` int(11) NOT NULL AUTO_INCREMENT,
  `title` varchar(45) DEFAULT NULL,
  `titleen` varchar(45) DEFAULT NULL,
  `titlefr` varchar(45) DEFAULT NULL,
  `content` text,
  `contenten` text,
  `contentfr` text,
  `hits` int(11) DEFAULT '1',
  `posted_date` timestamp NULL DEFAULT CURRENT_TIMESTAMP,
  `record_order` int(11) DEFAULT '1',
  `extra_field1` varchar(45) DEFAULT NULL,
  `extra_field2` varchar(45) DEFAULT NULL,
  `hot` tinyint(1) NOT NULL DEFAULT '0',
  `enable` tinyint(1) DEFAULT '1',
  PRIMARY KEY (`record_id`)
) ENGINE=InnoDB  DEFAULT CHARSET=utf8 AUTO_INCREMENT=31 ;

--
-- Dumping data for table `dos_module_interests`
--

INSERT INTO `dos_module_interests` (`record_id`, `title`, `titleen`, `titlefr`, `content`, `contenten`, `contentfr`, `hits`, `posted_date`, `record_order`, `extra_field1`, `extra_field2`, `hot`, `enable`) VALUES
(30, 'Quyền lợi của bạn', '', '', '&lt;p&gt;\n	&lt;span style=&quot;font-size:16px;&quot;&gt;&lt;strong&gt;Điều Khoản sử dụng&lt;/strong&gt;&lt;/span&gt;&lt;/p&gt;\n&lt;p style=&quot;text-align:justify;&quot;&gt;\n	&lt;br /&gt;&lt;span style=&quot;font-size:12px;&quot;&gt;Xin hãy đọc kỷ các Điều Khoản Sử Dụng này trước khi truy nhập và sử dụng website thông tin SieuthiPOSM.com, Nơi dành riêng cho những ai quan tâm tới P.O.S.M(Point Of Sales Material) trong các chiến dịch Quảng Cáo.&lt;/span&gt;&lt;/p&gt;\n&lt;p style=&quot;text-align:justify;&quot;&gt;\n	&lt;br /&gt;&lt;span style=&quot;font-size:12px;&quot;&gt;Việc truy nhập và sử dụng Website: SieuthiPOSM.com sẽ mặc nhiên xác lập việc chấp nhận và đồng ý bị ràng buộc bởi các Điều Khoản Sử dụng này, điều này xác lập một thỏa thuận giữa bạn và ban quản trị của website về sử dụng thông tin, các dịch vụ (nếu có) có trên Website này, tùy từng thời điểm.&lt;/span&gt;&lt;/p&gt;\n&lt;p&gt;\n	&lt;br /&gt;&lt;span style=&quot;font-size:16px;&quot;&gt;&lt;strong&gt;Nguyên tắc hoạt động của SieuthiPOSM.com&lt;/strong&gt;&lt;/span&gt;&lt;/p&gt;\n&lt;p style=&quot;text-align:justify;&quot;&gt;\n	&lt;br /&gt;&lt;span style=&quot;font-size:12px;&quot;&gt;SieuthiPOSM.com được xây dựng và hoạt động dựa trên sự phối hợp của những chuyên viên đang làm việc trong các công ty chuyên cung cấp các thiết bị, vật tư, nguồn lực cho các chiến dịch Quảng Cáo, những anh em trong lỉnh vực Marketing BTL, Digital Marketing, nhằm chia sẻ những kinh nghiệm thực hiện dự án, trong đó phần phân tích về POSM được tập trung và chuyên sâu hơn.&lt;/span&gt;&lt;/p&gt;\n&lt;p style=&quot;text-align:justify;&quot;&gt;\n	&lt;br /&gt;&lt;span style=&quot;font-size:12px;&quot;&gt;Một số chuyên mục bạn cần phải đăng ký thành viên để truy cập, việc đăng ký hoàn toàn miễn phí. Nếu bạn là thành viên của SieuthiPOSM.com, bạn có thể gởi bài, truy xuất thông tin trong khuôn khổ được cấp phép. Chúng tôi bảo lưu mọi bản quyền thay đổi, xóa, xuất bản nội dung của bạn đưa lên mà không cần phải thông báo trước.&lt;/span&gt;&lt;/p&gt;\n&lt;p style=&quot;text-align:justify;&quot;&gt;\n	&lt;br /&gt;&lt;span style=&quot;font-size:16px;&quot;&gt;&lt;strong&gt;Quy định với người sử dụng:&lt;/strong&gt;&lt;/span&gt;&lt;/p&gt;\n&lt;p style=&quot;text-align:justify;&quot;&gt;\n	&lt;br /&gt;&lt;span style=&quot;font-size:12px;&quot;&gt;Bạn phải nhận thức đầy đủ các điều cấm sau:&lt;/span&gt;&lt;/p&gt;\n&lt;p style=&quot;text-align:justify;&quot;&gt;\n	 &lt;/p&gt;\n&lt;ul&gt;&lt;li style=&quot;text-align:justify;&quot;&gt;\n		Chống Nhà nước Cộng Hoà Xã Hội Chủ Nghĩa Việt Nam, phá hoại khối đoàn kết toàn dân, tuyên truyền, xuyên tạc, kích động và cung cấp thông tin chống phá Nhà nước Việt Nam;&lt;/li&gt;\n	&lt;li style=&quot;text-align:justify;&quot;&gt;\n		&lt;span style=&quot;font-size:12px;&quot;&gt;Kích động bạo lực, tuyên truyền chiến tranh xâm lược, gây hận thù giữa các dân tộc và nhân dân các nước, kích động dâm ô, đồi trụy, tội ác, tệ nạn xã hội, mê tín dị đoan, phá hoại thuần phong mỹ tục của dân tộc;&lt;/span&gt;&lt;/li&gt;\n	&lt;li style=&quot;text-align:justify;&quot;&gt;\n		&lt;span style=&quot;font-size:12px;&quot;&gt;Xuyên tạc, vu khống, xúc phạm uy tín của tổ chức, danh dự, nhân phẩm, uy tín của công dân;&lt;/span&gt;&lt;/li&gt;\n	&lt;li style=&quot;text-align:justify;&quot;&gt;\n		&lt;span style=&quot;font-size:12px;&quot;&gt;Quảng cáo, tuyên truyền hàng hoá, dịch vụ thuộc danh mục cấm đã được pháp luật quy định;&lt;/span&gt;&lt;/li&gt;\n	&lt;li style=&quot;text-align:justify;&quot;&gt;\n		&lt;span style=&quot;font-size:12px;&quot;&gt;Đề cập đến các vấn đề về dân tộc, chính trị và tôn giáo;&lt;/span&gt;&lt;/li&gt;\n	&lt;li style=&quot;text-align:justify;&quot;&gt;\n		&lt;span style=&quot;font-size:12px;&quot;&gt;Sử dụng các từ ngữ vô văn hóa vi phạm truyền thống đạo đức của Việt Nam;&lt;/span&gt;&lt;/li&gt;\n	&lt;li style=&quot;text-align:justify;&quot;&gt;\n		&lt;span style=&quot;font-size:12px;&quot;&gt;Thay đổi, làm hư hại hoặc xoá nội dung bất kỳ hoặc các phương tiện khác mà không phải là nội dung thuộc sở hữu của bạn, hoặc gây trở ngại cho những người khác truy cập tới Website: SieuthiPOSM.com;&lt;/span&gt;&lt;/li&gt;\n	&lt;li style=&quot;text-align:justify;&quot;&gt;\n		&lt;span style=&quot;font-size:12px;&quot;&gt;Các điều cấm khác theo quy định của pháp luật.&lt;/span&gt;&lt;/li&gt;\n&lt;/ul&gt;&lt;p&gt;\n	&lt;br /&gt;&lt;span style=&quot;font-size:16px;&quot;&gt;&lt;strong&gt;Vấn đề khác:&lt;/strong&gt;&lt;/span&gt;&lt;/p&gt;\n&lt;p style=&quot;text-align:justify;&quot;&gt;\n	 &lt;/p&gt;\n&lt;ul&gt;&lt;li style=&quot;text-align:justify;&quot;&gt;\n		&lt;span style=&quot;font-size:12px;&quot;&gt;Các bài viết có liên kết ngoài SieuthiPOSM.com, chúng tôi không chịu trách nhiệm với nội dung của website được liên kết&lt;/span&gt;&lt;/li&gt;\n	&lt;li style=&quot;text-align:justify;&quot;&gt;\n		&lt;span style=&quot;font-size:12px;&quot;&gt;Chúng tôi có thể thay đổi nội dung của Bản &quot;Điều khoản sử dụng&quot; này mà không cần thông báo trước.&lt;/span&gt;&lt;/li&gt;\n	&lt;li style=&quot;text-align:justify;&quot;&gt;\n		&lt;span style=&quot;font-size:12px;&quot;&gt;Nếu bạn có bất kỳ câu hỏi nào, đừng ngần ngại, hảy liên lạc với chúng tôi qua:&lt;/span&gt;&lt;/li&gt;\n&lt;/ul&gt;&lt;p&gt;\n	 &lt;/p&gt;\n&lt;p&gt;\n	&lt;span style=&quot;font-size:16px;&quot;&gt;&lt;strong&gt;Email. Info@SieuthiPOSM.com&lt;br /&gt;\n	Bus. (84-8)38.410.434&lt;/strong&gt;&lt;/span&gt;&lt;/p&gt;\n&lt;p&gt;\n	&lt;span style=&quot;font-size:16px;&quot;&gt;&lt;strong&gt;Cell Phone. 0908 340 939(Minh Tiền)&lt;/strong&gt;&lt;/span&gt;&lt;/p&gt;\n', '', '', 69, '2011-09-21 02:34:40', 2, '', '', 0, 1);

-- --------------------------------------------------------

--
-- Table structure for table `dos_module_job`
--

CREATE TABLE IF NOT EXISTS `dos_module_job` (
  `record_id` int(11) NOT NULL AUTO_INCREMENT,
  `title` varchar(45) NOT NULL,
  `titleen` varchar(45) DEFAULT NULL,
  `titlefr` varchar(45) DEFAULT NULL,
  `content` text NOT NULL,
  `contenten` text,
  `contentfr` text,
  `pic_full` varchar(100) DEFAULT NULL,
  `hits` int(11) DEFAULT '1',
  `posted_date` timestamp NULL DEFAULT CURRENT_TIMESTAMP,
  `record_order` int(11) DEFAULT '1',
  `extra_field1` varchar(45) DEFAULT NULL,
  `extra_field2` varchar(45) DEFAULT NULL,
  `hot` tinyint(1) NOT NULL DEFAULT '0',
  `enable` tinyint(1) DEFAULT '1',
  PRIMARY KEY (`record_id`)
) ENGINE=InnoDB  DEFAULT CHARSET=utf8 AUTO_INCREMENT=17 ;

--
-- Dumping data for table `dos_module_job`
--

INSERT INTO `dos_module_job` (`record_id`, `title`, `titleen`, `titlefr`, `content`, `contenten`, `contentfr`, `pic_full`, `hits`, `posted_date`, `record_order`, `extra_field1`, `extra_field2`, `hot`, `enable`) VALUES
(16, 'test', '', '', '&lt;p&gt;\r\n	test&lt;/p&gt;\r\n', '', '', NULL, 105, '2011-09-12 07:49:51', 1, '', '', 0, 1);

-- --------------------------------------------------------

--
-- Table structure for table `dos_module_marketing`
--

CREATE TABLE IF NOT EXISTS `dos_module_marketing` (
  `record_id` int(11) NOT NULL AUTO_INCREMENT,
  `pic_thumb` varchar(45) DEFAULT NULL,
  `title` varchar(100) NOT NULL,
  `titleen` varchar(100) DEFAULT NULL,
  `titlefr` varchar(100) DEFAULT NULL,
  `preview` text NOT NULL,
  `previewen` text,
  `previewfr` text,
  `content` text NOT NULL,
  `contenten` text,
  `contentfr` text,
  `author` varchar(45) DEFAULT NULL,
  `hits` int(11) NOT NULL DEFAULT '1',
  `postdate` timestamp NULL DEFAULT CURRENT_TIMESTAMP,
  `record_order` int(11) NOT NULL DEFAULT '1',
  `record_type` tinyint(1) NOT NULL DEFAULT '0',
  `extra_field1` varchar(45) DEFAULT NULL,
  `extra_field2` varchar(45) DEFAULT NULL,
  `enable` tinyint(1) NOT NULL DEFAULT '1',
  `dos_module_marketing_cat_cat_id` int(11) NOT NULL,
  PRIMARY KEY (`record_id`),
  KEY `fk_dos_module_studies_dos_module_studies_cat` (`dos_module_marketing_cat_cat_id`)
) ENGINE=InnoDB DEFAULT CHARSET=utf8 AUTO_INCREMENT=1 ;

-- --------------------------------------------------------

--
-- Table structure for table `dos_module_marketing_cat`
--

CREATE TABLE IF NOT EXISTS `dos_module_marketing_cat` (
  `cat_id` int(11) NOT NULL AUTO_INCREMENT,
  `cat_parent_id` int(11) NOT NULL DEFAULT '0',
  `cat_title` varchar(45) NOT NULL,
  `cat_titleen` varchar(45) DEFAULT NULL,
  `cat_titlefr` varchar(45) DEFAULT NULL,
  `cat_order` int(11) NOT NULL DEFAULT '1',
  `cat_enable` tinyint(1) NOT NULL DEFAULT '1',
  PRIMARY KEY (`cat_id`)
) ENGINE=InnoDB DEFAULT CHARSET=utf8 AUTO_INCREMENT=1 ;

-- --------------------------------------------------------

--
-- Table structure for table `dos_module_marketing_comments`
--

CREATE TABLE IF NOT EXISTS `dos_module_marketing_comments` (
  `comment_id` int(11) NOT NULL AUTO_INCREMENT,
  `comment_title` varchar(50) NOT NULL,
  `comment_content` varchar(1000) NOT NULL,
  `comment_enable` tinyint(1) DEFAULT '1',
  `comment_date` timestamp NOT NULL DEFAULT CURRENT_TIMESTAMP,
  `dos_sys_users_username` varchar(45) NOT NULL,
  `dos_module_marketing_record_id` int(11) NOT NULL,
  PRIMARY KEY (`comment_id`),
  KEY `fk_dos_module_studies_comments_dos_sys_users` (`dos_sys_users_username`),
  KEY `fk_dos_module_studies_comments_dos_module_studies1` (`dos_module_marketing_record_id`)
) ENGINE=InnoDB DEFAULT CHARSET=utf8 AUTO_INCREMENT=1 ;

-- --------------------------------------------------------

--
-- Table structure for table `dos_module_materials`
--

CREATE TABLE IF NOT EXISTS `dos_module_materials` (
  `record_id` int(11) NOT NULL AUTO_INCREMENT,
  `pic_thumb` varchar(45) DEFAULT NULL,
  `title` varchar(100) NOT NULL,
  `titleen` varchar(100) DEFAULT NULL,
  `titlefr` varchar(100) DEFAULT NULL,
  `preview` text NOT NULL,
  `previewen` text,
  `previewfr` text,
  `content` text NOT NULL,
  `contenten` text,
  `contentfr` text,
  `author` varchar(45) DEFAULT NULL,
  `hits` int(11) NOT NULL DEFAULT '1',
  `postdate` timestamp NULL DEFAULT CURRENT_TIMESTAMP,
  `record_order` int(11) NOT NULL DEFAULT '1',
  `record_type` tinyint(1) NOT NULL DEFAULT '0',
  `extra_field1` varchar(45) DEFAULT NULL,
  `extra_field2` varchar(45) DEFAULT NULL,
  `enable` tinyint(1) NOT NULL DEFAULT '1',
  `dos_module_item_cat_cat_id` int(11) NOT NULL,
  PRIMARY KEY (`record_id`),
  KEY `fk_dos_module_studies_dos_module_studies_cat` (`dos_module_item_cat_cat_id`)
) ENGINE=InnoDB  DEFAULT CHARSET=utf8 AUTO_INCREMENT=3 ;

--
-- Dumping data for table `dos_module_materials`
--

INSERT INTO `dos_module_materials` (`record_id`, `pic_thumb`, `title`, `titleen`, `titlefr`, `preview`, `previewen`, `previewfr`, `content`, `contenten`, `contentfr`, `author`, `hits`, `postdate`, `record_order`, `record_type`, `extra_field1`, `extra_field2`, `enable`, `dos_module_item_cat_cat_id`) VALUES
(1, 'hinh-nho.jpg', 'Cách âm -1111', '', '', '&lt;p&gt;\r\n	Khong nghe thay gi het&lt;/p&gt;\r\n', '', '', '&lt;p&gt;\r\n	Khong nghe thay gi hetKhong nghe thay gi hetKhong nghe thay gi hetKhong nghe thay gi hetKhong nghe thay gi hetKhong nghe thay gi hetKhong nghe thay gi hetKhong nghe thay gi hetKhong nghe thay gi hetKhong nghe thay gi hetKhong nghe thay gi hetKhong nghe thay gi hetKhong nghe thay gi hetKhong nghe thay gi hetKhong nghe thay gi hetKhong nghe thay gi hetKhong nghe thay gi hetKhong nghe thay gi hetKhong nghe thay gi hetKhong nghe thay gi hetKhong nghe thay gi hetKhong nghe thay gi hetKhong nghe thay gi het&lt;/p&gt;\r\n', '', '', NULL, 1, '2011-12-05 00:48:26', 1, 0, NULL, NULL, 1, 3),
(2, 'moc-khoa-hoi-00021.jpg', 'Giới thiệu sản phẩm lần 2', '', '', '&lt;p&gt;\r\n	Giới thiệu sản phẩm lần 2Giới thiệu sản phẩm lần 2&lt;/p&gt;\r\n&lt;p&gt;\r\n	Giới thiệu sản phẩm lần 2&lt;/p&gt;\r\n', '', '', '&lt;p&gt;\r\n	Giới thiệu sản phẩm lần 2Giới thiệu sản phẩm lần 2Giới thiệu sản phẩm lần 2&lt;/p&gt;\r\n&lt;p&gt;\r\n	&lt;strong&gt;Giới thiệu sản phẩm lần 2Giới thiệu sản phẩm lần 2Giới thiệu sản phẩm lần 2&lt;/strong&gt;&lt;/p&gt;\r\n&lt;p&gt;\r\n	&lt;strong&gt;Giới thiệu sản phẩm lần 2Giới thiệu sản phẩm lần 2&lt;/strong&gt;&lt;/p&gt;\r\n&lt;p&gt;\r\n	&lt;strong&gt;Giới thiệu sản phẩm lần 2Giới thiệu sản phẩm lần 2&lt;/strong&gt;&lt;/p&gt;\r\n&lt;p&gt;\r\n	Giới thiệu sản phẩm lần 2&lt;/p&gt;\r\n', '', '', NULL, 1, '2011-12-05 02:56:41', 1, 0, NULL, NULL, 1, 3);

-- --------------------------------------------------------

--
-- Table structure for table `dos_module_materials_cat`
--

CREATE TABLE IF NOT EXISTS `dos_module_materials_cat` (
  `cat_id` int(11) NOT NULL AUTO_INCREMENT,
  `cat_parent_id` int(11) NOT NULL DEFAULT '0',
  `cat_title` varchar(45) NOT NULL,
  `cat_titleen` varchar(45) DEFAULT NULL,
  `cat_titlefr` varchar(45) DEFAULT NULL,
  `cat_order` int(11) NOT NULL DEFAULT '1',
  `cat_enable` tinyint(1) NOT NULL DEFAULT '1',
  PRIMARY KEY (`cat_id`)
) ENGINE=InnoDB  DEFAULT CHARSET=utf8 AUTO_INCREMENT=4 ;

--
-- Dumping data for table `dos_module_materials_cat`
--

INSERT INTO `dos_module_materials_cat` (`cat_id`, `cat_parent_id`, `cat_title`, `cat_titleen`, `cat_titlefr`, `cat_order`, `cat_enable`) VALUES
(1, 0, 'Ứng dụng kinh tế', '', '', 1, 1),
(2, 0, 'Ứng dụng cách  nhiệt', '', '', 2, 1),
(3, 0, 'Ứng dụng cách  âm', '', '', 3, 1);

-- --------------------------------------------------------

--
-- Table structure for table `dos_module_materials_comments`
--

CREATE TABLE IF NOT EXISTS `dos_module_materials_comments` (
  `comment_id` int(11) NOT NULL AUTO_INCREMENT,
  `comment_title` varchar(50) NOT NULL,
  `comment_content` varchar(1000) NOT NULL,
  `comment_enable` tinyint(1) DEFAULT '1',
  `comment_date` timestamp NOT NULL DEFAULT CURRENT_TIMESTAMP,
  `dos_sys_users_username` varchar(45) NOT NULL,
  `dos_module_item_record_id` int(11) NOT NULL,
  PRIMARY KEY (`comment_id`),
  KEY `fk_dos_module_studies_comments_dos_sys_users` (`dos_sys_users_username`),
  KEY `fk_dos_module_studies_comments_dos_module_studies1` (`dos_module_item_record_id`)
) ENGINE=InnoDB  DEFAULT CHARSET=utf8 AUTO_INCREMENT=5 ;

--
-- Dumping data for table `dos_module_materials_comments`
--

INSERT INTO `dos_module_materials_comments` (`comment_id`, `comment_title`, `comment_content`, `comment_enable`, `comment_date`, `dos_sys_users_username`, `dos_module_item_record_id`) VALUES
(1, 'fgdggfdg', 'gfdgdsgdsfgdsfg', 1, '2011-12-05 00:55:32', 'grouplaptrinh', 1),
(2, 'Hay quá', ' &lt;div class=&quot;bd-bt-boxright&quot;&gt;&lt;/div&gt; &lt;div class=&quot;bd-bt-boxright&quot;&gt;&lt;/div&gt; &lt;div class=&quot;bd-bt-boxright&quot;&gt;&lt;/div&gt;', 1, '2011-12-05 01:00:43', 'grouplaptrinh', 1),
(3, 'fgdggfdg', ' &lt;div class=&quot;bd-bt-boxright&quot;&gt;&lt;/div&gt; &lt;div class=&quot;bd-bt-boxright&quot;&gt;&lt;/div&gt; &lt;div class=&quot;bd-bt-boxright&quot;&gt;&lt;/div&gt;', 1, '2011-12-05 01:03:21', 'grouplaptrinh', 1),
(4, 'Hay quá', 'Giới thiệu sản phẩm lần 2Giới thiệu sản phẩm lần 2', 1, '2011-12-05 02:57:23', 'grouplaptrinh', 2);

-- --------------------------------------------------------

--
-- Table structure for table `dos_module_news`
--

CREATE TABLE IF NOT EXISTS `dos_module_news` (
  `record_id` int(11) NOT NULL AUTO_INCREMENT,
  `pic_thumb` varchar(45) DEFAULT NULL,
  `title` varchar(100) NOT NULL,
  `titleen` varchar(100) DEFAULT NULL,
  `titlefr` varchar(100) DEFAULT NULL,
  `preview` text NOT NULL,
  `previewen` text,
  `previewfr` text,
  `content` text NOT NULL,
  `contenten` text,
  `contentfr` text,
  `author` varchar(45) DEFAULT NULL,
  `hits` int(11) NOT NULL DEFAULT '1',
  `postdate` timestamp NULL DEFAULT CURRENT_TIMESTAMP,
  `record_order` int(11) NOT NULL DEFAULT '1',
  `record_type` tinyint(1) NOT NULL DEFAULT '0',
  `extra_field1` varchar(45) DEFAULT NULL,
  `extra_field2` varchar(45) DEFAULT NULL,
  `enable` tinyint(1) NOT NULL DEFAULT '1',
  `dos_module_news_cat_cat_id` int(11) NOT NULL,
  PRIMARY KEY (`record_id`),
  KEY `fk_dos_module_news_dos_module_news_cat` (`dos_module_news_cat_cat_id`)
) ENGINE=InnoDB  DEFAULT CHARSET=utf8 AUTO_INCREMENT=11 ;

--
-- Dumping data for table `dos_module_news`
--

INSERT INTO `dos_module_news` (`record_id`, `pic_thumb`, `title`, `titleen`, `titlefr`, `preview`, `previewen`, `previewfr`, `content`, `contenten`, `contentfr`, `author`, `hits`, `postdate`, `record_order`, `record_type`, `extra_field1`, `extra_field2`, `enable`, `dos_module_news_cat_cat_id`) VALUES
(1, NULL, 'dasdsadsa', '', '', '&lt;p&gt;\r\n	test&lt;/p&gt;\r\n', '', '', '&lt;p&gt;\r\n	test&lt;/p&gt;\r\n', '', '', NULL, 1, '2011-09-09 08:28:58', 1, 1, NULL, NULL, 1, 11),
(2, NULL, 'safa', '', '', '&lt;p&gt;\r\n	asf&lt;/p&gt;\r\n', '', '', '&lt;p&gt;\r\n	asf&lt;/p&gt;\r\n', '', '', NULL, 1, '2011-09-09 14:36:00', 1, 0, NULL, NULL, 1, 11),
(3, NULL, 'adasd', '', '', '&lt;p&gt;\r\n	sdsad&lt;/p&gt;\r\n', '', '', '&lt;p&gt;\r\n	sdasd&lt;/p&gt;\r\n', '', '', NULL, 1, '2011-09-23 01:48:31', 2, 1, NULL, NULL, 1, 11),
(4, NULL, 'assa', '', '', '&lt;p&gt;\r\n	saassa&lt;/p&gt;\r\n', '', '', '&lt;p&gt;\r\n	sasasa&lt;/p&gt;\r\n', '', '', NULL, 1, '2011-12-06 08:46:33', 3, 1, NULL, NULL, 1, 12),
(5, NULL, 'dfdffd', '', '', '&lt;p&gt;\r\n	dfdf&lt;/p&gt;\r\n', '', '', '&lt;p&gt;\r\n	dffddf&lt;/p&gt;\r\n', '', '', NULL, 1, '2011-12-06 08:48:02', 4, 1, NULL, NULL, 1, 12),
(6, NULL, 'ssddsds', '', '', '&lt;p&gt;\r\n	dsdsds&lt;/p&gt;\r\n', '', '', '&lt;p&gt;\r\n	dssdds&lt;/p&gt;\r\n', '', '', NULL, 1, '2011-12-06 08:48:13', 5, 1, NULL, NULL, 1, 12),
(7, NULL, 'sddsdsd', '', '', '&lt;p&gt;\r\n	ssddssd&lt;/p&gt;\r\n', '', '', '&lt;p&gt;\r\n	sdsdds&lt;/p&gt;\r\n', '', '', NULL, 1, '2011-12-06 08:48:20', 6, 1, NULL, NULL, 1, 12),
(8, NULL, 'sddssd', '', '', '&lt;p&gt;\r\n	dsdsdsds&lt;/p&gt;\r\n', '', '', '&lt;p&gt;\r\n	dssddsds&lt;/p&gt;\r\n', '', '', NULL, 1, '2011-12-06 08:48:27', 7, 1, NULL, NULL, 1, 12),
(9, NULL, 'tiêu đề', '', '', '&lt;p&gt;\r\n	tetset&lt;/p&gt;\r\n', '', '', '&lt;p&gt;\r\n	setstset&lt;/p&gt;\r\n', '', '', NULL, 1, '2011-12-06 08:48:41', 8, 1, NULL, NULL, 1, 12),
(10, 'logo49.jpg', 'tieu de 2', '', '', '&lt;p&gt;\r\n	tesseet&lt;/p&gt;\r\n', '', '', '&lt;p&gt;\r\n	setsetst&lt;/p&gt;\r\n', '', '', NULL, 1, '2011-12-06 08:48:54', 9, 1, NULL, NULL, 1, 12);

-- --------------------------------------------------------

--
-- Table structure for table `dos_module_news_cat`
--

CREATE TABLE IF NOT EXISTS `dos_module_news_cat` (
  `cat_id` int(11) NOT NULL AUTO_INCREMENT,
  `cat_parent_id` int(11) NOT NULL DEFAULT '0',
  `cat_title` varchar(45) NOT NULL,
  `cat_titleen` varchar(45) DEFAULT NULL,
  `cat_titlefr` varchar(45) DEFAULT NULL,
  `cat_order` int(11) NOT NULL DEFAULT '1',
  `cat_enable` tinyint(1) NOT NULL DEFAULT '1',
  PRIMARY KEY (`cat_id`)
) ENGINE=InnoDB  DEFAULT CHARSET=utf8 AUTO_INCREMENT=13 ;

--
-- Dumping data for table `dos_module_news_cat`
--

INSERT INTO `dos_module_news_cat` (`cat_id`, `cat_parent_id`, `cat_title`, `cat_titleen`, `cat_titlefr`, `cat_order`, `cat_enable`) VALUES
(11, 0, 'Test', '', '', 1, 1),
(12, 0, 'Tin tuc 1', '', '', 2, 1);

-- --------------------------------------------------------

--
-- Table structure for table `dos_module_payment`
--

CREATE TABLE IF NOT EXISTS `dos_module_payment` (
  `record_id` int(11) NOT NULL AUTO_INCREMENT,
  `title` varchar(45) DEFAULT NULL,
  `titleen` varchar(45) DEFAULT NULL,
  `titlefr` varchar(45) DEFAULT NULL,
  `content` text,
  `contenten` text,
  `contentfr` text,
  `hits` int(11) DEFAULT '1',
  `posted_date` timestamp NULL DEFAULT CURRENT_TIMESTAMP,
  `record_order` int(11) DEFAULT '1',
  `extra_field1` varchar(45) DEFAULT NULL,
  `extra_field2` varchar(45) DEFAULT NULL,
  `hot` tinyint(1) NOT NULL DEFAULT '0',
  `enable` tinyint(1) DEFAULT '1',
  PRIMARY KEY (`record_id`)
) ENGINE=InnoDB  DEFAULT CHARSET=utf8 AUTO_INCREMENT=4 ;

--
-- Dumping data for table `dos_module_payment`
--

INSERT INTO `dos_module_payment` (`record_id`, `title`, `titleen`, `titlefr`, `content`, `contenten`, `contentfr`, `hits`, `posted_date`, `record_order`, `extra_field1`, `extra_field2`, `hot`, `enable`) VALUES
(3, 'Thanh toán', 'Payment', 'Payment', '&lt;p&gt;\r\n	Bạn sẽ thanh toán 30% trước khi đến nhận phòng tại Resort.&lt;br /&gt;\r\n	Thanh toán qua tài khoản:&lt;/p&gt;\r\n&lt;p style=&quot;margin-left:40px;&quot;&gt;\r\n	Tên ngân hàng: Ngân hàng thương mại cổ phần Kỹ thương Việt Nam - TechComBank&lt;br /&gt;\r\n	Số Tài Khoản: 115 2006 2718 019&lt;br /&gt;\r\n	Chủ tài khoản: Công ty CP Cadasa.&lt;/p&gt;\r\n&lt;p&gt;\r\n	&lt;span style=&quot;color:rgb(255,0,0);&quot;&gt;Chúng tôi sẽ giữ chỗ bạn trong vòng 48h, Nếu bạn không đến nhận phòng hoặc chưa chuyển khoản 30%, hệ thống sẽ tự động xóa.&lt;/span&gt;&lt;/p&gt;\r\n', '&lt;p&gt;\r\n	Payment&lt;/p&gt;\r\n', '&lt;p&gt;\r\n	Payment&lt;/p&gt;\r\n', 1, '2011-06-26 16:53:41', 1, '', '', 0, 1);

-- --------------------------------------------------------

--
-- Table structure for table `dos_module_philosophy`
--

CREATE TABLE IF NOT EXISTS `dos_module_philosophy` (
  `record_id` int(11) NOT NULL AUTO_INCREMENT,
  `title` varchar(45) DEFAULT NULL,
  `titleen` varchar(45) DEFAULT NULL,
  `titlefr` varchar(45) DEFAULT NULL,
  `content` text,
  `contenten` text,
  `contentfr` text,
  `hits` int(11) DEFAULT '1',
  `posted_date` timestamp NULL DEFAULT CURRENT_TIMESTAMP,
  `record_order` int(11) DEFAULT '1',
  `extra_field1` varchar(45) DEFAULT NULL,
  `extra_field2` varchar(45) DEFAULT NULL,
  `hot` tinyint(1) NOT NULL DEFAULT '0',
  `enable` tinyint(1) DEFAULT '1',
  PRIMARY KEY (`record_id`)
) ENGINE=InnoDB  DEFAULT CHARSET=utf8 AUTO_INCREMENT=31 ;

--
-- Dumping data for table `dos_module_philosophy`
--

INSERT INTO `dos_module_philosophy` (`record_id`, `title`, `titleen`, `titlefr`, `content`, `contenten`, `contentfr`, `hits`, `posted_date`, `record_order`, `extra_field1`, `extra_field2`, `hot`, `enable`) VALUES
(30, 'Nơi Niềm Tin Hội Tụ', '', '', '&lt;p style=&quot;text-align:justify;&quot;&gt;\n	&lt;span style=&quot;font-size:14px;&quot;&gt;&lt;span style=&quot;font-size:16px;&quot;&gt;&lt;strong&gt;Philosophy: Chia sẻ để thành công&lt;/strong&gt;&lt;/span&gt;&lt;/span&gt;&lt;/p&gt;\n&lt;p style=&quot;text-align:justify;&quot;&gt;\n	&lt;br /&gt;&lt;span style=&quot;font-size:12px;&quot;&gt;“Cú huých lớn được góp nhặt từ những cái nhỏ” Jeffrey(Marketing Expert). Nhiều khâu vụn vặt đã kết hợp lại với nhau thành một chiến lược lớn, và kết quả là sự ra đời của trang SieuthiPOSM.com, cổng thông tin dành riêng cho những ai quan tâm tới các chiến dịch quảng cáo, trong đó POSM(Point Of Sales Material) được quan tâm chuyên sâu hơn.&lt;/span&gt;&lt;/p&gt;\n&lt;p style=&quot;text-align:justify;&quot;&gt;\n	&lt;br /&gt;&lt;span style=&quot;font-size:12px;&quot;&gt;Tất cả các cá nhân, tổ chức, tư vấn viên độc lập,..đều có một sức mạnh để tự đưa mình lên một vị trí quan trọng trong thế giới trực tuyến. SieuthiPOSM.com muốn trở thành nơi của những chuyên viên đang hoạt động trong lỉnh vực vật tư quãng cáo, Marketing ATL, Marketing BTL, và Digital Marketing thể hiện sức mạnh của mình, nơi của những người có niềm đam mê chia sẻ và yêu thích thảo luận trong lỉnh vực Marketing, sử dụng POSM trong các chiến dịch quãng cáo.&lt;/span&gt;&lt;/p&gt;\n&lt;p style=&quot;text-align:justify;&quot;&gt;\n	&lt;br /&gt;&lt;span style=&quot;font-size:12px;&quot;&gt;Với mong muốn làm SieuthiPOSM.com trở thành phương tiện truyền thông cho các tổ chức, cá nhân chuyển tải thông tin phù hợp đến với người mua, là nơi mà người mua có thể tiếp nhận thông tin một cách tốt nhất. chúng tôi muốn lấy Web làm phương tiện truyền thông nền tảng để truyền tải những nội dung thông tin và tư duy của các chuyên viên qua các trang Web, bài viết, hình vẽ, ảnh chụp, âm thanh, đoạn Video, và thậm chí là đưa cả sản phẩm dịch vụ vào phim ảnh, các trò chơi và thực tại trong thế giới ảo.&lt;/span&gt;&lt;/p&gt;\n&lt;p style=&quot;text-align:justify;&quot;&gt;\n	&lt;br /&gt;&lt;span style=&quot;font-size:12px;&quot;&gt;Vì một cộng đồng Marketing Việt Nam phát triển, vì một nghành công nghiệp sản xuất POSM còn non trẻ, với hy vọng Việt Nam sẽ có những nhà cung cấp POSM đủ năng lực sản xuất để xuất khẩu, mang lại nhiều giá trị cho doanh nghiệp Viêt Nam, dân tộc Việt Nam.&lt;/span&gt;&lt;/p&gt;\n&lt;p style=&quot;text-align:right;&quot;&gt;\n	 &lt;/p&gt;\n&lt;p style=&quot;text-align:right;&quot;&gt;\n	 &lt;/p&gt;\n&lt;p style=&quot;text-align:right;&quot;&gt;\n	&lt;span style=&quot;font-size:12px;&quot;&gt;Trân trọng.&lt;/span&gt;&lt;/p&gt;\n&lt;p style=&quot;text-align:center;&quot;&gt;\n	 &lt;/p&gt;\n&lt;p style=&quot;text-align:center;&quot;&gt;\n	 &lt;/p&gt;\n&lt;p style=&quot;text-align:center;&quot;&gt;\n	&lt;span style=&quot;font-size:14px;&quot;&gt;&lt;span style=&quot;font-size:16px;&quot;&gt;&lt;strong&gt;On Time – Keep Promise – Don’t tell a lie&lt;/strong&gt;&lt;/span&gt;&lt;/span&gt;&lt;br /&gt;\n	 &lt;/p&gt;\n', '', '', 132, '2011-09-21 02:21:41', 2, '', '', 0, 1);

-- --------------------------------------------------------

--
-- Table structure for table `dos_module_product`
--

CREATE TABLE IF NOT EXISTS `dos_module_product` (
  `record_id` int(11) NOT NULL AUTO_INCREMENT,
  `postdate` timestamp NOT NULL DEFAULT CURRENT_TIMESTAMP,
  `pic_thumb` varchar(45) DEFAULT NULL,
  `pic_full` varchar(45) DEFAULT NULL,
  `pic_desc` varchar(1000) DEFAULT NULL,
  `title` varchar(100) NOT NULL,
  `titleen` varchar(100) DEFAULT NULL,
  `titlefr` varchar(100) DEFAULT NULL,
  `detail` text NOT NULL,
  `detailen` text,
  `detailfr` text,
  `hits` int(11) DEFAULT '0',
  `record_order` int(11) DEFAULT '1',
  `extra_field1` varchar(45) DEFAULT NULL,
  `extra_field2` varchar(45) DEFAULT NULL,
  `extra_field3` varchar(45) DEFAULT NULL,
  `extra_field4` varchar(45) DEFAULT NULL,
  `unit` int(11) NOT NULL DEFAULT '0',
  `hot` tinyint(1) DEFAULT '0',
  `enable` tinyint(1) DEFAULT '1',
  `dos_module_product_cat_cat_id` int(11) NOT NULL,
  PRIMARY KEY (`record_id`),
  KEY `fk_dos_module_product_dos_module_product_cat` (`dos_module_product_cat_cat_id`)
) ENGINE=InnoDB  DEFAULT CHARSET=utf8 AUTO_INCREMENT=3 ;

--
-- Dumping data for table `dos_module_product`
--

INSERT INTO `dos_module_product` (`record_id`, `postdate`, `pic_thumb`, `pic_full`, `pic_desc`, `title`, `titleen`, `titlefr`, `detail`, `detailen`, `detailfr`, `hits`, `record_order`, `extra_field1`, `extra_field2`, `extra_field3`, `extra_field4`, `unit`, `hot`, `enable`, `dos_module_product_cat_cat_id`) VALUES
(1, '2011-09-18 00:05:23', NULL, NULL, NULL, 'test', '', '', '&lt;p&gt;\r\n	test&lt;/p&gt;\r\n', '', '', 0, 1, '', '', '', '', 0, 1, 1, 1),
(2, '2011-09-23 01:50:44', NULL, NULL, '', 'asd', '', '', '&lt;p&gt;\r\n	asdasdasd&lt;/p&gt;\r\n', '', '', 0, 2, '', '', '', '', 0, 0, 1, 1);

-- --------------------------------------------------------

--
-- Table structure for table `dos_module_productions`
--

CREATE TABLE IF NOT EXISTS `dos_module_productions` (
  `record_id` int(11) NOT NULL AUTO_INCREMENT,
  `pic_thumb` varchar(45) DEFAULT NULL,
  `title` varchar(100) NOT NULL,
  `titleen` varchar(100) DEFAULT NULL,
  `titlefr` varchar(100) DEFAULT NULL,
  `preview` text NOT NULL,
  `previewen` text,
  `previewfr` text,
  `content` text NOT NULL,
  `contenten` text,
  `contentfr` text,
  `author` varchar(45) DEFAULT NULL,
  `hits` int(11) NOT NULL DEFAULT '1',
  `postdate` timestamp NULL DEFAULT CURRENT_TIMESTAMP,
  `record_order` int(11) NOT NULL DEFAULT '1',
  `record_type` tinyint(1) NOT NULL DEFAULT '0',
  `extra_field1` varchar(45) DEFAULT NULL,
  `extra_field2` varchar(45) DEFAULT NULL,
  `enable` tinyint(1) NOT NULL DEFAULT '1',
  `dos_module_item_cat_cat_id` int(11) NOT NULL,
  PRIMARY KEY (`record_id`),
  KEY `fk_dos_module_studies_dos_module_studies_cat` (`dos_module_item_cat_cat_id`)
) ENGINE=InnoDB  DEFAULT CHARSET=utf8 AUTO_INCREMENT=5 ;

--
-- Dumping data for table `dos_module_productions`
--

INSERT INTO `dos_module_productions` (`record_id`, `pic_thumb`, `title`, `titleen`, `titlefr`, `preview`, `previewen`, `previewfr`, `content`, `contenten`, `contentfr`, `author`, `hits`, `postdate`, `record_order`, `record_type`, `extra_field1`, `extra_field2`, `enable`, `dos_module_item_cat_cat_id`) VALUES
(1, 'hinh-nho.jpg', 'Cách âm -1111', '', '', '&lt;p&gt;\r\n	Khong nghe thay gi het&lt;/p&gt;\r\n', '', '', '&lt;p&gt;\r\n	Khong nghe thay gi hetKhong nghe thay gi hetKhong nghe thay gi hetKhong nghe thay gi hetKhong nghe thay gi hetKhong nghe thay gi hetKhong nghe thay gi hetKhong nghe thay gi hetKhong nghe thay gi hetKhong nghe thay gi hetKhong nghe thay gi hetKhong nghe thay gi hetKhong nghe thay gi hetKhong nghe thay gi hetKhong nghe thay gi hetKhong nghe thay gi hetKhong nghe thay gi hetKhong nghe thay gi hetKhong nghe thay gi hetKhong nghe thay gi hetKhong nghe thay gi hetKhong nghe thay gi hetKhong nghe thay gi het&lt;/p&gt;\r\n', '', '', NULL, 1, '2011-12-04 17:48:26', 1, 0, NULL, NULL, 1, 3),
(2, 'moc-khoa-hoi-00021.jpg', 'Giới thiệu sản phẩm lần 2', '', '', '&lt;p&gt;\r\n	Giới thiệu sản phẩm lần 2Giới thiệu sản phẩm lần 2&lt;/p&gt;\r\n&lt;p&gt;\r\n	Giới thiệu sản phẩm lần 2&lt;/p&gt;\r\n', '', '', '&lt;p&gt;\r\n	Giới thiệu sản phẩm lần 2Giới thiệu sản phẩm lần 2Giới thiệu sản phẩm lần 2&lt;/p&gt;\r\n&lt;p&gt;\r\n	&lt;strong&gt;Giới thiệu sản phẩm lần 2Giới thiệu sản phẩm lần 2Giới thiệu sản phẩm lần 2&lt;/strong&gt;&lt;/p&gt;\r\n&lt;p&gt;\r\n	&lt;strong&gt;Giới thiệu sản phẩm lần 2Giới thiệu sản phẩm lần 2&lt;/strong&gt;&lt;/p&gt;\r\n&lt;p&gt;\r\n	&lt;strong&gt;Giới thiệu sản phẩm lần 2Giới thiệu sản phẩm lần 2&lt;/strong&gt;&lt;/p&gt;\r\n&lt;p&gt;\r\n	Giới thiệu sản phẩm lần 2&lt;/p&gt;\r\n', '', '', NULL, 1, '2011-12-04 19:56:41', 1, 0, NULL, NULL, 1, 3),
(3, NULL, 'Giới thiệu sản phẩm lần 3', '', '', '&lt;p&gt;\r\n	ghgfhghfgh&lt;/p&gt;\r\n', '', '', '&lt;p&gt;\r\n	hgfjkhg;kdsfhg;dkshgk&lt;/p&gt;\r\n', '', '', NULL, 1, '2011-12-06 01:34:33', 1, 0, NULL, NULL, 1, 3),
(4, NULL, 'gfhjklkj', '', '', '&lt;p&gt;\r\n	cbchgjhjl;&lt;/p&gt;\r\n&lt;p&gt;\r\n	 &lt;/p&gt;\r\n', '&lt;p&gt;\r\n	ghjkll;lkvcbchgjhkjljkjhcghj&lt;/p&gt;\r\n', '', '&lt;p&gt;\r\n	bfjkdhjkfhgdf&lt;/p&gt;\r\n&lt;p&gt;\r\n	hkd;&lt;/p&gt;\r\n', '', '', NULL, 1, '2011-12-06 17:30:27', 1, 0, NULL, NULL, 1, 3);

-- --------------------------------------------------------

--
-- Table structure for table `dos_module_productions_cat`
--

CREATE TABLE IF NOT EXISTS `dos_module_productions_cat` (
  `cat_id` int(11) NOT NULL AUTO_INCREMENT,
  `cat_parent_id` int(11) NOT NULL DEFAULT '0',
  `cat_title` varchar(45) NOT NULL,
  `cat_titleen` varchar(45) DEFAULT NULL,
  `cat_titlefr` varchar(45) DEFAULT NULL,
  `cat_order` int(11) NOT NULL DEFAULT '1',
  `cat_enable` tinyint(1) NOT NULL DEFAULT '1',
  PRIMARY KEY (`cat_id`)
) ENGINE=InnoDB  DEFAULT CHARSET=utf8 AUTO_INCREMENT=4 ;

--
-- Dumping data for table `dos_module_productions_cat`
--

INSERT INTO `dos_module_productions_cat` (`cat_id`, `cat_parent_id`, `cat_title`, `cat_titleen`, `cat_titlefr`, `cat_order`, `cat_enable`) VALUES
(1, 0, 'Ứng dụng kinh tế', '', '', 1, 1),
(2, 0, 'Ứng dụng cách  nhiệt', '', '', 2, 1),
(3, 0, 'Ứng dụng cách  âm', '', '', 3, 1);

-- --------------------------------------------------------

--
-- Table structure for table `dos_module_productions_comments`
--

CREATE TABLE IF NOT EXISTS `dos_module_productions_comments` (
  `comment_id` int(11) NOT NULL AUTO_INCREMENT,
  `comment_title` varchar(50) NOT NULL,
  `comment_content` varchar(1000) NOT NULL,
  `comment_enable` tinyint(1) DEFAULT '1',
  `comment_date` timestamp NOT NULL DEFAULT CURRENT_TIMESTAMP,
  `dos_sys_users_username` varchar(45) NOT NULL,
  `dos_module_item_record_id` int(11) NOT NULL,
  PRIMARY KEY (`comment_id`),
  KEY `fk_dos_module_studies_comments_dos_sys_users` (`dos_sys_users_username`),
  KEY `fk_dos_module_studies_comments_dos_module_studies1` (`dos_module_item_record_id`)
) ENGINE=InnoDB  DEFAULT CHARSET=utf8 AUTO_INCREMENT=7 ;

--
-- Dumping data for table `dos_module_productions_comments`
--

INSERT INTO `dos_module_productions_comments` (`comment_id`, `comment_title`, `comment_content`, `comment_enable`, `comment_date`, `dos_sys_users_username`, `dos_module_item_record_id`) VALUES
(1, 'fgdggfdg', 'gfdgdsgdsfgdsfg', 1, '2011-12-04 17:55:32', 'grouplaptrinh', 1),
(2, 'Hay quá', ' &lt;div class=&quot;bd-bt-boxright&quot;&gt;&lt;/div&gt; &lt;div class=&quot;bd-bt-boxright&quot;&gt;&lt;/div&gt; &lt;div class=&quot;bd-bt-boxright&quot;&gt;&lt;/div&gt;', 1, '2011-12-04 18:00:43', 'grouplaptrinh', 1),
(3, 'fgdggfdg', ' &lt;div class=&quot;bd-bt-boxright&quot;&gt;&lt;/div&gt; &lt;div class=&quot;bd-bt-boxright&quot;&gt;&lt;/div&gt; &lt;div class=&quot;bd-bt-boxright&quot;&gt;&lt;/div&gt;', 1, '2011-12-04 18:03:21', 'grouplaptrinh', 1),
(4, 'Hay quá', 'Giới thiệu sản phẩm lần 2Giới thiệu sản phẩm lần 2', 1, '2011-12-04 19:57:23', 'grouplaptrinh', 2),
(5, 'Làm sai rồi', 'Kiểm tra lại đi ', 1, '2011-12-05 07:42:20', 'grouplaptrinh', 2),
(6, 'quảng cáo', 'Ứng dụng VLXD nhẹ » Ứng dụng cách âmỨng dụng VLXD nhẹ » Ứng dụng cách âmỨng dụng VLXD nhẹ » Ứng dụng cách âm', 1, '2011-12-06 01:38:45', 'grouplaptrinh', 3);

-- --------------------------------------------------------

--
-- Table structure for table `dos_module_product_cat`
--

CREATE TABLE IF NOT EXISTS `dos_module_product_cat` (
  `cat_id` int(11) NOT NULL AUTO_INCREMENT,
  `cat_parent_id` int(11) NOT NULL DEFAULT '0',
  `pic_thumb` varchar(45) DEFAULT NULL,
  `pic_full` varchar(45) DEFAULT NULL,
  `pic_desc` varchar(1000) DEFAULT NULL,
  `cat_title` varchar(45) NOT NULL,
  `cat_titleen` varchar(45) DEFAULT NULL,
  `cat_titlefr` varchar(45) DEFAULT NULL,
  `preview` text,
  `previewen` text,
  `previewfr` text,
  `cat_order` int(11) NOT NULL DEFAULT '1',
  `cat_extra1` varchar(45) DEFAULT NULL,
  `cat_extra2` varchar(45) DEFAULT NULL,
  `cat_extra3` varchar(45) DEFAULT NULL,
  `cat_extra4` varchar(45) DEFAULT NULL,
  `cat_enable` tinyint(1) NOT NULL DEFAULT '1',
  PRIMARY KEY (`cat_id`)
) ENGINE=InnoDB  DEFAULT CHARSET=utf8 AUTO_INCREMENT=3 ;

--
-- Dumping data for table `dos_module_product_cat`
--

INSERT INTO `dos_module_product_cat` (`cat_id`, `cat_parent_id`, `pic_thumb`, `pic_full`, `pic_desc`, `cat_title`, `cat_titleen`, `cat_titlefr`, `preview`, `previewen`, `previewfr`, `cat_order`, `cat_extra1`, `cat_extra2`, `cat_extra3`, `cat_extra4`, `cat_enable`) VALUES
(1, 0, NULL, NULL, '', 'test', '', '', NULL, NULL, NULL, 1, '', '', '', '', 1),
(2, 1, NULL, NULL, '', 'test 2', '', '', NULL, NULL, NULL, 2, '', '', '', '', 1);

-- --------------------------------------------------------

--
-- Table structure for table `dos_module_promotions`
--

CREATE TABLE IF NOT EXISTS `dos_module_promotions` (
  `record_id` int(11) NOT NULL AUTO_INCREMENT,
  `title` varchar(45) DEFAULT NULL,
  `titleen` varchar(45) DEFAULT NULL,
  `titlefr` varchar(45) DEFAULT NULL,
  `content` text,
  `contenten` text,
  `contentfr` text,
  `pic_full` varchar(100) DEFAULT NULL,
  `hits` int(11) DEFAULT '1',
  `posted_date` timestamp NULL DEFAULT CURRENT_TIMESTAMP,
  `record_order` int(11) DEFAULT '1',
  `extra_field1` varchar(45) DEFAULT NULL,
  `extra_field2` varchar(45) DEFAULT NULL,
  `hot` tinyint(1) NOT NULL DEFAULT '0',
  `enable` tinyint(1) DEFAULT '1',
  PRIMARY KEY (`record_id`)
) ENGINE=InnoDB  DEFAULT CHARSET=utf8 AUTO_INCREMENT=4 ;

--
-- Dumping data for table `dos_module_promotions`
--

INSERT INTO `dos_module_promotions` (`record_id`, `title`, `titleen`, `titlefr`, `content`, `contenten`, `contentfr`, `pic_full`, `hits`, `posted_date`, `record_order`, `extra_field1`, `extra_field2`, `hot`, `enable`) VALUES
(2, 'Nội bật', '', '', '&lt;p&gt;\r\n	Bật quá&lt;/p&gt;\r\n', '', '', '2s4.jpg', 107, '2011-09-12 08:02:16', 1, '', '', 1, 1),
(3, 'test', '', '', '&lt;p&gt;\r\n	test&lt;/p&gt;\r\n', '', '', NULL, 10, '2011-09-12 08:35:13', 2, '', '', 0, 1);

-- --------------------------------------------------------

--
-- Table structure for table `dos_module_provinces`
--

CREATE TABLE IF NOT EXISTS `dos_module_provinces` (
  `province_id` smallint(6) NOT NULL,
  `province_name` varchar(45) DEFAULT NULL,
  PRIMARY KEY (`province_id`)
) ENGINE=InnoDB DEFAULT CHARSET=utf8;

--
-- Dumping data for table `dos_module_provinces`
--

INSERT INTO `dos_module_provinces` (`province_id`, `province_name`) VALUES
(1, 'An Giang'),
(2, 'Bà rịa - Vũng tàu'),
(3, 'Bạc Liêu'),
(4, 'Bắc Cạn'),
(5, 'Bắc Giang'),
(6, 'Bắc Ninh'),
(7, 'Bến Tre'),
(8, 'Bình Dương'),
(9, 'Bình Định'),
(10, 'Bình Phước'),
(11, 'Bình Thuận'),
(12, 'Cà Mau'),
(13, 'Cao Bằng'),
(14, 'Cần Thơ'),
(15, 'Đà  Nẵng'),
(16, 'Đăk Lăk'),
(17, 'Đắk Nông'),
(18, 'Điện Biên'),
(19, 'Đồng Nai'),
(20, 'Đồng Tháp'),
(21, 'Gia Lai'),
(22, 'Hà Giang'),
(23, 'Hà Nam'),
(24, 'Hà Nội'),
(25, 'Hà Tĩnh'),
(26, 'Hải Dương'),
(27, 'Hải Phòng'),
(28, 'Hậu Giang'),
(29, 'Hòa Bình'),
(30, 'Thành phố Hồ Chí Minh'),
(31, 'Hưng Yên'),
(32, 'Khánh Hoà'),
(33, 'Kiên Giang'),
(34, 'Kon Tum'),
(35, 'Lai Châu'),
(36, 'Lạng Sơn'),
(37, 'Lào Cai'),
(38, 'Lâm Đồng'),
(39, 'Long An'),
(40, 'Nam Định'),
(41, 'Nghệ An'),
(42, 'Ninh Bình'),
(43, 'Ninh Thuận'),
(44, 'Phú Thọ'),
(45, 'Phú Yên'),
(46, 'Quảng Bình'),
(47, 'Quảng Nam'),
(48, 'Quảng Ngãi'),
(49, 'Quảng Ninh'),
(50, 'Quảng Trị'),
(51, 'Sóc Trăng'),
(52, 'Sơn La'),
(53, 'Tây Ninh'),
(54, 'Thái Bình'),
(55, 'Thái Nguyên'),
(56, 'Thanh Hoá'),
(57, 'Thừa Thiên-Huế'),
(58, 'Tiền Giang'),
(59, 'Trà Vinh'),
(60, 'Tuyên Quang'),
(61, 'Vĩnh Long'),
(62, 'Vĩnh Phúc'),
(63, 'Yên Bái');

-- --------------------------------------------------------

--
-- Table structure for table `dos_module_services`
--

CREATE TABLE IF NOT EXISTS `dos_module_services` (
  `record_id` int(11) NOT NULL AUTO_INCREMENT,
  `title` varchar(45) DEFAULT NULL,
  `titleen` varchar(45) DEFAULT NULL,
  `titlefr` varchar(45) DEFAULT NULL,
  `pic_full` varchar(100) DEFAULT NULL,
  `preview` text,
  `previewen` text,
  `previewfr` text,
  `content` text,
  `contenten` text,
  `contentfr` text,
  `hits` int(11) NOT NULL DEFAULT '1',
  `posted_date` timestamp NULL DEFAULT CURRENT_TIMESTAMP,
  `record_order` int(11) DEFAULT '1',
  `extra_field1` varchar(45) DEFAULT NULL,
  `extra_field2` varchar(45) DEFAULT NULL,
  `hot` tinyint(1) NOT NULL DEFAULT '0',
  `enable` tinyint(1) DEFAULT '1',
  PRIMARY KEY (`record_id`)
) ENGINE=InnoDB  DEFAULT CHARSET=utf8 AUTO_INCREMENT=11 ;

--
-- Dumping data for table `dos_module_services`
--

INSERT INTO `dos_module_services` (`record_id`, `title`, `titleen`, `titlefr`, `pic_full`, `preview`, `previewen`, `previewfr`, `content`, `contenten`, `contentfr`, `hits`, `posted_date`, `record_order`, `extra_field1`, `extra_field2`, `hot`, `enable`) VALUES
(10, 'dasdsadsa', '', '', NULL, '&lt;p&gt;\r\n	rrrrr&lt;/p&gt;\r\n', '', '', '&lt;p&gt;\r\n	ewrwr&lt;/p&gt;\r\n', '', '', 14, '2011-09-12 08:34:51', 1, '', '', 0, 1);

-- --------------------------------------------------------

--
-- Table structure for table `dos_module_studies`
--

CREATE TABLE IF NOT EXISTS `dos_module_studies` (
  `record_id` int(11) NOT NULL AUTO_INCREMENT,
  `pic_thumb` varchar(45) DEFAULT NULL,
  `title` varchar(100) NOT NULL,
  `titleen` varchar(100) DEFAULT NULL,
  `titlefr` varchar(100) DEFAULT NULL,
  `preview` text NOT NULL,
  `previewen` text,
  `previewfr` text,
  `content` text NOT NULL,
  `contenten` text,
  `contentfr` text,
  `author` varchar(45) DEFAULT NULL,
  `hits` int(11) NOT NULL DEFAULT '1',
  `postdate` timestamp NULL DEFAULT CURRENT_TIMESTAMP,
  `record_order` int(11) NOT NULL DEFAULT '1',
  `record_type` tinyint(1) NOT NULL DEFAULT '0',
  `extra_field1` varchar(45) DEFAULT NULL,
  `extra_field2` varchar(45) DEFAULT NULL,
  `enable` tinyint(1) NOT NULL DEFAULT '1',
  `dos_module_studies_cat_cat_id` int(11) NOT NULL,
  PRIMARY KEY (`record_id`),
  KEY `fk_dos_module_studies_dos_module_studies_cat` (`dos_module_studies_cat_cat_id`)
) ENGINE=InnoDB  DEFAULT CHARSET=utf8 AUTO_INCREMENT=20 ;

--
-- Dumping data for table `dos_module_studies`
--

INSERT INTO `dos_module_studies` (`record_id`, `pic_thumb`, `title`, `titleen`, `titlefr`, `preview`, `previewen`, `previewfr`, `content`, `contenten`, `contentfr`, `author`, `hits`, `postdate`, `record_order`, `record_type`, `extra_field1`, `extra_field2`, `enable`, `dos_module_studies_cat_cat_id`) VALUES
(13, 'hinh-nho.jpg', 'Viral marketing manager anh là ai?', '', '', '&lt;p&gt;\n	Anh ta đến công ty với đôi mắt thâm quầng sau một đêm mất ngủ vì chơi Facebook game. Ngồi vào bàn làm việc, anh ta dạo qua tất cả các báo mạng lớn.&lt;br /&gt;\n	 &lt;/p&gt;\n', '', '', '&lt;p&gt;\n	Anh ta đến công ty với đôi mắt thâm quầng sau một đêm mất ngủ vì chơi Facebook game. Ngồi vào bàn làm việc, anh ta dạo qua tất cả các báo mạng lớn.&lt;/p&gt;\n&lt;p&gt;\n	&lt;br /&gt;\n	Trong lúc các thành viên khác đăm chiêu bên màn hình máy tính, anh ta lại mặc sức lang thang trên các mạng xã hội, chat chit, viết blog, comment tán gẫu trên các diễn đàn. Nhưng sếp ngồi ngay đằng sau lại chẳng ý kiến hay than phiền gì. Lâu lâu, anh ta lại xin sếp &quot;Cho em ra ngoài uống cafe với hội A, diễn đàn B&quot;.&lt;/p&gt;\n&lt;p&gt;\n	 &lt;/p&gt;\n&lt;p style=&quot;text-align:center;&quot;&gt;\n	&lt;img alt=&quot;&quot; src=&quot;/public/userfiles/images/Hinh%20Nho.jpg&quot; style=&quot;width:297px;height:208px;&quot; /&gt;&lt;/p&gt;\n&lt;p style=&quot;text-align:center;&quot;&gt;\n	 &lt;/p&gt;\n&lt;p&gt;\n	 &lt;/p&gt;\n&lt;p&gt;\n	Những người chưa biết về việc của anh ta thường tò mò, chẳng lẽ công ty trả lương để anh ta đến ngồi chơi?&lt;/p&gt;\n&lt;p&gt;\n	 &lt;/p&gt;\n&lt;p&gt;\n	Chơi mà ra việc để làm&lt;br /&gt;\n	Thực ra, vào blog, mạng xã hội hay chat chit không phải là để phục vụ cho việc giải trí của anh ấy, mà thực sự, anh ta đang làm một công việc của người làm online viral marketing. Là người phải hiểu sâu sắc nhất những xu hướng cập nhật trên mạng Internet, anh ta không khác gì một chiếc radar phải giương tai mắt nghe ngóng mọi động tĩnh nhằm thiết kế những chiến dịch viral marketing trực tuyến hiệu quả nhất.&lt;/p&gt;\n&lt;p&gt;\n	 &lt;/p&gt;\n&lt;p&gt;\n	Hơn ai hết, anh ta phải biết, tung cuộc thi trên mạng xã hội nào là phù hợp với đối tượng khách hàng mục tiêu, ưu điểm, nhược điểm của từng mạng xã hội, anh ta phải biết cần quảng bá chiến dịch của mình trên các diễn đàn đông người nào là phù hợp và phải làm sao để những người quản lý diễn đàn không những không xóa bài, ban nick mà còn hỗ trợ mình, anh ta có thể tư vấn cho khách hàng nên liên kết với những hot blogger nào để quảng bá sản phẩm cũng như tư vấn những ý tưởng hay ho nhất cho chiến dịch digital marketing một sản phẩm nào đó, dựa trên việc nhận định các xu thế mới nổi trên Internet.&lt;br /&gt;\n	Chẳng hạn như nhờ biết Don Nguyễn là một anh chàng nổi bật trong cộng đồng hát nhép, nhạc sĩ kiêm bầu show Vĩnh Thuyên đã thuê anh chàng này hát nhép bài hát Vọng cổ teen, rồi khi bài hát nhép của Don Nguyễn nổi rần rần trong cộng đồng mạng, mọi người mới đổ xô đi lùng sục bài hát &quot;gốc&quot;, và cô nàng Vĩnh Thuyên Kim nổi lên từ đó.&lt;/p&gt;\n&lt;p&gt;\n	 &lt;/p&gt;\n&lt;p&gt;\n	Làm nghề này có vất vả không?&lt;br /&gt;\n	Có thể nói đây là một nghề khá thoải mái vì bạn được làm những gì mình muốn: đọc báo mạng, bàn luận, tán gẫu và chơi game. Tuy nhiên, cũng như các chiến dịch Digital marketing nói chung, một Online Viral marketing thường đi kèm với những tiêu chí đo lường (KPI) cụ thể, vì số người xem, số người đăng ký, tỷ lệ chuyển đổi, số tác phẩm gởi về dự thi... nên người làm Online Viral marketing sẽ có những áp lực phải đáp ứng được các KPI này.&lt;/p&gt;\n&lt;p&gt;\n	 &lt;/p&gt;\n&lt;p&gt;\n	Về mặt thực thi, thông thường các Online Viral Marketing Manager sẽ không trực tiếp làm những việc như tung quảng cáo lên các diễn đàn hay post video lên từng trang Social Media, sẽ có những cộng tác viên hay nhân viên chịu trách nhiệm triển khai theo phương hướng của họ. Tuy nhiên người ta hay nói &quot;tam sao thất bản&quot;, từ ý tưởng, chủ trương của người leader, khi triển khai xuống team rất có thể đi trật đường rày, hoặc có thể do trình độ có hạn, chất lượng công việc các cộng tác viên (thường là sinh viên) không được như mong đợi, Online Viral Marketing Manager sẽ là người phải theo rất sát, đôn đốc, điều chỉnh và kịp thời khắc phục hậu quả (nếu có). Về mặt này thì họ cực chẳng khác gì một bảo mẫu giữ trẻ.&lt;/p&gt;\n&lt;p&gt;\n	&lt;br /&gt;\n	 &lt;/p&gt;\n&lt;p&gt;\n	Làm sao để làm công việc này&lt;br /&gt;\n	Công việc này trước hết đòi hỏi người có bề dày hoạt động trên mạng, chịu khó sục sạo mọi ngõ ngách trong xã hội ảo, trải nghiệm tất cả những xu hướng hot của cư dân mạng. Người làm online viral marketing tối thiểu phải có kinh nghiệm quản lý ít nhất một diễn đàn để hiểu cách vận hành của một diễn đàn cũng như insight của người dùng, họ cần dùng ít nhất 5 loại blog, mạng xã hội, sau đó từ nền tảng đó họ mới có thể phát triển các hiểu biết của mình về xã hội ảo. Sẽ là một lợi thế nếu đó là một người nổi tiếng sẵn trong cộng đồng mạng, quy tụ cho mình một lượng &quot;fan&quot; kha khá, việc lan truyền thông điệp sẽ dễ dàng hơn.&lt;/p&gt;\n&lt;p&gt;\n	&lt;br /&gt;&lt;br /&gt;\n	Thêm vào đó, phải biết chút ít về Digital Marketing, ít ra phải biết coi Google Analytics, biết phân biệt SEO và Google Adwords, biết traffic là cái gì, biết phần mềm email marketing..., nói chung phải có background về digital marketing để hiểu được các thuật ngữ trong ngành.&lt;/p&gt;\n&lt;p&gt;\n	 &lt;/p&gt;\n&lt;p&gt;\n	Hiện nay hầu hết các công ty Digital Marketing đều có nhân sự cho bộ phận này, và nó có thể được gọi dưới nhiều tên gọi khác nhau như Forum seeding, Community Development, Viral Marketing..., và hạng mục công việc có thể có phần giống, có phần khác nhau, tuy nhiên bản chất vẫn là tận dụng mối quan hệ và sự lan truyền trong cộng đồng mạng để quảng bá sản phẩm, thương hiệu hay vận động cho một chiến dịch xã hội nào đó.&lt;/p&gt;\n&lt;p&gt;\n	 &lt;/p&gt;\n&lt;p&gt;\n	Đời có trải đầy hoa hồng?&lt;br /&gt;\n	Tuy vậy, trên thực tế, số Online Viral Campaign ở Việt Nam gọi là thành công chỉ đếm chưa đầy 2 đầu ngón tay và ngón chân, và mỗi người làm công việc này chỉ có khoảng 1 đến 2 campaign &quot;để đời&quot;. Vì nhiều lý do, những online viral campaign không phải lúc nào cũng thành công như mong đợi. Nhiều công ty, ngay chính cả người trong nội bộ cũng chưa hiểu được tính chất &quot;lan truyền&quot; nằm trong 2 chữ Viral Marketing và họ đồng nhất khái niệm &quot;rải link&quot; trên các forum là &quot;viral marketing&quot;, vì vậy người làm viral marketing của công ty họ suốt ngày có một công việc là &quot;rải link lên các diễn đàn&quot;.&lt;/p&gt;\n&lt;p&gt;\n	 &lt;/p&gt;\n&lt;p&gt;\n	Có nhiều chiến dịch, do khách hàng thay đổi về kế hoạch, ngân sách, rất có thể từ ý tưởng tổ chức một cuộc thi hoành tráng, sau lại trở thành một trò tag ảnh nhận quà linh tinh trên Facebook. Hơn nữa, để cho một chiến dịch viral thành công, cần phải phối hợp tốt với các kênh khác như Ads banner, bài PR... để kích thích lan truyền vào giai đoạn đầu, nhưng có thể vì lý do tiết giảm ngân sách cho truyền thông, chiến dịch viral không lan rộng được như mong đợi.&lt;/p&gt;\n&lt;p&gt;\n	 &lt;/p&gt;\n&lt;p&gt;\n	Cũng có thể, một số sản phẩm tự thân rất khó làm viral, hoặc khi giới thiệu ra thì vấp phải sự phản đối tiêu cực từ người tiếp nhận, làm cho chiến dịch viral giảm hiệu quả rất nhiều so với kỳ vọng.&lt;/p&gt;\n&lt;p&gt;\n	&lt;br /&gt;&lt;strong&gt;Theo Motibee.com&lt;/strong&gt;&lt;/p&gt;\n&lt;p&gt;\n	 &lt;/p&gt;\n', '', '', NULL, 1, '2011-11-10 03:44:38', 6, 1, NULL, NULL, 1, 16),
(14, 'holding_hands.jpg', 'Phân tích SMART trong Online Marketing', '', '', '&lt;p&gt;\n	&lt;strong&gt;SPECIFIC&lt;/strong&gt;&lt;br /&gt;\n	Mục tiêu đặt ra phải cụ thể rõ ràng&lt;br /&gt;\n	Khi đặt câu hỏi: “Mục đích của campaign (hoặc dự án) online này là gì?”, khá nhiều lần tôi nhận được câu trả lời đại loại như: để tăng awareness, để xây dựng thương hiệu, để tiếp cận khách hàng trên mạng…&lt;/p&gt;\n', '', '', '&lt;p&gt;\n	&lt;strong&gt;SPECIFIC&lt;/strong&gt;&lt;br /&gt;&lt;strong&gt;Mục tiêu đặt ra phải cụ thể rõ ràng&lt;/strong&gt;&lt;/p&gt;\n&lt;p&gt;\n	&lt;br /&gt;\n	Khi đặt câu hỏi: “Mục đích của campaign (hoặc dự án) online này là gì?”, khá nhiều lần tôi nhận được câu trả lời đại loại như: để tăng awareness, để xây dựng thương hiệu, để tiếp cận khách hàng trên mạng…&lt;br /&gt;\n	Đó là những câu trả lời quá chung chung, nó sẽ là tác nhân dẫn chúng ta đến những campaign không có điểm kết thúc, không biết kết thúc khi nào và khi kết thúc rồi không biết có thành công hay không. Do đó thay vì chăm chăm bắt tay ngay vào các bước triển khai, chúng ta nên cùng nhau hoạch định trước mục tiêu.&lt;/p&gt;\n&lt;p&gt;\n	&lt;br /&gt;\n	Ví dụ, câu trả lời có thể là: Mục tiêu của website là đạt được 5 triệu unique visit mỗi tháng, hoặc mục tiêu của dự án là đạt được 20% doanh số từ online, hoặc mục tiêu là nhằm thu hút 2 triệu thành viên…&lt;br /&gt;\n	Đó là những mục tiêu cụ thể mà chúng ta đều thấy được ngay một cách rất rõ ràng. Khi đã có được điều đó, nó sẽ giúp chúng ta rất nhiều ở phần hoạch định các bước triển khai sau này.&lt;/p&gt;\n&lt;p&gt;\n	&lt;br /&gt;&lt;strong&gt;MEASURABLE&lt;br /&gt;\n	Mục tiêu đặt ra phải đo lường được.&lt;/strong&gt;&lt;/p&gt;\n&lt;p&gt;\n	&lt;br /&gt;\n	Lấy một trường hợp ví dụ: Một website cung cấp dịch vụ du lịch đưa ra mục tiêu với một con số rất cụ thể: đạt được 20% số lượng người sử dụng internet thích du lịch.&lt;br /&gt;\n	Phân tích kỹ hơn một chút, trước hết là chúng ta chưa có một nghiên cứu nào cho một con số cụ thể có bao nhiêu người thích du lịch đang xài internet – chúng ta có thể đến các trung tâm xúc tiến du lịch của chính phủ để xin số liệu và từ đó dự đoán ra theo tỉ lệ %, nhưng việc này rõ ràng không dễ và cũng không dễ có con số chính xác. Ngay cả khi đã có con số đó, việc làm thế nào để xác định thành viên nào là thành viên thuộc nhóm trên cũng không đơn giản.&lt;/p&gt;\n&lt;p&gt;\n	&lt;br /&gt;\n	Đó chính là ví dụ cho việc một mục tiêu không thể đo lường được, ngoài ra còn có khá nhiều ví dụ khác… Do đó khi đặt ra một mục tiêu, ngay sau đó chúng ta phải xác định ngay bước tiếp theo là mục tiêu đó có đo lường được hay không. Với Internet Marketing, chúng ta có thuận lợi hơn những người làm Offline Marketing rất nhiều ở việc luôn luôn có các công cụ phân tích và theo dõi xung quanh. Nếu mục tiêu là traffic, Google Analytics có thể là lựa chọn hợp lý nhất hiện tại, nếu mục tiêu là doanh số từ thương mại điện tử, vẫn có thể dùng Google Analytics hoặc nếu có chi phí, SiteCatalyst có thể là lựa chọn thích hợp hơn. Nếu mục tiêu là thu hút thành viên, ta có thể kết hợp thêm các công cụ quản lý và phân loại thành viên… Việc của chúng ta là chọn dùng công cụ nào để xác định cụ thể mục tiêu của mình.&lt;/p&gt;\n&lt;p&gt;\n	&lt;br /&gt;&lt;strong&gt;ATTAINABLE&lt;br /&gt;\n	Tính khả thi của mục tiêu đặt ra&lt;/strong&gt;&lt;/p&gt;\n&lt;p&gt;\n	&lt;br /&gt;\n	Mục tiêu đặt ra không được quá khó đến mức không thể đạt được. Không thể đặt ra một mục tiêu: tạo một dịch vụ mạng xã hội thu hút toàn bộ 100% phụ nữ đang sử dụng internet, hoặc đạt được mục tiêu 1 triệu người đăng ký ngay ngày đầu ra mắt dịch vụ. Đó là những mục tiêu không tưởng.&lt;br /&gt;\n	Ngược lại mục tiêu cũng không nên quá dễ, dạng như website đang có lượng đăng ký user khỏang 2000 mỗi tháng, ta lập nên một kế hoạch marketing trong 3 tháng, trong ba tháng, mỗi tháng ta đạt được con số đăng ký là… 2500. Với những mục tiêu quá thấp, số lượng chi phí bỏ ra và kết quả thu được (ROI) sẽ không tương xứng. Tất nhiên không một nhà đầu tư nào, hoặc một sếp nào cho ta đặt mục tiêu kiểu đó.&lt;/p&gt;\n&lt;p&gt;\n	&lt;br /&gt;\n	Xác định một mục tiêu quá cao sẽ đưa ta đến điểm không thể đạt được – trường hợp này nếu không bị đuổi việc thì chúng ta cũng sẽ làm cho tinh thần toàn đội đi xuống. Xác định mục tiêu quá thấp sẽ làm cho việc đạt được quá dễ dàng làm cho mất đi sự phấn đấu và thử thách của công việc. Vấn đề ở đây là xác định một mục tiêu hợp lý, không có một công thức cụ thể nào để xác định vấn đề này, nó tùy thuộc vào tình hình cụ thể của từng dự án.&lt;/p&gt;\n&lt;p&gt;\n	&lt;br /&gt;&lt;strong&gt;REALISTIC&lt;br /&gt;\n	Tính tự tế của mục tiêu đặt ra&lt;/strong&gt;&lt;/p&gt;\n&lt;p&gt;\n	&lt;br /&gt;\n	Đây là điểm dễ làm nhiều người lầm lẫn nhất, đâu là sự khác biệt giữa Attainable và Realistic? Vì cả 2 cùng đề cập đến tính khả thi. Thời gian đầu chính tôi cũng bị khó chịu về câu hỏi này, sau quá trình làm việc và trao đổi với một số người. Tôi tạm rút ra cho mình sự phân biệt sau.&lt;br /&gt;\n	Attainable là tính khả thi của dự án dựa vào yếu tố nội bộ có thể đạt được hay không, Realistic là tính khả thi dựa vào yếu tố khách quan bên ngoài.&lt;/p&gt;\n&lt;p&gt;\n	&lt;br /&gt;\n	Ví dụ đội ngũ kỹ thuật hiện tại của công ty có 30 người, cần hoàn thành một dự án có khối lượng công việc là 9000 man-day – bình thường ta chia ra (9000/30)/30 ta mất khỏang 10 tháng để hoàn thành dự án trên. Tuy nhiên trường hợp đặt mục tiêu cần hoàn thành dự án trong vòng 2 tháng. Vậy mục tiêu của chúng ta xét về mặt Attainable có khả thi không? Câu trả lời là có. Vì khi đó tôi có thể đòi hỏi nhà đầu tư tăng kinh phí để thuê thêm một lực lượng lập trình, phân tích, quản lý dự án hùng hậu hơn để hoàn tất. Tuy nhiên khi xét tiếp đến yếu tố Realistic thì không đạt, vì rõ ràng không nhà đầu tư nào chấp nhận thuê thêm 120 người nữa để chỉ hoàn thành dự án và sau đó giải quyết hàng lô lốc các vần đề sau đó như giải quyết thôi việc, pháp lý… Chưa kể việc tuyển dụng ngay một lúc 120 cũng không phải là chuyện đơn giản.&lt;/p&gt;\n&lt;p&gt;\n	&lt;br /&gt;&lt;strong&gt;TIMELY&lt;br /&gt;\n	Thời gian để đạt được mục tiêu&lt;/strong&gt;&lt;/p&gt;\n&lt;p&gt;\n	&lt;br /&gt;\n	Rõ ràng chúng ta đều biết, mục tiêu một khi đã đặt ra phải luôn luôn có khung thời gian đi kèm. Ta không thể đặt ra mục tiêu đơn giản chỉ là đạt được 2 triệu thành viên. Vậy chúng ta sẽ duy trì dịch vụ trong 1.000 năm, mỗi năm đạt được 2.000 thành viên. Điều này có lẽ khá rõ ràng và ai cũng hiểu.&lt;br /&gt;\n	Vấn đề lưu ý ở đây là cách chúng ta đặt khung thời gian, không nên đặt duy nhất 1 mốc cuối cùng (2 triệu thành viên sau 2 năm nữa), mà nên chia nhỏ mốc thời gian ra – trong quản lý dự án những mốc này gọi là Milestone. Vấn đề là không phải chúng ta chia đều (ví dụ 2 triệu/24 = ~83000 thành viên mỗi tháng). Mà ta phân tích dự đoán dựa theo tình hình chủ quan và khách quan, điều này chính là sự nhạy bén và nắm bắt thị trường của marketer thế nào.&lt;/p&gt;\n&lt;p&gt;\n	&lt;br /&gt;\n	Trên là cơ bản về mô hình SMART, từ đầu bài đến giờ chúng ta chỉ bàn về SMART cho online marketing. Tuy nhiên như chúng ta thấy, SMART có thể áp dụng cho khá nhiều trường hợp, ngay cả trong cuộc sống thường nhật.&lt;br /&gt;\n	Chúc mọi người luôn luôn “smart” trong việc hoạch định mục tiêu của mình.&lt;/p&gt;\n', '', '', NULL, 1, '2011-11-10 09:45:50', 4, 1, NULL, NULL, 1, 16),
(15, 'richmedia.jpg', 'Chuyên Viên Digital Marketing', '', '', '&lt;p&gt;\n	RICHMEDIA là đơn vị tư vấn thương hiệu và tiếp thị số, chúng tôi am hiểu về marketing, quan hệ công chúng, tiếp thị truyền miệng và truyền thông xã hội, kết hợp với công nghệ để tạo ra ảnh hưởng tới khách hàng mục tiêu và đối tượng ảnh hưởng, thúc đẩy họ chia sẻ, giới thiệu và tương tác về thương hiệu, sản phẩm – dịch vụ, từ đó gia tăng nhận biết, sự yêu mến, sự gắn kết và lòng trung thành đối với thương hiệu của bạn, và đặc biệt gia tăng doanh thu với mức chi phí thấp&lt;/p&gt;\n', '', '', '&lt;p&gt;\n	RICHMEDIA là đơn vị tư vấn thương hiệu và tiếp thị số, chúng tôi am hiểu về marketing, quan hệ công chúng, tiếp thị truyền miệng và truyền thông xã hội, kết hợp với công nghệ để tạo ra ảnh hưởng tới khách hàng mục tiêu và đối tượng ảnh hưởng, thúc đẩy họ chia sẻ, giới thiệu và tương tác về thương hiệu, sản phẩm – dịch vụ, từ đó gia tăng nhận biết, sự yêu mến, sự gắn kết và lòng trung thành đối với thương hiệu của bạn, và đặc biệt gia tăng doanh thu với mức chi phí thấp&lt;/p&gt;\n&lt;p&gt;\n	Website : www.rmc.vn&lt;br /&gt;\n	Chức Danh :  Chuyên viên  Digital Marketing&lt;br /&gt;\n	Số lượng : 10&lt;br /&gt;\n	Loại hình công việc : Part – Time, fulltime&lt;/p&gt;\n&lt;p&gt;\n	Mô tả công việc:&lt;br /&gt;\n	-       Thực hiện công việc được giao từ trưởng phòng khách hàng&lt;br /&gt;\n	-       Xây dựng và phát triển các mối quan hệ khách hàng là các Doanh nghiệp, các nhãn hàng, thương hiệu.&lt;br /&gt;\n	-       Bán và tư vấn dịch vụ về marketing &amp;amp; Communications, digital marketing, digital pr, quảng cáo google ads, social media, thiết kế website,microsite, …..thực hiện kế hoạch doanh số được giao.&lt;br /&gt;\n	-       Tham gia vào các sự kiện &amp;amp; chiến dịch Bán hàng/Marketing của Công ty.&lt;br /&gt;&lt;br /&gt;\n	Yêu cầu :&lt;br /&gt;\n	-       Có kinh nghiệm sales &amp;amp; marketing trong lĩnh vực truyền thông marketing&lt;br /&gt;\n	-       Am hiểu digital marketing &amp;amp; communications&lt;br /&gt;\n	-       Có tố chất kinh doanh, đam mê nghề bán hàng, quyết tâm hoàn thành doanh số&lt;br /&gt;\n	-       Đã từng tham gia kinh doanh các sản phẩm truyền thông trực tuyến là một lợi thế&lt;br /&gt;\n	-       Kỹ năng giao tiếp, đàm phán, thuyết trình, thuyết phục và tạo mối quan hệ tốt.&lt;br /&gt;\n	-       Kỹ năng lập kế hoạch và tổ chức công việc.&lt;br /&gt;\n	-       Kỹ năng làm việc độc lập và phối hợp làm việc nhóm.&lt;br /&gt;\n	-       Ngoại hình khá, vui vẻ, thân thiện, giọng nói dễ nghe.&lt;br /&gt;\n	-       Ham học hỏi, tư duy sáng tạọ, đam mê kinh doanh.&lt;br /&gt;\n	-       Có trách nhiệm và cẩn thận với công việc.&lt;br /&gt;&lt;br /&gt;\n	Quyền lợi:&lt;br /&gt;\n	-          Lương + thưởng % doanh số cuối tháng (trao đổi khi phỏng vấn)&lt;br /&gt;\n	-          Hỗ trợ thu nhập : xăng xe + điện thoại, coffee&lt;br /&gt;\n	-          Được học hỏi, trải nghiệm về marketing&lt;br /&gt;\n	-          Có cơ hội tham gia các lớp đào tạo chuyên nghiệp  của công ty, các hội thảo sự kiện về marketing &amp;amp; communications&lt;br /&gt;\n	-          Cơ hội mở rộng mối quan hệ  và thăng tiến.&lt;br /&gt;\n	-          Có cơ hội thăng tiến với RICHMEDIA Digital Marketing Agency&lt;br /&gt;&lt;br /&gt;\n	CV gửi về email :hr@rmc.vn hoặc johnnythong@rmc.vn&lt;br /&gt;\n	Hotline: 38 730 0788 – 38 730 0289&lt;br /&gt;\n	Thời hạn : 30/09/2011&lt;br /&gt;\n	Ưu tiên ứng viên gửi hồ sơ sớm  và có laptop để tiện triển khai công việc&lt;br /&gt;\n	Tham khảo thông tin thêm tại website : www.rmc.vn&lt;/p&gt;\n', '', '', NULL, 1, '2011-11-15 14:42:30', 3, 1, NULL, NULL, 1, 19),
(16, 'edge.jpg', 'Edge - Senior Account Manager', '', '', '&lt;p&gt;\n	Edge is a full service advertising agency specializing in Digital, Direct Response Marketing and Relationship &amp;amp; Database Marketing, with offices in Vietnam, Thailand and Singapore.&lt;br /&gt;\n	Edge is looking for a Digital Campaign Manager  to project manage the execution of digital campaigns  that our agency receives from 3rd party media partners.&lt;/p&gt;\n', '', '', '&lt;p&gt;\n	 &lt;/p&gt;\n&lt;p&gt;\n	Background   &lt;br /&gt;\n	   &lt;br /&gt;\n	Edge is a full service advertising agency specializing in Digital, Direct Response Marketing and Relationship &amp;amp; Database Marketing, with offices in Vietnam, Thailand and Singapore. &lt;/p&gt;\n&lt;p&gt;\n	Edge is looking for a Digital Campaign Manager  to project manage the execution of digital campaigns  that our agency receives from 3rd party media partners.&lt;br /&gt;\n	   &lt;/p&gt;\n&lt;p&gt;\n	The Role&lt;br /&gt;\n	   &lt;/p&gt;\n&lt;p&gt;\n	Reporting to the Client Service Director, the Senior Account Manager position is a senior client management position in our organization, responsible for leading a team, accountable for client P&amp;amp;L, relationship building, marketing strategy, campaign development and management, and business analysis. The Account Director serves as a primary business contact for the client and is responsible for client satisfaction.&lt;/p&gt;\n&lt;p&gt;\n	Key Responsibilities:&lt;/p&gt;\n&lt;p&gt;\n	Provide Strategic and Marketing Leadership&lt;br /&gt;\n	Works with clients to uncover business needs and objectives, craft appropriate strategies, and identifies marketing programs and solutions to help achieve client goals.&lt;br /&gt;\n	Develops our relationships into strategic partnerships with clients&lt;br /&gt;\n	Champions the importance of online marketing in the overall marketing mix.&lt;br /&gt;\n	Understands and advocates which agency expertise and capabilities to employ to meet client’s needs.&lt;/p&gt;\n&lt;p&gt;\n	Build and Grow Client Relationships&lt;br /&gt;\n	Understand clients'' business and identifies opportunities to grow our business with them&lt;br /&gt;\n	Build trust, credibility, and client referrals.&lt;br /&gt;\n	Develop multi-tiered agency-client relationships and ties.&lt;br /&gt;\n	Provide the highest levels of client servicing.&lt;/p&gt;\n&lt;p&gt;\n	Effectively Manage Team&lt;br /&gt;\n	Manage account managers/executives to ensure the agency executes with excellence&lt;br /&gt;\n	Collaborate with campaign managers to ensure programs are executed to plan, on time and on budget&lt;br /&gt;\n	Foster teamwork and a constructive work environment.&lt;br /&gt;\n	Provide team leadership that rewards creativity.&lt;br /&gt;\n	Coaching and developing account manager’s professional growth.&lt;/p&gt;\n&lt;p&gt;\n	Manage Financial Performance&lt;br /&gt;\n	Achieve client targets&lt;br /&gt;\n	Maintain or improve account profitability.&lt;br /&gt;\n	Work with planning to develop new business proposals.&lt;/p&gt;\n&lt;p&gt;\n	Contribute to the Firm&lt;br /&gt;\n	Has a solid understanding of all the agency’s capabilities and how to employ them effectively&lt;br /&gt;\n	Balance client demands with participation in new business pitches and broader agency initiatives&lt;br /&gt;\n	Leverage personal networks and industry events to identify new business opportunities&lt;br /&gt;\n	 &lt;/p&gt;\n', '', '', NULL, 1, '2011-11-15 14:58:36', 5, 1, NULL, NULL, 1, 19),
(17, 'images.jpg', 'Sức Mạnh của Podcast', '', '', '&lt;p&gt;\n	Các công cụ marketing xã hội như blog, wiki, podcast, twitter, và thế giới ảo tạo hàng loạt những cơ hội dành cho các marketer trong việc tiếp cận khán thính giả. Nhưng những công cụ này có thực sự đem lại hiệu quả - hay chúng chỉ là những lựa chọn thay thế tức thời và không thể đo lường được hiệu quả đầu tư marketing?&lt;br /&gt;\n	Tuy nhiên mỗi công cụ đều có lý do riêng để tồn tại, cụ thể là podcast đã có sự phát triển nổi bật trong suốt hai năm vừa qua và trở nên vượt trội bởi vì lợi ích ở rất nhiều khía cạnh của nó.&lt;/p&gt;\n', '', '', '&lt;p&gt;\n	Các công cụ marketing xã hội như blog, wiki, podcast, twitter, và thế giới ảo tạo hàng loạt những cơ hội dành cho các marketer trong việc tiếp cận khán thính giả. Nhưng những công cụ này có thực sự đem lại hiệu quả - hay chúng chỉ là những lựa chọn thay thế tức thời và không thể đo lường được hiệu quả đầu tư marketing?&lt;br /&gt;\n	Tuy nhiên mỗi công cụ đều có lý do riêng để tồn tại, cụ thể là podcast đã có sự phát triển nổi bật trong suốt hai năm vừa qua và trở nên vượt trội bởi vì lợi ích ở rất nhiều khía cạnh của nó.&lt;br /&gt;&lt;br /&gt;\n	Không kể đến tên gọi, mọi người không cần iPod hay bất kỳ công cụ nghe nhạc MP3 nào để nghe Podcast. Thật ra, phân nửa người nghe Podcast sử dụng máy tính. A videocast (hay V-cast) là podcast có Video và slideshow đi cùng.&lt;br /&gt;&lt;br /&gt;\n	Podcast và videocast có thể nghe và xem trực tiếp ở một thời điểm xác định trước, tương tự như chương trình radio nhưng nó luôn có sẵng để tải về bất cứ lúc nào.&lt;br /&gt;&lt;br /&gt;\n	Podcast đòi hỏi sự cam kết về thời gian và ngân sách để trở thành một phần trong thành công của kế hoạch marketing của công ty. Chiến dịch Podcast thành công bao gồm Podcast hay v-cast với nội dung vững chắc với sự thể hiện mang phong cách giải trí.&lt;br /&gt;&lt;br /&gt;\n	Podcast cung cấp phương tiện để chia sẻ thông tin, ý kiến với những khách hàng tiềm năng và hiện tại – thông tin mà củng cố thương hiệu và vị trí của công ty như chuyên gia trong lĩnh vực nó hoạt động. Tuy nhiên có hấp dẫn không khi sử dụng Podcast để quảng cáo công ty hay dịch vụ, điểm nhấn ở đây là đảm bảo podcast là sự phát triển bằng cách cung cấp những thông tin hữu ích.&lt;br /&gt;&lt;br /&gt;\n	Podcast là một nghệ thuật&lt;br /&gt;&lt;br /&gt;\n	Gary Vaynerchuk là chủ của Wine Library, một cửa hàng hàng rượu cung cấp cho những nhà sưu tầm rượu nhưng cũng là một nguồn cho khách hàng người cần những lời đề nghị về rượu. Vaynerchuk nghĩ về việc mở rộng niềm đam mê rượu của mình thông qua Podcast hàng tuần. Thậm chí như “Gary Vee”, khi anh ta trở nên nổi tiếng cũng không thể dự đoán được podcast của mình sẽ giúp được anh ấy trở thành ngôi sao truyền thông.&lt;br /&gt;&lt;br /&gt;\n	Phần Podcast của anh ấy tạo ra nhiều tiếng vang đến mức anh được mời để xuất hiện trên chương trình truyền hình nổi tiếng, gồm có Ellen, Late Night, với Conan O′Brien. Thông qua cách tiếp cận duy nhất của mình, anh đã đưa nghệ thuật của Podcast lên một mức độ mới.&lt;br /&gt;&lt;br /&gt;\n	Podcast của Vaynerchuk đạt được thành công vì nó có mức độ gắn kết và giải trí cao. Được gán cho cái tên Thunder Show… “chương trình rượu sôi nổi nhất của Internet”, nó thu hút nhiều phân khúc thị trường đa dạng, kể cả những nhà sưu tầm, người mới vào nghề, và mọi người thích thưởng thức một chai rượu ngon bây giờ và những lần sau nữa.&lt;br /&gt;\n	Bởi vì họ cung cấp thông tin thích hợp, Podcast với thương hiệu Gary Vee như là một nguồn rượu. Kết quả là công việc kinh doanh của anh trở nên thịnh vượng và anh nổi lên nhanh chóng như một chuyên gia rượu được quan tâm nhiều trong ngành.&lt;br /&gt;&lt;br /&gt;\n	Ý tưởng đằng sau podcast hay v-cast là thực hiện các nỗ lực marketing của công ty và mở rộng hiệu quả để tiếp cận được vô số khán giả nhưng khác biệt về phân khúc thị trường. Năng lực cạnh tranh chính của công ty là điểm khác biệt của nó so với đối thủ. Podcast có thể giúp thúc đẩy hình ảnh chuyên nghiệp của doanh nghiệp.&lt;br /&gt;&lt;br /&gt;\n	Vậy nên, podcast có giữ được vị trí của nó hay nó chỉ là một xu hướng nhất thời? Cuộc khảo sát gần đây do Arbitron/Edison Media Research thực hiện cho thấy lượng khán giả của podcast đang tăng. Bài nghiên cứu năm 2008 của họ, The Podcast Consumer Revealed, công bố vào tháng 4 cho biết:&lt;br /&gt;&lt;br /&gt;\n	• Sự nhận biết cụm từ “podcasting” tăng từ 22% lên 37% trong năm vừa qua.&lt;br /&gt;\n	• Khán giả của audio podcast tăng 18% trong năm ngoái&lt;br /&gt;\n	• Khán giả video podcast tăng 10% vào năm ngoái&lt;br /&gt;\n	Những người nghe podcast được giáo dục tốt, có thu nhập bình quân cao hơn, và hướng đến sự hấp dẫn trong marketing.&lt;br /&gt;&lt;br /&gt;\n	Mặc dù người nghe podcast hầu như thích chặn những mẫu quảng cáo không được chào đón hơn bình thường, họ ít thích click vào mẫu quảng cáo phù hợp hơn những người tiêu dùng trên internet khác.&lt;br /&gt;&lt;br /&gt;\n	• Khoảng 30% người sử dụng internet thường tải podcast&lt;br /&gt;\n	• Khoảng 49% người tiêu dùng podcast xem hoặc nghe podcast trên máy tính của họ.&lt;br /&gt;\n	Podcast đang trải qua sự tăng trưởng vững chắc và với lý do tốt. Podcast hay v-cast giúp định vị công ty hay thương hiệu như một chuyên gia trong ngành, cực đại hóa những nỗ lực xây dựng thương hiệu và bởi vì podcast là một phương tiện dựa trên web nên sẽ gia tăng tỷ lệ tìm kiếm trang web công ty.&lt;br /&gt;&lt;br /&gt;\n	Dưới đây là 3 cách dành cho những ai muốn bắt đầu thực hiện podcast.&lt;br /&gt;&lt;br /&gt;\n	1. Nội dung quyết định độ dài&lt;br /&gt;&lt;br /&gt;\n	Nội dung nên chi phối mọi thứ, bao gồm cả độ dài của podcast. Khán giả sẽ quyết định độ dài của podcast. Độ dài của podcast được thiết kế chủ yếu là dành cho giá trị giải trí sẽ dài khoảng 30 phút. Khi mọi người tải podcast về máy, họ thường nghe nó khi đang ở trên xe hay đang tập thể dục. Một podcast dài 30 phút dễ được chấp nhận, bất cứ cái nào dài hơn rất dễ mất đi sự chú ý của người nghe. Các podcast về kỹ thuật có thể ngắn hơn, 10 phút thường được xem là độ dài tốt – có khả năng truyền đạt những thông tin có giá trị&lt;br /&gt;\n	2. Tập trung vào một đề tài&lt;br /&gt;&lt;br /&gt;\n	Một lý do mà rất nhiều podcast tốt đều ngắn là nó chỉ tập trung vào một đề tài cụ thể. Podcast một đề tài không chỉ là cách duy nhất để đi mà là còn cách tốt nhất để bước vào thế giới của podcast. Những người nghe tiềm năng, những người chú ý đến tựa đề của podcast sẽ thường hướng đến các nhà cung cấp mới, nếu đề tài của podcast quá cụ thể. Điều gì tiếp nữa, tập trung vào một chủ đề đơn lẻ, để lại chủ đề khác cho những podcast tiếp theo.&lt;br /&gt;&lt;br /&gt;\n	3. Tạo ra sự đáp lại dễ dàng&lt;br /&gt;&lt;br /&gt;\n	Podcast là phương tiện trả lời trực tiếp. Chú ý vào website hay tham khảo một bài báo nào và khiến cho nó dễ dàng đối với người nghe để tìm thấy được thông tin khi họ ngừng nghe. Những nhà marketing nhanh trí đảm bảo rằng người nghe biết điều mình cần làm (tham quan một trang web nào đó, gọi điện thoại v..v..) và cung cấp nhiều cách đang dạng.&lt;br /&gt;&lt;br /&gt;\n	Cũng như tất cả nỗ lực marketing khác, podcast cũng đòi hỏi một chiến dịch gắn liền với mục tiêu của doanh nghiệp nếu nó hiệu quả. Podcast được lên lịch đều đặn là rất cần thiết cũng như lời cam kết công khai podcast và v-cast.&lt;br /&gt;&lt;br /&gt;\n	Và nhớ rằng podcast nên được xem như bất kỳ kênh marketing trực tiếp nào khác. Biết được khách hàng mục tiêu là rất quan trọng…để cung cấp thông điệp thích hợp…để kiểm tra và đo lường…và liên tục cải tiến các nỗ lực.&lt;br /&gt;&lt;br /&gt;\n	Với kiến thức và nổ lực, sẽ có thể đạt được lợi nhuận và thưởng thức sức mạnh của podcast.&lt;/p&gt;\n&lt;p&gt;\n	( Tác giả Lisa Formica (Nhứt Linh – LANTABRAND – sưu tầm và lược dịch từ marketingprofs.com) )&lt;/p&gt;\n', '', '', NULL, 1, '2011-11-15 15:05:44', 2, 1, NULL, NULL, 1, 16),
(18, 'images6.jpg', 'Một cách tiếp thị trong thời đại internet', '', '', '&lt;p&gt;\n	&lt;span style=&quot;font-size:12px;&quot;&gt;&lt;span style=&quot;font-family:verdana, geneva, sans-serif;&quot;&gt;Công nghệ thông tin đã mang đến cho con người rất nhiều các tiện ích mới. Một trong các tiện ích đó chính là sự ra đời của internet-phương tiện truyền thông phổ cập nhất hiện nay.&lt;br /&gt;\n	Cùng với sự phát triển của internet, các doanh nghiệp cũng đã ứng dụng công cụ truyền thông này vào Marketing bằng việc cho ra đời một loại hình Marketing mới, e-marketing hay Marketing qua mạng.&lt;/span&gt;&lt;/span&gt;&lt;/p&gt;\n', '', '', '&lt;p&gt;\n	&lt;span style=&quot;font-size:12px;&quot;&gt;&lt;span style=&quot;font-family:verdana, geneva, sans-serif;&quot;&gt;Công nghệ thông tin đã mang đến cho con người rất nhiều các tiện ích mới. Một trong các tiện ích đó chính là sự ra đời của internet-phương tiện truyền thông phổ cập nhất hiện nay.&lt;/span&gt;&lt;/span&gt;&lt;/p&gt;\n&lt;p&gt;\n	&lt;br /&gt;&lt;span style=&quot;font-size:12px;&quot;&gt;&lt;span style=&quot;font-family:verdana, geneva, sans-serif;&quot;&gt;Cùng với sự phát triển của internet, các doanh nghiệp cũng đã ứng dụng công cụ truyền thông này vào Marketing bằng việc cho ra đời một loại hình Marketing mới, e-marketing hay Marketing qua mạng.&lt;/span&gt;&lt;/span&gt;&lt;/p&gt;\n&lt;p&gt;\n	&lt;br /&gt;&lt;span style=&quot;font-size:12px;&quot;&gt;&lt;span style=&quot;font-family:verdana, geneva, sans-serif;&quot;&gt;E-marketing là hình thức thực hiện quảng bá một thông điệp đến với nhóm đối tượng cần quảng bá dựa trên các công cụ email, các website. Thông qua email, các doanh nghiệp có thể gửi thông điệp quảng bá đến các nhóm đối tượng quảng bá. Để làm được điều này thì doanh nghiệp cần phải có danh sách các email.&lt;/span&gt;&lt;/span&gt;&lt;/p&gt;\n&lt;p&gt;\n	 &lt;/p&gt;\n&lt;p&gt;\n	&lt;span style=&quot;font-size:12px;&quot;&gt;&lt;span style=&quot;font-family:verdana, geneva, sans-serif;&quot;&gt;Thông qua website, doanh nghiệp có thể &quot;trưng bày&quot; thông tin rồi sau đó tập trung quảng bá địa chỉ email này cho nhiều đối tượng biết đến, đặc biệt là những người thuộc nhóm đối tượng khách hàng mà doanh nghiệp muốn chuyển tải thông tin. Cũng có thể thông qua website của đơn vị khác để đăng tải những mẩu tin rao vặt, cần mua bán v.v... nhằm thu hút sự chú và tìm kiếm các đối tác tiềm năng.&lt;/span&gt;&lt;/span&gt;&lt;/p&gt;\n&lt;p&gt;\n	&lt;br /&gt;&lt;span style=&quot;font-size:12px;&quot;&gt;&lt;span style=&quot;font-family:verdana, geneva, sans-serif;&quot;&gt;Tới đầu năm 2006, trên internet đã có khoảng 8 tỷ trang web. Nếu làm phép tính bình quân: một người một ngày thực hiện việc tìm kiếm và truy cập 10 website thì phải tới 4 triệu ngày tức 12000 năm mới đọc hết số website này. Mặc dù số web chết cũng không ít nhưng theo ước tính mỗi tháng có khoảng 1 triệu web mới ra đời. Kéo theo sự bùng nổ của các website, lưu lượng người truy cập internet cũng gia tăng đáng kể. Dân số thế giới hiện đang vào khoảng hơn 6 tỷ người, trong đó có tới 25% số này truy cập internet mỗi ngày. Riêng ở Việt Nam, hiện nay số lượng người truy cập internet đã là 7,5 triệu người, chiếm khoảng 9,1% dân số. Với sự phát triển của internet như vậy, điều tất yếu buộc doanh nghiệp phải thật sự quan tâm tới việc sử dụng internet như một công cụ hiệu quả để thực hiện e-marketing.&lt;/span&gt;&lt;/span&gt;&lt;/p&gt;\n&lt;p&gt;\n	 &lt;/p&gt;\n&lt;p&gt;\n	&lt;span style=&quot;font-size:12px;&quot;&gt;&lt;span style=&quot;font-family:verdana, geneva, sans-serif;&quot;&gt;Một số cách thức doanh nghiệp có thể sử dụng để thực hiện e_marketing như:&lt;/span&gt;&lt;/span&gt;&lt;/p&gt;\n&lt;p&gt;\n	&lt;span style=&quot;font-size:12px;&quot;&gt;&lt;span style=&quot;font-family:verdana, geneva, sans-serif;&quot;&gt;1)Đăng ký địa chỉ website với bộ tìm kiếm và danh bạ website: doanh nghiệp có thể đăng ký địa chỉ website, từ khóa, lĩnh vực với một vài bộ tìm kiếm như www.yahoo.com, www.google.com. Doanh nghiệp phải tối ưu hóa website để được liệt kê trên top 10, 20,30... trong các kết quả tìm của các bộ tìm kiếm với một số keyword đã chọn.&lt;/span&gt;&lt;/span&gt;&lt;/p&gt;\n&lt;p&gt;\n	&lt;br /&gt;&lt;span style=&quot;font-size:12px;&quot;&gt;&lt;span style=&quot;font-family:verdana, geneva, sans-serif;&quot;&gt;Người thực hiện việc này cần phải tìm hiểu, học hỏi một số kiến thức nhất định về web và đôi khi cần sự hỗ trợ của các tổ chức chuyên nghiệp. Ngoài ra, doanh nghiệp có thể đăng ký địa chỉ website với các danh bạ web như www.dmoz.org, www.google.com, www.vietnamwesite.net... vì số người tìm kiếm qua các web này cũng rất đông. Đây là cách tìm kiếm thông dụng thứ 2 sau cách dùng bộ tìm kiếm.&lt;/span&gt;&lt;/span&gt;&lt;/p&gt;\n&lt;p&gt;\n	&lt;br /&gt;&lt;span style=&quot;font-size:12px;&quot;&gt;&lt;span style=&quot;font-family:verdana, geneva, sans-serif;&quot;&gt;2) Trao đổi liên kết, đặt banner quảng cáo, đăng rao văt trên các website khác: Doanh nghiệp nên trao đổi link liên kết với càng nhiều website khác càng tốt nhưng nên chọn lọc những website có cùng nhóm đối tượng khách hàng và có mức độ phổ biến ngang tầm với web của bản thân doanh nghiệp để đề nghị trao đôi links.  Mặt khác, doanh nghiệp cũng có thể sử dụng dụng web nổi tiếng hơn, nơi có đông đối tượng khách hàng muốn tiếp cận để đặt banner quảng cáo với thiết kế ấn tượng gợi sự tò mò hoặc cho đăng rao vặt, giới thiệu website trên các diễn đàn, nới tập trung nhiều đối tượng khách hàng mà doanh nghiệp tìm kiếm.&lt;/span&gt;&lt;/span&gt;&lt;/p&gt;\n&lt;p&gt;\n	 &lt;/p&gt;\n&lt;p&gt;\n	&lt;span style=&quot;font-size:12px;&quot;&gt;&lt;span style=&quot;font-family:verdana, geneva, sans-serif;&quot;&gt;3) Email marketing: Thực hiện việc gửi email tới các đối tượng khác hàng nhưng tránh làm phiền bằng việc gửi liên tục và không cho họ chức năng spam. Để thực hiện được điều này, doanh nghiệp phải dần dần tạo một danh sách các email của khách hàng tiềm năng bằng cách thu thập email người xem website của doanh nghiệp. Ví dụ như website www.vitanco.com cho người xem dowload miễn phí tài liệu thương mại điện tử với điều kiện là người download phải khai báo địa chỉ mail. Từ những email này, doanh nghiệp tiến hành sàng lọc đối tượng khách hàng để tiếp cận chào hàng hoặc liên hệ lại mỗi khi có chương trình giảm giá, khuyến mãi hay sản phẩm mới.&lt;/span&gt;&lt;/span&gt;&lt;/p&gt;\n&lt;p&gt;\n	 &lt;/p&gt;\n&lt;p&gt;\n	&lt;span style=&quot;font-size:12px;&quot;&gt;&lt;span style=&quot;font-family:verdana, geneva, sans-serif;&quot;&gt;4) Thực hiện Marketing lan truyền: Tận dụng người xem để Marketing cho những người khác. Ví dụ như Yahoo!hot mail cho mọi người dùng email miễn  phí nhưng nội dung email sẽ tự động  kèm theo 1 câu quảng cáo của hãng ở cuối. Ngoài ra, doanh nghiệp có thể thiết kế những chức năng tiện ích mà chỉ có những thành viên của web mới sử dụng được với nhau. Chẳng hạn Yahoo!Instant Messenger chỉ cho phép những người có đăng ký ID với Yahoo! mới có thể chat cùng nhau.&lt;/span&gt;&lt;/span&gt;&lt;/p&gt;\n&lt;p&gt;\n	&lt;br /&gt;&lt;span style=&quot;font-size:12px;&quot;&gt;&lt;span style=&quot;font-family:verdana, geneva, sans-serif;&quot;&gt;5) Doanh nghiệp nên tham gia vào các cộng đồng, diễn đàn về các lĩnh vực, chủ đề liên quan trực tiếp hoặc gián tiếp tới lĩnh vực kinh doanh của doanh nghiệp để học hỏi thêm, tạo mối quan hệ, hỗ trợ lẫn nhau và tìm kiếm khách hàng tiềm năng.&lt;/span&gt;&lt;/span&gt;&lt;/p&gt;\n&lt;p&gt;\n	&lt;br /&gt;&lt;span style=&quot;font-size:12px;&quot;&gt;&lt;span style=&quot;font-family:verdana, geneva, sans-serif;&quot;&gt;Thu hút khách hàng vào tham quan website của doanh nghiệp đã khó, nhưng việc giữ được khách hàng để họ quay lại với website của doanh nghiệp càng khó hơn. Muốn &quot;giữ chân&quot; khác hàng và thu hút những khách hàng mới, các doanh nghiệp ngoài việc đăng tải các thông tin hữu ích, tạo sự tiện lợi cho việc tìm kiếm thông tin... thì nên dành ra một &quot;chỗ&quot; trên trang web để tạo &quot;sân chơi&quot; cho những người cùng yêu thích một lĩnh vực nào đó. Thực tế đã cho thấy những thông tin trong cộng đồng đã góp phần không nhỏ vào việc quảng cáo cho hình ảnh của doanh nghiệp.&lt;/span&gt;&lt;/span&gt;&lt;/p&gt;\n', '', '', NULL, 1, '2011-11-15 15:15:24', 1, 1, NULL, NULL, 1, 16),
(19, 'moc-khoa-hoi-0010.jpg', 'Móc khóa hơi, quà tặng độc đáo cho mass consumer', '', '', '&lt;p&gt;\n	Sản phẩm móc khóa hơi, độc đáo, phù hợp làm quà tặng: tăng Awareness, hình ảnh sản phẩm thể hiện sinh động, đẹp.&lt;/p&gt;\n', '', '', '&lt;p&gt;\n	Sản phẩm móc khóa hơi, độc đáo, phù hợp làm quà tặng: tăng Awareness, hình ảnh sản phẩm thể hiện sinh động, đẹp.&lt;/p&gt;\n&lt;p&gt;\n	 &lt;/p&gt;\n&lt;p&gt;\n	Một vài hình ảnh tham khảo&lt;/p&gt;\n&lt;p&gt;\n	&lt;img alt=&quot;&quot; src=&quot;/public/userfiles/images/Moc%20Khoa%20hoi%200002(1).jpg&quot; style=&quot;width:500px;height:400px;&quot; /&gt;&lt;/p&gt;\n&lt;p&gt;\n	Có thể thay đổi dây treo điện thoại, móc khóa, dây đeo thẻ&lt;/p&gt;\n&lt;p&gt;\n	&lt;img alt=&quot;&quot; src=&quot;/public/userfiles/images/Moc%20Khoa%20hoi%200010(1).jpg&quot; style=&quot;width:461px;height:399px;&quot; /&gt;&lt;/p&gt;\n&lt;p&gt;\n	thêm nữa&lt;/p&gt;\n&lt;p&gt;\n	&lt;img alt=&quot;&quot; src=&quot;/public/userfiles/images/Moc%20Khoa%20hoi%200011(1).jpg&quot; style=&quot;width:506px;height:391px;&quot; /&gt;&lt;/p&gt;\n&lt;p&gt;\n	Liên hệ với POS Gifts(An Lê. 0918 028 106)&lt;/p&gt;\n&lt;p&gt;\n	 &lt;/p&gt;\n', '', '', NULL, 1, '2011-11-22 04:44:02', 7, 1, NULL, NULL, 1, 14);

-- --------------------------------------------------------

--
-- Table structure for table `dos_module_studies_cat`
--

CREATE TABLE IF NOT EXISTS `dos_module_studies_cat` (
  `cat_id` int(11) NOT NULL AUTO_INCREMENT,
  `cat_parent_id` int(11) NOT NULL DEFAULT '0',
  `cat_title` varchar(45) NOT NULL,
  `cat_titleen` varchar(45) DEFAULT NULL,
  `cat_titlefr` varchar(45) DEFAULT NULL,
  `cat_order` int(11) NOT NULL DEFAULT '1',
  `cat_enable` tinyint(1) NOT NULL DEFAULT '1',
  PRIMARY KEY (`cat_id`)
) ENGINE=InnoDB  DEFAULT CHARSET=utf8 AUTO_INCREMENT=20 ;

--
-- Dumping data for table `dos_module_studies_cat`
--

INSERT INTO `dos_module_studies_cat` (`cat_id`, `cat_parent_id`, `cat_title`, `cat_titleen`, `cat_titlefr`, `cat_order`, `cat_enable`) VALUES
(14, 0, 'Quà Tặng Quảng Cáo', '', '', 1, 1),
(15, 0, 'Sản Phẩm In', '', '', 2, 1),
(16, 0, 'Digital Marketing', '', '', 3, 1),
(19, 0, 'Tuyển Dụng', '', '', 4, 1);

-- --------------------------------------------------------

--
-- Table structure for table `dos_module_studies_comments`
--

CREATE TABLE IF NOT EXISTS `dos_module_studies_comments` (
  `comment_id` int(11) NOT NULL AUTO_INCREMENT,
  `comment_title` varchar(50) NOT NULL,
  `comment_content` varchar(1000) NOT NULL,
  `comment_enable` tinyint(1) DEFAULT '1',
  `comment_date` timestamp NOT NULL DEFAULT CURRENT_TIMESTAMP,
  `dos_sys_users_username` varchar(45) NOT NULL,
  `dos_module_studies_record_id` int(11) NOT NULL,
  PRIMARY KEY (`comment_id`),
  KEY `fk_dos_module_studies_comments_dos_sys_users` (`dos_sys_users_username`),
  KEY `fk_dos_module_studies_comments_dos_module_studies1` (`dos_module_studies_record_id`)
) ENGINE=InnoDB DEFAULT CHARSET=utf8 AUTO_INCREMENT=1 ;

-- --------------------------------------------------------

--
-- Table structure for table `dos_module_supplier`
--

CREATE TABLE IF NOT EXISTS `dos_module_supplier` (
  `record_id` int(11) NOT NULL AUTO_INCREMENT,
  `pic_thumb` varchar(45) DEFAULT NULL,
  `pic_desc` varchar(1000) DEFAULT NULL,
  `title` varchar(100) NOT NULL,
  `titleen` varchar(100) DEFAULT NULL,
  `titlefr` varchar(100) DEFAULT NULL,
  `slogan` varchar(50) DEFAULT NULL,
  `expert` varchar(100) DEFAULT NULL,
  `address` varchar(200) DEFAULT NULL,
  `contact` varchar(45) DEFAULT NULL,
  `phone` varchar(15) NOT NULL,
  `fax` varchar(15) DEFAULT NULL,
  `tel` varchar(15) DEFAULT NULL,
  `website` varchar(200) DEFAULT NULL,
  `email` varchar(45) DEFAULT NULL,
  `preview` text,
  `previewen` text,
  `previewfr` text,
  `content` text NOT NULL,
  `contenten` text,
  `contentfr` text,
  `author` varchar(45) DEFAULT NULL,
  `hits` int(11) NOT NULL DEFAULT '1',
  `postdate` timestamp NULL DEFAULT CURRENT_TIMESTAMP,
  `record_order` int(11) NOT NULL DEFAULT '1',
  `record_type` tinyint(1) NOT NULL DEFAULT '0',
  `extra_field1` varchar(45) DEFAULT NULL,
  `extra_field2` varchar(45) DEFAULT NULL,
  `enable` tinyint(1) NOT NULL DEFAULT '1',
  `dos_module_supplier_cat_cat_id` int(11) NOT NULL,
  PRIMARY KEY (`record_id`),
  KEY `fk_dos_module_studies_dos_module_studies_cat` (`dos_module_supplier_cat_cat_id`)
) ENGINE=InnoDB  DEFAULT CHARSET=utf8 AUTO_INCREMENT=32 ;

--
-- Dumping data for table `dos_module_supplier`
--

INSERT INTO `dos_module_supplier` (`record_id`, `pic_thumb`, `pic_desc`, `title`, `titleen`, `titlefr`, `slogan`, `expert`, `address`, `contact`, `phone`, `fax`, `tel`, `website`, `email`, `preview`, `previewen`, `previewfr`, `content`, `contenten`, `contentfr`, `author`, `hits`, `postdate`, `record_order`, `record_type`, `extra_field1`, `extra_field2`, `enable`, `dos_module_supplier_cat_cat_id`) VALUES
(19, 'acnlogo_top.gif', 'pic-1.JPG|pic-2jpg.JPG|pic3.JPG|pic4.jpg|pic-5.jpg|pic6.jpg', 'AC Nielsen', '', '', 'Marketing Research', '', '243-243B Hoang Van Thu Street Tecasin Business Centre   Tan Binh District, Ho Chi Minh City  Vietnam', 'Information Center', '+84 8 -38476300', '+84 8 -38423934', '', 'http://www.vn.nielsen.com', 'vietnaminfo@nielsen.com', '', '', '', '&lt;p&gt;\n	&lt;span style=&quot;font-size:12px;&quot;&gt;&lt;strong&gt;&lt;span style=&quot;font-size:14px;&quot;&gt;What We Do&lt;/span&gt; &lt;/strong&gt;&lt;/span&gt;&lt;/p&gt;\n&lt;p&gt;\n	&lt;span style=&quot;font-size:12px;&quot;&gt;Nielsen offers an integrated suite of market information gathered from a wide range of sources, advanced information management tools, sophisticated analytical systems and methodologies, and dedicated professional client service to help our clients find the best paths to growth.&lt;/span&gt;&lt;/p&gt;\n&lt;p&gt;\n	&lt;br /&gt;&lt;span style=&quot;font-size:12px;&quot;&gt;&lt;strong&gt;Clients work with our services to:&lt;/strong&gt;&lt;br /&gt;\n	• Measure their market performance&lt;br /&gt;\n	• Analyse market dynamics&lt;br /&gt;\n	• Diagnose and solve marketing and sales problems, and&lt;br /&gt;\n	• Identify and capture growth opportunities&lt;br /&gt;\n	Our people work closely with clients to help them choose the right set of information and services and use it to make the best possible decisions.&lt;/span&gt;&lt;/p&gt;\n&lt;p&gt;\n	&lt;strong&gt;&lt;span style=&quot;font-size:12px;&quot;&gt;Market Measurement&lt;/span&gt;&lt;/strong&gt;&lt;br /&gt;&lt;span style=&quot;font-size:12px;&quot;&gt;Our major market-measurement services provide comprehensive coverage of:&lt;br /&gt;\n	• Sales to consumers of fast-moving consumer packaged goods, gathered at the point of sale in retail stores of all types and sizes. These retail measurement services provide clients with essential facts on how their products are performing compared with their competitors, and on trends and changes in market conditions and sales results. They also provide critical information on the use of promotional activities at the retail level, such as special displays or pricing, and on distribution and stock conditions in retail stores.&lt;br /&gt;\n	• Purchases by consumers of packaged goods and other products, gathered through participating panels of consumer households and through customised studies. These consumer panel and consumer research services provide a foundation for understanding and analyzing consumers’ motivations, attitudes, behaviour, shopping patterns and demographic characteristics.&lt;/span&gt;&lt;/p&gt;\n&lt;p&gt;\n	&lt;span style=&quot;font-size:12px;&quot;&gt;&lt;strong&gt;Analytical Tools and Services&lt;/strong&gt;&lt;br /&gt;\n	We offer a wide range of software and professional services that enable clients to receive, select and evaluate our market-measurement information, integrate it with their own data and third-party information, and apply it to specific business issues and situations.&lt;/span&gt;&lt;/p&gt;\n&lt;p&gt;\n	&lt;span style=&quot;font-size:12px;&quot;&gt;Clients can view and analyse information from many perspectives, such as by specific product categories, by geographic area or by retail channel. We also organize and present information to suit the specific needs of many individuals in manufacturing, service and retail organisations, including general managers, marketing professionals, sales professionals, purchases, merchandisers and category managers.&lt;/span&gt;&lt;/p&gt;\n&lt;p&gt;\n	&lt;span style=&quot;font-size:12px;&quot;&gt;&lt;strong&gt;Diagnostic Services&lt;/strong&gt;&lt;br /&gt;\n	Our consumer panel and consumer research services provide clients with many opportunities and techniques to examine trends and understand the impact of the market forces that influence consumers’ purchasing decisions. Consumer panels link purchasing information to demographics and provide a controlled environment for examining motivational factors.&lt;/span&gt;&lt;/p&gt;\n&lt;p&gt;\n	&lt;span style=&quot;font-size:12px;&quot;&gt;Our analytical and modelling services provide clients with a range of options to evaluate and understand why marketing campaigns succeed or fail, and to address specific future marketing opportunities and issues, such as promotion optimisation, pricing, consumer targeting and marketing mix optimisation.&lt;/span&gt;&lt;/p&gt;\n&lt;p&gt;\n	&lt;span style=&quot;font-size:12px;&quot;&gt;In many markets, we offer a suite of consumer-focused consumer research techniques and services that address clients’ unique and specific marketing and sales issues.&lt;/span&gt;&lt;/p&gt;\n&lt;p&gt;\n	&lt;span style=&quot;font-size:12px;&quot;&gt;&lt;strong&gt;Opportunity Identification&lt;/strong&gt;&lt;br /&gt;\n	While our major clients all share a common focus on consumers, each individual client has its own distinct set of business characteristics and marketing and sales concerns. Our information and services are designed to help each client identify and act upon unique growth opportunities.&lt;/span&gt;&lt;/p&gt;\n&lt;p&gt;\n	&lt;span style=&quot;font-size:12px;&quot;&gt;Using a structured and disciplined approach to building and managing long-term relationships, our people work in close partnership with their clients to understand their strategies and business objectives... To design the right suite of Nielsen services that fits their needs... To agree on clear and measurable business objectives... And to measure the results and clients’ return on their investment.&lt;/span&gt;&lt;/p&gt;\n', '', '', NULL, 1, '2011-11-02 12:52:51', 5, 0, NULL, NULL, 1, 1),
(20, 'logo-1.jpg', 'pic-1.gif|pic-2.gif|pic-3.gif|pic-4.gif|pic-5.gif|pic-6.gif|pic-6.jpg', 'FTA ', '', '', 'Marketing Research', '(Research and Consultant )', '99 Nguyen Cuu Van Street, Binh Thanh District, HCMC, Vietnam', 'Tran Ngoc Dung – Executive Director ', '+84 8 3514 2584', '+84 8  3514 258', '', 'www.fta.com.vn', 'dungtran@fta.com.vn', '', '', '', '&lt;p&gt;\n	&lt;span style=&quot;font-size:12px;&quot;&gt;&lt;strong&gt;FTA typical areas of industry specific experience &amp;amp; expertise could be found as in the followings:&lt;/strong&gt;&lt;/span&gt;&lt;/p&gt;\n&lt;p&gt;\n	&lt;br /&gt;&lt;span style=&quot;font-size:12px;&quot;&gt;1.    &lt;strong&gt;IT &amp;amp; Telecommunications&lt;/strong&gt; FTA research is one of the major research agencies having conducted various studies in this field. Within IT &amp;amp; Telecommunication research, we have experience on a full range of the industry such as IT infrastructure, facilities of end-users, website, software, data transferring, lease line and so on.&lt;/span&gt;&lt;/p&gt;\n&lt;p&gt;\n	&lt;br /&gt;&lt;span style=&quot;font-size:12px;&quot;&gt;2.    &lt;strong&gt;Building &amp;amp; Construction materials&lt;/strong&gt; These days, housing demand is growing almost every day.  In addition, it is more difficult to have an expected house in urban cities given the soar of real estate prices.  Therefore, housing becomes an expensive dream for many people. In this situation, construction companies have a lot of demands for understanding the market which is changing day by day and FTA is their first choice of using and being their partner in doing research. We always give them the best methodology and quality with effectiveness cost.&lt;/span&gt;&lt;/p&gt;\n&lt;p&gt;\n	&lt;br /&gt;&lt;span style=&quot;font-size:12px;&quot;&gt;3.    &lt;strong&gt;Automotive &amp;amp; Transportations&lt;/strong&gt; FTA had chance of working with many automotive companies. Therefore, in every major market we can bring this consumer knowledge to every client, offering integrated solutions to the development, branding and advertising problems faced by automotive companies.&lt;br /&gt;\n	It is our range of experience that truly sets us apart as a research partner for our clients. We do not concentrate only on one type of automotive research, we cover every facet.    &lt;/span&gt;&lt;/p&gt;\n&lt;p&gt;\n	&lt;br /&gt;&lt;span style=&quot;font-size:12px;&quot;&gt;4.    &lt;strong&gt;Pharmaceutical&lt;/strong&gt; The missions of a pharmaceutical company are to discover and develop innovative, cost-effective medicines that address significant unmet medical needs and enhance and extend human life in a rapidly changing world. How can you stay on top of the trends and anticipate future changes? FTA market research not only supplies numbers but also consult the shortest way to success.&lt;/span&gt;&lt;/p&gt;\n&lt;p&gt;\n	 &lt;/p&gt;\n&lt;p&gt;\n	&lt;span style=&quot;font-size:12px;&quot;&gt;5.    &lt;strong&gt;Electrical&lt;/strong&gt; appliances In the dizzy develop technology age, socioeconomic need increase faster and more fastidious, especially in the convenience sectors like domestic electrical appliances. Market research provides in-depth analysis of trends in the industry; understand the factors driving change in the market - the key to succeed. &lt;/span&gt;&lt;/p&gt;\n&lt;p&gt;\n	&lt;br /&gt;&lt;span style=&quot;font-size:12px;&quot;&gt;6.    &lt;strong&gt;Finance, insurance &amp;amp; banking&lt;/strong&gt;&lt;br /&gt;\n	We look to build relationships with clients, understanding needs and anticipating knowledge on intangible services as they move through different market cycles. With experience in every part of the finance sector we are well provided the most appropriate methodology to them.&lt;/span&gt;&lt;/p&gt;\n&lt;p&gt;\n	&lt;br /&gt;&lt;span style=&quot;font-size:12px;&quot;&gt;7.    &lt;strong&gt;FMCG&lt;/strong&gt;&lt;br /&gt;\n	&quot;The popular perception of FMCG is that it is easy and low-tech&quot;.  However, being high-tech is the only way to satisfy customer needs, while simultaneously meeting the demands of human and environmental safety, price performance, novelty, and no infringement of competitors'' patents. Research directed towards the conception of new products and new trends because their role is to translate into scientific terms the new needs that marketers have identified or created among consumers.&lt;/span&gt;&lt;/p&gt;\n&lt;p&gt;\n	&lt;br /&gt;&lt;span style=&quot;font-size:12px;&quot;&gt;8.    &lt;strong&gt;Household &amp;amp; Personal care&lt;/strong&gt; Household &amp;amp; personal care products including health test kits, vitamins, lotion, shave cream, feminine products, etc. It is equally important to pay attention to what you put on your body as well as what you put in your body. What are keys to taking great care of one''s body head to toe in the competitive health benefit marketplace everyday? You absolutely believe in FTA with our experiences in this sector. &lt;/span&gt;&lt;/p&gt;\n&lt;p&gt;\n	 &lt;/p&gt;\n&lt;p&gt;\n	&lt;span style=&quot;font-size:12px;&quot;&gt;9.    &lt;strong&gt;Agriculture&lt;/strong&gt; &quot;Viet Nam is one of the top agriculture export countries but its export earning is really low, even then Viet Nam imports the agricultural products. Why don''t Vietnamese buy Vietnamese agricultural products? Why do VN agriculture companies, process companies'' inoccupation about output, low turnover? Which way can improve for Viet Nam agriculture?   FTA Market Research is honor to help with the wide range and method of high quality that can provide the insights, trends and opportunities for this field.&lt;/span&gt;&lt;/p&gt;\n&lt;p&gt;\n	&lt;br /&gt;&lt;span style=&quot;font-size:12px;&quot;&gt;10. &lt;strong&gt;Education &amp;amp; Training Education&lt;/strong&gt; affects every aspect of our lives, from the well-being of school children to the quality of the corporate work force. FTA always prioritizes in making research in education and on young people''s social issues. We have conducted studies for several of government and schools. At FTA, we offer a wide variety of quantitative and qualitative research services that cater to every segment of the educational marketplace. We adhere to the highest methodological standards to ensure exceptionally high quality results.  &lt;/span&gt;&lt;/p&gt;\n&lt;p&gt;\n	 &lt;/p&gt;\n', '', '', NULL, 1, '2011-11-02 13:25:27', 6, 0, NULL, NULL, 1, 1),
(21, 'td_logo_top.GIF', 'pic-14.jpg|pic-29.jpg|pic-37.jpg|pic-41.jpg|pic-58.jpg|pic-66.jpg|pic-7.jpg', 'Trương Đoàn', '', '', 'Marketing Research', '(Research and Consultant )', '73 Street No. 3, Cu xa Do Thanh, District 3,  Ho Chi Minh City, Viet Nam ', 'Information Center', '+848 3929 3233 ', '+848 3929 3243 ', '', 'www.truongdoan.net', 'info@truongdoan.com.vn', '', '', '', '&lt;p&gt;\r\n	&lt;span style=&quot;font-size:14px;&quot;&gt;&lt;strong&gt;&lt;span style=&quot;font-family:verdana, geneva, sans-serif;&quot;&gt; Who we are:&lt;/span&gt;&lt;/strong&gt;&lt;/span&gt;&lt;/p&gt;\r\n&lt;p&gt;\r\n	&lt;span style=&quot;font-size:12px;&quot;&gt;&lt;span style=&quot;font-family:verdana, geneva, sans-serif;&quot;&gt;• TRUONG DOAN Marketing Group''s history can be traced back to the Ho Chi Minh City University of Economics where our group founders worked in economic research and investment consultancy services for a number of foreign investment projects which first responded to the call for “Doi Moi” of Viet Nam in the early 1990s.&lt;/span&gt;&lt;/span&gt;&lt;/p&gt;\r\n&lt;p&gt;\r\n	&lt;span style=&quot;font-size:12px;&quot;&gt;&lt;span style=&quot;font-family:verdana, geneva, sans-serif;&quot;&gt;• &lt;strong&gt;1993&lt;/strong&gt;: Having identified our advantages on doing marketing research, we took efforts to develop specific capabilities and to seek for opportunities. Eventually in 1993, we successfully handled the first and largest media survey in Viet Nam at international standards in coordination with The Survey Research Group.&lt;/span&gt;&lt;/span&gt;&lt;/p&gt;\r\n&lt;p&gt;\r\n	&lt;span style=&quot;font-size:12px;&quot;&gt;&lt;span style=&quot;font-family:verdana, geneva, sans-serif;&quot;&gt;• &lt;strong&gt;1999&lt;/strong&gt;: TRUONG DOAN Company Limited was established as a custom research and marketing services agency with a vision of offering a portfolio of services for marketing and advertising business supports.&lt;/span&gt;&lt;/span&gt;&lt;/p&gt;\r\n&lt;p&gt;\r\n	&lt;span style=&quot;font-size:12px;&quot;&gt;&lt;span style=&quot;font-family:verdana, geneva, sans-serif;&quot;&gt;• &lt;strong&gt;2000&lt;/strong&gt;: We brought the clients’ focus in marketing operational efficiency to create unique capabilities in field marketing operations. We have successfully built up sampling systems for Nestle and large scaled promotion systems for Vietnam Brewery Limited, for which we have been working as the clients’ preferred agency until now.&lt;/span&gt;&lt;/span&gt;&lt;/p&gt;\r\n&lt;p&gt;\r\n	&lt;span style=&quot;font-size:12px;&quot;&gt;&lt;span style=&quot;font-family:verdana, geneva, sans-serif;&quot;&gt;• &lt;strong&gt;2006&lt;/strong&gt;: We formulated Data Development Solutions Company Limited, a member company of the group, with primary focus on handling the specific needs for data processing and data management.&lt;/span&gt;&lt;/span&gt;&lt;/p&gt;\r\n&lt;p&gt;\r\n	&lt;span style=&quot;font-size:12px;&quot;&gt;&lt;span style=&quot;font-family:verdana, geneva, sans-serif;&quot;&gt;• &lt;strong&gt;2008&lt;/strong&gt;: We had a strategic alignment of our organization into the two specialist business units specializing in custom marketing research and field marketing operations, to live up with our promise of building the highest commitment in every client’s assignment we accomplish.&lt;/span&gt;&lt;/span&gt;&lt;/p&gt;\r\n&lt;p&gt;\r\n	 &lt;/p&gt;\r\n&lt;p&gt;\r\n	&lt;span style=&quot;font-size:14px;&quot;&gt;&lt;strong&gt;&lt;span style=&quot;font-family:verdana, geneva, sans-serif;&quot;&gt;What We Do&lt;/span&gt;&lt;/strong&gt;&lt;/span&gt;&lt;/p&gt;\r\n&lt;p&gt;\r\n	&lt;span style=&quot;font-size:12px;&quot;&gt;&lt;span style=&quot;font-family:verdana, geneva, sans-serif;&quot;&gt;We would help you from identifying the critical data required for successful marketing, to&lt;br /&gt;\r\n	designing and executing research projects, and providing you with relevant and useful results&lt;br /&gt;\r\n	for your specific marketing needs. Specific research designs include:&lt;/span&gt;&lt;/span&gt;&lt;/p&gt;\r\n&lt;p&gt;\r\n	&lt;span style=&quot;font-size:12px;&quot;&gt;&lt;span style=&quot;font-family:verdana, geneva, sans-serif;&quot;&gt;&lt;strong&gt;Research models:&lt;/strong&gt;&lt;br /&gt;\r\n	• Product Testing&lt;br /&gt;\r\n	• Positioning Research&lt;br /&gt;\r\n	• Consumer Usage &amp;amp; Attitude Research&lt;br /&gt;\r\n	• Consumer Tracking Research&lt;br /&gt;\r\n	• Consumers’ Life-style&lt;br /&gt;\r\n	• Consumer Satisfaction Research&lt;br /&gt;\r\n	• Concept/Copy Pre- and Post-test&lt;br /&gt;\r\n	• Advertising Tracking Research • Outlet Census&lt;br /&gt;\r\n	• Trade Channels Analysis&lt;br /&gt;\r\n	• Channels Performance Monitoring and Evaluation&lt;br /&gt;\r\n	• Price Sensitivity/Indifference Analysis&lt;br /&gt;\r\n	• Brand-Price-Trade-Off&lt;br /&gt;\r\n	• Promotion Concurrent Testing&lt;br /&gt;\r\n	• Corporate Image Studies&lt;br /&gt;\r\n	• Employee Satisfaction Tracking Research&lt;/span&gt;&lt;/span&gt;&lt;/p&gt;\r\n', '', '', NULL, 1, '2011-11-02 13:56:23', 3, 0, NULL, NULL, 1, 1),
(23, 'tns_market_reseach_logo.gif', 'pic-1.jpg|pic-2.jpg|pic-366.gif|pic-4.jpg|pic-588.jpg|pic-68.jpg|pic-72.jpg|pic-8.jpg|pic-9.jpg|pic-10.jpg', 'TNS', '', '', 'Global Company', '(Research and Consultant )', '105-107 Nguyễn Công Trứ, P.Ng Thái Bình, Q.1', 'Information Center', '08.38215727', '', '', 'www.tnsglobal.com', '', '', '', '', '&lt;p&gt;\n	&lt;span style=&quot;font-size:12px;&quot;&gt;&lt;span style=&quot;font-family:verdana, geneva, sans-serif;&quot;&gt;&lt;span style=&quot;font-size:14px;&quot;&gt;&lt;strong&gt;TNS Vietnam&lt;/strong&gt;&lt;/span&gt;&lt;/span&gt;&lt;/span&gt;&lt;/p&gt;\n&lt;p&gt;\n	&lt;br /&gt;&lt;span style=&quot;font-size:12px;&quot;&gt;&lt;span style=&quot;font-family:verdana, geneva, sans-serif;&quot;&gt;With 11 years in the marketplace, TNS Vietnam is unique in offering all three major market research services - customised, access panels and media monitoring - to a range of local and international clients&lt;br /&gt;\n	The only full service market research group in Vietnam&lt;br /&gt;\n	Qualitative and quantitative research, retail analysis via Worldpanel and media monitoring and adspend tracking – all offered by TNS Vietnam.&lt;/span&gt;&lt;/span&gt;&lt;/p&gt;\n&lt;p&gt;\n	&lt;br /&gt;&lt;span style=&quot;font-size:12px;&quot;&gt;&lt;span style=&quot;font-family:verdana, geneva, sans-serif;&quot;&gt;&lt;strong&gt;Our Expertise&lt;/strong&gt;&lt;br /&gt;\n	TNS Vietnam has plenty to offer our clients: 11 years of Vietnam experience; Media, Retail and Customised under one roof; dedicated resources for brand &amp;amp; advertising, shopper research, new product development, stakeholder management, segmentation and positioning; a partnership and user-friendly approach to client account management.&lt;/span&gt;&lt;/span&gt;&lt;/p&gt;\n&lt;p&gt;\n	&lt;br /&gt;&lt;span style=&quot;font-size:12px;&quot;&gt;&lt;span style=&quot;font-family:verdana, geneva, sans-serif;&quot;&gt;Our custom research business includes Fortune 500 companies, such as Unilever, Nestle, Ford, Nokia, as well as major local clients such as Vinamilk, VCD, as well as donor organizations such as UNICEF, the World Bank and various Government Ministries.&lt;/span&gt;&lt;/span&gt;&lt;/p&gt;\n&lt;p&gt;\n	&lt;br /&gt;&lt;span style=&quot;font-size:12px;&quot;&gt;&lt;span style=&quot;font-family:verdana, geneva, sans-serif;&quot;&gt;These clients can depend on specific sector expertise that provides genuine insight and understanding of research needs, handled by experienced staff with anywhere from 6 to 11 years with TNS in Vietnam.&lt;br /&gt;\n	Worldpanel, our continuous panel sector, delivers insights into consumer purchasing and usage habits on a local, regional and global scale.&lt;/span&gt;&lt;/span&gt;&lt;/p&gt;\n&lt;p&gt;\n	&lt;br /&gt;&lt;span style=&quot;font-size:12px;&quot;&gt;&lt;span style=&quot;font-family:verdana, geneva, sans-serif;&quot;&gt;&lt;strong&gt;We are the only ISO equivalent accredited research group in Vietnam.&lt;br /&gt;\n	Our Industry Sector focus&lt;/strong&gt;&lt;br /&gt;\n	We work in and across all the major business sectors: FMCG; Technology; Finance; Media; Healthcare; Automotive; Public and Social.&lt;br /&gt;\n	Insight services and solutions&lt;br /&gt;\n	Our customised research provides clients with unrivalled coverage through 11 offices in eight of Vietnam’s major cities.&lt;/span&gt;&lt;/span&gt;&lt;/p&gt;\n&lt;p&gt;\n	&lt;br /&gt;&lt;span style=&quot;font-size:12px;&quot;&gt;&lt;span style=&quot;font-family:verdana, geneva, sans-serif;&quot;&gt;Used by local and multinational FMCG companies, retailers, embassies, and advertising agencies, Worldpanel is unique in Vietnam. It has been tracking ordinary consumption for 5 years, on a weekly basis, covering 2,150 households in four key urban, trend-setting cities.&lt;/span&gt;&lt;/span&gt;&lt;/p&gt;\n&lt;p&gt;\n	&lt;br /&gt;&lt;span style=&quot;font-size:12px;&quot;&gt;&lt;span style=&quot;font-family:verdana, geneva, sans-serif;&quot;&gt;Through the information provided by Worldpanel, our clients can access a range of market insight services and solutions such as purchase decisions, category management, price sensitivity, promotion management, brand switching and duplication.&lt;/span&gt;&lt;/span&gt;&lt;/p&gt;\n&lt;p&gt;\n	&lt;span style=&quot;font-size:12px;&quot;&gt;&lt;span style=&quot;font-family:verdana, geneva, sans-serif;&quot;&gt;VietCycle is Vietnam’s only Life style monitor, offering Vietnam’s only complete study on Rural Vietnam, covering over 36 locations across the country.&lt;/span&gt;&lt;/span&gt;&lt;/p&gt;\n&lt;p&gt;\n	&lt;br /&gt;&lt;span style=&quot;font-size:12px;&quot;&gt;&lt;span style=&quot;font-family:verdana, geneva, sans-serif;&quot;&gt;Our clients can also take advantage of a range of global TNS insight services and solutions, including: AdEval™; Conversion Model™; FutureView™; InnoSuite™; NeedScope System™; TRI*M™. &lt;/span&gt;&lt;/span&gt;&lt;/p&gt;\n&lt;p&gt;\n	&lt;br /&gt;&lt;span style=&quot;font-size:12px;&quot;&gt;&lt;span style=&quot;font-family:verdana, geneva, sans-serif;&quot;&gt;The TNS Public &amp;amp; Social Sector was set up in 2006, in an effort to address the needs of both Governments and donor organizations. This sector specializes and has dedicated resources based in Hanoi to assist in developing both social and policy changes required to ensure Vietnam meets its millennium goals. For more information on this sector, please visit : www.tnsglobal.com&lt;/span&gt;&lt;/span&gt;&lt;/p&gt;\n', '', '', NULL, 1, '2011-11-03 04:38:27', 4, 0, NULL, NULL, 1, 1),
(24, 'logo1.gif', 'pic-19.JPG|pic-27.jpg|pic-3.jpg|pic-49.jpg|pic-55.jpg', 'Indochina Research', '', '', 'Marketing Research', '(Research and Consultant )', 'Lầu 3, Tòa nhà Saigon 3  140 Nguyễn Văn Thủ, Quận 1', 'Information Center', '(84-8)3823 6965', '(84-8)3823 6971', '', 'www.indochinaresearch.com', '', '', '', '', '&lt;p&gt;\n	Có mặt tại Việt Nam từ năm 1994, cho đến nay công ty nghiên cứu thị trường Đông Dương đã có khoảng 150 nhân viên chính thức và gần 1000 nhân viên làm ngoài giờ tại các nước Việt Nam, Campodia và Lào.&lt;/p&gt;\n&lt;p&gt;\n	&lt;br /&gt;&lt;strong&gt;Các lĩnh vực hoạt động&lt;/strong&gt;&lt;br /&gt;\n	Nghiên cứu định lượng và nghiên cứu định tính cho các công ty thương mại và các tổ chức phi chính phủ, phi lợi nhuận.&lt;/p&gt;\n&lt;p&gt;\n	&lt;br /&gt;&lt;strong&gt;Lĩnh vực đã cung cấp dịch vụ&lt;/strong&gt;&lt;br /&gt;\n	Sau 15 năm có mặt tại Việt Nam, công ty Đông Dương đã xây dựng được mối quan hệ chặt chẽ với nhiều khách hàng chiến lược tại các ngành nghề sau:&lt;br /&gt;\n	• Viễn thông&lt;br /&gt;\n	• Ngân hàng &amp;amp; dịch vụ tài chính&lt;br /&gt;\n	• Tiêu dùng nhanh&lt;br /&gt;\n	• Du lịch&lt;/p&gt;\n&lt;p&gt;\n	&lt;br /&gt;&lt;strong&gt;Các phương pháp và công cụ nghiên cứu&lt;/strong&gt;&lt;br /&gt;\n	Nghiên cứu thương mại&lt;br /&gt;\n	• Nghiên cứu theo yêu cầu của khách hàng&lt;br /&gt;\n	• Thử sản phẩm mới&lt;br /&gt;\n	• Thử sản phẩm tại địa điểm nghiên cứu&lt;br /&gt;\n	• Điều tra mức độ hài lòng của khách hàng&lt;br /&gt;\n	• Đánh giá ý tưởng và sản phẩm mới&lt;br /&gt;\n	• Thu thập thông tin bằng phương pháp dân tộc học&lt;/p&gt;\n&lt;p&gt;\n	&lt;br /&gt;&lt;strong&gt;Chuyên gia nghiên cứu về bán lẻ&lt;/strong&gt;&lt;br /&gt;\n	• Đánh giá hệ thống bán lẻ&lt;br /&gt;\n	• Đánh giá hệ thống phân phối&lt;br /&gt;\n	• Phân tích chuỗi giá trị&lt;br /&gt;\n	• Dịch vụ khách hàng bí mật&lt;br /&gt;\n	• Phân tích mô hình hóa&lt;/p&gt;\n&lt;p&gt;\n	&lt;br /&gt;&lt;strong&gt;Nghiên cứu xã hội&lt;/strong&gt;&lt;br /&gt;\n	• Nghiên cứu về kiến thức, thái độ, hành vi (KAP)&lt;br /&gt;\n	• Giám sát và đánh giá&lt;br /&gt;\n	• Nghiên cứu thay đổi hành vi&lt;/p&gt;\n&lt;p&gt;\n	&lt;br /&gt;\n	Các hoạt động nghiên cứu định lượng và định tính của công ty nghiên cứu thị trường Đông Dương được thiết kế và thực hiện một cách hiệu quả nhờ quy trình kiểm tra chất lượng chặt chẽ, phạm vi nghiên cứu thực địa rộng khắp và khả năng phân tích có chiều sâu.&lt;/p&gt;\n&lt;p&gt;\n	&lt;br /&gt;&lt;strong&gt;Sứ mệnh của công ty&lt;/strong&gt;&lt;br /&gt;\n	Phương châm của chúng tôi là trên cơ sở thấu hiểu đặc điểm và nhu cầu của khách hàng để có hành động và cam kết cụ thể, thiết thực, giúp khách hàng giải quyết có hiệu quả những vấn đề kinh doanh họ gặp phải.&lt;br /&gt;\n	Có cấu điều hành của công ty tạo điều kiện cho việc giao tiếp và hợp tác giữa các nhân viên và khách hàng được nhanh chóng và hiệu quả nhất.&lt;/p&gt;\n&lt;p&gt;\n	&lt;br /&gt;&lt;strong&gt;Tầm nhìn của công ty&lt;/strong&gt;&lt;br /&gt;\n	Giúp khách hàng hiểu rõ tầm quan trọng và tiến tới sử dụng có hiệu quả công tác nghiên cứu thị trường chuyên nghiệp.&lt;/p&gt;\n&lt;p&gt;\n	&lt;br /&gt;&lt;strong&gt;Tổng số nhân viên tại Vietnam: 50&lt;br /&gt;\n	Ban giám đốc     &lt;br /&gt;\n	Beth Owen – Giám đốc điều hành&lt;br /&gt;\n	Rodolphe Jounot – Giám đốc nghiên cứu&lt;br /&gt;\n	Robert van der Klink – Giám đốc nghiên cứu&lt;/strong&gt;&lt;br /&gt;\n	 &lt;/p&gt;\n', '', '', NULL, 1, '2011-11-03 07:44:11', 1, 0, NULL, NULL, 1, 1),
(25, 'logo1.JPG', 'khung-hinh-knorr.jpg|lifebouy-leaflet8.jpg|melia-model.JPG|moc-khoa.JPG|moc-khoamica.jpg|pgs_phoenix-mobil1.jpg|quat-dulux.JPG|rexonamen6.jpg|tui-giay-knorr.jpg|vido-tour29.jpg', 'POS Promotion Gifts', '', '', 'Gifts for Marketing Campaign', '(Quà tặng quảng cáo, POSM for Marketing Campaign)', '140/10 Trần Kế Xương, P.7, Phú Nhuận, TP.Hồ Chí Minh', 'Ms Thúy An', '848 38 410 434', '', '0909 320 989', '', 'ledothuyan83@yahoo.com', '', '', '', '&lt;p&gt;\n	&lt;strong&gt;TÓM TẮT&lt;/strong&gt;&lt;/p&gt;\n&lt;p&gt;\n	 &lt;/p&gt;\n&lt;p&gt;\n	Bắt đầu từ một công ty thiết kế với quy mô nhỏ vào năm 2004, với 05 nhân viên đến năm 2007 chúng tôi đã phát triển công ty của mình với văn phòng, chi nhánh, kho hàng, xưởng sản xuất với quy mô lớn tại TP.Hồ Chí Minh.&lt;/p&gt;\n&lt;p&gt;\n	&lt;br /&gt;\n	Thật may mắn, trong khoảng thời gian này, chúng tôi được làm việc chung với những công ty quảng cáo hàng đầu Việt Nam, tham gia vào những buổi nhận Brief, Brainstorming,…từ khách hàng của mình. Từ đó, propose tới khách hàng những vật phẩm quảng cáo phù hợp với Concept của nhãn hàng, nằm trong ngân sách của chiến dịch. &lt;strong&gt;Sự thấu hiểu khách hàng&lt;/strong&gt; là một điểm mạnh của POS promotion Gifts.&lt;/p&gt;\n&lt;p&gt;\n	 &lt;/p&gt;\n&lt;p&gt;\n	Với sự hổ trợ đắc lực từ những nhà cung ứng vật tư, những nhà máy chuyên sản xuất gia công: Nhà in, nhà máy dệt, xưởng gỗ, gia công may, xưởng chế tác hàng thủ công mỹ nghệ,…Chúng tôi tự tin, cung cấp cho khách hàng của mình những mẫu quà tặng chất lượng với giá cả cạnh tranh, trong khoảng thời gian thực hiện gấp.&lt;/p&gt;\n&lt;p&gt;\n	&lt;strong&gt;NGÀNH NGHỀ KINH DOANH&lt;/strong&gt;&lt;/p&gt;\n&lt;p&gt;\n	&lt;br /&gt;\n	Chúng tôi chuyên thiết kế tạo mẫu, sản xuất, thương mại các sản phẩm quà tặng phục vụ cho các chiến dịch quảng cáo. Những sản phẩm chủ yếu:&lt;/p&gt;\n&lt;p&gt;\n	&lt;br /&gt;&lt;strong&gt;• Viết bi cho mass consumer.&lt;br /&gt;\n	• Móc khóa từ các chất liệu Mica, đổ nhựa, da, kim loại,....&lt;br /&gt;\n	• Quạt làm từ nhựa PP, PVC, Giấy.&lt;br /&gt;\n	• Các Sản phẩm với chất liệu là Da, Simili.&lt;br /&gt;\n	• Các sản phẩm dệt: Khăn, áo choàng,.....&lt;br /&gt;\n	• Thú nhồi bông.&lt;br /&gt;\n	• .......,&lt;br /&gt;\n	HOẠT ĐỘNG TIÊU BIỂU VÀ ĐỐI TÁC&lt;/strong&gt;&lt;/p&gt;\n&lt;p&gt;\n	&lt;br /&gt;\n	• &lt;strong&gt;Cung cấp Viết bi, Ba Lô Laptop cho chiến dịch của Nokia Ovi.&lt;br /&gt;\n	• Móc khóa cho chiến dịch của Comfort, làm việc với TCM Marketing.&lt;br /&gt;\n	• Bộ thiệp mời cao cấp cho chuổi Event của AVC Marketing(Belvedere, Smirnoff,..)&lt;br /&gt;\n	• 1.100 bộ Booklets cao cấp Total, làm việc với Lowe Việt Nam.&lt;br /&gt;\n	• Quà tặng, Thiệp mời cho lễ động thổ, cất nóc của Lotus Garden.&lt;br /&gt;\n	• Khẩu trang cho chiến dịch của Riverorchid Marketing.&lt;br /&gt;\n	• Bộ liễn chúc tết cho ngân hàng Vietinbank Ho Chi Minh.&lt;br /&gt;\n	• 500 hộp Name card gỗ cho Vidotour.&lt;br /&gt;\n	• …….với&lt;/strong&gt; &lt;strong&gt;Eplus, MC, Gia Hòa, MSV, BlueSky, IM Marketing.&lt;/strong&gt;&lt;/p&gt;\n&lt;p&gt;\n	&lt;br /&gt;\n	Đừng ngần ngại, hảy liên lạc với POS, chúng tôi muốn sát cánh với bạn trong mọi chiến dịch Marketing.&lt;/p&gt;\n', '', '', NULL, 1, '2011-11-08 04:05:40', 7, 0, NULL, NULL, 1, 15),
(28, 'logo-tcm.gif', 'bp-2.JPG|comfort7.JPG|canthomap2.jpg|bp-sampling.JPG|nguyen-dinh-chieu-21.JPG|dn66.JPG|cong-quynh-22.JPG', 'TCM Marketing', '', '', 'Ý tưởng sáng tạo, thực hiện chu đáo', 'Marketing Activities', '737/4 Cách mạng Tháng 8, Phường 6, Quận Tân Bình, TP.HCM', 'Information Center', '84-8 3970 2705', '', '', 'www.TCMcompany.com', '', '', '', '', '&lt;p&gt;\n	&lt;br /&gt;&lt;span style=&quot;font-size:11px;&quot;&gt;&lt;span style=&quot;font-family:verdana, geneva, sans-serif;&quot;&gt;&lt;strong&gt;Official opening of TCM&lt;/strong&gt;&lt;br /&gt;\n	28th August 2000 (Staff size: N = 4).&lt;br /&gt;\n	Currently TCM has&lt;br /&gt;\n	Staff force of 153 fulltime staff members.&lt;br /&gt;\n	Head office in HCMC and operations offices in HCMC, Ha Noi, Can Tho and Da Nang.&lt;br /&gt;\n	Ability to implement projects across the country.&lt;/span&gt;&lt;/span&gt;&lt;/p&gt;\n&lt;p&gt;\n	&lt;br /&gt;&lt;br /&gt;&lt;span style=&quot;font-size:11px;&quot;&gt;&lt;span style=&quot;font-family:verdana, geneva, sans-serif;&quot;&gt;&lt;strong&gt;HUMAN RESOURCE &amp;amp; NETWORK&lt;/strong&gt;&lt;br /&gt;\n	To deliver good quality services for nationwide &amp;amp; large scale projects, we have built up a large human resource of 153 professional, experienced fulltime employees and a casual labor pool up to 1,500 part-time employees with a network across 64 towns of Vietnam&lt;/span&gt;&lt;/span&gt;&lt;/p&gt;\n&lt;p&gt;\n	&lt;br /&gt;&lt;span style=&quot;font-size:11px;&quot;&gt;&lt;span style=&quot;font-family:verdana, geneva, sans-serif;&quot;&gt;TCM has been selected as one of the Top 50 Vietnam''s Best Employers in the survey co-organized by Thanh Nien, Navigos Group and AC Nielsen. The satisfaction of the staff force is an important thing that has been helping us in offering clients good quality service&lt;/span&gt;&lt;/span&gt;&lt;/p&gt;\n&lt;p&gt;\n	 &lt;/p&gt;\n&lt;p&gt;\n	&lt;span style=&quot;font-size:11px;&quot;&gt;&lt;span style=&quot;font-family:verdana, geneva, sans-serif;&quot;&gt;ACTIVATION Product demonstration/consultation, games, road show, personal care services, consumer interaction. &lt;/span&gt;&lt;/span&gt;&lt;/p&gt;\n&lt;p&gt;\n	&lt;span style=&quot;font-size:11px;&quot;&gt;&lt;span style=&quot;font-family:verdana, geneva, sans-serif;&quot;&gt;&lt;strong&gt;SALES PROMOTION Consumer &amp;amp; Trade oriented&lt;/strong&gt;&lt;br /&gt;\n	• Sampling&lt;br /&gt;\n	• Premium redemption&lt;br /&gt;\n	• Contest&lt;br /&gt;\n	• Loyalty program&lt;br /&gt;\n	• Merchandising&lt;br /&gt;\n	• Promoters/promotion&lt;br /&gt;\n	• Couponing&lt;/span&gt;&lt;/span&gt;&lt;/p&gt;\n&lt;p&gt;\n	&lt;br /&gt;&lt;span style=&quot;font-size:11px;&quot;&gt;&lt;span style=&quot;font-family:verdana, geneva, sans-serif;&quot;&gt;&lt;strong&gt;EVENTS&lt;/strong&gt;&lt;br /&gt;\n	• All types of Events&lt;/span&gt;&lt;/span&gt;&lt;/p&gt;\n&lt;p&gt;\n	&lt;br /&gt;&lt;span style=&quot;font-size:11px;&quot;&gt;&lt;span style=&quot;font-family:verdana, geneva, sans-serif;&quot;&gt;&lt;strong&gt;DIRECT MARKETING&lt;/strong&gt;&lt;br /&gt;\n	• Database management&lt;br /&gt;\n	• Direct mail (Consumer/Trade)&lt;br /&gt;\n	• Telemarketing/telesales&lt;br /&gt;&lt;br /&gt;\n	We provide the following main services and other BTL marketing services requested by clients. We can implement major, nationwide and large scale projects.&lt;/span&gt;&lt;/span&gt;&lt;/p&gt;\n', '', '', NULL, 1, '2011-11-14 14:26:30', 9, 0, NULL, NULL, 1, 3),
(29, 'logochinhthuc5.jpg', 'bayer_logo.png|toshiba1.jpg|yoadgall3.jpg|yoadgall7.jpg|yoadgall9.jpg|yoadgall10bus.jpg', 'Youth Advertising', '', '', 'Marketing ATL', '(PR, Events, Concept, TVC, Outdoor,...)', ' 01 Pham Ngoc Thanh, Ben Nghe Ward,  District 1, Ho Chi Minh City', 'Information Center', '(84-8)3823 1776', '(84-8)3829 6735', '', 'www.youthad.com.vn', 'youthad@youthad.com.vn', '', '', '', '&lt;p&gt;\n	&lt;span style=&quot;font-size:11px;&quot;&gt;&lt;span style=&quot;font-family:verdana, geneva, sans-serif;&quot;&gt;Establishment: Youth Advertising (YouthAD) was established in 1989, by the Youth Union of Ho Chi Minh City. YouthAD was the first advertising company in VietNam and became one of the leading companies in more than 20 years.&lt;br /&gt;\n	2006: YouthAD was privatized and the Youth Union accounted for 51% share in YouthAd&lt;br /&gt;\n	August 2007 News Outdoor South East Asia (NOSEA), a subsidiary of the News Corp, invested in YouthAD and become a strategic investor holding 30% shares.&lt;/span&gt;&lt;/span&gt;&lt;/p&gt;\n&lt;p&gt;\n	&lt;br /&gt;&lt;span style=&quot;font-size:11px;&quot;&gt;&lt;span style=&quot;font-family:verdana, geneva, sans-serif;&quot;&gt;The other two key board members is the Youth Union of Ho Chi Minh and Tuoi tre Newspaper.&lt;br /&gt;\n	Restructure: in 2008, YouthAd started to reconstruct itself for better service and management. After the restructure process, YouthAD focused in two main operations, Out-Of-Home advertising and PR &amp;amp; Even advertising.&lt;/span&gt;&lt;/span&gt;&lt;/p&gt;\n&lt;p&gt;\n	&lt;br /&gt;&lt;span style=&quot;font-size:11px;&quot;&gt;&lt;span style=&quot;font-family:verdana, geneva, sans-serif;&quot;&gt;Youthad implements many programs &quot;difficult&quot; for other brands doing business in the Vietnam market with large-scale organizations in areas such as promotions,the music concerts, international conferences.&lt;/span&gt;&lt;/span&gt;&lt;/p&gt;\n&lt;p&gt;\n	&lt;br /&gt;&lt;span style=&quot;font-size:11px;&quot;&gt;&lt;span style=&quot;font-family:verdana, geneva, sans-serif;&quot;&gt;YouthAd''s strength is 20 years of experience developing strategic location in the main streets, in the downtown area: Quach Thi Trang Square (Ben Thanh), Phu Lam roundabout, across the Green Goods and the Saigon Bridge, ... and...&lt;/span&gt;&lt;/span&gt;&lt;/p&gt;\n&lt;p&gt;\n	&lt;br /&gt;&lt;span style=&quot;font-size:11px;&quot;&gt;&lt;span style=&quot;font-family:verdana, geneva, sans-serif;&quot;&gt;Being the first outdoor advertising company of Vietnam, the advantages of YouthAD is the twenty-year experience and strategic positions in Ho Chi Minh city: the Ben Thanh Market, Phu Lam roundabout, Hang Xanh roundabout, SaiGon bridge… and approximately 100 bus shelters around Ho Chi Minh city.&lt;/span&gt;&lt;/span&gt;&lt;/p&gt;\n&lt;p&gt;\n	 &lt;/p&gt;\n', '', '', NULL, 1, '2011-11-15 04:29:52', 10, 0, NULL, NULL, 1, 2),
(30, 'logo.jpg', 'gsk4.JPG|1.jpg|2.jpg|3.jpg|4.jpg', 'Awareness I.D Viet Nam', '', '', 'PR, Media Expert', '(Media, PR, Event)', '60 Nguyen Dinh Chieu St., Dist. 1, Ho Chi Minh City, Vietnam', 'Lê Trần Bảo Phương(Mr)', '84-8 38224.024', '84-8 38224.026', '', 'www.awareness.com.vn', 'phuong.le@awareness.com.vn', '', '', '', '&lt;p&gt;\n	&lt;span style=&quot;font-size:12px;&quot;&gt;&lt;span style=&quot;font-family:verdana, geneva, sans-serif;&quot;&gt;&lt;strong&gt;Công ty PR Việt Nam đầu tiên gia nhập liên minh các công ty PR thế giới&lt;/strong&gt;&lt;/span&gt;&lt;/span&gt;&lt;/p&gt;\n&lt;p&gt;\n	&lt;br /&gt;&lt;span style=&quot;font-size:12px;&quot;&gt;&lt;span style=&quot;font-family:verdana, geneva, sans-serif;&quot;&gt;(Awareness I.D-Việt nam) Rạng sáng nay ngày 21/6/2011, Tổ chức Quan Hệ Công Chúng Quốc Tế (Public Relations Organisation International-PROI) có trụ sở quốc tế đặt tại Mỹ đã chính thức công bố trên toàn cầu về sự gia nhập chính thức của Công ty Awareness id, công ty quan hệ công chúng (Public Relations) vào liên minh các công ty PR của PROI trên toàn cầu. Sự kiện một công ty PR đầu tiện của Việt Nam được kết nạp làm thành viên của tổ chức PR lâu đời và lớn nhất thế giới PROI đánh dấu bước tiến quan trọng trong sự phát triển nghề nghiệp PR chính thống tại Việt Nam và hứa hẹn góp phần xác lập những chuẩn mực quốc tế cho nghề này.&lt;/span&gt;&lt;/span&gt;&lt;/p&gt;\n&lt;p&gt;\n	 &lt;/p&gt;\n&lt;p&gt;\n	&lt;span style=&quot;font-size:12px;&quot;&gt;&lt;span style=&quot;font-family:verdana, geneva, sans-serif;&quot;&gt;Trước sự kiện này, Ông Nguyễn Quốc Bảo – Giám đốc điều hành Awareness ID cho biết “Một vinh dự cho chúng tôi khi trở thành thành viên của PROI, một liên minh PR lớn nhất thế giới bao gồm các công ty PR đạt giải thưởng trong khu vực. Kể từ thời điểm này, chúng tôi cam kết các chuẩn mực quốc tế cho nghề quan hệ công chúng sẽ được áp dụng trên tất cả các dự án mà Awareness ID triển khai nhằm đảm bảo tính hiệu quả chuyên môn cao nhất.”&lt;/span&gt;&lt;/span&gt;&lt;/p&gt;\n&lt;p&gt;\n	 &lt;/p&gt;\n&lt;p&gt;\n	&lt;span style=&quot;font-size:12px;&quot;&gt;&lt;span style=&quot;font-family:verdana, geneva, sans-serif;&quot;&gt;“Chúng tôi có tham vọng   trở thành nhịp cầu đầu tiên truyền thụ những tiêu chuẩn mẫu mực này tại Việt Nam để góp phần phát triển nghề này tại nước ta, đặc biệt trong bối cảnh các quan niệm về nghề này còn nhiều giới hạn.”&lt;/span&gt;&lt;/span&gt;&lt;/p&gt;\n&lt;p&gt;\n	 &lt;/p&gt;\n&lt;p&gt;\n	&lt;span style=&quot;font-size:12px;&quot;&gt;&lt;span style=&quot;font-family:verdana, geneva, sans-serif;&quot;&gt;Ông Bob Frause, Chủ tịch liên minh PROI có trụ sở đặt tại Mỹ, chào mừng sự gia nhập của Awareness I.D đã phát biểu: “Với một tầm nhìn chiến lược, PROI sẽ tiếp tục phát triển mở rộng có chọn lọc, bằng cách chỉ kết nạp các thành viên đáp ứng được các tiêu chuẩn mà chúng tôi đã đề ra nhằm phục vụ cho tất cả các khách hàng trên toàn cầu cũng như các khách hàng tại khu vực Châu Á đang tăng trưởng rộng ra khắp thế giới.”&lt;/span&gt;&lt;/span&gt;&lt;/p&gt;\n&lt;p&gt;\n	 &lt;/p&gt;\n&lt;p&gt;\n	&lt;span style=&quot;font-size:12px;&quot;&gt;&lt;span style=&quot;font-family:verdana, geneva, sans-serif;&quot;&gt;Được biết, quyết định kết nạp thành viên Việt Nam này của PROI là nhằm tăng cường sự lớn mạnh của tổ chức này tại khu vực Châu Á Thái Bình Dương, do đó Awareness ID sẽ phụ trách tư vấn chiến lược cho mạng lưới khách hàng của PROI tại khu vực Châu Á Thái Bình Dương kể từ tháng 6 năm nay.&lt;/span&gt;&lt;/span&gt;&lt;/p&gt;\n&lt;p&gt;\n	 &lt;/p&gt;\n&lt;p&gt;\n	&lt;span style=&quot;font-size:12px;&quot;&gt;&lt;span style=&quot;font-family:verdana, geneva, sans-serif;&quot;&gt;Việc đi đến quyết định cuối cùng liệu có kết nạp công ty PR Việt Nam này hay không được thẩm định thông qua bộ tiêu chuẩn nghiêm ngặt của PROI về khả năng tư vấn chiến lược cho các khách hàng toàn cầu cũng như các khách hàng thuộc khu vực Châu Á. Sự đánh giá này được  thực hiện bởi Ông Allard van Veen vào tháng 4 vừa qua tại Việt Nam cùng Ông Jean Leopold Schuybroek – Chủ tịch Tập đoàn phát triển toàn cầu của PROI, và được thẩm định sau cùng bởi Ông Bob Frause, Chủ tịch liên minh PROI cùng Ban quản trị./.&lt;/span&gt;&lt;/span&gt;&lt;/p&gt;\n&lt;p&gt;\n	 &lt;/p&gt;\n&lt;p&gt;\n	&lt;span style=&quot;font-size:12px;&quot;&gt;&lt;span style=&quot;font-family:verdana, geneva, sans-serif;&quot;&gt;&lt;strong&gt;Thông tin về Awareness ID:&lt;/strong&gt;&lt;br /&gt;\n	Công ty Awareness I.D được thành lập vào năm 2003, là công ty Việt Nam cung cấp trọn gói dịch vụ quan hệ công chúng (PR), đặc biệt chuyên sâu vào 4 lãnh vực:  hàng tiêu dùng trực tiếp, ngành chăm sóc sức khỏe, quan hệ nhà đầu tư và giám sát dư luận.&lt;/span&gt;&lt;/span&gt;&lt;/p&gt;\n&lt;p&gt;\n	 &lt;/p&gt;\n&lt;p&gt;\n	&lt;span style=&quot;font-size:12px;&quot;&gt;&lt;span style=&quot;font-family:verdana, geneva, sans-serif;&quot;&gt;Awareness ID là Công ty PR Việt Nam duy nhất giành giải thưởng khu vực Châu Á Thái Bình Dương “Chiến dịch PR của năm” vào 2007.&lt;/span&gt;&lt;/span&gt;&lt;/p&gt;\n&lt;p&gt;\n	 &lt;/p&gt;\n&lt;p&gt;\n	&lt;span style=&quot;font-size:12px;&quot;&gt;&lt;span style=&quot;font-family:verdana, geneva, sans-serif;&quot;&gt;Awareness ID là thành viên của Hiệp hội các tổ chức Quan hệ công chúng có trụ sở đặt tại Anh.&lt;/span&gt;&lt;/span&gt;&lt;/p&gt;\n&lt;p&gt;\n	 &lt;/p&gt;\n&lt;p&gt;\n	&lt;span style=&quot;font-size:12px;&quot;&gt;&lt;span style=&quot;font-family:verdana, geneva, sans-serif;&quot;&gt;Các khách hàng hiện nay của Awareness ID là: Blooming, British Vietnam International School, Castrol BP, GSK, Indochina Capital, Kimberly Clark, Mead Johnson Vietnam, Merap Group, Pfizer/Viagra, Sanofi Aventis and Yumangel.&lt;/span&gt;&lt;/span&gt;&lt;/p&gt;\n&lt;p&gt;\n	&lt;br /&gt;&lt;span style=&quot;font-size:12px;&quot;&gt;&lt;span style=&quot;font-family:verdana, geneva, sans-serif;&quot;&gt;&lt;strong&gt;Thông tin về PROI&lt;/strong&gt;&lt;/span&gt;&lt;/span&gt;&lt;/p&gt;\n&lt;p&gt;\n	&lt;span style=&quot;font-size:12px;&quot;&gt;&lt;span style=&quot;font-family:verdana, geneva, sans-serif;&quot;&gt;Tổ chức quan hệ công chúng quốc tế PROI được thành lập ở Châu Âu vào năm 1970 và là liên minh lâu đời nhất, lớn nhất thế giới của các công ty PR và các công ty Marketing độc lập trên toàn cầu. Với hơn 120 văn phòng trên 40 quốc gia khắp năm châu, các công ty thành viên của PROI là các công ty hàng đầu tại thị trường từ London, New York, Hồng Kông, Frankfurt, Tokyo cho đến Beijing, Brussels, Dubai, Mumbai, Paris và Sao Paolo.&lt;/span&gt;&lt;/span&gt;&lt;/p&gt;\n&lt;p&gt;\n	 &lt;/p&gt;\n&lt;p&gt;\n	&lt;span style=&quot;font-size:12px;&quot;&gt;&lt;span style=&quot;font-family:verdana, geneva, sans-serif;&quot;&gt;PROI xây dựng danh tiếng và định hướng dư luận bằng cách sử dụng dự án theo yêu cầu kết hợp kiến thức địa phương và chuyên môn kinh doanh và nhiều dịch vụ đa dạng để cung cấp cho nhu cầu kéo dài biên giới và châu lục của khách hàng. Các thành viên của PROI đều là các nhà lãnh đạo kinh doanh rất am hiểu nhu cầu thực tế của khách hàng cũng như tầm quan trọng của lợi nhuận thu được từ vốn đầu tư và chính họ kết hợp am hiểu thị trường địa phương để tạo nên thành công quy mô toàn cầu./.&lt;/span&gt;&lt;/span&gt;&lt;/p&gt;\n', '', '', NULL, 1, '2011-11-15 16:07:43', 11, 0, NULL, NULL, 1, 4),
(31, 'logo.jpg', NULL, 'test', '', '', 'slogan', 'CNTT', '', '', '0933.667.918', '', '', '', '', '', '', '', '&lt;p&gt;\n	chi tiet&lt;/p&gt;\n', '', '', NULL, 1, '2011-11-26 01:52:14', 12, 0, NULL, NULL, 1, 2);

-- --------------------------------------------------------

--
-- Table structure for table `dos_module_supplier_cat`
--

CREATE TABLE IF NOT EXISTS `dos_module_supplier_cat` (
  `cat_id` int(11) NOT NULL AUTO_INCREMENT,
  `cat_parent_id` int(11) NOT NULL DEFAULT '0',
  `cat_title` varchar(45) NOT NULL,
  `cat_titleen` varchar(45) DEFAULT NULL,
  `cat_titlefr` varchar(45) DEFAULT NULL,
  `cat_order` int(11) NOT NULL DEFAULT '1',
  `cat_enable` tinyint(1) NOT NULL DEFAULT '1',
  PRIMARY KEY (`cat_id`)
) ENGINE=InnoDB  DEFAULT CHARSET=utf8 AUTO_INCREMENT=16 ;

--
-- Dumping data for table `dos_module_supplier_cat`
--

INSERT INTO `dos_module_supplier_cat` (`cat_id`, `cat_parent_id`, `cat_title`, `cat_titleen`, `cat_titlefr`, `cat_order`, `cat_enable`) VALUES
(1, 0, 'Marketing Research', '', '', 15, 1),
(2, 0, 'Marketing ATL', '', '', 14, 1),
(3, 0, 'Marketing BTL', '', '', 13, 1),
(4, 0, 'Media, PR, Event', '', '', 12, 1),
(5, 0, 'Digital Marketing', '', '', 11, 1),
(6, 0, 'Địa Điểm, Giấy Phép', '', '', 10, 1),
(7, 0, 'MC, PG, Model, Expert', '', '', 9, 1),
(8, 0, 'Đồng Phục Quảng Cáo', '', '', 4, 1),
(9, 0, 'In Ấn Quảng Cáo', '', '', 8, 1),
(10, 0, 'Booth, Sân Khấu', '', '', 6, 1),
(11, 0, 'Vận Chuyển, Thuê Xe', '', '', 1, 1),
(12, 0, 'Vật Tư Quảng Cáo', '', '', 2, 1),
(13, 0, 'Âm Thanh Ánh Sáng, IT', '', '', 3, 1),
(14, 0, 'Dù, Cổng Hơi, Mascot', '', '', 5, 1),
(15, 0, 'Quà Tặng Quảng Cáo', '', '', 7, 1);

-- --------------------------------------------------------

--
-- Table structure for table `dos_module_support`
--

CREATE TABLE IF NOT EXISTS `dos_module_support` (
  `support_id` int(11) NOT NULL AUTO_INCREMENT,
  `support_name` varchar(45) DEFAULT NULL,
  `support_phone` varchar(45) DEFAULT NULL,
  `support_value` varchar(45) NOT NULL,
  `support_order` smallint(6) NOT NULL DEFAULT '1',
  `support_type` varchar(45) NOT NULL DEFAULT 'yahoo',
  `support_part` tinyint(1) NOT NULL DEFAULT '0',
  PRIMARY KEY (`support_id`)
) ENGINE=InnoDB  DEFAULT CHARSET=utf8 AUTO_INCREMENT=50 ;

--
-- Dumping data for table `dos_module_support`
--

INSERT INTO `dos_module_support` (`support_id`, `support_name`, `support_phone`, `support_value`, `support_order`, `support_type`, `support_part`) VALUES
(48, 'Marketing', '0908 340 939', 'pmtienpos', 1, 'yahoo', 1),
(49, 'Kỷ Thuật', '0929 001 001', 'thanhansoft', 1, 'yahoo', 1);

-- --------------------------------------------------------

--
-- Table structure for table `dos_module_techniques`
--

CREATE TABLE IF NOT EXISTS `dos_module_techniques` (
  `record_id` int(11) NOT NULL AUTO_INCREMENT,
  `pic_thumb` varchar(45) DEFAULT NULL,
  `title` varchar(100) NOT NULL,
  `titleen` varchar(100) DEFAULT NULL,
  `titlefr` varchar(100) DEFAULT NULL,
  `preview` text NOT NULL,
  `previewen` text,
  `previewfr` text,
  `content` text NOT NULL,
  `contenten` text,
  `contentfr` text,
  `author` varchar(45) DEFAULT NULL,
  `hits` int(11) NOT NULL DEFAULT '1',
  `postdate` timestamp NULL DEFAULT CURRENT_TIMESTAMP,
  `record_order` int(11) NOT NULL DEFAULT '1',
  `record_type` tinyint(1) NOT NULL DEFAULT '0',
  `extra_field1` varchar(45) DEFAULT NULL,
  `extra_field2` varchar(45) DEFAULT NULL,
  `enable` tinyint(1) NOT NULL DEFAULT '1',
  `dos_module_item_cat_cat_id` int(11) NOT NULL,
  PRIMARY KEY (`record_id`),
  KEY `fk_dos_module_studies_dos_module_studies_cat` (`dos_module_item_cat_cat_id`)
) ENGINE=InnoDB  DEFAULT CHARSET=utf8 AUTO_INCREMENT=4 ;

--
-- Dumping data for table `dos_module_techniques`
--

INSERT INTO `dos_module_techniques` (`record_id`, `pic_thumb`, `title`, `titleen`, `titlefr`, `preview`, `previewen`, `previewfr`, `content`, `contenten`, `contentfr`, `author`, `hits`, `postdate`, `record_order`, `record_type`, `extra_field1`, `extra_field2`, `enable`, `dos_module_item_cat_cat_id`) VALUES
(1, 'hinh-nho.jpg', 'Cách âm -1111', '', '', '&lt;p&gt;\r\n	Khong nghe thay gi het&lt;/p&gt;\r\n', '', '', '&lt;p&gt;\r\n	Khong nghe thay gi hetKhong nghe thay gi hetKhong nghe thay gi hetKhong nghe thay gi hetKhong nghe thay gi hetKhong nghe thay gi hetKhong nghe thay gi hetKhong nghe thay gi hetKhong nghe thay gi hetKhong nghe thay gi hetKhong nghe thay gi hetKhong nghe thay gi hetKhong nghe thay gi hetKhong nghe thay gi hetKhong nghe thay gi hetKhong nghe thay gi hetKhong nghe thay gi hetKhong nghe thay gi hetKhong nghe thay gi hetKhong nghe thay gi hetKhong nghe thay gi hetKhong nghe thay gi hetKhong nghe thay gi het&lt;/p&gt;\r\n', '', '', NULL, 1, '2011-12-04 17:48:26', 1, 0, NULL, NULL, 1, 3),
(2, 'moc-khoa-hoi-00021.jpg', 'Giới thiệu sản phẩm lần 2', '', '', '&lt;p&gt;\r\n	Giới thiệu sản phẩm lần 2Giới thiệu sản phẩm lần 2&lt;/p&gt;\r\n&lt;p&gt;\r\n	Giới thiệu sản phẩm lần 2&lt;/p&gt;\r\n', '', '', '&lt;p&gt;\r\n	Giới thiệu sản phẩm lần 2Giới thiệu sản phẩm lần 2Giới thiệu sản phẩm lần 2&lt;/p&gt;\r\n&lt;p&gt;\r\n	&lt;strong&gt;Giới thiệu sản phẩm lần 2Giới thiệu sản phẩm lần 2Giới thiệu sản phẩm lần 2&lt;/strong&gt;&lt;/p&gt;\r\n&lt;p&gt;\r\n	&lt;strong&gt;Giới thiệu sản phẩm lần 2Giới thiệu sản phẩm lần 2&lt;/strong&gt;&lt;/p&gt;\r\n&lt;p&gt;\r\n	&lt;strong&gt;Giới thiệu sản phẩm lần 2Giới thiệu sản phẩm lần 2&lt;/strong&gt;&lt;/p&gt;\r\n&lt;p&gt;\r\n	Giới thiệu sản phẩm lần 2&lt;/p&gt;\r\n', '', '', NULL, 1, '2011-12-04 19:56:41', 1, 0, NULL, NULL, 1, 3),
(3, NULL, 'Giới thiệu sản phẩm lần 3', '', '', '&lt;p&gt;\r\n	ghgfhghfgh&lt;/p&gt;\r\n', '', '', '&lt;p&gt;\r\n	hgfjkhg;kdsfhg;dkshgk&lt;/p&gt;\r\n', '', '', NULL, 1, '2011-12-06 01:34:33', 1, 0, NULL, NULL, 1, 3);

-- --------------------------------------------------------

--
-- Table structure for table `dos_module_techniques_cat`
--

CREATE TABLE IF NOT EXISTS `dos_module_techniques_cat` (
  `cat_id` int(11) NOT NULL AUTO_INCREMENT,
  `cat_parent_id` int(11) NOT NULL DEFAULT '0',
  `cat_title` varchar(45) NOT NULL,
  `cat_titleen` varchar(45) DEFAULT NULL,
  `cat_titlefr` varchar(45) DEFAULT NULL,
  `cat_order` int(11) NOT NULL DEFAULT '1',
  `cat_enable` tinyint(1) NOT NULL DEFAULT '1',
  PRIMARY KEY (`cat_id`)
) ENGINE=InnoDB  DEFAULT CHARSET=utf8 AUTO_INCREMENT=4 ;

--
-- Dumping data for table `dos_module_techniques_cat`
--

INSERT INTO `dos_module_techniques_cat` (`cat_id`, `cat_parent_id`, `cat_title`, `cat_titleen`, `cat_titlefr`, `cat_order`, `cat_enable`) VALUES
(1, 0, 'Ứng dụng kinh tế', '', '', 1, 1),
(2, 0, 'Ứng dụng cách  nhiệt', '', '', 2, 1),
(3, 0, 'Ứng dụng cách  âm', '', '', 3, 1);

-- --------------------------------------------------------

--
-- Table structure for table `dos_module_techniques_comments`
--

CREATE TABLE IF NOT EXISTS `dos_module_techniques_comments` (
  `comment_id` int(11) NOT NULL AUTO_INCREMENT,
  `comment_title` varchar(50) NOT NULL,
  `comment_content` varchar(1000) NOT NULL,
  `comment_enable` tinyint(1) DEFAULT '1',
  `comment_date` timestamp NOT NULL DEFAULT CURRENT_TIMESTAMP,
  `dos_sys_users_username` varchar(45) NOT NULL,
  `dos_module_item_record_id` int(11) NOT NULL,
  PRIMARY KEY (`comment_id`),
  KEY `fk_dos_module_studies_comments_dos_sys_users` (`dos_sys_users_username`),
  KEY `fk_dos_module_studies_comments_dos_module_studies1` (`dos_module_item_record_id`)
) ENGINE=InnoDB  DEFAULT CHARSET=utf8 AUTO_INCREMENT=7 ;

--
-- Dumping data for table `dos_module_techniques_comments`
--

INSERT INTO `dos_module_techniques_comments` (`comment_id`, `comment_title`, `comment_content`, `comment_enable`, `comment_date`, `dos_sys_users_username`, `dos_module_item_record_id`) VALUES
(1, 'fgdggfdg', 'gfdgdsgdsfgdsfg', 1, '2011-12-04 17:55:32', 'grouplaptrinh', 1),
(2, 'Hay quá', ' &lt;div class=&quot;bd-bt-boxright&quot;&gt;&lt;/div&gt; &lt;div class=&quot;bd-bt-boxright&quot;&gt;&lt;/div&gt; &lt;div class=&quot;bd-bt-boxright&quot;&gt;&lt;/div&gt;', 1, '2011-12-04 18:00:43', 'grouplaptrinh', 1),
(3, 'fgdggfdg', ' &lt;div class=&quot;bd-bt-boxright&quot;&gt;&lt;/div&gt; &lt;div class=&quot;bd-bt-boxright&quot;&gt;&lt;/div&gt; &lt;div class=&quot;bd-bt-boxright&quot;&gt;&lt;/div&gt;', 1, '2011-12-04 18:03:21', 'grouplaptrinh', 1),
(4, 'Hay quá', 'Giới thiệu sản phẩm lần 2Giới thiệu sản phẩm lần 2', 1, '2011-12-04 19:57:23', 'grouplaptrinh', 2),
(5, 'Làm sai rồi', 'Kiểm tra lại đi ', 1, '2011-12-05 07:42:20', 'grouplaptrinh', 2),
(6, 'quảng cáo', 'Ứng dụng VLXD nhẹ » Ứng dụng cách âmỨng dụng VLXD nhẹ » Ứng dụng cách âmỨng dụng VLXD nhẹ » Ứng dụng cách âm', 0, '2011-12-06 01:38:45', 'grouplaptrinh', 3);

-- --------------------------------------------------------

--
-- Table structure for table `dos_module_termsofuse`
--

CREATE TABLE IF NOT EXISTS `dos_module_termsofuse` (
  `record_id` int(11) NOT NULL AUTO_INCREMENT,
  `title` varchar(45) DEFAULT NULL,
  `titleen` varchar(45) DEFAULT NULL,
  `titlefr` varchar(45) DEFAULT NULL,
  `content` text,
  `contenten` text,
  `contentfr` text,
  `hits` int(11) DEFAULT '1',
  `posted_date` timestamp NULL DEFAULT CURRENT_TIMESTAMP,
  `record_order` int(11) DEFAULT '1',
  `extra_field1` varchar(45) DEFAULT NULL,
  `extra_field2` varchar(45) DEFAULT NULL,
  `hot` tinyint(1) NOT NULL DEFAULT '0',
  `enable` tinyint(1) DEFAULT '1',
  PRIMARY KEY (`record_id`)
) ENGINE=InnoDB  DEFAULT CHARSET=utf8 AUTO_INCREMENT=31 ;

--
-- Dumping data for table `dos_module_termsofuse`
--

INSERT INTO `dos_module_termsofuse` (`record_id`, `title`, `titleen`, `titlefr`, `content`, `contenten`, `contentfr`, `hits`, `posted_date`, `record_order`, `extra_field1`, `extra_field2`, `hot`, `enable`) VALUES
(30, 'Chia sẻ để thành công', '', '', '&lt;p&gt;\n	&lt;span style=&quot;font-size:16px;&quot;&gt;&lt;strong&gt;Điều Khoản sử dụng&lt;/strong&gt;&lt;/span&gt;&lt;/p&gt;\n&lt;p style=&quot;text-align:justify;&quot;&gt;\n	&lt;br /&gt;&lt;span style=&quot;font-size:12px;&quot;&gt;Xin hãy đọc kỷ các Điều Khoản Sử Dụng này trước khi truy nhập và sử dụng website thông tin SieuthiPOSM.com, Nơi dành riêng cho những ai quan tâm tới P.O.S.M(Point Of Sales Material) trong các chiến dịch Quảng Cáo.&lt;/span&gt;&lt;/p&gt;\n&lt;p style=&quot;text-align:justify;&quot;&gt;\n	&lt;br /&gt;&lt;span style=&quot;font-size:12px;&quot;&gt;Việc truy nhập và sử dụng Website: SieuthiPOSM.com sẽ mặc nhiên xác lập việc chấp nhận và đồng ý bị ràng buộc bởi các Điều Khoản Sử dụng này, điều này xác lập một thỏa thuận giữa bạn và ban quản trị của website về sử dụng thông tin, các dịch vụ (nếu có) có trên Website này, tùy từng thời điểm.&lt;/span&gt;&lt;/p&gt;\n&lt;p&gt;\n	&lt;br /&gt;&lt;span style=&quot;font-size:16px;&quot;&gt;&lt;strong&gt;Nguyên tắc hoạt động của SieuthiPOSM.com&lt;/strong&gt;&lt;/span&gt;&lt;/p&gt;\n&lt;p style=&quot;text-align:justify;&quot;&gt;\n	&lt;br /&gt;&lt;span style=&quot;font-size:12px;&quot;&gt;SieuthiPOSM.com được xây dựng và hoạt động dựa trên sự phối hợp của những chuyên viên đang làm việc trong các công ty chuyên cung cấp các thiết bị, vật tư, nguồn lực cho các chiến dịch Quảng Cáo, những anh em trong lỉnh vực Marketing BTL, Digital Marketing, nhằm chia sẻ những kinh nghiệm thực hiện dự án, trong đó phần phân tích về POSM được tập trung và chuyên sâu hơn.&lt;/span&gt;&lt;/p&gt;\n&lt;p style=&quot;text-align:justify;&quot;&gt;\n	&lt;br /&gt;&lt;span style=&quot;font-size:12px;&quot;&gt;Một số chuyên mục bạn cần phải đăng ký thành viên để truy cập, việc đăng ký hoàn toàn miễn phí. Nếu bạn là thành viên của SieuthiPOSM.com, bạn có thể gởi bài, truy xuất thông tin trong khuôn khổ được cấp phép. Chúng tôi bảo lưu mọi bản quyền thay đổi, xóa, xuất bản nội dung của bạn đưa lên mà không cần phải thông báo trước.&lt;/span&gt;&lt;/p&gt;\n&lt;p style=&quot;text-align:justify;&quot;&gt;\n	&lt;br /&gt;&lt;span style=&quot;font-size:16px;&quot;&gt;&lt;strong&gt;Quy định với người sử dụng:&lt;/strong&gt;&lt;/span&gt;&lt;/p&gt;\n&lt;p style=&quot;text-align:justify;&quot;&gt;\n	&lt;br /&gt;&lt;span style=&quot;font-size:12px;&quot;&gt;Bạn phải nhận thức đầy đủ các điều cấm sau:&lt;/span&gt;&lt;/p&gt;\n&lt;p style=&quot;text-align:justify;&quot;&gt;\n	 &lt;/p&gt;\n&lt;ul&gt;&lt;li style=&quot;text-align:justify;&quot;&gt;\n		Chống Nhà nước Cộng Hoà Xã Hội Chủ Nghĩa Việt Nam, phá hoại khối đoàn kết toàn dân, tuyên truyền, xuyên tạc, kích động và cung cấp thông tin chống phá Nhà nước Việt Nam;&lt;/li&gt;\n	&lt;li style=&quot;text-align:justify;&quot;&gt;\n		&lt;span style=&quot;font-size:12px;&quot;&gt;Kích động bạo lực, tuyên truyền chiến tranh xâm lược, gây hận thù giữa các dân tộc và nhân dân các nước, kích động dâm ô, đồi trụy, tội ác, tệ nạn xã hội, mê tín dị đoan, phá hoại thuần phong mỹ tục của dân tộc;&lt;/span&gt;&lt;/li&gt;\n	&lt;li style=&quot;text-align:justify;&quot;&gt;\n		&lt;span style=&quot;font-size:12px;&quot;&gt;Xuyên tạc, vu khống, xúc phạm uy tín của tổ chức, danh dự, nhân phẩm, uy tín của công dân;&lt;/span&gt;&lt;/li&gt;\n	&lt;li style=&quot;text-align:justify;&quot;&gt;\n		&lt;span style=&quot;font-size:12px;&quot;&gt;Quảng cáo, tuyên truyền hàng hoá, dịch vụ thuộc danh mục cấm đã được pháp luật quy định;&lt;/span&gt;&lt;/li&gt;\n	&lt;li style=&quot;text-align:justify;&quot;&gt;\n		&lt;span style=&quot;font-size:12px;&quot;&gt;Đề cập đến các vấn đề về dân tộc, chính trị và tôn giáo;&lt;/span&gt;&lt;/li&gt;\n	&lt;li style=&quot;text-align:justify;&quot;&gt;\n		&lt;span style=&quot;font-size:12px;&quot;&gt;Sử dụng các từ ngữ vô văn hóa vi phạm truyền thống đạo đức của Việt Nam;&lt;/span&gt;&lt;/li&gt;\n	&lt;li style=&quot;text-align:justify;&quot;&gt;\n		&lt;span style=&quot;font-size:12px;&quot;&gt;Thay đổi, làm hư hại hoặc xoá nội dung bất kỳ hoặc các phương tiện khác mà không phải là nội dung thuộc sở hữu của bạn, hoặc gây trở ngại cho những người khác truy cập tới Website: SieuthiPOSM.com;&lt;/span&gt;&lt;/li&gt;\n	&lt;li style=&quot;text-align:justify;&quot;&gt;\n		&lt;span style=&quot;font-size:12px;&quot;&gt;Các điều cấm khác theo quy định của pháp luật.&lt;/span&gt;&lt;/li&gt;\n&lt;/ul&gt;&lt;p&gt;\n	&lt;br /&gt;&lt;span style=&quot;font-size:16px;&quot;&gt;&lt;strong&gt;Vấn đề khác:&lt;/strong&gt;&lt;/span&gt;&lt;/p&gt;\n&lt;p style=&quot;text-align:justify;&quot;&gt;\n	 &lt;/p&gt;\n&lt;ul&gt;&lt;li style=&quot;text-align:justify;&quot;&gt;\n		&lt;span style=&quot;font-size:12px;&quot;&gt;Các bài viết có liên kết ngoài SieuthiPOSM.com, chúng tôi không chịu trách nhiệm với nội dung của website được liên kết&lt;/span&gt;&lt;/li&gt;\n	&lt;li style=&quot;text-align:justify;&quot;&gt;\n		&lt;span style=&quot;font-size:12px;&quot;&gt;Chúng tôi có thể thay đổi nội dung của Bản &quot;Điều khoản sử dụng&quot; này mà không cần thông báo trước.&lt;/span&gt;&lt;/li&gt;\n	&lt;li style=&quot;text-align:justify;&quot;&gt;\n		&lt;span style=&quot;font-size:12px;&quot;&gt;Nếu bạn có bất kỳ câu hỏi nào, đừng ngần ngại, hảy liên lạc với chúng tôi qua:&lt;/span&gt;&lt;/li&gt;\n&lt;/ul&gt;&lt;p&gt;\n	 &lt;/p&gt;\n&lt;p&gt;\n	&lt;span style=&quot;font-size:16px;&quot;&gt;&lt;strong&gt;Email. Minhtien@SieuthiPOSM.com&lt;br /&gt;\n	Bus. (84-8)38.410.434&lt;/strong&gt;&lt;/span&gt;&lt;/p&gt;\n&lt;p&gt;\n	&lt;span style=&quot;font-size:16px;&quot;&gt;&lt;strong&gt;Cell Phone. 0908 340 939.Phạm Minh Tiền(Mr)&lt;/strong&gt;&lt;/span&gt;&lt;/p&gt;\n', '', '', 99, '2011-09-21 02:34:40', 2, '', '', 0, 1);

-- --------------------------------------------------------

--
-- Table structure for table `dos_module_video`
--

CREATE TABLE IF NOT EXISTS `dos_module_video` (
  `record_id` int(11) NOT NULL AUTO_INCREMENT,
  `postdate` timestamp NOT NULL DEFAULT CURRENT_TIMESTAMP,
  `title` varchar(45) NOT NULL,
  `titleen` varchar(45) DEFAULT NULL,
  `titlefr` varchar(45) DEFAULT NULL,
  `pic_full` varchar(100) DEFAULT NULL,
  `url` varchar(100) NOT NULL,
  `record_order` int(11) DEFAULT '1',
  `hits` int(11) DEFAULT '1',
  `extra_field1` varchar(45) DEFAULT NULL,
  `extra_field2` varchar(45) DEFAULT NULL,
  `hot` tinyint(1) NOT NULL DEFAULT '0',
  `enable` tinyint(1) NOT NULL DEFAULT '1',
  `dos_module_video_cat_cat_id` int(11) NOT NULL,
  PRIMARY KEY (`record_id`),
  KEY `fk_dos_module_video_dos_module_video_cat` (`dos_module_video_cat_cat_id`)
) ENGINE=InnoDB  DEFAULT CHARSET=utf8 AUTO_INCREMENT=3 ;

--
-- Dumping data for table `dos_module_video`
--

INSERT INTO `dos_module_video` (`record_id`, `postdate`, `title`, `titleen`, `titlefr`, `pic_full`, `url`, `record_order`, `hits`, `extra_field1`, `extra_field2`, `hot`, `enable`, `dos_module_video_cat_cat_id`) VALUES
(2, '2011-09-08 15:16:23', 'Video file', '', '', NULL, 'http://www.youtube.com/watch?v=0Y9qP8xz4lE', 1, 1, NULL, NULL, 0, 1, 5);

-- --------------------------------------------------------

--
-- Table structure for table `dos_module_video_cat`
--

CREATE TABLE IF NOT EXISTS `dos_module_video_cat` (
  `cat_id` int(11) NOT NULL AUTO_INCREMENT,
  `cat_parent_id` int(11) DEFAULT '0',
  `pic_thumb` varchar(45) DEFAULT NULL,
  `cat_title` varchar(45) NOT NULL,
  `cat_titleen` varchar(45) DEFAULT NULL,
  `cat_titlefr` varchar(45) DEFAULT NULL,
  `cat_order` varchar(45) DEFAULT '1',
  `cat_enable` tinyint(1) NOT NULL DEFAULT '1',
  PRIMARY KEY (`cat_id`)
) ENGINE=InnoDB  DEFAULT CHARSET=utf8 AUTO_INCREMENT=6 ;

--
-- Dumping data for table `dos_module_video_cat`
--

INSERT INTO `dos_module_video_cat` (`cat_id`, `cat_parent_id`, `pic_thumb`, `cat_title`, `cat_titleen`, `cat_titlefr`, `cat_order`, `cat_enable`) VALUES
(4, 0, NULL, 'Video', NULL, NULL, '1', 1),
(5, 4, NULL, 'Sub video', NULL, NULL, '2', 1);

-- --------------------------------------------------------

--
-- Table structure for table `dos_module_wedding`
--

CREATE TABLE IF NOT EXISTS `dos_module_wedding` (
  `record_id` int(11) NOT NULL AUTO_INCREMENT,
  `title` varchar(45) DEFAULT NULL,
  `titleen` varchar(45) DEFAULT NULL,
  `titlefr` varchar(45) DEFAULT NULL,
  `content` text,
  `contenten` text,
  `contentfr` text,
  `hits` int(11) DEFAULT '1',
  `posted_date` timestamp NULL DEFAULT CURRENT_TIMESTAMP,
  `record_order` int(11) DEFAULT '1',
  `extra_field1` varchar(45) DEFAULT NULL,
  `extra_field2` varchar(45) DEFAULT NULL,
  `hot` tinyint(1) NOT NULL DEFAULT '0',
  `enable` tinyint(1) DEFAULT '1',
  PRIMARY KEY (`record_id`)
) ENGINE=InnoDB  DEFAULT CHARSET=utf8 AUTO_INCREMENT=7 ;

--
-- Dumping data for table `dos_module_wedding`
--

INSERT INTO `dos_module_wedding` (`record_id`, `title`, `titleen`, `titlefr`, `content`, `contenten`, `contentfr`, `hits`, `posted_date`, `record_order`, `extra_field1`, `extra_field2`, `hot`, `enable`) VALUES
(6, 'test', '', '', '&lt;p&gt;\r\n	testing&lt;/p&gt;\r\n', '', '', 68, '2011-09-09 04:00:09', 1, '', '', 0, 1);

-- --------------------------------------------------------

--
-- Table structure for table `dos_sys_configs`
--

CREATE TABLE IF NOT EXISTS `dos_sys_configs` (
  `config_name` varchar(45) NOT NULL,
  `config_value` varchar(45) NOT NULL,
  `config_choices` varchar(45) DEFAULT NULL,
  PRIMARY KEY (`config_name`)
) ENGINE=InnoDB DEFAULT CHARSET=utf8;

--
-- Dumping data for table `dos_sys_configs`
--

INSERT INTO `dos_sys_configs` (`config_name`, `config_value`, `config_choices`) VALUES
('adv_height', '192', 'Quảng cáo - chiều cao'),
('adv_width', '192', 'Quảng cáo - chiều ngang'),
('banner_height', '190', 'Banner - Chiều cao'),
('banner_width', '566', 'Banner - Chiều ngang'),
('logo_height', '159', 'Logo - Chiều cao'),
('logo_width', '950', 'Logo - Chiều ngang'),
('marketing_height_thumb', '90', ''),
('marketing_width_thumb', '143', ''),
('materials_height_thumb', '90', ''),
('materials_width_thumb', '145', ''),
('news_height_thumb', '248', ''),
('news_width_thumb', '330', ''),
('productions_height_thumb', '90', ''),
('productions_width_thumb', '145', ''),
('studies_height_thumb', '98', ''),
('studies_width_thumb', '158', ''),
('supplier_height', '500', ''),
('supplier_height_thumb', '100', ''),
('supplier_width', '750', ''),
('supplier_width_thumb', '270', ''),
('sys_key', 'OE3GsQrrfmGbhzyh0MV/LC1tR3EaISrnIYVjq9+w2ZE=', ''),
('sys_num_pagerange', '5', ''),
('sys_num_paging', '7', 'Phân trang'),
('sys_size_upload', '5000', 'Kích cỡ upload'),
('techniques_height_thumb', '90', ''),
('techniques_width_thumb', '145', '');

-- --------------------------------------------------------

--
-- Table structure for table `dos_sys_functions`
--

CREATE TABLE IF NOT EXISTS `dos_sys_functions` (
  `function_id` smallint(6) NOT NULL AUTO_INCREMENT,
  `model_name` varchar(20) NOT NULL,
  `model_load` varchar(45) DEFAULT NULL,
  `action` varchar(45) DEFAULT NULL,
  `varname` varchar(45) DEFAULT NULL,
  `function_load` varchar(45) DEFAULT NULL,
  PRIMARY KEY (`function_id`),
  KEY `fk_dos_sys_functions_dos_sys_modules` (`model_name`)
) ENGINE=InnoDB  DEFAULT CHARSET=utf8 AUTO_INCREMENT=10350 ;

--
-- Dumping data for table `dos_sys_functions`
--

INSERT INTO `dos_sys_functions` (`function_id`, `model_name`, `model_load`, `action`, `varname`, `function_load`) VALUES
(10319, 'techniques', 'Techniques_Model_TechniquesCat', 'index', 'menu_cat_techniques', 'getListmenu'),
(10320, 'techniques', 'Techniques_Model_TechniquesCat', 'cat', 'menu_cat_techniques', 'getListmenu'),
(10321, 'techniques', 'Techniques_Model_TechniquesCat', 'view', 'menu_cat_techniques', 'getListmenu'),
(10322, 'about', 'About_Model_About', 'view', 'menu_about', 'getListmenu'),
(10323, 'account', 'Webadmin_Model_Account', 'add', 'menu_account', 'getListmenu'),
(10324, 'account', 'Webadmin_Model_Account', 'changepass', 'menu_account', 'getListmenu'),
(10325, 'account', 'Webadmin_Model_Account', 'index', 'menu_account', 'getListmenu'),
(10326, 'default', 'Materials_Model_MaterialsCat', 'index', 'menu_cat_materials', 'getListmenu'),
(10327, 'default', 'News_Model_News', 'index', 'news_hot_first', 'listNewsHotFirst'),
(10328, 'default', 'News_Model_News', 'index', 'news_hots', 'listNewsHots'),
(10329, 'materials', 'Materials_Model_MaterialsCat', 'cat', 'menu_cat_materials', 'getListmenu'),
(10330, 'materials', 'Materials_Model_MaterialsCat', 'index', 'menu_cat_materials', 'getListmenu'),
(10331, 'materials', 'Materials_Model_MaterialsCat', 'view', 'menu_cat_materials', 'getListmenu'),
(10332, 'news', 'News_Model_NewsCat', 'cat', 'menu_cat_news', 'getListmenu'),
(10333, 'news', 'News_Model_NewsCat', 'index', 'menu_cat_news', 'getListmenu'),
(10334, 'news', 'News_Model_NewsCat', 'view', 'menu_cat_news', 'getListmenu'),
(10335, 'productions', 'Productions_Model_ProductionsCat', 'cat', 'menu_cat_productions', 'getListmenu'),
(10336, 'productions', 'Productions_Model_ProductionsCat', 'index', 'menu_cat_productions', 'getListmenu'),
(10337, 'productions', 'Productions_Model_ProductionsCat', 'view', 'menu_cat_productions', 'getListmenu'),
(10338, 'setup', 'Webadmin_Model_Setup', 'config', 'menu_setup', 'getListmenu'),
(10339, 'setup', 'Webadmin_Model_Setup', 'function', 'menu_setup', 'getListmenu'),
(10340, 'setup', 'Webadmin_Model_Setup', 'index', 'menu_setup', 'getListmenu'),
(10341, 'setup', 'Webadmin_Model_Setup', 'lang', 'menu_setup', 'getListmenu'),
(10342, 'setup', 'Webadmin_Model_Setup', 'menu', 'menu_setup', 'getListmenu'),
(10343, 'setup', 'Webadmin_Model_Setup', 'title', 'menu_setup', 'getListmenu'),
(10344, 'setup', 'Webadmin_Model_Setup', 'web', 'menu_setup', 'getListmenu'),
(10345, 'tool', 'Webadmin_Model_Tool', 'analytics', 'menu_tool', 'getListmenu'),
(10346, 'tool', 'Webadmin_Model_Tool', 'index', 'menu_tool', 'getListmenu'),
(10347, 'tool', 'Webadmin_Model_Tool', 'seo', 'menu_tool', 'getListmenu'),
(10348, 'video', 'Video_Model_VideoCat', 'cat', 'list_cat_video', 'getListmenu'),
(10349, 'video', 'Video_Model_VideoCat', 'index', 'list_cat_video', 'getListmenu');

-- --------------------------------------------------------

--
-- Table structure for table `dos_sys_groups`
--

CREATE TABLE IF NOT EXISTS `dos_sys_groups` (
  `group_name` varchar(45) NOT NULL,
  PRIMARY KEY (`group_name`)
) ENGINE=InnoDB DEFAULT CHARSET=utf8;

--
-- Dumping data for table `dos_sys_groups`
--

INSERT INTO `dos_sys_groups` (`group_name`) VALUES
('administrator'),
('member');

-- --------------------------------------------------------

--
-- Table structure for table `dos_sys_groups_has_dos_sys_models`
--

CREATE TABLE IF NOT EXISTS `dos_sys_groups_has_dos_sys_models` (
  `dos_sys_groups_group_name` varchar(45) NOT NULL,
  `dos_sys_models_model_id` varchar(45) NOT NULL,
  `permission` varchar(45) NOT NULL,
  PRIMARY KEY (`dos_sys_groups_group_name`,`dos_sys_models_model_id`),
  KEY `fk_dos_sys_groups_has_dos_sys_models_dos_sys_models` (`dos_sys_models_model_id`),
  KEY `fk_dos_sys_groups_has_dos_sys_models_dos_sys_groups` (`dos_sys_groups_group_name`)
) ENGINE=InnoDB DEFAULT CHARSET=utf8;

--
-- Dumping data for table `dos_sys_groups_has_dos_sys_models`
--

INSERT INTO `dos_sys_groups_has_dos_sys_models` (`dos_sys_groups_group_name`, `dos_sys_models_model_id`, `permission`) VALUES
('member', 'about', 'allow'),
('member', 'adv', 'allow'),
('member', 'banner', 'allow'),
('member', 'contact', 'allow'),
('member', 'materials', 'allow'),
('member', 'news', 'allow'),
('member', 'productions', 'allow'),
('member', 'support', 'allow'),
('member', 'techniques', 'allow');

-- --------------------------------------------------------

--
-- Table structure for table `dos_sys_langs`
--

CREATE TABLE IF NOT EXISTS `dos_sys_langs` (
  `lang_name` varchar(30) NOT NULL,
  `lang` varchar(200) DEFAULT NULL,
  `langen` varchar(200) DEFAULT NULL,
  `langfr` varchar(200) DEFAULT NULL,
  PRIMARY KEY (`lang_name`)
) ENGINE=InnoDB DEFAULT CHARSET=utf8;

--
-- Dumping data for table `dos_sys_langs`
--

INSERT INTO `dos_sys_langs` (`lang_name`, `lang`, `langen`, `langfr`) VALUES
('about', 'Giới thiệu', '', ''),
('about_extra1', 'Thông tin phụ 1', '', ''),
('about_extra2', 'Thông tin phụ 2', '', ''),
('action', 'Thao tác', '', ''),
('adv', 'Quảng cáo', '', ''),
('adv_description', 'Mô tả quảng cáo', '', ''),
('adv_end_date', 'Ngày kết thúc', '', ''),
('adv_position', 'Vị trí', '', ''),
('adv_position_center', 'Ở giữa', '', ''),
('adv_position_left', 'Bên trái', '', ''),
('adv_position_right', 'Bên phải', '', ''),
('adv_position_right_bottom', 'Bên phải - Dưới', '', ''),
('adv_position_right_top', 'Bên phải - Trên', '', ''),
('adv_start_date', 'Ngày bắt đầu', '', ''),
('adv_type', 'Loại quảng cáo', '', ''),
('adv_type_current', 'Trang hiện tại', '', ''),
('adv_type_new', 'Trang mới', '', ''),
('adv_url', 'Liên kết', '', ''),
('banner', 'Logo &amp;amp; Banner', '', ''),
('banner_link', 'Liên kết', '', ''),
('banner_position', 'Vị trí', '', ''),
('catparent', 'Phân loại cha', '', ''),
('confirmdel', 'Bạn có chắc chắn xóa', '', ''),
('contact', 'Liên hệ', '', ''),
('copyright', 'Copyright © 2011 by Sieuthiposm.com. All rights reserved', '', ''),
('createdate', 'Ngày tạo', '', ''),
('default', 'Trang chủ', '', ''),
('developed', 'Developed by dos.vn', '', ''),
('end', 'Cuối cùng', '', ''),
('entry', 'Bài viết', '', ''),
('hit', 'Lần xem', '', ''),
('home', 'Trang chủ', '', ''),
('inbox', 'Hộp thư', '', ''),
('interests', 'Quyền lợi thành viên', '', ''),
('login', 'Đăng nhập', '', ''),
('logout', 'Thoát', '', ''),
('materials', 'Ứng dụng VLXD nhẹ', '', ''),
('namecat', 'Tên phân loại', '', ''),
('news', 'Tin tức', '', ''),
('next', 'Tiếp', '', ''),
('norecord', 'Không tồn tại mẫu tin', '', ''),
('payment', 'Thanh toán', '', ''),
('philosophy', 'Triết lý', '', ''),
('picture_thumb', 'Hình thu nhỏ', '', ''),
('previous', 'Lùi', '', ''),
('productions', 'Công nghệ sản xuất', '', ''),
('productnum', 'Số sản phẩm', '', ''),
('register', 'Đăng ký thành viên', '', ''),
('root', 'Gốc', '', ''),
('setup', 'Cài đặt &amp;amp; cấu hình', '', ''),
('start', 'Đầu tiên', '', ''),
('status', 'Trạng thái', '', ''),
('support', 'Hỗ trợ trực tuyến', '', ''),
('sys_account', 'Tài khoản của tôi', '', ''),
('sys_active', 'Hiển thị', '', ''),
('sys_add', 'Thêm mới', '', ''),
('sys_addcat', 'Thêm phân loại', '', ''),
('sys_addpost', 'Thêm bài viết', '', ''),
('sys_addrow', 'Thêm dòng', '', ''),
('sys_cancel', 'Hủy bỏ', '', ''),
('sys_content_cmt', 'Nội dung', '', ''),
('sys_delete', 'Xóa', '', ''),
('sys_detail', 'Chi tiết', '', ''),
('sys_edit', 'Chỉnh sửa', '', ''),
('sys_editcat', 'Sửa phân loại', '', ''),
('sys_editpost', 'Sửa bài viết', '', ''),
('sys_erroraccess', 'Bạn không có quyền truy cập vì chức năng này dùng để cấu hình thông số cho web', '', ''),
('sys_func_static', 'Thống kê chức năng', '', ''),
('sys_hidden', 'Ẩn', '', ''),
('sys_hot', 'Nổi bật', '', ''),
('sys_lang', 'Cấu hình ngôn ngữ', '', ''),
('sys_menu', 'Cấu hình menu', '', ''),
('sys_nohot', 'Không nổi bật', '', ''),
('sys_order', 'Thứ tự', '', ''),
('sys_picture', 'Hình ảnh', '', ''),
('sys_preview', 'Mô tả', '', ''),
('sys_sort', 'Sắp xếp', '', ''),
('sys_title', 'Tiêu đề', '', ''),
('sys_title_cmt', 'Tiêu đề bình luận', '', ''),
('sys_tool', 'Công cụ &amp;amp; Báo cáo', '', ''),
('sys_web', 'Cấu hình website', '', ''),
('techniques', 'Kỹ thuật xây dựng', '', ''),
('time', 'Thời gian', '', ''),
('user_cmt', 'Người bình luận', '', ''),
('video', 'Video', '', ''),
('welcome_chat', 'Xin chào, tôi muốn hỏi về sản phẩm - dịch vụ của công ty bạn', '', '');

-- --------------------------------------------------------

--
-- Table structure for table `dos_sys_models`
--

CREATE TABLE IF NOT EXISTS `dos_sys_models` (
  `model_id` varchar(45) NOT NULL,
  `record_order` tinyint(4) DEFAULT NULL,
  PRIMARY KEY (`model_id`)
) ENGINE=InnoDB DEFAULT CHARSET=utf8;

--
-- Dumping data for table `dos_sys_models`
--

INSERT INTO `dos_sys_models` (`model_id`, `record_order`) VALUES
('about', 1),
('adv', 10),
('banner', 11),
('conference', 14),
('contact', 2),
('gallery', 6),
('handbook', 15),
('job', 7),
('marketing', 16),
('materials', 21),
('news', 5),
('payment', 8),
('philosophy', 2),
('product', 3),
('productions', 22),
('promotions', 13),
('services', 4),
('studies', 16),
('supplier', 17),
('support', 9),
('techniques', 23),
('termsofuse', 12),
('video', 10),
('wedding', 13);

-- --------------------------------------------------------

--
-- Table structure for table `dos_sys_modules`
--

CREATE TABLE IF NOT EXISTS `dos_sys_modules` (
  `moduleid` varchar(20) NOT NULL,
  `module` varchar(50) NOT NULL,
  `moduleen` varchar(50) NOT NULL,
  `modulefr` varchar(50) DEFAULT NULL,
  `url` varchar(100) NOT NULL,
  `target` varchar(20) DEFAULT NULL,
  `position` tinyint(4) DEFAULT '0',
  PRIMARY KEY (`moduleid`)
) ENGINE=InnoDB DEFAULT CHARSET=utf8;

--
-- Dumping data for table `dos_sys_modules`
--

INSERT INTO `dos_sys_modules` (`moduleid`, `module`, `moduleen`, `modulefr`, `url`, `target`, `position`) VALUES
('contact', 'LIÊN HỆ', '', NULL, 'contact', NULL, 6),
('default', 'TRANG CHỦ', '', '', 'default', '', 0),
('materials', 'ỨNG DỤNG VLXD NHẸ', '', '', 'materials', '', 1),
('news', 'TIN TỨC', '', '', 'news', '', 4),
('productions', 'CÔNG NGHỆ SẢN XUẤT', '', '', 'productions', '', 3),
('techniques', 'KỸ THUẬT XÂY DỰNG', '', '', 'techniques', '', 2),
('video', 'VIDEO', '', '', 'video', '', 5);

-- --------------------------------------------------------

--
-- Table structure for table `dos_sys_seos`
--

CREATE TABLE IF NOT EXISTS `dos_sys_seos` (
  `seo_name` varchar(45) NOT NULL,
  `seo_content` text NOT NULL,
  PRIMARY KEY (`seo_name`)
) ENGINE=InnoDB DEFAULT CHARSET=utf8;

--
-- Dumping data for table `dos_sys_seos`
--

INSERT INTO `dos_sys_seos` (`seo_name`, `seo_content`) VALUES
('google_analytic', '<script type="text/javascript">\r\n\r\n  var _gaq = _gaq || [];\r\n  _gaq.push([''_setAccount'', ''UA-25177991-22'']);\r\n  _gaq.push([''_trackPageview'']);\r\n\r\n  (function() {\r\n    var ga = document.createElement(''script''); ga.type = ''text/javascript''; ga.async = true;\r\n    ga.src = (''https:'' == document.location.protocol ? ''https://ssl'' : ''http://www'') + ''.google-analytics.com/ga.js'';\r\n    var s = document.getElementsByTagName(''script'')[0]; s.parentNode.insertBefore(ga, s);\r\n  })();\r\n\r\n</script>');

-- --------------------------------------------------------

--
-- Table structure for table `dos_sys_statistics`
--

CREATE TABLE IF NOT EXISTS `dos_sys_statistics` (
  `session_id` varchar(9) NOT NULL,
  `time` int(11) NOT NULL,
  PRIMARY KEY (`session_id`)
) ENGINE=InnoDB DEFAULT CHARSET=utf8;

--
-- Dumping data for table `dos_sys_statistics`
--

INSERT INTO `dos_sys_statistics` (`session_id`, `time`) VALUES
('ewfs7boli', 1323195707);

-- --------------------------------------------------------

--
-- Table structure for table `dos_sys_users`
--

CREATE TABLE IF NOT EXISTS `dos_sys_users` (
  `username` varchar(45) NOT NULL DEFAULT '',
  `create_date` timestamp NOT NULL DEFAULT CURRENT_TIMESTAMP,
  `email` varchar(45) DEFAULT NULL,
  `password` varchar(45) DEFAULT NULL,
  `full_name` varchar(150) DEFAULT NULL,
  `phone` varchar(45) NOT NULL,
  `user_group` varchar(45) NOT NULL,
  `enable` tinyint(1) DEFAULT '1',
  `dos_module_provinces_province_id` smallint(6) NOT NULL,
  PRIMARY KEY (`username`),
  KEY `fk_dos_sys_users_dos_module_provinces` (`dos_module_provinces_province_id`)
) ENGINE=InnoDB DEFAULT CHARSET=utf8;

--
-- Dumping data for table `dos_sys_users`
--

INSERT INTO `dos_sys_users` (`username`, `create_date`, `email`, `password`, `full_name`, `phone`, `user_group`, `enable`, `dos_module_provinces_province_id`) VALUES
('grouplaptrinh', '0000-00-00 00:00:00', 'info@grouplaptrinh.com', 'b7a659e0c28c88b3ee01adf805fc228f', 'GroupLapTrinh', '', 'administrator', 1, 1),
('vuonghai', '2011-12-06 02:35:17', 'info@vuonghai.com', '1ef42fbe40c94d30935de930166fdcbf', 'Vuong Hai', '0929001001', 'member', 1, 30);

-- --------------------------------------------------------

--
-- Table structure for table `dos_sys_webs`
--

CREATE TABLE IF NOT EXISTS `dos_sys_webs` (
  `web_name` varchar(45) NOT NULL,
  `web_value` varchar(250) NOT NULL,
  PRIMARY KEY (`web_name`)
) ENGINE=InnoDB DEFAULT CHARSET=utf8;

--
-- Dumping data for table `dos_sys_webs`
--

INSERT INTO `dos_sys_webs` (`web_name`, `web_value`) VALUES
('admin_email', 'info@vuonghai.com'),
('admin_name', 'Block-betongnhe.com'),
('description', 'Công trình dân dụng  - Sản xuất gạch bêtông khí chưng áp, tấm panel bêtông nhẹ và các sản phẩm v gạch bêtông nhẹ khí chưng áp AAC V-block, tấm panel bêtông nhẹ và các sản phẩm vữa xây, keo dán gạch phục vụ cho ngành xây dựng'),
('email_subject', 'Liên hệ từ website'),
('keywords', 'Công trình dân dụng, sản xuất gạch bêtông khí chưng áp, tấm panel bêtông nhẹ và các sản phẩm v gạch bêtông nhẹ khí chưng áp AAC V-block'),
('timestamp_today', '1323190800'),
('titleweb', 'Block-betongnhe.com'),
('total_visit', '14'),
('total_visit_today', '0'),
('type', '1');

--
-- Constraints for dumped tables
--

--
-- Constraints for table `dos_module_gallery`
--
ALTER TABLE `dos_module_gallery`
  ADD CONSTRAINT `fk_dos_module_gallery_dos_module_gallery_cat` FOREIGN KEY (`dos_module_gallery_cat_cat_id`) REFERENCES `dos_module_gallery_cat` (`cat_id`) ON DELETE NO ACTION ON UPDATE NO ACTION;

--
-- Constraints for table `dos_module_handbook`
--
ALTER TABLE `dos_module_handbook`
  ADD CONSTRAINT `fk_dos_module_handbook_dos_module_handbook_cat` FOREIGN KEY (`dos_module_handbook_cat_cat_id`) REFERENCES `dos_module_handbook_cat` (`cat_id`) ON DELETE NO ACTION ON UPDATE NO ACTION;

--
-- Constraints for table `dos_module_news`
--
ALTER TABLE `dos_module_news`
  ADD CONSTRAINT `fk_dos_module_news_dos_module_news_cat` FOREIGN KEY (`dos_module_news_cat_cat_id`) REFERENCES `dos_module_news_cat` (`cat_id`) ON DELETE NO ACTION ON UPDATE NO ACTION;

--
-- Constraints for table `dos_module_product`
--
ALTER TABLE `dos_module_product`
  ADD CONSTRAINT `fk_dos_module_product_dos_module_product_cat` FOREIGN KEY (`dos_module_product_cat_cat_id`) REFERENCES `dos_module_product_cat` (`cat_id`) ON DELETE NO ACTION ON UPDATE NO ACTION;

--
-- Constraints for table `dos_module_studies`
--
ALTER TABLE `dos_module_studies`
  ADD CONSTRAINT `fk_dos_module_studies_dos_module_studies_cat` FOREIGN KEY (`dos_module_studies_cat_cat_id`) REFERENCES `dos_module_studies_cat` (`cat_id`) ON DELETE NO ACTION ON UPDATE NO ACTION;

--
-- Constraints for table `dos_module_studies_comments`
--
ALTER TABLE `dos_module_studies_comments`
  ADD CONSTRAINT `fk_dos_module_studies_comments_dos_module_studies1` FOREIGN KEY (`dos_module_studies_record_id`) REFERENCES `dos_module_studies` (`record_id`) ON DELETE NO ACTION ON UPDATE NO ACTION,
  ADD CONSTRAINT `fk_dos_module_studies_comments_dos_sys_users` FOREIGN KEY (`dos_sys_users_username`) REFERENCES `dos_sys_users` (`username`) ON DELETE NO ACTION ON UPDATE NO ACTION;

--
-- Constraints for table `dos_module_video`
--
ALTER TABLE `dos_module_video`
  ADD CONSTRAINT `fk_dos_module_video_dos_module_video_cat` FOREIGN KEY (`dos_module_video_cat_cat_id`) REFERENCES `dos_module_video_cat` (`cat_id`) ON DELETE NO ACTION ON UPDATE NO ACTION;

--
-- Constraints for table `dos_sys_groups_has_dos_sys_models`
--
ALTER TABLE `dos_sys_groups_has_dos_sys_models`
  ADD CONSTRAINT `fk_dos_sys_groups_has_dos_sys_models_dos_sys_groups` FOREIGN KEY (`dos_sys_groups_group_name`) REFERENCES `dos_sys_groups` (`group_name`) ON DELETE NO ACTION ON UPDATE NO ACTION,
  ADD CONSTRAINT `fk_dos_sys_groups_has_dos_sys_models_dos_sys_models` FOREIGN KEY (`dos_sys_models_model_id`) REFERENCES `dos_sys_models` (`model_id`) ON DELETE NO ACTION ON UPDATE NO ACTION;

--
-- Constraints for table `dos_sys_users`
--
ALTER TABLE `dos_sys_users`
  ADD CONSTRAINT `fk_dos_sys_users_dos_module_provinces` FOREIGN KEY (`dos_module_provinces_province_id`) REFERENCES `dos_module_provinces` (`province_id`) ON DELETE NO ACTION ON UPDATE NO ACTION;

/*!40101 SET CHARACTER_SET_CLIENT=@OLD_CHARACTER_SET_CLIENT */;
/*!40101 SET CHARACTER_SET_RESULTS=@OLD_CHARACTER_SET_RESULTS */;
/*!40101 SET COLLATION_CONNECTION=@OLD_COLLATION_CONNECTION */;
