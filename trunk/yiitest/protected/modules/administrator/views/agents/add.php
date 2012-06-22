<?php $form = $this->beginWidget('CActiveForm', array('id' => 'frm', 'enableAjaxValidation' => true, 'enableClientValidation' => true)); ?>
<fieldset>
    <legend>Thêm đại lý</legend>
    <?php echo $form->errorSummary($model, ''); ?>
    <p class="clear">
        <?php echo $form->labelEx($model, 'agent_id') ?>
        <?php echo $form->textField($model, 'agent_id', $htmlOptions=array('class'=>'txt-large-x')); ?>
    </p>
    <p class="clear">
        <?php echo $form->labelEx($model, 'email') ?>
        <?php echo $form->textField($model, 'email', $htmlOptions=array('class'=>'txt-large-x')); ?>
    </p>
    <p class="clear">
        <?php echo $form->labelEx($model, 'password') ?>
        <?php echo $form->passwordField($model, 'password', $htmlOptions=array('class'=>'txt-large-x')); ?>
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
        <?php echo $form->labelEx($model, 'website') ?>
        <?php echo $form->textField($model, 'website', $htmlOptions=array('class'=>'txt-large-x')); ?>
    </p>
    <p class="clear">
        <?php echo $form->labelEx($model, 'address') ?>
        <?php echo $form->textField($model, 'address', $htmlOptions=array('class'=>'txt-large-x')); ?>
    </p>
    <p class="clear">
        <?php echo $form->labelEx($model, 'yahoo') ?>
        <?php echo $form->textField($model, 'yahoo', $htmlOptions=array('class'=>'txt-large-x')); ?>
    </p>
    <p class="clear">
        <?php echo $form->labelEx($model, 'skype') ?>
        <?php echo $form->textField($model, 'skype', $htmlOptions=array('class'=>'txt-large-x')); ?>
    </p>
    <p class="clear">
        <?php echo $form->labelEx($model, 'content') ?>
        <?php echo $form->textField($model, 'content', $htmlOptions=array('class'=>'txt-large-x')); ?>
    </p>
    <p class="clear">
        <?php echo $form->labelEx($model, 'point') ?>
        <?php echo $form->textField($model, 'point', $htmlOptions=array('class'=>'txt-large-x')); ?>
    </p>
    <p class="clear">
        <?php echo $form->labelEx($model, 'bonus') ?>
        <?php echo $form->textField($model, 'bonus', $htmlOptions=array('class'=>'txt-large-x')); ?>
    </p>
    <p class="clear">
        <?php echo $form->labelEx($model, 'type') ?>
        <?php echo $form->dropDownList($model, 'type', array(0 => 'Kinh doanh', 1 => 'Kỹ thuật')); ?>
    </p>
    <p class="clear">
        <?php echo $form->labelEx($model, 'parent_id') ?>
        <?php echo $form->textField($model, 'parent_id', $htmlOptions=array('class'=>'txt-large-x')); ?>
    </p>
    <p class="clear">
        <?php echo $form->labelEx($model, 'dos_provinces_province_id') ?>
        <?php $data = array(); foreach ($listProvinces as $value){$data[$value['province_id']] = $value['province_name'];} ?>
        <?php echo $form->dropDownList($model, 'dos_provinces_province_id', $data); ?>
    </p>
    <p class="clear">
        <?php echo $form->labelEx($model, 'enable', array('for'=>ucfirst($this->ID).'_enable_0')) ?>
        <div class="radio"><?php echo $form->radioButtonList($model, 'enable', array('1'=>'Show', '0'=>'Hidden'), array('separator'=>'&nbsp;&nbsp;')); ?></div>
    </p>
    <p>
        <label>&nbsp;</label>
        <?php echo CHtml::submitButton('Add', array('name' => 'submit', 'class' => 'login', 'title' => 'Add')); ?>
    </p>
</fieldset>
<?php $this->endWidget(); ?>