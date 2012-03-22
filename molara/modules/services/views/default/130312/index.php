<?php $this->breadcrumbs=array($this->lang['services']);?>
<?php if($item): ?>
    <h1 class="title-right"><?php echo $item['title'.LANG] ?></h1>
    <div class="page-tent-right">
    	<?php echo $item['content'.LANG] ?>
    </div><!--End Page tent right-->
<?php endif; ?>