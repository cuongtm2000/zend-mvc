<?php $this->breadcrumbs = array($this->lang[$this->module->id] => Yii::app()->baseUrl . LANGURL . '/' . Yii::t('user', $this->module->id . '.link'), $this->lang['cart']); ?>
<?php $this->pageTitle = $this->lang['cart'];
$this->description = $this->lang['cart']; ?>

<h1 class="title-pr">Thông tin giỏ hàng</h1>
<form name="order" action="" method="post">
    <table class="form_order" cellspacing="0" cellpadding="5" width="100%">
        <thead>
            <tr align="center">
                <td width="150">Hình ảnh</td>
                <td>Tên sản phẩm</td>
                <td>Đơn giá</td>
                <td width="80">Số lượng</td>
                <td>Thành tiền</td>
                <td width="100">Hủy</td>
            </tr>
        </thead>
        <tbody>
            <?php
            if (!empty($Items)) {
                foreach ($Items as $k => $v):
                    $url = '<a href="'.Yii::app()->baseUrl . LANGURL . '/' . Yii::t('user', $this->module->id . '.link') . '/' . $v->ProductsCat['tag'.LANG] .'/'.$v['tag'.LANG].'.html" title="'.$v['title'.LANG].'">';
                    $pic = ($v['pic_thumb'] != '') ? '<img src="'.Yii::app()->baseUrl.USERFILES.'/'.$this->module->id.'/'.$v['pic_thumb'] .'" alt="'.$v['title'.LANG] .'" />' : '<img src="'.Yii::app()->theme->baseUrl.'/images/no-images.jpg" alt="'.$v['title'.LANG].'" />';
                    $name = $v['title' . LANG] . ' - ' . $v->ProductsCat['cat_title' . LANG];
                    $price = $v['unit'];
                    $num_of_dates = '<input  name="num_of_dates[' . $v['record_id'].']" value="'.$cart[$v['record_id']].'" style="width:30px;text-align: center;" maxlength="3" />';
                    $total_item = $price * $cart[$v['record_id']];

                    $link_del = '<a href="' . Yii::app()->baseUrl.'/products/default/cartdelete/id/' . $v['record_id'] . '" title="Del ' . $name . '"><img src="' . Yii::app()->theme->baseUrl . '/images/del.png" alt="del" /></a>';
                    ?>
                    <tr align="center">
                        <td class="pic-order"><?php echo $url . $pic ?></a></td>
                        <td><?php echo $url ?><strong><?php echo $name ?></strong></a></td>
                        <td><?php echo number_format($price) ?></td>
                        <td><?php echo $num_of_dates ?></td>
                        <td><?php echo number_format($total_item) ?> VND</td>
                        <td><?php echo $link_del ?></td>
                    </tr>
                    <?php
                endforeach;
            }else {
                echo '<tr align="center"><td colspan="6" style="text-align:center; padding:5px 0">Danh sách trống</td></tr>';
            }
            ?>
        </tbody>
    </table>
    <div class="panel-order"><input type="submit" value=" THANH TOÁN " /> <a href="javascript:history.back()" class="btn_order" title="tiếp tục mua hàng"><strong>TIẾP TỤC MUA HÀNG</strong></a></div>
</form>


