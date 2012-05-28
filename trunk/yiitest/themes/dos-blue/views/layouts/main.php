<!DOCTYPE html PUBLIC "-//W3C//DTD XHTML 1.0 Transitional//EN" "http://www.w3.org/TR/xhtml1/DTD/xhtml1-transitional.dtd">
<html xmlns="http://www.w3.org/1999/xhtml">
<head>
    <meta http-equiv="Content-Type" content="text/html; charset=utf-8" />
    <meta http-equiv="content-language" content="vi, en" />
    <meta name="revisit-after" content="1 days" />
    <meta name="robots" content="noodp,index,follow" />
    <link rel="SHORTCUT ICON" href="<?php echo Yii::app()->theme->baseUrl; ?>/images/favicon.ico" type="image/x-icon" />
    <link rel="icon" href="<?php echo Yii::app()->theme->baseUrl; ?>/images/favicon.ico" type="image/gif" />
    <link rel="stylesheet" type="text/css" href="<?php echo Yii::app()->theme->baseUrl; ?>/css/dosvn.css" />

    <title><?php echo CHtml::encode($this->pageTitle); ?><?php echo ($this->title) ? ' - '.CHtml::encode($this->title) : '' ?></title>
    <meta name="keywords" content="<?php echo $this->keywords ?>" />
    <meta name="description" content="<?php echo $this->description ?>" />

    <!-- <script type="text/javascript" src="<?php echo Yii::app()->theme->baseUrl; ?>/js/jquery-1.7.1.min.js"></script> -->

    <!--Slider thumb images-->
    <!-- <script type="text/javascript" src="<?php echo Yii::app()->theme->baseUrl; ?>/js/jcarousellite_1.0.1.js"></script>
    <script type="text/javascript" src="<?php echo Yii::app()->theme->baseUrl; ?>/js/scroller.js"></script> -->
    <!--End slider thumb images-->

    <?php if(($this->id == 'site') && ($this->action->id == 'index')):?>
        <link rel="stylesheet" type="text/css" href="<?php echo Yii::app()->theme->baseUrl; ?>/css/advanced-slider-base.css" />
        <script type="text/javascript" src="<?php echo Yii::app()->theme->baseUrl; ?>/js/jquery.advancedSlider.min.js"></script>
        <!--[if IE]><script type="text/javascript" src="<?php echo Yii::app()->theme->baseUrl; ?>/js/excanvas.compiled-ie.js"></script><![endif]-->
        <!--[if lt IE 8]><script type="text/javascript" src="<?php echo Yii::app()->theme->baseUrl; ?>/js/jquery.sider.banner-ie.js"></script> <![endif]-->
        <script type="text/javascript" src="<?php echo Yii::app()->theme->baseUrl; ?>/js/jquery.sider.banner.js"></script>
        <script type="text/javascript">
            $(document).ready(function(){
                runbanner(254,178);
            });
        </script>
    <?php endif?>
</head>
<body>
<div id="wrapper">
	<div class="top-page">
    	<div class="left-top"><a href="#" title="">Đăng ký</a> <span>|</span> <a href="#" title="">Đăng nhập</a></div>
        <form class="frm-test" action="" method="post">
        	<label>www.</label>
        	<input type="text" name="domain" size="25"/>
            <select size="1">
            	<option value="0">.com</option>
                <option value="0">.net</option>
                <option value="0">.info</option>
                <option value="0">.biz</option>
                <option value="0">.com.vn</option>
                <option value="0">.vn</option>
            </select>
            <input type="button" class="bt-test" value="kiểm tra" title="kiểm tra" />
        </form> <div class="clear"></div>
    </div> <!--End top page-->
    <div id="header">
    	<div id="logo"><a href="<?php echo Yii::app()->request->baseUrl.'/'.Yii::app()->session['lang']?>" title="Home page"><img src="<?php echo Yii::app()->theme->baseUrl; ?>/images/logo.png" alt="Logo" /></a></div>
        <ul id="nav">
            <li><a href="#" title="" class="select"><span>Mẫu website</span></a></li>
            <li><a href="#" title=""><span>Cẩm nang</span></a></li>
            <li><a href="" title=""><span>Hướng dẫn</span></a></li>
            <li><a href="" title=""><span>Chính sách đại lý</span></a></li>
            <li><a href="" title=""><span>Dịch vụ</span></a></li>
            <li><a href="" title=""><span>Giải pháp</span></a></li>
            <li><a href="" title=""><span>Khách hàng</span></a></li>
            <li class="none-line"><a href="<?php echo LANGURL.'/'.Yii::t('main', 'contact.link')?>" title="<?php echo Yii::t('main', 'contact.name')?>" title="<?php echo Yii::t('main', 'contact.name')?>"><span><?php echo Yii::t('main', 'contact.name')?></span></a></li>
        </ul> <div class="clear"></div>
	</div> <!--End header-->
    
	<?php echo $content; ?>

</div><!--End wrapper-->
<div class="bt-page">
	<div class="footer">
    	<div class="tent-footer">
			<div class="logo-fter"><img src="<?php echo Yii::app()->theme->baseUrl; ?>/images/logo-2.png" alt="" /></div>
            <ul id="nav-fter">
            	<li class="left row-1">
                	<h4>Thiết kế website</h4>
                    <p><a href="#" title="">Tạo web trực tuyến</a></p>
                    <p><a href="#" title="">Thiết kế web theo nhu cầu</a></p>
                    <p><a href="#" title="">Tối ưu hóa website</a></p>
                    <p><a href="#" title="">Nâng cấp website</a></p>
                    <p><a href="#" title="">Gia công website</a></p>
                </li>
                <li class="left">
                	<div class="tent-nav-fter">
                        <h4>Quảng cáo trực tuyến</h4>
                        <p><a href="#" title="">Trên google</a></p>
                        <p><a href="#" title="">Các trang báo</a></p>
                        <p><a href="#" title="">E-mail quảng cáo</a></p>
                        <p><a href="#" title="">Seo web</a></p>
                        <p><a href="#" title="">Quảng cáo trên rao vật</a></p>
                    </div>
                </li>
                <li class="left">
                	<div class="tent-nav-fter">
                        <h4>Tên miền</h4>
                        <p><a href="#" title="">Kiểm tra tên miền</a></p>
                        <p><a href="#" title="">Bảng giá tên miền</a></p>
                    </div>
                </li>
                <li  class="left">
                	<div class="tent-nav-fter">
                        <h4>Mẫu website</h4>
                        <p><a href="#" title="">Doanh nghiệp</a></p>
                        <p><a href="#" title="">Nhóm bạn</a></p>
                        <p><a href="#" title="">Cá nhân</a></p>
                    </div>    
                </li>
                <li  class="left row-5">
                	<div class="tent-nav-fter">
                        <h4>Hosting</h4>
                        <p><a href="#" title="">Báo giá hosting</a></p>
                        <p><a href="#" title="">Báo giá server</a></p>
                    </div>
                </li>
                <li  class="left row-6">
                	<div class="tent-nav-fter">
                        <h4>Support</h4>
                        <p><a href="#" title="">Hướng dẫn</a></p>
                        <p><a href="#" title="">Kỹ thuật</a></p>
                        <p><a href="#" title="">Kế toán</a></p>
                	</div>
                </li>
                <li class="row-7">
                	<div class="tent-nav-fter">
                        <h4>Đại lý</h4>
                        <p><a href="#" title="">Chính sách trả thưởng</a></p>
                        <p><a href="#" title="">Danh sách đại lý</a></p>
                        <p><a href="#" title="">Đăng ký làm đại lý</a></p>
                	</div>
                </li>
            </ul> <!--End menu footer--> <div class="clear"></div>
            <p></p>
		</div>
    </div>
    <div class="copyright">
    	<div class="tent-copyright">
    		<p>&copy; <?php echo date('Y')?> Dos.vn. All Rights Reserved</p>
        </div>
	</div>
</div>
</body>
</html>