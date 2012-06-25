<?php $form = $this->beginWidget('CActiveForm', array('id' => 'frm', 'enableAjaxValidation' => true, 'enableClientValidation' => true, 'htmlOptions' => array('enctype' => 'multipart/form-data'))); ?>
<?php echo $form->errorSummary($model, ''); ?>
<fieldset>
    <legend><?php echo $this->lang['edit'] ?> <?php echo strtolower($this->lang['cat_title'])?></legend>

    <div class="col1"><?php echo $form->labelEx($model, 'cat_parent_id') ?></div>
    <div class="col2">
		<?php echo $form->dropDownList($model, 'cat_parent_id', CHtml::listData($model->listCats(1, '|-- ', 1, $model['cat_id']), 'cat_id', 'cat_title_prefix')); ?>
    </div>
    <div class="clear space"></div>

	<?php foreach(Yii::app()->user->numLang as $lang): $lang = ($lang=='vi') ? '' : $lang;?>
    <div class="col1"><?php echo $form->labelEx($model, $this->lang['cat_title'.$lang]) ?></div>
    <div class="col2">
        <?php echo $form->textField($model, 'cat_title'.$lang, $htmlOptions = array('class' => 'txt-very-large')); ?>
    </div>
    <div class="clear space"></div>
	<?php endforeach; ?>

	<?php foreach(Yii::app()->user->numLang as $lang): $lang = ($lang=='vi') ? '' : $lang;?>
	<div class="col1"><?php echo $form->labelEx($model, 'tag'.$lang) ?></div>
	<div class="col2">
		<?php echo $form->textField($model, 'tag'.$lang, $htmlOptions = array('class' => 'txt-very-large')); ?>
	</div>
	<div class="clear space"></div>
	<?php endforeach; ?>

	<?php foreach(Yii::app()->user->numLang as $lang): $lang = ($lang=='vi') ? '' : $lang;?>
	<div class="col1"><?php echo $form->labelEx($model, 'description'.$lang) ?></div>
	<div class="col2">
		<?php echo $form->textArea($model, 'description'.$lang, $htmlOptions = array('cols' => 89, 'rows' => 5)); ?> <span class="info-keyup<?php echo $lang?>">0</span>
	</div>
	<div class="clear space"></div>
	<script type="text/javascript">
		jQuery(function($) {
			$('#<?php echo ucfirst($this->ID)?>Cat_description<?php echo $lang?>').keyup(function(){var max=250;var valLen=$(this).val().length;$('.info-keyup<?php echo $lang?>').text( valLen+'/'+max); var val = $(this).val(); if (val.length > 250){ $(this).val(val.slice(0, 250));}});
		});
	</script>
	<?php endforeach; ?>

    <!-- <div class="col1"><?php echo $form->labelEx($model, 'pic_full') ?></div>
    <div class="col2">
        <?php if ($model->pic_full): ?>
			<div class="img-marginb5"><img src="<?php echo Yii::app()->request->baseUrl . USERFILES. '/'. $this->ID.'Cat/' . $model->pic_full ?>" alt="" />
				<?php echo $form->checkBox($model, 'remove_pic_full') ?><?php echo $form->labelEx($model, 'remove_pic_full', array('class' => 'remove')) ?>
			</div>
        <?php endif; ?>
        <?php echo $form->fileField($model, 'pic_full', array('class' => 'fileupload')); ?>
    </div>
    <div class="clear space"></div> -->

    <div class="col1"><?php echo $form->labelEx($model, 'cat_enable', $htmlOptions = array('for' => ucfirst($this->ID) . 'Cat_cat_enable_0')) ?></div>
    <div class="col2 radio">
        <?php echo $form->radioButtonList($model, 'cat_enable', array('1'=>$this->lang['show'], '0'=>$this->lang['hidden']), array('separator' => '&nbsp;&nbsp;')); ?>
    </div>
    <div class="clear space"></div>

    <div class="col1">&nbsp;</div>
    <div class="col2">
        <?php echo CHtml::submitButton($this->lang['edit'], array('name' => 'submit', 'class' => 'login', 'title' => $this->lang['edit'])); ?>
        <?php echo Chtml::link($this->lang['cancel'], 'javascript:history.back()', $htmlOptions = array('class' => 'login-a', 'title' => $this->lang['cancel'])) ?>
    </div>
    <div class="clear space"></div>
</fieldset>
<?php $this->endWidget(); ?>
<?php foreach(Yii::app()->user->numLang as $lang): $lang = ($lang=='vi') ? '' : $lang;?>
	<?php $this->widget('ext.seoAlias.seoAlias', array('model' => $model, 'source' => 'cat_title'.$lang, 'target' => 'tag'.$lang)); ?>
<?php endforeach?>