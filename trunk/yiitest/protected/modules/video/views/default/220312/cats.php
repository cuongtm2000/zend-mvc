<?php $this->breadcrumbs = array($this->lang[$this->module->id] => LANGURL . '/' . Yii::t('user', $this->module->id.'.link'), $info_cat['cat_title'.LANG]); ?>
<?php $this->pageTitle = $info_cat['cat_title'.LANG]; $this->description = $info_cat['description'.LANG];?>

<?php if($list_items['models']): ?>
	<ul>
	<?php foreach($list_items['models'] as $value): ?>
		<li>
			<?php if($value['pic_thumb']):?>
				<a href="<?php echo $value['url']?>" title="<?php echo $value['title'.LANG] ?>"><img src="<?php echo Yii::app()->baseUrl.USERFILES ?>/<?php echo $this->module->id ?>/<?php echo $value['pic_thumb'] ?>" alt="<?php echo $value['title'.LANG] ?>" /></a>
			<?php endif?>

			<a href="<?php echo $value['url']?>" title="<?php echo $value['title'.LANG] ?>">
				<?php echo $value['title'.LANG] ?>
			</a>
		</li>
	<?php endforeach?>
	</ul>
	<?php $this->widget('CLinkPager', array('pages' => $list_items['pages'], 'header'=>'', 'lastPageLabel'=>'last', 'nextPageLabel'=>'next', 'firstPageLabel'=>'first', 'prevPageLabel'=>'prev', 'htmlOptions'=>array('class'=>'paging')))?>
<?php else: ?>
	<?php echo $this->lang['no_record'] ?>
<?php endif; ?>