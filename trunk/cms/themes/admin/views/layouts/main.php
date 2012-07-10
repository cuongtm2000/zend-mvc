<!DOCTYPE html PUBLIC "-//W3C//DTD XHTML 1.0 Transitional//EN" "http://www.w3.org/TR/xhtml1/DTD/xhtml1-transitional.dtd">
<html xmlns="http://www.w3.org/1999/xhtml">
<head>
	<meta http-equiv="Content-Type" content="text/html; charset=utf-8" />
	<meta http-equiv="content-language" content="vi, en" />
	<link rel="SHORTCUT ICON" href="<?php echo Yii::app()->theme->baseUrl; ?>/images/favicon.ico" type="image/x-icon" />
	<link rel="icon" href="<?php echo Yii::app()->theme->baseUrl; ?>/images/favicon.ico" type="image/gif" />

    <link type="text/css" rel="stylesheet" href="<?php echo Yii::app()->theme->baseUrl; ?>/css/dosvn.css" />
    <title><?php echo CHtml::encode($this->pageTitle); ?><?php echo ($this->setting['title']) ? ' - '.CHtml::encode($this->setting['title']) : '' ?></title>
    <meta name="keywords" content="<?php echo CHtml::encode($this->setting['keywords']) ?>" />
    <meta name="description" content="<?php echo CHtml::encode($this->setting['description']) ?>" />

	<script type="text/javascript" src="<?php echo Yii::app()->theme->baseUrl; ?>/js/ddaccordion.js"></script>
	<script type="text/javascript" src="<?php echo Yii::app()->theme->baseUrl; ?>/js/ddaccordion.effect.js"></script>

	<!--[if IE]>
	<style>
		fieldset {position: relative; margin-top:10px}
		legend {position: absolute;	top: -0.5em; left: 1em}
	</style>
	<![endif]-->
</head>
<body>
<div id="header">
	<div class="logo"><a href="<?php echo Yii::app()->request->baseUrl ?>/admin"><img src="<?php echo Yii::app()->theme->baseUrl; ?>/images/logo.png" alt="Logo" /></a> <strong>Webadmin</strong></div>
	<div class="frmlogged">
		Chào <strong><?php echo Yii::app()->user->name ?></strong>
		<a href="<?php echo Yii::app()->homeUrl ?>" target="_blank" title="Website">Website</a>
		<a href="#" title="Hộp thư">Hộp thư (0)</a>
		<a href="<?php echo Yii::app()->request->baseUrl ?>/admin/logout" title="Thoát">Thoát</a>
	</div>
	<div class="lang"><a href="<?php echo Yii::app()->request->baseUrl ?>/admin" title="Viet nam"><img src="<?php echo Yii::app()->theme->baseUrl; ?>/images/vn.gif" alt="Viet nam" /></a> <a href="<?php echo Yii::app()->request->baseUrl ?>/en/admin" title="English"><img src="<?php echo Yii::app()->theme->baseUrl; ?>/images/en.gif" alt="English" /></a></div>
</div>
<?php $this->widget('zii.widgets.CMenu',array(
    'id' => 'tabs',
    'activeCssClass' => 'select',
    'linkLabelWrapper' => 'span',
    'items'=>array(
        array('label'=>'Home', 'url'=>array('/admin')),
        array('label'=>'About', 'url'=>array('/site/page', 'view'=>'about')),
        array('label'=>'Products', 'url'=>array('product/index'),
            'items'=>array(
                array('label'=>'New Arrivals', 'url'=>array('product/new', 'tag'=>'new')),
                array('label'=>'Most Popular', 'url'=>array('product/index', 'tag'=>'popular')),
            )
        ),
        array('label'=>'Contact', 'url'=>array('/site/contact')),
        array('label'=>'Login', 'url'=>array('/site/login'), 'visible'=>Yii::app()->user->isGuest),
        array('label'=>'Logout ('.Yii::app()->user->name.')', 'url'=>array('/site/logout'), 'visible'=>!Yii::app()->user->isGuest)
    ),
)); ?>
<!-- <ul id="tabs">
	<li><a href="<?php echo Yii::app()->request->baseUrl ?>/admin"<?php echo ($this->id =='default') ? ' class="select"' : ''?>><span>Trang chủ</span></a></li>
	<li><a href="<?php echo Yii::app()->request->baseUrl ?>/admin/configs"<?php echo ($this->id =='configs') ? ' class="select"' : ''?>><span>Cấu hình &amp; cài đặt</span></a></li>
	<li><a href="<?php echo Yii::app()->request->baseUrl ?>/admin/report"<?php echo ($this->id =='report') ? ' class="select"' : ''?>><span>Báo cáo &amp; công cụ</span></a></li>
	<li><a href="<?php echo Yii::app()->request->baseUrl ?>/admin/payment"<?php echo ($this->id =='payment') ? ' class="select"' : ''?>><span>Thanh toán</span></a></li>
	<li><a href="<?php echo Yii::app()->request->baseUrl ?>/admin/account"<?php echo ($this->id =='account') ? ' class="select"' : ''?>><span>Tài khoản của tôi</span></a></li>
</ul> --><div class="clear"></div>
<div class="paddinglr10">
	<div class="menu-bar">
		<?php if($this->id=='account'):?>
		<div class="catmenu">
			<ul class="menu-li">
				<li><a class="headerbar" href="#">Tài khoản của tôi</a>
					<ul class="submenu">
						<li><a href="<?php echo Yii::app()->request->baseUrl ?>/admin/account">Thay đổi thông tin</a></li>
						<li><a href="<?php echo Yii::app()->request->baseUrl ?>/admin/account/changepass">Thay đổi mật khẩu</a></li>
					</ul>
				</li>
			</ul>
		</div>
		<?php endif;?>
		<?php if($this->id=='configs'):?>
		<div class="catmenu">
			<ul class="menu-li">
				<li><a class="headerbar" href="#">Cài đặt &amp; cấu hình</a>
					<ul class="submenu">
						<li><a href="<?php echo Yii::app()->request->baseUrl ?>/admin/configs/web">Tiêu đề website</a></li>
						<li><a href="<?php echo Yii::app()->request->baseUrl ?>/admin/configs/menu">Cấu hình Menu</a></li>
						<li><a href="<?php echo Yii::app()->request->baseUrl ?>/admin/configs/langs">Cấu hình ngôn ngữ</a></li>
						<li><a href="<?php echo Yii::app()->request->baseUrl ?>/admin/configs/templates">Đổi mẫu website</a></li>
						<li><a href="<?php echo Yii::app()->request->baseUrl ?>/admin/configs/seo">Công cụ tìm kiếm</a></li>
					</ul>
				</li>
			</ul>
		</div>
		<?php endif;?>
		<div class="catmenu">
			<ul class="menu-li">
				<li><a class="headerbar" href="">Menu</a>
					<ul class="submenu">
						<li><a href="" title="">Sub</a></li>
                        <li><a href="" title="">Sub</a></li>
                        <li><a href="" title="">Sub</a></li>
                        <li><a href="" title="">Sub</a></li>
					</ul>
				</li>
                <li><a class="headerbar" href="">Menu</a>
                    <ul class="submenu">
                        <li><a href="" title="">Sub</a></li>
                        <li><a href="" title="">Sub</a></li>
                        <li><a href="" title="">Sub</a></li>
                        <li><a href="" title="">Sub</a></li>
                    </ul>
                </li>
			</ul>
		</div>
	</div>
	<div class="contenter">
		<?php echo $content ?>
		<div id="footer">
			<p>Copyright &copy; <?php echo date('Y'); ?> by Dos.vn. All rights reserved</p>
		</div>
	</div>
</div>
</body>
</html>