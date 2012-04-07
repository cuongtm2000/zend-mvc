<div class="right-content">
	<h1 class="title-right"><?php echo $this->lang['cat_title']?></h1>
	<ul class="sub-right">
		<?php foreach($model_menu as $value):?>
		<li><a href="<?php echo Yii::app()->session['langUrl'] . '/'. Yii::t('main', 'about.link')?>/<?php echo $value['tag'.LANG]?>.html" title="<?php echo $value['title'.Yii::app()->session['lang']]?>"><?php echo $value['title'.Yii::app()->session['lang']]?></a></li>
		<?php endforeach?>
	</ul>
</div> <!--End right content--> <div class="clear"></div>