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
<script type="text/javascript">
	/*$(document).ready(function(){
		if ($("#banner").length==0)
		{
			$("#heading").addClass("banner-none");

		}
	});*/
</script>
<!--[if lt IE 8]>
<link rel="stylesheet" type="text/css" href="<?php echo Yii::app()->theme->baseUrl; ?>/css/ie6.css" />
<![endif]-->
</head>
<body>
<div id="wrapper">
    <div id="logo"><a href="<?php echo Yii::app()->baseUrl.$this->setLangUrl()?>" title="Logo Yii Project"><img src="<?php echo Yii::app()->theme->baseUrl; ?>/images/logo.png" alt="Logo Yii Project" /></a></div>
    <?php $this->widget('ext.MenuMultiLevel.MenuMultiLevel', array('lastItemCssClass' => 'last'));?><div class="clear"></div>

	<?php $this->widget('ext.Banner.BannerSlider', array('default_banner' => true));?> <div class="clear"></div>
	
	<div id="content">
        <?php echo $content; ?>
		<div class="clear"></div>
	</div><!--End content-->
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