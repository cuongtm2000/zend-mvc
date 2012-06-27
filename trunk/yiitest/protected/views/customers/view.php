<div id="leftcontent">
	<?php if ($item): ?>
		<?php $this->breadcrumbs = array(Yii::t('main', 'features.name') => Yii::app()->session['langUrl'] . '/'. Yii::t('main', 'features.link'), $item['title'.LANG]); ?>
		<?php $this->pageTitle = $item['title'.LANG]; $this->description = $item['description'.LANG];?>
		<h3 class="heading-contact"><?php echo $item['title'.LANG]?></h3>
		<div class="customer-img-info"><img src="<?php echo Yii::app()->theme->baseUrl; ?>/images/customers-full.jpg" alt='' />
			<h2><strong>CUSTOMERS NAMES</strong></h2>
			<a href="#" title="">http://customernames.com</a>
			<?php echo $item['content'.LANG] ?>	
		</div>
		
	<?php endif?>
</div>

<?php echo $this->renderPartial('menu', array('model_menu'=>$model_menu)) ?>