<?php
$this->breadcrumbs=array(
	'Products'=>array('index'),
	$model->title,
);

$this->menu=array(
	array('label'=>'List Product', 'url'=>array('index')),
	array('label'=>'Create Product', 'url'=>array('create')),
	array('label'=>'Update Product', 'url'=>array('update', 'id'=>$model->record_id)),
	array('label'=>'Delete Product', 'url'=>'#', 'linkOptions'=>array('submit'=>array('delete','id'=>$model->record_id),'confirm'=>'Are you sure you want to delete this item?')),
	array('label'=>'Manage Product', 'url'=>array('admin')),
);
?>

<h1>View Product #<?php echo $model->record_id; ?></h1>

<?php $this->widget('zii.widgets.CDetailView', array(
	'data'=>$model,
	'attributes'=>array(
		'record_id',
		'title',
		'titleen',
		'postdate',
		'pic_thumb',
		'pic_full',
		'pic_desc',
		'preview',
		'previewen',
		'detail',
		'detailen',
		'tag',
		'description',
		'hits',
		'record_order',
		'unit',
		'hot',
		'specials',
		'extra_field1',
		'extra_field2',
		'extra_field3',
		'extra_field4',
		'enable',
		'dos_module_item_cat_cat_id',
		'dos_module_usernames_username',
	),
)); ?>
