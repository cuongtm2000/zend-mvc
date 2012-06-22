<?php $form = $this->beginWidget('CActiveForm', array('id' => 'frm', 'enableAjaxValidation' => true, 'enableClientValidation' => true)); ?>
<fieldset>
    <legend>Đổi mật khẩu</legend>
    <?php echo $form->errorSummary($model, ''); ?>
    <p class="clear">
        <?php echo $form->labelEx($model, 'pass_new') ?>
        <?php echo $form->passwordField($model, 'pass_new', $htmlOptions=array('class'=>'txt-large')); ?>
    </p>
    <p class="clear">
        <?php echo $form->labelEx($model, 'pass_new_compare') ?>
        <?php echo $form->passwordField($model, 'pass_new_compare', $htmlOptions=array('class'=>'txt-large')); ?>
    </p>
    <p>
        <label>&nbsp;</label>
        <?php echo CHtml::submitButton('Edit', array('name' => 'submit', 'class' => 'login', 'title' => 'Edit')); ?>
    </p>
</fieldset>
<?php $this->endWidget(); ?>