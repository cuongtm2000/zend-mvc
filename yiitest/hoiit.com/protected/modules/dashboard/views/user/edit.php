<ul id="crumbs">
	<li><a href="<?php echo Yii::app()->request->baseUrl ?>/">Home</a></li>
	<li><a href="<?php echo Yii::app()->request->baseUrl ?>/dashboard">Dashboard</a></li>
	<li><a href="<?php echo Yii::app()->request->baseUrl ?>/user">User</a></li>
	<li>Edit</li>
</ul>
<?php $form = $this->beginWidget('CActiveForm', array('id' => 'frm', 'enableAjaxValidation' => true, 'enableClientValidation' => true, 'htmlOptions' => array('enctype' => 'multipart/form-data'))); ?>
<fieldset>
	<legend>Edit user</legend>
	<?php echo $form->errorSummary($model, ''); ?>
	<p>
		<?php echo $form->labelEx($model, 'email') ?>
		<?php echo $form->textField($model, 'email', array('class'=>'small-input')); ?>
	</p>
	<p>
		<?php echo $form->labelEx($model, 'phone') ?>
		<?php echo $form->textField($model, 'phone', array('class'=>'small-input')); ?>
	</p>
	<p>
		<?php echo $form->labelEx($model, 'yahoo') ?>
		<?php echo $form->textField($model, 'yahoo', array('class'=>'small-input')); ?>
	</p>
	<p>
		<?php echo $form->labelEx($model, 'skype') ?>
		<?php echo $form->textField($model, 'skype', array('class'=>'small-input')); ?>
	</p>
	<p>
		<?php echo $form->labelEx($model, 'picture') ?>
		<?php if($model['picture']):?>
			<div class="picture">
				<img src="<?php echo Yii::app()->request->baseUrl ?>/public/userfiles/image/usernames/<?php echo $model['picture']?>" /> <?php echo $form->checkBox($model, 'remove_pic') ?> <?php echo $form->labelEx($model, 'remove_pic', array('class' => 'remove')) ?><br/>
				<?php echo $form->fileField($model, 'picture', array('size'=>'36', 'class'=>'small-input')); ?>
			</div>
		<?php else:?>
			<?php echo $form->fileField($model, 'picture', array('size'=>'36', 'class'=>'small-input')); ?>
		<?php endif?>

	</p>
	<p>
		<?php echo $form->labelEx($model, 'detail') ?>
		<?php echo $form->textArea($model, 'detail', array('cols'=>30, 'rows'=>10)); ?>
	</p>
	<p>
		<?php echo $form->labelEx($model, 'parent') ?>
		<?php echo $form->textField($model, 'parent', array('class'=>'small-input')); ?>
	</p>
	<p>
		<?php echo $form->labelEx($model, 'group_code') ?>
		<?php $cats_class = new Cats; $values = $cats_class->MultiLevelCats(0); $data = array(); foreach($values as $value){$data[$value['cat_title']] = $value['cat_name'];}?>
		<?php echo $form->dropDownList($model, 'group_code', $data); ?>
	</p>
	<p>
		<?php echo $form->labelEx($model, 'hoiit_provinces_province_id') ?>
		<?php $provinces_class = new Provinces; $values = $provinces_class->listProvincesByNational('VND'); $data = array(); foreach ($values as $value){$data[$value['province_id']] = $value['province_name'];}?>
		<?php echo $form->dropDownList($model, 'hoiit_provinces_province_id', $data); ?>
	</p>
	<p>
		<label>&nbsp;</label>
		<?php echo CHtml::submitButton('  Submit  ', array('class'=>'login', 'name'=>'submit')); ?>
	</p>
</fieldset>
<?php $this->endWidget(); ?>