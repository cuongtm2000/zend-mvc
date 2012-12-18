<?php if(Yii::app()->user->hasFlash('contactSuccess')): ?>
    <?php echo Yii::app()->user->getFlash('contactSuccess'); ?>
<?php else: ?>
    <div class="main-all-product">
        <h2 class="title-right"><span><?php echo Yii::t('main', 'products.purchase.shopping')?></span></h2>
         <table class="form_order" cellspacing="0" cellpadding="5" width="100%">
                <thead>
                    <tr align="center">
                        <td width="150"><?php echo Yii::t('main', 'picture')?></td>
                        <td><?php echo $this->lang[$this->module->id]?></td>
                        <td><?php echo Yii::t('main', 'unit')?></td>
                        <td width="80"><?php echo Yii::t('main', 'number')?></td>
                        <td><?php echo Yii::t('main', 'cash')?></td>
                    </tr>
                </thead>
                <tbody>
                    <?php if ($items): $total = 0; foreach ($items as $k => $v): $total_item = $v['unit'] * $carts[$v['record_id']]; $total += $total_item;?>
                        <tr align="center">
                            <td class="pic-order"><?php echo CHtml::link(($v['pic_thumb']) ? CHtml::image(Yii::app()->baseUrl.'/public/userfiles/image/'.$this->module->id.'/'.$v['pic_thumb'], $v->ProductsLanguage[Yii::app()->language]['title']) : '<img src="'.Yii::app()->theme->baseUrl.'/images/no-products.jpg" alt="'.$v->ProductsLanguage[Yii::app()->language]['title'].'"', $this->setUrlModule($this->module->id).'/'.$v->ProductsCat->ProductsCatLanguage[Yii::app()->language]['tag'].'/'.$v->ProductsLanguage[Yii::app()->language]['tag'].'.html', array('title' => $v->ProductsLanguage[Yii::app()->language]['title'])) ?></td>
                            <td><?php echo CHtml::link('<strong>'.$v->ProductsLanguage[Yii::app()->language]['title'] . '-' . $v->ProductsCat->ProductsCatLanguage[Yii::app()->language]['cat_title'] .'</strong>', $this->setUrlModule($this->module->id).'/'.$v->ProductsCat->ProductsCatLanguage[Yii::app()->language]['tag'].'/'.$v->ProductsLanguage[Yii::app()->language]['tag'].'.html', array('title' => $v->ProductsLanguage[Yii::app()->language]['title'])) ?></td>
                            <td><?php echo Common::getPrice($v['unit']) ?></td>
                            <td><input name="num_of_dates[<?php echo $v['record_id']?>]" value="<?php echo $carts[$v['record_id']]?>" style="width:30px; text-align: center;" maxlength="3" /></td>
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

            <h3 class="title-right"><span><?php echo Yii::t('main', 'personal-shopping-cart')?></span></h3>
            <div class="panel-form-cart">
                 <?php $form = $this->beginWidget('CActiveForm', array('id' => 'user-form', 'enableAjaxValidation' => false, 'htmlOptions' => array('class' => 'form-all'))); ?>
                    <p class="note">Vui lòng</p>
                    <?php echo $form->errorSummary($model, ''); ?>
                    <ul class="frame-contact form-cart">
                        <li>
                            <?php echo $form->labelEx($model, 'fullname'); ?>
                            <?php echo $form->textField($model, 'fullname'); ?>
                        </li>
                        <li>
                            <?php echo $form->labelEx($model, 'phone'); ?>
                            <?php echo $form->textField($model, 'phone'); ?>
                        </li>
                        <li>
                            <?php echo $form->labelEx($model, 'address'); ?>
                            <?php echo $form->textField($model, 'address'); ?>
                        </li>
                        <li>
                            <?php echo $form->labelEx($model, 'email'); ?>
                            <?php echo $form->textField($model, 'email'); ?>
                        </li>
                        <li class="row">
                            <?php echo $form->labelEx($model, 'content'); ?>
                            <?php echo $form->textArea($model, 'content', array('cols' => 20, 'rows' => 8)); ?>
                        </li>
                        <li class="row buttons">
                            <label>&nbsp;</label>
                            <?php echo CHtml::submitButton(Yii::t('main', 'send'), array('class' => 'button-submit')); ?>
                        </li>
                    </ul>
                <?php $this->endWidget(); ?>
            </div>
    </div>
<?php endif?>