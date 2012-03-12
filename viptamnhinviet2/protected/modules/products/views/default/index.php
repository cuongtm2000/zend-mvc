<h1 class="title-right"><span>Sản phẩm</span></h1>

<?php foreach($items as $value): ?>
<div class="frame-product">
	
		<div class="product">
			<div class="frame-img-pro">
				<a href="<?php echo Yii::app()->request->baseUrl ?>/san-pham/<?php echo $value['tag'] ?>" title="<?php echo $value['cat_title'] ?>">
					<?php if($value['pic_full']): ?>
						<img src="<?php echo Yii::app()->baseUrl.USERFILES ?>/productsCat/<?php echo $value['pic_full'] ?>" alt="<?php echo $value['cat_title'] ?>" />
					<?php else :?>
						<img src="<?php echo Yii::app()->theme->baseUrl; ?>/images/no.jpg" alt="no-product" />
					<?php endif; ?>
				</a>
			</div>
		</div>
		<div class="btom-pro"></div>
	
    <h2 class="title-pro"><a href="<?php echo Yii::app()->request->baseUrl ?>/san-pham/<?php echo $value['tag'] ?>" title="<?php echo $value['cat_title'] ?>"><?php echo $value['cat_title'] ?></a></h2>
</div>
<?php endforeach; ?>	

