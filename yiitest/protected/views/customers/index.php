<?php $this->breadcrumbs = array(Yii::t('main', 'customers.name'));?>
<div id="leftcontent">  <?php var_dump($items['models']);?>
	<?php if ($items['models']): ?>
        <?php var_dump($items['models']);?>
        <?php var_dump($items['pages']);?>
	<?php endif?>
</div>
<?php echo $this->renderPartial('menu', array('listBusiness' => $listBusiness)) ?>