<?php if($projects_hot):?>
<?php
    Yii::app()->clientScript->registerCssFile(Yii::app()->theme->baseUrl.'/css/ie6.css');
    
    Yii::app()->clientScript->registerScriptFile(Yii::app()->theme->baseUrl.'/js/jquery.jcarousel.min.js');
    ?>
<script type="text/javascript">
    jQuery(document).ready(function() {
		jQuery('#project_list').jcarousel({
			wrap: 'circular',
			 vertical: true,
			 speed:300,
			 scroll:1
		 });
	});
</script>

<h2 class="title-box"><span><?php echo $this->lang['projects'] . ' ' . $this->lang['hot']?></span></h2>

    <ul id="project_list" class="jcarousel-skin-tango project-list">
        <?php foreach($projects_hot as $value):?>
            <li>
                <?php if($value['pic_thumb']):?>
                    <?php echo CHtml::link(CHtml::image(Yii::app()->baseUrl.Yii::getPathOfAlias('filePathUpload').'/image/projects/'.$value['pic_thumb'], $value->ProjectsLanguage[Yii::app()->language]['title']), array($this->setUrlModule('projects').'/'.$value->ProjectsCat->ProjectsCatLanguage[Yii::app()->language]['tag'].'/'.$value->ProjectsLanguage[Yii::app()->language]['tag'].'.html'), array('title'=>$value->ProjectsLanguage[Yii::app()->language]['title'])); ?>
                <?php endif?>
                <?php echo CHtml::link($value->ProjectsLanguage[Yii::app()->language]['title'], array($this->setUrlModule('projects').'/'.$value->ProjectsCat->ProjectsCatLanguage[Yii::app()->language]['tag'].'/'.$value->ProjectsLanguage[Yii::app()->language]['tag'].'.html'), array('title'=>$value->ProjectsLanguage[Yii::app()->language]['title'])); ?>
            </li>
        <?php endforeach?>
    </ul> <div class="clear"></div>

<?php endif?>