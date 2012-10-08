<?php $this->breadcrumbs=array($this->lang['services']);?>
<?php if($item): ?>
	<?php $this->pageTitle = $item['title'.LANG]; $this->description = $item['description'.LANG];?>
    <h2 class="title-right"><span><?php echo ($item) ? $item['title' . LANG] : $this->lang[$this->module->id] ?></span></h2>
    <div class="frame-tent-right">
    	<?php echo $item['content'.LANG] ?>
    </div><!--End Page tent right-->
<?php endif; ?>