
<!--<ul class="nav-left">
	<?php foreach($menu_products_index as $value):?>
		<?php if($value['cat_parent_id']==0):?>
			<li><?php echo CHtml::link($value->ProductsCatLanguage[Yii::app()->language]['cat_title'], array($this->setLangUrl().'/san-pham/'.$value->ProductsCatLanguage[Yii::app()->language]['tag']), array('title'=>$value->ProductsCatLanguage[Yii::app()->language]['cat_title'])); ?></li>
		<?php endif; ?>
	<?php endforeach ;?>
</ul>-->
<?php echo ProductsCat::model()->makeMenu($menu_products_index, Yii::app()->request->getQuery('cid'), '<ul class="nav-left">', '</ul>');?>
