<?php if($item): ?>
	<?php $this->breadcrumbs = array($this->lang[$this->module->id] => array(LANGURL . '/' . Yii::t('user', $this->module->id.'.link')), $item['title' . LANG]); ?>
		<?php $this->pageTitle = $item['title'.LANG]; $this->description = $item['description'.LANG];?>
		<h3 class="title-right"><span><?php echo $item['title'.LANG] ?></span></h3>
		<div class="frame-tent-right">
			<?php echo $item['content'.LANG] ?>
		</div> <!--End frame tent right-->
	<?php else: ?>
		<?php $this->breadcrumbs = array($this->lang[$this->module->id]=>array('/'.Yii::t('user', $this->module->id.'.link')), Yii::t('main', 'noRecord'));?>
		<div class="frame-tent-right">
			<?php echo Yii::t('main', 'noRecord')?>
		</div><!--End Page tent right-->
<?php endif; ?>