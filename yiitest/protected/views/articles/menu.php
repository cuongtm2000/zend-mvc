<div class="right-content">
	<h1 class="title-right"><?php echo $this->lang['cat_title']?></h1>
	<ul class="sub-right">
		<?php foreach($articles_menu as $value):?>
		<li><a href="<?php echo Yii::app()->session['langUrl'] . '/'. Yii::t('main', 'articles.link')?>/<?php echo $value['tag']?>" title="<?php echo $value['cat_title'.Yii::app()->session['lang']]?>"><?php echo $value['cat_title'.Yii::app()->session['lang']]?></a></li>
		<?php endforeach?>
	</ul>
</div> <!--End right content--> <div class="clear"></div>