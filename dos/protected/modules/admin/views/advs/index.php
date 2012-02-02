<div class="content">
<ul class="modals"><li><a href="<?php echo Yii::app()->request->baseUrl ?>/<?php echo $this->module->getName() ?>/<?php echo $this->ID ?>/add" title="Thêm mới"><img src="<?php echo Yii::app()->theme->baseUrl; ?>/images/add.png" alt="Thêm mới" /><span>Thêm mới</span></a></li></ul><div class="clear"></div>
<form name="frm" id="frm" action="" method="post">
    <input type="hidden" name="factive" value="" />
	<table>
    	<thead>
    		<tr>
    			<th class="txt15"><input onclick="javascript: select_switch(this.checked);" type="checkbox" name="checkall" /></th>
    			<th class="txt60">Thứ tự</th>
    			<th>Tên quảng cáo</th>
    	        <th>Ngày bắt đầu</th>
                <th>Ngày kết thúc</th>
                <th>Vị trí</th>
                <th>Loại</th>
    			<th>Thao tác</th>
    		</tr>
    	</thead>
        <tbody>
            <?php if($models): ?>
                <?php $i=1; foreach($models as $value): ?>
                    <?php
                        if($value['start_date']>date("Y-m-d H:i:s")){
                            $start_date = ' green';
                        }else{
                            $start_date = '';
                        }
                        if($value['end_date']<date("Y-m-d H:i:s")){
                            $end_date = ' red';
                        }else{
                            $end_date = '';
                        }
                        if($value['enable'] == 0){
            	    		$rowclass = ' class="disable'.$end_date.$start_date.'"';
            	    	}else{
            	        	$rowclass = ($i%2==0) ? ' class="none'.$end_date.$start_date.'"' : ' class="alt'.$end_date.$start_date.'"';
            	    	}
                    ?>
                    <tr<?php echo $rowclass ?>>
                        <td><input type="checkbox" name="ids[]" value="<?php echo $value['record_id'] ?>" /></td>
                        <td><input type="text" name="orders[<?php echo $value['record_id'] ?>]" maxlength="3" class="txt-sort" value="<?php echo $value['record_order'] ?>" /></td>
                        <td><a href="<?php echo Yii::app()->request->baseUrl ?>/<?php echo $this->module->getName() ?>/<?php echo $this->ID ?>/edit/id/<?php echo $value['record_id'] ?>"><?php echo $value['title'] ?></a></td>
                        <td><?php echo date('d-m-Y', strtotime($value['start_date'])) ?></td>
                        <td><?php echo date('d-m-Y', strtotime($value['end_date'])) ?></td>
                        <td><?php echo $value['position'] ?></td>
                        <td><?php echo ($value['type']=='_bank') ? 'Trang mới' : 'Hiện tại' ?></td>
                        <td><a href="<?php echo Yii::app()->request->baseUrl ?>/<?php echo $this->module->getName() ?>/<?php echo $this->ID ?>/edit/id/<?php echo $value['record_id'] ?>" title="Chỉnh sửa">Chỉnh sửa</a></td>
                    </tr>
                <?php $i++;endforeach; ?>
            <?php else: ?>
                <tr><td colspan="6">Không tồn tại mẫu tin</td></tr>
            <?php endif; ?>
        </tbody>
	</table>
    <div class="control-button"><img src="<?php echo Yii::app()->theme->baseUrl; ?>/images/syn.png" alt="Đồng bộ" align="left" /> <input type="submit" name="syn" value=" Đồng bộ " /></div>
	<div class="control-button"><img src="<?php echo Yii::app()->theme->baseUrl; ?>/images/reorder.png" alt="Sắp xếp" align="left" /> <input type="submit" name="sort" value=" Sắp xếp " /></div>
	<div class="control-button"><a href="javascript:submit_list('enable', '');" title="Hiển thị"><img src="<?php echo Yii::app()->theme->baseUrl; ?>/images/visible.png" alt="Hiển thị" align="left" /> Hiển thị</a></div>
	<div class="control-button"><a href="javascript:submit_list('disable', '');" title="Ẩn"><img src="<?php echo Yii::app()->theme->baseUrl; ?>/images/hidden.png" alt="Ẩn" align="left" /> Ẩn</a></div>
	<div class="control-button"><a href="javascript:delete_list('');" title="Xóa"><img src="<?php echo Yii::app()->theme->baseUrl; ?>/images/delete.png" alt="Xóa" align="left" /> Xóa</a></div>
    <?php $this->widget('CLinkPager', array('pages' => $pages, 'header'=>'', 'htmlOptions'=>array('class'=>'yiiPager paging')))?>
    <script type="text/javascript" src="<?php echo Yii::app()->theme->baseUrl; ?>/js/common.js"></script>
</form><div class="clear"></div>
</div>