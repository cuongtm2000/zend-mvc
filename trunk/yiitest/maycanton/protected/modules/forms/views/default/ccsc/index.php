<?php $this->breadcrumbs=array($this->lang[$this->ID]);?>
<?php if($item): ?>
<?php $this->pageTitle = $item['title'.LANG]; $this->description = $item['description'.LANG];?>
<h1 class="title-right"><span><?php echo $item['title'.LANG] ?></span></h1>
<div class="frame-tent-right">
	<?php echo $item['content'.LANG] ?>
</div><!--End Page tent right-->
<?php endif; ?>