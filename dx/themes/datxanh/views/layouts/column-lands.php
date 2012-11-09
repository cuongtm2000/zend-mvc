<?php $this->beginContent('//layouts/main'); ?>
<div class="column-land">
    <div id="left-content-home">
        <?php $this->getPosition('left');?>

        <div class="video">
            <a href="http://www.youtube.com/watch?v=UWMqa8Ev44g&feature=related" title="PSY- GANGNAM STYLE - Official" rel="prettyPhoto"><img src="<?php echo Yii::app()->theme->baseUrl; ?>/images/video-2.jpg" alt="" /></a>
            <script type="text/javascript">$(document).ready(function () {$(".video a[rel^='prettyPhoto']").prettyPhoto();});</script>
        </div>
    </div><!--End left content-->
    <div id="right-content">
        <?php $this->getPosition('center');?>
        <?php echo $content ?>
    </div><!--End center-content-->
    <div id="column-3">
    <?php if(!Yii::app()->memberLands->id):?>
         <h4 class="title-box"><span>Đăng nhập</span></h4>
        <form class="login" action="san-giao-dich/dang-nhap" method="post">
            <p><label for="LandsLoginForm_username">Username</label></p>
            <input type="text" name="LandsLoginForm[username]" id="LandsLoginForm_username" value="" />
            <p><label for="LandsLoginForm_password">Mật khẩu</label></p>
            <input type="password" name="LandsLoginForm[password]" id="LandsLoginForm_password" value="" />
            <p class="text-button"><input class="button-login" type="submit" value="Đăng Nhập" name="login"/></p>
            <a class="button-register" href="<?php echo Yii::app()->baseUrl ?>/san-giao-dich/dang-ky"><b>Đăng ký tài khoản</b></a>
        </form>
    <?php else:?>
         <h4 class="title-box"><span>Quản lý sản phẩm</span></h4>
         <div class="list-product-link">
		 <a href="<?php echo Yii::app()->baseUrl ?>/lands/default/add"><b>Đăng tin</b></a><br />
         <a href="<?php echo Yii::app()->baseUrl ?>/lands/default/listpost"><b>Tin đã đăng</b></a> <br />
         <a href="<?php echo Yii::app()->baseUrl ?>/lands/default/logout"><b>Đăng xuất</b></a><br />
		 </div>

    <?php endif ?>

        <?php $this->getPosition('right');        ?>

    </div> <!--End colum3--> <div class="clear"></div>
</div>
<?php $this->endContent(); ?>