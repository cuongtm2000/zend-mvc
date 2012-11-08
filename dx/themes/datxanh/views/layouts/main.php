<!DOCTYPE html PUBLIC "-//W3C//DTD XHTML 1.0 Transitional//EN" "http://www.w3.org/TR/xhtml1/DTD/xhtml1-transitional.dtd">
<html xmlns="http://www.w3.org/1999/xhtml">
<head>
<meta http-equiv="Content-Type" content="text/html; charset=utf-8" />
<meta http-equiv="content-language" content="en" />
<meta name="revisit-after" content="1 days" />
<meta name="robots" content="noodp,index,follow" />

<link rel="SHORTCUT ICON" href="<?php echo Yii::app()->theme->baseUrl; ?>/images/favicon.ico" type="image/x-icon" />
<link rel="icon" href="<?php echo Yii::app()->theme->baseUrl; ?>/images/favicon.ico" type="image/gif" />

<link rel="stylesheet" type="text/css" href="<?php echo Yii::app()->theme->baseUrl; ?>/css/dos.vn.css" media="screen"/>
<script type="text/javascript" src="<?php echo Yii::app()->theme->baseUrl; ?>/js/jquery-1.8.2.min.js"></script>

<title><?php echo CHtml::encode($this->pageTitle); ?><?php echo ($this->setting['title']) ? ' - '.CHtml::encode($this->setting['title']) : '' ?></title>
<meta name="keywords" content="<?php echo CHtml::encode($this->setting['keywords']) ?>" />
<meta name="description" content="<?php echo CHtml::encode($this->description) ?>" />

<!--[if lt IE 8]>
<link rel="stylesheet" type="text/css" href="<?php echo Yii::app()->theme->baseUrl; ?>/css/ie6.css" />
<![endif]-->
</head>
<body>
<div id="wrapper">
    <div id="logo"><a href="<?php echo Yii::app()->baseUrl.$this->setLangUrl()?>" title="Logo Yii Project"><img src="<?php echo Yii::app()->theme->baseUrl; ?>/images/logo.png" alt="Logo Yii Project" /></a></div>
	<?php if(!Yii::app()->memberLands->id):?>
         <h4 class="title-box"><span>Đăng nhập</span></h4>
        <form class="login" action="san-giao-dich/dang-nhap" method="post">
            <p><label for="LandsLoginForm_username">Username</label></p>
            <input type="text" name="LandsLoginForm[username]" id="LandsLoginForm_username" value="" />
            <p><label for="LandsLoginForm_password">Mật khẩu</label></p>
            <input type="password" name="LandsLoginForm[password]" id="LandsLoginForm_password" value="" />
            <p class="text-button"><input class="button-login" type="submit" value="Đăng Nhập" name="login"/></p>
            <a class="button-register" href="<?php echo Yii::app()->baseUrl ?>/san-giao-dich/dang-ky"><b>Đăng ký tài khoản</b></a>
        </form>
    <?php else:?>
		<div class="position-post">
			 <div class="list-product"><a href="<?php echo Yii::app()->baseUrl ?>/lands/default/add"><img src="<?php echo Yii::app()->theme->baseUrl; ?>/images/icon-register.png" alt="dang tin" /><b>Đăng tin</b></a>
			 <a href="<?php echo Yii::app()->baseUrl ?>/lands/default/listpost"><img src="<?php echo Yii::app()->theme->baseUrl; ?>/images/icon-login.png" alt="dang tin" /><b>Tin đã đăng</b></a> 
			 <a href="<?php echo Yii::app()->baseUrl ?>/lands/default/logout"><img src="<?php echo Yii::app()->theme->baseUrl; ?>/images/icon-login.png" alt="dang tin" /><b>Đăng xuất</b></a>
			 </div>
		 </div> <div class="clear"></div>
    <?php endif ?>
	
    <?php $this->widget('ext.MenuMultiLevel.MenuMultiLevel', array('lastItemCssClass' => 'last'));?><div class="clear"></div>

	<?php $this->widget('ext.Banner.BannerSlider', array('default_banner' => true));?> <div class="clear"></div>
		
	<div id="content">
	
	   <?php echo $content; ?>
		<div class="clear"></div>
	</div><!--End content-->
	<?php $this->getPosition('bottom');?>
</div><!--End wrapper-->
<div id="bg-footer">
    <div id="footer">
        <div class="logo-footer"><img src="<?php echo Yii::app()->theme->baseUrl; ?>/images/logo-footer.png" alt="" /></div>
        <div class="info-company">
        	<h3>CÔNG TY CỔ PHẦN ĐẦU TƯ PHÁT TRIỂN ĐẤT XANH TOÀN CẦU</h3>
            <p>114 Nguyển Cửu Vân, Phường 17, Quận Bình Thạnh</p>
            <p>ĐT:(08) 35 114 1114</p>
        </div>
        <div class="statistics">
		    <?php $this->getPosition('footer');?>
            <p>Phát triển bởi <a href="http://dos.vn" title="Dos.vn" target="_blank">Dos.vn</a></p>
        </div> <div class="clear"></div>
    </div><!--End footer-->
</div> <!--End bg footer-->
</body>
</html>