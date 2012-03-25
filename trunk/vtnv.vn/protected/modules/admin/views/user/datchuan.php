<h3><strong>Danh sách bàn sắp thoát</strong></h3>
<form action="" method="post" enctype="multipart/form-data" id="frm" name="frm">
	<input type="hidden" name="factive" value="" />
    <table>
        <thead>
            <tr>
                <th>Độ ưu tiên</th>
                <th>Ngày đạt chuẩn</th>
                <th>Username</th>
                <th>Level</th>
                <th>Nhánh trái</th>
                <th>Nhánh phải</th>
                <th>User được gắn</th>
            </tr>
        </thead>
        <tbody>
            <?php if ($model['models']):?>
                <?php $k = 0; foreach ($model['models'] as $value): $rowclass = ($k % 2 == 0) ? '' : ' class="alt"'; $k++; ?>
                    <tr<?php echo $rowclass?>>
		               <td><input maxlength="3" name="ids[<?php echo $value['dos_module_usernames_username'] ?>]" value="<?php echo $value['priority']?>" class="txt-sort" /></td>
		               <td><?php echo $value['upgrade_date']?></td>
		               <td><strong><?php echo $value['dos_module_usernames_username']?></strong></td>
                       <td><?php echo $value->dosModuleUsernamesUsername->level?></td>
		               <td><?php echo $value['left_child']?></td>
		               <td><?php echo $value['right_child']?></td>
		               <td><?php echo str_replace('|', ' - ', $value['four_child'])?></td>
		            </tr>
                <?php endforeach?>
            <?php else:?>
                <tr><td colspan="7">Hiện tại bạn không có thành viên nào</td></tr>
            <?php endif ?>
        </tbody>
    </table>
	<div class="control-button"><img src="<?php echo Yii::app()->theme->baseUrl; ?>/images/syn.png" alt="Đồng bộ" align="left" /> <input type="submit" name="syn" value=" Đồng bộ " /></div>
	<?php $this->widget('CLinkPager', array('pages' => $model['pages'], 'header' => '', 'htmlOptions' => array('class' => 'yiiPager paging'))) ?>
</form><div class="clear"></div>