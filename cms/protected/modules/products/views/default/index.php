<div class="main-all-product">
    <h2 class="title-right">Sản phẩm mới</h2>
    <ul class="all-product">
        <?php foreach($items as $value): ?>
            <?php if($value['cat_parent_id']==0):?>
            <li class="product">
                <div class="tent-product">
                    <div class="product-img">
                        <?php echo CHtml::link(($value['pic_thumb']) ? '<img src="'.Yii::app()->baseUrl.Yii::getPathOfAlias('filePathUpload').'/image/productsCat/'.$value['pic_thumb'].'" alt="'.$value->ProductsCatLanguage[Yii::app()->language]['cat_title'].'" />' : '<img src="'.Yii::app()->theme->baseUrl.'/images/no-products-cat.jpg" alt="'.$value->ProductsCatLanguage[Yii::app()->language]['cat_title'].'" />', array($this->setLangUrl().'/san-pham/'.$value->ProductsCatLanguage[Yii::app()->language]['tag']), array('title'=>$value->ProductsCatLanguage[Yii::app()->language]['cat_title'])); ?>
                    </div>
                    <h2 class="title-pro">
                        <?php echo CHtml::link($value->ProductsCatLanguage[Yii::app()->language]['cat_title'], array($this->setLangUrl().'/san-pham/'.$value->ProductsCatLanguage[Yii::app()->language]['tag']), array('title'=>$value->ProductsCatLanguage[Yii::app()->language]['cat_title'])); ?>
                    </h2>
                </div>
            </li>
            <?php endif?>
        <?php endforeach; ?>
    </ul><!--End All products--> <div class="clear"></div>
</div> <!--End main-content-->