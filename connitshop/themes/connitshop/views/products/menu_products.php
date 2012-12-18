<?php if($menu_products):?>
<h4 class="title-left"><span><?php echo $this->lang['products']?></span></h4>
	<?php echo ProductsCat::model()->makeMenu($menu_products, Yii::app()->request->getQuery('cid'), '<ul class="sub-cat">', '</ul>');?>
<?php endif;?>