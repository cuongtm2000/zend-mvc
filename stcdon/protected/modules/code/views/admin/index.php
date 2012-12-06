<ul class="modals"><li><a href="<?php echo Yii::app()->baseUrl . '/'. $this->ID . '/'. $this->module->getName() ?>/add" title="<?php echo $this->lang['add_new']?>"><img src="<?php echo Yii::app()->theme->baseUrl; ?>/images/add.png" alt="<?php echo $this->lang['add_new']?>" /><span><?php echo $this->lang['add_new']?></span></a></li></ul><div class="clear"></div>
<form name="frm" id="frm" action="" method="post">
    <input type="hidden" name="factive" value="" />
    <table>
        <thead>
        <tr>
            <th class="txt15"><input onclick="javascript: select_switch(this.checked);" type="checkbox" name="checkall" /></th>
            <th class="txt60"><?php echo $this->lang['order']?></th>
            <th><?php echo $this->lang['title']?></th>
            <th><?php echo $this->lang['create_date']?></th>
            <th>Trạng thái</th>
            <th><?php echo $this->lang['action']?></th>
        </tr>
        </thead>
        <tbody>
        <?php if ($models): $i = 1; foreach ($models as $value): ?>
            <?php $rowClass = ($i % 2 == 0) ? '' : ' class="alt"'; ?>
                <tr<?php echo $rowClass ?>>
                    <td><input type="checkbox" name="ids[]" value="<?php echo $value['record_id'] ?>" /></td>
                    <td><input type="text" name="orders[<?php echo $value['record_id'] ?>]" maxlength="3" class="txt-sort" value="<?php echo $value['record_order'] ?>" /></td>
                    <td><?php echo CHtml::link($value['title'], array('edit', 'id' => $value->record_id)) ?></td>
                    <td><?php echo date('d-m-Y', strtotime($value['created'])) ?></td>
                    <td><?php echo $value['record_type'] ?></td>
                    <td><?php echo CHtml::link($this->lang['edit'], array('edit', 'id' => $value->record_id)) ?></td>
                </tr>
            <?php $i++; endforeach; ?>
        <?php else: ?>
            <tr><td colspan="6"><?php echo $this->lang['no_record']?></td></tr>
        <?php endif; ?>
        </tbody>
    </table>
    <div class="control-button"><img src="<?php echo Yii::app()->theme->baseUrl; ?>/images/syn.png" alt="<?php echo $this->lang['synchronous']?>" align="left" /> <input type="submit" name="syn" value=" <?php echo $this->lang['synchronous']?> " /></div>
    <div class="control-button"><img src="<?php echo Yii::app()->theme->baseUrl; ?>/images/reorder.png" alt="<?php echo $this->lang['sort']?>" align="left" /> <input type="submit" name="sort" value=" <?php echo $this->lang['sort']?> " /></div>
    <div class="control-button"><a href="javascript:delete_list('');" title="<?php echo $this->lang['delete']?>"><img src="<?php echo Yii::app()->theme->baseUrl; ?>/images/delete.png" alt="<?php echo $this->lang['delete']?>" align="left" /> <?php echo $this->lang['delete']?></a></div>
    <?php $this->widget('CLinkPager', array('pages' => $pages, 'header' => '', 'htmlOptions' => array('class' => 'yiiPager paging'))) ?>
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