<?php
$this->breadcrumbs=array(
	'Web Templates'=>array('index'),
	'Create',
);

$this->menu=array(
	array('label'=>'List WebTemplates', 'url'=>array('index')),
	array('label'=>'Manage WebTemplates', 'url'=>array('admin')),
);
?>

<h1>Create WebTemplates</h1>

<?php echo $this->renderPartial('_form', array('model'=>$model)); ?>