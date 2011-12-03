<!-- bat dau -->
<div class="content">
    <ul class="modals"><li><a href="<?php echo Yii::app()->request->requestUri ?>/add" title="Thêm mới"><img src="<?php echo Yii::app()->theme->baseUrl; ?>/images/add.png" alt="Thêm mới" /><span>Thêm mới</span></a></li></ul><div class="clear"></div>
    <form name="frm" id="frm" action="" method="post">
        <?php
            $this->widget('zii.widgets.grid.CGridView', array(
                'id'=>'grid',
                'dataProvider'=>$dataProvider,

                'columns' => array(
                    'record_id', 
                    'title', 
                    'hot',
                    array(// display a column with "view", "update" and "delete" buttons
                        'class'=>'CButtonColumn',
                    ),
                ),
        )); ?>
    </form>
</div>
<!-- ket thuc -->