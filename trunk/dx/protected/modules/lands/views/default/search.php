<?php 
    $this->breadcrumbs = array($this->lang[$this->module->id] => array($this->setUrlModule()), 'Tìm kiếm'); 
    $this->pageTitle = 'Tìm kiếm - ' . $this->lang[$this->module->id]; ?>

<?php if ($data): ?>
    <h2 class="title-right">Sản phẩm danh muc này</h2>
    <ul class="list-item">
    <?php foreach ($data as $item): ?>
            <li>
                <div class="tent-product">
                    <div class="product-img">
        <?php echo CHtml::link(($item['pic_thumb']) ? '<img src="' . Yii::app()->baseUrl . Yii::getPathOfAlias('filePathUpload') . '/image/lands/' . $item['pic_thumb'] . '" alt="' . $item->LandsLanguage[Yii::app()->language]['title'] . '" />' : '<img src="' . Yii::app()->theme->baseUrl . '/images/no-product.jpg" alt="' . $item->LandsLanguage[Yii::app()->language]['title'] . '" />', array($this->setLangUrl() . '/san-giao-dich/' . $item->LandsCat->LandsCatLanguage[Yii::app()->language]['tag'] . '/' . $item->LandsLanguage[Yii::app()->language]['tag'] . '.html'), array('title' => $item->LandsLanguage[Yii::app()->language]['title'])); ?>
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
    <?php //$this->widget('CLinkPager', array('pages' => $items['pages'], 'header' => '', 'lastPageLabel' => Yii::t('user', 'last'), 'nextPageLabel' => Yii::t('user', 'next'), 'firstPageLabel' => Yii::t('user', 'first'), 'prevPageLabel' => Yii::t('user', 'prev'), 'htmlOptions' => array('class' => 'paging'))) ?>
<?php else: ?>
    Không có kết quả phù hợp với truy vấn này.
<?php endif ?>
<div class="clear"></div>
