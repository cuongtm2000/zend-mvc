<?php
$this->breadcrumbs = array(
    'Users' => array('index'),
    'Manage',
);
var_dump($debug);
//var_dump($post);
?>

<div class="content">
    <h3><strong>Danh sách thành viên chờ kích hoạt</strong></h3>
    <form action="" method="post" enctype="multipart/form-data" id="frm" name="frm">
        <input type="hidden" name="factive" value="" />
        <table  border="1">
            <thead>
                <tr>
                    <th class="txt15"><input onclick="javascript: select_switch(this.checked);" type="checkbox" name="checkall" /></th>
                    <th class="txt60">Username</th>
                    <th>Họ tên</th>
                    <th>Ngày sinh</th>
                    <th>Ngày ĐK</th>
                    <th>Người giới thiệu</th>
                    <th>Số ĐT</th>
                    <th>Email</th>
                    <th>Số TK NH</th>
                    <th>Tên NH</th>
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
		               <td><input type="checkbox" name="ids[]" value="' . $value['username'] . '" /></td>
		               <td><strong>' . $value['username'] . '</strong></td>
		               <td>' . $value['full_name'] . '</td>
		             	<td>' . $value['birthday'] . '</td>
		               <td>' . substr($value['create_date'], 0, 10) . '</td>
		               <td>' . $value['user_gioithieu'] . '</td>
		    
		               <td>' . $value['phone'] . '</td>
		               <td>' . $value['email'] . '</td>
		               <td>' . $value['bank_number'] . '</td>
		               <td>' . $value['bank_name'] . '</td>
		               
		            </tr>';
                    }
                } else {
                    echo '<tr><td colspan="6">' . 'Hiện tại bạn không có thành viên nào nào' . '</td></tr>';
                }
                ?>
            </tbody>
        </table>
        <div class="control-button">
            <img src="" alt="<?php //echo $this->lang['sys_actived']  ?>" align="left" /> 
            <a href="javascript:submit_list('enable','');" title="Kích hoạt">
                Kích hoạt
            </a>
        </div>
        <div class="control-button">
            <img src="" align="left" /> 
            <a href="javascript:delete_list('');" >
                Xóa
            </a>
        </div>



    </form>

    <script type="text/javascript" src="<?php echo Yii::app()->theme->baseUrl; ?>/js/common.js"></script></div>

