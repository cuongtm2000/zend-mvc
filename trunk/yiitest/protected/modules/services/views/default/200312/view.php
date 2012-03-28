<?php if($item): ?>
<?php $this->breadcrumbs = array($this->lang['services']=>array(LANGURL.'/'.Yii::t('user', $this->module->id.'.link')), $item['title'.LANG]);?>
<?php $this->pageTitle = $item['title'.LANG]; $this->description = $item['description'.LANG];?>
    <h1 class="title-right"><span><?php echo $item['title'.LANG] ?></span></h1>
    <div class="frame-tent-right">
    	<?php echo $item['content'.LANG] ?>
    </div><!--End Page tent right-->
<?php else: ?>
<?php $this->breadcrumbs = array('Services'=>array('/'.Yii::t('user', $this->module->id.'.link')), 'No record');?>
    <div class="frame-tent-right">
    	No record
    </div><!--End Page tent right-->
<?php endif; ?>