<?php
$this->breadcrumbs = array(
    'Users' => array('index'),
    'Chuyển khoản',
);
?>

<h1>Chuyển khoản nội bộ</h1>


<div class="form">

    <?php
    $form = $this->beginWidget('CActiveForm', array(
        'id' => 'transfer-form',
        'enableAjaxValidation' => false,
            ));
    ?>

    <p class="note">Fields with <span class="required">*</span> are required.</p>

        <?php echo $form->errorSummary($model); ?>

    <div class="row">
        <?php echo $form->labelEx($model, 'pass'); ?>
<?php echo $form->passwordField($model, 'pass', array('size' => 45, 'maxlength' => 45)); ?>
        <?php echo $form->error($model, 'pass'); ?>
    </div>
    <div class="row">
        <?php echo $form->labelEx($model, 'receiver'); ?>
<?php echo $form->textField($model, 'receiver', array('size' => 45, 'maxlength' => 45)); ?>
        <?php echo $form->error($model, 'receiver'); ?>
    </div>
    <div class="row">
        <?php echo $form->labelEx($model, 'money'); ?>
<?php echo $form->textField($model, 'money', array('size' => 45, 'maxlength' => 45)); ?>
<?php echo $form->error($model, 'money'); ?>
    </div>



    <div class="row buttons">
<?php echo CHtml::submitButton('Chuyển khoản'); ?>
    <?php echo CHtml::resetButton('Nhập lại'); ?>
    </div>

<?php $this->endWidget(); ?>

</div><!-- form -->