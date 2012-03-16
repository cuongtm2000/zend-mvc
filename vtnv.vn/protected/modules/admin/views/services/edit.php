  
<?php $form = $this->beginWidget('CActiveForm', array('id' => 'frm', 'enableAjaxValidation' => true, 'enableClientValidation' => true, 'htmlOptions' => array('enctype' => 'multipart/form-data'))); ?>
<?php echo $form->errorSummary($model, ''); ?>
<fieldset>
    <legend>Chỉnh sửa dịch vụ</legend>
    <div class="col1"><?php echo $form->labelEx($model, 'title') ?></div>
    <div class="col2">
        <?php echo $form->textField($model, 'title', $htmlOptions = array('class' => 'txt-very-large')); ?>
    </div>
    <div class="clear space"></div>

    <div class="col1"><?php echo $form->labelEx($model, 'content') ?></div>
    <div class="col2">
        <?php echo $form->textArea($model, 'content', $htmlOptions = array('cols' => 20, 'rows' => 10)); ?>
        <script type="text/javascript">
            //<![CDATA[
            CKEDITOR.replace('<?php echo get_class($model) ?>[content]');
            //]]>
        </script>
    </div>
    <div class="clear space"></div>

    <div class="col1"><?php echo $form->labelEx($model, 'tag') ?></div>
    <div class="col2">
        <?php echo $form->textField($model, 'tag', $htmlOptions = array('class' => 'txt-very-large')); ?>
    </div>
    <div class="clear space"></div>

    <div class="col1"><?php echo $form->labelEx($model, 'description') ?></div>
    <div class="col2">
        <?php echo $form->textArea($model, 'description', $htmlOptions = array('cols' => 89, 'rows' => 5)); ?> <span class="info-keyup">0</span>
    </div>
    <div class="clear space"></div>

    <div class="col1"><?php echo $form->labelEx($model, 'pic_full') ?></div>
    <div class="col2">
        <?php if ($model->pic_full): ?>
            <div class="img-marginb5"><img src="<?php echo Yii::app()->request->baseUrl . USERFILES . '/' . $this->getId() . '/' . $model->pic_full ?>" alt="" />
				<?php echo $form->checkBox($model, 'remove_pic_thumb') ?><?php echo $form->labelEx($model, 'remove_pic_thumb', array('class' => 'remove')) ?>
			</div>
        <?php endif; ?>
        <?php echo $form->fileField($model, 'pic_full', array('class' => 'fileupload')); ?>
    </div>
    <div class="clear space"></div>

    <div class="col1"><?php echo $form->labelEx($model, 'hot', $htmlOptions = array('for' => ucfirst($this->ID) . '_hot_0')) ?></div>
    <div class="col2 radio">
        <?php echo $form->radioButtonList($model, 'hot', array('0' => 'Bình thường', '1' => 'Nổi bật'), array('separator' => '&nbsp;&nbsp;')); ?>
    </div>
    <div class="clear space"></div>

    <div class="col1"><?php echo $form->labelEx($model, 'activated', $htmlOptions = array('for' => ucfirst($this->ID) . '_activated_0')) ?></div>
    <div class="col2 radio">
        <?php echo $form->radioButtonList($model, 'activated', array('1' => 'Hiển thị', '0' => 'Ẩn'), array('separator' => '&nbsp;&nbsp;')); ?>
    </div>
    <div class="clear space"></div>

    <div class="col1">&nbsp;</div>
    <div class="col2">
        <?php echo CHtml::submitButton('Chỉnh sửa', array('name' => 'submit', 'class' => 'login', 'title' => 'Chỉnh sửa')); ?>
        <?php echo Chtml::link('Hủy bỏ', 'javascript:history.back()', $htmlOptions = array('class' => 'login-a', 'title' => 'Back')) ?>
    </div>
    <div class="clear space"></div>
</fieldset>
<?php $this->endWidget(); ?>
<?php $this->widget('ext.seoAlias.seoAlias', array('model' => $model, 'source' => 'title', 'target' => 'tag')); ?>