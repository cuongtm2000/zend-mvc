<?php if($item): ?>
    <?php $this->breadcrumbs = array($this->lang['services']=>array(LANGURL.'/services'), $item['title'.LANG]);?>
    <h1 class="title-box"><span><?php echo $item['title'.LANG] ?></span></h1>
    <div id="frame-tent-right">
    	<?php echo $item['content'.LANG] ?>
    </div><!--End frame tent right-->
<?php else: ?>
    <?php $this->breadcrumbs = array('About'=>array('/services'), 'No record');?>
    <div id="frame-tent-right">
    	No record
    </div><!--End frame tent right-->
<?php endif; ?>