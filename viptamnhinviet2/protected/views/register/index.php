<?php 
$this->menu = array(
    array('label' => 'List User', 'url' => array('index')),
    array('label' => 'Manage User', 'url' => array('admin')),
);
?>

<h1 class="title-right"><span>Create User</span></h1>

<div class="frame-tent-right">

    <?php
    $form = $this->beginWidget('CActiveForm', array('id' => 'user-form', 'enableAjaxValidation' => false, 'htmlOptions'=>array('class'=>'form-all')));
    ?>

    <p class="note">Fields with <span class="required">*</span> are required.</p>

        <?php echo $form->errorSummary($model); ?>
	<ul>
		<li class="row">
			<?php echo $form->labelEx($model, 'username'); ?>
			<?php echo $form->textField($model, 'username', array('size' => 45, 'maxlength' => 45)); ?>
			<?php echo $form->error($model, 'username'); ?>
		</li>

		<li class="row">
			<?php echo $form->labelEx($model, 'password'); ?>
			<?php echo $form->passwordField($model, 'password', array('size' => 45, 'maxlength' => 45)); ?>
			<?php echo $form->error($model, 'password'); ?>
		</li>

		<li class="row">
			<?php echo $form->labelEx($model, 'password2'); ?>
			<?php echo $form->passwordField($model, 'password2', array('size' => 45, 'maxlength' => 45)); ?>
			<?php echo $form->error($model, 'password2'); ?>
		</li>


		<li class="row">
			<?php echo $form->labelEx($model, 'full_name'); ?>
			<?php echo $form->textField($model, 'full_name', array('size' => 60, 'maxlength' => 150)); ?>
			<?php echo $form->error($model, 'full_name'); ?>
		</li>

		<li class="row">
			<?php echo $form->labelEx($model, 'email'); ?>
			<?php echo $form->textField($model, 'email', array('size' => 45, 'maxlength' => 45)); ?>
			<?php echo $form->error($model, 'email'); ?>
		</li>

		<li class="row">
			<?php echo $form->labelEx($model, 'birthday'); ?>

			<?php
			
				$this->widget('zii.widgets.jui.CJuiDatePicker', array(
				'model' => $model,
				'attribute'=>'birthday',
				// additional javascript options for the date picker plugin
				'options' => array(
					'showAnim' => 'fold',
					'autoSize' => true,
					'dateFormat' => 'dd/mm/yy',
					'changeMonth' => true,
					'changeYear' => true,
					'yearRange' => '1930:-18',
					'defaultDate'=>'01/01/1980',
				),
				'htmlOptions' => array(
					'style' => 'height:20px;'
				),
			));
			?>
	<?php echo $form->error($model, 'birthday'); ?>

		</li>

		<li class="row">
			<?php echo $form->labelEx($model, 'address'); ?>
			<?php echo $form->textField($model, 'address', array('size' => 60, 'maxlength' => 200)); ?>
			<?php echo $form->error($model, 'address'); ?>
		</li>

		<li class="row">
			<?php echo $form->labelEx($model, 'cmnd'); ?>
			<?php echo $form->textField($model, 'cmnd', array('size' => 10, 'maxlength' => 10)); ?>
			<?php echo $form->error($model, 'cmnd'); ?>
		</li>

		<li class="row">
			<?php echo $form->labelEx($model, 'phone'); ?>
			<?php echo $form->textField($model, 'phone', array('size' => 15, 'maxlength' => 15)); ?>
			<?php echo $form->error($model, 'phone'); ?>
		</li>

		<li class="row">
			<?php echo $form->labelEx($model, 'bank_number'); ?>
			<?php echo $form->textField($model, 'bank_number', array('size' => 20, 'maxlength' => 20)); ?>
			<?php echo $form->error($model, 'bank_number'); ?>
		</li>

		<li class="row">
			<?php echo $form->labelEx($model, 'bank_name'); ?>
			<?php echo $form->textField($model, 'bank_name', array('size' => 60, 'maxlength' => 100)); ?>
			<?php echo $form->error($model, 'bank_name'); ?>
		</li>

		<li class="row">
			<?php echo $form->labelEx($model, 'user_gioithieu'); ?>
			<?php echo $form->textField($model, 'user_gioithieu', array('size' => 45, 'maxlength' => 45)); ?>
			<?php echo $form->error($model, 'user_gioithieu'); ?>
		</li>

		<li class="row buttons">
			<label>&nbsp;</label>
			<?php echo CHtml::submitButton('Create',array('class'=>'login')); ?>
		</li>
	</ul>
<?php $this->endWidget(); ?>

</div>
<!-- form -->