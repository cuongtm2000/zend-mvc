<?php if($products_new_index):?>
<?php foreach ($products_new_index as $value):?>
    <?php if($value['cat_parent_id']==0):?>
        <h2 class="title-box"><span><?php echo $value->ProductsCatLanguage[Yii::app()->language]['cat_title']?></span></h2>
        <?php $items = Products::model()->listItemByCatIndex($value['cat_id']); ?>
        <div class="main-all-product">
            <ul class="list-item-index">
            <?php foreach($items as $item):?>
                <li>
                    <div class="product-img">
                        <?php echo CHtml::link(($item['pic_thumb']) ? '<img src="'.Yii::app()->baseUrl.Yii::getPathOfAlias('filePathUpload').'/image/products/'.$item['pic_thumb'].'" alt="'.$item->ProductsLanguage[Yii::app()->language]['title'].'" />' : '<img src="'.Yii::app()->theme->baseUrl.'/images/no-product.jpg" alt="'.$item->ProductsLanguage[Yii::app()->language]['title'].'" />', array($this->setLangUrl().'/san-pham/'.$item->ProductsCat->ProductsCatLanguage[Yii::app()->language]['tag'].'/'.$item->ProductsLanguage[Yii::app()->language]['tag'].'.html'), array('title'=>$item->ProductsLanguage[Yii::app()->language]['title'])); ?>
                    </div>
                    <h2 class="title-product">
                        <?php echo CHtml::link($item->ProductsLanguage[Yii::app()->language]['title'], array($this->setUrlModule('products').'/'.$item->ProductsCat->ProductsCatLanguage[Yii::app()->language]['tag'].'/'.$item->ProductsLanguage[Yii::app()->language]['tag'].'.html'), array('title'=>$item->ProductsLanguage[Yii::app()->language]['title'])); ?>
                    </h2>
                    <?php echo ($item['unit']) ? '<p class="price">'.$item['unit'].'</p>' : ''?>
                </li>
            <?php endforeach;?>
            </ul> <div class="clear"></div>
        </div>
      <?php endif;?>
<?php endforeach;?>
<script type="text/javascript">
    var item_height = '<?php echo Config::getValue('products_height_thumb')?>';
    $('.list-item-index li .product-img').height(item_height);
    $(".list-item-index li:nth-child(5n)").addClass("last-item-index");
</script>
<?php endif;?>