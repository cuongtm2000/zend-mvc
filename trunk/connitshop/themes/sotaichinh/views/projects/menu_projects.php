<div class="main-box">
	<h4 class="title-left"><span><?php echo CHtml::encode($this->lang['projects'])?></span></h4>
	<?php echo ProjectsCat::model()->makeMenu($menu_projects, Yii::app()->request->getQuery('cid'), '<ul class="sub-cat">', '</ul>');?>
</div>