<?php $this->breadcrumbs = array($this->lang[$this->module->id] => array($this->setUrlModule()), $info_cat['cat_title']); ?>
<?php $this->pageTitle = $info_cat['cat_title'] . ' - ' . $this->lang[$this->module->id];
$this->setDescription($info_cat['description']) ?>
<?php if ($sub_cats): ?>

    <h2 class="title-right">Loại bất động sản</h2>
    <ul class="list-item-cat">
    <?php foreach ($sub_cats as $value): ?>
            <li>
                <div class="tent-product">
                    <div class="product-img">
        <?php echo CHtml::link(($value['pic_thumb']) ? '<img src="' . Yii::app()->baseUrl . Yii::getPathOfAlias('filePathUpload') . '/image/landsCat/' . $value['pic_thumb'] . '" alt="' . $value->LandsCatLanguage[Yii::app()->language]['cat_title'] . '" />' : '<img src="' . Yii::app()->theme->baseUrl . '/images/no-product.jpg" alt="' . $value->LandsCatLanguage[Yii::app()->language]['cat_title'] . '" />', array($this->setLangUrl() . '/san-pham/' . $value->LandsCatLanguage[Yii::app()->language]['tag']), array('title' => $value->LandsCatLanguage[Yii::app()->language]['cat_title'])); ?>
                    </div>
                    <h2 class="title-pro">
        <?php echo CHtml::link($value->LandsCatLanguage[Yii::app()->language]['cat_title'], array($this->setLangUrl() . '/san-giao-dich/' . $value->LandsCatLanguage[Yii::app()->language]['tag']), array('title' => $value->LandsCatLanguage[Yii::app()->language]['cat_title'])); ?>
                    </h2>
                </div>
            </li>
    <?php endforeach; ?>
    </ul><!--End All products--> <div class="clear"></div>
<?php endif ?>


<?php if ($items['models']): ?>
    <h2 class="title-right">Sản phẩm danh muc này</h2>
    <ul class="list-item">
    <?php foreach ($items['models'] as $item): ?>
            <li>
                <div class="tent-product">
                    <div class="product-img">
        <?php echo CHtml::link(($item['pic_thumb']) ? '<img src="' . Yii::app()->baseUrl . Yii::getPathOfAlias('filePathUpload') . '/image/lands/' . $item['pic_thumb'] . '" alt="' . $item->LandsLanguage[Yii::app()->language]['title'] . '" />' : '<img src="' . Yii::app()->theme->baseUrl . '/images/no-product.jpg" alt="' . $item->LandsLanguage[Yii::app()->language]['title'] . '" />', array($this->setLangUrl() . '/san-pham/' . $item->LandsCat->LandsCatLanguage[Yii::app()->language]['tag'] . '/' . $item->LandsLanguage[Yii::app()->language]['tag'] . '.html'), array('title' => $item->LandsLanguage[Yii::app()->language]['title'])); ?>
                    </div>
                    <h2 class="title-pro">
                    <?php echo CHtml::link($item->LandsLanguage[Yii::app()->language]['title'], array($this->setLangUrl() . '/san-giao-dich/' . $item->LandsCat->LandsCatLanguage[Yii::app()->language]['tag'] . '/' . $item->LandsLanguage[Yii::app()->language]['tag'] . '.html'), array('title' => $item->LandsLanguage[Yii::app()->language]['title'])); ?>
                    </h2>
        <?php echo ($item['price']) ? '<p class="price">' . $item['price'] . '</p>' : '' ?>
                    <p class="bton-cart"><a href="product-info.html" class="add-to-cart" title="Add to Cart"><span>Add to Cart</span></a></p>
                </div>
            </li>
    <?php endforeach; ?>
    </ul><!--End All products-->
    <?php $this->widget('CLinkPager', array('pages' => $items['pages'], 'header' => '', 'lastPageLabel' => Yii::t('user', 'last'), 'nextPageLabel' => Yii::t('user', 'next'), 'firstPageLabel' => Yii::t('user', 'first'), 'prevPageLabel' => Yii::t('user', 'prev'), 'htmlOptions' => array('class' => 'paging'))) ?>
<?php else: ?>
    Khong ton tai mau tin
<?php endif ?>
<div class="clear"></div>
