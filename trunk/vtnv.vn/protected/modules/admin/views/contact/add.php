<?php $form = $this->beginWidget('CActiveForm', array('id'=>'frm', 'enableAjaxValidation'=>true, 'enableClientValidation' =>true,));?>
<?php echo $form->errorSummary($model, ''); ?>
<fieldset>
    <legend>Thêm mới liên hệ</legend>

    <div class="col1"><?php echo $form->labelEx($model, 'title') ?></div>
    <div class="col2">
        <?php echo $form->textField($model, 'title', $htmlOptions=array('class'=>'txt-very-large')); ?>
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

    <div class="col1"><?php echo $form->labelEx($model, 'tag') ?></div>
    <div class="col2">
        <?php echo $form->textField($model, 'tag', $htmlOptions=array('class'=>'txt-very-large')); ?>
        <?php echo $form->error($model, 'tag'); ?>
    </div>
    <div class="clear space"></div>

    <div class="col1"><?php echo $form->labelEx($model, 'description') ?></div>
    <div class="col2">
        <?php echo $form->textArea($model, 'description', $htmlOptions=array('cols'=>89, 'rows'=>5)); ?> <span class="info-keyup">0</span>
    </div>
    <div class="clear space"></div>

    <div class="col1"><?php echo $form->labelEx($model, 'Nổi bật', $htmlOptions=array('for'=>ucfirst($this->ID).'_hot_0')) ?></div>
        <div class="col2 radio">
        <?php echo $form->radioButtonList($model, 'hot', array('0'=>'Không nổi bật', '1'=>'Nổi bật'), array('separator'=>'&nbsp;&nbsp;')); ?>
        </div>
        <div class="clear space"></div>

    <div class="col1"><?php echo $form->labelEx($model, 'Hiển thị', $htmlOptions=array('for'=>ucfirst($this->ID).'_activated_0')) ?></div>
        <div class="col2 radio">
        <?php echo $form->radioButtonList($model, 'enable', array('1'=>'Hiển thị', '0'=>'Ẩn'), array('separator'=>'&nbsp;&nbsp;')); ?>
        </div>
        <div class="clear space"></div>

    <div class="col1">&nbsp;</div>
        <div class="col2">
        <?php echo CHtml::submitButton('Thêm mới', array('name'=>'submit', 'class'=>'login', 'title'=>'Thêm mới')); ?>
        <?php echo Chtml::link('Hủy bỏ', 'javascript:history.back()', $htmlOptions=array('class'=>'login-a', 'title'=>'Hủy bỏ')) ?>
        </div>
        <div class="clear space"></div>
</fieldset>
<?php $this->endWidget();?>
<?php $this->widget('ext.seoAlias.seoAlias', array('model'=>$model, 'source'=>'title', 'target'=>'tag')); ?>