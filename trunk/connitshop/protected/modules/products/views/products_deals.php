<?php if($products_deals['models']):?>
<div class="main-produt-new">
<h3 class="title-box"><span><?php echo $this->lang['deal']?></span> <img src="<?php echo Yii::app()->theme->baseUrl; ?>/images/hot.gif" alt="hot" /></h3>
<ul id="item_deals" class="list-item-index-new item-deals jcarousel-skin-tango ">
<?php foreach($products_deals['models'] as $item): ?>
	<li>
		<div class="product-img">
			<?php echo CHtml::link(($item['pic_thumb']) ? '<img src="'.Yii::app()->baseUrl.Yii::getPathOfAlias('filePathUpload').'/image/products/'.$item['pic_thumb'].'" alt="'.$item->ProductsLanguage[Yii::app()->language]['title'].'" />' : '<img src="'.Yii::app()->theme->baseUrl.'/images/no-products-cat.jpg" alt="'.$item->ProductsLanguage[Yii::app()->language]['title'].'" />', array($this->setLangUrl().'/san-pham/'.$item->ProductsCat->ProductsCatLanguage[Yii::app()->language]['tag'].'/'.$item->ProductsLanguage[Yii::app()->language]['tag'].'.html'), array('title'=>$item->ProductsLanguage[Yii::app()->language]['title'])); ?>
		</div>
		<h4 class="title-deal">
			<?php echo CHtml::link($item->ProductsLanguage[Yii::app()->language]['title'], array($this->setUrlModule('products').'/'.$item->ProductsCat->ProductsCatLanguage[Yii::app()->language]['tag'].'/'.$item->ProductsLanguage[Yii::app()->language]['tag'].'.html'), array('title'=>$item->ProductsLanguage[Yii::app()->language]['title'])); ?>
		</h4>
		<div class="position-deal"><?php echo ($item['unit']) ? '<p class="price-deal">'.$item['unit'].'</p>' : ''?> <a class="view" href="<?php echo Yii::app()->baseUrl.$this->setUrlModule('products').'/'.$item->ProductsCat->ProductsCatLanguage[Yii::app()->language]['tag'].'/'.$item->ProductsLanguage[Yii::app()->language]['tag'].'.html'?>"><img src="<?php echo Yii::app()->theme->baseUrl; ?>/images/view_deal1.png" alt="view_deal1" /></a></div>
	</li>
<?php endforeach;?>
</ul> <div class="clear"></div>
</div>
<script type="text/javascript">
	var column =  '<?php echo Config::getValue('products_column_index')?>';
	var width = $('.list-item-index-new').innerWidth();
	var item_width = ((width/column)-28);
	var item_height = '<?php echo Config::getValue('products_height_thumb')?>';
	$('.list-item-index-new li,.jcarousel-skin-tango .jcarousel-item').width(item_width);
	$('.list-item-index-new li .product-img').width(item_width).height(item_height);
</script>
<?php endif;?>
