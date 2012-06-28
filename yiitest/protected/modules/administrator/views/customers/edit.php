<?php $form = $this->beginWidget('CActiveForm', array('id' => 'frm', 'enableAjaxValidation' => true, 'enableClientValidation' => true)); ?>
<fieldset>
    <legend>Thay đổi thông tin</legend>
    <?php echo $form->errorSummary($model, ''); ?>
    <p class="clear">
        <?php echo $form->labelEx($model, 'customer_name') ?>
        <?php echo $form->textField($model, 'customer_name', $htmlOptions=array('class'=>'txt-large-x')); ?>
    </p>
    <p class="clear">
        <?php echo $form->labelEx($model, 'address') ?>
        <?php echo $form->textField($model, 'address', $htmlOptions=array('class'=>'txt-large-x')); ?>
    </p>
    <p class="clear">
        <?php echo $form->labelEx($model, 'website') ?>
        <?php echo $form->textField($model, 'website', $htmlOptions=array('class'=>'txt-large-x')); ?>
    </p>
    <p class="clear">
        <?php echo $form->labelEx($model, 'expired_date') ?>
        <?php echo $form->textField($model, 'expired_date', $htmlOptions=array('class'=>'txt-large-x')); ?>
    </p>
    <p class="clear">
        <?php echo $form->labelEx($model, 'dos_bussiness_bussiness_id') ?>
        <?php $data_bussiness = array(); foreach ($listBusiness as $value) {$data_bussiness[$value['bussiness_id']] = $value['bussiness_name'];}?>
        <?php echo $form->dropDownList($model, 'dos_bussiness_bussiness_id', $data_bussiness); ?>
    </p>
    <p>
        <label>&nbsp;</label>
        <?php echo CHtml::submitButton('Edit', array('name' => 'submit', 'class' => 'login', 'title' => 'Edit')); ?>
    </p>
</fieldset>
<?php $this->endWidget(); ?>