<?php $form = $this->beginWidget('CActiveForm', array('id'=>'frm', 'enableAjaxValidation'=>true, 'enableClientValidation' =>true, 'htmlOptions'=>array('enctype' =>'multipart/form-data')));?>
<?php echo $form->errorSummary($model, ''); ?>
<fieldset>
    <legend>Chỉnh sửa</legend>

    <div class="col1"><?php echo $form->labelEx($model, 'template_name') ?></div>
    <div class="col2">
        <?php echo $form->textField($model, 'template_name', array('class'=>'txt-very-large')); ?>
    </div>
    <div class="clear space"></div>

    <div class="col1"><?php echo $form->labelEx($model, 'Template admin', array('for'=>get_class($model).'_template_admin_0')) ?></div>
    <div class="col2 radio">
        <?php echo $form->radioButtonList($model, 'template_admin', array('0'=>'Normal', '1'=>'Hot'), array('separator'=>'&nbsp;&nbsp;')); ?>
    </div>
    <div class="clear space"></div>

    <div class="col1"><?php echo $form->labelEx($model, 'Template default', array('for'=>get_class($model).'_template_activated_0')) ?></div>
    <div class="col2 radio">
        <?php echo $form->radioButtonList($model, 'template_activated', array('0'=>'None', '1'=>'Default'), array('separator'=>'&nbsp;&nbsp;')); ?>
    </div>
    <div class="clear space"></div>

    <div class="col1">&nbsp;</div>
    <div class="col2">
        <?php echo CHtml::submitButton('Edit', array('name'=>'submit', 'class'=>'login', 'title'=>'Edit')); ?>
        <?php echo Chtml::link('Cancel', 'javascript:history.back()', array('class'=>'login-a', 'title'=>'Cancel')) ?>
    </div><div class="clear space"></div>
</fieldset>
<?php $this->endWidget();?>