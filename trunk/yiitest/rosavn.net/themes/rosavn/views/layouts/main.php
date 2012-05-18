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
		runbanner(<?php echo $this->configs['banner_width'] ?>, <?php echo $this->configs['banner_height'] ?>);
	});
</script>
<?php endif;?>

<script type="text/javascript" src="<?php echo Yii::app()->theme->baseUrl; ?>/js/embedflash.js"></script>
<?php echo $this->analytics?>
</head>
<body>
<div id="wrapper">
	<ul id="top-nav">
        <li><a href="/vi">Vietnamese</a></li>
        <li><a href="/en">English</a></li>
    </ul>
    <div id="banner">
		<div class="flash"><script type="text/javascript">embedFlashObj('<?php echo Yii::app()->theme->baseUrl; ?>/images/banner.swf',600,600);</script></div>
		<div class="logo"><script type="text/javascript">embedFlashObj('<?php echo Yii::app()->theme->baseUrl; ?>/images/logo.swf',215,103);</script></div>
		<div class="tencty"><script type="text/javascript">embedFlashObj('<?php echo Yii::app()->theme->baseUrl; ?>/images/tencty.swf',650,45);</script></div>
    	<div class="pos-left"></div>
    </div> 
    <div id="content">
    	<div id="leftcontent">
        	<div class="menu">
            	<a href="/"><img src="<?php echo Yii::app()->theme->baseUrl; ?>/images/menu-home.jpg" alt="menu home" /></a>
                <ul>
                	<?php foreach($this->nav as $value):?>
					<?php $selected = ($value['url']==$this->module->id) ?  ' class="select"' : ''?>
					<?php $target = ($value['target']=='') ? '' : ' target="'.$value['target'].'"'; ?>				
					<li><a<?php echo $selected ?> href="<?php echo (strpos($value['url'], 'http://') === false) ? (($value['url'] == 'default') ? Yii::app()->request->baseUrl.Yii::app()->session['langUrl'].'/' : Yii::app()->request->baseUrl.Yii::app()->session['langUrl'].'/'.Yii::t('user', $value['url'].'.link')) : $value['url'] ?>" title="<?php echo CHtml::encode($value['menu'.LANG]) ?>"<?php echo $target ?>><?php echo CHtml::encode($value['menu'.LANG]) ?></a></li>
					<?php endforeach;?>
            	</ul>
            </div> <!--End sub cat-->

			<?php if(isset($this->function['menu_about']) && ($this->function['menu_about'])):?>
			<h2 class="title-cat"><span><?php echo $this->lang['about'] ?></span></h2>
			<ul class="sub-cat">
				<?php foreach($this->function['menu_about'] as $value): ?>
				<li><a href="<?php echo Yii::app()->request->baseUrl.LANGURL ?>/<?php echo Yii::t('user', 'about.link')?>/<?php echo $value['tag'.LANG]?>.html" title="<?php echo $value['title'.LANG]?>"><?php echo $value['title'.LANG]?></a></li>
				<?php endforeach; ?>
			</ul>
			<?php endif;?>

			<?php if(isset($this->function['menu_services']) && ($this->function['menu_services'])):?>
			<h2 class="title-cat"><span><?php echo $this->lang['services'] ?></span></h2>
			<ul class="sub-cat">
				<?php foreach($this->function['menu_services'] as $value): ?>
				<li><a href="<?php echo Yii::app()->request->baseUrl.LANGURL ?>/<?php echo Yii::t('user', 'services.link')?>/<?php echo $value['tag'.Yii::app()->session['lang']]?>.html" title="<?php echo $value['title'.LANG]?>"><?php echo $value['title'.LANG]?></a></li>
				<?php endforeach; ?>
			</ul>
			<?php endif;?>

			<?php if(isset($this->function['menu_news']) && ($this->function['menu_news'])):?>
			<h2 class="title-cat"><span><?php echo CHtml::encode($this->lang['news']) ?></span></h2>
			<ul class="sub-cat">
				<?php Common::menuMultiLevel($this->function['menu_news'], 'NewsCat', Yii::t('user', 'news.link')); ?>
			</ul>
			<?php endif; ?>

			<?php if(isset($this->function['menu_video']) && ($this->function['menu_video'])):?>
			<h2 class="title-cat"><span><?php echo $this->lang['video'] ?></span></h2>
			<ul class="sub-cat">
				<?php Common::menuMultiLevel($this->function['menu_video'], 'VideoCat', Yii::t('user', 'video.link')); ?>
			</ul>
			<?php endif; ?>

			<?php if(isset($this->function['menu_products']) && ($this->function['menu_products'])):?>
			<h2 class="title-cat"><span><?php echo $this->lang['products'] ?></span></h2>
			<ul class="sub-cat">
				<?php Common::menuMultiLevel($this->function['menu_products'], 'ProductsCat', Yii::t('user', 'products.link')); ?>
			</ul>
			<?php endif;?>

			<?php if(isset($this->function['list_supports']) && ($this->function['list_supports'])):?>
			<h2 class="title-cat"><span><?php echo $this->lang['supports'] ?></span></h2>
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

			<h2 class="title-cat"><span><?php echo $this->lang['counter'] ?></span></h2>
			<ul class="statistics">
				<li><?php echo Yii::t('user', 'online')?>: <?php echo Yii::app()->counter->getOnline(); ?></li>
				<li><?php echo Yii::t('user', 'today')?>: <?php echo Yii::app()->counter->getToday(); ?></li>
				<li><?php echo Yii::t('user', 'yesterday')?>: <?php echo Yii::app()->counter->getYesterday(); ?></li>
				<li><?php echo Yii::t('user', 'total')?>: <?php echo Yii::app()->counter->getTotal(); ?></li>
				<li><?php echo Yii::t('user', 'maximum')?>: <?php echo Yii::app()->counter->getMaximal(); ?></li>
				<li><?php echo Yii::t('user', 'dateMaximum')?>: <?php echo date('d.m.Y', Yii::app()->counter->getMaximalTime()); ?></li>
			</ul>

			<?php if(isset($this->function['advs_left']) && ($this->function['advs_left'])):?>
			<h2 class="title-cat"><span><?php echo $this->lang['advs'] ?></span></h2>
			<ul class="bg-adv">
				<?php foreach($this->function['advs_left'] as $value): ?>
				<li>
					<a href="<?php echo $value['url'] ?>" target="<?php echo $value['type'] ?>" title="<?php echo $value['title'.Yii::app()->session['lang']] ?>"><img src="<?php echo Yii::app()->baseUrl.USERFILES ?>/advs/<?php echo $value['pic_thumb'] ?>" alt="<?php echo $value['title'.Yii::app()->session['lang']] ?>" /></a>
				</li>
				<?php endforeach; ?>
			</ul>
			<?php endif;?>
        </div> <!--End left content-->
        <div id="rightcontent">
			<?php echo $content?>
			<div class="clear"></div>
        </div> <!--End right content-->
        <div id="columns3">
        	<!--<h2 class="title-video"><span>Video rosa</span></h2>
            <div class="video">
				<script type="text/javascript" src="js/videoyoutubehome.js"></script>
                <script type="text/javascript">embedyoutube('http://www.youtube.com/watch?v=-9jcQ9znMYQ&amp;feature=youtu.be',222,172);</script>
                <div class="reset">Bấm phím F5 để xem Video khác</div>
            </div>-->
			<?php if(isset($this->function['video_hot']) && ($this->function['video_hot'])):?>
			<h2 class="title-video"><span><?php echo $this->lang['video'] . ' ' . strtolower($this->lang['hot'])?></span></h2>
			<div class="video">
				<a href="<?php echo CHtml::encode($this->function['video_hot']['url']) ?>" rel="prettyPhoto" title="<?php echo $this->function['video_hot']['title'.LANG] ?>">
					<img src="<?php echo Yii::app()->baseUrl.USERFILES ?>/video/<?php echo $this->function['video_hot']['pic_thumb'] ?>" alt="<?php echo $this->function['video_hot']['title'.LANG] ?>"/>
				</a>
			</div>
			<div class="bd-frame-right"></div><!--End Bd bt frame box-->
			<script type="text/javascript">$(document).ready(function () {$(".video a[rel^='prettyPhoto']").prettyPhoto();});</script>
			<?php endif?>
			
			<?php if(isset($this->function['news_new']) && ($this->function['news_new'])):?>
			<h2 class="title-new"><span><?php echo CHtml::encode($this->lang['news']) . ' ' . strtolower($this->lang['new'])?></span></h2>
			<ul class="sub-new">
				<?php foreach($this->function['news_new'] as $value):?>
				<li><a href="<?php echo Yii::app()->request->baseUrl.LANGURL ?>/<?php echo Yii::t('user', 'news.link')?>/<?php echo $value['NewsCat']['tag'.LANG] ?>/<?php echo $value['tag'.LANG] ?>.html" title="<?php echo $value['title'.LANG]?>"><?php echo $value['title'.LANG]?></a></li>
				<?php endforeach?>
			</ul>
			<?php endif?>

			<?php if(isset($this->function['advs_right']) && ($this->function['advs_right'])):?>
			<h2 class="title-adv-right"><span><?php echo $this->lang['advs'] ?></span></h2>
			<ul class="advright">
				<?php foreach($this->function['advs_right'] as $value): ?>
				<li>
					<a href="<?php echo $value['url'] ?>" target="<?php echo $value['type'] ?>" title="<?php echo $value['title'.Yii::app()->session['lang']] ?>"><img src="<?php echo Yii::app()->baseUrl.USERFILES ?>/advs/<?php echo $value['pic_thumb'] ?>" alt="<?php echo $value['title'.Yii::app()->session['lang']] ?>" /></a>
				</li>
				<?php endforeach; ?>
			</ul>
			<?php endif;?>
        </div> <!--End columns3--> <div class="clear"></div>
    </div> <!--End Content-->
</div> <!--End Wrapper-->
</body>
</html>