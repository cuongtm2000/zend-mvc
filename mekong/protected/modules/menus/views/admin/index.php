<ul class="modals"><li><a href="<?php echo Yii::app()->request->baseUrl. '/'. $this->ID . '/'. $this->module->getName() ?>/add" title="<?php echo $this->lang['add_new'] ?>"><img src="<?php echo Yii::app()->theme->baseUrl; ?>/images/add.png" alt="<?php echo $this->lang['add_new'] ?>" /><span><?php echo $this->lang['add_new'] ?></span></a></li></ul><div class="clear"></div>
<form name="frm" id="frm" action="" method="post">
	<input type="hidden" name="factive" value="" />
	<table>
		<thead>
		<tr>
			<th class="txt15"><input onclick="javascript: select_switch(this.checked);" type="checkbox" name="checkall" /></th>
			<th class="txt60"><?php echo $this->lang['order']?></th>
			<th>Tên Menu</th>
			<th><?php echo $this->lang['action']?></th>
		</tr>
		</thead>
		<tbody>
		<?php if($listCats): ?>
			<?php $k=1; foreach($listCats as $value): ?>
				<?php $rowclass = ($value['menu_activated'] == 0) ?  ' class="disable"' : ($k%2==0) ? '' : ' class="alt"'; $hot = ($value['menu_homepage'] == 1) ? '<img src="'.Yii::app()->theme->baseUrl.'/images/hot.gif" alt="Hot" />' : '';?>
			<tr<?php echo $rowclass ?>>
				<td><input type="checkbox" name="ids[]" value="<?php echo $value['menu_id'] ?>" /></td>
				<td><?php echo CHtml::link('<img src="'.Yii::app()->theme->baseUrl.'/images/up.gif" alt="Up"/>', array('up', 'id'=>$value['menu_id'])) ?> <?php echo CHtml::link('<img src="'.Yii::app()->theme->baseUrl.'/images/down.gif" alt="Up"/>', array('down', 'id'=>$value['menu_id'])) ?></td>
				<td><?php echo $value['menu_name_prefix'] . ' ' . $hot ?></td>
				<td><?php echo CHtml::link($this->lang['edit'], array('edit', 'id'=>$value['menu_id'])) ?></td>
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
    <div class="control-button"><a href="javascript:delete_list('');" title="<?php echo $this->lang['delete']?>"><img src="<?php echo Yii::app()->theme->baseUrl; ?>/images/delete.png" alt="<?php echo $this->lang['delete']?>" align="left" /> <?php echo $this->lang['delete']?></a></div>
	<script type="text/javascript" src="<?php echo Yii::app()->theme->baseUrl; ?>/js/common.js"></script>
</form><div class="clear"></div>