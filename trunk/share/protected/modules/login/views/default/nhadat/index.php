<div class="frame-product-info">
<h1 class="title-right"><span>Dang nhap</span></h1>
    <?php $form = $this->beginWidget('CActiveForm', array('id' => 'frm', 'enableAjaxValidation' => true, 'enableClientValidation' => true, 'htmlOptions' => array('class' => 'form-all'))); ?>
    <fieldset>

        <?php if (Yii::app()->user->hasFlash('message')): ?>
            <div class="errorSummary successSummary">
                <ul>
                    <li><?php echo Yii::app()->user->getFlash('message'); ?></li>
                </ul>
            </div>
        <?php endif; ?>

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
				<?php echo $form->label($model, 'rememberMe', array('class' => 'remember')); ?>
                <?php echo $form->checkBox($model, 'rememberMe', array('class' => 'remember-check')); ?>
                
            </li>
            <li>
                <label>&nbsp;</label>
                <?php echo CHtml::submitButton(' Dang nhap ', array('class' => 'singin', 'name' => 'submit')); ?>
            </li>
        </ul>
    </fieldset>
    <?php $this->endWidget(); ?>
</div> <!--End frame tent right-->