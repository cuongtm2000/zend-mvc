<ul class="modals"><li><a href="<?php echo Yii::app()->request->baseUrl . '/'. $this->ID . '/'. $this->module->getName() ?>/add" title="<?php echo $this->lang['add_new']?>"><img src="<?php echo Yii::app()->theme->baseUrl; ?>/images/add.png" alt="<?php echo $this->lang['add_new']?>" /><span><?php echo $this->lang['add_new']?></span></a></li></ul><div class="clear"></div>
<form name="frm" id="frm" action="" method="post">
    <input type="hidden" name="factive" value="" />
    <table>
        <thead>
        <tr>
            <th class="txt15"><input onclick="javascript: select_switch(this.checked);" type="checkbox" name="checkall" /></th>
            <th>Template name</th>
            <th>Created</th>
            <th>Author</th>
            <th><?php echo $this->lang['action']?></th>
        </tr>
        </thead>
        <tbody>
        <?php if ($models): ?>
            <?php $i = 1;
            foreach ($models as $value): ?>
                <?php $rowClass = ($i % 2 == 0) ? '' : ' class="alt"'; $title = ($value['template_activated'] == 1) ? '<strong>' . $value['template_name'] . '</strong> <img src="' . Yii::app()->theme->baseUrl . '/images/hot.gif" alt="Hot" />' : $value['template_name'];?>
            <tr<?php echo $rowClass ?>>
                <td><input type="checkbox" name="ids[]" value="<?php echo $value['template_id'] ?>" /></td>
                <td><?php echo CHtml::link($title, array('edit', 'id' => $value['template_id'])) ?></td>
                <td><?php echo date('d-m-Y', strtotime($value['template_date'])) ?></td>
                <td><?php echo $value['template_author'] ?></td>
                <td><?php echo CHtml::link($this->lang['edit'], array('edit', 'id' => $value['template_id'])) ?></td>
            </tr>
                <?php $i++;
            endforeach; ?>
            <?php else: ?>
        <tr><td colspan="6">No record</td></tr>
            <?php endif; ?>
        </tbody>
    </table>
    <?php $this->widget('CLinkPager', array('pages' => $pages, 'header' => '', 'htmlOptions' => array('class' => 'yiiPager paging'))) ?>
    <script type="text/javascript" src="<?php echo Yii::app()->theme->baseUrl; ?>/js/common.js"></script>
</form><div class="clear"></div>