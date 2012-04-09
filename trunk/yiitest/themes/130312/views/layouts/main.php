<!DOCTYPE html PUBLIC "-//W3C//DTD XHTML 1.0 Transitional//EN" "http://www.w3.org/TR/xhtml1/DTD/xhtml1-transitional.dtd">
<html xmlns="http://www.w3.org/1999/xhtml">
<head>
<meta http-equiv="Content-Type" content="text/html; charset=utf-8" />
<meta http-equiv="content-language" content="vi" />
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
        	<div id="header-left">
				<?php if($this->logo):?>
					<a href="<?php echo Yii::app()->request->baseUrl ?>/" title="<?php echo $this->logo['banner_name']?>"><img src="<?php echo Yii::app()->baseUrl.USERFILES ?>/banner/<?php echo $this->logo['banner_url'] ?>" alt="<?php echo $this->logo['banner_name']?>" /></a>
				<?php else:?>
					<a href="<?php echo Yii::app()->request->baseUrl ?>/" title=""><img src="<?php echo Yii::app()->theme->baseUrl; ?>/images/logo.png" alt="Logo" /></a>
				<?php endif;?>
			</div><!--End header left-->
            <div class="lang">
				<a href="<?php echo Yii::app()->request->baseUrl ?>/" title="Tiếng Việt">Tiếng Việt <img src="<?php echo Yii::app()->theme->baseUrl; ?>/images/vi.gif" alt="Việt Nam" /></a> 
				<a href="<?php echo Yii::app()->request->baseUrl ?>/en" title="English">English <img src="<?php echo Yii::app()->theme->baseUrl; ?>/images/en.gif" alt="English" /></a>
			</div> <div class="clear"></div>
        </div><!--End header-->
     	<ul id="nav">
           <?php foreach($this->nav as $value):?>
				<?php $selected = ($value['url']==$this->module->id) ?  ' class="select"' : ''?>
				<?php $target = ($value['target']=='') ? '' : ' target="'.$value['target'].'"'; ?>
				<li><a <?php echo $selected ?> href="<?php echo (strpos($value['url'], 'http://') === false) ? Yii::app()->request->baseUrl.LANGURL.'/'.$value['url'] : $value['url'] ?>" title="<?php echo $value['menu'.LANG] ?>"<?php echo $target ?>><?php echo $value['menu'.LANG] ?></a></li>
			<?php endforeach;?>
        </ul>  <div class="clear"></div>
		<div id="banner">    
			<?php if($this->banner): ?>
			<ul class="slider">
				<?php foreach($this->banner as $value): ?>
					<li class="slider-item"><a href="<?php echo $value['banner_link'] ?>" title=""><img src="<?php echo Yii::app()->request->baseUrl.USERFILES; ?>/banner/<?php echo $value['banner_url'] ?>" alt="<?php echo $value['banner_name'] ?>" /></a></li>
				<?php endforeach ?>
			</ul>
			<?php else : ?>
				<img src="<?php echo Yii::app()->theme->baseUrl; ?>/images/banner.jpg" alt="banner" />
			<?php endif; ?>
		</div><!--End banner-->
	
        <div id="content">
        	<div id="left-content">
            	<?php if(isset($this->function['menu_about']) && ($this->function['menu_about'])):?>
					<h1 class="title-left"><span><?php echo $this->lang['about'] ?></span></h1>
					<ul class="subcate">
						<?php foreach($this->function['menu_about'] as $value): ?>
						<li><a href="<?php echo Yii::app()->request->baseUrl.LANGURL ?>/about/<?php echo $value['tag']?>.html" title="<?php echo $value['title'.LANG]?>"><?php echo $value['title'.LANG]?></a></li>
						<?php endforeach; ?>
					</ul>
				<?php endif;?>
				
				<?php if(isset($this->function['menu_services']) && ($this->function['menu_services'])):?>
					<h1 class="title-left"><span><?php echo $this->lang['services'] ?></span></h1>
					<ul class="subcate">
						<?php foreach($this->function['menu_services'] as $value): ?>
						<li><a href="<?php echo Yii::app()->request->baseUrl.LANGURL ?>/services/<?php echo $value['tag']?>.html" title="<?php echo $value['title'.LANG]?>"><?php echo $value['title'.LANG]?></a></li>
						<?php endforeach; ?>
					</ul>
				<?php endif;?>
				
				<?php if(isset($this->function['menu_products']) && ($this->function['menu_products'])):?>
				<h1 class="title-left"><span><?php echo $this->lang['products'] ?></span></h1>
				<ul class="subcate">
					<?php Common::menuMultiLevel($this->function['menu_products'], 'ProductsCat', 'products'); ?>
				</ul>
				<?php endif;?>
				
                <?php if(isset($this->function['list_supports']) && ($this->function['list_supports'])):?>
				<h1 class="title-left"><span><?php echo $this->lang['supports'] ?></span></h1>
				<ul class="support">
					<?php foreach($this->function['list_supports'] as $value): ?>
						<?php if($value['support_type']=='yahoo'): ?>
							<?php if($value['support_name']) echo '<li>'.$value['support_name'].'</li>'; ?>
							<?php if($value['support_phone']) echo '<li>'.$value['support_phone'].'</li>'; ?>
							<li><a href="ymsgr:sendIM?<?php echo $value['support_value'] ?>">
								<img src="http://mail.opi.yahoo.com/online?u=<?php echo $value['support_value'] ?>&amp;m=g&amp;t=2" border="0" alt="<?php echo $value['support_value'] ?>" /></a></li>
						<?php endif; ?>
					<?php endforeach; ?>	
				</ul>
				<?php endif; ?>
				
                <h2 class="title-left"><span><?php echo $this->lang['counter'] ?></span></h2>
                <ul class="statistics">
                	<li>Truy cập trong ngày: <?php echo Yii::app()->counter->getToday(); ?></li>
					<li>Đang online: <?php echo Yii::app()->counter->getOnline(); ?></li>
					<li>Tổng lượt truy cập:<?php echo Yii::app()->counter->getTotal(); ?></li>
                </ul>
            </div><!--End left content-->	
        	<div id="right-content">
				<?php $this->widget('zii.widgets.CBreadcrumbs', array(
					'homeLink' => CHtml::link($this->lang['default'], (LANGURL) ? LANGURL : Yii::app()->homeUrl),
					'links'=>$this->breadcrumbs,
					'htmlOptions'=>array('class'=>'link'),
					'separator'=>' <img src="'.Yii::app()->theme->baseUrl.'/images/bull.jpg" alt="Bull" title="Bull" />',
				)); ?> <!-- breadcrumbs -->
				<?php echo $content?>
            	
            </div><!--End right content-->   <div class="clear"></div>
        </div><!--End content-->
    <div id="footer">
        <ul id="nav-fter">
            <?php foreach($this->nav as $value):?>
				<?php $selected = ($value['url']==$this->module->id) ?  ' class="select"' : ''?>
				<?php $target = ($value['target']=='') ? '' : ' target="'.$value['target'].'"'; ?>
				<li><a <?php echo $selected ?> href="<?php echo (strpos($value['url'], 'http://') === false) ? Yii::app()->request->baseUrl.LANGURL.'/'.$value['url'] : $value['url'] ?>" title="<?php echo $value['menu'.LANG] ?>"<?php echo $target ?>><?php echo $value['menu'.LANG] ?></a></li>
			<?php endforeach;?>
        </ul>
        <div class="frame-info">
            <p>&copy; Bản quyền thuộc <b>CÔNG TY TNHH THƯƠNG MẠI - QUỐC TẾ THIÊN LONG</b></p>
            <p>Địa chỉ: Xã Vĩnh Khúc, Huyện Văn Giang, Tỉnh Hưng Yên, Việt Nam (Km 20, Quốc lộ 5, đối diện Khu Công nghiệp Phố Nối A) </p>
            <p><span>Tel: +84 321 3729462</span> <span>Fax: +84 321 3729463</span> <span>Email:info@thienlong.vn</span></p>
    	</div> <!--End frame info-->
    </div><!--End footer-->
</div><!--End wrapper-->
</body>
</html>
