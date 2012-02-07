<?php $form = $this->beginWidget('CActiveForm', array('id'=>'frm', 'enableAjaxValidation'=>true, 'enableClientValidation' =>true, 'htmlOptions'=>array('enctype' =>'multipart/form-data')));?>
    <fieldset>
        <legend>Add information template</legend>
        <?php echo $form->errorSummary($model, ''); ?>
        <p>
            <label><?php echo $form->labelEx($model, 'template') ?></label>
            <?php echo $form->textField($model, 'template', $htmlOptions=array('class'=>'txt-large')); ?>
        </p>
        <p>
            <label><?php echo $form->labelEx($model, 'template_name') ?></label>
            <?php echo $form->textField($model, 'template_name', $htmlOptions=array('class'=>'txt-large')); ?>
        </p>
        <p>
            <label><?php echo $form->labelEx($model, 'description') ?></label>
            <?php echo $form->textField($model, 'description', $htmlOptions=array('class'=>'txt-large')); ?>
        </p>
        <p>
            <label><?php echo $form->labelEx($model, 'fileupload') ?></label>
            <?php echo $form->fileField($model, 'fileupload', array('class'=>'fileupload', 'size'=>'40%')); ?> <span><i>250 x 175</i></span>
        </p>
    </fieldset>

    <fieldset>
        <legend>Add configuration template</legend>
        <p class="rows"><a href="#" id="add-rows">Add row</a></p>
        <p>
            <label>&nbsp;</label>
            <?php echo CHtml::submitButton('Submit', array('name'=>'submit', 'class'=>'login', 'title'=>'Submit')); ?>
        </p>
    </fieldset>
    <script type="text/javascript">
        $(document).ready(function(){
            $("#add-rows").click(function(){
                $(".rows").before('<p><label>Configs</label> <select name="config_name[]"><option value="advs_width">advs_width</option><option value="advs_height">advs_height</option><option value="banner_width">banner_width</option><option value="banner_height">banner_height</option><option value="logo_width">logo_width</option><option value="logo_height">logo_height</option><option value="products_width_thumb">products_width_thumb</option><option value="products_height_thumb">products_height_thumb</option><option value="products_width">products_width</option><option value="products_height">products_height</option><option value="product_cats_width">product_cats_width</option><option value="product_cats_height">product_cats_height</option><option value="services_width">services_width</option><option value="services_height">services_height</option></select> <input name="config_value[]" value="value" maxlength="4" class="txt-small" /> <input name="config_desc[]" value="" maxlength="50" class="txt-large" /></p>');
            });
        });
    </script>
<?php $this->endWidget();?>