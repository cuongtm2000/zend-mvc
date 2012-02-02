<div id="sign-up">
    Xin chúc mừng, website của bạn đã được tạo, ngay bây giờ bạn có thể đăng nhập để quản lý, thay đổi thông tin, bố cục trên trang web của bạn.
    <div class="sign-up-heading"><h1 class="small"><span>1</span>Set up your account</h1></div>
    <div class="input_field">
        <ul class="info-user">
            <li>
                <label>Địa chỉ Website:</label>
                <a target="_blank" href="http://<?php echo Yii::app()->session['user_registed']?>.dos.vn">http://<?php echo Yii::app()->session['user_registed']?>.dos.vn</a>
            </li>
            <li>
                <label>Địa chỉ Email:</label>
                <?php echo $info_user['email']?>
            </li>
            <li>
                <label>Tỉnh thành:</label>
                <?php echo $info_user['province_name']?>
            </li>
            <li>
                <label>Mẫu web:</label>
                <?php echo $info_user['dos_templates_template']?>
            </li>
        </ul>
    </div>
    <div class="sign-up-heading"><h1 class="small"><span>2</span>Choose Pages &amp; Features For Your Site</h1></div>
    <div class="input_field">
        <ul class="info-user">
            <li>
                <label>Choose Pages:</label>
                <div class="choose-page border margin-top-none">
                    <img src="<?php echo Yii::app()->theme->baseUrl?>/images/icon-medium.png" alt="Trang chủ" /><br/>Trang chủ<br/><input value="default" type="checkbox" checked="checked" disabled="disabled" />
                </div>
                <?php foreach($choosePage as $value):?>
                <div class="choose-page border margin-top-none">
                    <img src="<?php echo Yii::app()->theme->baseUrl?>/images/icon-medium.png" alt="<?php echo $this->lang[$value['module_id']]?>" /><br/><?php echo $this->lang[$value['module_id']]?><br/><input value="<?php echo $value['module_id']?>" type="checkbox" checked="checked" disabled="disabled" />
                </div>
                <?php endforeach;?>
            </li>
            <li>
                <label>Choose Features:</label>
                <?php foreach($chooseFeature as $value):?>
                <div class="choose-page border margin-top-none">
                    <img src="<?php echo Yii::app()->theme->baseUrl?>/images/icon-medium.png" alt="<?php echo $this->lang[$value['module_id']]?>" /><br/><?php echo $this->lang[$value['module_id']]?><br/><input value="<?php echo $value['module_id']?>" type="checkbox" checked="checked" disabled="disabled" />
                </div>
                <?php endforeach;?>
            </li>
            <li><p><strong>Để quản lý website và thay đổi thông tin đã đăng ký bên trên, vui lòng truy cập liên kết <a href="http://<?php echo Yii::app()->session['user_registed']?>.dos.vn/admin" target="_blank">http://<?php echo Yii::app()->session['user_registed']?>.dos.vn/admin</a></strong></p></li>
        </ul>
    </div>
</div>