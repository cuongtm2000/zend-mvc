<?php $this->breadcrumbs = array($this->lang[$this->module->id] => Yii::app()->request->baseUrl . LANGURL . '/' . Yii::t('user', $this->module->id.'.link'), $info_cat['cat_title'.LANG]); ?>
<?php $this->pageTitle = $info_cat['cat_title'.LANG]; $this->description = $info_cat['description'.LANG];?>
<h2 class="title-box"><span><?php echo $info_cat['cat_title'.LANG] ?></span></h2>
<?php if($list_items['models']): ?>
	<ul class="all-product">
	<?php foreach($list_items['models'] as $value): ?>
		<li class="product item_video">
			<div class="tent-product">
				<div class="product-img">
					<a href="<?php echo CHtml::encode($value['url'])?>" rel="prettyPhoto" title="<?php echo $value['title'.LANG] ?>">
						<?php if($value['pic_thumb']):?>
							<img src="<?php echo Yii::app()->baseUrl.USERFILES ?>/<?php echo $this->module->id ?>/<?php echo $value['pic_thumb'] ?>" alt="<?php echo $value['title'.LANG] ?>" />
						<?php else :?>
							<img src="<?php echo Yii::app()->theme->baseUrl; ?>/images/no-images.jpg" alt="<?php echo $value['title'.LANG] ?>" />
						<?php endif?>
					</a>
				</div>
				<h3 class="title-pro"><a href="<?php echo CHtml::encode($value['url'])?>" rel="prettyPhoto" title="<?php echo $value['title'.LANG] ?>"><?php echo $value['title'.LANG] ?></a></h3>
			</div>
		</li>
	<?php endforeach?>
	</ul>
<script type="text/javascript">$(document).ready(function () {$(".item_video a[rel^='prettyPhoto']").prettyPhoto();});</script>
	<?php $this->widget('CLinkPager', array('pages' => $list_items['pages'], 'header'=>'', 'lastPageLabel'=>'Last', 'nextPageLabel'=>'Next', 'firstPageLabel'=>'First', 'prevPageLabel'=>'Prev', 'htmlOptions'=>array('class'=>'paging')))?>
<?php else: ?>
	<?php echo $this->lang['no_record'] ?>
<?php endif; ?>