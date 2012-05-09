<ul id="crumbs">
    <li><a href="<?php echo Yii::app()->request->baseUrl?>" title="Home page">Home</a></li>
    <li>Reset password</li>
</ul>

<?php $form = $this->beginWidget('CActiveForm', array('id' => 'frm', 'enableAjaxValidation' => true, 'enableClientValidation' => true)); ?>
<fieldset>
    <legend>Reset password</legend>

    <?php if(Yii::app()->user->hasFlash('contactSuccess')): ?>
    <div class="errorSummary successSummary">
        <ul>
            <li><?php echo Yii::app()->user->getFlash('contactSuccess'); ?></li>
        </ul>
    </div>

    <?php else:?>
        <?php echo $form->errorSummary($model, ''); ?>
        <p>
            <?php echo $form->labelEx($model, 'pass_new'); ?>
            <?php echo $form->passwordField($model, 'pass_new', array('class'=>'small-input')); ?>
        </p>
        <p>
            <?php echo $form->labelEx($model, 'pass_new_compare'); ?>
            <?php echo $form->passwordField($model, 'pass_new_compare', array('class'=>'small-input')); ?>
        </p>
        <p>
            <label>&nbsp;</label>
            <?php echo CHtml::submitButton('  Submit  ', array('class'=>'login', 'name'=>'submit')); ?>
        </p>
    <?php endif; ?>
</fieldset>
<?php $this->endWidget(); ?>