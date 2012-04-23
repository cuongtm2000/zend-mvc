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
				<?php echo $value['title'.LANG] ?>
			</a></h2>
			<?php echo $value['preview'.LANG] ?> <div class="clear"></div>
		</li>
	<?php endforeach?>
	</ul>
	<?php $this->widget('CLinkPager', array('pages' => $listItemIndex['pages'], 'header'=>'', 'lastPageLabel'=>'Last', 'nextPageLabel'=>'Next', 'firstPageLabel'=>'First', 'prevPageLabel'=>'Prev', 'htmlOptions'=>array('class'=>'paging')))?>
<?php else:?>
	<div class="frame-tent-right"><?php echo $this->lang['no_record'] ?></div>
<?php endif?> <div class="clear"></div>
</div>