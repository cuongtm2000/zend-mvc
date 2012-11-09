<?php
Yii::app()->clientScript->registerCssFile(Yii::app()->theme->baseUrl . '/css/product.scroll.css');
Yii::app()->clientScript->registerCssFile(Yii::app()->theme->baseUrl . '/css/product.fancybox.css');
Yii::app()->clientScript->registerScriptFile(Yii::app()->theme->baseUrl . '/js/products.js');
?>
<h2 class="title-info-land"><span><?php echo $item->LandsLanguage[Yii::app()->language]['title'] ?></span></h2>
<div class="main-land-info">
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
        <div>
            <?php echo $item->LandsLanguage[Yii::app()->language]['preview'] ?>
            <p class="price-info"><strong>Giá: <span><?php echo $item['price'] ?></span></strong></p>
            <p class="view">Số lần xem: <span><?php echo $item['hits']?></span></p>
            <h3 class="title-contact"><img src="<?php echo Yii::app()->theme->baseUrl; ?>/images/contact.jpg" alt="contact" />THÔNG TIN LIÊN HỆ</h3>
            <p class="contact-info">Tên: <?php echo $item['contact_name']?></p>
            <p class="contact-info">Điện thoại: <?php echo $item['contact_tel']?></p>
        </div> <div class="clear"></div>
    </div>
    <?php endif; ?>
    <h4 class="title-info">Mô tả chi tiết</h4>
    <div class="content-info"><?php echo $item->LandsLanguage[Yii::app()->language]['content'] ?></div>
</div> <!--frame-pro-info-->



