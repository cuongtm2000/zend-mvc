<div id="leftcontent">
	<?php if ($item): ?>
		<?php $this->breadcrumbs = array(Yii::t('main', 'customers.name') => Yii::app()->session['langUrl'] . '/'. Yii::t('main', 'customers.link'), $item['bussiness_name'] => Yii::app()->session['langUrl'] . '/'. Yii::t('main', 'customers.link').'/'.$item['bussiness_id'], $item['customer_name']); ?>
		<?php $this->pageTitle = $item['customer_name'];?>

		<div class="customer-img-info" style="background: red">
            <a href="<?php echo $item['website'] ?>" title="<?php echo $item['customer_name']?>" target="_blank"><img src="<?php echo Yii::app()->baseUrl; ?>/public/userfiles/image/dos/image/customers/<?php echo $item['pic_full']?>" alt='<?php echo $item['customer_name']?>' /></a>
			<h2><strong><?php echo $item['customer_name']?></strong></h2>
			<p><a href="<?php echo $item['website'] ?>" title="<?php echo $item['website'] ?>" target="_blank"><?php echo $item['website'] ?></a></p>
			<?php echo $item['address'] ?>
		</div>
	<?php endif?>
</div>
<?php echo $this->renderPartial('menu') ?>