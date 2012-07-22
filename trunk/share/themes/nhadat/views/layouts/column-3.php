<?php $this->beginContent('//layouts/main'); ?>
<div id="content">
    <div id="container_content_left">
        <div class="container_content_left">
            <?php if (isset($this->function['menu_products']) && ($this->function['menu_products'])): ?>
                <div class="bg-nav-left">	
                    <ul class="nav-left">
                        <?php Common::menuMultiLevel($this->function['menu_products'], 'ProductsCat', Yii::t('user', 'products.link')); ?>
                    </ul>
                </div>	
            <?php endif; ?>

            <?php if (isset($this->function['list_supports']) && ($this->function['list_supports'])): ?>
                <div class="frame-box">
                    <h2 class="title-box"><span><?php echo $this->lang['supports'] ?></span></h2>
                    <ul class="support">
                        <?php foreach ($this->function['list_supports'] as $value): ?>
                            <?php if ($value['support_type'] == 'yahoo'): ?>
                                <li>
                                    <?php if ($value['support_name' . Yii::app()->session['lang']]) echo '<p>' . $value['support_name' . Yii::app()->session['lang']] . '</p>'; ?>
                                    <?php if ($value['support_phone']) echo '<p>' . $value['support_phone'] . '</p>'; ?>
                                    <a href="ymsgr:sendIM?<?php echo $value['support_value'] ?>"><img src="http://mail.opi.yahoo.com/online?u=<?php echo $value['support_value'] ?>&amp;m=g&amp;t=2" border="0" alt="<?php echo $value['support_value'] ?>" /></a>
                                </li>
                            <?php else: ?>
                                <li>
                                    <?php if ($value['support_name' . Yii::app()->session['lang']]) echo '<p>' . $value['support_name' . Yii::app()->session['lang']] . '</p>'; ?>
                                    <?php if ($value['support_phone']) echo '<p>' . $value['support_phone'] . '</p>'; ?>
                                    <a href="skype:<?php echo $value['support_value'] ?>?call"><img src="http://mystatus.skype.com/bigclassic/<?php echo $value['support_value'] ?>" style="border: none;" width="130" alt="<?php echo $value['support_value'] ?>" /></a>
                                </li>
                            <?php endif; ?>
                        <?php endforeach; ?>
                    </ul>
                </div>	
            <?php endif; ?>

            <img src="<?php echo Yii::app()->theme->baseUrl; ?>/images/tk.png" alt="Công cụ tìm kiếm"/>	
            <div class="contents">
                <!--begin tab-->
                <div class="tab">
                    <div id="divTabRESale" class="divSearchAct" onclick="ShowTab(1);">
                        <a>Nhà đất <br/>bán </a>
                    </div>
                    <div class="tab-lines" id="tab-line_1" style="display: none;">
                    </div>
                    <div id="divTabREBorrow" class="divSearchInAct" onclick="ShowTab(2);">
                        <a>Nhà đất <br/>cho thuê </a>
                    </div>
                    <div class="tab-lines" id="tab-line_2">
                    </div>
                    <div id="divTabRESaler" class="divSearchInAct" onclick="ShowTab(3);">
                        <a>Tìm môi <br/>giới</a></div>
                    <div style="clear: both">
                    </div>
                </div>
                <!--end tab-->
                <div id="divOfSeach">
                    <!--begin combobox-->
                    <form action="" method="post" id="frmSearchProduct" name="frmSearchProduct">
                        <div id="searchArea">
                            <div class="comboboxs" id="listCategoryRe">
                                <select class="select-box" id="cboTypeRe" name="cboTypeRe">
                                    <option value="">---Chọn Loại nhà đất---</option>
                                </select>
                            </div>
                            <div class="comboboxs" id="listCity">
                                <select class="select-box" id="cboCity" name="cboCity">
                                    <option value="">---Chọn Tỉnh-Thành phố---</option>
                                    <option value="SG">Tp.HCM</option>
                                    <option value="HN">Hà Nội</option>
                                    <option value="BD">Bình Dương</option>
                                    <option value="DDN">Đà Nẵng</option>
                                    <option value="HP">Hải Phòng</option>
                                    <option value="DNA">Đồng Nai</option>
                                </select>
                            </div>
                            <div class="comboboxs" id="listDistrict">
                                <select class="select-box" id="cboDistrict" name="cboDistrict">
                                    <option value="">---Chọn Quận/Huyện---</option>
                                </select>
                            </div>
                            <div class="comboboxs">
                                <select class="select-box" id="cboArea" name="cboArea" onchange="SearchCount();">
                                    <option value="">---Chọn Diện tích---</option>
                                    <option value="0">Không xác định</option>
                                    <option value="1">&lt;= 30 m2</option>
                                    <option value="2">30-50 m2</option>
                                    <option value="3">50-80 m2</option>
                                    <option value="4">80-100 m2</option>
                                    <option value="5">100-150 m2</option>
                                    <option value="6">150-200 m2</option>
                                    <option value="7">200-250 m2</option>
                                    <option value="8">250-300 m2</option>
                                    <option value="9">300-500 m2</option>
                                    <option value="10">&gt;=500 m2</option>
                                </select>
                            </div>
                            <div class="comboboxs" id="divPrice">
                                <select class="select-box" id="cboPrice" name="cboPrice">
                                    <option value="">---Chọn mức giá---</option>
                                </select>
                            </div>
                            <div class="comboboxs adv-search" >
                                <select class="select-box" id="cboBedRoom" name="cboBedRoom" onchange="SearchCount();">
                                    <option value="">---Chọn số phòng---</option>
                                    <option value="0">Không xác định</option>
                                    <option value="1">1+</option>
                                    <option value="2">2+</option>
                                    <option value="3">3+</option>
                                    <option value="4">4+</option>
                                    <option value="5">5+</option>
                                </select>
                            </div>
                            <div class="comboboxs adv-search" >
                                <select class="select-box" id="cboHomeDirection" name="cboHomeDirection" onchange="SearchCount();">
                                    <option value="">---Chọn hướng nhà---</option>
                                    <option value="0">Không xác định</option>
                                    <option value="1">Đông</option>
                                    <option value="2">Tây</option>
                                    <option value="3">Nam</option>
                                    <option value="4">Bắc</option>
                                    <option value="5">Đông-Bắc</option>
                                    <option value="6">Tây-Bắc</option>
                                    <option value="7">Tây-Nam</option>
                                    <option value="8">Đông-Nam</option>
                                </select>
                            </div>
                            <div class="comboboxs adv-search"  id="listProj">
                                <select class="select-box" id="cboListProj" name="cboListProj" onchange="SearchCount();">
                                    <option value="">---Chọn dự án BĐS---</option>
                                </select>
                            </div>
                        </div>
                        <input class="bt-search" type="image" src="<?php echo Yii::app()->theme->baseUrl; ?>/images/ts_button-search.jpg" />
                    </form>
                    <!--end combobox-->
                </div> <!--End divOfSeach tab 1 2-->

                <div id="divReSaler" style="display: none">
                    <!--begin combobox-->
                    <form id="frmBrokerSearch" action="" name="frmBrokerSearch" method="post" enctype="multipart/form-data">
                        <div class="comboboxs">
                            <select class="select-box" id="cmbCategory" name="cmbCategory">
                                <option value="">--Chọn giao dịch--</option>
                                <option value="38">Nhà đất bán</option>
                                <option value="49">Nhà đất cho thuê</option>
                            </select>
                        </div>
                        <div class="comboboxs" id="listTypeBDS">
                            <select class="select-box" id="cmbTypeBDS" name="cmbTypeBDS">
                                <option value="">--Chọn Loại nhà đất--</option>
                            </select>
                        </div>
                        <div class="comboboxs">
                            <select class="select-box" id="cmbCity" name="cmbCity"><option value="">--Chọn Tỉnh / Th&#224;nh phố--</option>
                                <option value="SG">Tp.HCM</option>
                                <option value="HN">Hà Nội</option>
                                <option value="BD">Bình Dương</option>
                                <option value="DDN">Đà Nẵng</option>
                            </select>
                        </div>
                        <div class="comboboxs" id="divListDistrict">
                            <select class="select-box" id="cmbDistrict" name="cmbDistrict">
                                <option value="">--Chọn Quận / Huyện--</option>
                            </select>
                        </div>
                        <div class="comboboxs" id="divListProject">
                            <select class="select-box" id="cmbProject" name="cmbProject">
                                <option value="">--Chọn Dự án--</option>
                            </select>
                        </div>
                        <input class="bt-search" type="image" src="<?php echo Yii::app()->theme->baseUrl; ?>/images/ts_button-search.jpg" />
                    </form>
                    <!--end combobox-->
                </div>
            </div> <!--End contents tab-->
            <div class="bd-bt-search"></div>	

        </div>	<!--End class container_content_left -->
    </div>  <!--End ID container_content_left -->	

    <div id="container_content_center">
        <div class="container_content_center">
            <?php echo $content; ?>
        </div> <!--End class container_content_center -->
    </div>  <!--End ID container_content_center-->	

    <div id="container_content_right">
        <div class="container_content_right">
            <?php if (isset($this->function['advs_right']) && ($this->function['advs_right'])): ?>
                <ul class="adv-right">
                    <?php foreach ($this->function['advs_right'] as $value): ?>
                        <li>
                            <a href="<?php echo $value['url'] ?>" target="<?php echo $value['type'] ?>" title="<?php echo $value['title' . Yii::app()->session['lang']] ?>"><img src="<?php echo Yii::app()->baseUrl . USERFILES ?>/advs/<?php echo $value['pic_thumb'] ?>" alt="<?php echo $value['title' . Yii::app()->session['lang']] ?>" /></a>
                        </li>
                    <?php endforeach; ?>
                </ul>
            <?php endif; ?>

            <?php if (isset($this->function['menu_news']) && ($this->function['menu_news'])): ?>
                <div class="frame-right">
                    <h2 class="title-right"><span><?php echo CHtml::encode($this->lang['news']) ?></span></h2>
                    <ul class="sub-consultant">
                        <?php Common::menuMultiLevel($this->function['menu_news'], 'NewsCat', Yii::t('user', 'news.link')); ?>
                    </ul>
                    <p class="all-view-new"><img src="<?php echo Yii::app()->theme->baseUrl; ?>/images/icon-2.gif" alt="allview" /><a href="<?php echo Yii::app()->baseUrl ?>/tin-tuc-su-kien" title="" >Xem tất cả</a></p>
                </div>	<!--End sub news-->
            <?php endif; ?>

            <?php if (isset($this->function['menu_services']) && ($this->function['menu_services'])): ?>
                <div class="frame-right">
                    <h2 class="title-right"><span><?php echo $this->lang['services'] ?></span></h2>
                    <ul class="sub-consultant">
                        <?php foreach ($this->function['menu_services'] as $value): ?>
                            <li><a href="<?php echo Yii::app()->request->baseUrl . LANGURL ?>/<?php echo Yii::t('user', 'services.link') ?>/<?php echo $value['tag' . Yii::app()->session['lang']] ?>.html" title="<?php echo $value['title' . LANG] ?>"><?php echo $value['title' . LANG] ?></a></li>
                        <?php endforeach; ?>
                    </ul>
                </div> <!--End dich vu nha dat-->
            <?php endif; ?>
        </div> <!--End class container_content_right-->	
    </div> <!--End ID container_content_right-->   <div class="clear"></div>
</div><!--End content-->
<?php $this->endContent(); ?>