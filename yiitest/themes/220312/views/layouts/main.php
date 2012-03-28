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
</head>
<body>
<div id="wrapper">
	<div id="header">
		<div id="logo">
			<?php if($this->logo):?>
				<a href="<?php echo Yii::app()->request->baseUrl.Yii::app()->session['langUrl'] ?>" title="<?php echo $this->logo['banner_name']?>"><img src="<?php echo Yii::app()->baseUrl.USERFILES ?>/banner/<?php echo $this->logo['banner_url'] ?>" alt="<?php echo $this->logo['banner_name']?>" /></a>
			<?php else:?>
				<a href="<?php echo Yii::app()->request->baseUrl.Yii::app()->session['langUrl'] ?>/" title=""><img src="<?php echo Yii::app()->theme->baseUrl; ?>/images/logo.png" alt="Logo" /></a>
			<?php endif;?>
		</div> <!--End logo-->
		<div class="frame-title-pany"><h1 class="title-city"><?php echo $this->lang['company_name'] ?></h1></div> <!--End title company-->
		<div class="lang"><a href="<?php echo Yii::app()->request->baseUrl ?>/en" title="English"><img src="<?php echo Yii::app()->theme->baseUrl; ?>/images/en.gif" alt="English" /> English</a>
						<a href="<?php echo Yii::app()->request->baseUrl ?>/" title="Tiếng Việt"><img src="<?php echo Yii::app()->theme->baseUrl; ?>/images/vi.gif" alt="Việt Nam" /> Tiếng Việt</a> 
						<p class="tent-lang"><?php echo $this->lang['company_phone']?></p> 
		</div> <!--End lang-->	<div class="clear"></div>
	</div><!--End header-->
	<div id="all-nav">
	   <ul id="nav">
			<?php $size = count($this->nav); $i = 0; foreach($this->nav as $value):?>
				<?php $selected = ($value['url']==$this->module->id) ?  ' class="select"' : ''?>
				<?php $target = ($value['target']=='') ? '' : ' target="'.$value['target'].'"'; ?>
				<?php $none = ($i < ($size-1)) ? '' : ' class="none-line"' ?>
				<li<?php echo $none?>><a<?php echo $selected ?> href="<?php echo (strpos($value['url'], 'http://') === false) ? (($value['url'] == 'default') ? Yii::app()->request->baseUrl.Yii::app()->session['langUrl'].'/' : Yii::app()->request->baseUrl.Yii::app()->session['langUrl'].'/'.Yii::t('user', $value['url'].'.link')) : $value['url'] ?>" title="<?php echo $value['menu'.LANG] ?>"<?php echo $target ?>><?php echo $value['menu'.LANG] ?></a></li>
			<?php $i++; endforeach;?>
		</ul>	
	</div> <!--End all nav--><div class="clear"></div>
	<div id="banner">
		<?php if($this->banner): ?>
			<ul class="slider">
				<?php foreach($this->banner as $value): ?>
					<li class="slider-item"><a href="<?php echo $value['banner_link'] ?>" title=""><img src="<?php echo Yii::app()->request->baseUrl.USERFILES; ?>/banner/<?php echo $value['banner_url'] ?>" alt="<?php echo $value['banner_name'] ?>" /></a></li>
				<?php endforeach ?>
			</ul>
		<?php else:?>
			<img src="<?php echo Yii::app()->theme->baseUrl; ?>/images/banner.jpg" alt="Banner" />
		<?php endif; ?>
	</div><!--End banner-->
	
	<div id="content">
		<?php $this->widget('zii.widgets.CBreadcrumbs', array(
				'homeLink' => CHtml::link($this->lang['default'], (LANGURL) ? LANGURL : Yii::app()->homeUrl),
				'links'=>$this->breadcrumbs,
				'htmlOptions'=>array('class'=>'link'),
				'separator'=>' <img src="'.Yii::app()->theme->baseUrl.'/images/bull.jpg" alt="Bull" title="Bull" />',
			)); ?> <!-- breadcrumbs -->
		<div id="left-content">
			<?php if(isset($this->function['menu_about']) && ($this->function['menu_about'])):?>
				<h1 class="title-box"><span><?php echo $this->lang['about'] ?></span></h1>
				<ul class="sub-pro">
					<?php foreach($this->function['menu_about'] as $value): ?>
					<li><a href="<?php echo Yii::app()->request->baseUrl.LANGURL ?>/<?php echo Yii::t('user', 'about.link')?>/<?php echo $value['tag'.LANG]?>.html" title="<?php echo $value['title'.LANG]?>"><?php echo $value['title'.LANG]?></a></li>
					<?php endforeach; ?>
				</ul>
			<?php endif;?>

			<?php if(isset($this->function['menu_services']) && ($this->function['menu_services'])):?>
				<h1 class="title-box"><span><?php echo $this->lang['services'] ?></span></h1>
				<ul class="sub-pro">
					<?php foreach($this->function['menu_services'] as $value): ?>
					<li><a href="<?php echo Yii::app()->request->baseUrl.LANGURL ?>/<?php echo Yii::t('user', 'services.link')?>/<?php echo $value['tag'.Yii::app()->session['lang']]?>.html" title="<?php echo $value['title'.LANG]?>"><?php echo $value['title'.LANG]?></a></li>
					<?php endforeach; ?>
				</ul>
			<?php endif;?>
			
			<?php if(isset($this->function['menu_products']) && ($this->function['menu_products'])):?>
			<h1 class="title-box"><span><?php echo $this->lang['products'] ?></span></h1>
			<ul class="sub-pro">
				<?php Common::menuMultiLevel($this->function['menu_products'], 'ProductsCat', Yii::t('user', 'products.link')); ?>
			</ul>
			<?php endif;?>
			
			<?php if(isset($this->function['list_supports']) && ($this->function['list_supports'])):?>
			<h1 class="title-box"><span><?php echo $this->lang['supports'] ?></span></h1>
			<ul class="support">
				<?php foreach($this->function['list_supports'] as $value): ?>
					<?php if($value['support_type']=='yahoo'): ?>
						<?php if($value['support_name'.Yii::app()->session['lang']]) echo '<li>'.$value['support_name'.Yii::app()->session['lang']].'</li>'; ?>
						<?php if($value['support_phone']) echo '<li>'.$value['support_phone'].'</li>'; ?>
						<li><a href="ymsgr:sendIM?<?php echo $value['support_value'] ?>"><img src="http://mail.opi.yahoo.com/online?u=<?php echo $value['support_value'] ?>&amp;m=g&amp;t=2" border="0" alt="<?php echo $value['support_value'] ?>" /></a></li>
					<?php endif; ?>
				<?php endforeach; ?>	
			</ul>
			<?php endif; ?>
			
			<h1 class="title-box"><span><?php echo $this->lang['counter'] ?></span></h1>
			<ul class="statistics">
				<li><?php echo Yii::t('user', 'online')?>: <?php echo Yii::app()->counter->getOnline(); ?></li>
				<li><?php echo Yii::t('user', 'today')?>: <?php echo Yii::app()->counter->getToday(); ?></li>
				<li><?php echo Yii::t('user', 'yesterday')?>: <?php echo Yii::app()->counter->getYesterday(); ?></li>
				<li><?php echo Yii::t('user', 'total')?>: <?php echo Yii::app()->counter->getTotal(); ?></li>
				<li><?php echo Yii::t('user', 'maximum')?>: <?php echo Yii::app()->counter->getMaximal(); ?></li>
				<li><?php echo Yii::t('user', 'dateMaximum')?>: <?php echo date('d.m.Y', Yii::app()->counter->getMaximalTime()); ?></li>
			</ul>
			 <?php if(isset($this->function['advs_left']) && ($this->function['advs_left'])):?>
				<h1 class="title-box"><span><?php echo $this->lang['advs'] ?></span></h1>
				<ul class="bg-adv">
				<?php foreach($this->function['advs_left'] as $value): ?>
					<li>
						<a href="<?php echo $value['url'] ?>" target="<?php echo $value['type'] ?>" title="<?php echo $value['title'.Yii::app()->session['lang']] ?>"><img src="<?php echo Yii::app()->baseUrl.USERFILES ?>/advs/<?php echo $value['pic_thumb'] ?>" alt="<?php echo $value['title'.Yii::app()->session['lang']] ?>" /></a>
					</li>
				<?php endforeach; ?>
				</ul>
			<?php endif;?>
		</div><!--End left content-->	
		<div id="right-content">
			<?php echo $content?>
		</div><!--End right content-->
		<div id="colum3">
			<h1 class="title-box"><span>TIN TỨC</span></h1>
			<ul class="sub-new">
				<li><a href="#" title="">Thịt bò Kobe từ Nhật vào Việt Nam sẽ bị tiêu hủy</a></li>
				<li><a href="#" title="">Cuộc tập trận hải quân hoành tráng nhất trên biển của Iran</a></li>
				<li><a href="#" title="">Liên tiếp nhiều vụ chạy xe, nhiều nhất là hãng Honda</a></li>
				<li><a href="#" title="">Thịt bò Kobe từ Nhật vào Việt Nam sẽ bị tiêu hủy</a></li>
				<li><a href="#" title="">Cuộc tập trận hải quân hoành tráng nhất trên biển của Iran</a></li>
			</ul>
			
			<?php if(isset($this->function['products_hot']) && $this->function['products_hot']):?>
			<h1 class="title-box"><span><?php echo $this->lang['products'] . ' ' . strtolower($this->lang['hot']) ?></span></h1>
			<ul class="typical-product">
					<?php foreach($this->function['products_hot'] as $value): ?>
						<?php if($value['pic_thumb']): ?>
							<li><a href="<?php echo Yii::app()->request->baseUrl.LANGURL ?>/<?php echo Yii::t('user', 'products.link')?>/<?php echo $value->ProductsCat->tag ?>/<?php echo $value['tag'] ?>.html" title="<?php echo $value['title'.Yii::app()->session['lang']] ?>"><img src="<?php echo Yii::app()->baseUrl.USERFILES ?>/products/<?php echo $value['pic_thumb'] ?>" alt="<?php echo $value['title'.Yii::app()->session['lang']] ?>" /></a></li>
						<?php else: ?>
							<li><a href="<?php echo Yii::app()->request->baseUrl.LANGURL ?>/<?php echo Yii::t('user', 'products.link')?>/<?php echo $value->ProductsCat->tag ?>/<?php echo $value['tag'] ?>.html" title="<?php echo $value['title'.Yii::app()->session['lang']] ?>"><img src="<?php echo Yii::app()->theme->baseUrl; ?>/images/product-thumb.jpg" alt="<?php echo $value['title'.Yii::app()->session['lang']] ?>" /></a></li>
						<?php endif; ?>
					<?php endforeach; ?>
			</ul>
			<?php endif;?>
		</div> <!--End colum3--> <div class="clear"></div>
	</div><!--End content-->
</div><!--End wrapper-->
<div id="bg-footer">
    <div id="footer">
        <p><?php echo $this->lang['company_name'] ?></p>     
        <p><?php echo $this->lang['address1'] ?></p>     
        <p><?php echo $this->lang['address2'] ?></p>     
        <p><?php echo $this->lang['copyright'] ?></p>     
        <p><?php echo $this->lang['developed']?> <a href="http://dos.vn" target="_blank" title="Dos.vn">Dos.vn</a></p>     
    </div><!--End footer-->
</div> <!--End bg footer-->
</body>
</html>