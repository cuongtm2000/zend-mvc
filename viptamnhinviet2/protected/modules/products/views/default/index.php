<h1 class="title-right"><span>Sản phẩm</span></h1>

<?php foreach($items as $value): ?>
<div class="frame-product">
	<?php if($value['pic_full']): ?>
		<div class="product">
			<div class="frame-img-pro">
				<a href="<?php echo Yii::app()->request->baseUrl ?>/products/<?php echo $value['tag'] ?>" title="<?php echo $value['cat_title'] ?>">
					<img src="<?php echo Yii::app()->baseUrl.USERFILES ?>/productsCat/<?php echo $value['pic_full'] ?>" alt="<?php echo $value['cat_title'] ?>" />
				</a>
			</div>
		</div>
		<div class="btom-pro"></div>
	<?php endif; ?>
    <h2 class="title-pro"><a href="<?php echo Yii::app()->request->baseUrl ?>/products/<?php echo $value['tag'] ?>" title="<?php echo $value['cat_title'] ?>"><?php echo $value['cat_title'] ?></a></h2>
</div>
<?php endforeach; ?>	
<?php echo "<pre>";
var_dump($items);
	echo "</pre>";
?>
