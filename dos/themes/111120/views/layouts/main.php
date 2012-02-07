<!DOCTYPE html PUBLIC "-//W3C//DTD XHTML 1.0 Transitional//EN" "http://www.w3.org/TR/xhtml1/DTD/xhtml1-transitional.dtd">
<html xmlns="http://www.w3.org/1999/xhtml">
<head>
<meta http-equiv="Content-Type" content="text/html; charset=utf-8" />
<meta http-equiv="content-language" content="vi, en" /> 
<meta name="revisit-after" content="1 days" />
<meta name="robots" content="noodp,index,follow" />
<link rel="SHORTCUT ICON" href="<?php echo Yii::app()->theme->baseUrl; ?>/images/favicon.ico" type="image/x-icon" />
<link rel="icon" href="<?php echo Yii::app()->theme->baseUrl; ?>/images/favicon.ico" type="image/gif" />
<title><?php echo CHtml::encode($this->pageTitle); ?><?php echo ($this->title) ? ' - '.CHtml::encode($this->title) : '' ?></title>
<meta name="keywords" content="<?php echo $this->keywords ?>" /> 
<meta name="description" content="<?php echo $this->description ?>" />
<link href="<?php echo Yii::app()->theme->baseUrl; ?>/css/dosvn.css" rel="stylesheet" type="text/css" />
<link href="<?php echo Yii::app()->theme->baseUrl; ?>/css/product-detail.css" rel="stylesheet" type="text/css" /> 
<link href="<?php echo Yii::app()->theme->baseUrl; ?>/css/jquery.fancybox-1.3.1.css" rel="stylesheet" type="text/css" />

<link rel="stylesheet" type="text/css" href="<?php echo Yii::app()->theme->baseUrl; ?>/css/wt-rotator.css" /> 
<script type="text/javascript" src="<?php echo Yii::app()->theme->baseUrl; ?>/js/jquery-1.6.4.min.js"></script>
<script type="text/javascript" src="<?php echo Yii::app()->theme->baseUrl; ?>/js/jquery-banner-rotato.js"></script> 
<script type="text/javascript" src="<?php echo Yii::app()->theme->baseUrl; ?>/js/jquery-banner-rotato.effect.js"></script>
<script type="text/javascript">
	$(document).ready(function(){
		runbanner(<?php echo $this->configs['banner_width'] ?>, <?php echo $this->configs['banner_height'] ?>);
	});
</script>

<script type="text/javascript" src="<?php echo Yii::app()->theme->baseUrl; ?>/js/jcarousellite.js"></script>
<script type="text/javascript" src="<?php echo Yii::app()->theme->baseUrl; ?>/js/contentslider.js"></script>
<script type="text/javascript" src="<?php echo Yii::app()->theme->baseUrl; ?>/js/scroller.js"></script>
<!--Light box and fancybox-->
<script type="text/javascript" src="<?php echo Yii::app()->theme->baseUrl; ?>/js/jquery.fancybox-1.3.1.js"></script>
<script type="text/javascript" src="<?php echo Yii::app()->theme->baseUrl; ?>/js/lightbox.js"></script> 
</head>
<body>
<div id="wrapper">
		<div id="header-top">
            <div class="lang">
               <a href="<?php echo Yii::app()->request->baseUrl ?>/">Tiếng Việt <img src="<?php echo Yii::app()->theme->baseUrl; ?>/images/vn.gif" alt="Việt Nam" class="lang-vn"/></a>
               <a href="<?php echo Yii::app()->request->baseUrl ?>/en" title="">English <img src="<?php echo Yii::app()->theme->baseUrl; ?>/images/en.gif" alt="English" /></a>
            </div>
    	</div>  
        <div id="header">
                <ul class="menu-hd-right">
                	<li class="welcome">Default welcome Coffee!</li>
                    <li><a href="login.html" title="">My Account</a></li>
                    <li><a href="login.html" title="">My Wishlist</a></li>
                    <li><a href="login.html" title="">My Cart</a></li>
                    <li><a href="login.html" title="">Checkout</a></li>
                    <li><a href="login.html" title="">Log In</a></li>
                </ul>
                <div  id="search">
                    <form  id="frsearch" name="frm-search" action="" method="post">
                        <input type="text" class="input"  value="Search entire store here ..." onblur="if(this.value=='') this.value='Search entire store here ...'" onfocus="if(this.value =='Search entire store here ...' ) this.value=''"/>
                        <input type="image" src="<?php echo Yii::app()->theme->baseUrl; ?>/images/btn-go.gif" alt="" class="bt-go" />
                    </form>
                </div>
            <div class="clear"></div>
                <div class="logo">
                    <?php if($this->logo):?>
                        <a href="<?php echo Yii::app()->request->baseUrl ?>/" title="<?php echo $this->logo['banner_name']?>"><img src="<?php echo Yii::app()->baseUrl.USERFILES ?>/banner/<?php echo $this->logo['banner_url'] ?>" alt="<?php echo $this->logo['banner_name']?>" /></a>
                    <?php else:?>
                        <a href="<?php echo Yii::app()->request->baseUrl ?>/" title=""><img src="<?php echo Yii::app()->theme->baseUrl; ?>/images/logo.png" alt="Logo" /></a>
                    <?php endif;?>
                </div>
                <ul class="menu">
                    <?php foreach($this->nav as $value):?>
                        <?php $selected = ($value['url']==$this->module->id) ?  ' class="select"' : ''?>
                        <?php $target = ($value['target']=='') ? '' : ' target="'.$value['target'].'"'; ?>
                        <li<?php echo $selected ?>><a href="<?php echo (strpos($value['url'], 'http://') === false) ? Yii::app()->request->baseUrl.LANGURL.'/'.$value['url'] : $value['url'] ?>" title="<?php echo $value['menu'.LANG] ?>"<?php echo $target ?>><?php echo $value['menu'.LANG] ?></a></li>
                    <?php endforeach;?>
                    <!--<li><a href="coffee.html" title="">Coffees</a>
                        <ul>
                            <li><a href="#" title="">Gourmet Coffee</a></li>
                            <li><a href="#" title="">Coffee Blends</a></li>
                            <li><a href="#" title="">Cuvee Collection</a></li>
                            <li><a href="#" title="">Flavored Coffees</a></li>
                            <li><a href="#" title="">Organic Coffee</a></li>
                            <li><a href="#" title="">Decaf Coffee</a></li>
                        </ul>
                    </li>
                    <li><a href="teas-chai.html" title="">Teas &amp; Chai</a>
                        <ul>
                            <li><a href="#" title="">Herbal Teas</a></li>
                            <li><a href="#" title="">Flavored Tea</a></li>
                            <li><a href="#" title="">Chai Tea</a></li>
                            <li><a href="#" title="">Loose  Leaf Tea</a></li>
                        </ul>
                    </li>
                    <li><a href="cakes-candies.html" title="">Cakes &amp; Candies</a>
                        <ul>
                            <li><a href="#" title="">Aeration</a></li>
                            <li><a href="#" title="">Filters</a></li>
                            <li><a href="#" title="">Lighting</a></li>
                            <li><a href="#" title="">Plumbing Parts</a></li>
                        </ul>
                    </li>
                    <li><a href="coffee-accessories.html" title="">Coffee Accessories</a></li>
                    <li><a href="flavoring.html" title="">Flavorings</a></li> -->
                </ul><!--End menu-->
            <div class="clear"></div>
        </div><!--End header--> 
        <div id="content">
        	<div id="leftcontent">
                <?php if(isset($this->function['menu_about']) && ($this->function['menu_about'])):?>
                    <h1 class="title-left"><span><?php echo $this->lang['about'] ?></span></h1>
                    <ul class="subcate">
                        <?php foreach($this->function['menu_about'] as $value): ?>
                    	<li><a href="<?php echo Yii::app()->request->baseUrl.LANGURL ?>/about/<?php echo $value['tag']?>.html" title="<?php echo $value['title'.LANG]?>"><?php echo $value['title'.LANG]?></a></li>
                        <?php endforeach; ?>
                    </ul>
                <?php endif;?>
                
                <?php if(isset($this->function['menu_services']) && ($this->function['menu_services'])):?>
                    <h1 class="title-left"><span><?php echo $this->lang['services'] ?></span></h1>
                    <ul class="subcate">
                        <?php foreach($this->function['menu_services'] as $value): ?>
                    	<li><a href="<?php echo Yii::app()->request->baseUrl.LANGURL ?>/services/<?php echo $value['tag']?>.html" title="<?php echo $value['title'.LANG]?>"><?php echo $value['title'.LANG]?></a></li>
                        <?php endforeach; ?>
                    </ul>
                <?php endif;?>

                <?php if(isset($this->function['menu_products']) && ($this->function['menu_products'])):?>
            	<h1 class="title-left"><span><?php echo $this->lang['products'] ?></span></h1>
                <ul class="subcate">
                    <?php Common::menuMultiLevel($this->function['menu_products'], 'ProductCats', 'products'); ?>
                </ul>
                <?php endif;?>
                
                <?php if(isset($this->function['advs_left']) && ($this->function['advs_left'])):?>
                    <h1 class="title-left"><span><?php echo $this->lang['advs'] ?></span></h1>
                    <?php foreach($this->function['advs_left'] as $value): ?>
                        <p class="mycart advs"><a href="<?php echo $value['url'] ?>" target="<?php echo $value['type'] ?>" title="<?php echo $value['title'.LANG] ?>"><img src="<?php echo Yii::app()->baseUrl.USERFILES ?>/advs/<?php echo $value['pic_thumb'] ?>" alt="<?php echo $value['title'.LANG] ?>" /></a></p>
                    <?php endforeach; ?>
                <?php endif;?>
                
                <!-- <h1 class="title-left"><span>Compare Products</span></h1>
                <ul class="sub-rely-products">
                	<li>You have no items to compare.</li>
                </ul> -->
                
                <?php if(isset($this->function['list_supports']) && ($this->function['list_supports'])):?>
                <h1 class="title-left"><span><?php echo $this->lang['supports'] ?></span></h1>
                <ul class="support">
                    <?php foreach($this->function['list_supports'] as $value): ?>
                        <?php if($value['support_type']=='yahoo'): ?>
                	        <?php if($value['support_name']) echo '<li>'.$value['support_name'].'</li>'; ?>
                            <?php if($value['support_phone']) echo '<li>'.$value['support_phone'].'</li>'; ?>
                            <li><a href="ymsgr:sendim?<?php echo $value['support_value'] ?>"><img src="http://opi.yahoo.com/online?u=<?php echo $value['support_value'] ?>&amp;m=g&amp;t=2&amp;l=us" alt="<?php echo $value['support_value'] ?>" /></a></li>
                        <?php endif; ?>
                    <?php endforeach; ?>
                </ul>
                <?php endif; ?>
                
                <h1 class="title-left"><span><?php echo $this->lang['counter'] ?></span></h1>
                <ul class="statistics">
                	<li>Online: <?php echo Yii::app()->counter->getOnline(); ?></li>
                    <li>Today: <?php echo Yii::app()->counter->getToday(); ?></li>
                    <li>Yesterday: <?php echo Yii::app()->counter->getYesterday(); ?></li>
                    <li>Total: <?php echo Yii::app()->counter->getTotal(); ?></li>
                    <li>Maximum: <?php echo Yii::app()->counter->getMaximal(); ?></li>
                    <li>Date for maximum: <?php echo date('d.m.Y', Yii::app()->counter->getMaximalTime()); ?></li>
                </ul>
            </div><!--End left content-->
            <div id="rightcontent">
                <?php if($this->banner): ?>
            	<div id="banner">
                	<div class="container"> 
                        <div class="wt-rotator">
                            <a href="#"></a>   
                            <div class="thumbnails"> 
                                  <ul>
                                        <?php foreach($this->banner as $value): ?>
                                            <li><a href="<?php echo Yii::app()->request->baseUrl.USERFILES; ?>/banner/<?php echo $value['banner_url'] ?>" title="<?php echo $value['banner_name'] ?>"></a></li>
                                        <?php endforeach ?>  
                                  </ul> 
                            </div>
                        </div> 
                    </div>
                </div><!--End banner-->
                <?php endif; ?>
                
                <?php $this->widget('zii.widgets.CBreadcrumbs', array(
                    'homeLink' => CHtml::link($this->lang['default'], (LANGURL) ? LANGURL : Yii::app()->homeUrl),
            		'links'=>$this->breadcrumbs,
                    'htmlOptions'=>array('class'=>'link'),
                    'separator'=>' <img src="'.Yii::app()->theme->baseUrl.'/images/bull.jpg" alt="Bull" title="Bull" />',
            	)); ?><!-- breadcrumbs -->
                <?php echo $content?>
                
            </div><!--End right content-->
            <div class="clear"></div>
        </div><!--End content-->
        <div id="footer">
        <div class="left">
            <ul class="menu-fter">
                <?php foreach($this->nav as $value):?>
                    <?php $target = ($value['target']=='') ? '' : ' target="'.$value['target'].'"'; ?>
                    <li><a href="<?php echo (strpos($value['url'], 'http://') === false) ? Yii::app()->request->baseUrl.LANGURL.'/'.$value['url'] : $value['url'] ?>" title="<?php echo $value['menu'.LANG] ?>"<?php echo $target ?>><?php echo $value['menu'.LANG] ?></a></li>
                <?php endforeach;?>
            </ul>
        </div>
        <div class="copyright"><p>&copy; 2011 Magento Demo Store. All Rights Reserved.</p>
            <p> Design by Website <a href="#" title="">azweb.vn</a></p>
        </div>            <div class="clear"></div>
    </div><!--End Footer-->
</div><!--End wrapper-->
</body>
</html>