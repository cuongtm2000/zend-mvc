<ul class="modals"><li><a href="<?php echo Yii::app()->request->baseUrl. '/'. $this->ID . '/'. $this->module->getName() ?>/addcat" title="<?php echo $this->lang['add_new'] ?>"><img src="<?php echo Yii::app()->theme->baseUrl; ?>/images/add.png" alt="<?php echo $this->lang['add_new'] ?>" /><span><?php echo $this->lang['add_new'] ?></span></a></li></ul><div class="clear"></div>
<form name="frm" id="frm" action="" method="post">
	<input type="hidden" name="factive" value="" />
	<table>
		<thead>
		<tr>
			<th class="txt15"><input onclick="javascript: select_switch(this.checked);" type="checkbox" name="checkall" /></th>
			<th class="txt60"><?php echo $this->lang['order']?></th>
			<th>Tên danh mục</th>
			<th>Số mẫu tin</th>
			<th><?php echo $this->lang['action']?></th>
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
				<td>test</td>
				<td><?php echo CHtml::link($this->lang['edit'], array('editcat', 'id'=>$value['cat_id'])) ?> - <?php echo CHtml::link('Xóa', array('delcat', 'id'=>$value['cat_id'])) ?></td>
			</tr>
				<?php $k++; endforeach ?>
			<?php else: ?>
		<tr><td colspan="5"><?php echo $this->lang['no_record']?></td></tr>
			<?php endif; ?>
		</tbody>
	</table>
	<div class="control-button"><img src="<?php echo Yii::app()->theme->baseUrl; ?>/images/syn.png" alt="<?php echo $this->lang['synchronous']?>" align="left" /> <input type="submit" name="syn" value=" <?php echo $this->lang['synchronous']?> " /></div>
	<div class="control-button"><a href="javascript:submit_list('enable', '');" title="<?php echo $this->lang['show']?>"><img src="<?php echo Yii::app()->theme->baseUrl; ?>/images/visible.png" alt="<?php echo $this->lang['show']?>" align="left" /> <?php echo $this->lang['show']?></a></div>
	<div class="control-button"><a href="javascript:submit_list('disable', '');" title="<?php echo $this->lang['hidden']?>"><img src="<?php echo Yii::app()->theme->baseUrl; ?>/images/hidden.png" alt="Ẩn" align="left" /> <?php echo $this->lang['hidden']?></a></div>
	<script type="text/javascript" src="<?php echo Yii::app()->theme->baseUrl; ?>/js/common.js"></script>
</form><div class="clear"></div>
<script type="text/javascript">
    $(document).ready(function() {
        $('table tbody tr').click(function(event) {
            $(this).toggleClass('blue');
            if (event.target.type !== 'checkbox') {
                $(':checkbox', this).attr('checked', function() {
                    return !this.checked;
                });
            }
        });
    });
</script>