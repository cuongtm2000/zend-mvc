<?php if($news_list_first['item_first']):?>
<div class="frame-panel">
	<h2 class="title-right"><?php echo CHtml::encode($this->lang['news'])?></h2>
	<div class="frame-tent-right">        
		<ul class="panel-items">
			<li>
				<?php if($news_list_first['item_first']['pic_thumb']):?>
				<div class="frame-img">
					<?php echo CHtml::link(CHtml::image(Yii::app()->baseUrl.Yii::getPathOfAlias('filePathUpload').'/image/news/'.$news_list_first['item_first']['pic_thumb'], $news_list_first['item_first']->NewsLanguage[Yii::app()->language]['title']) , array($this->setLangUrl().'/tin-tuc/'.$news_list_first['item_first']->NewsCat->NewsCatLanguage[Yii::app()->language]['tag'].'/'.$news_list_first['item_first']->NewsLanguage[Yii::app()->language]['tag'].'.html'), array('title'=>$news_list_first['item_first']->NewsLanguage[Yii::app()->language]['title'])); ?>
				</div>
				<?php endif?>
				<h3 class="title-items">
					<?php echo CHtml::link($news_list_first['item_first']->NewsLanguage[Yii::app()->language]['title'], array($this->setLangUrl().'/tin-tuc/'.$news_list_first['item_first']->NewsCat->NewsCatLanguage[Yii::app()->language]['tag'].'/'.$news_list_first['item_first']->NewsLanguage[Yii::app()->language]['tag'].'.html'), array('title'=>$news_list_first['item_first']->NewsLanguage[Yii::app()->language]['title'])); ?>
				</h3>
				<?php echo $news_list_first['item_first']->NewsLanguage[Yii::app()->language]['preview']?> <div class="clear"></div>
			 </li>
		</ul>
	</div>
	
	<?php if($news_list_first['list_next']):?>
	<ul class="panel-items-related">
		<?php foreach($news_list_first['list_next'] as $value):?>
			<li><?php echo CHtml::link($value->NewsLanguage[Yii::app()->language]['title'], array($this->setLangUrl().'/tin-tuc/'.$value->NewsCat->NewsCatLanguage[Yii::app()->language]['tag'].'/'.$value->NewsLanguage[Yii::app()->language]['tag'].'.html'), array('title'=>$value->NewsLanguage[Yii::app()->language]['title'])); ?></li>
		<?php endforeach?>
	</ul>
	<?php endif?>
</div>
<?php endif?>