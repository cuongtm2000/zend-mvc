<ul id="crumbs">
    <li><a href="<?php echo Yii::app()->request->baseUrl ?>/">Home</a></li>
    <li><a href="<?php echo Yii::app()->request->baseUrl ?>/dashboard">Dashboard</a></li>
    <li>Add post</li>
</ul>
<?php $form = $this->beginWidget('CActiveForm', array('id' => 'frm', 'enableAjaxValidation' => true, 'enableClientValidation' => true, 'htmlOptions'=>array('enctype' =>'multipart/form-data'))); ?>
<fieldset>
    <legend>Add post</legend>
    <?php echo $form->errorSummary($model, ''); ?>
    <div class="col1"><?php echo $form->labelEx($model, 'post_title') ?></div>
    <div class="col2">
        <?php echo $form->textField($model, 'post_title'); ?>
    </div>
    <div class="clear space"></div>
    
    <div class="col1"><?php echo $form->labelEx($model, 'post_detail') ?></div>
    <div class="col2">
        <?php echo $form->textArea($model, 'post_detail'); ?>
        <script type="text/javascript">
        //<![CDATA[
            CKEDITOR.replace('<?php echo get_class($model)?>[post_detail]');
        //]]>
        </script>
    </div>
    <div class="clear space"></div>
    
    <div class="col1"><?php echo $form->labelEx($model, 'post_img') ?></div>
    <div class="col2">
        <?php echo $form->fileField($model, 'post_img', array('size'=>'36')); ?>
    </div>
    <div class="clear space"></div>
    
    <div class="col1"><?php echo $form->labelEx($model, 'post_demo') ?></div>
    <div class="col2">
        <?php echo $form->textField($model, 'post_demo'); ?>
    </div>
    <div class="clear space"></div>
    
    <div class="col1"><?php echo $form->labelEx($model, 'post_link') ?></div>
    <div class="col2">
        <?php echo $form->textField($model, 'post_link'); ?> <?php echo $form->error($model, 'post_link'); ?>
    </div>
    <div class="clear space"></div>
    
    <div class="col1"><?php echo $form->labelEx($model, 'post_description') ?></div>
    <div class="col2">
        <?php echo $form->textArea($model, 'post_description', $htmlOptions = array('cols' => 89, 'rows' => 5)); ?> <span class="info-keyup">0</span>
    </div>
    <div class="clear space"></div>
    
    <div class="col1"><?php echo $form->labelEx($model, 'hoiit_cats_cat_id') ?></div>
    <div class="col2">
        <?php $cats_class = new Cats; $values = $cats_class->MultiLevelCats(0); $data = array(); foreach($values as $value){
            $data[$value['cat_id']] = $value['cat_name'];
        }
        ?>
        <?php echo $form->dropDownList($model, 'hoiit_cats_cat_id', $data); ?>
    </div>
    <div class="clear space"></div>
    
    <div class="col1"><?php echo $form->labelEx($model, 'post_enable') ?></div>
    <div class="col2 radio">
        <?php echo $form->radioButtonList($model, 'post_enable', array('1'=>'Show', '0'=>'Hidden'), array('separator'=>'&nbsp;&nbsp;')); ?>
    </div>
    <div class="clear space"></div>
    
    <p>
        <label>&nbsp;</label>
        <?php echo CHtml::submitButton('  Submit  ', array('class'=>'login', 'name'=>'submit')); ?>
        <input type="button" onclick="javascript:history.back()" value="  Cancel  " class="login" />
    </p>
</fieldset>
<?php $this->endWidget(); ?>
<?php $this->widget('ext.seoAlias.seoAlias', array('model'=>$model, 'source'=>'post_title', 'target'=>'post_link')); ?>