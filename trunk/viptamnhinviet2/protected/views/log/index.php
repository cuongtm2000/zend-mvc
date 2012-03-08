
<?php
$this->breadcrumbs=array(
	'Users'=>array('index'),
	$model->username,
        'Lịch sử giao dịch',
);
?>

<?php $this->widget('zii.widgets.grid.CGridView', array(
	'id'=>'log-grid',
	'dataProvider'=>$model->search(),
	'filter'=>$model,
	'columns'=>array(
		'record_id',
		//'log_type',
		'detail',
		'time',
		'sender',
		'receiver',
		'value',	
		
	),
)); ?>
