<?php $this->breadcrumbs = array($this->lang[$this->module->id] => Yii::app()->request->baseUrl . LANGURL . '/' . Yii::t('user', $this->module->id . '.link'), $info_cat['cat_title' . LANG]); ?>
<?php $this->pageTitle = $info_cat['cat_title'.LANG] . ' - ' . $this->lang[$this->module->id]; $this->description = $info_cat['description'.LANG];?>

<!-- for cat -->
<?php if($list_sub_cats): ?>
<h1 class="title-right"><span><?php echo $info_cat['cat_title'.LANG] ?></span></h1>
<ul class="all-product">
    <?php foreach($list_sub_cats as $value): ?>
        <li class="product">
			<div class="product-top"></div>
			<div class="product-mid">
				<div class="tent-product">
					<div class="product-img">
						<a href="<?php echo Yii::app()->request->baseUrl.LANGURL ?>/<?php echo Yii::t('user', $this->module->id . '.link')?>/<?php echo $value['tag'.LANG] ?>" title="<?php echo $value['cat_title'.LANG] ?>">
							<?php if($value['pic_full']): ?>
								<img src="<?php echo Yii::app()->baseUrl.USERFILES ?>/<?php echo $this->module->id?>Cat/<?php echo $value['pic_full'] ?>" alt="<?php echo $value['cat_title'.LANG] ?>" />
							<?php else :?>
								<img src="<?php echo Yii::app()->theme->baseUrl; ?>/images/no-images.jpg" alt="" />
							<?php endif; ?>
						</a>
					</div>
					<h2 class="title-pro"><a href="<?php echo Yii::app()->request->baseUrl.LANGURL ?>/<?php echo Yii::t('user', $this->module->id . '.link')?>/<?php echo $value['tag'.LANG] ?>" title="<?php echo $value['cat_title'.LANG] ?>"><?php echo $value['cat_title'.LANG] ?></a></h2>
				</div>
			</div>
			<div class="product-btom"></div>
		</li>
    <?php endforeach; ?>
</ul>
<div class="clear"></div>
<?php endif; ?>

<?php if($list_items['models']): ?>
	<div id="photos" class="galleryview" >
		 <?php foreach($list_items['models'] as $value): ?>
			<div class="panel">
				<?php if($value['pic_full']): ?>
					<a href="<?php echo Yii::app()->request->baseUrl . LANGURL . '/' . Yii::t('user', $this->module->id . '.link') . '/' . $info_cat['tag'.LANG] ?>/<?php echo $value['tag'.LANG] ?>.html" title="<?php echo $value['title'.LANG] ?>">
						<img src="<?php echo Yii::app()->baseUrl.USERFILES ?>/<?php echo $this->module->id?>/<?php echo $value['pic_full'] ?>" alt="<?php echo $value['title'.LANG] ?>" />
					</a> 
				<?php endif; ?>
				<div class="panel-overlay">      
				  <p><strong>Model: <?php echo $value['title' . LANG] ?> ,
                      <?php if($value['extra_field1']): ?>Video clip  <a href="<?php echo $value['extra_field1'] ?>" title="Video <?php echo $value['title' . LANG] ?>"><img src='<?php echo Yii::app()->theme->baseUrl; ?>/images/icon38.png' border='0'/></a>,<?php endif?>
                      <a href="<?php echo Yii::app()->request->baseUrl . LANGURL . '/' . Yii::t('user', $this->module->id . '.link') . '/' . $info_cat['tag'.LANG] ?>/<?php echo $value['tag'.LANG] ?>.html" title='<?php echo $this->lang['detail'.LANG]?> <?php echo strtolower($this->lang['products'.LANG])?>'><?php echo $this->lang['detail'.LANG]?> <?php echo strtolower($this->lang['products'.LANG])?></a> <a href="<?php echo Yii::app()->request->baseUrl . LANGURL . '/' . Yii::t('user', $this->module->id . '.link') . '/' . $info_cat['tag'.LANG] ?>/<?php echo $value['tag'.LANG] ?>.html" title="<?php echo $value['title' . LANG] ?>"><img src="<?php echo Yii::app()->theme->baseUrl; ?>/images/kedit.png" alt="kedit"/></a></strong></p>
				</div>
			</div>
		 <?php endforeach; ?>


		<ul class="filmstrip">
			 <?php foreach($list_items['models'] as $value): ?>
				<li>
					<?php if($value['pic_thumb']): ?>
						<img src="<?php echo Yii::app()->baseUrl.USERFILES ?>/<?php echo $this->module->id?>/<?php echo $value['pic_thumb'] ?>" alt="<?php echo $value['title'.LANG] ?>" />
					<?php endif; ?>
				</li>
			<?php endforeach; ?>
		</ul>
	</div>
	<div class="frame-view"></div> <div class="clear"></div>
<?php else: ?>
    <?php if(!$list_sub_cats): ?>
        <?php echo $this->lang['no_record'] ?>
    <?php endif; ?>
<?php endif; ?>