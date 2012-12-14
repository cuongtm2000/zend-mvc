<h3 class="title-grey"><span>Tin tức hot</span></h3>
<ul class="sub-new frame-leftcontent">
    <?php foreach($document_hot as $value):?>
        <li><?php echo CHtml::link($value->DocumentLanguage[Yii::app()->language]['title'], array($this->setLangUrl().'/tin-tuc/'.$value->DocumentCat->DocumentCatLanguage[Yii::app()->language]['tag'].'/'.$value->DocumentLanguage[Yii::app()->language]['tag'].'.html'), array('title'=>$value->DocumentLanguage[Yii::app()->language]['title'])); ?></li>
    <?php endforeach?>
</ul>