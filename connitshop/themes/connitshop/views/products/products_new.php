<?php
Yii::app()->clientScript->registerCssFile(Yii::app()->theme->baseUrl . '/css/skin.css');

Yii::app()->clientScript->registerScriptFile(Yii::app()->theme->baseUrl . '/js/jquery.jcarousel.js');
Yii::app()->clientScript->registerScriptFile(Yii::app()->theme->baseUrl . '/js/adv-config.js');
?>
<?php if($products_new):?>
    <div class="main-produt-new">
    <h2 class="title-box"><span><?php echo $this->lang['products'] . ' ' . $this->lang['new']?></span> <img src="<?php echo Yii::app()->theme->baseUrl; ?>/images/new.png" alt="new" /></h2>
		<ul id="mycarousel" class="list-item-index-new jcarousel-skin-tango">
			<?php foreach($products_new as $item): ?>
				<li>
                    <div class="product-img">
                        <?php echo CHtml::link(($item['pic_thumb']) ? '<img src="'.Yii::app()->baseUrl.Yii::getPathOfAlias('filePathUpload').'/image/products/'.$item['pic_thumb'].'" alt="'.$item->ProductsLanguage[Yii::app()->language]['title'].'" />' : '<img src="'.Yii::app()->theme->baseUrl.'/images/no-products-cat.jpg" alt="'.$item->ProductsLanguage[Yii::app()->language]['title'].'" />', array($this->setLangUrl().'/san-pham/'.$item->ProductsCat->ProductsCatLanguage[Yii::app()->language]['tag'].'/'.$item->ProductsLanguage[Yii::app()->language]['tag'].'.html'), array('title'=>$item->ProductsLanguage[Yii::app()->language]['title'])); ?>
                    </div>
					<h4 class="title-product">
						<?php echo CHtml::link($item->ProductsLanguage[Yii::app()->language]['title'], array($this->setUrlModule('products').'/'.$item->ProductsCat->ProductsCatLanguage[Yii::app()->language]['tag'].'/'.$item->ProductsLanguage[Yii::app()->language]['tag'].'.html'), array('title'=>$item->ProductsLanguage[Yii::app()->language]['title'])); ?>
					</h4>
					<?php echo ($item['unit']) ? '<p class="price">'.$item['unit'].'</p>' : ''?>
				</li>
			<?php endforeach; ?>
		</ul> <div class="clear"></div>
	</div>
    <script type="text/javascript">
		var column =  '<?php echo Config::getValue('products_column_index')?>';
        var width = $('.list-item-index-new').innerWidth();
        var item_width = ((width/column)-28);
        var item_height = '<?php echo Config::getValue('products_height_thumb')?>';
        $('.list-item-index-new li,.jcarousel-skin-tango .jcarousel-item').width(item_width);
        $('.list-item-index-new li .product-img').width(item_width).height(item_height);
        //$('.list-item-index li:nth-child('+column+'n)').addClass('last-item-index');
        
        /*var item_height = '<?php echo Config::getValue('products_height_thumb')?>';
        $('.list-item-index li .product-img').height(item_height);
        $(".list-item-index li:nth-child(5n)").addClass("last-item-index");*/
    </script>
<?php endif;?>