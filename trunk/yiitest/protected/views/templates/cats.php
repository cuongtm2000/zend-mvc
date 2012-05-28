<?php $this->breadcrumbs = array(Yii::t('main', 'templates.name') => Yii::app()->session['langUrl'] . '/'. Yii::t('main', 'templates.link'), $infoCat);?>
<?php $this->pageTitle = Yii::t('main', 'templates.name') . ' ' . $infoCat; $this->description = 'Danh sách mẫu website thuộc lĩnh vực ngành nghề kinh doanh '. $infoCat . '. Bạn có thể chọn mẫu và xem chi tiết các tính năng dành cho mẫu bạn chọn'?>
<div id="leftcontent">
<ul id="list-template">
	<?php if($templatesBusiness['models']):?>
	<?php foreach($templatesBusiness['models'] as $value):?>
		<li>
			<a href="" title=""><img src="<?php echo Yii::app()->baseUrl; ?>/themes/<?php echo $value['template']?>/images/tiny.png" alt="<?php echo $value['template']?>"  /></a>
			<p><a href="" title=""><strong><?php echo $value['template_name']?></strong></a></p>
		</li>
		<?php endforeach?>
	<?php else:?>
	<li style="text-align: left; width: 600px">Rất tiếc! Ngành nghề <strong><?php echo $infoCat?></strong> bạn chọn chưa có mẫu</li>
	<?php endif;?>
</ul>
</div>
<?php echo $this->renderPartial('menu', array('listBusiness' => $listBusiness)) ?>