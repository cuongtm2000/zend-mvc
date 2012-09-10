<?php $this->breadcrumbs = array($this->lang[$this->module->id] => Yii::app()->request->baseUrl . LANGURL . '/' . Yii::t('user', $this->module->id . '.link'), $info_cat['type_title' . LANG]); ?>
<?php $this->pageTitle = $info_cat['type_title' . LANG] . ' - ' . $this->lang[$this->module->id]; 
?>


<?php if ($list_items['models']): ?>
 <div class="bg-footer-left">
	<h1 class="title-right"><span><?php echo $info_cat['type_title' . LANG] ?></span></h1>
        <table class="table-product">
            <tbody>
                <?php foreach ($list_items['models'] as $value): $hot = ($value['hot']==1) ? ' <img src="'.Yii::app()->theme->baseUrl.'/images/hot.gif" alt="Hot" />' : ''; ?>
                    <tr>
                        <td width="100">
                            <div class="frame-img-pro"> <a href="<?php echo Yii::app()->baseUrl . LANGURL . '/' . Yii::t('user', $this->module->id . '.link') . '/' . $info_cat['tag' . LANG] ?>/<?php echo $value['tag' . LANG] ?>.html" title="<?php echo $value['title' . LANG] ?>">
                                    <?php if ($value['pic_thumb']): ?>
                                        <img src="<?php echo Yii::app()->baseUrl .'/public/userfiles/image/' . $value['dos_username'] . '/image/'?>/products/<?php echo $value['pic_thumb'] ?>" alt="<?php echo $value['title' . LANG] ?>" />
                                    <?php else : ?>
                                        <img src="<?php echo Yii::app()->theme->baseUrl; ?>/images/logo.png" alt="no product" />
                                    <?php endif; ?>
                                </a></div>
                        </td>
                        <td>
                            <h2 class="title-sale"><a href="<?php echo Yii::app()->request->baseUrl . LANGURL . '/' . Yii::t('user', $this->module->id . '.link') . '/' .$info_cat['tag'.LANG]  ?>/<?php echo $value['tag' . LANG] ?>.html" title="<?php echo $value['title' . LANG] ?>"><?php echo $value['title' . LANG].$hot ?></a></h2>
                            <table class="bder-none">
                                <tr>
                                    <td width="110">
                                        <p><span class="position">Vị trí:</span> <?php echo $value['address'];?></p>
                                        <p class="price">Khuôn viên: <?php echo $value->productsFeature['area'] ?></p>
                                    </td>
                                    <td width="50">
                                        <p><label class="wide">Pháp lý:</label> <?php echo $value->productsFeature['legal'];?></p>
                                        <p><label class="direction">Hướng:</label> <?php echo $value->productsFeature['direction'];?></p>
                                    </td>
                                    <td width="110">
                                        <p class="price">Giá: <span> <?php echo number_format($value['unit'],0,',','.').' ' . $value['unit_currency'] . '/' . $value['unit_unit']; ?></span></p>
                                        <p>Diện tích sử dụng: <span><?php echo $value->productsFeature['area_used'];?>m<sup>2</sup></span></p>
                                    </td>
                                </tr>
                                <tr>
                                    <td colspan="3"><p class="date-posted">Đăng ngày: <?php echo date('d-m-Y', strtotime($value['postdate'])) ?>, Xem: <?php echo $value['hits'] ?></p></td>
                                </tr>
                            </table>
                        </td>
                        <td style="text-align:center" width="90">
                            <h3 class="title-footer-right"><?php echo $value->Username['fullname'] ?></h3>
                            <?php if($value->Username['avartar']):?>
								<img src="<?php echo Yii::app()->baseUrl.' /public/userfiles/image/' . $value->dos_username . '/image/'.$value->Username['avartar'] ?>" alt="<?php echo $value->dos_username ?>" />
							<?php else:?>
								<img src="<?php echo Yii::app()->theme->baseUrl.'/images/no-img-members.jpg' ?>" alt="<?php echo $value->dos_username ?>" />
							<?php endif?>
                            <p class="price"><?php echo $value['contact_mobile'] ?></p>
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