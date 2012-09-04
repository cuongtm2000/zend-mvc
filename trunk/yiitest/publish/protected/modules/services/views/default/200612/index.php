<?php $this->breadcrumbs=array($this->lang['services']);?>
<?php if($item): ?>
<?php $this->pageTitle = $item['title'.LANG]; $this->description = $item['description'.LANG];?>
	<div class="top-tent-right"></div>	
	<div class="frame-tent-right">
		<h2 class="title-right"><span><?php echo $item['title'.LANG] ?></span></h2>
		<?php echo $item['content'.LANG] ?>
	</div><!--End Page tent right-->
	<div class="bttom-tent-right"></div>
<?php endif; ?>