<?php $this->beginContent('//layouts/main'); ?>
    <div class="link">
        <a href="<?php echo Yii::app()->baseUrl . Yii::app()->session['langUrl'] ?>" title="Trang chủ">Trang chủ</a> &gt; Đăng nhập
    </div> <!--End link-->
    <div id="content">
        <?php echo $content; ?>
    </div><!--End content-->
<?php $this->endContent(); ?>