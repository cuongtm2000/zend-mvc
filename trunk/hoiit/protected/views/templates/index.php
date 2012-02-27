<?php
$this->breadcrumbs=array(
	'Web Templates',
);

$this->menu=array(
	array('label'=>'Create WebTemplates', 'url'=>array('create')),
	array('label'=>'Manage WebTemplates', 'url'=>array('admin')),
);
?>

<?php $this->widget('zii.widgets.CListView', array(
	'dataProvider'=>$dataProvider,
	'itemView'=>'_view',
	'itemsTagName'=>'ul',
	'itemsCssClass'=>'list-templates',
	'summaryText' => '',
	'pager' => array('header' => ''),
)); ?>
