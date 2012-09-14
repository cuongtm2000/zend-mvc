<?php if($item): ?>
    <?php $this->breadcrumbs = array($this->lang[$this->module->id]=>array(LANGURL.'/'.$this->module->id),$item['title'.LANG]);?>
	<?php $this->pageTitle = $item['title'.LANG]; $this->description = $item['description'.LANG];?>
    <div class="frame-panel">
		<h2 class="title-right"><span><?php echo $item['title'.LANG] ?></span></h2>
		<div class="frame-tent-right">
			<?php echo $item['content'.LANG] ?>
		</div> <!--End frame tent right-->
	</div>	
<?php else: ?>
    <?php $this->breadcrumbs = array($this->lang[$this->module->id]=>array('/'.Yii::t('user', $this->module->id.'.link')), Yii::t('main', 'noRecord'));?>
	<div class="frame-panel">	
		<div class="frame-tent-right">
			<?php echo Yii::t('main', 'noRecord')?>
		</div><!--End Page tent right-->
	</div>
<?php endif; ?>