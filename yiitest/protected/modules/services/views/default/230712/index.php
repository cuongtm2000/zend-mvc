<?php $this->breadcrumbs=array($this->lang['services']);?>
<?php if($item): ?>
<?php $this->pageTitle = $item['title'.LANG]; $this->description = $item['description'.LANG];?>
<div class="main-line-top"><div><div>&nbsp;</div></div></div> <!--End main-content-top -->  
	<div class="main-content">
		<h2 class="title-right"><span><?php echo $item['title'.LANG] ?></span></h2>
		<div class="frame-tent-right">
			<?php echo $item['content'.LANG] ?>
		</div><!--End Page tent right-->
	</div>
<div class="main-content-bottom"></div> <!--End main-content-bottom-->  	
<?php endif; ?>