<?php $this->breadcrumbs=array($this->lang['about']);?>
<?php if($item): ?>
	<?php $this->pageTitle = $item['title'.LANG]; $this->description = $item['description'.LANG];?>
	<h1 class="title-box"><span><?php echo $item['title'.LANG] ?></span></h1>
	<div class="frame-tent-right">
		<?php echo $item['content'.LANG] ?>
		<div class="clear"></div>
	</div> <!--End frame tent right-->
<?php endif; ?>