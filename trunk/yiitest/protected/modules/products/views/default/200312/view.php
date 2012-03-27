<?php $this->breadcrumbs = array($this->lang[$this->module->id] => LANGURL . '/' . Yii::t('user', $this->module->id.'.link'), $item->ProductsCat->cat_title . LANG => '../'.$item->ProductsCat->tag, $item['title' . LANG]); ?>

<div class="product-view">
	<div class="product-essential">
		<form action="" method="post" id="product_addtocart_form">
			<div class="product-img-box">
				<p class="product-image product-image-zoom">
					<!-- Picture full --><img src="<?php echo Yii::app()->baseUrl.USERFILES ?>/products/<?php echo $item['pic_full'] ?>" alt="<?php echo $item['title'.LANG] ?>" />
				</p>
				<p class="zoom-notice" id="track_hint">Double click on above image to view full picture</p>
				<div class="zoom">
					<img id="zoom_out" src="<?php echo Yii::app()->theme->baseUrl; ?>/images/slider_btn_zoom_out.gif" alt="Zoom Out" title="Zoom Out" class="btn-zoom-out" />
					<div id="track">
						<div id="handle"></div>
					</div>
					<img id="zoom_in" src="<?php echo Yii::app()->theme->baseUrl; ?>/images/slider_btn_zoom_in.gif" alt="Zoom In" title="Zoom In" class="btn-zoom-in" />
				</div>
			<script type="text/javascript">
			//<![CDATA[
				Event.observe(window, 'load', function() {
					product_zoom = new Product.Zoom('image', 'track', 'handle', 'zoom_in', 'zoom_out', 'track_hint');
				});
			//]]>
			</script>
			</div>
		</form>
	</div>

</div><!--End product view-->

<div class="right-detail">
	<ul class="right-detail-info">
		<li>
			<h3 class="title-info"><?php echo $item['title'.LANG] ?></h3>
			<p><span>$<?php echo $item['unit'] ?></span></p>
		</li>
		<li>
			<h3 class="title-info">Mô tả sản phẩm</h3>
			<?php echo $item['content'.LANG] ?>
		</li>
	</ul>
</div> <div class="clear"></div>
<h2 class="title-right"><span>Sản phẩm liên quan</span></h2>
<ul id="all-product">
	<li class="product">
		<div class="product-top"></div>
			<div class="product-mid">
				<div class="tent-product">
						<div class="product-img">
								<a href="#" title="">
									<img src="<?php echo Yii::app()->theme->baseUrl; ?>/images/no-product.jpg" alt="no-product"/>
								</a>
						</div>
						<h2 class="title-pro"><a href="" title="">Sách tống hợp quý</a></h2>
				</div>
			</div>
		<div class="product-btom"></div>
	</li>
	<li class="product">
		<div class="product-top"></div>
			<div class="product-mid">
				<div class="tent-product">
						<div class="product-img">
								<a href="#" title="">
									<img src="<?php echo Yii::app()->theme->baseUrl; ?>/images/no-product.jpg" alt="no-product"/>
								</a>
						</div>
						<h2 class="title-pro"><a href="" title="">Sách cho mẹ và bé</a></h2>
				</div>
			</div>
		<div class="product-btom"></div>
	</li>
	<li class="product">
		<div class="product-top"></div>
			<div class="product-mid">
				<div class="tent-product">
						<div class="product-img">
								<a href="#" title="">
									<img src="<?php echo Yii::app()->theme->baseUrl; ?>/images/no-product.jpg" alt="no-product"/>
								</a>
						</div>
						<h2 class="title-pro"><a href="" title="">Sách cho teen mới lớn</a></h2>
				</div>
			</div>
		<div class="product-btom"></div>
	</li>
</ul> <!--End all product-->

