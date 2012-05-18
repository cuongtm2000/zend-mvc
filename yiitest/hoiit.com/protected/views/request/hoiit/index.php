<ul id="crumbs">
    <li><a href="<?php echo Yii::app()->request->baseUrl?>" title="<?php echo Yii::t('main', 'home')?>"><?php echo Yii::t('main', 'home')?></a></li>
    <li><?php echo Yii::t('main', 'sendRequest')?></li>
</ul>
<?php $form = $this->beginWidget('CActiveForm', array('id' => 'frm', 'enableAjaxValidation' => true, 'enableClientValidation' => true)); ?>
<fieldset>
    <legend><?php echo Yii::t('main', 'sendRequest')?></legend>
    <?php if(Yii::app()->user->hasFlash('contactSuccess')): ?>
        <div class="txt-green"><?php echo Yii::app()->user->getFlash('contactSuccess'); ?></div>
    <?php else:?>
        <p>Nếu bạn đang gặp khó khăn trong vấn đề lập trình. Chúng tôi xin ghi nhận những vấn đề nan giải của bạn và sẽ có phản hồi nếu nó nằm trong khả năng của Hoiit.com</p>
        <?php echo $form->errorSummary($model, ''); ?>
        <p>
            <?php echo $form->labelEx($model, 'name') ?>
            <?php echo $form->textField($model, 'name', array('class'=>'small-input')); ?>
        </p>
        <p>
            <?php echo $form->labelEx($model, 'email') ?>
            <?php echo $form->textField($model, 'email', array('class'=>'small-input')); ?>
        </p>
        <p>
            <?php echo $form->labelEx($model, 'phone') ?>
            <?php echo $form->textField($model, 'phone', array('class'=>'small-input')); ?>
        </p>
        <p>
            <?php echo $form->labelEx($model, 'subject') ?>
            <?php echo $form->textField($model, 'subject', array('class'=>'small-input')); ?>
        </p>
        <p>
            <?php echo $form->labelEx($model, 'content') ?>
            <?php echo $form->textArea($model, 'content', array('cols'=>30, 'rows'=>10)); ?>
        </p>
        <p>
            <?php echo $form->labelEx($model, 'verifyCode') ?>
            <?php echo $form->textField($model, 'verifyCode', array('class' => 'small-input', 'value' => 'Fill 6 characters appear next', 'onblur' => 'if(this.value=="") this.value="Fill 6 characters appear next"', 'onfocus' => 'if(this.value =="Fill 6 characters appear next") this.value=""')); ?>
            <?php if (CCaptcha::checkRequirements()): ?>
                <?php $this->widget('CCaptcha', array('clickableImage' => true, 'showRefreshButton' => false, 'imageOptions' => array('alt' => 'Verification Code', 'title' => 'Verification Code'))); ?>
            <?php endif; ?>
        </p>
        <p>
            <label>&nbsp;</label>
            <?php echo CHtml::submitButton(' Send request ', array('class'=>'login', 'name'=>'submit')); ?>
        </p>
    <?php endif?>
</fieldset>
<?php $this->endWidget(); ?>