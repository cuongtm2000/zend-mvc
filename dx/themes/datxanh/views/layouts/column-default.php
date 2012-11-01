<?php $this->beginContent('//layouts/main'); ?>

<div id="left-content">   
     <?php $this->getPosition('left');?>
</div><!--End right content-->


<div id="right-content-2">
	<?php $this->widget('zii.widgets.CBreadcrumbs', array(
        'homeLink' => CHtml::link($this->lang['default'], Yii::app()->baseUrl.$this->setLangUrl(), array('title' => $this->lang['default'])),
        'links'=>$this->breadcrumbs,
        //'htmlOptions'=>array('class'=>'link'),
        //'separator'=>' <img src="'.Yii::app()->theme->baseUrl.'/images/bull.jpg" alt="Bull" title="Bull" />',
    )); ?>
    <?php echo $content; ?>
    <?php $this->getPosition('right');?>
</div> <!--End right-content-2 -->
<?php $this->endContent(); ?>