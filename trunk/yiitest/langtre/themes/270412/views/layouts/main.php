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
<script type="text/javascript" src="<?php echo Yii::app()->theme->baseUrl; ?>/js/jquery-1.7.2.min.js"></script>

<script type="text/javascript" src="<?php echo Yii::app()->theme->baseUrl; ?>/js/contentslider.js"></script>
<script type="text/javascript" src="<?php echo Yii::app()->theme->baseUrl; ?>/js/embed-flash.js"></script>

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

<script type="text/javascript">
	$(document).ready(function(){
		$(".group2").colorbox({rel:'group2', transition:"fade"});
		//Example of preserving a JavaScript event for inline calls.
		$("#click").click(function(){ 
			$('#click').css({"background-color":"#f00", "color":"#fff", "cursor":"inherit"}).text("Open this window again and this message will still be here.");
			return false;
		});
	});
</script>

<?php echo $this->analytics?>
<!--[if lt IE 8]>
<link rel="stylesheet" type="text/css" href="<?php echo Yii::app()->theme->baseUrl; ?>/css/ie6.css" />
<![endif]-->
</head>
<body>
<div id="wrapper">
	<div class="logo">
		<?php if($this->logo):?>
			<a href="<?php echo Yii::app()->request->baseUrl.Yii::app()->session['langUrl']?>/" title="<?php echo $this->logo['banner_name']?>"><img src="<?php echo Yii::app()->baseUrl.USERFILES ?>/banner/<?php echo $this->logo['banner_url'] ?>" alt="<?php echo $this->logo['banner_name']?>" /></a>
		<?php else:?>
			<a href="<?php echo Yii::app()->request->baseUrl.Yii::app()->session['langUrl']?>/" title="Logo"><img src="<?php echo Yii::app()->theme->baseUrl; ?>/images/logo.png" alt="Logo" /></a>
		<?php endif;?>
	</div>
	<div class="positon-lang">
		<ul id="nav">
			<?php $size = count($this->nav); $i = 0; foreach($this->nav as $value):?>
			<?php $selected = ($value['url']==$this->module->id) ?  ' class="selected"' : ''?>
			<?php $target = ($value['target']=='') ? '' : ' target="'.$value['target'].'"'; ?>
			<?php $none = ($i < ($size-1)) ? '' : ' class="none-line"' ?>
			<li<?php echo $none?>><a<?php echo $selected ?> href="<?php echo (strpos($value['url'], 'http://') === false) ? (($value['url'] == 'default') ? Yii::app()->request->baseUrl.Yii::app()->session['langUrl'].'/' : Yii::app()->request->baseUrl.Yii::app()->session['langUrl'].'/'.Yii::t('user', $value['url'].'.link')) : $value['url'] ?>" title="<?php echo CHtml::encode($value['menu'.LANG]) ?>"<?php echo $target ?>><?php echo CHtml::encode($value['menu'.LANG]) ?></a></li>
			<?php $i++; endforeach;?>
		</ul> <div class="clear"></div>
		<div class="lang">
			<div class="left-lang">
				<?php if(count($this->numLang) > 1):?>
					 <?php foreach($this->numLang as $value): ?>
						 <a href="<?php echo ($value=='vi') ? Yii::app()->request->baseUrl.'/' : Yii::app()->request->baseUrl.'/'.$value ?>"><img src="<?php echo Yii::app()->theme->baseUrl; ?>/images/<?php echo $value?>.gif" alt="<?php echo $this->lang[$value]?>" /> <?php echo $this->lang[$value]?></a>
					 <?php endforeach?>
				 <?php endif?>
			</div>
	   </div> 
	</div>
	<div class="bg-sub-nav">
		<?php if(isset($this->function['menu_about']) && ($this->function['menu_about'])):?>
		<ul class="sub-nav">
			<?php foreach($this->function['menu_about'] as $value): ?>
			<li><a href="<?php echo Yii::app()->request->baseUrl.LANGURL ?>/<?php echo Yii::t('user', 'about.link')?>/<?php echo $value['tag'.LANG]?>.html" title="<?php echo $value['title'.LANG]?>"><?php echo $value['title'.LANG]?></a></li>
			<?php endforeach; ?>
		</ul>
		<?php endif;?>

		<?php if(isset($this->function['menu_services']) && ($this->function['menu_services'])):?>
		<ul class="sub-nav">
			<?php foreach($this->function['menu_services'] as $value): ?>
			<li><a href="<?php echo Yii::app()->request->baseUrl.LANGURL ?>/<?php echo Yii::t('user', 'services.link')?>/<?php echo $value['tag'.Yii::app()->session['lang']]?>.html" title="<?php echo $value['title'.LANG]?>"><?php echo $value['title'.LANG]?></a></li>
			<?php endforeach; ?>
		</ul>
		<div class="bd-frame-box"></div><!--End Bd bt frame box-->
		<?php endif;?>

		<?php if(isset($this->function['menu_news']) && ($this->function['menu_news'])):?>
		<ul class="sub-nav">
			<?php Common::menuMultiLevel($this->function['menu_news'], 'NewsCat', Yii::t('user', 'news.link')); ?>
		</ul>
		<?php endif; ?>

		<?php if(isset($this->function['menu_video']) && ($this->function['menu_video'])):?>
		<ul class="sub-nav">
			<?php Common::menuMultiLevel($this->function['menu_video'], 'VideoCat', Yii::t('user', 'video.link')); ?>
		</ul>
		<?php endif; ?>

		<?php if(isset($this->function['menu_products']) && ($this->function['menu_products'])):?>
		<ul class="sub-nav">
			<?php Common::menuMultiLevel($this->function['menu_products'], 'ProductsCat', Yii::t('user', 'products.link')); ?>
		</ul>
		<?php endif;?>
		
		<?php if(isset($this->function['menu_pictures']) && ($this->function['menu_pictures'])):?>
		<ul class="sub-nav">
			<?php Common::menuMultiLevel($this->function['menu_pictures'], 'PicturesCat', Yii::t('user', 'pictures.link')); ?>
		</ul>
		<?php endif;?>
		
	</div>
	<div class="bg-welcome">
		<div class="panel-welcome">
			<?php echo ($this->lang['company_name']) ? '<h1 class="title-web">'.$this->lang['company_name'].'</h1>' : '' ?> <!--End title company-->
		</div>
		<div class="slider-web">
			<div class="sliderwrapper" id="slider1">
				<div class="contentdiv">Ngày sau sỏi đá cũng cần có nhau</div>
				<div class="contentdiv">Phát minh tạo nên sự cần thiết</div>
				<div class="contentdiv">Hãy đơn giản hoá cuộc sống</div>
				<div class="contentdiv">Lao động chinh phục được tất cả</div>
				<div class="contentdiv">Hãy làm một cái gì đó có phong cách</div>
				<div class="contentdiv">Khi tầm mắt mở rộng ra, ta mới biết mình thiếu hiểu biết đến nhường nào</div>
				</div>
				<div class="pagination p1" id="paginate-slider1" style="display: none"></div>
				<SCRIPT type=text/javascript>
				featuredcontentslider.init({
					id: "slider1",  //id of main slider DIV
					contentsource: ["inline", ""],  //Valid values: ["inline", ""] or ["ajax", "path_to_file"]
					toc: "#increment",  //Valid values: "#increment", "markup", ["label1", "label2", etc]
					nextprev: ["<<", ">>"],  //labels for "prev" and "next" links. Set to "" to hide.
					enablefade: [true, 0.1],  //[true/false, fadedegree]
					autorotate: [true, 9760],  //[true/false, pausetime]
					onChange: function(previndex, curindex){  //event handler fired whenever script changes slide
					}
				})
				</SCRIPT>
		</div>	<div class="clear"></div>
	</div> 
       
	<div class="panel-banner-adv-top">
		<?php if($this->banner): ?>
		<ul id="banner" class="slider">
			<?php foreach($this->banner as $value): ?>
			<li class="slider-item"><a href="<?php echo $value['banner_link'] ?>" title=""><img src="<?php echo Yii::app()->request->baseUrl.USERFILES; ?>/banner/<?php echo $value['banner_url'] ?>" alt="<?php echo $value['banner_name'] ?>" /></a></li>
			<?php endforeach ?>
		</ul>
		<?php endif; ?>
		<div class="video">
			<script type="text/javascript">embedFlashObj('http://www.youtube-nocookie.com/v/AkIvdoWGxdE?version=3&amp;hl=vi_VN&amp;rel=0',343,274);</script>
		</div> <div class="clear"></div>
	 </div>   		 
	<div id="content">
		<div id="left-content">
			<div class="main-content-top"><div><div>&nbsp;</div></div></div>
			<div class="main-border-left">
			<div class="main-border-right">
				<div class="content-mid">
						<?php if(isset($this->function['advs_right']) && ($this->function['advs_right'])):?>
						<h4 class="title-left"><span><?php echo $this->lang['advs'] ?></span></h4>
						<ul class="bg-adv mid-left-content">
							<?php foreach($this->function['advs_right'] as $value): ?>
							<li>
								<a href="<?php echo $value['url'] ?>" target="<?php echo $value['type'] ?>" title="<?php echo $value['title'.Yii::app()->session['lang']] ?>"><img src="<?php echo Yii::app()->baseUrl.USERFILES ?>/advs/<?php echo $value['pic_thumb'] ?>" alt="<?php echo $value['title'.Yii::app()->session['lang']] ?>" /></a>
							</li>
							<?php endforeach; ?>
						</ul>
						<?php endif;?>
						
						<?php if(isset($this->function['list_supports']) && ($this->function['list_supports'])):?>
						<h4 class="title-left"><span><?php echo $this->lang['supports'] ?></span></h4>
						<ul class="support mid-left-content">
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

						<h4 class="title-left"><span><?php echo $this->lang['counter'] ?></span></h4>
						<ul class="statistics mid-left-content">
							<li><?php echo Yii::t('user', 'online')?>: <?php echo Yii::app()->counter->getOnline(); ?></li>
							<li><?php echo Yii::t('user', 'today')?>: <?php echo Yii::app()->counter->getToday(); ?></li>
							<li><?php echo Yii::t('user', 'yesterday')?>: <?php echo Yii::app()->counter->getYesterday(); ?></li>
							<li><?php echo Yii::t('user', 'total')?>: <?php echo Yii::app()->counter->getTotal(); ?></li>
						</ul>
				</div> <!--End content-mid-->
			</div></div>
			<div class="main-content-bottom"><div><div>&nbsp;</div></div></div>               
		</div><!--End left content-->
		<div id="right-content">
			<div class="main-content-top"><div><div>&nbsp;</div></div></div>
			<div class="main-border-left">
			<div class="main-border-right">
				<div class="content-mid">
					<?php echo $content?>
				</div> <!--End content-mid-->
			</div></div>
			<div class="main-content-bottom"><div><div>&nbsp;</div></div></div>
		</div><!--End right content--> <div class="clear"></div>
	</div><!--End content-->	
</div> <!--End wrapper-->
<div class="line-footer">
    <div id="footer" class="main-page">
		<h3 class="title-company-footer"><?php echo $this->lang['company_name_footer'] ?></h3>
		<p><?php echo $this->lang['address1'] ?></p>
		<?php echo ($this->lang['address2']) ? '<p>'.$this->lang['address2'].'</p>' : '' ?>
		<p><?php echo $this->lang['copyright'] ?></p>
		<p><?php echo $this->lang['developed']?> <a href="http://dos.vn" target="_blank" title="Dos.vn">Dos.vn</a></p>
	</div>
</div><!--End line-footer-->
</body>
</html>

