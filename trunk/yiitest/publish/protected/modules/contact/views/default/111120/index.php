<?php $this->breadcrumbs = array($this->lang[$this->module->id] => LANGURL . '/' . Yii::t('user', $this->module->id.'.link')); ?>

<?php if(Yii::app()->user->hasFlash('contactSuccess')): ?>
    <div class="flash-success">
        <?php echo Yii::app()->user->getFlash('contactSuccess'); ?>
    </div>
<?php else: ?>
    <?php if ($item): ?>
        <?php $this->pageTitle = $item['title' . LANG]; $this->description = $item['description']; ?>

        <h2 class="title-contact"><?php echo $item['title' . LANG] ?></h2>
        <?php echo $item['content' . LANG] ?>

        <?php $form = $this->beginWidget('CActiveForm', array('id'=>'frm', 'enableAjaxValidation'=>true, 'enableClientValidation' =>true));?>
            <?php echo $form->errorSummary($contact, ''); ?>
            <ul class="frame-contact">
                <li class="left">
                    <p><?php echo $form->labelEx($contact, 'fullname') ?></p>
                    <?php echo $form->textField($contact, 'fullname'); ?>
                </li>
                <li>
                    <p><?php echo $form->labelEx($contact, 'company') ?></p>
                    <?php echo $form->textField($contact, 'company'); ?>
                </li>
                <li class="left">
                    <p><?php echo $form->labelEx($contact, 'address') ?></p>
                    <?php echo $form->textField($contact, 'address'); ?>
                </li>
                <li>
                    <p><?php echo $form->labelEx($contact, 'phone') ?></p>
                    <?php echo $form->textField($contact, 'phone'); ?>
                </li>
                <li>
                    <p><?php echo $form->labelEx($contact, 'email') ?></p>
                    <?php echo $form->textField($contact, 'email'); ?>
                </li>
                <li>
                    <p><?php echo $form->labelEx($contact, 'content') ?></p>
                    <?php echo $form->textArea($contact, 'content', array('cols'=>10, 'rows'=>10)); ?>
                </li>
                <li>
					<?php echo CHtml::submitButton(Yii::t('main', 'send'), array('name' => 'submit', 'class' => 'singin', 'title' => Yii::t('main', 'send'))); ?>
                </li>
            </ul>                  
        <?php $this->endWidget();?>
    <?php endif; ?>
<?php endif;?>
