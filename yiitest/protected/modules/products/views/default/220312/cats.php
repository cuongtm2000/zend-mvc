<?php $this->breadcrumbs = array($this->lang[$this->module->id] => LANGURL . '/' . Yii::t('user', $this->module->id.'.link'), $info_cat['cat_title' . LANG]); ?>

<!-- for cat -->
<?php if($list_sub_cats): ?>
<h1 class="title-box"><span><?php echo $info_cat['cat_title'.LANG] ?></span></h1>
<div id="all-product">
    <?php foreach($list_sub_cats as $value): ?>
        <div class="product">
            <?php if($value['pic_full']): ?>
                <div class="product-img">
                    <a href="<?php echo Yii::app()->request->baseUrl.LANGURL ?>/products/<?php echo $value['tag'] ?>" title="<?php echo $value['cat_title'.LANG] ?>">
                    <img src="<?php echo Yii::app()->baseUrl.USERFILES ?>/productCats/<?php echo $value['pic_full'] ?>" alt="<?php echo $value['cat_title'.LANG] ?>" />
                    </a>
                </div>
            <?php endif; ?>
            <h2 class="title-pro"><a href="<?php echo Yii::app()->request->baseUrl.LANGURL ?>/products/<?php echo $value['tag'] ?>" title="<?php echo $value['cat_title'.LANG] ?>"><?php echo $value['cat_title'.LANG] ?></a></h2>
        </div>
    <?php endforeach; ?>
</div>
<?php endif; ?>

<?php if($list_items['models']): ?>
    <h1 class="title-box"><span><?php echo $info_cat['cat_title'.LANG] ?></span></h1>
    <div id="all-product">
        <?php foreach($list_items['models'] as $value): ?>
            <div class="product">
                <?php if($value['pic_thumb']): ?>
                <div class="product-img">
                    <a href="<?php echo Yii::app()->request->baseUrl . LANGURL . '/' . Yii::t('user', $this->module->id . '.link') . '/' . $info_cat['tag'] ?>/<?php echo $value['tag'] ?>.html" title="<?php echo $value['title' . LANG] ?>" title="<?php echo $value['title'.LANG] ?>"><img src="<?php echo Yii::app()->baseUrl.USERFILES ?>/products/<?php echo $value['pic_thumb'] ?>" alt="<?php echo $value['title'.LANG] ?>" /></a>
                </div>
                <?php endif; ?>
                
                <h2 class="title-pro"><a href="<?php echo Yii::app()->request->baseUrl . LANGURL . '/' . Yii::t('user', $this->module->id . '.link') . '/' . $info_cat['tag'] ?>/<?php echo $value['tag'] ?>.html" title="<?php echo $value['title' . LANG] ?>"><?php echo $value['title' . LANG] ?></a></h2>
                <p class="price">$<?php echo $value['unit']?></p>
                <p class="bton-pro"><a href="<?php echo Yii::app()->request->baseUrl . LANGURL . '/' . Yii::t('user', $this->module->id . '.link') . '/' . $info_cat['tag'] ?>/<?php echo $value['tag'] ?>.html" title="<?php echo $value['title' . LANG] ?>" title="CHI TIẾT" class="bton-detail">Chi tiết</a> <a href="<?php echo Yii::app()->request->baseUrl . LANGURL?>/contact" title="<?php echo $value['title' . LANG] ?>" title="Liên hệ" class="bton-order">Liên hệ</a> </p>
            </div>
        <?php endforeach; ?>
    </div><!--End All products-->
    <?php $this->widget('CLinkPager', array('pages' => $list_items['pages'], 'header'=>'', 'lastPageLabel'=>'last', 'nextPageLabel'=>'next', 'firstPageLabel'=>'first', 'prevPageLabel'=>'prev', 'htmlOptions'=>array('class'=>'paging')))?>
<?php else: ?>
    <?php if(!$list_sub_cats): ?>
        <?php echo $this->lang['no_record'] ?>
    <?php endif; ?>
<?php endif; ?>



