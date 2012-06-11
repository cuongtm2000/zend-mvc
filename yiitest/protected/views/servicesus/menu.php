<div id="rightcontent">
	<h2 class="title-right"><span><?php echo $this->lang['cat_title']?></span></h2>
	<ul class="sub-cat">
		<?php foreach($model_menu as $value):?>
		<li><a href="<?php echo Yii::app()->session['langUrl'] . '/'. Yii::t('main', 'services.link')?>/<?php echo $value['tag'.LANG]?>.html" title="<?php echo $value['title'.Yii::app()->session['lang']]?>"><?php echo $value['title'.Yii::app()->session['lang']]?></a></li>
		<?php endforeach?>
	</ul>
</div> <!--End right content--> <div class="clear"></div>