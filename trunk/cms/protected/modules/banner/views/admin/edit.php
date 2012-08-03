<?php $form = $this->beginWidget('CActiveForm', array('id'=>'frm', 'enableAjaxValidation'=>true, 'enableClientValidation' =>true, 'htmlOptions'=>array('enctype' =>'multipart/form-data')));?>
    <?php echo $form->errorSummary($model, ''); ?>
    <fieldset>
        <legend>Chỉnh sửa logo &amp; banner</legend>
        <div class="col1"><?php echo $form->labelEx($model, 'module_id') ?></div>
        <div class="col2">
            <?php echo $form->dropDownList($model, 'module_id', Module::model()->listModuleByLang()); ?>
        </div>
        <div class="clear space"></div>

        <div class="col1"><?php echo $form->labelEx($model, 'banner_name') ?></div>
        <div class="col2">
            <?php echo $form->textField($model, 'banner_name', array('class'=>'txt-very-large')); ?>
        </div>
        <div class="clear space"></div>

        <div class="col1"><?php echo $form->labelEx($model, 'banner_link') ?></div>
        <div class="col2">
            <?php echo $form->textField($model, 'banner_link', array('class'=>'txt-very-large')); ?>
        </div>
        <div class="clear space"></div>

        <div class="col1"><?php echo $form->labelEx($model, 'banner_picture') ?></div>
        <div class="col2">
            <?php if($model->banner_picture): ?>
                <a class="nyroModal" href="<?php echo Yii::app()->baseUrl.Yii::getPathOfAlias('filePathUpload').'/image/'.$this->module->id.'/'.$model->banner_picture ?>"><img src="<?php echo Yii::app()->baseUrl.Yii::getPathOfAlias('filePathUpload').'/image/'.$this->module->id.'/'.$model->banner_picture ?>" alt="" class="img-marginb5 img-banner" /></a><br />
            <?php endif;?>
            <?php echo $form->fileField($model, 'banner_picture', array('class'=>'fileupload')); ?>
        </div>
        <div class="clear space"></div>

        <div class="col1"><?php echo $form->labelEx($model, 'enable', array('for'=>ucfirst($this->ID).'_enable_0')) ?></div>
        <div class="col2 radio">
            <?php echo $form->radioButtonList($model, 'enable', array('1'=>$this->lang['show'], '0'=>$this->lang['hidden']), array('separator'=>'&nbsp;&nbsp;')); ?>
        </div>
        <div class="clear space"></div>

        <div class="col1">&nbsp;</div>
		<div class="col2">
			<?php echo CHtml::submitButton($this->lang['edit'], array('name'=>'submit', 'class'=>'login', 'title'=>$this->lang['edit'])); ?>
			<?php echo Chtml::link($this->lang['cancel'], 'javascript:history.back()', array('class'=>'login-a', 'title'=>$this->lang['cancel'])) ?>
		</div>
        <div class="clear space"></div>
    </fieldset>
<?php $this->endWidget();?>
<?php $this->widget('ext.seoAlias.seoAlias', array('model'=>$model, 'source'=>'title', 'target'=>'tag')); ?>