<?php if(isset($this->function['about_home'])): ?>
	<h1 class="title-right"><span><?php echo $this->function['about_home']['title'.LANG] ?></span></h1>
	<div class="frame-tent-right">
		<?php echo $this->function['about_home']['content'.LANG] ?>
	</div> <!--End frame tent right-->
<?php endif; ?>

<?php if(isset($this->function['products_hot']) && $this->function['products_hot']):?>
<h1 class="title-right"><span><?php echo $this->lang['products'] . ' ' . strtolower($this->lang['hot']) ?></span></h1>
	<ul class="all-product">
	<?php foreach($this->function['products_hot'] as $value): ?>
		<li class="product">
			<div class="product-top"></div>
			<div class="product-mid">	
				<div class="tent-product">
					<?php if($value['pic_thumb']): ?>
						<div class="product-img"><a href="<?php echo Yii::app()->request->baseUrl.LANGURL ?>/<?php echo Yii::t('user', 'products.link')?>/<?php echo $value['ProductsCat']['tag'.LANG] ?>/<?php echo $value['tag'.LANG] ?>.html" title="<?php echo $value['title'.LANG] ?>"><img src="<?php echo Yii::app()->baseUrl.USERFILES ?>/products/<?php echo $value['pic_thumb'] ?>" alt="<?php echo $value['title'.LANG] ?>" /></a></div>
					<?php else :?>
						<div class="product-img"><a href="<?php echo Yii::app()->request->baseUrl.LANGURL ?>/<?php echo Yii::t('user', 'products.link')?>/<?php echo $value['ProductsCat']['tag'.LANG] ?>/<?php echo $value['tag'.LANG] ?>.html" title="<?php echo $value['title'.LANG] ?>"><img src="<?php echo Yii::app()->theme->baseUrl; ?>/images/no-product.jpg" alt="no-product.jpg" /></a></div>
					<?php endif; ?>
					<h2 class="title-pro"><a href="<?php echo Yii::app()->request->baseUrl.LANGURL ?>/<?php echo Yii::t('user', 'products.link')?>/<?php echo $value['ProductsCat']['tag'.LANG] ?>/<?php echo $value['tag'.LANG] ?>.html" title="<?php echo $value['title'.LANG] ?>"><?php echo $value['title'.LANG] ?></a></h2>
					<div class="price-add">
						<p class="price">$<?php echo $value['unit'] ?></p>
						<a href="<?php echo Yii::app()->request->baseUrl.LANGURL ?>/<?php echo Yii::t('user', 'products.link')?>/<?php echo $value['ProductsCat']['tag'.LANG] ?>/<?php echo $value['tag'.LANG] ?>.html" title="<?php echo $this->lang['detail']?>: <?php echo $value['title' . LANG] ?>" class="add-to-cart"><span>Add to Cart</span></a>
					</div>
				</div>
			</div>
			<div class="product-btom"></div>
		</li>
	<?php endforeach; ?>
	</ul> <!--End all product-->
<?php endif; ?>