<?php $this->beginContent('//layouts/main'); ?>
    <?php $this->widget('zii.widgets.CBreadcrumbs', array(
		'homeLink' => CHtml::link($this->lang['default'], Yii::app()->baseUrl.$this->setLangUrl(), array('title' => $this->lang['default'])),
		'links'=>$this->breadcrumbs,
		'separator'=>'<b>&raquo;</b>',
	)); ?>
    <div id="content">
        <div id="left-content">
            <?php $this->getPosition('left');?>
            <script type="text/javascript">
                $(".sub-cat li,.sub-new li").each(function(){
                    var myUrl = $(this).find('a').attr('href');
                    if(myUrl == window.location.pathname){
                        $(this).addClass('selected');
                    }
                });
            </script>
        </div>
        <div id="right-content">
            <div class="main-right-content">
                <?php echo $content; ?>
                <?php $this->getPosition('right')?>
            </div>
        </div> <!--End right-content -->
    </div> <div class="clear"></div>
<?php $this->endContent(); ?>