<?php $this->breadcrumbs=array($this->lang[$this->module->id]);?>
<h1 class="title-right"><span><?php echo CHtml::encode($this->lang[$this->module->id])?></span></h1>
<div class="frame-tent-right">
<?php if($listItemIndex['models']):?>
	<ul class="masuring">
	<?php foreach($listItemIndex['models'] as $value):?>
		<li>
			<div class="frame-img">
				<?php if($value['pic_thumb']):?>
					<a href="<?php echo Yii::app()->request->baseUrl . LANGURL . '/' . Yii::t('user', $this->module->id . '.link') . '/' . $value[ucfirst($this->module->id).'Cat']['tag'.LANG] ?>/<?php echo $value['tag'.LANG] ?>.html" title='<?php echo $value['title'.LANG] ?>'><img src="<?php echo Yii::app()->baseUrl.USERFILES ?>/<?php echo $this->module->id ?>/<?php echo $value['pic_thumb'] ?>" alt='<?php echo $value['title'.LANG] ?>' /></a>
				<?php else :?>
					<a href="<?php echo Yii::app()->request->baseUrl . LANGURL . '/' . Yii::t('user', $this->module->id . '.link') . '/' . $value[ucfirst($this->module->id).'Cat']['tag'.LANG] ?>/<?php echo $value['tag'.LANG] ?>.html" title='<?php echo $value['title'.LANG] ?>'><img src="<?php echo Yii::app()->theme->baseUrl; ?>/images/no-images.jpg" alt='<?php echo $value['title'.LANG] ?>' /></a>
				<?php endif?>
			</div>
			<h2 class="title-masuring"><a href="<?php echo Yii::app()->request->baseUrl . LANGURL . '/' . Yii::t('user', $this->module->id . '.link') . '/' . $value[ucfirst($this->module->id).'Cat']['tag'.LANG] ?>/<?php echo $value['tag'.LANG] ?>.html" title='<?php echo $value['title'.LANG] ?>'>
				<strong><?php echo $value['title'.LANG] ?></strong>
			</a></h2>
			<?php echo $value['preview'.LANG] ?> <div class="clear"></div>
		</li>
	<?php endforeach?>
	</ul>
	<?php $this->widget('CLinkPager', array('pages' => $listItemIndex['pages'], 'header'=>'', 'lastPageLabel'=>'Last', 'nextPageLabel'=>'Next', 'firstPageLabel'=>'First', 'prevPageLabel'=>'Prev', 'htmlOptions'=>array('class'=>'paging')))?>
<?php else:?>
	Khong co mau tin
<?php endif?> <div class="clear"></div>
	<?php if(isset($this->function['news_new']) && ($this->function['news_new'])):?>
	<div class="frame-new">
		<h3 class="title-right"><span><?php echo CHtml::encode($this->lang['news']) . ' ' . strtolower($this->lang['new'])?></span></h3>
		<ul class="sub-new">
			<?php foreach($this->function['news_new'] as $value):?>
			<li><a href="<?php echo Yii::app()->request->baseUrl.LANGURL ?>/<?php echo Yii::t('user', 'news.link')?>/<?php echo $value['NewsCat']['tag'.LANG] ?>/<?php echo $value['tag'.LANG] ?>.html" title="<?php echo $value['title'.LANG]?>"><?php echo $value['title'.LANG]?></a></li>
			<?php endforeach?>
		</ul>
	</div>
	<?php endif?>
</div>