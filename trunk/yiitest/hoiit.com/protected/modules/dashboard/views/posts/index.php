<ul class="modals"><li><a href="<?php echo Yii::app()->request->baseUrl ?>/<?php echo $this->module->getName() ?>/<?php echo $this->ID ?>/add" title="Add post"><img src="<?php echo Yii::app()->theme->baseUrl; ?>/images/add.png" alt="Add post" /><span>Add post</span></a></li></ul><div class="clear"></div>
<form name="frm" id="frm" action="" method="post">
    <input type="hidden" name="factive" value="" />
    <table>
        <thead>
            <tr>
                <th class="txt15"><input onclick="javascript: select_switch(this.checked);" type="checkbox" name="checkall" /></th>
                <!-- <th class="txt60">Order</th> -->
                <th>Title</th>
                <th>Categories</th>
                <th>Hit</th>
                <th>Action</th>
            </tr>
        </thead>
        <tbody>
            <?php if ($models): ?>
                <?php $i = 1; foreach ($models as $value): ?>
                    <?php
                    if ($value['post_enable'] == 0) {
                        $rowclass = ' class="disable"';
                    } else {
                        $rowclass = ($i % 2 == 0) ? '' : ' class="alt"';
                    }

                    if ($value['post_type'] == 1) {
                        $title = '<strong>' . $value['post_title'] . '</strong> <img src="' . Yii::app()->theme->baseUrl . '/images/hot.gif" alt="Hot" />';
                    } else {
                        $title = $value['post_title'];
                    }
                    ?>
                    <tr<?php echo $rowclass ?>>
                        <td><input type="checkbox" name="ids[]" value="<?php echo $value['post_id'] ?>" /></td>
                        <!-- <td><input type="text" name="orders[<?php echo $value['post_id'] ?>]" maxlength="3" class="txt-sort" value="<?php echo $value['post_sort'] ?>" /></td> -->
                        <td><?php echo CHtml::link($title, array('edit', 'id' => $value->post_id)) ?></td>
                        <td><?php echo $value->hoiitCatsCat->cat_name ?></td>
                        <td><?php echo $value['post_hit'] ?></td>
                        <td><?php echo CHtml::link('Edit', array('edit', 'id' => $value->post_id)) ?></td>
                    </tr>
                    <?php $i++;
                endforeach;
                ?>
            <?php else: ?>
                <tr><td colspan="6">Not exist items</td></tr>
            <?php endif; ?>
        </tbody>
    </table>
    <!-- <div class="control-button"><img src="<?php echo Yii::app()->theme->baseUrl; ?>/images/syn.png" alt="Synchronous" align="left" /> <input type="submit" name="syn" value=" Synchronous " /></div>
    <div class="control-button"><img src="<?php echo Yii::app()->theme->baseUrl; ?>/images/reorder.png" alt="Sort" align="left" /> <input type="submit" name="sort" value=" Sort " /></div> -->
    <div class="control-button"><a href="javascript:submit_list('enable', '');" title="Show"><img src="<?php echo Yii::app()->theme->baseUrl; ?>/images/visible.png" alt="Show" align="left" /> Show</a></div>
    <div class="control-button"><a href="javascript:submit_list('disable', '');" title="Hidden"><img src="<?php echo Yii::app()->theme->baseUrl; ?>/images/hidden.png" alt="Hidden" align="left" /> Hidden</a></div>
    <div class="control-button"><a href="javascript:delete_list('');" title="Delete"><img src="<?php echo Yii::app()->theme->baseUrl; ?>/images/delete.png" alt="Delete" align="left" /> Delete</a></div>
    <?php $this->widget('CLinkPager', array('pages' => $pages, 'header' => '', 'htmlOptions' => array('class' => 'yiiPager paging'))) ?>
    <script type="text/javascript" src="<?php echo Yii::app()->theme->baseUrl; ?>/js/common.js"></script>
</form>