<?php $this->breadcrumbs = array($this->lang[$this->module->id] => LANGURL . '/' . Yii::t('user', $this->module->id.'.link'), $item->ProductsCat->cat_title . LANG => '../'.$item->ProductsCat->tag, $item['title' . LANG]); ?>

<div class="frame-tent-right">
	<?php if($item['pic_full']): ?>
		<div id="frame-img-info">
			<img src="<?php echo Yii::app()->baseUrl.USERFILES ?>/products/<?php echo $item['pic_full'] ?>" alt="<?php echo $item['title'.LANG] ?>" />
			<a href="<?php echo Yii::app()->theme->baseUrl; ?>/images/20507_2.jpg" rel="milkbox[gall1]" title="LAPTOP  DELL Inspiron  N4050 - KXJXJ9"/>
			<a href="<?php echo Yii::app()->theme->baseUrl; ?>/images/20507_3.jpg" rel="milkbox[gall1]" title="LAPTOP  DELL Inspiron  N4050 - KXJXJ9"/>
			<a href="<?php echo Yii::app()->theme->baseUrl; ?>/images/20507_4.jpg" rel="milkbox[gall1]" title="LAPTOP  DELL Inspiron  N4050 - KXJXJ9"/>
			<p><a href="" id="pic_zoom_box">Xem nhiều hình</a></p>
		</div>
	<?php endif; ?>
	<div class="right-pro-info">
		<h3>Laptop MACBOOK Air MC504ZP / A</h3>
		<p>Nhà sản xuất: APPLE</p>
		<p>Thời gian bảo hành : 12 THÁNG</p>
		<p>Giá: 35.600.000 VNĐ</p>
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

