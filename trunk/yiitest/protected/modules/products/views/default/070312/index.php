<?php $this->breadcrumbs=array($this->lang[$this->module->id]);?>
<h1 class="title-right"><?php echo $this->lang[$this->module->id]?></h1>
<ul id="all-product">
	<?php foreach($items as $value): ?>
	<li class="product">
		<?php if($value['pic_full']): ?>
			<div class="product-img">
				<a href="<?php echo Yii::app()->request->baseUrl.LANGURL ?>/<?php echo Yii::t('user', $this->module->id.'.link')?>/<?php echo $value['tag'.Yii::app()->session['lang']] ?>" title='<?php echo $value['cat_title'.LANG] ?>'>
					<img src="<?php echo Yii::app()->baseUrl.USERFILES ?>/<?php echo $this->module->id?>Cat/<?php echo $value['pic_full'] ?>" alt='<?php echo $value['cat_title'.LANG] ?>' />
				</a>
			</div>
		<?php else :?>
			<div class="product-img"><a href="<?php echo Yii::app()->request->baseUrl.LANGURL ?>/<?php echo Yii::t('user', $this->module->id.'.link')?>/<?php echo $value['tag'] ?>" title="<?php echo $value['cat_title'.LANG] ?>"><img src="<?php echo Yii::app()->theme->baseUrl; ?>/images/no-images.jpg" alt="no-product" /></a></div>
		<?php endif; ?>
		<h2 class="title-pro"><a href="<?php echo Yii::app()->request->baseUrl.LANGURL ?>/<?php echo Yii::t('user', $this->module->id.'.link')?>/<?php echo $value['tag'.Yii::app()->session['lang']] ?>" title='<?php echo $value['cat_title'.LANG] ?>'><?php echo $value['cat_title'.LANG] ?></a></h2>
	</li>
	<?php endforeach; ?>	
</ul> <!--End all product-->





		