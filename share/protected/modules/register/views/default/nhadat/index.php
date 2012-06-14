<?php $this->breadcrumbs=array($this->lang['about']);?>
<?php if($item): ?>
    <?php $this->pageTitle = $item['title'.LANG]; $this->description = $item['description'.LANG];?>
    <h1 class="title-right"><span><?php echo $item['title'.LANG] ?></span></h1>
    <div class="frame-tent-right">
    	<?php echo $item['content'.LANG] ?>
    </div> <!--End frame tent right-->
	<div class="btom-main"></div>
<?php endif; ?>