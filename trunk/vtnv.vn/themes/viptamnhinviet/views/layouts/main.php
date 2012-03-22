<!DOCTYPE html PUBLIC "-//W3C//DTD XHTML 1.0 Transitional//EN"
    "http://www.w3.org/TR/xhtml1/DTD/xhtml1-transitional.dtd">
<html xmlns="http://www.w3.org/1999/xhtml">
    <head>
        <meta http-equiv="Content-Type" content="text/html; charset=utf-8"/>
        <meta http-equiv="content-language" content="vi"/>
        <meta name="keywords" content=" han viet, cong ty han viet"/>
        <meta name="description" content=" han viet, cong ty han viet"/>
        <meta name="revisit-after" content="1 days"/>
        <meta name="robots" content="noodp,index,follow"/>
        <link rel="SHORTCUT ICON" href="images/favicon.ico" type="image/x-icon"/>
        <link rel="icon" href="<?php echo Yii::app()->theme->baseUrl; ?>/images/favicon.ico" type="image/gif"/>

        <script type="text/javascript" src="<?php echo Yii::app()->theme->baseUrl; ?>/js/jquery-1.7.1.min.js"></script>

        <title><?php echo CHtml::encode($this->pageTitle); ?></title>
        <link rel="stylesheet" type="text/css" href="<?php echo Yii::app()->theme->baseUrl; ?>/css/dosvn.css"/>
        <link rel="stylesheet" type="text/css" href="<?php echo Yii::app()->theme->baseUrl; ?>/css/advanced-slider-base.css"
              media="screen"/>
        <link rel="stylesheet" type="text/css" href="<?php echo Yii::app()->theme->baseUrl; ?>/css/prettyPhoto.css"
              media="screen"/>


        <script type="text/javascript" src="<?php echo Yii::app()->theme->baseUrl; ?>/js/jquery.prettyPhoto.js"></script>

        <?php if ($this->banners): ?>
            <script type="text/javascript" src="<?php echo Yii::app()->theme->baseUrl; ?>/js/jquery.advancedSlider.min.js"></script>
            <!--[if IE]>
            <script type="text/javascript" src="<?php echo Yii::app()->theme->baseUrl; ?>/js/excanvas.compiled-ie.js"></script>
            <![endif]-->
            <!--[if lt IE 8]> <script type="text/javascript" src="<?php echo Yii::app()->theme->baseUrl; ?>/js/jquery.sider.banner-ie.js"></script> <![endif]-->
            <script type="text/javascript" src="<?php echo Yii::app()->theme->baseUrl; ?>/js/jquery.sider.banner.js"></script>
            <script type="text/javascript">
                $(document).ready(function () {
                    runbanner(686,255);
                });
            </script>
        <?php endif; ?>
    </head>
    <body>
        <div id="wrapper">
            <div class="top-page">
                <?php if (Yii::app()->user->isGuest == true): ?><p class="left">Bạn chưa đăng nhập tài khoản thành viên của Viptamnhinviet!</p><?php endif ?>
                <?php
                $this->widget('zii.widgets.CMenu', array(
                    'id' => 'top-right',
                    'items' => array(
                        array('label' => 'Đăng ký thành viên', 'url' => array('/dang-ky-thanh-vien.html'), 'visible' => Yii::app()->user->isGuest, 'linkOptions' => array('title' => 'Đăng ký thành viên')),
                        array('label' => 'Đăng nhập', 'url' => array('/dang-nhap.html'), 'visible' => Yii::app()->user->isGuest, 'linkOptions' => array('title' => 'Đăng ký thành viên')),
                        array('label' => 'Chào ' . Yii::app()->user->name, 'visible' => !Yii::app()->user->isGuest, 'linkOptions' => array('class' => 'none')),
                        array('label' => 'Thoát', 'url' => array('/site/logout'), 'visible' => !Yii::app()->user->isGuest, 'linkOptions' => array('class' => 'none')),
                    ),
                ));
                ?>
                <div class="clear"></div>
            </div>
            <!--End top page-->
            <div id="page">
                <div id="header">
                    <div id="header-left"><a href="<?php echo Yii::app()->homeUrl; ?>" title="Home page"><img src="<?php echo Yii::app()->theme->baseUrl; ?>/images/logo.png" alt="Logo"/></a></div>
                    <!--End header left-->
                    <div class="banner-eca">
                        <?php if (isset($this->advs_top) && ($this->advs_top)): ?>
                            <?php foreach ($this->advs_top as $value): ?>
                                <a href="<?php echo $value['url'] ?>" title="<?php echo $value['title'] ?>" target="<?php echo $value['type'] ?>"><img src="<?php echo Yii::app()->baseUrl . USERFILES ?>/advs/<?php echo $value['pic_thumb'] ?>" alt="<?php echo $value['title'] ?>"  /></a>
                            <?php endforeach; ?>
                        <?php endif; ?>
                    </div>
                    <div class="clear"></div>
                </div>
                <!--End header-->
                <ul class="nav">
                    <li><a href="<?php echo Yii::app()->homeUrl ?>" title="Trang chủ"<?php echo (!isset($this->module->id)) ? ' class="select"' : '' ?>>Trang chủ</a></li>
                    <li><a href="<?php echo Yii::app()->homeUrl ?>gioi-thieu" title="Giới thiệu"<?php echo (isset($this->module->id) && $this->module->id == 'about') ? ' class="select"' : '' ?>>Giới thiệu</a></li>
                    <li><a href="<?php echo Yii::app()->homeUrl ?>san-pham" title="Sản phẩm"<?php echo (isset($this->module->id) && $this->module->id == 'products') ? ' class="select"' : '' ?>>Sản phẩm</a></li>
                    <li><a href="<?php echo Yii::app()->homeUrl ?>tin-tuc" title="Tin tức"<?php echo (isset($this->module->id) && $this->module->id == 'news') ? ' class="select"' : '' ?>>Tin tức</a></li>
                    <li><a href="<?php echo Yii::app()->homeUrl ?>video" title="Video"<?php echo (isset($this->module->id) && $this->module->id == 'video') ? ' class="select"' : '' ?>>Video</a></li>
                    <li><a href="<?php echo Yii::app()->homeUrl ?>lien-he.html" title="Liên hệ"<?php echo (isset($this->module->id) && $this->module->id == 'contact') ? ' class="select"' : '' ?>>Liên hệ</a></li>
                </ul>

                <div class="clear"></div>
                <div id="banner">
                    <ul class="slider">
                        <?php if ($this->banners): ?>
                            <?php foreach ($this->banners as $value): ?>
                                <li class="slider-item">
                                    <a href="<?php echo $value['banner_link'] ?>" title="<?php echo $value['banner_name'] ?>">
                                        <img src="<?php echo Yii::app()->request->baseUrl . USERFILES; ?>/banners/<?php echo $value['banner_url'] ?>" alt="<?php echo $value['banner_name'] ?>" />
                                    </a>
                                </li>
                            <?php endforeach ?>
                        <?php else : ?>
                            <li><img src="<?php echo Yii::app()->theme->baseUrl; ?>/images/banner.jpg" alt="Banner" /></li>
                        <?php endif; ?>
                    </ul>

                    <!--End slider banner-->
                    <div class="video">
                        <?php if ($this->videoHome): ?>
                            <a href="<?php echo $this->videoHome['url'] ?>" rel="prettyPhoto" title="<?php echo $this->videoHome['title'] ?>"><img src="<?php echo Yii::app()->request->baseUrl . USERFILES . '/video/' . $this->videoHome['pic_thumb'] ?>" alt="<?php echo $this->videoHome['title'] ?>" /></a>
                            <script type="text/javascript">$(document).ready(function () {$(".video a[rel^='prettyPhoto']").prettyPhoto();});</script>
                        <?php endif; ?>
                    </div>
                    <!--End video-->
                    <div class="clear"></div>
                </div>
                <!--End banner-->
                <form action="" name="frmsearch" class="frm-search" method="post">
                    <input type="text" name="txt-search" value="Tìm kiếm" onblur="if(this.value=='') this.value='Tìm kiếm'" onfocus="if(this.value =='Tìm kiếm' ) this.value=''"  />
                    <select name="listproduct">
                        <?php foreach ($this->menu_product as $value): ?>
                            <option value="<?php echo $value['cat_id'] ?>"><?php echo $value['cat_title'] ?></option>
                        <?php endforeach ?>
                    </select>
                    <input type="submit" value="Tìm kiếm" title="Tìm kiếm" class="bton-search"/>
                </form>
                <!--End form search-->
                <div id="content">
                    <div id="left-content">
                        <div class="frame-left-1">
                            <?php if (!Yii::app()->user->isGuest): ?>
                                <h1 class="title-left"><span>BẢNG ĐIỀU KHIỂN</span></h1>
                                <ul class="sub-pro">
                                    <li><a href="<?php echo Yii::app()->baseUrl ?>/san-pham/danh-sach" title="">Sản phẩm đã đăng</a></li>
                                    <li><a href="<?php echo Yii::app()->baseUrl ?>/san-pham/dang-san-pham" title="">Đăng sản phẩm</a></li>
                                    <li><a href="<?php echo Yii::app()->baseUrl ?>/user/map" title="">Cây hệ thống</a></li>
                                    <li class="border-none"><a  href="<?php echo Yii::app()->baseUrl ?>/user/table" title="Bàn thành viên">Bàn thành viên</a></li>
                                    <li class="border-none"><a  href="<?php echo Yii::app()->baseUrl ?>/user/datchuan" title="Danh sách bàn sắp thoát">Danh sách bàn sắp thoát</a></li>
                                    <li class="border-none"><a  href="<?php echo Yii::app()->baseUrl ?>/user/thoatban" title="Thành viên thoát bàn">Thành viên thoát bàn</a></li>
                                    <li><a href="<?php echo Yii::app()->baseUrl ?>/log" title="">Lịch sử giao dịch</a></li>
                                    <li><a href="#" title="">Số tiền tích lũy: <span class="error"><b class="balan"><?php echo Yii::app()->session['balance'] ?></b> V</span></a></li>
                                    <li class="border-none"><a  href="<?php echo Yii::app()->baseUrl ?>/user/transferv" title="Chuyển khoản">Chuyển khoản</a></li>
                                    <li class="border-none"><a  href="<?php echo Yii::app()->baseUrl ?>/user/view" title="Xem thông tin">Xem thông tin</a></li>
                                    <li class="border-none"><a  href="<?php echo Yii::app()->baseUrl ?>/user/changepass" title="Đổi mật khẩu">Đổi mật khẩu</a></li>
                                </ul>
                            <?php endif; ?>

                            <?php if (isset($this->menu_about) && ($this->menu_about)): ?>
                                <h1 class="title-left"><span>DANH MỤC GIỚI THIỆU</span></h1>
                                <ul class="sub-pro">
                                    <?php foreach ($this->menu_about as $value): ?>
                                        <li><a href="<?php echo Yii::app()->request->baseUrl ?>/gioi-thieu/<?php echo $value['tag'] ?>.html" title="<?php echo $value['title'] ?>"><?php echo $value['title'] ?></a></li>
                                    <?php endforeach; ?>
                                </ul>
                            <?php endif; ?>

                            <?php if (isset($this->menu_video) && ($this->menu_video)): ?>
                                <h1 class="title-left"><span>DANH MỤC VIDEO</span></h1>
                                <ul class="sub-pro">
                                    <?php foreach ($this->menu_video as $value): ?>
                                        <li><a href="<?php echo Yii::app()->request->baseUrl ?>/video/<?php echo $value['tag'] ?>" title="<?php echo $value['cat_title'] ?>"><?php echo $value['cat_title'] ?></a></li>
                                    <?php endforeach; ?>
                                </ul>
                            <?php endif; ?>

                            <?php if (isset($this->menu_news) && ($this->menu_news)): ?>
                                <h1 class="title-left"><span>DANH MỤC TIN TỨC</span></h1>
                                <ul class="sub-pro">
                                    <?php foreach ($this->menu_news as $value): ?>
                                        <li><a href="<?php echo Yii::app()->request->baseUrl ?>/tin-tuc/<?php echo $value['tag'] ?>" title="<?php echo $value['cat_title'] ?>"><?php echo $value['cat_title'] ?></a></li>
                                    <?php endforeach; ?>
                                </ul>
                            <?php endif; ?>

                            <?php if (isset($this->menu_product) && ($this->menu_product)): ?>
                                <h1 class="title-left"><span>DANH MỤC SẢN PHẨM</span></h1>
                                <ul class="sub-pro">
                                    <?php foreach ($this->menu_product as $value): ?>
                                        <li><a href="<?php echo Yii::app()->request->baseUrl ?>/san-pham/<?php echo $value['tag'] ?>" title="<?php echo $value['cat_title'] ?>"><?php echo $value['cat_title'] ?></a></li>
                                    <?php endforeach; ?>
                                </ul>
                            <?php endif; ?>
                        </div>
                        <!--End frame-left 1-->
                        <div class="frame-left-2">
                            <h3 class="title-support"><span>HỖ TRỢ TRỰC TUYẾN</span></h3>
                            <ul class="support">
                                <?php
                                $supports = new Supports();
                                $values = $supports->listItem();
                                foreach ($values as $value):
                                    ?>
                                    <li>
                                        <div class="img-sport"><a href="ymsgr:sendim?<?php echo $value['support_value'] ?>"><img	src="http://opi.yahoo.com/online?u=<?php echo $value['support_value'] ?>&amp;m=g&amp;t=14&amp;l=us" class="img-support" alt="<?php echo $value['support_value'] ?>"/></a></div>
                                        <div class="right-spport"><p class="title-sport-right"><?php echo $value['support_name'] ?></p>
                                            <p><?php echo $value['support_phone'] ?></p>
                                        </div>
                                        <div class="clear"></div>
                                    </li>
                                <? endforeach ?>
                            </ul>
                        </div>
                        <!--End frame left 2-->
                        <?php if ($this->listItemHot): ?>
                            <div class="frame-left-1">
                                <h3 class="title-left"><span>SẢN PHẨM TIÊU BIỂU</span></h3>
                                <ul class="sub-ty-pro">
                                    <?php foreach ($this->listItemHot as $value): ?>
                                        <li>
                                            <?php if ($value['pic_thumb']): ?>
                                                <div class="img-ty-pro">
                                                    <a href="<?php echo Yii::app()->request->baseUrl ?>/san-pham/<?php echo $value['tag'] ?>/<?php echo $value['tag'] ?>.html" title='<?php echo $value['title'] ?>'>
                                                        <img src="<?php echo Yii::app()->baseUrl . USERFILES ?>/products/<?php echo $value['pic_thumb'] ?>" alt='<?php echo $value['title'] ?>' />
                                                    </a>
                                                </div>
                                            <?php endif; ?>
                                            <div class="right-ty-pro">
                                                <h2 class="title-pro"><a href="<?php echo Yii::app()->request->baseUrl ?>/san-pham/<?php echo $value['tag'] ?>/<?php echo $value['tag'] ?>.html" title='<?php echo $value['title'] ?>'><?php echo $value['title'] ?></a></h2>
                                                <p class="price"><b>Giá : </b> <span><?php echo number_format($value['unit'], 0, '', '.'); ?></span></p>
                                            </div> <div class="clear"></div>
                                        </li>
                                    <?php endforeach; ?>
                                </ul>
                                <!--End typical products-->
                                <p class="all-view-pro"><a href="#" title="">Xem thêm sản phẩm &raquo;</a></p>
                            </div>
                        <?php endif; ?>
                        <!--End frame left 1-->
                        <!-- <div class="frame-left-1">
                            <h3 class="title-left"><span>KHUYẾN MÃI MỚI NHẤT</span></h3>
                            <ul class="sub-ty-pro">
                                <li>
                                    <div class="img-ty-pro">
                                        <a href="product-info.html" title=""><img src="<?php echo Yii::app()->theme->baseUrl; ?>/images/ty-pro-1.jpg" alt=""/></a>
                                    </div>

                                    <div class="right-ty-pro">
                                        <h2 class="title-pro"><a href="product-info.html" title="">apple macbook air mc234ll/a
                                                13.3" display - aluminum</a></h2>

                                        <p class="price"><b>Giá : </b> <span>36.800</span> <strong>K</strong></p>
                                    </div>
                                    <div class="clear"></div>
                                </li>

                            </ul>
                            <p class="all-view-pro"><a href="#" title="">Xem thêm sản phẩm &raquo;</a></p>
                        </div> -->
                        <!--End frame left 1-->
                        <?php if (isset($this->advs_left) && ($this->advs_left)): ?>
                            <h3 class="title-adv-left">ĐỐI TÁC VÀNG</h3>
                            <ul class="adv-left">
                                <?php foreach ($this->advs_left as $value): ?>
                                    <li><a href="<?php echo $value['url'] ?>" title="<?php echo $value['title'] ?>" target="<?php echo $value['type'] ?>"><img src="<?php echo Yii::app()->baseUrl . USERFILES ?>/advs/<?php echo $value['pic_thumb'] ?>" alt="<?php echo $value['title'] ?>" /></a></li>
                                <?php endforeach; ?>
                            </ul>
                        <?php endif; ?>
                        <!--End doi tac vang-->
                        <!-- <h3 class="title-member-left-1">THÀNH VIÊN QUYÊN GÓP NHIỀU NHẤT</h3>
                        <ul class="list-member">
                            <li><label><strong>KenNguyen</strong></label> <span>2619 <b>K</b></span>

                                <div class="clear"></div>
                            </li>
                            <li><label><strong>KenNguyen</strong></label> <span>2619 <b>K</b></span>

                                <div class="clear"></div>
                            </li>
                        </ul> -->
                        <!--End thanh vien quyen gop nhieu nhat-->
                        <!-- <h3 class="title-member-left-2">THÀNH VIÊN QUYÊN GÓP MỚI NHẤT</h3>
                        <ul class="list-member-2 list-member">
                            <li><label><strong>KenNguyen</strong></label> <span>2619 <b>K</b></span>

                                <div class="clear"></div>
                            </li>
                            <li><label><strong>KenNguyen</strong></label> <span>2619 <b>K</b></span>

                                <div class="clear"></div>
                            </li>
                        </ul> -->
                        <!--End thanh vien quyen gop moi nhat-->
                    </div>
                    <!--End left content-->
                    <div id="right-content">
                        <?php echo $content; ?>
                    </div>
                    <!--End right content-->
                    <div class="clear"></div>
                </div>
                <!--End content-->
                <!-- <div class="frame-left-2">
                    <h3 class="title-booth"><span>GIAN HÀNG TIÊU BIỂU CỦA VIP TẦM NHÌN VIỆT</span></h3>
                    <div class="bg-booth">
                        <div class="item-booth">
                            <div class="img-booth"><a href="#" title=""><img src="<?php echo Yii::app()->theme->baseUrl; ?>/images/pro-ty.jpg" alt=""/></a></div>
                            <h3 class="title-member"><a href="#" title="">xuanchien</a></h3>
                        </div>
                    </div>
                </div> -->
                <!--End gian hang tieu bieu-->

                <?php if (isset($this->advs_bottom) && ($this->advs_bottom)): ?>
                    <?php foreach ($this->advs_bottom as $value): ?>
                        <a href="<?php echo $value['url'] ?>" title="<?php echo $value['title'] ?>" target="<?php echo $value['type'] ?>"><img src="<?php echo Yii::app()->baseUrl . USERFILES ?>/advs/<?php echo $value['pic_thumb'] ?>" alt="<?php echo $value['title'] ?>"  /></a>
                    <?php endforeach; ?>
                <?php endif; ?>

                <div id="footer">
                    <ul class="nav-fter">
                        <li><a href="<?php echo Yii::app()->homeUrl ?>" title="Trang chủ" class="select">Trang chủ</a></li>
                        <li><a href="<?php echo Yii::app()->homeUrl ?>gioi-thieu" title="Giới thiệu">Giới thiệu</a></li>
                        <li><a href="<?php echo Yii::app()->homeUrl ?>san-pham" title="Sản phẩm">Sản phẩm</a></li>
                        <li><a href="<?php echo Yii::app()->homeUrl ?>tin-tuc" title="Tin tức">Tin tức</a></li>
                        <li><a href="<?php echo Yii::app()->homeUrl ?>video" title="Video">Video</a></li>
                        <li><a href="<?php echo Yii::app()->homeUrl ?>lien-he.html" title="Liên hệ">Liên hệ</a></li>
                    </ul> <div class="clear"></div>
                    <div class="frame-info-footer">
                        <div class="left-fter">
                            <p><?php echo $this->lang['copyright'] ?></p>
                            <p><?php echo $this->lang['address'] ?></p>
                            <p><?php echo $this->lang['phone'] ?></p>
                            <p><?php echo $this->lang['fax'] ?></p>
                        </div>
                        <!--End left fter-->

                        <div class="right-fter">
                            <p>Giấy phép kinh doanh số: 3602648481</p>
                            <p>Do Sở Kế Hoạch và Đầu Tư Tỉnh Đồng Nai cấp ngày: 11 tháng 11 năm 2011</p>
                            <p class="statistics">Lượt truy cập : <span><?php echo Yii::app()->counter->getTotal(); ?></span> - Trực Tuyến : <span><?php echo Yii::app()->counter->getOnline(); ?></span></p>
                            <p>Design by <a href="http://dos.vn" title="Dos.vn" target="_blank">Dos.vn</a></p>
                        </div>
                        <!--End right fter-->
                        <div class="clear"></div>
                    </div>
                </div>
                <!--End footer-->
            </div>
            <!--End page-->
        </div>
        <!--End wrapper-->
    </body>
</html>

