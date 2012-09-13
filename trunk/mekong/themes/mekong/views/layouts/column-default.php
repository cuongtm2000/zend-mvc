<?php $this->beginContent('//layouts/main'); ?>
	<?php $this->widget('zii.widgets.CBreadcrumbs', array(
		'homeLink' => CHtml::link($this->lang['default'], $this->setLangUrl(), array('title' => $this->lang['default'])),
		'links'=>$this->breadcrumbs,
		//'htmlOptions'=>array('class'=>'link'),
		'separator'=>'<b>&raquo;</b>',
		//'separator'=>' <img src="'.Yii::app()->theme->baseUrl.'/images/bull.jpg" alt="Bull" title="Bull" />',
	)); ?>
	
	<div id="right-content">
		<?php $this->widget('ext.Banner.BannerSlider');?>  
		<?php $this->getPosition('left');?>
		<?php //$this->getPosition('center');?>
		<?php echo $content; ?>
	</div>
	
	<div id="left-content">
		<?php $this->getPosition('right');?>
	</div> <div class="clear"></div>
	
<?php $this->endContent(); ?>