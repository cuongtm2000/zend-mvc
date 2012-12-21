<!DOCTYPE html PUBLIC "-//W3C//DTD XHTML 1.0 Transitional//EN" "http://www.w3.org/TR/xhtml1/DTD/xhtml1-transitional.dtd">
<html xmlns="http://www.w3.org/1999/xhtml">
<head>
<meta http-equiv="Content-Type" content="text/html; charset=utf-8" />
<meta http-equiv="content-language" content="vi,en" />
<meta name="revisit-after" content="1 days" />
<meta name="robots" content="noodp,index,follow" />

<link rel="SHORTCUT ICON" href="<?php echo Yii::app()->theme->baseUrl; ?>/images/favicon.ico" type="image/x-icon" />
<link rel="icon" href="<?php echo Yii::app()->theme->baseUrl; ?>/images/favicon.ico" type="image/gif" />

<link rel="stylesheet" type="text/css" href="<?php echo Yii::app()->theme->baseUrl; ?>/css/dos.vn.css" media="screen"/>
<script type="text/javascript" src="<?php echo Yii::app()->theme->baseUrl; ?>/js/jquery-1.8.2.min.js"></script>

<script type="text/javascript" src="<?php echo Yii::app()->theme->baseUrl; ?>/js/time-day.js"></script>
<script type="text/javascript" src="<?php echo Yii::app()->theme->baseUrl; ?>/js/link-index.js"></script>

<script type="text/javascript" src="<?php echo Yii::app()->theme->baseUrl; ?>/js/ddaccordion.js"></script>
<script type="text/javascript" src="<?php echo Yii::app()->theme->baseUrl; ?>/js/ddaccordion.effect.js"></script>


<title><?php echo CHtml::encode($this->pageTitle); ?><?php echo ($this->setting['title']) ? ' - '.CHtml::encode($this->setting['title']) : '' ?></title>
<meta name="keywords" content="<?php echo CHtml::encode($this->setting['keywords']) ?>" />
<meta name="description" content="<?php echo CHtml::encode($this->description) ?>" />

<!--[if lt IE 8]>
<link rel="stylesheet" type="text/css" href="<?php echo Yii::app()->theme->baseUrl; ?>/css/ie6.css" />
<![endif]-->
</head>
<body>
<div id="wrapper">
	<div class="header">
       <div class="time-day"><script type="text/javascript">document.write(  dateText + " ")</script></div>
        <ul class="nav-top">
            <li><a href="/sotaichinh" title="">Trang chủ</a></li>
            <li><a href="/sotaichinh/lien-he" title="">Liên hệ</a></li>
            <li class="last-top"><a href="" title="">Liên kết website</a></li>
        </ul> <div class="clear"></div>
    </div>
    <div id="logo">
		<?php $this->widget('ext.Logo.LogoStatic')?>
		<!--<img src="<?php echo Yii::app()->theme->baseUrl; ?>/images/banner.jpg" alt="so tai chinh" />-->
	</div>
	
	<?php $this->widget('ext.MenuMultiLevel.MenuMultiLevel', array('lastItemCssClass' => 'last', 'linkLabelWrapper' => 'span' ));?> <div class="clear"></div>
	

	<div class="main-wrapper">    
		<div id="content">
			<?php echo $content; ?>
			<div class="clear"></div>
		</div><!--End content-->
	</div> <!--End main-wrapper -->
	<div id="footer">
		<ul class="menu-footer">
			<li><a href="/" title="Trang chủ">Trang chủ</a></li>
			<li><a href="/gioi-thieu" title="Giới thiệu">Giới thiệu</a></li>
			<li><a href="/san-pham" title="Tin tức - sự kiện">Tin tức - sự kiện</a></li>
			<li><a href="/dich-vu" title="Dịch vụ">Thành tựu và định hướng</a></li>
			<li><a href="/tin-tuc-su-kien" title="Tin tức &amp; sự kiện">Văn bản mới ban hành</a></li>
			<li><a href="/video" title="Video">Đơn vị trực thuộc</a></li>
			<li><a class="none-line" href="/lien-he" title="Liên hệ">Tư liệu chuyên ngành</a></li>
			<li class="none-line"><a href="javascript:scroll(0,0)" title="">Lên đầu trang</a></li>
		</ul>
		<div class="footer-tent">
			<div class="copyright">
				<p>&copy; 2012 Bản quyền thuộc Sở Tài Chính tỉnh Đồng Nai </p>
				<p>Địa chỉ : Số 42 đường Cách Mạng Tháng 8, phường Quang Vinh, Thành phố Biên Hoà , tỉnh Đồng Nai </p>
				<p>Điện thoại: 0613. 847778; Fax: 0613. 847433 - Email: <a href="mailto:stc@dongnai.gov.vn" >stc@dongnai.gov.vn</a> </p>
				<p>&reg; Ghi rõ nguồn "Website Sở Tài Chính tỉnh Đồng Nai" khi phát lại thông tin từ website này.</p>				
			</div>
			<?php $this->getPosition('footer');?>
			<div class="clear"></div>
		</div>    
	</div><!--End Footer-->
</div><!--End wrapper-->
</body>
</html>