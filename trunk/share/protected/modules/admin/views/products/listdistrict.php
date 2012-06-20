<select name="Products[dos_districts_district_id]" id="Products_dos_districts_district_id">;
<?php 
    foreach ($list as $value) {
        echo '<option value="'.$value['district_id'].'">'.$value['district_name'].'</option>';
    }
?>
</select>