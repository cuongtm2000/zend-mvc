<?php if($news_list_first):?>
<div class="frame-panel">
	<h2 class="title-right">Tin tức &amp; Sự kiện</h2>
	<div class="frame-tent-right">        
		<ul class="masuring">
			<li>
				<?php if($news_list_first['pic_thumb']):?>
				<div class="frame-img">
					<?php echo CHtml::link(CHtml::image(Yii::app()->baseUrl.Yii::getPathOfAlias('filePathUpload').'/image/news/'.$news_list_first['pic_thumb'], $news_list_first->NewsLanguage[Yii::app()->language]['title']) , array($this->setLangUrl().'/tin-tuc/'.$news_list_first->NewsCat->NewsCatLanguage[Yii::app()->language]['tag'].'/'.$news_list_first->NewsLanguage[Yii::app()->language]['tag'].'.html'), array('title'=>$news_list_first->NewsLanguage[Yii::app()->language]['title'])); ?>
				</div>
				<?php endif?>
				<h3 class="title-masuring">
					<?php echo CHtml::link($news_list_first->NewsLanguage[Yii::app()->language]['title'], array($this->setLangUrl().'/tin-tuc/'.$news_list_first->NewsCat->NewsCatLanguage[Yii::app()->language]['tag'].'/'.$news_list_first->NewsLanguage[Yii::app()->language]['tag'].'.html'), array('title'=>$news_list_first->NewsLanguage[Yii::app()->language]['title'])); ?>
				</h3>
				<?php echo $news_list_first->NewsLanguage[Yii::app()->language]['preview']?> <div class="clear"></div>
			 </li>
		</ul>
	</div>
	
	<ul>
		<li>aaa</li>
		<li>aaa</li>
		<li>aaa</li>
	</ul>
</div>

<?php endif?>