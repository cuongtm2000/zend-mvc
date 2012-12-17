<?php $this->beginContent('//layouts/main'); ?>
    <div class="main-slider">
        <?php $this->getPosition('left')?>
        <script type="text/javascript">
            $(".nav-left li:first").addClass("first-item");
        </script>
        <?php $this->widget('ext.Banner.BannerSlider', array('default_banner' => true));?> <div class="clear"></div>
    </div> <!--End main-slider-->
    <div id="content">
        <?php echo $content; ?>
        <?php $this->getPosition('center')?>
        <div class="clear"></div>
    </div><!--End content-->
<?php $this->endContent(); ?>