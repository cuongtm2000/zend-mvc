<?php $form = $this->beginWidget('CActiveForm', array('id'=>'frm', 'enableAjaxValidation'=>true, 'enableClientValidation' =>true, 'htmlOptions' => array('enctype' => 'multipart/form-data')));?>
<?php echo $form->errorSummary($model, ''); ?>
<fieldset>
    <legend><?php echo $this->lang['edit'] ?> <?php echo strtolower($this->lang[$this->ID])?></legend>

    <div class="col1"><?php echo $form->labelEx($model, 'dos_module_item_cat_cat_id') ?></div>
    <div class="col2">
        <?php echo $form->dropDownList($model, 'dos_module_item_cat_cat_id', CHtml::listData($listItemsCat, 'cat_id', 'cat_title_prefix')); ?>
    </div>
    <div class="clear space"></div>

	<?php foreach(Yii::app()->user->numLang as $lang): $lang = ($lang=='vi') ? '' : $lang;?>
    <div class="col1"><?php echo $form->labelEx($model, 'title'.$lang) ?></div>
    <div class="col2">
        <?php echo $form->textField($model, 'title'.$lang, $htmlOptions=array('class'=>'txt-very-large')); ?>
    </div>
    <div class="clear space"></div>
	<?php endforeach; ?>

	<div class="col1"><?php echo $form->labelEx($model, 'url') ?></div>
	<div class="col2">
		<?php echo $form->textField($model, 'url', $htmlOptions=array('class'=>'txt-very-large')); ?>
	</div>
	<div class="clear space"></div>

    <div class="col1"><?php echo $form->labelEx($model, 'pic_thumb') ?></div>
    <div class="col2">
        <?php if ($model->pic_thumb): ?>
            <div class="img-marginb5"><img src="<?php echo Yii::app()->request->baseUrl . '/public/userfiles/image/'.Yii::app()->user->id.'/image/' . $this->getId() . '/' . $model->pic_thumb ?>" alt="<?php echo $model->title?>" />
                <?php echo $form->checkBox($model, 'remove_pic_thumb') ?><?php echo $form->labelEx($model, 'remove_pic_thumb', array('class' => 'remove')) ?>
            </div>
        <?php endif; ?>
        <?php echo $form->fileField($model, 'pic_thumb', array('class' => 'fileupload')); ?>
    </div>
    <div class="clear space"></div>

	<?php foreach(Yii::app()->user->numLang as $lang): $lang = ($lang=='vi') ? '' : $lang;?>
	<div class="col1"><?php echo $form->labelEx($model, 'tag'.$lang) ?></div>
	<div class="col2">
		<?php echo $form->textField($model, 'tag'.$lang, $htmlOptions=array('class'=>'txt-very-large')); ?>
	</div>
	<div class="clear space"></div>
	<?php endforeach?>

	<?php foreach(Yii::app()->user->numLang as $lang): $lang = ($lang=='vi') ? '' : $lang;?>
	<div class="col1"><?php echo $form->labelEx($model, 'description'.$lang) ?></div>
	<div class="col2">
		<?php echo $form->textArea($model, 'description'.$lang, $htmlOptions=array('cols'=>89, 'rows'=>5)); ?> <span class="info-keyup<?php echo $lang?>">0</span>
	</div>
	<div class="clear space"></div>
	<script type="text/javascript">
		jQuery(function($) {
			$('#<?php echo ucfirst($this->ID)?>_description<?php echo $lang?>').keyup(function(){var max=250;var valLen=$(this).val().length;$('.info-keyup<?php echo $lang?>').text( valLen+'/'+max); var val = $(this).val(); if (val.length > 250){ $(this).val(val.slice(0, 250));}});
		});
	</script>
	<?php endforeach?>

    <div class="col1"><?php echo $form->labelEx($model, 'hot', $htmlOptions=array('for'=>ucfirst($this->ID).'_hot_0')) ?></div>
    <div class="col2 radio">
        <?php echo $form->radioButtonList($model, 'hot', array('0'=>$this->lang['normal'], '1'=>$this->lang['hot']), array('separator'=>'&nbsp;&nbsp;')); ?>
    </div>
    <div class="clear space"></div>

	<div class="col1"><?php echo $form->labelEx($model, 'enable', $htmlOptions = array('for' => ucfirst($this->ID) . '_enable_0')) ?></div>
	<div class="col2 radio">
		<?php echo $form->radioButtonList($model, 'enable', array('1'=>$this->lang['show'], '0'=>$this->lang['hidden']), array('separator' => '&nbsp;&nbsp;')); ?>
	</div>
	<div class="clear space"></div>
    
    <div class="col1">&nbsp;</div>
    <div class="col2">
		<?php echo CHtml::submitButton($this->lang['edit'], array('name'=>'submit', 'class'=>'login', 'title'=>$this->lang['edit'])); ?>
    </div><div class="clear space"></div>    
</fieldset>
<?php $this->endWidget();?>
<?php $this->widget('ext.seoAlias.seoAlias', array('model'=>$model, 'source'=>'title', 'target'=>'tag')); ?>