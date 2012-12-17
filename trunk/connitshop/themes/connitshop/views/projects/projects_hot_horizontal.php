<?php if($projects_hot_horizontal):?>
<?php
    Yii::app()->clientScript->registerCssFile(Yii::app()->theme->baseUrl.'/css/skin.css');
    Yii::app()->clientScript->registerScriptFile(Yii::app()->theme->baseUrl.'/js/jquery.jcarousel.min.js');
    Yii::app()->clientScript->registerScriptFile(Yii::app()->theme->baseUrl.'/js/projects_hot_horizontal.js');
?>
<h2 class="title-box"><span><?php echo $this->lang['projects'] . ' ' . $this->lang['hot']?></span></h2>
    <div class="jcarousel-project">
    <ul id="project_hot" class="jcarousel-skin-project-hot">
        <?php foreach($projects_hot_horizontal as $value):?>
            <li>
                <?php if($value['pic_thumb']):?>
                    <?php echo CHtml::link(CHtml::image(Yii::app()->baseUrl.Yii::getPathOfAlias('filePathUpload').'/image/projects/'.$value['pic_thumb'], $value->ProjectsLanguage[Yii::app()->language]['title']), array($this->setUrlModule('projects').'/'.$value->ProjectsCat->ProjectsCatLanguage[Yii::app()->language]['tag'].'/'.$value->ProjectsLanguage[Yii::app()->language]['tag'].'.html'), array('title'=>$value->ProjectsLanguage[Yii::app()->language]['title'])); ?>
                <?php endif?>
                <?php echo CHtml::link($value->ProjectsLanguage[Yii::app()->language]['title'], array($this->setUrlModule('projects').'/'.$value->ProjectsCat->ProjectsCatLanguage[Yii::app()->language]['tag'].'/'.$value->ProjectsLanguage[Yii::app()->language]['tag'].'.html'), array('title'=>$value->ProjectsLanguage[Yii::app()->language]['title'])); ?>
            </li>
        <?php endforeach?>
    </ul> <div class="clear"></div>
    </div>
<?php endif?>