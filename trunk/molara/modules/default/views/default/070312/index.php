<?php if(isset($this->function['about_home'])): ?>
	<h1 class="title-right"><?php echo $this->function['about_home']['title'.LANG] ?></h1>
	<div class="page-tent-right">
		<?php echo $this->function['about_home']['content'.LANG] ?>
	</div> <!--End page tent right-->
<?php endif; ?>

<?php if(isset($this->function['products_hot']) && $this->function['products_hot']):?>
	
	<h1 class="title-right"><span>Sản phẩm nổi bật</span></h1>
	<ul id="all-product">
	<?php foreach($this->function['products_hot'] as $value): ?>
		 <li class="product">
			<div class="tent-product">
				<?php if($value['pic_thumb']): ?>
					<div class="product-img"><a href="<?php echo Yii::app()->request->baseUrl.LANGURL ?>/products/<?php echo $value['tag'] ?>.html" title="<?php echo $value['title'.LANG] ?>"><img src="<?php echo Yii::app()->baseUrl.USERFILES ?>/products/<?php echo $value['pic_thumb'] ?>" alt="<?php echo $value['title'.LANG] ?>" /></a></div><div class="clear"></div>
				<?php else :?>
					<div class="product-img"><a href="<?php echo Yii::app()->request->baseUrl.LANGURL ?>/products/<?php echo $value['tag'] ?>.html" title="<?php echo $value['title'.LANG] ?>"><img src="<?php echo Yii::app()->theme->baseUrl; ?>/images/no-images.jpg" alt="<?php echo $value['title'.LANG] ?>" /></a></div><div class="clear"></div>
				<?php endif; ?>
				<h2 class="title-pro"><a href="<?php echo Yii::app()->request->baseUrl.LANGURL ?>/products/<?php echo $value['tag'] ?>.html" title="<?php echo $value['title'.LANG] ?>"><?php echo $value['title'.LANG] ?></a></h2>
				<p class="price"><?php echo $value['unit'] ?> VND</p>
				<a href="<?php echo Yii::app()->request->baseUrl.LANGURL ?>/products/<?php echo $value['tag'] ?>.html" title="<?php echo $value['title'.LANG] ?>"class="add-to-cart">Add to cart</a>
				
			</div>
		</li>
	<?php endforeach; ?>
	</ul> <!--End all product-->
<?php endif; ?>

