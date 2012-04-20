<?php
$this->breadcrumbs=array(
	'Web Templates'=>array('index'),
	$model->template_id=>array('view','id'=>$model->template_id),
	'Update',
);

$this->menu=array(
	array('label'=>'List WebTemplates', 'url'=>array('index')),
	array('label'=>'Create WebTemplates', 'url'=>array('create')),
	array('label'=>'View WebTemplates', 'url'=>array('view', 'id'=>$model->template_id)),
	array('label'=>'Manage WebTemplates', 'url'=>array('admin')),
);
?>

<h1>Update WebTemplates <?php echo $model->template_id; ?></h1>

<?php echo $this->renderPartial('_form', array('model'=>$model)); ?>