<?php $this->breadcrumbs = array($this->lang[$this->module->id] => LANGURL . '/' . Yii::t('user', $this->module->id . '.link'), $item[ucfirst($this->module->id) . 'Cat']['cat_title' . LANG] => '../' . $item['NewsCat']['tag'.LANG], $item['title' . LANG]); ?>
<?php $this->pageTitle = $item['title' . LANG]; $this->description = $item['description'.LANG];?>
<div class="top-tent-right"></div>	
<div class="frame-tent-right">
<h2 class="title-right"><span><?php echo $item['title'.LANG] ?></span></h2>
	<?php echo $item['content'.LANG] ?>
</div>
<div class="bttom-tent-right"></div>