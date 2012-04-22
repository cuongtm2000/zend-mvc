-- phpMyAdmin SQL Dump
-- version 3.4.5
-- http://www.phpmyadmin.net
--
-- Host: localhost
-- Generation Time: Apr 22, 2012 at 06:02 PM
-- Server version: 5.5.16
-- PHP Version: 5.3.8

SET SQL_MODE="NO_AUTO_VALUE_ON_ZERO";
SET time_zone = "+00:00";


/*!40101 SET @OLD_CHARACTER_SET_CLIENT=@@CHARACTER_SET_CLIENT */;
/*!40101 SET @OLD_CHARACTER_SET_RESULTS=@@CHARACTER_SET_RESULTS */;
/*!40101 SET @OLD_COLLATION_CONNECTION=@@COLLATION_CONNECTION */;
/*!40101 SET NAMES utf8 */;

--
-- Database: `hoiit`
--

-- --------------------------------------------------------

--
-- Table structure for table `hoiit_cats`
--

CREATE TABLE IF NOT EXISTS `hoiit_cats` (
  `cat_id` tinyint(4) NOT NULL AUTO_INCREMENT,
  `cat_name` varchar(45) NOT NULL,
  `cat_sort` tinyint(2) NOT NULL,
  `parent_id` tinyint(4) NOT NULL,
  PRIMARY KEY (`cat_id`)
) ENGINE=InnoDB  DEFAULT CHARSET=utf8 AUTO_INCREMENT=49 ;

--
-- Dumping data for table `hoiit_cats`
--

INSERT INTO `hoiit_cats` (`cat_id`, `cat_name`, `cat_sort`, `parent_id`) VALUES
(1, 'Information office', 1, 0),
(2, 'Programming', 2, 0),
(3, 'Python', 11, 2),
(4, 'Database', 4, 0),
(5, 'Web template', 5, 0),
(6, 'Word', 1, 1),
(7, 'Excel', 2, 1),
(8, 'Power point', 3, 1),
(9, 'Access', 4, 1),
(10, 'Php', 1, 2),
(14, 'Mysql', 1, 4),
(15, 'MSSQL', 2, 4),
(16, 'Javacript', 4, 2),
(17, 'Internet tips', 5, 1),
(19, 'Ajax Jquery - Mootools', 3, 2),
(21, 'Software', 6, 0),
(22, 'Software Graphics', 1, 21),
(23, 'Software Programming', 2, 21),
(27, 'Asp.net', 3, 2),
(28, '.NET', 1, 2),
(29, 'C/C++', 2, 2),
(30, 'C#', 3, 2),
(31, 'Java', 4, 2),
(32, 'Visual Basic', 5, 2),
(33, 'XHTML/CSS', 1, 5),
(34, 'Flash', 2, 5),
(36, 'Graphics', 5, 0),
(37, 'Photoshop', 1, 36),
(38, 'Flash - Flex', 5, 2),
(40, 'CSS - XHTML - HTML 5', 3, 2),
(41, 'Zend framework', 3, 10),
(42, 'CodeIgniter framework', 1, 10),
(43, 'Kohana framework', 2, 10),
(44, 'CakePHP framework', 4, 10),
(45, 'Symfony framework', 5, 10),
(46, 'Phpbb Forum', 13, 10),
(47, 'Yii framework', 6, 10),
(48, 'Drupal', 14, 10);

-- --------------------------------------------------------

--
-- Table structure for table `hoiit_comments`
--

CREATE TABLE IF NOT EXISTS `hoiit_comments` (
  `comment_id` int(11) NOT NULL AUTO_INCREMENT,
  `comment_title` varchar(100) NOT NULL,
  `comment_content` varchar(500) NOT NULL,
  `comment_enable` tinyint(1) NOT NULL DEFAULT '1',
  `comment_date` timestamp NOT NULL DEFAULT CURRENT_TIMESTAMP,
  `hoiit_usernames_username` varchar(40) NOT NULL,
  `hoiit_posts_post_id` int(11) NOT NULL,
  PRIMARY KEY (`comment_id`),
  KEY `fk_hoiit_comments_hoiit_usernames1` (`hoiit_usernames_username`),
  KEY `fk_hoiit_comments_hoiit_posts1` (`hoiit_posts_post_id`)
) ENGINE=InnoDB  DEFAULT CHARSET=utf8 AUTO_INCREMENT=2 ;

--
-- Dumping data for table `hoiit_comments`
--

INSERT INTO `hoiit_comments` (`comment_id`, `comment_title`, `comment_content`, `comment_enable`, `comment_date`, `hoiit_usernames_username`, `hoiit_posts_post_id`) VALUES
(1, 'sasa', 'sasassa', 1, '2012-02-03 09:31:28', 'thanhansoft', 1);

-- --------------------------------------------------------

--
-- Table structure for table `hoiit_download`
--

CREATE TABLE IF NOT EXISTS `hoiit_download` (
  `download_id` int(11) NOT NULL AUTO_INCREMENT,
  `create_date` timestamp NOT NULL DEFAULT CURRENT_TIMESTAMP,
  `link` varchar(500) NOT NULL,
  `down_type` tinyint(1) NOT NULL DEFAULT '0',
  `enable` tinyint(1) NOT NULL,
  `hoiit_posts_post_id` int(11) NOT NULL,
  PRIMARY KEY (`download_id`),
  KEY `fk_hoiit_download_hoiit_posts1` (`hoiit_posts_post_id`)
) ENGINE=InnoDB DEFAULT CHARSET=utf8 AUTO_INCREMENT=1 ;

-- --------------------------------------------------------

--
-- Table structure for table `hoiit_logs`
--

CREATE TABLE IF NOT EXISTS `hoiit_logs` (
  `log_id` int(11) NOT NULL AUTO_INCREMENT,
  `create_date` timestamp NOT NULL DEFAULT CURRENT_TIMESTAMP,
  `detail` varchar(500) NOT NULL,
  `hoiit_usernames_username` varchar(40) NOT NULL,
  PRIMARY KEY (`log_id`),
  KEY `fk_hoiit_logs_hoiit_usernames1` (`hoiit_usernames_username`)
) ENGINE=InnoDB DEFAULT CHARSET=utf8 AUTO_INCREMENT=1 ;

-- --------------------------------------------------------

--
-- Table structure for table `hoiit_nationals`
--

CREATE TABLE IF NOT EXISTS `hoiit_nationals` (
  `national_id` varchar(3) NOT NULL,
  `national_name` varchar(45) NOT NULL,
  PRIMARY KEY (`national_id`)
) ENGINE=InnoDB DEFAULT CHARSET=utf8;

--
-- Dumping data for table `hoiit_nationals`
--

INSERT INTO `hoiit_nationals` (`national_id`, `national_name`) VALUES
('VND', 'Việt Nam');

-- --------------------------------------------------------

--
-- Table structure for table `hoiit_posts`
--

CREATE TABLE IF NOT EXISTS `hoiit_posts` (
  `post_id` int(11) NOT NULL AUTO_INCREMENT,
  `post_title` varchar(100) NOT NULL,
  `post_img` varchar(60) DEFAULT NULL,
  `post_detail` text NOT NULL,
  `post_sort` int(11) NOT NULL DEFAULT '1',
  `post_demo` varchar(45) DEFAULT NULL,
  `post_hit` varchar(45) NOT NULL DEFAULT '0',
  `post_type` tinyint(1) NOT NULL DEFAULT '0',
  `post_link` varchar(100) NOT NULL,
  `post_description` varchar(250) DEFAULT NULL,
  `post_enable` tinyint(1) NOT NULL DEFAULT '1',
  `post_create` timestamp NOT NULL DEFAULT CURRENT_TIMESTAMP,
  `hoiit_cats_cat_id` tinyint(4) NOT NULL,
  `hoiit_usernames_username` varchar(40) NOT NULL,
  PRIMARY KEY (`post_id`),
  KEY `fk_hoiit_posts_hoiit_cats1` (`hoiit_cats_cat_id`),
  KEY `fk_hoiit_posts_hoiit_usernames1` (`hoiit_usernames_username`)
) ENGINE=InnoDB  DEFAULT CHARSET=utf8 AUTO_INCREMENT=30 ;

--
-- Dumping data for table `hoiit_posts`
--

INSERT INTO `hoiit_posts` (`post_id`, `post_title`, `post_img`, `post_detail`, `post_sort`, `post_demo`, `post_hit`, `post_type`, `post_link`, `post_description`, `post_enable`, `post_create`, `hoiit_cats_cat_id`, `hoiit_usernames_username`) VALUES
(1, 'Working with request $_GET, $_POST with Yii framework', '', '<p>\r\n	You can work with request data directly using PHP superglobals such as $_SERVER, $_GET, or $_POST but the better way is to use Yii powerful CHttpRequest class that resolves inconsistencies among different web servers, manages cookies, provides some additional security, and has a nice set of OO methods.</p>\r\n<p>\r\n	You can access the request component in your web application by using Yii::app()-&gt;getRequest(). So, let''s review the most useful methods and their usage, methods that return different parts of the current URL. In the following table, returned parts are marked with a bold font.</p>\r\n<p>\r\n	getUrl http://cookbook.local<strong>/test/index?var=val</strong><br />\r\n	getHostInfo <strong>http://cookbook.local/</strong>test/index?var=val<br />\r\n	getPathInfo http://cookbook.local/<strong>test/index</strong>?var=val<br />\r\n	getRequestUri http://cookbook.local<strong>/test/index?var=val</strong><br />\r\n	getQueryString http://cookbook.local/test/index?<strong>var=val</strong></p>\r\n\r\n<p>\r\n	While PHP provides superglobals for both POST and GET, Yii way allows us to omit some additional checks:</p>\r\n<pre class="brush:php;">\r\nclass TestController extends CController\r\n{\r\n   public function actionIndex()\r\n   {\r\n      $request = Yii::app()-&gt;request;\r\n      $param = $request-&gt;getParam(''id'', 1);\r\n      // equals to\r\n      $param = isset($_REQUEST[''id'']) ? $_REQUEST[''id''] : 1;\r\n      $param = $request-&gt;getQuery(''id'');\r\n      // equals to\r\n      $param = isset($_GET[''id'']) ? $_GET[''id''] : null;\r\n      $param = $request-&gt;getPost(''id'', 1);\r\n      // equals to\r\n      $param = isset($_POST[''id'']) ? $_POST[''id''] : 1;\r\n   }\r\n}</pre>\r\n<p>\r\n	Enjoy</p>', 1, '', '123', 0, 'working-with-request-get-post-with-yii-framework', 'You can work with request data directly using PHP superglobals such as $_SERVER, $_GET, or $_POST but the better way is to use Yii powerful CHttpRequest class that resolves inconsistencies among different web servers, manages cookies', 1, '2012-02-03 06:26:46', 47, 'thanhansoft'),
(2, 'So sánh thời gian trong form với Yii - date field validation', '', '<p>\n	Chào tất cả thành viên</p>\n<p>\n	Đôi khi chúng sẽ làm ví dụ này trong trường hợp người dùng nhập vào "ngày bắt đầu, ngày kết thúc" nhưng vô tình hay cố ý họ sẽ nhập ngày kết thúc nhỏ hơn ngày bắt đầu. Vậy ứng dụng của chúng ta cần kiểm tra vấn đề này là so sánh giữa 2 ngày này, nếu ngày kết thúc nhỏ hơn sẽ xuất hiện thông báo. Cách làm như sau:</p>\n<p>\n	<strong>Bươc 1</strong>: Thêm 2 dòng này vào function rules:</p>\n<pre class="brush:php;">\npublic function rules(){\n// NOTE: you should only define rules for those attributes that\n// will receive user inputs.\nreturn array(\n  array(''start_date, end_date'', ''safe''),\n  array(''start_date, end_date'', ''type'', ''type'' =&gt; ''date'', ''message'' =&gt; ''{attribute}: is not a date!'', ''dateFormat'' =&gt; ''dd-MM-yyyy''),\n  array(''start_date'', ''compareDateRange'', ''type'' =&gt; ''date'', ''message'' =&gt; ''{attribute}: is not a date!'', ''dateFormat'' =&gt; ''dd-MM-yyyy''),\n);\n}</pre>\n<p>\n	<strong>Bước 2</strong>: Ta sẽ thêm 1 function vào <strong>bên dưới function rules</strong> như sau:</p>\n<pre class="brush:php;">\npublic function compareDateRange($attribute, $params) {\n  if(!empty($this-&gt;attributes[''start_date''])) {\n   if(strtotime($this-&gt;attributes[''end_date'']) &lt; strtotime($this-&gt;attributes[''start_date''])) {\n    $this-&gt;addError($attribute, ''The expired date can not be less/before posted date.'');\n   }\n  }\n\n}</pre>\n<p>\n	Ví dụ này 2 trường (field) trong CSDL mình dùng kiểu <strong>timestamp</strong></p>\n<p>\n	Hãy xem và test nhé, Chúc thành công</p>', 2, '', '127', 0, 'so-sanh-thoi-gian-trong-form-voi-yii-date-field-validation', 'Đôi khi chúng sẽ làm ví dụ này trong trường hợp người dùng nhập vào "ngày bắt đầu, ngày kết thúc" nhưng vô tình hay cố ý họ sẽ nhập ngày kết thúc nhỏ hơn ngày bắt đầu. Vậy ứng dụng của chúng ta cần kiểm tra vấn đề này là so sánh giữa 2 ngày này', 1, '2012-02-03 10:17:23', 47, 'thanhansoft'),
(3, '20 tuyệt chiêu thần chưởng hữu ích dành cho CSS Stylesheet', '', '<p>\n	Sau đây là vài mẹo và thủ thuật CSS mà thanhansoft nghĩ rằng tất cả các nhà phát triển web cần phải nhận thức. Bạn đã có thể biết nhiều người trong những thủ thuật. Tài liệu được lấy từ các nguồn khác nhau trên internet biên dịch dành cho người Việt</p>\n<p>\n	<strong>1. Tròn góc mà không có hình ảnh</strong><br />\n	Đây là một kỹ thuật đơn giản CSS làm tròn số các góc của Bảo hiểm tiền gửi bằng cách sử dụng một số thuộc tính css. Kỹ thuật này sẽ làm việc trong Firefox, Safari, Chrome và các trình duyệt tương thích khác CSS3. Kỹ thuật này sẽ không làm việc trong Internet Explorer.</p>\n<pre class="brush:css;">\ndiv{\n    -moz-border-radius: 10px;\n    -webkit-border-radius: 10px;\n    border-radius: 10px;\n    border: 1px solid #FF8855;\n}</pre>\n<p>\n	Ví dụ này chỉ bo góc bên trên, bên trái hoặc bên phải và dưới:</p>\n<pre class="brush:css;">\ndiv{\n    -moz-border-radius-topleft: 10px;\n    -webkit-border-top-left-radius: 10px;\n    border: 1px solid #FF8855;\n}</pre>\n<p>\n	<strong>Demo</strong>: <a href="http://www.viralpatel.net/blogs/demo/css-rounded-corner-div-table/">http://www.viralpatel.net/blogs/demo/css-rounded-corner-div-table/</a></p>\n<p>\n	<strong>2. Cú pháp CSS chỉ dùng cho IE</strong><br />\n	Sẽ có lúc bạn thấy IE hiển thị khác với các trình duyệt khác khi đó bạn cần tạo một mẫu riêng biệt hoàn toàn và đưa nó vào trong trang web bất cứ khi nào khách hàng đang sử dụng Internet Explorer.</p>\n<pre class="brush:xml;">\n&lt;!--[if IE]&gt;\n    &lt;link rel="stylesheet" type="text/css" href="ie-only.css" /&gt;\n&lt;![endif]--&gt;</pre>\n<p>\n	<strong>Dùng trong IE 7</strong></p>\n<pre class="brush:xml;">\n&lt;!--[if IE 7]&gt;\n    &lt;link href="IE-7-SPECIFIC.css" rel="stylesheet" type="text/css"&gt;\n&lt;![endif]--&gt;\n</pre>\n<p>\n	Xem thêm: <a href="http://viralpatel.net/blogs/2009/09/how-to-create-ie-specific-css-stylesheet.html">http://viralpatel.net/blogs/2009/09/how-to-create-ie-specific-css-stylesheet.html</a></p>\n<p>\n	<strong>3. Background cho textbox</strong><br />\n	Đôi lúc bạn sẽ cần đến chiêu này, hình nền được làm hình nền cho input có thể dùng ô tìm kiếm với khung tròn. Đơn giản chỉ cần sử dụng mẫu sau để thêm hình nền cho bất kỳ hộp nhập liệu.</p>\n<pre class="brush:css;">\ninput#sometextbox {\n    background-image:url(''back-image.gif'');\n    background-repeat:no-repeat;\n    padding-left:20px;\n}</pre>\n<p>\n	<strong>4. Cấu hình kích thước cho khung</strong><br />\n	Một lệnh rất tiện dụng CSS mà tồn tại là lệnh min-width, min-height, nhờ đó mà bạn có thể chỉ định chiều rộng tối thiểu cho các phần tử bất kỳ. Điều này có thể đặc biệt hữu ích để xác định chiều rộng tối thiểu cho một trang.</p>\n<pre class="brush:xml;">\n#container {\n    min-width: 600px;\n    width:expression(document.body.clientWidth &lt; 600? "600px": "auto" );\n}\n&lt;div id="container"&gt;\nDoan van cua ban\n&lt;/div&gt;</pre>\n<p>\n	Câu lệnh 2 dành cho IE mới hiểu được, các bạn hãy lưu ý</p>\n<p>\n	<strong>5. Mờ đục phần tử</strong><br />\n	Sử dụng mẫu sau để thực hiện một transperant phần tử bằng cách thiết lập mức độ đục.</p>\n<pre class="brush:css;">\n.transparent_class {\n    filter:alpha(opacity=50);\n    -moz-opacity:0.5;\n    -khtml-opacity: 0.5;\n    opacity: 0.5;\n}</pre>\n<p>\n	<strong>6. Thanh cuộn trong Firefox</strong><br />\n	Khi nội dung trang web của bạn không nhiều thì firefox sẽ không xuất hiện thanh cuộn, rất khác với IE, nhưng nếu bạn muốn hiển thị thanh cuộn đó khi nội dung ít bạn có thể dùng code dưới đây</p>\n<pre class="brush:css;">\n&lt;style type="text/css"&gt;\n        html{ overflow-y:scroll; }\n&lt;/style&gt;</pre>\n<p>\n	<strong>7. Quay text sử dụng CSS</strong><br />\n	Ví dụ dưới đây sẽ quay hình ảnh Grouplaptrinh ngược chiều kim đồng hồ 90 độ, đối với IE giá trị có thể là 0, 1, 2 hoặc 3, tương ứng 0, 90, 180 và 270</p>\n<pre class="brush:xml;">\n&lt;!DOCTYPE html PUBLIC "-//W3C//DTD XHTML 1.0 Transitional//EN" "http://www.w3.org/TR/xhtml1/DTD/xhtml1-transitional.dtd"&gt;\n&lt;html xmlns="http://www.w3.org/1999/xhtml" xml:lang="en" lang="en"&gt;\n\n&lt;head&gt;\n&lt;meta http-equiv="content-type" content="text/html; charset=iso-8859-1" /&gt;\n&lt;meta name="author" content="Thanhansoft" /&gt;\n\n&lt;title&gt;Untitled 1&lt;/title&gt;\n    &lt;style type="text/css"&gt;\n    .rotate-style {\n        /* Safari */\n        -webkit-transform: rotate(-90deg);\n        /* Firefox */\n        -moz-transform: rotate(-90deg);\n        /* Internet Explorer */\n        filter: progid:DXImageTransform.Microsoft.BasicImage(rotation=3);\n    }\n    &lt;/style&gt;\n&lt;/head&gt;\n\n&lt;body&gt;\n\n&lt;img class="rotate-style" src="http://grouplaptrinh.com/template/adsense/images/logo.png" alt="" /&gt;\n\n&lt;/body&gt;\n&lt;/html&gt;</pre>\n<p>\n	<strong>8. Css dành cho thiết bị di động, điện thoai...</strong><br />\n	Một tài liệu CSS riêng biệt có thể được tạo ra cho PDA và điện thoại di động, và chỉ kích hoạt khi một trong những thiết bị này đang được sử dụng để truy cập vào trang web của bạn. Ngày càng có nhiều trang web đang tạo ra văn bản riêng CSS để in, vì vậy các trang web sẽ tự động trở thành in-thân thiện khi người dùng chọn để in chúng. Bạn cũng có thể làm tương tự cho các thiết bị cầm tay.<br />\n	Các lệnh sau đây được sử dụng để gọi đến các tài liệu CSS cho thiết bị cầm tay:</p>\n<pre class="brush:xml;">\n&lt;link type="text/css" rel="stylesheet" href="style.css" media="handheld" /&gt;</pre>\n<p>\n	<strong>9. Thay đổi màu nền khi bôi đen text</strong><br />\n	Chắc hẳn bạn vẫn hay bôi đen 1 đoạn text để copy nó sẽ có màu nên xanh, nhưng bạn có thể thay đổi nó đấy.</p>\n<pre class="brush:css;">\n/* Mozilla based browsers */\n::-moz-selection {\n       background-color: #FFA;\n       color: #000;\n}\n\n/* Works in Safari */\n::selection {\n       background-color: #FFA;\n       color: #000;\n}</pre>\n<p>\n	<strong>10. Bỏ các dấu chấm khi click vào link (liên kết)</strong><br />\n	Chấm biên giới xung quanh liên kết được một tính năng trình duyệt có khả năng tiếp cận nhất theo mặc định. Đó là cho những người dùng hay phải lựa chọn để điều hướng bằng bàn phím. Có một số người yêu cầu thanhansoft bỏ nó đi, tuy bực mình nhưng cũng giúp mình hoàn thiện, hãy để ý vụ này nhé. khó hình dung đấy</p>\n<pre class="brush:css;">\na:active {\n    outline: none;\n}</pre>\n<p>\n	<strong>11. Canh giữa màn hình website</strong><br />\n	Da phần các website có chiều rộng cố định thường dùng kỹ thuật canh giữa màn hình</p>\n<pre class="brush:css;">\n#page-wrap {\n     width: 800px;\n     margin: 0 auto;\n}\n&lt;body&gt;\n  &lt;div id="page-wrap"&gt;\n    &lt;!-- all websites HTML here --&gt;\n  &lt;/div&gt;\n&lt;/body&gt;</pre>\n<p>\n	<strong>12. CSS Drop Caps</strong><br />\n	Ký tự đầu sẽ to tổ bố so với các ký tự khác, code dưới đây bạn có thể tùy chỉnh lại font-size, width (chiều ngang) cho đúng với yêu cầu của bạn Demo: </p>\n<pre class="brush:css;">\np:first-letter {\n       font-size : 300%;\n       font-weight : bold;\n       float : left;\n       width : 1em;\n}</pre>\n<p>\n	Enjoy</p>', 3, '', '116', 0, '20-tuyet-chieu-than-chuong-huu-ich-danh-cho-css-stylesheet', '20 tuyệt chiêu hữu ích dành cho Css coder: Tròn góc mà không có hình ảnh, Cú pháp CSS chỉ dùng cho IE, Background cho textbox, Cấu hình kích thước cho khung, Mờ đục phần tử, Thanh cuộn trong Firefox, Quay text sử dụng CSS', 1, '2012-02-07 14:27:46', 40, 'thanhansoft'),
(4, 'Gắn Video youtube vào Forum php bằng link url - Mod link youtube for Phpbb', '', '<p>\n	Chào thành viên Forum lập trình Phpbb, Đối với các bạn đang làm forum phpbb thì việc tích hợp video youtu, google, metacafe... vào forum là điều cần thiết, thế nhưng thanhansoft nhận thấy 1 MOd youtube họ cho ta gắn vào mã số ID đó, nhưng khách của chúng ta không phải ai cũng nhận ra được đâu mà ID của video youtube, thông thường 1 link youtube có dạng http://www.youtube.com/watch?v=Lp2qcCrdBLA</p>\n<p>\n	Mã số nằm sau chữ <strong>v=</strong> là ID của video, nhưng theo bài viết MOD của phpbb <a href="http://www.icyphoenix.com/viewtopic.php?f=32&amp;t=4024">http://www.icyphoenix.com/viewtopic.php?f=32&amp;t=4024</a> thì bạn phải lấy mã số đó gắng vào <strong><em>[youtube]</em>Lp2qcCrdBLA</strong><em><strong>[/youtube]</strong></em> thì mới hiện video Youtube</p>\n<p>\n	Hơi bất tiện nên Thanhansoft chế ra bằng cách copy link thôi, chúng ta sẽ dùng javascript mấy mã số đó tự động và hiện thị nó, sẽ rất tiện lợi cho người dùng, bài viết sau đây xin hướng dẫn làm điều đó</p>\n<p>\n	<strong>Bước 1</strong>: Bạn tạo 1 file youtube.js với nội dung như sau: nếu không hiểu bạn có thể xem lại bài viết này: http://grouplaptrinh.com/posts/lay-ma-so-id-video-cua-youtube-bang-javascript-how-to-get-video-id-youtube-with-javascript-208.html</p>\n<pre class="brush:php;">\n/* Author: Thanhansoft - 2011 */\nvar getList = function(url, gkey){\nvar returned = null;\n\nif (url.indexOf("?") != -1){\n  var list = url.split("?")[1].split("&amp;"),\n    gets = [];\n\n  for (var ind in list){\nvar kv = list[ind].split("=");\nif (kv.length&gt;0)\n  gets[kv[0]] = kv[1];\n}\n\nreturned = gets;\n\nif (typeof gkey != "undefined")\nif (typeof gets[gkey] != "undefined")\n  returned = gets[gkey];\n\n\n}\n\nreturn returned;\n};\n\nfunction embed(Embpath){\nvar flashCode = ''&lt;iframe width="420" height="345" src="http://www.youtube.com/embed/''+Embpath+''" frameborder="0" allowfullscreen&gt;&lt;/iframe&gt;'';\ndocument.write(flashCode) ;\n}</pre>\n<p>\n	<strong>Bước 2</strong>: Bạn sẽ upload file đó vào thư mục template mà bạn đang sử dụng vidu: se_square_left/template</p>\n<p>\n	<strong>Bước 3</strong>: Bạn vào phần <strong>ACP</strong> -&gt; <strong>Giao diện</strong> -&gt; <strong>Khuôn mẫu</strong> -&gt; Chọn <strong>template</strong> bạn đang sử dụng -&gt; <strong>Sửa</strong>, chọn file <strong>overall_header.html</strong> và điền đoạn code khai báo file .js vừa tạo</p>\n<pre class="brush:xml;">\n&lt;script type="text/javascript" src="{T_TEMPLATE_PATH}/youtube.js"&gt;&lt;/script&gt;</pre>\n<p>\n	Mục tiêu là chèn file này vào template, nếu bạn làm ko được thì ko nên làm những bước sau, vì MOD của bạn sẽ nhờ file này xử lý, OK và bấm nút Chấp nhận</p>\n<p>\n	<strong>Bước 4</strong>: Tạo BBcode cho youtube bạn vào ACP-&gt;Post-&gt;BBcode</p>\n<p>\n	Trong <strong>IN BBcode</strong>: bạn chèn</p>\n<pre class="brush:plain;">\n[youtube]{TEXT}[/youtube]</pre>\n<p>\n	Trong In HTML: chèn</p>\n<pre class="brush:xml;">\n&lt;script type="text/javascript"&gt;embed(getList(''{TEXT}'', "v"))&lt;/script&gt;</pre>\n<p>\n	Trong <strong>In the Line of BBcode this</strong>:</p>\n<pre class="brush:xml;">\n[youtube]YouTube video ID string here[/youtube]</pre>\n<p>\n	Sau đó bấm tạo mới thôi</p>\n<p>\n	OK như vậy là xong rồi đó, việc sử dụng nó bạn chỉ cần</p>\n<pre class="brush:xml;">\n[youtube]http://www.youtube.com/watch?v=RJGQy1cpTbA[/youtube]</pre>\n<p>\n	Mọi thứ sẽ ok cho bạn, Chúc vui vẻ - Thanhansoft</p>', 4, '', '51', 0, 'gan-video-youtube-vao-forum-php-bang-link-url-mod-link-youtube-for-phpbb', 'Gắn Video youtube vào Forum php bằng link url của Youtube.com, Mod link youtube for Phpbb, Video youtube in Forum phpbb with Url', 1, '2012-02-12 11:42:53', 46, 'thanhansoft'),
(5, 'Lấy mã số ID video của youtube bằng javascript - How to get video ID youtube with Javascript', '', '<p>\n	Chào các bạn, nếu bạn để ý thì link của video youtube.com đều bắt đầu bằng ?v=ID đó là mã số video của youtube, trong một số trường hợp bạn sẽ cần mả số này để làm 1 việc gì đó. Bài viết sẽ hướng dẫn các bạn dùng javascript để bóc tách mã số</p>\n<p>\n	Đoạn code như sau:</p>\n<pre class="brush:jscript;">\n&lt;script type="text/javascript"&gt;\n        var getList = function(url, gkey){\n            var returned = null;\n   \n            if (url.indexOf("?") != -1){\n   \n              var list = url.split("?")[1].split("&amp;"),\n                      gets = [];\n   \n              for (var ind in list){\n                var kv = list[ind].split("=");\n                if (kv.length&gt;0)\n                    gets[kv[0]] = kv[1];\n            }\n   \n            returned = gets;\n   \n            if (typeof gkey != "undefined")\n                if (typeof gets[gkey] != "undefined")\n                    returned = gets[gkey];\n   \n            }\n   \n            return returned;\n    };\n   \n    var url = ''http://www.youtube.com/watch?v=l1G7TJD6Xu0'';\n    $result = getList(url, "v");\n    alert($result);\n    &lt;/script&gt;</pre>\n<p>\n	Đơn giản bạn cho nó vào file <strong>.html</strong> và chạy thử xem nó sẽ cho bạn mã số lấy được, hãy thử xem sao nhé, chúc thành công</p>', 5, '', '247', 0, 'lay-ma-so-id-video-cua-youtube-bang-javascript-how-to-get-video-id-youtube-with-javascript', 'Lấy mã số ID video của youtube bằng javascript - How to get video ID youtube with Javascript', 1, '2012-02-12 15:12:08', 16, 'thanhansoft'),
(6, 'Select code trong khung văn bản javascript', '', '<p>\n	Các bạn đã thấy qua các website chuyên chia sẻ code, trình bày code trong một textarea có 1 nút chọn code bên trong đó.<br />\n	Đây là code mô tả việc này, rất đơn giản với đoạn javascript sau đây:</p>\n<pre class="brush:jscript;">\n&lt;script language="Javascript"&gt;\nfunction selectAll(theField) {\nvar tempval=eval("document."+theField)\ntempval.focus()\ntempval.select()\n}\n&lt;/script&gt;</pre>\n<p>\n	Chúng ta sẽ gọi function ấy bằng cách khai báo:</p>\n<pre class="brush:xml;">\n&lt;form name="form"&gt;\n&lt;a href="javascript:selectAll(''form.txt'')"&gt;Chọn hết&lt;/a&gt;&lt;br /&gt;\n&lt;textarea name="txt" rows="5" cols="35"&gt;\nBạn vào menu Insert - Function. Hộp thoại Insert Function xuất hiện. Mục "Search for a function" (tìm kiếm các hàm trong Excel). Ví dụ như bạn đánh chữ "plus" (cộng) vào mục này để tìm hàm cộng tác ô dữ liệu lại với nhau, Excel sẽ tự động liệt kê những hàm dùng để thực hiện công việc đó như: SUM , SUMIF , DSUM ,...\n&lt;/textarea&gt;\n&lt;/form&gt;</pre>\n<p>\n	Ok, xong rồi đó rất đơn giản đúng không. Đoạn code mà các bạn thấy tại Grouplaptrinh thì phức tạp hơn tí xíu, bạn nào tinh ý hãy view source và trích xuất thử xem nhé - Chúc thành công - thanhansoft</p>', 6, '', '49', 0, 'select-code-trong-khung-van-ban-javascript', 'Select code trong khung văn bản javascript, trình bày code trong một textarea có 1 nút chọn code bên trong đó, syntax highlighter code', 1, '2012-02-12 15:14:47', 16, 'thanhansoft'),
(7, 'Đọc nhận tin Rss, Atom bằng Zend feed trong Yii framework', '', '<p>\n	RSS là một định dạng tập tin thuộc họ XML dùng trong việc chia sẻ tin tức Web (Web syndication) được dùng bởi nhiều website tin tức và weblog. Atom có cách thức giống như Rss, Sự khác biệt chính là ở cấu trúc của giao thức Atom. Atom là một sự kế thừa cho RSS, nó là giao thức tổng quát hơn và nó được thiết kế để đối phó dễ dàng hơn với nguồn cấp dữ liệu cung cấp đầy đủ nội dung bên trong</p>\n<p>\n	Việc đọc tin Atom hết sức dễ dàng nhờ sợ hỗ trợ của thư viện Zend framework các tập tin chúng ta cần chuẩn bị là:</p>\n<p>\n	3: Thư mục Zend framework: <strong>Feed, Http, Loader</strong><br />\n	4: File Zend framework: <strong>Exception.php, Feed.php, Loader.php, Uri.php</strong></p>\n<p>\n	Sau đó bạn hãy copy các thư mục và file của Zend framework vào thư mục <strong>protected</strong> của Yii framework: <strong>protected/vendors/Zend</strong></p>\n<p>\n	Việc chuẩn bị đã hoàn tất, bây giờ chúng ta hãy tạo 1 Action trong Controller ở đây mình tạo là: readrss như sau:</p>\n<pre class="brush:php;">\npublic function actionreadrss(){\n	//Khoi tao Zend framework\n	Yii::import(''application.vendors.*'');\n	require_once ''Zend/Loader/Autoloader.php'';\n	spl_autoload_unregister(array(''YiiBase'',''autoload'')); \n	spl_autoload_register(array(''Zend_Loader_Autoloader'',''autoload'')); \n	spl_autoload_register(array(''YiiBase'',''autoload''));\n	\n	//Xy lu viec nhan tin\n	$feed = new Zend_Feed_Atom(''http://hoiit.com/rss.xml'');\n	echo ''The feed contains '' . $feed-&gt;count() . '' entries.'' . "&lt;br/&gt;";\n	foreach ($feed as $entry) {\n		echo ''&lt;b&gt;Title: '' . $entry-&gt;title() . "&lt;/b&gt;\\n";\n		echo ''&lt;p&gt;Summary: '' . $entry-&gt;summary() . "&lt;/p&gt;\\n\\n";\n	}\n}</pre>\n<p>\n	Chúng ta cần file rss XML mẫu để test và dùng vòng lặp foreach để hiện thị mà link đó đã cung cấp. Tham khảo thêm các tùy chọn của thư viện Zend tại: <a href="http://framework.zend.com/manual/en/zend.feed.consuming-atom.html">http://framework.zend.com/manual/en/zend.feed.consuming-atom.html</a></p>\n<p>\n	Hãy thử và trải nghiệm. Chúc thành công - thanhansoft</p>', 7, '', '72', 0, 'doc-nhan-tin-rss-atom-bang-zend-feed-trong-yii-framework', 'Đọc tin Rss, Atom bằng Zend Feed trong Yii framework. Sử dụng 3: Thư mục Zend: Feed, Http, Loader. 4: File Zend: Exception.php, Feed.php, Loader.php, Uri.php', 1, '2012-02-22 04:33:48', 47, 'thanhansoft'),
(8, 'Tự động định dạng code với PHPStorm', '', '<p>\n	PHPStorm được đánh giá là phần mềm tốt trong việc hỗ trợ các lập trình viên, phiên bản thanhansoft đang sử dụng là 3.0.2. Đối với các coder đã sử dụng qua các IDE (phần mềm hỗ trợ lập trình) thì <strong>PHPStorm</strong> đáng để chúng ta lưu ý.</p>\n<p>\n	Có 2 vấn đề mình không ưu ái mấy với nó:</p>\n<ol><li>\n		Chức năng auto save nghĩa là cho dù bạn gõ code sai PhpStorm cũng tự động save nó cũng hay mà cũng hại,</li>\n	<li>\n		Thứ 2 là Code formatting không như ý</li>\n</ol><p>\n	Code trước khi Format chúng ta thường viết thế này:</p>\n<pre class="brush:php;">\npublic function welcomeHoiit()\n{\n	       echo  ''123 má'';\n     }</pre>\n<p>\n	Bạn muốn code mình ngay ngắn dễ nhìn hơn thì vào chọn đoạn code đó và vào <strong>Code -&gt; Reformat </strong>code sẽ ra thế này:</p>\n<pre class="brush:php;">\npublic function welcomeHoiit() \n{\n    echo ''123 má'';\n}</pre>\n<p>\n	Bên cạnh đó chúng ta có thể tùy biến cách format theo ý chúng ta như sau:</p>\n<ol><li>\n		Download file xml format tại: <a href="http://wiki.typo3.org/File:Standard.xml">http://wiki.typo3.org/File:Standard.xml</a></li>\n	<li>\n		Copy file xml đó vào thư mục User ma PhpStorm đang sử dụng Win 7: <strong>C:\\\\Users\\\\&lt;username&gt;\\\\.WebIde10\\\\config\\\\codestyles</strong></li>\n	<li>\n		Tắt và mở lại IDE Phpstorm</li>\n	<li>\n		Bạn vào <strong>File</strong> -&gt; <strong>Settings</strong> -&gt; <strong>Code Style</strong></li>\n	<li>\n		Tại phần Scheme: chọn <strong>Standard</strong></li>\n	<li>\n		<strong>OK</strong></li>\n</ol><p>\n	Code chúng ta lúc này khi sử dụng định dạng mới tên Standard như thế nì:</p>\n<pre class="brush:php;">\npublic function welcomeHoiit() {\n    echo ''123 má'';\n}</pre>\n<p>\n	Xong xuôi bạn có thể test bằng cách chọn đoạn code cần format và chọn <strong>Code -&gt; Reformat </strong>code. Nó sẽ định dạng khác so với Default 1 tí. Nhưng nhìn chung vẩn không bằng <strong>NetBeans IDE</strong> về mặt Code formatting này</p>\n<p>\n	Hãy thử và trải nghiệm - Chúc thành công</p>', 8, '', '73', 0, 'tu-dong-dinh-dang-code-voi-phpstorm', 'PHPStorm được đánh giá là phần mềm tốt trong việc hỗ trợ các lập trình viên, phiên bản thanhansoft đang sử dụng là 3.0.2. Đối với các coder đã sử dụng qua các IDE (phần mềm hỗ trợ lập trình) thì PHPStorm đáng để chúng ta lưu ý', 1, '2012-02-24 08:18:52', 23, 'thanhansoft'),
(9, 'Đo tốc độ thực thi 1 trang với Yii framework', '', '<p>\n	Ban đầu các bạn viết 1 ứng dụng web chủ yếu là đáp ứng đúng yêu cầu đã vạch ra, nếu bạn quan tâm đến sản phẩm mình làm ra thì sẽ chú ý đến tốc độ thực thi khi ta dùng code này, khi ta dùng code khác. Tất nhiên tốc độ máy tính xử lý cho mỗi code sẽ khác nhau, nếu bạn muốn web mình nhanh hơn nữa có thể dùng 1 đoạn nhỏ dưới đây đặt trong <strong>Controller của Yii</strong> mà bạn cần đo</p>\n<p>\n	Code đo tốc độ thực thi:</p>\n<pre class="brush:php;">\nprotected function afterAction($action)\n{\n  $time = sprintf(''%0.5f'', Yii::getLogger()-&gt;getExecutionTime());\n  $memory = round(memory_get_peak_usage()/(1024*1024),2)."MB";\n  echo "Time: $time, memory: $memory";\n  parent::afterAction($action);\n}</pre>\n<p>\n	 </p>', 9, '', '53', 0, 'do-toc-do-thuc-thi-1-trang-voi-yii-framework', 'Đo tốc độ thực thi 1 trang với Yii framework quan trọng nếu bạn quan tâm đến sản phẩm mình làm ra sẽ chú ý đến tốc độ thực thi khi ta dùng code này, afterAction Yii framework', 1, '2012-02-26 14:42:28', 47, 'thanhansoft'),
(10, 'Tạo thư mục đệ quy và Chmod phân quyền cho các thư mục con trong Php, Yii framework', '', '<p>\n	Bài viết sẽ hướng dẫn các bạn tạo đường dẫn và nếu các thư mục cha chưa tạo thì sẽ được tạo, song song đó sẽ được phân quyền, nó sẽ cần thiết cho các bạn dùng vào việc tạo 1 thư mục mà chưa biết các thư mục cha đã tạo hay chưa function dùng kiểm tra thư mục và chmod như sau:</p>\n<pre class="brush:php;">\nprivate function recursiveMkdir($path, $mode = 0777) {\n        $dirs = explode(DIRECTORY_SEPARATOR , $path);\n        $count = count($dirs);\n\n        $path_root = ''/home/hoiit/domains/hoiit.com/public_html'';\n        $location = ''/'';\n        for ($i = 1; $i &lt; ($count-1); ++$i) {\n                $location .= $dirs[$i] . DIRECTORY_SEPARATOR;\n                if (!is_dir($path_root.$location)) {\n                        //echo ''chua ton tai thu muc -&gt; tao thu muc &amp; chmod'';\n                        mkdir($path_root.$location, 0777);\n                        chmod($path_root.$location, 0777);\n                }else{\n                        //echo ''da ton tai thu muc nay roi'';\n                }\n        }\n    }</pre>\n<p>\n	Và 1 function sẽ gọi function trên như sau:</p>\n<pre class="brush:php;">\npublic function test() {\n        $path = ''/public/userfiles/images/thanhansoft/images/'';\n        $this-&gt;recursiveMkdir($path);\n    }</pre>\n<p>\n	Giải thích:</p>\n<ul><li>\n		Ban đầu chúng ta sẽ truyền 1 chuỗi thư mục cần tạo là: /public/userfiles/images/thanhansoft/images/</li>\n	<li>\n		Tiếp theo gọi hàm function recursiveMkdir với 2 tham số truyền vào đường dẫn và cấu hình phân quyền</li>\n	<li>\n		$path_root là đường dẫn tuyệt đối tùy theo domain của bạn sẽ có đường dẫn root khác nhau</li>\n	<li>\n		Vòng lặp For chúng ta chỉ lấy giá trị thứ 2 và giá trị kế cuối, các bạn làm sau để lấy các tên thư mục đừng lấy các dấu / là được</li>\n	<li>\n		!is_dir là hàm kiểm tra xem thư mục đó có chưa? nếu chưa thì dùng 2 dòng để tạo</li>\n</ul><p>\n	Đối với các bạn dùng  <strong>Yii framework</strong> thì thay <strong>$path_root = YiiBase::getPathOfAlias(''webroot'')</strong> là ok</p>\n<p>\n	Có thể hơi rắc rối nhưng bạn cứ xóa từng dòng từng dòng (comment) trên xuống dưới để theo dõi cho làm gì thì sẽ hiểu và áp dụng chắc chắn sẽ thành công. Chúc vui</p>', 10, '', '41', 0, 'tao-thu-muc-de-quy-va-chmod-phan-quyen-cho-cac-thu-muc-con-trong-php-yii-framework', 'Tạo thư mục đệ quy và Chmod phân quyền cho các thư mục con trong Php, Yii framework. nó sẽ cần thiết cho các bạn dùng vào việc tạo 1 thư mục mà chưa biết các thư mục cha đã tạo hay chưa function dùng kiểm tra thư mục và chmod', 1, '2012-02-27 08:21:44', 47, 'thanhansoft'),
(11, 'Tạo Rss 2.0 bằng thư viện mở rộng Zend Feed trong Yii framework', '', '<p>\n	RSS (Really Simple Syndication) là định dạng dữ liệu dựa theo chuẩn XML được sử dụng để chia sẻ và phát tán nội dung Web. Việc sử dụng các chương trình đọc tin (News Reader, RSS Reader hay RSS Feeds) sẽ giúp bạn luôn xem được nhanh chóng tin tức mới nhất và các web có thể nhận tin tức này về</p>\n<p>\n	Đối với các bạn lập trình framework Yii thì việc sử dụng Zend feed để tạo ra tương đối đơn giản với đoạn code ngắn dưới đây sẽ giúp bạn làm điều này</p>\n<pre class="brush:php;">\n&lt;?php\npublic function actionrss() {\n	Yii::import(''application.vendors.*'');\n	require_once(''Zend/Feed/Rss.php'');\n	require_once(''Zend/Feed.php'');\n\n	//Create an array for our feed - Setup some info about our feed\n	$feed = array();\n	$feed[''title''] = "Hoiit.com NEWS";\n	$feed[''link''] = ''http://hoiit.com/rss.xml'';\n	$feed[''description''] = ''Hoiit.com news latest'';\n	$feed[''generator''] = ''Thanhansoft - Hoiit.com'';\n	$feed[''charset''] = ''utf-8'';\n	$feed[''entries''] = array(); //Holds the actual items\n\n	// retrieve the latest 7 posts\n	$articles_class = new Articles();\n	$rows = $articles_class-&gt;listRss();\n\n	foreach ($rows as $story) {\n		$entry = array(); //Container for the entry before we add it on\n		$entry[''title''] = $story[''title'']; //The title that will be displayed for the entry\n		$entry[''link''] = ''http://hoiit.com/posts/'' . $story[''tag_cat''] . ''/'' . $story[''tag''] . ''.html'';\n		$entry[''description''] = $story[''preview'']; //Short description of the entry\n		$entry[''lastUpdate''] = strtotime($story[''postdate'']);\n		$feed[''entries''][] = $entry;\n	}\n\n	$feed = Zend_Feed::importArray($feed, ''rss'');\n	$feed-&gt;send();\n}</pre>\n<p>\n	 </p>', 11, '', '54', 0, 'tao-rss-20-bang-thu-vien-mo-rong-zend-feed-trong-yii-framework', '', 1, '2012-02-28 11:45:29', 47, 'thanhansoft'),
(12, 'Tạo Google Sitemap XML trong Yii framework', '', '<p>\n	Sitemap tức Sơ đồ trang web của bài viết này hướng dẫn các bạn làm file định dạng XML chuyên dùng khai báo cho các công cụ tìm kiếm Google, Yahoo, Bing... biết web bạn gồm bao nhiêu liên kết và hãy đi theo các liên kết này góp phần Seo thứ hạng cho web của bạn một điều mà hầu như web hiện nay điều phải có</p>\n<p>\n	Sau khi hoàn tất thực hành này bạn có có file sitemap định dạng như sau, theo kiến nghị nên đặt tên file là sitemap.xml:</p>\n<pre class="brush:php;">\n&lt;?xml version="1.0" encoding="UTF-8"?&gt;\n&lt;urlset xmlns="http://www.google.com/schemas/sitemap/0.90"&gt;\n	&lt;url&gt;\n        &lt;loc&gt;http://hoiit.com/&lt;/loc&gt;\n        &lt;changefreq&gt;daily&lt;/changefreq&gt;\n        &lt;priority&gt;1.00&lt;/priority&gt;\n    &lt;/url&gt;\n        &lt;loc&gt;http://hoiit.com/posts&lt;/loc&gt;\n        &lt;changefreq&gt;daily&lt;/changefreq&gt;\n        &lt;priority&gt;0.9&lt;/priority&gt;\n    &lt;/url&gt;\n&lt;/urlset&gt;</pre>\n<p>\n	<strong>Bước 1</strong>: Chúng ta sẽ thêm 1 action tên là <strong>Sitemap</strong> vào <strong>SiteController</strong> hoặc nơi nào mà bạn cảm thấy hợp lý cho ưng dụng web của bạn:</p>\n<pre class="brush:php;">\nclass SiteController extends Controller {\n\n	public function actionSitemap() {\n		$cats = Cats::model()-&gt;findAll(array(''order'' =&gt; ''cat_sort ASC''));\n		$posts = Posts::model()-&gt;findAll(array(''order'' =&gt; ''post_sort DESC, post_create DESC'', ''condition'' =&gt; ''post_enable=1''));\n\n		header(''Content-Type: application/xml'');\n		$this-&gt;renderPartial(''sitemap'', array(''cats'' =&gt; $cats, ''posts'' =&gt; $posts));\n	}\n}</pre>\n<p>\n	Hai value <strong>cats, posts</strong> dùng để lấy dữ liệu danh sách bản tin, bạn có thể thay thế nó theo ứng dụng của bạn</p>\n<p>\n	<strong>header(''Content-Type: application/xml'');</strong> giúp php hiện thị định dạng XML</p>\n<p>\n	<strong>Bước 2</strong>: Tạo file trong thư mục view-&gt;site tên sitemap như sau:</p>\n<pre class="brush:php;">\n&lt;?php echo ''&lt;?xml version="1.0" encoding="UTF-8"?&gt;'' ?&gt;\n\n&lt;urlset xmlns="http://www.sitemaps.org/schemas/sitemap/0.9" xmlns:xsi="http://www.w3.org/2001/XMLSchema-instance" xsi:schemaLocation="http://www.sitemaps.org/schemas/sitemap/0.9 http://www.sitemaps.org/schemas/sitemap/0.9/sitemap.xsd"&gt;\n    &lt;url&gt;\n        &lt;loc&gt;http://hoiit.com/&lt;/loc&gt;\n        &lt;changefreq&gt;daily&lt;/changefreq&gt;\n        &lt;priority&gt;1.00&lt;/priority&gt;\n    &lt;/url&gt;\n    &lt;url&gt;\n        &lt;loc&gt;http://hoiit.com/register&lt;/loc&gt;\n        &lt;changefreq&gt;daily&lt;/changefreq&gt;\n        &lt;priority&gt;0.9&lt;/priority&gt;\n    &lt;/url&gt;\n    &lt;url&gt;\n        &lt;loc&gt;http://hoiit.com/login&lt;/loc&gt;\n        &lt;changefreq&gt;daily&lt;/changefreq&gt;\n        &lt;priority&gt;0.9&lt;/priority&gt;\n    &lt;/url&gt;\n    &lt;url&gt;\n        &lt;loc&gt;http://hoiit.com/posts&lt;/loc&gt;\n        &lt;changefreq&gt;daily&lt;/changefreq&gt;\n        &lt;priority&gt;0.9&lt;/priority&gt;\n    &lt;/url&gt;\n	\n&lt;?php foreach ($cats as $model): ?&gt;\n    &lt;url&gt;\n        &lt;loc&gt;&lt;?php echo CHtml::encode($this-&gt;createAbsoluteUrl(''post/view'', array(''slug'' =&gt; $model-&gt;cat_id))); ?&gt;&lt;/loc&gt;\n        &lt;changefreq&gt;daily&lt;/changefreq&gt;\n        &lt;priority&gt;0.5&lt;/priority&gt;\n    &lt;/url&gt;\n&lt;?php endforeach; ?&gt;\n\n&lt;?php foreach ($posts as $model): ?&gt;\n    &lt;url&gt;\n        &lt;loc&gt;&lt;?php echo CHtml::encode($this-&gt;createAbsoluteUrl(''page/view'', array(''slug'' =&gt; $model-&gt;post_id))); ?&gt;&lt;/loc&gt;\n        &lt;changefreq&gt;daily&lt;/changefreq&gt;\n        &lt;priority&gt;0.5&lt;/priority&gt;\n    &lt;/url&gt;\n&lt;?php endforeach; ?&gt;\n&lt;/urlset&gt;</pre>\n<p>\n	Ở đây 2 dòng lặp foreach có nhiệm vụ lấy ra danh sách các record sẽ làm sitemap</p>\n<p>\n	<strong>Bước 3</strong>: Để có được link <strong>hoiit.com/sitemap.xml</strong> bạn cần khải báo <strong>urlManager</strong> như sau:</p>\n<pre class="brush:php;">\n''sitemap.xml''=&gt;''site/sitemap''</pre>\n<p>\n	Xong rồi đây, bạn thử chạy ứng dụng thư xem, Chúc thành công</p>', 12, '', '227', 0, 'tao-google-sitemap-xml-trong-yii-framework', 'Hướng dẫn làm file Sitemap.xml trong Yii framework định dạng XML chuyên dùng khai báo cho các công cụ tìm kiếm Google, Yahoo, Bing', 1, '2012-02-29 04:41:48', 47, 'thanhansoft'),
(13, 'Đọc tin Rss với Zend feed trong Yii framework Php', '', '<p>\n	Nội dung đang xây dựng</p>', 13, '', '21', 0, 'doc-tin-rss-voi-zend-feed-trong-yii-framework-php', '', 1, '2012-03-06 01:07:44', 47, 'thanhansoft'),
(14, 'Sử dụng include_path với Zend Framework', '', '<p>\n	ZF khá đồ sộ với dung lượng trên 20MB, nếu trên 1 host có 5 ứng dụng web thì dung lượng lên cả 100MB. Bài viết này sẽ hướng dẫn sử dụng biến include_path trong PHP để chỉ cần sử dụng 1 nguồn ZF cho tất cả ứng dụng web sử dụng Zend trên cùng 1 server.</p>\n<p>\n	<strong>Bước 1</strong>: Ta tìm vị trí để đặt thư viện của Zend. Ở đây ví dụ đặt tại:   D:\\library .Thư mục library này chứa thư mục Zend và bất cứ những gì bạn cần include vd: HTMLPurifier,...</p>\n<p>\n	<strong>Bước 2</strong>: Mở file php.ini (Trong C:\\windows hoặc nếu sử dụng xampp thì trong thư mục php tại nơi cài đặt xampp). Tìm đến phần:</p>\n<pre class="brush:plain;">\n;;;;;;;;;;;;;;;;;;;;;;;;;\n; Paths and Directories ;\n;;;;;;;;;;;;;;;;;;;;;;;;;\n\n; UNIX: "/path1:/path2"\n;include_path = ".:/php/includes"\n;\n; Windows: "\\path1;\\path2"\ninclude_path = ".;C:\\xampp\\php\\pear\\"</pre>\n<p>\n	Ta sửa biến <strong>include_path</strong> thành như sau:</p>\n<pre class="brush:plain;">\ninclude_path = ".;C:\\xampp\\php\\pear\\;D:\\library\\"</pre>\n<p>\n	Lưu và đóng file lại.</p>\n<p>\n	<strong>Bước 3</strong>: Khởi động lại Apache, xóa hoặc đổi tên thư mục library trong ứng dụng  web để kiểm tra nhé.</p>\n<p>\n	Chúc thành công</p>', 14, '', '168', 0, 'su-dung-includepath-voi-zend-framework', 'Bài viết này sẽ hướng dẫn sử dụng biến include_path trong PHP để chỉ cần sử dụng 1 nguồn ZF cho tất cả ứng dụng web sử dụng Zend trên cùng 1 server', 1, '2012-03-11 08:54:52', 41, 'thanhansoft'),
(15, 'Phân trang với Zend framework updated - How to paging with zend framwork updated', '', '<p>\n	Bài viết hướng dẫn các bạn làm phân trang với Framework zend sử dụng Zend_Paginator_Adapter_Null. Zend_paginator_adapter_null để làm ra mấy cái nút chuyển trang thôi trang thôi chứ chưa có dữ liệu, còn dữ liệu thì chỉ truy xuất kết quả của trang hiện hành nên sẽ ko phải truy xuất tất cả dữ liệu nữa. Đại loại là bạn cần 2 function trong thư mục models của module đó: 1. là đếm tổng số mẫu tin (COUNT(item_id) AS total). 2. Truy vấn mẫu tin ứng với từng trang LiMIT(0, 1234) gì đó.</p>\n<p>\n	<strong>Bước 1</strong>: Tại Controller của module đó bạn làm như sau:</p>\n<pre class="brush:php;">\n&lt;?php\nclass Dashboard_ListPostsController extends GLT_Controller_Action {\n   private $_data;\n   private $_paginator;\n  \n   public function init(){\n      $this-&gt;_data = $this-&gt;_request-&gt;getParams();\n     \n      //paging\n      $this-&gt;_paginator[''itemCountPerPage''] = 15; //so mau tin can phan trang\n        $this-&gt;_paginator[''pageRange''] = 5; //cai nay ko hieu cung ko sao, cu tu tu\n        $this-&gt;_paginator[''currentPage''] = $this-&gt;_request-&gt;getParam(''page'',1);\n      $this-&gt;_data[''paginator''] = $this-&gt;_paginator;\n   }\n     \n   public function indexAction() {\n      $item = new Posts_Model_Posts();\n      $this-&gt;view-&gt;list = $item-&gt;getListItemUser($this-&gt;_data); //Trong day la truy van co limit trong nay\n     \n      //paging\n      $totalItem = $item-&gt;countItemUser($this-&gt;_username); //Dem tong so mau tin o day, vidu: 100 mau tin\n      $paginator = new GLT_Paginator();\n      $this-&gt;view-&gt;paginator = $paginator-&gt;createPaginator($totalItem, $this-&gt;_paginator);\n   }\n}</pre>\n<p>\n	<strong>Bước 2</strong>: Trong thư mục models của Module đó bạn làm 2 function getListItemUser và countItemUser</p>\n<pre class="brush:php;">\n//Back end - Danh sách mẫu tin user\n   public function getListItemUser($user, $data = NULL){      \n      //get paging number\n       $paginator = $data[''paginator''];\n       if ($paginator[''itemCountPerPage'']&gt;0){\n         $page = $paginator[''currentPage''];\n         $rowCount = $paginator[''itemCountPerPage''];\n      }\n     \n       $db = Zend_Registry::get(''connectDb'');\n       $select = $db-&gt;select()-&gt;from($this-&gt;_name, array(''post_id'', ''post_title'', ''post_sort'', ''post_hit'', ''post_enable''))\n                         -&gt;where(''glt_usernames_username =?'', $user)\n                         -&gt;limitPage($page,$rowCount);\n        $result = $db-&gt;fetchAll($select);\n        if(count($result) == 0){\n           $result = ''No record your post!'';\n        }\n        return $result;\n    }\n   //Back end - Đếm tổng số mẫu tin của User\n    public function countItemUser($user){\n       $db = $this-&gt;getAdapter();\n       $select = $db-&gt;select()-&gt;from($this-&gt;_name, array(''count(post_id) as totalItem''))\n                         -&gt;where(''glt_usernames_username =?'', $user);\n      return $db-&gt;fetchOne($select);\n    }</pre>\n<p>\n	<strong>Bước 3</strong>: Trong views của modules đó bạn chèn thêm:</p>\n<pre class="brush:php;">\n&lt;?php echo $this-&gt;paginationControl($this-&gt;paginator, ''Sliding'', ''pagination.phtml'') ?&gt;</pre>\n<p>\n	<strong>Bước 4</strong>: Bạn tạo file pagination.phtml trong thư mục scripts cũa view đó như sau:</p>\n<pre class="brush:php;">\n&lt;?php\n$strPage = '''';\nforeach ( $this-&gt;pagesInRange as $key ) {\n   if ($this-&gt;current == $key) {\n      $strPage .= ''&lt;b class="pagecureent"&gt;'' . $key . ''&lt;/b&gt; '';\n   } else {\n      $strPage .= ''&lt;a class="pagenav" href="''.$this-&gt;url(array(''page'' =&gt; $key)).''"&gt;'' . $key . ''&lt;/a&gt; '';\n   }\n}\n\n//$page = ''Page '' . $this-&gt;current . '' Of '' . $this-&gt;last;\n?&gt;\n   &lt;?php\n        if (isset($this-&gt;previous)){\n            echo ''&lt;a class="pagenav" href="''.$this-&gt;url(array(''page'' =&gt; $this-&gt;first)).''"&gt;Start&lt;/a&gt; '';\n        } \n\n        if (isset($this-&gt;previous)){\n            echo ''&lt;a class="pagenav" href="''.$this-&gt;url(array(''page'' =&gt; $this-&gt;previous)).''"&gt;Previous&lt;/a&gt; '';\n        }\n    ?&gt;\n   &lt;?php echo $strPage;?&gt;\n   &lt;?php\n      if (isset($this-&gt;next)){\n            echo ''&lt;a class="pageactive" href="''.$this-&gt;url(array(''page'' =&gt; $this-&gt;next)).''"&gt;Next&lt;/a&gt; '';\n        }\n\n        if (isset($this-&gt;next)){\n            echo ''&lt;a class="pagenav" href="''.$this-&gt;url(array(''page'' =&gt; $this-&gt;last)).''"&gt;End&lt;/a&gt;'';\n        }\n   ?&gt;</pre>\n<p>\n	Nếu dữ liệu của bạn ok là sẽ ra phân trang rồi đó, vấn đề muốn đẹp thì thêm CSS vào, chèn code này vào file CSS của web bạn thì sẽ nhìn đẹp gái hẳn ra hiện Grouplaptrinh của mình đang đang làm như vậy, chia sẻ cùng các bạn</p>\n<pre class="brush:css;">\n/* paging */\n.pagenav , .pageactive{border: 1px solid #ccc; padding: 2px 5px; color: #036CB4; -moz-border-radius: 2px; -webkit-border-radius: 2px;}\n.pagenav:hover{background: #0066a7}\n.pagecureent{border: 1px solid #ccc; padding: 2px 5px; background:#036CB4; color:#fff; font-weight:bold; -moz-border-radius: 2px; -webkit-border-radius: 2px}</pre>\n<p>\n	Còn muốn css đẹp là lạ hơn nữa thì search với từ khóa "<strong>100CSS3PaginationStyles</strong>" sẽ thấy<br />\n	Chúc vui vẻ - Thanhansoft</p>', 15, '', '15', 0, 'phan-trang-voi-zend-framework-updated-how-to-paging-with-zend-framwork-updated', 'Bài viết hướng dẫn các bạn làm phân trang với Framework zend sử dụng Zend_Paginator_Adapter_Null. Zend framework paging', 1, '2012-03-11 08:59:05', 41, 'thanhansoft'),
(16, 'Phân trang trong Zend framework - How to paging with zend framwork', '', '<p>\n	Đối với các bạn làm việc với ZF có thể tự code paging hoặc có thể dùng Zend Paging của ZF, bài viết sau đây hướng dẫn từng bước các bạn phân trang với ZF</p>\n<p>\n	<strong>Bước 1</strong>: Chúng ta thêm vào Controller đoạn code say đây để lấy ra danh sách record được lấy từ câu lệnh: $record-&gt;listItemabout()</p>\n<pre class="brush:php;">\n$listArticles = $record-&gt;listItemabout();\n          $currentPage = 1;\n          $i = $this-&gt;_getParam(''page'',1);\n          if(!empty($i))\n          {\n              $currentPage = $i;\n          }\n          $paginator = Zend_Paginator::factory($listArticles);\n          $paginator-&gt;setItemCountPerPage(5)\n                    -&gt;setPageRange(5)\n                    -&gt;setCurrentPageNumber($currentPage);\n          $this-&gt;view-&gt;paginator = $paginator;</pre>\n<p>\n	<strong>Bước 2</strong>: Trong view bạn thêm vào code phân trang như sau:</p>\n<pre class="brush:php;">\n&lt;?php\n    $k = 1;\n    foreach($this-&gt;paginator as $value){\n        $rowclass = ($k%2==0) ? '''' : '' class="alt"'';\n        echo ''&lt;tr''.$rowclass.''&gt;\n               &lt;td&gt;&lt;input type="checkbox" name="ids[]" value="" /&gt;&lt;/td&gt;\n               &lt;td&gt;&lt;b&gt;''.$value[''title''.LANG].''&lt;/b&gt;&lt;/td&gt;\n               &lt;td&gt;''.date(''d-m-Y'', strtotime($value[''posted_date''])).''&lt;/td&gt;\n               &lt;td&gt;''.$value[''hits''].''&lt;/td&gt;\n               &lt;td&gt;&lt;a href="edit/job" title="Chinh sua"&gt;Edit&lt;/a&gt;&lt;/td&gt;\n            &lt;/tr&gt;'';\n        $k++;\n    }\n?&gt;\n&lt;?php echo  $this-&gt;paginationControl($this-&gt;paginator, ''Sliding'', ''paging.phtml''); ?&gt;</pre>\n<p>\n	<strong>Bước 3</strong>: Một file paging.phtml đặt trong view/scripts với nội dung:</p>\n<pre class="brush:php;">\n&lt;div class="pagination" style="width:100%"&gt;\n    &lt;div style="float:center;width:28%"&gt;\n    &lt;/div&gt;\n    &lt;div style="float:center;width:70%;"&gt;\n        &lt;!-- First page link --&gt;\n        &lt;?php if (isset($this-&gt;previous)): ?&gt;\n              &lt;a href="&lt;?php echo  $this-&gt;url(array(''page'' =&gt; $this-&gt;first)); ?&gt;"&gt;Start&lt;/a&gt;\n        &lt;?php else: ?&gt;\n                &lt;span class=""&gt;&lt;a href="#"&gt;start&lt;/a&gt;&lt;/span&gt;\n        &lt;?php endif; ?&gt;\n   \n        &lt;!-- Previous page link --&gt;\n   \n        &lt;?php if (isset($this-&gt;previous)): ?&gt;\n              &lt;a href="&lt;?php echo  $this-&gt;url(array(''page'' =&gt; $this-&gt;previous)); ?&gt;"&gt;&amp;lt; Previous&lt;/a&gt;\n        &lt;?php else: ?&gt;\n            &lt;span class=""&gt;&lt;a href="#"&gt; Previous &lt;/a&gt;&lt;/span&gt;\n        &lt;?php endif; ?&gt;\n        &lt;!-- Numbered page links --&gt;\n        &lt;?php foreach ($this-&gt;pagesInRange as $page): ?&gt;\n            &lt;?php if ($page != $this-&gt;current): ?&gt;\n                &lt;a href="&lt;?php echo  $this-&gt;url(array(''page'' =&gt; $page)); ?&gt;"&gt;&lt;?php echo $page; ?&gt;&lt;/a&gt;\n            &lt;?php else: ?&gt;\n                &lt;div class = "current"&gt;&lt;a href="#"&gt;&lt;?php echo  $page; ?&gt;&lt;/a&gt;&lt;/div&gt;\n            &lt;?php endif; ?&gt;\n        &lt;?php endforeach; ?&gt;\n        &lt;!-- Next page link --&gt;\n        &lt;?php if (isset($this-&gt;next)): ?&gt;\n               &lt;a href="&lt;?php echo $this-&gt;url(array(''page'' =&gt; $this-&gt;next)); ?&gt;"&gt;Next &amp;gt;&lt;/a&gt;\n        &lt;?php else: ?&gt;\n             &lt;span class=""&gt;&lt;a href="#"&gt;Next&lt;/a&gt;&lt;/span&gt;\n        &lt;?php endif; ?&gt;\n        &lt;!-- Last page link --&gt;\n        &lt;?php if (isset($this-&gt;next)): ?&gt;\n              &lt;a href="&lt;?php echo $this-&gt;url(array(''page'' =&gt; $this-&gt;last)); ?&gt;"&gt;End&lt;/a&gt;\n        &lt;?php else: ?&gt;\n            &lt;span class=""&gt;&lt;a href="#"&gt;End&lt;/a&gt;&lt;/span&gt;\n        &lt;?php endif; ?&gt;\n         Page &lt;?php echo  $this-&gt;current; ?&gt; of &lt;?php echo  $this-&gt;last; ?&gt;\n    &lt;/div&gt;\n&lt;/div&gt;</pre>', 16, '', '192', 0, 'phan-trang-trong-zend-framework-how-to-paging-with-zend-framwork', '', 1, '2012-03-11 09:01:54', 41, 'thanhansoft');
INSERT INTO `hoiit_posts` (`post_id`, `post_title`, `post_img`, `post_detail`, `post_sort`, `post_demo`, `post_hit`, `post_type`, `post_link`, `post_description`, `post_enable`, `post_create`, `hoiit_cats_cat_id`, `hoiit_usernames_username`) VALUES
(17, 'Sử dụng Flash Messenger trong Zend framework', '', '<p>\n	FlashMessenger là một helper cho phép bạn lưu trữ tin nhắn giữa các yêu cầu. Việc sử dụng phổ biến nhất mà tôi đã cho nó là cho một tin nhắn "cứu" sau khi thực hiện một sửa đổi của một mục mà sau đó đổi hướng quay trở lại danh sách.</p>\n<p>\n	<strong>Bước 1</strong>: Khai báo trong Controller như sau:</p>\n<pre class="brush:php;">\n$this-&gt;_helper-&gt;flashMessenger-&gt;addMessage(''Task saved'');\n$this-&gt;_helper-&gt;flashMessenger-&gt;addMessage(''s Task saved as'');\n$this-&gt;_helper-&gt;flashMessenger-&gt;addMessage(''s Task saved s as'');\n$this-&gt;view-&gt;messages = $this-&gt;_helper-&gt;flashMessenger-&gt;getMessages();</pre>\n<p>\n	<strong>Bước 2</strong>: Flashmessenger là 1 mảng nên bạn cần in ra như sau:</p>\n<pre class="brush:php;">\n&lt;?php if (count($this-&gt;messages)) : ?&gt;\n&lt;ul id="messages"&gt;\n&lt;?php foreach ($this-&gt;messages as $message) : ?&gt;\n    &lt;li&gt;&lt;?php echo $this-&gt;escape($message); ?&gt;&lt;/li&gt;\n&lt;?php endforeach; ?&gt;\n&lt;/div&gt;\n&lt;?php endif; ?&gt;</pre>\n<p>\n	 </p>', 17, '', '190', 0, 'su-dung-flash-messenger-trong-zend-framework', 'FlashMessenger là một helper cho phép bạn lưu trữ tin nhắn giữa các yêu cầu. Việc sử dụng phổ biến nhất mà tôi đã cho nó là cho một tin nhắn "cứu" sau khi thực hiện một sửa đổi của một mục mà sau đó đổi hướng quay trở lại danh sách', 1, '2012-03-12 11:30:59', 41, 'thanhansoft'),
(18, 'Gởi mail smtp google bằng Zend Mail - Send smtp google mail using Zend Mail', '', '<p>\n	Các bài viết send mail trước mình đã hướng dẫn các bạn sử dụng phpmailer để cấu hình gởi mail, đoạn code dưới đây sẽ cung cấp cho bạn 1 lựa chọn nữa là gơi mail bằng thư viên Zend mail của Zend framwork</p>\n<pre class="brush:php;">\n$connmail = new Zend_Mail_Transport_Smtp ( ''smtp.gmail.com'', array (''auth'' =&gt; ''login'', ''username'' =&gt; ''info@grouplaptrinh.com'', ''password'' =&gt; ''123Ma'', ''ssl'' =&gt; ''ssl'', ''port'' =&gt; 465 ) );\nZend_Mail::setDefaultTransport ( $connmail );\n$mail = new Zend_Mail ( ''UTF-8'' );\n$mail-&gt;setBodyHtml ( ''noi dung'' );\n$mail-&gt;addTo ( ''thanhansoft@gmail.com'' );\n$mail-&gt;setSubject ( ''tieu de'' );\n$mail-&gt;setFrom ( ''info@grouplaptrinh.com'');\n$mail-&gt;send ();</pre>\n<p>\n	Bạn hãy thay thông số tài khoản gởi mail, tài khoản nhận mail và set email gởi</p>', 18, '', '14', 0, 'goi-mail-smtp-google-bang-zend-mail-send-smtp-google-mail-using-zend-mail', 'Các bài viết send mail trước mình đã hướng dẫn các bạn sử dụng phpmailer để cấu hình gởi mail, đoạn code dưới đây sẽ cung cấp cho bạn 1 lựa chọn nữa là gơi mail bằng thư viên Zend mail của Zend framwork', 1, '2012-03-12 11:32:55', 41, 'thanhansoft'),
(19, 'Hướng dẫn sử dụng Zend Cache - Zend framework', '', '<p>\n	Cache trong web đóng vai trò là bộ nhớ đệm, nơi lưu trữ dữ liệu các biến, nằm trên 1 thư mục nào đó. Nếu chúng ta dùng cache sẽ giúp cho web chạy nhanh hơn, hạn chế truy xuất CSDL</p>\n<p>\n	Nhưng đừng vì muốn web nhanh quá mà chạy thả ga nhé. Nếu web bạn thuộc dạng 1 chiều nghĩa là chỉ có Administrator (Quản lý web) đăng bài viết thì nên dùng cache trong tất cả trường hợp. Nếu 2 chiều tương tác user, đăng bài viết thì dùng cache trong một số vùng cần thiết. Vì khi cache còn hiệu lực thì bạn F5 nó cũng ko thấy thay đổi gì cả, đơn giản vậy thôi</p>\n<p>\n	<strong>Code 1</strong>: Khai báo trong Controller, và tạo folder tên cache trong application</p>\n<pre class="brush:php;">\npublic function indexAction() {\n$cache = $this-&gt;loadCache();\nif (!($result = $cache-&gt;load(''all''))) {\n  $cat = new Default_Model_category();\n  $result = $this-&gt;view-&gt;cat = $cat-&gt;fetchAll();\n  $cache-&gt;save($result, ''all'');\n} \n}\nprivate function loadCache() {\n$frontendOptions = array(''lifetime'' =&gt; 7200, // cache lifetime of 2 hours\n        ''automatic_serialization'' =&gt; true);\n$backendOptions = array(''cache_dir'' =&gt; APPLICATION_PATH . ''/cache/''); // getting a Zend_Cache_Core object\nreturn Zend_Cache::factory(''Core'', ''File'', $frontendOptions, $backendOptions);\n}</pre>\n<p>\n	<strong>Code 2</strong>: Nâng cấp cho dễ dàng 1 tí, chúng ta sẽ cho function <strong>loadCache()</strong> vào 1 thư viên mở rộng, sau đó gọi nó lên.</p>\n<p>\n	Tạo 1 file trong thư mục mở rộng Cache.php</p>\n<pre class="brush:php;">\n&lt;?php\nclass GLT_Cache{\npublic function loadCache() {\n        $frontendOptions = array(''lifetime'' =&gt; 7200, // cache lifetime of 2 hours\n                  ''automatic_serialization'' =&gt; true);\n        $backendOptions = array(''cache_dir'' =&gt; APPLICATION_PATH . ''/cache/''); // getting a Zend_Cache_Core object\n        return Zend_Cache::factory(''Core'', ''File'', $frontendOptions, $backendOptions);\n    }\n}</pre>\n<p>\n	Nơi nào bạn cần sử dụng thì gọi nó lên như sau:</p>\n<pre class="brush:php;">\n$loadcache = new GLT_Cache();\n$cache = $loadcache-&gt;loadCache();\n\nif (!($result = $cache-&gt;load(''all''))) {\n$result = array(''noidung'');\n$cache-&gt;save($result, ''all'');\n}\nreturn $result;</pre>\n<p>\n	 </p>', 19, '', '14', 0, 'huong-dan-su-dung-zend-cache-zend-framework', 'Cache trong web đóng vai trò là bộ nhớ đệm, nơi lưu trữ dữ liệu các biến, nằm trên 1 thư mục nào đó. Nếu chúng ta dùng cache sẽ giúp cho web chạy nhanh hơn, hạn chế truy xuất CSDL', 1, '2012-03-12 11:35:17', 41, 'thanhansoft'),
(20, 'Upload file and resize image with Zend framework', '', '<p>\n	Chào các thành viên Group lập trình php,<br />\n	Đối với các bạn làm viên với Zend framework thì phải thông qua viec upload file ảnh và resize ảnh đó. Khi bắt đầu tìm hiểu mình đã vướng phải phần này, tìm tài liệu hướng dẫn về nó thì không có chỉ thấy dùng phpthumb, cái này thì host của mỉnh lại lúc hiện lúc không. Thấy không ổn nên chế ra code này.</p>\n<p>\n	<strong>Bước 1</strong>: Tại thư viên mở rộng bạn tạo 1 folder tên File và đặt 2 file Images.php và Upload.php. 2 file đó bạn vui lòng download đính kèm trong bài viết</p>\n<p>\n	<strong>Bước 2</strong>: Khi bạn sumbit 1 form có chưa file upload, mình sẽ kiểm tra xem file upload đó có chứa file hay không, nếu định dạng đúng là file ảnh, dung lượng hợp lý, đường dẫn thư mục tồn tại thì sẽ thực hiện việc upload và resize</p>\n<p>\n	Resize ở đây quy định chiều ngang và chiều cao, nếu hình ảnh bạn upload vượt quá chiều ngang hoặc chiều cao quy định sẽ resize, đây là 1 resize thanhansoft hay dùng trong các ứng dụng web</p>\n<p>\n	Để thực hiện việc upload bạn chỉ cần dùng code sau để gọi 2 file thư viên trên</p>\n<pre class="brush:php;">\n$filename = null;\nif (!empty($_FILES[''file''][''name''])){\n$upload = new GLT_File_Upload();\n$upload-&gt;upload($_FILES[''file''], 200, 120, 2000, PUBLIC_PATH.''/userfiles/images/services/'');\n\nif($upload-&gt;isVail() == false){\n  $filename = $upload-&gt;transferFile(); //upload file\n}else{\n  print_r($upload-&gt;_errors);\n}\n}</pre>\n<p>\n	File sau khi upload sẽ được move vào folder /userfiles/images/services/. Nhưng bạn lưu ý trong code đó file upload nếu có dấu hoac ký tự lạ đã được lọc thành không dấu. Nếu bạn muốn không sử dụng chức năng nó thì comment code</p>\n<pre class="brush:php;">\n$this-&gt;_fileName = $this-&gt;fileNoneUnicode($file_name);</pre>\n<p>\n	và thay bằng</p>\n<pre class="brush:php;">\n$this-&gt;_fileName = $file_name;</pre>\n<p>\n	Nếu bạn muốn dùng hàm fileNoneUnicode thì hãy tìm bài viết "tách chuỗi có dầu thành không dấu thanhansoft grouplaptrinh" bạn sẽ tích hợp vào nha</p>\n<p>\n	Test thử xem nhé. Chúc thành công</p>', 20, '', '11', 0, 'upload-file-and-resize-image-with-zend-framework', 'Đối với các bạn làm viên với Zend framework thì phải thông qua viec upload file ảnh và resize ảnh đó. Khi bắt đầu tìm hiểu mình đã vướng phải phần này', 1, '2012-03-12 11:37:52', 41, 'thanhansoft'),
(21, 'Phòng chống XSS với HTML Purifier ZF - Preventing XSS with Zend framework', '', '<p>\n	Cross-Site Scripting (XSS) là một trong những kĩ thuật tấn công phổ biến nhất hiên nay, đồng thời nó cũng là một trong những vấn đề bảo mật quan trọng đối với các nhà phát triển web và cả những người sử dụng web. Bất kì một website nào cho phép người sử dụng đăng thông tin mà không có sự kiểm tra chặt chẽ các đoạn mã nguy hiểm thì đều có thể tiềm ẩn các lỗi XSS</p>\n<p>\n	XSS thường sử dụng javascript để gây hại, có thể gắn 1 link dùng lấy cắp Cookie thường thì các hacker sẽ không đơn thuần gắn đoạn code &lt;script&gt;&lt;/script&gt; đó, mà sẽ là 1 chuỗi ngoằn ngèo nhưng nó vẫn là 1 javascript. Bạn có thể tạo 1 file html và paste code được cung cấp dưới đây, xem html chạy những gì nhé http://ha.ckers.org/xss.html<br />\n	Bạn có thể tìm các bài xung quanh chuyên XSS này, bạn có thể sử dụng htmlspecialchars(), sau đó dùng html_entity_decode() để giải mã lại, ở đây thanhansoft giới thiệu các bạn đang sử dụng framework zend sử dụng thư viện HTML Purifier để lọc các ký tự đặc biệt gây hại cho web</p>\n<p>\n	<strong>Bước 1</strong>: Bạn giải nén và Copy thư viên HTMLPurifier vào thư mục library của Zend</p>\n<p>\n	<strong>Bước 2</strong>: Mở file application.ini thêm đoạn code khai báo thư viện HTMLPurifier</p>\n<pre class="brush:php;">\nautoloaderNamespaces[] = "HTMLPurifier_"</pre>\n<p class="brush:php;">\n	<strong>Bước 3</strong>: Thêm function sau vào file Bootstrap.php của thư mục application</p>\n<pre class="brush:php;">\npublic function _initFilter(){\n        HTMLPurifier_Bootstrap::registerAutoload();\n        $config = HTMLPurifier_Config::createDefault();\n        $config-&gt;set(''Attr.EnableID'',true);\n        $config-&gt;set(''HTML.Strict'',true);\n        Zend_Registry::set(''purifier'',new HTMLPurifier($config));\n    }</pre>\n<p>\n	<strong>Bước 4</strong>: Bạn có thể bắt đầu sử dụng bộ lọc XSS của HTMLPurifier rồi đó. ví dụ: trong indexAction bạn gọi nó như sau:</p>\n<p>\n	 </p>\n<pre class="brush:php;">\npublic function indexAction(){\n        $this-&gt;view-&gt;purifier = Zend_Registry::get(''purifier'');\n    }</pre>\n<p>\n	Trong view index.phtml bạn gọi nó như sau:</p>\n<p>\n	HTML Text Filtering!</p>\n<p>\n	 </p>\n<pre class="brush:php;">\n&lt;?= $this-&gt;purifier-&gt;purify(''&lt;script&gt;alert("a");&lt;/script&gt;''); ?&gt;</pre>\n<p>\n	Hoàn tất rồi đó, hãy paste những code xss nguy hiểm được cung cấp tại http://ha.ckers.org/xss.html Coi trước và sau khi phòng chống nhé. Download file đính kèm của ví dụ này<br />\n	Chúc thành công - thanhansoft</p>', 21, '', '192', 0, 'phong-chong-xss-voi-html-purifier-zf-preventing-xss-with-zend-framework', 'Cross-Site Scripting (XSS) là một trong những kĩ thuật tấn công phổ biến nhất hiên nay, đồng thời nó cũng là một trong những vấn đề bảo mật quan trọng đối với các nhà phát triển web và cả những người sử dụng web', 1, '2012-03-12 11:39:50', 41, 'thanhansoft'),
(22, 'Upload tập tin sử dụng phương thức lập trình hướng đối tượng', '', '<p>\n	Trước tiên Tạo 1 PHP Project tên là OOP, xong  tạo 1 Folder tên là upload, trong Foder upload tạo tiếp 1 Foder tên class, trong class tạo 1 foder images, và 3 tập tin php, lần lượt tên, upload.php  , upload.class.php ,  process.php</p>\n<p>\n	File <strong>upload.php</strong></p>\n<pre class="brush:xml;">\n&lt;html xmlns="http://www.w3.org/1999/xhtml"&gt;\n	&lt;head&gt;\n		&lt;meta http-equiv="Content-Type" content="text/html; charset=utf-8" /&gt;\n		&lt;title&gt;Upload Form&lt;/title&gt;\n	&lt;/head&gt;\n	&lt;body&gt;\n		&lt;h1&gt;Upload hình ảnh&lt;/h1&gt;\n		&lt;form id="myform" name="form" method="post" enctype="multipart/form-data"  action="process.php"&gt;\n			&lt;input type="file" name="upload" id="upload"&gt;&lt;/input&gt;\n			&lt;br/&gt;\n			&lt;input type="submit" name="button" id="button" value="Submit"&gt;&lt;/input&gt;\n		&lt;/form&gt;\n	&lt;/body&gt;\n&lt;/html&gt;</pre>\n<p>\n	File <strong>proces.php</strong> xử lý file upload.php</p>\n<pre class="brush:php;">\n&lt;?php\n	require_once ''upload.class.php'';\n	if(!empty($_POST)){\n		$upload =new Upload(''upload'');//khoi tao doi tuong, ham up load yeu cau filename, chinh la ten input "upload"\n		$upload-&gt;setFileExtension(''gif|jpg|png'');//3 duoi gif|jpg|png\n		$upload-&gt;setFileSize(100);//kiem tra size ko vuot hon 100kb\n		$upload-&gt;setUploadDir(''images/'');\n		//kiem tra truoc khi upload\n	if($upload-&gt;isVail()==false){\n		$upload-&gt;upload(true);\n	}else{\n		echo "&lt;pre&gt;";\n		print_r($upload-&gt;_errors);\n		echo "&lt;/pre&gt;";\n	}\n}</pre>\n<p>\n	File <strong>upload.class.php</strong></p>\n<pre class="brush:php;">\n&lt;?php\n	class Upload{\n	//bien luu tru ten tap tin upload\n	var $_fileName;\n\n	//bien luu tru kich thuoc cua tap tin upload\n	var $_fileSize;\n\n	//Bien luu tru phan mo rong cua tap tin upload\n	var $_fileExtentsion;\n\n	//bien luu tru duong dan cua thu muc tap tin upload\n	var $_fileTmp;\n\n	//bien luu truong duong dan tren server cua tap tin upload\n	var $_uploadDir;\n\n	//bien luu tru error\n	var $_errors;\n\n	//Phuong thuc khoi tao doi tuong\n	function __construct($file_name){\n	  $fileInfon = $_FILES[$file_name];\n	  $this-&gt;_fileName = $fileInfon[''name''];\n	  $this-&gt;_fileSize = $fileInfon[''size''];\n	  $this-&gt;_fileExtentsion = $this-&gt;getFileExtension();\n	  $this-&gt;_fileTmp = $fileInfon[''tmp_name''];\n\n	}\n\n	//phuong thuc lay thanh phan mo rong cua tap tin upload\n	function getFileExtension(){\n	  $subject = $this-&gt;_fileName;\n	  $pattern = ''#\\.([^\\.]+)$#i'';\n\n	  preg_match($pattern, $subject,$matches);\n	  return $matches[1];\n\n	}\n\n	//phuong thuc thiet lap thanh phan mo rong duoc phep upload\n	//param string (ex; gif|ipg|png) day la tham so ta se truyen vao\n	function setFileExtension($value){\n	  $subject = $this-&gt;_fileExtentsion; //se co gia tri la Jpg\n	  $pattern = ''#(''. $value . '')#i'';\n	  if(preg_match($pattern, $subject)!==1){\n	   $this-&gt;_errors[] = ''phan mo rong ko phu hop'';\n	  }\n	}\n\n	//phuong thuc thiet lap kich thuoc toi da duoc phep upload\n	//param in (ex: 100=100kb)\n	function  setFileSize($value){\n	  $size = $value * 1024;\n	  if($this-&gt;_fileSize &gt; $size){\n	   $this-&gt;_errors[] = ''Kich thuoc nay khong phu hop voi yeu cau'';\n	  }\n	}\n\n	//phuong thuc thiet lap thu muc chua tap tin tren sever\n	//param string (ex :images/)\n	function setUploadDir($value){\n	  if(file_exists($value)){\n	   $this-&gt;_uploadDir = $value;//neu no ton tai thi gan no vao thuoc tinh Dir\n	  }else{\n	   $this-&gt;_errors[] = ''thu muc khong he ton tai'';\n	  }\n	}\n\n	//Phuong thuc kiem tra setFileExtension hop voi setFileSize hay ko\n	//Phuong thuc isVail de kiem tra tap tin cho truoc co phu hop hay ko\n	function isVail(){\n	  $flagErr = false;\n	  if(count($this-&gt;_errors)&gt;0){\n	   $flagErr = true;\n	  }\n	  return $flagErr;\n	}\n\n	//phuong thuc upload tap tin\n	//trong phuong thuc Upload ta su dung ham copy\n	function upload($rename = false, $prefix = ''file_''){\n	  if($rename == false){\n	   $source = $this-&gt;_fileTmp;\n	   $dest = $this-&gt;_uploadDir .$this-&gt;_fileName;\n	  }else {\n	   $source = $this-&gt;_fileTmp;\n	   $dest = $this-&gt;_uploadDir . $prefix .time() . ''.'' . $this-&gt;_fileExtentsion;\n	  }\n	  copy($source, $dest);\n\n	}\n}</pre>\n<p>\n	Chúc thành công</p>', 22, '', '196', 0, 'upload-tap-tin-su-dung-phuong-thuc-lap-trinh-huong-doi-tuong', '', 1, '2012-03-12 11:43:26', 41, 'thanhansoft'),
(23, 'Tối ưu Zend framework - Zend Framework - Optimization Tips', '', '<p>\n	This tip is not new. It is taken directly from the Zend Framework Documentation at: Zend Framework Performance Guide and I used what was written with few things I’ve skip</p>\n<h3>\n	1. Use Zend_Loader and Remove All require_once</h3>\n<p>\n	We can’t actually remove all require_once statements. We must have at least one require_once to load the Zend_Loader. First, activate Zend Loader.</p>\n<pre class="brush:php;">\nrequire_once ''Zend/Loader.php'';\nZend_Loader::registerAutoload();</pre>\n<h3>\n	2. Cache Zend_Db_Table MetaData with Zend_Cache</h3>\n<p>\n	When you are using Zend_Db_Table (I sometimes only used Zend_Db) you will notice that when you try to retrieve data from the database, the first query called is to DESCRIBE the table. Zend_Db_Table uses the information on DESCRIBE query to do its magic on SELECT.</p>\n<p>\n	As I have profiled my queries, I noticed that DESCRIBE query is the longest query (in most cases) which mean a big overhead over you retrieval operation. You have two options:</p>\n<ul><li>\n		Don’t use Zend_Db_Table (go for Zend_Db)</li>\n	<li>\n		Cache the MetaData</li>\n</ul><p>\n	On this post, I’ll use the caching of MetaData. On your bootstrap file, put this piece of code:</p>\n<pre class="brush:php;">\n//Caching\n$frontendOptions = array(\n      ''lifetime''     =&gt; 25200,\n         ''automatic_serialization'' =&gt; true\n         );\n$backendOptions  = array(\n          ''cache_dir''                =&gt; APPLICATION_PATH . ''/tmp''\n         );\n$cache = Zend_Cache::factory(\n      ''Core'',\n                     ''File'',\n                     $frontendOptions,\n                     $backendOptions\n                     );\n//Cache table metadata\nZend_Db_Table_Abstract::setDefaultMetadataCache($cache);</pre>\n<p>\n	The code simply instructs Zend_Db_Table_Abstract to cache the result of DESCRIBE statement so that next time you retrieve data, the cache is used instead of repeatedly describing tables over and over again.</p>\n<p>\n	(But I noticed that INSERT and UPDATE statements don’t have DESCRIBE…)</p>\n<p>\n	After several tries with this caching, you will see files on the tmp folder like this: zend_cache—internal-metadatas—5e7576e3cd79114d46850714e998a3b0.</p>\n<p>\n	Still there is an overhead on reading the cache file. If you want better caching, use memory based caching like MemCache.</p>\n<h3>\n	3. Cache Plugin Loader Class File</h3>\n<p>\n	When using a plugin, Zend Framework includes several files depending on the plugin used and process several iterations to find the right plugin and include it. With code code below, it creates a list of include_once statements to include those plugin files. Just include this piece of code to your bootstrap.</p>\n<pre class="brush:php;">\n//Plugin Loader caching\n$classFileIncCache = APPLICATION_PATH .  ''/data/pluginLoaderCache.php'';\nif (file_exists($classFileIncCache)) {\n     include_once $classFileIncCache;\n}\nZend_Loader_PluginLoader::setIncludeFileCache($classFileIncCache);</pre>\n<h3>\n	4. Caching Your Data</h3>\n<p>\n	Caching your data will be the most important part of optimization which will save you a lot of database access when repeatedly accessed data are already cache. It is important to set the cache expiration time and also clear the cache when data changes. A simple caching is shown below.</p>\n<p>\n	On your bootstrap:</p>\n<pre class="brush:php;">\n//Caching\n$frontendOptions = array(\n      ''lifetime''     =&gt; 25200,\n         ''automatic_serialization'' =&gt; true\n         );\n$backendOptions  = array(\n          ''cache_dir''                =&gt; APPLICATION_PATH . ''/tmp''\n         );\n$cache = Zend_Cache::factory(\n      ''Core'',\n                     ''File'',\n                     $frontendOptions,\n                     $backendOptions\n                     );\n\n$registry-&gt;set(''cache'', $dbCache);</pre>\n<p>\n	It creates a cache object with specified expiration time in seconds. Then it puts the cache object to the registry so that you can access them on any part of the project.</p>\n<p>\n	We can apply caching heavily on models. The code below demonstrates how to cache the database result. First it gets the data from the cache. If data exists in cache, return it, otherwise get the data from the database, cache it and return it.</p>\n<pre class="brush:php;">\npublic function getAll()\n{\n  $ret = null;\n  $cache = Zend_Registry::get(''cache'');\n  $result = $cache-&gt;load(md5(''TEST_GETALL''));\n  if(!$result)\n  {\n   $table = $this-&gt;_getTable();\n\n   $res = $table-&gt;fetchAll();\n   if ($res)\n   {\n    $ret = $res-&gt;toArray();\n    $cache-&gt;save($ret, md5(''TEST_GETALL''));\n    return $ret;\n   }\n  }\n  else\n  {\n   return $result;\n  }\n  return false;\n}</pre>\n<p>\n	You noticed that the cache ID is a hashed version of ‘TEST_GETALL’. I applied md5 hashing on the cache ID for security reasons. The important part of that codes are:</p>\n<p>\n	$cache-&gt;load() and $cache-&gt;save()</p>\n<p>\n	If it is time to clear the cached data (when data changed), the code will be like below:</p>\n<pre class="brush:php;">\npublic function clearGetAllCache()\n{\n  $cache = Zend_Registry::get(''cache'')-&gt;remove(md5(''TEST_GETALL''));\n}</pre>\n<p>\n	I make it a separate function so that I can call it anywhere in the class like in ADD, EDIT or DELETE processes.</p>\n<p>\n	Source: <a href="http://blog.lysender.com/2009/03/zend-framework-optimization-tips">http://blog.lysender.com/2009/03/zend-framework-optimization-tips</a></p>', 23, '', '20', 0, 'toi-uu-zend-framework-zend-framework-optimization-tips', '', 1, '2012-03-12 15:41:24', 41, 'thanhansoft'),
(24, 'Nhớ mật khẩu trong Zend framework - Implementing "Remember Me" Functionality in Zend frame', '', '<p>\n	A common feature of web sites where users can log in is the ability to be automatically logged-in when the user next visits the web site.</p>\n<p>\n	By default, PHP sessions use session cookies, which are cookies that the web browser stores in memory while the browser is running, and destroyed when the browser is exited.</p>\n<p>\n	To implement "remember me" functionality, you must change the lifetime of the session cookie so it is not destroyed when the user closes their browser. Zend_Session makes this easy to do.</p>\n<p>\n	Additionally, your PHP installation will also periodically delete session cookies after the time specified in the PHP configuration. If this occurs to soon, it doesn''t matter whether the user''s browser has remember their session ID – the session data will no longer be saved on the server!</p>\n<p>\n	Extending the Session Cookie Lifetime</p>\n<p>\n	To make the browser session cookie stay alive when users close their browser, use the Zend_Session::rememberMe() static method. This method takes an optional single argument, which is the number of seconds before the cookie will expire. If no value is specified then a default of two weeks is used.</p>\n<p>\n	Listing 7 demonstrates how to use this function. You should call rememberMe() before performing any other session-related activity. Typically this would appear in your global bootstrapping script.</p>\n<pre class="brush:php;">\n&lt;?php\n    require_once(''Zend/Session.php'');\n\n    $seconds = 60 * 60 * 24 * 7; // 7 days\n    Zend_Session::rememberMe($seconds);\n\n    // now the session cookie won''t be deleted\n    // when the browser is closed\n?&gt;</pre>\n<p>\n	The forgetMe() function is the opposite of rememberMe() - it changes the session cookie so it will be removed when the browser is closed.</p>\n<p>\n	Increasing the PHP Session Garbage Collection Time</p>\n<p>\n	Every time a new session is created, a new file is written to the server to hold the session data. Over time this can result in a large number of files. To combat this, PHP has a garbage collection system that automatically deletes untouched session files (files that haven''t been updated) after a specified amount of time. By default this time is 24 minutes (1440 seconds).</p>\n<p>\n	If the garbage collection time is too low then extending the length of the session cookie will have no effect, since the session data will no longer be stored on the server. To deal with this, you must ensure the PHP session.gc_maxlifetime setting is at least the same value as the value passed to rememberMe().</p>\n<p>\n	In the previous listing, we used a value of 7 days (604800 seconds). In your PHP configuration (either in php.ini file, your Apache httpd.conf file, or in a .htaccess file), use the setting in Listing 8.</p>\n<pre class="brush:php;">\nphp_value session.gc_maxlifetime 604800</pre>\n<p>\n	Caution: Ensure your sessions are written to a different filesystem location than for other web sites, since another site will likely use the lower garbage collection time, thereby resulting in your sessions being cleaned-up anyway.</p>\n<p>\n	You must be aware though that increasing the garbage collection time will result in a much larger number of session files stored at any one time. You should monitor your server after making this change to ensure not too much space is used.</p>\n<p>\n	An Example of Implementing "Remember Me"</p>\n<p>\n	Now that you know how to implement "remember me" functionality, let''s look at a solid example. Many sites that offer this functionality ask the user if they want to be remembered. This example will offer that also.</p>\n<p>\n	below shows the form you might use for logging in. This form consists of inputs for username and password, as well as the option to remember the user and a submit button.</p>\n<pre class="brush:xml;">\n&lt;form method="post" action="login.php"&gt;\n    &lt;div&gt;\n        Username:\n        &lt;input type="text" name="username" /&gt;\n\n        Password:\n        &lt;input type="password" name="password" /&gt;\n        &lt;label&gt;\n            &lt;input type="checkbox" name="remember" value="1" /&gt;\n            Remember Me\n        &lt;/label&gt;\n\n        &lt;input type="submit" value="Log In" /&gt;\n    &lt;div&gt;\n&lt;/form&gt;</pre>\n<p>\n	Next we process this form, as shown in Listing 10. We''ll skip the details here for authenticating a user by using a fictional log_in_user() function. If the user successfully logs in, we then check whether or not they want to be remembered. If they do, we call rememberMe(), otherwise we call forgetMe().</p>\n<p>\n	Note: Technically you probably don''t need to call forgetMe() since the default PHP setting is to expire the cookie on browser close anyway.</p>\n<p>\n	This code is based on the code in Listing 3.</p>\n<pre class="brush:php;">\n&lt;?php\n    $username = $_POST[''username''];\n    $password = $_POST[''password''];\n\n    if (log_in_user($username, $password)) {\n        require_once(''Zend/Session.php'');\n\n        $remember = isset($_POST[''remember'']) &amp;&amp; $_POST[''remember''];\n        $seconds  = 60 * 60 * 24 * 7; // 7 days\n\n        if ($remember) {\n            Zend_Session::RememberMe($seconds);\n        }\n        else {\n            Zend_Session::ForgetMe();\n        }\n\n        $session = new Zend_Session_Namespace(''identity'');\n        $session-&gt;username = $username;\n\n        header(''Location: members.php'');\n        exit;\n    }\n    else {\n        // some error message for invalid login\n    }\n?&gt;</pre>\n<p>\n	Source: <a href="http://phpriot.com/articles/zend-session/5">http://phpriot.com/articles/zend-session/5</a></p>', 24, '', '188', 0, 'nho-mat-khau-trong-zend-framework-implementing-remember-me-functionality-in-zend-frame', '', 1, '2012-03-12 15:44:56', 41, 'thanhansoft');

-- --------------------------------------------------------

--
-- Table structure for table `hoiit_provinces`
--

CREATE TABLE IF NOT EXISTS `hoiit_provinces` (
  `province_id` int(11) NOT NULL AUTO_INCREMENT,
  `province_name` varchar(45) NOT NULL,
  `hoiit_nationals_national_id` varchar(3) NOT NULL,
  PRIMARY KEY (`province_id`),
  KEY `fk_hoiit_provinces_hoiit_nationals` (`hoiit_nationals_national_id`)
) ENGINE=InnoDB  DEFAULT CHARSET=utf8 AUTO_INCREMENT=64 ;

--
-- Dumping data for table `hoiit_provinces`
--

INSERT INTO `hoiit_provinces` (`province_id`, `province_name`, `hoiit_nationals_national_id`) VALUES
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
-- Table structure for table `hoiit_templates`
--

CREATE TABLE IF NOT EXISTS `hoiit_templates` (
  `template_id` varchar(6) NOT NULL,
  `template_name` varchar(45) NOT NULL,
  PRIMARY KEY (`template_id`)
) ENGINE=InnoDB DEFAULT CHARSET=utf8;

--
-- Dumping data for table `hoiit_templates`
--

INSERT INTO `hoiit_templates` (`template_id`, `template_name`) VALUES
('111111', '111111');

-- --------------------------------------------------------

--
-- Table structure for table `hoiit_usernames`
--

CREATE TABLE IF NOT EXISTS `hoiit_usernames` (
  `username` varchar(40) NOT NULL,
  `email` varchar(45) NOT NULL,
  `password` varchar(45) NOT NULL,
  `picture` varchar(60) DEFAULT NULL,
  `detail` varchar(1000) DEFAULT NULL,
  `phone` varchar(45) DEFAULT NULL,
  `yahoo` varchar(45) DEFAULT NULL,
  `skype` varchar(45) DEFAULT NULL,
  `parent` varchar(40) DEFAULT NULL,
  `group_code` varchar(45) NOT NULL,
  `reg_date` timestamp NOT NULL DEFAULT CURRENT_TIMESTAMP,
  `user_role` varchar(45) NOT NULL,
  `code` varchar(15) DEFAULT NULL,
  `enable` tinyint(1) NOT NULL,
  `hoiit_templates_template_id` varchar(6) NOT NULL,
  `hoiit_provinces_province_id` int(11) NOT NULL,
  PRIMARY KEY (`username`),
  KEY `fk_hoiit_usernames_hoiit_templates1` (`hoiit_templates_template_id`),
  KEY `fk_hoiit_usernames_hoiit_provinces1` (`hoiit_provinces_province_id`)
) ENGINE=InnoDB DEFAULT CHARSET=utf8;

--
-- Dumping data for table `hoiit_usernames`
--

INSERT INTO `hoiit_usernames` (`username`, `email`, `password`, `picture`, `detail`, `phone`, `yahoo`, `skype`, `parent`, `group_code`, `reg_date`, `user_role`, `code`, `enable`, `hoiit_templates_template_id`, `hoiit_provinces_province_id`) VALUES
('thanhansoft', 'thanhansoft@gmail.com', 'e10adc3949ba59abbe56e057f20f883e', '', '', '', '', '', '', 'Php', '2012-02-02 08:50:15', 'user', NULL, 1, '111111', 19);

-- --------------------------------------------------------

--
-- Table structure for table `hoiit_web_templates`
--

CREATE TABLE IF NOT EXISTS `hoiit_web_templates` (
  `template_id` varchar(6) NOT NULL,
  `template_name` varchar(45) NOT NULL,
  `detail` text,
  `price` int(11) NOT NULL,
  `download` varchar(45) NOT NULL DEFAULT '0',
  `source` varchar(100) DEFAULT NULL,
  `width` varchar(45) NOT NULL,
  `pic_thumb` varchar(100) NOT NULL,
  `pic_full` varchar(100) NOT NULL,
  `pic_desc` varchar(100) DEFAULT NULL,
  `created` timestamp NOT NULL DEFAULT CURRENT_TIMESTAMP,
  `enable` tinyint(1) NOT NULL DEFAULT '1',
  `hoiit_web_templates_cat_cat_id` smallint(6) NOT NULL,
  `hoiit_usernames_username` varchar(40) NOT NULL,
  PRIMARY KEY (`template_id`),
  KEY `fk_hoiit_web_templates_hoiit_web_templates_cat1` (`hoiit_web_templates_cat_cat_id`),
  KEY `fk_hoiit_web_templates_hoiit_usernames1` (`hoiit_usernames_username`)
) ENGINE=InnoDB DEFAULT CHARSET=utf8;

-- --------------------------------------------------------

--
-- Table structure for table `hoiit_web_templates_cat`
--

CREATE TABLE IF NOT EXISTS `hoiit_web_templates_cat` (
  `cat_id` smallint(6) NOT NULL AUTO_INCREMENT,
  `cat_name` varchar(45) NOT NULL,
  `parent_id` smallint(6) NOT NULL DEFAULT '0',
  `tag` varchar(100) NOT NULL,
  `description` varchar(250) NOT NULL,
  PRIMARY KEY (`cat_id`)
) ENGINE=InnoDB  DEFAULT CHARSET=utf8 AUTO_INCREMENT=2 ;

--
-- Constraints for dumped tables
--

--
-- Constraints for table `hoiit_comments`
--
ALTER TABLE `hoiit_comments`
  ADD CONSTRAINT `fk_hoiit_comments_hoiit_posts1` FOREIGN KEY (`hoiit_posts_post_id`) REFERENCES `hoiit_posts` (`post_id`) ON DELETE NO ACTION ON UPDATE NO ACTION,
  ADD CONSTRAINT `fk_hoiit_comments_hoiit_usernames1` FOREIGN KEY (`hoiit_usernames_username`) REFERENCES `hoiit_usernames` (`username`) ON DELETE NO ACTION ON UPDATE NO ACTION;

--
-- Constraints for table `hoiit_download`
--
ALTER TABLE `hoiit_download`
  ADD CONSTRAINT `fk_hoiit_download_hoiit_posts1` FOREIGN KEY (`hoiit_posts_post_id`) REFERENCES `hoiit_posts` (`post_id`) ON DELETE NO ACTION ON UPDATE NO ACTION;

--
-- Constraints for table `hoiit_logs`
--
ALTER TABLE `hoiit_logs`
  ADD CONSTRAINT `fk_hoiit_logs_hoiit_usernames1` FOREIGN KEY (`hoiit_usernames_username`) REFERENCES `hoiit_usernames` (`username`) ON DELETE NO ACTION ON UPDATE NO ACTION;

--
-- Constraints for table `hoiit_posts`
--
ALTER TABLE `hoiit_posts`
  ADD CONSTRAINT `fk_hoiit_posts_hoiit_cats1` FOREIGN KEY (`hoiit_cats_cat_id`) REFERENCES `hoiit_cats` (`cat_id`) ON DELETE NO ACTION ON UPDATE NO ACTION,
  ADD CONSTRAINT `fk_hoiit_posts_hoiit_usernames1` FOREIGN KEY (`hoiit_usernames_username`) REFERENCES `hoiit_usernames` (`username`) ON DELETE NO ACTION ON UPDATE NO ACTION;

--
-- Constraints for table `hoiit_provinces`
--
ALTER TABLE `hoiit_provinces`
  ADD CONSTRAINT `fk_hoiit_provinces_hoiit_nationals` FOREIGN KEY (`hoiit_nationals_national_id`) REFERENCES `hoiit_nationals` (`national_id`) ON DELETE NO ACTION ON UPDATE NO ACTION;

--
-- Constraints for table `hoiit_usernames`
--
ALTER TABLE `hoiit_usernames`
  ADD CONSTRAINT `fk_hoiit_usernames_hoiit_provinces1` FOREIGN KEY (`hoiit_provinces_province_id`) REFERENCES `hoiit_provinces` (`province_id`) ON DELETE NO ACTION ON UPDATE NO ACTION,
  ADD CONSTRAINT `fk_hoiit_usernames_hoiit_templates1` FOREIGN KEY (`hoiit_templates_template_id`) REFERENCES `hoiit_templates` (`template_id`) ON DELETE NO ACTION ON UPDATE NO ACTION;

--
-- Constraints for table `hoiit_web_templates`
--
ALTER TABLE `hoiit_web_templates`
  ADD CONSTRAINT `fk_hoiit_web_templates_hoiit_usernames1` FOREIGN KEY (`hoiit_usernames_username`) REFERENCES `hoiit_usernames` (`username`) ON DELETE NO ACTION ON UPDATE NO ACTION,
  ADD CONSTRAINT `fk_hoiit_web_templates_hoiit_web_templates_cat1` FOREIGN KEY (`hoiit_web_templates_cat_cat_id`) REFERENCES `hoiit_web_templates_cat` (`cat_id`) ON DELETE NO ACTION ON UPDATE NO ACTION;

/*!40101 SET CHARACTER_SET_CLIENT=@OLD_CHARACTER_SET_CLIENT */;
/*!40101 SET CHARACTER_SET_RESULTS=@OLD_CHARACTER_SET_RESULTS */;
/*!40101 SET COLLATION_CONNECTION=@OLD_COLLATION_CONNECTION */;
