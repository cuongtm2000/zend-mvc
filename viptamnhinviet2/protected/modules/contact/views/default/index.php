<?php if(Yii::app()->user->hasFlash('contactSuccess')): ?>
    <div class="flash-success">
        <?php echo Yii::app()->user->getFlash('contactSuccess'); ?>
    </div>
<?php else: ?>
    <?php if ($item): ?>
        <?php $this->pageTitle = $item['title'];?>

        <h2 class="title-right"><span><?php echo $item['title'] ?></span></h2>
<div class="frame-tent-right">
	<div class="frame-title">
		<?php echo $item['content'] ?>
	</div>
			<p>
	Quý khách có thể liên hệ với chúng tôi bằng cách điền đầy đủ thông tin vào mẫu sau:
	</p>


        <?php $form = $this->beginWidget('CActiveForm', array('id'=>'frm', 'enableAjaxValidation'=>true, 'enableClientValidation' =>true));?>
            <?php echo $form->errorSummary($contact, ''); ?>
            <ul class="frame-contact">
                <li>
                    <?php echo $form->labelEx($contact, 'fullname') ?>
                    <?php echo $form->textField($contact, 'fullname'); ?>
                </li>
                <li>
                    <?php echo $form->labelEx($contact, 'company') ?>
                    <?php echo $form->textField($contact, 'company'); ?>
                </li>
                <li>
                    <?php echo $form->labelEx($contact, 'address') ?>
                    <?php echo $form->textField($contact, 'address'); ?>
                </li>
                <li>
                    <?php echo $form->labelEx($contact, 'phone') ?>
                    <?php echo $form->textField($contact, 'phone'); ?>
                </li>
                <li>
                    <p><?php echo $form->labelEx($contact, 'email') ?>
                    <?php echo $form->textField($contact, 'email'); ?>
                </li>
                <li>
                    <?php echo $form->labelEx($contact, 'content') ?>
                    <?php echo $form->textArea($contact, 'content', array('cols'=>10, 'rows'=>10)); ?>
					<img src="<?php echo Yii::app()->theme->baseUrl; ?>/images/image11.jpg" alt="Noidung" class="img-contact"  />
                </li>
                <li>
					<label>&nbsp;</label>
                    <?php echo CHtml::submitButton(' Submit ', array('name'=>'submit', 'class'=>'bton-dk', 'title'=>'Submit')); ?>
                </li>
            </ul>                  
        <?php $this->endWidget();?>
</div>        <!--End Page tent right-->
    <?php endif; ?>
<?php endif;?>
