<?php $form = $this->beginWidget('CActiveForm', array('id' => 'frm', 'enableAjaxValidation' => true, 'enableClientValidation' => true)); ?>
    <fieldset>
        <legend>Config menu</legend>
        <?php echo $form->errorSummary($model, ''); ?>
        <?php foreach($this->listLanguage as $key):?>
            <p class="clear">
                <?php echo $form->labelEx($model, 'menu_name'.$key) ?>
                <?php echo $form->textField($model, 'menu_name'.$key, array('class'=>'txt-large-x')); ?>
            </p>
        <?php endforeach; ?>
        <p class="clear">
            <?php echo $form->labelEx($model, 'parent_id') ?>
            <?php echo $form->dropDownList($model, 'parent_id', CHtml::listData(Menus::model()->listCats(1, null), 'menu_id', 'menu_name_prefix')); ?>
        </p>
        <p class="clear">
            <?php echo $form->labelEx($model, 'menu_type') ?>
            <?php echo $form->dropDownList($model, 'menu_type', array('1' => 'Content page', '0' => 'External link')); ?>
        </p>
        <p class="clear" id="url-select">
            <?php echo $form->labelEx($model, 'menu_url_content_page') ?>
            <?php echo $form->dropDownList($model, 'menu_url_content_page', Module::model()->listModuleByLang()); ?>
        </p>
        <?php foreach($this->listLanguage as $key):?>
        <p class="clear" id="url<?php echo $key?>">
            <?php echo $form->labelEx($model, 'menu_url'.$key) ?>
            <?php echo $form->textField($model, 'menu_url'.$key, array('class'=>'txt-large-x')); ?>
        </p>
        <?php endforeach; ?>
        <p class="clear" id="target">
            <?php echo $form->labelEx($model, 'menu_target') ?>
            <?php echo $form->dropDownList($model, 'menu_target', array('_blank' => 'New page', '' => 'Current page'), array('class' => 'select-110')); ?>
        </p>
        <?php foreach($this->listLanguage as $key):?>
        <p class="clear" id="description<?php echo $key?>">
            <?php echo $form->labelEx($model, 'menu_description'.$key) ?>
            <?php echo $form->textArea($model, 'menu_description'.$key, array('rows' => 5, 'cols' => 20)); ?>
        </p>
        <?php endforeach; ?>
        <p class="clear radio">
            <?php echo $form->labelEx($model, 'menu_homepage', array('class' => 'p-label', 'for'=>get_class($model).'_menu_homepage_1')) ?>
            <?php echo $form->radioButtonList($model, 'menu_homepage', array('1'=>'Yes', '0'=>'No'), array('separator'=>'&nbsp;&nbsp;')); ?>
        </p>
        <p class="clear radio">
            <?php echo $form->labelEx($model, 'menu_activated', array('class' => 'p-label', 'for'=>get_class($model).'_menu_activated_0')) ?>
            <?php echo $form->radioButtonList($model, 'menu_activated', array('1'=>'Show', '0'=>'Hidden'), array('separator'=>'&nbsp;&nbsp;')); ?>
        </p>
        <p class="clear">
            <label>&nbsp;</label>
            <?php echo CHtml::submitButton('Update Configuration', array('name' => 'submit', 'class' => 'login', 'title' => 'Update Configuration')); ?>
        </p>
    </fieldset>
<?php $this->endWidget(); ?>
<script type="text/javascript">
    $(document).ready(function(){
        $("#MenusForm_menu_type").change(function () {
            $("#MenusForm_menu_type option:selected").each(function () {
                var type = $(this).val();
                if(type==1){
                    $("#urlvi").hide();
                    $("#urlen").hide();
                    $("#target").hide();
                    $("#descriptionvi").show();
                    $("#descriptionen").show();
                    $("#url-select").show();
                }else{
                    $("#urlvi").show();
                    $("#urlen").show();
                    $("#target").show();
                    $("#descriptionvi").hide();
                    $("#descriptionen").hide();
                    $("#url-select").hide();
                }
            });
        }).change();
    });
</script>