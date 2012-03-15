<h1 class="title-right"><span>Video</span></h1>
<ul class="masuring">
	<?php foreach($items as $value):?>
	<li>
		<div>
			<a href="<?php echo Yii::app()->request->baseUrl ?>/video/<?php echo $value['tag'] ?>" title="<?php echo $value['cat_title'] ?>">
				<?php if($value['pic_thumb']): ?>
					<img src="<?php echo Yii::app()->baseUrl.USERFILES ?>/video/<?php echo $value['pic_thumb'] ?>" alt="<?php echo $value['cat_title'] ?>" />
				<?php else :?>
					<img src="<?php echo Yii::app()->theme->baseUrl; ?>/images/no-images.jpg" alt="no-product" />
				<?php endif; ?>
			</a>
		</div>
		<h2 class="title-masuring"><a href="<?php echo Yii::app()->request->baseUrl ?>/video/<?php echo $value['tag'] ?>" title="<?php echo $value['tag'] ?>"><?php echo $value['cat_title']?></a></h2>
	</li> 
	<?php endforeach?>
</ul>

<?php var_dump($items) ?>