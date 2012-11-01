<?php $this->beginContent('//layouts/main'); ?>
<?php if ($this->getPosition('left')): ?>
<div id="left-content-home">
	<?php $this->setPosition('left');?>
</div>
<?php endif ?>

<div id="center-content">
    <?php $this->widget('zii.widgets.CBreadcrumbs', array(
        'homeLink' => CHtml::link($this->lang['default'], Yii::app()->baseUrl.$this->setLangUrl(), array('title' => $this->lang['default'])),
        'links'=>$this->breadcrumbs,
		'encodeLabel' => false
        //'htmlOptions'=>array('class'=>'link'),
        //'separator'=>' <img src="'.Yii::app()->theme->baseUrl.'/images/bull.jpg" alt="Bull" title="Bull" />',
        )); ?>
    <?php echo $content; ?>
     <?php if ($this->getPosition('center')) {$this->setPosition('center');}?>
</div><!--End right content-->

<?php if ($this->getPosition('right')): ?>
<div id="right-content-home">
    <?php $this->setPosition('right');?>
</div> <!--End colum3-->
<?php endif ?>
<?php $this->endContent(); ?>