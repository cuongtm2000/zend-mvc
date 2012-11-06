<?php if($projects_hot):?>
<?php
    Yii::app()->clientScript->registerCssFile(Yii::app()->theme->baseUrl.'/images/skin.css');
    Yii::app()->clientScript->registerScriptFile(Yii::app()->theme->baseUrl.'/js/jquery.jcarousel.min.js');
    Yii::app()->clientScript->registerScriptFile(Yii::app()->theme->baseUrl.'/js/project-list.js');
?>

<h2 class="title-box"><span><?php echo $this->lang['projects'] . ' ' . $this->lang['hot']?></span></h2>
<ul id="mycarousel" class="jcarousel jcarousel-skin-tango">
   <?php foreach($projects_hot as $value):?>
    <li>
        <?php if($value['pic_thumb']):?>
        <?php echo CHtml::link(CHtml::image(Yii::app()->baseUrl.Yii::getPathOfAlias('filePathUpload').'/image/projects/'.$value['pic_thumb'], $value->ProjectsLanguage[Yii::app()->language]['title']), array($this->setUrlModule('projects').'/'.$value->ProjectsCat->ProjectsCatLanguage[Yii::app()->language]['tag'].'/'.$value->ProjectsLanguage[Yii::app()->language]['tag'].'.html'), array('title'=>$value->ProjectsLanguage[Yii::app()->language]['title'])); ?>
        <?php endif?>
        <?php echo CHtml::link($value->ProjectsLanguage[Yii::app()->language]['title'], array($this->setUrlModule('projects').'/'.$value->ProjectsCat->ProjectsCatLanguage[Yii::app()->language]['tag'].'/'.$value->ProjectsLanguage[Yii::app()->language]['tag'].'.html'), array('title'=>$value->ProjectsLanguage[Yii::app()->language]['title'])); ?>
    </li>
    <?php endforeach?>
<!--    <li><img src="http://localhost/datxanh/public/userfiles/image/projects/ban-nha-cap-3.jpg" alt="" /></li>
    <li><img src="http://localhost/datxanh/public/userfiles/image/projects/du-an-moi-nhat.jpg" alt="" /></li>
    <li><img src="http://localhost/datxanh/public/userfiles/image/projects/nha-biet-thu.jpg" alt="" /></li>
    <li><img src="http://localhost/datxanh/public/userfiles/image/projects/nha-moi-cao-cap.jpg" alt="" /></li>
    <li><img src="http://localhost/datxanh/public/userfiles/image/projects/ban-nha-cap-4.jpg" alt="" /></li>
    <li><img src="http://static.flickr.com/66/199481236_dc98b5abb3_s.jpg" alt="" /></li>
    <li><img src="http://static.flickr.com/75/199481072_b4a0d09597_s.jpg" alt="" /></li>
    <li><img src="http://static.flickr.com/57/199481087_33ae73a8de_s.jpg" alt="" /></li>
    <li><img src="http://static.flickr.com/77/199481108_4359e6b971_s.jpg" alt="" /></li>-->

</ul>

<?php endif?>

