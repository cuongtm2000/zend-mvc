<?php $form = $this->beginWidget('CActiveForm', array('id'=>'frm', 'enableAjaxValidation'=>true, 'enableClientValidation' =>true, 'htmlOptions'=>array('enctype' =>'multipart/form-data')));?>
<?php echo $form->errorSummary($model, ''); ?>
<fieldset>
    <legend>Logo</legend>

    <div class="col1"><?php echo $form->labelEx($model, 'banner_picture') ?></div>
    <div class="col2">
        <?php if($model->banner_picture): ?>
            <img src="<?php echo Yii::app()->baseUrl.Yii::getPathOfAlias('filePathUpload').'/image/logo/'.$model->banner_picture ?>" alt="Logo" /><br />
        <?php endif;?>
        <?php echo $form->fileField($model, 'banner_picture', array('class'=>'fileupload', 'size'=>'33%')); ?>
    </div>
    <div class="clear space"></div>

    <div class="col1">&nbsp;</div>
    <div class="col2">
        <?php echo CHtml::submitButton('Thêm mới', array('name'=>'submit', 'class'=>'login', 'title'=>'Thêm mới')); ?>
    </div>
    <div class="clear space"></div>
</fieldset>
<?php $this->endWidget();?>