<?php $this->breadcrumbs = array($this->lang[$this->module->id] => array($this->setUrlModule()), $info_cat['cat_title']); ?>
<?php $this->pageTitle = $info_cat['cat_title'] . ' - ' . $this->lang[$this->module->id]; $this->setDescription($info_cat['description'])?>
<?php if($sub_cats):?>
    <h2 class="title-right"><span>Danh mục con</span></h2>
    <ul class="list-item-cat">
        <?php foreach($sub_cats as $value): ?>
            <li>
                    <div class="product-img">
                        <?php echo CHtml::link(($value['pic_thumb']) ? '<img src="'.Yii::app()->baseUrl.Yii::getPathOfAlias('filePathUpload').'/image/productsCat/'.$value['pic_thumb'].'" alt="'.$value->ProductsCatLanguage[Yii::app()->language]['cat_title'].'" />' : '<img src="'.Yii::app()->theme->baseUrl.'/images/no-product.jpg" alt="'.$value->ProductsCatLanguage[Yii::app()->language]['cat_title'].'" />', array($this->setLangUrl().'/san-pham/'.$value->ProductsCatLanguage[Yii::app()->language]['tag']), array('title'=>$value->ProductsCatLanguage[Yii::app()->language]['cat_title'])); ?>
                    </div>
                    <h2 class="title-product">
                        <?php echo CHtml::link($value->ProductsCatLanguage[Yii::app()->language]['cat_title'], array($this->setLangUrl().'/san-pham/'.$value->ProductsCatLanguage[Yii::app()->language]['tag']), array('title'=>$value->ProductsCatLanguage[Yii::app()->language]['cat_title'])); ?>
                    </h2>
            </li>
        <?php endforeach; ?>
    </ul> <div class="clear"></div>
<?php endif?>


<h2 class="title-right"><?php echo $info_cat['cat_title']?></h2>
<?php if($items['models']):?>
<ul class="list-item">
    <?php foreach($items['models'] as $item): ?>
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
<?php $this->widget('CLinkPager', array('pages' => $items['pages'], 'header'=>'', 'lastPageLabel'=>Yii::t('user', 'last'), 'nextPageLabel'=>Yii::t('user', 'next'), 'firstPageLabel'=>Yii::t('user', 'first'), 'prevPageLabel'=>Yii::t('user', 'prev'), 'htmlOptions'=>array('class'=>'paging')))?> <div class="clear"></div>
<?php else:?>
    Khong ton tai mau tin
<?php endif?>

