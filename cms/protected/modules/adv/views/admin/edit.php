<?php $form = $this->beginWidget('CActiveForm', array('id'=>'frm', 'enableAjaxValidation'=>true, 'enableClientValidation' =>true, 'htmlOptions'=>array('enctype' =>'multipart/form-data')));?>
    <?php echo $form->errorSummary($model, ''); ?>
    <fieldset>
        <legend><?php echo $this->lang['edit'] ?> <?php echo strtolower($this->lang[$this->module->id])?></legend>

        <div class="col1"><?php echo $form->labelEx($model, 'title') ?></div>
        <div class="col2">
            <?php echo $form->textField($model, 'title', array('class'=>'txt-very-large')); ?>
        </div>
        <div class="clear space"></div>

        <div class="col1"><?php echo $form->labelEx($model, 'url') ?></div>
        <div class="col2">
            <?php echo $form->textField($model, 'url', array('class'=>'txt-very-large')); ?>
        </div>
        <div class="clear space"></div>

        <div class="col1"><?php echo $form->labelEx($model, 'pic_thumb') ?></div>
        <div class="col2">
            <?php if($model->pic_thumb): ?>
                <div class="img-marginb5"><a href="<?php echo Yii::app()->request->baseUrl.Yii::getPathOfAlias('filePathUpload').'/image/'.$this->module->id.'/'.$model->pic_thumb ?>" class="nyroModal" title=""><img src="<?php echo Yii::app()->request->baseUrl.Yii::getPathOfAlias('filePathUpload').'/image/'.$this->module->id.'/'.$model->pic_thumb ?>" alt="" /></a>
                </div>
            <?php endif;?>
            <?php echo $form->fileField($model, 'pic_thumb', array('class'=>'fileupload', 'size'=>'40%')); ?>
        </div>
        <div class="clear space"></div>

        <div class="col1"><?php echo $form->labelEx($model, 'position') ?></div>
        <div class="col2">
            <?php echo $form->dropDownList($model, 'position', array('left'=>'Left', 'right'=>'Right', 'top'=>'Top', 'center'=>'Center', 'bottom'=>'Bottom')); ?>
        </div>
        <div class="clear space"></div>

        <div class="col1"><?php echo $form->labelEx($model, 'type') ?></div>
        <div class="col2">
            <?php echo $form->dropDownList($model, 'type', array('_bank'=>'Trang mới', '_parent'=>'Trang hiện tại')); ?>
        </div>
        <div class="clear space"></div>

        <div class="col1"><?php echo $form->labelEx($model, 'start_date', array('for' => 'start_date')) ?></div>
        <div class="col2">
            <?php $model->start_date = date("d-m-Y",strtotime($model->start_date )); echo $form->textField($model, 'start_date', array('class'=>'txt-very-large', 'id'=>'start_date')); ?>
            <span class="readme">(dd-mm-YYYY)</span>
        </div>
        <div class="clear space"></div>

        <div class="col1"><?php echo $form->labelEx($model, 'end_date', array('for' => 'end_date')) ?></div>
        <div class="col2">
            <?php $model->end_date = date("d-m-Y",strtotime($model->end_date )); echo $form->textField($model, 'end_date', array('class'=>'txt-very-large', 'id'=>'end_date')); ?>
            <span class="readme">(dd-mm-YYYY)</span>
        </div>
        <div class="clear space"></div>

        <div class="col1"><?php echo $form->labelEx($model, 'enable', array('for'=>get_class($model).'_enable_0')) ?></div>
        <div class="col2 radio">
            <?php echo $form->radioButtonList($model, 'enable', array('1'=>'Hiển thị', '0'=>'Ẩn'), array('separator'=>'&nbsp;&nbsp;')); ?>
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