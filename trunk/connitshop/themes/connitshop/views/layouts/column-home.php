<?php $this->beginContent('//layouts/main'); ?>
    <div class="main-slider">
        <ul class="nav-left">
            <li><a href="" title="">Hàng mới về <img class="new-img" src="<?php echo Yii::app()->theme->baseUrl; ?>/images/new.png" alt="new" /></a></li>
            <li><a href="" title="">Khuyến mãi</a></li>
            <li><a href="" title="">Mua sắm gia đình</a>
                <ul>
                    <li><a href="" title="">Đồ dùng sinh hoạt</a></li>
                    <li><a href="" title="">Mẹ và Bé</a></li>
                    <li><a href="" title="">Tinh dầu, đèn xông hương</a></li>
                    <li><a href="" title="">Bảo hiểm y tế, sức khỏe</a></li>
                </ul>
            </li>
            <li><a href="" title="">Bé gái</a></li>
            <li><a href="" title="">Bé trai</a></li>
            <li><a href="" title="">Thời trang nữ</a></li>
            <li><a href="" title="">Thời trang nam</a></li>
        </ul>
        <script type="text/javascript">
            $(".nav-left li:first").addClass("first-item");
        </script>
        <?php $this->widget('ext.Banner.BannerSlider', array('default_banner' => true));?> <div class="clear"></div>
    </div> <!--End main-slider-->
    <div id="content">
        <?php echo $content; ?>
        <?php $this->getPosition('center')?>
        <div class="clear"></div>
    </div><!--End content-->
<?php $this->endContent(); ?>