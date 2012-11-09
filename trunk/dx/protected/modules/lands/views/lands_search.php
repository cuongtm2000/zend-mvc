<h4 class="title-box"><span>Tìm kiếm</span></h4>
<form class="form-search" action="<?php echo Yii::app()->baseUrl ?>lands/default/search" name="search" method="post">
    <select name="provinces">
        <option value="0">Khu vực / tỉnh</option>
        <option value="1">An Giang</option>
        <option value="2">Bình Dương</option>
        <option value="3">Đồng Nai</option>
        <option value="4">Hồ Chí Minh</option>
        <option value="5">Hà Nội</option>
    </select>
    <select name="">
        <option value="0">Loại bật động sản</option>
        <option value="">Nhà cho thuê</option>
        <option value="">Nhà bán</option>
        <option value="">Mua nhà</option>
        <option value="">Thuê xưởng</option>
    </select>
    <select name="">
        <option value="0">Nhu cầu</option>
        <option value="">Thuê</option>
        <option value="">Mua</option>
        <option value="">Bán</option>
        <option value="">Chuyển nhưởng</option>
    </select>
    <select name="">
        <option value="0">Mức giá</option>
        <option value="">500 triệu - 1.5 tỷ</option>
        <option value="">1.5 tỷ - 5 tỷ</option>
        <option value="">5 tỷ - 10 tỷ</option>
        <option value="">&lt;=10 tỷ</option>
    </select>
    <input class="button-search" type="submit" value="Tìm kiếm" name="submit" />
    <p>3030 Bất động sản đang giao dịch</p>
</form>