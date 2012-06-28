<?php if(isset($this->function['products_new']) && $this->function['products_new']):?>
    <div class="bg-footer-left">
        <h2 class="title-fter-left">Mua bán nhà đất</h2>
        <table class="table-product">
            <tbody>
                <?php foreach($this->function['products_new'] as $value): ?>
                <tr>
                    <td width="100">
                        <div class="frame-img-pro">
                            <a href="<?php echo Yii::app()->request->baseUrl.LANGURL ?>/<?php echo Yii::t('user', 'products.link')?>/<?php echo $value['ProductsCat']['tag'.LANG] ?>/<?php echo $value['tag'.LANG] ?>.html" title="<?php echo $value['title'.LANG] ?>">
                                <?php if($value['pic_thumb']):?>
                                    <img src="<?php echo Yii::app()->baseUrl.USERFILES ?>/products/<?php echo $value['pic_thumb'] ?>" alt="<?php echo $value['title'.LANG] ?>" />
                                <?php else:?>
                                    <img src="<?php echo Yii::app()->theme->baseUrl; ?>/images/no-images.jpg" alt="<?php echo $value['title'.LANG] ?>" />
                                <?php endif;?>
                            </a></div>
                    </td>
                    <td>
                        <h2 class="title-sale"><a href="<?php echo Yii::app()->request->baseUrl.LANGURL ?>/<?php echo Yii::t('user', 'products.link')?>/<?php echo $value['ProductsCat']['tag'.LANG] ?>/<?php echo $value['tag'.LANG] ?>.html" title="<?php echo $value['title'.LANG] ?>"><?php echo $value['title'.LANG] ?></a></h2>
                        <table class="bder-none">
                            <tr>
                                <td width="110">
                                    <p><span class="position">Vị trí:</span> Hẻm Nguyễn Tri Phương, Phường 5, Quận 5</p>
                                </td>
                                <td>
                                    <p><label class="long">Dài</label>: 5m</p>
                                    <p><label class="wide">Rộng</label>: 10m</p>
                                    <p><label class="direction">Hướng</label>: Đông Nam</p>
                                </td>
                                <td>
                                    <p class="price">Giá:<span> <?php echo (is_numeric($value['unit'])) ? '<strong>'.number_format($value['unit'], 0, '', '.').'</strong>' . ' VND' : (($value['unit']) ? $value['unit'] : $this->lang['contact']) ?></span></p>
                                    <p>Hiện trạng: <span>Đang được sử dụng</span></p>
                                </td>
                            </tr>
                            <tr>
                                <td colspan="3"><p class="date-posted">Đăng ngày: <?php echo date('d-m-Y', strtotime($value['postdate']))?>, Xem: <?php echo $value['hits']?></p></td>
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
    </div> <!--End footer left content-->
<?php endif; ?>