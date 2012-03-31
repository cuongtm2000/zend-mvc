<?php $form = $this->beginWidget('CActiveForm', array('id'=>'frm', 'enableAjaxValidation'=>true, 'enableClientValidation' =>true, 'htmlOptions'=>array('enctype' =>'multipart/form-data')));?>
    <?php echo $form->errorSummary($model, ''); ?>
    <fieldset>
        <legend>Chỉnh sửa logo &amp; banner</legend>

        <div class="col1"><?php echo $form->labelEx($model, 'banner_type') ?></div>
        <div class="col2">
            <?php echo $form->dropDownList($model, 'banner_type', array('banners'=>'Banner', 'logo'=>'Logo')); ?>
        </div>
        <div class="clear space"></div>

        <div class="col1"><?php echo $form->labelEx($model, 'position') ?></div>
        <div class="col2">
            <?php echo $form->dropDownList($model, 'position', $model->positionBanner()); ?>
        </div>
        <div class="clear space"></div>

        <div class="col1"><?php echo $form->labelEx($model, 'banner_name') ?></div>
        <div class="col2">
            <?php echo $form->textField($model, 'banner_name', $htmlOptions=array('class'=>'txt-very-large')); ?>
        </div>
        <div class="clear space"></div>

        <div class="col1"><?php echo $form->labelEx($model, 'banner_link') ?></div>
        <div class="col2">
            <?php echo $form->textField($model, 'banner_link', $htmlOptions=array('class'=>'txt-very-large')); ?>
        </div>
        <div class="clear space"></div>

        <div class="col1"><?php echo $form->labelEx($model, 'banner_url') ?></div>
        <div class="col2">
            <?php if($model->banner_url): ?>
                <a class="nyroModal" href="<?php echo Yii::app()->request->baseUrl.USERFILES.'/'.$this->getId().'/'.$model->banner_url ?>"><img src="<?php echo Yii::app()->request->baseUrl.USERFILES.'/'.$this->getId().'/'.$model->banner_url ?>" alt="" class="img-marginb5 img-banner" /></a><br />
            <?php endif;?>
            <?php echo $form->fileField($model, 'banner_url', array('class'=>'fileupload')); ?>
        </div>
        <div class="clear space"></div>

        <div class="col1"><?php echo $form->labelEx($model, 'enable', $htmlOptions=array('for'=>ucfirst($this->ID).'_enable_0')) ?></div>
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