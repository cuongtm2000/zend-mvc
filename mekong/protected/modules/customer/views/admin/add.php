<?php $form = $this->beginWidget('CActiveForm', array('id'=>'frm', 'enableAjaxValidation'=>true, 'enableClientValidation' =>true, 'htmlOptions'=>array('enctype' =>'multipart/form-data')));?>
<?php echo $form->errorSummary($model, ''); ?>
<fieldset>
    <legend><?php echo $this->lang['add_new'] ?> <?php echo strtolower($this->lang[$this->module->id]) ?></legend>

    <div class="col1"><?php echo $form->labelEx($model, 'title') ?></div>
    <div class="col2">
        <?php echo $form->textField($model, 'title', array('class' => 'txt-very-large')); ?>
    </div>
    <div class="clear space"></div>

    <div class="col1"><?php echo $form->labelEx($model, 'website') ?></div>
    <div class="col2">
        <?php echo $form->textField($model, 'website', array('class' => 'txt-very-large')); ?>
    </div> <div class="clear space"></div>

    <div class="col1"><?php echo $form->labelEx($model, 'address') ?></div>
    <div class="col2">
        <?php echo $form->textField($model, 'address', array('class' => 'txt-very-large')); ?>
    </div> <div class="clear space"></div>


    <div class="col1"><?php echo $form->labelEx($model, 'description') ?></div>
    <div class="col2">
        <?php echo $form->textArea($model, 'description', array('cols' => 20, 'rows' => 5, 'class' => 'textarea-very-large')); ?> <span class="info-keyup"></span>
    </div>
    <div class="clear space"></div>
    <script type="text/javascript">
        jQuery(function($) {
            $('#<?php echo get_class($model) ?>_description').keyup(function(){var max=250;var valLen=$(this).val().length;$('.info-keyup').text( valLen+'/'+max); var val = $(this).val(); if (val.length > 250){ $(this).val(val.slice(0, 250));}});
        });
    </script>


    <div class="col1"><?php echo $form->labelEx($model, 'pic_thumb') ?></div>
    <div class="col2">
        <?php if ($model->pic_thumb): ?>
            <div class="img-marginb5"><a href="<?php echo Yii::app()->request->baseUrl . Yii::getPathOfAlias('filePathUpload') . '/image/' . $this->module->id . '/' . $model->pic_thumb ?>" class="nyroModal" title=""><img src="<?php echo Yii::app()->request->baseUrl . Yii::getPathOfAlias('filePathUpload') . '/image/' . $this->module->id . '/' . $model->pic_thumb ?>" alt="" /></a>
            </div>
        <?php endif; ?>
        <?php echo $form->fileField($model, 'pic_thumb', array('class' => 'fileupload', 'size' => '40%')); ?>
    </div><div class="clear space"></div>

    <div class="col1"><?php echo $form->labelEx($model, 'pic_full') ?></div>
    <div class="col2">
        <?php echo $form->fileField($model, 'pic_full', array('class' => 'fileupload', 'size' => '40%')); ?>
        <?php if ($model->pic_full): ?>
            <a class="nyroModal" href="<?php echo Yii::app()->request->baseUrl . Yii::getPathOfAlias('filePathUpload') . '/image/' . $this->module->id . '/' . $model->pic_full ?>">Xem ảnh lớn</a>
        <?php endif; ?>
    </div>
    <div class="clear space"></div>

    <div class="col1"><?php echo $form->labelEx($model, 'tag') ?></div>
    <div class="col2">
        <?php echo $form->textField($model, 'tag', array('class' => 'txt-very-large')); ?>
		<?php $this->widget('ext.SeoAlias.SeoAlias', array('model'=>$model, 'source'=>'title', 'target'=>'tag')); ?>
    </div> <div class="clear space"></div>

    <div class="col1"><?php echo $form->labelEx($model, 'enable', array('for' => get_class($model) . '_enable_0')) ?></div>
    <div class="col2 radio">
        <?php echo $form->radioButtonList($model, 'enable', array('1' => 'Hiển thị', '0' => 'Ẩn'), array('separator' => '&nbsp;&nbsp;')); ?>
    </div>
    <div class="clear space"></div>

    <div class="col1">&nbsp;</div>
    <div class="col2">
        <?php echo CHtml::submitButton($this->lang['add_new'], array('name' => 'submit', 'class' => 'login', 'title' => $this->lang['add_new'])); ?>
        <?php echo Chtml::link($this->lang['cancel'], 'javascript:history.back()', array('class' => 'login-a', 'title' => $this->lang['cancel'])) ?>
    </div>
    <div class="clear space"></div>
</fieldset>
<?php $this->endWidget();?>