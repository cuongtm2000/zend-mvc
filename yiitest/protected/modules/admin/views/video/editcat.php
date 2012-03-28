<?php $form = $this->beginWidget('CActiveForm', array('id' => 'frm', 'enableAjaxValidation' => true, 'enableClientValidation' => true, 'htmlOptions' => array('enctype' => 'multipart/form-data'))); ?>
<?php echo $form->errorSummary($model, ''); ?>
<fieldset>
    <legend>Chỉnh sửa danh mục</legend>

    <div class="col1"><?php echo $form->labelEx($model, 'cat_parent_id') ?></div>
    <div class="col2">
        <?php echo $form->dropDownList($model, 'cat_parent_id', CHtml::listData($model->listCats(1, '|-- ', 1, $model['cat_id']), 'cat_id', 'cat_title')); ?>
    </div>
    <div class="clear space"></div>

    <div class="col1"><?php echo $form->labelEx($model, 'cat_title') ?></div>
    <div class="col2">
        <?php echo $form->textField($model, 'cat_title', $htmlOptions = array('class' => 'txt-very-large')); ?>
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

    <div class="col1"><?php echo $form->labelEx($model, 'pic_thumb') ?></div>
    <div class="col2">
        <?php if ($model->pic_thumb): ?>
			<div class="img-marginb5"><img src="<?php echo Yii::app()->request->baseUrl . USERFILES. '/videoCat/' . $model->pic_thumb ?>" alt="<?php echo $model->cat_title?>" />
				<?php echo $form->checkBox($model, 'remove_pic_thumb') ?><?php echo $form->labelEx($model, 'remove_pic_thumb', array('class' => 'remove')) ?>
			</div>
        <?php endif; ?>
        <?php echo $form->fileField($model, 'pic_thumb', array('class' => 'fileupload')); ?>
    </div>
    <div class="clear space"></div>

    <div class="col1"><?php echo $form->labelEx($model, 'cat_enable', $htmlOptions = array('for' => ucfirst($this->ID) . '_cat_enable_0')) ?></div>
    <div class="col2 radio">
        <?php echo $form->radioButtonList($model, 'cat_enable', array('1' => 'Hiển thị', '0' => 'Ẩn'), array('separator' => '&nbsp;&nbsp;')); ?>
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
<?php $this->widget('ext.seoAlias.seoAlias', array('model' => $model, 'source' => 'cat_title', 'target' => 'tag')); ?>