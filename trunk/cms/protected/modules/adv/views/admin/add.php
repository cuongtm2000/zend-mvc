<?php $form = $this->beginWidget('CActiveForm', array('id'=>'frm', 'enableAjaxValidation'=>true, 'enableClientValidation' =>true, 'htmlOptions'=>array('enctype' =>'multipart/form-data')));?>
<?php echo $form->errorSummary($model, ''); ?>
<fieldset>
    <legend><?php echo $this->lang['add_new'] ?> <?php echo strtolower($this->lang[$this->module->id])?></legend>

    <div class="col1"><?php echo $form->labelEx($model, 'title') ?></div>
    <div class="col2">
        <?php echo $form->textField($model, 'title', $htmlOptions=array('class'=>'txt-very-large')); ?>
    </div>
    <div class="clear space"></div>

    <div class="col1"><?php echo $form->labelEx($model, 'url') ?></div>
    <div class="col2">
        <?php echo $form->textField($model, 'url', $htmlOptions=array('class'=>'txt-very-large')); ?>
    </div>
    <div class="clear space"></div>

    <div class="col1"><?php echo $form->labelEx($model, 'pic_thumb') ?></div>
    <div class="col2">
        <?php echo $form->fileField($model, 'pic_thumb', array('class'=>'fileupload', 'size'=>'40%')); ?>
    </div>
    <div class="clear space"></div>

    <div class="col1"><?php echo $form->labelEx($model, 'position') ?></div>
        <div class="col2">
        <?php echo $form->dropDownList($model, 'position', array('left'=>'Left', 'right'=>'Right', 'top'=>'Top', 'center'=>'Center', 'bottom'=>'Bottom')); ?>
        </div>
        <div class="clear space"></div>

    <div class="col1"><?php echo $form->labelEx($model, 'type') ?></div>
        <div class="col2">
        <?php echo $form->dropDownList($model, 'type', array('_bank'=>'Trang mới', '_parent'=>'Trang hiện tại')); ?>
        </div>
        <div class="clear space"></div>

    <div class="col1"><?php echo $form->labelEx($model, 'start_date') ?></div>
    <div class="col2">
        <?php echo $form->textField($model, 'start_date', $htmlOptions=array('class'=>'txt-very-large', 'id'=>'start_date')); ?>
        <span class="readme">(dd-mm-YYYY)</span>
    </div>
    <div class="clear space"></div>

    <div class="col1"><?php echo $form->labelEx($model, 'end_date') ?></div>
    <div class="col2">
        <?php echo $form->textField($model, 'end_date', $htmlOptions=array('class'=>'txt-very-large', 'id'=>'end_date')); ?>
        <span class="readme">(dd-mm-YYYY)</span>
    </div>
    <div class="clear space"></div>

    <div class="col1"><?php echo $form->labelEx($model, 'enable', $htmlOptions=array('for'=>ucfirst($this->ID).'_enable_0')) ?></div>
        <div class="col2 radio">
        <?php echo $form->radioButtonList($model, 'enable', array('1'=>$this->lang['show'], '0'=>$this->lang['hidden']), array('separator'=>'&nbsp;&nbsp;')); ?>
        </div>
        <div class="clear space"></div>

    <div class="col1">&nbsp;</div>
	<div class="col2">
		<?php echo CHtml::submitButton($this->lang['add_new'], array('name'=>'submit', 'class'=>'login', 'title'=>$this->lang['add_new'])); ?>
		<?php echo Chtml::link($this->lang['cancel'], 'javascript:history.back()', $htmlOptions=array('class'=>'login-a', 'title'=>$this->lang['cancel'])) ?>
	</div>
	<div class="clear space"></div>
</fieldset>
<?php $this->endWidget();?>