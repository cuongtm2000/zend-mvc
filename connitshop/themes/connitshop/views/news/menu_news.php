<?php if($menu_news):?>
    <div class="main-box">
		<h4 class="title-left"><span><?php echo CHtml::encode($this->lang['news'])?></span></h4>
		<?php echo NewsCat::model()->makeMenu($menu_news, Yii::app()->request->getQuery('cid'), '<ul class="sub-cat frame-leftcontent">', '</ul>');?>
	</div>
<?php endif?>