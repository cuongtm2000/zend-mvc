<div class="header-btom">
    <div class="hd-bt-left">
        <h1 class="title-company">Khởi tạo website trực tuyến chuyên nghiệp, ấn tượng.</h1>
        <p class="white">Giải pháp tối ưu cho Doanh nghiệp vừa và nhỏ, nhóm hoặc cá nhân...</p>
        <form action="<?php echo Yii::t('main', 'msgButton')?>" class="select-title" method="post">
            <p class="list-title">
                <select name="bussiness" size="1" class="frame-list">
                    <option value="root">-- Vui lòng chọn ngành nghề --</option>
                    <?php foreach($this->businessLists as $value):?>
                    <option value="<?php echo $value['bussiness_id']?>"><?php echo $value['bussiness_name']?></option>
                    <?php endforeach?>
                </select>
            </p>
            <input type="submit" class="button-great" value="  <?php echo Yii::t('main', 'createweb')?>  "/>
        </form>
    </div> <!--End hd bt left-->
    <div id="banner">
        <ul class="slider">
            <li class="slider-item"><a href="http://dos.vn" title="dos"><img src="<?php echo Yii::app()->theme->baseUrl; ?>/images/banner.png" alt="banner" /></a></li>
            <li class="slider-item"><img src="<?php echo Yii::app()->theme->baseUrl; ?>/images/banner1.png" alt="banner1" /></li>
			<li class="slider-item"><img src="<?php echo Yii::app()->theme->baseUrl; ?>/images/banner2.png" alt="banner1" /></li>
			<li class="slider-item"><img src="<?php echo Yii::app()->theme->baseUrl; ?>/images/banner3.png" alt="banner1" /></li>
		</ul>
    </div> <!--End banner--> <div class="clear"></div>

</div> <!--End header-btom -->
<div class="prod_detail">
    <!--Slide show Jquery Lightbox-->
    <div class="big_thumb">
        <!--Slide Prev-->
        <span class="prevsmall"><img src="<?php echo Yii::app()->theme->baseUrl; ?>/images/prev.png" alt="" /></span>
        <div class="thumbs anyClass" id="paginate-slider2">
            <ul>
                <?php foreach($listUserImport as $value):?>
                    <li><a href="http://<?php echo $value['username']?>.dos.vn" target="_blank"><img src="<?php echo Yii::app()->baseUrl; ?>/public/userfiles/image/<?php echo $value['username']?>/image/demo.png" alt="<?php echo $value['username']?>" /></a></li>
                <?php endforeach?>
            </ul>
        </div>
        <span class="nextsmall"><img src="<?php echo Yii::app()->theme->baseUrl; ?>/images/next.png" alt="" /></span>
        <!--Slide Next-->
    </div><!--END Slide show Jquery Lightbox-->
    <div class="bg-title-great">Website tạo bởi dos.vn</div>
</div> <!--End prod detail-->  <div class="clear"></div>
<div class="bg-solution">
    <div class="top-solution">
        <img src="<?php echo Yii::app()->theme->baseUrl; ?>/images/price.png" alt="Website trọn gói 137$ Dos.vn" />
        <p class="title-solution"><strong>GIẢI PHÁP ĐƯỢC YÊU THÍCH ĐỂ CÓ WEBSITE CHẤT LƯỢNG</strong></p>
    </div>
    <div>
        <ul class="left sub-solution">
            <?php foreach($featuresTwo as $value):?>
                <li><a href="<?php echo Yii::app()->session['langUrl'] . '/'. Yii::t('main', 'features.link')?>/<?php echo $value['tag'.LANG]?>.html" title="<?php echo $value['title'.LANG]?>"><?php echo $value['title'.LANG]?></a></li>
            <?php endforeach?>
        </ul>
        <ul class="right sub-solution">
            <?php foreach($featuresOne as $value):?>
                <li><a href="<?php echo Yii::app()->session['langUrl'] . '/'. Yii::t('main', 'features.link')?>/<?php echo $value['tag'.LANG]?>.html" title="<?php echo $value['title'.LANG]?>"><?php echo $value['title'.LANG]?></a></li>
            <?php endforeach?>
        </ul> <div class="clear"></div>
    </div>
</div> <!--End bg-solution -->
<div class="bg-panel">
    <div class="left panel">
        <div class="top-panel"></div>
        <div class="mid-panel">
            <h2 class="title-panel"><span class="ico-port green">Xây dựng nhanh chóng</span><img class="img-nel-1" src="<?php echo Yii::app()->theme->baseUrl; ?>/images/ico-nel-1.png" alt="" /></h2>
            <p>Bạn chỉ cần vài phút để có ngay một website cho doanh nghiệp hay cá nhân bạn, giao diện quản lý đơn giản &amp; trực quan, bạn chỉ cần nhập liệu và tùy chỉnh ứng dụng của mình mọi lúc, mọi nơi</p>
            <!-- <p class="more"><a href="#" title="">Chi tiết</a></p> -->
        </div>
        <div class="bttom-panel"></div>
    </div> <!--End panel-1 -->
    <div class="left panel panel-2">
        <div class="top-panel"></div>
        <div class="mid-panel">
            <h2 class="title-panel"><span class="ico-port blue">Mẫu giao diện</span><img class="img-nel-2" src="<?php echo Yii::app()->theme->baseUrl; ?>/images/ico-nel-2.png" alt="" /></h2>
            <p>Bộ thư viện mẫu website phong phú đã được nhiều khách hàng sử dụng sẽ giúp bạn hài lòng. Có thể thay đổi giao diện bất cứ lúc nào và bật, tắt các chức năng module. Tự do tùy biến ứng dụng của bạn</p>
            <!-- <p class="more"><a href="#" title="">Chi tiết</a></p> -->
        </div>
        <div class="bttom-panel"></div>
    </div> <!--End panel-1 -->
    <div class="right panel">
        <div class="top-panel"></div>
        <div class="mid-panel">
            <h2 class="title-panel"><span class="ico-port org">Công cụ tìm kiếm</span><img class="img-nel-3" src="<?php echo Yii::app()->theme->baseUrl; ?>/images/ico-nel-3.png" alt="" /></h2>
            <p>Mã nguồn để xây dựng web được lập trình tỉ mỉ đúng theo chuẩn W3C sẽ giúp website có thứ hạng trong các công cục tìm kiếm Google, yahoo, bring... với các từ khóa ngành nghề của bạn</p>
            <!-- <p class="more"><a href="#" title="">Chi tiết</a></p> -->
        </div>
        <div class="bttom-panel"></div>
    </div> <!--End panel-1 --> <div class="clear"></div>
</div>

<div id="content">
    <h2 class="title-hdbook"><img class="ico-hdbook" src="<?php echo Yii::app()->theme->baseUrl; ?>/images/bg-handbook.png" alt="" /><span>Cẩm nang - Hướng dẫn</span></h2>
    <div id="leftcontent">
        <div class="new-hdbook">
            <?php if($articleFirst['pic_thumb']):?>
            <div class="frame-hd-img">
                <a href="<?php echo Yii::app()->session['langUrl'] . '/' . Yii::t('main', 'articles.link')?>/<?php echo $articleFirst['tag_cat']?>/<?php echo $articleFirst['tag']?>.html" title="<?php echo $articleFirst['title']?>">
                    <img src="<?php echo Yii::app()->request->baseUrl; ?>/public/userfiles/image/dos/image/articles/<?php echo $articleFirst['pic_thumb']?>" alt="<?php echo $articleFirst['title']?>" />
                </a>
            </div>
            <?php endif?>
            <h3 class="title-new-hdbook"><a href="<?php echo Yii::app()->session['langUrl'] . '/' . Yii::t('main', 'articles.link')?>/<?php echo $articleFirst['tag_cat']?>/<?php echo $articleFirst['tag']?>.html" title="<?php echo $articleFirst['title']?>"><?php echo $articleFirst['title']?></a></h3>
            <?php echo $articleFirst['preview']?><div class="clear"></div>
        </div> <!--End new hdbook-->
        <div class="bg-sub-hand">
            <ul class="left sub-hdbook">
                <?php foreach($listArticleLimitOne as $value):?>
                    <li><a href="<?php echo Yii::app()->session['langUrl'] . '/' . Yii::t('main', 'articles.link')?>/<?php echo $value['tag_cat']?>/<?php echo $value['tag']?>.html" title="<?php echo $value['title']?>"><?php echo $value['title']?></a></li>
                <?php endforeach?>
            </ul>
            <!--<ul class="right sub-hdbook">
                <?php foreach($listArticleLimitTwo as $value):?>
                    <li><a href="<?php echo Yii::app()->session['langUrl'] . '/' . Yii::t('main', 'articles.link')?>/<?php echo $value['tag_cat']?>/<?php echo $value['tag']?>.html" title="<?php echo $value['title']?>"><?php echo $value['title']?></a></li>
                <?php endforeach?>
            </ul> --><div class="clear"></div>
        </div> <!--End bg sub hand-->
    </div> <!--End leftcontent-->
    <div id="rightcontent">
        <div class="ico-mid">
            <img src="<?php echo Yii::app()->theme->baseUrl; ?>/images/ico-right.png" alt="Support" />
            <p>Đừng ngần ngại hãy liên hệ với chúng tôi để được tư vẫn miễn phí</p>
        </div>
        <ul class="support">
            <li>
                <div class="img-port"><img src="<?php echo Yii::app()->theme->baseUrl; ?>/images/img-port.png" alt="img support" /></div>
                <div class="ten-port">
                    <p><a href="ymsgr:sendim?hongvietsoft&amp;m=Xin chào, tôi muốn hỏi về sản phẩm - dịch vụ của Dos.vn" title="Chat hongvietsoft"><img src="http://opi.yahoo.com/online?u=hongvietsoft&amp;m=g&amp;t=1&amp;l=us" alt="hongvietsoft" /></a></p>
                    <p>E: info@dos.vn </p>
                    <p>T: 0987 001 001</p>
				</div><div class="clear"></div>
            </li>
			<li>
				<div class="img-port"><img src="<?php echo Yii::app()->theme->baseUrl; ?>/images/img-port.png" alt="img support" /></div>
				<div class="ten-port">
                    <p><a href="ymsgr:sendim?thanhansoft&amp;m=Xin chào, tôi muốn hỏi về sản phẩm - dịch vụ của Dos.vn" title="Chat thanhansoft"><img src="http://opi.yahoo.com/online?u=thanhansoft&amp;m=g&amp;t=1&amp;l=us" alt="thanhansoft" /></a></p>
                    <p>E: support@dos.vn </p>
                    <p>T: 0929 001 001</p>
				</div><div class="clear"></div>
			</li>
			<li>
				<div class="img-port"><img src="<?php echo Yii::app()->theme->baseUrl; ?>/images/img-port.png" alt="img support" /></div>
				<div class="ten-port">
                    <p><a href="ymsgr:sendim?groupitsoft&amp;m=Xin chào, tôi muốn hỏi về sản phẩm - dịch vụ của Dos.vn" title="Chat groupitsoft"><img src="http://opi.yahoo.com/online?u=groupitsoft&amp;m=g&amp;t=1&amp;l=us" alt="groupitsoft" /></a></p>
                    <p>E: support@dos.vn </p>
                    <p>T: 0942 001 001</p>
				</div><div class="clear"></div>
			</li>
			<li>
				<div class="img-port"><img src="<?php echo Yii::app()->theme->baseUrl; ?>/images/img-port-2.png" alt="img support" /></div>
				<div class="ten-port">
                    <p><a href="ymsgr:sendim?maioanh7887&amp;m=Xin chào, tôi muốn hỏi về sản phẩm - dịch vụ của Dos.vn" title="Chat maioanh7887"><img src="http://opi.yahoo.com/online?u=maioanh7887&amp;m=g&amp;t=1&amp;l=us" alt="groupitsoft" /></a></p>
                    <p>E: maioanh@dos.vn </p>
                    <p>T: 0942 001 001</p>
				</div><div class="clear"></div>
			</li>
        </ul> <!--End support-->
    </div> <!--End rightcontent--> <div class="clear"></div>
</div><!--End content-->