<?php $this->breadcrumbs = array($this->lang[$this->module->id]); ?>
<?php $this->pageTitle = $this->lang[$this->module->id]; $this->setDescription() ?>
<?php
    Yii::app()->clientScript->registerCssFile(Yii::app()->theme->baseUrl.'/css/tab.css');
    Yii::app()->clientScript->registerScriptFile(Yii::app()->theme->baseUrl.'/js/tab-sub-right.js');
?>

<h2 class="title-box"><span><?php echo $this->lang['cat_title'] . ' ' . strtolower($this->lang[$this->module->id]) ?></span></h2>
	<?php if ($items): ?>
	<ul class="list-item">
		<?php foreach ($items as $value): ?>
	<?php if ($value['cat_parent_id'] == 0): ?>
				<li>
					<div class="tent-product">
						<div class="product-img">
		<?php echo CHtml::link(($value['pic_thumb']) ? '<img src="' . Yii::app()->baseUrl . Yii::getPathOfAlias('filePathUpload') . '/image/landsCat/' . $value['pic_thumb'] . '" alt="' . $value->LandsCatLanguage[Yii::app()->language]['cat_title'] . '" />' : '<img src="' . Yii::app()->theme->baseUrl . '/images/no-product.jpg" alt="' . $value->LandsCatLanguage[Yii::app()->language]['cat_title'] . '" />', array($this->setLangUrl() . '/san-giao-dich/' . $value->LandsCatLanguage[Yii::app()->language]['tag']), array('title' => $value->LandsCatLanguage[Yii::app()->language]['cat_title'])); ?>
						</div>
						<h2 class="title-product">
		<?php echo CHtml::link($value->LandsCatLanguage[Yii::app()->language]['cat_title'], array($this->setLangUrl() . '/san-giao-dich/' . $value->LandsCatLanguage[Yii::app()->language]['tag']), array('title' => $value->LandsCatLanguage[Yii::app()->language]['cat_title'])); ?>
						</h2>
					</div>
				</li>
			<?php endif ?>
	<?php endforeach; ?>
	</ul>
<?php else: ?>
	Khong ton tai mau tin
<?php endif; ?><div class="clear"></div>