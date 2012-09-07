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
	<script type="text/javascript" src="<?php echo Yii::app()->theme->baseUrl; ?>/js/jquery-1.7.2.min.js"></script>
	
	<link rel="stylesheet" type="text/css" href="<?php echo Yii::app()->theme->baseUrl; ?>/css/simplyscroll.horizontal.css"  />
	<script type="text/javascript" src="<?php echo Yii::app()->theme->baseUrl; ?>/js/simplyscroll.horizontal.js"></script>
	<script type="text/javascript" src="<?php echo Yii::app()->theme->baseUrl; ?>/js/horizontal-config.js"></script>
	
	<script type="text/javascript" src="<?php echo Yii::app()->theme->baseUrl; ?>/js/jquery.scrollTo.js"></script>
	<script type="text/javascript" src="<?php echo Yii::app()->theme->baseUrl; ?>/js/top-page-config.js"></script>
	
	
	<title><?php echo CHtml::encode($this->pageTitle); ?><?php echo ($this->setting['title']) ? ' - '.CHtml::encode($this->setting['title']) : '' ?></title>
    <meta name="keywords" content="<?php echo CHtml::encode($this->setting['keywords']) ?>" />
    <meta name="description" content="<?php echo CHtml::encode($this->description) ?>" />

	<link rel="stylesheet" type="text/css" href="<?php echo Yii::app()->theme->baseUrl; ?>/css/prettyPhoto.css"  />
	<script type="text/javascript" src="<?php echo Yii::app()->theme->baseUrl; ?>/js/jquery.prettyPhoto.js"></script>
	

<!--[if lt IE 8]>
<link rel="stylesheet" type="text/css" href="<?php echo Yii::app()->theme->baseUrl; ?>/css/ie6.css" />
<![endif]-->
</head>
<body>
<div id="header" class="page-main">
    <div id="logo"><?php $this->widget('ext.Logo.LogoStatic')?></div>
    
</div><!--End header-->
<div class="bg-nav">
	<div class="page-main position-lang" >
		<?php $this->widget('ext.MenuMultiLevel.MenuMultiLevel',array('lastItemCssClass' => 'last'));?>
        <div class="lang">
			<?php foreach($this->listLanguage as $key => $value):?>
				<a href="<?php echo Yii::app()->baseUrl?>/<?php echo $key?>" title="<?php echo $value?>"><img src="<?php echo Yii::app()->theme->baseUrl; ?>/images/<?php echo $key?>.gif" alt="<?php echo $value?>" /></a>
			<?php endforeach?>
		</div>
		<div class="clear"></div>
     </div>   
</div> <!--End bg-nav -->
<div id="wrapper">
    <div class="main-content">
		<?php $this->widget('ext.Banner.BannerSlider');?>  
        <div id="content">
			
			<?php echo $content; ?>
		
		
			<!--<div class="breadcrumbs"><a href="" title="" >Trang chủ</a><b>&raquo;</b><span>Giới thiệu</span></div>
        	<div id="leftcontent">
            	<div class="frame-leftcontent">
                    <h4 class="title-project"><span>DỰ ÁN TIÊU BIỂU</span></h4>
                    <ul class="bg-adv">
                        <li><a href="http://grouplaptrinh.com" title="grouplaptrinh"><img src="images/img.jpg" alt='' /></a></li>
                    </ul>
                </div>
                
                <div class="frame-leftcontent">
                   <div class="video_hot"><a href="" title="" rel="prettyPhoto" ><img src="images/video-hot.jpg" alt="" /></a></div>
					<script type="text/javascript">
						$(document).ready(function(){
							$(".video_hot a[rel^='prettyPhoto']").prettyPhoto();
						});  
					</script>
				</div>
                
                <div class="frame-leftcontent">
                    <h4 class="title-project"><span>giải thưởng</span></h4>
                    <ul class="bg-adv">
                        <li><a href="http://grouplaptrinh.com" title="grouplaptrinh"><img src="images/adv1.jpg" alt='' /></a></li>
                    </ul>
                </div>
                
                <div class="frame-leftcontent">
                    <h4 class="title-left"><span>Hỗ trợ trực tuyến</span></h4>
                    <ul class="support">
                    	<li><img src="images/hot-line.png" alt="hot line" /></li>
                        <li>
                            <p>Hỗ trợ kỹ thuật</p>
                            <p>0942 001 001</p>
                            <p><a href="ymsgr:sendim?groupitsoft&amp;m=Xin chào, tôi muốn hỏi về sản phẩm - dịch vụ của Dos.vn" title="Chat groupitsoft"><img src="http://opi.yahoo.com/online?u=groupitsoft&amp;m=g&amp;t=2&amp;l=us" alt="groupitsoft" /></a></p>
                        </li>
                        <li>
                            <p>Hỗ trợ kỹ thuật</p>
                            <p>0942 001 001</p>
                            <p><a href="ymsgr:sendim?groupitsoft&amp;m=Xin chào, tôi muốn hỏi về sản phẩm - dịch vụ của Dos.vn" title="Chat groupitsoft"><img src="http://opi.yahoo.com/online?u=groupitsoft&amp;m=g&amp;t=2&amp;l=us" alt="groupitsoft" /></a></p>
                        </li>
                    </ul>
				</div>
                
                <div class="frame-leftcontent">
                    <h4 class="title-left"><span>Thống Kê Truy Cập</span></h4>
                    <ul class="statistics">
                        <li>Truy cập trong ngày: 000018</li>
                        <li>Đang online: 3</li>
                        <li>Tổng số lượt truy cập: 038082</li>
                    </ul>
                </div>
        	</div> --><!--End left content-->
           <!-- <div id="rightcontent">
            	
					<h2 class="title-right">Giới thiệu</h2>
                    <div class="frame-tent-right">     
                        <p>Lorem ipsum dolor sit amet, consectetuer adipiscing elit. Morbi luctus. Duis lobortis. Nulla nec velit.</p>
                        <p>Vivamus tortor nisl, lobortis in, faucibus et, tempus at, dui.</p> 
                        <p> Nunc risus. Proin scelerisque augue. Nam ullamcorper. Phasellus id massa. Pellentesque nisl. Pellentesque habitant morbi tristique senectus et netus et malesuada fames ac turpis egestas. Nunc augue. Aenean sed justo non leo vehicula laoreet. Praesent ipsum libero, auctor ac, tempus nec, tempor nec, justo.</p>               	</div>
    

                    <h2 class="title-right">Tin tức &amp; Sự kiện</h2>
                    <div class="frame-tent-right">        
                        <ul class="panel-items">
                            <li><div class="frame-img"><a href="#" title='Chứng nhận thương hiệu'><img src="images/no-images.jpg" alt='Chứng nhận thương hiệu' /></a></div>
                                <h3 class="title-items-new"><a href="#" title='Chứng nhận thương hiệu'><strong>Chứng nhận thương hiệu</strong></a></h3>
                                <p>Chứng nhận thương hiệu</p> <div class="clear"></div>
                             </li>
                             <li><div class="frame-img"><a href="#" title='Chứng nhận thương hiệu'><img src="images/no-images.jpg" alt='Chứng nhận thương hiệu' /></a></div>
                                <h3 class="title-items-new"><a href="#" title='Chứng nhận thương hiệu'><strong>Chứng nhận thương hiệu</strong></a></h3>
                                <p>Chứng nhận thương hiệu</p> <div class="clear"></div>
                             </li>
                        </ul>
                    </div>

                    <h2 class="title-right">Sản phẩm mới</h2>
                    <ul class="all-product">
                        <li class="product">
                            <div class="product-img"><a href="product-info.html" title=""><img src="images/pro.jpg" alt="Product" /></a></div>
                            <div class="line-bottom-pro"></div>
                            <h2 class="title-product"><a href="product-info.html" title="Leonidas Chocolate Assortment">Cửa sổ 2 cánh mở trong</a></h2>
                        </li>
                         <li class="product">
                            <div class="product-img"><a href="product-info.html" title=""><img src="images/pro.jpg" alt="Product" /></a></div>
                            <div class="line-bottom-pro"></div>
                            <h2 class="title-product"><a href="product-info.html" title="Leonidas Chocolate Assortment">Cửa đi 2 cánh</a></h2>
                        </li>
                        <li class="product">
                            <div class="product-img"><a href="product-info.html" title=""><img src="images/pro.jpg" alt="Product" /></a></div>
                            <div class="line-bottom-pro"></div>
                            <h2 class="title-product"><a href="product-info.html" title="Leonidas Chocolate Assortment">Cửa đi 2 cánh mở ngoài</a></h2>
                        </li>
                        <li class="product">
                            <div class="product-img"><a href="product-info.html" title=""><img src="images/pro.jpg" alt="Product" /></a></div>
                            <div class="line-bottom-pro"></div>
                            <h2 class="title-product"><a href="product-info.html" title="Leonidas Chocolate Assortment">Cửa sổ 2 cánh mở trong</a></h2>
                        </li>
                    </ul> --><!--End All products--> 
					<!--<div class="clear"></div>
                    <ul class="paging">
                        <li class="first hidden"><a href="/san-pham/thiet-bi-ve-sinh">Đầu tiên</a></li>
                        <li class="previous hidden"><a href="/san-pham/thiet-bi-ve-sinh">Lùi</a></li>
                        <li class="page selected"><a href="/san-pham/thiet-bi-ve-sinh">1</a></li>
                        <li class="page"><a href="/san-pham/thiet-bi-ve-sinh/trang/2">2</a></li>
                        <li class="next"><a href="/san-pham/thiet-bi-ve-sinh/trang/2">Tiếp</a></li>
                        <li class="last"><a href="/san-pham/thiet-bi-ve-sinh/trang/2">Cuối cùng</a></li>
                    </ul> <div class="clear"></div>
			</div>--> <!--End right-content--> <div class="clear"></div>       
		</div> <!--End content--> 
	</div><!--End main-content-->
	<div class="partner-top-line">
			<img class="partner" src="<?php echo Yii::app()->theme->baseUrl; ?>/images/partner.png" alt="partner" />
			<ul id="scroller" class="partner-group">
				<li><div class="partner-img"><a href="" title=""><img src="<?php echo Yii::app()->theme->baseUrl; ?>/images/partner-1.jpg" alt="" /></a></div></li>
				<li><div class="partner-img"><a href="" title=""><img src="<?php echo Yii::app()->theme->baseUrl; ?>/images/partner-2.jpg" alt="" /></a></div></li>
				<li><div class="partner-img"><a href="" title=""><img src="<?php echo Yii::app()->theme->baseUrl; ?>/images/partner-3.jpg" alt="" /></a></div></li>
				<li><div class="partner-img"><a href="" title=""><img src="<?php echo Yii::app()->theme->baseUrl; ?>/images/partner-4.jpg" alt="" /></a></div></li>
				<li><div class="partner-img"><a href="" title=""><img src="<?php echo Yii::app()->theme->baseUrl; ?>/images/partner-5.jpg" alt="" /></a></div></li>
				<li><div class="partner-img"><a href="" title=""><img src="<?php echo Yii::app()->theme->baseUrl; ?>/images/partner-6.jpg" alt="" /></a></div></li>
			</ul> <div class="clear"></div> 
	</div>
	<div class="line-menu-footer">
		<div class="panel-footer">
			<?php $this->widget('ext.MenuMultiLevel.MenuMultiLevel', array('id' => 'menu-footer', 'lastItemCssClass' => 'none-line'));?>
			<!--<ul class="menu-footer">
				<li><a href="" title="" class="select">Trang chủ</a></li>
				<li><a href="" title="">Giới thiệu</a></li>
				<li><a href="" title="">Nhà máy</a></li>
				<li><a href="" title="">Sản phẩm</a></li>
				<li><a href="" title="">Khách hàng - đối tác</a></li>
				<li><a href="" title="">Tin tức &amp; Sự kiện</a></li>
				<li><a href="" title="">Dịch vụ</a></li>
				<li><a href="" title="">Tuyển dụng</a></li>
				<li class="none-line"><a href="" title="">Liên hệ</a></li>
			</ul>-->
			<a href="" id="top-link" title=""><img src="<?php echo Yii::app()->theme->baseUrl; ?>/images/top-page.png" alt="top page" /></a>
		</div>
	</div><!--End line-menu-footer-->
	<div class="page-footer">
		<div class="logo-footer"><img src="<?php echo Yii::app()->theme->baseUrl; ?>/images/logo-footer.png" alt=""  /></div>
		<div class="copyright"><h3 class="company-footer">Công ty Cổ phần đầu tư ngôi sao MÊKONG</h3>
			<p>Trụ sở chính tại HCM: 184 Quốc lộ 13, Quận Thủ Đức</p>
			<p>Điện thoại: (84 - 4) 37 47 47 00 - Fax: (84 - 4) 37 47 47 11 - Email: infoew@mekongstarwindow.com</p>
			<p>Bản quyền website thuộc về Mekongstarwindow</p>
		</div> <div class="clear"></div>
	</div>
</div><!--End wrapper-->
</body>
</html>

