<?php if($item): ?>
    <?php $this->breadcrumbs = array($this->lang[$this->module->id]=>array(LANGURL.'/'.Yii::t('user', $this->module->id.'.link')));?>
	<?php $this->pageTitle = $item['title'.LANG]; $this->description = $item['description'.LANG];?>
    <h1 class="title-h2-right"><?php echo $item['title'.LANG] ?></h1>
    <div id="page-tent-right">
    	<?php echo $item['content'.LANG] ?>
    </div><!--End Page tent right-->
<?php else: ?>
    <?php $this->breadcrumbs = array($this->lang[$this->module->id]=>array('/'.Yii::t('user', $this->module->id.'.link')), Yii::t('main', 'noRecord'));?>
    <div id="page-tent-right">
    	<?php echo Yii::t('main', 'noRecord')?>
    </div><!--End Page tent right-->
<?php endif; ?>