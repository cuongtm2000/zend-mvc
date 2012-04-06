<h1 class="title-right"><span>Danh sách thành viên thoát bàn</span></h1>
<form action="" method="post" enctype="multipart/form-data" id="frm" name="frm">
    <table>
        <thead>
            <tr>
                <th class="txt15">STT</th>
                <th>Thành viên</th>
                <th>CMND</th>
                <th>Ngày thoát bàn</th>
                <th>Level</th>
            </tr>
        </thead>
        <tbody>
            <?php if ($model['models']): ?>
                <?php $k = 1;
                foreach ($model['models'] as $value): ?>
        <?php $rowclass = ($k % 2 == 0) ? '' : ' class="alt"'; ?>
                    <tr<?php echo $rowclass ?>>
                        <td><?php echo $k++ ?></td>
                        <td><?php echo $value['receiver'] ?></td>
                        <td><?php echo $value->receive_user->cmnd ?></td>
                        <td><?php echo $value['time'] ?></td>
                        <td><?php echo substr($value->detail, -1) ?></td>
                    </tr>
                <?php endforeach ?>
            <?php else: ?>
                <tr><td colspan="5">Không có thành viên nào</td></tr>
<?php endif; ?>
        </tbody>
    </table>
<?php $this->widget('CLinkPager', array('pages' => $model['pages'], 'header' => '', 'htmlOptions' => array('class' => 'yiiPager paging'))) ?>
</form><div class="clear"></div>
