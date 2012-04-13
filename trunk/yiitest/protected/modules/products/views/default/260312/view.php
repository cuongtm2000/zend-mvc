<?php $this->breadcrumbs = array($this->lang[$this->module->id] => LANGURL . '/' . Yii::t('user', $this->module->id.'.link'), $item->ProductsCat->cat_title . LANG => '../'.$item->ProductsCat->tag, $item['title' . LANG]); ?>
<?php $this->pageTitle = $item['title'.LANG]; $this->description = $item['description'.LANG];?>

<div class="frame-tent-right">
	<div class="frame-pro-info">
		<div id="imgHover">
			<?php if($item['pic_full']): ?>
				<img src="<?php echo Yii::app()->baseUrl.USERFILES ?>/products/<?php echo $item['pic_full'] ?>" alt="<?php echo $item['title'.LANG] ?>" />
			<?php endif; ?>
			<?php $str = explode('|', $item['pic_desc']); foreach($str as $value): ?>
				<a href="<?php echo Yii::app()->baseUrl.USERFILES ?>/products/<?php echo $value ?>" rel="milkbox[gall1]" title="<?php echo $item['title'.LANG] ?>"/>
			<?php endforeach;?>
			<div id="hover">
				<a href=""><img src="<?php echo Yii::app()->theme->baseUrl; ?>/images/zoom.png" alt="zoom" /> </a>
			</div>
			<p><a href="" id="pic_zoom_box">Xem nhiều hình</a></p>
		</div>
		<div class="right-pro-info">
			<div class="tent-right-info">
			<h3 class="title-pro-info"><?php echo $item['title'.LANG] ?> </h3>
			Nhà sản xuất: APPLE<br />
			Thời gian bảo hành : 12 THÁNG
			<p class="price-info">Giá: <span><?php echo number_format($item['unit'], 0, '', '.'); ?></span> VNĐ</p>
			</div>
		</div> <div class="clear"></div>
	</div>
	<?php echo $item['content'.LANG] ?>
	<p class="black"><a href="javascript: history.go(-1)" title="<?php echo Yii::t('main', 'goback')?>" ><?php echo Yii::t('main', 'goback')?></a></p>
</div> <!--End frame tent right-->

<?php if($item_other):?>
<h3 class="title-right"><span><?php echo $this->lang[$this->module->id]?> <?php echo strtolower($this->lang['other'])?></span></h3>
<ul class="all_product">
	<?php foreach($item_other as $value):?>
	<li class="product">
		<div class="tent-product">
			<div class="product-img">
				<a href="<?php echo Yii::app()->request->baseUrl . LANGURL . '/' . Yii::t('user', $this->module->id . '.link') . '/' . $value[ucfirst($this->module->id).'Cat']['tag'.LANG] ?>/<?php echo $value['tag'.LANG] ?>.html" title="<?php echo $value['title'.LANG]?>">
					<?php if($value['pic_thumb']):?>
						<img src="<?php echo Yii::app()->baseUrl.USERFILES ?>/<?php echo $this->module->id?>/<?php echo $value['pic_thumb'] ?>" alt="<?php echo $value['title'.LANG] ?>" />
					<?php else :?>
						<img src="<?php echo Yii::app()->theme->baseUrl; ?>/images/no-images.jpg" alt="<?php echo $value['title'.LANG] ?>" />
					<?php endif?>
				</a>
			</div>
			<h2 class="title-pro"><a href="<?php echo Yii::app()->request->baseUrl . LANGURL . '/' . Yii::t('user', $this->module->id . '.link') . '/' . $value[ucfirst($this->module->id).'Cat']['tag'.LANG] ?>/<?php echo $value['tag'.LANG] ?>.html" title="<?php echo $value['title'.LANG]?>"><?php echo $value['title'.LANG]?></a></h2>
		</div>
	</li>
	<?php endforeach?>
</ul>
<?php endif;?>

