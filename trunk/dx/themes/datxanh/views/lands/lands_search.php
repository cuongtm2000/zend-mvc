<!--
	Các file này ko cần bắt buộc chọn, Nếu rỗng thì bỏ qua khỏi query
-->
<h4 class="title-box"><span>Tìm kiếm</span></h4>
<form class="form-search" action="lands/default/search" name="search" method="post">
    <select name="provinces">
		<option value="0">Khu vực / tỉnh</option>
		<?php $provinces_list = Provinces::model()->listProvince(); foreach($provinces_list as $value):?>
			<option value="<?php echo $value['province_id']?>"><?php echo $value['province_name']?></option>
		<?php endforeach?>
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
        <option value="0-0">Mức giá</option>
        <option value="500-1500">500 triệu - 1.5 tỷ</option>
        <option value="1500-5000">1.5 tỷ - 5 tỷ</option>
        <option value="5000-10000">5 tỷ - 10 tỷ</option>
        <option value="10000-99999">&lt;=10 tỷ</option>
    </select>
    <p class="text-button"><input class="button-search" type="submit" value="Tìm kiếm" name="submit" /></p>
    <p>30 Bất động sản đang giao dịch</p>
</form>