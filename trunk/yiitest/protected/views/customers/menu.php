<div id="rightcontent">
	<h2 class="title-right"><span><?php echo $this->lang['cat_title'] . ' ' . strtolower(Yii::t('main', 'customers.name'))?></span></h2>
	<ul class="sub-cat">
		<?php foreach($this->businessLists as $value):?>
        <li><a href="<?php echo Yii::app()->session['langUrl'] . '/'.Yii::t('main', 'customers.link').'/'. $value['bussiness_id']?>" title="<?php echo $value['bussiness_name']?>"><?php echo $value['bussiness_name']?></a></li>
		<?php endforeach?>
	</ul>
</div> <!--End right content--> <div class="clear"></div>