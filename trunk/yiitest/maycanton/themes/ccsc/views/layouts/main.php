<!DOCTYPE html PUBLIC "-//W3C//DTD XHTML 1.0 Transitional//EN" "http://www.w3.org/TR/xhtml1/DTD/xhtml1-transitional.dtd">
<html xmlns="http://www.w3.org/1999/xhtml">
<head>
<meta http-equiv="Content-Type" content="text/html; charset=utf-8" />
<meta http-equiv="content-language" content="vi, en" />
<meta name="revisit-after" content="1 days" />
<meta name="robots" content="noodp,index,follow" />

<link rel="SHORTCUT ICON" href="<?php echo Yii::app()->theme->baseUrl; ?>/images/favicon.ico" type="image/x-icon" />
<link rel="icon" href="<?php echo Yii::app()->theme->baseUrl; ?>/images/favicon.ico" type="image/gif" />

<link rel="stylesheet" type="text/css" href="<?php echo Yii::app()->theme->baseUrl; ?>/css/dosvn.css" />

<title><?php echo CHtml::encode($this->pageTitle); ?><?php echo ($this->title) ? ' - '.CHtml::encode($this->title) : '' ?></title>
<meta name="keywords" content="<?php echo $this->keywords ?>" />
<meta name="description" content="<?php echo $this->description ?>" />

<?php if($this->banner):?>
	<link rel="stylesheet" type="text/css" href="<?php echo Yii::app()->theme->baseUrl; ?>/css/advanced-slider-base.css" media="screen"/>
	<script type="text/javascript" src="<?php echo Yii::app()->theme->baseUrl; ?>/js/jquery.advancedSlider.min.js"></script>
	<!--[if IE]><script type="text/javascript" src="<?php echo Yii::app()->theme->baseUrl; ?>/js/excanvas.compiled-ie.js"></script><![endif]-->
	<!--[if lt IE 8]><script type="text/javascript" src="<?php echo Yii::app()->theme->baseUrl; ?>/js/jquery.sider.banner-ie.js"></script> <![endif]-->
	<script type="text/javascript" src="<?php echo Yii::app()->theme->baseUrl; ?>/js/jquery.sider.banner.js"></script>
	<script type="text/javascript">
		$(document).ready(function(){
			runbanner(<?php echo $this->configs['banner_width'] ?>, <?php echo $this->configs['banner_height'] ?>);
		});
	</script>
<?php endif;?>

<script type="text/javascript" src="<?php echo Yii::app()->theme->baseUrl; ?>/js/embed-flash.js"></script>
<script type="text/javascript" src="<?php echo Yii::app()->theme->baseUrl; ?>/js/time-day.js"></script>

<link rel="stylesheet" type="text/css"  href="<?php echo Yii::app()->theme->baseUrl; ?>/css/prettyPhoto.css" />
<script type="text/javascript" src="<?php echo Yii::app()->theme->baseUrl; ?>/js/jquery.prettyPhoto.js" ></script>
<script type="text/javascript" charset="utf-8">
jQuery(document).ready(function(){
	jQuery(".gallery:first a[rel^='prettyPhoto']").prettyPhoto({animation_speed:'fast',slideshow:10000, hideflash: true});
	jQuery(".gallery:gt(0) a[rel^='prettyPhoto']").prettyPhoto({animation_speed:'fast',slideshow:10000, hideflash: true});
	jQuery(".product_2 a[rel^='photo']").prettyPhoto({animation_speed:'fast',slideshow:10000});
	jQuery(".catalogue a[rel^='photo']").prettyPhoto({animation_speed:'fast',slideshow:10000});

});
</script>
		
</head>
<body>
<div id="wrapper">
	<div id="header">
		<script type="text/javascript">embedFlashObj('<?php echo Yii::app()->theme->baseUrl; ?>/images/top.swf',980,140);</script>
		<div class="clear"></div>	
	</div><!--End header-->
    <ul id="nav">
    	<li class="time-day"><script type="text/javascript">document.write(dateText + " ")</script></li>
		<?php $size = count($this->nav); $i=0; foreach($this->nav as $value):?>
			<?php $selected = ($value['url']==$this->module->id) ?  ' class="select"' : ''?>
			<?php $target = ($value['target']=='') ? '' : ' target="'.$value['target'].'"'; ?>
			<?php $none = ($i == ($size-1)) ? ' class="none-line"' : ''; ?>
			<li<?php echo $none?>><a<?php echo $selected ?> href="<?php echo (strpos($value['url'], 'http://') === false) ? (($value['url'] == 'default') ? Yii::app()->request->baseUrl.Yii::app()->session['langUrl'].'/' : Yii::app()->request->baseUrl.Yii::app()->session['langUrl'].'/'.Yii::t('user', $value['url'].'.link')) : $value['url'] ?>" title="<?php echo CHtml::encode($value['menu'.LANG]) ?>"<?php echo $target ?>><?php echo CHtml::encode($value['menu'.LANG]) ?></a></li>
		<?php $i++; endforeach;?>
    </ul> <!--End nav--> <div class="clear"></div>
	<div id="content">
		<div id="leftcontent">
			<?php if(isset($this->function['menu_about']) && ($this->function['menu_about'])):?>
				<h1 class="title-left"><span><?php echo $this->lang['about'] ?></span></h1>
				<ul class="frame-leftcontent sub-cat">
					<?php foreach($this->function['menu_about'] as $value): ?>
						<li><a href="<?php echo Yii::app()->request->baseUrl.LANGURL ?>/<?php echo Yii::t('user', 'about.link')?>/<?php echo $value['tag'.LANG]?>.html" title="<?php echo $value['title'.LANG]?>"><span><?php echo $value['title'.LANG]?></span></a></li>
					<?php endforeach; ?>
				</ul>
			<?php endif;?>
		
			<?php if(isset($this->function['menu_products']) && ($this->function['menu_products'])):?>
				<h1 class="title-left"><span><?php echo $this->lang['products'] ?></span></h1>
				<ul class="frame-leftcontent sub-cat">
					<?php Common::menuMultiLevel($this->function['menu_products'], 'ProductsCat', Yii::t('user', 'products.link'), 'span'); ?>
				</ul>
			<?php endif;?>
			
			<h1 class="title-left"><span>Hỗ trợ trực tuyến</span></h1>
			<ul class="frame-leftcontent support">
				<li>Hỗ trợ kỹ thuật</li>
				<li><a href="ymsgr:sendim?thanhansoft"><img src="http://opi.yahoo.com/online?u=thanhansoft&amp;m=g&amp;t=2&amp;l=us" alt="thanhansoft" /></a></li>
				<li>Hỗ trợ doanh nghiệp</li>
				<li><a href="ymsgr:sendIM?thanhansoft">
					<img src="http://mail.opi.yahoo.com/online?u=thanhansoft&amp;m=g&amp;t=2" border="0" alt="yahoo" /></a></li>
				<li>Hỗ trợ doanh nghiệp</li>
				<li><a href="ymsgr:sendIM?thanhansoft">
					<img src="http://mail.opi.yahoo.com/online?u=thanhansoft&amp;m=g&amp;t=2" border="0" alt="yahoo" /></a></li>
			</ul>
			<h2 class="title-left"><span>Quảng cáo</span></h2>
			<ul class="frame-leftcontent bg-adv">
				<li><a href="http://grouplaptrinh.com" title="grouplaptrinh"><img src="<?php echo Yii::app()->theme->baseUrl; ?>/images/adv1.jpg" alt='' /></a></li>
				<li><a href="http://grouplaptrinh.com" title="grouplaptrinh"><img src="<?php echo Yii::app()->theme->baseUrl; ?>/images/adv1.jpg" alt='' /></a></li>
				<li><a href="http://grouplaptrinh.com" title="grouplaptrinh"><img src="<?php echo Yii::app()->theme->baseUrl; ?>/images/adv1.jpg" alt='' /></a></li>
			</ul>
		</div><!--End left content-->
		<div id="rightcontent">
			<?php if($this->banner): ?>
				<ul class="slider">
					<?php foreach($this->banner as $value): ?>
					<li class="slider-item"><a href="<?php echo $value['banner_link'] ?>" title=""><img src="<?php echo Yii::app()->request->baseUrl.USERFILES; ?>/banner/<?php echo $value['banner_url'] ?>" alt="<?php echo $value['banner_name'] ?>" /></a></li>
					<?php endforeach ?>
				</ul>
			<?php endif; ?>
			
			<?php echo $content?>
			
            <h2 class="title-right"><span>Sản phẩm mới</span></h2>
            <ul class="all-product">
                <li class="product">
                        <div class="product-img"><a href="product-info.html" title=""><img src="images/no-product.jpg" width="170" height="145" alt="Product" /></a></div><div class="clear"></div>
                        <h2 class="title-pro"><a href="product-info.html" title="Leonidas Chocolate Assortment">Harry Potter and the Chamber of Secrets</a></h2>
                        <p class="price">$165.00</p>
                        <a href="product-info.html" class="add-to-cart" title="Add to Cart"><span>Add to Cart</span></a>
                </li>
                <li class="product">
                    <div class="product-img"><a href="product-info.html" title="" ><img src="images/no-images.jpg" alt="Product" /></a></div>
                    <h2 class="title-pro"><a href="product-info.html" title="Leonidas Chocolate Assortment">Couture ring yellow gold paved</a></h2>
                    <p class="price">$275.00</p>
                    <a href="product-info.html" class="add-to-cart" title="Add to Cart"><span>Add to Cart</span></a>
                </li>
                <li class="product">
                    <div class="product-img"><a href="product-info.html" title=""><img src="images/no-images.jpg" alt="Product" /></a></div>
                    <h2 class="title-pro"><a href="product-info.html" title="Leonidas Chocolate Assortment">Diamond drop pendant</a></h2>
                    <p class="price">$326.00</p>
                    <a href="product-info.html" class="add-to-cart" title="Add to Cart"><span>Add to Cart</span></a>
                </li>
            </ul><!--End All products--> 
            
            <ul class="all-product-2">
            	<li class="product_2">
                	<div class="tent-product-2">
                        <div class="product-img-2"><a rel="photo" href="images/e3.jpg" title="Biên dạng tôn 7 sóng La-phông loại 2" ><img src="images/e3.jpg" alt="Product" /></a></div>
                        <h2 class="title-pro-2"><a href="" title="Leonidas Chocolate Assortment">Biên dạng tôn 7 sóng La-phông loại 2d</a></h2>
                	</div>
                </li>
                <li class="product_2">
                	<div class="tent-product-2">
                        <div class="product-img-2"><a rel="photo" href="images/e2.jpg" title="Biên dạng tôn 10 sóng đỉnh tròn" ><img src="images/e3.jpg" alt="Product" /></a></div>
                        <h2 class="title-pro-2"><a href="" title="Leonidas Chocolate Assortment">Biên dạng tôn 10 sóng đỉnh tròn</a></h2>
                	</div>
                </li>
            </ul>
            
            <ul class="all-product-2">
            	<li class="catalogue">
                	<div class="catalogue_img"><a rel="photo" href="images/catalog1.jpg" title="Biên dạng tôn 7 sóng La-phông loại 2" ><img src="images/catalog1.jpg" alt="Product" /></a></div>
                    <h2 class="title_catal"><a href="" title="Leonidas Chocolate Assortment">MÁY CÁN TOLE 1 TẦNG</a></h2>
                </li>
                <li class="catalogue">
                    <div class="catalogue_img"><a rel="photo" href="images/cl_2.jpg" title="Biên dạng tôn 10 sóng đỉnh tròn" ><img src="images/cl_2.jpg" alt="Product" /></a></div>
                    <h2 class="title_catal"><a href="" title="Leonidas Chocolate Assortment">MÁY CÁN TOLE 2 TẦNG</a></h2>
                </li>
            </ul>
            <div class="bg-masuring">
                <ul class="masuring">
                    <li class="gallery">
                        <div class="row-1"><a href="images/4.png" rel="prettyPhoto" title="
    This will open Google.com in a new window"><img src="images/icon-23.png" alt="" /></a></div>
                        <h3 class="row-2">CÔNG TY TNHH VINH CÚC</h3>
                        <p class="row-3">VŨNG TÀU</p> <div class="clear"></div>
                    </li>
                    <li class="gallery">
                        <div class="row-1"><a href="images/3.png" rel="prettyPhoto" title="
    This will open Google.com in a new window 99"><img src="images/icon-23.png" alt="" /></a></div>
                        <h3 class="row-2">CÔNG TY TNHH VINH CÚC</h3> 
                        <p class="row-3">VŨNG TÀU</p> <div class="clear"></div>
                    </li>
                    <li class="gallery">
                        <div class="row-1"><a href="images/2.png" rel="prettyPhoto" title="CONG TY THANH CONG"><img src="images/icon-23.png" alt="" /></a></div>
                        <h3 class="row-2">CÔNG TY TNHH VINH CÚC</h3>
                        <p class="row-3">VŨNG TÀU</p> <div class="clear"></div>
                    </li>
                    <li class="gallery">
                        <div class="row-1"><a href="images/7.png" rel="prettyPhoto" title="CONG TY NHI THIEN DUONG"><img src="images/icon-23.png" alt="" /></a></div>
                        <h3 class="row-2">CÔNG TY TNHH VINH CÚC</h3>
                        <p class="row-3">VŨNG TÀU</p> <div class="clear"></div>
                    </li>
                    <li class="gallery">
                        <div class="row-1"><a href="images/4.png" rel="prettyPhoto" title="CONG TY XD THANH DAT"><img src="images/icon-23.png" alt="" /></a></div>
                        <h3 class="row-2">CÔNG TY TNHH VINH CÚC</h3>
                        <p class="row-3">VŨNG TÀU</p> <div class="clear"></div>
                    </li>
                </ul> <div class="clear"></div>
            </div>
			<ul class="paging" id="yw0">
				<li class="first hidden"><a href="/san-pham/thiet-bi-ve-sinh">Đầu tiên</a></li>
				<li class="previous hidden"><a href="/san-pham/thiet-bi-ve-sinh">Lùi</a></li>
				<li class="page selected"><a href="/san-pham/thiet-bi-ve-sinh">1</a></li>
				<li class="page"><a href="/san-pham/thiet-bi-ve-sinh/trang/2">2</a></li>
				<li class="next"><a href="/san-pham/thiet-bi-ve-sinh/trang/2">Tiếp</a></li>
				<li class="last"><a href="/san-pham/thiet-bi-ve-sinh/trang/2">Cuối cùng</a></li>
			</ul>
		</div><!--End right content--> <div class="clear"></div>
	</div><!--End content-->
	<div id="footer">
		<div class="fter-left">
			<div class="statistics">
                <p class="ico-online"><img src="images/online.png" alt="online" />Lượt Online : 2</p>
                <p class="ico-total"><img src="images/visited.png" alt="visited" />Lượt Truy Cập : 18884</p>
            </div>
			<p>&copy; Copyright 2012 CÔNG TY CƠ KHÍ CÔNG NGHIỆP SÀI GÒN. All Rights Reserved</p>
		</div>
		<div class="copyright">
            <h3><strong>Mẫu 240312</strong></h3>
            <p>Địa chỉ công ty</p>
            <p>Địa chỉ chi nhánh</p>
            Design by Website <a href="#" title="">azweb.vn</a>
        </div> <div class="clear"></div>
	</div><!--End Footer-->
</div><!--End wrapper-->
</body>
</html>

