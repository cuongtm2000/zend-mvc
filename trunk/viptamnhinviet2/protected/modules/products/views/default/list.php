<h1 class="title-right"><span>Sản phẩm của <?php echo Yii::app()->user->name?></span></h1>
<form name="frm" id="frm" action="" method="post">
	<table>
		<thead>
		<tr>
			<th class="txt15"><input onclick="javascript: select_switch(this.checked);" type="checkbox" name="checkall"/></th>
			<th>Tiêu đề</th>
			<th>Phân loại</th>
			<th>Lượt xem</th>
			<th>Thao tác</th>
		</tr>
		</thead>
		<tbody>
		<?php $i=1; foreach($models as $model):?>
			<?php
				if($model['enable'] == 0){
					$rowclass = ' class="disable"';
				}else{
					$rowclass = ($i%2==0) ? '' : ' class="alt"';
				}
				if($model['hot'] == 1){
					$title = '<strong>'.$model['title'].'</strong> <img src="'.Yii::app()->theme->baseUrl.'/images/hot.gif" alt="Hot" />';
				}else{
					$title = $model['title'];
				}
			?>
			<tr<?php echo $rowclass?>>
				<td><input type="checkbox" name="ids[]" value="<?php echo $model['record_id']?>"/></td>
				<td><?php echo CHtml::link($title, array('/san-pham/' . $model['ProductsCat']['tag'] . '/' . $model['tag'] . '.html')) ?></td>
				<td><?php echo $model['ProductsCat']['cat_title']?></td>
				<td><?php echo $model['hits']?></td>
				<td><?php echo CHtml::link('Chỉnh sửa', array('edit', 'id' => $model['record_id'])) ?></td>
			</tr>
		<?php $i++; endforeach?>
		</tbody>
	</table>
	<div class="control-button"><a href="javascript:delete_list('');" title="Xóa"><img src="<?php echo Yii::app()->theme->baseUrl; ?>/images/delete.png" alt="Xóa" align="left" /> Xóa</a></div>
	<?php $this->widget('CLinkPager', array('pages' => $pages, 'header'=>'', 'prevPageLabel' => '< Lùi', 'nextPageLabel' => 'Tiếp >', 'htmlOptions'=>array('class'=>'yiiPager paging')))?>
	<script type="text/javascript" src="<?php echo Yii::app()->theme->baseUrl; ?>/js/common.js"></script>
</form>