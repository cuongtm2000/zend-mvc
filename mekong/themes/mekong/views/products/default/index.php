<?php $this->breadcrumbs = array($this->lang[$this->module->id]); ?>
<?php $this->pageTitle = $this->lang[$this->module->id]; $this->setDescription()?>
<div class="main-all-product">
    <h2 class="title-right"><?php echo $this->lang['cat_title'] . ' ' . strtolower($this->lang[$this->module->id])?></h2>
    <?php if($items):?>
    <ul class="all-product">
        <?php foreach($items as $value): ?>
            <?php if($value['cat_parent_id']==0):?>
            <li class="product">
				<div class="product-img">
					<?php echo CHtml::link(($value['pic_thumb']) ? '<img src="'.Yii::app()->baseUrl.Yii::getPathOfAlias('filePathUpload').'/image/productsCat/'.$value['pic_thumb'].'" alt="'.$value->ProductsCatLanguage[Yii::app()->language]['cat_title'].'" />' : '<img src="'.Yii::app()->theme->baseUrl.'/images/no-products-cat.jpg" alt="'.$value->ProductsCatLanguage[Yii::app()->language]['cat_title'].'" />', array($this->setLangUrl().'/san-pham/'.$value->ProductsCatLanguage[Yii::app()->language]['tag']), array('title'=>$value->ProductsCatLanguage[Yii::app()->language]['cat_title'])); ?>
				</div>
				<div class="line-bottom-product"></div>
				<h2 class="title-product">
					<?php echo CHtml::link($value->ProductsCatLanguage[Yii::app()->language]['cat_title'], array($this->setLangUrl().'/san-pham/'.$value->ProductsCatLanguage[Yii::app()->language]['tag']), array('title'=>$value->ProductsCatLanguage[Yii::app()->language]['cat_title'])); ?>
				</h2>
            </li>
            <?php endif?>
        <?php endforeach; ?>
    </ul>
    <?php else:?>
        <?php echo $this->lang['no_record']?>
    <?php endif;?><div class="clear"></div>
</div> <!--End main-content-->