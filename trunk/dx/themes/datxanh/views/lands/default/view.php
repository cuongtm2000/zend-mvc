
<?php var_dump($item); ?>









<div class="frame-panel">
    <h2 class="title-box"><span><?php echo $item->LandsLanguage[Yii::app()->language]['title'] ?></span></h2>
    <div class="frame-pro-info">
        <?php if ($item['pic_full']): ?>
            <div class="row-info">
                <div id="pb-right-column">
                    <!-- product img-->
                    <div id="image-block">
                        <img id="bigpic" src="<?php echo Yii::app()->baseUrl . Yii::getPathOfAlias('filePathUpload') ?>/image/<?php echo $this->module->id ?>/<?php echo $item['pic_full'] ?>" title="<?php echo $item->LandsLanguage[Yii::app()->language]['title'] ?>" alt="<?php echo $item->LandsLanguage[Yii::app()->language]['title'] ?>" />
                    </div>
                    <!-- thumbnails -->
                    <div id="views_block" class="prod_detail">
                        <!--Slide show Jquery Lightbox-->
                        <div class="big_thumb">
                            <!--Slide Prev-->
                            <span class="prevsmall"><img src="<?php echo Yii::app()->theme->baseUrl; ?>/images/prev.gif" alt="" /></span>
                            <div class="thumbs anyClass" id="paginate-slider2">
                                <ul id="thumbs_list">
                                    <li><a href="<?php echo Yii::app()->baseUrl . Yii::getPathOfAlias('filePathUpload') ?>/image/<?php echo $this->module->id ?>/<?php echo $item['pic_full'] ?>" rel="other-views" class="thickbox shown" title="<?php echo $item->LandsLanguage[Yii::app()->language]['title'] ?>" >
                                            <img src="<?php echo Yii::app()->baseUrl . Yii::getPathOfAlias('filePathUpload') ?>/image/<?php echo $this->module->id ?>/<?php echo $item['pic_full'] ?>" alt="<?php echo $item->LandsLanguage[Yii::app()->language]['title'] ?>" /></a></li>
                                    <?php if ($item['pic_desc']): ?>
                                        <?php $values = explode('|', $item['pic_desc']);
                                        $i = 1;
                                        foreach ($values as $value): ?>
                                            <li><a href="<?php echo Yii::app()->baseUrl . Yii::getPathOfAlias('filePathUpload') ?>/image/<?php echo $this->module->id ?>/<?php echo $value ?>" rel="other-views" class="thickbox" title="<?php echo $item->LandsLanguage[Yii::app()->language]['title'] ?>">
                                                    <img src="<?php echo Yii::app()->baseUrl . Yii::getPathOfAlias('filePathUpload') ?>/image/<?php echo $this->module->id ?>/<?php echo $value ?>" alt="" /></a></li>
            <?php $i++;
        endforeach; ?>
    <?php endif; ?>
                                </ul>
                            </div>
                            <span class="nextsmall"><img src="<?php echo Yii::app()->theme->baseUrl; ?>/images/next.gif" alt="" /></span>
                            <!--Slide Next-->
                        </div><!--END Slide show Jquery Lightbox-->
                    </div>
                </div>
                <div class="right-info">
                    <p class="price-info"><strong>Giá: <span><?php echo $item['unit'] ?></span></strong></p>
                    <h4 class="title-info"><span>Mô tả sơ lược</span></h4>
            <?php echo $item->LandsLanguage[Yii::app()->language]['preview'] ?>
                    <p class="bton-cart"><a href="" class="add-to-cart" title="Add to Cart"><span>Đặt hàng</span></a></p>
                </div> <div class="clear"></div>
            </div>
<?php endif; ?>
        <h4 class="title-info"><span>Thông tin chi tiết</span></h4>
<?php echo $item->LandsLanguage[Yii::app()->language]['content'] ?>
    </div> <!--frame-pro-info-->
    <p class="black"><a href="javascript: history.go(-1)" title="Trở lại" >Trở lại</a></p>	
</div>

        <?php if ($other_items): ?>
    <div class="frame-panel">
        <h3 class="title-right"><span>Sản phẩm khác</span></h3>
        <ul class="all-product">
                        <?php foreach ($other_items as $value): ?>
                <li class="product">
                    <div class="tent-product">
                        <div class="product-img">
                            <?php echo CHtml::link(($value['pic_thumb']) ? '<img src="' . Yii::app()->baseUrl . Yii::getPathOfAlias('filePathUpload') . '/image/Lands/' . $value['pic_thumb'] . '" alt="' . $value->ProductsLanguage[Yii::app()->language]['title'] . '" />' : '<img src="' . Yii::app()->theme->baseUrl . '/images/no-Lands-cat.jpg" alt="' . $value->LandsLanguage[Yii::app()->language]['title'] . '" />', array($this->setLangUrl() . '/san-pham/' . $value->ProductsCat->ProductsCatLanguage[Yii::app()->language]['tag'] . '/' . $value->LandsLanguage[Yii::app()->language]['tag'] . '.html'), array('title' => $value->LandsLanguage[Yii::app()->language]['title'])); ?>
                        </div>
                        <h3 class="title-pro">
                <?php echo CHtml::link($value->ProductsLanguage[Yii::app()->language]['title'], array($this->setLangUrl() . '/san-pham/' . $value->ProductsCat->ProductsCatLanguage[Yii::app()->language]['tag'] . '/' . $item->ProductsLanguage[Yii::app()->language]['tag'] . '.html'), array('title' => $value->ProductsLanguage[Yii::app()->language]['title'])); ?>
                        </h3>
                    </div>
                </li>
    <?php endforeach ?>
        </ul> <div class="clear"></div>
    </div>
<?php endif; ?>
