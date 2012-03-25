<?php //var_dump($debug) ?>
<h3><strong>Danh sách thành viên chờ kích hoạt</strong></h3>
<form name="frm" id="frm" action="" method="post">
	<input type="hidden" name="factive" value="" />
	<table>
		<thead>
		<tr>
			<th class="txt15"><input onclick="javascript: select_switch(this.checked);" type="checkbox" name="checkall" /></th>
			<th>Username</th>
			<th>Họ tên</th>
			<th>Ngày ĐK</th>
			<th>Người giới thiệu</th>
			<th>Số ĐT</th>
			<th>Số TK NH</th>
			<th>Tên NH</th>
		</tr>
		</thead>
		<tbody>
		<?php if ($model): ?>
			<?php $i = 0; foreach ($model as $value):?>
				<?php $rowclass = ($i % 2 == 0) ? '' : ' class="alt"';?>
				<tr<?php echo $rowclass ?>>
					<td><input type="checkbox" name="ids[]" value="<?php echo $value['username'] ?>" /></td>
					<td><?php echo $value['username'] ?></td>
					<td><?php echo $value['full_name'] ?></td>
					<td><?php echo date('d-m-Y', strtotime($value['create_date'])) ?></td>
					<td><?php echo $value['user_gioithieu'] ?></td>
					<td><?php echo $value['phone'] ?></td>
					<td><?php echo $value['bank_number'] ?></td>
					<td><?php echo $value['bank_name'] ?></td>
				</tr>
			<?php $i++; endforeach?>
		<?php else: ?>
			<tr><td colspan="8">Không tồn tại mẫu tin</td></tr>
		<?php endif; ?>
		</tbody>
	</table>
	<div class="control-button"><a href="javascript:submit_list('enable', '');" title="Kích hoạt"><img src="<?php echo Yii::app()->theme->baseUrl; ?>/images/visible.png" alt="Kích hoạt" align="left" /> Kích hoạt</a></div>
	<div class="control-button"><a href="javascript:delete_list('');" title="Xóa"><img src="<?php echo Yii::app()->theme->baseUrl; ?>/images/delete.png" alt="Xóa" align="left" /> Xóa</a></div>
</form><div class="clear"></div>
<script type="text/javascript" src="<?php echo Yii::app()->theme->baseUrl; ?>/js/common.js"></script>