<ul class="frame-contact">

	<li><?php echo CHtml::encode($data->getAttributeLabel('username')); ?>:
	<?php echo CHtml::link(CHtml::encode($data->username), array('view', 'id'=>$data->username)); ?>
	</li>

	<li><?php echo CHtml::encode($data->getAttributeLabel('password')); ?>:
	<?php echo CHtml::encode($data->password); ?>
	</li>

	<li><?php echo CHtml::encode($data->getAttributeLabel('create_date')); ?>:
	<?php echo CHtml::encode($data->create_date); ?>
	</li>

	<li><?php echo CHtml::encode($data->getAttributeLabel('full_name')); ?>:
	<?php echo CHtml::encode($data->full_name); ?>
	</li>

	<li><?php echo CHtml::encode($data->getAttributeLabel('email')); ?>:
	<?php echo CHtml::encode($data->email); ?>
	</li>

	<li><?php echo CHtml::encode($data->getAttributeLabel('birthday')); ?>:
	<?php echo CHtml::encode($data->birthday); ?>
	</li>

	<li><?php echo CHtml::encode($data->getAttributeLabel('address')); ?>:
	<?php echo CHtml::encode($data->address); ?>
	</li>

	<?php /*
	<li><?php echo CHtml::encode($data->getAttributeLabel('cmnd')); ?>:
	<?php echo CHtml::encode($data->cmnd); ?>
	</li>

	<li><?php echo CHtml::encode($data->getAttributeLabel('phone')); ?>:
	<?php echo CHtml::encode($data->phone); ?>
	</li>

	<li><?php echo CHtml::encode($data->getAttributeLabel('bank_number')); ?>:
	<?php echo CHtml::encode($data->bank_number); ?>
	</li>

	<li><?php echo CHtml::encode($data->getAttributeLabel('bank_name')); ?>:
	<?php echo CHtml::encode($data->bank_name); ?>
	</li>

	<li><?php echo CHtml::encode($data->getAttributeLabel('user_gioithieu')); ?>:
	<?php echo CHtml::encode($data->user_gioithieu); ?>
	</li>

	<li><?php echo CHtml::encode($data->getAttributeLabel('balance')); ?>:
	<?php echo CHtml::encode($data->balance); ?>
	</li>

	<li><?php echo CHtml::encode($data->getAttributeLabel('user_group')); ?>:
	<?php echo CHtml::encode($data->user_group); ?>
	</li>

	<li><?php echo CHtml::encode($data->getAttributeLabel('level')); ?>:
	<?php echo CHtml::encode($data->level); ?>
	</li>

	<li><?php echo CHtml::encode($data->getAttributeLabel('enable')); ?>:
	<?php echo CHtml::encode($data->enable); ?>
	</li>

	*/ ?>

</ul>