<?php $this->breadcrumbs=array($this->lang[$this->module->id]=>LANGURL.'/'.Yii::t('user', $this->module->id.'.link'));?>
<?php if($item): ?>
    <h2 class="title-right"><span><?php echo $item['title'.LANG] ?></span></h2>
    <div class="frame-tent-right">
    	<?php echo $item['content'.LANG] ?>
    </div> <!--End frame tent right-->
<?php endif; ?>