<?php $this->breadcrumbs = array($this->lang[$this->module->id] => Yii::app()->request->baseUrl . LANGURL . '/' . Yii::t('user', $this->module->id . '.link'), $info_cat['cat_title' . LANG]); ?>
<?php $this->pageTitle = $info_cat['cat_title'.LANG] . ' - ' . $this->lang[$this->module->id]; $this->description = $info_cat['description'.LANG];?>
<?php if($list_items['models']): ?>
    <h2 class="title-right"><span><?php echo $info_cat['cat_title'.LANG] ?></span></h2>
	   <div class="bg-masuring">
		<ul class="masuring">
			<?php foreach($list_items['models'] as $value): ?>
			<li class="gallery">
				<?php if($value['pic_full']):?>
					<div class="row-1">
						<a href="<?php echo Yii::app()->baseUrl.USERFILES ?>/<?php echo $this->module->id ?>/<?php echo $value['pic_full'] ?>" rel="prettyPhoto" title='<?php echo $value['title' . LANG] ?>'>
						<img src="<?php echo Yii::app()->theme->baseUrl; ?>/images/icon-23.png" alt='<?php echo $value['title' . LANG] ?>' /></a>
					</div>
					<h3 class="row-2"><?php echo $value['title' . LANG] ?></h3>
					<p class="row-3"><?php echo $value['extra_field1' . LANG] ?></p>
				<?php else :?>
					<div class="row-1">
						<a href="<?php echo Yii::app()->theme->baseUrl; ?>/images/no-product.jpg" rel="prettyPhoto" title="<?php echo $value['title'.LANG] ?>">
							<img src="<?php echo Yii::app()->theme->baseUrl; ?>/images/icon-23.png" alt='<?php echo $value['title' . LANG] ?>' />
						</a>
					</div>
					<h3 class="row-2"><?php echo $value['title' . LANG] ?></h3>
					<p class="row-3"><?php echo $value['extra_field1' . LANG] ?></p>
				<?php endif?>
				<div class="clear"></div>
			</li>
			<?php endforeach; ?>
		</ul> <div class="clear"></div>
	</div>
<div class="clear"></div>
    <?php $this->widget('CLinkPager', array('pages' => $list_items['pages'], 'header'=>'', 'lastPageLabel'=>Yii::t('user', 'last'), 'nextPageLabel'=>Yii::t('user', 'next'), 'firstPageLabel'=>Yii::t('user', 'first'), 'prevPageLabel'=>Yii::t('user', 'prev'), 'htmlOptions'=>array('class'=>'paging')))?>
	<div class="clear"></div>
<?php else: ?>
    <?php if(!$list_sub_cats): ?>
        <?php echo $this->lang['no_record'] ?>
    <?php endif; ?>
<?php endif; ?>