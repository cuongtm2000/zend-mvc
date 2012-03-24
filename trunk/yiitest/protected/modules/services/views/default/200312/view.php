<?php if($item): ?>
    <?php $this->breadcrumbs = array($this->lang['services']=>array(LANGURL.'/serivces'), $item['title'.LANG]);?>
    <h1 class="title-right"><span><?php echo $item['title'.LANG] ?></span></h1>
    <div class="frame-tent-right">
    	<?php echo $item['content'.LANG] ?>
    </div><!--End Page tent right-->
<?php else: ?>
    <?php $this->breadcrumbs = array('About'=>array('/about'), 'No record');?>
    <div class="frame-tent-right">
    	No record
    </div><!--End Page tent right-->
<?php endif; ?>