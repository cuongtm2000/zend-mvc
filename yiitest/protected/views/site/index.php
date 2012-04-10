<div id="header-wrap">
    <div class="frame-title">
        <h1 class="title-page">Thiết kế web Trực tuyến <img src="<?php echo Yii::app()->theme->baseUrl; ?>/images/free.png" alt="Free" />  &nbsp;ấn tượng, giá rẻ!</h1>
        <p>Đăng ký tài khoản, chọn mẫu website, chọn Module &amp; chức năng, chạy thử nghiệm, thanh toán, chạy độc lập</p>
    </div>
    <div id="banner">
		<div id="allinone_carousel_charming">
			<ul class="allinone_carousel_list">
				<li><img src="<?php echo Yii::app()->theme->baseUrl; ?>/images/web-preview.png" alt="" /></li>
				<li><img src="<?php echo Yii::app()->theme->baseUrl; ?>/images/web-preview-1.png" alt="" /></li>
				<li><img src="<?php echo Yii::app()->theme->baseUrl; ?>/images/web-preview-2.png" alt="" /></li>
				<li><img src="<?php echo Yii::app()->theme->baseUrl; ?>/images/web-preview-3.png" alt="" /></li>
				<li><img src="<?php echo Yii::app()->theme->baseUrl; ?>/images/web-preview-4.png" alt="" /></li>
			</ul>
		</div>
    </div>
    <form action="<?php echo Yii::t('main', 'msgButton')?>" class="frm-create" name="frm-create" method="post">
        <h2><?php echo Yii::t('main', 'msgCreate')?></h2>
		<ul>
            <li><input type="text" name="email" value="Email Address" onblur="if(this.value=='') this.value='Email Address'" onfocus="if(this.value =='Email Address' ) this.value=''" /></li>
            <li><input type="password" name="password" value="Pass word" onblur="if(this.value=='') this.value='Pass word'" onfocus="if(this.value =='Pass word' ) this.value=''" /></li>
            <li>
                <select name="bussiness">
					<?php foreach($listBusiness as $value):?>
                    	<option value="<?php echo $value['bussiness_id']?>"><?php echo $value['bussiness_name']?></option>
					<?php endforeach?>
                </select>
            </li>
            <li><input type="submit" class="get" value="  <?php echo Yii::t('main', 'createweb')?>  "/></li>
        </ul>
    </form><div class="clear"></div>
</div><!--End header wrap-->
<h1 class="title-solution"><?php echo Yii::t('main', 'popular')?></h1>
<div class="content">
    <div class="left-tent">
        <img src="<?php echo Yii::app()->theme->baseUrl; ?>/images/img-w1.jpg" alt="Easy" />
        <h2 class="title-tent">Xây dựng website nhanh chóng, dễ dàng</h2>
        <p>Bạn chỉ cần vài phút để có ngay một website cho doanh nghiệp hay cá nhân bạn, giao diện quản lý đơn giản &amp; trực quan, bạn chỉ cần nhập liệu và tùy chỉnh ứng dụng của mình mọi lúc, mọi nơi.</p>
    </div><!--End left cotent-->
    <div class="cter-tent">
        <img src="<?php echo Yii::app()->theme->baseUrl; ?>/images/img-w2.jpg" alt="Professional Template Styles" />
        <h2 class="title-tent">Mẫu giao diện chuyên nghiệp, đa dạng</h2>
        <p>Bộ thư viện mẫu website phong phú đã được nhiều khách hàng sử dụng sẽ giúp bạn hài lòng. Có thể thay đổi giao diện bất cứ lúc nào và bật, tắt các chức năng module. Tự do tùy biến ứng dụng của bạn.</p>
    </div><!--End center content-->
    <div class="right-tent">
        <img src="<?php echo Yii::app()->theme->baseUrl; ?>/images/img-w3.jpg" alt="Powerful Business Applications" />
        <h2 class="title-tent">Dễ dàng cho các bộ máy tìm kiếm</h2>
        <p>Mã nguồn để xây dựng web được lập trình tỉ mỉ đúng theo chuẩn W3C sẽ giúp website có thứ hạng trong các công cục tìm kiếm Google, yahoo, bring... với các từ khóa ngành nghề của bạn.</p>
    </div><!--End right content-->    <div class="clear"></div>
</div><!--End row tent 1-->

<div class="frame-features">
    <span>Xem các tính năng website mà chúng tôi dành cho Doanh nghiệp bạn!</span> <a href="#" title="" class="free">Make a Free Website!</a> <a href="#" title="" class="view">View Features</a>
</div>
<!--<div class="content">
    <div class="left-tent">
        <img src="<?php echo Yii::app()->theme->baseUrl; ?>/images/img-w4.jpg" alt="Premium Website Packages" />
        <h2 class="title-tent">Premium Website Packages</h2>
        <p>Make a free website to start, then upgrade to a Premium Package that fits your business needs. Pick out a domain name, use premium templates, build out an online store, and access our award-winning, 24/7 live support team.</p>
    </div>
    <div class="cter-tent">
        <img src="<?php echo Yii::app()->theme->baseUrl; ?>/images/img-w5.jpg" alt="Insightful Reports" />
        <h2 class="title-tent">Insightful Reports</h2>
        <p>Keep track of the traffic on your website. Find out where your visitors come from to improve your marketing efforts. Get detailed analytics on what pages are popular, which links get clicked, time spent and more.</p>
    </div>
    <div class="right-tent">
        <img src="<?php echo Yii::app()->theme->baseUrl; ?>/images/img-w6.jpg" alt="Get Found Online" />
        <h2 class="title-tent">Get Found Online</h2>
        <p>Get traffic to your site from search engines like Google®  and Yahoo!®  by submitting your site to search engines, adding keywords, building links, and more. We'll even help you promote on Facebook and Twitter.</p>
    </div><div class="clear"></div>
</div>
<h2 class="title-family marginb50">Need a <a href="#" title="">custom Face book Page</a> too? Try <a href="#" title="">Pagemodo</a>, a member of the Webs Family of Products</h2>-->