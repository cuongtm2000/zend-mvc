<h3 class="title-red"><span><?php echo $this->lang['procedures']?></span></h3>
<ul class="sub-new">
    <?php foreach($procedures_new as $value):?>
        <li><?php echo CHtml::link($value->ProceduresLanguage[Yii::app()->language]['title'], array($this->setLangUrl().'/thu-tuc-hanh-chinh/'.$value->ProceduresCat->ProceduresCatLanguage[Yii::app()->language]['tag'].'/'.$value->ProceduresLanguage[Yii::app()->language]['tag'].'.html'), array('title'=>$value->ProceduresLanguage[Yii::app()->language]['title'])); ?></li>
    <?php endforeach?>
</ul>