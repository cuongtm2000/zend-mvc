<div id="header-wrap">
    <div class="frame-title">
        <h1 class="title-page">Thiết kế Web Trực tuyến <img src="<?php echo Yii::app()->theme->baseUrl; ?>/images/free.png" alt="Free" />  &nbsp;ấn tượng, giá rẻ!</h1>
        <p>Đăng ký tài khoản, chọn mẫu website, chọn Module &amp; chức năng, chạy thử nghiệm, thanh toán, chạy độc lập</p>
    </div>
    <div id="banner">
		<div id="allinone_carousel_charming">
			<ul class="allinone_carousel_list">
				<li><img src="<?php echo Yii::app()->theme->baseUrl; ?>/images/01_charming.jpg" alt="" /></li>
				<li><img src="<?php echo Yii::app()->theme->baseUrl; ?>/images/02_charming.jpg" alt="" /></li>
				<li><img src="<?php echo Yii::app()->theme->baseUrl; ?>/images/03_charming.jpg" alt="" /></li>
				<li><img src="<?php echo Yii::app()->theme->baseUrl; ?>/images/04_charming.jpg" alt="" /></li>
				<li><img src="<?php echo Yii::app()->theme->baseUrl; ?>/images/05_charming.jpg" alt="" /></li>
				<li><img src="<?php echo Yii::app()->theme->baseUrl; ?>/images/06_charming.jpg" alt="" /></li>
				<li><img src="<?php echo Yii::app()->theme->baseUrl; ?>/images/07_charming.jpg" alt="" /></li>
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
<h1 class="title-solution">The Most Popular Solution to Create a Free Website</h1>
<div class="content">
    <div class="left-tent">
        <img src="<?php echo Yii::app()->theme->baseUrl; ?>/images/img-w1.jpg" alt="Easy" />
        <h2 class="title-tent">Easy Website Building Tools</h2>
        <p>Get your <a href="#" title="">small business website</a> on the web in minutes with our ease-to-use Site Builder and templates that do the design work for you. No technical skills required ! Gain a mobile version of your site, too.
        </p>
    </div><!--End left cotent-->
    <div class="cter-tent">
        <img src="<?php echo Yii::app()->theme->baseUrl; ?>/images/img-w2.jpg" alt="Professional Template Styles" />
        <h2 class="title-tent">Professional Template Styles</h2>
        <p>Browse our gallery and you'll find 300+ professionally-designed templates in a variety of sophisticated styles. Customize your template with your logo, tagline, and color scheme to make your site look the way you want.</p>
    </div><!--End center content-->
    <div class="right-tent">
        <img src="<?php echo Yii::app()->theme->baseUrl; ?>/images/img-w3.jpg" alt="Powerful Business Applications" />
        <h2 class="title-tent">Powerful Business Applications</h2>
        <p>Make your site engaging with apps. Show off your work in a photo gallery or video. Sell products in a Web Store. Blog about your company news, and hear what customers are saying on a forum. Plus much more.</p>
    </div><!--End right content-->    <div class="clear"></div>
</div><!--End row tent 1-->
<div class="frame-features">
    <span>Learn about the features Webs has to offer your business!</span> <a href="#" title="" class="free">Make a Free Website!</a> <a href="#" title="" class="view">View Features</a>
</div><!--End Frame features-->
<div class="content">
    <div class="left-tent">
        <img src="<?php echo Yii::app()->theme->baseUrl; ?>/images/img-w4.jpg" alt="Premium Website Packages" />
        <h2 class="title-tent">Premium Website Packages</h2>
        <p>Make a free website to start, then upgrade to a Premium Package that fits your business needs. Pick out a domain name, use premium templates, build out an online store, and access our award-winning, 24/7 live support team.</p>
    </div><!--End left content-->
    <div class="cter-tent">
        <img src="<?php echo Yii::app()->theme->baseUrl; ?>/images/img-w5.jpg" alt="Insightful Reports" />
        <h2 class="title-tent">Insightful Reports</h2>
        <p>Keep track of the traffic on your website. Find out where your visitors come from to improve your marketing efforts. Get detailed analytics on what pages are popular, which links get clicked, time spent and more.</p>
    </div><!--End center content-->
    <div class="right-tent">
        <img src="<?php echo Yii::app()->theme->baseUrl; ?>/images/img-w6.jpg" alt="Get Found Online" />
        <h2 class="title-tent">Get Found Online</h2>
        <p>Get traffic to your site from search engines like Google®  and Yahoo!®  by submitting your site to search engines, adding keywords, building links, and more. We'll even help you promote on Facebook and Twitter.</p>
    </div><!--End right content-->   <div class="clear"></div>
</div><!--End row tent 2-->
<h2 class="title-family marginb50">Need a <a href="#" title="">custom Face book Page</a> too? Try <a href="#" title="">Pagemodo</a>, a member of the Webs Family of Products</h2>