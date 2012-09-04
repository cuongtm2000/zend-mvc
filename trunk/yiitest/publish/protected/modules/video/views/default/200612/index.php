<?php $this->breadcrumbs=array($this->lang[$this->module->id]);?>
<?php if($listItemIndex['models']):?>
<div class="top-tent-right"></div>		
	<div class="frame-tent-right">	
		<h2 class="title-right"><span><?php echo $this->lang[$this->module->id]?></span></h2>
			<ul class="all-product">
			<?php foreach($listItemIndex['models'] as $value):?>
				<li class="product item_video">
					<div class="product-img product-img-video">
						<a href="<?php echo CHtml::encode($value['url'])?>" rel="prettyPhoto" title="<?php echo $value['title'.LANG] ?>">
							<?php if($value['pic_thumb']):?>
								<img src="<?php echo Yii::app()->baseUrl.USERFILES ?>/<?php echo $this->module->id ?>/<?php echo $value['pic_thumb'] ?>" alt="<?php echo $value['title'.LANG] ?>" />
							<?php else :?>
								<img src="<?php echo Yii::app()->theme->baseUrl; ?>/images/no-images.jpg" alt="<?php echo $value['title'.LANG] ?>" />
							<?php endif?>
						</a>
					</div>
					<div class="product-fter">	
						<h3 class="title-pro"><a href="<?php echo CHtml::encode($value['url'])?>" rel="prettyPhoto" title="<?php echo $value['title'.LANG] ?>"><?php echo $value['title'.LANG] ?></a></h3>
					</div>
				</li>
			<?php endforeach?>
			</ul>
		<script type="text/javascript">$(document).ready(function () {$(".product a[rel^='prettyPhoto']").prettyPhoto();});</script>
			<?php $this->widget('CLinkPager', array('pages' => $listItemIndex['pages'], 'header'=>'', 'lastPageLabel'=>'Last', 'nextPageLabel'=>'Next', 'firstPageLabel'=>'First', 'prevPageLabel'=>'Prev', 'htmlOptions'=>array('class'=>'paging')))?>
		<div class="clear"></div>
	</div> <!--End frame tent right-->
<div class="bttom-tent-right"></div>
<?php else:?>
	
	<?php echo $this->lang['no_record'] ?>
	
<?php endif?>