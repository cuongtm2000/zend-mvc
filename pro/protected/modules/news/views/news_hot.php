<h3 class="title-box"><span>Tin tức hot</span></h3>
<ul class="sub-new frame-leftcontent">
    <?php foreach($news_hot as $value):?>
        <li><?php echo CHtml::link($value->NewsLanguage[Yii::app()->language]['title'], array($this->setLangUrl().'/tin-tuc/'.$value->NewsCat->NewsCatLanguage[Yii::app()->language]['tag'].'/'.$value->NewsLanguage[Yii::app()->language]['tag'].'.html'), array('title'=>$value->NewsLanguage[Yii::app()->language]['title'])); ?></li>
    <?php endforeach?>
</ul>