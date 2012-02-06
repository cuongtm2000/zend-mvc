<ul id="crumbs">
    <li><a href="<?php echo Yii::app()->request->baseUrl ?>/">Home</a></li>
    <li><a href="<?php echo Yii::app()->request->baseUrl ?>/register">Register</a></li>
    <li>Basic information</li>
</ul>
<?php $form = $this->beginWidget('CActiveForm', array('id' => 'frm', 'enableAjaxValidation' => true, 'enableClientValidation' => true)); ?>
<fieldset>
    <legend>Register user</legend>
    <?php echo $form->errorSummary($model, ''); ?>
    <p>Cảm ơn bạn đã dành thời gian tham gia Grouplaptrinh, thông tin bạn càng chính xác sẽ giúp chúng tôi phân nhóm và được sự hỗ trợ từ các thành viên khác.</p>
    <p>
        <?php echo $form->labelEx($model, 'username') ?>
        <?php echo $form->textField($model, 'username', array('class'=>'small-input')); ?>
        <span id="useridinfo"></span>
    </p>
    <p>
        <?php echo $form->labelEx($model, 'password') ?>
        <?php echo $form->passwordField($model, 'password', array('class'=>'small-input')); ?>
        <span id="passwordinfo"></span>
    </p>
    <p>
        <?php echo $form->labelEx($model, 'email') ?>
        <?php echo $form->textField($model, 'email', array('class'=>'small-input')); ?>
        <span id="emailinfo"></span>
    </p>
    <p>
        <?php echo $form->labelEx($model, 'group_code') ?>
        <?php $cats_class = new Cats; $values = $cats_class->MultiLevelCats(0); $data = array(); foreach($values as $value){
            $data[$value['cat_title']] = $value['cat_name'];
        }
        ?>
        <?php echo $form->dropDownList($model, 'group_code', $data); ?>
    </p>
    <p>
        <?php echo $form->labelEx($model, 'hoiit_provinces_province_id') ?>
        <?php $provinces_class = new Provinces; $values = $provinces_class->listProvincesByNational('VND'); $data = array(); foreach ($values as $value){
                $data[$value['province_id']] = $value['province_name'];
            }
        ?>
        <?php echo $form->dropDownList($model, 'hoiit_provinces_province_id', $data); ?>
        <span id="locationinfo"></span>
    </p>
    <p>
        <label>&nbsp;</label>
        <?php echo CHtml::submitButton('  Submit  ', array('class'=>'login', 'name'=>'submit')); ?>
        <input type="button" onclick="javascript:history.back()" value="  Cancel  " class="login" />
    </p>
</fieldset>
<?php $this->endWidget(); ?>