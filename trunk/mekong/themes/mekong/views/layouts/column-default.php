<?php $this->beginContent('//layouts/main'); ?>
	<?php $this->widget('zii.widgets.CBreadcrumbs', array(
		'homeLink' => CHtml::link($this->lang['default'], Yii::app()->baseUrl.$this->setLangUrl(), array('title' => $this->lang['default'])),
		'links'=>$this->breadcrumbs,
		//'htmlOptions'=>array('class'=>'link'),
		//'separator'=>' <img src="'.Yii::app()->theme->baseUrl.'/images/bull.jpg" alt="Bull" title="Bull" />',
	)); ?>
	
	<div id="rightcontent">
		<?php $this->getPosition('left');?>
		<?php //$this->getPosition('center');?>
		<?php echo $content; ?>
	</div>
	
	<div id="leftcontent">
		<?php $this->getPosition('right');?>
	</div>
<?php $this->endContent(); ?>