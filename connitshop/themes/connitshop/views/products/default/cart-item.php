<div class="main-all-product">
    <h2 class="title-right"><span><?php echo Yii::t('main', 'shopping-cart')?></span></h2>
    <form name="order" action="" method="post" >
        <table class="form_order" cellspacing="0" cellpadding="5" width="100%">
            <thead>
                <tr align="center">
                    <td width="150"><?php echo Yii::t('main', 'picture')?></td>
                    <td><?php echo $this->lang[$this->module->id]?></td>
                    <td><?php echo Yii::t('main', 'unit')?></td>
                    <td width="80"><?php echo Yii::t('main', 'number')?></td>
                    <td><?php echo Yii::t('main', 'cash')?></td>
                    <td width="40"><?php echo Yii::t('main', 'remove')?></td>
                </tr>
            </thead>
            <tbody>
                <?php if ($items): $total = 0; foreach ($items as $k => $v):
                    $total_item = $v['unit'] * $carts[$v['record_id']]; $total += $total_item;
                    ?>
                    <tr align="center">
                        <td class="pic-order"><?php echo CHtml::link(($v['pic_thumb']) ? CHtml::image(Yii::app()->baseUrl.'/public/userfiles/image/'.$this->module->id.'/'.$v['pic_thumb'], $v->ProductsLanguage[Yii::app()->language]['title']) : '<img src="'.Yii::app()->theme->baseUrl.'/images/no-products.jpg" alt="'.$v->ProductsLanguage[Yii::app()->language]['title'].'"', $this->setUrlModule($this->module->id).'/'.$v->ProductsCat->ProductsCatLanguage[Yii::app()->language]['tag'].'/'.$v->ProductsLanguage[Yii::app()->language]['tag'].'.html', array('title' => $v->ProductsLanguage[Yii::app()->language]['title'])) ?></td>
                        <td><?php echo CHtml::link('<strong>'.$v->ProductsLanguage[Yii::app()->language]['title'] . '-' . $v->ProductsCat->ProductsCatLanguage[Yii::app()->language]['cat_title'] .'</strong>', $this->setUrlModule($this->module->id).'/'.$v->ProductsCat->ProductsCatLanguage[Yii::app()->language]['tag'].'/'.$v->ProductsLanguage[Yii::app()->language]['tag'].'.html', array('title' => $v->ProductsLanguage[Yii::app()->language]['title'])) ?></td>
                        <td><?php echo Common::getPrice($v['unit']) ?></td>
                        <td><input name="num_of_dates[<?php echo $v['record_id']?>]" value="<?php echo $carts[$v['record_id']]?>" style="width:30px; text-align: center;" maxlength="3" /></td>
                        <td><strong><?php echo Common::getPrice($total_item) ?></strong></td>
                        <td><?php echo CHtml::link('<img src="' . Yii::app()->theme->baseUrl . '/images/delete-cart.png" alt="Delete this item" />', Yii::app()->baseUrl.'/products/default/cartdelete/id/' . $v['record_id'], array('title' => 'Delete this item')) ?></td>
                    </tr>
                    <?php endforeach;?>
                    <tr><td colspan="4" style="padding:5px; text-align: right"><strong><?php echo Yii::t('main', 'sum')?>:</strong></td><td align="center"><strong><?php echo Common::getPrice($total)?></strong> VND</td><td></td></tr>
                <?php else:?>
                    <tr><td colspan="6" style="padding:5px"><?php echo Yii::t('main', 'empty-cart') ?></td></tr>
                <?php endif?>
            </tbody>
        </table>
        <div class="panel-order">
            <input type="submit" value="<?php echo Yii::t('main', 'products.purchase.shopping')?>" title="<?php echo Yii::t('main', 'products.purchase.shopping')?>" class="btn_order" />
            <a href="javascript:history.back()" class="btn_order" title="<?php echo Yii::t('main', 'products.continue.shopping')?>"><?php echo Yii::t('main', 'products.continue.shopping')?></a>
            <a href="<?php echo Yii::app()->baseUrl?>/san-pham/xoa-gio-hang" class="btn_order" title="<?php echo Yii::t('main', 'products.delete-cart')?>"><?php echo Yii::t('main', 'products.delete-cart')?></a>
        </div>
    </form>
</div>	