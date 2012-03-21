<h1 class="title-right"><span>Đổi mật khẩu</span></h1>
<div class="frame-tent-right">
	<p>Bạn có thể thay đổi mật khẩu bằng cách điền thông tin bên dưới</p>

	<?php $form = $this->beginWidget('CActiveForm', array('id' => 'frm', 'enableAjaxValidation' => true, 'enableClientValidation' => true)); ?>
		<?php echo $form->errorSummary($model, ''); ?>
		<ul class="chanpass view-log frame-contact">
			<li>
				<?php echo $form->labelEx($model, 'pass_old') ?>
				<?php echo $form->passwordField($model, 'pass_old'); ?>
			</li>
			<li>
				<?php echo $form->labelEx($model, 'pass_new') ?>
				<?php echo $form->passwordField($model, 'pass_new'); ?>
			</li>
			<li>
				<?php echo $form->labelEx($model, 'pass_new_compare') ?>
				<?php echo $form->passwordField($model, 'pass_new_compare'); ?>
			</li>
			<li>
				<label>&nbsp;</label>
				<?php echo CHtml::submitButton('Đổi mật khẩu', array('name' => 'submit', 'class' => 'bton-user', 'title' => 'Đổi mật khẩu')); ?>
			</li>
		</ul>
	<?php $this->endWidget(); ?>
</div>