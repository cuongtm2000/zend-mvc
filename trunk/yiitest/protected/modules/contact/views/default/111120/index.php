<?php $this->breadcrumbs = array($this->lang['contact']); ?>

<?php if(Yii::app()->user->hasFlash('contactSuccess')): ?>
    <div class="flash-success">
        <?php echo Yii::app()->user->getFlash('contactSuccess'); ?>
    </div>
<?php else: ?>
	<?php $this->pageTitle = ($item) ? $item['title' . LANG] : $this->lang[$this->module->id]; $this->description = $item['description']; ?>
		<h1 class="title-right"><?php echo ($item) ? $item['title'.LANG] : $this->lang[$this->module->id] ?></h1>
<div class="frame-tent-right">
	<?php if($item):?>
		<div id="frame-info-contact"><?php echo $item['content' . LANG] ?></div>
	<?php endif;?>
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
</div>
<?php endif;?>
