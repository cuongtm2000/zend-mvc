<!DOCTYPE html PUBLIC "-//W3C//DTD XHTML 1.0 Transitional//EN" "http://www.w3.org/TR/xhtml1/DTD/xhtml1-transitional.dtd">
<html xmlns="http://www.w3.org/1999/xhtml">
<head>
<meta http-equiv="Content-Type" content="text/html; charset=utf-8" />
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
		runbanner(<?php echo $this->configs['banner_width'] ?>, <?php echo $this->configs['banner_height'] ?>);
	});
</script>
<?php endif;?>

<?php echo $this->analytics?>
</head>
<body>
	<div id="wapper">
		<div id="header">
			<div class="top-header">
				<div class="logo"><?php if($this->logo):?>
					<a href="<?php echo Yii::app()->request->baseUrl.Yii::app()->session['langUrl']?>/" title="<?php echo $this->logo['banner_name']?>"><img src="<?php echo Yii::app()->baseUrl.USERFILES ?>/banner/<?php echo $this->logo['banner_url'] ?>" alt="<?php echo $this->logo['banner_name']?>" /></a>
				<?php else:?>
					<a href="<?php echo Yii::app()->request->baseUrl.Yii::app()->session['langUrl'] ?>/" title="Logo"><img src="<?php echo Yii::app()->theme->baseUrl; ?>/images/logo.png" alt="Logo" /></a>
				<?php endif; ?>
				</div>
				<?php echo ($this->lang['company_name']) ? '<h1 class="title-company">'.$this->lang['company_name'].'</h1>' : '' ?> <!--End title company-->
				<div class="lang">
				    <?php if(count($this->numLang) > 1):?>
					<?php foreach($this->numLang as $value): ?>
						<a href="<?php echo ($value=='vi') ? Yii::app()->request->baseUrl.'/' : Yii::app()->request->baseUrl.'/'.$value ?>"><img src="<?php echo Yii::app()->theme->baseUrl; ?>/images/<?php echo $value?>.gif" alt="<?php echo $this->lang[$value]?>" /> <?php echo $this->lang[$value]?></a>
						<?php endforeach?>
					<?php endif?>
				</div> 
				<p class="hot-line"><?php echo $this->lang['company_phone']?></p>
			</div>
			<div class="main-menu">
				<div class="left2"></div>
				<div id="nav">
					<ul>
						<?php $size = count($this->nav); $i = 0; foreach($this->nav as $value):?>
						<?php $selected = ($value['url']==$this->module->id) ?  ' class="select"' : ''?>
						<?php $target = ($value['target']=='') ? '' : ' target="'.$value['target'].'"'; ?>
						<?php $none = ($i < ($size-1)) ? '' : ' class="none-line"' ?>
						<li<?php echo $none?>><a<?php echo $selected ?> href="<?php echo (strpos($value['url'], 'http://') === false) ? (($value['url'] == 'default') ? Yii::app()->request->baseUrl.Yii::app()->session['langUrl'].'/' : Yii::app()->request->baseUrl.Yii::app()->session['langUrl'].'/'.Yii::t('user', $value['url'].'.link')) : $value['url'] ?>" title="<?php echo CHtml::encode($value['menu'.LANG]) ?>"<?php echo $target ?>><?php echo CHtml::encode($value['menu'.LANG]) ?></a></li>
						<?php $i++; endforeach;?>
					</ul>
				</div>
				<div class="right2"></div>
			</div>	<div class="clear"></div>
		</div>
		<div id="banner">
			<?php if($this->banner): ?>
				<ul class="slider">
					<?php foreach($this->banner as $value): ?>
					<li class="slider-item"><a href="<?php echo $value['banner_link'] ?>" title=""><img src="<?php echo Yii::app()->request->baseUrl.USERFILES; ?>/banner/<?php echo $value['banner_url'] ?>" alt="<?php echo $value['banner_name'] ?>" /></a></li>
					<?php endforeach ?>
				</ul>
			<?php else:?>
				<img class="banner-none" src="<?php echo Yii::app()->theme->baseUrl; ?>/images/banner.jpg" alt="banner" />
			<?php endif; ?>
		</div> <!--Banner-->
		<div id="content">
			<div class="bg-line-content">
				<div class="leftCol">					
					<?php if(isset($this->function['menu_about']) && ($this->function['menu_about'])):?>
					<div class="frame-sub-cat">
						<h2 class="title-left"><span><?php echo $this->lang['about'] ?></span></h2>
						<ul class="sub-cat">
							<?php foreach($this->function['menu_about'] as $value): ?>
							<li><a href="<?php echo Yii::app()->request->baseUrl.LANGURL ?>/<?php echo Yii::t('user', 'about.link')?>/<?php echo $value['tag'.LANG]?>.html" title="<?php echo $value['title'.LANG]?>"><?php echo $value['title'.LANG]?></a></li>
							<?php endforeach; ?>
						</ul>
					</div> <!--End frame-sub-cat-->
					<div class="bt-line-cat"></div>
					<?php endif;?>

					<?php if(isset($this->function['menu_services']) && ($this->function['menu_services'])):?>
					<div class="frame-sub-cat">
						<h2 class="title-left"><span><?php echo $this->lang['services'] ?></span></h2>
						<ul class="sub-cat">
							<?php foreach($this->function['menu_services'] as $value): ?>
							<li><a href="<?php echo Yii::app()->request->baseUrl.LANGURL ?>/<?php echo Yii::t('user', 'services.link')?>/<?php echo $value['tag'.Yii::app()->session['lang']]?>.html" title="<?php echo $value['title'.LANG]?>"><?php echo $value['title'.LANG]?></a></li>
							<?php endforeach; ?>
						</ul>
						</div> <!--End frame-sub-cat-->
					<div class="bt-line-cat"></div>
					<?php endif;?>

					<?php if(isset($this->function['menu_news']) && ($this->function['menu_news'])):?>
					<div class="frame-sub-cat">
						<h2 class="title-left"><span><?php echo CHtml::encode($this->lang['news']) ?></span></h2>
						<ul class="sub-cat">
							<?php Common::menuMultiLevel($this->function['menu_news'], 'NewsCat', Yii::t('user', 'news.link')); ?>
						</ul>
						</div> <!--End frame-sub-cat-->
					<div class="bt-line-cat"></div>
					<?php endif; ?>

					<?php if(isset($this->function['menu_video']) && ($this->function['menu_video'])):?>
					<div class="frame-sub-cat">
						<h2 class="title-left"><span><?php echo $this->lang['video'] ?></span></h2>
						<ul class="sub-cat">
							<?php Common::menuMultiLevel($this->function['menu_video'], 'VideoCat', Yii::t('user', 'video.link')); ?>
						</ul>
						</div> <!--End frame-sub-cat-->
					<div class="bt-line-cat"></div>
					<?php endif; ?>

					<?php if(isset($this->function['menu_products']) && ($this->function['menu_products'])):?>
					<div class="frame-sub-cat">	
						<h2 class="title-left"><span><?php echo $this->lang['products'] ?></span></h2>
						<ul class="sub-cat">
							<?php Common::menuMultiLevel($this->function['menu_products'], 'ProductsCat', Yii::t('user', 'products.link')); ?>
						</ul>
						</div> <!--End frame-sub-cat-->
					<div class="bt-line-cat"></div>
					<?php endif;?>
					
					
					<div id="advBox">
						<?php if(isset($this->function['advs_left']) && ($this->function['advs_left'])):?>
						<h2 class="title-adv"><span><?php echo $this->lang['advs'] ?></span></h2>
						<ul class="bg-adv">
							<?php foreach($this->function['advs_left'] as $value): ?>
							<li>
								<a href="<?php echo $value['url'] ?>" target="<?php echo $value['type'] ?>" title="<?php echo $value['title'.Yii::app()->session['lang']] ?>"><img src="<?php echo Yii::app()->baseUrl.USERFILES ?>/advs/<?php echo $value['pic_thumb'] ?>" alt="<?php echo $value['title'.Yii::app()->session['lang']] ?>" /></a>
							</li>
							<?php endforeach; ?>
						</ul>
						<div class="line-support"></div>
						<?php endif;?>

						<?php if(isset($this->function['list_supports']) && ($this->function['list_supports'])):?>
						<h2 class="title-support"><span><?php echo $this->lang['supports'] ?></span></h2>
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
						</ul>
						<?php endif; ?>
						<h2 class="title-support"><span><?php echo $this->lang['counter'] ?></span></h2>
						<ul class="statistics">
							<li><?php echo Yii::t('user', 'online')?>: <?php echo Yii::app()->counter->getOnline(); ?></li>
							<li><?php echo Yii::t('user', 'today')?>: <?php echo Yii::app()->counter->getToday(); ?></li>
							<li><?php echo Yii::t('user', 'yesterday')?>: <?php echo Yii::app()->counter->getYesterday(); ?></li>
							<li><?php echo Yii::t('user', 'total')?>: <?php echo Yii::app()->counter->getTotal(); ?></li>
							<li><?php echo Yii::t('user', 'maximum')?>: <?php echo Yii::app()->counter->getMaximal(); ?></li>
						</ul>
						<div class="bottom">&nbsp;</div>
					</div>
				</div> <!--End leftcol-->
				<div class="rightCol">
					<?php $this->widget('zii.widgets.CBreadcrumbs', array(
						'homeLink' => CHtml::link($this->lang['default'], (LANGURL) ? LANGURL : Yii::app()->homeUrl),
						'links'=>$this->breadcrumbs,
						'htmlOptions'=>array('class'=>'link'),
						'separator'=>' &raquo; ',
					)); ?> <!-- breadcrumbs -->
					<?php echo $content?>
				</div> <!--End right col--> <div class="clear"></div>
			</div> <!--End bg-line-content-->
		</div> <!--End content-->
    </div> <!--End wapper-->
	<div id="footer">
		<div class="menu-bottom">
			<div class="tent-fter">
				<ul class="nav-fter">
					<?php $size = count($this->nav); $i = 0; foreach($this->nav as $value):?>
						<?php $selected = ($value['url']==$this->module->id) ?  ' class="select"' : ''?>
						<?php $target = ($value['target']=='') ? '' : ' target="'.$value['target'].'"'; ?>
						<?php $none = ($i < ($size-1)) ? '' : ' class="none-line"' ?>
						<li<?php echo $none?>><a<?php echo $selected ?> href="<?php echo (strpos($value['url'], 'http://') === false) ? (($value['url'] == 'default') ? Yii::app()->request->baseUrl.Yii::app()->session['langUrl'].'/' : Yii::app()->request->baseUrl.Yii::app()->session['langUrl'].'/'.Yii::t('user', $value['url'].'.link')) : $value['url'] ?>" title="<?php echo CHtml::encode($value['menu'.LANG]) ?>"<?php echo $target ?>><?php echo CHtml::encode($value['menu'.LANG]) ?></a></li>
						<?php $i++; endforeach;?>
				</ul>
				<p><?php echo $this->lang['copyright'] ?></p>
			<div class="copright"><?php echo $this->lang['developed']?> <a href="http://dos.vn" target="_blank" title="Dos.vn">Dos.vn</a></div>
		</div>
	</div>
</body>
</html>