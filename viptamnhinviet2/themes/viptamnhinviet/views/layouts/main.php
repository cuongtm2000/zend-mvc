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

	<title><?php echo CHtml::encode($this->pageTitle); ?></title>
	<link rel="stylesheet" type="text/css" href="<?php echo Yii::app()->theme->baseUrl; ?>/css/dosvn.css"/>
	<link rel="stylesheet" type="text/css" href="<?php echo Yii::app()->theme->baseUrl; ?>/css/advanced-slider-base.css"
		  media="screen"/>
	<link rel="stylesheet" type="text/css" href="<?php echo Yii::app()->theme->baseUrl; ?>/css/prettyPhoto.css"
		  media="screen"/>

	<script type="text/javascript" src="<?php echo Yii::app()->theme->baseUrl; ?>/js/jquery-1.7.1.min.js"></script>
	<script type="text/javascript" src="<?php echo Yii::app()->theme->baseUrl; ?>/js/jquery.prettyPhoto.js"></script>

	<script type="text/javascript"
			src="<?php echo Yii::app()->theme->baseUrl; ?>/js/jquery.advancedSlider.min.js"></script>
	<!--[if IE]>
	<script type="text/javascript" src="<?php echo Yii::app()->theme->baseUrl; ?>/js/excanvas.compiled-ie.js"></script>
	<![endif]-->
	<!--[if lt IE 8]>
	<script type="text/javascript"
			src="<?php echo Yii::app()->theme->baseUrl; ?>/js/jquery.sider.banner-ie.js"></script> <![endif]-->
	<script type="text/javascript" src="<?php echo Yii::app()->theme->baseUrl; ?>/js/jquery.sider.banner.js"></script>
	<script type="text/javascript">
		$(document).ready(function () {
			runbanner(686, 255);
		});
	</script>
</head>
<body>
<div id="wrapper">
<div class="top-page">
	<?php if(Yii::app()->user->isGuest == true):?><p class="left">Bạn chưa đăng nhập tài khoản thành viên của Viptamtnhinviet!</p><?php endif?>

	<?php $this->widget('zii.widgets.CMenu', array(
		'id' => 'top-right',
		'items' => array(
			array('label' => 'Đăng ký thành viên', 'url' => array('/register'), 'visible' => Yii::app()->user->isGuest, 'linkOptions'=>array('title'=>'Đăng ký thành viên')),
			array('label' => 'Đăng nhập', 'url' => array('/login'), 'visible' => Yii::app()->user->isGuest, 'linkOptions'=>array('title'=>'Đăng ký thành viên')),
			array('label' => 'Bảng điều khiển', 'url' => array('/user'), 'visible' => !Yii::app()->user->isGuest, 'linkOptions'=>array('class'=>'none')),
			array('label' => 'Logout (' . Yii::app()->user->name . ')', 'url' => array('/site/logout'), 'visible' => !Yii::app()->user->isGuest, 'linkOptions'=>array('class'=>'none')),
		),
	)); ?>
	<div class="clear"></div>
</div>
<!--End top page-->
<div id="page">
<div id="header">
	<div id="header-left"><a href="<?php echo Yii::app()->baseUrl; ?>" title=""><img
			src="<?php echo Yii::app()->theme->baseUrl; ?>/images/logo.png" alt="Logo"/></a></div>
	<!--End header left-->
	<div class="banner-eca">
		<img src="<?php echo Yii::app()->theme->baseUrl; ?>/images/banner-eca.gif" alt=""/>
	</div>
	<div class="clear"></div>
</div>
<!--End header-->

<?php $this->widget('zii.widgets.CMenu', array(
	'htmlOptions' => array('class' => 'nav'),
	'items' => array(
		array('label' => 'Home', 'url' => array('/site/index')),
		array('label' => 'About', 'url' => array('/site/page', 'view' => 'about')),
		array('label' => 'Contact', 'url' => array('/site/contact')),
		array('label' => 'Register', 'url' => array('/register'), 'visible' => Yii::app()->user->isGuest),
		array('label' => 'Login', 'url' => array('/login'), 'visible' => Yii::app()->user->isGuest),
		array('label' => 'Logout (' . Yii::app()->user->name . ')', 'url' => array('/site/logout'), 'visible' => !Yii::app()->user->isGuest)
	),
)); ?>

<!-- <ul class="nav">
		  <li><a href="index.html" title="" class="select">Trang chủ</a></li>
		  <li><a href="about.html" title="">Giới thiệu</a></li>
		  <li><a href="product.html" title="">Sản phẩm</a></li>
		  <li><a href="services.html" title="">Gian hàng</a></li>
		  <li><a href="news.html" title="">Bản tin</a></li>
		  <li><a href="news.html" title="">Góc báo chí</a></li>
		  <li><a href="contact.html" title="">Liên hệ</a></li>
		  <li class="bton-view"><a href="#">Xem giỏ hàng</a></li>
	  </ul>-->

<div class="clear"></div>
<div id="banner">
	<ul class="slider">
		<li class="slider-item"><img src="<?php echo Yii::app()->theme->baseUrl; ?>/images/banner.jpg" alt="banner"/>
		</li>
		<li class="slider-item"><img src="<?php echo Yii::app()->theme->baseUrl; ?>/images/banner1.jpg" alt="banner"/>
		</li>
		<li class="slider-item"><img src="<?php echo Yii::app()->theme->baseUrl; ?>/images/banne2.jpg" alt="banner"/>
		</li>
	</ul>
	<!--End slider banner-->
	<div class="video">
		<a href="http://youtu.be/_-UIaGgRxkA" rel="prettyPhoto" title="Khoa Thương Mại điện tử - ĐH Thương Mại"><img
				src="<?php echo Yii::app()->theme->baseUrl; ?>/images/video.jpg"
				alt="Khoa Thương Mại điện tử - ĐH Thương Mại"/></a>
		<script type="text/javascript" charset="utf-8">
			$(document).ready(function () {
				$(".video a[rel^='prettyPhoto']").prettyPhoto();
			});
		</script>
	</div>
	<!--End video-->
	<div class="clear"></div>
</div>
<!--End banner-->
<form action="" name="frmsearch" class="frm-search">
	<input type="text"/>
	<select size="1" name="listproduct">
		<option value="">Chọn</option>
		<option value="6">Điện tử - Nhạc cụ</option>
		<option value="7">Máy ảnh - Máy quay</option>

	</select>
	<input type="submit" value="Tìm kiếm" title="Tìm kiếm" class="bton-search"/>
</form>
<!--End form search-->
<div id="content">
	<div id="left-content">
		<div class="frame-left-1">
			<h1 class="title-left"><span>DANH MỤC SẢN PHẨM</span></h1>
			<ul class="sub-pro">
				<li><a href="#" title="">Bất động sản</a></li>
				<li><a href="#" title="">Cho mẹ và bé</a></li>
				<li><a href="#" title="">Du lịch giải trí - Du lịch</a></li>

			</ul>
		</div>
		<!--End frame-left 1-->
		<div class="frame-left-2">
			<h3 class="title-support"><span>HỖ TRỢ TRỰC TUYẾN</span></h3>
			<?php $supports = new Supports(); var_dump($supports->listItem());?>
			<ul class="support">
				<li>
					<div class="img-sport"><a href="ymsgr:sendim?groupitsoft"><img
							src="http://opi.yahoo.com/online?u=groupitsoft&amp;m=g&amp;t=14&amp;l=us"
							class="img-support" alt="groupitsoft"/></a>
					</div>
					<div class="right-spport"><p class="title-sport-right">HT ĐĂNG TIN VÀ SẢN PHẨM</p>

						<p>0618. 850 747</p>
					</div>
					<div class="clear"></div>
				</li>
			</ul>
		</div>
		<!--End frame left 2-->
		<div class="frame-left-1">
			<h3 class="title-left"><span>SẢN PHẨM TIÊU BIỂU</span></h3>
			<ul class="sub-ty-pro">
				<li>
					<div class="img-ty-pro">
						<a href="product-info.html" title=""><img src="images/ty-pro-1.jpg" alt=""/></a>
					</div>

					<div class="right-ty-pro">
						<h2 class="title-pro"><a href="product-info.html" title="">apple macbook air mc234ll/a
							13.3" display - aluminum</a></h2>

						<p class="price"><b>Giá : </b> <span>36.800</span> <strong>K</strong></p>
					</div>
					<div class="clear"></div>
				</li>


			</ul>
			<!--End typical products-->
			<p class="all-view-pro"><a href="#" title="">Xem thêm sản phẩm &raquo;</a></p>
		</div>
		<!--End frame left 1-->
		<div class="frame-left-1">
			<h3 class="title-left"><span>KHUYẾN MÃI MỚI NHẤT</span></h3>
			<ul class="sub-ty-pro">
				<li>
					<div class="img-ty-pro">
						<a href="product-info.html" title=""><img src="images/ty-pro-1.jpg" alt=""/></a>
					</div>

					<div class="right-ty-pro">
						<h2 class="title-pro"><a href="product-info.html" title="">apple macbook air mc234ll/a
							13.3" display - aluminum</a></h2>

						<p class="price"><b>Giá : </b> <span>36.800</span> <strong>K</strong></p>
					</div>
					<div class="clear"></div>
				</li>

			</ul>
			<!--End Khuyen mai moi nhat-->
			<p class="all-view-pro"><a href="#" title="">Xem thêm sản phẩm &raquo;</a></p>
		</div>
		<!--End frame left 1-->
		<h3 class="title-adv-left">ĐỐI TÁC VÀNG</h3>
		<ul class="adv-left">
			<li><a href="#" title="Khoi su doanh nghiep" target="_blank"><img src="images/kshg.jpg"
																			  alt="khoi su doanh nghiep"/></a>
			</li>
			<li><a href="http://www.vcbhcm.com.vn/tygia.htm" title="Ty gia ngoai te hom nay"
				   target="_blank"><img src="images/picture2.jpg" alt="Ty gia ngoai te"/></a></li>
			<li><a href="http://giavanghomnay.net/" title="Ty gia vang hom nay" target="_blank"><img
					src="images/timthumb.jpg" alt="Ty gia Vang"/></a></li>
			<li><a href="#" title="Cac trung tam phan phoi" target="_blank"><img src="images/ttpp-copy.jpg"
																				 alt="Cac trung tam phan phoi"/></a>
			</li>
		</ul>
		<!--End doi tac vang-->
		<h3 class="title-member-left-1">THÀNH VIÊN QUYÊN GÓP NHIỀU NHẤT</h3>
		<ul class="list-member">
			<li><label><strong>KenNguyen</strong></label> <span>2619 <b>K</b></span>

				<div class="clear"></div>
			</li>
			<li><label><strong>KenNguyen</strong></label> <span>2619 <b>K</b></span>

				<div class="clear"></div>
			</li>
		</ul>
		<!--End thanh vien quyen gop nhieu nhat-->
		<h3 class="title-member-left-2">THÀNH VIÊN QUYÊN GÓP MỚI NHẤT</h3>
		<ul class="list-member-2 list-member">
			<li><label><strong>KenNguyen</strong></label> <span>2619 <b>K</b></span>

				<div class="clear"></div>
			</li>
			<li><label><strong>KenNguyen</strong></label> <span>2619 <b>K</b></span>

				<div class="clear"></div>
			</li>
		</ul>
		<!--End thanh vien quyen gop moi nhat-->
	</div>
	<!--End left content-->
	<div id="right-content">
		<?php if (isset($this->breadcrumbs)): ?>
			<?php
			$this->widget('zii.widgets.CBreadcrumbs', array(
				'links' => $this->breadcrumbs,
			));
			?><!-- breadcrumbs -->
		<?php endif ?>

		<?php echo $content; ?>
	</div>
	<!--End right content-->
	<div class="clear"></div>
</div>
<!--End content-->
<div class="frame-left-2">
	<h3 class="title-booth"><span>GIAN HÀNG TIÊU BIỂU CỦA VIP TẦM NHÌN VIỆT</span></h3>

	<div class="bg-booth">
		<div class="item-booth">
			<div class="img-booth"><a href="#" title=""><img src="images/pro-ty.jpg" alt=""/></a></div>
			<h3 class="title-member"><a href="#" title="">xuanchien</a></h3>
		</div>


	</div>
</div>
<!--End gian hang tieu bieu-->
<div class="bg-hotline">
	<p class="title-sport-right">HT KINH DOANH</p>

	<p><b>Mr.Nam</b> 0987 976 879</p>

	<p class="title-sport-right">HT SẢN PHẨM</p>

	<p><b>Mr.Tân</b> 0908 273 266</p>

	<p class="title-sport-right">HT ĐĂNG TIN VÀ SẢN PHẨM</p>

	<p>0618 850 747</p>
</div>
<!--End frame hotline-->
<div id="footer">
	<ul class="nav-fter">
		<li><a href="index.html" title="">Trang chủ</a></li>
		<li><a href="about.html" title="">Giới thiệu</a></li>
		<li><a href="product.html" title="">Sản phẩm</a></li>
		<li><a href="services.html" title="">Gian hàng</a></li>
		<li><a href="news.html" title="">Bản tin</a></li>
		<li><a href="news.html" title="">Góc báo chí</a></li>
		<li><a href="contact.html" title="">Liên hệ</a></li>
	</ul>
	<div class="clear"></div>
	<div class="frame-info-footer">
		<div class="left-fter">
			<p>Bản quyền 2012 thuộc về <span
					class="title-company">CÔNG TY CỔ PHẦN TM - DV VIP TẦM NHÌN VIỆT</span></p>

			<p>Trụ sở:<span> Lô L4,KP.1, P.Bửu Long, Biên Hòa, Đồng Nai</span></p>

			<p>Điện thoại:<span> 0618 850 747</span></p>

			<p>Fax: <span>0618 850 747</span></p>
		</div>
		<!--End left fter-->

		<div class="right-fter">
			<p>Giấy phép kinh doanh số: 3602648481</p>

			<p>Do Sở Kế Hoạch và Đầu Tư Tỉnh Đồng Nai cấp ngày: 11 tháng 11 năm 2011</p>

			<p class="statistics">Lượt truy cập : <span>10.999.990</span> - Trực Tuyến : <span>300</span></p>

			<p>Design by Website <a href="http://dos.vn">Dos.vn</a></p>
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

