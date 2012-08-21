<!DOCTYPE html PUBLIC "-//W3C//DTD XHTML 1.0 Transitional//EN" "http://www.w3.org/TR/xhtml1/DTD/xhtml1-transitional.dtd">
<html xmlns="http://www.w3.org/1999/xhtml">
    <head>
        <meta http-equiv="Content-Type" content="text/html; charset=utf-8" />
        <meta http-equiv="content-language" content="vi" />
        <meta name="revisit-after" content="1 days" />
        <meta name="robots" content="noodp,index,follow" />

        <link rel="SHORTCUT ICON" href="<?php echo Yii::app()->theme->baseUrl; ?>/images/favicon.ico" type="image/x-icon" />
        <link rel="icon" href="<?php echo Yii::app()->theme->baseUrl; ?>/images/favicon.ico" type="image/gif" />

        <link rel="stylesheet" type="text/css" href="<?php echo Yii::app()->theme->baseUrl; ?>/css/dosvn.css" />
        <link rel="stylesheet" type="text/css" href="<?php echo Yii::app()->theme->baseUrl; ?>/css/search.css" />

        <script type="text/javascript" src="<?php echo Yii::app()->theme->baseUrl; ?>/js/jquery-1.7.1.min.js"></script>
        <script type="text/javascript" src="<?php echo Yii::app()->theme->baseUrl; ?>/js/tab-search.js"></script>
        <script type="text/javascript" src="<?php echo Yii::app()->theme->baseUrl; ?>/js/jquery.tooltip.js"></script>

        <?php echo $this->analytics ?>

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
                    <p class="welcome">
                        <?php if (Yii::app()->user->isGuest == true): ?>
                            Xin mời! <a href="<?php echo Yii::app()->baseUrl ?>/dang-ky" title="Đăng ký" class="register"><strong>Đăng ký</strong></a> <a href="<?php echo Yii::app()->baseUrl ?>/dang-nhap" title="Đăng nhập" class="login"><strong>Đăng nhập</strong></a>
                        <?php else : ?>
                            Chào <b><?php echo Yii::app()->user->name; ?></b>! <a href="<?php echo Yii::app()->baseUrl ?>/tin-da-dang" title="Tin đã đăng" class="register"><strong>Tin đã đăng</strong></a><a href="<?php echo Yii::app()->baseUrl ?>/dang-tin" title="Đăng tin" class="register"><strong>Đăng tin</strong></a> <a href="<?php echo Yii::app()->baseUrl ?>/thay-doi-thong-tin" title="Thay đổi thông tin" class="login"><strong>Thay đổi thông tin</strong></a><a href="<?php echo Yii::app()->baseUrl ?>/login/default/logout" title="Thoát" class="login"><strong>Thoát</strong></a>
                        <?php endif ?>
                    </p>
                    <div class="clear"></div>

                    <div class="frame-nav">
                        <div class="left-nav"></div>
                        <div class="bg-nav">
                            <ul id="nav">
                                <?php
                                if (isset($this->function['menu_productstype']) && is_array($this->function['menu_productstype']))
                                    foreach ($this->function['menu_productstype'] as $value) {
                                        $class = ($this->type == $value['tag']) ? '  class="select-nav"' : '';
                                        echo '<li' . $class . '><a href="' . Yii::app()->baseUrl . '/san-pham/loai/' . $value['tag'] . '" title="' . $value['type_title'] . '" >' . $value['type_title'] . '</a></li>';
                                    }
                                ?>
                            </ul>  
                        </div> <!--bg nav-->
                    </div> <!--End frame nav-->
                </div> <!--End center header-->
                <div class="hd-right">
                    <p class="hotline"><?php echo $this->lang['company_phone'] ?></p>
                    <ul class="sub-hdright">
                        <li><a href="<?php echo Yii::app()->request->baseUrl ?>/<?php echo Yii::t('user', 'services.link') ?>" title="Dịch vụ nhà đất">Dịch vụ nhà đất</a></li>
                        <li><a href="<?php echo Yii::app()->request->baseUrl ?>/<?php echo Yii::t('user', 'news.link') ?>" title="Tư vấn phong thủy">Tin tức</a></li>
                        <li class="sub-hdright-none"><a href="<?php echo Yii::app()->request->baseUrl ?>/<?php echo Yii::t('user', 'contact.link') ?>" title="Liên hệ">Liên hệ</a></li>
                    </ul>
                </div> <!--End hot line-->
            </div><!--End header-->
            <div class="hder-fter">
                <div class="hder-fter-left">
                    <h2 class="title-list"><span><a href="<?php echo Yii::app()->baseUrl ?>/">TRANG CHỦ</a></span></h2>
                </div>
                <div class="all-right-fter" >
                    <form action="<?php echo Yii::app()->baseUrl ?>/tim-kiem" id="frm-search" name="frmlistproduct" method="post">
                        <select size="1" name="cat" class="select">
                            <option value="">Chọn nhóm sản phẩm</option>
                            <?php foreach ($this->function['menu_products'] as $value): ?>
                                <option value="<?php echo $value['cat_id'] ?>"><?php echo $value['cat_title'] ?></option>
                            <?php endforeach; ?>
                        </select>

                        <input type="text" name="keyword" class="input" />	
                        <input type="submit"  value="Tìm kiếm"/>  

                        <div class="hder-fter-right"> 
                            <a href="<?php echo Yii::app()->baseUrl ?>/hoi-vien" title="Hội viên" class="members">Hội viên</a>
                            <a href="<?php echo Yii::app()->baseUrl ?>/gioi-thieu/huong-dan-cac-thao-tac-tren-nhaphodepvn.html" title="" class="deposit">Hướng dẫn</a>
                        </div>
                    </form>
                </div>  <div class="clear"></div>
            </div> <!--End header footer-->

            <?php echo $content ?>

            <div id="footer">
                <h3 class="comname"><strong><?php echo $this->lang['company_name_footer'] ?></strong></h3>
                <p><?php echo $this->lang['address1'] ?></p>
                <?php echo ($this->lang['address2']) ? '<p>' . $this->lang['address2'] . '</p>' : '' ?>
                <p><?php echo $this->lang['copyright'] ?></p>
                <p><?php echo $this->lang['developed'] ?> <a href="http://dos.vn" target="_blank" title="Dos.vn">Dos.vn</a></p>
            </div><!--End footer-->
        </div><!--End wrapper-->
    </body>
</html>
