<?php $form = $this->beginWidget('CActiveForm', array('id'=>'frm', 'enableAjaxValidation'=>true, 'enableClientValidation' =>true, 'htmlOptions' => array('enctype' => 'multipart/form-data')));?>
<?php echo $form->errorSummary($model, ''); ?>
<fieldset>
    <legend>Edit News</legend>

    <div class="col1"><?php echo $form->labelEx($model, 'dos_module_item_cat_cat_id') ?></div>
    <div class="col2">
        <?php echo $form->dropDownList($model, 'dos_module_item_cat_cat_id', CHtml::listData($listItemsCat, 'cat_id', 'cat_title')); ?>
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
        //<![CDATA[
            CKEDITOR.replace('<?php echo get_class($model)?>[preview]');
        //]]>
        </script>
    </div>
    <div class="clear space"></div>
    
    <div class="col1"><?php echo $form->labelEx($model, 'content') ?></div>
    <div class="col2">
        <?php echo $form->textArea($model, 'content', $htmlOptions=array('cols'=>20, 'rows'=>10)); ?>
        <script type="text/javascript">
        //<![CDATA[
            CKEDITOR.replace('<?php echo get_class($model)?>[content]');
        //]]>
        </script>
    </div>
    <div class="clear space"></div>

    <div class="col1"><?php echo $form->labelEx($model, 'pic_thumb') ?></div>
    <div class="col2">
        <?php if ($model->pic_thumb): ?>
            <div class="img-marginb5"><img src="<?php echo Yii::app()->request->baseUrl . '/public/userfiles/images/'.Yii::app()->user->id.'/images/' . $this->getId() . '/' . $model->pic_thumb ?>" alt="<?php echo $model->title?>" />
                <?php echo $form->checkBox($model, 'remove_pic_thumb') ?><?php echo $form->labelEx($model, 'remove_pic_thumb', array('class' => 'remove')) ?>
            </div>
        <?php endif; ?>
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
        <?php echo CHtml::submitButton('Edit', array('name' => 'submit', 'class' => 'login', 'title' => 'Edit')); ?>
    </div><div class="clear space"></div>    
</fieldset>
<?php $this->endWidget();?>
<?php $this->widget('ext.seoAlias.seoAlias', array('model'=>$model, 'source'=>'title', 'target'=>'tag')); ?>