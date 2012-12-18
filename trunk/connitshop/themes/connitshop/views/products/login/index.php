<?php $this->breadcrumbs = array($this->lang['login']); ?>
<h3 class="title-box"><span><?php echo $this->lang['login']?></span></h3>
<div class="frame-tent-right">
<?php $form = $this->beginWidget('CActiveForm', array('id'=>'frm', 'enableAjaxValidation'=>true, 'enableClientValidation' =>true,));?>
	<?php echo $form->errorSummary($model, ''); ?>
	<ul class="bt-frm-register">
	<li>
		<?php echo $form->labelEx($model, 'username') ?>
		<?php echo $form->textField($model, 'username'); ?>
	</li>
	<li>
		<?php echo $form->labelEx($model, 'password') ?>
		<?php echo $form->passwordField($model, 'password'); ?>
	</li>
	<li><label>&nbsp;</label>
		<?php echo $form->checkBox($model, 'rememberMe',array('class'=>'remember-check')); ?>
        <?php echo $form->label($model, 'rememberMe',array('class'=>'remember')); ?>
	</li>
	<li><label>&nbsp;</label>
		<?php echo CHtml::submitButton('Login', array('name'=>'submit', 'title'=>'Login','class'=>'singin')); ?></li>
	</ul>
<?php $this->endWidget();?>
</div>