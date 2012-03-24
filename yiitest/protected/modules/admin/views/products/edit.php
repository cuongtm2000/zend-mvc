<?php $form = $this->beginWidget('CActiveForm', array('id' => 'frm', 'enableAjaxValidation' => true, 'enableClientValidation' => true, 'htmlOptions' => array('enctype' => 'multipart/form-data'))); ?>
<?php echo $form->errorSummary($model, ''); ?>
<fieldset>
    <legend><?php echo $this->lang['edit'] ?> <?php echo strtolower($this->lang[$this->ID])?></legend>

    <div class="col1"><?php echo $form->labelEx($model, 'dos_module_item_cat_cat_id') ?></div>
    <div class="col2">
        <?php echo $form->dropDownList($model, 'dos_module_item_cat_cat_id', CHtml::listData($model->listItemCat(), 'cat_id', 'cat_title')); ?>
    </div>
    <div class="clear space"></div>

	<?php foreach(Yii::app()->user->numLang as $lang): $lang = ($lang=='vi') ? '' : $lang;?>
    <div class="col1"><?php echo $form->labelEx($model, $this->lang['title'.$lang]) ?></div>
    <div class="col2">
        <?php echo $form->textField($model, 'title'.$lang, $htmlOptions = array('class' => 'txt-very-large')); ?>
    </div>
    <div class="clear space"></div>
	<?php endforeach; ?>

	<?php foreach(Yii::app()->user->numLang as $lang): $lang = ($lang=='vi') ? '' : $lang;?>
    <div class="col1"><?php echo $form->labelEx($model, $this->lang['content'.$lang]) ?></div>
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

    <div class="col1"><?php echo $form->labelEx($model, 'unit') ?></div>
    <div class="col2">
        <?php echo $form->textField($model, 'unit', $htmlOptions = array('class' => 'txt-very-large')); ?>
    </div>
    <div class="clear space"></div>

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
			$('#<?php echo ucfirst($this->ID)?>_description<?php echo $lang?>').keyup(function(){var max=250;var valLen=$(this).val().length;$('.info-keyup<?php echo $lang?>').text( valLen+'/'+max); var val = $(this).val(); if (val.length > 250){ $(this).val(val.slice(0, 250));}});
		});
	</script>
	<?php endforeach; ?>

    <div class="col1"><?php echo $form->labelEx($model, 'pic_thumb') ?></div>
    <div class="col2">
        <?php if ($model->pic_thumb): ?>
            <div class="img-marginb5"><img src="<?php echo Yii::app()->request->baseUrl . USERFILES . '/' . $this->getId() . '/' . $model->pic_thumb ?>" alt="" />
                <?php echo $form->checkBox($model, 'remove_pic_thumb') ?><?php echo $form->labelEx($model, 'remove_pic_thumb', array('class' => 'remove')) ?>
            </div>
        <?php endif; ?>
        <?php echo $form->fileField($model, 'pic_thumb', array('class' => 'fileupload', 'size' => '40%')); ?>
    </div>
    <div class="clear space"></div>

    <div class="col1"><?php echo $form->labelEx($model, 'pic_full') ?></div>
    <div class="col2">
        <?php echo $form->fileField($model, 'pic_full', array('class' => 'fileupload', 'size' => '40%')); ?>
        <?php if ($model->pic_full): ?>
            <a class="nyroModal" href="<?php echo Yii::app()->request->baseUrl . USERFILES . '/' . $this->getId() . '/' . $model->pic_full ?>">Xem ảnh lớn</a>
        <?php endif; ?>
    </div>
    <div class="clear space"></div>

    <?php if ($model->pic_desc): ?>
        <?php $str = explode('|', $model->pic_desc); ?>
        <?php foreach ($str as $value): ?>
            <div class="col1"><?php echo $form->labelEx($model, 'pic_desc') ?></div>
            <div class="col2">
                <a class="nyroModal" href="<?php echo Yii::app()->request->baseUrl . USERFILES . '/' . $this->getId() . '/' . $value ?>">Xem ảnh lớn</a>
                <label class="remove"><input type="checkbox" value="<?php echo $value ?>" name="<?php echo ucfirst($this->ID) ?>[remove_pic_desc][]" /> Remove</label>
            </div>
            <div class="clear space"></div>
        <?php endforeach; ?>
    <?php endif; ?>

    <p class="rows"><a href="#" id="add-rows"><?php echo $this->lang['pic_desc']?></a></p>

    <div class="col1"><?php echo $form->labelEx($model, 'hot', $htmlOptions = array('for' => ucfirst($this->ID) . '_hot_0')) ?></div>
    <div class="col2 radio">
        <?php echo $form->radioButtonList($model, 'hot', array('0'=>$this->lang['normal'], '1'=>$this->lang['hot']), array('separator' => '&nbsp;&nbsp;')); ?>
    </div>
    <div class="clear space"></div>

    <div class="col1"><?php echo $form->labelEx($model, 'enable', $htmlOptions = array('for' => ucfirst($this->ID) . '_enable_0')) ?></div>
    <div class="col2 radio">
        <?php echo $form->radioButtonList($model, 'enable', array('1'=>$this->lang['show'], '0'=>$this->lang['hidden']), array('separator' => '&nbsp;&nbsp;')); ?>
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
	<?php $this->widget('ext.seoAlias.seoAlias', array('model' => $model, 'source' => 'title'.$lang, 'target' => 'tag'.$lang)); ?>
<?php endforeach?>
<script type="text/javascript">
    $(document).ready(function(){
        $("#add-rows").click(function(){
            $(".rows").before('<div class="col1"><?php echo $this->lang['pic_desc']?></div><div class="col2"><input type="file" name="<?php echo ucfirst($this->ID) ?>[pic_desc][]" size="40%" /></div><div class="clear space"></div>');
            return false;
        });
    });
</script>