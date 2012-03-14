<div class="welcome">Chào mừng <strong><?php echo Yii::app()->user->id?></strong> đến với hệ thống quản lý website của công ty chúng tôi. Ngay bây giờ bạn có thể bấm vào các nút bên trái và chỉnh sửa nó bên phải, bạn có thể thay đổi nội dung danh mục Giới thiệu công ty, địa chỉ liên hệ, Sản phẩm, Tin tức, Dịch vụ của công ty. <a href="#">Tìm hiểu thêm</a></div>
<div class="static">
    <div class="col-static1">Tổng lượt truy cập<p><?php echo $counter['save_value']+1?></p></div>
    <div class="col-static2">Thứ hạng Web<p id="alexa">0</p></div>
    <div class="col-static3">Số thành viên quản lý<p>1</p></div>
</div>
<div class="count-module-col1">
    <h1>Thống kê chức năng</h1>
    
    <?php $statics = new StatisticsModules; ?>
    <?php foreach ($this->module_user as $value): ?>
        <p><label><?php echo $this->lang[$value['dos_modules_module_id']] ?>:</label>&nbsp;</p>
        <?php $urls = explode('|', $value['module_url']); $title = explode('|', $value['module_title']); $i = 0; foreach ($urls as $url): ?>
        <p class="sub"><label><a href="<?php echo Yii::app()->request->baseUrl . '/admin/' . $url ?>"><?php echo $title[$i] ?></a>:</label><?php echo $statics->countItem($value['dos_modules_module_id'], $url);?></p>
        <?php $i++; endforeach; ?>
    <?php endforeach; ?>
</div>
<div class="count-module-col2">
    <h1>Thông báo</h1>
    <p>Không có thông báo nào cả, bạn có thể yên tâm đi chơi rồi!</p>
</div>
<div class="count-module-col2">
    <h1>Trang tin từ Dos.vn</h1>
    <div id="load-news">Loading... <img src="<?php echo Yii::app()->theme->baseUrl ?>/images/ajax-loader.gif" alt="loading" /></div>
</div>