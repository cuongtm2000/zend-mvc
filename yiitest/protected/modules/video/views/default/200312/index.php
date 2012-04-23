<?php $this->breadcrumbs=array($this->lang[$this->module->id]);?>
<h1 class="title-right"><span><?php echo $this->lang[$this->module->id]?></span></h1>
<?php if($listItemIndex['models']):?>
	<ul class="all_product">
	<?php foreach($listItemIndex['models'] as $value):?>
		<li class="product item_video">
			<div class="product-top"></div>
			<div class="product-mid">
					<div class="tent-product">
						<div class="product-img product-img-video">
							<a href="<?php echo CHtml::encode($value['url'])?>" rel="prettyPhoto" title="<?php echo $value['title'.LANG] ?>">
								<?php if($value['pic_thumb']):?>
									<img src="<?php echo Yii::app()->baseUrl.USERFILES ?>/<?php echo $this->module->id ?>/<?php echo $value['pic_thumb'] ?>" alt="<?php echo $value['title'.LANG] ?>" />
								<?php else :?>
									<img src="<?php echo Yii::app()->theme->baseUrl; ?>/images/no-images.jpg" alt="<?php echo $value['title'.LANG] ?>" />
								<?php endif?>
							</a>
						</div>
						<h2 class="title-pro"><a href="<?php echo CHtml::encode($value['url'])?>" rel="prettyPhoto" title="<?php echo $value['title'.LANG] ?>"><?php echo $value['title'.LANG] ?></a></h2>
					</div>
			</div>
			<div class="product-btom"></div>
		</li>
	<?php endforeach?>
	</ul>
<script type="text/javascript">$(document).ready(function () {$(".product a[rel^='prettyPhoto']").prettyPhoto();});</script>
	<?php $this->widget('CLinkPager', array('pages' => $listItemIndex['pages'], 'header'=>'', 'lastPageLabel'=>'Last', 'nextPageLabel'=>'Next', 'firstPageLabel'=>'First', 'prevPageLabel'=>'Prev', 'htmlOptions'=>array('class'=>'paging')))?>
<div class="clear"></div>
<?php else:?>
	Khong co mau tin
<?php endif?>