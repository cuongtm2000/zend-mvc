<!DOCTYPE html PUBLIC "-//W3C//DTD XHTML 1.0 Transitional//EN" "http://www.w3.org/TR/xhtml1/DTD/xhtml1-transitional.dtd">
<html xmlns="http://www.w3.org/1999/xhtml">
<head>
<meta http-equiv="Content-Type" content="text/html; charset=utf-8" />
<meta http-equiv="content-language" content="en" />
<meta name="revisit-after" content="1 days" />
<meta name="robots" content="noodp,index,follow" />

<link rel="SHORTCUT ICON" href="<?php echo Yii::app()->theme->baseUrl; ?>/images/favicon.ico" type="image/x-icon" />
<link rel="icon" href="<?php echo Yii::app()->theme->baseUrl; ?>/images/favicon.ico" type="image/gif" />

<link rel="stylesheet" type="text/css" href="<?php echo Yii::app()->theme->baseUrl; ?>/css/dosvn.css" />
<script type="text/javascript" src="<?php echo Yii::app()->theme->baseUrl; ?>/js/jquery-1.7.1.min.js"></script>

<link rel="stylesheet" type="text/css" href="<?php echo Yii::app()->theme->baseUrl; ?>/css/advanced-slider-base.css" />
<script type="text/javascript" src="<?php echo Yii::app()->theme->baseUrl; ?>/js/jquery.advancedSlider.min.js"></script>
<!--[if IE]><script type="text/javascript" src="<?php echo Yii::app()->theme->baseUrl; ?>/js/excanvas.compiled-ie.js"></script><![endif]-->
<!--[if lt IE 8]><script type="text/javascript" src="<?php echo Yii::app()->theme->baseUrl; ?>/js/jquery.sider.banner-ie.js"></script> <![endif]-->
<script type="text/javascript" src="<?php echo Yii::app()->theme->baseUrl; ?>/js/jquery.sider.banner.js"></script>
<script type="text/javascript">
	$(document).ready(function(){
		runbanner(950,332);
	});
</script>

<title><?php echo CHtml::encode($this->pageTitle); ?><?php echo ($this->setting['title']) ? ' - '.CHtml::encode($this->setting['title']) : '' ?></title>
<meta name="keywords" content="<?php echo CHtml::encode($this->setting['keywords']) ?>" />
<meta name="description" content="<?php echo CHtml::encode($this->setting['description']) ?>" />
</head>
<body>
	<div id="wrapper">
        <div id="header">
            <div id="logo"><a href="<?php echo Yii::app()->baseUrl.$this->setLangUrl()?>" title="Logo"><img src="<?php echo Yii::app()->theme->baseUrl; ?>/images/logo.png" alt="Logo" /></a></div><!--End logo-->
            <h1 class="title-company">CÔNG TY TNHH MTV THAN PHÚC AN</h1>
            <div class="lang">
                <?php foreach($this->listLang as $value):?>
                    <a href="<?php echo Yii::app()->baseUrl?>/<?php echo $value['language_id']?>" title="<?php echo $value['language_name']?>"><img src="<?php echo Yii::app()->theme->baseUrl; ?>/images/<?php echo $value['language_id']?>.gif" alt="<?php echo $value['language_name']?>" /></a>
                <?php endforeach?>
                <p class="phone">Tư vấn : 0933 472 626 (Mr Hạnh)</p>
            </div> <!--End lang-->	<div class="clear"></div>
        </div><!--End header-->
        <div id="all-nav">
            <?php $this->widget('ext.MenuMultiLevel.MenuMultiLevel');?>

            <?php /*$this->widget('zii.widgets.CMenu',array(
                'id' => 'nav',
                'items'=>array(
                    array('label'=>'Home', 'url'=>array('/site/index')),
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
            ));*/ ?>
        </div> <!--End all nav--><div class="clear"></div>

	<div class="banner">
	    <ul class="slider">
            <li class="slider-item"><img src="<?php echo Yii::app()->theme->baseUrl; ?>/images/banner.jpg" alt="banner" /></li>
            <li class="slider-item"><img src="<?php echo Yii::app()->theme->baseUrl; ?>/images/banner1.jpg" alt="banner1" /></li>
            <li class="slider-item"><img src="<?php echo Yii::app()->theme->baseUrl; ?>/images/banner2.jpg" alt="banner2" /></li>
            <li class="slider-item"><img src="<?php echo Yii::app()->theme->baseUrl; ?>/images/banner3.jpg" alt="banner2" /></li>
        </ul>
	</div><!--End banner -->
	<div id="content">
	   <div id="leftcontent">
			<div class="frame-leftcontent">
                <?php //$this->renderPartial('//counter/counter', $this->widget('ext.Counter.Counter')->publishAssets());?>
                <?php $this->getPosition('left');?>
			 <h2 class="title-box">CATEGORIES</h2>
				 <ul class="sub-cat">
					 <li><a href="#">Living Room</a></li>
					 <li><a href="#">Kitchen</a></li>
					 <li><a href="#">Bedroom</a></li>
					 <li><a href="#">Home entertainment</a></li>
					 <li><a href="#">Dining room furniture</a></li>
					 <li><a href="#">Kids furniture</a></li>
					 <li><a href="#">Accessories</a></li>
					 <li><a href="#">Billiard pool tables</a></li>
					 <li><a href="#">Bathroom</a></li>
					 <li><a href="#">Entry hall</a></li>
					 <li><a href="#">Office furniture</a></li>
				 </ul>
			</div>  <!-- categories -->
            
			<div class="frame-leftcontent">
			 	<h2 class="title-box">Quảng cáo</h2>
                <ul class="bg-adv">
                	<li><img src="<?php echo Yii::app()->theme->baseUrl; ?>/images/logo_thuonghoi.jpg" alt="" /></li>
			 		<li><img src="<?php echo Yii::app()->theme->baseUrl; ?>/images/new-pr.jpg" width="168" height="218" alt=""  /></li>
                </ul>
			</div> <!-- Adment-pr-->
		</div> <!-- End Left-column -->

	   <div id="rightcontent">
			<?php echo $content; ?>
            <?php $this->getPosition('center');?>
		<h2 class="title-right"><span>FEATURED PRODUCTS</span></h2>
			<ul class="all-product">
                <li class="product">
                    <div class="tent-product">
                        <div class="product-img"><a href="product-info.html" title=""><img src="<?php echo Yii::app()->theme->baseUrl; ?>/images/pr-1.jpg" alt="Product" /></a></div><div class="clear"></div>
                        <h2 class="title-pro"><a href="product-info.html" title="Leonidas Chocolate Assortment">Woven ring white gold paved</a></h2>
                        <p class="price">$165.00</p>
                        <p class="bton-pro"><a href="product-info.html" title="CHI TIẾT" class="bton-detail">CHI TIẾT</a> <a href="order.html" title="ĐẶT HÀNG" class="bton-order">ĐẶT HÀNG</a> </p>
                    </div>
                </li>
                <li class="product">
                    <div class="tent-product">
                        <div class="product-img"><a href="product-info.html" title=""><img src="<?php echo Yii::app()->theme->baseUrl; ?>/images/pr-1.jpg" alt="Product" /></a></div><div class="clear"></div>
                        <h2 class="title-pro"><a href="product-info.html" title="Leonidas Chocolate Assortment">Woven ring white gold paved</a></h2>
                        <p class="price">$165.00</p>
                        <p class="bton-pro"><a href="product-info.html" title="CHI TIẾT" class="bton-detail">CHI TIẾT</a> <a href="order.html" title="ĐẶT HÀNG" class="bton-order">ĐẶT HÀNG</a> </p>
                    </div>
                </li>
             </ul>   
	   </div> <!--END center-column -->
	   <div id="column-3">
		<div class="sellers">
            <?php $this->getPosition('right');?>
			 <h1 class="title-box">BEST SELLERS</h1>
			 <ul class="sub-new">
             	<li><a href="#" title="">Coco Modern Leather</a> </li>
                <li><a href="#" title="">Classic modern chairs</a></li>
                <li><a href="#" title="">Christine Schwarzer</a></li>
                <li><a href="#" title="">Charles Eames Style</a></li>
                <li><a href="#" title="">Ceramic Table Clock</a></li>
                <li><a href="#" title="">Casual livingroom </a></li>

			 </ul>
		</div>  <!--End sellers -->
		<div class="frame-leftcontent">
			 	<h2 class="title-box">Quảng cáo</h2>
                <ul class="bg-adv">
                	<li><img src="<?php echo Yii::app()->theme->baseUrl; ?>/images/logo_thuonghoi.jpg" alt="" /></li>
			 		<li><img src="<?php echo Yii::app()->theme->baseUrl; ?>/images/new-pr.jpg" width="168" height="218" alt=""  /></li>
                </ul>
			</div> <!-- Adment-pr-->
	   </div>  <!-- End column-3-->  <div class="clear"></div>
	</div> <!--End content -->
    
 </div> <!-- wrapper-main -->
<!--Footer-->
<div id="allfooter">
	<div id="footer">
         <ul id="menufooter">
            <li><a href="#" title="">home page</a> - </li>
            <li><a href="#" title="">about joomla</a> - </li>
            <li><a href="#" title="">online store</a> - </li>
            <li><a href="#" title="">wrapper</a> - </li>
            <li><a href="#" title="">news page</a> - </li>
            <li><a href="#" title="">contacts</a></li>
         </ul>
	 	<p>Copyright © 2011 Interior Design House. All Rights Reserved.Joomla! is Free Software released under the GNU/GPL License.</p>
     </div>
</div><!--END footer -->
</body>
</html>

