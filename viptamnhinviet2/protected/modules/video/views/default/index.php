<h1 class="title-right"><span>Video</span></h1>
<?php foreach($items as $value):?>
<div class="frame-product">
	<div class="product">
		<div class="frame-img-pro">
			<a href="<?php echo Yii::app()->request->baseUrl ?>/video/<?php echo $value['tag'] ?>" title="<?php echo $value['cat_title'] ?>">
				<?php if($value['pic_thumb']): ?>
					<img src="<?php echo Yii::app()->baseUrl.USERFILES ?>/videoCat/<?php echo $value['pic_thumb'] ?>" alt="<?php echo $value['cat_title'] ?>" />
				<?php else :?>
					<img src="<?php echo Yii::app()->theme->baseUrl; ?>/images/no-images.jpg" alt="no-product" />
				<?php endif; ?>
			</a>
		</div>
	</div>
	<div class="btom-pro"></div>
	<h2 class="title-masuring"><a href="<?php echo Yii::app()->request->baseUrl ?>/video/<?php echo $value['tag'] ?>" title="<?php echo $value['tag'] ?>"><?php echo $value['cat_title']?></a></h2>
</div>
<?php endforeach?>
