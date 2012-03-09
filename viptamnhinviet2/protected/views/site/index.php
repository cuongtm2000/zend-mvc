<h1 class="title-right"><span>SẢN PHẨM LIÊN KẾT TIÊU BIỂU CỦA VIP TẦM NHÌN VIỆT</span></h1>
<div class="frame-product">
    <div class="product">
        <div class="frame-img-pro"><a href="product-info.html" title=""><img src="<?php echo Yii::app()->theme->baseUrl; ?>/images/pro-1.jpg" alt=""  /></a></div>
    </div>
    <div class="btom-pro"></div>
    <p class="price-pro">Giá bán : <span>14.070</span> <strong>K</strong></p>
    <h2 class="title-pro"><a href="product-info.html" title="">samsung series 9 np900x3a-a03us 13.3-inch laptop (black)</a></h2>
</div>

<div class="frame-product">
    <div class="product">
        <div class="frame-img-pro"><a href="product-info.html" title=""><img src="<?php echo Yii::app()->theme->baseUrl; ?>/images/pro-2.jpg" alt=""  /></a></div>
    </div>
    <div class="btom-pro"></div>
    <p class="price-pro">Giá bán : <span>14.070</span> <strong>K</strong></p>
    <h2 class="title-pro"><a href="product-info.html" title="">samsung series 9 np900x3a-a03us 13.3-inch laptop (black)</a></h2>
</div>

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
			<?php if($value['pic_thumb']): ?>
				<div class="product">
					<div class="frame-img-pro">
						<a href="<?php echo Yii::app()->request->baseUrl ?>/san-pham/<?php echo $value['tagcat'] ?>/<?php echo $value['tag'] ?>.html" title='<?php echo $value['title'] ?>'>
							<img src="<?php echo Yii::app()->baseUrl.USERFILES ?>/products/<?php echo $value['pic_thumb'] ?>" alt='<?php echo $value['title'] ?>' />
						</a>
					</div>
				</div>
				<div class="btom-pro"></div>
			<?php endif; ?>
				<p class="price-pro">Giá bán : <span><?php echo ($value['unit']) ?></span> <strong>K</strong></p>
				<h2 class="title-pro"><a href="<?php echo Yii::app()->request->baseUrl ?>/san-pham/<?php echo $value['tagcat'] ?>/<?php echo $value['tag'] ?>.html" title='<?php echo $value['title'] ?>'><?php echo $value['title'] ?></a></h2>
		</div>
	<?php endforeach; ?>
