<form name="frm" id="frm" action="" method="post">
    <input type="hidden" name="factive" value="" />
    <table>
        <thead>
            <tr>
                <th class="txt15"><input onclick="javascript: select_switch(this.checked);" type="checkbox" name="checkall" /></th>
                <th class="txt60">Thứ tự</th>
                <th>Tiêu đề</th>
                <th>Phân loại</th>
                <th>Lượt xem</th>
                <th>Thao tác</th>
            </tr>
        </thead>
        <tbody>
            <?php if ($models): ?>
                <?php $i = 1;
                foreach ($models as $value): ?>
                    <?php
                    if ($value->enable == 0) {
                        $rowclass = ' class="disable"';
                    } else {
                        $rowclass = ($i % 2 == 0) ? '' : ' class="alt"';
                    }

                    if ($value->hot == 1) {
                        $title = '<strong>' . $value->title . '</strong> <img src="' . Yii::app()->theme->baseUrl . '/images/hot.gif" alt="Hot" />';
                    } else {
                        $title = $value->title;
                    }
                    ?>
                    <tr<?php echo $rowclass ?>>
                        <td><input type="checkbox" name="ids[]" value="<?php echo $value->record_id ?>" /></td>
                        <td><input type="text" name="orders[<?php echo $value->record_id ?>]" maxlength="3" class="txt-sort" value="<?php echo $value->record_order ?>" /></td>
                        <td><?php echo CHtml::link($title, array('edit', 'id' => $value->record_id)) ?></td>
                        <td><?php echo $value->ProductsCat['cat_title'] ?></td>
                        <td><?php echo $value->hits ?></td>
                        <td><?php echo CHtml::link($this->lang['edit'], array('edit', 'id' => $value->record_id)) ?></td>
                    </tr>
                    <?php $i++;
                endforeach; ?>
            <?php else: ?>
                <tr><td colspan="6"><?php echo $this->lang['no_record'] ?></td></tr>
<?php endif; ?>
        </tbody>
    </table>
    <div class="control-button">
        <a href="javascript:submit_list('enable', '');" title="Hiển thị">
            <img src="<?php echo Yii::app()->theme->baseUrl; ?>/images/visible.png" alt="Hiển thị" align="left" /> Hiển thị
        </a>
    </div>
    <div class="control-button">
        <a href="javascript:submit_list('disable', '');" title="Ẩn">
            <img src="<?php echo Yii::app()->theme->baseUrl; ?>/images/hidden.png" alt="Ẩn" align="left" /> Ẩn
        </a>
    </div>
    <div class="control-button">
        <a href="javascript:delete_list('');" title="Xóa">
            <img src="<?php echo Yii::app()->theme->baseUrl; ?>/images/delete.png" alt="Xóa" align="left" /> Xóa
        </a>
    </div>
<?php $this->widget('CLinkPager', array('pages' => $pages, 'header' => '', 'htmlOptions' => array('class' => 'yiiPager paging'))) ?>
    <script type="text/javascript" src="<?php echo Yii::app()->theme->baseUrl; ?>/js/common.js"></script>
</form><div class="clear"></div>