<div class="frame-leftcontent">
	<h4 class="title-left"><span><?php echo $this->lang['products']?></span></h4>
<?php echo ProductsCat::model()->makeMenu($menu_products, Yii::app()->request->getQuery('cid'), '<ul class="sub-cat">', '</ul>');?>
</div>