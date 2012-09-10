<?php if($video_hot):?>
<?php
	Yii::app()->clientScript->registerScriptFile(Yii::app()->theme->baseUrl.'/css/prettyPhoto.css');
    Yii::app()->clientScript->registerCssFile(Yii::app()->theme->baseUrl.'/js/jquery.prettyPhoto.js');
?>

Title: <?php echo $video_hot->VideoLanguage[Yii::app()->language]['title']?>
<br/><?php echo Yii::app()->baseUrl.Yii::getPathOfAlias('filePathUpload').'/image/video/'.$video_hot['pic_thumb']?>
<br/><?php echo $video_hot->VideoLanguage[Yii::app()->language]['link']?>

<?php endif?>
