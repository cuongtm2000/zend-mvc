<h1 class="title-right"><span><a href="<?php echo Yii::app()->request->baseUrl?>/san-pham" title="sản phẩm">Sản phẩm</a> &raquo; <a href="<?php echo Yii::app()->request->baseUrl.'/san-pham/'.$item->ProductsCat->tag?>" title="<?php echo $item->ProductsCat->cat_title?>"><?php echo $item->ProductsCat->cat_title?></a> &raquo; <?php echo $item['title']?></span></h1>
<div class="frame-info-view">
	<?php if($item['pic_full']):?>
		<div class="info-view-img">
			<img src="<?php echo Yii::app()->request->baseUrl. USERFILES; ?>/products/<?php echo $item['pic_full']?>" alt="<?php echo $item['title']?>" />
		</div>
	<?php endif?>
	<?php echo $item['detail']?>
</div> <!--End frame info view-->
<!-- <h1 class="title-right"><span>Sản phẩm khác</span></h1>
<div class="frame-product">
	<div class="product">
		<div class="frame-img-pro"><a href="product-info.html" title=""><img src="<?php echo Yii::app()->theme->baseUrl; ?>/images/pro-1.jpg" alt=""  /></a></div>
	</div>
	<div class="btom-pro"></div>
	<h2 class="title-pro"><a href="product-info.html" title="">samsung series 9</a></h2>
</div>
<div class="frame-product">
	<div class="product">
		<div class="frame-img-pro"><a href="product-info.html" title=""><img src="<?php echo Yii::app()->theme->baseUrl; ?>/images/pro-2.jpg" alt=""  /></a></div>
	</div>
	<div class="btom-pro"></div>
	<h2 class="title-pro"><a href="product-info.html" title="">samsung series 9</a></h2>
</div>
<div class="frame-product">
	<div class="product">
		<div class="frame-img-pro"><a href="product-info.html" title=""><img src="<?php echo Yii::app()->theme->baseUrl; ?>/images/pro-3.jpg" alt=""  /></a></div>
	</div>
	<div class="btom-pro"></div>
	<h2 class="title-pro"><a href="product-info.html" title="">samsung series 9</a></h2>
</div>
<div class="frame-product">
	<div class="product">
		<div class="frame-img-pro"><a href="product-info.html" title=""><img src="<?php echo Yii::app()->theme->baseUrl; ?>/images/pro-4.jpg" alt=""  /></a></div>
	</div>
	<div class="btom-pro"></div>
	<h2 class="title-pro"><a href="product-info.html" title="">samsung series 9</a></h2>
</div> -->