<ul class="modals"><li><a href="<?php echo Yii::app()->request->baseUrl.'/'.$this->ID.'/'.$this->module->getName() ?>/add" title="Thêm mới"><img src="<?php echo Yii::app()->theme->baseUrl; ?>/images/add.png" alt="Thêm mới" /><span>Thêm mới</span></a></li></ul><div class="clear"></div>
<form name="frm" id="frm" action="" method="post">
    <input type="hidden" name="factive" value="" />
	<table>
    	<thead>
    		<tr>
    			<th class="txt15"><input onclick="javascript: select_switch(this.checked);" type="checkbox" name="checkall" /></th>
    			<th class="txt60">Thứ tự</th>
    			<th>Tên Banner</th>
    	        <th>Ngày tạo</th>
                <th>Vị trí</th>
    			<th>Thao tác</th>
    		</tr>
    	</thead>
        <tbody>
            <?php if($models): ?>
                <?php $i=1; foreach($models as $value): ?>
                    <?php $rowClass = ($value['enable'] == 0) ? ' class="disable"' : (($i%2==0) ? '' : ' class="alt"');?>
                    <tr<?php echo $rowClass ?>>
                        <td><input type="checkbox" name="ids[]" value="<?php echo $value['banner_id'] ?>" /></td>
                        <td><input type="text" name="orders[<?php echo $value['banner_id'] ?>]" maxlength="3" class="txt-sort" value="<?php echo $value['banner_order'] ?>" /></td>
                        <td><a class="nyroModal" href="<?php echo Yii::app()->baseUrl.Yii::getPathOfAlias('filePathUpload').'/image/'.$this->module->id.'/'.$value['banner_picture'] ?>"><?php echo $value['banner_name'] ?></a></td>
                        <td><?php echo date('d-m-Y', strtotime($value['banner_date'])) ?></td>
                        <td><?php echo CHtml::encode($this->lang[$value['module_id']]) ?></td>
                        <td><?php echo CHtml::link($this->lang['edit'], array('edit', 'id' => $value->banner_id)) ?></td>
                    </tr>
                <?php $i++;endforeach; ?>
            <?php else: ?>
                <tr><td colspan="6"><?php echo $this->lang['no_record']?></td></tr>
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