<form name="frm" id="frm" action="" method="post">
    <table>
        <thead>
        <tr>
            <th class="txt15"><input onclick="javascript: select_switch(this.checked);" type="checkbox" name="checkall" /></th>
            <th class="txt60"><?php echo $this->lang['order']?></th>
            <th>ID</th>
            <th><?php echo $this->lang['title']?></th>
            <th><?php echo $this->lang['action']?></th>
        </tr>
        </thead>
        <tbody>
        <?php if ($model): ?>
            <?php $i = 1; foreach ($model as $value): $rowClass = ($i % 2 == 0) ? '' : ' class="alt"';?>
            <tr<?php echo $rowClass ?>>
                <td><input type="checkbox" name="ids[]" value="<?php echo $value['module_id'] ?>" /></td>
                <td><input type="text" name="orders[<?php echo $value['module_id'] ?>]" maxlength="3" class="txt-sort" value="<?php echo $value['module_sort'] ?>" /></td>
                <td><?php echo CHtml::link($value['module_id'], array('edit', 'id' => $value['module_id'])) ?></td>
                <td><?php echo $this->lang[$value['module_id']] ?></td>
                <td><?php echo CHtml::link('Position', array('position', 'id' => $value['module_id'])) ?> - <?php echo CHtml::link('Url', array('url', 'id' => $value['module_id'])) ?></td>
            </tr>
            <?php $i++; endforeach; ?>
            <?php else: ?>
        <tr><td colspan="6">No record</td></tr>
        <?php endif; ?>
        </tbody>
    </table>
    <div class="control-button"><img src="<?php echo Yii::app()->theme->baseUrl; ?>/images/syn.png" alt="<?php echo $this->lang['synchronous']?>" align="left" /> <input type="submit" name="syn" value=" <?php echo $this->lang['synchronous']?> " /></div>
    <div class="control-button"><img src="<?php echo Yii::app()->theme->baseUrl; ?>/images/reorder.png" alt="<?php echo $this->lang['sort']?>" align="left" /> <input type="submit" name="sort" value=" <?php echo $this->lang['sort']?> " /></div>
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