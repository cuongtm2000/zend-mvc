<ul class="modals"><li><a href="<?php echo Yii::app()->request->baseUrl ?>/<?php echo $this->module->getName() ?>/<?php echo $this->ID ?>/add" title="Add tempalte"><img src="<?php echo Yii::app()->theme->baseUrl; ?>/images/add.png" alt="Add tempalte" /><span>Add tempalte</span></a></li></ul><div class="clear"></div>
<form name="frm" id="frm" action="" method="post">
    <input type="hidden" name="factive" value="" />
    <table>
        <thead>
            <tr>
                <th class="txt15"><input onclick="javascript: select_switch(this.checked);" type="checkbox" name="checkall" /></th>
                <th class="txt60">ID</th>
                <th>Tempalte name</th>
                <th>Created</th>
                <th>User</th>
                <th>Actions</th>
            </tr>
        </thead>
        <tbody>
            <?php if ($models): ?>
                <?php $i = 1; foreach ($models as $value): ?>
                    <?php $rowclass = ($i % 2 == 0) ? '' : ' class="alt"';?>
                    <tr<?php echo $rowclass ?>>
                        <td><input type="checkbox" name="ids[]" value="<?php echo $value['template'] ?>" /></td>
                        <td><?php echo CHtml::link($value['template'], array('edit', 'id' => $value->template)) ?></td>
                        <td><?php echo $value['template_name']?></td>
                        <td><?php echo date('d-m-Y', strtotime($value['created'])) ?></td>
                        <td><?php echo $value->commentCount?></td>
                        <td><?php echo CHtml::link('Edit', array('edit', 'id' => $value->template)) ?> - <?php echo CHtml::link('Module', array('module', 'id' => $value->template)) ?> - <?php echo CHtml::link('Load file', array('file', 'id' => $value->template)) ?></td>
                    </tr>
                    <?php $i++; endforeach; ?>
            <?php endif; ?>
        </tbody>
    </table>
    <div class="control-button"><a href="javascript:delete_list('');" title="Delete"><img src="<?php echo Yii::app()->theme->baseUrl; ?>/images/delete.png" alt="Delete" align="left" /> Delete</a></div>
    <?php $this->widget('CLinkPager', array('pages' => $pages, 'header' => '', 'htmlOptions' => array('class' => 'yiiPager paging'))) ?>
    <script type="text/javascript" src="<?php echo Yii::app()->theme->baseUrl; ?>/js/common.js"></script>
</form><div class="clear"></div>