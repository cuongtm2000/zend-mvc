<?php $this->breadcrumbs=array($this->lang[$this->module->id]=>LANGURL.'/'.Yii::t('user', $this->module->id.'.link'));?>
<?php if($item): ?>
    <h1 class="title-right"><span><?php echo $item['title'.LANG] ?></span></h1>
    <div class="frame-tent-right">
    	<?php echo $item['content'.LANG] ?>
    </div><!--End Page tent right-->
<?php endif; ?>