<?php
$this->pageTitle=Yii::app()->name . ' - Contact Us';

?>

<h1 class="title-right"><span>Contact Us</span></h1>

<?php if(Yii::app()->user->hasFlash('contact')): ?>

<div class="flash-success">
	<?php echo Yii::app()->user->getFlash('contact'); ?>
</div>

<?php else: ?>
<div class="frame-tent-right">
	<div class="frame-title">
	  About company info
	</div>
	<p>
	If you have business inquiries or other questions, please fill out the following form to contact us. Thank you.
	</p>


<?php $form=$this->beginWidget('CActiveForm', array(
	'id'=>'contact-form',
	'enableClientValidation'=>true,
	'clientOptions'=>array(
		'validateOnSubmit'=>true,
	),

)); ?>

	<p class="note">Fields with <span class="required">*</span> are required.</p>

	<?php echo $form->errorSummary($model); ?>
	<ul class="frame-contact">
		<li class="row">
			<?php echo $form->labelEx($model,'name'); ?>
			<?php echo $form->textField($model,'name'); ?>
			<?php echo $form->error($model,'name'); ?>
		</li>

		<li class="row">
			<?php echo $form->labelEx($model,'email'); ?>
			<?php echo $form->textField($model,'email'); ?>
			<?php echo $form->error($model,'email'); ?>
		</li>

		<li class="row">
			<?php echo $form->labelEx($model,'subject'); ?>
			<?php echo $form->textField($model,'subject',array('size'=>60,'maxlength'=>128)); ?>
			<?php echo $form->error($model,'subject'); ?>
		</li>

		<li class="row">
			<?php echo $form->labelEx($model,'body'); ?>
			<?php echo $form->textArea($model,'body',array('rows'=>8, 'cols'=>50)); ?>
			<?php echo $form->error($model,'body'); ?>
			<img src="<?php echo Yii::app()->theme->baseUrl; ?>/images/image11.jpg" alt="Noidung" class="img-contact"  />
		</li>

		<li class="row buttons">
			<label>&nbsp;</label>
			<?php echo CHtml::submitButton('Submit',array('class'=>'bton-dk')); ?>
		</li>
	</ul>
<?php $this->endWidget(); ?>

</div><!-- form -->

<?php endif; ?>