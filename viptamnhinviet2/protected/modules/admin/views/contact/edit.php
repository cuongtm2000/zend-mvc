<?php $form = $this->beginWidget('CActiveForm', array('id'=>'frm', 'enableAjaxValidation'=>true, 'enableClientValidation' =>true,));?>
    <?php echo $form->errorSummary($model, ''); ?>
    <fieldset>
        <legend>Thêm bài viết mới</legend>

        <?php $lang = explode('|', Yii::app()->user->language); foreach($lang as $value): $value = ($value=='vi') ? '' : $value;?>
        <div class="col1"><?php echo $form->labelEx($model, $this->lang['title'.$value]) ?></div>
        <div class="col2">
            <?php echo $form->textField($model, 'title'.$value, array('class'=>'txt-very-large')); ?>
        </div>
        <div class="clear space"></div>
        <?php endforeach; ?>

        <?php $lang = explode('|', Yii::app()->user->language); foreach($lang as $value): $value = ($value=='vi') ? '' : $value;?>
        <div class="col1"><?php echo $form->labelEx($model, $this->lang['content'.$value]) ?></div>
        <div class="col2">
            <?php echo $form->textArea($model, 'content'.$value, array('cols'=>20, 'rows'=>10)); ?>
            <script type="text/javascript">
            //<![CDATA[
                    CKEDITOR.replace('<?php echo get_class($model)?>[content<?php echo $value ?>]');
            //]]>
            </script>
        </div>
        <div class="clear space"></div>
        <?php endforeach; ?>

        <div class="col1"><?php echo $form->labelEx($model, 'tag') ?></div>
        <div class="col2">
            <?php echo $form->textField($model, 'tag', array('class'=>'txt-very-large')); ?>
        </div>
        <div class="clear space"></div>

        <div class="col1"><?php echo $form->labelEx($model, 'description') ?></div>
        <div class="col2">
            <?php echo $form->textArea($model, 'description', array('cols'=>89, 'rows'=>5)); ?> <span class="info-keyup">0</span>
        </div>
        <div class="clear space"></div>

        <div class="col1"><?php echo $form->labelEx($model, 'hot', array('for'=>ucfirst($this->ID).'_hot_0')) ?></div>
        <div class="col2 radio">
            <?php echo $form->radioButtonList($model, 'hot', array('0'=>'Bình thường', '1'=>'Nổi bật'), array('separator'=>'&nbsp;&nbsp;')); ?>
        </div>
        <div class="clear space"></div>

        <div class="col1"><?php echo $form->labelEx($model, 'enable', array('for'=>ucfirst($this->ID).'_enable_0')) ?></div>
        <div class="col2 radio">
            <?php echo $form->radioButtonList($model, 'enable', array('1'=>'Hiển thị', '0'=>'Ẩn'), array('separator'=>'&nbsp;&nbsp;')); ?>
        </div>
        <div class="clear space"></div>

        <div class="col1">&nbsp;</div>
        <div class="col2">
            <?php echo CHtml::submitButton('Thêm mới', array('name'=>'submit', 'class'=>'login', 'title'=>'Thêm mới')); ?>
            <?php echo Chtml::link('Hủy bỏ', 'javascript:history.back()', array('class'=>'login-a', 'title'=>'Back')) ?>
        </div>
        <div class="clear space"></div>
    </fieldset>
<?php $this->endWidget();?>
<?php $this->widget('ext.seoAlias.seoAlias', array('model'=>$model, 'source'=>'title', 'target'=>'tag')); ?>