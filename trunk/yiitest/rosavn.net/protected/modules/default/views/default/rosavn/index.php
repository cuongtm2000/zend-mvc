<?php if(isset($this->function['about_home'])): ?>
	<h1 class="title-green"><span><?php echo $this->function['about_home']['title'.LANG] ?></span></h1>
	<div class="frame-tent-right">
		<?php echo $this->function['about_home']['content'.LANG] ?>
	</div> <!--End frame tent right-->
<?php endif; ?>
<h2 class="title-blue"><span>Trình diễn</span></h2>
<?php if($this->banner): ?>
	<ul class="slider">
		<?php foreach($this->banner as $value): ?>
		<li class="slider-item"><a href="<?php echo $value['banner_link'] ?>" title=""><img src="<?php echo Yii::app()->request->baseUrl.USERFILES; ?>/banner/<?php echo $value['banner_url'] ?>" alt="<?php echo $value['banner_name'] ?>" /></a></li>
		<?php endforeach ?>
	</ul>
<?php endif; ?>

<?php if(isset($this->function['news_hot']) && ($this->function['news_hot'])):?>
	<h2 class="title-org"><span><?php echo CHtml::encode($this->lang['news']) . ' ' . strtolower($this->lang['hot'])?></span></h2>
	<ul class="sub-new-hot">
		<?php foreach($this->function['news_hot'] as $value):?>
		<li>
			<h3><a class="link" href="<?php echo Yii::app()->request->baseUrl.LANGURL ?>/<?php echo Yii::t('user', 'news.link')?>/<?php echo $value['NewsCat']['tag'.LANG] ?>/<?php echo $value['tag'.LANG] ?>.html" title="<?php echo $value['title'.LANG]?>"><?php echo $value['title'.LANG]?></a></h3>
			<?php echo $value['preview'.LANG] ?> 
		</li>
		<?php endforeach?>
	</ul>
<?php endif?>

<?php if(isset($this->function['products_new']) && $this->function['products_new']):?>
<h1 class="title-org"><span><?php echo $this->lang['products'] . ' ' . strtolower($this->lang['new']) ?></span></h1>
<ul class="all-product">
	<?php foreach($this->function['products_new'] as $value): ?>
	<li class="product">
		<?php if($value['pic_thumb']): ?>
			<div class="product-img"><a href="<?php echo Yii::app()->request->baseUrl.LANGURL ?>/<?php echo Yii::t('user', 'products.link')?>/<?php echo $value['ProductsCat']['tag'.LANG] ?>/<?php echo $value['tag'.LANG] ?>.html" title="<?php echo $value['title'.LANG] ?>"><img src="<?php echo Yii::app()->baseUrl.USERFILES ?>/products/<?php echo $value['pic_thumb'] ?>" alt="<?php echo $value['title'.LANG] ?>" /></a></div>
		<?php else :?>
			<div class="product-img"><a href="<?php echo Yii::app()->request->baseUrl.LANGURL ?>/<?php echo Yii::t('user', 'products.link')?>/<?php echo $value['ProductsCat']['tag'.LANG] ?>/<?php echo $value['tag'.LANG] ?>.html" title="<?php echo $value['title'.LANG] ?>"><img src="<?php echo Yii::app()->theme->baseUrl; ?>/images/no-images.jpg" alt="<?php echo $value['title'.LANG] ?>" /></a></div>
		<?php endif; ?>
		<h2><a class="link" href="<?php echo Yii::app()->request->baseUrl.LANGURL ?>/<?php echo Yii::t('user', 'products.link')?>/<?php echo $value['ProductsCat']['tag'.LANG] ?>/<?php echo $value['tag'.LANG] ?>.html" title="<?php echo $value['title'.LANG] ?>"><?php echo $value['title'.LANG] ?></a></h2>
	</li>
	<?php endforeach; ?>
</ul> <!--End all product-->
<?php endif; ?>