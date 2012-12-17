<?php
Yii::app()->clientScript->registerCssFile(Yii::app()->theme->baseUrl . '/css/scroll.css');
Yii::app()->clientScript->registerCssFile(Yii::app()->theme->baseUrl . '/css/jquery.fancybox.css');

Yii::app()->clientScript->registerScriptFile(Yii::app()->theme->baseUrl . '/js/jcarousellite_1.0.1.js');
Yii::app()->clientScript->registerScriptFile(Yii::app()->theme->baseUrl . '/js/scroller.js');
Yii::app()->clientScript->registerScriptFile(Yii::app()->theme->baseUrl . '/js/jquery.fancybox.js');
Yii::app()->clientScript->registerScriptFile(Yii::app()->theme->baseUrl . '/js/jquery.scroll-1.4.2-min.js');
Yii::app()->clientScript->registerScriptFile(Yii::app()->theme->baseUrl . '/js/jquery.serialScroll-1.2.2-min.js');
Yii::app()->clientScript->registerScriptFile(Yii::app()->theme->baseUrl . '/js/product.js');
?>
<h2 class="title-right"><span><?php echo $item->ProductsLanguage[Yii::app()->language]['title']?></span></h2>
<div class="frame-pro-info">
    <?php if($item['pic_full']): ?>
    <div class="row-info">
        <div id="pb-right-column">
            <!-- product img-->
            <div id="image-block">
                <img id="bigpic" src="<?php echo Yii::app()->baseUrl.Yii::getPathOfAlias('filePathUpload') ?>/image/<?php echo $this->module->id?>/<?php echo $item['pic_full'] ?>" title="<?php echo $item->ProductsLanguage[Yii::app()->language]['title'] ?>" alt="<?php echo $item->ProductsLanguage[Yii::app()->language]['title']  ?>" />
            </div>
            <!-- thumbnails -->
            <div id="views_block" class="prod_detail">
                <!--Slide show Jquery Lightbox-->
                <div class="big_thumb">
                    <!--Slide Prev-->
                    <span class="prevsmall"><img src="<?php echo Yii::app()->theme->baseUrl; ?>/images/prev.gif" alt="" /></span>
                    <div class="thumbs anyClass" id="paginate-slider2">
                        <ul id="thumbs_list">
                            <li><a href="<?php echo Yii::app()->baseUrl.Yii::getPathOfAlias('filePathUpload') ?>/image/<?php echo $this->module->id?>/<?php echo $item['pic_full'] ?>" rel="other-views" class="thickbox shown" title="<?php echo $item->ProductsLanguage[Yii::app()->language]['title'] ?>" ><img src="<?php echo Yii::app()->baseUrl.Yii::getPathOfAlias('filePathUpload') ?>/image/<?php echo $this->module->id?>/<?php echo $item['pic_full'] ?>" alt="<?php echo $item->ProductsLanguage[Yii::app()->language]['title'] ?>" /></a></li>
                            <?php if($item['pic_desc']): ?>
                            <?php $values = explode('|', $item['pic_desc']); $i = 1; foreach($values as $value): ?>
                                <li><a href="<?php echo Yii::app()->baseUrl.Yii::getPathOfAlias('filePathUpload') ?>/image/<?php echo $this->module->id?>/<?php echo $value ?>" rel="other-views" class="thickbox" title="<?php echo $item->ProductsLanguage[Yii::app()->language]['title'] ?>">
                                    <img src="<?php echo Yii::app()->baseUrl.Yii::getPathOfAlias('filePathUpload') ?>/image/<?php echo $this->module->id?>/<?php echo $value ?>" alt="" /></a></li>
                                <?php $i++; endforeach; ?>
                            <?php endif; ?>
                        </ul>
                    </div>
                    <span class="nextsmall"><img src="<?php echo Yii::app()->theme->baseUrl; ?>/images/next.gif" alt="" /></span>
                    <!--Slide Next-->
                </div><!--END Slide show Jquery Lightbox-->
            </div>
        </div>
        <div class="right-info">
            <p class="price-info"><strong>Giá: <span><?php echo $item['unit']?></span></strong></p>
            <h4 class="title-info"><span>Mô tả sơ lược</span></h4>
            <?php echo $item->ProductsLanguage[Yii::app()->language]['preview']?>
            <p class="bton-cart"><?php echo CHtml::link($this->lang['add_cart'], Yii::app()->baseUrl.$this->setUrlModule('products').'/dat-hang/'.$item->ProductsLanguage[Yii::app()->language]['tag'], array('class' => 'button-order', 'title' => $this->lang['add_cart']))?></p>
        </div> <div class="clear"></div>
    </div>
    <?php endif; ?>
    <h4 class="title-info"><span>Thông tin chi tiết</span></h4>
    <?php echo $item->ProductsLanguage[Yii::app()->language]['content']?>
    <p class="black"><a href="javascript: history.go(-1)" title="Trở lại" >Trở lại</a></p>
</div> <!--frame-pro-info-->

<?php if($other_items):?>
	<h3 class="title-right"><span>Sản phẩm khác</span></h3>
	<ul class="list-item">
		<?php foreach($other_items as $value):?>
		<li>
            <div class="product-img">
                <?php echo CHtml::link(($value['pic_thumb']) ? '<img src="'.Yii::app()->baseUrl.Yii::getPathOfAlias('filePathUpload').'/image/products/'.$value['pic_thumb'].'" alt="'.$value->ProductsLanguage[Yii::app()->language]['title'].'" />' : '<img src="'.Yii::app()->theme->baseUrl.'/images/no-products-cat.jpg" alt="'.$value->ProductsLanguage[Yii::app()->language]['title'].'" />', array($this->setLangUrl().'/san-pham/'.$value->ProductsCat->ProductsCatLanguage[Yii::app()->language]['tag'].'/'.$value->ProductsLanguage[Yii::app()->language]['tag'].'.html'), array('title'=>$value->ProductsLanguage[Yii::app()->language]['title'])); ?>
            </div>
            <h3 class="title-product">
                <?php echo CHtml::link($value->ProductsLanguage[Yii::app()->language]['title'], array($this->setLangUrl().'/san-pham/'.$value->ProductsCat->ProductsCatLanguage[Yii::app()->language]['tag'].'/'.$item->ProductsLanguage[Yii::app()->language]['tag'].'.html'), array('title'=>$value->ProductsLanguage[Yii::app()->language]['title'])); ?>
            </h3>
		</li>
		<?php endforeach?>
	</ul> <div class="clear"></div>
    <script type="text/javascript">
        var column =  '<?php echo Config::getValue('products_column')?>';
        var width = $('.list-item').innerWidth();
        var item_width = ((width/column)-22.5);
        var item_height = '<?php echo Config::getValue('products_height_thumb')?>';
        $('.list-item li').width(item_width);
        $('.list-item li .product-img').width(item_width).height(item_height);
        $('.list-item li:nth-child('+column+'n)').addClass('last-item');
    </script>
<?php endif;?>
