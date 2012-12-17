<?php $form = $this->beginWidget('CActiveForm', array('id'=>'frm', 'enableAjaxValidation'=>true, 'enableClientValidation' =>true,));?>
	<?php echo $form->errorSummary($model, ''); ?>
	<p>
		<?php echo $form->labelEx($model, 'user_email') ?>
		<?php echo $form->textField($model, 'user_email'); ?>
	</p>
	<p>
		<?php echo $form->labelEx($model, 'user_pass') ?>
		<?php echo $form->passwordField($model, 'user_pass'); ?>
	</p>
	<p>
		<?php echo $form->labelEx($model, 'user_fullname') ?>
		<?php echo $form->textField($model, 'user_fullname'); ?>
	</p>
	<p>
		<?php echo $form->labelEx($model, 'user_cmnd') ?>
		<?php echo $form->textField($model, 'user_cmnd'); ?>
	</p>
	<p>
		<?php echo $form->labelEx($model, 'user_sex') ?>
		<?php echo $form->radioButtonList($model, 'user_sex', array('0'=>'Nu', '1'=>'Nam'), array('separator'=>'&nbsp;&nbsp;')); ?>
	</p>
	<p>
		<?php echo $form->labelEx($model, 'user_address') ?>
		<?php echo $form->textField($model, 'user_address'); ?>
	</p>
	<p>
		<?php echo $form->labelEx($model, 'user_phone') ?>
		<?php echo $form->textField($model, 'user_phone'); ?>
	</p>
	<p><?php echo CHtml::submitButton('Register', array('name'=>'submit', 'title'=>'Register')); ?></p>
<?php $this->endWidget();?>