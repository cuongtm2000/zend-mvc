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
            	<h1 class="maia-super">You want a website quality, usability. We want to help.</h1>
                <p class="maia-small">YiiProject CMS is web software you can use to create a beautiful website or blog. We like to say that it is free.</p>
                <a class="maia-button" href="#" title="">Demo Front end</a> <a class="maia-button" href="#" title="">Demo Back end</a>
            </div> <!--End left-main-about-->
            <div class="right-main-about">
            	<img src="<?php echo Yii::app()->theme->baseUrl; ?>/images/intro.png" alt="introdution" />
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
			<li><a class="first" href="<?php echo Yii::app()->baseUrl.$this->setUrlModule('about')?>" title="About us">About us</a></li>
			<li><a href="<?php echo Yii::app()->baseUrl.$this->setUrlModule('services')?>" title="Customer service">Customer service</a></li>
			<li><a href="#" title="Site map">Site map</a></li>
			<li><a class="none-line" href="<?php echo Yii::app()->baseUrl.$this->setUrlModule('contact')?>" title="Contact us">Contact us</a></li>
		</ul> <div class="clear"></div>
		<p>&copy; <?php echo date('Y') . ' ' . Yii::app()->name ?>. All Rights Reserved.</p>
		<div class="copyright">Design by <a href="http://yiiproject.com" title="Go to YiiProject.com" target="_blank">YiiProject.com</a></div> <div class="clear"></div>
    </div><!--End Footer-->
</div><!--End bg fter-->
</body>
</html>

