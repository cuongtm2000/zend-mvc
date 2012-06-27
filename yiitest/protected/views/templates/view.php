<?php $this->breadcrumbs = array(Yii::t('main', 'templates.name') => Yii::app()->session['langUrl'] . '/'. Yii::t('main', 'templates.link'), $detail['template']);?>

<div id="leftcontent" style="width:639px">
	<h3 class="title-template"><strong><?php echo $detail['template_name']?></strong></h3>
	<p><?php echo $detail['description']?></p>
</div>	
<?php echo $this->renderPartial('menu') ?>
