<!DOCTYPE html PUBLIC "-//W3C//DTD XHTML 1.0 Transitional//EN" "http://www.w3.org/TR/xhtml1/DTD/xhtml1-transitional.dtd">
<html xmlns="http://www.w3.org/1999/xhtml">
    <head>
        <meta http-equiv="Content-Type" content="text/html; charset=utf-8" />
        <meta http-equiv="content-language" content="vi" />
        <meta name="revisit-after" content="1 days" />
        <meta name="robots" content="noodp,index,follow" />

        <link href="<?php echo Yii::app()->theme->baseUrl; ?>/css/dosvn.css" rel="stylesheet" type="text/css" />
        <script type="text/javascript" src="<?php echo Yii::app()->theme->baseUrl; ?>/js/jquery-1.7.1.min.js"></script>
        <script type="text/javascript" src="<?php echo Yii::app()->theme->baseUrl; ?>/js/tab-sub-right.js"></script>
        <script type="text/javascript" src="<?php echo Yii::app()->theme->baseUrl; ?>/js/jquery.tooltip.js"></script>
        <?php echo $this->analytics ?>

        <link rel="SHORTCUT ICON" href="<?php echo Yii::app()->theme->baseUrl; ?>/images/favicon.ico" type="image/x-icon" />
        <link rel="icon" href="<?php echo Yii::app()->theme->baseUrl; ?>/images/favicon.ico" type="image/gif" />

        <title><?php echo CHtml::encode($this->pageTitle); ?><?php echo ($this->title) ? ' - ' . CHtml::encode($this->title) : '' ?> </title>
        <meta name="keywords" content="<?php echo $this->keywords ?>" />
        <meta name="description" content="<?php echo $this->description ?>" />
    </head>
    <body>
        <div id="wrapper">
            <div id="header-top">
                <div class="hd-left">
                    <?php if ($this->logo): ?>
                        <a href="<?php echo Yii::app()->request->baseUrl . Yii::app()->session['langUrl'] ?>/" title="<?php echo $this->logo['banner_name'] ?>"><img src="<?php echo Yii::app()->baseUrl . USERFILES ?>/banner/<?php echo $this->logo['banner_url'] ?>" alt="<?php echo $this->logo['banner_name'] ?>" /></a>
                    <?php else: ?>
                        <a href="<?php echo Yii::app()->request->baseUrl . Yii::app()->session['langUrl'] ?>/" title="Logo"><img src="<?php echo Yii::app()->theme->baseUrl; ?>/images/logo.png" alt="Logo" /></a>
                    <?php endif; ?>

                </div> <!--End logo-->
                <div class="hd-cter">
                    <p class="welcome">Xin mời ! <a href="registration.html" title="Đăng ký" class="regis">Đăng Ký</a> hoặc <a href="login.html" title="Đăng Nhập" class="login">Đăng Nhập</a> </p>
                    <div class="frame-nav">
                        <div class="left-nav"></div>
                        <div class="bg-nav">
                            <ul class="nav">
                                <li><a href="index.html" title="" class="select-nav">Chào bán</a></li>
                                <li><a href="about.html" title="">Cho thuê</a></li>
                                <li><a href="product.html" title="" >Cần mua</a></li>
                                <li><a href="services.html" title="">Cần thuê</a></li>
                                <li class="bder-none"><a href="news.html" title="">Sang nhượng</a></li>
                            </ul>  
                        </div> <!--bg nav-->
                    </div> <!--End frame nav-->
                </div> <!--End center header-->
                <div class="hd-right">
                    <p class="hotline"><?php echo $this->lang['company_phone'] ?></p>
                    <ul class="sub-hdright">
                        <li><a href="#" title="">Dịch vụ nhà đất</a></li>
                        <li><a href="#" title="">Tư vấn phong thủy</a></li>
                        <li class="sub-hdright-none"><a href="#" title="">Trợ giúp</a></li>
                    </ul>
                </div> <!--End hot line-->
            </div><!--End header-->
            <div class="hder-fter">
                <div class="hder-fter-left">
                    <h2 class="title-list"><span><a href="index.html">TRANG CHỦ</a></span></h2>
                </div>
                <div class="all-right-fter" >
                    <form action="" id="frm-search" name="frmlistproduct" method="post">
                        <select size="1" name="listproduct" class="select">
                            <option value="0">Chọn nhóm sản phẩm</option>
                           
                            <?php foreach ($this->function['menu_products'] as $value): ?>
                                <option value="<?php echo $value['tag']?>"><?php echo $value['cat_title']?></option>
                            <?php endforeach; ?>
                            
                            
                            <option value="12">Các loại khác</option>
                        </select>

                        <input type="text" name="search" class="searchbox" size="10"/>	


                        <div class="hder-fter-right">
                            <input type="submit"  value="Tìm kiếm" class="bton-search"/>  
                            <a href="#" title="" class="members">Hội Viện</a>
                            <a href="#" title="" class="deposit">Ký Gửi</a>
                        </div>
                    </form>
                </div>  <div class="clear"></div>
            </div> <!--End header footer-->
            <div id="content">
                <div id="all-left-content">
                    <div id="left-content">

                        <?php if (isset($this->function['menu_products']) && ($this->function['menu_products'])): ?>
                            <ul class="nav-left">
                                <?php Common::menuMultiLevel($this->function['menu_products'], 'ProductsCat', Yii::t('user', 'products.link')); ?>
                            </ul>
                        <?php endif; ?>

                        
                    </div> <!--End left content-->
                    <div class="frame-search-detail">
                        <img src="<?php echo Yii::app()->theme->baseUrl; ?>/images/img.jpg" alt="" />
                        <form action="" name="searchdetail" method="post" class="frm-search-detail">
                            <h3 class="title-detail">TÌM KIẾM CHI TIẾT</h3>
                            <ul>
                                <li><label>
                                        <select size="1" name="hometype" class="hometype">
                                            <option value="0">Loại nhà đất</option>
                                            <option value="1">Đất thổ cư</option>
                                            <option value="2">Đất nông nghiệp</option>
                                            <option value="3">Đất chung cư</option>
                                            <option value="4">Nhà cấp 4</option>
                                            <option value="5">Nhà biêth thự</option>
                                        </select>
                                    </label>
                                    <select size="1" name="long">
                                        <option value="0">Dài</option>
                                        <option value="5">50m</option>
                                    </select>
                                    <select size="1" name="wide">
                                        <option value="0">Rộng</option>
                                        <option value="1">4m</option>
                                        <option value="6">25m</option>
                                    </select>
                                    <select size="1" name="price">
                                        <option value="0">Mức giá</option>
                                        <option value="1">200.000.000 Đồng</option>
                                        <option value="9">6.000.000.000 Đồng</option>
                                    </select>
                                </li>
                                <li>
                                    <label>
                                        <select id="location" name="location" class="location">
                                            <option value="0">Tỉnh thành</option>
                                            <option value="1">An Giang</option>
                                            <option value="2">Bà rịa - Vũng tàu</option>

                                        </select>
                                    </label>
                                    <select size="1" name="district" class="district">
                                        <option value="0">Quận / Huyện</option>
                                        <option value="1">Quận 1</option>

                                    </select>
                                    <input type="submit" value="Tìm kiếm" class="bton-search-detail" />
                                </li>
                            </ul>
                        </form>
                    </div> <!--End frame-search-detail -->
                    <div class="clear"></div>
                    <div class="bg-footer-left">
                        <div class="all-tent-fter">
                            <?php echo $content ?>
                            <h2 class="title-fter-left">MUA BÁN NHÀ ĐẤT</h2>
                            <div class="item-sale">
                                <div class="footer-left">
                                    <div class="frame-img"><a href="product-info.html" title=""><img src="<?php echo Yii::app()->theme->baseUrl; ?>/images/home.jpg" alt="" /></a></div>
                                    <div class="info-sale">
                                        <h2 class="title-sale"><a href="product-info.html" title="">CẦN BÁN GẤP NHÀ HẺM NGUYỄN TRI PHƯƠNG</a></h2>
                                        <ul class="sub-sale">
                                            <li><p><span class="position">Vị trí:</span> Hẻm Nguyễn Tri Phương, Phường 5, Quận 5</p></li>
                                            <li>
                                                <p><label class="long">Dài</label>: 5m</p>
                                                <p><label class="wide">Rộng</label>: 10m</p>
                                                <p><label class="direction">Hướng</label>: Đông Nam</p>
                                            </li>
                                            <li>
                                                <p class="price">Giá:<span> 1 tỷ 500 triệu VND</span></p>
                                                <p>Hiện trạng:<span>Đang được sử dụng</span></p>
                                            </li>
                                            <li> 
                                                <p class="ico-map tooltip">Bản đồ</p>
                                                <div class="product-tool product-info">
                                                    <h2 class="product-name">Hẻm Nguyễn Tri Phương, Phường 5, Quận 5</h2>
                                                    <img src="<?php echo Yii::app()->theme->baseUrl; ?>/images/map.jpg" alt="" />
                                                </div>
                                                <p class="ico-save"><a href="#" title="">Lưu lại</a></p>
                                                <p class="ico-contact"><a href="#" title="">Liên hệ</a></p>
                                            </li>
                                        </ul>
                                        <p class="date-posted">Đăng ngày: 20/02/2012 , Xem: 120</p>
                                    </div>
                                </div> <!--End footer left-->
                                <div class="footer-right">
                                    <h3 class="title-footer-right">Hội viên</h3>
                                    <img src="<?php echo Yii::app()->theme->baseUrl; ?>/images/hoivien.jpg" alt="Hoi vien" />
                                </div> <!---End footer right hoi vien--> <div class="clear"></div>
                            </div> <!--End item sale-->

                        </div> <!--End all tent footer-->
                        <script type="text/javascript" src="<?php echo Yii::app()->theme->baseUrl; ?>/js/tooltip-positon.js"></script>	
                    </div> <!--End footer left content-->
                </div>  <!--End all left content-->
                <div id="right-content">
                    <ul class="adv-right">
                        <li><a href="#" title=""><img src="<?php echo Yii::app()->theme->baseUrl; ?>/images/adv-right1.jpg" alt="adv1" /></a></li>
                        <li><a href="#" title=""><img src="<?php echo Yii::app()->theme->baseUrl; ?>/images/adv-right2.jpg" alt="adv1" /></a></li>
                    </ul> <!--End quang cao-->
                    <div class="frame-right">
                        <h1 class="title-right">Tư vấn phong thủy</h1>
                        <ul id="tab1" class="sub-consultant tab_content">
                            <li><a href="#" title="">Tuổi rồng nên xây nhà theo hướng nào ?</a></li>
                            <li><a href="#" title="">Phong thủy cho phòng làm việc</a></li>
                            <li><a href="#" title="">Màu sắc và tuổi</a></li>
                            <li><a href="#" title="">Phong thủy cho nhà tuổi rồng</a></li>

                            <li><a href="#" title="">Bán</a></li>
                        </ul>

                        <ul id="tab2" class="sub-consultant tab_content">
                            <li><a href="#" title="">Tin tức tab 2</a></li>

                        </ul>
                        <ul id="tab3" class="sub-consultant tab_content">
                            <li><a href="#" title="">Tin tức tab 3</a></li>
                            <li><a href="#" title="">Tin tức tab 3</a></li>
                        </ul>
                        <ul id="tab4" class="sub-consultant tab_content">
                            <li><a href="#" title="">Tin tức tab 4</a></li>
                            <li><a href="#" title="">Tin tức tab 4</a></li>

                        </ul>


                        <ul class="tabs paging">
                            <li><a href="#tab1"><b class="pagecureent">1</b></a></li>
                            <li> <a class="pagenav" href="#tab2">2</a></li>
                            <li><a class="pagenav" href="#tab3">3</a></li>
                            <li> <a class="pagenav" href="#tab4">4</a></li>
                            <li><b class="posted"><a href="#" title="">Đăng hỏi đáp</a></b>
                                <b class="all-view"><a href="#" title="" >Xem tất cả</a></b>
                            </li>
                        </ul>
                        <div class="clear"></div>
                    </div> <!--End tu van phong thuy-->
                    <div class="frame-right">
                        <h1 class="title-right">Dịch vụ nhà đất</h1>
                        <ul class="sub-consultant">
                            <li><a href="#" title="">Bán nhà có sổ đỏ, gần trường, bệnh viện, chợ</a></li>
                            <li><a href="#" title="">Bán căn hộ Hoàng Anh Gia Lai</a></li>
                            <li><a href="#" title="">Cho thuê nhà giá rẻ gần cơ sở 2 trường Lạc Hồng</a></li>
                            <li><a href="#" title="">Sang nhượng quán cafê gần công viên Nguyễn Văn Trị - Biên Hòa</a></li>
                            <li><a href="#" title="">Bán nhà </a></li>
                        </ul>
                    </div> <!--End dich vu nha dat-->
                </div><!--End right content-->   <div class="clear"></div>
            </div><!--End content-->
            <div id="footer">
                <div class="logo-footer"><a href="index.html" title=""><img src="<?php echo Yii::app()->theme->baseUrl; ?>/images/logo.png" alt="logo" /></a></div>
                <ul class="nav-fter">
                    <li><a href="" title="">Chào bán</a></li>
                    <li><a href="" title="">Cho thuê</a></li>
                </ul>
                <div class="frame-info">
                    <h3 class="comname"><strong><?php echo $this->lang['company_name_footer'] ?></strong></h3>
                    <p><?php echo $this->lang['address1'] ?></p>
                    <?php echo ($this->lang['address2']) ? '<p>' . $this->lang['address2'] . '</p>' : '' ?>
                    <p><?php echo $this->lang['copyright'] ?></p>
                    <p><?php echo $this->lang['developed'] ?> <a href="http://dos.vn" target="_blank" title="Dos.vn">Dos.vn</a></p>
                </div> <!--End frame info-->
            </div><!--End footer-->
        </div><!--End wrapper-->
    </body>
</html>
