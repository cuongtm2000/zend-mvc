<!DOCTYPE html PUBLIC "-//W3C//DTD XHTML 1.0 Transitional//EN" "http://www.w3.org/TR/xhtml1/DTD/xhtml1-transitional.dtd">
<html xmlns="http://www.w3.org/1999/xhtml">
<head>
	<meta http-equiv="Content-Type" content="text/html; charset=utf-8" />
    <meta http-equiv="content-language" content="en" />
    <meta name="revisit-after" content="1 days" />
    <meta name="robots" content="noodp,index,follow" />
	
	<link rel="SHORTCUT ICON" href="<?php echo Yii::app()->theme->baseUrl; ?>/images/favicon.ico" type="image/x-icon" />
    <link rel="icon" href="<?php echo Yii::app()->theme->baseUrl; ?>/images/favicon.ico" type="image/gif" />

	<link rel="stylesheet" type="text/css" href="<?php echo Yii::app()->theme->baseUrl; ?>/css/dosvn.css" media="screen"/>
	<script type="text/javascript" src="<?php echo Yii::app()->theme->baseUrl; ?>/js/jquery-1.7.1.min.js"></script>
	
	<title><?php echo CHtml::encode($this->pageTitle); ?><?php echo ($this->setting['title']) ? ' - '.CHtml::encode($this->setting['title']) : '' ?></title>
    <meta name="keywords" content="<?php echo CHtml::encode($this->setting['keywords']) ?>" />
    <meta name="description" content="<?php echo CHtml::encode($this->setting['description']) ?>" />

	<link rel="stylesheet" type="text/css" href="<?php echo Yii::app()->theme->baseUrl; ?>/css/advanced-slider-base.css" media="screen"/>
	<script type="text/javascript" src="<?php echo Yii::app()->theme->baseUrl; ?>/js/jquery.advancedSlider.min.js"></script>
	<!--[if IE]><script type="text/javascript" src="<?php echo Yii::app()->theme->baseUrl; ?>/js/excanvas.compiled-ie.js"></script><![endif]-->
	<!--[if lt IE 8]><script type="text/javascript" src="<?php echo Yii::app()->theme->baseUrl; ?>/js/jquery.sider.banner-ie.js"></script> <![endif]-->
	<script type="text/javascript" src="<?php echo Yii::app()->theme->baseUrl; ?>/js/jquery.sider.banner.js"></script>
	<script type="text/javascript">
		$(document).ready(function(){
			runbanner(520,275);
		});
	</script>
	<!--[if lt IE 8]>
	<link rel="stylesheet" type="text/css" href="<?php echo Yii::app()->theme->baseUrl; ?>/css/ie6.css" />
	<![endif]-->
</head>
<body>
<div id="wrapper">
    <div id="header">
        <div id="logo"><a href="<?php echo Yii::app()->baseUrl.$this->setLangUrl()?>" title="Logo Yii Project"><img src="<?php echo Yii::app()->theme->baseUrl; ?>/images/logo.png" alt="Logo Yii Project" /></a></div><!--End left header-->
        <h1 class="title-company">Thế giới đồ chơi cho bé</h1>
        <div class="clear"></div>	
    </div><!--End header-->
    <div class="top-header">
         <div class="lang">
			<?php foreach($this->listLanguage as $key => $value):?>
				<a href="<?php echo Yii::app()->baseUrl?>/<?php echo $key?>" title="<?php echo $value?>"><img src="<?php echo Yii::app()->theme->baseUrl; ?>/images/<?php echo $key?>.gif" alt="<?php echo $value?>" /> <?php echo $value?></a>
			<?php endforeach?>
         </div>
         <p class="hot-line">Hot line: 01234 567 890 Mr.Bảo</p>   <div class="clear"></div>
    </div>
    <div class="bg-nav">
		<?php $this->widget('ext.MenuMultiLevel.MenuMultiLevel', array());?>
         <!-- <ul id="nav">
            <li><a href="rings.html" title="" class="select">Trang chủ</a></li>
            <li><a href="necklace.html" title="">Giới thiệu</a></li>
            <li><a href="earrings.html" title="">Sản phẩm</a>
                 <ul>
                    <li><a href="#" title="">Tops</a></li>
                    <li><a href="#" title="">Skirts</a></li>
                    <li><a href="#" title="">Jackets</a></li>
                </ul>
            </li>
            <li><a href="pandants.html" title="">Dịch vụ</a></li>
            <li><a href="bracelets.html" title="">Tin tức &amp; Sự kiện</a></li>
            <li><a href="pandants.html" title="">Video</a></li>
            <li><a href="watches.html" title="">Liên hệ</a></li>
        </ul> --><!--End menu--> <div class="clear"></div>
    </div>
    <div class="main-content">    
        <div id="content">
        	<div id="leftcontent">
            	<div class="frame-leftcontent">
                    <h2 class="title-left"><span>Sản phẩm</span></h2>
                    <div class="title-box-line"></div>
                    <ul class="sub-cat">
                        <li><a href="#" title="" >Women</a>
                            <ul>
                                <li><a href="#" title="">Tops</a></li>
                                <li><a href="#" title="">Skirts</a></li>
                                <li><a href="#" title="">Jackets</a></li>
                            </ul>
                        </li>
                        <li><a href="#" title="">Men</a>
                            <ul>
                                <li><a href="#" title="">Tops</a></li>
                                <li><a href="#" title="">Skirts</a></li>
                                <li><a href="#" title="">Jackets</a></li>
                            </ul>
                        </li>
                        <li><a href="#" title="">Day Dresses</a></li>
                        <li><a href="#" title="">Evening Dresses</a></li>
                        <li><a href="#" title="">Coats</a></li>
                        <li><a href="#" title="">Sweemwear</a></li>
                    </ul>
				</div> <!--End frame-leftcontent-->
                <div class="frame-leftcontent">
                    <h3 class="title-left"><span>Hỗ trợ trực tuyến</span></h3>
                    <ul class="support">
                        <li>Hỗ trợ kỹ thuật</li>
                        <li><a href="ymsgr:sendim?thanhansoft"><img src="http://opi.yahoo.com/online?u=thanhansoft&amp;m=g&amp;t=2&amp;l=us" alt="thanhansoft" /></a></li>
                        <li>Hỗ trợ doanh nghiệp</li>
                        <li><a href="ymsgr:sendIM?thanhansoft">
                            <img src="http://mail.opi.yahoo.com/online?u=thanhansoft&amp;m=g&amp;t=2" border="0" alt="yahoo" /></a></li>
                        <li>Hỗ trợ doanh nghiệp</li>
                        <li><a href="ymsgr:sendIM?thanhansoft">
                            <img src="http://mail.opi.yahoo.com/online?u=thanhansoft&amp;m=g&amp;t=2" border="0" alt="yahoo" /></a></li>
                    </ul>
				</div> <!--End frame-leftcontent-->
                <div class="frame-leftcontent">   
                    <h3 class="title-left"><span>Thống Kê Truy Cập</span></h3>
                    <ul class="frame-leftcontent statistics">
                        <li>Truy cập trong ngày: 000018</li>
                        <li>Đang online: 3</li>
                        <li>Tổng số lượt truy cập: 038082</li>
                    </ul>
				</div> <!--End frame-leftcontent-->
                <div class="frame-leftcontent">
					<h2 class="title-left"><span>Quảng cáo</span></h2>
					<ul class="frame-leftcontent bg-adv">
						<li><a href="http://grouplaptrinh.com" title="grouplaptrinh"><img src="images/adv1.jpg" alt='' /></a></li>
						<li><a href="http://grouplaptrinh.com" title="grouplaptrinh"><img src="images/adv1.jpg" alt='' /></a></li>
					</ul>
				</div> <!--End frame-leftcontent-->
            </div><!--End left content-->
            <div id="rightcontent">
                <div id="banner">
                    <ul class="slider">
                        <li class="slider-item"><a href="http://grouplaptrinh.com" title="grouplaptrinh"><img src="images/banner.jpg" alt="banner" /></a></li>
                        <li class="slider-item"><img src="images/banner1.jpg" alt="banner5" /></li>
                        <li class="slider-item"><img src="images/banner2.jpg" alt="banner6" /></li>
                    </ul>
                </div>
               	<div class="frame-panel">
					<h2 class="title-right">Giới thiệu</h2>
                    <div class="frame-tent-right">     
                        <p>Lorem ipsum dolor sit amet, consectetuer adipiscing elit. Morbi luctus. Duis lobortis. Nulla nec velit.</p>
                        <p>Vivamus tortor nisl, lobortis in, faucibus et, tempus at, dui.</p> 
                        <p> Nunc risus. Proin scelerisque augue. Nam ullamcorper. Phasellus id massa. Pellentesque nisl. Pellentesque habitant morbi tristique senectus et netus et malesuada fames ac turpis egestas. Nunc augue. Aenean sed justo non leo vehicula laoreet. Praesent ipsum libero, auctor ac, tempus nec, tempor nec, justo.</p>               	</div>
                </div> 
                <div class="frame-panel">
					<h2 class="title-right">Tin tức &amp; Sự kiện</h2>
                    <div class="frame-tent-right">        
                        <ul class="masuring">
                            <li><div class="frame-img"><a href="#" title='Chứng nhận thương hiệu'><img src="images/no-images.jpg" alt='Chứng nhận thương hiệu' /></a></div>
                                <h3 class="title-masuring"><a href="#" title='Chứng nhận thương hiệu'><strong>Chứng nhận thương hiệu</strong></a></h3>
                                <p>Chứng nhận thương hiệu</p> <div class="clear"></div>
                             </li>
                        </ul>
                    </div>
                </div> <!--End frame-panel -->
               <div class="main-all-product">
                    <h2 class="title-right">Sản phẩm mới</h2>
                    <ul class="all-product">
                        <li class="product">
                            <div class="tent-product">
                                <div class="product-img"><a href="product-info.html" title=""><img src="images/pro.jpg" alt="Product" /></a></div>
                                <h2 class="title-pro"><a href="product-info.html" title="Leonidas Chocolate Assortment">Woven ring white gold paved</a></h2>
                                <p class="price">$165.00</p>
                                <p class="bton-cart"><a href="product-info.html" class="add-to-cart" title="Add to Cart"><span>Add to Cart</span></a></p>
                            </div>
                        </li>
                         <li class="product">
                            <div class="tent-product">
                                <div class="product-img"><a href="product-info.html" title=""><img src="images/pro.jpg" alt="Product" /></a></div>
                                <h2 class="title-pro"><a href="product-info.html" title="Leonidas Chocolate Assortment">Woven ring white gold paved</a></h2>
                                <p class="price">$165.00</p>
                                <p class="bton-cart"><a href="product-info.html" class="add-to-cart" title="Add to Cart"><span>Add to Cart</span></a></p>
                            </div>
                        </li>
                        <li class="product">
                            <div class="tent-product">
                                <div class="product-img"><a href="product-info.html" title=""><img src="images/pro.jpg" alt="Product" /></a></div>
                                <h2 class="title-pro"><a href="product-info.html" title="Leonidas Chocolate Assortment">Woven ring white gold paved</a></h2>
                                <p class="price">$165.00</p>
                                <p class="bton-cart"><a href="product-info.html" class="add-to-cart" title="Add to Cart"><span>Add to Cart</span></a></p>
                            </div>
                        </li>
                         <li class="product">
                            <div class="tent-product">
                                <div class="product-img"><a href="product-info.html" title=""><img src="images/pro.jpg" alt="Product" /></a></div>
                                <h2 class="title-pro"><a href="product-info.html" title="Leonidas Chocolate Assortment">Woven ring white gold paved</a></h2>
                                <p class="price">$165.00</p>
                                <p class="bton-cart"><a href="product-info.html" class="add-to-cart" title="Add to Cart"><span>Add to Cart</span></a></p>
                            </div>
                        </li>
                    </ul><!--End All products--> <div class="clear"></div>
                </div> <!--End main-content-->         
                <ul class="paging" id="yw0">
					<li class="first hidden"><a href="/san-pham/thiet-bi-ve-sinh">Đầu tiên</a></li>
					<li class="previous hidden"><a href="/san-pham/thiet-bi-ve-sinh">Lùi</a></li>
					<li class="page selected"><a href="/san-pham/thiet-bi-ve-sinh">1</a></li>
					<li class="page"><a href="/san-pham/thiet-bi-ve-sinh/trang/2">2</a></li>
					<li class="next"><a href="/san-pham/thiet-bi-ve-sinh/trang/2">Tiếp</a></li>
					<li class="last"><a href="/san-pham/thiet-bi-ve-sinh/trang/2">Cuối cùng</a></li>
				</ul>
            </div><!--End right content--> 
            <div id="colum3">
				<div class="frame-leftcontent"> 
                	<h3 class="title-red"><span>Tin tức &amp; Sự kiện mới</span></h3>  
                    <ul class="sub-new">
                        <li><a href="/tin-tuc-su-kien/tin-noi-bo/chung-nhan-thuong-hieu.html" title='Chứng nhận thương hiệu'>Chứng nhận thương hiệu</a></li>
                        <li><a href="/tin-tuc-su-kien/tin-tuc-moi/doi-moi-phuong-phap-quy-hoach.html" title="Đổi mới phương pháp quy hoạch">Đổi mới phương pháp quy hoạch</a></li>
                        <li><a href="/tin-tuc-su-kien/tin-tuc-moi/du-bao-kinh-te-2012-dau-sao-cung-nhe-nhang-hon.html" title='Dự báo kinh tế 2012: "Dẫu sao cũng nhẹ nhàng hơn"'>Dự báo kinh tế 2012: "Dẫu sao cũng nhẹ nhàng hơn"</a></li>
                        <li><a href="/tin-tuc-su-kien/thong-tin-kinh-te/dau-tu-tin-chi-cac-bon-trong-lam-nghiep-thi-truong-con-bo-ngo.html" title='Đầu tư tín chỉ các-bon trong lâm nghiệp: Thị trường còn bỏ ngỏ'>Đầu tư tín chỉ các-bon trong lâm nghiệp: Thị trường còn bỏ ngỏ</a></li>
                    </ul>
                </div>  <!--End frame-leftcontent-->
                <div class="frame-leftcontent"> 
                	<h3 class="title-grey"><span>Tin tức hot</span></h3>  
                    <ul class="sub-new">
                        <li><a href="/tin-tuc-su-kien/tin-noi-bo/chung-nhan-thuong-hieu.html" title='Chứng nhận thương hiệu'>Chứng nhận thương hiệu</a></li>
                        <li><a href="/tin-tuc-su-kien/tin-tuc-moi/doi-moi-phuong-phap-quy-hoach.html" title="Đổi mới phương pháp quy hoạch">Đổi mới phương pháp quy hoạch</a></li>
                        <li><a href="/tin-tuc-su-kien/tin-tuc-moi/du-bao-kinh-te-2012-dau-sao-cung-nhe-nhang-hon.html" title='Dự báo kinh tế 2012: "Dẫu sao cũng nhẹ nhàng hơn"'>Dự báo kinh tế 2012: "Dẫu sao cũng nhẹ nhàng hơn"</a></li>
                        <li><a href="/tin-tuc-su-kien/thong-tin-kinh-te/dau-tu-tin-chi-cac-bon-trong-lam-nghiep-thi-truong-con-bo-ngo.html" title='Đầu tư tín chỉ các-bon trong lâm nghiệp: Thị trường còn bỏ ngỏ'>Đầu tư tín chỉ các-bon trong lâm nghiệp: Thị trường còn bỏ ngỏ</a></li>
                    </ul>
                </div>  <!--End frame-leftcontent-->
                 <div class="frame-leftcontent">
					<h2 class="title-left"><span>Quảng cáo</span></h2>
					<ul class="frame-leftcontent bg-adv">
						<li><a href="http://grouplaptrinh.com" title="grouplaptrinh"><img src="images/adv1.jpg" alt='' /></a></li>
						<li><a href="http://grouplaptrinh.com" title="grouplaptrinh"><img src="images/adv1.jpg" alt='' /></a></li>
					</ul>
				</div> <!--End frame-leftcontent-->
            </div> <!--End colum3--> <div class="clear"></div>
        </div><!--End content-->
	</div> <!--End main-content-->
    <div class="panel-fter">
        <div class="fter-top"></div> 
        <div id="footer">
            <ul class="menu-fter">
                <li><a href="rings.html" title="" class="select">Trang chủ</a></li>
                <li><a href="necklace.html" title="">Giới thiệu</a></li>
                <li><a href="earrings.html" title="">Sản phẩm</a></li>
                <li><a href="pandants.html" title="">Dịch vụ</a></li>
                <li><a href="bracelets.html" title="">Tin tức &amp; Sự kiện</a></li>
                <li><a href="pandants.html" title="">Video</a></li>
                <li class="none-line"><a href="watches.html" title="">Liên hệ</a></li>
            </ul> <div class="clear"></div>
            <p>&copy; 2011 Jewelry Vip. All Rights Reserved.</p>
            <p>Design by Website <a href="#" title="">azweb.vn</a></p>
        </div><!--End Footer-->
        <div class="fter-bottom"> </div>
	</div>
</div><!--End wrapper-->
</body>
</html>

