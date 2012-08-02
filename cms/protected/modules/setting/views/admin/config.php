<?php if(Yii::app()->user->hasFlash('message')): ?><p class="success"><?php echo Yii::app()->user->getFlash('message'); ?></p><?php endif?>
<?php $form = $this->beginWidget('CActiveForm', array('id' => 'frm', 'enableAjaxValidation' => true, 'enableClientValidation' => true)); ?>
<fieldset>
    <legend>System Configuration</legend>
    <?php echo $form->errorSummary($model, ''); ?>
    <p class="clear">
        <?php echo $form->labelEx($model, 'title') ?>
        <?php echo $form->textField($model, 'title', array('class'=>'txt-large-x')); ?>
    </p>
    <p class="clear">
        <?php echo $form->labelEx($model, 'default_language') ?>
        <?php echo $form->dropDownList($model, 'default_language', Language::model()->listLanguage()); ?>
    </p>
    <p class="clear">
        <?php echo $form->labelEx($model, 'keywords') ?>
        <?php echo $form->textField($model, 'keywords', array('class'=>'txt-large-x')); ?>
    </p>
    <p class="clear">
        <label>&nbsp;</label>
        <?php echo CHtml::submitButton('Update Configuration', array('name' => 'submit', 'class' => 'login', 'title' => 'Update Configuration')); ?>
    </p>
</fieldset>
<?php $this->endWidget(); ?>