<?php $this->breadcrumbs=array($this->lang[$this->module->id]);?>
<?php if($listItemIndex['models']):?>
	<ul>
	<?php foreach($listItemIndex['models'] as $value):?>
		<li>
			<?php if($value['pic_thumb']):?>
				<a href="<?php echo Yii::app()->request->baseUrl . LANGURL . '/' . Yii::t('user', $this->module->id . '.link') . '/' . $value->NewsCat->tag.LANG ?>/<?php echo $value['tag'.LANG] ?>.html" title="<?php echo $value['title'.LANG] ?>"><img src="<?php echo Yii::app()->baseUrl.USERFILES ?>/<?php echo $this->module->id ?>/<?php echo $value['pic_thumb'] ?>" alt="<?php echo $value['title'.LANG] ?>" /></a>
			<?php endif?>
			<a href="<?php echo Yii::app()->request->baseUrl . LANGURL . '/' . Yii::t('user', $this->module->id . '.link') . '/' . $value->NewsCat->tag.LANG ?>/<?php echo $value['tag'.LANG] ?>.html" title="<?php echo $value['title'.LANG] ?>">
				<?php echo $value['title'.LANG] ?>
			</a>
			<?php echo $value['preview'.LANG] ?>
		</li>
	<?php endforeach?>
	</ul>
	<?php $this->widget('CLinkPager', array('pages' => $listItemIndex['pages'], 'header'=>'', 'lastPageLabel'=>'last', 'nextPageLabel'=>'next', 'firstPageLabel'=>'first', 'prevPageLabel'=>'prev', 'htmlOptions'=>array('class'=>'paging')))?>
<?php else:?>
	Khong co mau tin
<?php endif?>