<?php $form = $this->beginWidget('CActiveForm', array('id' => 'frm', 'enableAjaxValidation' => true, 'enableClientValidation' => true, 'htmlOptions' => array('name' => 'frm'))); ?>
<?php echo $form->errorSummary($model, ''); ?>
<div class="sign-up-heading"><h1><span>1</span><?php echo Yii::t('main', 'register.step1')?></h1></div>
<div class="input_field">
    <?php echo $form->labelEx($model, 'username') ?>
    <?php echo $form->textField($model, 'username', $htmlOptions = array('class' => 'smallfield-name', 'title' => 'ví dụ: thuonghoi, sau khi bạn đăng ký sẽ có website là: http://thuonghoi.dos.vn Lưu ý không dấu, không có khoảng trắng giữa các ký tự', 'tabindex' => 1)); ?><input class="smallfield-dos" type="text" value=".dos.vn" readonly="readonly"/>
    <span class="field_desc" id="subdomaininfo"></span>
</div>
<div class="input_field">
    <?php echo $form->labelEx($model, 'password') ?>
    <?php echo $form->passwordField($model, 'password', $htmlOptions = array('class' => 'smallfield', 'title' => 'Mật khẩu dùng để đăng nhập, bạn nên đặt mật khẩu có độ phức tạp, giúp web bạn bảo mật hơn', 'tabindex' => 2)); ?>
    <span class="field_desc" id="passwordinfo"></span>
</div>
<div class="input_field">
    <?php echo $form->labelEx($model, 'email') ?>
    <?php echo $form->textField($model, 'email', $htmlOptions = array('class' => 'smallfield', 'title' => 'Email sẽ dùng để kích hoạt web của bạn sau khi đăng ký, nếu bạn chưa có Email hãy tạo nó trước khi thực hiện Đăng ký web', 'tabindex' => 3)); ?>
    <span class="field_desc" id="emailinfo"></span>
</div>
<div class="input_field">
    <?php echo $form->labelEx($model, 'dos_bussiness_bussiness_id') ?>
    <?php $data_bussiness = array(); foreach ($listBusiness as $value) {$data_bussiness[$value['bussiness_id']] = $value['bussiness_name'];}?>
<?php echo $form->dropDownList($model, 'dos_bussiness_bussiness_id', $data_bussiness, array('tabindex' => 4, 'class' => 'large')); ?>
</div>
<div class="input_field">
    <select name="nationals" tabindex="5">
        <option value="VND">Việt Nam</option>
    </select>
    <?php echo $form->labelEx($model, 'dos_provinces_province_id') ?>
    <?php $data_provinces = array(); foreach ($listProvinces as $value) {$data_provinces[$value['province_id']] = $value['province_name'];} ?>
    <?php echo $form->dropDownList($model, 'dos_provinces_province_id', $data_provinces, array('tabindex' => 6)); ?>
</div>

<div class="sign-up-heading"><h1><span>2</span><?php echo Yii::t('main', 'register.step2')?></h1>
    <p><?php echo Yii::t('main', 'changeTemplate')?></p>
</div>
<div class="border-image">
    <div class="border-heading">
        <strong><?php echo Yii::t('main', 'chooseGallery')?></strong>
        <div class="right">
            <?php echo $form->dropDownList($model, 'choose_business', $data_bussiness); ?>
        </div>
    </div>

	<div id="scrollbar">
		<ul class="overview">
			<li>Loading...</li>
		</ul>
	</div>
</div>

<div class="sign-up-heading"><h1><span>3</span><?php echo Yii::t('main', 'register.step3')?></h1><p><?php echo Yii::t('main', 'changeModule')?></p></div>
<div class="border-image">
    <div class="border-heading"><strong><?php echo Yii::t('main', 'chooseModules')?></strong></div>
    <?php $model_class = new Modules; $values = $model_class->listModules(1); $data = array(); foreach ($values as $value): ?>
        <?php $data[$value['module_id']] = '<img src="' . Yii::app()->theme->baseUrl . '/images/icon-medium.png" alt="' . $value['module_id'] . '" /><br/>' . $this->lang[$value['module_id']]; ?>
    <?php endforeach; ?>
    <?php echo str_replace('span', 'div', $form->checkBoxList($model, 'choose_modules', $data, array('template' => '<div class="choose-page">{label}<br/>{input}</div>', 'separator' => ''))); ?>
    <div class="clear"></div>
</div>

<div class="border-image">
    <div class="border-heading"><strong><?php echo Yii::t('main', 'chooseFunctions')?></strong></div>
    <?php $model_class = new Modules; $values = $model_class->listModules(0); $data = array(); foreach ($values as $value): ?>
        <?php $data[$value['module_id']] = '<img src="' . Yii::app()->theme->baseUrl . '/images/icon-medium.png" alt="' . $value['module_id'] . '" /><br/>' . $this->lang[$value['module_id']]; ?>
    <?php endforeach; ?>
    <?php echo str_replace('span', 'div', $form->checkBoxList($model, 'choose_feature', $data, array('template' => '<div class="choose-page">{label}<br/>{input}</div>', 'separator' => ''))); ?>
    <div class="clear"></div>
</div>
<?php echo CHtml::submitButton(Yii::t('main', 'createweb'), array('class' => 'submit', 'name' => 'submit')); ?>
<?php $this->endWidget(); ?>
<script type="text/javascript">
    jQuery(function () {
        //disable check for default
        jQuery("#Username_choose_modules_0").attr("disabled", true);
        jQuery("#Username_choose_modules_0").attr("checked", true);
		jQuery("#Username_choose_modules_0").parent().addClass('border');
		//jQuery("#Username_choose_feature_1").attr("disabled", true);
		jQuery("#Username_choose_feature_1").attr("checked", true);
        jQuery("#Username_choose_feature_1").parent().addClass('border');

		jQuery('.choose-page').click(function () {
			if (jQuery(this).find('input').is(':checked')) {
				//alert("Checked");
				jQuery(this).addClass('border');
			}
			else {
				//alert("Unchecked");
				jQuery(this).removeClass('border');
			}
        });

		jQuery("#Username_choose_business").change(function () {
			jQuery("#Username_choose_business option:selected").each(function () {
				jQuery(".overview").load('/site/loadtemplates/id/'+jQuery(this).val(), function() {var size = jQuery("ul.overview > li").length; jQuery('.overview').width(292*size)});
			});
		}).change();

		jQuery(".smallfield").tipTip({maxWidth:"335px", defaultPosition:"right", edgeOffset:10});
		jQuery(".smallfield-name").tipTip({maxWidth:"335px", defaultPosition:"right", edgeOffset:72});
		jQuery(".tooltip").tipTip({maxWidth:"335px", defaultPosition:"right", edgeOffset:10});
    });
</script>