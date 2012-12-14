<?php if (!$listItemsCat): ?>
    <p class="success">Vui lòng <a href="addcat" title="thêm mới Danh mục">Thêm mới danh mục</a> trước khi thêm mới <?php echo $this->lang[$this->module->id]?></p>
<?php else:?>
	<?php $form = $this->beginWidget('CActiveForm', array('id'=>'frm', 'enableAjaxValidation'=>true, 'enableClientValidation' =>true, 'htmlOptions' => array('enctype' => 'multipart/form-data')));?>
	<?php echo $form->errorSummary($model, ''); ?>
	<fieldset>
		<legend><?php echo $this->lang['add_new'] ?> <?php echo strtolower($this->lang[$this->module->id])?></legend>

		<div class="col1"><?php echo $form->labelEx($model, 'hoiit_module_item_cat_cat_id') ?></div>
		<div class="col2">
			<?php echo $form->dropDownList($model, 'hoiit_module_item_cat_cat_id', CHtml::listData($listItemsCat, 'cat_id', 'cat_title_prefix')); ?>
		</div>
		<div class="clear space"></div>

        <?php foreach($this->listLanguage as $key):?>
		<div class="col1"><?php echo $form->labelEx($model, 'title'.$key) ?></div>
		<div class="col2">
			<?php echo $form->textField($model, 'title'.$key, array('class'=>'txt-large-x')); ?>
		</div>
		<div class="clear space"></div>
		<?php endforeach; ?>
		
		<div class="col1"><?php echo $form->labelEx($model, 'record_type') ?></div>
		<div class="col2">
			<?php echo $form->dropDownList($model, 'record_type', array('da-giao-dich'=>'Đã giao dịch', 'da-dat-cho'=>'Đã đặt chỗ', 'chua-giao-dich'=>'Chưa giao dịch')); ?>
		</div>
		<div class="clear space"></div>

		<div class="col1">&nbsp;</div>
		<div class="col2">
			<?php echo CHtml::submitButton($this->lang['add_new'], array('name'=>'submit', 'class'=>'login', 'title'=>$this->lang['add_new'])); ?>
			<?php echo Chtml::link($this->lang['cancel'], 'javascript:history.back()', array('class'=>'login-a', 'title'=>$this->lang['cancel'])) ?>
		</div><div class="clear space"></div>
	</fieldset>
	<?php $this->endWidget();?>
<?php endif?>