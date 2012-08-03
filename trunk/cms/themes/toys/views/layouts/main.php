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
    <meta name="description" content="<?php echo CHtml::encode($this->description) ?>" />

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
         <?php if($this->setting['hotline']):?><p class="hot-line"><?php echo $this->setting['hotline']?></p><?php endif?> <div class="clear"></div>
    </div>
    <div class="bg-nav">
		<?php $this->widget('ext.MenuMultiLevel.MenuMultiLevel', array('lastItemCssClass' => 'last'));?><div class="clear"></div>
    </div>
    <div class="main-content">    
        <div id="content">
        	<div id="leftcontent">
                <?php $this->getPosition('left');?>
            </div><!--End left content-->
            <div id="rightcontent">
                <?php $this->widget('ext.Banner.BannerSlider');?>
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
				<h4 class="title-grey"><span>Thăm dò ý kiến</span></h4>
				<div class="panel-polls">
					<p>Màu sắc bạn yêu thích của bạn là gì?</p>
					<ul class="sub-polls">
						<li><input type="radio" id="vote17" name="vote" value="17" /><label for="vote17">Xanh</label></li>
						<li><input type="radio" id="vote18" name="vote" value="18" /><label for="vote18">Red</label></li>
						<li><input type="radio" id="vote19" name="vote" value="19" /><label for="vote19">Đen</label></li>
						<li><input type="radio" id="vote20" name="vote" value="20" /><label for="vote20">Cam</label></li>
					</ul>
					<div class="f-action">
						<input onclick="sendvoting(6)" class="button_polls" type="button" value="Bình chọn" />
						<a title="Kết quả" rel="prettyPhoto[iframes]"  href="/vote/index/index/vid/6?iframe=true&amp;width=70%&amp;height=70%" >&nbsp; Kết quả</a>
					</div>
				</div>
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