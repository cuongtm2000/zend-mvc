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
			<li><a href="<?php echo Yii::app()->baseUrl ?>/cau-hoi-thuong-gap" title="">Câu hỏi thường gặp</a></li>
			<li><a href="<?php echo Yii::app()->baseUrl ?>/chinh-sach-ban-si" title="">Chính sách bản sỉ</a></li>
			<li><a href="<?php echo Yii::app()->baseUrl ?>/su-kien-hot" title="">Sự kiện hot</a></li>
            <li class="none-line"><a href="<?php echo Yii::app()->baseUrl ?>/lien-he" title="">Liên hệ</a></li>
		</ul>
        <script type="text/javascript">
            $(".nav-top li").each(function(){
                var myUrl = $(this).find('a').attr('href');
                if(myUrl == window.location.pathname){
                    $(this).addClass('selected');
                }
            });
        </script>
		<div class="position-icon">
			<?php if(!Yii::app()->memberProducts->id):?>
				<a href="<?php echo Yii::app()->baseUrl ?>/san-pham/dang-ky" title=""><img src="<?php echo Yii::app()->theme->baseUrl; ?>/images/icon-register.png" alt="Đăng ký" /><b>Đăng ký</b></a>
				<a href="<?php echo Yii::app()->baseUrl ?>/san-pham/dang-nhap"><img src="<?php echo Yii::app()->theme->baseUrl; ?>/images/icon-login.png" alt="Đăng nhập" /><b>Đăng nhập</b></a>
			<?php else:?>
				Chào <strong><?php echo Yii::app()->memberProducts->id?></strong>
				<a href="<?php echo Yii::app()->baseUrl ?>/products/login/logout"><b>Đăng xuất</b></a>
			<?php endif?>
		</div> <div class="clear"></div>
    </div>
</div> <!--End header-top-->
<div id="wrapper">
	<div id="header">
		<div id="logo"><?php $this->widget('ext.Logo.LogoStatic')?></div>
        <?php $this->getPosition('header')?>
        <div class="shop-cart">
        	<a href="" title="">Giỏ hàng <span>(0)</span></a>
        </div>		<div class="clear"></div>
	</div> <!--End header-->
    <div class="headerexten">
        <div class="bg-title-cat">
            <h2 class="title-cat"><a href="<?php echo Yii::app()->baseUrl ?>/san-pham" title=""><?php echo $this->lang['cat_title'].' '.strtolower($this->lang['products'])?></a></h2>
        </div>
		<?php $this->getPosition('top')?>
        <div class="clear"></div>
    </div> <!--End headerexten-->
    <?php echo $content ;?>
</div><!--End wrapper-->
<div id="footer">
    <div class="main-page copyright">
        <p><strong><?php echo $this->lang['copyright']?></strong></p>
        <p><?php echo $this->lang['address']?></p>
        <p><?php echo $this->lang['phone']?></p>
        <p>Email: <a href="mailto:<?php echo $this->lang['email']?>" ><?php echo $this->lang['email']?></a> - Website: <a href="http://connitshop.com">Connitshop.com</a></p>
    </div>
</div><!--End Footer-->
</body>
</html>