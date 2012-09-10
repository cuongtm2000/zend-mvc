<?php $form = $this->beginWidget('CActiveForm', array('id' => 'frm', 'enableAjaxValidation' => true, 'enableClientValidation' => true, 'htmlOptions' => array('enctype' => 'multipart/form-data'))); ?>
<?php echo $form->errorSummary($model, ''); ?>
<fieldset>
    <legend><?php echo $this->lang['add_new'] ?> <?php echo strtolower($this->lang['cat_title']) ?></legend>

    <div class="col1"><?php echo $form->labelEx($model, 'cat_parent_id') ?></div>
    <div class="col2">
		<?php echo $form->dropDownList($model, 'cat_parent_id', CHtml::listData(PicturesCat::model()->listCats(1, '|-- '), 'cat_id', 'cat_title_prefix')); ?>
    </div>
    <div class="clear space"></div>

    <?php foreach($this->listLanguage as $key => $lang):?>
    <div class="col1"><?php echo $form->labelEx($model, 'cat_title'.$key) ?></div>
    <div class="col2">
        <?php echo $form->textField($model, 'cat_title'.$key, array('class' => 'txt-very-large')); ?>
    </div>
    <div class="clear space"></div>
	<?php endforeach; ?>

    <?php foreach($this->listLanguage as $key => $lang):?>
    <div class="col1"><?php echo $form->labelEx($model, 'tag'.$key) ?></div>
    <div class="col2">
        <?php echo $form->textField($model, 'tag'.$key, array('class' => 'txt-very-large')); ?>
    </div>
    <div class="clear space"></div>
	<?php endforeach; ?>

    <?php foreach($this->listLanguage as $key => $lang):?>
    <div class="col1"><?php echo $form->labelEx($model, 'description'.$key) ?></div>
    <div class="col2">
        <?php echo $form->textArea($model, 'description'.$key, array('cols'=>20, 'rows'=>5, 'class'=>'textarea-very-large')); ?> <span class="info-keyup<?php echo $key?>">0</span>
    </div>
    <div class="clear space"></div>
	<script type="text/javascript">
		jQuery(function($) {
			$('#<?php echo get_class($model)?>_description<?php echo $key?>').keyup(function(){var max=250;var valLen=$(this).val().length;$('.info-keyup<?php echo $key?>').text( valLen+'/'+max); var val = $(this).val(); if (val.length > 250){ $(this).val(val.slice(0, 250));}});
		});
	</script>
	<?php endforeach; ?>

    <div class="col1"><?php echo $form->labelEx($model, 'pic_thumb') ?></div>
    <div class="col2">
        <?php echo $form->fileField($model, 'pic_thumb', array('class' => 'fileupload')); ?>
    </div>
    <div class="clear space"></div>

    <div class="col1"><?php echo $form->labelEx($model, $this->lang['show'], array('for' => get_class($model) . '_cat_enable_0')) ?></div>
    <div class="col2 radio">
        <?php echo $form->radioButtonList($model, 'cat_enable', array('1'=>$this->lang['show'], '0'=>$this->lang['hidden']), array('separator' => '&nbsp;&nbsp;')); ?>
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
<?php foreach($this->listLanguage as $key => $lang):?>
	<?php $this->widget('ext.SeoAlias.SeoAlias', array('model' => $model, 'source' => 'cat_title'.$key, 'target' => 'tag'.$key)); ?>
<?php endforeach?>