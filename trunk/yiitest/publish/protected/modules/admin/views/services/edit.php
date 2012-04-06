  
<?php $form = $this->beginWidget('CActiveForm', array('id' => 'frm', 'enableAjaxValidation' => true, 'enableClientValidation' => true, 'htmlOptions' => array('enctype' => 'multipart/form-data'))); ?>
<?php echo $form->errorSummary($model, ''); ?>
<fieldset>
    <legend><?php echo $this->lang['edit'] ?> <?php echo strtolower($this->lang[$this->ID])?></legend>

	<?php foreach(Yii::app()->user->numLang as $lang): $lang = ($lang=='vi') ? '' : $lang;?>
    <div class="col1"><?php echo $form->labelEx($model, 'title'.$lang) ?></div>
    <div class="col2">
        <?php echo $form->textField($model, 'title'.$lang, $htmlOptions = array('class' => 'txt-very-large')); ?>
    </div>
    <div class="clear space"></div>
	<?php endforeach; ?>

	<?php foreach(Yii::app()->user->numLang as $lang): $lang = ($lang=='vi') ? '' : $lang;?>
    <div class="col1"><?php echo $form->labelEx($model, 'content'.$lang) ?></div>
    <div class="col2">
        <?php echo $form->textArea($model, 'content'.$lang, $htmlOptions = array('cols' => 20, 'rows' => 10)); ?>
        <script type="text/javascript">
            //<![CDATA[
            CKEDITOR.replace('<?php echo get_class($model) ?>[content<?php echo $lang?>]');
            //]]>
        </script>
    </div>
    <div class="clear space"></div>
	<?php endforeach; ?>

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

    <div class="col1"><?php echo $form->labelEx($model, 'pic_full') ?></div>
    <div class="col2">
        <?php if ($model->pic_full): ?>
            <div class="img-marginb5"><img src="<?php echo Yii::app()->request->baseUrl . USERFILES . '/' . $this->getId() . '/' . $model->pic_full ?>" alt="" />
				<?php echo $form->checkBox($model, 'remove_pic_thumb') ?><?php echo $form->labelEx($model, 'remove_pic_thumb', array('class' => 'remove')) ?>
			</div>
        <?php endif; ?>
        <?php echo $form->fileField($model, 'pic_full', array('class' => 'fileupload')); ?>
    </div>
    <div class="clear space"></div>

    <div class="col1"><?php echo $form->labelEx($model, 'hot', $htmlOptions = array('for' => ucfirst($this->ID) . '_hot_0')) ?></div>
    <div class="col2 radio">
        <?php echo $form->radioButtonList($model, 'hot', array('0'=>$this->lang['normal'], '1'=>$this->lang['hot']), array('separator' => '&nbsp;&nbsp;')); ?>
    </div>
    <div class="clear space"></div>

    <div class="col1"><?php echo $form->labelEx($model, 'activated', $htmlOptions = array('for' => ucfirst($this->ID) . '_activated_0')) ?></div>
    <div class="col2 radio">
        <?php echo $form->radioButtonList($model, 'activated', array('1'=>$this->lang['show'], '0'=>$this->lang['hidden']), array('separator' => '&nbsp;&nbsp;')); ?>
    </div>
    <div class="clear space"></div>

    <div class="col1">&nbsp;</div>
	<div class="col2">
		<?php echo CHtml::submitButton($this->lang['edit'], array('name'=>'submit', 'class'=>'login', 'title'=>$this->lang['edit'])); ?>
		<?php echo Chtml::link($this->lang['cancel'], 'javascript:history.back()', array('class'=>'login-a', 'title'=>$this->lang['cancel'])) ?>
	</div>
    <div class="clear space"></div>
</fieldset>
<?php $this->endWidget(); ?>

<?php foreach(Yii::app()->user->numLang as $lang): $lang = ($lang=='vi') ? '' : $lang;?>
<?php $this->widget('ext.seoAlias.seoAlias', array('model'=>$model, 'source'=>'title'.$lang, 'target'=>'tag'.$lang)); ?>
<?php endforeach?>