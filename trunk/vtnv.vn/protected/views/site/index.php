<h1 class="title-right"><span>SẢN PHẨM LIÊN KẾT TIÊU BIỂU CỦA VIP TẦM NHÌN VIỆT</span></h1>
<?php foreach($listItemSpecials as $value):?>
<div class="frame-product">
	<div class="product">
		<div class="frame-img-pro">
			<a href="<?php echo Yii::app()->request->baseUrl ?>/san-pham/<?php echo $value['tagcat'] ?>/<?php echo $value['tag'] ?>.html" title='<?php echo $value['title'] ?>'>
				<?php if($value['pic_thumb']): ?>
					<img src="<?php echo Yii::app()->baseUrl.USERFILES ?>/products/<?php echo $value['pic_thumb'] ?>" alt='<?php echo $value['title'] ?>' />
				<?php else :?>
					<img src="<?php echo Yii::app()->theme->baseUrl; ?>/images/no.jpg" alt="no-product" />
				<?php endif; ?>
			</a>
		</div>
	</div>
	<div class="btom-pro"></div>
	<h2 class="title-pro"><a href="<?php echo Yii::app()->request->baseUrl ?>/san-pham/<?php echo $value['tagcat'] ?>/<?php echo $value['tag'] ?>.html" title="<?php echo $value['title']?>"><?php echo $value['title']?></a></h2>
    <p class="price-pro">Giá bán : <span><?php echo number_format($value['unit'], 0, '', '.'); ?></span> VND</p>
</div>
<?php endforeach?>

<div class="img-new">
	<?php if(isset($this->advs_center) && ($this->advs_center)):?>
			<?php foreach($this->advs_center as $value): ?>
				<a href="<?php echo $value['url'] ?>" title="<?php echo $value['title'] ?>" target="<?php echo $value['type'] ?>"><img src="<?php echo Yii::app()->baseUrl.USERFILES ?>/advs/<?php echo $value['pic_thumb'] ?>" alt="<?php echo $value['title'] ?>"  /></a>
			<?php endforeach; ?>
	<?php endif;?>
</div>
<h1 class="title-right"><span>SẢN PHẨM MỚI NHẤT</span></h1>
	<?php foreach($listItemNew as $value): ?>
		<div class="frame-product">			
				<div class="product">
					<div class="frame-img-pro">					
						<a href="<?php echo Yii::app()->request->baseUrl ?>/san-pham/<?php echo $value['tagcat'] ?>/<?php echo $value['tag'] ?>.html" title='<?php echo $value['title'] ?>'>
							<?php if($value['pic_thumb']): ?>
								<img src="<?php echo Yii::app()->baseUrl.USERFILES ?>/products/<?php echo $value['pic_thumb'] ?>" alt='<?php echo $value['title'] ?>' />
							<?php else :?>
								<img src="<?php echo Yii::app()->theme->baseUrl; ?>/images/no.jpg" alt="no-product" />
							<?php endif; ?>
						</a>
					</div>
				</div>
				<div class="btom-pro"></div>	
				<h2 class="title-pro"><a href="<?php echo Yii::app()->request->baseUrl ?>/san-pham/<?php echo $value['tagcat'] ?>/<?php echo $value['tag'] ?>.html" title='<?php echo $value['title'] ?>'><?php echo $value['title'] ?></a></h2>
				<p class="price-pro">Giá bán : <span><?php echo number_format($value['unit'], 0, '', '.'); ?></span> VND</p>
		</div>
	<?php endforeach; ?>
