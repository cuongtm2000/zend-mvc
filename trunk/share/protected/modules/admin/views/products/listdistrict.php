<select name="Products[dos_districts_district_id]" id="Products_dos_districts_district_id">;
<?php 
    foreach ($list as $value) {
        $str=($idd==$value['district_id']) ? 'selected="selected"':'';
        echo '<option value="'.$value['district_id'].'" '.$str.'>'.$value['district_name'].'</option>';
    }
?>
</select>