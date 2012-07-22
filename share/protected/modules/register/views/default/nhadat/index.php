
<div class="frame-product-info">
    <h1 class="title-right"><span>Đăng ký thành viên</span></h1>
    <?php $form = $this->beginWidget('CActiveForm', array('id' => 'user-form', 'enableAjaxValidation' => false, 'htmlOptions' => array('enctype'=>'multipart/form-data','class' => 'form-all'))); ?>

    <p class="note">Dấu <span class="required">*</span> là những thông tin bắt buộc nhập liệu.</p>
    <?php echo $form->errorSummary($model, ''); ?>
    <ul class="bt-frm-login">
        <li class="row">
            <?php echo $form->labelEx($model, 'username'); ?>
            <?php echo $form->textField($model, 'username', array('size' => 45, 'maxlength' => 45)); ?>
        </li>

        <li class="row">
            <?php echo $form->labelEx($model, 'password'); ?>
            <?php echo $form->passwordField($model, 'password', array('size' => 45, 'maxlength' => 45)); ?>
        </li>

        <li class="row">
            <?php echo $form->labelEx($model, 'password2'); ?>
            <?php echo $form->passwordField($model, 'password2', array('size' => 45, 'maxlength' => 45)); ?>
        </li>


        <li class="row">
            <?php echo $form->labelEx($model, 'fullname'); ?>
            <?php echo $form->textField($model, 'fullname', array('size' => 60, 'maxlength' => 150)); ?>
        </li>

        <li class="row">
            <?php echo $form->labelEx($model, 'email'); ?>
            <?php echo $form->textField($model, 'email', array('size' => 45, 'maxlength' => 45)); ?>
        </li>



        <li class="row">
            <?php echo $form->labelEx($model, 'address'); ?>
            <?php echo $form->textField($model, 'address', array('size' => 60, 'maxlength' => 200)); ?>
        </li>

        <li class="row">
            <?php echo $form->labelEx($model, 'cmnd'); ?>
            <?php echo $form->textField($model, 'cmnd', array('size' => 10, 'maxlength' => 10)); ?>
        </li>

        <li class="row">
            <?php echo $form->labelEx($model, 'phone'); ?>
            <?php echo $form->textField($model, 'phone', array('size' => 15, 'maxlength' => 15)); ?>
        </li>

        <li class="row">
            <?php echo $form->labelEx($model, 'bank_number'); ?>
            <?php echo $form->textField($model, 'bank_number', array('size' => 20, 'maxlength' => 20)); ?>
        </li>

        <li class="row">
            <?php echo $form->labelEx($model, 'bank_name'); ?>
            <?php echo $form->textField($model, 'bank_name', array('size' => 60, 'maxlength' => 100)); ?>
        </li>
        <li class="row">
            <?php echo $form->labelEx($model, 'avartar'); ?>
           <?php echo $form->fileField($model, 'avartar'); ?>
        </li>

        <li class="row">
            <?php echo $form->labelEx($model, 'rule'); ?>
           <?php echo $form->checkBox($model, 'rule'); ?>
           <?php echo CHtml::link('Tôi đồng ý với các quy định của nhaphodep.vn', 'gioi-thieu/cac-quy-dinh-tai-nhaphodepvn.html',array('target'=>'_blank')); ?>
           
        </li>
        
        <li class="row buttons">
            <label>&nbsp;</label>
            <?php echo CHtml::submitButton(' Đăng ký ', array('class' => 'singin')); ?>
        </li>
    </ul>
    <?php $this->endWidget(); ?>
</div>