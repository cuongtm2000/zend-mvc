<!DOCTYPE html PUBLIC "-//W3C//DTD XHTML 1.0 Transitional//EN" "http://www.w3.org/TR/xhtml1/DTD/xhtml1-transitional.dtd">
<html xmlns="http://www.w3.org/1999/xhtml">
<head>
    <meta http-equiv="Content-Type" content="text/html; charset=utf-8" />
    <meta http-equiv="content-language" content="vi, en" />
    <meta name="revisit-after" content="1 days" />
    <meta name="robots" content="noodp,index,follow" />

    <link rel="SHORTCUT ICON" href="<?php echo Yii::app()->theme->baseUrl; ?>/images/favicon.ico" type="image/x-icon" />
    <link rel="icon" href="<?php echo Yii::app()->theme->baseUrl; ?>/images/favicon.ico" type="image/gif" />

    <link rel="stylesheet" type="text/css" href="<?php echo Yii::app()->theme->baseUrl; ?>/css/dosvn.css" />
    <script type="text/javascript" src="<?php echo Yii::app()->theme->baseUrl; ?>/js/jquery-1.7.1.min.js"></script>

    <title><?php echo CHtml::encode($this->pageTitle); ?><?php echo ($this->title) ? ' - '.CHtml::encode($this->title) : '' ?></title>
    <meta name="keywords" content="<?php echo $this->keywords ?>" />
    <meta name="description" content="<?php echo $this->description ?>" />

    <?php if($this->banner):?>
    <link rel="stylesheet" type="text/css" href="<?php echo Yii::app()->theme->baseUrl; ?>/css/advanced-slider-base.css" media="screen"/>
    <script type="text/javascript" src="<?php echo Yii::app()->theme->baseUrl; ?>/js/jquery.advancedSlider.min.js"></script>
    <!--[if IE]><script type="text/javascript" src="<?php echo Yii::app()->theme->baseUrl; ?>/js/excanvas.compiled-ie.js"></script><![endif]-->
    <!--[if lt IE 8]><script type="text/javascript" src="<?php echo Yii::app()->theme->baseUrl; ?>/js/jquery.sider.banner-ie.js"></script> <![endif]-->
    <script type="text/javascript" src="<?php echo Yii::app()->theme->baseUrl; ?>/js/jquery.sider.banner.js"></script>
    <script type="text/javascript">
        $(document).ready(function(){
            runbanner(<?php echo $this->configs['banner_width'] ?>, <?php echo $this->configs['banner_height'] ?>);
        });
    </script>
    <?php endif;?>

    <script type="text/javascript" src="<?php echo Yii::app()->theme->baseUrl; ?>/js/embedflash.js"></script>
    <?php echo $this->analytics?>
</head>
<body>
<div id="wrapper">
	<ul id="top-nav">
        <li><a href="/vi">Vietnamese</a></li>
        <li><a href="/en">English</a></li>
    </ul>
    <div id="banner">
		<div class="flash"><script type="text/javascript">embedFlashObj('<?php echo Yii::app()->theme->baseUrl; ?>/images/banner.swf',600,600);</script></div>
		<div class="logo"><script type="text/javascript">embedFlashObj('<?php echo Yii::app()->theme->baseUrl; ?>/images/logo.swf',215,103);</script></div>
		<div class="tencty"><script type="text/javascript">embedFlashObj('<?php echo Yii::app()->theme->baseUrl; ?>/images/tencty.swf',650,45);</script></div>
    	<div class="pos-left"></div>
    </div>
    <div id="content">
    	<div id="leftcontent">
        	<h2 class="title-cat"><span>Tin tức</span></h2>
            <ul class="sub-cat">
            	<li><a href="#" title="">Tin tức</a></li>
                <li><a href="#" title="">Tuyển dụng &amp; Việc làm</a></li>
            </ul> <!--End sub cat-->
            <h2 class="title-cat"><span>Thư viện hình ảnh</span></h2>
            <ul class="sub-cat">
            	<li><a href="#" title="">Đầu bếp - Quản lý nhà hàng</a></li>
                <li><a href="#" title="">Pha chế thức uống &amp; quản lý Bar</a></li>
                <li><a href="#" title="">Làm Bánh &amp; Trang trí bánh kem</a></li>
                <li><a href="#" title="">Tỉa rau củ</a></li>
                <li><a href="#" title="">Trang điểm - Thẩm mỹ</a></li>
                <li><a href="#" title="">Cắt uốn &amp; Tạo mẫu tóc</a></li>
            </ul>
        	<div class="menu">
            	<a href="/"><img src="images/menu-home.jpg" alt="menu home" /></a>
                <ul>
                	<li><a href="index.html">Trang chủ</a></li>
                	<li><a href="http://rosavn.net/diendan">Diễn đàn</a></li>
                	<li><a href="about.html">Giới thiệu Rosa</a></li>
                	<li><a href="product.html">Thư viện hình ảnh</a></li>
                	<li><a href="news.html">Tin tức - Việc làm</a></li>
                	<li><a href="#">Ẩm thực &amp; thầm mỹ</a></li>
                	<li><a href="#">Hỗ trợ học nghề</a></li>
                	<li><a href="#">Chương trình đào tạo</a></li>
                	<li><a href="#">Dịch vụ</a></li>
                	<li><a href="#">Video</a></li>
                	<li><a href="contact.html">Liên hệ</a></li>
            	</ul>
            </div> <!--End sub cat-->
            <h2 class="title-left"><span>Hỗ trợ trực tuyến</span></h2>
            <ul class="support">
                <li>
                    <p>Hỗ trợ khách hàng</p>
                    <p>01234 567 890</p>
                    <a href="ymsgr:sendim?thanhansoft"><img src="http://opi.yahoo.com/online?u=thanhansoft&amp;m=g&amp;t=2&amp;l=us" alt="thanhansoft" /></a>
                </li>
                <li>
                    <p>Hỗ trợ kinh doanh</p>
                    <p>0900 990 990</p>
                    <a href="ymsgr:sendim?thanhansoft"><img src="http://opi.yahoo.com/online?u=thanhansoft&amp;m=g&amp;t=2&amp;l=us" alt="thanhansoft" /></a>
                </li>
            </ul> <!--End Support-->
            <h2 class="title-left"><span>Thống kê truy cập</span></h2>
            <ul class="statistics">
                <li>Truy cập trong ngày: 000018</li>
                <li>Đang online: 3</li>
                <li>Tổng số lượt truy cập: 038082</li>
            </ul>
            <h2 class="title-left"><span>Quảng cáo</span></h2>
            <ul class="advleft">
                <li><a href="http://grouplaptrinh.com" title="grouplaptrinh"><img src="images/adv1.gif" alt='' /></a></li>
                <li><a href="http://grouplaptrinh.com" title="grouplaptrinh"><img src="images/adv2.gif" alt='' /></a></li>
                <li><a href="http://grouplaptrinh.com" title="grouplaptrinh"><img src="images/adv3.gif" alt='' /></a></li>
            </ul>
        </div> <!--End left content-->
        <div id="rightcontent">
			<?php echo $content?>
		
        	<div class="about-nav"></div>
            <div class="frame-tent-right">
        	<p>"Rosa - theo tiếng Ý, nghĩa là hoa hồng. Tuy là kinh doanh, nhưng là kinh doanh lĩnh vực rất truyền thống: ẩm thực thẩm mỹ.
Và không chỉ là kinh doanh, mà còn hướng đến những hoạt động mang tính nhân văn và cộng đồng nhằm giúp cho cuộc sống đẹp hơn, ý nghĩa hơn. Vì thế mới rất đằm thắm: hoa hồng"</p>
			<p>Ngành nghề kinh doanh
- Được thành lập hơn 06 năm qua, Rosa luôn tự hào là đơn vị đi đầu trong họat động đào tạo thẩm mỹ và ẩm thực trên đất Đồng Nai với nhiều ngành nghề phong phú, đa dạng, trình độ chuyên môn cao.
- Thế mạnh của Công ty là đào tạo các ngành nghề về thẩm mỹ, ẩm thực  - Các nghề Nấu ăn - Quản lý nhà hàng, pha chế thức uống - Quản lý bar Caffe, Trang trí bánh kem  Bánh Việt Á Âu, Cắm kết hoa tươi Làm hoa Voan, Trang điểm Hóa trang, Cắt uốn Tạo mẫu tóc, Săn sóc da Tạo hình thẩm mỹ, Massge trị liệu, Nail - Trang trí mong, Cắt may thiết kế thời trang và cung cấp các dịch vụ thuộc lĩnh vực này như tổ chức các hội thi ẩm thực, trang điểm, cắm hoa, …. cho các cơ quan, doanh nghiệp.
- Ngoài việc duy trì các lớp đào tạo nghề thường xuyên, Rosa chủ trương mở các lớp chuyên đề để phục vụ nhu cầu Ẩm thực thẩm mỹ của từng nhóm khách hàng riêng biệt như: Bộ đội xuất ngũ, Người nghèo, Lao động nông thôn, Người già, Phụ nữ, Trẻ em…</p>
			</div> <!--End frame tent right-->
			<h2 class="title-blue"><span>Trình diễn</span></h2>
            <ul class="slider">
                <li class="slider-item">
                    <a href="http://grouplaptrinh.com" title="grouplaptrinh"><img src="images/banner.jpg" alt="banner" /></a>
                </li>
                <li class="slider-item"><img src="images/banner2.jpg" alt="banner2" /></li>
                <li class="slider-item"><img src="images/banner3.jpg" alt="banner2" /></li>
                <li class="slider-item"><img src="images/banner4.jpg" alt="banner2" /></li>
            </ul>
            <h2 class="title-org"><span>Ẩm thực &amp; Thẩm mỹ</span></h2>
            <ul class="sub-new-hot">
            		<li>
            			<div class="img-panel"><a href=""><img alt="VỊT NƯỚNG GIẢ CẦY" src="images/vit-nuong-gia-cay.jpg" /></a></div>
            			<h3><a href="#" class="link">VỊT NƯỚNG GIẢ CẦY</a></h3>
            			<p>Những miếng thịt vịt b&eacute;o ngậy, thơm dậy m&ugrave;i riềng v&agrave; thoang thoảng vị mắm t&ocirc;m đặc trưng,...</p>
            		</li>

            		<li>
            			<div class="img-panel"><a href="#"><img alt="BA CHỈ UM NƯỚC DỪA" src="images/ba-chi-um-nuoc-dua.jpg" /></a></div>
            			<h3><a href="#" class="link">BA CHỈ UM NƯỚC DỪA</a></h3>
            			<p>M&oacute;n thịt ba chỉ um nước dừa đơn giản m&agrave; l&uacute;c n&agrave;o ăn cũng thấy ngon. Chỉ cần v&agrave;o bếp một...</p>
            		</li>

            		<li>
            			<div class="img-panel"><a href="#"><img alt="GÂN BÒ LAGU" src="images/gan-bo-lagu.jpg" /></a></div>
            			<h3><a href="#" class="link">GÂN BÒ LAGU</a></h3>
            			<p>V&agrave;o dịp cuối tuần, thay v&igrave; nấu một bữa ăn thịnh soạn, bạn c&oacute; thể đổi vị cho cả nh&agrave; bằng...</p>
            		</li>

           </ul> <!--End tin noi bat--><div class="clear"></div>

           <h2 class="title-blue"><span>Tin tức &amp; Việc làm</span></h2>
           <ul class="masuring">
               <li>
                    <div class="frame-img"><a href="news-detail.html" title=""><img src="images/cafe2.jpg" class="imgcon" alt="chứng khoán"  /></a></div>
                    <h2 class="title-masuring"><a href="news-detail.html" title="">Chứng khoán toàn cầu thiệt hại tới 4.000 tỷ USD</a></h2>
                    <p>Các nhà kinh tế Mỹ và thế giới ngày 14/8 nhận định những hỗn loạn trên thị trường tài chính tiền tệ toàn cầu trong hai tuần qua đã gây thiệt hại khổng lồ cho các thị trường chứng khoán, ước tính lên tới từ 2.500 đến 4.000 tỷ USD chỉ tronng tuần giao dịch từ 1-5/8.</p>
               </li>
               <li>
                    <div class="frame-img"><a href="news-detail.html" title=""><img src="images/cafe2.jpg" class="imgcon" alt="chứng khoán"  /></a></div>
                    <h2 class="title-masuring"><a href="news-detail.html" title="">Chứng khoán toàn cầu thiệt hại tới 4.000 tỷ USD</a></h2>
                    <p>Các nhà kinh tế Mỹ và thế giới ngày 14/8 nhận định những hỗn loạn trên thị trường tài chính tiền tệ toàn cầu trong hai tuần qua đã gây thiệt hại khổng lồ cho các thị trường chứng khoán, ước tính lên tới từ 2.500 đến 4.000 tỷ USD chỉ tronng tuần giao dịch từ 1-5/8.</p> <div class="clear"></div>
               </li>
               <li>
                    <div class="frame-img"><a href="news-detail.html" title=""><img src="images/cafe2.jpg" class="imgcon" alt="chứng khoán"  /></a></div>
                    <h2 class="title-masuring"><a href="news-detail.html" title="">Chứng khoán toàn cầu thiệt hại tới 4.000 tỷ USD</a></h2>
                    <p>Các nhà kinh tế Mỹ và thế giới ngày 14/8 nhận định những hỗn loạn trên thị trường tài chính tiền tệ toàn cầu trong hai tuần qua đã gây thiệt hại khổng lồ cho các thị trường chứng khoán, ước tính lên tới từ 2.500 đến 4.000 tỷ USD chỉ tronng tuần giao dịch từ 1-5/8.</p>
               </li>
               <li>
                    <div class="frame-img"><a href="news-detail.html" title=""><img src="images/cafe2.jpg" class="imgcon" alt="chứng khoán"  /></a></div>
                    <h2 class="title-masuring"><a href="news-detail.html" title="">Chứng khoán toàn cầu thiệt hại tới 4.000 tỷ USD</a></h2>
                    <p>Các nhà kinh tế Mỹ và thế giới ngày 14/8 nhận định những hỗn loạn trên thị trường tài chính tiền tệ toàn cầu trong hai tuần qua đã gây thiệt hại khổng lồ cho các thị trường chứng khoán, ước tính lên tới từ 2.500 đến 4.000 tỷ USD chỉ tronng tuần giao dịch từ 1-5/8.</p>
               </li>
           </ul> <!--End tin tuc-->

           <h2 class="title-green"><span>Thư viện &amp; hình ảnh</span></h2>
           <ul class="all-product">
           		<li class="product">
                    <div class="product-img"><a href="product-info.html" title=""><img src="images/trc-26_800x833.jpg" alt="Product" /></a></div>
                    <h2><a class="link" href="product-info.html" title="">Tỉa rau củ</a></h2>
            	</li>
                <li class="product">
                    <div class="product-img"><a href="product-info.html" title=""><img src="images/lop-banh-rosa-8_800x516.jpg" alt="Product" /></a></div>
                    <h2><a class="link" href="product-info.html" title="">Làm bánh &amp; Tranh trí bánh kem</a></h2>
            	</li>
                <li class="product">
                    <div class="product-img"><a href="product-info.html" title=""><img src="images/hoa-rosa-cb-8_800x516.jpg" alt="Product" /></a></div>
                    <h2><a class="link" href="product-info.html" title="">Cắm kết hoa</a></h2>
            	</li>
                <li class="product">
                    <div class="product-img"><a href="product-info.html" title=""><img src="images/trc-26_800x833.jpg" alt="Product" /></a></div>
                    <h2><a class="link" href="product-info.html" title="">Tỉa rau củ</a></h2>
            	</li>
                <li class="product">
                    <div class="product-img"><a href="product-info.html" title=""><img src="images/lop-banh-rosa-8_800x516.jpg" alt="Product" /></a></div>
                    <h2><a class="link" href="product-info.html" title="">Làm bánh &amp; Tranh trí bánh kem</a></h2>
            	</li>
                <li class="product">
                    <div class="product-img"><a href="product-info.html" title=""><img src="images/hoa-rosa-cb-8_800x516.jpg" alt="Product" /></a></div>
                    <h2><a class="link" href="product-info.html" title="">Cắm kết hoa</a></h2>
            	</li>
           </ul> <!--End thu vien hinh anh-->  <div class="clear"></div>
        </div> <!--End right content-->
        <div id="columns3">
        	<h2 class="title-video"><span>Video rosa</span></h2>
            <div class="video">
				<script type="text/javascript" src="js/videoyoutubehome.js"></script>
                <script type="text/javascript">embedyoutube('http://www.youtube.com/watch?v=-9jcQ9znMYQ&amp;feature=youtu.be',222,172);</script>
                <div class="reset">Bấm phím F5 để xem Video khác</div>
            </div>
            <h2 class="title-new"><span>Tin tức</span></h2>
            <ul class="sub-new">
                <li><a href="#" title="">Khai giảng lớp Pha chế biểu diễn (Showmanship)_WORKING</a></li>
                <li><a href="#" title="">LỚP CHUYÊN ĐỀ CÀ PHÊ</a></li>
                <li><a href="#" title="">Bánh trung thu ở các nước Châu Á</a></li>
            </ul>
            <h2 class="title-adv-right"><span>Logo Quảng cáo</span></h2>
            <ul class="advright">
                <li><a href="http://grouplaptrinh.com" title="grouplaptrinh"><img src="images/adv1.gif" alt='' /></a></li>
                <li><a href="http://grouplaptrinh.com" title="grouplaptrinh"><img src="images/adv2.gif" alt='' /></a></li>
                <li><a href="http://grouplaptrinh.com" title="grouplaptrinh"><img src="images/adv3.gif" alt='' /></a></li>
            </ul>
        </div> <!--End columns3--> <div class="clear"></div>
    </div> <!--End Content-->
</div> <!--End Wrapper-->
</body>
</html>