<?php
$this->breadcrumbs=array(
	'Users'=>array('index'),
	'Manage',
);
?>

<h3><strong>Danh sách thành viên thoát bàn</strong></h3>
<form action="" method="post" enctype="multipart/form-data" id="frm" name="frm">
    <input type="hidden" name="factive" value="" />
    <table  border="1">
        <thead>
            <tr>
                <th>STT</th>
                <th class="txt60">Thành viên</th>
                <th>CMND</th>
                <th>Ngày đạt chuẩn</th>
                <th>Level</th>
            </tr>
        </thead>
        <tbody>
            <?php
            if (is_array($model)) {
                $k = 1;
                foreach ($model as $value) {
                    $rowclass = ($k % 2 == 0) ? '' : ' class="alt"';
                    echo '<tr ' . $rowclass . '>
                            
		               <td>' . $k++. '</td>
		               <td>' . $value['dos_module_usernames_username'] . '</td>
                               <td>' . $value->dosModuleUsernamesUsername->cmnd . '</td>
                               <td>' . $value['upgrade_date'] . '</td>
                               <td>' . $value->dosModuleUsernamesUsername->level . '</td>
		            </tr>';
                }
            } else {
                echo '<tr><td colspan="6">' . 'Hiện tại bạn không có thành viên nào nào' . '</td></tr>';
            }
            ?>
        </tbody>
    </table>
</form>
