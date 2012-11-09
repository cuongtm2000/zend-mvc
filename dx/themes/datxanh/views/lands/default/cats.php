<?php $this->breadcrumbs = array($this->lang[$this->module->id] => array($this->setUrlModule()), $info_cat['cat_title']); ?>
<?php $this->pageTitle = $info_cat['cat_title'] . ' - ' . $this->lang[$this->module->id]; $this->setDescription($info_cat['description'])?>

<?php
	Yii::app()->clientScript->registerCssFile(Yii::app()->theme->baseUrl.'/css/tab.css');
	Yii::app()->clientScript->registerScriptFile(Yii::app()->theme->baseUrl.'/js/tab-sub-right.js');
?>

<h1 class="title-left"><span><?php echo $info_cat['cat_title']?></span></h1>
<div class="infotab">
	<ul class="tabs tabs-2">
		<?php $type_list = LandsType::model()->listTypes(); $i=1; foreach($type_list as $value):?>
			<li><a href="#tab<?php echo $i?>"><?php echo $value['type_name'] ?></a></li>
		<?php $i++; endforeach?>
	</ul>

	<div class="tab_container tab-transaction">
		<?php $type_list = LandsType::model()->listTypes(); $i=1; foreach($type_list as $value):?>
			<div id="tab<?php echo $i?>" class="tab_content">
				<table class="table-transaction">
					<?php $items = Lands::model()->listItemByCat($info_cat['cat_id'], $value['type_id']);?>
					<?php if($items['models']):?>
						<?php foreach($items['models'] as $item):?>
						<tr>
							<td class="img-post">
								<?php echo CHtml::link(CHtml::image(($item['pic_thumb']) ? Yii::app()->baseUrl.Yii::getPathOfAlias('filePathUpload').'/image/lands/'.$item['pic_thumb'] : Yii::app()->theme->baseUrl.'/images/no-images.jpg', $item->LandsLanguage[Yii::app()->language]['title']), array($this->setUrlModule('lands').'/'.$item->LandsCat->LandsCatLanguage[Yii::app()->language]['tag'].'/'.$item->LandsLanguage[Yii::app()->language]['tag'].'.html'), array('title'=>$item->LandsLanguage[Yii::app()->language]['title'])); ?>
							</td>
							<td class="link-post">
								<?php echo CHtml::link($item->LandsLanguage[Yii::app()->language]['title'], array($this->setUrlModule('lands').'/'.$item->LandsCat->LandsCatLanguage[Yii::app()->language]['tag'].'/'.$item->LandsLanguage[Yii::app()->language]['tag'].'.html'), array('title'=>$item->LandsLanguage[Yii::app()->language]['title'])); ?>
							</td>
							<td class="address"><?php echo $item->LandsProvinces['province_name']?></td>
							<td class="date-posted"><?php echo date('d/m/Y', strtotime($item['postdate']))?></td>
						</tr>
						<?php endforeach?>
					<?php else:?>
						<tr><td>Danh mục này chưa có bản tin</td></tr>
					<?php endif?>
				</table>
				<?php $this->widget('CLinkPager', array('pages' => $items['pages'], 'header'=>'', 'lastPageLabel'=>Yii::t('user', 'last'), 'nextPageLabel'=>Yii::t('user', 'next'), 'firstPageLabel'=>Yii::t('user', 'first'), 'prevPageLabel'=>Yii::t('user', 'prev'), 'htmlOptions'=>array('class'=>'paging')))?>
			</div>
		<?php $i++; endforeach?>
		</div>
	</div>
</div>