<?php if(isset($this->function['about_home'])): ?>
	<h2 class="title-right"><span><?php echo $this->function['about_home']['title'.LANG] ?></span></h2>
	<div class="frame-tent-right">
		<?php echo $this->function['about_home']['content'.LANG] ?>
	</div> <!--End frame tent right-->
<?php endif; ?>

<?php if(isset($this->function['products_hot']) && $this->function['products_hot']):?>
<h2 class="title-right"><span><?php echo $this->lang['products'] . ' ' . strtolower($this->lang['hot']) ?></span></h2>
	<ul class="all-product">
	<?php foreach($this->function['products_hot'] as $value): ?>
		<li class="product">
			<div class="tent-product">
				<?php if($value['pic_thumb']): ?>
					<div class="product-img"><a href="<?php echo Yii::app()->request->baseUrl.LANGURL ?>/<?php echo Yii::t('user', 'products.link')?>/<?php echo $value['ProductsCat']['tag'.LANG] ?>/<?php echo $value['tag'.LANG] ?>.html" title="<?php echo $value['title'.LANG] ?>"><img src="<?php echo Yii::app()->baseUrl.USERFILES ?>/products/<?php echo $value['pic_thumb'] ?>" alt="<?php echo $value['title'.LANG] ?>" /></a></div>
				<?php else :?>
					<div class="product-img"><a href="<?php echo Yii::app()->request->baseUrl.LANGURL ?>/<?php echo Yii::t('user', 'products.link')?>/<?php echo $value['ProductsCat']['tag'.LANG] ?>/<?php echo $value['tag'.LANG] ?>.html" title="<?php echo $value['title'.LANG] ?>"><img src="<?php echo Yii::app()->theme->baseUrl; ?>/images/no-product.jpg" alt="no-product.jpg" /></a></div>
				<?php endif; ?>
			</div>
			<h3 class="title-pro"><a href="<?php echo Yii::app()->request->baseUrl.LANGURL ?>/<?php echo Yii::t('user', 'products.link')?>/<?php echo $value['ProductsCat']['tag'.LANG] ?>/<?php echo $value['tag'.LANG] ?>.html" title="<?php echo $value['title'.LANG] ?>"><?php echo $value['title'.LANG] ?></a></h3>
			<p class="price"><?php echo Common::getPrice($value['unit']) ?></p>
			<p class="button-cart"><a href="<?php echo Yii::app()->baseUrl . LANGURL?>/<?php echo Yii::t('user', 'products.link')?>/<?php echo Yii::t('user', 'products.order.link')?>/<?php echo $value['tag'.LANG] ?>" title="<?php echo $this->lang['addcart']?>: <?php echo $value['title' . LANG] ?>" class="add-to-cart"><span><?php echo $this->lang['addcart']?></span></a></p>
		</li>
	<?php endforeach; ?>
	</ul> <!--End all product-->
<?php endif; ?>

<?php if(isset($this->function['products_new']) && $this->function['products_new']):?>
<h2 class="title-right"><span><?php echo $this->lang['products'] . ' ' . strtolower($this->lang['new']) ?></span></h2>
<ul class="all-product">
	<?php foreach($this->function['products_new'] as $value): ?>
	<li class="product">
		<div class="tent-product">
			<?php if($value['pic_thumb']): ?>
				<div class="product-img"><a href="<?php echo Yii::app()->request->baseUrl.LANGURL ?>/<?php echo Yii::t('user', 'products.link')?>/<?php echo $value['ProductsCat']['tag'.LANG] ?>/<?php echo $value['tag'.LANG] ?>.html" title="<?php echo $value['title'.LANG] ?>"><img src="<?php echo Yii::app()->baseUrl.USERFILES ?>/products/<?php echo $value['pic_thumb'] ?>" alt="<?php echo $value['title'.LANG] ?>" /></a></div>
			<?php else :?>
				<div class="product-img"><a href="<?php echo Yii::app()->request->baseUrl.LANGURL ?>/<?php echo Yii::t('user', 'products.link')?>/<?php echo $value['ProductsCat']['tag'.LANG] ?>/<?php echo $value['tag'.LANG] ?>.html" title="<?php echo $value['title'.LANG] ?>"><img src="<?php echo Yii::app()->theme->baseUrl; ?>/images/no-product.jpg" alt="no-product.jpg" /></a></div>
			<?php endif; ?>
		</div>
		<h3 class="title-pro"><a href="<?php echo Yii::app()->request->baseUrl.LANGURL ?>/<?php echo Yii::t('user', 'products.link')?>/<?php echo $value['ProductsCat']['tag'.LANG] ?>/<?php echo $value['tag'.LANG] ?>.html" title="<?php echo $value['title'.LANG] ?>"><?php echo $value['title'.LANG] ?></a></h3>
		<p class="price"><?php echo Common::getPrice($value['unit']) ?></p>
		<p class="button-cart"><a href="<?php echo Yii::app()->baseUrl . LANGURL?>/<?php echo Yii::t('user', 'products.link')?>/<?php echo Yii::t('user', 'products.order.link')?>/<?php echo $value['tag'.LANG] ?>" title="<?php echo $this->lang['addcart']?>: <?php echo $value['title' . LANG] ?>" class="add-to-cart"><span><?php echo $this->lang['addcart']?></span></a></p>
	</li>
	<?php endforeach; ?>
</ul> <!--End all product-->
<?php endif; ?>