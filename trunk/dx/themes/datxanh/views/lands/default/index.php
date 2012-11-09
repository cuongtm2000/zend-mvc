<?php $this->breadcrumbs = array($this->lang[$this->module->id]); ?>
<?php $this->pageTitle = $this->lang[$this->module->id]; $this->setDescription() ?>
<?php
    Yii::app()->clientScript->registerCssFile(Yii::app()->theme->baseUrl.'/css/tab.css');
    Yii::app()->clientScript->registerScriptFile(Yii::app()->theme->baseUrl.'/js/tab-sub-right.js');
?>

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
					<?php $items = Lands::model()->listItemByType($value['type_id']); foreach($items as $item):?>
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
				</table>
			</div>
		<?php $i++; endforeach?>
		</div>
	</div>
</div>