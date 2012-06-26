<?php $this->breadcrumbs=array($this->lang[$this->module->id]);?>
<h3 class="title-right"><span><?php echo $this->lang[$this->module->id]?></span></h3>
<?php if($item['models']): ?>
	 <ul class="all-product-2">
		 <?php foreach($item['models'] as $value):?>
		<li class="product_2">
			<div class="tent-product-2">
				<?php if($value['pic_full']):?>
				<div class="product-img-2">
					<a href="<?php echo Yii::app()->baseUrl.USERFILES ?>/<?php echo $this->module->id ?>/<?php echo $value['pic_full'] ?>" rel="photo" title="<?php echo $value['title'.LANG] ?>">
						<img src="<?php echo Yii::app()->baseUrl.USERFILES ?>/<?php echo $this->module->id ?>/<?php echo $value['pic_full'] ?>" alt="<?php echo $value['title'.LANG] ?>" />
					</a>
				</div>
				<h2 class="title-pro-2"><a href="<?php echo Yii::app()->baseUrl.USERFILES ?>/<?php echo $this->module->id ?>/<?php echo $value['pic_full'] ?>" rel="photo" title="<?php echo $value['title'.LANG] ?>"><?php echo $value['title'.LANG] ?> </a></h2>
				<?php else :?>
				<div class="product-img-2">
					<a href="<?php echo Yii::app()->theme->baseUrl; ?>/images/no-product.jpg" rel="photo" title="<?php echo $value['title'.LANG] ?>">
						<img src="<?php echo Yii::app()->theme->baseUrl; ?>/images/no-product.jpg" alt="<?php echo $value['title'.LANG] ?>" />
					</a>
				</div>	
				<h2 class="title-pro-2"><a href="<?php echo Yii::app()->theme->baseUrl; ?>/images/no-product.jpg" rel="photo" title="<?php echo $value['title'.LANG] ?>"><?php echo $value['title'.LANG] ?></a></h2>
				<?php endif?>
			</div>
		</li>
		<?php endforeach?>
	</ul>
<?php $this->widget('CLinkPager', array('pages' => $item['pages'], 'header'=>'', 'lastPageLabel'=>'Last', 'nextPageLabel'=>'Next', 'firstPageLabel'=>'First', 'prevPageLabel'=>'Prev', 'htmlOptions'=>array('class'=>'paging')))?>
<?php endif; ?>
<div class="clear"></div>