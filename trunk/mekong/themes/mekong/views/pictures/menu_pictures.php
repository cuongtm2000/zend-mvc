<div class="frame-leftcontent">
	<h4 class="title-left"><span><?php echo $this->lang['pictures']?></span></h4>
<?php echo PicturesCat::model()->makeMenu($menu_pictures, Yii::app()->request->getQuery('cid'), '<ul class="sub-cat">', '</ul>');?>
</div>