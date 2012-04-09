<?php $this->breadcrumbs = array($this->lang[$this->module->id] => LANGURL . '/' . Yii::t('user', $this->module->id.'.link'), $item->ProductsCat->cat_title . LANG => '../'.$item->ProductsCat->tag, $item['title' . LANG]); ?>

<div class="product-view">
	<div class="product-essential">
		<form action="" method="post" id="product_addtocart_form">
			<div class="product-img-box">
				<p class="product-image product-image-zoom">
					<?php if($item['pic_full']): ?>
						<img id="image" src="<?php echo Yii::app()->baseUrl.USERFILES ?>/products/<?php echo $item['pic_full'] ?>" alt="<?php echo $item['title'.LANG] ?>" />
					<?php else :?>
						<?php echo Yii::t('main', 'noRecord')?>
					<?php endif; ?>
				</p>
				<p class="zoom-notice" id="track_hint">Double click on above image to view full picture</p>
				<div class="zoom">
					<img id="zoom_out" src="<?php echo Yii::app()->theme->baseUrl; ?>/images/slider_btn_zoom_out.gif" alt="Zoom Out" title="Zoom Out" class="btn-zoom-out" />
					<div id="track">
						<div id="handle"></div>
					</div>
					<img id="zoom_in" src="<?php echo Yii::app()->theme->baseUrl; ?>/images/slider_btn_zoom_in.gif" alt="Zoom In" title="Zoom In" class="btn-zoom-in" />
				</div>
				<script type="text/javascript">

					Event.observe(window, 'load', function() {
						product_zoom = new Product.Zoom('image', 'track', 'handle', 'zoom_in', 'zoom_out', 'track_hint');
					});

				</script>
			</div>
		</form>
	</div>
</div><!--End product view-->
<div class="right-detail">
	<ul class="right-detail-info">
		<li>
			<h3 class="title-info"><?php echo $item['title'.LANG] ?></h3>
			<p><span>$<?php echo $item['unit'] ?></span></p>
		</li>
		<li>
			<h3 class="title-info">Mô tả sản phẩm</h3>
			<?php echo $item['content'.LANG] ?>
		</li>
	</ul>
</div> <div class="clear"></div>
<?php if($item_other):?>
<h3 class="title-right"><span><?php echo $this->lang[$this->module->id]?> <?php echo strtolower($this->lang['other'])?></span></h3>
<ul class="all_product">
	<?php foreach($item_other as $value):?>
	<li class="product">
		<div class="product-top"></div>
		<div class="product-mid">
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
		</div>
		<div class="product-btom"></div>
	</li>
	<?php endforeach?>
</ul>
<?php endif;?>

