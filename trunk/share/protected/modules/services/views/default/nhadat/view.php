<?php if($item): ?>
	<?php $this->breadcrumbs = array($this->lang[$this->module->id]=>array(LANGURL.'/'.Yii::t('user', $this->module->id.'.link')),$item['title'.LANG]);?>
	<?php $this->pageTitle = $item['title'.LANG]; $this->description = $item['description'.LANG];?>
    <div class="frame-product-info">
	<h2 class="title-left"><span><?php echo ($item) ? $item['title' . LANG] : $this->lang[$this->module->id] ?></span></h2>
    	<?php echo $item['content'.LANG] ?>
    </div><!--End frame tent right-->
	<div class="btom-main"></div>
<?php else: ?>
	<?php $this->breadcrumbs = array($this->lang[$this->module->id]=>array('/'.Yii::t('user', $this->module->id.'.link')), Yii::t('main', 'noRecord'));?>
    <div class="frame-tent-right">
    	<?php echo Yii::t('main', 'noRecord')?>
    </div><!--End frame tent right-->
	<div class="btom-main"></div>
<?php endif; ?>