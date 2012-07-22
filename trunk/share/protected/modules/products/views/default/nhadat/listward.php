<select name="Products[dos_wards_ward_id]" id="Products_dos_wards_ward_id">;
<?php 
    echo '<option value="0">Chọn phường xã</option>';
    foreach ($list as $value) {
        $str=($idd==$value['ward_id']) ? 'selected="selected"':'';
        echo '<option value="'.$value['ward_id'].'" '.$str.'>'.$value['ward_name'].'</option>';
    }
?>
</select>