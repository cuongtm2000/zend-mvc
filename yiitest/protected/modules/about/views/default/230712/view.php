<?php if($item): ?>
    <?php $this->breadcrumbs = array($this->lang[$this->module->id]=>array(LANGURL.'/'.$this->module->id),$item['title'.LANG]);?>
	<?php $this->pageTitle = $item['title'.LANG]; $this->description = $item['description'.LANG];?>
    <div class="main-content-top"><div><div>&nbsp;</div></div></div> <!--End main-content-top -->  
		<div class="frame-tent-right">
		<h3 class="title-right"><span><?php echo $item['title'.LANG] ?></span></h3>
    	<?php echo $item['content'.LANG] ?>
    </div> <!--End frame tent right-->
	<div class="main-content-bottom"></div> <!--End main-content-bottom-->   
<?php else: ?>
    <?php $this->breadcrumbs = array($this->lang[$this->module->id]=>array('/'.Yii::t('user', $this->module->id.'.link')), Yii::t('main', 'noRecord'));?>
	<div class="main-content-top"><div><div>&nbsp;</div></div></div> <!--End main-content-top -->  
		<div class="frame-tent-right">
			<?php echo Yii::t('main', 'noRecord')?>
		</div><!--End Page tent right-->
	<div class="main-content-bottom"></div> <!--End main-content-bottom-->   
<?php endif; ?>