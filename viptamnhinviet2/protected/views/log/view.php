<?php
$this->breadcrumbs=array(
	'Logs'=>array('index'),
	$model->record_id,
);

$this->menu=array(
	array('label'=>'List Log', 'url'=>array('index')),
	array('label'=>'Create Log', 'url'=>array('create')),
	array('label'=>'Update Log', 'url'=>array('update', 'id'=>$model->record_id)),
	array('label'=>'Delete Log', 'url'=>'#', 'linkOptions'=>array('submit'=>array('delete','id'=>$model->record_id),'confirm'=>'Are you sure you want to delete this item?')),
	array('label'=>'Manage Log', 'url'=>array('admin')),
);
?>

<h1>View Log #<?php echo $model->record_id; ?></h1>

<?php $this->widget('zii.widgets.CDetailView', array(
	'data'=>$model,
	'attributes'=>array(
		'record_id',
		'log_type',
		'detail',
		'time',
		'sender',
		'receiver',
		'value',
	),
)); ?>
