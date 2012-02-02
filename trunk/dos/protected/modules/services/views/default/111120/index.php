<?php $this->breadcrumbs=array($this->lang['about']);?>
<?php if($item): ?>
    <h1 class="title-h2-right"><?php echo $item['title'.LANG] ?></h1>
    <div id="page-tent-right">
    	<?php echo $item['content'.LANG] ?>
    </div><!--End Page tent right-->
<?php endif; ?>