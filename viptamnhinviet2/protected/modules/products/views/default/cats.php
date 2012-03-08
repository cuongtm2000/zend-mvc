<?php if($list_sub_cats): ?>
<h1 class="title-right"><span><?php echo $info_cat['cat_title'] ?></span></h1>
	<?php foreach($list_sub_cats as $value): ?>
	<div class="frame-product">
		<?php if($value['pic_full']): ?>
		<div class="product">
			<div class="frame-img-pro">
				<a href="<?php echo Yii::app()->request->baseUrl ?>/san-pham/<?php echo $value['tag'] ?>" title="<?php echo $value['cat_title'] ?>">
					<img src="<?php echo Yii::app()->baseUrl.USERFILES ?>/productsCat/<?php echo $value['pic_full'] ?>" alt="<?php echo $value['cat_title'] ?>" />
				</a>
			</div>
		</div>
		<div class="btom-pro"></div>
		<?php endif; ?>
		<h2 class="title-pro"><a href="<?php echo Yii::app()->request->baseUrl ?>/san-pham/<?php echo $value['tag'] ?>" title="<?php echo $value['cat_title'] ?>"><?php echo $value['cat_title'] ?></a></h2>
	</div>
	<?php endforeach; ?>
<?php endif; ?>





<?php echo "<pre>";
	var_dump($info_cat);
	echo "</pre>";
?>

<?php echo "<pre>";var_dump($list_sub_cats);
	echo "</pre>";
?>
lkdgl;kgl;d
<?php echo "<pre>"; var_dump($list_items);echo "</pre>"; ?>