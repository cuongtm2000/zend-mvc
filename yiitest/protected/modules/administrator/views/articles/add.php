<?php $form = $this->beginWidget('CActiveForm', array('id'=>'frm', 'enableAjaxValidation'=>true, 'enableClientValidation' =>true, 'htmlOptions' => array('enctype' => 'multipart/form-data')));?>
<?php echo $form->errorSummary($model, ''); ?>
<fieldset>
    <legend>Add articles</legend>

    <div class="col1"><?php echo $form->labelEx($model, 'dos_module_item_cat_cat_id') ?></div>
    <div class="col2">
        <?php echo $form->dropDownList($model, 'dos_module_item_cat_cat_id', CHtml::listData($list_item_cat, 'cat_id', 'cat_title')); ?>
    </div>
    <div class="clear space"></div>

    <div class="col1"><?php echo $form->labelEx($model, 'title') ?></div>
    <div class="col2">
        <?php echo $form->textField($model, 'title', $htmlOptions=array('class'=>'txt-large-x')); ?>
    </div>
    <div class="clear space"></div>
    
    <div class="col1"><?php echo $form->labelEx($model, 'preview') ?></div>
    <div class="col2">
        <?php echo $form->textArea($model, 'preview', $htmlOptions=array('cols'=>20, 'rows'=>10)); ?>
		<script type="text/javascript">
			tinyMCE.init({
				 file_browser_callback: 'openKCFinder',
				 mode:"exact",
				 elements : "<?php echo ucfirst($this->ID)?>_preview",
				 theme:"advanced",
				 language : "vi",
				 plugins : "paste, autolink,lists,style,layer,table,save,advhr,advimage,advlink,iespell,inlinepopups,insertdatetime,preview,media,searchreplace,print,contextmenu,directionality,fullscreen,noneditable,visualchars,nonbreaking,xhtmlxtras,template",

				 theme_advanced_buttons1 : "bold,italic,underline,strikethrough,formatselect,fontsizeselect,|,justifyleft,justifycenter,justifyright,justifyfull,pastetext,pasteword,|,link,unlink,|,image,media,|,fullscreen",
				 theme_advanced_buttons2 : "forecolor,backcolor,bullist,numlist,underline,justifyfull,outdent,indent,sub,sup,tablecontrols,visualaid,charmap,removeformat",
				 theme_advanced_buttons3: "",
				 theme_advanced_blockformats : "p,h2,h3,h4,blockquote,div",
				 theme_advanced_font_sizes : "8pt,9pt,10pt,11pt,12pt,14pt",

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
    
    <div class="col1"><?php echo $form->labelEx($model, 'detail') ?></div>
    <div class="col2">
        <?php echo $form->textArea($model, 'detail', $htmlOptions=array('cols'=>20, 'rows'=>10)); ?>
		<script type="text/javascript">
			tinyMCE.init({
				 file_browser_callback: 'openKCFinder',
				 mode:"exact",
				 elements : "<?php echo ucfirst($this->ID)?>_detail",
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

    <div class="col1"><?php echo $form->labelEx($model, 'pic_thumb') ?></div>
    <div class="col2">
        <?php echo $form->fileField($model, 'pic_thumb', array('class' => 'fileupload')); ?>
    </div>
    <div class="clear space"></div>
    
    <div class="col1"><?php echo $form->labelEx($model, 'tag') ?></div>
    <div class="col2">
        <?php echo $form->textField($model, 'tag', $htmlOptions=array('class'=>'txt-large-x')); ?>
    </div>
    <div class="clear space"></div>
    
    <div class="col1"><?php echo $form->labelEx($model, 'description') ?></div>
    <div class="col2">
        <?php echo $form->textArea($model, 'description', $htmlOptions=array('cols'=>89, 'rows'=>5)); ?> <span class="info-keyup">0</span>
    </div>
    <div class="clear space"></div>

    <div class="col1"><?php echo $form->labelEx($model, 'hot', $htmlOptions=array('for'=>ucfirst($this->ID).'_hot_0')) ?></div>
    <div class="col2 radio">
        <?php echo $form->radioButtonList($model, 'hot', array('0'=>'Normal', '1'=>'Hot'), array('separator'=>'&nbsp;&nbsp;')); ?>
    </div>
    <div class="clear space"></div>
    
    <div class="col1">&nbsp;</div>
    <div class="col2">
        <?php echo CHtml::submitButton('Add new', array('name' => 'submit', 'class' => 'login', 'title' => 'Add new')); ?>
    </div><div class="clear space"></div>    
</fieldset>
<?php $this->endWidget();?>
<?php $this->widget('ext.seoAlias.seoAlias', array('model'=>$model, 'source'=>'title', 'target'=>'tag')); ?>