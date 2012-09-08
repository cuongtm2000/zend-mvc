<?php if($item): ?>
    <?php $this->breadcrumbs = array($this->lang[$this->module->id]=>array(LANGURL.'/'.$this->module->id),$item['title'.LANG]);?>
	<?php $this->pageTitle = $item['title'.LANG]; $this->description = $item['description'.LANG];?>
    <div class="top-tent-right"></div>		
	<div class="frame-tent-right">	
		<h2 class="title-right"><span><?php echo $item['title'.LANG] ?></span></h2> 
    	<?php echo $item['content'.LANG] ?>
    </div> <!--End frame tent right-->
	<div class="bttom-tent-right"></div>
<?php else: ?>
    <?php $this->breadcrumbs = array($this->lang[$this->module->id]=>array('/'.Yii::t('user', $this->module->id.'.link')), Yii::t('main', 'noRecord'));?>
    <div class="top-tent-right"></div>		
	<div class="frame-tent-right">	
		<?php echo Yii::t('main', 'noRecord')?>
    </div><!--End Page tent right-->
	<div class="bttom-tent-right"></div>
<?php endif; ?>