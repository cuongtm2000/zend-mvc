<?php $this->breadcrumbs = array($this->lang[$this->module->id] => Yii::app()->request->baseUrl . LANGURL . '/' . Yii::t('user', $this->module->id . '.link'), $info_cat['type_title' . LANG]); ?>
<?php $this->pageTitle = $info_cat['type_title'.LANG] . ' - ' . $this->lang[$this->module->id];?>

<h1 class="title-right"><span><?php echo $info_cat['type_title'.LANG] ?></span></h1>
<?php if($list_items['models']): ?>
    <ul class="all-product">
        <?php foreach($list_items['models'] as $value): ?>
            <li class="product">
				<div class="product-img">
					<a href="<?php echo Yii::app()->request->baseUrl . LANGURL . '/' . Yii::t('user', $this->module->id . '.link') . '/' . $info_cat['tag'.LANG] ?>/<?php echo $value['tag'.LANG] ?>.html" title="<?php echo $value['title'.LANG] ?>">
						<?php if($value['pic_thumb']): ?>
							<img src="<?php echo Yii::app()->baseUrl.USERFILES ?>/<?php echo $this->module->id?>/<?php echo $value['pic_thumb'] ?>" alt="<?php echo $value['title'.LANG] ?>" />
						<?php else :?>
							<img src="<?php echo Yii::app()->theme->baseUrl; ?>/images/no-product.jpg" alt="no product" />
						<?php endif; ?>
					</a>
				</div>
				<h2 class="title-pro"><a href="<?php echo Yii::app()->request->baseUrl . LANGURL . '/' . Yii::t('user', $this->module->id . '.link') . '/' . $info_cat['tag'.LANG] ?>/<?php echo $value['tag'.LANG] ?>.html" title="<?php echo $value['title' . LANG] ?>"><?php echo $value['title' . LANG] ?></a></h2>
				<p class="price">Giá : <?php echo (is_numeric($value['unit'])) ? '<strong>'.number_format($value['unit'], 0, '', '.').'</strong>' . ' VND' : (($value['unit']) ? $value['unit'] : '<strong>'.$this->lang['contact'].'</strong>') ?></p>
				<a href="<?php echo Yii::app()->request->baseUrl . LANGURL . '/' . Yii::t('user', $this->module->id . '.link') . '/' . $info_cat['tag'.LANG] ?>/<?php echo $value['tag'.LANG] ?>.html" title="<?php echo $value['title' . LANG] ?>"><img src="<?php echo Yii::app()->theme->baseUrl; ?>/images/icon-pro-detail.gif" alt="chitiet" /></a> <a href="<?php echo Yii::app()->baseUrl . LANGURL?>/<?php echo Yii::t('user', 'products.link')?>/<?php echo Yii::t('user', 'products.order.link')?>/<?php echo $value['tag'.LANG] ?>" title="<?php echo $this->lang['detail']?>: <?php echo $value['title' . LANG] ?>"><img src="<?php echo Yii::app()->theme->baseUrl; ?>/images/icon-pro-buy.gif" alt="mua" /></a>
		  </li>
        <?php endforeach; ?>
    </ul><!--End All products-->
	<div class="clear"></div>
		<?php $this->widget('CLinkPager', array('pages' => $list_items['pages'], 'header'=>'', 'lastPageLabel'=>Yii::t('user', 'last'), 'nextPageLabel'=>Yii::t('user', 'next'), 'firstPageLabel'=>Yii::t('user', 'first'), 'prevPageLabel'=>Yii::t('user', 'prev'), 'htmlOptions'=>array('class'=>'paging')))?>
		<div class="clear"></div>
	<div class="btom-main"></div>
<?php else: ?>
     <div class="frame-tent-right"> <?php echo $this->lang['no_record'] ?></div> <div class="btom-main"></div>
<?php endif; ?>