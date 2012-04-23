<?php $form = $this->beginWidget('CActiveForm', array('id' => 'frm-template', 'enableAjaxValidation' => true, 'enableClientValidation' => true)); ?>
	<?php echo $form->errorSummary($model, ''); ?>
	<span class="title-blue"><b>Ngành nghề kinh doanh:</b></span>
	<?php $data_bussiness = array(); foreach ($listBusiness as $value) {$data_bussiness[$value['bussiness_id']] = $value['bussiness_name'];}?>
	<?php echo $form->dropDownList($model, 'dos_bussiness_bussiness_id', $data_bussiness, array('onchange' => 'this.form.submit()')); ?>

	<ul id="list-template">
		<?php if($templatesBusiness['models']):?>
			<?php foreach($templatesBusiness['models'] as $value):?>
			<li>
				<label for="tem-<?php echo $value['template']?>"><img src="<?php echo Yii::app()->baseUrl; ?>/themes/<?php echo $value['template']?>/images/tiny.png" alt="<?php echo $value['template']?>"  /></label>
				<p>
					<input id="tem-<?php echo $value['template']?>" name="Username[dos_templates_template]" value="<?php echo $value['template']?>" type="radio"/>
					<label for="tem-<?php echo $value['template']?>"><strong><?php echo $value['template_name']?></strong></label>
				</p>
			</li>
			<?php endforeach?>
		<?php else:?>
			<li style="text-align: left">Rất tiếc! <strong>Ngành nghề</strong> bạn chọn chưa có mẫu</li>
		<?php endif;?>
	</ul><div class="clear"></div>

	<?php if(isset($templatesBusiness['pages'])):?>
	<?php $this->widget('CLinkPager', array('pages' => $templatesBusiness['pages'], 'header' => '', 'htmlOptions' => array('class' => 'yiiPager paging'))) ?>
	<?php endif?>

	<?php echo CHtml::submitButton($this->lang['edit'], array('class' => 'submit', 'name' => 'btn-submit')); ?>
<?php $this->endWidget(); ?>