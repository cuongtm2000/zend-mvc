<ul class="modals"><li><a href="<?php echo Yii::app()->request->baseUrl ?>/<?php echo $this->module->getName() ?>/<?php echo $this->ID ?>/add" title="Thêm đại lý"><img src="<?php echo Yii::app()->theme->baseUrl; ?>/images/add.png" alt="Add tempalte" /><span>Thêm đại lý</span></a></li></ul><div class="clear"></div>
<form name="frm" id="frm" action="" method="post">
    <input type="hidden" name="factive" value="" />
    <table>
        <thead>
            <tr>
                <th class="txt15"><input onclick="javascript: select_switch(this.checked);" type="checkbox" name="checkall" /></th>
                <th class="txt60">Mã số</th>
                <th>Họ và tên</th>
                <th>Phone</th>
                <th>User Sale</th>
                <th>User Tech</th>
                <th>Điểm</th>
                <th>Thưởng</th>
                <th>Tỉnh thành</th>
                <th>Thao tác</th>
            </tr>
        </thead>
        <tbody>
            <?php if ($models): ?>
                <?php $i = 1; foreach ($models as $value): ?>
                    <?php if ($value['enable'] == 0) {$rowclass = ' class="disable"';} else {$rowclass = ($i % 2 == 0) ? '' : ' class="alt"';}?>
                    <tr<?php echo $rowclass ?>>
                        <td><input type="checkbox" name="ids[]" value="<?php echo $value['agent_id'] ?>" /></td>
                        <td><?php echo CHtml::link($value['agent_id'], array('edit', 'id' =>$value['agent_id'])) ?></td>
                        <td><?php echo $value['fullname'] ?></td>
                        <td><?php echo $value['phone'] ?></td>
                        <td><?php echo Username::model()->countUser($value['agent_id'])?></td>
                        <td><?php echo Username::model()->countUser($value['agent_id'], 1)?></td>
                        <td><?php echo $value['point'] ?></td>
                        <td><?php echo $value['bonus']?></td>
                        <td><?php echo $value->Provinces->province_name?></td>
                        <td><?php echo CHtml::link('Edit', array('edit', 'id' => $value->agent_id)) ?> - <?php echo CHtml::link('Password', array('password', 'id' => $value->agent_id)) ?> - <?php echo CHtml::link('Delete', array('delete', 'id' => $value->agent_id)) ?></td>
                    </tr>
                    <?php $i++; endforeach; ?>
			<?php else:?>
					<tr><td colspan="7">Không có ma nào cả!</td></tr>
            <?php endif; ?>
        </tbody>
    </table>
    <div class="control-button"><a href="javascript:submit_list('enable', '');" title="Show"><img src="<?php echo Yii::app()->theme->baseUrl; ?>/images/visible.png" alt="Show" align="left" /> Show</a></div>
    <div class="control-button"><a href="javascript:submit_list('disable', '');" title="Hidden"><img src="<?php echo Yii::app()->theme->baseUrl; ?>/images/hidden.png" alt="Hidden" align="left" /> Hidden</a></div>
    <?php $this->widget('CLinkPager', array('pages' => $pages, 'header' => '', 'htmlOptions' => array('class' => 'yiiPager paging'))) ?>
    <script type="text/javascript" src="<?php echo Yii::app()->theme->baseUrl; ?>/js/common.js"></script>
</form><div class="clear"></div>