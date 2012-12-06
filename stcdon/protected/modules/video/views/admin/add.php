<?php if (!$listItemsCat): ?>
    <p class="success">Vui lòng <a href="addcat" title="thêm mới Danh mục">Thêm mới danh mục</a> trước khi thêm mới sản phẩm</p>
<?php else:?>
	<?php $form = $this->beginWidget('CActiveForm', array('id' => 'frm', 'enableAjaxValidation' => true, 'enableClientValidation' => true, 'htmlOptions' => array('enctype' => 'multipart/form-data'))); ?>
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
				<?php echo $form->fileField($model, 'pic_thumb', array('class' => 'fileupload')); ?>
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
				<?php echo CHtml::submitButton($this->lang['add_new'], array('name' => 'submit', 'class' => 'login', 'title' => $this->lang['add_new'])); ?>
				<?php echo Chtml::link($this->lang['cancel'], 'javascript:history.back()', array('class' => 'login-a', 'title' => $this->lang['cancel'])) ?>
			</div>
			<div class="clear space"></div>
		</fieldset>
	<?php $this->endWidget(); ?>
<?php endif; ?>