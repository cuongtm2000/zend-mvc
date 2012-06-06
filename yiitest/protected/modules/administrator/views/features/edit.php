<?php $form = $this->beginWidget('CActiveForm', array('id'=>'frm', 'enableAjaxValidation'=>true, 'enableClientValidation' =>true,));?>
    <?php echo $form->errorSummary($model, ''); ?>
    <fieldset>
        <legend>Edit</legend>

        <?php foreach(Yii::app()->user->numLang as $lang): $lang = ($lang=='vi') ? '' : $lang;?>
        <div class="col1"><?php echo $form->labelEx($model, 'title'.$lang) ?></div>
        <div class="col2">
            <?php echo $form->textField($model, 'title'.$lang, array('class'=>'txt-very-large')); ?>
        </div>
        <div class="clear space"></div>
        <?php endforeach; ?>

        <?php foreach(Yii::app()->user->numLang as $lang): $lang = ($lang=='vi') ? '' : $lang;?>
        <div class="col1"><?php echo $form->labelEx($model, 'content'.$lang) ?></div>
        <div class="col2">
            <?php echo $form->textArea($model, 'content'.$lang, array('cols'=>20, 'rows'=>10)); ?>
			<script type="text/javascript">
				tinyMCE.init({
					 file_browser_callback: 'openKCFinder',
					 mode:"exact",
					 elements : "<?php echo ucfirst($this->ID)?>_content<?php echo $lang?>",
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

        <div class="col1"><?php echo $form->labelEx($model, 'Hot', array('for'=>ucfirst($this->ID).'_hot_0')) ?></div>
        <div class="col2 radio">
            <?php echo $form->radioButtonList($model, 'hot', array('0'=>'Normal', '1'=>'Hot'), array('separator'=>'&nbsp;&nbsp;')); ?>
        </div>
        <div class="clear space"></div>

        <div class="col1"><?php echo $form->labelEx($model, 'Show', array('for'=>ucfirst($this->ID).'_activated_0')) ?></div>
        <div class="col2 radio">
            <?php echo $form->radioButtonList($model, 'activated', array('1'=>'Show', '0'=>'Hidden'), array('separator'=>'&nbsp;&nbsp;')); ?>
        </div>
        <div class="clear space"></div>

        <div class="col1">&nbsp;</div>
        <div class="col2">
            <?php echo CHtml::submitButton('Edit', array('name'=>'submit', 'class'=>'login', 'title'=>'Edit')); ?>
            <?php echo Chtml::link('Cancel', 'javascript:history.back()', array('class'=>'login-a', 'title'=>'Cancel')) ?>
        </div>
        <div class="clear space"></div>
    </fieldset>
<?php $this->endWidget();?>

<?php foreach(Yii::app()->user->numLang as $lang): $lang = ($lang=='vi') ? '' : $lang;?>
	<?php $this->widget('ext.seoAlias.seoAlias', array('model'=>$model, 'source'=>'title'.$lang, 'target'=>'tag'.$lang)); ?>
<?php endforeach?>