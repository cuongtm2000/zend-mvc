<?php if($item): ?>
    <?php $this->breadcrumbs = array($this->lang[$this->module->id]=>array(LANGURL.'/'.$this->module->id));?>
    <h1 class="title-box"><span><?php echo $item['title'.LANG] ?></span></h1>
    <div class="frame-tent-right">
    	<?php echo $item['content'.LANG] ?>
    </div> <!--End frame tent right-->
<?php else: ?>
    <?php $this->breadcrumbs = array('About'=>array('/'.$this->module->id), 'No record');?>
    <div id="page-tent-right">
    	No record
    </div><!--End Page tent right-->
<?php endif; ?>