<?php if($menu_jobs):?>
<div class="main-box">
	<h4 class="title-left"><span><?php echo CHtml::encode($this->lang['jobs'])?></span></h4>
	<?php echo JobsCat::model()->makeMenu($menu_jobs, Yii::app()->request->getQuery('cid'), '<ul class="sub-cat">', '</ul>');?>
</div>
<?php endif;?>