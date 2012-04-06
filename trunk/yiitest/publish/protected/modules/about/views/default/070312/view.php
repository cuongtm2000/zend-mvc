<?php if($item): ?>
	<?php $this->breadcrumbs = array($this->lang[$this->module->id]=>array(LANGURL.'/'.$this->module->id),$item['title'.LANG]);?>
	<?php $this->pageTitle = $item['title'.LANG]; $this->description = $item['description'.LANG];?>
    <h1 class="title-right"><?php echo $item['title'.LANG] ?></h1>
    <div class="frame-tent-right">
    	<?php echo $item['content'.LANG] ?>
    </div><!--End Page tent right-->
<?php else: ?>
<?php $this->breadcrumbs = array($this->lang[$this->module->id]=>array('/'.Yii::t('user', $this->module->id.'.link')), Yii::t('main', 'noRecord'));?>
    <!--<?php $this->breadcrumbs = array('About'=>array('/'.$this->module->id), 'No record');?>-->
    <div class="frame-tent-right">
    	No record
    </div><!--End Page tent right-->
<?php endif; ?>