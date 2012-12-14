<h3 class="title-grey"><span>Tin tức hot</span></h3>
<ul class="sub-new frame-leftcontent">
    <?php foreach($procedures_hot as $value):?>
        <li><?php echo CHtml::link($value->ProceduresLanguage[Yii::app()->language]['title'], array($this->setLangUrl().'/thu-tuc-hanh-chinh/'.$value->ProceduresCat->ProceduresCatLanguage[Yii::app()->language]['tag'].'/'.$value->ProceduresLanguage[Yii::app()->language]['tag'].'.html'), array('title'=>$value->ProceduresLanguage[Yii::app()->language]['title'])); ?></li>
    <?php endforeach?>
</ul>