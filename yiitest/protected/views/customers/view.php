<div id="leftcontent">
	<?php if ($item): ?>
		<?php $this->breadcrumbs = array(Yii::t('main', 'features.name') => Yii::app()->session['langUrl'] . '/'. Yii::t('main', 'features.link'), $item['title'.LANG]); ?>
		<?php $this->pageTitle = $item['title'.LANG]; $this->description = $item['description'.LANG];?>
		<h1 class="heading-contact"><?php echo $item['title'.LANG]?></h1>
		<?php echo $item['content'.LANG] ?>
	<?php endif?>
</div>

<?php echo $this->renderPartial('menu', array('model_menu'=>$model_menu)) ?>