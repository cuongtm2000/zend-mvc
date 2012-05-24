<?php $this->breadcrumbs = array($this->lang[$this->module->id] => Yii::app()->request->baseUrl . LANGURL . '/' . Yii::t('user', $this->module->id.'.link'), $item[ucfirst($this->module->id).'Cat']['cat_title' . LANG] => '../'.$item[ucfirst($this->module->id).'Cat']['tag'.LANG], $item['title' . LANG]); ?>
<?php $this->pageTitle = $item['title'.LANG]; $this->description = $item['description'.LANG];?>

<div class="frame-tent-right">
	<h3 class="title-pro-info"><?php echo $item['title'.LANG]?></h3>
	<?php if($item['pic_full']): ?>
		<div class="frame-img-info"><img src="<?php echo Yii::app()->baseUrl.USERFILES ?>/<?php echo $this->module->id?>/<?php echo $item['pic_full'] ?>" alt="<?php echo $item['title'.LANG] ?>" /></div>
	<?php endif; ?>
	<h4 class="title-info"><span><?php echo $this->lang['description'] . ' ' . strtolower($this->lang[$this->module->id]) ?></span></h4>
	<?php echo $item['preview'.LANG] ?>
	<p class="black"><a href="javascript: history.go(-1)" title="<?php echo Yii::t('main', 'goback')?>" ><?php echo Yii::t('main', 'goback')?></a></p>
</div> <!--End frame tent right-->

<?php if($item_other):?>
<div class="bg-title-right"><h3 class="title-right"><span><?php echo $this->lang[$this->module->id]?> <?php echo strtolower($this->lang['other'])?></span></h3><div class="clear"></div></div>
<ul class="all-product">
	<?php foreach($item_other as $value):?>
	<li class="product">
		<div class="product-img">
			<a href="<?php echo Yii::app()->request->baseUrl . LANGURL . '/' . Yii::t('user', $this->module->id . '.link') . '/' . $value[ucfirst($this->module->id).'Cat']['tag'.LANG] ?>/<?php echo $value['tag'.LANG] ?>.html" title="<?php echo $value['title'.LANG]?>">
			<?php if($value['pic_thumb']):?>
				<img src="<?php echo Yii::app()->baseUrl.USERFILES ?>/<?php echo $this->module->id?>/<?php echo $value['pic_thumb'] ?>" alt="<?php echo $value['title'.LANG] ?>" />
			<?php else :?>
				<img src="<?php echo Yii::app()->theme->baseUrl; ?>/images/no-images.jpg" alt="<?php echo $value['title'.LANG] ?>" />
			<?php endif?>
			</a>
		</div>
		<h3 class="ico-point title-pro"><strong>Model:</strong> <a href="<?php echo Yii::app()->request->baseUrl . LANGURL . '/' . Yii::t('user', $this->module->id . '.link') . '/' . $value[ucfirst($this->module->id).'Cat']['tag'.LANG] ?>/<?php echo $value['tag'.LANG] ?>.html" title="<?php echo $value['title'.LANG]?>"><?php echo $value['title'.LANG]?></a></h3>
	</li>
	<?php endforeach?>
</ul>
<?php endif;?>

