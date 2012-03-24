
<?php $this->breadcrumbs = array($this->lang[$this->module->id] => LANGURL . '/' . $this->module->id); ?>

<?php if(Yii::app()->user->hasFlash('contactSuccess')): ?>
    <div class="flash-success">
        <?php echo Yii::app()->user->getFlash('contactSuccess'); ?>
    </div>
<?php else: ?>
	<?php $this->pageTitle = ($item) ? $item['title' . LANG] : $this->lang[$this->module->id]; $this->description = $item['description']; ?>
	<h1 class="title-right"><span><?php echo ($item) ? $item['title' . LANG] : $this->lang[$this->module->id] ?></span></h1>
<div class="frame-tent-right">
    <?php if($item):?>
		<div id="frame-info-contact"><?php echo $item['content' . LANG] ?></div>
	<?php endif;?>
	
	<?php $form = $this->beginWidget('CActiveForm', array('id'=>'frm', 'enableAjaxValidation'=>true, 'enableClientValidation' =>true));?>
		<?php echo $form->errorSummary($contact, ''); ?>
		<p><?php echo $this->lang['contact_msg']?></p>
			<ul class="frame-contact">
				<li>
					<?php echo $form->labelEx($contact, 'fullname') ?>
					<?php echo $form->textField($contact, 'fullname'); ?> 
				</li>
				<li>
					<?php echo $form->labelEx($contact, 'company') ?>
					<?php echo $form->textField($contact, 'company'); ?>
				</li>
				<li>
					<?php echo $form->labelEx($contact, 'address') ?>
					<?php echo $form->textField($contact, 'address'); ?>
				</li>
				<li>
					<?php echo $form->labelEx($contact, 'email') ?>
					<?php echo $form->textField($contact, 'email'); ?>
				</li>
				<li>
					<?php echo $form->labelEx($contact, 'phone') ?>
					<?php echo $form->textField($contact, 'phone'); ?>
				</li>
				<li>
					<?php echo $form->labelEx($contact, 'content') ?>
					<?php echo $form->textArea($contact, 'content', array('cols'=>10, 'rows'=>10)); ?>
				</li>
				<li>
					<label>&nbsp;</label>
					<?php echo CHtml::submitButton(' Submit ', array('name'=>'submit', 'class'=>'bton-dk', 'title'=>'Submit')); ?>
					<?php echo CHtml::resetButton(' Reset ', array('name'=>'reset', 'class'=>'bton-dk', 'title'=>'Reset')); ?>
				</li>					
			</ul>               
	   <?php $this->endWidget();?>
</div>
<?php endif;?>
