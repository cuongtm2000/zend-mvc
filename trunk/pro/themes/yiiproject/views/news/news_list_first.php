<?php if($news_list_first['item_first']):?>
<div class="frame-panel">
	<h3 class="title-right"><span><?php echo CHtml::encode($this->lang['news'])?></span></h3>
	<div class="frame-tent-right">        
		<ul class="panel-items">
			<li>
				<?php if($news_list_first['item_first']['pic_thumb']):?>
				<div class="frame-img">
					<?php echo CHtml::link(CHtml::image(Yii::app()->baseUrl.Yii::getPathOfAlias('filePathUpload').'/image/news/'.$news_list_first['item_first']['pic_thumb'], $news_list_first['item_first']->NewsLanguage[Yii::app()->language]['title']) , array($this->setUrlModule('news').'/'.$news_list_first['item_first']->NewsCat->NewsCatLanguage[Yii::app()->language]['tag'].'/'.$news_list_first['item_first']->NewsLanguage[Yii::app()->language]['tag'].'.html'), array('title'=>$news_list_first['item_first']->NewsLanguage[Yii::app()->language]['title'])); ?>
				</div>
				<?php endif?>
				<h4 class="title-items">
					<?php echo CHtml::link($news_list_first['item_first']->NewsLanguage[Yii::app()->language]['title'], array($this->setUrlModule('news').'/'.$news_list_first['item_first']->NewsCat->NewsCatLanguage[Yii::app()->language]['tag'].'/'.$news_list_first['item_first']->NewsLanguage[Yii::app()->language]['tag'].'.html'), array('title'=>$news_list_first['item_first']->NewsLanguage[Yii::app()->language]['title'])); ?>
				</h4>
				<?php echo $news_list_first['item_first']->NewsLanguage[Yii::app()->language]['preview']?> <div class="clear"></div>
			 </li>
		</ul>
		
		<?php if($news_list_first['list_next']):?>
		<ul class="panel-items-related">
			<?php foreach($news_list_first['list_next'] as $value):?>
				<li><?php echo CHtml::link($value->NewsLanguage[Yii::app()->language]['title'], array($this->setUrlModule('news').'/'.$value->NewsCat->NewsCatLanguage[Yii::app()->language]['tag'].'/'.$value->NewsLanguage[Yii::app()->language]['tag'].'.html'), array('title'=>$value->NewsLanguage[Yii::app()->language]['title'])); ?></li>
			<?php endforeach?>
		</ul>
		<?php endif?>
	</div>
</div>
<?php endif?>