<h1 class="title-right"><span>Lịch sử giao dịch của <?php echo Yii::app()->user->name?></span></h1>
<table>
	<thead>
	<tr>
		<th>STT</th>
		<th>Loại</th>
		<th>Nội dung</th>
		<th>Thời gian</th>
		<th>Người gửi</th>
		<th>Người nhận</th>
		<th>Số tiền</th>
	</tr>
	</thead>
	<tbody>
	<?php if ($listLog['models']): ?>
		<?php $i = 1;
		foreach ($listLog['models'] as $model): ?>
			<?php $rowclass = ($i % 2 == 0) ? '' : ' class="alt"';?>
			<tr<?php echo $rowclass?>>
				<td><?php echo $i?></td>
				<td><?php echo $model['log_type']?></td>
				<td><?php echo $model['detail']?></td>
				<td><?php echo date('d-m-Y H:i:s', strtotime($model['time'])) ?></td>
				<td><?php echo $model['sender']?></td>
				<td><?php echo $model['receiver']?></td>
				<td><?php echo $model['value']?></td>
			</tr>
		<?php $i++; endforeach ?>
		<?php endif?>
	</tbody>
</table>
<?php $this->widget('CLinkPager', array('pages' => $listLog['pages'], 'header'=>'', 'prevPageLabel' => '< Lùi', 'nextPageLabel' => 'Tiếp >', 'htmlOptions'=>array('class'=>'yiiPager paginglog paging')))?>