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
    <script type="text/javascript" src="<?php echo Yii::app()->theme->baseUrl; ?>/js/js-func.js"></script>

    <link rel="stylesheet" type="text/css" href="<?php echo Yii::app()->theme->baseUrl; ?>/css/lightbox.css" media="screen"/>
    <script type="text/javascript" src="<?php echo Yii::app()->theme->baseUrl; ?>/js/lightbox.js"></script>

    <title><?php echo CHtml::encode($this->pageTitle); ?><?php echo ($this->setting['title']) ? ' - '.CHtml::encode($this->setting['title']) : '' ?></title>
    <meta name="keywords" content="<?php echo CHtml::encode($this->setting['keywords']) ?>" />
    <meta name="description" content="<?php echo CHtml::encode($this->setting['description']) ?>" />
</head>
<body>
<div id="wrapper">
		<div id="logo"><a href="<?php echo Yii::app()->baseUrl.$this->setLangUrl()?>" title="Logo Yii Project"><img src="<?php echo Yii::app()->theme->baseUrl; ?>/images/logo.png" alt="Logo Yii Project" /></a></div><!--End left header-->
		<h1 id="company">Cms versatile</h1>
		<div id="navigation">
            <?php $this->widget('ext.MenuMultiLevel.MenuMultiLevel', array('linkLabelWrapper' => 'span', 'lastItemCssClass' => 'last', 'subTagOpen' => '<div class="dd-holder"><div class="dd-t"></div><div class="dd">', 'subTagClose' => '<div class="cl">&nbsp;</div></div><div class="dd-b"></div></div>'));?>
			<!-- <a href="#" class="buy-now">Buy Now</a> -->
		</div><!--End menu-->
        <div class="clear"></div>
        <div class="main-about">
        	<div class="left-main-about">
            	<h1 class="maia-super">You want a Website quality, usability. We want to help.</h1>
                <p class="maia-small">Nhận dữ liệu, công cụ và chẩn đoán để có trang web tốt, thân thiện với Google.</p>
                <a class="maia-button" href="#" title="">Demo Front end</a> <a class="maia-button" href="#" title="">Demo Back end</a>
            </div> <!--End left-main-about-->
            <div class="right-main-about">
            	<a class="lb" data-lightbox-height="422" data-lightbox-width="750" href="http://www.youtube.com/v/COcl6ax38IY?autoplay=1&amp;hl=vi&amp;cc_lang_pref=vi&amp;cc_load_policy=1"><img src="<?php echo Yii::app()->theme->baseUrl; ?>/images/stage.png" alt="stage" /></a>
				<script type="text/javascript">
					var stageTeaser = new gweb.ui.LightBox();
					stageTeaser.init();
				</script>
            </div> <!--End right-main-about--> <div class="clear"></div>
        </div> <!--End main-about -->
		<?php $this->getPosition('center');?>
        <div id="content">
        	 <div id="rightcontent">
				<?php $this->widget('ext.Banner.BannerSlider');?>
				<?php $this->widget('zii.widgets.CBreadcrumbs', array(
					'homeLink' => CHtml::link($this->lang['default'], Yii::app()->baseUrl.$this->setLangUrl(), array('title' => $this->lang['default'])),
					'links'=>$this->breadcrumbs,
					'separator' =>'<b>&raquo;</b>'
				)); ?>
				<?php echo $content; ?>
				<?php $this->getPosition('left');?>
            </div><!--End right content-->
        	<div id="leftcontent">
				<?php $this->getPosition('right');?>				
            </div><!--End left content--> <div class="clear"></div>
        </div><!--End content-->
</div><!--End wrapper-->
<div id="bg-footer">
    <div id="footer">
		<ul class="menu-footer">
			<li><a class="first" href="about.html">About us</a></li>
			<li><a href="services.html">Customer Service</a></li>
			<li><a href="#">Site Map</a></li>
			<li><a href="#">Search Terms</a></li>
			<li><a href="#">Advanced Search</a></li>
			<li><a class="none-line" href="contact.html">Contact Us</a></li>
		</ul> <div class="clear"></div>
		<p>&copy; <?php echo date('Y') . ' ' . Yii::app()->name ?>. All Rights Reserved.</p>
		<div class="copyright">Design by <a href="http://yiiproject.com" title="Go to YiiProject.com" target="_blank">YiiProject.com</a></div> <div class="clear"></div>
    </div><!--End Footer-->
</div><!--End bg fter-->
</body>
</html>

