<?php $form = $this->beginWidget('CActiveForm', array('id' => 'frm', 'enableAjaxValidation' => true, 'enableClientValidation' => true, 'htmlOptions' => array('enctype' => 'multipart/form-data'))); ?>
<?php echo $form->errorSummary($model, ''); ?>
<fieldset>
    <legend><?php echo $this->lang['edit'] ?> <?php echo strtolower($this->lang[$this->module->id])?></legend>

    <div class="col1"><?php echo $form->labelEx($model, 'hoiit_module_item_cat_cat_id') ?></div>
    <div class="col2">
        <?php echo $form->dropDownList($model, 'hoiit_module_item_cat_cat_id', CHtml::listData($listItemsCat, 'cat_id', 'cat_title_prefix')); ?>
    </div>
    <div class="clear space"></div>

    <?php foreach($this->listLanguage as $key):?>
    <div class="col1"><?php echo $form->labelEx($model, 'title'.$key) ?></div>
    <div class="col2">
        <?php echo $form->textField($model, 'title'.$key, array('class' => 'txt-very-large')); ?>
    </div>
    <div class="clear space"></div>
	<?php endforeach; ?>

	<?php foreach($this->listLanguage as $key):?>
	<div class="col1"><?php echo $form->labelEx($model, 'extra_field1'.$key) ?></div>
	<div class="col2">
		<?php echo $form->textField($model, 'extra_field1'.$key, array('class' => 'txt-very-large')); ?>
	</div>
	<div class="clear space"></div>
	<?php endforeach; ?>
			
    
    <div class="col1"><?php echo $form->labelEx($model, 'pic_thumb') ?></div>
    <div class="col2">
        <?php if ($model->pic_thumb): ?>
            <div class="img-marginb5"><img src="<?php echo Yii::app()->request->baseUrl.Yii::getPathOfAlias('filePathUpload').'/image/'.$this->module->id.'/'.$model->pic_thumb ?>" alt="Picture" />
                <?php echo $form->checkBox($model, 'remove_pic_thumb') ?><?php echo $form->labelEx($model, 'remove_pic_thumb', array('class' => 'remove')) ?>
            </div>
        <?php endif; ?>
        <?php echo $form->fileField($model, 'pic_thumb', array('class' => 'fileupload', 'size' => '40%')); ?>
    </div>
    <div class="clear space"></div>


    <div class="col1"><?php echo $form->labelEx($model, 'hot', array('for' => get_class($model) . '_hot_0')) ?></div>
    <div class="col2 radio">
        <?php echo $form->radioButtonList($model, 'hot', array('0'=>'Normal', '1'=>'Hot'), array('separator' => '&nbsp;&nbsp;')); ?>
    </div>
    <div class="clear space"></div>

    <div class="col1"><?php echo $form->labelEx($model, 'enable', array('for' => get_class($model) . '_enable_0')) ?></div>
    <div class="col2 radio">
        <?php echo $form->radioButtonList($model, 'enable', array('1'=>$this->lang['show'], '0'=>$this->lang['hidden']), array('separator' => '&nbsp;&nbsp;')); ?>
    </div>
    <div class="clear space"></div>

    <div class="col1">&nbsp;</div>
    <div class="col2">
        <?php echo CHtml::submitButton($this->lang['edit'], array('name' => 'submit', 'class' => 'login', 'title' => $this->lang['edit'])); ?>
        <?php echo Chtml::link($this->lang['cancel'], 'javascript:history.back()', array('class' => 'login-a', 'title' => $this->lang['cancel'])) ?>
    </div>
    <div class="clear space"></div>
</fieldset>
<?php $this->endWidget(); ?>