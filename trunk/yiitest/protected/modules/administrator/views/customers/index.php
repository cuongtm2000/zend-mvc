<form name="frm" id="frm" action="" method="post">
    <input type="hidden" name="factive" value="" />
    <table>
        <thead>
            <tr>
                <th class="txt15"><input onclick="javascript: select_switch(this.checked);" type="checkbox" name="checkall" /></th>
                <th>Khách hàng</th>
                <th>Address</th>
                <th>Website</th>
                <th>Created date</th>
                <th>Expired date</th>
                <th>Actions</th>
            </tr>
        </thead>
        <tbody>
            <?php if ($models): ?>
                <?php $i = 1; foreach ($models as $value): ?>
                    <?php
                        if($value['created_date']>date("Y-m-d H:i:s")){
                            $start_date = ' green';
                        }else{
                            $start_date = '';
                        }
                        if($value['expired_date']<date("Y-m-d H:i:s")){
                            $end_date = ' red';
                        }else{
                            $end_date = '';
                        }
                        if($value['enable'] == 0){
                            $rowclass = ' class="disable'.$end_date.$start_date.'"';
                        }else{
                            $rowclass = ($i%2==0) ? ' class="none'.$end_date.$start_date.'"' : ' class="alt'.$end_date.$start_date.'"';
                        }
                    ?>
                    <tr<?php echo $rowclass ?>>
                        <td><input type="checkbox" name="ids[]" value="<?php echo $value['customer_id'] ?>" /></td>
                        <td><?php echo $value['customer_name'] ?></td>
                        <td><?php echo $value['address']?></td>
                        <td><a href="<?php echo $value['website'] ?>" target="_blank" title="Go to: <?php echo $value['website'] ?>"><?php echo $value['website'] ?></a></td>
                        <td><?php echo date('d-m-Y', strtotime($value['created_date'])) ?></td>
                        <td><?php echo date('d-m-Y', strtotime($value['expired_date'])) ?></td>
                        <td><?php echo CHtml::link('Edit', array('edit', 'id' => $value['customer_id'])) ?></td>
                    </tr>
                    <?php $i++; endforeach; ?>
			<?php else:?>
					<tr><td colspan="7">Không có ma nào cả!</td></tr>
            <?php endif; ?>
        </tbody>
    </table>
    <div class="control-button"><a href="javascript:submit_list('enable', '');" title="Show"><img src="<?php echo Yii::app()->theme->baseUrl; ?>/images/visible.png" alt="Show" align="left" /> Show</a></div>
    <div class="control-button"><a href="javascript:submit_list('disable', '');" title="Hidden"><img src="<?php echo Yii::app()->theme->baseUrl; ?>/images/hidden.png" alt="Hidden" align="left" /> Hidden</a></div>
    <div class="control-button"><a href="javascript:delete_list('');" title="Delete"><img src="<?php echo Yii::app()->theme->baseUrl; ?>/images/delete.png" alt="Delete" align="left" /> Delete</a></div>
    <?php $this->widget('CLinkPager', array('pages' => $pages, 'header' => '', 'htmlOptions' => array('class' => 'yiiPager paging'))) ?>
    <script type="text/javascript" src="<?php echo Yii::app()->theme->baseUrl; ?>/js/common.js"></script>
</form><div class="clear"></div>