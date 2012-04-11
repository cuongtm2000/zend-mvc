<h1 class="font-size13pt"><strong>Xin chúc mừng</strong>, </h1>
<p class="marginb10">Website của bạn đã được tạo xong tại địa chỉ website: <a target="_blank" href="http://<?php echo Yii::app()->session['user_registed'].'.'.$_SERVER['HTTP_HOST']?>"><strong>http://<?php echo Yii::app()->session['user_registed'].'.'.$_SERVER['HTTP_HOST']?></strong></a> .Ngay bây giờ bạn có thể truy cập liên kết <a href="http://<?php echo Yii::app()->session['user_registed'].'.'.$_SERVER['HTTP_HOST']?>/admin" target="_blank"><strong>http://<?php echo Yii::app()->session['user_registed'].'.'.$_SERVER['HTTP_HOST']?>/admin</strong></a> để quản lý, thay đổi thông tin, bố cục trên trang web của bạn.</p>
<p>Rất có thể bạn sẽ băn khoăn nên nhập liệu website thế nào cho đẹp và ấn tượng. Để tiện lợi cho việc nhập liệu website chúng tôi cung cấp tiện ích <strong>tự động chèn dữ liệu mẫu</strong> vào website của bạn. Điều này sẽ giúp bạn tiết kiệm rất nhiều thời gian &amp; công sức. Rất đơn giản bạn chỉ cần <strong>chọn ngành nghề đúng với dữ liệu</strong> bạn muốn nhập liệu</p>

<?php $form = $this->beginWidget('CActiveForm', array('id' => 'frm', 'enableAjaxValidation' => true, 'enableClientValidation' => true, 'htmlOptions' => array('name' => 'frm'))); ?>
<div class="sign-up-heading"><h1><span>4</span>Nhập dữ liệu mẫu cho web: <?php echo Yii::app()->session['user_registed']?></h1><p><?php echo Yii::t('main', 'changeTemplate')?></p></div>
<?php echo $form->errorSummary($model, '', '', array('class' => 'errorSummary errorImport')); ?>
<div class="border-image">
	<div class="border-heading">
		<strong>Chọn ngành nghề có dữ liệu web mẫu phù hợp với Doanh nghiệp của bạn</strong>
		<div class="right">
			<?php $data_bussiness = array(); foreach ($listBusiness as $value) {$data_bussiness[$value['bussiness_id']] = $value['bussiness_name'];}?>
			<?php echo $form->dropDownList($model, 'dos_bussiness_bussiness_id', $data_bussiness); ?>
		</div>
	</div>

	<div id="scrollbar">
		<ul class="overview">
			<li>Loading...</li>
		</ul>
	</div>
</div>
<?php echo CHtml::submitButton('Nhập liệu', array('class' => 'submit', 'name' => 'submit')); ?> <a href="/tao-web-thanh-cong" title="Bỏ qua" class="skip">Bỏ qua</a>
<?php $this->endWidget(); ?>
<script type="text/javascript">
	jQuery(function () {
		jQuery("#Username_dos_bussiness_bussiness_id ").change(function () {
			jQuery("#Username_dos_bussiness_bussiness_id  option:selected").each(function () {
				jQuery(".overview").load('/site/loaduserimport/id/'+jQuery(this).val(), function() {var size = jQuery("ul.overview > li").length; jQuery('.overview').width(292*size)});
			});
		}).change();
	});
</script>