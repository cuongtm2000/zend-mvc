<?php $this->breadcrumbs = array($this->lang[$this->module->id] => Yii::app()->request->baseUrl . LANGURL . '/' . Yii::t('user', $this->module->id . '.link'), $info_cat['cat_title' . LANG]); ?>
<?php $this->pageTitle = $info_cat['cat_title'.LANG] . ' - ' . $this->lang[$this->module->id]; $this->description = $info_cat['description'.LANG];?>

<!-- for cat -->
<?php if($list_sub_cats): ?>
<h1 class="title-right"><span><?php echo $info_cat['cat_title'.LANG] ?></span></h1>
<ul class="all-product">
    <?php foreach($list_sub_cats as $value): ?>
        <li class="product">
                <div class="product-img"><a href="<?php echo Yii::app()->request->baseUrl.LANGURL ?>/<?php echo Yii::t('user', $this->module->id . '.link')?>/<?php echo $value['tag'.LANG] ?>" title="<?php echo $value['cat_title'.LANG] ?>">
					<?php if($value['pic_full']): ?>
						<img src="<?php echo Yii::app()->baseUrl.USERFILES ?>/<?php echo $this->module->id?>Cat/<?php echo $value['pic_full'] ?>" alt="<?php echo $value['cat_title'.LANG] ?>" />
					<?php else :?>
						<img src="<?php echo Yii::app()->theme->baseUrl; ?>/images/no-images.jpg" alt="<?php echo $value['cat_title'.LANG] ?>" />
            		<?php endif; ?>
				</a></div>
            <h2 class="title-pro"><a href="<?php echo Yii::app()->request->baseUrl.LANGURL ?>/<?php echo Yii::t('user', $this->module->id . '.link')?>/<?php echo $value['tag'.LANG] ?>" title="<?php echo $value['cat_title'.LANG] ?>"><strong><?php echo $value['cat_title'.LANG] ?></strong></a></h2>
        </li>
    <?php endforeach; ?>
</ul>
<?php endif; ?>

<?php if($list_items['models']): ?>
<h2 class="title-right"><span><?php echo $info_cat['cat_title'.LANG] ?></span></h2>
    <ul class="all-product">
        <?php foreach($list_items['models'] as $value): ?>
            <li class="product">
				<div class="product-img">
				<a rel="photo"  href="<?php echo Yii::app()->baseUrl.USERFILES ?>/<?php echo $this->module->id?>/<?php echo $value['pic_full'] ?>" title="<?php echo $value['title'.LANG] ?>">
					<?php if($value['pic_thumb']): ?>
						<img src="<?php echo Yii::app()->baseUrl.USERFILES ?>/<?php echo $this->module->id?>/<?php echo $value['pic_thumb'] ?>" alt="<?php echo $value['title'.LANG] ?>" />
					<?php else :?>
						<img src="<?php echo Yii::app()->theme->baseUrl; ?>/images/no-images.jpg" alt="no product" />
					<?php endif; ?>
				</a>
				</div>
				<h3 class="title-pro"><a href="" title="<?php echo $value['title' . LANG] ?>"><strong><?php echo $value['title' . LANG] ?></strong></a></h3>
            </li>
        <?php endforeach; ?>
    </ul><!--End All products-->
	<script type="text/javascript">
		jQuery(function() {
			jQuery('.product a[rel=photo]').lightBox({
				imageBtnPrev:'<?php echo Yii::app()->theme->baseUrl; ?>/images/lightbox-btn-prev.gif',
				imageBtnNext:'<?php echo Yii::app()->theme->baseUrl; ?>/images/lightbox-btn-next.gif',
				imageLoading:'<?php echo Yii::app()->theme->baseUrl; ?>/images/lightbox-ico-loading.gif',
				imageBtnClose:'<?php echo Yii::app()->theme->baseUrl; ?>/images/lightbox-btn-close.gif',
				imageBlank:'<?php echo Yii::app()->theme->baseUrl; ?>/images/lightbox-blank.gif'
			});
		});
	</script>
    <?php $this->widget('CLinkPager', array('pages' => $list_items['pages'], 'header'=>'', 'lastPageLabel'=>Yii::t('user', 'last'), 'nextPageLabel'=>Yii::t('user', 'next'), 'firstPageLabel'=>Yii::t('user', 'first'), 'prevPageLabel'=>Yii::t('user', 'prev'), 'htmlOptions'=>array('class'=>'paging')))?>
<?php else: ?>
    <?php if(!$list_sub_cats): ?>
        <div class="frame-tent-right"><?php echo $this->lang['no_record'] ?> </div>
    <?php endif; ?>
<?php endif; ?>



