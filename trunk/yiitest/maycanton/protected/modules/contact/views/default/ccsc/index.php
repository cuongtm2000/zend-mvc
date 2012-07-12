<?php $this->breadcrumbs = array($this->lang['contact']); ?>

<?php if(Yii::app()->user->hasFlash('contactSuccess')): ?>
<div class="flash-success">
	<?php echo Yii::app()->user->getFlash('contactSuccess'); ?>
</div>
<?php else: ?>
<?php $this->pageTitle = ($item) ? $item['title' . LANG] : $this->lang[$this->module->id]; $this->description = $item['description']; ?>
<h1 class="title-right"><span><?php echo ($item) ? $item['title' . LANG] : $this->lang[$this->module->id] ?></span></h1>
<div class="frame-tent-right">
	

<iframe width="730" height="430" frameborder="0" scrolling="no" marginheight="0" marginwidth="0" src="https://maps.google.com/maps?f=q&amp;source=s_q&amp;hl=vi&amp;geocode=&amp;q=+L%C3%B4+12A+%C4%90%C6%B0%E1%BB%9Dng+S%E1%BB%91+9+KCN+T%C3%A2n+T%E1%BA%A1o+Tphcm+&amp;aq=&amp;sll=10.740898,106.572189&amp;sspn=0.051355,0.077162&amp;ie=UTF8&amp;hq=L%C3%B4+12A+%C4%90%C6%B0%E1%BB%9Dng+S%E1%BB%91+9+KCN&amp;hnear=T%C3%A2n+T%E1%BA%A1o,+B%C3%ACnh+T%C3%A2n,+H%E1%BB%93+Ch%C3%AD+Minh,+Vi%E1%BB%87t+Nam&amp;ll=10.740898,106.572189&amp;spn=0.041478,0.040986&amp;t=m&amp;output=embed"></iframe><br /><small><a href="https://maps.google.com/maps?f=q&amp;source=embed&amp;hl=vi&amp;geocode=&amp;q=+L%C3%B4+12A+%C4%90%C6%B0%E1%BB%9Dng+S%E1%BB%91+9+KCN+T%C3%A2n+T%E1%BA%A1o+Tphcm+&amp;aq=&amp;sll=10.740898,106.572189&amp;sspn=0.051355,0.077162&amp;ie=UTF8&amp;hq=L%C3%B4+12A+%C4%90%C6%B0%E1%BB%9Dng+S%E1%BB%91+9+KCN&amp;hnear=T%C3%A2n+T%E1%BA%A1o,+B%C3%ACnh+T%C3%A2n,+H%E1%BB%93+Ch%C3%AD+Minh,+Vi%E1%BB%87t+Nam&amp;ll=10.740898,106.572189&amp;spn=0.041478,0.040986&amp;t=m" style="color:#0000FF;text-align:left">Xem Bản đồ cỡ lớn hơn</a></small>
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
			<?php echo CHtml::submitButton(Yii::t('main', 'send'), array('name'=>'submit', 'class'=>'bton-dk', 'title'=>Yii::t('main', 'send'))); ?>
			<?php echo CHtml::resetButton(Yii::t('main', 'reset'), array('name'=>'reset', 'class'=>'bton-dk', 'title'=>Yii::t('main', 'reset'))); ?>
		</li>
	</ul>
	<?php $this->endWidget();?>
</div>
<?php endif;?>
