<?php if(isset($this->function['about_home'])): ?>
	<h1 class="title-right"><span><?php echo $this->function['about_home']['title'.LANG] ?></span></h1>
	<div class="frame-tent-right">
		<?php echo $this->function['about_home']['content'.LANG] ?>
	</div> <!--End frame tent right-->
<?php endif; ?>

<?php if(isset($this->function['products_hot']) && $this->function['products_hot']):?>
	<h3 class="title-right"><span><?php echo $this->lang['products'] . ' ' . strtolower($this->lang['hot']) ?></span></h3>
	<ul class="all-product">
		<?php foreach($this->function['products_hot'] as $value): ?>
			<li class="product">
				<h2 class="title-pro"><a href="<?php echo Yii::app()->request->baseUrl.LANGURL ?>/<?php echo Yii::t('user', 'products.link')?>/<?php echo $value['ProductsCat']['tag'.LANG] ?>/<?php echo $value['tag'.LANG] ?>.html" title='<?php echo $value['title'.LANG] ?>'><strong><?php echo $value['title'.LANG] ?></strong></a></h2>
				<div class="product-img">
					<?php if($value['pic_thumb']): ?>
						<a  class="pic" href="<?php echo Yii::app()->request->baseUrl.LANGURL ?>/<?php echo Yii::t('user', 'products.link')?>/<?php echo $value['ProductsCat']['tag'.LANG] ?>/<?php echo $value['tag'.LANG] ?>.html" title='<?php echo $value['title'.LANG] ?>'><img src="<?php echo Yii::app()->baseUrl.USERFILES ?>/products/<?php echo $value['pic_thumb'] ?>" alt='<?php echo $value['title'.Yii::app()->session['lang']] ?>' /></a>
					<?php else: ?>
						<a  class="pic" href="<?php echo Yii::app()->request->baseUrl.LANGURL ?>/<?php echo Yii::t('user', 'products.link')?>/<?php echo $value['ProductsCat']['tag'.LANG] ?>/<?php echo $value['tag'.LANG] ?>.html" title='<?php echo $value['title'.LANG] ?>'><img src="<?php echo Yii::app()->theme->baseUrl; ?>/images/no-images.jpg" alt='<?php echo $value['title'.Yii::app()->session['lang']] ?>' /></a>
					<?php endif; ?>
				</div>
				<p class="price"><?php echo (is_numeric($value['unit'])) ? number_format($value['unit'], 0, '', '.') . ' VND' : (($value['unit']) ? $value['unit'] : $this->lang['contact']) ?></p>
				<p class="bton-pro"><a href="<?php echo Yii::app()->request->baseUrl.LANGURL ?>/<?php echo Yii::t('user', 'products.link')?>/<?php echo $value['ProductsCat']['tag'.LANG] ?>/<?php echo $value['tag'.LANG] ?>.html" title="<?php echo $this->lang['detail']?>: <?php echo $value['title' . LANG] ?>" class="bton-detail"><?php echo $this->lang['detail']?></a> <a href="<?php echo Yii::app()->baseUrl . LANGURL?>/<?php echo Yii::t('user', 'products.link')?>/<?php echo Yii::t('user', 'products.order.link')?>/<?php echo $value['tag'.LANG] ?>" title="<?php echo $this->lang['addcart']?>: <?php echo $value['title' . LANG] ?>" class="add-to-cart"><?php echo $this->lang['addcart']?></a></p>
			</li>
		<?php endforeach; ?>
	 </ul><!--End sam pham noi bat-->
<?php endif;?>

<?php if(isset($this->function['products_new']) && $this->function['products_new']):?>
<h1 class="title-right"><span><?php echo $this->lang['products'] . ' ' . strtolower($this->lang['new']) ?></span></h1>
		<ul class="all-product">
			<?php foreach($this->function['products_new'] as $value): ?>
				<li class="product">
					<h2 class="title-pro"><a href="<?php echo Yii::app()->request->baseUrl.LANGURL ?>/<?php echo Yii::t('user', 'products.link')?>/<?php echo $value['ProductsCat']['tag'.LANG] ?>/<?php echo $value['tag'.LANG] ?>.html" title="<?php echo $value['title'.LANG] ?>"><strong><?php echo $value['title'.LANG] ?></strong></a></h2>
					<?php if($value['pic_thumb']): ?>
						<div class="product-img"><a href="<?php echo Yii::app()->request->baseUrl.LANGURL ?>/<?php echo Yii::t('user', 'products.link')?>/<?php echo $value['ProductsCat']['tag'.LANG] ?>/<?php echo $value['tag'.LANG] ?>.html" title="<?php echo $value['title'.LANG] ?>"><img src="<?php echo Yii::app()->baseUrl.USERFILES ?>/products/<?php echo $value['pic_thumb'] ?>" alt="<?php echo $value['title'.LANG] ?>" /></a></div>
					<?php else :?>
						<div class="product-img"><a href="<?php echo Yii::app()->request->baseUrl.LANGURL ?>/<?php echo Yii::t('user', 'products.link')?>/<?php echo $value['ProductsCat']['tag'.LANG] ?>/<?php echo $value['tag'.LANG] ?>.html" title="<?php echo $value['title'.LANG] ?>"><img src="<?php echo Yii::app()->theme->baseUrl; ?>/images/no-images.jpg" alt="<?php echo $value['title'.LANG] ?>" /></a></div>
					<?php endif; ?>
					<p class="price"><?php echo (is_numeric($value['unit'])) ? number_format($value['unit'], 0, '', '.') . ' VND' : (($value['unit']) ? $value['unit'] : $this->lang['contact']) ?></p>
					<p class="bton-pro"><a href="<?php echo Yii::app()->request->baseUrl.LANGURL ?>/<?php echo Yii::t('user', 'products.link')?>/<?php echo $value['ProductsCat']['tag'.LANG] ?>/<?php echo $value['tag'.LANG] ?>.html" title="<?php echo $this->lang['detail']?>: <?php echo $value['title' . LANG] ?>" class="bton-detail"><?php echo $this->lang['detail']?></a> <a href="<?php echo Yii::app()->baseUrl . LANGURL?>/<?php echo Yii::t('user', 'products.link')?>/<?php echo Yii::t('user', 'products.order.link')?>/<?php echo $value['tag'.LANG] ?>" title="<?php echo $this->lang['addcart']?>: <?php echo $value['title' . LANG] ?>" class="add-to-cart"><?php echo $this->lang['addcart']?></a></p>
				</li>
			<?php endforeach; ?>
		</ul> <!--End San pham moi-->	
<?php endif; ?>