<div class="wide form">

<?php $form=$this->beginWidget('CActiveForm', array(
	'action'=>Yii::app()->createUrl($this->route),
	'method'=>'get',
)); ?>
	<ul class="frame-contact">
	
		<li>
			<?php echo $form->label($model,'username'); ?>
			<?php echo $form->textField($model,'username',array('size'=>45,'maxlength'=>45)); ?>
		</li>

		<li>
			<?php echo $form->label($model,'create_date'); ?>
			<?php echo $form->textField($model,'create_date'); ?>
		</li>

		<li>
			<?php echo $form->label($model,'full_name'); ?>
			<?php echo $form->textField($model,'full_name',array('size'=>60,'maxlength'=>150)); ?>
		</li>

		<li>
			<?php echo $form->label($model,'email'); ?>
			<?php echo $form->textField($model,'email',array('size'=>45,'maxlength'=>45)); ?>
		</li>

		<li>
			<?php echo $form->label($model,'birthday'); ?>
			<?php echo $form->textField($model,'birthday'); ?>
		</li>

		<li>
			<?php echo $form->label($model,'address'); ?>
			<?php echo $form->textField($model,'address',array('size'=>60,'maxlength'=>200)); ?>
		<li>

		<li>
			<?php echo $form->label($model,'cmnd'); ?>
			<?php echo $form->textField($model,'cmnd',array('size'=>10,'maxlength'=>10)); ?>
		</li>

		<li>
			<?php echo $form->label($model,'phone'); ?>
			<?php echo $form->textField($model,'phone',array('size'=>15,'maxlength'=>15)); ?>
		</li>

		<li>
			<?php echo $form->label($model,'bank_number'); ?>
			<?php echo $form->textField($model,'bank_number',array('size'=>20,'maxlength'=>20)); ?>
		</li>

		<li>
			<?php echo $form->label($model,'bank_name'); ?>
			<?php echo $form->textField($model,'bank_name',array('size'=>60,'maxlength'=>100)); ?>
		</li>

		<li>
			<?php echo $form->label($model,'user_gioithieu'); ?>
			<?php echo $form->textField($model,'user_gioithieu',array('size'=>45,'maxlength'=>45)); ?>
		</li>

		<li>
			<?php echo $form->label($model,'balance'); ?>
			<?php echo $form->textField($model,'balance',array('size'=>45,'maxlength'=>45)); ?>
		</li>

		<li>
			<?php echo $form->label($model,'user_group'); ?>
			<?php echo $form->textField($model,'user_group',array('size'=>45,'maxlength'=>45)); ?>
		</li>

		<li>
			<?php echo $form->label($model,'level'); ?>
			<?php echo $form->textField($model,'level'); ?>
		</li>

		<li>
			<?php echo $form->label($model,'enable'); ?>
			<?php echo $form->textField($model,'enable'); ?>
		</li>

		<li>
			<label>&nbsp;</label>
			<?php echo CHtml::submitButton('Search',array('class'=>'bton-dk')); ?>
		</li>
	</ul>
<?php $this->endWidget(); ?>

</div><!-- search-form -->