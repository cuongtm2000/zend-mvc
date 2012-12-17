<div class="main-box">
	<h4 class="title-left"><span><?php echo CHtml::encode($this->lang['procedures'])?></span></h4>
	<?php echo ProceduresCat::model()->makeMenu($menu_procedures, Yii::app()->request->getQuery('cid'), '<ul class="sub-cat">', '</ul>');?>
</div>