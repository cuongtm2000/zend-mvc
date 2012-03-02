<?php
$this->breadcrumbs=array(
	'Logs'=>array('index'),
	$model->record_id=>array('view','id'=>$model->record_id),
	'Update',
);

$this->menu=array(
	array('label'=>'List Log', 'url'=>array('index')),
	array('label'=>'Create Log', 'url'=>array('create')),
	array('label'=>'View Log', 'url'=>array('view', 'id'=>$model->record_id)),
	array('label'=>'Manage Log', 'url'=>array('admin')),
);
?>

<h1>Update Log <?php echo $model->record_id; ?></h1>

<?php echo $this->renderPartial('_form', array('model'=>$model)); ?>