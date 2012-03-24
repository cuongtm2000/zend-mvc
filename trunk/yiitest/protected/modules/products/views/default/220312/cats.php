<?php $this->breadcrumbs = array($this->lang[$this->module->id] => LANGURL . '/' . Yii::t('user', $this->module->id.'.link'), $info_cat['cat_title' . LANG]); ?>

<!-- for cat -->
<?php if($list_sub_cats): ?>
<h1 class="title-box"><span><?php echo $info_cat['cat_title'.LANG] ?></span></h1>
<div id="all-product">
    <?php foreach($list_sub_cats as $value): ?>
        <div class="product">
            <?php if($value['pic_full']): ?>
                <div class="product-img">
                    <a href="<?php echo Yii::app()->request->baseUrl.LANGURL ?>/<?php echo Yii::t('user', $this->module->id . '.link')?>/<?php echo $value['tag'] ?>" title="<?php echo $value['cat_title'.LANG] ?>">
                    <img src="<?php echo Yii::app()->baseUrl.USERFILES ?>/<?php echo $this->module->id?>Cat/<?php echo $value['pic_full'] ?>" alt="<?php echo $value['cat_title'.LANG] ?>" />
                    </a>
                </div>
            <?php endif; ?>
            <h2 class="title-pro"><a href="<?php echo Yii::app()->request->baseUrl.LANGURL ?>/<?php echo Yii::t('user', $this->module->id . '.link')?>/<?php echo $value['tag'] ?>" title="<?php echo $value['cat_title'.LANG] ?>"><?php echo $value['cat_title'.LANG] ?></a></h2>
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
                    <a href="<?php echo Yii::app()->request->baseUrl . LANGURL . '/' . Yii::t('user', $this->module->id . '.link') . '/' . $info_cat['tag'] ?>/<?php echo $value['tag'] ?>.html" title="<?php echo $value['title'.LANG] ?>"><img src="<?php echo Yii::app()->baseUrl.USERFILES ?>/products/<?php echo $value['pic_thumb'] ?>" alt="<?php echo $value['title'.LANG] ?>" /></a>
                </div>
                <?php endif; ?>
                
                <h2 class="title-pro"><a href="<?php echo Yii::app()->request->baseUrl . LANGURL . '/' . Yii::t('user', $this->module->id . '.link') . '/' . $info_cat['tag'] ?>/<?php echo $value['tag'] ?>.html" title="<?php echo $value['title' . LANG] ?>"><?php echo $value['title' . LANG] ?></a></h2>
                <p class="price"><?php echo number_format($value['unit'], 0, '', '.'); ?> VND</p>
                <p class="bton-pro"><a href="<?php echo Yii::app()->request->baseUrl . LANGURL . '/' . Yii::t('user', $this->module->id . '.link') . '/' . $info_cat['tag'] ?>/<?php echo $value['tag'] ?>.html" title="<?php echo $this->lang['detail']?>: <?php echo $value['title' . LANG] ?>" class="bton-detail"><?php echo $this->lang['detail']?></a> <a href="<?php echo Yii::app()->request->baseUrl . LANGURL?>/<?php echo Yii::t('user', 'contact.link')?>" title="<?php echo $this->lang['contact']?>: <?php echo $value['title' . LANG] ?>" class="bton-order"><?php echo $this->lang['contact']?></a> </p>
            </div>
        <?php endforeach; ?>
    </div><!--End All products-->
    <?php $this->widget('CLinkPager', array('pages' => $list_items['pages'], 'header'=>'', 'lastPageLabel'=>'last', 'nextPageLabel'=>'next', 'firstPageLabel'=>'first', 'prevPageLabel'=>'prev', 'htmlOptions'=>array('class'=>'paging')))?>
<?php else: ?>
    <?php if(!$list_sub_cats): ?>
        <?php echo $this->lang['no_record'] ?>
    <?php endif; ?>
<?php endif; ?>



