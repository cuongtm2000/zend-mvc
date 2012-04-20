<div class="form">

<?php $form=$this->beginWidget('CActiveForm', array(
	'id'=>'web-templates-form',
	'enableAjaxValidation'=>false,
)); ?>

	<p class="note">Fields with <span class="required">*</span> are required.</p>

	<?php echo $form->errorSummary($model); ?>

	<div class="row">
		<?php echo $form->labelEx($model,'template_id'); ?>
		<?php echo $form->textField($model,'template_id',array('size'=>6,'maxlength'=>6)); ?>
		<?php echo $form->error($model,'template_id'); ?>
	</div>

	<div class="row">
		<?php echo $form->labelEx($model,'template_name'); ?>
		<?php echo $form->textField($model,'template_name',array('size'=>45,'maxlength'=>45)); ?>
		<?php echo $form->error($model,'template_name'); ?>
	</div>

	<div class="row">
		<?php echo $form->labelEx($model,'detail'); ?>
		<?php echo $form->textArea($model,'detail',array('rows'=>6, 'cols'=>50)); ?>
		<?php echo $form->error($model,'detail'); ?>
	</div>

	<div class="row">
		<?php echo $form->labelEx($model,'price'); ?>
		<?php echo $form->textField($model,'price'); ?>
		<?php echo $form->error($model,'price'); ?>
	</div>

	<div class="row">
		<?php echo $form->labelEx($model,'download'); ?>
		<?php echo $form->textField($model,'download',array('size'=>45,'maxlength'=>45)); ?>
		<?php echo $form->error($model,'download'); ?>
	</div>

	<div class="row">
		<?php echo $form->labelEx($model,'source'); ?>
		<?php echo $form->textField($model,'source',array('size'=>60,'maxlength'=>100)); ?>
		<?php echo $form->error($model,'source'); ?>
	</div>

	<div class="row">
		<?php echo $form->labelEx($model,'width'); ?>
		<?php echo $form->textField($model,'width',array('size'=>45,'maxlength'=>45)); ?>
		<?php echo $form->error($model,'width'); ?>
	</div>

	<div class="row">
		<?php echo $form->labelEx($model,'pic_thumb'); ?>
		<?php echo $form->textField($model,'pic_thumb',array('size'=>60,'maxlength'=>100)); ?>
		<?php echo $form->error($model,'pic_thumb'); ?>
	</div>

	<div class="row">
		<?php echo $form->labelEx($model,'pic_full'); ?>
		<?php echo $form->textField($model,'pic_full',array('size'=>60,'maxlength'=>100)); ?>
		<?php echo $form->error($model,'pic_full'); ?>
	</div>

	<div class="row">
		<?php echo $form->labelEx($model,'pic_desc'); ?>
		<?php echo $form->textField($model,'pic_desc',array('size'=>60,'maxlength'=>100)); ?>
		<?php echo $form->error($model,'pic_desc'); ?>
	</div>

	<div class="row">
		<?php echo $form->labelEx($model,'created'); ?>
		<?php echo $form->textField($model,'created'); ?>
		<?php echo $form->error($model,'created'); ?>
	</div>

	<div class="row">
		<?php echo $form->labelEx($model,'enable'); ?>
		<?php echo $form->textField($model,'enable'); ?>
		<?php echo $form->error($model,'enable'); ?>
	</div>

	<div class="row">
		<?php echo $form->labelEx($model,'hoiit_web_templates_cat_cat_id'); ?>
		<?php echo $form->textField($model,'hoiit_web_templates_cat_cat_id'); ?>
		<?php echo $form->error($model,'hoiit_web_templates_cat_cat_id'); ?>
	</div>

	<div class="row">
		<?php echo $form->labelEx($model,'hoiit_usernames_username'); ?>
		<?php echo $form->textField($model,'hoiit_usernames_username',array('size'=>40,'maxlength'=>40)); ?>
		<?php echo $form->error($model,'hoiit_usernames_username'); ?>
	</div>

	<div class="row buttons">
		<?php echo CHtml::submitButton($model->isNewRecord ? 'Create' : 'Save'); ?>
	</div>

<?php $this->endWidget(); ?>

</div><!-- form -->