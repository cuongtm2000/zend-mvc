<form name="frm" id="frm" action="" method="post">
    <input type="hidden" name="factive" value="" />
    <table>
        <thead>
            <tr>
                <th class="txt15"><input onclick="javascript: select_switch(this.checked);" type="checkbox" name="checkall" /></th>
                <th class="txt60">Username</th>
                <th>Email</th>
                <th>Created</th>
                <th>Phone</th>
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
                        <td><?php echo CHtml::link($value['username'], 'http://'.$value['username'] . '.' . $_SERVER['HTTP_HOST'], array('target'=>'_blank')) ?></td>
                        <td><?php echo $value['email']?></td>
                        <td><?php echo date('d-m-Y', strtotime($value['created'])) ?></td>
                        <td><?php echo $value['phone'] ?></td>
                        <td><?php echo $value['dos_templates_template']?></td>
                        <td><?php echo $value->Provinces->province_name?></td>
                        <td><?php echo CHtml::link('Edit', array('edit', 'id' => $value->username)) ?></td>
                    </tr>
                    <?php $i++; endforeach; ?>
			<?php else:?>
					<tr><td colspan="7">Không có ma nào cả!</td></tr>
            <?php endif; ?>
        </tbody>
    </table>
    <?php $this->widget('CLinkPager', array('pages' => $pages, 'header' => '', 'htmlOptions' => array('class' => 'yiiPager paging'))) ?>
    <script type="text/javascript" src="<?php echo Yii::app()->theme->baseUrl; ?>/js/common.js"></script>
</form><div class="clear"></div>