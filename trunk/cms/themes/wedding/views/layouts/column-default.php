<?php $this->beginContent('//layouts/main'); ?>
<div id="rightcontent">
    <?php $this->widget('ext.Banner.BannerSlider');?> <div class="clear"></div>
        <?php $this->widget('zii.widgets.CBreadcrumbs', array(
        'homeLink' => CHtml::link($this->lang['default'], Yii::app()->baseUrl.$this->setLangUrl(), array('title' => $this->lang['default'])),
        'links'=>$this->breadcrumbs,
        //'htmlOptions'=>array('class'=>'link'),
        //'separator'=>' <img src="'.Yii::app()->theme->baseUrl.'/images/bull.jpg" alt="Bull" title="Bull" />',
    )); ?>
    <?php echo $content; ?>
    <?php $this->getPosition('center');?>
</div><!--End right content-->
<div id="colum3">
    <?php $this->getPosition('right');?>
</div> <!--End colum3-->
<?php $this->endContent(); ?>