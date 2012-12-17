<?php if($projects_hot):?>
<?php
    Yii::app()->clientScript->registerCssFile(Yii::app()->theme->baseUrl.'/images/skin.css');
    Yii::app()->clientScript->registerScriptFile(Yii::app()->theme->baseUrl.'/js/jquery.jcarousel.min.js');
    Yii::app()->clientScript->registerScriptFile(Yii::app()->theme->baseUrl.'/js/project-list.js');
?>

<h2 class="title-box"><span><?php echo $this->lang['projects'] . ' ' . $this->lang['hot']?></span></h2>
<ul id="mycarousel" class="jcarousel-skin-tango list-mana">
   <?php foreach($projects_hot as $value):?>
    <li>
        <?php if($value['pic_thumb']):?>
        <?php echo CHtml::link(CHtml::image(Yii::app()->baseUrl.Yii::getPathOfAlias('filePathUpload').'/image/projects/'.$value['pic_thumb'], $value->ProjectsLanguage[Yii::app()->language]['title']), array($this->setUrlModule('projects').'/'.$value->ProjectsCat->ProjectsCatLanguage[Yii::app()->language]['tag'].'/'.$value->ProjectsLanguage[Yii::app()->language]['tag'].'.html'), array('title'=>$value->ProjectsLanguage[Yii::app()->language]['title'])); ?>
        <?php endif?>
        <?php echo CHtml::link($value->ProjectsLanguage[Yii::app()->language]['title'], array($this->setUrlModule('projects').'/'.$value->ProjectsCat->ProjectsCatLanguage[Yii::app()->language]['tag'].'/'.$value->ProjectsLanguage[Yii::app()->language]['tag'].'.html'), array('title'=>$value->ProjectsLanguage[Yii::app()->language]['title'])); ?>
    </li>
    <?php endforeach?>
</ul>

<?php endif?>

