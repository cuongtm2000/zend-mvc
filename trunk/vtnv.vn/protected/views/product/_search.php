<div class="wide form">

<?php $form=$this->beginWidget('CActiveForm', array(
	'action'=>Yii::app()->createUrl($this->route),
	'method'=>'get',
)); ?>

	<div class="row">
		<?php echo $form->label($model,'record_id'); ?>
		<?php echo $form->textField($model,'record_id'); ?>
	</div>

	<div class="row">
		<?php echo $form->label($model,'title'); ?>
		<?php echo $form->textField($model,'title',array('size'=>60,'maxlength'=>100)); ?>
	</div>

	<div class="row">
		<?php echo $form->label($model,'titleen'); ?>
		<?php echo $form->textField($model,'titleen',array('size'=>60,'maxlength'=>100)); ?>
	</div>

	<div class="row">
		<?php echo $form->label($model,'postdate'); ?>
		<?php echo $form->textField($model,'postdate'); ?>
	</div>

	<div class="row">
		<?php echo $form->label($model,'pic_thumb'); ?>
		<?php echo $form->textField($model,'pic_thumb',array('size'=>60,'maxlength'=>100)); ?>
	</div>

	<div class="row">
		<?php echo $form->label($model,'pic_full'); ?>
		<?php echo $form->textField($model,'pic_full',array('size'=>60,'maxlength'=>100)); ?>
	</div>

	<div class="row">
		<?php echo $form->label($model,'pic_desc'); ?>
		<?php echo $form->textField($model,'pic_desc',array('size'=>60,'maxlength'=>200)); ?>
	</div>

	<div class="row">
		<?php echo $form->label($model,'preview'); ?>
		<?php echo $form->textArea($model,'preview',array('rows'=>6, 'cols'=>50)); ?>
	</div>

	<div class="row">
		<?php echo $form->label($model,'previewen'); ?>
		<?php echo $form->textArea($model,'previewen',array('rows'=>6, 'cols'=>50)); ?>
	</div>

	<div class="row">
		<?php echo $form->label($model,'detail'); ?>
		<?php echo $form->textArea($model,'detail',array('rows'=>6, 'cols'=>50)); ?>
	</div>

	<div class="row">
		<?php echo $form->label($model,'detailen'); ?>
		<?php echo $form->textArea($model,'detailen',array('rows'=>6, 'cols'=>50)); ?>
	</div>

	<div class="row">
		<?php echo $form->label($model,'tag'); ?>
		<?php echo $form->textField($model,'tag',array('size'=>60,'maxlength'=>100)); ?>
	</div>

	<div class="row">
		<?php echo $form->label($model,'description'); ?>
		<?php echo $form->textField($model,'description',array('size'=>60,'maxlength'=>250)); ?>
	</div>

	<div class="row">
		<?php echo $form->label($model,'hits'); ?>
		<?php echo $form->textField($model,'hits'); ?>
	</div>

	<div class="row">
		<?php echo $form->label($model,'record_order'); ?>
		<?php echo $form->textField($model,'record_order'); ?>
	</div>

	<div class="row">
		<?php echo $form->label($model,'unit'); ?>
		<?php echo $form->textField($model,'unit'); ?>
	</div>

	<div class="row">
		<?php echo $form->label($model,'hot'); ?>
		<?php echo $form->textField($model,'hot'); ?>
	</div>

	<div class="row">
		<?php echo $form->label($model,'specials'); ?>
		<?php echo $form->textField($model,'specials'); ?>
	</div>

	<div class="row">
		<?php echo $form->label($model,'extra_field1'); ?>
		<?php echo $form->textField($model,'extra_field1',array('size'=>60,'maxlength'=>100)); ?>
	</div>

	<div class="row">
		<?php echo $form->label($model,'extra_field2'); ?>
		<?php echo $form->textField($model,'extra_field2',array('size'=>60,'maxlength'=>100)); ?>
	</div>

	<div class="row">
		<?php echo $form->label($model,'extra_field3'); ?>
		<?php echo $form->textField($model,'extra_field3',array('size'=>60,'maxlength'=>100)); ?>
	</div>

	<div class="row">
		<?php echo $form->label($model,'extra_field4'); ?>
		<?php echo $form->textField($model,'extra_field4',array('size'=>60,'maxlength'=>100)); ?>
	</div>

	<div class="row">
		<?php echo $form->label($model,'enable'); ?>
		<?php echo $form->textField($model,'enable'); ?>
	</div>

	<div class="row">
		<?php echo $form->label($model,'dos_module_item_cat_cat_id'); ?>
		<?php echo $form->textField($model,'dos_module_item_cat_cat_id'); ?>
	</div>

	<div class="row">
		<?php echo $form->label($model,'dos_module_usernames_username'); ?>
		<?php echo $form->textField($model,'dos_module_usernames_username',array('size'=>45,'maxlength'=>45)); ?>
	</div>

	<div class="row buttons">
		<?php echo CHtml::submitButton('Search'); ?>
	</div>

<?php $this->endWidget(); ?>

</div><!-- search-form -->