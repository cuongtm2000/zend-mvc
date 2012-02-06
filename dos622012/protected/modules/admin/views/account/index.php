<div class="content">
    <?php $form = $this->beginWidget('CActiveForm', array('id' => 'frm', 'enableAjaxValidation' => true, 'enableClientValidation' => true)); ?>
    <fieldset>
        <legend>Thay đổi thông tin</legend>
        <?php echo $form->errorSummary($model, ''); ?>
        <p class="clear">
            <?php echo $form->labelEx($model, 'email') ?>
            <?php echo $form->textField($model, 'email', $htmlOptions=array('class'=>'txt-large-x')); ?>
        </p>
        <p class="clear">
            <?php echo $form->labelEx($model, 'fullname') ?>
            <?php echo $form->textField($model, 'fullname', $htmlOptions=array('class'=>'txt-large-x')); ?>
        </p>
        <p class="clear">
            <?php echo $form->labelEx($model, 'phone') ?>
            <?php echo $form->textField($model, 'phone', $htmlOptions=array('class'=>'txt-large-x')); ?>
        </p>
        <p class="clear">
            <?php echo $form->labelEx($model, 'company') ?>
            <?php echo $form->textField($model, 'company', $htmlOptions=array('class'=>'txt-large-x')); ?>
        </p>
        <p class="clear">
            <?php echo $form->labelEx($model, 'dos_provinces_province_id') ?>
            <?php $province_class = new Provinces; $values = $province_class->listProvinceByCountry('VND'); $data = array(); foreach ($values as $value){
                $data[$value['province_id']] = $value['province_name'];
            }
            ?>
            <?php echo $form->dropDownList($model, 'dos_provinces_province_id', $data); ?>
        </p>
        <p>
            <label>&nbsp;</label>
            <?php echo CHtml::submitButton($this->lang['update'], array('name' => 'submit', 'class' => 'login', 'title' => $this->lang['update'])); ?>
        </p>
    </fieldset>
    <?php $this->endWidget(); ?>
</div>