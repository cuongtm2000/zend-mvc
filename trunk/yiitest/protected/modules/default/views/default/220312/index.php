<?php if(isset($this->function['about_home'])): ?>
	
	<h1 class="title-right"><span><?php echo $this->function['about_home']['title'.LANG] ?></span></h1>
	<div class="frame-tent-right">
		<?php echo $this->function['about_home']['content'.LANG] ?>
	</div> <!--End frame tent right-->
<?php endif; ?>

<?php if(isset($this->function['products_new']) && $this->function['products_new']):?>
<h1 class="title-right"><span>Sản phẩm mới</span></h1>
<div class="all-product">
	<?php foreach($this->function['products_new'] as $value): ?>
	<div class="product">
		<div class="tent-product">
			<?php if($value['pic_thumb']): ?>
				<div class="product-img"><a href="<?php echo Yii::app()->request->baseUrl.LANGURL ?>/<?php echo Yii::t('user', 'products.link')?>/<?php echo $value->ProductsCat->tag ?>/<?php echo $value['tag'] ?>.html" title="<?php echo $value['title'.LANG] ?>"><img src="<?php echo Yii::app()->baseUrl.USERFILES ?>/products/<?php echo $value['pic_thumb'] ?>" alt="<?php echo $value['title'.LANG] ?>" /></a></div>
			<?php else :?>
				<div class="product-img"><a href="<?php echo Yii::app()->request->baseUrl.LANGURL ?>/<?php echo Yii::t('user', 'products.link')?>/<?php echo $value->ProductsCat->tag ?>/<?php echo $value['tag'] ?>.html" title="<?php echo $value['title'.LANG] ?>"><img src="<?php echo Yii::app()->theme->baseUrl; ?>/images/no-images.jpg" alt="<?php echo $value['title'.LANG] ?>" /></a></div>
			<?php endif; ?>
			<h2 class="title-pro"><a href="<?php echo Yii::app()->request->baseUrl.LANGURL ?>/<?php echo Yii::t('user', 'products.link')?>/<?php echo $value->ProductsCat->tag ?>/<?php echo $value['tag'] ?>.html" title="<?php echo $value['title'.LANG] ?>"><?php echo $value['title'.LANG] ?></a></h2>
			<p class="price">$<?php echo ($value['unit']) ?></p>
			<p class="bton-pro"><a href="<?php echo Yii::app()->request->baseUrl.LANGURL ?>/<?php echo Yii::t('user', 'products.link')?>/<?php echo $value->ProductsCat->tag ?>/<?php echo $value['tag'] ?>.html" title="CHI TIẾT" class="bton-detail">Chi tiết</a> <a href="<?php echo Yii::app()->request->baseUrl.LANGURL ?>/<?php echo Yii::t('user', 'contact.link')?>" title="<?php echo $this->lang['contact']?>" class="bton-order"><?php echo $this->lang['contact']?></a> </p>
		</div>
	</div>
	<?php endforeach; ?>
</div> <!--End all product-->
<?php endif; ?>