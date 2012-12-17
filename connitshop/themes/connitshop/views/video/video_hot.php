<?php if($video_hot):?>
<h4 class="title-left"><span><?php echo $this->lang['video']?></span></h4>
<div class="video_hot">
	<script type="text/javascript" src="<?php echo Yii::app()->theme->baseUrl; ?>/js/embed-flash.js"></script>
	<script type="text/javascript">embedyoutube2('<?php echo $video_hot->VideoLanguage[Yii::app()->language]['extra_field1']?>',231,200);</script>
</div>
<?php endif?>