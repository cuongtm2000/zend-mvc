<ul id="crumbs">
    <li><a href="<?php echo Yii::app()->request->baseUrl?>" title="Home page">Home</a></li>
    <li>Login</li>
</ul>
<?php $form = $this->beginWidget('CActiveForm', array('id' => 'frm', 'enableAjaxValidation' => true, 'enableClientValidation' => true)); ?>
<fieldset>
    <legend>Login</legend>
    <?php if(Yii::app()->user->hasFlash('message')): ?>
    <div class="errorSummary successSummary">
        <ul>
            <li><?php echo Yii::app()->user->getFlash('message'); ?></li>
        </ul>
    </div>
    <?php endif; ?>
    <?php echo $form->errorSummary($model, ''); ?>
    <p>
        <?php echo $form->labelEx($model, 'username') ?>
        <?php echo $form->textField($model, 'username', array('class'=>'small-input')); ?>
    </p>
    <p>
        <?php echo $form->labelEx($model, 'password'); ?>
        <?php echo $form->passwordField($model, 'password', array('class'=>'small-input')); ?>
    </p>
    <p>
        <label>&nbsp;</label>
        <?php echo $form->checkBox($model, 'rememberMe', array('class'=>'remember')); ?>
        <?php echo $form->label($model, 'rememberMe', array('class'=>'remember')); ?>
    </p>
    <p>
        <label>&nbsp;</label>
        <?php echo CHtml::submitButton('      Login      ', array('class'=>'login', 'name'=>'submit')); ?>
        <a href="<?php echo Yii::app()->request->baseUrl?>/forgot-password" title="Forgot password">Forgot password</a>
    </p>
</fieldset>
<?php $this->endWidget(); ?>