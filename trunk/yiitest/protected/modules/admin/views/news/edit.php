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
        <?php echo $form->textField($model, 'title'.$lang, $htmlOptions=array('class'=>'txt-large-x')); ?>
    </div>
    <div class="clear space"></div>
    <?php endforeach; ?>

    <?php foreach(Yii::app()->user->numLang as $lang): $lang = ($lang=='vi') ? '' : $lang;?>
    <div class="col1"><?php echo $form->labelEx($model, 'preview'.$lang) ?></div>
    <div class="col2">
        <?php echo $form->textArea($model, 'preview'.$lang, $htmlOptions=array('cols'=>20, 'rows'=>10)); ?>
		<script type="text/javascript">
			tinyMCE.init({
				 file_browser_callback: 'openKCFinder',
				 mode:"exact",
				 elements : "<?php echo ucfirst($this->ID)?>_preview<?php echo $lang?>",
				 theme:"advanced",
				 language : "vi",
				 //skin : "o2k7",
				 //skin_variant : "silver",
				 plugins : "paste, autolink,lists,style,layer,table,save,advhr,advimage,advlink,iespell,inlinepopups,insertdatetime,preview,media,searchreplace,print,contextmenu,directionality,fullscreen,noneditable,visualchars,nonbreaking,xhtmlxtras,template",

				 theme_advanced_buttons1 : "bold,italic,underline,strikethrough,formatselect,fontsizeselect,|,justifyleft,justifycenter,justifyright,justifyfull,pastetext,pasteword,|,link,unlink,|,image,media,|,fullscreen",
				 theme_advanced_buttons2 : "forecolor,backcolor,bullist,numlist,underline,justifyfull,outdent,indent,sub,sup,tablecontrols,visualaid,charmap,removeformat",
				 theme_advanced_buttons3: "",

				 relative_urls : false,

				 paste_text_use_dialog : true,
				 paste_auto_cleanup_on_paste : true,
				 paste_remove_styles: true,
				 paste_remove_styles_if_webkit: true,
				 paste_strip_class_attributes: true,

				 paste_text_sticky : true,
				 setup : function(ed) {ed.onInit.add(function(ed) {ed.pasteAsPlainText = true;});},

				 theme_advanced_toolbar_location : "top",
				 theme_advanced_toolbar_align : "left",
				 //theme_advanced_statusbar_location : "bottom",
				 theme_advanced_resizing : true,
				 width : "100%",
				 height: "300"
			 });
		</script>
    </div>
    <div class="clear space"></div>
    <?php endforeach; ?>

    <?php foreach(Yii::app()->user->numLang as $lang): $lang = ($lang=='vi') ? '' : $lang;?>
    <div class="col1"><?php echo $form->labelEx($model, 'content'.$lang) ?></div>
    <div class="col2">
        <?php echo $form->textArea($model, 'content'.$lang, $htmlOptions=array('cols'=>20, 'rows'=>10)); ?>
		<script type="text/javascript">
			tinyMCE.init({
				 file_browser_callback: 'openKCFinder',
				 mode:"exact",
				 elements : "<?php echo ucfirst($this->ID)?>_content<?php echo $lang?>",
				 theme:"advanced",
				 language : "vi",
				 //skin : "o2k7",
				 //skin_variant : "silver",
				 plugins : "paste, autolink,lists,style,layer,table,save,advhr,advimage,advlink,iespell,inlinepopups,insertdatetime,preview,media,searchreplace,print,contextmenu,directionality,fullscreen,noneditable,visualchars,nonbreaking,xhtmlxtras,template",

				 theme_advanced_buttons1 : "bold,italic,underline,strikethrough,formatselect,fontsizeselect,|,justifyleft,justifycenter,justifyright,justifyfull,pastetext,pasteword,|,link,unlink,|,image,media,|,fullscreen",
				 theme_advanced_buttons2 : "forecolor,backcolor,bullist,numlist,underline,justifyfull,outdent,indent,sub,sup,tablecontrols,visualaid,charmap,removeformat",
				 theme_advanced_buttons3: "",

				 relative_urls : false,

				 paste_text_use_dialog : true,
				 paste_auto_cleanup_on_paste : true,
				 paste_remove_styles: true,
				 paste_remove_styles_if_webkit: true,
				 paste_strip_class_attributes: true,

				 paste_text_sticky : true,
				 setup : function(ed) {ed.onInit.add(function(ed) {ed.pasteAsPlainText = true;});},

				 theme_advanced_toolbar_location : "top",
				 theme_advanced_toolbar_align : "left",
				 //theme_advanced_statusbar_location : "bottom",
				 theme_advanced_resizing : true,
				 width : "100%",
				 height: "250"
			 });
		</script>
    </div>
    <div class="clear space"></div>
    <?php endforeach; ?>

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

    <div class="col1"><?php echo $form->labelEx($model, 'enable', $htmlOptions=array('for'=>ucfirst($this->ID).'_enable_0')) ?></div>
    <div class="col2 radio">
        <?php echo $form->radioButtonList($model, 'enable', array('1'=>$this->lang['show'], '0'=>$this->lang['hidden']), array('separator'=>'&nbsp;&nbsp;')); ?>
    </div>
    <div class="clear space"></div>

    <div class="col1">&nbsp;</div>
    <div class="col2">
		<?php echo CHtml::submitButton($this->lang['edit'], array('name'=>'submit', 'class'=>'login', 'title'=>$this->lang['edit'])); ?>
    </div><div class="clear space"></div>
</fieldset>
<?php $this->endWidget();?>
<?php foreach(Yii::app()->user->numLang as $lang): $lang = ($lang=='vi') ? '' : $lang;?>
    <?php $this->widget('ext.seoAlias.seoAlias', array('model'=>$model, 'source'=>'title'.$lang, 'target'=>'tag'.$lang)); ?>
<?php endforeach?>