<?php if($item): ?>
    <?php $this->breadcrumbs = array($this->lang['services']=>array(LANGURL.'/services'), $item['title'.LANG]);?>
    <h1 class="title-right"><?php echo $item['title'.LANG] ?></h1>
    <div id="page-tent-right">
    	<?php echo $item['content'.LANG] ?>
    </div><!--End Page tent right-->
<?php else: ?>
    <?php $this->breadcrumbs = array('Services'=>array('/services'), 'No record');?>
    <div id="page-tent-right">
    	No record
    </div><!--End Page tent right-->
<?php endif; ?>