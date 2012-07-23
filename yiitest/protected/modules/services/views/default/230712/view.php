<?php if($item): ?>
	<?php $this->breadcrumbs = array($this->lang[$this->module->id]=>array(LANGURL.'/'.Yii::t('user', $this->module->id.'.link')),$item['title'.LANG]);?>
	<?php $this->pageTitle = $item['title'.LANG]; $this->description = $item['description'.LANG];?>
	<div class="main-line-top"><div><div>&nbsp;</div></div></div> <!--End main-content-top -->  
	<div class="main-content">
		<h2 class="title-right"><span><?php echo $item['title'.LANG] ?></span></h2>
		<div class="frame-tent-right">
			<?php echo $item['content'.LANG] ?>
		</div><!--End frame tent right-->
	</div>	
	<div class="main-content-bottom"></div> <!--End main-content-bottom-->  
<?php else: ?>
	<?php $this->breadcrumbs = array($this->lang[$this->module->id]=>array('/'.Yii::t('user', $this->module->id.'.link')), Yii::t('main', 'noRecord'));?>
		<div class="main-line-top"><div><div>&nbsp;</div></div></div> <!--End main-content-top -->  
		<div class="frame-tent-right">
			<?php echo Yii::t('main', 'noRecord')?>
		</div><!--End frame tent right-->
	<div class="main-content-bottom"></div> <!--End main-content-bottom-->  
<?php endif; ?>