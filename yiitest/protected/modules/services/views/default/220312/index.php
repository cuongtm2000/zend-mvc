<?php $this->breadcrumbs=array($this->lang['services']);?>
<?php if($item): ?>
    <h1 class="title-box"><span><?php echo $item['title'.LANG] ?></span></h1>
    <div id="frame-tent-right">
    	<?php echo $item['content'.LANG] ?>
    </div><!--End Page tent right-->
<?php endif; ?>