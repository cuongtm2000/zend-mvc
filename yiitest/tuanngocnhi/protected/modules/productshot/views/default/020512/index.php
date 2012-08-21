<h3 class="title-right"><span><?php echo $this->lang['products']?> <?php echo $this->lang['hot']?></span></h3>
<?php if($models): ?>
<ul class="all-product">
    <?php foreach($models as $value): ?>
    <li class="product">
        <div class="tent-product">
            <div class="product-img">
                <a href="<?php echo Yii::app()->request->baseUrl . LANGURL . '/' . Yii::t('user', $this->module->id . '.link') . '/' . $value->ProductsCat['tag'.LANG] ?>/<?php echo $value['tag'.LANG] ?>.html" title="<?php echo $value['title'.LANG] ?>">
                    <?php if($value['pic_thumb']): ?>
                    <img src="<?php echo Yii::app()->baseUrl.USERFILES ?>/<?php echo $this->module->id?>/<?php echo $value['pic_thumb'] ?>" alt="<?php echo $value['title'.LANG] ?>" />
                    <?php else :?>
                    <img src="<?php echo Yii::app()->theme->baseUrl; ?>/images/no-product.jpg" alt="no product" />
                    <?php endif; ?>
                </a>
            </div>
            <h2 class="title-pro-2"><a href="<?php echo Yii::app()->request->baseUrl . LANGURL . '/' . Yii::t('user', $this->module->id . '.link') . '/' . $value->ProductsCat['tag'.LANG] ?>/<?php echo $value['tag'.LANG] ?>.html" title="<?php echo $value['title' . LANG] ?>"><?php echo $value['title' . LANG] ?></a></h2>
            <p class="price"><?php echo Common::getPrice($value['unit']) ?></p>
        </div>
    </li>
    <?php endforeach; ?>
</ul> <!--End All products--> <div class="clear"></div>

<?php $this->widget('CLinkPager', array('pages' => $pages, 'header'=>'', 'lastPageLabel'=>Yii::t('user', 'last'), 'nextPageLabel'=>Yii::t('user', 'next'), 'firstPageLabel'=>Yii::t('user', 'first'), 'prevPageLabel'=>Yii::t('user', 'prev'), 'htmlOptions'=>array('class'=>'paging')))?>
<div class="clear"></div>

<?php else: ?>
<div class="frame-tent-right"> <?php echo $this->lang['no_record'] ?></div> <div class="btom-main"></div>
<?php endif; ?>