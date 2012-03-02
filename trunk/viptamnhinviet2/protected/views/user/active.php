<?php
$this->breadcrumbs=array(
	'Users'=>array('index'),
	'Manage',
);

?>

<h1>Manage Users</h1>

</div><!-- search-form -->

<?php $this->widget('zii.widgets.grid.CGridView', array(
	'id'=>'user-grid',
	'dataProvider'=>$model->search(),
	'filter'=>$model,
	'columns'=>array(
		'username',
		'create_date',
		'full_name',
		'cmnd',
		'user_gioithieu',
		'balance',
		'level'
	),
)); ?>
