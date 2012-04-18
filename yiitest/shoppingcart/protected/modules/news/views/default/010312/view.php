<?php $this->breadcrumbs = array($this->lang[$this->module->id] => LANGURL . '/' . Yii::t('user', $this->module->id . '.link'), $item[ucfirst($this->module->id) . 'Cat']['cat_title' . LANG] => '../' . $item['NewsCat']['tag'.LANG], $item['title' . LANG]); ?>
<?php $this->pageTitle = $item['title' . LANG]; $this->description = $item['description'.LANG];?>
<h1 class="title-box"><span><?php echo $item['title'.LANG] ?></span></h1>
<div class="frame-tent-right">
	<?php echo $item['content'.LANG] ?>
</div>