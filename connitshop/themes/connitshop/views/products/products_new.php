<?php if($products_new):?>
    <div class="main-produt-new">
    <h2 class="title-box-new"><span><?php echo $this->lang['products'] . ' ' . $this->lang['new']?></span> <img src="<?php echo Yii::app()->theme->baseUrl; ?>/images/new.png" alt="new" /></h2>
		<ul class="list-item-index">
			<?php foreach($products_new as $item): ?>
				<li>
                    <div class="product-img">
                        <?php echo CHtml::link(($item['pic_thumb']) ? '<img src="'.Yii::app()->baseUrl.Yii::getPathOfAlias('filePathUpload').'/image/products/'.$item['pic_thumb'].'" alt="'.$item->ProductsLanguage[Yii::app()->language]['title'].'" />' : '<img src="'.Yii::app()->theme->baseUrl.'/images/no-products-cat.jpg" alt="'.$item->ProductsLanguage[Yii::app()->language]['title'].'" />', array($this->setLangUrl().'/san-pham/'.$item->ProductsCat->ProductsCatLanguage[Yii::app()->language]['tag'].'/'.$item->ProductsLanguage[Yii::app()->language]['tag'].'.html'), array('title'=>$item->ProductsLanguage[Yii::app()->language]['title'])); ?>
                    </div>
					<h2 class="title-product">
						<?php echo CHtml::link($item->ProductsLanguage[Yii::app()->language]['title'], array($this->setUrlModule('products').'/'.$item->ProductsCat->ProductsCatLanguage[Yii::app()->language]['tag'].'/'.$item->ProductsLanguage[Yii::app()->language]['tag'].'.html'), array('title'=>$item->ProductsLanguage[Yii::app()->language]['title'])); ?>
					</h2>
					<?php echo ($item['unit']) ? '<p class="price">'.$item['unit'].'</p>' : ''?>
				</li>
			<?php endforeach; ?>
		</ul> <div class="clear"></div>
	</div>
    <script type="text/javascript">
        var column =  '<?php echo Config::getValue('products_column_index')?>';
        var width = $('.list-item-index').innerWidth();
        var item_width = ((width/column)-30.5);
        var item_height = '<?php echo Config::getValue('products_height_thumb')?>';
        $('.list-item-index li').width(item_width);
        $('.list-item-index li .product-img').width(item_width).height(item_height);
        $('.list-item-index li:nth-child('+column+'n)').addClass('last-item-index');
        
        /*var item_height = '<?php echo Config::getValue('products_height_thumb')?>';
        $('.list-item-index li .product-img').height(item_height);
        $(".list-item-index li:nth-child(5n)").addClass("last-item-index");*/
    </script>
<?php endif;?>