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
<div id="wrapper">
    	<div id="header">
        	<div id="logo">
				<?php if($this->logo):?>
					<a href="<?php echo Yii::app()->request->baseUrl.Yii::app()->session['langUrl']?>/" title="<?php echo $this->logo['banner_name']?>"><img src="<?php echo Yii::app()->baseUrl.USERFILES ?>/banner/<?php echo $this->logo['banner_url'] ?>" alt="<?php echo $this->logo['banner_name']?>" /></a>
				<?php else:?>
					<a href="<?php echo Yii::app()->request->baseUrl.Yii::app()->session['langUrl'] ?>/" title="Logo"><img src="<?php echo Yii::app()->theme->baseUrl; ?>/images/logo.png" alt="Logo" /></a>
				<?php endif; ?>
			</div>
			<?php echo ($this->lang['company_name']) ? '<h1 class="title-city">'.$this->lang['company_name'].'</h1>' : '' ?> <!--End title company-->
            <div class="lang">
			   <?php if(count($this->numLang) > 1):?>
				<?php foreach($this->numLang as $value): ?>
					<a href="<?php echo ($value=='vi') ? Yii::app()->request->baseUrl.'/' : Yii::app()->request->baseUrl.'/'.$value ?>"><img src="<?php echo Yii::app()->theme->baseUrl; ?>/images/<?php echo $value?>.gif" alt="<?php echo $this->lang[$value]?>" /> <?php echo $this->lang[$value]?></a>
					<?php endforeach?>
				<?php endif?>
			</div> 
			<p class="hot-line"><?php echo $this->lang['company_phone']?></p>	<div class="clear"></div>
        </div><!--End header-->
        <ul id="nav">
        	<?php foreach($this->nav as $value):?>
			<?php $selected = ($value['url']==$this->module->id) ?  ' class="select"' : ''?>
			<?php $target = ($value['target']=='') ? '' : ' target="'.$value['target'].'"'; ?>
			<li><a<?php echo $selected ?> href="<?php echo (strpos($value['url'], 'http://') === false) ? (($value['url'] == 'default') ? Yii::app()->request->baseUrl.Yii::app()->session['langUrl'].'/' : Yii::app()->request->baseUrl.Yii::app()->session['langUrl'].'/'.Yii::t('user', $value['url'].'.link')) : $value['url'] ?>" title="<?php echo CHtml::encode($value['menu'.LANG]) ?>"<?php echo $target ?>><?php echo CHtml::encode($value['menu'.LANG]) ?></a></li>
			<?php endforeach;?>
        </ul> <!--End nav--> <div class="clear"></div>
        <div id="content">
			<?php $this->widget('zii.widgets.CBreadcrumbs', array(
				'homeLink' => CHtml::link($this->lang['default'], (LANGURL) ? LANGURL : Yii::app()->homeUrl),
				'links'=>$this->breadcrumbs,
				'htmlOptions'=>array('class'=>'link'),
				'separator'=>' <img src="'.Yii::app()->theme->baseUrl.'/images/bull.jpg" alt="Bull" title="Bull" />',
			)); ?> <!-- breadcrumbs -->
        	<div id="leftcontent">
            	<?php if(isset($this->function['menu_about']) && ($this->function['menu_about'])):?>
				<h2 class="title-left"><span><?php echo $this->lang['about'] ?></span></h2>
				<ul class="sub-cat">
					<?php foreach($this->function['menu_about'] as $value): ?>
					<li><a href="<?php echo Yii::app()->request->baseUrl.LANGURL ?>/<?php echo Yii::t('user', 'about.link')?>/<?php echo $value['tag'.LANG]?>.html" title="<?php echo $value['title'.LANG]?>"><?php echo $value['title'.LANG]?></a></li>
					<?php endforeach; ?>
				</ul>
				<?php endif;?>

				<?php if(isset($this->function['menu_services']) && ($this->function['menu_services'])):?>
				<h2 class="title-left"><span><?php echo $this->lang['services'] ?></span></h2>
				<ul class="sub-cat">
					<?php foreach($this->function['menu_services'] as $value): ?>
					<li><a href="<?php echo Yii::app()->request->baseUrl.LANGURL ?>/<?php echo Yii::t('user', 'services.link')?>/<?php echo $value['tag'.Yii::app()->session['lang']]?>.html" title="<?php echo $value['title'.LANG]?>"><?php echo $value['title'.LANG]?></a></li>
					<?php endforeach; ?>
				</ul>
				<?php endif;?>

				<?php if(isset($this->function['menu_news']) && ($this->function['menu_news'])):?>
				<h2 class="title-left"><span><?php echo CHtml::encode($this->lang['news']) ?></span></h2>
				<ul class="sub-cat">
					<?php Common::menuMultiLevel($this->function['menu_news'], 'NewsCat', Yii::t('user', 'news.link')); ?>
				</ul>
				<?php endif; ?>

				<?php if(isset($this->function['menu_video']) && ($this->function['menu_video'])):?>
				<h2 class="title-left"><span><?php echo $this->lang['video'] ?></span></h2>
				<ul class="sub-cat">
					<?php Common::menuMultiLevel($this->function['menu_video'], 'VideoCat', Yii::t('user', 'video.link')); ?>
				</ul>
				<?php endif; ?>

				<?php if(isset($this->function['menu_products']) && ($this->function['menu_products'])):?>
				<h2 class="title-left"><span><?php echo $this->lang['products'] ?></span></h2>
				<ul class="sub-cat">
					<?php Common::menuMultiLevel($this->function['menu_products'], 'ProductsCat', Yii::t('user', 'products.link')); ?>
				</ul>
				<?php endif;?>
				
				<h2 class="title-left"><span>Thông tin cần biết</span></h2>
				<ul class="sub-info">
					<li><p class="info-4"><a href="http://m.24h.com.vn/ttcb/thoitiet/thoitiet.php" target="_blank" title="Dự báo thời tiết"><img src="<?php echo Yii::app()->theme->baseUrl; ?>/images/ico-info4.gif" alt="Chứng khoán" />Dự báo thời tiết</a></p></li>
					<li><p class="info-3"><a href="http://giavanghomnay.net/" title="Giá vàng" target="_blank"><img src="<?php echo Yii::app()->theme->baseUrl; ?>/images/ico-info3.gif" alt="giá vàng" />Giá vàng</a></p></li>
					<li style="border:none"><p class="info-2"><a href="http://vov.vn/Services/Infopage.aspx?svc=exchangerates" title="Tỷ giá" target="_blank"><img src="<?php echo Yii::app()->theme->baseUrl; ?>/images/ico-info2.gif" alt="Tỷ giá" />Tỷ giá</a></p></li>
				</ul>
				<?php if(isset($this->function['advs_left']) && ($this->function['advs_left'])):?>
				<h2 class="title-left"><span><?php echo $this->lang['advs'] ?></span></h2>
				<ul class="bg-adv">
					<?php foreach($this->function['advs_left'] as $value): ?>
					<li>
						<a href="<?php echo $value['url'] ?>" target="<?php echo $value['type'] ?>" title="<?php echo $value['title'.Yii::app()->session['lang']] ?>"><img src="<?php echo Yii::app()->baseUrl.USERFILES ?>/advs/<?php echo $value['pic_thumb'] ?>" alt="<?php echo $value['title'.Yii::app()->session['lang']] ?>" /></a>
					</li>
					<?php endforeach; ?>
				</ul>
				<?php endif;?>
            </div><!--End left content-->
            <div id="rightcontent">
            	<?php if($this->banner): ?>
						<ul id="banner" class="slider">
							<?php foreach($this->banner as $value): ?>
							<li class="slider-item"><a href="<?php echo $value['banner_link'] ?>" title=""><img src="<?php echo Yii::app()->request->baseUrl.USERFILES; ?>/banner/<?php echo $value['banner_url'] ?>" alt="<?php echo $value['banner_name'] ?>" /></a></li>
							<?php endforeach ?>
						</ul>
					<?php endif; ?>
				<?php echo $content?>
            </div> <!--End right content--> <div class="clear"></div>
        </div> <!--End content-->
        <div class="bd-bt-ctent"></div>
        <!--Footer-->
		<div id="footer">
			<ul class="menu-footer">
				<?php $size = count($this->nav); $i = 0; foreach($this->nav as $value):?>
				<?php $target = ($value['target']=='') ? '' : ' target="'.$value['target'].'"'; ?>
				<?php $none = ($i < ($size-1)) ? '' : ' class="none-line"' ?>
				<li><a<?php echo $none?> href="<?php echo (strpos($value['url'], 'http://') === false) ? (($value['url'] == 'default') ? Yii::app()->request->baseUrl.Yii::app()->session['langUrl'].'/' : Yii::app()->request->baseUrl.Yii::app()->session['langUrl'].'/'.Yii::t('user', $value['url'].'.link')) : $value['url'] ?>" title="<?php echo CHtml::encode($value['menu'.LANG]) ?>"<?php echo $target ?>><?php echo CHtml::encode($value['menu'.LANG]) ?></a></li>
				<?php $i++; endforeach;?>
			</ul> 
			<div class="content-footer">
				<div class="copyright">
					<h3 class="title-company-footer"><strong><?php echo $this->lang['company_name_footer'] ?></strong></h3>
					<p><?php echo $this->lang['address1'] ?></p>
					<?php echo ($this->lang['address2']) ? '<p>'.$this->lang['address2'].'</p>' : '' ?>
					<p><?php echo $this->lang['copyright'] ?></p>
				</div> 
				<div class="statistics">
					<p><?php echo Yii::t('user', 'online')?>: <?php echo Yii::app()->counter->getOnline(); ?></p>
					<p><?php echo Yii::t('user', 'today')?>: <?php echo Yii::app()->counter->getToday(); ?></p>
					<p><?php echo Yii::t('user', 'total')?>: <?php echo Yii::app()->counter->getTotal(); ?></p>
					<p><?php echo $this->lang['developed']?> <a href="http://dos.vn" target="_blank" title="Dos.vn">Dos.vn</a></p>          
				</div> <div class="clear"></div>
			</div>	
		</div><!--End Footer-->
</div><!--End wrapper-->
</body>
</html>

