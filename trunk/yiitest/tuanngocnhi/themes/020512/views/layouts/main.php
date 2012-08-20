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
<script type="text/javascript" src="<?php echo Yii::app()->theme->baseUrl; ?>/js/jquery-1.7.1.min.js"></script>

<title><?php echo CHtml::encode($this->pageTitle); ?><?php echo ($this->title) ? ' - '.CHtml::encode($this->title) : '' ?> </title>
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
		runbanner(<?php echo $this->configs['banner_width'] ?>,<?php echo $this->configs['banner_height'] ?>);
	});
</script>
<?php endif;?>
<?php echo $this->analytics?>
</head>
<body>
<div class="bg-top-page">
    <div class="top-page">
        <div id="header">
            <div id="logo">
				<?php if($this->logo):?>
				<a href="<?php echo Yii::app()->request->baseUrl.Yii::app()->session['langUrl']?>/" title="<?php echo $this->logo['banner_name']?>"><img src="<?php echo Yii::app()->baseUrl.USERFILES ?>/banner/<?php echo $this->logo['banner_url'] ?>" alt="<?php echo $this->logo['banner_name']?>" /></a>
				<?php else:?>
					<a href="<?php echo Yii::app()->request->baseUrl.Yii::app()->session['langUrl']?>/" title="Logo"><img src="<?php echo Yii::app()->theme->baseUrl; ?>/images/logo.png" alt="Logo" /></a>
				<?php endif;?>
			</div>
            <div class="lang">
				<?php if(count($this->numLang) > 1):?>
				<?php foreach($this->numLang as $value): ?>
					<a href="<?php echo ($value=='vi') ? Yii::app()->request->baseUrl.'/' : Yii::app()->request->baseUrl.'/'.$value ?>"><?php echo $this->lang[$value]?></a>
					<?php endforeach?>
				<?php endif?>
			</div>
        </div><!--End header-->
        <ul id="nav">
			<?php foreach($this->nav as $value):?>
			    <?php $selected = ($value['url']==$this->module->id) ?  ' class="select"' : ''?>
			    <?php $target = ($value['target']=='') ? '' : ' target="'.$value['target'].'"'; ?>
			    <li><a<?php echo $selected ?>  href="<?php echo (strpos($value['url'], 'http://') === false) ? (($value['url'] == 'default') ? Yii::app()->request->baseUrl.Yii::app()->session['langUrl'].'/' : Yii::app()->request->baseUrl.Yii::app()->session['langUrl'].'/'.Yii::t('user', $value['url'].'.link')) : $value['url'] ?>" title="<?php echo CHtml::encode($value['menu'.LANG]) ?>"<?php echo $target ?>><?php echo CHtml::encode($value['menu'.LANG]) ?></a>
                    <?php if($value['url'] == 'about'):?>
                        <ul class="sub-nav-new">
                            <?php foreach($this->about_list as $sub):?>
                                <li><a href="<?php echo Yii::app()->baseUrl.LANGURL ?>/<?php echo Yii::t('user', 'about.link')?>/<?php echo $sub['tag'.LANG]?>.html" title="<?php echo $sub['title'.LANG]?>"><?php echo $sub['title'.LANG]?></a></li>
                            <?php endforeach?>
                        </ul>
                    <?php endif?>
                    <?php if($value['url'] == 'services'):?>
                        <ul class="sub-nav-new">
                            <?php foreach($this->services_list as $sub):?>
                            <li><a href="<?php echo Yii::app()->baseUrl.LANGURL ?>/<?php echo Yii::t('user', 'services.link')?>/<?php echo $sub['tag'.LANG]?>.html" title="<?php echo $sub['title'.LANG]?>"><?php echo $sub['title'.LANG]?></a></li>
                            <?php endforeach?>
                        </ul>
                    <?php endif?>
                    <?php if($value['url'] == 'news'):?>
                        <ul class="sub-nav-new">
                            <?php if($this->news_list): foreach($this->news_list as $sub):?>
                            <li><a href="<?php echo Yii::app()->baseUrl.LANGURL ?>/<?php echo Yii::t('user', 'news.link')?>/<?php echo $sub['tag'.LANG]?>" title="<?php echo $sub['cat_title'.LANG]?>"><?php echo $sub['cat_title'.LANG]?></a></li>
                            <?php endforeach; endif;?>
                        </ul>
                    <?php endif?>
                    <?php if($value['url'] == 'products'):?>
                        <ul class="sub-nav-product">
                            <?php if($this->products_list): $j=0; foreach($this->products_list as $sub):?>
                            <li<?php echo ($j==0) ? ' class="sub-nav-line"' : ''?>>
                                <div class="sub-nav-1">
                                    <a href="<?php echo Yii::app()->baseUrl.LANGURL ?>/<?php echo Yii::t('user', 'products.link')?>/<?php echo $sub['tag'.LANG]?>" title="<?php echo $sub['cat_title'.LANG]?>"><img src="<?php echo Yii::app()->baseUrl.USERFILES?>/productsCat/<?php echo $sub['pic_full']?>" alt="<?php echo $sub['cat_title'.LANG]?>" /></a>
                                    <h4><a href="<?php echo Yii::app()->baseUrl.LANGURL ?>/<?php echo Yii::t('user', 'products.link')?>/<?php echo $sub['tag'.LANG]?>" title="<?php echo $sub['cat_title'.LANG]?>"><?php echo $sub['cat_title'.LANG]?></a></h4>
                                </div>
                                <div class="sub-nav-2">
                                    <div class="panel-img-1">
                                        <?php $items = Products::model()->listItemByCat($sub['cat_id']); $m=0; foreach($items['models'] as $item):?>
                                            <?php if($m%2==0):?>
                                                <a href="<?php echo Yii::app()->baseUrl.LANGURL ?>/<?php echo Yii::t('user', 'products.link')?>/<?php echo $item->ProductsCat['tag'.LANG]?>/<?php echo $item['tag'.LANG]?>.html" title="<?php echo $item['title'.LANG]?>"><img src="<?php echo Yii::app()->baseUrl.USERFILES?>/products/<?php echo $item['pic_thumb']?>" alt="<?php echo $item['title'.LANG]?>" /></a>
                                            <?php endif?>
                                        <?php $m++; endforeach?>
                                    </div> <div class="clear"></div>
                                    <div class="panel-img-2">
                                        <?php $m=0; foreach($items['models'] as $item):?>
                                        <?php if($m%2!=0):?>
                                            <a href="<?php echo Yii::app()->baseUrl.LANGURL ?>/<?php echo Yii::t('user', 'products.link')?>/<?php echo $item->ProductsCat['tag'.LANG]?>/<?php echo $item['tag'.LANG]?>.html" title="<?php echo $item['title'.LANG]?>"><img src="<?php echo Yii::app()->baseUrl.USERFILES?>/products/<?php echo $item['pic_thumb']?>" alt="<?php echo $item['title'.LANG]?>" /></a>
                                            <?php endif?>
                                        <?php $m++;endforeach?>
                                    </div>
                                </div> <div class="clear"></div>
                            </li>
                            <?php $j++; endforeach; endif;?>
                        </ul>
                    <?php endif?>
                </li>
			<?php endforeach;?>
            <!-- <li><a href="index.html" title="" class="select">Trang chủ</a></li>
            <li><a href="product.html" title="">Sản phẩm</a>
                <ul class="sub-nav-product">
                    <li class="sub-nav-line">
                        <div class="sub-nav-1"><img src="images/car.jpg" alt="" />
                            <h4><a href="#" title="">XE HƠI</a></h4>
                        </div>
                        <div class="sub-nav-2">
                            <div class="panel-img-1">
                                <a href="toyota" title=""><img src="images/logo-toyota.jpg" alt="toyota" /></a> 
                                <a href="ford" title=""><img src="images/logo-ford.jpg" alt="ford" /></a>
                                <a href="kia" title=""><img src="images/logo-kia.jpg" alt="kia" /></a> 
                                <a href="mitsu" title=""><img src="images/logo-mitsu.jpg" alt="mitsubishi" /></a>
                            </div> <div class="clear"></div>
                            <div class="panel-img-2">
                                <a href="mercedes" title=""><img src="images/logo-mercedes.jpg" alt="mercedes benz" /></a> 
                                <a href="mazda" title=""><img src="images/logo-mazda.jpg" alt="mazda" /></a>
                                <a href="chevrolet" title=""><img src="images/logo-chevrolet.jpg" alt="chevrolet" /></a> 
                                <a href="isuzu" title=""><img src="images/logo-isuzu.jpg" alt="isuzu" /></a>
                                <a href="hyundai" title=""><img src="images/logo-hyundai.jpg" alt="Hyundai" /></a>
                            </div>
                        </div> <div class="clear"></div>
                    </li>
                    <li>
                        <div class="sub-nav-1"><img src="images/motor.jpg" alt="motor" />
                            <h4><a href="#" title="">XE MÁY</a></h4>
                        </div>
                        <div class="sub-nav-2">
                            <div class="panel-img-3"><a href="#" title=""><img src="images/logo-yamaha.jpg" alt="yamaha" /></a> 
                                <a href="#" title=""><img src="images/logo-honda.jpg" alt="honda" /></a>
                                <a href="#" title=""><img src="images/logo-piaggio.jpg" alt="piaggio" /></a>
                            </div>
                        </div> <div class="clear"></div>
                    </li>
                </ul>
            </li>
            <li><a href="necklace.html" title="">Giới thiệu</a></li>
            <li><a href="pandants.html" title="">XI MẠ</a></li>
            <li><a href="bracelets.html" title="">Nổi bật</a></li>
            <li><a href="pandants.html" title="">Sự kiện</a></li>
            <li class="none-line"><a href="contact.html" title="">Liên hệ</a></li> -->
        </ul> <!--End menu--> <div class="clear"></div>
    </div> <!--End top page-->
</div> <!--End bg-top-page-->
<div class="main">
	<div class="main-line"></div>    	
    <div id="wrapper">
		<?php echo $content?>
    </div><!--End wrapper-->
	<div class="main-line"></div>  
</div> <!--End main-->
<div class="bg-fter">
    <div id="footer">
        <div class="fter-1">
            <h3 class="title-company"><?php echo $this->lang['company_name_footer'] ?></h3>
			<p><?php echo $this->lang['address1'] ?></p>
        </div> 
        <div class="fter-2">
            <?php echo ($this->lang['address2']) ? '<p>'.$this->lang['address2'].'</p>' : '' ?>
        </div> 
        <div class="fter-3">
            <p><?php echo $this->lang['copyright'] ?></p>
		<p><?php echo $this->lang['developed']?> <a href="http://dos.vn" target="_blank" title="Dos.vn">Dos.vn</a></p>
        </div> <div class="clear"></div>
    </div><!--End Footer-->
</div> <!--End bg-fter-->
</body>
</html>

