<?php $form = $this->beginWidget('CActiveForm', array('id'=>'frm', 'enableAjaxValidation'=>true, 'enableClientValidation' =>true, 'htmlOptions'=>array('enctype' =>'multipart/form-data')));?>
    <fieldset>
        <legend>Edit information template</legend>
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
            <div class="img-marginb5"><img src="<?php echo Yii::app()->request->baseUrl ?>/themes/<?php echo $model->template?>/images/tiny.png" alt="" /></div>
            <?php echo $form->fileField($model, 'fileupload', array('class'=>'fileupload fileupload-img', 'size'=>'40%')); ?> &nbsp;<span><i>260 x 182</i></span>
        </p>
    </fieldset>

	<fieldset>
		<legend>Edit business template</legend>
		<div>
			<?php $business = Bussiness::model()->findAll(); $data = array(); foreach ($business as $value){$data[$value['bussiness_id']] = $value['bussiness_name'];}?>
			<?php echo str_replace('span', 'div', $form->checkBoxList($model, 'choose_business', $data, array('template'=>'<p class="choose-business">{label} {input}</p>', 'separator' => '')))?>
		</div>
	</fieldset>

    <fieldset>
        <legend>Edit configuration template</legend>
        <p class="rows"><a href="#" id="add-rows">Add row</a></p>
        <?php foreach ($configs as $config):?>
            <p>
                <label>Configs</label>
                <input name="config_name[]" value="<?php echo $config['config_name']?>" maxlength="30" class="txt-large" />
                <input name="config_value[]" value="<?php echo $config['config_value']?>" maxlength="4" class="txt-tiny" />
                <input name="config_desc[]" value="<?php echo $config['config_desc']?>" maxlength="50" class="txt-small-x" />
            </p>
        <?php endforeach;?>
        <p>
            <label>&nbsp;</label>
            <?php echo CHtml::submitButton('Submit', array('name'=>'submit', 'class'=>'login', 'title'=>'Submit')); ?>
        </p>
    </fieldset>
    <script type="text/javascript">
        $(document).ready(function(){
            $("#add-rows").click(function(){
                $(".rows").before('<p><label>Configs</label> <select name="config_name[]"><option value="advs_left_width">advs_left_width</option><option value="advs_left_height">advs_left_height</option><option value="advs_right_width">advs_right_width</option><option value="advs_right_height">advs_right_height</option><option value="advs_top_width">advs_top_width</option><option value="advs_top_height">advs_top_height</option><option value="advs_center_width">advs_center_width</option><option value="advs_center_height">advs_center_height</option><option value="advs_bottom_width">advs_bottom_width</option><option value="advs_bottom_height">advs_bottom_height</option><option value="banner_width">banner_width</option><option value="banner_height">banner_height</option><option value="logo_width">logo_width</option><option value="logo_height">logo_height</option><option value="products_width_thumb">products_width_thumb</option><option value="products_height_thumb">products_height_thumb</option><option value="products_width">products_width</option><option value="products_height">products_height</option><option value="products_cat_width">products_cat_width</option><option value="products_cat_height">products_cat_height</option><option value="products_num_paging_new">products_num_paging_new</option><option value="products_num_paging_hot">products_num_paging_hot</option><option value="products_num_paging_cat">products_num_paging_cat</option><option value="products_num_paging_other">products_num_paging_other</option><option value="services_width">services_width</option><option value="services_height">services_height</option><option value="news_cat_width">news_cat_width</option><option value="news_cat_height">news_cat_height</option><option value="news_width_thumb">news_width_thumb</option><option value="news_height_thumb">news_height_thumb</option><option value="news_num_paging_new">news_num_paging_new</option><option value="news_num_paging_hot">news_num_paging_hot</option><option value="news_num_paging_index">news_num_paging_index</option><option value="news_num_paging_cat">news_num_paging_cat</option><option value="video_width_thumb">video_width_thumb</option><option value="video_height_thumb">video_height_thumb</option><option value="video_num_paging_index">video_num_paging_index</option><option value="video_num_paging_cat">video_num_paging_cat</option><option value="max_image_width">max_image_width</option><option value="max_image_height">max_image_height</option></select> <input name="config_value[]" value="" maxlength="4" class="txt-tiny" /> <input name="config_desc[]" value="" maxlength="50" class="txt-small-x" /></p>');
                return false;
            });
        });
    </script>
<?php $this->endWidget();?>