<?php $this->breadcrumbs = array($this->lang[$this->module->id]); ?>
<?php $this->pageTitle = $this->lang[$this->module->id]; $this->setDescription()?>
<h2 class="title-box"><span><?php echo $this->lang['cat_title'] . ' ' . strtolower($this->lang[$this->module->id])?></span></h2>
<?php if($items):?>
<ul class="list-item">
    <?php foreach($items as $value): ?>
        <?php if($value['cat_parent_id']==0):?>
        <li>
            <div class="product-img">
                <?php echo CHtml::link(($value['pic_thumb']) ? '<img src="'.Yii::app()->baseUrl.Yii::getPathOfAlias('filePathUpload').'/image/productsCat/'.$value['pic_thumb'].'" alt="'.$value->ProductsCatLanguage[Yii::app()->language]['cat_title'].'" />' : '<img src="'.Yii::app()->theme->baseUrl.'/images/no-product.jpg" alt="'.$value->ProductsCatLanguage[Yii::app()->language]['cat_title'].'" />', array($this->setLangUrl().'/san-pham/'.$value->ProductsCatLanguage[Yii::app()->language]['tag']), array('title'=>$value->ProductsCatLanguage[Yii::app()->language]['cat_title'])); ?>
            </div>
            <h3 class="title-product">
                <?php echo CHtml::link($value->ProductsCatLanguage[Yii::app()->language]['cat_title'], array($this->setLangUrl().'/san-pham/'.$value->ProductsCatLanguage[Yii::app()->language]['tag']), array('title'=>$value->ProductsCatLanguage[Yii::app()->language]['cat_title'])); ?>
            </h3>
        </li>
        <?php endif?>
    <?php endforeach; ?>
</ul>
<?php else:?>
    Khong ton tai mau tin
<?php endif;?><div class="clear"></div>