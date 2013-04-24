<?php 
    $this->breadcrumbs = array($this->lang[$this->module->id] => array($this->setUrlModule()), 'Tìm kiếm'); 
    $this->pageTitle = 'Tìm kiếm - ' . $this->lang[$this->module->id]; ?>


<?php if ($data): ?>
<h2 class="title-box"><span>Sản phẩm danh muc này</span></h2>
<table class="table-transaction table-transaction-other">
    <?php foreach ($data['models'] as $item): ?>
   <tr>
		<td class="img-other">
			<?php echo CHtml::link(($item['pic_thumb']) ? '<img src="' . Yii::app()->baseUrl . Yii::getPathOfAlias('filePathUpload') . '/image/lands/' . $item['pic_thumb'] . '" alt="' . $item->LandsLanguage[Yii::app()->language]['title'] . '" />' : '<img src="' . Yii::app()->theme->baseUrl . '/images/no-product.jpg" alt="' . $item->LandsLanguage[Yii::app()->language]['title'] . '" />', array($this->setLangUrl() . '/san-giao-dich/' . $item->LandsCat->LandsCatLanguage[Yii::app()->language]['tag'] . '/' . $item->LandsLanguage[Yii::app()->language]['tag'] . '.html'), array('title' => $item->LandsLanguage[Yii::app()->language]['title'])); ?>
		</td>
       <td class="link-post">
			<?php echo CHtml::link($item->LandsLanguage[Yii::app()->language]['title'], array($this->setLangUrl() . '/san-giao-dich/' . $item->LandsCat->LandsCatLanguage[Yii::app()->language]['tag'] . '/' . $item->LandsLanguage[Yii::app()->language]['tag'] . '.html'), array('title' => $item->LandsLanguage[Yii::app()->language]['title'])); ?>
	   </td>
		<td class="address"><?php echo $item->LandsProvinces['province_name']?></td>
        <td class="date-posted"><?php echo date('d/m/Y', strtotime($item['postdate']))?></td>
	</tr>
    <?php endforeach; ?>
</table>
    <?php $this->widget('CLinkPager', array('pages' => $data['pages'], 'header' => '', 'lastPageLabel' => Yii::t('user', 'last'), 'nextPageLabel' => Yii::t('user', 'next'), 'firstPageLabel' => Yii::t('user', 'first'), 'prevPageLabel' => Yii::t('user', 'prev'), 'htmlOptions' => array('class' => 'paging'))) ?>
<?php else: ?>
    Không có kết quả phù hợp với truy vấn này.
<?php endif ?>

