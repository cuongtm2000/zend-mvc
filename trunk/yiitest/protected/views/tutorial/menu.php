<div id="rightcontent">
	<h2 class="title-right"><span><?php echo $this->lang['cat_title']?></span></h2>
	<ul class="sub-cat">
		<?php foreach($articles_menu as $value):?>
		    <li><a href="<?php echo Yii::app()->session['langUrl'] . '/'. Yii::t('main', 'tutorial.link')?>/<?php echo $value['tag']?>" title="<?php echo $value['cat_title'.Yii::app()->session['lang']]?>"><?php echo $value['cat_title'.Yii::app()->session['lang']]?></a></li>
		<?php endforeach?>
	</ul>
</div> <!--End right content--> <div class="clear"></div>