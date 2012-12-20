<?php $this->beginContent('//layouts/main'); ?>
<?php
$this->widget('zii.widgets.CBreadcrumbs', array(
    'homeLink' => CHtml::link($this->lang['default'], Yii::app()->baseUrl . $this->setLangUrl(), array('title' => $this->lang['default'])),
    'links' => $this->breadcrumbs,
    'separator' => '<b>&raquo;</b>',
));
?>
<div id="left-content">
    <div class="main-box">
        <h4 class="title-left"><span>Sở Tài chính Đồng Nai</span></h4>
        <ul class="sub-cat frame-leftcontent">
            <li>
                <a title="Tin thị trường BĐS" href="/yii/stcdon/trang-chu/tin-thi-truong-bds">Tin thị trường BĐS</a>
            </li>
            <li>
                <a title="Tin tiêu điểm" href="/yii/stcdon/trang-chu/tin-tieu-diem">Tin tiêu điểm</a>
            </li>
        </ul>	
    </div>





















    <?php $this->getPosition('left'); ?>



</div>

<div id="right-content">
    <div class="main-right-content">
        <?php $this->widget('ext.Banner.BannerSlider', array('default_banner' => true)); ?> <div class="clear"></div>
        <?php echo $content; ?>
        <?php $this->getPosition('center') ?>
    </div>
</div> <!--End right-content -->


<div id="column-3">
    <?php $this->getPosition('right'); ?>
</div> <!--End colum3-->

<?php $this->endContent(); ?>