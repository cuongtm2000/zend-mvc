<?php if(isset($this->function['about_home'])): ?>
	<h1 class="title-right"><span><?php echo $this->function['about_home']['title'.LANG] ?></span></h1>
	<div class="frame-tent-right">
		<?php echo $this->function['about_home']['content'.LANG] ?>
	</div> <!--End frame tent right-->
<?php endif; ?>

<div class="special_block">
<div class="inner2">
<h3 class="title-special">Sản phẩm nổi bật</h3>
	<p class="prev"></p>
	<p class="next"></p>
	<div class="carouse2">
		<div class="blocks">
			<ul class="list_scroll">
				<li class="scroll-interval">
					<div class="txt_area"><a class="pic" href="products-info.html" title=""><img src="<?php echo Yii::app()->theme->baseUrl; ?>/images/img_3.jpg" alt="Set ipsum dolor sit amet"/></a>
						<div class="part">
							<h3 class="name"><a class="link" href="#">Set ipsum dolor sit amet</a></h3>
						</div>
					</div>
				</li>
				<li class="scroll-interval">
					<div class="txt_area"><a class="pic" href="products-info.html" title=""><img src="<?php echo Yii::app()->theme->baseUrl; ?>/images/img_1.jpg" alt="Lorem ipsum dolor sit amet" /></a>
						<div class="part">
							<h3 class="name"><a class="link" href="#">Lorem ipsum dolor sit amet</a></h3>
						</div>
					</div>
				</li>
				<li class="scroll-interval">
					<div class="txt_area"><a class="pic" href="products-info.html" title=""><img src="<?php echo Yii::app()->theme->baseUrl; ?>/images/img_2.jpg" alt="Iipsum dolor sit amet" /></a>
						<div class="part">
							<h3 class="name"><a class="link" href="#">Iipsum dolor sit amet</a></h3>
						</div>
					</div>
				</li>
				<li class="scroll-interval">
					<div class="txt_area"><a class="pic" href="products-info.html" title=""><img src="<?php echo Yii::app()->theme->baseUrl; ?>/images/img_4.jpg" alt="3dConnexion 3DX-700034" /></a>
						<div class="part">
							<h3 class="name"><a class="link" href="#">3dConnexion 3DX-700034</a></h3>
						</div>
					</div>
				</li>
				<li class="scroll-interval">
					<div class="txt_area"><a class="pic" href="products-info.html" title=""><img src="<?php echo Yii::app()->theme->baseUrl; ?>/images/img_1.jpg" alt="Lorem ipsum dolor sit amet" /></a>
						<div class="part">
							<h3 class="name"><a class="link" href="#">Lorem ipsum dolor sit amet</a></h3>
						</div>
					</div>
				</li>
				<li class="scroll-interval">
					<div class="txt_area"><a class="pic" href="products-info.html" title=""><img src="<?php echo Yii::app()->theme->baseUrl; ?>/images/img_2.jpg" alt="Acer H233H bmid" /></a>
						<div class="part">
							<h3 class="name"><a class="link" href="#">Acer H233H bmid</a></h3>
						</div>
					</div>
				</li>
				<li class="scroll-interval">
					<div class="txt_area"><a class="pic" href="products-info.html" title=""><img src="<?php echo Yii::app()->theme->baseUrl; ?>/images/img_3.jpg" alt="Altec Lansing FX3022" /></a>
						<div class="part">
							<h3 class="name"><a class="link" href="#">Altec Lansing FX3022</a></h3>
						</div>
					</div>
				</li>
				<li class="scroll-interval">
					<div class="txt_area"><a class="pic" href="products-info.html" title=""><img src="<?php echo Yii::app()->theme->baseUrl; ?>/images/img_1.jpg" alt="Apple AirPort Extreme Base" /></a>
						<div class="part">
						<h3 class="name"><a class="link" href="#">Apple AirPort Extreme Base</a></h3>
						</div>
					</div>
				</li>
			 </ul>
		</div>
	</div>
</div>
</div> <!--End sam pham noi bat-->

<?php if(isset($this->function['products_new']) && $this->function['products_new']):?>
<h1 class="title-right"><span><?php echo $this->lang['products'] . ' ' . strtolower($this->lang['new']) ?></span></h1>
	<div class="all-product">
		<ul class="addproduct">
			<?php foreach($this->function['products_new'] as $value): ?>
				<li class="product">
					<div class="tent-product">
						<?php if($value['pic_thumb']): ?>
							<div class="product-img"><a href="<?php echo Yii::app()->request->baseUrl.LANGURL ?>/<?php echo Yii::t('user', 'products.link')?>/<?php echo $value->ProductsCat->tag ?>/<?php echo $value['tag'] ?>.html" title="<?php echo $value['title'.LANG] ?>"><img src="<?php echo Yii::app()->baseUrl.USERFILES ?>/products/<?php echo $value['pic_thumb'] ?>" alt="<?php echo $value['title'.LANG] ?>" /></a></div>
						<?php else :?>
							<div class="product-img"><a href="<?php echo Yii::app()->request->baseUrl.LANGURL ?>/<?php echo Yii::t('user', 'products.link')?>/<?php echo $value->ProductsCat->tag ?>/<?php echo $value['tag'] ?>.html" title="<?php echo $value['title'.LANG] ?>"><img src="<?php echo Yii::app()->theme->baseUrl; ?>/images/no_product.jpg" alt="<?php echo $value['title'.LANG] ?>" /></a></div>
						<?php endif; ?>
						<h2 class="title-pro"><a href="<?php echo Yii::app()->request->baseUrl.LANGURL ?>/<?php echo Yii::t('user', 'products.link')?>/<?php echo $value->ProductsCat->tag ?>/<?php echo $value['tag'] ?>.html" title="<?php echo $value['title'.LANG] ?>"><?php echo $value['title'.LANG] ?></a></h2>
						<p class="price"><?php echo number_format($value['unit'], 0, '', '.'); ?> VND</p>
						<p><a href="<?php echo Yii::app()->request->baseUrl.LANGURL ?>/<?php echo Yii::t('user', 'products.link')?>/<?php echo $value->ProductsCat->tag ?>/<?php echo $value['tag'] ?>.html" title="<?php echo $this->lang['detail']?>: <?php echo $value['title' . LANG] ?>" class="detail"><?php echo $this->lang['detail']?></a> <a href="<?php echo Yii::app()->request->baseUrl.LANGURL ?>/<?php echo Yii::t('user', 'contact.link')?>" title="<?php echo $this->lang['contact']?>" class="add"><?php echo $this->lang['contact']?></a>  </p>
					</div>
				</li>
			<?php endforeach; ?>
		</ul>
	</div><!--End San pham moi-->	
<?php endif; ?>