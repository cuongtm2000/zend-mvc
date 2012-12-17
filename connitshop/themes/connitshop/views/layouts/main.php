<!DOCTYPE html PUBLIC "-//W3C//DTD XHTML 1.0 Transitional//EN" "http://www.w3.org/TR/xhtml1/DTD/xhtml1-transitional.dtd">
<html xmlns="http://www.w3.org/1999/xhtml">
<head>
<meta http-equiv="Content-Type" content="text/html; charset=utf-8" />
<meta http-equiv="content-language" content="vi,en" />
<meta name="revisit-after" content="1 days" />
<meta name="robots" content="noodp,index,follow" />

<link rel="SHORTCUT ICON" href="<?php echo Yii::app()->theme->baseUrl; ?>/images/favicon.ico" type="image/x-icon" />
<link rel="icon" href="<?php echo Yii::app()->theme->baseUrl; ?>/images/favicon.ico" type="image/gif" />

<link rel="stylesheet" type="text/css" href="<?php echo Yii::app()->theme->baseUrl; ?>/css/dos.vn.css" media="screen"/>
<script type="text/javascript" src="<?php echo Yii::app()->theme->baseUrl; ?>/js/jquery-1.8.2.min.js"></script>

<title><?php echo CHtml::encode($this->pageTitle); ?><?php echo ($this->setting['title']) ? ' - '.CHtml::encode($this->setting['title']) : '' ?></title>
<meta name="keywords" content="<?php echo CHtml::encode($this->setting['keywords']) ?>" />
<meta name="description" content="<?php echo CHtml::encode($this->description) ?>" />

<link rel="stylesheet" type="text/css" href="<?php echo Yii::app()->theme->baseUrl; ?>/css/ticker-style.css" />
<script type="text/javascript" src="<?php echo Yii::app()->theme->baseUrl; ?>/js/site.js"></script>
<script type="text/javascript" src="<?php echo Yii::app()->theme->baseUrl; ?>/js/jquery.ticker.js"></script>
<!--[if lt IE 8]>
<link rel="stylesheet" type="text/css" href="<?php echo Yii::app()->theme->baseUrl; ?>/css/ie6.css" />
<![endif]-->
</head>
<body>
<div class="header-top">
	<div class="main-page">
		<div class="header-top-left"><span>TP. HỒ CHÍ MINH</span></div>
		<ul class="nav-top">
			<li><a href="<?php echo Yii::app()->baseUrl ?>/gioi-thieu" title="">Giới thiệu</a></li>
			<li><a href="" title="">Câu hỏi thường gặp</a></li>
			<li><a href="" title="">Chính sách bản sỉ</a></li>
			<li><a href="<?php echo Yii::app()->baseUrl ?>/tin-tuc" title="">Sự kiện hot</a></li>
            <li class="none-line"><a href="<?php echo Yii::app()->baseUrl ?>/lien-he" title="">Liên hệ</a></li>
		</ul>
		<div class="position-icon">
			<a href="" title=""><img src="<?php echo Yii::app()->theme->baseUrl; ?>/images/icon-register.png" alt="dang tin" /><b>Đăng ký</b></a>
			<a href=""><img src="<?php echo Yii::app()->theme->baseUrl; ?>/images/icon-login.png" alt="dang tin" /><b>Đăng nhập</b></a>	
		</div> <div class="clear"></div>
    </div>
</div> <!--End header-top-->
<div id="wrapper">
	<div id="header">
		<div id="logo"><?php $this->widget('ext.Logo.LogoStatic')?></div>
        <ul class="support">
            <li>
                <p>Tư vấn</p>
                <p>Mr Sang: 0902 308 590</p>
                <a href="ymsgr:sendIM?groupitsoft&amp;m=Xin chào, tôi muốn hỏi về sản phẩm - dịch vụ của công ty bạn" title="Chat groupitsoft"><img src="http://mail.opi.yahoo.com/online?u=groupitsoft&amp;m=g&amp;t=2" border="0" alt="groupitsoft" /></a>
            </li>
            <li>
                <p>Tư vấn</p>
                <p>Mr Thơ: 0902 308 590</p>														
                <p><a href="ymsgr:sendIM?groupitsoft&amp;m=Xin chào, tôi muốn hỏi về sản phẩm - dịch vụ của công ty bạn" title="Chat groupitsoft"><img src="http://mail.opi.yahoo.com/online?u=groupitsoft&amp;m=g&amp;t=2" border="0" alt="groupitsoft" /></a></p>
                <p><a href="skype:thaibao61?call"><img src="<?php echo Yii::app()->theme->baseUrl; ?>/images/sky.png"  alt="My status" /></a></p>
            </li>
        </ul>
        <div class="shop-cart">
        	<a href="" title="">Giỏ hàng <span>(0)</span></a>
        </div>		<div class="clear"></div>
	</div> <!--End header-->
    <div class="headerexten">
        <div class="bg-title-cat">
            <h2 class="title-cat">DANH MỤC SẢN PHẨM</h2>
        </div>
        <div class="bg-ticker">
            <img src="<?php echo Yii::app()->theme->baseUrl; ?>/images/new-item.jpg" alt="" />
            <div class='Tickerwrap'>
                <div class='Tickeritem'>
                    <div id='newrun' style='float:left; width:680px;'>
                        <ul id='js-news' class='js-hidden'>
                            <li class='news-item'><a href=''>Lịch sự kiện Tavinet tại Hà Nội từ 5/12/2012 đến 7/12/2012 </a></li>
                            <li class='news-item'><a href=''>LỊCH HỘI THẢO - ĐÀO TẠO TAVINET TPHCM THÁNG 12/2012</a></li>
                            <li class='news-item'><a href=''>Lịch sự kiện Tavinet tại Hà Nội từ 20/11/2012 đến 24/11/2012 </a></li>
                            <li class='news-item'><a href=''>Lịch sự kiện Tavinet tại Hà Nội từ 13/11/2012 đến 17/11/2012 </a></li>
                            <li class='news-item'><a href=''>LỊCH HỘI THẢO - ĐÀO TẠO TAVINET TPHCM THÁNG 11/2012</a></li>
                        </ul>
                    </div>
                </div>
            </div> <!--End Tickerwrap-->
        </div> <div class="clear"></div>
    </div> <!--End headerexten-->
    <?php echo $content; ?>
</div><!--End wrapper-->
<div id="footer">
    <div class="main-page copyright">
        <p><strong>Copyright &copy; 2012 ConnitShop. All rights reserved.</strong></p>
        <p> Địa chỉ : 171/3 Trần Kế Xương, P.7, Q.Phú Nhuận, Thành Phố Hồ Chí Minh</p>
        <p>Điện thoại : 0909 529 386 - 0937 060 290</p>
        <p>Email: <a href="mailto:connitshop@gmail.com" >Connitshop@gmail.com</a> - Website: <a href="http://connitshop.com">Connitshop.com</a></p>
    </div>
</div><!--End Footer-->
</body>
</html>