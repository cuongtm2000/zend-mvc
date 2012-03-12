<h1 class="title-right"><span>Đăng sản phẩm mới</span></h1>
<div class="frame-tent-right">
	<?php $form = $this->beginWidget('CActiveForm', array('id'=>'frm', 'enableAjaxValidation'=>true, 'enableClientValidation' =>true, 'htmlOptions' => array('enctype' => 'multipart/form-data')));?>
		<?php echo $form->errorSummary($model, ''); ?>
		<ul class="frame-contact page-add">
			<li>
				<?php echo $form->labelEx($model, 'dos_module_item_cat_cat_id') ?>
				<?php echo $form->dropDownList($model, 'dos_module_item_cat_cat_id', CHtml::listData($listCats, 'cat_id', 'cat_title')); ?>
			</li>
			<li>
				<?php echo $form->labelEx($model, 'title') ?>
				<?php echo $form->textField($model, 'title'); ?>
			</li>
			<li>
				<div class="col1"><?php echo $form->labelEx($model, 'detail') ?></div>
				<div class="col2">
					<?php echo $form->textArea($model, 'detail', $htmlOptions = array('cols' => 20, 'rows' => 10)); ?>
					<script type="text/javascript">
						//<![CDATA[
						CKEDITOR.replace('<?php echo get_class($model) ?>[detail]',{
							filebrowserBrowseUrl : '/public/plugin/ckfinder/ckfinder.html',
							filebrowserImageBrowseUrl : '/public/plugin/ckfinder/ckfinder.html?type=Images',
							filebrowserFlashBrowseUrl : '/public/plugin/ckfinder/ckfinder.html?type=Flash',
							filebrowserUploadUrl : '/public/plugin/ckfinder/core/connector/php/connector.php?command=QuickUpload&type=Files',
							filebrowserImageUploadUrl : '/public/plugin/ckfinder/core/connector/php/connector.php?command=QuickUpload&type=Images',
							filebrowserFlashUploadUrl : '/public/plugin/ckfinder/core/connector/php/connector.php?command=QuickUpload&type=Flash'
						});
						//]]>
					</script>
				</div>
			</li>
			<li>
				<?php echo $form->labelEx($model, 'pic_thumb') ?>
				<?php echo $form->fileField($model, 'pic_thumb', array('class' => 'page-pic')); ?>
			</li>
			<li>
				<?php echo $form->labelEx($model, 'pic_full') ?>
				<?php echo $form->fileField($model, 'pic_full', array('class' => 'page-pic')); ?>
			</li>
			<li>
				<?php echo $form->labelEx($model, 'unit') ?>
				<?php echo $form->textField($model, 'unit'); ?>
			</li>
			<li>
				<?php echo $form->labelEx($model, 'tag') ?>
				<?php echo $form->textField($model, 'tag', array('readonly'=>'readonly')); ?>
			</li>
			<li>
				<?php echo $form->labelEx($model, 'description') ?>
				<?php echo $form->textArea($model, 'description', $htmlOptions = array('cols' => 89, 'rows' => 5)); ?> <span class="info-keyup">0</span>
			</li>
			<li>
				<label>&nbsp;</label>
				<?php echo CHtml::submitButton(' Thêm mới ', array('name'=>'submit', 'class'=>'bton-dk', 'title'=>'Thêm mới')); ?>
				<?php echo CHtml::resetButton(' Hủy bỏ ', array('name'=>'reset', 'class'=>'bton-dk', 'title'=>'Hủy bỏ')); ?>
			</li>
		</ul>
	<?php $this->endWidget();?>
	<?php $this->widget('ext.seoAlias.seoAlias', array('model' => $model, 'source' => 'title', 'target' => 'tag')); ?>
</div> <!--End frame ten right-->