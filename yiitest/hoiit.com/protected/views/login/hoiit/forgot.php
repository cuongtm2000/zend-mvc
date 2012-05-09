<ul id="crumbs">
    <li><a href="<?php echo Yii::app()->request->baseUrl?>" title="Home page">Home</a></li>
    <li>Forgot password</li>
</ul>

<?php $form = $this->beginWidget('CActiveForm', array('id' => 'frm', 'enableAjaxValidation' => true, 'enableClientValidation' => true)); ?>
<fieldset>
    <legend>Forgot password</legend>

    <?php if(Yii::app()->user->hasFlash('contactSuccess')): ?>
    <div class="errorSummary successSummary">
        <ul>
            <li><?php echo Yii::app()->user->getFlash('contactSuccess'); ?></li>
        </ul>
    </div>
    <?php else:?>

    <?php echo $form->errorSummary($model, ''); ?>
    <p>
        <?php echo $form->labelEx($model, 'email') ?>
        <?php echo $form->textField($model, 'email', array('class'=>'small-input')); ?>
        <?php echo CHtml::submitButton('  Submit  ', array('class'=>'login', 'name'=>'submit')); ?>
    </p>
    <?php endif; ?>
</fieldset>
<?php $this->endWidget(); ?>