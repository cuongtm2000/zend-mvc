<h1 class="title-right"><span><a href="<?php echo Yii::app()->request->baseUrl?>/tin-tuc" title="Tin tức">Tin tức</a> &raquo; <a href="<?php echo Yii::app()->request->baseUrl.'/tin-tuc/'.$item->NewsCat->tag?>" title="<?php echo $item->NewsCat->cat_title?>"><?php echo $item->NewsCat->cat_title?></a> &raquo; <?php echo $item['title']?></span></h1>
<div class="frame-tent-right">
	<?php echo $item['detail'] ?>
</div> <!--End frame ten right-->
