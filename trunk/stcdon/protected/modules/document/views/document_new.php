<h3 class="title-red"><span>Tin tức &amp; Sự kiện mới</span></h3>
<ul class="sub-new frame-leftcontent">
    <?php foreach($document_new as $value):?>
        <li><?php echo CHtml::link($value->DocumentLanguage[Yii::app()->language]['title'], array($this->setLangUrl().'/tin-tuc/'.$value->DocumentCat->DocumentCatLanguage[Yii::app()->language]['tag'].'/'.$value->DocumentLanguage[Yii::app()->language]['tag'].'.html'), array('title'=>$value->DocumentLanguage[Yii::app()->language]['title'])); ?></li>
    <?php endforeach?>
</ul>