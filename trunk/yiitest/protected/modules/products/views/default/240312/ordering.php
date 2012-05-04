<h1 class="notificaion"><strong>Mua hàng</strong></h1>
    <table class="form_order" cellspacing="0" cellpadding="5" width="100%">
    <thead>
        <tr align="center">
            <td>Hình ảnh</td>
            <td>Tên sản phẩm</td>
            <td>Đơn giá</td>
            <td width="80">Số lượng</td>
            <td>Thành tiền</td>
        </tr>
    </thead>
    <tbody>
        <?php
        if (!empty($Items)) {
            $total = 0;
            foreach ($Items as $k => $v):
                $url = '<a href="' . Yii::app()->baseUrl . LANGURL . '/' . Yii::t('user', $this->module->id . '.link') . '/' . $v->ProductsCat['tag' . LANG] . '/' . $v['tag' . LANG] . '.html" title="' . $v['title' . LANG] . '">';
                $pic = ($v['pic_thumb'] != '') ? '<img src="' . Yii::app()->baseUrl . USERFILES . '/' . $this->module->id . '/' . $v['pic_thumb'] . '" alt="' . $v['title' . LANG] . '" />' : '<img src="' . Yii::app()->theme->baseUrl . '/images/no-images.jpg" alt="' . $v['title' . LANG] . '" />';
                $name = $v['title' . LANG] . ' - ' . $v->ProductsCat['cat_title' . LANG];
                $price = $v['unit'];
                $num_of_dates = $carts[$v['record_id']];
                $total_item = $price * $num_of_dates;
                $total = $total + $total_item;
                ?>
                <tr align="center">
                    <td class="pic-order"><?php echo $url . $pic ?></a></td>
                    <td><?php echo $url ?><strong><?php echo $name ?></strong></a></td>
                    <td><?php //echo number_format($price) ?></td>
                    <td><?php echo $num_of_dates ?></td>
                    <td><?php echo number_format($total_item) ?> VND</td>

                </tr>
                <?php
            endforeach;
        }else {
            echo '<tr align="center"><td colspan="6" style="text-align:center">Danh sách trống</tr>';
        }
        ?>
        <tr>
            <td colspan="2" style="color:#006600; padding:3px; font-weight: bold">Tổng cộng</td>
            <td colspan="2" align="center"><strong><?php echo number_format($total); ?></strong> VND</td>
            <td>&nbsp;</td>
        </tr>
    </tbody>
</table>

<h3 class="notificaion"><strong>Thông tin đặt hàng</strong></h3>
 <div class="frame-tent-right"><?php $form = $this->beginWidget('CActiveForm', array('id' => 'user-form', 'enableAjaxValidation' => false, 'htmlOptions' => array('class' => 'form-all'))); ?>


    <p class="note">Dấu <span class="required">*</span> là những thông tin bắt buộc nhập liệu.</p>
    <?php echo $form->errorSummary($model, ''); ?>
    <ul class="frame-contact frm-cart">

        <li class="row">
            <?php echo $form->labelEx($model, 'fullname'); ?>
            <?php echo $form->textField($model, 'fullname', array('size' => 80, 'maxlength' => 150)); ?>
        </li>
        <li class="row">
            <?php echo $form->labelEx($model, 'phone'); ?>
            <?php echo $form->textField($model, 'phone', array('size' => 80, 'maxlength' => 14)); ?>
        </li>
        <li class="row">
            <?php echo $form->labelEx($model, 'address'); ?>
            <?php echo $form->textField($model, 'address', array('size' => 80, )); ?>
        </li>
        <li class="row">
            <?php echo $form->labelEx($model, 'email'); ?>
            <?php echo $form->textField($model, 'email', array('size' => 80, 'maxlength' => 45)); ?>
        </li>
        <li class="row">
            <?php echo $form->labelEx($model, 'content'); ?>
            <?php echo $form->textArea($model, 'content', array('cols' => 80, 'rows' => 8)); ?>
        </li>


        <li class="row buttons">
            <label>&nbsp;</label>
            <?php echo CHtml::submitButton(' Hoàn tất ', array('class' => 'bton-dk')); ?>
        </li>
    </ul>
    <?php $this->endWidget(); ?>
</div>