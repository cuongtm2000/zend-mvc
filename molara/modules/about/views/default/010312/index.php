<?php $this->breadcrumbs=array($this->lang[$this->module->id]=>LANGURL.'/'.$this->module->id);?>
<?php if($item): ?>
    <?php 
        $this->pageTitle = $item['title'.LANG];
        $this->description = $item['description'];
    ?>
    <h1 class="title-box"><span><?php echo $item['title'.LANG] ?></span></h1>
    <div class="frame-tent-right">
    	<?php echo $item['content'.LANG] ?>
    </div> <!--End frame tent right-->
<?php endif; ?>