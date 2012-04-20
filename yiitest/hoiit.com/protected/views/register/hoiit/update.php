<ul id="crumbs">
    <li><a href="<?php echo Yii::app()->request->baseUrl ?>/">Home</a></li>
    <li><a href="<?php echo Yii::app()->request->baseUrl ?>/register">Register</a></li>
    <li><a href="<?php echo Yii::app()->request->baseUrl ?>/register">Basic infomation</a></li>
    <li>Update profile</li>
</ul>
<?php $form = $this->beginWidget('CActiveForm', array('id' => 'frm', 'enableAjaxValidation' => true, 'enableClientValidation' => true, 'htmlOptions'=>array('enctype' =>'multipart/form-data'))); ?>
<fieldset>
    <legend>Register user</legend>
    <?php echo $form->errorSummary($model, ''); ?>
    <p>
        <?php echo $form->labelEx($model, 'phone') ?>
        <?php echo $form->textField($model, 'phone', array('class'=>'small-input')); ?>
        <span id="phoneinfo"></span>
    </p>
    <p>
        <?php echo $form->labelEx($model, 'yahoo') ?>
        <?php echo $form->textField($model, 'yahoo', array('class'=>'small-input')); ?>
        <span id="yahooinfo"></span>
    </p>
    <p>
        <?php echo $form->labelEx($model, 'skype') ?>
        <?php echo $form->textField($model, 'skype', array('class'=>'small-input')); ?>
        <span id="skypeinfo"></span>
    </p>
    <p>
        <?php echo $form->labelEx($model, 'picture') ?>
        <?php echo $form->fileField($model, 'picture', array('size'=>'36', 'class'=>'small-input')); ?>
    </p>
    <p>
        <?php echo $form->labelEx($model, 'detail') ?>
        <?php echo $form->textArea($model, 'detail', array('cols'=>30, 'rows'=>10)); ?>
        <span id="detailinfo"></span>
    </p>
    <p>
        <?php echo $form->labelEx($model, 'parent') ?>
        <?php echo $form->textField($model, 'parent', array('class'=>'small-input')); ?>
        <span id="parentinfo"></span>
    </p>
    <p>
        <label>&nbsp;</label>
        <?php echo CHtml::submitButton('  Submit  ', array('class'=>'login', 'name'=>'submit')); ?>
    </p>
</fieldset>
<?php $this->endWidget(); ?>