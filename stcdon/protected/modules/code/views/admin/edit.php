<?php $form = $this->beginWidget('CActiveForm', array('id'=>'frm', 'enableAjaxValidation'=>true, 'enableClientValidation' =>true,));?>
<?php echo $form->errorSummary($model, ''); ?>
<fieldset>
    <legend><?php echo $this->lang['edit'] ?> <?php echo strtolower($this->lang[$this->module->id]) ?></legend>

    <div class="col1"><?php echo $form->labelEx($model, 'title') ?></div>
    <div class="col2">
        <?php echo $form->textField($model, 'title', array('class'=>'txt-very-large')); ?>
    </div>
    <div class="clear space"></div>

    <div class="col1"><?php echo $form->labelEx($model, 'record_type') ?></div>
    <div class="col2">
        <?php echo $form->dropDownList($model, 'record_type', array('da-giao-dich'=>'Đã giao dịch', 'da-dat-cho'=>'Đã đặt chỗ', 'chua-giao-dich'=>'Chưa giao dịch')); ?>
    </div>
    <div class="clear space"></div>

    <div class="col1">&nbsp;</div>
    <div class="col2">
        <?php echo CHtml::submitButton($this->lang['edit'], array('name'=>'submit', 'class'=>'login', 'title'=>$this->lang['edit'])); ?>
        <?php echo Chtml::link($this->lang['cancel'], 'javascript:history.back()', array('class'=>'login-a', 'title'=>$this->lang['cancel'])) ?>
    </div><div class="clear space"></div>
</fieldset>
<?php $this->endWidget();?>