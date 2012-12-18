
<?php $this->breadcrumbs = array($this->lang['deal']); ?>
<?php $this->pageTitle = $this->lang['deal']; $this->setDescription()?>
<h2 class="title-box"><span><?php echo $this->lang['deal']?></span></h2>
<?php if($items_deals['models']):?>
<ul class="list-item">
    <?php foreach($items_deals['models'] as $item):?>
        <li>
            <div class="product-img">
                <?php echo CHtml::link(($item['pic_thumb']) ? '<img src="'.Yii::app()->baseUrl.Yii::getPathOfAlias('filePathUpload').'/image/products/'.$item['pic_thumb'].'" alt="'.$item->ProductsLanguage[Yii::app()->language]['title'].'" />' : '<img src="'.Yii::app()->theme->baseUrl.'/images/no-product.jpg" alt="'.$item->ProductsLanguage[Yii::app()->language]['title'].'" />', array($this->setLangUrl().'/san-pham/'.$item->ProductsCat->ProductsCatLanguage[Yii::app()->language]['tag'].'/'.$item->ProductsLanguage[Yii::app()->language]['tag'].'.html'), array('title'=>$item->ProductsLanguage[Yii::app()->language]['title'])); ?>
            </div>
            <h2 class="title-product">
                <?php echo CHtml::link($item->ProductsLanguage[Yii::app()->language]['title'], array($this->setLangUrl().'/san-pham/'.$item->ProductsCat->ProductsCatLanguage[Yii::app()->language]['tag'].'/'.$item->ProductsLanguage[Yii::app()->language]['tag'].'.html'), array('title'=>$item->ProductsLanguage[Yii::app()->language]['title'])); ?>
            </h2>
            <?php echo ($item['unit']) ? '<p class="price">'.$item['unit'].'</p>' : ''?>
        </li>
    <?php endforeach; ?>
</ul> <div class="clear"></div>
<?php $this->widget('CLinkPager', array('pages' => $items_deals['pages'], 'header'=>'', 'lastPageLabel'=>Yii::t('user', 'last'), 'nextPageLabel'=>Yii::t('user', 'next'), 'firstPageLabel'=>Yii::t('user', 'first'), 'prevPageLabel'=>Yii::t('user', 'prev'), 'htmlOptions'=>array('class'=>'paging')))?> <div class="clear"></div>
<script type="text/javascript">
    var column =  '<?php echo Config::getValue('products_column')?>';
    var width = $('.list-item').innerWidth();
    var item_width = ((width/column)-22.5);
    var item_height = '<?php echo Config::getValue('products_height_thumb')?>';
    $('.list-item li').width(item_width);
    $('.list-item li .product-img').width(item_width).height(item_height);
    $('.list-item li:nth-child('+column+'n)').addClass('last-item');
</script>
<?php else:?>
    <div class="frame-tent-right">Đang cập nhật</div>
<?php endif;?>