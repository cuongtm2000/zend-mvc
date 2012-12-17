<h4 class="title-left"><span><?php echo CHtml::encode($this->lang['product_management'])?></span></h4>
<?php
    Yii::app()->clientScript->registerCssFile(Yii::app()->theme->baseUrl.'/images/skin.css');
    Yii::app()->clientScript->registerScriptFile(Yii::app()->theme->baseUrl.'/js/jquery.jcarousel.min.js');
    Yii::app()->clientScript->registerScriptFile(Yii::app()->theme->baseUrl.'/js/project-list.js');
?>

<ul id="mycarousel" class="jcarousel jcarousel-skin-tango">
	<?php foreach($menu_product_mana as $value):?>
	<li>
		<?php echo CHtml::link(($value['pic_thumb']) ? '<img src="'.Yii::app()->baseUrl.Yii::getPathOfAlias('filePathUpload').'/image/product_managementCat/'.$value['pic_thumb'].'" alt="'.$value->Product_managementCatLanguage[Yii::app()->language]['cat_title'].'" />' : '<img src="'.Yii::app()->theme->baseUrl.'/images/no-product-managementCat.jpg" alt="'.$value->Product_managementCatLanguage[Yii::app()->language]['cat_title'].'" />', array($this->setLangUrl().'/quan-ly-san-pham/'.$value->Product_managementCatLanguage[Yii::app()->language]['tag']), array('title'=>$value->Product_managementCatLanguage[Yii::app()->language]['cat_title'])); ?>
	</li>
	<?php endforeach?>
</ul>