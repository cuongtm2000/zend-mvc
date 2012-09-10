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
	
	<!--[if lt IE 8]>
	<link rel="stylesheet" type="text/css" href="<?php echo Yii::app()->theme->baseUrl; ?>/css/ie6.css" />
	<![endif]-->
</head>
<body>
<div id="header" class="page-main">
    <div id="logo"><?php $this->widget('ext.Logo.LogoStatic')?></div>
</div><!--End header-->

<div id="wrapper">
	<div class="bg-nav">
		<div class="position-lang" >
			<?php $this->widget('ext.MenuMultiLevel.MenuMultiLevel',array('lastItemCssClass' => 'last'));?>
			<div class="lang">
				<?php foreach($this->listLanguage as $key => $value):?>
					<a href="<?php echo Yii::app()->baseUrl?>/<?php echo $key?>" title="<?php echo $value?>"><img src="<?php echo Yii::app()->theme->baseUrl; ?>/images/<?php echo $key?>.gif" alt="<?php echo $value?>" /></a>
				<?php endforeach?>
			</div>
			<div class="clear"></div>
		 </div>   
	</div> <!--End bg-nav -->
    <div class="main-content">
        <div id="content">	
			<?php echo $content; ?>    
                <!--<div class="frame-leftcontent">
                   <div class="video_hot"><a href="" title="" rel="prettyPhoto" ><img src="images/video-hot.jpg" alt="" /></a></div>
					<script type="text/javascript">
						$(document).ready(function(){
							$(".video_hot a[rel^='prettyPhoto']").prettyPhoto();
						});  
					</script>
				</div> --> <div class="clear"></div>       
		</div> <!--End content--> 
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
		
		<div class="bg-nav">
			<div class="panel-footer">
				<?php $this->widget('ext.MenuMultiLevel.MenuMultiLevel', array('id' => 'menu-footer', 'lastItemCssClass' => 'none-line'));?>
				<a href="" id="top-link" title=""><img src="<?php echo Yii::app()->theme->baseUrl; ?>/images/top-page.png" alt="top page" /></a>
			</div>
		</div>
		
		<div class="page-footer">
			<div class="logo-footer"><img src="<?php echo Yii::app()->theme->baseUrl; ?>/images/logo-footer.png" alt=""  /></div>
			<div class="copyright"><h3 class="company-footer"><?php echo $this->lang['company_footer']?></h3>
				<p><?php echo $this->lang['address_1'] ?></p>
				<p><?php echo $this->lang['address_2'] ?></p>
				<p><?php echo $this->lang['copyright'] ?></p>
			</div> <div class="clear"></div>
		</div>
	</div><!--End main-content-->
</div><!--End wrapper-->
</body>
</html>

