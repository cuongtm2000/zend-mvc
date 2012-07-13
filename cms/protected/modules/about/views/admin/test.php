<?php /*foreach($this->listLanguage as $key => $value):?>
    <?php var_dump($key)?>
<?php endforeach*/
?>

<?php $form = $this->beginWidget('CActiveForm', array('id' => 'frm', 'enableAjaxValidation' => true, 'enableClientValidation' => true,)); ?>
<?php echo $form->errorSummary($model, ''); ?>
<fieldset>
    <legend>Thêm mới about</legend>

    <?php foreach($this->listLanguage as $key => $value):?>
    <div class="col1"><?php echo $form->labelEx($model, 'title'.$key) ?></div>
    <div class="col2">
        <?php echo $form->textField($model, 'title'.$key, $htmlOptions = array('class' => 'txt-very-large')); ?>
    </div>
    <div class="clear space"></div>
    <?php endforeach?>

    <div class="col1">&nbsp;</div>
    <div class="col2">
        <?php echo CHtml::submitButton('Add', array('name'=>'submit', 'class'=>'login', 'title'=>'Add')); ?>
        <?php echo Chtml::link('Cancel', 'javascript:history.back()', $htmlOptions=array('class'=>'login-a', 'title'=>'Cancel')) ?>
    </div><div class="clear space"></div>
</fieldset>
<?php $this->endWidget(); ?>