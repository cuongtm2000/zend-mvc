<?php $this->breadcrumbs = array($this->lang[$this->module->id]); ?>
<?php $this->pageTitle = $this->lang[$this->module->id]; $this->setDescription($item['description'])?>

<?php if(Yii::app()->user->hasFlash('contactSuccess')): ?>
	<h4 class="title-right"><span>Contact success</span></h4>
	<p><?php echo Yii::app()->user->getFlash('contactSuccess'); ?></p>
<?php else: ?>
	<h4 class="title-right"><span><?php echo ($item) ? $item['title'] : $this->lang[$this->module->id] ?></span></h4>
	<div class="frame-tent-right"><?php echo $item['content']?>
		<?php $form = $this->beginWidget('CActiveForm', array('id'=>'frm', 'enableAjaxValidation'=>true, 'enableClientValidation' =>true));?>
			<?php echo $form->errorSummary($model, ''); ?>
			<p>Quý khách có thể liên hệ với chúng tôi bằng cách điền đầy đủ thông tin vào mẫu sau:</p>
			<ul class="form-contact">
				<li>
					<?php echo $form->labelEx($model, 'fullname') ?>
					<?php echo $form->textField($model, 'fullname'); ?>
				</li>
				<li>
					<?php echo $form->labelEx($model, 'company') ?>
					<?php echo $form->textField($model, 'company'); ?>
				</li>
				<li>
					<?php echo $form->labelEx($model, 'address') ?>
					<?php echo $form->textField($model, 'address'); ?>
				</li>
				<li>
					<?php echo $form->labelEx($model, 'email') ?>
					<?php echo $form->textField($model, 'email'); ?>
				</li>
				<li>
					<?php echo $form->labelEx($model, 'phone') ?>
					<?php echo $form->textField($model, 'phone'); ?>
				</li>
				<li>
					<?php echo $form->labelEx($model, 'content') ?>
					<?php echo $form->textArea($model, 'content', array('cols'=>20, 'rows'=>9)); ?></li>
				<li>
					<label>&nbsp;</label>
					<?php echo CHtml::submitButton(Yii::t('main', 'send'), array('name'=>'submit', 'class'=>'button-submit', 'title'=>Yii::t('main', 'send'))); ?>
					<?php echo CHtml::resetButton(Yii::t('main', 'reset'), array('name'=>'reset', 'class'=>'button-submit', 'title'=>Yii::t('main', 'reset'))); ?>
				</li>
			</ul>
		<?php $this->endWidget();?>
	</div>
<?php endif?>