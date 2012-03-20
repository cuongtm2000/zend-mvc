<?php //$this->breadcrumbs = array('Users' => array('index'), 'Chuyển khoản',);?>
<h1 class="title-right"><span>Chuyển khoản</span></h1>

<div class="frame-tent-right">
    <?php $form = $this->beginWidget('CActiveForm', array('id' => 'transfer-form', 'enableAjaxValidation' => false,));?>
	<p class="note">Dấu <span class="required">*</span> là những thông tin bắt buộc nhập liệu.</p>
    <?php echo $form->errorSummary($model); ?>
    <div class="row">
        <p class="my-price">Số tiền hiện tại của bạn là: <span><?php echo $user['balance'] ?> V</span></p>
    </div>
	<ul class="frame-contact">
		<li>
			<?php echo $form->labelEx($model, 'pass'); ?>
			<?php echo $form->passwordField($model, 'pass', array('size' => 45, 'maxlength' => 45)); ?>
			<?php echo $form->error($model, 'pass'); ?>
		</li>
		<li>
			<?php echo $form->labelEx($model, 'receiver'); ?>
			<?php echo $form->textField($model, 'receiver', array('size' => 45, 'maxlength' => 45)); ?>
			<?php echo $form->error($model, 'receiver'); ?>
		</li>
		<li>
			<?php echo $form->labelEx($model, 'money'); ?>
			<?php echo $form->textField($model, 'money', array('size' => 45, 'maxlength' => 45)); ?>
			<?php echo $form->error($model, 'money'); ?>
		</li>
		<li>
			<?php echo $form->labelEx($model, 'message'); ?>
			<?php echo $form->textArea($model, 'message', array('cols' => 45,'rows'=>4, 'maxlength' => 180)); ?>
			<?php echo $form->error($model, 'message'); ?>
		</li>
		<li>
			<label>&nbsp;</label>
			<?php echo CHtml::submitButton('Chuyển khoản',array('class'=>'bton-user')); ?>
			<?php echo CHtml::resetButton('Nhập lại',array('class'=>'bton-user')); ?>
		</li>
	</ul>
<?php $this->endWidget(); ?>
</div>