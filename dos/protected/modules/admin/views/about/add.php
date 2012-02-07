<?php $form = $this->beginWidget('CActiveForm', array('id'=>'frm', 'enableAjaxValidation'=>true, 'enableClientValidation' =>true,));?>
<?php echo $form->errorSummary($model, ''); ?>
<fieldset>
    <legend><?php echo $this->lang['add_new'] ?></legend>

    <?php $lang = explode('|', Yii::app()->user->language); foreach($lang as $value): $value = ($value=='vi') ? '' : $value;?>
    <div class="col1"><?php echo $form->labelEx($model, $this->lang['title'.$value]) ?></div>
    <div class="col2">
        <?php echo $form->textField($model, 'title'.$value, $htmlOptions=array('class'=>'txt-very-large')); ?>
    </div>
    <div class="clear space"></div>
    <?php endforeach; ?>

    <?php $lang = explode('|', Yii::app()->user->language); foreach($lang as $value): $value = ($value=='vi') ? '' : $value;?>
    <div class="col1"><?php echo $form->labelEx($model, $this->lang['content'.$value]) ?></div>
    <div class="col2">
        <?php echo $form->textArea($model, 'content'.$value, $htmlOptions=array('cols'=>20, 'rows'=>10)); ?>
        <script type="text/javascript">
        //<![CDATA[
            CKEDITOR.replace('<?php echo get_class($model)?>[content<?php echo $value ?>]');
        //]]>
        </script>
    </div>
    <div class="clear space"></div>
    <?php endforeach; ?>

    <div class="col1"><?php echo $form->labelEx($model, $this->lang['tag']) ?></div>
    <div class="col2">
        <?php echo $form->textField($model, 'tag', $htmlOptions=array('class'=>'txt-very-large')); ?>
    </div>
    <div class="clear space"></div>

    <div class="col1"><?php echo $form->labelEx($model, 'description') ?></div>
    <div class="col2">
        <?php echo $form->textArea($model, 'description', $htmlOptions=array('cols'=>89, 'rows'=>5)); ?> <span class="info-keyup">0</span>
    </div>
    <div class="clear space"></div>

    <div class="col1"><?php echo $form->labelEx($model, $this->lang['hot'], $htmlOptions=array('for'=>ucfirst($this->ID).'_hot_0')) ?></div>
        <div class="col2 radio">
        <?php echo $form->radioButtonList($model, 'hot', array('0'=>$this->lang['normal'], '1'=>$this->lang['hot']), array('separator'=>'&nbsp;&nbsp;')); ?>
        </div>
        <div class="clear space"></div>

    <div class="col1"><?php echo $form->labelEx($model, $this->lang['show'], $htmlOptions=array('for'=>ucfirst($this->ID).'_activated_0')) ?></div>
        <div class="col2 radio">
        <?php echo $form->radioButtonList($model, 'activated', array('1'=>$this->lang['show'], '0'=>$this->lang['hidden']), array('separator'=>'&nbsp;&nbsp;')); ?>
        </div>
        <div class="clear space"></div>

    <div class="col1">&nbsp;</div>
        <div class="col2">
        <?php echo CHtml::submitButton($this->lang['add_new'], array('name'=>'submit', 'class'=>'login', 'title'=>$this->lang['add_new'])); ?>
        <?php echo Chtml::link($this->lang['cancel'], 'javascript:history.back()', $htmlOptions=array('class'=>'login-a', 'title'=>$this->lang['cancel'])) ?>
        </div>
        <div class="clear space"></div>
</fieldset>
<?php $this->endWidget();?>
<?php $this->widget('ext.seoAlias.seoAlias', array('model'=>$model, 'source'=>'title', 'target'=>'tag')); ?>