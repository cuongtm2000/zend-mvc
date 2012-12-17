<?php $form = $this->beginWidget('CActiveForm', array('id'=>'frm', 'enableAjaxValidation'=>true, 'enableClientValidation' =>true,));?>
	<?php echo $form->errorSummary($model, ''); ?>
	<p>
		<?php echo $form->labelEx($model, 'username') ?>
		<?php echo $form->textField($model, 'username'); ?>
	</p>
	<p>
		<?php echo $form->labelEx($model, 'password') ?>
		<?php echo $form->passwordField($model, 'password'); ?>
	</p>
	<p>
		<?php echo $form->checkBox($model, 'rememberMe'); ?>
        <?php echo $form->label($model, 'rememberMe'); ?>
	</p>
	<p><?php echo CHtml::submitButton('Register', array('name'=>'submit', 'title'=>'Register')); ?></p>
<?php $this->endWidget();?>