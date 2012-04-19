<div class="right-content">
	<h1 class="title-right"><?php echo $this->lang['cat_title'] . ' '. Yii::t('main', 'templates.name')?></h1>
	<ul class="sub-right">
		<?php foreach($listBusiness as $value):?>
		<li><a href="<?php echo Yii::app()->session['langUrl'] . '/'.Yii::t('main', 'templates.link').'/'. $value['bussiness_id']?>" title="<?php echo $value['bussiness_name']?>"><?php echo $value['bussiness_name']?></a></li>
		<?php endforeach?>
	</ul>
</div> <!--End right content--> <div class="clear"></div>