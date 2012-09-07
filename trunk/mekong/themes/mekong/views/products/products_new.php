<?php if($products_new):?>
<div class="main-all-product">
    <!--<h2 class="title-right"><?php echo $this->lang['products'] . ' ' . $this->lang['new']?></h2>-->
    <ul class="all-product">
        <?php foreach($products_new as $item): ?>
            <li class="product">
				<div class="product-img">
					<?php echo CHtml::link(($item['pic_thumb']) ? '<img src="'.Yii::app()->baseUrl.Yii::getPathOfAlias('filePathUpload').'/image/products/'.$item['pic_thumb'].'" alt="'.$item->ProductsLanguage[Yii::app()->language]['title'].'" />' : '<img src="'.Yii::app()->theme->baseUrl.'/images/no-products.jpg" alt="'.$item->ProductsLanguage[Yii::app()->language]['title'].'" />', array($this->setUrlModule('products').'/'.$item->ProductsCat->ProductsCatLanguage[Yii::app()->language]['tag'].'/'.$item->ProductsLanguage[Yii::app()->language]['tag'].'.html'), array('title'=>$item->ProductsLanguage[Yii::app()->language]['title'])); ?>
				</div>
				<div class="line-bottom-product"></div>
				<h2 class="title-product">
					<?php echo CHtml::link($item->ProductsLanguage[Yii::app()->language]['title'], array($this->setUrlModule('products').'/'.$item->ProductsCat->ProductsCatLanguage[Yii::app()->language]['tag'].'/'.$item->ProductsLanguage[Yii::app()->language]['tag'].'.html'), array('title'=>$item->ProductsLanguage[Yii::app()->language]['title'])); ?>
				</h2>
				<!--<?php echo ($item['unit']) ? '<p class="price">'.$item['unit'].'</p>' : ''?>-->
            </li>
        <?php endforeach; ?>
    </ul> <div class="clear"></div>
</div>
<?php endif;?>