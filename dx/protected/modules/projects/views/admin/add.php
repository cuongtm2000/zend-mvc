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

        
		
        <?php foreach($this->listLanguage as $key):?>
		<div class="col1"><?php echo $form->labelEx($model, 'preview'.$key) ?></div>
		<div class="col2">
			<?php echo $form->textArea($model, 'preview'.$key, array('cols'=>20, 'rows'=>10)); ?>
			<script type="text/javascript">
				writeCookie('sessionPath', '<?php echo Yii::app()->baseUrl?>', 1);
				tinyMCE.init({
					 file_browser_callback: 'openKCFinder',
					 mode:"exact",
					 elements : "<?php echo get_class($model)?>_preview<?php echo $key?>",
					 theme:"advanced",
					 language : "vi",
					 plugins : "paste, autolink,lists,style,layer,table,save,advhr,advimage,advlink,iespell,inlinepopups,insertdatetime,preview,media,searchreplace,print,contextmenu,directionality,fullscreen,noneditable,visualchars,nonbreaking,xhtmlxtras,template",

					 theme_advanced_buttons1 : "bold,italic,underline,strikethrough,formatselect,fontsizeselect,|,justifyleft,justifycenter,justifyright,justifyfull,pastetext,pasteword,|,link,unlink,|,image,media,|,fullscreen",
					 theme_advanced_buttons2 : "forecolor,backcolor,bullist,numlist,underline,justifyfull,outdent,indent,sub,sup,tablecontrols,visualaid,charmap,removeformat",
					 theme_advanced_buttons3: "",
					 theme_advanced_blockformats : "p,h2,h3,h4,blockquote,div",
					 theme_advanced_font_sizes : "8pt,9pt,10pt,11pt,12pt,14pt",

					 relative_urls : false,

					 accessibility_warnings : false,
					 //accessibility_focus : false,

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

		<div class="infotab">
			<ul class="tabs">
				<li><a href="#tab1" title="Thông tin tổng quan">Thông tin tổng quan</a></li>
				<li><a href="#tab2" title="Mặt bằng">Mặt bằng</a></li>
				<li><a href="#tab3" title="Sơ đồ vị trí">Sơ đồ vị trí</a></li>
				<li><a href="#tab4" title="hình ảnh">Hình ảnh</a></li>
				<li><a href="#tab5" title="vieo">Video</a></li>
			</ul>
			<div class="tab_container">
				<div id="tab1" class="tab_content">
					<?php foreach($this->listLanguage as $key):?>
					<div class="col1"><?php echo $form->labelEx($model, 'content'.$key) ?></div>
					<div class="col2">
						<?php echo $form->textArea($model, 'content'.$key, array('cols'=>20, 'rows'=>10)); ?>
						<script type="text/javascript">
							writeCookie('sessionPath', '<?php echo Yii::app()->baseUrl?>', 1);
							tinyMCE.init({
								 file_browser_callback: 'openKCFinder',
								 mode:"exact",
								 elements : "<?php echo get_class($model)?>_content<?php echo $key?>",
								 theme:"advanced",
								 language : "vi",
								 plugins : "paste, autolink,lists,style,layer,table,save,advhr,advimage,advlink,iespell,inlinepopups,insertdatetime,preview,media,searchreplace,print,contextmenu,directionality,fullscreen,noneditable,visualchars,nonbreaking,xhtmlxtras,template",

								 theme_advanced_buttons1 : "bold,italic,underline,strikethrough,formatselect,fontsizeselect,|,justifyleft,justifycenter,justifyright,justifyfull,pastetext,pasteword,|,link,unlink,|,image,media,|,fullscreen",
								 theme_advanced_buttons2 : "forecolor,backcolor,bullist,numlist,underline,justifyfull,outdent,indent,sub,sup,tablecontrols,visualaid,charmap,removeformat",
								 theme_advanced_buttons3: "",
								 theme_advanced_blockformats : "p,h2,h3,h4,blockquote,div",
								 theme_advanced_font_sizes : "8pt,9pt,10pt,11pt,12pt,14pt",

								 relative_urls : false,

								 accessibility_warnings : false,
								 //accessibility_focus : false,

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
				</div>

				<div id="tab2" class="tab_content">
					<p class="rows"><a href="#" id="add-rows">Thêm hình ảnh Mặt bằng</a></p>
				</div>
				
				<div id="tab3" class="tab_content">
					<?php foreach($this->listLanguage as $key):?>
					<div class="col1"><?php echo $form->labelEx($model, 'detail'.$key) ?></div>
					<div class="col2">
						<?php echo $form->textArea($model, 'detail'.$key, array('cols'=>20, 'rows'=>10)); ?>
						<script type="text/javascript">
							writeCookie('sessionPath', '<?php echo Yii::app()->baseUrl?>', 1);
							tinyMCE.init({
								 file_browser_callback: 'openKCFinder',
								 mode:"exact",
								 elements : "<?php echo get_class($model)?>_detail<?php echo $key?>",
								 theme:"advanced",
								 language : "vi",
								 plugins : "paste, autolink,lists,style,layer,table,save,advhr,advimage,advlink,iespell,inlinepopups,insertdatetime,preview,media,searchreplace,print,contextmenu,directionality,fullscreen,noneditable,visualchars,nonbreaking,xhtmlxtras,template",

								 theme_advanced_buttons1 : "bold,italic,underline,strikethrough,formatselect,fontsizeselect,|,justifyleft,justifycenter,justifyright,justifyfull,pastetext,pasteword,|,link,unlink,|,image,media,|,fullscreen",
								 theme_advanced_buttons2 : "forecolor,backcolor,bullist,numlist,underline,justifyfull,outdent,indent,sub,sup,tablecontrols,visualaid,charmap,removeformat",
								 theme_advanced_buttons3: "",
								 theme_advanced_blockformats : "p,h2,h3,h4,blockquote,div",
								 theme_advanced_font_sizes : "8pt,9pt,10pt,11pt,12pt,14pt",

								 relative_urls : false,

								 accessibility_warnings : false,
								 //accessibility_focus : false,

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
				</div>
				
				<div id="tab4" class="tab_content">
					<p class="pic_slide"><a href="#" id="pic_slide">Thêm hình ảnh</a></p>
				</div>
				<div id="tab5" class="tab_content">
					<div class="col1"><?php echo $form->labelEx($model, 'video_youtube') ?></div>
					<div class="col2">
						<?php echo $form->textField($model, 'video_youtube', array('class'=>'txt-very-large')); ?>
					</div>
					<div class="clear space"></div>
				</div>
			</div>
		</div> <div class="clear"></div>
		
		<div class="col1"><?php echo $form->labelEx($model, 'pic_thumb') ?></div>
		<div class="col2">
			<?php echo $form->fileField($model, 'pic_thumb', array('class' => 'fileupload')); ?>
		</div>
		<div class="clear space"></div>
		
        <?php foreach($this->listLanguage as $key):?>
            <div class="col1"><?php echo $form->labelEx($model, 'tag'.$key) ?></div>
            <div class="col2">
                <?php echo $form->textField($model, 'tag'.$key, array('class'=>'txt-very-large')); ?>
                <?php $this->widget('ext.SeoAlias.SeoAlias', array('model' => $model, 'source' => 'title'.$key, 'target' => 'tag'.$key)); ?>
            </div>
            <div class="clear space"></div>
		<?php endforeach?>

        <?php foreach($this->listLanguage as $key):?>
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
		<?php endforeach?>

		<div class="col1"><?php echo $form->labelEx($model, 'hot', array('for'=>get_class($model).'_hot_0')) ?></div>
		<div class="col2 radio">
			<?php echo $form->radioButtonList($model, 'hot', array('0'=>'Normal', '1'=>'Hot'), array('separator'=>'&nbsp;&nbsp;')); ?>
		</div>
		<div class="clear space"></div>

		<div class="col1"><?php echo $form->labelEx($model, 'enable', array('for'=>get_class($model).'_enable_0')) ?></div>
		<div class="col2 radio">
			<?php echo $form->radioButtonList($model, 'enable', array('1'=>$this->lang['show'], '0'=>$this->lang['hidden']), array('separator'=>'&nbsp;&nbsp;')); ?>
		</div>
		<div class="clear space"></div>

		<div class="col1">&nbsp;</div>
		<div class="col2">
			<?php echo CHtml::submitButton($this->lang['add_new'], array('name'=>'submit', 'class'=>'login', 'title'=>$this->lang['add_new'])); ?>
			<?php echo Chtml::link($this->lang['cancel'], 'javascript:history.back()', array('class'=>'login-a', 'title'=>$this->lang['cancel'])) ?>
		</div><div class="clear space"></div>
	</fieldset>
	<?php $this->endWidget();?>

    <script type="text/javascript">
        $(document).ready(function(){
            $("#add-rows").click(function(){
                $(".rows").before('<div class="col1">Mặt bằng</div><div class="col2"><input type="file" name="<?php echo get_class($model)?>[pic_desc][]" class="fileupload" /> <span class="readme"></span></div><div class="clear space"></div>');
                return false;
            });
            $("#pic_slide").click(function(){
                $(".pic_slide").before('<div class="col1">Hình ảnh</div><div class="col2"><input type="file" name="<?php echo get_class($model)?>[pic_slide][]" class="fileupload" /> <span class="readme"></span></div><div class="clear space"></div>');
                return false;
            });
        });
    </script>
	<script type="text/javascript" src="<?php echo Yii::app()->theme->baseUrl; ?>/js/tab-sub-right.js" ></script>
	<link rel="stylesheet" type="text/css" href="<?php echo Yii::app()->theme->baseUrl; ?>/css/tab.css" />
<?php endif?>