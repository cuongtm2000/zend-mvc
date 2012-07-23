<?php if(isset($this->function['about_home'])): ?>
	<div class="main-content-top"><div><div>&nbsp;</div></div></div> <!--End main-content-top -->  
	<div class="main-content">	
			<h3 class="title-right"><span><?php echo $this->function['about_home']['title'.LANG] ?></span></h3>
		<div class="frame-tent-right">	
			<?php echo $this->function['about_home']['content'.LANG] ?>
		</div> <!--End frame tent right-->
	</div>	
	<div class="main-content-bottom"></div> <!--End main-content-bottom-->     
<?php endif; ?>

<?php if(isset($this->function['products_hot']) && $this->function['products_hot']):?>
<div class="main-line-top"><div><div>&nbsp;</div></div></div> <!--End main-content-top -->  
	<div class="main-content">
	<h3 class="title-right"><span><?php echo $this->lang['products'] . ' ' . strtolower($this->lang['hot']) ?></span></h3>
	<ul class="all-product">
	<?php foreach($this->function['products_hot'] as $value): ?>
		<li class="product">
			<?php if($value['pic_thumb']): ?>
				<div class="product-img"><a href="<?php echo Yii::app()->request->baseUrl.LANGURL ?>/<?php echo Yii::t('user', 'products.link')?>/<?php echo $value['ProductsCat']['tag'.LANG] ?>/<?php echo $value['tag'.LANG] ?>.html" title="<?php echo $value['title'.LANG] ?>"><img src="<?php echo Yii::app()->baseUrl.USERFILES ?>/products/<?php echo $value['pic_thumb'] ?>" alt="<?php echo $value['title'.LANG] ?>" /></a></div>
			<?php else :?>
				<div class="product-img"><a href="<?php echo Yii::app()->request->baseUrl.LANGURL ?>/<?php echo Yii::t('user', 'products.link')?>/<?php echo $value['ProductsCat']['tag'.LANG] ?>/<?php echo $value['tag'.LANG] ?>.html" title="<?php echo $value['title'.LANG] ?>"><img src="<?php echo Yii::app()->theme->baseUrl; ?>/images/product_default.jpg" alt="no-product.jpg" /></a></div>
			<?php endif; ?>
			<h2 class="title-pro"><a href="<?php echo Yii::app()->request->baseUrl.LANGURL ?>/<?php echo Yii::t('user', 'products.link')?>/<?php echo $value['ProductsCat']['tag'.LANG] ?>/<?php echo $value['tag'.LANG] ?>.html" title="<?php echo $value['title'.LANG] ?>"><?php echo $value['title'.LANG] ?></a></h2>
			<p class="price"><?php echo Common::getPrice($value['unit']) ?></p>
			<a href="<?php echo Yii::app()->baseUrl . LANGURL?>/<?php echo Yii::t('user', 'products.link')?>/<?php echo Yii::t('user', 'products.order.link')?>/<?php echo $value['tag'.LANG] ?>" title="<?php echo $this->lang['addcart']?>: <?php echo $value['title' . LANG] ?>" class="add-to-cart"><span><?php echo $this->lang['addcart']?></span></a>
		</li>
	<?php endforeach; ?>
	</ul> <!--End all product--> <div class="clear"></div>
</div> 
<div class="main-content-bottom"></div> <!--End main-content-bottom-->  
<?php endif; ?>

<?php if(isset($this->function['products_new']) && $this->function['products_new']):?>
<div class="main-line-top"><div><div>&nbsp;</div></div></div> <!--End main-content-top -->  
	<div class="main-content">
		<h3 class="title-right"><span><?php echo $this->lang['products'] . ' ' . strtolower($this->lang['new']) ?></span></h3>
		<ul class="all-product">
			<?php foreach($this->function['products_new'] as $value): ?>
			<li class="product">
				<?php if($value['pic_thumb']): ?>
					<div class="product-img"><a href="<?php echo Yii::app()->request->baseUrl.LANGURL ?>/<?php echo Yii::t('user', 'products.link')?>/<?php echo $value['ProductsCat']['tag'.LANG] ?>/<?php echo $value['tag'.LANG] ?>.html" title="<?php echo $value['title'.LANG] ?>"><img src="<?php echo Yii::app()->baseUrl.USERFILES ?>/products/<?php echo $value['pic_thumb'] ?>" alt="<?php echo $value['title'.LANG] ?>" /></a></div>
				<?php else :?>
					<div class="product-img"><a href="<?php echo Yii::app()->request->baseUrl.LANGURL ?>/<?php echo Yii::t('user', 'products.link')?>/<?php echo $value['ProductsCat']['tag'.LANG] ?>/<?php echo $value['tag'.LANG] ?>.html" title="<?php echo $value['title'.LANG] ?>"><img src="<?php echo Yii::app()->theme->baseUrl; ?>/images/no-product.jpg" alt="no-product.jpg" /></a></div>
				<?php endif; ?>
				<h2 class="title-pro"><a href="<?php echo Yii::app()->request->baseUrl.LANGURL ?>/<?php echo Yii::t('user', 'products.link')?>/<?php echo $value['ProductsCat']['tag'.LANG] ?>/<?php echo $value['tag'.LANG] ?>.html" title="<?php echo $value['title'.LANG] ?>"><?php echo $value['title'.LANG] ?></a></h2>
				<p class="price"><?php echo Common::getPrice($value['unit']) ?></p>
				<a href="<?php echo Yii::app()->baseUrl . LANGURL?>/<?php echo Yii::t('user', 'products.link')?>/<?php echo Yii::t('user', 'products.order.link')?>/<?php echo $value['tag'.LANG] ?>" title="<?php echo $this->lang['addcart']?>: <?php echo $value['title' . LANG] ?>" class="add-to-cart"><span><?php echo $this->lang['addcart']?></span></a>
			</li>
			<?php endforeach; ?>
		</ul> <!--End all product--> <div class="clear"></div>
	</div> 
<div class="main-content-bottom"></div> <!--End main-content-bottom-->  		
<?php endif; ?>