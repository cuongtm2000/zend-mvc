<?php $this->breadcrumbs = array($this->lang[$this->module->id] => Yii::app()->request->baseUrl . LANGURL . '/' . Yii::t('user', $this->module->id . '.link'), $info_cat['cat_title' . LANG]); ?>
<?php $this->pageTitle = $info_cat['cat_title' . LANG] . ' - ' . $this->lang[$this->module->id];
$this->description = $info_cat['description' . LANG]; ?>

<!-- for cat -->
<?php if ($list_sub_cats): ?>
    <h1 class="title-right"><span><?php echo $info_cat['cat_title' . LANG] ?></span></h1>
    <ul class="all-product">
    <?php foreach ($list_sub_cats as $value): ?>
            <li class="product">
                <div class="product-img">
                    <a href="<?php echo Yii::app()->request->baseUrl . LANGURL ?>/<?php echo Yii::t('user', $this->module->id . '.link') ?>/<?php echo $value['tag' . LANG] ?>" title="<?php echo $value['cat_title' . LANG] ?>">
                        <?php if ($value['pic_full']): ?>
                            <img src="<?php echo Yii::app()->baseUrl .'/public/userfiles/image/' . $value['dos_username'] . '/image/'?>/productsCat/<?php echo $value['pic_full'] ?>" alt="<?php echo $value['cat_title' . LANG] ?>" />
                        <?php else : ?>
                            <img src="<?php echo Yii::app()->theme->baseUrl; ?>/images/no-product.jpg" alt="" />
        <?php endif; ?>
                    </a>
                </div>
                <h2 class="title-pro"><a href="<?php echo Yii::app()->request->baseUrl . LANGURL ?>/<?php echo Yii::t('user', $this->module->id . '.link') ?>/<?php echo $value['tag' . LANG] ?>" title="<?php echo $value['cat_title' . LANG] ?>"><?php echo $value['cat_title' . LANG] ?></a></h2>
            </li>
    <?php endforeach; ?>
    </ul>
    <div class="clear"></div>
<?php endif; ?>

<?php if ($list_items['models']): ?>
    <div class="bg-footer-left">
        <h1 class="title-right"><span><?php echo $info_cat['cat_title' . LANG] ?></span></h1>
        <table class="table-product">
            <tbody>
    <?php foreach ($list_items['models'] as $value): ?>
                    <tr>
                        <td width="100" align="center">
                            <div class="frame-img-pro"> 
                                <a href="<?php echo Yii::app()->request->baseUrl . LANGURL . '/' . Yii::t('user', $this->module->id . '.link') . '/' . $info_cat['tag' . LANG] ?>/<?php echo $value['tag' . LANG] ?>.html" title="<?php echo $value['title' . LANG] ?>">
                                    <?php if ($value['pic_thumb']): ?>
                                        <img src="<?php echo Yii::app()->baseUrl .'/public/userfiles/image/' . $value['dos_username'] . '/image/'?>/products/<?php echo $value['pic_thumb'] ?>" alt="<?php echo $value['title' . LANG] ?>" />
                                    <?php else : ?>
                                        <img src="<?php echo Yii::app()->theme->baseUrl; ?>/images/logo.png" alt="no product" />
        <?php endif; ?>
                                </a>
                            </div>
                        </td>
                        <td>
                            <h2 class="title-sale"><a href="<?php echo Yii::app()->request->baseUrl . LANGURL . '/' . Yii::t('user', $this->module->id . '.link') . '/' . $info_cat['tag' . LANG] ?>/<?php echo $value['tag' . LANG] ?>.html" title="<?php echo $value['title' . LANG] ?>"><?php echo $value['title' . LANG] ?></a></h2>
                            <table class="bder-none">
                                <tr>
                                    <td width="90">
                                        <p><span class="position">Vị trí:</span> <?php echo $value['address'];?></p>
                                         <p class="price">Khuôn viên: <?php echo $value->productsFeature['area'] ?></p>
                                    </td>
                                    <td width="70">
                                        <p><label class="position">Pháp lý:</label> <?php echo $value->productsFeature['legal'];?></p>
                                        <p><label class="position">Hướng:</label> <?php echo $value->productsFeature['direction'];?></p>
                                    </td>
                                    <td width="120">
                                        <p class="price">Giá: <span><?php echo number_format($value['unit'],0,',','.').' ' . $value['unit_currency'] . '/' . $value['unit_unit']; ?></span></p>
                                        <p>Diện tích sử dụng: <span><?php echo $value->productsFeature['area_used'];?>m<sup>2</sup></span></p>
                                    </td>
                                </tr>
                                <tr>
                                    <td colspan="3"><p class="date-posted">Đăng ngày: <?php echo date('d-m-Y', strtotime($value['postdate'])) ?>, Xem: <?php echo $value['hits'] ?></p></td>
                                </tr>
                            </table>
                        </td>
                        <td align="center">
                            <h3 class="title-footer-right">Hội viên</h3>
                            <img src="<?php echo Yii::app()->theme->baseUrl; ?>/images/hoivien.jpg" alt="Hoi vien" />
                            <p class="price">ĐT liên hệ: <?php echo $value['contact_mobile'] ?></p>
                        </td>
                    </tr>
    <?php endforeach; ?>
            </tbody>
        </table> <!--End footer left-->
    <?php $this->widget('CLinkPager', array('pages' => $list_items['pages'], 'header' => '', 'lastPageLabel' => Yii::t('user', 'last'), 'nextPageLabel' => Yii::t('user', 'next'), 'firstPageLabel' => Yii::t('user', 'first'), 'prevPageLabel' => Yii::t('user', 'prev'), 'htmlOptions' => array('class' => 'paging'))) ?>
        <div class="clear"></div>
    </div>
<?php else: ?>
    <div class="bg-footer-left"> <?php echo $this->lang['no_record'] ?></div>
<?php endif; ?>