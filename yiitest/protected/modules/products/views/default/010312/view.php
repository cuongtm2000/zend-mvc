<?php $this->breadcrumbs=array($this->lang[$this->module->id]=>LANGURL.'/'.$this->module->id, $item['title'.LANG]=>$item['tag']);?>

<div class="frame-tent-right">
	<div class="frame-img-info"><img src="<?php echo Yii::app()->baseUrl.USERFILES ?>/products/<?php echo $item['pic_full'] ?>" alt="<?php echo $item['title'.LANG] ?>" /></div>
	<?php echo $item['content'.LANG] ?>
	<p class="black"><a href="javascript: history.go(-1)" title="Trở lại" >Trở lại</a></p>
</div> <!--End frame tent right-->

<h1 class="title-box"><span>SẢN PHẨM KHÁC</span></h1>
<div class="all-product">
	<div class="product">
		<div class="tent-product">
			<div class="product-img">
				<a href="" title="">
					<img src="<?php echo Yii::app()->theme->baseUrl; ?>/images/no-images.jpg" alt="" />
				</a>
			</div>
			<h2 class="title-pro"><a href="#" title="">Nội thất Giường ngủ 028</a></h2>
		</div>
	</div>
	<div class="product">
		<div class="tent-product">
			<div class="product-img">
				<a href="" title="">
					<img src="<?php echo Yii::app()->theme->baseUrl; ?>/images/no-images.jpg" alt="" />
				</a>
			</div>
			<h2 class="title-pro"><a href="#" title="">Nội thất Giường ngủ 013</a></h2>
		</div>
	</div>
</div> <!--End frame all product-->
