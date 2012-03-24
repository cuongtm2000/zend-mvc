<?php $this->breadcrumbs=array($this->lang[$this->module->id]);?>
<h1 class="title-right"><span><?php echo $this->lang['products'] ?></span></h1>
<ul id="all-product">
	<?php foreach($items as $value): ?>
	<li class="product">
		<div class="product-top"></div>
			<div class="product-mid">	
				<div class="tent-product">
						<div class="product-img">
								<a href="<?php echo Yii::app()->request->baseUrl.LANGURL ?>/products/<?php echo $value['tag'] ?>" title="<?php echo $value['cat_title'.LANG] ?>">
									<?php if($value['pic_full']): ?>
										<img src="<?php echo Yii::app()->baseUrl.USERFILES ?>/productsCat/<?php echo $value['pic_full'] ?>" alt="<?php echo $value['cat_title'.LANG] ?>" />
									<?php else :?>
									<img src="<?php echo Yii::app()->theme->baseUrl; ?>/images/no-product.jpg" alt="no-product"/>
									<?php endif; ?>
								</a>
						</div>
						<h2 class="title-pro"><a href="<?php echo Yii::app()->request->baseUrl.LANGURL ?>/products/<?php echo $value['tag'] ?>" title="<?php echo $value['cat_title'.LANG] ?>"><?php echo $value['cat_title'.LANG] ?></a></h2>
				</div>
			</div>
		<div class="product-btom"></div>
	</li>
	<?php endforeach; ?>	
</ul> <!--End all product-->





		