<h5 class="title-left"><span><?php echo CHtml::encode($this->lang['news']) ?> hot</span></h5>
<ul class="sub-new frame-leftcontent">
    <?php foreach($news_hot as $value):?>
        <li><?php echo CHtml::link($value->NewsLanguage[Yii::app()->language]['title'], array($this->setUrlModule('news').'/'.$value->NewsCat->NewsCatLanguage[Yii::app()->language]['tag'].'/'.$value->NewsLanguage[Yii::app()->language]['tag'].'.html'), array('title'=>$value->NewsLanguage[Yii::app()->language]['title'])); ?></li>
    <?php endforeach?>
</ul>