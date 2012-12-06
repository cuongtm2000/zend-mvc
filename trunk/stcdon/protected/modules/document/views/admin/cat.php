<ul class="modals"><li><a href="<?php echo Yii::app()->baseUrl . '/' . $this->ID . '/' . $this->module->getName() ?>/addcat" title="<?php echo Yii::t('admin', 'add_new') ?>"><img src="<?php echo Yii::app()->theme->baseUrl; ?>/images/add.png" alt="<?php echo Yii::t('admin', 'add_new') ?>" /><span><?php echo Yii::t('admin', 'add_new') ?></span></a></li></ul><div class="clear"></div>
<form name="frm" id="frm" action="" method="post">
    <input type="hidden" name="factive" value="" />
	<table>
    	<thead>
    		<tr>
    			<th class="txt15"><input onclick="javascript: select_switch(this.checked);" type="checkbox" name="checkall" /></th>
    			<th class="txt60"><?php echo Yii::t('admin', 'order')?></th>
    			<th><?php echo $this->lang['cat_title']?></th>
    	        <th><?php echo Yii::t('admin', 'num_item')?></th>
                <th><?php echo Yii::t('admin', 'action')?></th>
    		</tr>
    	</thead>
        <tbody>
            <?php if($listCats): ?>
                <?php $model = new Document(); $k=1; foreach($listCats as $value): ?>
                    <?php $rowClass = ($value['cat_enable'] == 0) ? ' class="disable"' : ($k%2==0) ? '' : ' class="alt"'; ?>
                    <tr<?php echo $rowClass ?>>
                        <td><input type="checkbox" name="ids[]" value="<?php echo $value['cat_id'] ?>" /></td>
                        <td><?php echo CHtml::link('<img src="'.Yii::app()->theme->baseUrl.'/images/up.gif" alt="Up"/>', array('upcat', 'id'=>$value['cat_id'])) ?> <?php echo CHtml::link('<img src="'.Yii::app()->theme->baseUrl.'/images/down.gif" alt="Up"/>', array('downcat', 'id'=>$value['cat_id'])) ?></td>
                        <td><?php echo $value['cat_title_prefix'] ?></td>
                        <td><?php echo $model->countItemCatId($value['cat_id'])?></td>
                        <td><?php echo CHtml::link($this->lang['edit'], array('editcat', 'id'=>$value['cat_id'])) ?> - <?php echo CHtml::link('Xóa', array('delcat', 'id'=>$value['cat_id'])) ?></td>
                    </tr>
                <?php $k++; endforeach ?>
            <?php else: ?>
                <tr><td colspan="5"><?php echo $this->lang['no_record']?></td></tr>
            <?php endif; ?>
        </tbody>
	</table>
    <div class="control-button"><img src="<?php echo Yii::app()->theme->baseUrl; ?>/images/syn.png" alt="<?php echo Yii::t('admin', 'synchronous')?>" align="left" /> <input type="submit" name="syn" value=" <?php echo Yii::t('admin', 'synchronous')?> " /></div>
    <div class="control-button"><a href="javascript:submit_list('enable', '');" title="<?php echo Yii::t('admin', 'show')?>"><img src="<?php echo Yii::app()->theme->baseUrl; ?>/images/visible.png" alt="<?php echo Yii::t('admin', 'show')?>" align="left" /> <?php echo Yii::t('admin', 'show')?></a></div>
    <div class="control-button"><a href="javascript:submit_list('disable', '');" title="<?php echo Yii::t('admin', 'hidden')?>"><img src="<?php echo Yii::app()->theme->baseUrl; ?>/images/hidden.png" alt="<?php echo Yii::t('admin', 'hidden')?>" align="left" /> <?php echo Yii::t('admin', 'hidden')?></a></div>
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