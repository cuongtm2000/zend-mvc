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

    <title><?php echo CHtml::encode($this->pageTitle); ?><?php echo ($this->title) ? ' - '.CHtml::encode($this->title) : '' ?></title>
    <meta name="keywords" content="<?php echo $this->keywords ?>" />
    <meta name="description" content="<?php echo $this->description ?>" />


    <script type="text/javascript" src="js/jquery-1.7.1.min.js"></script>

    <!--Slider thumb images-->
    <script type="text/javascript" src="js/jcarousellite_1.0.1.js"></script>
    <script type="text/javascript" src="js/scroller.js"></script>
    <!--End slider thumb images-->


    <link rel="stylesheet" type="text/css" href="css/advanced-slider-base.css" />
    <script type="text/javascript" src="js/jquery.advancedSlider.min.js"></script>
    <!--[if IE]><script type="text/javascript" src="js/excanvas.compiled-ie.js"></script><![endif]-->
    <!--[if lt IE 8]><script type="text/javascript" src="js/jquery.sider.banner-ie.js"></script> <![endif]-->
    <script type="text/javascript" src="js/jquery.sider.banner.js"></script>
    <script type="text/javascript">
        $(document).ready(function(){
            runbanner(254,178);
        });
    </script>
</head>
<body>
<div id="wrapper">
	<div class="top-page">
    	<div class="left-top"><a href="#" title="">Đăng ký</a> <span>|</span> <a href="#" title="">Đăng nhập</a></div>
        <form class="frm-test" action="" method="post">
        	<label>www.</label>
        	<input type="text" name="domain" size="25"/>
            <select size="1">
            	<option value="0">.com</option>
                <option value="0">.net</option>
                <option value="0">.info</option>
                <option value="0">.biz</option>
                <option value="0">.com.vn</option>
                <option value="0">.vn</option>
            </select>
            <input type="button" class="bt-test" value="kiểm tra" title="kiểm tra" />
        </form> <div class="clear"></div>
    </div> <!--End top page-->
    <div id="header">
    	<div id="logo"><a href="#" title=""><img src="images/logo.png" alt="" /></a></div>
        <ul id="nav">
            <li><a href="#" title="" class="select"><span>Mẫu website</span></a></li>
            <li><a href="#" title=""><span>Cẩm nang</span></a></li>
            <li><a href="" title=""><span>Hướng dẫn</span></a></li>
            <li><a href="" title=""><span>Chính sách đại lý</span></a></li>
            <li><a href="" title=""><span>Dịch vụ</span></a></li>
            <li><a href="" title=""><span>Giải pháp</span></a></li>
            <li><a href="" title=""><span>Khách hàng</span></a></li>
            <li class="none-line"><a href="" title=""><span>Liên hệ</span></a></li>
        </ul> <div class="clear"></div>
	</div> <!--End header-->
    dd<div class="header-btom">
    	<div class="hd-bt-left">
        	<h1 class="title-company">Khởi tạo website trực tuyến chuyên nghiệp, ấn tượng.</h1>
            <p class="white">Giải pháp tối ưu cho Doanh nghiệp và vừa hoặc nhóm, cá nhân, ....</p>
            <form action="" method="post" class="select-title">
            	<p class="list-title">
                    <select size="1" class="frame-list">
                        <option value="0">Chọn chủ đề web</option>
                        <option value="am-thuc-drink">Ẩm thực - Đồ uống</option>
                        <option value="bds-kien-truc-xay-dung">BĐS - kiến trúc - xây dựng</option>
                        <option value="co-khi-may-moc-thiet-bi">Cơ khí - Máy móc - Thiết bị</option>
                        <option value="cong-nghe-thong-tin-vien-thong">Công nghệ thông tin - viễn thông</option>
                        <option value="du-lich">Du lịch</option>
                        <option value="giao-duc-dao-tao">Giáo dục - đào tạo</option>
                        <option value="hoa-tuoi">Hoa tươi</option>
                        <option value="luat-ke-toan">Luật - kế toán</option>
                        <option value="nha-hang-cafe">Nhà hàng - Cafe</option>
                        <option value="noi-that-ngoai-that">Nội thất - Ngoại thất</option>
                        <option value="tham-my-vien">Thẩm mỹ viện</option>
                        <option value="thoi-trang">Thời trang</option>
                        <option value="tranh-anh-qua-luu-niem">Tranh ảnh - quà lưu niệm</option>
                    </select>
                </p>
                <input type="button" value="TẠO WEB" class="bton-great" />
            </form>
        </div> <!--End hd bt left-->
        <div id="banner">
            <ul class="slider">
                <li class="slider-item"><a href="http://grouplaptrinh.com" title="grouplaptrinh"><img src="images/banner.png" alt="banner" /></a></li>
                <li class="slider-item"><img src="images/banner1.png" alt="banner1" /></li>
            </ul>
        </div> <!--End banner--> <div class="clear"></div>
        
    </div> <!--End header-btom -->
    <div class="prod_detail">
        <!--Slide show Jquery Lightbox-->
        <div class="big_thumb">
            <!--Slide Prev-->
            <span class="prevsmall"><img src="images/prev.png" alt="" /></span>
                <div class="thumbs anyClass" id="paginate-slider2">
                    <ul>
                        <li><img src="images/carousel-1.jpg" alt="" /></li>
                        <li><img src="images/carousel-2.jpg" alt="" /></li>
                        <li><img src="images/carousel-3.jpg" alt="" /></li>
                        <li><img src="images/carousel-4.jpg" alt="" /></li>
                        <li><img src="images/carousel-5.jpg" alt="" /></li>
                    </ul>
                </div>
            <span class="nextsmall"><img src="images/next.png" alt="" /></span>
            <!--Slide Next-->
        </div><!--END Slide show Jquery Lightbox--> 
        <div class="bg-title-great">Website tạo bởi dos.vn</div>
    </div> <!--End prod detail-->  <div class="clear"></div>
    <div class="bg-solution">
        <div class="top-solution">
            <p><img src="images/price.png" alt="" /></p>
            <p class="title-solution"><strong>GIẢI PHÁP ĐƯỢC YÊU THÍCH ĐỂ CÓ WEBSITE CHẤT LƯỢNG</strong></p>
        </div>
        <div>
            <ul class="left sub-solution">
                <li><a href="#" title="">Một tên miền quốc tế (.com, .net, .org,...)</a></li>
                <li><a href="#" title="">Tạo email dùng riêng cho công ty</a></li>
                <li><a href="#" title="">Hostting 1.000 MB, băng thông 50GB sever tốc độ nhanh, ổn định</a></li>
                <li><a href="#" title="">Web động, có đầy đủ tính năng để giới thiệu, quảng cáo, bán hàng</a></li>
            </ul>
            <ul class="right sub-solution">     
                <li><a href="#" title="">Tự thay đổi giao diện trang web, với nhiều mẫu thiết kế đep</a></li>
                <li><a href="#" title="">Phầm mềm quản trị để người dùng tự thay đổi nội dùng trên web</a></li>
                <li><a href="#" title="">Công cụ chèn từ khóa để website nhanh xuất hiện trên Google</a></li>
                <li><a href="#" title="">Thống kê truy cập, hỗ trợ trực tuyến</a></li>
            </ul> <div class="clear"></div>
        </div>
    </div> <!--End bg-solution -->
    <div class="bg-panel">
    	<div class="left panel">
        	<div class="top-panel"></div>
            <div class="mid-panel">
                <h2 class="title-panel"><span class="ico-port green">Ưu điểm giải pháp</span><img class="img-nel-1" src="images/ico-nel-1.png" alt="" /></h2>
                <p>Đơn giản, dễ sử dụng hệ thống đồng bộ nên ổn định, tiết kiệm chi phí. Code theo chuẩn w3c giúp website dễ dàng xuất hiện trên Google. Dễ dàng thay đổi giao diện, ...</p>
                <p class="more"><a href="#" title="">Chi tiết</a></p>
            </div>
            <div class="bttom-panel"></div>
        </div> <!--End panel-1 -->
        <div class="left panel panel-2">
        	<div class="top-panel"></div>
            <div class="mid-panel">
                <h2 class="title-panel"><span class="ico-port blue">Dịch vụ hỗ trợ</span><img class="img-nel-2" src="images/ico-nel-2.png" alt="" /></h2>
                <p>Đơn giản, dễ sử dụng hệ thống đồng bộ nên ổn định, tiết kiệm chi phí. Code theo chuẩn w3c giúp website dễ dàng xuất hiện trên Google. Dễ dàng thay đổi giao diện, ...</p>
                <p class="more"><a href="#" title="">Chi tiết</a></p>
            </div>
            <div class="bttom-panel"></div>
        </div> <!--End panel-1 -->
        <div class="right panel">
        	<div class="top-panel"></div>
            <div class="mid-panel">
                <h2 class="title-panel"><span class="ico-port org">Hậu mãi</span><img class="img-nel-3" src="images/ico-nel-3.png" alt="" /></h2>
                <p>Đơn giản, dễ sử dụng hệ thống đồng bộ nên ổn định, tiết kiệm chi phí. Code theo chuẩn w3c giúp website dễ dàng xuất hiện trên Google. Dễ dàng thay đổi giao diện, ...</p>
                <p class="more"><a href="#" title="">Chi tiết</a></p>
            </div>
            <div class="bttom-panel"></div>
        </div> <!--End panel-1 --> <div class="clear"></div>
    </div>
	<div id="content">
    	<h2 class="title-hdbook"><img class="ico-hdbook" src="images/bg-handbook.png" alt="" /><span>Cẩm nang - Hướng dẫn</span></h2>
		<div id="leftcontent">
        	<div class="new-hdbook">
            	<div class="frame-hd-img"><a href="#" title="" ><img src="images/img.jpg" alt="" /></a></div>
                <h3 class="title-new-hdbook"><a href="#" title="">Hướng dẫn xóa bộ nhớ cache của trình duyệt</a></h3>
                <p>Trong trường hợp trang web quý khách xem bị lỗi, hiển thị không đúng hoặc hiển thị thông tin cũ, quý khách hãy thử khắc phục bằng cách xóa bộ nhớ cache của trình duyệt. Trong trường hợp trang web quý khách xem bị lỗi, hiển thị không đúng hoặc hiển thị thông tin cũ, quý khách hãy thử khắc phục bằng cách xóa bộ nhớ cache của trình duyệt.</p>  <div class="clear"></div>
            </div> <!--End new hdbook-->
            <div class="bg-sub-hand">
            	<ul class="left sub-hdbook">
                	<li><a href="" title="">Kích thước banner tiêu chuẩn trong thiết kế web</a></li>
                    <li><a href="" title="">Trích dẫn các văn bản pháp quy về website</a></li>
                    <li><a href="" title="">Những điều nên lưu ý khi viết blog doanh nghiệp</a></li>
                    <li><a href="" title="">Các lỗi thường gặp khi thiết kế trang web</a></li>
                    <li><a href="" title="">Năm yếu tố người sử dụng không ưa trên website</a></li>
                    <li><a href="" title="">Đăng ký sử dụng Gmail theo tên miền riêng</a></li>
                    <li><a href="" title="">Yêu cầu cần thiết để cài đặt website lên internet</a></li>
                    <li><a href="" title="">Các câu hỏi thường gặp về tên miền</a></li>
                    <li><a href="" title="">Chuyển đổi nhà quản lý tên miền</a></li>
                    <li><a href="" title="">Các lỗi thường gặp khi gởi nhận email</a></li>
                </ul>
                <ul class="right sub-hdbook">
                	<li><a href="" title="">Kích thước banner tiêu chuẩn trong thiết kế web</a></li>
                    <li><a href="" title="">Trích dẫn các văn bản pháp quy về website</a></li>
                    <li><a href="" title="">Những điều nên lưu ý khi viết blog doanh nghiệp</a></li>
                    <li><a href="" title="">Các lỗi thường gặp khi thiết kế trang web</a></li>
                    <li><a href="" title="">Năm yếu tố người sử dụng không ưa trên website</a></li>
                    <li><a href="" title="">Đăng ký sử dụng Gmail theo tên miền riêng</a></li>
                    <li><a href="" title="">Yêu cầu cần thiết để cài đặt website lên internet</a></li>
                    <li><a href="" title="">Các câu hỏi thường gặp về tên miền</a></li>
                    <li><a href="" title="">Chuyển đổi nhà quản lý tên miền</a></li>
                    <li><a href="" title="">Các lỗi thường gặp khi gởi nhận email</a></li>
                </ul> <div class="clear"></div>
            </div> <!--End bg sub hand-->
            <div class="link"><a href="#" title="">Trang chủ</a><img src="images/bull.png" alt="bull" />Mẫu website</div>
            <ul class="all-product">
            	<li class="product">
                    <div class="product-img"><a href="#" title="40107_Đen"><img src="images/pro-1.jpg" alt="40107_Đen" /></a></div>
                    <h3 class="title-pro"><a href="l" title="40107_Đen">Mẫu A001</a></h3>
                </li>
                <li class="product">
                    <div class="product-img"><a href="#" title="40107_Đen"><img src="images/pro-2.jpg" alt="40107_Đen" /></a></div>
                    <h3 class="title-pro"><a href="l" title="40107_Đen">Mẫu A002</a></h3>
                </li>
                <li class="product">
                    <div class="product-img"><a href="#" title="40107_Đen"><img src="images/pro-3.jpg" alt="40107_Đen" /></a></div>
                    <h3 class="title-pro"><a href="l" title="40107_Đen">Mẫu A003</a></h3>
                </li>
                <li class="product">
                    <div class="product-img"><a href="#" title="40107_Đen"><img src="images/pro-1.jpg" alt="40107_Đen" /></a></div>
                    <h3 class="title-pro"><a href="l" title="40107_Đen">Mẫu A001</a></h3>
                </li>
                <li class="product">
                    <div class="product-img"><a href="#" title="40107_Đen"><img src="images/pro-2.jpg" alt="40107_Đen" /></a></div>
                    <h3 class="title-pro"><a href="l" title="40107_Đen">Mẫu A002</a></h3>
                </li>
                <li class="product">
                    <div class="product-img"><a href="#" title="40107_Đen"><img src="images/pro-3.jpg" alt="40107_Đen" /></a></div>
                    <h3 class="title-pro"><a href="l" title="40107_Đen">Mẫu A003</a></h3>
                </li>
            </ul> <!--End all product--> <div class="clear"></div>
            <div class="great-top"></div>
                <div class="great-mid">
                    <h1 class="title-great">Khởi tạo web trực tuyến chuyên nghiệp, ấn tượng</h1>
                    <form action="" method="post" class="frm-template">
                    <p class="list-title">
                        <select size="1" class="frame-list">
                            <option value="0">Chọn chủ đề web</option>
                            <option value="am-thuc-drink">Ẩm thực - Đồ uống</option>
                            <option value="bds-kien-truc-xay-dung">BĐS - kiến trúc - xây dựng</option>
                            <option value="co-khi-may-moc-thiet-bi">Cơ khí - Máy móc - Thiết bị</option>
                            <option value="cong-nghe-thong-tin-vien-thong">Công nghệ thông tin - viễn thông</option>
                            <option value="du-lich">Du lịch</option>
                            <option value="giao-duc-dao-tao">Giáo dục - đào tạo</option>
                            <option value="hoa-tuoi">Hoa tươi</option>
                            <option value="luat-ke-toan">Luật - kế toán</option>
                            <option value="nha-hang-cafe">Nhà hàng - Cafe</option>
                            <option value="noi-that-ngoai-that">Nội thất - Ngoại thất</option>
                            <option value="tham-my-vien">Thẩm mỹ viện</option>
                            <option value="thoi-trang">Thời trang</option>
                            <option value="tranh-anh-qua-luu-niem">Tranh ảnh - quà lưu niệm</option>
                        </select>
                    </p>
                    <input type="button" value="TẠO WEB" class="bton-great" />
                </form>  <div class="clear"></div>
                </div> <!--End great mid-->
        	<div class="great-btom"></div>        
        </div> <!--End leftcontent-->
        <div id="rightcontent">
        	<h2 class="title-right"><span>DANH MỤC MẪU WEBSITE</span></h2>
            <ul class="sub-cat">
            	<li><a href="/mau-website/am-thuc-drink" title="Ẩm thực - Đồ uống">Ẩm thực - Đồ uống</a></li>
				<li><a href="/mau-website/bds-kien-truc-xay-dung" title="BĐS - kiến trúc - xây dựng">BĐS - kiến trúc - xây dựng</a></li>
				<li><a href="/mau-website/co-khi-may-moc-thiet-bi" title="Cơ khí - Máy móc - Thiết bị">Cơ khí - Máy móc - Thiết bị</a></li>
				<li><a href="/mau-website/cong-nghe-thong-tin-vien-thong" title="Công nghệ thông tin - viễn thông">Công nghệ thông tin - viễn thông</a></li>
				<li><a href="/mau-website/du-lich" title="Du lịch">Du lịch</a></li>
				<li><a href="/mau-website/giao-duc-dao-tao" title="Giáo dục - đào tạo">Giáo dục - đào tạo</a></li>
				<li><a href="/mau-website/hoa-tuoi" title="Hoa tươi">Hoa tươi</a></li>
				<li><a href="/mau-website/luat-ke-toan" title="Luật - kế toán">Luật - kế toán</a></li>
				<li><a href="/mau-website/nha-hang-cafe" title="Nhà hàng - Cafe">Nhà hàng - Cafe</a></li>
				<li><a href="/mau-website/noi-that-ngoai-that" title="Nội thất - Ngoại thất">Nội thất - Ngoại thất</a></li>
				<li><a href="/mau-website/tham-my-vien" title="Thẩm mỹ viện">Thẩm mỹ viện</a></li>
				<li><a href="/mau-website/thoi-trang" title="Thời trang">Thời trang</a></li>
				<li><a href="/mau-website/tranh-anh-qua-luu-niem" title="Tranh ảnh - quà lưu niệm">Tranh ảnh - quà lưu niệm</a></li>
            </ul> <!--End sub cat-->
            <div class="ico-mid">
            	<img src="images/ico-right.png" alt="" />
                <p>Đừng ngần ngại hãy liên hệ với chúng tôi để được tư vẫn miễn phí</p>
            </div>
            <ul class="support">
            	<li>
                	<div class="img-port"><img src="images/img-port.png" alt="" /></div>
                    <div class="ten-port">
                        <p><a href="ymsgr:sendim?thanhansoft"><img src="http://opi.yahoo.com/online?u=thanhansoft&amp;m=g&amp;t=1&amp;l=us" alt="thanhansoft" /></a></p>
                        <p>E: tuvan_quocvuong@dos.vn </p>
                        <p>T: 0909 001 001</p></div>  <div class="clear"></div>
                </li>
                <li>
                	<div class="img-port"><img src="images/img-port.png" alt="" /></div>
                    <div class="ten-port">
                        <p><a href="ymsgr:sendim?thanhansoft"><img src="http://opi.yahoo.com/online?u=thanhansoft&amp;m=g&amp;t=1&amp;l=us" alt="thanhansoft" /></a></p>
                        <p>E: tuvan_quocvuong@dos.vn </p>
                        <p>T: 0909 001 001</p></div>  <div class="clear"></div>
                </li>
                <li>
                	<div class="img-port"><img src="images/img-port.png" alt="" /></div>
                    <div class="ten-port">
                        <p><a href="ymsgr:sendim?thanhansoft"><img src="http://opi.yahoo.com/online?u=thanhansoft&amp;m=g&amp;t=1&amp;l=us" alt="thanhansoft" /></a></p>
                        <p>E: tuvan_quocvuong@dos.vn </p>
                        <p>T: 0909 001 001</p></div>  <div class="clear"></div>
                </li>
                <li>
                	<div class="img-port"><img src="images/img-port.png" alt="" /></div>
                    <div class="ten-port">
                        <p><a href="ymsgr:sendim?thanhansoft"><img src="http://opi.yahoo.com/online?u=thanhansoft&amp;m=g&amp;t=1&amp;l=us" alt="thanhansoft" /></a></p>
                        <p>E: tuvan_quocvuong@dos.vn </p>
                        <p>T: 0909 001 001</p></div>  <div class="clear"></div>
                </li>
            </ul> <!--End support-->
        </div> <!--End rightcontent--> <div class="clear"></div>
	</div><!--End content-->
</div><!--End wrapper-->    addaa
<div class="bt-page">
	<div class="footer">
    	<div class="tent-footer">
			<div class="logo-fter"><img src="images/logo-2.png" alt="" /></div>
            <ul id="nav-fter">
            	<li class="left row-1">
                	<h4>Thiết kế website</h4>
                    <p><a href="#" title="">Tạo web trực tuyến</a></p>
                    <p><a href="#" title="">Thiết kế web theo nhu cầu</a></p>
                    <p><a href="#" title="">Tối ưu hóa website</a></p>
                    <p><a href="#" title="">Nâng cấp website</a></p>
                    <p><a href="#" title="">Gia công website</a></p>
                </li>
                <li class="left">
                	<div class="tent-nav-fter">
                        <h4>Quảng cáo trực tuyến</h4>
                        <p><a href="#" title="">Trên google</a></p>
                        <p><a href="#" title="">Các trang báo</a></p>
                        <p><a href="#" title="">E-mail quảng cáo</a></p>
                        <p><a href="#" title="">Seo web</a></p>
                        <p><a href="#" title="">Quảng cáo trên rao vật</a></p>
                    </div>
                </li>
                <li class="left">
                	<div class="tent-nav-fter">
                        <h4>Tên miền</h4>
                        <p><a href="#" title="">Kiểm tra tên miền</a></p>
                        <p><a href="#" title="">Bảng giá tên miền</a></p>
                    </div>
                </li>
                <li  class="left">
                	<div class="tent-nav-fter">
                        <h4>Mẫu website</h4>
                        <p><a href="#" title="">Doanh nghiệp</a></p>
                        <p><a href="#" title="">Nhóm bạn</a></p>
                        <p><a href="#" title="">Cá nhân</a></p>
                    </div>    
                </li>
                <li  class="left row-5">
                	<div class="tent-nav-fter">
                        <h4>Hosting</h4>
                        <p><a href="#" title="">Báo giá hosting</a></p>
                        <p><a href="#" title="">Báo giá server</a></p>
                    </div>
                </li>
                <li  class="left row-6">
                	<div class="tent-nav-fter">
                        <h4>Support</h4>
                        <p><a href="#" title="">Hướng dẫn</a></p>
                        <p><a href="#" title="">Kỹ thuật</a></p>
                        <p><a href="#" title="">Kế toán</a></p>
                	</div>
                </li>
                <li class="row-7">
                	<div class="tent-nav-fter">
                        <h4>Đại lý</h4>
                        <p><a href="#" title="">Chính sách trả thưởng</a></p>
                        <p><a href="#" title="">Danh sách đại lý</a></p>
                        <p><a href="#" title="">Đăng ký làm đại lý</a></p>
                	</div>
                </li>
            </ul> <!--End menu footer--> <div class="clear"></div>
            <p></p>
		</div>
    </div>
    <div class="copyright">
    	<div class="tent-copyright">
    		<p>&copy; 2012 Copyright by Dos.vn</p>
        </div>
	</div>
</div>
</body>
</html>

