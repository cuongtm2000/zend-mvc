<?php $this->breadcrumbs=array($this->lang[$this->module->id]);?>
<h1 class="title-right"><span><?php echo $this->lang[$this->module->id]?></span></h1>
<?php if($listItemIndex['models']):?>
	<ul class="all-product">
	<?php foreach($listItemIndex['models'] as $value):?>
		<li class="product item_video">
				<div class="product-img item-video-img">
					<a href="<?php echo CHtml::encode($value['url'])?>" rel="prettyPhoto" title="<?php echo $value['title'.LANG] ?>">
						<?php if($value['pic_thumb']):?>
							<img src="<?php echo Yii::app()->baseUrl.USERFILES ?>/<?php echo $this->module->id ?>/<?php echo $value['pic_thumb'] ?>" alt="<?php echo $value['title'.LANG] ?>" />
						<?php else :?>
							<img src="<?php echo Yii::app()->theme->baseUrl; ?>/images/no-images.jpg" alt="<?php echo $value['title'.LANG] ?>" />
						<?php endif?>
					</a>
				</div>
				<h2 class="title-pro"><a href="<?php echo CHtml::encode($value['url'])?>" rel="prettyPhoto" title="<?php echo $value['title'.LANG] ?>"><?php echo $value['title'.LANG] ?></a></h2>
		</li>
	<?php endforeach?>
	</ul><div class="btom-main"></div>
<script type="text/javascript">$(document).ready(function () {$(".product a[rel^='prettyPhoto']").prettyPhoto();});</script>
	<?php $this->widget('CLinkPager', array('pages' => $listItemIndex['pages'], 'header'=>'', 'lastPageLabel'=>'Last', 'nextPageLabel'=>'Next', 'firstPageLabel'=>'First', 'prevPageLabel'=>'Prev', 'htmlOptions'=>array('class'=>'paging')))?>
<?php else:?>
	<div class="frame-tent-right"><?php echo $this->lang['no_record'] ?></div><div class="btom-main"></div>
<?php endif?>