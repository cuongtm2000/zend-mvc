<?php $this->breadcrumbs = array($this->lang[$this->module->id] => Yii::app()->request->baseUrl . LANGURL . '/' . Yii::t('user', $this->module->id . '.link'), $info_cat['cat_title' . LANG]); ?>
<?php $this->pageTitle = $info_cat['cat_title'.LANG] . ' - ' . $this->lang[$this->module->id]; $this->description = $info_cat['description'.LANG];?>

<!-- for cat -->
<?php if($list_sub_cats): ?>
<h2 class="title-right"><span><?php echo $info_cat['cat_title'.LANG] ?></span></h2>
<ul class="all-product">
    <?php foreach($list_sub_cats as $value): ?>
        <li class="product">
			<div class="product-top"></div>
			<div class="product-mid">
				<div class="product-img">
					<a href="<?php echo Yii::app()->request->baseUrl.LANGURL ?>/<?php echo Yii::t('user', $this->module->id . '.link')?>/<?php echo $value['tag'.LANG] ?>" title="<?php echo $value['cat_title'.LANG] ?>">
						<?php if($value['pic_full']): ?>
							<img src="<?php echo Yii::app()->baseUrl.USERFILES ?>/<?php echo $this->module->id?>Cat/<?php echo $value['pic_full'] ?>" alt="<?php echo $value['cat_title'.LANG] ?>" />
						<?php else :?>
							<img src="<?php echo Yii::app()->theme->baseUrl; ?>/images/no-images.jpg" alt="" />
						<?php endif; ?>
					</a>
				</div>
				<h3 class="title-pro"><a href="<?php echo Yii::app()->request->baseUrl.LANGURL ?>/<?php echo Yii::t('user', $this->module->id . '.link')?>/<?php echo $value['tag'.LANG] ?>" title="<?php echo $value['cat_title'.LANG] ?>"><?php echo $value['cat_title'.LANG] ?></a></h3>
			</div>
			<div class="product-btom"></div>
		</li>
    <?php endforeach; ?>
</ul>
<div class="clear"></div>
<?php endif; ?>

<h2 class="title-right"><span><?php echo $info_cat['cat_title'.LANG] ?></span></h2>
<?php if($list_items['models']): ?>
    <ul class="all-product">
        <?php foreach($list_items['models'] as $value): ?>
            <li class="product">
                <div class="product-top"></div>
					<div class="product-mid">							
						<div class="product-img">
							<a href="<?php echo Yii::app()->request->baseUrl . LANGURL . '/' . Yii::t('user', $this->module->id . '.link') . '/' . $info_cat['tag'.LANG] ?>/<?php echo $value['tag'.LANG] ?>.html" title="<?php echo $value['title'.LANG] ?>">
								<?php if($value['pic_thumb']): ?>
									<img src="<?php echo Yii::app()->baseUrl.USERFILES ?>/<?php echo $this->module->id?>/<?php echo $value['pic_thumb'] ?>" alt="<?php echo $value['title'.LANG] ?>" />
								<?php else :?>
									<img src="<?php echo Yii::app()->theme->baseUrl; ?>/images/no-images.jpg" alt="no product" />
								<?php endif; ?>
							</a>
						</div>									
						<h3 class="title-pro"><a href="<?php echo Yii::app()->request->baseUrl . LANGURL . '/' . Yii::t('user', $this->module->id . '.link') . '/' . $info_cat['tag'.LANG] ?>/<?php echo $value['tag'.LANG] ?>.html" title="<?php echo $value['title' . LANG] ?>"><?php echo $value['title' . LANG] ?></a></h3>
						<p class="price"><?php echo Common::getPrice($value['unit']) ?></p>
						<a href="<?php echo Yii::app()->baseUrl . LANGURL?>/<?php echo Yii::t('user', 'products.link')?>/<?php echo Yii::t('user', 'products.order.link')?>/<?php echo $value['tag'.LANG] ?>" title="<?php echo $this->lang['detail']?>: <?php echo $value['title' . LANG] ?>" class="add-to-cart"><span><?php echo $this->lang['addcart']?></span></a>
					</div>
				<div class="product-btom"></div>
		  </li>
        <?php endforeach; ?>
    </ul> <!--End All products--> <div class="clear"></div>
    <?php $this->widget('CLinkPager', array('pages' => $list_items['pages'], 'header'=>'', 'lastPageLabel'=>Yii::t('user', 'last'), 'nextPageLabel'=>Yii::t('user', 'next'), 'firstPageLabel'=>Yii::t('user', 'first'), 'prevPageLabel'=>Yii::t('user', 'prev'), 'htmlOptions'=>array('class'=>'paging')))?>
	<div class="clear"></div>
<?php else: ?>
    <?php if(!$list_sub_cats): ?>
        <?php echo $this->lang['no_record'] ?>
    <?php endif; ?>
<?php endif; ?>