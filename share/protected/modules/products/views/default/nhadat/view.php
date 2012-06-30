<?php
$this->breadcrumbs = array(
    $this->lang[$this->module->id] => Yii::app()->request->baseUrl . LANGURL . '/' . Yii::t('user', $this->module->id . '.link'),
    $item[ucfirst($this->module->id) . 'Cat']['cat_title' . LANG] => '../' . $item[ucfirst($this->module->id) . 'Cat']['tag' . LANG], $item['title' . LANG]
);
$this->pageTitle = $item['title' . LANG] . ' - ' . $item[ucfirst($this->module->id) . 'Cat']['cat_title' . LANG] . ' - ' . $this->lang[$this->module->id];
$this->description = $item['description' . LANG];
?>




<h2 class="title-right"><span><?php echo $item['title' . LANG] ?></span></h2>
<div class="frame-pro-info">
    <?php if ($item['pic_full']): ?>
        <div class="row-info">
            <div id="pb-right-column">
                <!-- product img-->
                <div id="image-block">
                    <img id="bigpic" src="<?php echo Yii::app()->baseUrl . USERFILES ?>/<?php echo $this->module->id ?>/<?php echo $item['pic_full'] ?>" title="<?php echo $item['title' . LANG] ?>" alt="<?php echo $item['title' . LANG] ?>" />
                </div>
                <!-- thumbnails -->
                <div id="views_block" class="prod_detail">
                    <!--Slide show Jquery Lightbox-->
                    <div class="big_thumb">
                        <!--Slide Prev-->
                        <span class="prevsmall"><img src="<?php echo Yii::app()->theme->baseUrl; ?>/images/prev.gif" alt="" /></span>
                        <div class="thumbs anyClass" id="paginate-slider2">
                            <ul id="thumbs_list">
                                <li><a href="<?php echo Yii::app()->baseUrl . USERFILES ?>/<?php echo $this->module->id ?>/<?php echo $item['pic_full'] ?>" rel="other-views" class="thickbox shown" title="<?php echo $item['title' . LANG] ?>"><img src="<?php echo Yii::app()->baseUrl . USERFILES ?>/<?php echo $this->module->id ?>/<?php echo $item['pic_full'] ?>" alt="<?php echo $item['title' . LANG] ?>"  /></a></li>
                                <?php if ($item['pic_desc']): ?>
                                    <?php
                                    $values = explode('|', $item['pic_desc']);
                                    $i = 1;
                                    foreach ($values as $value):
                                        ?>
                                        <li><a href="<?php echo Yii::app()->baseUrl . USERFILES ?>/<?php echo $this->module->id ?>/<?php echo $value ?>" rel="other-views" class="thickbox" title="<?php echo $item['title' . LANG] . ' - ' . $this->lang['pic_desc'] . ' ' . $i ?>"><img src="<?php echo Yii::app()->baseUrl . USERFILES ?>/<?php echo $this->module->id ?>/<?php echo $value ?>" alt="<?php echo $item['title' . LANG] . ' - ' . $this->lang['pic_desc'] . ' ' . $i ?>" /></a></li>
                                        <?php
                                        $i++;
                                    endforeach;
                                    ?>
                                <?php endif; ?>
                            </ul>
                        </div>
                        <span class="nextsmall"><img src="<?php echo Yii::app()->theme->baseUrl; ?>/images/next.gif" alt="" /></span>
                        <!--Slide Next-->
                    </div><!--END Slide show Jquery Lightbox-->
                </div>
            </div>
            <div class="right-info">
                <p class="price">Mã số:  <?php echo $item['record_id'] ?> </p>
                <p class="price"><strong>Giá: <span><?php echo (is_numeric($item['unit'])) ? number_format($item['unit'], 0, '', '.') . ' ' . $item['unit_currency'] . '/' . $item['unit_unit'] : (($item['unit']) ? $item['unit'] : $this->lang['contact']) ?></span></strong></p>
                <p class="price">Địa chỉ:  <?php echo $item['address'] ?> </p>
                <p class="price">Quận/huyện:  <?php echo $item['dos_districts_district_id'] ?> </p>
                <p class="price">Tỉnh/thành phố: <?php echo $item['dos_provinces_province_id'] ?></p>
                <p>Tên: <?php echo $item['contact_name'] ?></p>
                <p>Địa chỉ: <?php echo $item['contact_add'] ?></p>
                <p>ĐTDĐ: <?php echo $item['contact_mobile'] ?></p>
                <p>ĐT bàn: <?php echo $item['contact_tel'] ?></p>
                <h4 class="title-info"><span><?php echo $this->lang['description'] . ' ' . strtolower($this->lang[$this->module->id]) ?></span></h4>
                <?php echo $item['preview' . LANG] ?>
            </div> <div class="clear"></div>
        </div>
    <?php endif; ?>

    <div>
        <h4>Thông tin:</h4>
        <div>
            <p>Diện tích khuôn viên <?php echo $item->productsFeature['area'] ?></p>
            <p>Diện tích xây dựng <?php echo $item->productsFeature['area_build'] ?></p>
            <p>Diện tích sử dụng <?php echo $item->productsFeature['area_used'] ?>m<sup>2</sup></p>
            <p>Tình trạng pháp lý <?php echo $item->productsFeature['legal'] ?></p>
            <p>Hướng <?php echo $item->productsFeature['direction'] ?></p>
            <p>Đường trước nhà <?php echo $item->productsFeature['road'] ?></p>
            <p>Số lầu <?php echo $item->productsFeature['num_floor'] ?></p>
            <p>Phòng tắm <?php echo $item->productsFeature['bathroom'] ?></p>
            <p>Phòng khách <?php echo $item->productsFeature['sittingrom'] ?></p>
            <p>Phòng ngủ <?php echo $item->productsFeature['bedroom'] ?></p>
            <p>Phòng khác <?php echo $item->productsFeature['other_room'] ?></p>
            
            
        </div>
    </div>
    
    <div>
        <h4>Tiện ích:</h4>
        <div style="float: left">
            <?php 
                $labels=  ProductsUtility::model()->attributeLabels();
       
                foreach ($labels as $key => $value) {
                    if( $item->productsUtility[$key]==1)
                        echo '<p>'.$value.'</p>';
                }

            ?>
            
            
        </div><div class="clear"></div>
    </div>


    <h4 class="title-info"><span><?php echo $this->lang['detail'] . ' ' . strtolower($this->lang[$this->module->id]) ?></span></h4>
    <?php echo $item['content' . LANG] ?>
</div> <!--End frame tent right-->
<div class="btom-main"></div>









<?php if ($item_other): ?>
    <h3 class="title-right"><span><?php echo $this->lang[$this->module->id] ?> <?php echo strtolower($this->lang['other']) ?></span></h3>
    <ul class="all-product">
        <?php foreach ($item_other as $value): ?>
            <li class="product">
                <div class="product-img">
                    <a href="<?php echo Yii::app()->request->baseUrl . LANGURL . '/' . Yii::t('user', $this->module->id . '.link') . '/' . $value[ucfirst($this->module->id) . 'Cat']['tag' . LANG] ?>/<?php echo $value['tag' . LANG] ?>.html" title="<?php echo $value['title' . LANG] ?>">
                        <?php if ($value['pic_thumb']): ?>
                            <img src="<?php echo Yii::app()->baseUrl . USERFILES ?>/<?php echo $this->module->id ?>/<?php echo $value['pic_thumb'] ?>" alt="<?php echo $value['title' . LANG] ?>" />
                        <?php else : ?>
                            <img src="<?php echo Yii::app()->theme->baseUrl; ?>/images/no-images.jpg" alt="<?php echo $value['title' . LANG] ?>" />
                        <?php endif ?>
                    </a>
                </div>
                <h2 class="title-pro"><a href="<?php echo Yii::app()->request->baseUrl . LANGURL . '/' . Yii::t('user', $this->module->id . '.link') . '/' . $value[ucfirst($this->module->id) . 'Cat']['tag' . LANG] ?>/<?php echo $value['tag' . LANG] ?>.html" title="<?php echo $value['title' . LANG] ?>"><?php echo $value['title' . LANG] ?></a></h2>
            </li>
        <?php endforeach ?>
    </ul>
<?php endif; ?>
<div class="btom-main"></div>
