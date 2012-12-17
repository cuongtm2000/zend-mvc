
    <h2 class="title-box"><span>Đăng ký thành viên</span></h2>
    <?php $form = $this->beginWidget('CActiveForm', array('id' => 'user-form', 'enableAjaxValidation' => false, 'htmlOptions' => array('enctype' => 'multipart/form-data', 'class' => 'form-all'))); ?>

    <p class="note">Dấu <span class="required">*</span> là những thông tin bắt buộc nhập liệu.</p>
    <?php echo $form->errorSummary($model, ''); ?>
    <ul class="bt-frm-register">
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
            <?php echo $form->labelEx($model, 'sexual') ?>
            <?php             $d = array('Chưa rõ', 'Nam', 'Nữ');
            echo $form->dropDownList($model, 'sexual', array_combine($d, $d));
            ?>
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
            <?php echo $form->labelEx($model, 'province') ?>

            <?php echo $form->dropDownList($model, 'province', CHtml::listData($listProvices, 'province_id', 'province_name'), array('prompt' => 'Chọn tỉnh/thành'));
            ?>
        </li> 

        <li class="row">
            <?php echo $form->labelEx($model, 'phone'); ?>
            <?php echo $form->textField($model, 'phone', array('size' => 15, 'maxlength' => 15)); ?>
        </li>

        <li class="row buttons">
            <label>&nbsp;</label>
            <?php echo CHtml::submitButton(' Đăng ký ', array('class' => 'singin')); ?>
        </li>
    </ul>
    <?php $this->endWidget(); ?>