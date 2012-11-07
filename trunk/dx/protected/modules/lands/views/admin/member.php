<form name="frm" id="frm" action="" method="post">
    <input type="hidden" name="factive" value="" />
    <table>
        <thead>
            <tr>
                <th class="txt15"><input onclick="javascript: select_switch(this.checked);" type="checkbox" name="checkall" /></th>
                <th class="txt60">Tên đăng nhập</th>
                <th>Họ tên</th>
                <th>Tỉnh/thành</th>
                <th>Số ĐT</th>
                <th>Email</th>
                <th>Thao tác</th>
                <th>Số tin đã đăng</th>
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
                    ?>
                    <tr<?php echo $rowclass ?>>
                        <td><input type="checkbox" name="ids[]" value="<?php echo $value->username ?>" /></td>

                        <td><?php echo CHtml::link($value->username, array('viewuser', 'id' => $value->username)) ?></td>
                        <td><?php echo $value->fullname  ?></td>
                        <td><?php echo $value->province0['province_name']?></td>
                        <td><?php echo $value->phone ?></td>
                        <td><?php echo $value->email ?></td>
                        <td><?php echo CHtml::link($this->lang['edit'], array('edituser', 'id' => $value->username)) ?></td>
                        <td><?php echo CHtml::link(count($value->moduleLands), array('listpost', 'id' => $value->username)) ?></td>
                    </tr>
                    <?php $i++;
                endforeach; ?>
            <?php else: ?>
                <tr><td colspan="6"><?php echo $this->lang['no_record'] ?></td></tr>
<?php endif; ?>
        </tbody>
    </table>


    <div class="control-button">
        <a href="javascript:submit_list('enable', '');" title="<?php echo $this->lang['show'] ?>">
            <img src="<?php echo Yii::app()->theme->baseUrl; ?>/images/visible.png" alt="<?php echo $this->lang['show'] ?>" align="left" /> <?php echo $this->lang['show'] ?>
        </a>
    </div>
    
    <div class="control-button">
        <a href="javascript:submit_list('disable', '');" title="<?php echo $this->lang['hidden'] ?>">
            <img src="<?php echo Yii::app()->theme->baseUrl; ?>/images/hidden.png" alt="<?php echo $this->lang['hidden'] ?>" align="left" /> <?php echo $this->lang['hidden'] ?>
        </a>
    </div>
    
    <div class="control-button">
        <a href="javascript:delete_list('');" title="<?php echo $this->lang['delete'] ?>">
            <img src="<?php echo Yii::app()->theme->baseUrl; ?>/images/delete.png" alt="<?php echo $this->lang['delete'] ?>" align="left" /> <?php echo $this->lang['delete'] ?>
        </a>
    </div>

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