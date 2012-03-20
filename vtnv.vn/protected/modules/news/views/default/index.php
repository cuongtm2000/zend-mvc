<h1 class="title-right"><span>Tin Tức</span></h1>
<ul class="masuring">
	<?php foreach($listItems['models'] as $value):?>
		<li>
			<div class="frame-img">
				<a href="<?php echo Yii::app()->request->baseUrl?>/tin-tuc/<?php echo $value->NewsCat->tag?>/<?php echo $value['tag']?>.html" title="<?php echo $value['title']?>">
					<?php if($value['pic_thumb']): ?>
						<img src="<?php echo Yii::app()->baseUrl.USERFILES ?>/news/<?php echo $value['pic_thumb'] ?>" alt="<?php echo $value['title'] ?>"  />
					<?php else :?>
						<img src="<?php echo Yii::app()->theme->baseUrl; ?>/images/no-images.jpg" alt="<?php echo $value['title'] ?>" />
					<?php endif; ?>
				</a>
			</div>
			<h2 class="title-masuring"><a href="<?php echo Yii::app()->request->baseUrl?>/tin-tuc/<?php echo $value->NewsCat->tag?>/<?php echo $value['tag']?>.html" title="<?php echo $value['title']?>"><?php echo $value['title']?></a></h2>
			<?php echo $value['preview']?> <div class="clear"></div>
		</li>
	<?php endforeach?>	
</ul>	
<?php $this->widget('CLinkPager', array('pages' => $listItems['pages'], 'header' => '', 'htmlOptions' => array('class' => 'yiiPager paging'))) ?>