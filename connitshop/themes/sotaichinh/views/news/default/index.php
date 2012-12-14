<?php $this->breadcrumbs = array($this->lang[$this->module->id]); ?>
<?php $this->pageTitle = $this->lang[$this->module->id]; $this->setDescription()?>

<?php $items = NewsCat::model()->listItem()?>

<?php foreach($items as $item):?>
<h2 class="title-right"><span><?php echo $item->NewsCatLanguage[Yii::app()->language]['cat_title']?></span></h2>
	<?php $values = News::model()->listItemByCatIndex($item['cat_id']); ?>
		<div class="main-list-item">
		<ul class="list-news-index">
			<?php if($values):?>
				<?php $i=0;foreach($values as $value):?>
					<?php if($i==0 && $value['pic_thumb']):?>
						<li class="item-first">
							<h3 class="title-item-first"><?php echo CHtml::link($value->NewsLanguage[Yii::app()->language]['title'].' '.'<span>('.date('d/m/Y', strtotime($value['postdate'])).')</span>', array($this->setUrlModule('news').'/'.$value->NewsCat->NewsCatLanguage[Yii::app()->language]['tag'].'/'.$value->NewsLanguage[Yii::app()->language]['tag'].'.html'), array('title'=>$value->NewsLanguage[Yii::app()->language]['title'])); ?></h3>
							<?php echo CHtml::link(CHtml::image(Yii::app()->baseUrl.Yii::getPathOfAlias('filePathUpload').'/image/news/'.$value['pic_thumb'], $value->NewsLanguage[Yii::app()->language]['title']) , array($this->setUrlModule('news').'/'.$value->NewsCat->NewsCatLanguage[Yii::app()->language]['tag'].'/'.$value->NewsLanguage[Yii::app()->language]['tag'].'.html'), array('title'=>$value->NewsLanguage[Yii::app()->language]['title'])); ?>
							<?php echo $value->NewsLanguage[Yii::app()->language]['preview'] ?>
							<div class="clear"></div>
						</li>
					<?php else:?>
						<li><?php echo CHtml::link($value->NewsLanguage[Yii::app()->language]['title'].' '.'<span>('.date('d/m/Y', strtotime($value['postdate'])).')</span>', array($this->setUrlModule('news').'/'.$value->NewsCat->NewsCatLanguage[Yii::app()->language]['tag'].'/'.$value->NewsLanguage[Yii::app()->language]['tag'].'.html'), array('title'=>$value->NewsLanguage[Yii::app()->language]['title'])); ?></li>
					<?php endif;?>
				<?php $i++;endforeach;?>
			<?php else:?>
				<li>Đang cập nhật</li>
			<?php endif?>	
		</ul>
		</div>
<?php endforeach;?>


	
<!--<?php if($listItemIndex['models']):?>
<h2 class="title-right"><span><?php echo CHtml::encode($this->lang['news'])?></span></h2>
<div class="main-list-item">
	<ul class="panel-items">
		<?php foreach($listItemIndex['models'] as $value):?>
		<li>
			<?php if($value['pic_thumb']):?>
				<div class="frame-img">
					<?php echo CHtml::link(CHtml::image(Yii::app()->baseUrl.Yii::getPathOfAlias('filePathUpload').'/image/news/'.$value['pic_thumb'], $value->NewsLanguage[Yii::app()->language]['title']) , array($this->setUrlModule('news').'/'.$value->NewsCat->NewsCatLanguage[Yii::app()->language]['tag'].'/'.$value->NewsLanguage[Yii::app()->language]['tag'].'.html'), array('title'=>$value->NewsLanguage[Yii::app()->language]['title'])); ?>
				</div>
			<?php endif?>
			<h2 class="title-items-news">
				<?php echo CHtml::link($value->NewsLanguage[Yii::app()->language]['title'], array($this->setUrlModule('news').'/'.$value->NewsCat->NewsCatLanguage[Yii::app()->language]['tag'].'/'.$value->NewsLanguage[Yii::app()->language]['tag'].'.html'), array('title'=>$value->NewsLanguage[Yii::app()->language]['title'])); ?>
			</h2>
			<?php echo $value->NewsLanguage[Yii::app()->language]['preview'] ?> 
			<div class="clear"></div>
		</li>
		<?php endforeach?>
	</ul> <div class="clear"></div>
	<?php $this->widget('CLinkPager', array('pages' => $listItemIndex['pages'], 'header'=>'', 'lastPageLabel'=>'Last', 'nextPageLabel'=>'Next', 'firstPageLabel'=>'First', 'prevPageLabel'=>'Prev', 'htmlOptions'=>array('class'=>'paging')))?> <div class="clear"></div>
</div>
<script type="text/javascript">
	$(document).ready(function(){
		$(".panel-items li:even").addClass("alt");
	});
</script>
<?php else:?>
	khong co mau tin
<?php endif?>-->