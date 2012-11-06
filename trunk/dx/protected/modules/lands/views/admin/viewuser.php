<div class="view">

    <b><?php echo CHtml::encode($data->getAttributeLabel('username')); ?>:</b>
    <i><?php echo $data->username; ?></i>
    <br />

    <b><?php echo CHtml::encode($data->getAttributeLabel('fullname')); ?>:</b>
    <?php echo CHtml::encode($data->fullname); ?>
    <br />

    <b><?php echo CHtml::encode($data->getAttributeLabel('email')); ?>:</b>
    <?php echo CHtml::encode($data->email); ?>
    <br />

    <b><?php echo CHtml::encode($data->getAttributeLabel('phone')); ?>:</b>
    <?php echo CHtml::encode($data->phone); ?>
    <br />

    <b><?php echo CHtml::encode($data->getAttributeLabel('province')); ?>:</b>
    <?php echo CHtml::encode($data->province0['province_name']); ?>
    <br />

    <b><?php echo CHtml::encode($data->getAttributeLabel('address')); ?>:</b>
    <?php echo CHtml::encode($data->address); ?>
    <br />

   
    <b><?php echo CHtml::encode($data->getAttributeLabel('sexual')); ?>:</b>
    <?php echo CHtml::encode($data->sexual); ?>
    <br />

    <b><?php echo CHtml::encode($data->getAttributeLabel('date_created')); ?>:</b>
    <?php echo CHtml::encode($data->date_created); ?>
    <br />
    <br />

    <?php echo CHtml::link('Chỉnh sửa', array('edituser', 'id' => $data->username)) ?>

</div>