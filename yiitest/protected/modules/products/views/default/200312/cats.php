<?php $this->breadcrumbs=array($this->lang[$this->module->id]=>LANGURL.'/'.$this->module->id, $info_cat['cat_title'.LANG]=>$info_cat['tag']);?>

<!-- for cat -->
<?php if($list_sub_cats): ?>
<h1 class="title-right"><span><?php echo $info_cat['cat_title'.LANG] ?></span></h1>
<ul id="all-product">
    <?php foreach($list_sub_cats as $value): ?>
        <li class="product">
			<div class="product-img">
				<a href="<?php echo Yii::app()->request->baseUrl.LANGURL ?>/<?php echo Yii::t('user', $this->module->id . '.link')?>/<?php echo $value['tag'] ?>" title="<?php echo $value['cat_title'.LANG] ?>">
					<?php if($value['pic_full']): ?>
						<img src="<?php echo Yii::app()->baseUrl.USERFILES ?>/<?php echo $this->module->id?>Cat/<?php echo $value['pic_full'] ?>" alt="<?php echo $value['cat_title'.LANG] ?>" />
					<?php else :?>
						<img src="<?php echo Yii::app()->theme->baseUrl; ?>/images/no-product.jpg" alt="" />
					<?php endif; ?>
				</a>
			</div>
			<h2 class="title-pro"><a href="<?php echo Yii::app()->request->baseUrl.LANGURL ?>/<?php echo Yii::t('user', $this->module->id . '.link')?>/<?php echo $value['tag'] ?>" title="<?php echo $value['cat_title'.LANG] ?>"><?php echo $value['cat_title'.LANG] ?></a></h2>
        </li>
    <?php endforeach; ?>
</ul>
<?php endif; ?>

<?php if($list_items['models']): ?>
    <h1 class="title-right"><span><?php echo $info_cat['cat_title'.LANG] ?></span></h1>
    <ul id="all-product">
        <?php foreach($list_items['models'] as $value): ?>
            <li class="product">
                <div class="product-top"></div>
					<div class="product-mid">	
						<div class="tent-product">
							<div class="product-img">
							<a href="<?php echo Yii::app()->request->baseUrl . LANGURL . '/' . Yii::t('user', $this->module->id . '.link') . '/' . $info_cat['tag'] ?>/<?php echo $value['tag'] ?>.html" title="<?php echo $value['title'.LANG] ?>">
									<?php if($value['pic_thumb']): ?>
										<img src="<?php echo Yii::app()->baseUrl.USERFILES ?>/products/<?php echo $value['pic_thumb'] ?>" alt="<?php echo $value['title'.LANG] ?>" /></a>
									 <?php else :?>
										<img src="<?php echo Yii::app()->theme->baseUrl; ?>/images/no-product.jpg" alt="no-product"/>
									 <?php endif; ?>
						   </div>
							<h2 class="title-pro"><a href="<?php echo Yii::app()->request->baseUrl . LANGURL . '/' . Yii::t('user', $this->module->id . '.link') . '/' . $info_cat['tag'] ?>/<?php echo $value['tag'] ?>.html" title="<?php echo $value['title' . LANG] ?>"><?php echo $value['title' . LANG] ?></a></h2>
							<div class="price-add">
								<p class="price">$<?php echo $value['unit'] ?></p>
								<a href="<?php echo Yii::app()->request->baseUrl . LANGURL . '/' . Yii::t('user', $this->module->id . '.link') . '/' . $info_cat['tag'] ?>/<?php echo $value['tag'] ?>.html" class="add-to-cart" title="Add to Cart"><span>Add to Cart</span></a>
							</div>
						</div>
					</div>
				<div class="product-btom"></div>
		  </li>
        <?php endforeach; ?>
    </ul><!--End All products-->
    <?php $this->widget('CLinkPager', array('pages' => $list_items['pages'], 'header'=>'', 'lastPageLabel'=>'last', 'nextPageLabel'=>'next', 'firstPageLabel'=>'first', 'prevPageLabel'=>'prev', 'htmlOptions'=>array('class'=>'paging')))?>
<?php else: ?>
    <?php if(!$list_sub_cats): ?>
        <?php echo $this->lang['no_record'] ?>
    <?php endif; ?>
<?php endif; ?>