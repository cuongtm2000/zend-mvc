<?php if($projects_new):?>
<?php
    Yii::app()->clientScript->registerCssFile(Yii::app()->theme->baseUrl.'/css/ie6.css');
    Yii::app()->clientScript->registerCssFile(Yii::app()->theme->baseUrl.'/css/skin.css');
    Yii::app()->clientScript->registerScriptFile(Yii::app()->theme->baseUrl.'/js/jquery.jcarousel.min.js');
?>
<script type="text/javascript">
$(document).ready(function() {
    $('#mycarousel').jcarousel({
        wrap: 'circular',
        //auto:true,
        speed: 100,
        scroll: 3
    });

    $('#mycarousel_3').jcarousel({
          wrap: 'circular',
          auto:4,
          speed: 300,
          scroll:2
      });
});
</script>
    <h2 class="title-box"><span><?php echo $this->lang['projects'] . ' ' .$this->lang['new']?></span></h2>
    <div class="project-first">
        <?php if($projects_new[0]['pic_thumb']):?>
            <?php echo CHtml::link(CHtml::image(Yii::app()->baseUrl.Yii::getPathOfAlias('filePathUpload').'/image/projects/'.$projects_new[0]['pic_thumb'], $projects_new[0]->ProjectsLanguage[Yii::app()->language]['title']), array($this->setUrlModule('projects').'/'.$projects_new[0]->ProjectsCat->ProjectsCatLanguage[Yii::app()->language]['tag'].'/'.$projects_new[0]->ProjectsLanguage[Yii::app()->language]['tag'].'.html'), array('title'=>$projects_new[0]->ProjectsLanguage[Yii::app()->language]['title'])); ?>
        <?php endif?>
        <p><?php echo CHtml::link($projects_new[0]->ProjectsLanguage[Yii::app()->language]['title'], array($this->setUrlModule('projects').'/'.$projects_new[0]->ProjectsCat->ProjectsCatLanguage[Yii::app()->language]['tag'].'/'.$projects_new[0]->ProjectsLanguage[Yii::app()->language]['tag'].'.html'), array('title'=>$projects_new[0]->ProjectsLanguage[Yii::app()->language]['title'])); ?></p>
    </div>
    <div class="jcarousel-project">
        <ul id="mycarousel" class="jcarousel-skin-tango project-new">
            <?php foreach($projects_new as $value):?>
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