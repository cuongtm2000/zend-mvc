<?php $this->breadcrumbs = array($this->lang[$this->module->id] => LANGURL . '/' . Yii::t('user', $this->module->id.'.link'), $info_cat['cat_title' . LANG]); ?>

<!-- for cat -->
<?php if($list_sub_cats): ?>
<h1 class="title-h2-right"><?php echo $info_cat['cat_title'.LANG] ?></h1>
<div id="all-product">
    <?php foreach($list_sub_cats as $value): ?>
        <div class="product">
            <?php if($value['pic_full']): ?>
                <div class="product-img">
                    <a href="<?php echo Yii::app()->request->baseUrl.LANGURL ?>/<?php echo Yii::t('user', $this->module->id.'.link')?>/<?php echo $value['tag'.LANG] ?>" title="<?php echo $value['cat_title'.LANG] ?>">
                    <img src="<?php echo Yii::app()->baseUrl.USERFILES ?>/productsCat/<?php echo $value['pic_full'] ?>" alt="<?php echo $value['cat_title'.LANG] ?>" />
                    </a>
                </div><div class="clear"></div>
            <?php endif; ?>
            <h2 class="title-pro"><a href="<?php echo Yii::app()->request->baseUrl.LANGURL ?>/<?php echo Yii::t('user', $this->module->id.'.link')?>/<?php echo $value['tag'.LANG] ?>" title="<?php echo $value['cat_title'.LANG] ?>"><?php echo $value['cat_title'.LANG] ?></a></h2>
        </div>
    <?php endforeach; ?>
</div>
<?php endif; ?>

<?php if($list_items['models']): ?>
    <h1 class="title-h2-right"><?php echo $info_cat['cat_title'.LANG] ?></h1>
    <div id="all-product">
        <?php foreach($list_items['models'] as $value): ?>
            <div class="product">
                <?php if($value['pic_thumb']): ?>
                <div class="product-img">
                    <a href="<?php echo $value['tag'] ?>.html" title="<?php echo $value['title'.LANG] ?>"><img src="<?php echo Yii::app()->baseUrl.USERFILES ?>/products/<?php echo $value['pic_thumb'] ?>" alt="<?php echo $value['title'.LANG] ?>" /></a>
                </div><div class="clear"></div>
                <?php endif; ?>

				<h2 class="title-pro"><a href="<?php echo Yii::app()->request->baseUrl . LANGURL . '/' . Yii::t('user', $this->module->id . '.link') . '/' . $info_cat['tag'] ?>/<?php echo $value['tag'] ?>.html" title="<?php echo $value['title' . LANG] ?>"><?php echo $value['title' . LANG] ?></a></h2>
                <?php echo ($value['unit']) ? '<p>'.$value['unit'].'</p>' : ''?>
                <a href="product-info.html" class="add-to-cart" title="Add to Cart"><span>Add to Cart</span></a>
            </div>
        <?php endforeach; ?>
    </div><!--End All products-->
    <?php $this->widget('CLinkPager', array('pages' => $list_items['pages'], 'header'=>'', 'lastPageLabel'=>Yii::t('user', 'last'), 'nextPageLabel'=>Yii::t('user', 'next'), 'firstPageLabel'=>Yii::t('user', 'first'), 'prevPageLabel'=>Yii::t('user', 'prev'), 'htmlOptions'=>array('class'=>'paging')))?>
<?php else: ?>
    <?php if(!$list_sub_cats): ?>
        <?php echo $this->lang['no_record'] ?>
    <?php endif; ?>
<?php endif; ?>