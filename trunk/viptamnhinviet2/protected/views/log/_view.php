<div class="view">

	<b><?php echo CHtml::encode($data->getAttributeLabel('record_id')); ?>:</b>
	<?php echo CHtml::link(CHtml::encode($data->record_id), array('view', 'id'=>$data->record_id)); ?>
	<br />

	<b><?php echo CHtml::encode($data->getAttributeLabel('log_type')); ?>:</b>
	<?php echo CHtml::encode($data->log_type); ?>
	<br />

	<b><?php echo CHtml::encode($data->getAttributeLabel('detail')); ?>:</b>
	<?php echo CHtml::encode($data->detail); ?>
	<br />

	<b><?php echo CHtml::encode($data->getAttributeLabel('time')); ?>:</b>
	<?php echo CHtml::encode($data->time); ?>
	<br />

	<b><?php echo CHtml::encode($data->getAttributeLabel('sender')); ?>:</b>
	<?php echo CHtml::encode($data->sender); ?>
	<br />

	<b><?php echo CHtml::encode($data->getAttributeLabel('receiver')); ?>:</b>
	<?php echo CHtml::encode($data->receiver); ?>
	<br />

	<b><?php echo CHtml::encode($data->getAttributeLabel('value')); ?>:</b>
	<?php echo CHtml::encode($data->value); ?>
	<br />


</div>