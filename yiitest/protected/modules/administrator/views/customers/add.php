<?php $form = $this->beginWidget('CActiveForm', array('id' => 'frm', 'enableAjaxValidation' => true, 'enableClientValidation' => true, 'htmlOptions'=>array('enctype' =>'multipart/form-data'))); ?>
<fieldset>
    <legend>Thêm mới khách hàng</legend>
    <?php echo $form->errorSummary($model, ''); ?>
    <p class="clear">
        <?php echo $form->labelEx($model, 'customer_name') ?>
        <?php echo $form->textField($model, 'customer_name', $htmlOptions=array('class'=>'txt-large-x')); ?>
    </p>
    <p class="clear">
        <?php echo $form->labelEx($model, 'email') ?>
        <?php echo $form->textField($model, 'email', $htmlOptions=array('class'=>'txt-large-x')); ?>
    </p>
    <p class="clear">
        <?php echo $form->labelEx($model, 'phone') ?>
        <?php echo $form->textField($model, 'phone', $htmlOptions=array('class'=>'txt-large-x')); ?>
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
        <label><?php echo $form->labelEx($model, 'pic_thumb') ?></label>
		<?php echo $form->fileField($model, 'pic_thumb', array('class'=>'fileupload', 'size'=>'40%')); ?> &nbsp;<span><i>184 x 164</i></span>
    </p>
    <p class="clear">
        <label><?php echo $form->labelEx($model, 'pic_full') ?></label>
		<?php echo $form->fileField($model, 'pic_full', array('class'=>'fileupload', 'size'=>'40%')); ?> &nbsp;<span><i>665 x 800</i></span>
    </p>
	<p class="clear">
        <?php echo $form->labelEx($model, 'tag') ?>
        <?php echo $form->textField($model, 'tag', $htmlOptions=array('class'=>'txt-large-x')); ?>
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
        <?php echo CHtml::submitButton('Add', array('name' => 'submit', 'class' => 'login', 'title' => 'Add')); ?>
    </p>
</fieldset>
<?php $this->endWidget(); ?>
<?php $this->widget('ext.seoAlias.seoAlias', array('model'=>$model, 'source'=>'customer_name', 'target'=>'tag')); ?>