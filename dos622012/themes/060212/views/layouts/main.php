<!DOCTYPE html PUBLIC "-//W3C//DTD XHTML 1.0 Transitional//EN" "http://www.w3.org/TR/xhtml1/DTD/xhtml1-transitional.dtd">
<html xmlns="http://www.w3.org/1999/xhtml">
    <head>
        <meta http-equiv="Content-Type" content="text/html; charset=utf-8" />
        <meta http-equiv="content-language" content="vi, en" /> 
        <meta name="revisit-after" content="1 days" />
        <meta name="robots" content="noodp,index,follow" />
        <link rel="SHORTCUT ICON" href="<?php echo Yii::app()->theme->baseUrl; ?>/images/favicon.ico" type="image/x-icon" />
        <link rel="icon" href="<?php echo Yii::app()->theme->baseUrl; ?>/images/favicon.ico" type="image/gif" />

        <title><?php echo CHtml::encode($this->pageTitle); ?><?php echo ($this->title) ? ' - '.CHtml::encode($this->title) : '' ?></title>
        <meta name="keywords" content="<?php echo $this->keywords ?>" /> 
        <meta name="description" content="<?php echo $this->description ?>" />

        <link href="<?php echo Yii::app()->theme->baseUrl; ?>/css/dosvn.css" rel="stylesheet" type="text/css" />
        <link rel="stylesheet" type="text/css" href="<?php echo Yii::app()->theme->baseUrl; ?>/css/wt-rotator.css" /> 
        <script type="text/javascript" src="<?php echo Yii::app()->theme->baseUrl; ?>/js/jquery-1.6.4.min.js"></script>
        <script type="text/javascript" src="<?php echo Yii::app()->theme->baseUrl; ?>/js/jcarousellite.js"></script>
        <script type="text/javascript" src="<?php echo Yii::app()->theme->baseUrl; ?>/js/special-block.js"></script> 
        <script type="text/javascript" src="<?php echo Yii::app()->theme->baseUrl; ?>/js/jquery-banner-rotato.js"></script> 
        <script type="text/javascript" src="<?php echo Yii::app()->theme->baseUrl; ?>/js/jquery-banner-rotato.effect.js"></script>
        <script type="text/javascript">
            $(document).ready(function(){
                runbanner(<?php echo $this->configs['banner_width'] ?>, <?php echo $this->configs['banner_height'] ?>);
            });
        </script>
    </head>
    <body>
        <div id="wrapper">
            <div id="header">
                <div id="header-left">
                    <?php if($this->logo):?>
                        <a href="<?php echo Yii::app()->request->baseUrl ?>/" title="<?php echo $this->logo['banner_name']?>"><img src="<?php echo Yii::app()->baseUrl.USERFILES ?>/banner/<?php echo $this->logo['banner_url'] ?>" alt="<?php echo $this->logo['banner_name']?>" /></a>
                    <?php else:?>
                        <a href="<?php echo Yii::app()->request->baseUrl ?>/" title=""><img src="<?php echo Yii::app()->theme->baseUrl; ?>/images/logo.png" alt="Logo" /></a>
                    <?php endif;?>
                </div><!--End header left-->
                <div class="lang"><a href="#" title="Tiếng Việt">Tiếng Việt</a> <img src="images/vn.gif" alt="Việt Nam" /><a href="#" title="English">English</a> <img src="images/en.gif" alt="English" /></div>
                <div class="title-cty">CÔNG TY PHẦN MỀM SGS</div>
                <ul class="nav">
                    <li><a href="index.html" title="">Trang chủ</a></li>
                    <li><a href="about.html" title="">Giới thiệu</a>
                        <ul>
                            <li><a href="#" title="">Giới thiệu công ty</a></li>
                            <li><a href="#" title="">Giới thiệu sơ lược</a></li>
                            <li><a href="#" title="">Giới thiệu cơ cấu</a></li>
                        </ul>
                    </li>
                    <li><a href="product.html" title="">Sản phẩm</a></li>
                    <li><a href="services.html" title="">Dịch vụ</a></li>
                    <li><a href="solution.html" title="">Giải pháp</a></li>
                    <li><a href="news.html" title="">Tin tức</a></li>
                    <li><a href="contact.html" title="">Liên hệ</a></li>
                </ul>  <div class="clear"></div>
            </div><!--End header-->
            <?php if($this->banner): ?>
            <div id="banner">
                <div class="container"> 
                    <div class="wt-rotator">
                        <a href="#"></a>   
                        <div class="thumbnails"> 
                            <ul>
                                <?php foreach($this->banner as $value): ?>
                                    <li><a href="<?php echo Yii::app()->request->baseUrl.USERFILES; ?>/banner/<?php echo $value['banner_url'] ?>" title="<?php echo $value['banner_name'] ?>"></a></li>
                                <?php endforeach ?>
                            </ul> 
                        </div>  
                    </div> 
                </div>
            </div><!--End banner-->
            <?php endif; ?>
            <div id="content">
                <div id="left-content">
                    <h1 class="title-left"><span>Sản Phẩm SGS</span></h1>
                    <ul class="sub-pro">
                        <li><a href="#" title="">Quản lý toàn diện IFAS - ERP</a></li>
                        <li><a href="#" title="">Quản lý bàn hàng IFAS - SM</a></li>
                        <li><a href="#" title="">Quản lý KT-TC IFAS - A</a></li>
                        <li><a href="#" title="">Quản lý khách hàng IFAS - CM</a></li>
                        <li><a href="#" title="">Quản lý kho hàng IFAS - IM</a></li>
                        <li><a href="#" title="">Quản lý mua hàng IFAS - BM</a></li>
                        <li><a href="#" title="">Quảng lý nhân sự tiền lương IFAS - HRM </a></li>
                        <li><a href="#" title="">Quản lý văn phòng IFAS - OM</a></li>
                        <li style="border:none"><a href="#" title="">.v.v. Cho phép thêm, sửa, xóa các sản phẩm</a></li>
                    </ul>
                    <h1 class="title-left"><span>Hỗ Trợ Bán Hàng</span></h1>
                    <ul class="support">
                        <li><img src="images/img-support.jpg" alt="Support" class="left"/>
                            <div class="support-phone"><p><img src="images/ico-phone.gif" alt="Phone 1" /> 061(3) 923 269</p>
                                <p><img src="images/ico-phone2.gif" alt="Phone 2" /> 0987 001 001</p>
                            </div><div class="clear"></div>
                        </li>
                        <li><p><a href="ymsgr:sendim?thanhansoft"><img src="http://opi.yahoo.com/online?u=thanhansoft&amp;m=g&amp;t=2&amp;l=us" alt="thanhansoft" /></a></p>
                            <p><a href="skype:kimtuyen.nguyen?chat" title="Hỗ trợ Phần mềm"><img  src="images/skype.gif" alt="Hỗ trợ phần mềm" /></a></p>
                        </li>
                        <li><p><a href="ymsgr:sendim?thanhansoft"><img src="http://opi.yahoo.com/online?u=thanhansoft&amp;m=g&amp;t=2&amp;l=us" alt="thanhansoft" /></a></p>
                            <p><a href="skype:kimtuyen.nguyen?chat" title="Hỗ trợ Phần mềm"><img  src="images/skype.gif" alt="Hỗ trợ phần mềm" /></a></p>
                        </li>
                        <li><p><a href="ymsgr:sendim?thanhansoft"><img src="http://opi.yahoo.com/online?u=thanhansoft&amp;m=g&amp;t=2&amp;l=us" alt="thanhansoft" /></a></p>
                            <p><a href="skype:kimtuyen.nguyen?chat" title="Hỗ trợ Phần mềm"><img  src="images/skype.gif" alt="Hỗ trợ phần mềm" /></a></p>
                        </li>
                    </ul>
                </div><!--End left content-->	
                <div id="right-content">
                    <h1 class="title-right"><span>Lời Chào Từ Công Ty SGS</span></h1>
                    <div class="rows-first">
                        <div class="frame-first">
                            <img src="images/img1.jpg" alt="img loi chao" style="float:left"/>
                            <p><b>Phần mềm quản lý toàn diện IFAS của Công ty phần mềm SGS-VN được phát triển theo tiêu chuẩn quốc tế ERP song song với việc đáp ứng kịp thời những quy chuẩn riêng đặc thù của từng doành nghiệp là một công cụ thông minh</b>
                                góp một phần quan trọng giúp doanh nghiệp quản lý toàn diện và hiệu quả mọi hoạt động sản xuất kinh doanh, mang đến thành công cho doanh nghiệp.</p>
                            <p>Với những chuyên gia giàu kinh nghiệm cùng đội ngũ kỹ sư trẻ năng động sáng tạo và tận tâm, Công ty chúng tôi sẽ sẵn sàn lắng nghe những mong muốn và đáp ứng yêu cầu một cách tốt nhất của quý khách hàng với những hệ thống phần mềm quản lý thông minh, hiểu quả và bền vững </p>
                            <div class="clear"></div>
                        </div>
                        <h2 class="title-slogan">Hãy cùng chúng tôi tạo nên thành công của bạn.</h2>
                        <h2 class="title-newpr"><span>Lĩnh vực thế mạnh của I.FAS:</span></h2>
                        <ul class="sub-newpr">
                            <li><a href="#" title="">Hệ thống quản lý toàn diện cho các công ty sản xuất -  gia công</a></li>
                            <li><a href="#" title="">Hệ thống quản lý toàn diện cho các công ty sản xuất - Bê tông</a></li>
                            <li><a href="#" title="">Hệ thống quản lý nhà sách</a></li>
                            <li><a href="#" title="">Hệ thống quản lý toàn diện cho các công ty Giao nhận - Vận chuyển</a></li>
                            <li><a href="#" title="">Hệ thống quản lý cho các Trung tâm sửa chữa bảo trì mua bán xe</a></li>
                            <li><a href="#" title="">Hệ thống quản lý mua bán vé</a></li>
                        </ul>
                    </div><!--End rows first-->
                    <h1 class="title-right"><span>Các đối tác</span></h1>
                    <div class="rows-two">
                        <div class="slaids">
                            <div class="slaids_left">
                                <div class="slaids_right">
                                    <span class="prev left_bat"></span>
                                    <span  class="next right_bat"></span>
                                    <div class="gallery">
                                        <ul>
                                            <li class="li_img">
                                                <div class="im">
                                                    <a  href="#" title=""><img src="images/logo-apple.jpg" alt="HP" title="Apple"/></a>
                                                </div>		   
                                            </li>
                                            <li class="li_img">
                                                <div class="im">
                                                    <a  href="#" title=""><img src="images/logo-apple1.jpg" alt="HP" title="Apple"/></a>
                                                </div>		   
                                            </li>
                                            <li class="li_img">
                                                <div class="im">
                                                    <a  href="#" title=""><img src="images/logo-apple2.jpg" alt="HP" title="Apple"/></a>
                                                </div>		   
                                            </li>
                                            <li class="li_img">
                                                <div class="im">
                                                    <a  href="#" title=""><img src="images/logo-apple3.jpg" alt="HP" title="Apple"/></a>
                                                </div>		   
                                            </li>
                                            <li class="li_img">
                                                <div class="im">
                                                    <a  href="#" title=""><img src="images/logo-apple4.jpg" alt="HP" title="Apple"/></a>
                                                </div>		   
                                            </li>
                                            <li class="li_img">
                                                <div class="im">
                                                    <a  href="#" title=""><img src="images/logo-apple5.jpg" alt="HP" title="Apple"/></a>
                                                </div>		   
                                            </li>
                                            <li class="li_img">
                                                <div class="im">
                                                    <a  href="#" title=""><img src="images/logo-apple6.jpg" alt="HP" title="Apple"/></a>
                                                </div>		   
                                            </li>
                                            <li class="li_img">
                                                <div class="im">
                                                    <a  href="#" title=""><img src="images/logo-apple7.jpg" alt="HP" title="Apple"/></a>
                                                </div>		   
                                            </li>
                                            <li class="li_img">
                                                <div class="im">
                                                    <a  href="#" title=""><img src="images/logo-apple8.jpg" alt="HP" title="Apple"/></a>
                                                </div>		   
                                            </li>
                                        </ul>
                                    </div>
                                </div>
                            </div>  
                        </div><!--End slaids Gallery-->
                    </div><!--End rows tow--> 
                </div><!--End right content-->   <div class="clear"></div>
            </div><!--End content-->
        </div><!--End wrapper-->
        <!--Footer-->
        <div id="bg-fter">
            <div id="footer">
                <ul class="nav-fter">
                    <li><a href="index.html" title="">Trang chủ</a></li>
                    <li><a href="about.html" title="">Giới thiệu</a></li>
                    <li><a href="product.html" title="">Sản phẩm</a></li>
                    <li><a href="services.html" title="">Dịch vụ</a></li>
                    <li><a href="solution.html" title="">Giải pháp</a></li>
                    <li><a href="news.html" title="">Tin tức</a></li>
                    <li><a href="contact.html" title="" style="background:none">Liên hệ</a></li>
                </ul>
                <p>&copy; 2011 - SGS.VN Corp - All right reserved</p>
            </div><!--End footer-->
        </div><!--End Bg Footer-->
    </body>
</html>