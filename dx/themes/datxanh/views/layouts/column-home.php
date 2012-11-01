<?php $this->beginContent('//layouts/main'); ?>
<?php if ($this->getPosition('left')): ?>
<div id="left-content-home">
	<?php $this->setPosition('left');?>
</div>
<?php endif ?>
<div id="center-content">
    <?php echo $content; ?>
     <?php if ($this->getPosition('center')) {$this->setPosition('center');}?>
</div><!--End right content-->

<?php if ($this->getPosition('right')): ?>
<div id="right-content-home">
    <?php $this->setPosition('right');?>
</div> <!--End colum3-->
<?php endif ?>
<?php $this->endContent(); ?>