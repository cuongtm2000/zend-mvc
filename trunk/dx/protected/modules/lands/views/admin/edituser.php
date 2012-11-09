<h1>Chỉnh sửa thông tin <b><?php echo $model->username; ?></b></h1>
<div class="form">

    <?php
    $form = $this->beginWidget('CActiveForm', array(
        'id' => 'lands-users-form',
        'enableAjaxValidation' => false,
            ));
    ?>

    <p class="note">Fields with <span class="required">*</span> are required.</p>

    <?php echo $form->errorSummary($model); ?>

    <div class="row">
        <?php echo $form->labelEx($model, 'username'); ?>
        <?php echo $form->textField($model, 'username', array('size' => 45, 'maxlength' => 45, 'readonly' => 'readonly')); ?>

    </div>

    <div class="row">
        <?php echo $form->labelEx($model, 'password'); ?>
        <?php echo $form->passwordField($model, 'password', array('size' => 32 ,'maxlength' => 32)); ?> <i>Để trống nếu không đổi</i>
    </div>
 

    <div class="row">
        <?php echo $form->labelEx($model, 'fullname'); ?>
        <?php echo $form->textField($model, 'fullname', array('size' => 45, 'maxlength' => 45)); ?>

    </div>

    <div class="row">
        <?php echo $form->labelEx($model, 'email'); ?>
        <?php echo $form->textField($model, 'email', array('size' => 45, 'maxlength' => 45)); ?>

    </div>

    <div class="row">
        <?php echo $form->labelEx($model, 'phone'); ?>
        <?php echo $form->textField($model, 'phone'); ?>

    </div>

    <div class="row">
        <?php echo $form->labelEx($model, 'province'); ?>
        <?php echo $form->dropDownList($model, 'province', CHtml::listData($listProvices, 'province_id', 'province_name'), array('prompt' => 'Chọn tỉnh/thành'));
            ?>

    </div>

    <div class="row">
        <?php echo $form->labelEx($model, 'address'); ?>
        <?php echo $form->textField($model, 'address', array('size' => 60, 'maxlength' => 100)); ?>

    </div>

    <div class="row">
        <?php echo $form->labelEx($model, 'sexual'); ?>
        <?php echo $form->dropDownList($model, 'sexual', array_combine(array('Chưa rõ', 'Nam', 'Nữ'), array('Chưa rõ', 'Nam', 'Nữ')));?>
    </div>

	<div class="row">
        <?php echo $form->labelEx($model, 'user_role'); ?>
        <?php echo $form->dropDownList($model, 'user_role', array_combine(array('user', 'staff'), array('Thành viên', 'Nhân viên')));?>
    </div>
	
    <div class="row buttons">
<?php echo CHtml::submitButton('Chỉnh sửa'); ?>
    </div>

<?php $this->endWidget(); ?>

</div><!-- form -->