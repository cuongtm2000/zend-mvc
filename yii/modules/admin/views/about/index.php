<div class="content">
<ul class="modals"><li><a href="<?php echo Yii::app()->request->baseUrl ?>/<?php echo $this->module->getName() ?>/<?php echo $this->ID ?>/add" title="Thêm mới"><img src="<?php echo Yii::app()->theme->baseUrl; ?>/images/add.png" alt="Thêm mới" /><span>Thêm mới</span></a></li></ul><div class="clear"></div>
<form name="frm" id="frm" action="" method="post">
    <input type="hidden" name="factive" value="" />
	<table>
    	<thead>
    		<tr>
    			<th class="txt15"><input onclick="javascript: select_switch(this.checked);" type="checkbox" name="checkall" /></th>
    			<th class="txt60"><?php echo $sort->link('record_order', 'Thứ tự')?></th>
    			<th><?php echo $sort->link('title', 'Tiêu đề')?></th>
    	        <th><?php echo $sort->link('created', 'Ngày tạo')?></th>
    			<th><?php echo $sort->link('hit', 'Lượt xem')?></th>
    			<th>Thao tác</th>
    		</tr>
    	</thead>
        <tbody>
            <?php if($models): ?>
                <?php $i=1; foreach($models as $value): ?>
                    <?php 
                        if($value['activated'] == 0){
            	    		$rowclass = ' class="disable"';
            	    	}else{
            	        	$rowclass = ($i%2==0) ? '' : ' class="alt"';
            	    	}
                        
                        if($value['hot'] == 1){
            	    		$title = '<strong>'.$value['title'].'</strong> <img src="'.Yii::app()->theme->baseUrl.'/images/hot.gif" alt="Hot" />';
            	    	}else{
            	        	$title = $value['title'];
            	    	}
                    ?>
                    <tr<?php echo $rowclass ?>>
                        <td><input type="checkbox" name="ids[]" value="<?php echo $value['record_id'] ?>" /></td>
                        <td><input type="text" name="orders[<?php echo $value['record_id'] ?>]" maxlength="3" class="txt-sort" value="<?php echo $value['record_order'] ?>" /></td>
                        <td><?php echo $title ?></td>
                        <td><?php echo date('d-m-Y', strtotime($value['created'])) ?></td>
                        <td><?php echo $value['hit'] ?></td>
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
	<div class="control-button"><img src="<?php echo Yii::app()->theme->baseUrl; ?>/images/visible.png" alt="Hiển thị" align="left" /> <a href="javascript:submit_list('enable', '');" title="Hiển thị">Hiển thị</a></div>
	<div class="control-button"><img src="<?php echo Yii::app()->theme->baseUrl; ?>/images/hidden.png" alt="Ẩn" align="left" /> <a href="javascript:submit_list('disable', '');" title="Ẩn">Ẩn</a></div>
	<div class="control-button"><img src="<?php echo Yii::app()->theme->baseUrl; ?>/images/delete.png" alt="Xóa" align="left" /> <a href="javascript:delete_list('');" title="Xóa">Xóa</a></div>
    <?php $this->widget('CLinkPager', array('pages' => $pages, 'header'=>'', 'htmlOptions'=>array('class'=>'yiiPager paging')))?>
    <script type="text/javascript" src="<?php echo Yii::app()->theme->baseUrl; ?>/js/common.js"></script>
</form><div class="clear"></div>
</div>