<div class="main-box">
	<h4 class="title-left"><span><?php echo CHtml::encode($this->lang['document'])?></span></h4>
	<?php echo DocumentCat::model()->makeMenu($menu_document, Yii::app()->request->getQuery('cid'), '<ul class="sub-cat">', '</ul>');?>
</div>