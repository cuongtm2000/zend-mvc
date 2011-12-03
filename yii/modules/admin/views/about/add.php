<div class="content">
    <?php $form = $this->beginWidget('CActiveForm', array('id'=>'frm', 'enableAjaxValidation'=>true, 'enableClientValidation' =>true,));?>
    <?php echo $form->errorSummary($model, ''); ?>
    <fieldset>
        <legend>Thêm bài viết mới</legend>
        <div class="col1"><?php echo $form->labelEx($model, 'title') ?></div>
        <div class="col2">
            <?php echo $form->textField($model, 'title', $htmlOptions=array('class'=>'txt-very-large')); ?>
        </div>
        <div class="clear space"></div>
        
        <div class="col1"><?php echo $form->labelEx($model, 'tag') ?></div>
        <div class="col2">
            <?php echo $form->textField($model, 'tag', $htmlOptions=array('class'=>'txt-very-large')); ?>
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
        
        <!-- <p class="rows"><a href="#" id="add-rows">Hình mô tả</a></p> -->
        
        <div class="col1"><?php echo $form->labelEx($model, 'hot', $htmlOptions=array('for'=>'About_hot_0')) ?></div>
	    <div class="col2 radio">
            <?php echo $form->radioButtonList($model, 'hot', array('0'=>'Bình thường', '1'=>'Nổi bật'), array('separator'=>'&nbsp;&nbsp;')); ?>
	    </div>
	    <div class="clear space"></div>
        
        <div class="col1"><?php echo $form->labelEx($model, 'activated', $htmlOptions=array('for'=>'About_activated_0')) ?></div>
	    <div class="col2 radio">
            <?php echo $form->radioButtonList($model, 'activated', array('1'=>'Hiển thị', '0'=>'Ẩn'), array('separator'=>'&nbsp;&nbsp;')); ?>
	    </div>
	    <div class="clear space"></div>
        
        <div class="col1">&nbsp;</div>
	    <div class="col2">
            <?php echo CHtml::submitButton('Thêm mới', array('name'=>'submit', 'class'=>'login', 'title'=>'Thêm mới')); ?>
            <?php echo Chtml::link('Hủy bỏ', 'javascript:history.back()', $htmlOptions=array('class'=>'login-a', 'title'=>'Back')) ?>
	    </div>
	    <div class="clear space"></div>
    </fieldset>
    <?php $this->endWidget();?>
    <?php $this->widget('ext.mbAlias.mbAlias', array('model'=>$model, 'source'=>'title', 'target'=>'tag')); ?>
</div>