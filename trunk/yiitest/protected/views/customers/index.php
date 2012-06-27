<?php $this->breadcrumbs = array(Yii::t('main', 'customers.name'));?>
<div id="leftcontent">  
	<ul class="customers">
		<li>
			<div class="customers-img"><a href="#" title="">
				<img src="<?php echo Yii::app()->theme->baseUrl; ?>/images/customers-cat.jpg" /></a>
			</div>
			<h3 class="title-tomers"><a href="" title="">Customers Names</a></h3>
		</li>
		<li>
			<div class="customers-img"><a href="#" title="">
				<img src="<?php echo Yii::app()->theme->baseUrl; ?>/images/customers-cat.jpg" /></a>
			</div>
			<h3 class="title-tomers"><a href="" title="">Customers Names</a></h3>
		</li>
		<li>
			<div class="customers-img"><a href="#" title="">
				<img src="<?php echo Yii::app()->theme->baseUrl; ?>/images/customers-cat.jpg" /></a>
			</div>
			<h3 class="title-tomers"><a href="" title="">Customers Names</a></h3>
		</li>
		<li>
			<div class="customers-img"><a href="#" title="">
				<img src="<?php echo Yii::app()->theme->baseUrl; ?>/images/customers-cat.jpg" /></a>
			</div>
			<h3 class="title-tomers"><a href="" title="">Customers Names</a></h3>
		</li>
	</ul> <!--End customers-->

	<?php var_dump($items['models']);?>
	<?php if ($items['models']): ?>
        <?php var_dump($items['models']);?>
        <?php var_dump($items['pages']);?>
	<?php endif?>
</div>
<?php echo $this->renderPartial('menu', array('listBusiness' => $listBusiness)) ?>