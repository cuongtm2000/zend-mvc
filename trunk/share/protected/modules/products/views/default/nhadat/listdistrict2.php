<select class="select-box" name="district_id" id="district_id">;
    <?php
    echo '<option value="">Chọn quận huyện</option>';
    foreach ($list as $value) {
        $str = ($idd == $value['district_id']) ? 'selected="selected"' : '';
        echo '<option value="' . $value['district_id'] . '" ' . $str . '>' . $value['district_name'] . '</option>';
    }
    ?>
</select>
