<?php $form = $this->beginWidget('CActiveForm', array('id'=>'frm', 'enableAjaxValidation'=>true, 'enableClientValidation' =>true,));?>
    <?php echo $form->errorSummary($model, ''); ?>
    <fieldset>
        <legend><?php echo $this->lang['add_new'] ?> <?php echo strtolower($this->lang[$this->module->id])?></legend>

        <?php foreach($this->listLanguage as $key => $lang):?>
        <div class="col1"><?php echo $form->labelEx($model, 'title'.$key) ?></div>
        <div class="col2">
            <?php echo $form->textField($model, 'title'.$key, array('class'=>'txt-very-large')); ?>
        </div>
        <div class="clear space"></div>
        <?php endforeach; ?>

        <?php foreach($this->listLanguage as $key => $lang):?>
        <div class="col1"><?php echo $form->labelEx($model, 'content'.$key) ?></div>
        <div class="col2">
            <?php echo $form->textArea($model, 'content'.$key, array('cols'=>20, 'rows'=>10)); ?>
            <script type="text/javascript">
                tinyMCE.init({
                                 file_browser_callback: 'openKCFinder',
                                 mode:"exact",
                                 elements : "<?php echo get_class($model)?>_content<?php echo $key?>",
                                 theme:"advanced",
                                 language : "vi",
                                 //skin : "o2k7",
                                 //skin_variant : "silver",
                                 plugins : "paste, autolink,lists,style,layer,table,save,advhr,advimage,advlink,iespell,inlinepopups,insertdatetime,preview,media,searchreplace,print,contextmenu,directionality,fullscreen,noneditable,visualchars,nonbreaking,xhtmlxtras,template",

                                 theme_advanced_buttons1 : "bold,italic,underline,strikethrough,formatselect,fontsizeselect,|,justifyleft,justifycenter,justifyright,justifyfull,pastetext,pasteword,|,link,unlink,|,image,media,|,fullscreen",
                                 theme_advanced_buttons2 : "forecolor,backcolor,bullist,numlist,underline,justifyfull,outdent,indent,sub,sup,tablecontrols,visualaid,charmap,removeformat",
                                 theme_advanced_buttons3: "",

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

        <?php foreach($this->listLanguage as $key => $lang):?>
        <div class="col1"><?php echo $form->labelEx($model, 'tag'.$key) ?></div>
        <div class="col2">
            <?php echo $form->textField($model, 'tag'.$key, array('class'=>'txt-very-large')); ?>
        </div>
        <div class="clear space"></div>
        <?php endforeach?>

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
        <?php endforeach?>

        <div class="col1"><?php echo $form->labelEx($model, 'Hot', array('for'=>get_class($model).'_hot_0')) ?></div>
        <div class="col2 radio">
            <?php echo $form->radioButtonList($model, 'hot', array('0'=>'Normal', '1'=>'Hot'), array('separator'=>'&nbsp;&nbsp;')); ?>
        </div>
        <div class="clear space"></div>

        <div class="col1"><?php echo $form->labelEx($model, 'Show', array('for'=>get_class($model).'_enable_0')) ?></div>
        <div class="col2 radio">
            <?php echo $form->radioButtonList($model, 'enable', array('1'=>'Show', '0'=>'Hidden'), array('separator'=>'&nbsp;&nbsp;')); ?>
        </div>
        <div class="clear space"></div>

        <div class="col1">&nbsp;</div>
        <div class="col2">
            <?php echo CHtml::submitButton($this->lang['edit'], array('name'=>'submit', 'class'=>'login', 'title'=>$this->lang['edit'])); ?>
            <?php echo Chtml::link($this->lang['cancel'], 'javascript:history.back()', array('class'=>'login-a', 'title'=>$this->lang['cancel'])) ?>
        </div>
        <div class="clear space"></div>
    </fieldset>
<?php $this->endWidget();?>
<?php foreach($this->listLanguage as $key => $lang):?>
    <?php $this->widget('ext.seoAlias.seoAlias', array('model'=>$model, 'source'=>'title'.$key, 'target'=>'tag'.$key)); ?>
<?php endforeach?>