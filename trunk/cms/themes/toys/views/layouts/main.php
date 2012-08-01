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
		<?php $this->widget('ext.MenuMultiLevel.MenuMultiLevel', array('lastItemCssClass' => 'last'));?>
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
                <?php $this->getPosition('left');?>

            </div><!--End left content-->
            <div id="rightcontent">

                <div id="banner">
                    <ul class="slider">
                        <li class="slider-item"><a href="http://grouplaptrinh.com" title="grouplaptrinh"><img src="<?php echo Yii::app()->theme->baseUrl; ?>/images/banner.jpg" alt="banner" /></a></li>
                        <li class="slider-item"><img src="<?php echo Yii::app()->theme->baseUrl; ?>/images/banner1.jpg" alt="banner5" /></li>
                        <li class="slider-item"><img src="<?php echo Yii::app()->theme->baseUrl; ?>/images/banner2.jpg" alt="banner6" /></li>
                    </ul>
                </div>
                <?php $this->widget('zii.widgets.CBreadcrumbs', array(
                    'homeLink' => CHtml::link($this->lang['default'], Yii::app()->baseUrl.$this->setLangUrl(), array('title' => $this->lang['default'])),
                    'links'=>$this->breadcrumbs,
                    //'htmlOptions'=>array('class'=>'link'),
                    //'separator'=>' <img src="'.Yii::app()->theme->baseUrl.'/images/bull.jpg" alt="Bull" title="Bull" />',
                )); ?>
                <?php echo $content; ?>
                <?php $this->getPosition('center');?>
            </div><!--End right content--> 
            <div id="colum3">
                <?php $this->getPosition('right');?>
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
            <p>&copy; <?php echo date('Y') . ' ' . Yii::app()->name ?>. All Rights Reserved.</p>
            <p>Design by <a href="http://yiiproject.com" title="Go to YiiProject.com" target="_blank">YiiProject.com</a></p>
        </div><!--End Footer-->
        <div class="fter-bottom"> </div>
	</div>
</div><!--End wrapper-->
</body>
</html>

