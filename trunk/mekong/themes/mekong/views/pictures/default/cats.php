<?php $this->breadcrumbs = array($this->lang[$this->module->id] => array($this->setUrlModule()), $info_cat['cat_title']); ?>
<?php $this->pageTitle = $info_cat['cat_title'] . ' - ' . $this->lang[$this->module->id]; $this->setDescription($info_cat['description'])?>
<?php if($sub_cats):?>
<div class="main-all-product">
    <h2 class="title-right"><?php echo $info_cat['cat_title']?></h2>
    <ul class="all-product">
        <?php foreach($sub_cats as $value): ?>
            <li class="product">
				<div class="product-img">
					<?php echo CHtml::link(($value['pic_thumb']) ? '<img src="'.Yii::app()->baseUrl.Yii::getPathOfAlias('filePathUpload').'/image/picturesCat/'.$value['pic_thumb'].'" alt="'.$value->PicturesCatLanguage[Yii::app()->language]['cat_title'].'" />' : '<img src="'.Yii::app()->theme->baseUrl.'/images/no-pictures-cat.jpg" alt="'.$value->PicturesCatLanguage[Yii::app()->language]['cat_title'].'" />', array($this->setLangUrl().'/hinh-anh/'.$value->PicturesCatLanguage[Yii::app()->language]['tag']), array('title'=>$value->PicturesCatLanguage[Yii::app()->language]['cat_title'])); ?>
				</div>
				<div class="line-bottom-product"></div>
				<h3 class="title-product">
					<?php echo CHtml::link($value->PicturesCatLanguage[Yii::app()->language]['cat_title'], array($this->setLangUrl().'/san-pham/'.$value->PicturesCatLanguage[Yii::app()->language]['tag']), array('title'=>$value->PicturesCatLanguage[Yii::app()->language]['cat_title'])); ?>
				</h3>
            </li>
        <?php endforeach; ?>
    </ul><!--End All pictures--> <div class="clear"></div>
</div>
<?php endif?>

<div class="main-all-product">
    <h2 class="title-right"><?php echo $this->lang[$this->module->id] . ' ' . $info_cat['cat_title']?></h2>
    <?php if($items['models']):?>
    <ul class="all-product">
        <?php foreach($items['models'] as $item): ?>
        <li class="product gallery">
			<div class="product-img">
				<?php echo CHtml::link(($item['pic_thumb']) ? '<img src="'.Yii::app()->baseUrl.Yii::getPathOfAlias('filePathUpload').'/image/pictures/'.$item['pic_thumb'].'" alt="'.$item->PicturesLanguage[Yii::app()->language]['title'].'" />' : '<img src="'.Yii::app()->theme->baseUrl.'/images/no-pictures-cat.jpg" alt="'.$item->PicturesLanguage[Yii::app()->language]['title'].'" />', Yii::app()->baseUrl.Yii::getPathOfAlias('filePathUpload').'/image/pictures/'.$item['pic_full'], array('rel' => 'photo','title' => $item->PicturesLanguage[Yii::app()->language]['title'])); ?>
			</div>
			<div class="line-bottom-product"></div>
			<h3 class="title-product">
				<?php echo $item->PicturesLanguage[Yii::app()->language]['title'] ?>
				<!--<?php echo CHtml::link($item->PicturesLanguage[Yii::app()->language]['title'], Yii::app()->baseUrl.Yii::getPathOfAlias('filePathUpload').'/image/pictures/'.$item['pic_full']); ?>-->
			</h3>
        </li>
        <?php endforeach; ?>
    </ul>
	<link rel="stylesheet" type="text/css" href="<?php echo Yii::app()->theme->baseUrl; ?>/css/jquery.lightbox-0.5.css"  />
	<script type="text/javascript" src="<?php echo Yii::app()->theme->baseUrl; ?>/js/jquery.lightbox-0.5.js"></script>
	<script type="text/javascript">
	jQuery(function() {
		jQuery(".gallery a[rel^='photo']").lightBox({
			imageLoading:			'<?php echo Yii::app()->theme->baseUrl; ?>/images/lightbox-ico-loading.gif',		// (string) Path and the name of the loading icon
			imageBtnPrev:			'<?php echo Yii::app()->theme->baseUrl; ?>/images/lightbox-btn-prev.gif',			// (string) Path and the name of the prev button image
			imageBtnNext:			'<?php echo Yii::app()->theme->baseUrl; ?>/images/lightbox-btn-next.gif',			// (string) Path and the name of the next button image
			imageBtnClose:			'<?php echo Yii::app()->theme->baseUrl; ?>/images/lightbox-btn-close.gif',		// (string) Path and the name of the close btn
			imageBlank:				'<?php echo Yii::app()->theme->baseUrl; ?>/images/lightbox-blank.gif',	
		});
	});
	</script>
    <?php $this->widget('CLinkPager', array('pages' => $items['pages'], 'header'=>'', 'lastPageLabel'=>Yii::t('user', 'last'), 'nextPageLabel'=>Yii::t('user', 'next'), 'firstPageLabel'=>Yii::t('user', 'first'), 'prevPageLabel'=>Yii::t('user', 'prev'), 'htmlOptions'=>array('class'=>'paging')))?>
    <?php else:?>
        <?php echo $this->lang['no_record']?>
    <?php endif?>
    <div class="clear"></div>
</div>