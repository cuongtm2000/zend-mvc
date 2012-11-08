<?php $this->breadcrumbs = array($this->lang[$this->module->id] => array($this->setUrlModule()), $info_cat['cat_title']); ?>
<?php $this->pageTitle = $info_cat['cat_title'] . ' - ' . $this->lang[$this->module->id]; $this->setDescription($info_cat['description'])?>
<?php if($sub_cats):?>
<div class="main-all-product">
    <h2 class="title-right">Danh muc con</h2>
    <ul class="all-product">
        <?php foreach($sub_cats as $value): ?>
            <li class="product">
                <div class="tent-product">
                    <div class="product-img">
                        <?php echo CHtml::link(($value['pic_thumb']) ? '<img src="'.Yii::app()->baseUrl.Yii::getPathOfAlias('filePathUpload').'/image/videoCat/'.$value['pic_thumb'].'" alt="'.$value->ProductsCatLanguage[Yii::app()->language]['cat_title'].'" />' : '<img src="'.Yii::app()->theme->baseUrl.'/images/no-products-cat.jpg" alt="'.$value->VideoCatLanguage[Yii::app()->language]['cat_title'].'" />', array($this->setLangUrl().'/san-pham/'.$value->VideoCatLanguage[Yii::app()->language]['tag']), array('title'=>$value->VideoCatLanguage[Yii::app()->language]['cat_title'])); ?>
                    </div>
                    <h2 class="title-pro">
                        <?php echo CHtml::link($value->VideoCatLanguage[Yii::app()->language]['cat_title'], array($this->setLangUrl().'/video/'.$value->VideoCatLanguage[Yii::app()->language]['tag']), array('title'=>$value->VideoCatLanguage[Yii::app()->language]['cat_title'])); ?>
                    </h2>
                </div>
            </li>
        <?php endforeach; ?>
    </ul><!--End All products--> <div class="clear"></div>
</div>
<?php endif?>

<div class="main-all-product">
    <h2 class="title-right">Sản phẩm danh muc này</h2>
    <?php if($items['models']):?>
    <ul class="all-product">
        <?php foreach($items['models'] as $item): ?>
        <li class="product">
            <div class="tent-product">
                <div class="product-img">
                    <?php echo CHtml::link(($item['pic_thumb']) ? '<img src="'.Yii::app()->baseUrl.Yii::getPathOfAlias('filePathUpload').'/image/video/'.$item['pic_thumb'].'" alt="'.$item->VideoLanguage[Yii::app()->language]['title'].'" />' : '<img src="'.Yii::app()->theme->baseUrl.'/images/no-products-cat.jpg" alt="'.$item->VideoLanguage[Yii::app()->language]['title'].'" />', array($this->setLangUrl().'/san-pham/'.$item->VideoCat->VideoCatLanguage[Yii::app()->language]['tag'].'/'.$item->VideoLanguage[Yii::app()->language]['tag'].'.html'), array('title'=>$item->VideoLanguage[Yii::app()->language]['title'])); ?>
                </div>
                <h2 class="title-pro">
                    <?php echo CHtml::link($item->VideoLanguage[Yii::app()->language]['title'], array($this->setLangUrl().'/video/'.$item->VideoCat->VideoCatLanguage[Yii::app()->language]['tag'].'/'.$item->VideoLanguage[Yii::app()->language]['tag'].'.html'), array('title'=>$item->VideoLanguage[Yii::app()->language]['title'])); ?>
                </h2>
                <?php echo ($item['unit']) ? '<p class="price">'.$item['unit'].'</p>' : ''?>
                <p class="bton-cart"><a href="product-info.html" class="add-to-cart" title="Add to Cart"><span>Add to Cart</span></a></p>
            </div>
        </li>
        <?php endforeach; ?>
    </ul><!--End All products-->
    <?php $this->widget('CLinkPager', array('pages' => $items['pages'], 'header'=>'', 'lastPageLabel'=>Yii::t('user', 'last'), 'nextPageLabel'=>Yii::t('user', 'next'), 'firstPageLabel'=>Yii::t('user', 'first'), 'prevPageLabel'=>Yii::t('user', 'prev'), 'htmlOptions'=>array('class'=>'paging')))?>
    <?php else:?>
        Khong ton tai mau tin
    <?php endif?>
    <div class="clear"></div>
</div>