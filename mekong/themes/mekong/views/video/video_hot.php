<?php if($video_hot):?>
<div class="frame-leftcontent">
	<div class="video_hot">
		<a rel="prettyPhoto" href="<?php echo $video_hot->VideoLanguage[Yii::app()->language]['link']?>" title="<?php echo $video_hot->VideoLanguage[Yii::app()->language]['title']?>">
			<img src="<?php echo Yii::app()->baseUrl.Yii::getPathOfAlias('filePathUpload').'/image/video/'.$video_hot['pic_thumb']?>" alt="<?php echo $video_hot->VideoLanguage[Yii::app()->language]['title']?>" />
		</a>
	</div>
	<script type="text/javascript" src="<?php echo Yii::app()->theme->baseUrl; ?>/js/jquery.prettyphoto.js"></script>
	<link rel="stylesheet" type="text/css" href="<?php echo Yii::app()->theme->baseUrl; ?>/css/prettyphoto.css" />
	<script type="text/javascript">
		$(document).ready(function(){
			$(".video_hot a[rel^='prettyPhoto']").prettyPhoto();
		});  
	</script>
</div>
<?php endif?>
