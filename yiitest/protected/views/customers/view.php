<div id="leftcontent">
	<?php if ($item): ?>
		<?php $this->breadcrumbs = array(Yii::t('main', 'customers.name') => Yii::app()->session['langUrl'] . '/'. Yii::t('main', 'customers.link'), $item['bussiness_name'] => Yii::app()->session['langUrl'] . '/'. Yii::t('main', 'customers.link').'/'.$item['bussiness_id'], $item['customer_name']); ?>
		<?php $this->pageTitle = $item['customer_name'];?>

		<div class="customer-img-info"><img src="<?php echo $item['website']?>" alt='<?php echo $item['customer_name']?>' />
			<h2><strong><?php echo $item['customer_name']?></strong></h2>
			<p><a href="#" title="<?php echo $item['website'] ?>"><?php echo $item['website'] ?></a></p>
			<?php echo $item['address'] ?>
		</div>
	<?php endif?>
</div>
<?php echo $this->renderPartial('menu', array('listBusiness' => $listBusiness)) ?>