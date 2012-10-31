<div class="static">
    <div class="col-static1">Tổng lượt truy cập<p><?php echo $this->widget('ext.CounterSession.Counter')->getTotal();?></p></div>
    <div class="col-static2">Thứ hạng Alexa<p id="alexa"><img src="<?php echo Yii::app()->theme->baseUrl ?>/images/ajax-loader.gif" alt="loading" /></p></div>
    <div class="col-static3">Số thành viên quản lý<p>1</p></div>
</div>

<div class="count-module-col1">
    <h1>Thống kê chức năng</h1>
    <div class="icon-hover"><a href="<?php echo Yii::app()->baseUrl ?>/admin/templates" title="Change template"><img src="<?php echo Yii::app()->theme->baseUrl; ?>/images/templates.png" alt="Change template"><br />Change template</a></div>
    <div class="icon-hover"><a href="<?php echo Yii::app()->baseUrl ?>/admin/setting/config" title="System Configuration"><img src="<?php echo Yii::app()->theme->baseUrl; ?>/images/system.png" alt="System Configuration"><br />System Configuration</a></div>
    <div class="icon-hover"><a href="<?php echo Yii::app()->baseUrl ?>/admin/setting/modules" title="Modules Configuration"><img src="<?php echo Yii::app()->theme->baseUrl; ?>/images/modules.png" alt="Modules Configuration"><br />Modules Configuration</a></div>
    <div class="icon-hover"><a href="<?php echo Yii::app()->baseUrl ?>/admin/menus" title="Menus Configuration"><img src="<?php echo Yii::app()->theme->baseUrl; ?>/images/menus.png" alt="Menus Configuration"><br />Menus Configuration</a></div>
</div>
<div class="count-module-col2">
    <h1>Thông báo</h1>
    <p>Không có thông báo nào cả, bạn có thể yên tâm đi chơi rồi!</p>
</div>
<div class="count-module-col2">
    <h1>Trang tin từ Dos.vn</h1>
    <div id="load-news">Loading... <img src="<?php echo Yii::app()->theme->baseUrl ?>/images/ajax-loader.gif" alt="loading" /></div>
</div>