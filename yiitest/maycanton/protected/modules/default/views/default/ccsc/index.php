<?php if(isset($this->function['about_home'])): ?>
	<h2 class="title-right"><span><?php echo $this->function['about_home']['title'.LANG] ?></span></h2>
	<div class="frame-tent-right">
		<?php echo $this->function['about_home']['content'.LANG] ?>
	</div>
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
				</div>
			</div>
			<div class="product-btom"></div>
			<h2 class="title-pro"><a href="<?php echo Yii::app()->request->baseUrl.LANGURL ?>/<?php echo Yii::t('user', 'products.link')?>/<?php echo $value['ProductsCat']['tag'.LANG] ?>/<?php echo $value['tag'.LANG] ?>.html" title="<?php echo $value['title'.LANG] ?>"><?php echo $value['title'.LANG] ?></a></h2>
			<p class="price"><?php echo Common::getPrice($value['unit']) ?> VND</p>
			<a href="<?php echo Yii::app()->baseUrl . LANGURL?>/<?php echo Yii::t('user', 'products.link')?>/<?php echo Yii::t('user', 'products.order.link')?>/<?php echo $value['tag'.LANG] ?>" title="<?php echo $this->lang['addcart']?>: <?php echo $value['title' . LANG] ?>" class="add-to-cart"><span><?php echo $this->lang['addcart']?></span></a>
		</li>
	<?php endforeach; ?>
	</ul> <!--End all product-->
<?php endif; ?>

<?php if(isset($this->function['products_new']) && $this->function['products_new']):?>
<h2 class="title-right"><span><?php echo $this->lang['products'] . ' ' . strtolower($this->lang['new']) ?></span></h2>
<ul class="all-product">
    <li class="product">
        <div class="product-img"><a href="product-info.html" title=""><img src="images/no-product.jpg" width="170" height="145" alt="Product" /></a></div><div class="clear"></div>
        <h2 class="title-pro"><a href="product-info.html" title="Leonidas Chocolate Assortment">Harry Potter and the Chamber of Secrets</a></h2>
        <p class="price">$165.00</p>
        <a href="product-info.html" class="add-to-cart" title="Add to Cart"><span>Add to Cart</span></a>
    </li>
    <li class="product">
        <div class="product-img"><a href="product-info.html" title="" ><img src="images/no-images.jpg" alt="Product" /></a></div>
        <h2 class="title-pro"><a href="product-info.html" title="Leonidas Chocolate Assortment">Couture ring yellow gold paved</a></h2>
        <p class="price">$275.00</p>
        <a href="product-info.html" class="add-to-cart" title="Add to Cart"><span>Add to Cart</span></a>
    </li>
    <li class="product">
        <div class="product-img"><a href="product-info.html" title=""><img src="images/no-images.jpg" alt="Product" /></a></div>
        <h2 class="title-pro"><a href="product-info.html" title="Leonidas Chocolate Assortment">Diamond drop pendant</a></h2>
        <p class="price">$326.00</p>
        <a href="product-info.html" class="add-to-cart" title="Add to Cart"><span>Add to Cart</span></a>
    </li>
</ul><!--End All products-->

<h1 class="title-right"><span><?php echo $this->lang['products'] . ' ' . strtolower($this->lang['new']) ?></span></h1>
<ul class="all-product">
	<?php foreach($this->function['products_new'] as $value): ?>
	<li class="product">
		<div class="product-top"></div>
		<div class="product-mid">
			<div class="tent-product">
				<?php if($value['pic_thumb']): ?>
				    <div class="product-img"><a href="<?php echo Yii::app()->request->baseUrl.LANGURL ?>/<?php echo Yii::t('user', 'products.link')?>/<?php echo $value['ProductsCat']['tag'.LANG] ?>/<?php echo $value['tag'.LANG] ?>.html" title="<?php echo $value['title'.LANG] ?>"><img src="<?php echo Yii::app()->baseUrl.USERFILES ?>/products/<?php echo $value['pic_thumb'] ?>" alt="<?php echo $value['title'.LANG] ?>" /></a></div>
				<?php else :?>
				    <div class="product-img"><a href="<?php echo Yii::app()->request->baseUrl.LANGURL ?>/<?php echo Yii::t('user', 'products.link')?>/<?php echo $value['ProductsCat']['tag'.LANG] ?>/<?php echo $value['tag'.LANG] ?>.html" title="<?php echo $value['title'.LANG] ?>"><img src="<?php echo Yii::app()->theme->baseUrl; ?>/images/no-product.jpg" alt="no-product.jpg" /></a></div>
				<?php endif; ?>
			</div>
		</div>
		<div class="product-btom"></div>
		<h2 class="title-pro"><a href="<?php echo Yii::app()->request->baseUrl.LANGURL ?>/<?php echo Yii::t('user', 'products.link')?>/<?php echo $value['ProductsCat']['tag'.LANG] ?>/<?php echo $value['tag'.LANG] ?>.html" title="<?php echo $value['title'.LANG] ?>"><?php echo $value['title'.LANG] ?></a></h2>
		<p class="price"><?php echo Common::getPrice($value['unit']) ?></p>
		<a href="<?php echo Yii::app()->baseUrl . LANGURL?>/<?php echo Yii::t('user', 'products.link')?>/<?php echo Yii::t('user', 'products.order.link')?>/<?php echo $value['tag'.LANG] ?>" title="<?php echo $this->lang['addcart']?>: <?php echo $value['title' . LANG] ?>" class="add-to-cart"><span><?php echo $this->lang['addcart']?></span></a>
	</li>
	<?php endforeach; ?>
</ul> <!--End all product-->
<?php endif; ?>