<?php $this->breadcrumbs = array($this->lang[$this->module->id] => Yii::app()->request->baseUrl . LANGURL . '/' . Yii::t('user', $this->module->id . '.link'), $info_cat['cat_title' . LANG]); ?>
<?php $this->pageTitle = $info_cat['cat_title'.LANG] . ' - ' . $this->lang[$this->module->id]; $this->description = $info_cat['description'.LANG];?>

<!-- for cat -->
<?php if($list_sub_cats): ?>
<h3 class="title-right"><span><?php echo $info_cat['cat_title'.LANG] ?></span></h3>
<ul class="all-product">
    <?php foreach($list_sub_cats as $value): ?>
        <li class="product">
			<div class="tent-product">
				<div class="product-img">
					<a href="<?php echo Yii::app()->request->baseUrl.LANGURL ?>/<?php echo Yii::t('user', $this->module->id . '.link')?>/<?php echo $value['tag'.LANG] ?>" title="<?php echo $value['cat_title'.LANG] ?>">
						<?php if($value['pic_full']): ?>
							<img src="<?php echo Yii::app()->baseUrl.USERFILES ?>/<?php echo $this->module->id?>Cat/<?php echo $value['pic_full'] ?>" alt="<?php echo $value['cat_title'.LANG] ?>" />
						<?php else :?>
							<img src="<?php echo Yii::app()->theme->baseUrl; ?>/images/no-product.jpg" alt="" />
						<?php endif; ?>
					</a>
				</div>
				<h2 class="title-pro"><a href="<?php echo Yii::app()->request->baseUrl.LANGURL ?>/<?php echo Yii::t('user', $this->module->id . '.link')?>/<?php echo $value['tag'.LANG] ?>" title="<?php echo $value['cat_title'.LANG] ?>"><?php echo $value['cat_title'.LANG] ?></a></h2>
			</div>
		</li>
    <?php endforeach; ?>
</ul> <div class="clear"></div>
<?php endif; ?>

<h3 class="title-right"><span><?php echo $info_cat['cat_title'.LANG] ?></span></h3>
<?php if($list_items['models']): ?>
    <ul class="all-product">
        <?php foreach($list_items['models'] as $value): ?>
            <li class="product">
				<div class="tent-product">
					<div class="product-img">
						<a href="<?php echo Yii::app()->request->baseUrl . LANGURL . '/' . Yii::t('user', $this->module->id . '.link') . '/' . $info_cat['tag'.LANG] ?>/<?php echo $value['tag'.LANG] ?>.html" title="<?php echo $value['title'.LANG] ?>">
							<?php if($value['pic_thumb']): ?>
								<img src="<?php echo Yii::app()->baseUrl.USERFILES ?>/<?php echo $this->module->id?>/<?php echo $value['pic_thumb'] ?>" alt="<?php echo $value['title'.LANG] ?>" />
							<?php else :?>
								<img src="<?php echo Yii::app()->theme->baseUrl; ?>/images/no-product.jpg" alt="no product" />
							<?php endif; ?>
						</a>
					</div>
					<h2 class="title-pro-2"><a href="<?php echo Yii::app()->request->baseUrl . LANGURL . '/' . Yii::t('user', $this->module->id . '.link') . '/' . $info_cat['tag'.LANG] ?>/<?php echo $value['tag'.LANG] ?>.html" title="<?php echo $value['title' . LANG] ?>"><?php echo $value['title' . LANG] ?></a></h2>
					<p class="price"><?php echo Common::getPrice($value['unit']) ?></p>
				</div>
		  </li>
        <?php endforeach; ?>
    </ul> <!--End All products--> <div class="clear"></div>
	
	<?php $this->widget('CLinkPager', array('pages' => $list_items['pages'], 'header'=>'', 'lastPageLabel'=>Yii::t('user', 'last'), 'nextPageLabel'=>Yii::t('user', 'next'), 'firstPageLabel'=>Yii::t('user', 'first'), 'prevPageLabel'=>Yii::t('user', 'prev'), 'htmlOptions'=>array('class'=>'paging')))?>
	<div class="clear"></div>

<?php else: ?>
     <div class="frame-tent-right"> <?php echo $this->lang['no_record'] ?></div> <div class="btom-main"></div>
<?php endif; ?>

