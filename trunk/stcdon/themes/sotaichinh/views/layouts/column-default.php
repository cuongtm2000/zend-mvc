<?php $this->beginContent('//layouts/main'); ?>
    <?php $this->widget('zii.widgets.CBreadcrumbs', array(
		'homeLink' => CHtml::link($this->lang['default'], Yii::app()->baseUrl.$this->setLangUrl(), array('title' => $this->lang['default'])),
		'links'=>$this->breadcrumbs,
		'separator'=>'<b>&raquo;</b>',
	)); ?>
	<div id="left-content">
		<?php $this->getPosition('left');?>
	</div>
	
    <div id="right-content">
		<div class="main-right-content">
			<?php $this->widget('ext.Banner.BannerSlider', array('default_banner' => true));?> <div class="clear"></div>
			<?php echo $content; ?>
			<?php $this->getPosition('center')?>
		</div>
    </div> <!--End right-content -->
	
	
	<div id="column-3">
		<?php $this->getPosition('right');?>
	</div> <!--End colum3-->
	
<?php $this->endContent(); ?>