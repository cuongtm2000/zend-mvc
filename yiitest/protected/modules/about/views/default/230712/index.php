<?php $this->breadcrumbs=array($this->lang['about']);?>
<?php if($item): ?>
	<?php $this->pageTitle = $item['title'.LANG]; $this->description = $item['description'.LANG];?>
	<div class="main-content-top"><div><div>&nbsp;</div></div></div> <!--End main-content-top -->  
		<div class="main-content">
			<h3 class="title-right"><span><?php echo $item['title'.LANG] ?></span></h3>
			<div class="frame-tent-right">	
				<?php echo $item['content'.LANG] ?>
			</div> <!--End frame tent right-->
		</div>
	<div class="main-content-bottom"></div> <!--End main-content-bottom-->   
<?php endif; ?>