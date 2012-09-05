<div class="frame-leftcontent">
	<h3 class="title-left"><span>Tin tức &amp; Sự kiện mới</span></h3>
	<ul class="sub-cat">
		<?php foreach($news_new as $value):?>
			<li><?php echo CHtml::link($value->NewsLanguage[Yii::app()->language]['title'], array($this->setLangUrl().'/tin-tuc/'.$value->NewsCat->NewsCatLanguage[Yii::app()->language]['tag'].'/'.$value->NewsLanguage[Yii::app()->language]['tag'].'.html'), array('title'=>$value->NewsLanguage[Yii::app()->language]['title'])); ?></li>
		<?php endforeach?>
	</ul>
</div>