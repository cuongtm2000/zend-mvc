<?php $this->breadcrumbs=array($this->lang['about']);?>
<?php if($item): ?>
	<?php $this->pageTitle = $item['title'.LANG]; $this->description = $item['description'.LANG];?>
	<h3 class="title-right"><span><?php echo $item['title'.LANG] ?></span></h3>
	<div class="frame-tent-right">
		<?php echo $item['content'.LANG] ?>
	</div> <!--End frame tent right-->
	<div class="bt-title-right"></div>
<?php endif; ?>