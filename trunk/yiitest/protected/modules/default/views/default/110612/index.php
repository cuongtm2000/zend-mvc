<?php if(isset($this->function['about_home'])): ?>
	<h2 class="title-right"><span><?php echo $this->function['about_home']['title'.LANG] ?></span></h2>
	<div class="frame-tent-right">
		<?php echo $this->function['about_home']['content'.LANG] ?>
	</div> <!--End frame tent right-->
	<div class="bt-title-right"></div>
<?php endif; ?>

<?php if(isset($this->function['products_new']) && $this->function['products_new']):?>
<h2 class="title-right"><span><?php echo $this->lang['products'] . ' ' . strtolower($this->lang['new']) ?></span></h2>
	<ul id="mycarousel" class="jcarousel-skin-tango">
	<?php foreach($this->function['products_new'] as $value): ?>
		<li class="product">
			<?php if($value['pic_thumb']): ?>
				<div class="frame-img"><a href="<?php echo Yii::app()->request->baseUrl.LANGURL ?>/<?php echo Yii::t('user', 'products.link')?>/<?php echo $value['ProductsCat']['tag'.LANG] ?>/<?php echo $value['tag'.LANG] ?>.html" title="<?php echo $value['title'.LANG] ?>"><img src="<?php echo Yii::app()->baseUrl.USERFILES ?>/products/<?php echo $value['pic_thumb'] ?>" alt="<?php echo $value['title'.LANG] ?>" /></a></div>
			<?php else :?>
				<div class="frame-img"><a href="<?php echo Yii::app()->request->baseUrl.LANGURL ?>/<?php echo Yii::t('user', 'products.link')?>/<?php echo $value['ProductsCat']['tag'.LANG] ?>/<?php echo $value['tag'.LANG] ?>.html" title="<?php echo $value['title'.LANG] ?>"><img src="<?php echo Yii::app()->theme->baseUrl; ?>/images/no-images.jpg" alt="no-images.jpg" /></a></div>
			<?php endif; ?>
			<h3 class="title-skin"><a href="<?php echo Yii::app()->request->baseUrl.LANGURL ?>/<?php echo Yii::t('user', 'products.link')?>/<?php echo $value['ProductsCat']['tag'.LANG] ?>/<?php echo $value['tag'.LANG] ?>.html" title="<?php echo $value['title'.LANG] ?>"><?php echo $value['title'.LANG] ?></a></h3>
			<!--<p class="price"><?php echo Common::getPrice($value['unit']) ?></p>
			<a href="<?php echo Yii::app()->baseUrl . LANGURL?>/<?php echo Yii::t('user', 'products.link')?>/<?php echo Yii::t('user', 'products.order.link')?>/<?php echo $value['tag'.LANG] ?>" title="<?php echo $this->lang['addcart']?>: <?php echo $value['title' . LANG] ?>" class="add-to-cart"><span><?php echo $this->lang['addcart']?></span></a> -->
		</li>
	<?php endforeach; ?>
	</ul> <!--End all product-->
	<div class="bt-title-right"></div>
<?php endif; ?>

<?php if(isset($this->function['news_new']) && ($this->function['news_new'])):?>
<h3 class="title-right"><span><?php echo CHtml::encode($this->lang['news']) . ' ' . strtolower($this->lang['new'])?></span></h3>
<ul class="sub-new">
	<li>
		<div class="img-new"><a href="#" title=""><img src="<?php echo Yii::app()->theme->baseUrl; ?>/images/image-5.jpg" alt="New" /></a></div>
		<h2 class="title-new"><a href="#" title="">Chứng khoán toàn cầu thiệt hại hơn 4.000 tỷ USD</a></h2>
		<p>Các nhà kinh tế Mỹ và thế giới ngày 14/8 nhận định những hỗn loạn trên thị trường tài chính tiền 
	tệ toàn cầu trong hai tuần qua đã gây thiệt hại khổng lồ cho các thị trường chứng khoán, ước tính
	lên tới từ 2.500 đến hơn 4.000 tỷ USD chỉ trong tuần giao dịch từ 1-5/8.</p>
		<div class="clear"></div>
	</li>
	<?php foreach($this->function['news_new'] as $value):?>
		<li class="ico-disc">
			<a href="<?php echo Yii::app()->request->baseUrl.LANGURL ?>/<?php echo Yii::t('user', 'news.link')?>/<?php echo $value['NewsCat']['tag'.LANG] ?>/<?php echo $value['tag'.LANG] ?>.html" title="<?php echo $value['title'.LANG]?>"><?php echo $value['title'.LANG]?></a>
		</li>
	<?php endforeach?>
</ul>
<div class="bt-title-right"></div>
<?php endif?>

