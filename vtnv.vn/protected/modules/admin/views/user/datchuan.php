<?php isset($post)? var_dump($post):'';
// var_dump($model);
?>
<h3><strong>Danh sách thành viên đạt chuẩn</strong></h3>
<form action="" method="post" enctype="multipart/form-data" id="frm" name="frm">
    <input type="hidden" name="factive" value="" />
    <table  border="1">
        <thead>
            <tr>
                <th>Độ ưu tiên</th>
                <th>Ngày đạt chuẩn</th>
                <th class="txt60">Username</th>
                <th>Level</th>
                <th>Nhánh trái</th>
                <th>Nhánh phải</th>
                <th>User được gắn</th>


            </tr>
        </thead>
        <tbody>
            <?php
            if (is_array($model)) {
                $k = 0;
                foreach ($model as $value) {
                    $rowclass = ($k % 2 == 0) ? '' : ' class="alt"';
                    $k++;

                    echo '<tr ' . $rowclass . '>
		         
		               <td><input maxlength="3" size="3" name="ids[' . $value['dos_module_usernames_username'] . ']" value="' . $value['priority'] . '" /></td>
		               <td>' . $value['upgrade_date'] . '</td>
		               <td>' . $value['dos_module_usernames_username'] . '</td>
                               <td>' . $value->dosModuleUsernamesUsername->level . '</td>
		               <td>' . $value['left_child'] . '</td>
		               <td>' . $value['right_child'] . '</td>
		               <td>' . $value['four_child'] . '</td>      
		            </tr>';
                }
            } else {
                echo '<tr><td colspan="6">' . 'Hiện tại bạn không có thành viên nào nào' . '</td></tr>';
            }
            ?>
        </tbody>
    </table>
    <div class="control-button">
        <input type="submit" value="Đồng bộ" />


    </div>




</form>

