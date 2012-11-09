<h4 class="title-box"><span>Tìm kiếm</span></h4>
<form class="form-search" action="<?php echo Yii::app()->baseUrl ?>/lands/default/search" name="search" method="post">
    <select name="provinces">
        <option value="">-- Khu vực / tỉnh --</option>
        <?php $provinces_list = Provinces::model()->listProvince();
        foreach ($provinces_list as $value):
            ?>
            <option value="<?php echo $value['province_id'] ?>"><?php echo $value['province_name'] ?></option>
<?php endforeach ?>
    </select>
    
    <select name="types">
        <option value="">-- Loại bật động sản --</option>
        <?php $cat_list = LandsCat::model()->listCats();
        foreach ($cat_list as $value): ?>
            <option value="<?php echo $value['cat_id'] ?>"><?php echo $value['cat_title'] ?></option>
        <?php endforeach ?>
   
    </select>
    <select name="types">
        <option value="">-- Nhu cầu --</option>
        <?php $type_list = LandsType::model()->listTypes();
        foreach ($type_list as $value): ?>
            <option value="<?php echo $value['type_id'] ?>"><?php echo $value['type_name'] ?></option>
        <?php endforeach ?>
    </select>
    <select name="price">
        <option value="">-- Mức giá --</option>
        <option value="0-500"> &lt;500 triệu</option>
        <option value="500-1500">500 triệu - 1.5 tỷ</option>
        <option value="1500-5000">1.5 tỷ - 5 tỷ</option>
        <option value="5000-10000">5 tỷ - 10 tỷ</option>
        <option value="10000-99999">&gt;=10 tỷ</option>
    </select>
    <p class="text-button"><input class="button-search" type="submit" value="Tìm kiếm" name="submit" /></p>
    <!-- <p>30 Bất động sản đang giao dịch</p> -->
</form>