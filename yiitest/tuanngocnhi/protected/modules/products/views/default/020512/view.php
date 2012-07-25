<?php $this->breadcrumbs = array($this->lang[$this->module->id] => Yii::app()->request->baseUrl . LANGURL . '/' . Yii::t('user', $this->module->id.'.link'), $item[ucfirst($this->module->id).'Cat']['cat_title' . LANG] => '../'.$item[ucfirst($this->module->id).'Cat']['tag'.LANG], $item['title' . LANG]); ?>
<?php $this->pageTitle = $item['title'.LANG] . ' - ' . $item[ucfirst($this->module->id).'Cat']['cat_title' . LANG] . ' - ' . $this->lang[$this->module->id]; $this->description = $item['description'.LANG];?>

<h2 class="title-right"><span><?php echo $this->lang['detail'] . ' ' . strtolower($this->lang[$this->module->id])?></span></h2>
 <div class="frame-pro-info">
	<?php if($item['pic_full']): ?>
	<div class="left-info img_info"><a href="<?php echo Yii::app()->baseUrl.USERFILES ?>/<?php echo $this->module->id?>/<?php echo $item['pic_full'] ?>" rel="photo" title="ACCENT">
		<img src="<?php echo Yii::app()->baseUrl.USERFILES ?>/<?php echo $this->module->id?>/<?php echo $item['pic_full'] ?>" title="<?php echo $item['title'.LANG] ?>" alt="<?php echo $item['title'.LANG] ?>" /></a>
	</div>
	<?php endif;?>
	<div class="right-info">
		<p><label>Mã sản phẩm</label><b>:</b> </p>
		<p><label>Loại xe</label><b>:</b>   ACCENT</p>
		<p><label>Tên sản phẩm</label><b>:</b> <strong><?php echo $item['title'.LANG] ?></strong></p>
		<p class="price-info"><label>Giá</label><b>:</b> <span><?php echo Common::getPrice($item['unit']) ?></span></p>
		<p class="btn_info"><a href="<?php echo Yii::app()->baseUrl . LANGURL?>/<?php echo Yii::t('user', 'products.link')?>/<?php echo Yii::t('user', 'products.order.link')?>/<?php echo $item['tag'.LANG] ?>" title="<?php echo $this->lang['detail']?>: <?php echo $item['title' . LANG] ?>" class="add-to-cart"><span><?php echo $this->lang['addcart']?></span></a></p>
	</div>  <div class="clear"></div>
	<h4 class="title-info"><span><?php echo $this->lang['description'] . ' ' . strtolower($this->lang[$this->module->id]) ?></span></h4>
	<?php echo $item['content'.LANG] ?>
</div>	<!--End frame-pro-info -->
 <script type="text/javascript" >
	jQuery(document).ready(function(){
		jQuery(".img_info:first a[rel^='photo']").prettyPhoto({animation_speed:'fast',slideshow:10000, hideflash: true});
	});
</script>



<?php if($item_other):?>
<h3 class="title-right"><span><?php echo $this->lang[$this->module->id]?> <?php echo strtolower($this->lang['other'])?></span></h3>
<ul class="all-product">
	<?php foreach($item_other as $value):?>
	<li class="product">
		<div class="product-img">
			<a href="<?php echo Yii::app()->request->baseUrl . LANGURL . '/' . Yii::t('user', $this->module->id . '.link') . '/' . $value[ucfirst($this->module->id).'Cat']['tag'.LANG] ?>/<?php echo $value['tag'.LANG] ?>.html" title="<?php echo $value['title'.LANG]?>">
			<?php if($value['pic_thumb']):?>
				<img src="<?php echo Yii::app()->baseUrl.USERFILES ?>/<?php echo $this->module->id?>/<?php echo $value['pic_thumb'] ?>" alt="<?php echo $value['title'.LANG] ?>" />
			<?php else :?>
				<img src="<?php echo Yii::app()->theme->baseUrl; ?>/images/no-images.jpg" alt="<?php echo $value['title'.LANG] ?>" />
			<?php endif?>
			</a>
		</div>
		<h2 class="title-pro-2"><a href="<?php echo Yii::app()->request->baseUrl . LANGURL . '/' . Yii::t('user', $this->module->id . '.link') . '/' . $value[ucfirst($this->module->id).'Cat']['tag'.LANG] ?>/<?php echo $value['tag'.LANG] ?>.html" title="<?php echo $value['title'.LANG]?>"><?php echo $value['title'.LANG]?></a></h2>
	</li>
	<?php endforeach?>
</ul>
<?php endif;?>
<div class="btom-main"></div>
