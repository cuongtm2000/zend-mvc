<h4 class="title-left"><span><?php echo CHtml::encode($this->lang['product_management'])?></span></h4>
<?php
    Yii::app()->clientScript->registerCssFile(Yii::app()->theme->baseUrl.'/images/skin.css');
    Yii::app()->clientScript->registerScriptFile(Yii::app()->theme->baseUrl.'/js/jquery.jcarousel.min.js');
    Yii::app()->clientScript->registerScriptFile(Yii::app()->theme->baseUrl.'/js/project-list.js');
?>

<ul id="mycarousel" class="jcarousel jcarousel-skin-tango">
	<li>
		<a title="CAN H? 4S RIVERSIDE LINH ÐÔNG" href="/du-an/du-an-can-ho/can-ho-4s-riverside-linh-dong.html"><img src="/public/userfiles/image/projects/cn-h-4s-riverside-linh-ng.jpg" alt="CAN H? 4S RIVERSIDE LINH ÐÔNG" /></a>                <a title="CAN H? 4S RIVERSIDE LINH ÐÔNG" href="/du-an/du-an-can-ho/can-ho-4s-riverside-linh-dong.html">CAN H? 4S RIVERSIDE LINH ÐÔNG</a>    </li>
	<li>
		<a title="Gold Hill Residences" href="/du-an/du-an-dat-nen/gold-hill-residences.html"><img src="/public/userfiles/image/projects/gold-hill-residences.jpg" alt="Gold Hill Residences" /></a>                <a title="Gold Hill Residences" href="/du-an/du-an-dat-nen/gold-hill-residences.html">Gold Hill Residences</a>    </li>
	<li>
		<a title="PHÚ GIA HUNG APARTMENT" href="/du-an/du-an-can-ho/phu-gia-hung-apartment.html"><img src="/public/userfiles/image/projects/ph-gia-hng-apartment.jpg" alt="PHÚ GIA HUNG APARTMENT" /></a>                <a title="PHÚ GIA HUNG APARTMENT" href="/du-an/du-an-can-ho/phu-gia-hung-apartment.html">PHÚ GIA HUNG APARTMENT</a>    </li>
		<li>
		<a title="CAN H? 4S RIVERSIDE LINH ÐÔNG" href="/du-an/du-an-can-ho/can-ho-4s-riverside-linh-dong.html"><img src="/public/userfiles/image/projects/cn-h-4s-riverside-linh-ng.jpg" alt="CAN H? 4S RIVERSIDE LINH ÐÔNG" /></a>                <a title="CAN H? 4S RIVERSIDE LINH ÐÔNG" href="/du-an/du-an-can-ho/can-ho-4s-riverside-linh-dong.html">CAN H? 4S RIVERSIDE LINH ÐÔNG</a>    </li>
	<li>
		<a title="Gold Hill Residences" href="/du-an/du-an-dat-nen/gold-hill-residences.html"><img src="/public/userfiles/image/projects/gold-hill-residences.jpg" alt="Gold Hill Residences" /></a>                <a title="Gold Hill Residences" href="/du-an/du-an-dat-nen/gold-hill-residences.html">Gold Hill Residences</a>    </li>
	<li>
		<a title="PHÚ GIA HUNG APARTMENT" href="/du-an/du-an-can-ho/phu-gia-hung-apartment.html"><img src="/public/userfiles/image/projects/ph-gia-hng-apartment.jpg" alt="PHÚ GIA HUNG APARTMENT" /></a>                <a title="PHÚ GIA HUNG APARTMENT" href="/du-an/du-an-can-ho/phu-gia-hung-apartment.html">PHÚ GIA HUNG APARTMENT</a>    </li>
		<li>
		<a title="CAN H? 4S RIVERSIDE LINH ÐÔNG" href="/du-an/du-an-can-ho/can-ho-4s-riverside-linh-dong.html"><img src="/public/userfiles/image/projects/cn-h-4s-riverside-linh-ng.jpg" alt="CAN H? 4S RIVERSIDE LINH ÐÔNG" /></a>                <a title="CAN H? 4S RIVERSIDE LINH ÐÔNG" href="/du-an/du-an-can-ho/can-ho-4s-riverside-linh-dong.html">CAN H? 4S RIVERSIDE LINH ÐÔNG</a>    </li>
	<li>
		<a title="Gold Hill Residences" href="/du-an/du-an-dat-nen/gold-hill-residences.html"><img src="/public/userfiles/image/projects/gold-hill-residences.jpg" alt="Gold Hill Residences" /></a>                <a title="Gold Hill Residences" href="/du-an/du-an-dat-nen/gold-hill-residences.html">Gold Hill Residences</a>    </li>
	<li>
		<a title="PHÚ GIA HUNG APARTMENT" href="/du-an/du-an-can-ho/phu-gia-hung-apartment.html"><img src="/public/userfiles/image/projects/ph-gia-hng-apartment.jpg" alt="PHÚ GIA HUNG APARTMENT" /></a>                <a title="PHÚ GIA HUNG APARTMENT" href="/du-an/du-an-can-ho/phu-gia-hung-apartment.html">PHÚ GIA HUNG APARTMENT</a>    </li>
</ul>
<?php echo Product_managementCat::model()->makeMenu($menu_product_mana, Yii::app()->request->getQuery('cid'), '<ul class="sub-cat frame-leftcontent">', '</ul>');?>