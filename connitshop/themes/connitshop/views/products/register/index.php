<?php $this->breadcrumbs = array($this->lang['register']); ?>
<h3 class="title-box"><span><?php echo $this->lang['register']?></span></h3>
<div class="frame-tent-right">
<?php $form = $this->beginWidget('CActiveForm', array('id'=>'frm', 'enableAjaxValidation'=>true, 'enableClientValidation' =>true,));?>
	<?php echo $form->errorSummary($model, ''); ?>
	<ul class="bt-frm-register">
		<li>
			<?php echo $form->labelEx($model, 'user_email') ?>
			<?php echo $form->textField($model, 'user_email'); ?>
		</li>
		<li>
			<?php echo $form->labelEx($model, 'user_pass') ?>
			<?php echo $form->passwordField($model, 'user_pass'); ?>
		</li>
		<li>
			<?php echo $form->labelEx($model, 'user_fullname') ?>
			<?php echo $form->textField($model, 'user_fullname'); ?>
		</li>
		<li>
			<?php echo $form->labelEx($model, 'user_cmnd') ?>
			<?php echo $form->textField($model, 'user_cmnd'); ?>
		</li>
		<li>
			<?php echo $form->labelEx($model, 'user_sex') ?>
			<?php echo $form->radioButtonList($model, 'user_sex' , array('0'=>'Nu', '1'=>'Nam'), array('separator'=>'&nbsp;&nbsp;','class' => 'select-radio')); ?>
		</li>
		<li>
			<?php echo $form->labelEx($model, 'user_address') ?>
			<?php echo $form->textField($model, 'user_address'); ?>
		</li>
		<li>
			<?php echo $form->labelEx($model, 'user_phone') ?>
			<?php echo $form->textField($model, 'user_phone'); ?>
		</li>
		<li><label>&nbsp;</label>
		<?php echo CHtml::submitButton('Register', array('name'=>'submit', 'title'=>'Register','class'=>'singin')); ?></li>
	</ul>
<?php $this->endWidget();?>
</div>