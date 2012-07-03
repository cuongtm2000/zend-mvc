<?php $this->breadcrumbs = array($this->lang[$this->module->id] => Yii::app()->request->baseUrl . LANGURL . '/' . Yii::t('user', $this->module->id.'.link'), $item[ucfirst($this->module->id).'Cat']['cat_title' . LANG] => '../'.$item[ucfirst($this->module->id).'Cat']['tag'.LANG], $item['title' . LANG]); ?>
<?php $this->pageTitle = $item['title'.LANG]; $this->description = $item['description'.LANG];?>

<h2 class="title-right"><span><?php echo $item['title'.LANG] ?></span></h2>
<div class="frame-tent-right frame-product-info">
	<div class="img_info">
		<?php if($item['pic_full']): ?>
		<a href="<?php echo Yii::app()->baseUrl.USERFILES ?>/<?php echo $this->module->id?>/<?php echo $item['pic_full'] ?>" title="<?php echo $item['title'.LANG] ?>" rel="photo"><img src="<?php echo Yii::app()->baseUrl.USERFILES ?>/<?php echo $this->module->id?>/<?php echo $item['pic_full'] ?>" alt="<?php echo $item['title'.LANG] ?>" /></a>
		<?php endif; ?>
		<p class="view_full"><a href="<?php echo Yii::app()->theme->baseUrl; ?>/images/no-product.jpg" rel="photo" title="no product"><img src="<?php echo Yii::app()->theme->baseUrl; ?>/images/img_zoom.png" alt="zoom" />Xem đầy đủ</a></p>
	</div>
	<?php if($item['preview']): ?>
	<div class="panel-preview"><h4 class="title-info"><span><?php echo $this->lang['description'] . ' ' . strtolower($this->lang[$this->module->id]) ?></span></h4>
		<?php echo $item['preview'.LANG] ?>
	</div>	
	<?php endif; ?>
	
	<h4 class="title-info"><span><?php echo $this->lang['detail'] . ' ' . strtolower($this->lang[$this->module->id])?></span></h4>
	<?php echo $item['content'.LANG] ?>
	<p class="black"><a href="javascript: history.go(-1)" title="<?php echo Yii::t('main', 'goback')?>" ><?php echo Yii::t('main', 'goback')?></a></p>
	<script type="text/javascript" >
		jQuery(document).ready(function(){
			jQuery(".img_info:first a[rel^='photo']").prettyPhoto({animation_speed:'fast',slideshow:10000, hideflash: true});
		});
		</script>	
</div> <!--End frame tent right-->

<?php if($item_other):?>
<h3 class="title-right"><span><?php echo $this->lang[$this->module->id]?> <?php echo strtolower($this->lang['other'])?></span></h3>
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
		<h2 class="title-pro"><a href="<?php echo Yii::app()->request->baseUrl . LANGURL . '/' . Yii::t('user', $this->module->id . '.link') . '/' . $value[ucfirst($this->module->id).'Cat']['tag'.LANG] ?>/<?php echo $value['tag'.LANG] ?>.html" title="<?php echo $value['title'.LANG]?>"><?php echo $value['title'.LANG]?></a></h2>
	</li>
	<?php endforeach?>
</ul>
<?php endif;?>

