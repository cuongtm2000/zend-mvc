<?php $form = $this->beginWidget('CActiveForm', array('id' => 'frm', 'enableAjaxValidation' => true, 'enableClientValidation' => true)); ?>
<fieldset>
	<legend>Code Google analytics</legend>
	<p class="clear">
		<label>Code</label>
		<textarea rows="15" cols="10" name="analytics"><?php echo $item?></textarea>
	</p>
	<?php if(Yii::app()->user->role == 'administrator'):?>
		<p>
			<label>&nbsp;</label>
			<?php echo CHtml::submitButton($this->lang['update'], array('name' => 'submit', 'class' => 'login', 'title' => $this->lang['update'])); ?>
		</p>
	<?php endif?>
</fieldset>
<?php $this->endWidget(); ?>