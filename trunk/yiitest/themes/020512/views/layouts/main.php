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
<script type="text/javascript" src="<?php echo Yii::app()->theme->baseUrl; ?>/js/dropdown.js"></script>
<title><?php echo CHtml::encode($this->pageTitle); ?><?php echo ($this->title) ? ' - '.CHtml::encode($this->title) : '' ?> </title>
<meta name="keywords" content="<?php echo $this->keywords ?>" />
<meta name="description" content="<?php echo $this->description ?>" />

<?php if($this->banner):?>
<link rel="stylesheet" type="text/css" href="<?php echo Yii::app()->theme->baseUrl; ?>/css/advanced-slider-base.css" media="screen"/>
<script type="text/javascript" src="<?php echo Yii::app()->theme->baseUrl; ?>/js/jquery.advancedSlider.min.js"></script>
<!--[if IE]><script type="text/javascript" src="<?php echo Yii::app()->theme->baseUrl; ?>/js/excanvas.compiled.js"></script><![endif]-->
<script type="text/javascript" src="<?php echo Yii::app()->theme->baseUrl; ?>/js/jquery.sider.banner.js"></script>
<script type="text/javascript">
	$(document).ready(function(){
		runbanner(<?php echo $this->configs['banner_width'] ?>, <?php echo $this->configs['banner_height'] ?>);
	});
</script>
<?php endif;?>
<?php echo $this->analytics?>
<!--[if lt IE 8]>
<link rel="stylesheet" type="text/css" href="<?php echo Yii::app()->theme->baseUrl; ?>/css/ie6.css" />
<![endif]-->
</head>
<body>
<div id="wapper">
    <div id="header">
    	<div id="logo">
			<?php if($this->logo):?>
				<a href="<?php echo Yii::app()->request->baseUrl.Yii::app()->session['langUrl']?>/" title="<?php echo $this->logo['banner_name']?>"><img src="<?php echo Yii::app()->baseUrl.USERFILES ?>/banner/<?php echo $this->logo['banner_url'] ?>" alt="<?php echo $this->logo['banner_name']?>" /></a>
			<?php else:?>
				<a href="<?php echo Yii::app()->request->baseUrl.Yii::app()->session['langUrl']?>/" title="Logo"><img src="<?php echo Yii::app()->theme->baseUrl; ?>/images/logo.png" alt="Logo" /></a>
			<?php endif;?>
    	</div> <!--End logo-->
		<div class="lang">
			<?php if(count($this->numLang) > 1):?>
			<?php foreach($this->numLang as $value): ?>
				<a href="<?php echo ($value=='vi') ? Yii::app()->request->baseUrl.'/' : Yii::app()->request->baseUrl.'/'.$value ?>"><img src="<?php echo Yii::app()->theme->baseUrl; ?>/images/<?php echo $value?>.gif" alt="<?php echo $this->lang[$value]?>" /> <?php echo $this->lang[$value]?></a>
				<?php endforeach?>
			<?php endif?>
		</div>
		<p class="hot-line"><?php echo $this->lang['company_phone']?></p>
    </div> <!--End header--> <div class="clear"></div>
	<ul id="nav">
		<?php $size = count($this->nav); $i = 0; foreach($this->nav as $value):?>
		<?php $selected = ($value['url']==$this->module->id) ?  ' class="select"' : ''?>
		<?php $target = ($value['target']=='') ? '' : ' target="'.$value['target'].'"'; ?>
		<?php $none = ($i < ($size-1)) ? '' : ' class="none-line"' ?>
		<li<?php echo $none?>><a<?php echo $selected ?> class="linknav" href="<?php echo (strpos($value['url'], 'http://') === false) ? (($value['url'] == 'default') ? Yii::app()->request->baseUrl.Yii::app()->session['langUrl'].'/' : Yii::app()->request->baseUrl.Yii::app()->session['langUrl'].'/'.Yii::t('user', $value['url'].'.link')) : $value['url'] ?>" title="<?php echo CHtml::encode($value['menu'.LANG]) ?>"<?php echo $target ?>><?php echo CHtml::encode($value['menu'.LANG]) ?></a></li>
		<?php $i++; endforeach;?>
	</ul> <!--End Nav-->  <div class="clear"></div>
    <div id="banner">
    	<div id="bannerleft">
			<?php if($this->banner): ?>
			<ul class="slider">
				<?php foreach($this->banner as $value): ?>
				<li class="slider-item"><a href="<?php echo $value['banner_link'] ?>" title=""><img src="<?php echo Yii::app()->request->baseUrl.USERFILES; ?>/banner/<?php echo $value['banner_url'] ?>" alt="<?php echo $value['banner_name'] ?>" /></a></li>
				<?php endforeach ?>
			</ul>
			<?php else:?>
				<img src="<?php echo Yii::app()->theme->baseUrl; ?>/images/banner.jpg" alt="Banner" />
			<?php endif; ?>
        </div>
		<?php if(isset($this->function['advs_top']) && ($this->function['advs_top'])):?>
		<ul class="adv-top">
			<?php foreach($this->function['advs_top'] as $value): ?>
			<li>
				<a href="<?php echo $value['url'] ?>" target="<?php echo $value['type'] ?>" title="<?php echo $value['title'.Yii::app()->session['lang']] ?>"><img src="<?php echo Yii::app()->baseUrl.USERFILES ?>/advs/<?php echo $value['pic_thumb'] ?>" alt="<?php echo $value['title'.Yii::app()->session['lang']] ?>" /></a>
			</li>
			<?php endforeach; ?>
		</ul>
		<?php endif;?>  <div class="clear"></div>
    </div> <!--END Banner--> 
    <div id="content">
        <div id="leftcontent">
			<?php if(isset($this->function['menu_about']) && ($this->function['menu_about'])):?>
			<h4 class="title-left"><span><?php echo $this->lang['about'] ?></span></h4>
			<ul class="sub-cat">
				<?php foreach($this->function['menu_about'] as $value): ?>
				<li><a href="<?php echo Yii::app()->request->baseUrl.LANGURL ?>/<?php echo Yii::t('user', 'about.link')?>/<?php echo $value['tag'.LANG]?>.html" title="<?php echo $value['title'.LANG]?>"><?php echo $value['title'.LANG]?></a></li>
				<?php endforeach; ?>
			</ul>
			<div class="bt-left-penal"></div> <!--bottom line sub left-->
			<?php endif;?>

			<?php if(isset($this->function['menu_services']) && ($this->function['menu_services'])):?>
			<h4 class="title-left"><span><?php echo $this->lang['services'] ?></span></h4>
			<ul class="sub-cat">
				<?php foreach($this->function['menu_services'] as $value): ?>
				<li><a href="<?php echo Yii::app()->request->baseUrl.LANGURL ?>/<?php echo Yii::t('user', 'services.link')?>/<?php echo $value['tag'.Yii::app()->session['lang']]?>.html" title="<?php echo $value['title'.LANG]?>"><?php echo $value['title'.LANG]?></a></li>
				<?php endforeach; ?>
			</ul>
			<div class="bt-left-penal"></div> <!--bottom line sub left-->
			<?php endif;?>

			<?php if(isset($this->function['menu_news']) && ($this->function['menu_news'])):?>
			<h4 class="title-left"><span><?php echo CHtml::encode($this->lang['news']) ?></span></h4>
			<ul class="sub-cat">
				<?php Common::menuMultiLevel($this->function['menu_news'], 'NewsCat', Yii::t('user', 'news.link')); ?>
			</ul>
			<div class="bt-left-penal"></div>
			<?php endif; ?>

			<?php if(isset($this->function['menu_video']) && ($this->function['menu_video'])):?>
			<h4 class="title-left"><span><?php echo $this->lang['video'] ?></span></h4>
			<ul class="sub-cat">
				<?php Common::menuMultiLevel($this->function['menu_video'], 'VideoCat', Yii::t('user', 'video.link')); ?>
			</ul>
			<div class="bt-left-penal"></div>
			<?php endif; ?>

			<?php if(isset($this->function['menu_products']) && ($this->function['menu_products'])):?>
			<h4 class="title-left"><span><?php echo $this->lang['products'] ?></span></h4>
			<ul class="sub-cat">
				<?php Common::menuMultiLevel($this->function['menu_products'], 'ProductsCat', Yii::t('user', 'products.link')); ?>
			</ul>
			<div class="bt-left-penal"></div>
			<?php endif;?>

			<?php if(isset($this->function['list_supports']) && ($this->function['list_supports'])):?>
			<h4 class="title-left"><span><?php echo $this->lang['supports'] ?></span></h4>
			<ul class="support">
				<?php foreach($this->function['list_supports'] as $value): ?>
					<?php if($value['support_type']=='yahoo'): ?>
					<li>
						<?php if($value['support_name'.Yii::app()->session['lang']]) echo '<p>'.$value['support_name'.Yii::app()->session['lang']].'</p>'; ?>
						<?php if($value['support_phone']) echo '<p>'.$value['support_phone'].'</p>'; ?>
						<a href="ymsgr:sendIM?<?php echo $value['support_value'] ?>"><img src="http://mail.opi.yahoo.com/online?u=<?php echo $value['support_value'] ?>&amp;m=g&amp;t=2" border="0" alt="<?php echo $value['support_value'] ?>" /></a>
					</li>
					<?php else:?>
					<li>
						<?php if($value['support_name'.Yii::app()->session['lang']]) echo '<p>'.$value['support_name'.Yii::app()->session['lang']].'</p>'; ?>
						<?php if($value['support_phone']) echo '<p>'.$value['support_phone'].'</p>'; ?>
						<a href="skype:<?php echo $value['support_value'] ?>?call"><img src="http://mystatus.skype.com/bigclassic/<?php echo $value['support_value'] ?>" style="border: none;" width="130" alt="<?php echo $value['support_value'] ?>" /></a>
					</li>
					<?php endif; ?>
				<?php endforeach; ?>
			</ul>
			<div class="bt-left-penal"></div>
			<?php endif; ?>

			<h2 id="topsta"><span><?php echo $this->lang['counter'] ?></span></h2>
			<ul class="statistics">
				<li><?php echo Yii::t('user', 'online')?>: <?php echo Yii::app()->counter->getOnline(); ?></li>
				<li><?php echo Yii::t('user', 'today')?>: <?php echo Yii::app()->counter->getToday(); ?></li>
				<li><?php echo Yii::t('user', 'yesterday')?>: <?php echo Yii::app()->counter->getYesterday(); ?></li>
				<li><?php echo Yii::t('user', 'total')?>: <?php echo Yii::app()->counter->getTotal(); ?></li>
			</ul>

			<?php if(isset($this->function['advs_left']) && ($this->function['advs_left'])):?>
			<h4 class="title-left"><span><?php echo $this->lang['advs'] ?></span></h4>
			<ul class="bg-adv">
				<?php foreach($this->function['advs_left'] as $value): ?>
				<li>
					<a href="<?php echo $value['url'] ?>" target="<?php echo $value['type'] ?>" title="<?php echo $value['title'.Yii::app()->session['lang']] ?>"><img src="<?php echo Yii::app()->baseUrl.USERFILES ?>/advs/<?php echo $value['pic_thumb'] ?>" alt="<?php echo $value['title'.Yii::app()->session['lang']] ?>" /></a>
				</li>
				<?php endforeach; ?>
			</ul>
			<div class="bt-left-penal"></div>
			<?php endif;?>
        </div> <!--END left Content-->
        <div id="rightcontent">
			<?php echo $content?>
        </div><!--END RIGHT Content--> <div class="clear"></div>
    </div><!--END Content-->
	<?php if(isset($this->function['advs_bottom']) && ($this->function['advs_bottom'])):?>
    <div id="adv-btom">
		<?php foreach($this->function['advs_bottom'] as $value): ?>
			<img src="<?php echo Yii::app()->baseUrl.USERFILES ?>/advs/<?php echo $value['pic_thumb'] ?>" alt="<?php echo $value['title'.Yii::app()->session['lang']] ?>" />
		<?php endforeach; ?>
    </div>
	<?php endif;?>
    <div id="footer">
		<h3 class="comname"><strong><?php echo $this->lang['company_name_footer'] ?></strong></h3>
		<p><?php echo $this->lang['address1'] ?></p>
		<?php echo ($this->lang['address2']) ? '<p>'.$this->lang['address2'].'</p>' : '' ?>
		<p><?php echo $this->lang['copyright'] ?></p>
		<p><?php echo $this->lang['developed']?> <a href="http://dos.vn" target="_blank" title="Dos.vn">Dos.vn</a></p>
	</div>
</div><!--End Wapper-->
</body>
</html>
