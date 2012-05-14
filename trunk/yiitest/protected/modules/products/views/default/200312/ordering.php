<?php $this->breadcrumbs = array($this->lang[$this->module->id] => Yii::app()->baseUrl . LANGURL . '/' . Yii::t('user', $this->module->id . '.link'), Yii::t('user', 'products.purchase.shopping')); ?>
<?php $this->pageTitle = Yii::t('user', 'products.purchase.shopping') . ' - ' . $this->lang[$this->module->id]; ?>

<?php if(Yii::app()->user->hasFlash('contactSuccess')): ?>
    <?php echo Yii::app()->user->getFlash('contactSuccess'); ?>
<?php else: ?>
<h1 class="title-right"><span><?php echo Yii::t('user', 'products.purchase.shopping')?></span></h1>
    <table class="form_order" cellspacing="0" cellpadding="5" width="100%">
        <thead>
            <tr align="center">
                <td width="150"><?php echo Yii::t('user', 'picture')?></td>
                <td><?php echo Yii::t('user', 'products.name')?></td>
                <td><?php echo Yii::t('user', 'unit')?></td>
                <td width="80"><?php echo Yii::t('user', 'number')?></td>
                <td><?php echo Yii::t('user', 'cash')?></td>
            </tr>
        </thead>
        <tbody>
            <?php
            if ($Items):
                $total = 0;
                foreach ($Items as $k => $v):
                    $url = '<a href="' . Yii::app()->baseUrl . LANGURL . '/' . Yii::t('user', $this->module->id . '.link') . '/' . $v['ProductsCat']['tag'.LANG] . '/' . $v['tag' . LANG] . '.html" title="' . $v['title' . LANG] . '">';
                    $pic = ($v['pic_thumb'] != '') ? '<img src="' . Yii::app()->baseUrl . USERFILES . '/' . $this->module->id . '/' . $v['pic_thumb'] . '" alt="' . $v['title' . LANG] . '" />' : '<img src="' . Yii::app()->theme->baseUrl . '/images/no-images.jpg" alt="' . $v['title' . LANG] . '" />';
                    $name = $v['title' . LANG] . ' - ' . $v['ProductsCat']['cat_title' . LANG];
                    $price = $v['unit'];
                    $num_of_dates = $carts[$v['record_id']];
                    $total_item = $price * $num_of_dates;
                    $total = $total + $total_item;
                    ?>
                    <tr align="center">
                        <td class="pic-order"><?php echo $url . $pic ?></a></td>
                        <td><?php echo $url ?><strong><?php echo $name ?></strong></a></td>
                        <td><?php echo Common::getPrice($price) ?></td>
                        <td><?php echo $num_of_dates ?></td>
                        <td><strong><?php echo Common::getPrice($total_item) ?></strong></td>
                    </tr>
                    <?php endforeach; ?>
            <?php else:?>
                <tr align="center"><td colspan="5" style="text-align:center"><?php echo Yii::t('user', 'emptycart') ?></tr>
            <?php endif?>
            <tr>
                <td colspan="4" style="padding:5px; text-align: right"><strong><?php echo Yii::t('user', 'sum')?>:</strong></td>
                <td align="center"><strong><?php echo Common::getPrice($total) ?></strong> VND</td>
            </tr>
        </tbody>
    </table>

    <h3 class="notificaion"><strong><?php echo Yii::t('user', 'shoppingcart')?></strong></h3>
     <div class="frame-tent-right"><?php $form = $this->beginWidget('CActiveForm', array('id' => 'user-form', 'enableAjaxValidation' => false, 'htmlOptions' => array('class' => 'form-all'))); ?>
        <p class="note"><?php echo $this->lang['contact_msg']?></p>
        <?php echo $form->errorSummary($model, ''); ?>
        <ul class="frame-contact frm-cart">
            <li class="row">
                <?php echo $form->labelEx($model, 'fullname'); ?>
                <?php echo $form->textField($model, 'fullname'); ?>
            </li>
            <li class="row">
                <?php echo $form->labelEx($model, 'phone'); ?>
                <?php echo $form->textField($model, 'phone'); ?>
            </li>
            <li class="row">
                <?php echo $form->labelEx($model, 'address'); ?>
                <?php echo $form->textField($model, 'address'); ?>
            </li>
            <li class="row">
                <?php echo $form->labelEx($model, 'email'); ?>
                <?php echo $form->textField($model, 'email'); ?>
            </li>
            <li class="row">
                <?php echo $form->labelEx($model, 'content'); ?>
                <?php echo $form->textArea($model, 'content', array('cols' => 80, 'rows' => 8)); ?>
            </li>
            <li class="row buttons">
                <label>&nbsp;</label>
                <?php echo CHtml::submitButton(Yii::t('main', 'send'), array('class' => 'bton-dk')); ?>
            </li>
        </ul>
        <?php $this->endWidget(); ?>
    </div>
<?php endif?>