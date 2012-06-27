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
<script type="text/javascript" src="<?php echo Yii::app()->theme->baseUrl; ?>/js/embed-flash.js"></script>

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

<link rel="stylesheet" type="text/css"  href="<?php echo Yii::app()->theme->baseUrl; ?>/css/prettyPhoto.css" />
<script type="text/javascript" src="<?php echo Yii::app()->theme->baseUrl; ?>/js/jquery.prettyPhoto.js" ></script>
<script type="text/javascript" charset="utf-8">
jQuery(document).ready(function(){
	jQuery(".gallery:first a[rel^='prettyPhoto']").prettyPhoto({animation_speed:'fast',slideshow:10000, hideflash: true});
	jQuery(".gallery:gt(0) a[rel^='prettyPhoto']").prettyPhoto({animation_speed:'fast',slideshow:10000, hideflash: true});
	jQuery(".product_2 a[rel^='photo']").prettyPhoto({animation_speed:'fast',slideshow:10000});
	jQuery(".catalogue a[rel^='photo']").prettyPhoto({animation_speed:'fast',slideshow:10000});
	jQuery(".img_info a[rel^='photo']").prettyPhoto({animation_speed:'fast',slideshow:10000});
});
</script>
		
</head>
<body>
<div id="wrapper">
	<div id="header">
        <?php $flash = ($this->module->id == 'video' || $this->module->id == 'contact' || $this->module->id == 'forms' || $this->module->id == 'catalogue' || $this->module->id == 'customers') ? $this->module->id : 'home'?>
		<script type="text/javascript">embedFlashObj('<?php echo Yii::app()->theme->baseUrl; ?>/flash/<?php echo $flash?>.swf',980,134);</script>
		<div class="lang">
			<?php if(count($this->numLang) > 1):?>
			<?php foreach($this->numLang as $value): ?>
				<a href="<?php echo ($value=='vi') ? Yii::app()->request->baseUrl.'/' : Yii::app()->request->baseUrl.'/'.$value ?>"><img src="<?php echo Yii::app()->theme->baseUrl; ?>/images/<?php echo $value?>.jpg" alt="<?php echo $this->lang[$value]?>" /></a>
				<?php endforeach?>
			<?php endif?>
		</div>
		<div class="clear"></div>	
	</div><!--End header-->
    <ul id="nav">
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
				<h2 class="title-left"><span><?php echo $this->lang['about'] ?></span></h2>
				<ul class="frame-leftcontent sub-cat">
					<?php foreach($this->function['menu_about'] as $value): ?>
						<li><a href="<?php echo Yii::app()->request->baseUrl.LANGURL ?>/<?php echo Yii::t('user', 'about.link')?>/<?php echo $value['tag'.LANG]?>.html" title="<?php echo $value['title'.LANG]?>"><span><?php echo $value['title'.LANG]?></span></a></li>
					<?php endforeach; ?>
				</ul>
			<?php endif;?>

            <?php if(isset($this->function['menu_customers']) && ($this->function['menu_customers'])):?>
            <h2 class="title-left"><span><?php echo $this->lang['customers'] ?></span></h2>
            <ul class="frame-leftcontent sub-cat">
                <?php Common::menuMultiLevel($this->function['menu_customers'], 'CustomersCat', Yii::t('user', 'customers.link'), 'span'); ?>
            </ul>
            <?php endif;?>
		
			<?php if(isset($this->function['menu_products']) && ($this->function['menu_products'])):?>
				<h2 class="title-left"><span><?php echo $this->lang['products'] ?></span></h2>
				<ul class="frame-leftcontent sub-cat">
					<?php Common::menuMultiLevel($this->function['menu_products'], 'ProductsCat', Yii::t('user', 'products.link'), 'span'); ?>
				</ul>
			<?php endif;?>
			
			<?php if(isset($this->function['menu_services']) && ($this->function['menu_services'])):?>
			<h2 class="title-left"><span><?php echo $this->lang['forms'] ?></span></h2>
			<ul class="frame-leftcontent sub-cat">
				<?php foreach($this->function['menu_services'] as $value): ?>
				<li><a href="<?php echo Yii::app()->request->baseUrl.LANGURL ?>/<?php echo Yii::t('user', 'forms.link')?>/<?php echo $value['tag'.Yii::app()->session['lang']]?>.html" title="<?php echo $value['title'.LANG]?>"><span><?php echo $value['title'.LANG]?></span></a></li>
				<?php endforeach; ?>
			</ul>
			<?php endif;?>
			
			<?php if(isset($this->function['menu_video']) && ($this->function['menu_video'])):?>
			<h2 class="title-left"><span><?php echo $this->lang['video'] ?></span></h2>
			<ul class="frame-leftcontent sub-cat">
				<?php Common::menuMultiLevel($this->function['menu_video'], 'VideoCat', Yii::t('user', 'video.link'),'span'); ?>
			</ul>
			<?php endif; ?>
			
			<?php if(isset($this->function['list_supports']) && ($this->function['list_supports'])):?>
			<h2 class="title-left"><span><?php echo $this->lang['supports'] ?></span></h2>
			<ul class="frame-leftcontent support">
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
			<?php endif; ?>
			
			<?php if(isset($this->function['advs_left']) && ($this->function['advs_left'])):?>
			<h2 class="title-left"><span><?php echo $this->lang['advs'] ?></span></h2>
			<ul class="frame-leftcontent bg-adv">
			<?php foreach($this->function['advs_left'] as $value): ?>
				<li>
					<a href="<?php echo $value['url'] ?>" target="<?php echo $value['type'] ?>" title="<?php echo $value['title'.Yii::app()->session['lang']] ?>"><img src="<?php echo Yii::app()->baseUrl.USERFILES ?>/advs/<?php echo $value['pic_thumb'] ?>" alt="<?php echo $value['title'.Yii::app()->session['lang']] ?>" /></a>
				</li>
			<?php endforeach; ?>
			</ul>
			<?php endif;?>
		</div> <!--End left content-->
		<div id="rightcontent">
			<?php if($this->banner): ?>
				<ul class="slider">
					<?php foreach($this->banner as $value): ?>
					<li class="slider-item"><a href="<?php echo $value['banner_link'] ?>" title=""><img src="<?php echo Yii::app()->request->baseUrl.USERFILES; ?>/banner/<?php echo $value['banner_url'] ?>" alt="<?php echo $value['banner_name'] ?>" /></a></li>
					<?php endforeach ?>
				</ul>
			<?php endif; ?>
			
			<?php echo $content?>
            
           
		</div><!--End right content--> <div class="clear"></div>
	</div><!--End content-->
	<div id="footer">
		<div class="fter-left">
			<div class="statistics">
                <p class="ico-online"><img src="<?php echo Yii::app()->theme->baseUrl; ?>/images/online.png" alt="online" /><?php echo Yii::t('user', 'online')?>: <?php echo Yii::app()->counter->getOnline(); ?></p>
                <p class="ico-total"><img src="<?php echo Yii::app()->theme->baseUrl; ?>/images/visited.png" alt="today" /><?php echo Yii::t('user', 'today')?>: <?php echo Yii::app()->counter->getToday(); ?></p>
				<p class="ico-online"><img src="<?php echo Yii::app()->theme->baseUrl; ?>/images/online.png" alt="yesterday" /><?php echo Yii::t('user', 'yesterday')?>: <?php echo Yii::app()->counter->getYesterday(); ?></p>
				<p class="ico-total"><img src="<?php echo Yii::app()->theme->baseUrl; ?>/images/visited.png" alt="total" /><?php echo Yii::t('user', 'total')?>: <?php echo Yii::app()->counter->getTotal(); ?></p>
		   </div>
		</div>
		<div class="copyright">
            <h3 class="title-company-fter"><strong><?php echo $this->lang['company_name_footer'] ?></strong></h3>
			<p><?php echo $this->lang['address1'] ?></p>
			<?php echo ($this->lang['address2']) ? '<p>'.$this->lang['address2'].'</p>' : '' ?>
            <p><?php echo $this->lang['copyright'] ?>. <?php echo $this->lang['developed']?> <a href="http://dos.vn" target="_blank" title="Dos.vn">Dos.vn</a></p>
        </div> <div class="clear"></div>
	</div><!--End Footer-->
</div><!--End wrapper-->
</body>
</html>

