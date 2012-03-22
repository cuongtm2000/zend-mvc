<?php if($item): ?>
	<?php $this->breadcrumbs = array($this->lang['about']=>array(LANGURL.'/about'), $item['title'.LANG]);?>
    <!--<?php $this->breadcrumbs = array($this->lang[$this->module->id]=>array(LANGURL.'/'.$this->module->id));?>-->
    <h1 class="title-right"><?php echo $item['title'.LANG] ?></h1>
    <div id="page-tent-right">
    	<?php echo $item['content'.LANG] ?>
    </div><!--End Page tent right-->
<?php else: ?>
	 <?php $this->breadcrumbs = array('About'=>array('/about'), 'No record');?>
    <!--<?php $this->breadcrumbs = array('About'=>array('/'.$this->module->id), 'No record');?>-->
    <div id="page-tent-right">
    	No record
    </div><!--End Page tent right-->
<?php endif; ?>