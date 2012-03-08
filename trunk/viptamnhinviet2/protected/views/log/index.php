<h1>Lịch sử giao dịch</h1>


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
