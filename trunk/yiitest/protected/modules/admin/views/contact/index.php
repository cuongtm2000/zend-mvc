<ul class="modals"><li><a href="<?php echo Yii::app()->request->baseUrl ?>/<?php echo $this->module->getName() ?>/<?php echo $this->ID ?>/add" title="Thêm mới"><img src="<?php echo Yii::app()->theme->baseUrl; ?>/images/add.png" alt="<?php echo $this->lang['add_new'] ?>" /><span><?php echo $this->lang['add_new'] ?></span></a></li></ul><div class="clear"></div>
<form name="frm" id="frm" action="" method="post">
    <input type="hidden" name="factive" value="" />
    <table>
        <thead>
            <tr>
                <th class="txt15"><input onclick="javascript: select_switch(this.checked);" type="checkbox" name="checkall" /></th>
                <th class="txt60"><?php echo $this->lang['order'] ?></th>
                <th><?php echo $this->lang['title'] ?></th>
                <th><?php echo $this->lang['create_date'] ?></th>
                <th><?php echo $this->lang['views'] ?></th>
                <th><?php echo $this->lang['actions'] ?></th>
            </tr>
        </thead>
        <tbody>
            <?php if ($models): ?>
                <?php $i = 1;
                foreach ($models as $value): ?>
                    <?php
                    if ($value['enable'] == 0) {
                        $rowclass = ' class="disable"';
                    } else {
                        $rowclass = ($i % 2 == 0) ? '' : ' class="alt"';
                    }

                    if ($value['hot'] == 1) {
                        $title = '<strong>' . $value['title'] . '</strong> <img src="' . Yii::app()->theme->baseUrl . '/images/hot.gif" alt="Hot" />';
                    } else {
                        $title = $value['title'];
                    }
                    ?>
                    <tr<?php echo $rowclass ?>>
                        <td><input type="checkbox" name="ids[]" value="<?php echo $value['record_id'] ?>" /></td>
                        <td><input type="text" name="orders[<?php echo $value['record_id'] ?>]" maxlength="3" class="txt-sort" value="<?php echo $value['record_order'] ?>" /></td>
                        <td><?php echo CHtml::link($title, array('edit', 'id' => $value->record_id)) ?></td>
                        <td><?php echo date('d-m-Y', strtotime($value['create_date'])) ?></td>
                        <td><?php echo $value['hit'] ?></td>
                        <td><?php echo CHtml::link($this->lang['edit'], array('edit', 'id' => $value->record_id)) ?></td>
                    </tr>
                    <?php $i++;
                endforeach; ?>
            <?php else: ?>
                <tr><td colspan="6">Không tồn tại mẫu tin</td></tr>
            <?php endif; ?>
        </tbody>
    </table>
    <div class="control-button"><img src="<?php echo Yii::app()->theme->baseUrl; ?>/images/syn.png" alt="<?php echo $this->lang['synchronous'] ?>" align="left" /> <input type="submit" name="syn" value=" <?php echo $this->lang['synchronous'] ?> " /></div>
    <div class="control-button"><img src="<?php echo Yii::app()->theme->baseUrl; ?>/images/reorder.png" alt="<?php echo $this->lang['sort'] ?>" align="left" /> <input type="submit" name="sort" value=" <?php echo $this->lang['sort'] ?> " /></div>
    <div class="control-button"><a href="javascript:submit_list('enable', '');" title="<?php echo $this->lang['show'] ?>"><img src="<?php echo Yii::app()->theme->baseUrl; ?>/images/visible.png" alt="<?php echo $this->lang['show'] ?>" align="left" /> <?php echo $this->lang['show'] ?></a></div>
    <div class="control-button"><a href="javascript:submit_list('disable', '');" title="<?php echo $this->lang['hidden'] ?>"><img src="<?php echo Yii::app()->theme->baseUrl; ?>/images/hidden.png" alt="<?php echo $this->lang['hidden'] ?>" align="left" /> <?php echo $this->lang['hidden'] ?></a></div>
    <div class="control-button"><a href="javascript:delete_list('');" title="<?php echo $this->lang['delete'] ?>"><img src="<?php echo Yii::app()->theme->baseUrl; ?>/images/delete.png" alt="<?php echo $this->lang['delete'] ?>" align="left" /> <?php echo $this->lang['delete'] ?></a></div>
    <?php $this->widget('CLinkPager', array('pages' => $pages, 'header' => '', 'htmlOptions' => array('class' => 'yiiPager paging'))) ?>
    <script type="text/javascript" src="<?php echo Yii::app()->theme->baseUrl; ?>/js/common.js"></script>
</form><div class="clear"></div>