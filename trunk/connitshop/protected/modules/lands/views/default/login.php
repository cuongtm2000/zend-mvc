<?php $form = $this->beginWidget('CActiveForm', array('id' => 'frm', 'enableAjaxValidation' => true, 'enableClientValidation' => true, 'htmlOptions' => array('class' => 'form-all'))); ?>
<fieldset>
    <?php echo $form->errorSummary($model, ''); ?>
    <ul class="bt-frm-login">
        <li><?php echo $form->labelEx($model, 'username') ?>
            <?php echo $form->textField($model, 'username', array('class' => 'small-input')); ?>
        </li>
        <li>
            <?php echo $form->labelEx($model, 'password'); ?>
            <?php echo $form->passwordField($model, 'password', array('class' => 'small-input')); ?>
        </li>
        <li>
            <label>&nbsp;</label>
            <?php echo $form->checkBox($model, 'rememberMe', array('class' => 'remember-check')); ?>
            <?php echo $form->label($model, 'rememberMe', array('class' => 'remember')); ?>
        </li>
        <li>
            <label>&nbsp;</label>
            <?php echo CHtml::submitButton(' Đăng nhập ', array('name' => 'submit')); ?>
        </li>
    </ul>
</fieldset>
<?php $this->endWidget(); ?>