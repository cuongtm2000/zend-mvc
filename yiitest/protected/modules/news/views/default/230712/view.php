<?php $this->breadcrumbs = array($this->lang[$this->module->id] => LANGURL . '/' . Yii::t('user', $this->module->id . '.link'), $item[ucfirst($this->module->id) . 'Cat']['cat_title' . LANG] => '../' . $item['NewsCat']['tag'.LANG], $item['title' . LANG]); ?>
<?php $this->pageTitle = $item['title' . LANG]; $this->description = $item['description'.LANG];?>
<div class="main-content-top"><div><div>&nbsp;</div></div></div> <!--End main-content-top -->  
<div class="main-content">
	<h2 class="title-right"><span><?php echo $item['title'.LANG] ?></span></h2>
	<div class="frame-tent-right">
		<?php echo $item['content'.LANG] ?>
	</div>
</div>	
<div class="main-content-bottom"></div> <!--End main-content-bottom-->   	