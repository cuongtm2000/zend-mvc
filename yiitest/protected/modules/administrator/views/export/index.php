<?php $form = $this->beginWidget('CActiveForm', array('id' => 'frm', 'enableAjaxValidation' => true, 'enableClientValidation' => true, 'htmlOptions' => array('enctype' => 'multipart/form-data'))); ?>
    <fieldset>
		<legend>Export</legend>
		<input name="user" type="text" value="" class="txt-large" />
		<?php echo CHtml::submitButton('Database', array('name'=>'submit-data', 'class'=>'login', 'title'=>'Export Database')); ?>
		<?php echo CHtml::submitButton('File', array('name'=>'submit-file', 'class'=>'login', 'title'=>'Export File')); ?>
	</fieldset>
<?php $this->endWidget();?>