<div class="form">

<?php $form=$this->beginWidget('CActiveForm', array(
	'id'=>'log-form',
	'enableAjaxValidation'=>false,
)); ?>

	<p class="note">Fields with <span class="required">*</span> are required.</p>

	<?php echo $form->errorSummary($model); ?>

	<div class="row">
		<?php echo $form->labelEx($model,'log_type'); ?>
		<?php echo $form->textField($model,'log_type',array('size'=>45,'maxlength'=>45)); ?>
		<?php echo $form->error($model,'log_type'); ?>
	</div>

	<div class="row">
		<?php echo $form->labelEx($model,'detail'); ?>
		<?php echo $form->textField($model,'detail',array('size'=>60,'maxlength'=>320)); ?>
		<?php echo $form->error($model,'detail'); ?>
	</div>

	<div class="row">
		<?php echo $form->labelEx($model,'time'); ?>
		<?php echo $form->textField($model,'time'); ?>
		<?php echo $form->error($model,'time'); ?>
	</div>

	<div class="row">
		<?php echo $form->labelEx($model,'sender'); ?>
		<?php echo $form->textField($model,'sender',array('size'=>45,'maxlength'=>45)); ?>
		<?php echo $form->error($model,'sender'); ?>
	</div>

	<div class="row">
		<?php echo $form->labelEx($model,'receiver'); ?>
		<?php echo $form->textField($model,'receiver',array('size'=>45,'maxlength'=>45)); ?>
		<?php echo $form->error($model,'receiver'); ?>
	</div>

	<div class="row">
		<?php echo $form->labelEx($model,'value'); ?>
		<?php echo $form->textField($model,'value'); ?>
		<?php echo $form->error($model,'value'); ?>
	</div>

	<div class="row buttons">
		<?php echo CHtml::submitButton($model->isNewRecord ? 'Create' : 'Save'); ?>
	</div>

<?php $this->endWidget(); ?>

</div><!-- form -->