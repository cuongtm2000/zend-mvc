<ul class="modals"><li><a href="<?php echo Yii::app()->request->baseUrl ?>/<?php echo $this->module->getName() ?>/<?php echo $this->ID ?>/addcat" title="Thêm mới"><img src="<?php echo Yii::app()->theme->baseUrl; ?>/images/add.png" alt="Thêm mới" /><span>Thêm mới</span></a></li></ul><div class="clear"></div>
<form name="frm" id="frm" action="" method="post">
    <input type="hidden" name="factive" value="" />
	<table>
    	<thead>
    		<tr>
    			<th class="txt15"><input onclick="javascript: select_switch(this.checked);" type="checkbox" name="checkall" /></th>
    			<th class="txt60">Thứ tự</th>
    			<th>Tên danh mục</th>
    	        <th>Số mẫu tin</th>
    			<th>Thao tác</th>
    		</tr>
    	</thead>
        <tbody>
            <?php if($listCats): ?>
                <?php $k=1; foreach($listCats as $value): ?>
                    <?php
						if($value['cat_enable'] == 0){
							$rowclass = ' class="disable"';
						}else{
							$rowclass = ($k%2==0) ? '' : ' class="alt"';
						}
                    ?>
                    <tr<?php echo $rowclass ?>>
                        <td><input type="checkbox" name="ids[]" value="<?php echo $value['cat_id'] ?>" /></td>
                        <td><?php echo CHtml::link('<img src="'.Yii::app()->theme->baseUrl.'/images/up.gif" alt="Up"/>', array('upcat', 'id'=>$value['cat_id'])) ?> <?php echo CHtml::link('<img src="'.Yii::app()->theme->baseUrl.'/images/down.gif" alt="Up"/>', array('downcat', 'id'=>$value['cat_id'])) ?></td>
                        <td><?php echo $value['cat_title_prefix'] ?></td>
                        <td><?php echo $model->countItemByCat($value['cat_id']) ?></td>
                        <td><?php echo CHtml::link($this->lang['edit'], array('editcat', 'id'=>$value['cat_id'])) ?> <?php echo CHtml::link('Xóa', array('delcat', 'id'=>$value['cat_id'])) ?></td>
                    </tr>
                <?php $k++; endforeach ?>
            <?php else: ?>
                <tr><td colspan="5"><?php echo $this->lang['no_record']?></td></tr>
            <?php endif; ?>
        </tbody>
	</table>
    <div class="control-button"><img src="<?php echo Yii::app()->theme->baseUrl; ?>/images/syn.png" alt="Đồng bộ" align="left" /> <input type="submit" name="syn" value=" Đồng bộ " /></div>
	<div class="control-button"><a href="javascript:submit_list('enable', '');" title="Hiển thị"><img src="<?php echo Yii::app()->theme->baseUrl; ?>/images/visible.png" alt="Hiển thị" align="left" /> Hiển thị</a></div>
	<div class="control-button"><a href="javascript:submit_list('disable', '');" title="Ẩn"><img src="<?php echo Yii::app()->theme->baseUrl; ?>/images/hidden.png" alt="Ẩn" align="left" /> Ẩn</a></div>
    <script type="text/javascript" src="<?php echo Yii::app()->theme->baseUrl; ?>/js/common.js"></script>
</form><div class="clear"></div>