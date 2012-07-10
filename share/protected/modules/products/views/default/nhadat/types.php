<?php $this->breadcrumbs = array($this->lang[$this->module->id] => Yii::app()->request->baseUrl . LANGURL . '/' . Yii::t('user', $this->module->id . '.link'), $info_cat['type_title' . LANG]); ?>
<?php $this->pageTitle = $info_cat['type_title' . LANG] . ' - ' . $this->lang[$this->module->id]; ?>

<div class="bg-footer-left">
    <h1 class="title-right"><span><?php echo $info_cat['type_title' . LANG] ?></span></h1>
    <?php if ($list_items['models']): ?>
        <table class="table-product">
            <tbody>
                <?php foreach ($list_items['models'] as $value): ?>
                    <tr>
                        <td width="100">
                            <div class="frame-img-pro"> <a href="<?php echo Yii::app()->baseUrl . LANGURL . '/' . Yii::t('user', $this->module->id . '.link') . '/' . $info_cat['tag' . LANG] ?>/<?php echo $value['tag' . LANG] ?>.html" title="<?php echo $value['title' . LANG] ?>">
                                    <?php if ($value['pic_thumb']): ?>
                                        <img src="<?php echo Yii::app()->baseUrl .'/public/userfiles/image/' . $value['dos_username'] . '/image/'?>/products/<?php echo $value['pic_thumb'] ?>" alt="<?php echo $value['title' . LANG] ?>" />
                                    <?php else : ?>
                                        <img src="<?php echo Yii::app()->theme->baseUrl; ?>/images/no-product.jpg" alt="no product" />
                                    <?php endif; ?>
                                </a></div>
                        </td>
                        <td>
                            <h2 class="title-sale"><a href="<?php echo Yii::app()->request->baseUrl . LANGURL . '/' . Yii::t('user', $this->module->id . '.link') . '/' .$info_cat['tag'.LANG]  ?>/<?php echo $value['tag' . LANG] ?>.html" title="<?php echo $value['title' . LANG] ?>"><?php echo $value['title' . LANG] ?></a></h2>
                            <table class="bder-none">
                                <tr>
                                    <td width="110">
                                        <p><span class="position">Vị trí:</span> <?php echo $value['address'];?></p>
                                    </td>
                                    <td width="50">
                                        <p><label class="wide">Pháp lý:</label> <?php echo $value->productsFeature['legal'];?></p>
                                        <p><label class="direction">Hướng:</label> <?php echo $value->productsFeature['direction'];?></p>
                                    </td>
                                    <td width="110">
                                        <p class="price">Giá:<span> <?php echo '<strong>' . number_format($value['unit'], 0, '', '.').' '. $value['unit_currency'] . '/' . $value['unit_unit']  . '</strong>'?></span></p>
                                        <p>Diện tích sử dụng: <span><?php echo $value->productsFeature['area_used'];?>m<sup>2</sup></span></p>
                                    </td>
                                </tr>
                                <tr>
                                    <td colspan="3"><p class="date-posted">Đăng ngày: <?php echo date('d-m-Y', strtotime($value['postdate'])) ?>, Xem: <?php echo $value['hits'] ?></p></td>
                                </tr>
                            </table>
                        </td>
                        <td>
                            <h3 class="title-footer-right">Hội viên</h3>
                            <img src="<?php echo Yii::app()->theme->baseUrl; ?>/images/hoivien.jpg" alt="Hoi vien" />
                        </td>
                    </tr>
                <?php endforeach; ?>
            </tbody>
        </table> <!--End footer left-->
        <?php $this->widget('CLinkPager', array('pages' => $list_items['pages'], 'header' => '', 'lastPageLabel' => Yii::t('user', 'last'), 'nextPageLabel' => Yii::t('user', 'next'), 'firstPageLabel' => Yii::t('user', 'first'), 'prevPageLabel' => Yii::t('user', 'prev'), 'htmlOptions' => array('class' => 'paging'))) ?>
        <div class="clear"></div>
    </div>	
<?php else: ?>
    <?php echo $this->lang['no_record'] ?>
<?php endif; ?>