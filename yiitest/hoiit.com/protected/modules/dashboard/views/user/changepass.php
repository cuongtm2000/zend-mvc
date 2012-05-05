<ul id="crumbs">
	<li><a href="<?php echo Yii::app()->request->baseUrl ?>/">Home</a></li>
	<li><a href="<?php echo Yii::app()->request->baseUrl ?>/dashboard">Dashboard</a></li>
	<li><a href="<?php echo Yii::app()->request->baseUrl ?>/user">User</a></li>
	<li>Change password</li>
</ul>
<?php $form = $this->beginWidget('CActiveForm', array('id' => 'frm', 'enableAjaxValidation' => true, 'enableClientValidation' => true)); ?>
<fieldset>
	<legend>Change password</legend>
    <?php if(Yii::app()->user->hasFlash('ChangeSuccess')): ?>
        <div class="txt-green"><?php echo Yii::app()->user->getFlash('ChangeSuccess'); ?></div>
    <?php else:?>
        <?php echo $form->errorSummary($model, ''); ?>
        <p>
            <?php echo $form->labelEx($model, 'pass_old') ?>
            <?php echo $form->passwordField($model, 'pass_old', array('class'=>'small-input')); ?>
        </p>
        <p>
            <?php echo $form->labelEx($model, 'pass_new') ?>
            <?php echo $form->passwordField($model, 'pass_new', array('class'=>'small-input')); ?>
        </p>
        <p>
            <?php echo $form->labelEx($model, 'pass_new_compare') ?>
            <?php echo $form->passwordField($model, 'pass_new_compare', array('class'=>'small-input')); ?>
        </p>
        <p>
            <label>&nbsp;</label>
            <?php echo CHtml::submitButton('  Submit  ', array('class'=>'login', 'name'=>'submit')); ?>
        </p>
    <?php endif?>
</fieldset>
<?php $this->endWidget(); ?>