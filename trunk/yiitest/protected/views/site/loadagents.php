<table border='1'>
	<thead>
		<tr><th>Mã số</th><th>Họ &amp; tên</th><th>Tên công ty</th><th>Email</th><th>Số DT</th><th>Địa chỉ</th></tr>
	</thead>
	<tbody>
		<?php if($listAgents):?>
			<?php foreach($listAgents as $value):?>
			<tr onclick="javascript:changeparent(<?php echo $value['agent_id']?>)">
				<td><a href="" title="Chọn <?php echo $value['agent_id']?> làm đại lý của bạn"><?php echo $value['agent_id']?></a></td>
				<td><?php echo $value['fullname']?></td>
				<td><?php echo $value['company']?></td>
				<td><?php echo $value['email']?></td>
				<td><?php echo $value['phone']?></td>
				<td><?php echo $value['address']?></td>
			</tr>
			<?php endforeach?>
		<?php else:?>
		<tr>
			<td colspan="6">Chưa có đại lý tại tỉnh <strong><?php echo $detailProvince['province_name']?></strong></td>
		</tr>
		<?php endif?>
	</tbody>
</table>