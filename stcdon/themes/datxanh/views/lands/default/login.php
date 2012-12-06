<?php $form = $this->beginWidget('CActiveForm', array('id' => 'frm', 'enableAjaxValidation' => true, 'enableClientValidation' => true, 'htmlOptions' => array('class' => 'form-all'))); ?>
<?php $this->pageTitle = 'Đăng nhập'; $this->description = 'Đăng nhập website quản lý đăng tin, xem thông báo, quản lý sản phẩm các thông tin mới nhất từ sản giao dịch nhà đất'?>
<fieldset>
    <?php echo $form->errorSummary($model, ''); ?>
    <ul class="bt-frm-login login">
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
            <?php echo CHtml::submitButton(' Đăng nhập ', array('name' => 'submit','class' => 'button-login-2')); ?>
        </li>
    </ul>
</fieldset>
<?php $this->endWidget(); ?>