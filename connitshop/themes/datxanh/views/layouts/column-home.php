<?php $this->beginContent('//layouts/main'); ?>
    <div id="left-content-home">
        <?php $this->getPosition('left');?>
    </div>
    <div id="center-content">
        <?php echo $content; ?>
         <?php $this->getPosition('center')?>
    </div><!--End right content-->

    <div id="right-content-home">
        <?php $this->getPosition('right');?>
    </div> <!--End colum3-->
<?php $this->endContent(); ?>