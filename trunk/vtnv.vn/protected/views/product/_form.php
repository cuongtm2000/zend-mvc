<div class="form">

<?php $form=$this->beginWidget('CActiveForm', array(
	'id'=>'product-form',
	'enableAjaxValidation'=>false,
)); ?>

	<p class="note">Fields with <span class="required">*</span> are required.</p>

	<?php echo $form->errorSummary($model); ?>

	<div class="row">
		<?php echo $form->labelEx($model,'title'); ?>
		<?php echo $form->textField($model,'title',array('size'=>60,'maxlength'=>100)); ?>
		<?php echo $form->error($model,'title'); ?>
	</div>

	<div class="row">
		<?php echo $form->labelEx($model,'titleen'); ?>
		<?php echo $form->textField($model,'titleen',array('size'=>60,'maxlength'=>100)); ?>
		<?php echo $form->error($model,'titleen'); ?>
	</div>

	<div class="row">
		<?php echo $form->labelEx($model,'postdate'); ?>
		<?php echo $form->textField($model,'postdate'); ?>
		<?php echo $form->error($model,'postdate'); ?>
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
		<?php echo $form->textField($model,'pic_desc',array('size'=>60,'maxlength'=>200)); ?>
		<?php echo $form->error($model,'pic_desc'); ?>
	</div>

	<div class="row">
		<?php echo $form->labelEx($model,'preview'); ?>
		<?php echo $form->textArea($model,'preview',array('rows'=>6, 'cols'=>50)); ?>
		<?php echo $form->error($model,'preview'); ?>
	</div>

	<div class="row">
		<?php echo $form->labelEx($model,'previewen'); ?>
		<?php echo $form->textArea($model,'previewen',array('rows'=>6, 'cols'=>50)); ?>
		<?php echo $form->error($model,'previewen'); ?>
	</div>

	<div class="row">
		<?php echo $form->labelEx($model,'detail'); ?>
		<?php echo $form->textArea($model,'detail',array('rows'=>6, 'cols'=>50)); ?>
		<?php echo $form->error($model,'detail'); ?>
	</div>

	<div class="row">
		<?php echo $form->labelEx($model,'detailen'); ?>
		<?php echo $form->textArea($model,'detailen',array('rows'=>6, 'cols'=>50)); ?>
		<?php echo $form->error($model,'detailen'); ?>
	</div>

	<div class="row">
		<?php echo $form->labelEx($model,'tag'); ?>
		<?php echo $form->textField($model,'tag',array('size'=>60,'maxlength'=>100)); ?>
		<?php echo $form->error($model,'tag'); ?>
	</div>

	<div class="row">
		<?php echo $form->labelEx($model,'description'); ?>
		<?php echo $form->textField($model,'description',array('size'=>60,'maxlength'=>250)); ?>
		<?php echo $form->error($model,'description'); ?>
	</div>

	<div class="row">
		<?php echo $form->labelEx($model,'hits'); ?>
		<?php echo $form->textField($model,'hits'); ?>
		<?php echo $form->error($model,'hits'); ?>
	</div>

	<div class="row">
		<?php echo $form->labelEx($model,'record_order'); ?>
		<?php echo $form->textField($model,'record_order'); ?>
		<?php echo $form->error($model,'record_order'); ?>
	</div>

	<div class="row">
		<?php echo $form->labelEx($model,'unit'); ?>
		<?php echo $form->textField($model,'unit'); ?>
		<?php echo $form->error($model,'unit'); ?>
	</div>

	<div class="row">
		<?php echo $form->labelEx($model,'hot'); ?>
		<?php echo $form->textField($model,'hot'); ?>
		<?php echo $form->error($model,'hot'); ?>
	</div>

	<div class="row">
		<?php echo $form->labelEx($model,'specials'); ?>
		<?php echo $form->textField($model,'specials'); ?>
		<?php echo $form->error($model,'specials'); ?>
	</div>

	<div class="row">
		<?php echo $form->labelEx($model,'extra_field1'); ?>
		<?php echo $form->textField($model,'extra_field1',array('size'=>60,'maxlength'=>100)); ?>
		<?php echo $form->error($model,'extra_field1'); ?>
	</div>

	<div class="row">
		<?php echo $form->labelEx($model,'extra_field2'); ?>
		<?php echo $form->textField($model,'extra_field2',array('size'=>60,'maxlength'=>100)); ?>
		<?php echo $form->error($model,'extra_field2'); ?>
	</div>

	<div class="row">
		<?php echo $form->labelEx($model,'extra_field3'); ?>
		<?php echo $form->textField($model,'extra_field3',array('size'=>60,'maxlength'=>100)); ?>
		<?php echo $form->error($model,'extra_field3'); ?>
	</div>

	<div class="row">
		<?php echo $form->labelEx($model,'extra_field4'); ?>
		<?php echo $form->textField($model,'extra_field4',array('size'=>60,'maxlength'=>100)); ?>
		<?php echo $form->error($model,'extra_field4'); ?>
	</div>

	<div class="row">
		<?php echo $form->labelEx($model,'enable'); ?>
		<?php echo $form->textField($model,'enable'); ?>
		<?php echo $form->error($model,'enable'); ?>
	</div>

	<div class="row">
		<?php echo $form->labelEx($model,'dos_module_item_cat_cat_id'); ?>
		<?php echo $form->textField($model,'dos_module_item_cat_cat_id'); ?>
		<?php echo $form->error($model,'dos_module_item_cat_cat_id'); ?>
	</div>

	<div class="row">
		<?php echo $form->labelEx($model,'dos_module_usernames_username'); ?>
		<?php echo $form->textField($model,'dos_module_usernames_username',array('size'=>45,'maxlength'=>45)); ?>
		<?php echo $form->error($model,'dos_module_usernames_username'); ?>
	</div>

	<div class="row buttons">
		<?php echo CHtml::submitButton($model->isNewRecord ? 'Create' : 'Save'); ?>
	</div>

<?php $this->endWidget(); ?>

</div><!-- form -->