<?php $this->breadcrumbs = array(Yii::t('main', 'customers.name') => Yii::app()->session['langUrl'] . '/'. Yii::t('main', 'customers.link'), $infoCat);?>
<?php $this->pageTitle = Yii::t('main', 'customers.name') . ' ' . $infoCat; $this->description = 'Danh sách khách hàng thuộc lĩnh vực ngành nghề kinh doanh '. $infoCat . '. Bạn có thể xem tham khảo và yêu cầu những tính năng cho website của bạn'?>
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

    <?php if ($items['models']): ?>
        <?php var_dump($items['models']);?>
        <?php var_dump($items['pages']);?>
    <?php endif?>
</div>
<?php echo $this->renderPartial('menu', array('listBusiness' => $listBusiness)) ?>