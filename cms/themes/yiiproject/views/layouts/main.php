<!DOCTYPE html PUBLIC "-//W3C//DTD XHTML 1.0 Transitional//EN" "http://www.w3.org/TR/xhtml1/DTD/xhtml1-transitional.dtd">
<html xmlns="http://www.w3.org/1999/xhtml">
<head>
    <meta http-equiv="Content-Type" content="text/html; charset=utf-8" />
    <meta http-equiv="content-language" content="en" />
    <meta name="revisit-after" content="1 days" />
    <meta name="robots" content="noodp,index,follow" />

    <link rel="SHORTCUT ICON" href="<?php echo Yii::app()->theme->baseUrl; ?>/images/favicon.ico" type="image/x-icon" />
    <link rel="icon" href="<?php echo Yii::app()->theme->baseUrl; ?>/images/favicon.ico" type="image/gif" />

    <link rel="stylesheet" type="text/css" href="<?php echo Yii::app()->theme->baseUrl; ?>/css/dosvn.css" media="screen"/>
    <script type="text/javascript" src="<?php echo Yii::app()->theme->baseUrl; ?>/js/jquery-1.7.1.min.js"></script>
    <script type="text/javascript" src="<?php echo Yii::app()->theme->baseUrl; ?>/js/js-func.js"></script>

    <link rel="stylesheet" type="text/css" href="<?php echo Yii::app()->theme->baseUrl; ?>/css/lightbox.css" media="screen"/>
    <script type="text/javascript" src="<?php echo Yii::app()->theme->baseUrl; ?>/js/lightbox.js"></script>

    <title><?php echo CHtml::encode($this->pageTitle); ?><?php echo ($this->setting['title']) ? ' - '.CHtml::encode($this->setting['title']) : '' ?></title>
    <meta name="keywords" content="<?php echo CHtml::encode($this->setting['keywords']) ?>" />
    <meta name="description" content="<?php echo CHtml::encode($this->setting['description']) ?>" />
</head>
<body>
<div id="wrapper">
		<div id="logo"><a href="<?php echo Yii::app()->baseUrl.$this->setLangUrl()?>" title="Logo Yii Project"><img src="<?php echo Yii::app()->theme->baseUrl; ?>/images/logo.png" alt="Logo Yii Project" /></a></div><!--End left header-->
		<h1 id="company">Quản trị viên web</h1>
		<div id="navigation">
            <?php $this->widget('ext.MenuMultiLevel.MenuMultiLevel', array('linkLabelWrapper' => 'span', 'lastItemCssClass' => 'last', 'subTagOpen' => '<div class="dd-holder"><div class="dd-t"></div><div class="dd">', 'subTagClose' => '<div class="cl">&nbsp;</div></div><div class="dd-b"></div></div>'));?>
			<!--<ul>
				<li><a href="#"><span>Home</span></a></li>
				<li><a href="#" class="active"><span>Jobs</span></a>
					<div class="dd-holder">
						<div class="dd-t"></div>
						<div class="dd">
							<ul>
								<li><a href="#">Sub Level 1</a></li>
								<li><a href="#">Sub Level 1</a>
									<div class="dd-holder">
										<div class="dd-t"></div>
										<div class="dd">
											<ul>
												<li><a href="#">Sub Level 2</a></li>
												<li><a href="#">Sub Level 2</a></li>
												<li class="last"><a href="#">Sub Level 2</a>
													<div class="dd-holder">
														<div class="dd-t"></div>
														<div class="dd">
															<ul>
																<li><a href="#">Sub Level 3</a></li>
																<li><a href="#">Sub Level 3</a></li>
																<li class="last"><a href="#">Sub Level 3</a>

																</li>
															</ul>
															<div class="cl">&nbsp;</div>
														</div>
														<div class="dd-b"></div>
													</div>
												</li>
											</ul>
											<div class="cl">&nbsp;</div>
										</div>
										<div class="dd-b"></div>
									</div>

								</li>
								<li><a href="#">Sub Level 1</a></li>
								<li><a href="#">Sub Level 1</a></li>
								<li class="last"><a href="#">Sub Level 1</a></li>
							</ul>
							<div class="cl">&nbsp;</div>
						</div>
						<div class="dd-b"></div>
					</div>
				</li>
				<li><a href="#"><span>Contact Us</span></a>
				</li>
				<li><a href="#"><span>Portfolio</span></a></li>
				<li><a href="#"><span>Blog</span></a></li>
			</ul> -->
			<a href="#" class="buy-now">Buy Now</a>
		</div><!--End menu-->
        <div class="clear"></div>
        <div class="main-about">
        	<div class="left-main-about">
            	<h1 class="maia-super">Bạn muốn được tìm thấy trên web. Chúng tôi muốn&nbsp;giúp bạn.</h1>
                <p class="maia-small">Nhận dữ liệu, công cụ và chẩn đoán để có trang web tốt, thân thiện với Google.</p>
                <a class="maia-button" href="#" title="">Đăng nhập vào Công cụ quản trị trang web</a>
            </div> <!--End left-main-about-->
            <div class="right-main-about">
            	<a class="lb" data-lightbox-height="422" data-lightbox-width="750" href="http://www.youtube.com/v/COcl6ax38IY?autoplay=1&amp;hl=vi&amp;cc_lang_pref=vi&amp;cc_load_policy=1"><img src="<?php echo Yii::app()->theme->baseUrl; ?>/images/stage.png" alt="stage" /></a>
				
				<script type="text/javascript">
					var stageTeaser = new gweb.ui.LightBox();
					stageTeaser.init();
				</script>
            </div> <!--End right-main-about--> <div class="clear"></div>
        </div> <!--End main-about -->
        <div class="frame-panel">
        	<div class="panel">
                <div class="img-panel"><img src="<?php echo Yii::app()->theme->baseUrl; ?>/images/webmaster_tools-128.png" alt="tool" /></div>
                <h3 class="title-panel">Công cụ quản trị trang web</h3>
                <p>Hiểu và cải tiến trang web của bạn trong Tìm kiếm của Google.</p>
                <a href="" title="">Bắt đầu</a>
            </div>
            <div class="panel">
                <div class="img-panel"><img src="<?php echo Yii::app()->theme->baseUrl; ?>/images/webmaster_tools-128.png" alt="tool" /></div>
                <h3 class="title-panel">Công cụ quản trị trang web</h3>
                <p>Hiểu và cải tiến trang web của bạn trong Tìm kiếm của Google.</p>
                <a href="" title="">Bắt đầu</a>
            </div>
            <div class="panel-right">
                <div class="img-panel"><img src="<?php echo Yii::app()->theme->baseUrl; ?>/images/webmaster_tools-128.png" alt="tool" /></div>
                <h3 class="title-panel">Công cụ quản trị trang web</h3>
                <p>Hiểu và cải tiến trang web của bạn trong Tìm kiếm của Google.</p>
                <a href="" title="">Bắt đầu</a>
            </div> <div class="clear"></div>
        </div>
        <div id="content">
        	 <div id="rightcontent">
            	<div class="">
                    <div class="img-panel"><img src="<?php echo Yii::app()->theme->baseUrl; ?>/images/webmaster_tools-128.png" alt="tool" /></div>
                    <h3 class="title-panel">Công cụ quản trị trang web</h3>
                    <p>Hiểu và cải tiến trang web của bạn trong Tìm kiếm của Google.</p>
                    <a href="" title="">Bắt đầu</a>
                </div>
                <div class="">
                    <div class="img-panel"><img src="<?php echo Yii::app()->theme->baseUrl; ?>/images/webmaster_tools-128.png" alt="tool" /></div>
                    <h3 class="title-panel">Công cụ quản trị trang web</h3>
                    <p>Hiểu và cải tiến trang web của bạn trong Tìm kiếm của Google.</p>
                    <a href="" title="">Bắt đầu</a>
                </div>
            </div><!--End right content-->
        	<div id="leftcontent">
            	<h1 class="title-left"><span>Sản phẩm</span></h1>
                <ul class="frame-leftcontent sub-cat">
                	<li><a href="#" title="" >Women</a>
                        <ul>
                            <li><a href="#" title="">Tops</a></li>
                            <li><a href="#" title="">Skirts</a></li>
                            <li><a href="#" title="">Jackets</a></li>
                        </ul>
                    </li>
                    <li><a href="#" title="">Men</a>
                        <ul>
                            <li><a href="#" title="">Tops</a></li>
                            <li><a href="#" title="">Skirts</a></li>
                            <li><a href="#" title="">Jackets</a></li>
                        </ul>
                    </li>
                    <li><a href="#" title="">Day Dresses</a></li>
                    <li><a href="#" title="">Evening Dresses</a></li>
                    <li><a href="#" title="">Coats</a></li>
                    <li><a href="#" title="">Sweemwear</a></li>
                </ul>
				<!-- <h1 class="title-box"><span>Hỗ trợ trực tuyến</span></h1>
				<ul class="frame-leftcontent support">
					<li>Hỗ trợ kỹ thuật</li>
					<li><a href="ymsgr:sendim?thanhansoft"><img src="http://opi.yahoo.com/online?u=thanhansoft&amp;m=g&amp;t=2&amp;l=us" alt="thanhansoft" /></a></li>
					<li>Hỗ trợ doanh nghiệp</li>
					<li><a href="ymsgr:sendIM?thanhansoft">
						<img src="http://mail.opi.yahoo.com/online?u=thanhansoft&amp;m=g&amp;t=2" border="0" alt="yahoo" /></a></li>
					<li>Hỗ trợ doanh nghiệp</li>
					<li><a href="ymsgr:sendIM?thanhansoft">
						<img src="http://mail.opi.yahoo.com/online?u=thanhansoft&amp;m=g&amp;t=2" border="0" alt="yahoo" /></a></li>
				</ul> -->
				<h1 class="title-box"><span>Thống Kê Truy Cập</span></h1>
				<ul class="frame-leftcontent statistics">
					<li>Truy cập trong ngày: 000018</li>
					<li>Đang online: 3</li>
					<li>Tổng số lượt truy cập: 038082</li>
				</ul>
            </div><!--End left content--> <div class="clear"></div>
        </div><!--End content-->
</div><!--End wrapper-->
<div id="bg-footer">
    <div id="footer">
		<ul class="menu-footer">
			<li><a class="first" href="about.html">About us</a></li>
			<li><a href="services.html">Customer Service</a></li>
			<li><a href="#">Site Map</a></li>
			<li><a href="#">Search Terms</a></li>
			<li><a href="#">Advanced Search</a></li>
			<li><a class="none-line" href="contact.html">Contact Us</a></li>
		</ul> <div class="clear"></div>
		<p>&copy; 2011 Jewelry Vip. All Rights Reserved.</p>
		<div class="copyright">Design by Website <a href="#" title="">azweb.vn</a></div> <div class="clear"></div>
    </div><!--End Footer-->
</div><!--End bg fter-->
</body>
</html>

