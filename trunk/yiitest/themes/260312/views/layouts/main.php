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

<title><?php echo CHtml::encode($this->pageTitle); ?><?php echo ($this->title) ? ' - '.CHtml::encode($this->title) : '' ?></title>
<meta name="keywords" content="<?php echo $this->keywords ?>" />
<meta name="description" content="<?php echo $this->description ?>" />
<script type="text/javascript" src="<?php echo Yii::app()->theme->baseUrl; ?>/js/jcarousellite.js"></script>
<script type="text/javascript" src="<?php echo Yii::app()->theme->baseUrl; ?>/js/special-block.js"></script>  
<script type="text/javascript" src="<?php echo Yii::app()->theme->baseUrl; ?>/js/part.js"></script>  

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
</head>
<body>
 <div id="wrapper">
	<div id="header">
    	<div class="left">
			<?php if($this->logo):?>
				<a href="<?php echo Yii::app()->request->baseUrl.Yii::app()->session['langUrl'] ?>" title="<?php echo $this->logo['banner_name']?>"><img src="<?php echo Yii::app()->baseUrl.USERFILES ?>/banner/<?php echo $this->logo['banner_url'] ?>" alt="<?php echo $this->logo['banner_name']?>" /></a>
			<?php else:?>
				<a href="<?php echo Yii::app()->request->baseUrl.Yii::app()->session['langUrl'] ?>/" title=""><img src="<?php echo Yii::app()->theme->baseUrl; ?>/images/logo.png" alt="Logo" /></a>
			<?php endif;?>
		</div> <!--End logo-->
		<div class="lang">
			 <a href="<?php echo Yii::app()->request->baseUrl ?>/en" title="English"><img src="<?php echo Yii::app()->theme->baseUrl; ?>/images/en.gif" alt="English" /> English</a>
						<a href="<?php echo Yii::app()->request->baseUrl ?>/" title="Tiếng Việt"><img src="<?php echo Yii::app()->theme->baseUrl; ?>/images/vi.gif" alt="Việt Nam" /> Tiếng Việt</a> 
		</div> <div class="clear"></div>
    </div><!--End header-->
    <ul id="nav">
		<?php foreach($this->nav as $value):?>
			<?php $selected = ($value['url']==$this->module->id) ?  ' class="select"' : ''?>
			<?php $target = ($value['target']=='') ? '' : ' target="'.$value['target'].'"'; ?>
			<li><a<?php echo $selected ?> href="<?php echo (strpos($value['url'], 'http://') === false) ? (($value['url'] == 'default') ? Yii::app()->request->baseUrl.Yii::app()->session['langUrl'].'/' : Yii::app()->request->baseUrl.Yii::app()->session['langUrl'].'/'.Yii::t('user', $value['url'].'.link')) : $value['url'] ?>" title="<?php echo $value['menu'.LANG] ?>"<?php echo $target ?>><?php echo $value['menu'.LANG] ?></a></li>
		<?php endforeach;?>
	</ul> <!--End nav--> <div class="clear"></div>
    <div class="bgsearch">
        <div class="search">
        <form name="search" action="" method="get">		
            <div class="input-width">
                <div class="width-setter">        
                    <input type="text" name="keywords" class="go"  value="Enter search keywords here" onblur="if(this.value=='') this.value='Enter search keywords here'" onfocus="if(this.value =='Enter search keywords here' ) this.value=''" />
                </div>
            </div>
            <input type="image" src="<?php echo Yii::app()->theme->baseUrl; ?>/images/button-search-prod.png" alt=""  class="button-search-prod" /></form>                                        
        </div><!--End Search-->
    </div><!--bg-search-->
    <div id="content">
		<?php $this->widget('zii.widgets.CBreadcrumbs', array(
			'homeLink' => CHtml::link($this->lang['default'], (LANGURL) ? LANGURL : Yii::app()->homeUrl),
			'links'=>$this->breadcrumbs,
			'htmlOptions'=>array('class'=>'link'),
			'separator'=>' <img src="'.Yii::app()->theme->baseUrl.'/images/bull.jpg" alt="Bull" title="Bull" />',
		)); ?> <!-- breadcrumbs -->
    	<div id="leftcontent">
			<?php if(isset($this->function['menu_about']) && ($this->function['menu_about'])):?>
				<h1 class="title-left"><span><?php echo $this->lang['about'] ?></span></h1>
				<ul class="sub-pro">
					<?php foreach($this->function['menu_about'] as $value): ?>
					<li><a href="<?php echo Yii::app()->request->baseUrl.LANGURL ?>/<?php echo Yii::t('user', 'about.link')?>/<?php echo $value['tag'.LANG]?>.html" title="<?php echo $value['title'.LANG]?>"><?php echo $value['title'.LANG]?></a></li>
					<?php endforeach; ?>
				</ul>
			<?php endif;?>

			<?php if(isset($this->function['menu_services']) && ($this->function['menu_services'])):?>
				<h1 class="title-left"><span><?php echo $this->lang['services'] ?></span></h1>
				<ul class="sub-pro">
					<?php foreach($this->function['menu_services'] as $value): ?>
					<li><a href="<?php echo Yii::app()->request->baseUrl.LANGURL ?>/<?php echo Yii::t('user', 'services.link')?>/<?php echo $value['tag'.Yii::app()->session['lang']]?>.html" title="<?php echo $value['title'.LANG]?>"><?php echo $value['title'.LANG]?></a></li>
					<?php endforeach; ?>
				</ul>
			<?php endif;?>
			
			<?php if(isset($this->function['menu_products']) && ($this->function['menu_products'])):?>
			<h1 class="title-left"><span><?php echo $this->lang['products'] ?></span></h1>
			<ul class="sub-pro">
				<?php Common::menuMultiLevel($this->function['menu_products'], 'ProductsCat', Yii::t('user', 'products.link')); ?>
			</ul>
			<?php endif;?>

            <?php if(isset($this->function['list_supports']) && ($this->function['list_supports'])):?>
			<h1 class="title-left"><span><?php echo $this->lang['supports'] ?></span></h1>
			<ul class="support">
				<?php foreach($this->function['list_supports'] as $value): ?>
					<?php if($value['support_type']=='yahoo'): ?>
						
						<li>
							<?php if($value['support_name'.Yii::app()->session['lang']]) echo '<p>'.$value['support_name'.Yii::app()->session['lang']].'</p>'; ?>
						<?php if($value['support_phone']) echo '<p>'.$value['support_phone'].'</p>'; ?>
							<a href="ymsgr:sendIM?<?php echo $value['support_value'] ?>"><img src="http://mail.opi.yahoo.com/online?u=<?php echo $value['support_value'] ?>&amp;m=g&amp;t=2" border="0" alt="<?php echo $value['support_value'] ?>" /></a>
						</li>
					<?php endif; ?>
				<?php endforeach; ?>	
			</ul> <!--End support-->
			<?php endif; ?>
			
			<?php if(isset($this->function['advs_left']) && ($this->function['advs_left'])):?>
				<h1 class="title-left"><span><?php echo $this->lang['advs'] ?></span></h1>
				<ul class="bg-adv">
				<?php foreach($this->function['advs_left'] as $value): ?>
					<li>
						<a href="<?php echo $value['url'] ?>" target="<?php echo $value['type'] ?>" title="<?php echo $value['title'.Yii::app()->session['lang']] ?>"><img src="<?php echo Yii::app()->baseUrl.USERFILES ?>/advs/<?php echo $value['pic_thumb'] ?>" alt="<?php echo $value['title'.Yii::app()->session['lang']] ?>" /></a>
					</li>
				<?php endforeach; ?>
				</ul> <!--Adv left-->
			<?php endif;?>
        </div> <!--End leftcontent-->
        <div id="rightcontent">
			<?php if($this->banner): ?>
				<div id="banner">
						<ul class="slider">
							<?php foreach($this->banner as $value): ?>
								<li class="slider-item"><a href="<?php echo $value['banner_link'] ?>" title=""><img src="<?php echo Yii::app()->request->baseUrl.USERFILES; ?>/banner/<?php echo $value['banner_url'] ?>" alt="<?php echo $value['banner_name'] ?>" /></a></li>
							<?php endforeach ?>
						</ul>
				</div> <!--End banner-->
			
			<?php endif; ?>
			<?php echo $content?>
			
        </div><!--End rightcontent--> <div class="clear"></div>
    </div><!--End ALL content-->
	
	<h3 class="title-right"><span>Quảng cáo doanh nghiệp</span></h3>
	<div class="special_block bg_adv_bottom">
	<div class="inner2 bg_ineradv_bottom">
		<p class="prev prev_adv"></p>
		<p class="next next_adv"></p>
		<div class="carouse2 adv_bottom">
			<div class="blocks">
				<ul class="list_scroll">
					<li class="scroll-interval">
						<div class="txt_area"><a class="pic" href="products-info.html" title=""><img src="<?php echo Yii::app()->theme->baseUrl; ?>/images/img_3.jpg" alt="Set ipsum dolor sit amet"/></a>
							<div class="part">
								<h3 class="name"><a class="link" href="#">Set ipsum dolor sit amet</a></h3>
							</div>
						</div>
					</li>
					<li class="scroll-interval">
						<div class="txt_area"><a class="pic" href="products-info.html" title=""><img src="<?php echo Yii::app()->theme->baseUrl; ?>/images/img_1.jpg" alt="Lorem ipsum dolor sit amet" /></a>
							<div class="part">
								<h3 class="name"><a class="link" href="#">Lorem ipsum dolor sit amet</a></h3>
							</div>
						</div>
					</li>
					<li class="scroll-interval">
						<div class="txt_area"><a class="pic" href="products-info.html" title=""><img src="<?php echo Yii::app()->theme->baseUrl; ?>/images/img_2.jpg" alt="Iipsum dolor sit amet" /></a>
							<div class="part">
								<h3 class="name"><a class="link" href="#">Iipsum dolor sit amet</a></h3>
							</div>
						</div>
					</li>
					<li class="scroll-interval">
						<div class="txt_area"><a class="pic" href="products-info.html" title=""><img src="<?php echo Yii::app()->theme->baseUrl; ?>/images/img_4.jpg" alt="3dConnexion 3DX-700034" /></a>
							<div class="part">
								<h3 class="name"><a class="link" href="#">3dConnexion 3DX-700034</a></h3>
							</div>
						</div>
					</li>
					<li class="scroll-interval">
						<div class="txt_area"><a class="pic" href="products-info.html" title=""><img src="<?php echo Yii::app()->theme->baseUrl; ?>/images/img_1.jpg" alt="Lorem ipsum dolor sit amet" /></a>
							<div class="part">
								<h3 class="name"><a class="link" href="#">Lorem ipsum dolor sit amet</a></h3>
							</div>
						</div>
					</li>
					<li class="scroll-interval">
						<div class="txt_area"><a class="pic" href="products-info.html" title=""><img src="<?php echo Yii::app()->theme->baseUrl; ?>/images/img_2.jpg" alt="Acer H233H bmid" /></a>
							<div class="part">
								<h3 class="name"><a class="link" href="#">Acer H233H bmid</a></h3>
							</div>
						</div>
					</li>
					<li class="scroll-interval">
						<div class="txt_area"><a class="pic" href="products-info.html" title=""><img src="<?php echo Yii::app()->theme->baseUrl; ?>/images/img_3.jpg" alt="Altec Lansing FX3022" /></a>
							<div class="part">
								<h3 class="name"><a class="link" href="#">Altec Lansing FX3022</a></h3>
							</div>
						</div>
					</li>
					<li class="scroll-interval">
						<div class="txt_area"><a class="pic" href="products-info.html" title=""><img src="<?php echo Yii::app()->theme->baseUrl; ?>/images/img_1.jpg" alt="Apple AirPort Extreme Base" /></a>
							<div class="part">
							<h3 class="name"><a class="link" href="#">Apple AirPort Extreme Base</a></h3>
							</div>
						</div>
					</li>
				 </ul>
			</div>
		</div>
	</div>
	</div> <!--Adv bottom-->
    
    <div id="footer">
    	<ul id="nav_fter">
        	<?php $size= count($this->nav); $i=0; foreach($this->nav as $value):?>
			<?php $target = ($value['target']=='') ? '' : ' target="'.$value['target'].'"'; ?>
			<?php $none = ($i < ($size-1)) ? '' : ' class="none-line"' ?>
			<li<?php echo $none?>><a href="<?php echo (strpos($value['url'], 'http://') === false) ? (($value['url'] == 'default') ? Yii::app()->request->baseUrl.Yii::app()->session['langUrl'].'/' : Yii::app()->request->baseUrl.Yii::app()->session['langUrl'].'/'.Yii::t('user', $value['url'].'.link')) : $value['url'] ?>" title="<?php echo $value['menu'.LANG] ?>"<?php echo $target ?>><?php echo $value['menu'.LANG] ?></a></li>
			<?php $i++; endforeach;?>
        </ul>
        <div>
            <div class="fter-left">
                <h3 class="title-company"><?php echo $this->lang['company_name'] ?></h3>
				<p><?php echo $this->lang['address1'] ?></p>     
				<p><?php echo $this->lang['address2'] ?></p>  
                <p><?php echo $this->lang['copyright'] ?></p>
            </div>
            <div class="fter-right">
            	<p><span>Đang truy cập: <b><?php echo Yii::app()->counter->getOnline(); ?></b> </span> - <span>Trong ngày: <b><?php echo Yii::app()->counter->getToday(); ?></b> </span></p>
                <p><span>Hôm qua: <b><?php echo Yii::app()->counter->getYesterday(); ?></b> </span> - <span>Tổng truy câp: <b><?php echo Yii::app()->counter->getTotal(); ?></b> </span></p>
                <p><span>Truy cập nhiều nhất: <b><?php echo Yii::app()->counter->getMaximal(); ?></b> </span> - <span>Ngày nhiều nhất: <b><?php echo date('d.m.Y', Yii::app()->counter->getMaximalTime()); ?></b> </span></p>
            <?php echo $this->lang['developed']?> <a href="http://dos.vn" target="_blank" title="Dos.vn">Dos.vn</a></div> <div class="clear"></div>
    	</div>
    </div><!--End Footer-->
</div><!--End wrapper-->
</body>
</html>

