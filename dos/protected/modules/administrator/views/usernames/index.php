<ul class="modals"><li><a href="<?php echo Yii::app()->request->baseUrl ?>/<?php echo $this->module->getName() ?>/<?php echo $this->ID ?>/add" title="Thêm mới"><img src="<?php echo Yii::app()->theme->baseUrl; ?>/images/add.png" alt="Add tempalte" /><span>Add tempalte</span></a></li></ul><div class="clear"></div>
<form name="frm" id="frm" action="" method="post">
    <input type="hidden" name="factive" value="" />
    <table>
        <thead>
            <tr>
                <th class="txt15"><input onclick="javascript: select_switch(this.checked);" type="checkbox" name="checkall" /></th>
                <th class="txt60">Username</th>
                <th>Email</th>
                <th>Created</th>
                <th>Template</th>
                <th>Province</th>
                <th>Actions</th>
            </tr>
        </thead>
        <tbody>
            <?php if ($models): ?>
                <?php $i = 1; foreach ($models as $value): ?>
                    <?php if ($value['activated'] == 0) {$rowclass = ' class="disable"';} else {$rowclass = ($i % 2 == 0) ? '' : ' class="alt"';}?>
                    <tr<?php echo $rowclass ?>>
                        <td><input type="checkbox" name="ids[]" value="<?php echo $value['username'] ?>" /></td>
                        <td><?php echo CHtml::link($value['username'], array('edit', 'id' => $value->username)) ?></td>
                        <td><?php echo $value['email']?></td>
                        <td><?php echo date('d-m-Y', strtotime($value['created'])) ?></td>
                        <td><?php echo $value['dos_templates_template']?></td>
                        <td><?php echo $value->Provinces->province_name?></td>
                        <td><?php echo CHtml::link('Edit', array('edit', 'id' => $value->username)) ?></td>
                    </tr>
                    <?php $i++; endforeach; ?>
            <?php endif; ?>
        </tbody>
    </table>
    <div class="control-button"><a href="javascript:submit_list('enable', '');" title="Show"><img src="<?php echo Yii::app()->theme->baseUrl; ?>/images/visible.png" alt="Show" align="left" /> Show</a></div>
    <div class="control-button"><a href="javascript:submit_list('disable', '');" title="Hidden"><img src="<?php echo Yii::app()->theme->baseUrl; ?>/images/hidden.png" alt="Hidden" align="left" /> Hidden</a></div>
    <div class="control-button"><a href="javascript:delete_list('');" title="Delete"><img src="<?php echo Yii::app()->theme->baseUrl; ?>/images/delete.png" alt="Delete" align="left" /> Delete</a></div>
    <?php $this->widget('CLinkPager', array('pages' => $pages, 'header' => '', 'htmlOptions' => array('class' => 'yiiPager paging'))) ?>
    <script type="text/javascript" src="<?php echo Yii::app()->theme->baseUrl; ?>/js/common.js"></script>
</form><div class="clear"></div>