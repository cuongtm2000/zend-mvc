<select onchange="load()" name="Products[dos_districts_district_id]" id="Products_dos_districts_district_id">;
    <?php
    echo '<option value="0">Chọn quận huyện</option>';
    foreach ($list as $value) {
        $str = ($idd == $value['district_id']) ? 'selected="selected"' : '';
        echo '<option value="' . $value['district_id'] . '" ' . $str . '>' . $value['district_name'] . '</option>';
    }
    ?>
</select>

<script>
    function load(){
       
        //         alert($("#Products_dos_districts_district_id").val());
        $("#dos_wards_ward_id").load("<?php echo Yii::app()->baseUrl ?>/products/default/listward/id/"+ $("#Products_dos_districts_district_id").val());
           
    }
</script>
