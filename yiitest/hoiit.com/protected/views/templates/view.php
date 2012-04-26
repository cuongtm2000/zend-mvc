<?php $this->breadcrumbs=array('Web Templates'=>array('index'),	$model->WebTemplatesCat->cat_name=>array($model->WebTemplatesCat->tag), $model->template_id);?>
<h1 class="title-view marginb5"><strong>View WebTemplates <?php echo $model->template_id; ?></strong></h1>

<div id="pb-right-column">
	<!-- product img-->
	<div id="image-block">
		<img id="bigpic" src="<?php echo Yii::app()->theme->baseUrl; ?>/images/gallery/01.jpg" alt="" />
	</div>
	<!-- thumbnails -->
	<div id="views_block" class="prod_detail">
		<!--Slide show Jquery Lightbox-->
		<div class="big_thumb">
			<!--Slide Prev-->
			<span class="prevsmall"><img src="<?php echo Yii::app()->theme->baseUrl; ?>/images/prev.gif" alt="" /></span>
			<div class="thumbs anyClass" id="paginate-slider2">
				<ul id="thumbs_list">
					<li><a href="<?php echo Yii::app()->theme->baseUrl; ?>/images/gallery/01.jpg"  rel="other-views" class="thickbox shown" title=""><img src="<?php echo Yii::app()->theme->baseUrl; ?>/images/gallery/01.jpg" alt="" /></a></li>
					<li><a href="<?php echo Yii::app()->theme->baseUrl; ?>/images/gallery/02.jpg" class="thickbox" title=""><img src="<?php echo Yii::app()->theme->baseUrl; ?>/images/gallery/02.jpg" alt="" /> </a></li>
					<li><a href="<?php echo Yii::app()->theme->baseUrl; ?>/images/gallery/03.jpg" class="thickbox" title=""><img src="<?php echo Yii::app()->theme->baseUrl; ?>/images/gallery/03.jpg" alt="" /> </a></li>
					<li><a href="<?php echo Yii::app()->theme->baseUrl; ?>/images/gallery/04.jpg" class="thickbox" title=""><img src="<?php echo Yii::app()->theme->baseUrl; ?>/images/gallery/04.jpg" alt="" /> </a></li>
					<li><a href="<?php echo Yii::app()->theme->baseUrl; ?>/images/gallery/05.jpg" class="thickbox" title=""><img src="<?php echo Yii::app()->theme->baseUrl; ?>/images/gallery/05.jpg" alt="" /> </a></li>
				</ul>
			</div>
			<span class="nextsmall"><img src="<?php echo Yii::app()->theme->baseUrl; ?>/images/next.gif" alt="" /></span>
			<!--Slide Next-->
		</div><!--END Slide show Jquery Lightbox-->
	</div>
</div><div class="right templates-view-right">ri sa as as asght</div>