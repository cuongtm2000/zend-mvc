<h3><strong>Danh sách thành viên thoát bàn</strong></h3>
<form action="" method="post" enctype="multipart/form-data" id="frm" name="frm">
    <table>
        <thead>
            <tr>
                <th class="txt15">STT</th>
                <th>Thành viên</th>
                <th>CMND</th>
                <th>Ngày đạt chuẩn</th>
                <th>Level</th>
            </tr>
        </thead>
        <tbody>
            <?php if ($model['models']):?>
				<?php $k = 1; foreach ($model['models'] as $value):?>
					<?php $rowclass = ($k % 2 == 0) ? '' : ' class="alt"';?>
                    <tr<?php echo $rowclass?>>
						<td><?php echo $k++ ?></td>
						<td><?php echo $value['dos_module_usernames_username']?></td>
						<td><?php echo $value->dosModuleUsernamesUsername->cmnd?></td>
						<td><?php echo $value['upgrade_date']?></td>
						<td><?php echo $value->dosModuleUsernamesUsername->level?></td>
		            </tr>
            	<?php endforeach?>
            <?php else:?>
                <tr><td colspan="5">Không có thành viên nào</td></tr>
            <?php endif; ?>
        </tbody>
    </table>
	<?php $this->widget('CLinkPager', array('pages' => $model['pages'], 'header' => '', 'htmlOptions' => array('class' => 'yiiPager paging'))) ?>
</form><div class="clear"></div>
