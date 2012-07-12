<?php if (isset($this->function['products_new']) && $this->function['products_new']): ?>
    <div class="bg-footer-left">
        <h1 class="title-right"><span>Mua bán nhà đất</span></h1>

        <table class="table-product">
            <tbody>
                <?php foreach ($this->function['products_new'] as $value): ?>
                    <tr>
                        <td width="100" align="center">
                            <div class="frame-img-pro"> <a href="<?php echo Yii::app()->baseUrl . LANGURL . '/' . Yii::t('user', 'products' . '.link') . '/' . $value->ProductsCat['tag' . LANG] ?>/<?php echo $value['tag' . LANG] ?>.html" title="<?php echo $value['title' . LANG] ?>">
                                    <?php if ($value['pic_thumb']): ?>
                                        <img src="<?php echo Yii::app()->baseUrl . '/public/userfiles/image/' . $value['dos_username'] . '/image/' ?>/products/<?php echo $value['pic_thumb'] ?>" alt="<?php echo $value['title' . LANG] ?>" />
                                    <?php else : ?>
                                        <img src="<?php echo Yii::app()->theme->baseUrl; ?>/images/logo.png" alt="no product" />
                                    <?php endif; ?>
                                </a></div>
                        </td>
                        <td>
                            <h2 class="title-sale"><a href="<?php echo Yii::app()->baseUrl . LANGURL . '/' . Yii::t('user', 'products' . '.link') . '/' . $value->ProductsCat['tag' . LANG] ?>/<?php echo $value['tag' . LANG] ?>.html" title="<?php echo $value['title' . LANG] ?>"><?php echo $value['title' . LANG] ?></a></h2>
                            <table class="bder-none">
                                <tr>
                                    <td width="90">
                                        <p><span class="position">Vị trí:</span> <?php echo $value['address']; ?></p>
                                         <p class="price">Khuôn viên: <?php echo $value->productsFeature['area'] ?></p>
                                    </td>
                                    <td  width="80">
                                        <p><label class="wide">Pháp lý:</label> <?php echo $value->productsFeature['legal']; ?></p>
                                        <p><label class="direction">Hướng:</label> <?php echo $value->productsFeature['direction']; ?></p>
                                    </td>
                                    <td  width="110">
                                        <p class="price">Giá: <span> <?php echo number_format($value['unit'],0,',','.').' ' . $value['unit_currency'] . '/' . $value['unit_unit']; ?></span></p>
                                        <p>Diện tích sử dụng: <span><?php echo $value->productsFeature['area_used']; ?>m<sup>2</sup></span></p>
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
        <div class="clear"></div>
    </div>	
<?php endif; ?>