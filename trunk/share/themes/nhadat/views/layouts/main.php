<!DOCTYPE html PUBLIC "-//W3C//DTD XHTML 1.0 Transitional//EN" "http://www.w3.org/TR/xhtml1/DTD/xhtml1-transitional.dtd">
<html xmlns="http://www.w3.org/1999/xhtml">
    <head>
        <meta http-equiv="Content-Type" content="text/html; charset=utf-8" />
        <meta http-equiv="content-language" content="vi" />
        <meta name="revisit-after" content="1 days" />
        <meta name="robots" content="noodp,index,follow" />

        <link rel="SHORTCUT ICON" href="<?php echo Yii::app()->theme->baseUrl; ?>/images/favicon.ico" type="image/x-icon" />
        <link rel="icon" href="<?php echo Yii::app()->theme->baseUrl; ?>/images/favicon.ico" type="image/gif" />

        <link href="<?php echo Yii::app()->theme->baseUrl; ?>/css/dosvn.css" rel="stylesheet" type="text/css" />
        <script type="text/javascript" src="<?php echo Yii::app()->theme->baseUrl; ?>/js/jquery-1.7.1.min.js"></script>
        <script type="text/javascript" src="<?php echo Yii::app()->theme->baseUrl; ?>/js/tab-sub-right.js"></script>
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
                    <p class="welcome">Xin mời ! <a href="registration.html" title="Đăng ký" class="regis">Đăng ký</a> hoặc <a href="<?php echo Yii::app()->request->baseUrl?>/dang-nhap" title="Đăng nhập" class="login">Đăng nhập</a></p>
                    <div class="frame-nav">
                        <div class="left-nav"></div>
                        <div class="bg-nav">
                            <ul class="nav">
                                <li><a href="index.html" title="" class="select-nav">Chào bán</a></li>
                                <li><a href="about.html" title="">Cho thuê</a></li>
                                <li class="bder-none"><a href="news.html" title="">Sang nhượng</a></li>
                            </ul>  
                        </div> <!--bg nav-->
                    </div> <!--End frame nav-->
                </div> <!--End center header-->
                <div class="hd-right">
                    <p class="hotline"><?php echo $this->lang['company_phone'] ?></p>
                    <ul class="sub-hdright">
                        <li><a href="<?php echo Yii::app()->request->baseUrl?>/<?php echo Yii::t('user', 'services.link')?>" title="Dịch vụ nhà đất">Dịch vụ nhà đất</a></li>
                        <li><a href="<?php echo Yii::app()->request->baseUrl?>/<?php echo Yii::t('user', 'news.link')?>" title="Tư vấn phong thủy">Tư vấn phong thủy</a></li>
                        <li class="sub-hdright-none"><a href="<?php echo Yii::app()->request->baseUrl?>/<?php echo Yii::t('user', 'contact.link')?>" title="Liên hệ">Liên hệ</a></li>
                    </ul>
                </div> <!--End hot line-->
            </div><!--End header-->
            <div class="hder-fter">
                <div class="hder-fter-left">
                    <h2 class="title-list"><span><a href="<?php echo Yii::app()->baseUrl?>">TRANG CHỦ</a></span></h2>
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
						<div class="searchbox">
							<input type="text" name="search" />	
						</div>  	
                        <div class="hder-fter-right">
                            <input type="submit"  value="Tìm kiếm" class="bton-search"/>  
                            <a href="#" title="" class="members">Hội Viện</a>
                            <a href="#" title="" class="deposit">Ký Gửi</a>
                        </div>
                    </form>
                </div>  <div class="clear"></div>
            </div> <!--End header footer-->

            <?php echo $content ?>

            <div id="footer">
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
