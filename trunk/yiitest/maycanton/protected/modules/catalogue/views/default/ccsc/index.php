<?php $this->breadcrumbs=array($this->lang['catalogue']);?>
<h3 class="title-right"><span><?php echo $this->lang[$this->module->id]?></span></h3>
<?php if($item['models']): ?>
	<ul class="all-product-2">
		 <?php foreach($item['models'] as $value):?>
		<li class="catalogue">
			<?php if($value['pic_full']):?>
			<div class="catalogue_img">
				<a href="<?php echo Yii::app()->baseUrl.USERFILES ?>/<?php echo $this->module->id ?>/<?php echo $value['pic_full'] ?>" rel="photo[gallery2]" title="<?php echo $value['title'.LANG] ?>">
					<img src="<?php echo Yii::app()->baseUrl.USERFILES ?>/<?php echo $this->module->id ?>/<?php echo $value['pic_full'] ?>" alt="<?php echo $value['title'.LANG] ?>" />
				</a>
			</div>
			<h2 class="title_catal"><a href="<?php echo Yii::app()->baseUrl.USERFILES ?>/<?php echo $this->module->id ?>/<?php echo $value['pic_full'] ?>" rel="photo[gallery1]" title="<?php echo $value['title'.LANG] ?>"><?php echo $value['title'.LANG] ?> </a></h2>
			<?php else :?>
			<div class="catalogue_img">
				<a href="<?php echo Yii::app()->theme->baseUrl; ?>/images/no-product.jpg" rel="photo[gallery2]" title="<?php echo $value['title'.LANG] ?>">
					<img src="<?php echo Yii::app()->theme->baseUrl; ?>/images/no-product.jpg" alt="<?php echo $value['title'.LANG] ?>" />
				</a>
			</div>	
			<h2 class="title_catal"><a href="<?php echo Yii::app()->theme->baseUrl; ?>/images/no-product.jpg" rel="photo[gallery1]" title="<?php echo $value['title'.LANG] ?>"><?php echo $value['title'.LANG] ?></a></h2>
			<?php endif?>
		</li>
		<?php endforeach?>
	</ul> <div class="clear"></div>
<?php $this->widget('CLinkPager', array('pages' => $item['pages'], 'header'=>'', 'lastPageLabel'=>'Last', 'nextPageLabel'=>'Next', 'firstPageLabel'=>'First', 'prevPageLabel'=>'Prev', 'htmlOptions'=>array('class'=>'paging')))?>
<div class="clear"></div>
<?php endif; ?>