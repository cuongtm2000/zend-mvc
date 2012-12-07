<h3 class="title-red"><span><?php echo $this->lang['document']?></span></h3>
<ul class="sub-new">
    <?php foreach($document_new as $value):?>
        <li><?php //echo CHtml::link($value->DocumentLanguage[Yii::app()->language]['title'], array($this->setLangUrl().'/tai-lieu-hanh-chinh/'.$value->DocumentCat->DocumentCatLanguage[Yii::app()->language]['tag'].'/'.$value->DocumentLanguage[Yii::app()->language]['tag'].'.html'), array('title'=>$value->DocumentLanguage[Yii::app()->language]['title'])); ?></li>
    <?php endforeach?>
</ul>
<?php var_dump($document_new) ?>

