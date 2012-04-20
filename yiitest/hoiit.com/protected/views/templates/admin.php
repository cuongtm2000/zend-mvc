<?php
$this->breadcrumbs=array(
	'Web Templates'=>array('index'),
	'Manage',
);

$this->menu=array(
	array('label'=>'List WebTemplates', 'url'=>array('index')),
	array('label'=>'Create WebTemplates', 'url'=>array('create')),
);

Yii::app()->clientScript->registerScript('search', "
$('.search-button').click(function(){
	$('.search-form').toggle();
	return false;
});
$('.search-form form').submit(function(){
	$.fn.yiiGridView.update('web-templates-grid', {
		data: $(this).serialize()
	});
	return false;
});
");
?>

<h1>Manage Web Templates</h1>

<p>
You may optionally enter a comparison operator (<b>&lt;</b>, <b>&lt;=</b>, <b>&gt;</b>, <b>&gt;=</b>, <b>&lt;&gt;</b>
or <b>=</b>) at the beginning of each of your search values to specify how the comparison should be done.
</p>

<?php echo CHtml::link('Advanced Search','#',array('class'=>'search-button')); ?>
<div class="search-form" style="display:none">
<?php $this->renderPartial('_search',array(
	'model'=>$model,
)); ?>
</div><!-- search-form -->

<?php $this->widget('zii.widgets.grid.CGridView', array(
	'id'=>'web-templates-grid',
	'dataProvider'=>$model->search(),
	'filter'=>$model,
	'columns'=>array(
		'template_id',
		'template_name',
		'detail',
		'price',
		'download',
		'source',
		/*
		'width',
		'pic_thumb',
		'pic_full',
		'pic_desc',
		'created',
		'enable',
		'hoiit_web_templates_cat_cat_id',
		'hoiit_usernames_username',
		*/
		array(
			'class'=>'CButtonColumn',
		),
	),
)); ?>
