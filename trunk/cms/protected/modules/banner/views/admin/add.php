<?php $form = $this->beginWidget('CActiveForm', array('id'=>'frm', 'enableAjaxValidation'=>true, 'enableClientValidation' =>true, 'htmlOptions'=>array('enctype' =>'multipart/form-data')));?>
<?php echo $form->errorSummary($model, ''); ?>
<fieldset>
    <legend>Thêm Banner</legend>
    <div class="col1"><?php echo $form->labelEx($model, 'module_id') ?></div>
    <div class="col2">
        <?php echo $form->dropDownList($model, 'module_id', Module::model()->listModuleByLang()); ?>
    </div>
    <div class="clear space"></div>

    <div class="col1"><?php echo $form->labelEx($model, 'banner_name') ?></div>
    <div class="col2">
        <?php echo $form->textField($model, 'banner_name', array('class'=>'txt-very-large')); ?>
    </div>
    <div class="clear space"></div>

    <div class="col1"><?php echo $form->labelEx($model, 'banner_link') ?></div>
    <div class="col2">
        <?php echo $form->textField($model, 'banner_link', array('class'=>'txt-very-large')); ?>
    </div>
    <div class="clear space"></div>

    <div class="col1"><?php echo $form->labelEx($model, 'banner_picture') ?></div>
    <div class="col2">
        <?php echo $form->fileField($model, 'banner_picture', array('class'=>'fileupload', 'size'=>'33%')); ?>
    </div>
    <div class="clear space"></div>

    <div class="col1"><?php echo $form->labelEx($model, 'enable', array('for'=>ucfirst($this->ID).'_enable_0')) ?></div>
        <div class="col2 radio">
        <?php echo $form->radioButtonList($model, 'enable', array('1'=>'Hiển thị', '0'=>'Ẩn'), array('separator'=>'&nbsp;&nbsp;')); ?>
        </div>
        <div class="clear space"></div>

    <div class="col1">&nbsp;</div>
        <div class="col2">
        <?php echo CHtml::submitButton('Thêm mới', array('name'=>'submit', 'class'=>'login', 'title'=>'Thêm mới')); ?>
        <?php echo Chtml::link('Hủy bỏ', 'javascript:history.back()', array('class'=>'login-a', 'title'=>'Back')) ?>
        </div>
        <div class="clear space"></div>
</fieldset>
<?php $this->endWidget();?>