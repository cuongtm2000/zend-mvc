<?php if (!$list_item_cat = $model->listItemCat()): ?>
    <div class="errorSummary">
        <ul>
            <li>Vui lòng <a href="addcat" title="thêm mới Danh mục">thêm mới danh mục</a> trước khi thêm mới sản phẩm</li>
        </ul>
    </div>
<?php else:?>
	<?php $form = $this->beginWidget('CActiveForm', array('id' => 'frm', 'enableAjaxValidation' => true, 'enableClientValidation' => true, 'htmlOptions' => array('enctype' => 'multipart/form-data'))); ?>
		<?php echo $form->errorSummary($model, ''); ?>
		<fieldset>
			<legend><?php echo $this->lang['add_new'] ?> <?php echo strtolower($this->lang[$this->ID])?></legend>

			<?php if ($list_item_cat): ?>
				<div class="col1"><?php echo $form->labelEx($model, 'dos_module_item_cat_cat_id') ?></div>
				<div class="col2">
					<?php echo $form->dropDownList($model, 'dos_module_item_cat_cat_id', CHtml::listData($list_item_cat, 'cat_id', 'cat_title')); ?>
				</div>
				<div class="clear space"></div>
			<?php endif; ?>

			<?php foreach(Yii::app()->user->numLang as $lang): $lang = ($lang=='vi') ? '' : $lang;?>
			<div class="col1"><?php echo $form->labelEx($model, $this->lang['title'.$lang]) ?></div>
			<div class="col2">
				<?php echo $form->textField($model, 'title'.$lang, $htmlOptions = array('class' => 'txt-very-large')); ?>
			</div>
			<div class="clear space"></div>
			<?php endforeach; ?>

			<?php foreach(Yii::app()->user->numLang as $lang): $lang = ($lang=='vi') ? '' : $lang;?>
			<div class="col1"><?php echo $form->labelEx($model, $this->lang['content'.$lang]) ?></div>
			<div class="col2">
				<?php echo $form->textArea($model, 'content'.$lang, $htmlOptions = array('cols' => 20, 'rows' => 10)); ?>
				<script type="text/javascript">
					//<![CDATA[
					CKEDITOR.replace('<?php echo get_class($model) ?>[content<?php echo $lang?>]');
					//]]>
				</script>
			</div>
			<div class="clear space"></div>
			<?php endforeach; ?>

			<div class="col1"><?php echo $form->labelEx($model, 'unit') ?></div>
			<div class="col2">
				<?php echo $form->textField($model, 'unit', $htmlOptions = array('class' => 'txt-very-large')); ?>
			</div>
			<div class="clear space"></div>

			<?php foreach(Yii::app()->user->numLang as $lang): $lang = ($lang=='vi') ? '' : $lang;?>
			<div class="col1"><?php echo $form->labelEx($model, 'tag'.$lang) ?></div>
			<div class="col2">
				<?php echo $form->textField($model, 'tag'.$lang, $htmlOptions = array('class' => 'txt-very-large')); ?>
			</div>
			<div class="clear space"></div>
			<?php endforeach; ?>

			<?php foreach(Yii::app()->user->numLang as $lang): $lang = ($lang=='vi') ? '' : $lang;?>
			<div class="col1"><?php echo $form->labelEx($model, 'description'.$lang) ?></div>
			<div class="col2">
				<?php echo $form->textArea($model, 'description'.$lang, $htmlOptions = array('cols' => 89, 'rows' => 5)); ?> <span class="info-keyup<?php echo $lang?>">0</span>
			</div>
			<div class="clear space"></div>
			<script type="text/javascript">
				jQuery(function($) {
					$('#<?php echo ucfirst($this->ID)?>_description<?php echo $lang?>').keyup(function(){var max=250;var valLen=$(this).val().length;$('.info-keyup<?php echo $lang?>').text( valLen+'/'+max); var val = $(this).val(); if (val.length > 250){ $(this).val(val.slice(0, 250));}});
				});
			</script>
			<?php endforeach; ?>

			<div class="col1"><?php echo $form->labelEx($model, 'pic_thumb') ?></div>
			<div class="col2">
				<?php echo $form->fileField($model, 'pic_thumb', array('class' => 'fileupload')); ?>
			</div>
			<div class="clear space"></div>

			<div class="col1"><?php echo $form->labelEx($model, 'pic_full') ?></div>
			<div class="col2">
				<?php echo $form->fileField($model, 'pic_full', array('class' => 'fileupload')); ?>
			</div>
			<div class="clear space"></div>

			<p class="rows"><a href="#" id="add-rows"><?php echo $this->lang['pic_desc']?></a></p>

			<div class="col1"><?php echo $form->labelEx($model, 'hot', $htmlOptions = array('for' => ucfirst($this->ID) . '_hot_0')) ?></div>
			<div class="col2 radio">
				<?php echo $form->radioButtonList($model, 'hot', array('0'=>$this->lang['normal'], '1'=>$this->lang['hot']), array('separator' => '&nbsp;&nbsp;')); ?>
			</div>
			<div class="clear space"></div>

			<div class="col1"><?php echo $form->labelEx($model, 'enable', $htmlOptions = array('for' => ucfirst($this->ID) . '_enable_0')) ?></div>
			<div class="col2 radio">
				<?php echo $form->radioButtonList($model, 'enable', array('1'=>$this->lang['show'], '0'=>$this->lang['hidden']), array('separator' => '&nbsp;&nbsp;')); ?>
			</div>
			<div class="clear space"></div>

			<div class="col1">&nbsp;</div>
			<div class="col2">
				<?php echo CHtml::submitButton($this->lang['add_new'], array('name' => 'submit', 'class' => 'login', 'title' => $this->lang['add_new'])); ?>
				<?php echo Chtml::link($this->lang['cancel'], 'javascript:history.back()', $htmlOptions = array('class' => 'login-a', 'title' => $this->lang['cancel'])) ?>
			</div>
			<div class="clear space"></div>
		</fieldset>
	<?php $this->endWidget(); ?>
	<?php foreach(Yii::app()->user->numLang as $lang): $lang = ($lang=='vi') ? '' : $lang;?>
		<?php $this->widget('ext.seoAlias.seoAlias', array('model' => $model, 'source' => 'title'.$lang, 'target' => 'tag'.$lang)); ?>
	<?php endforeach?>
	<script type="text/javascript">
		$(document).ready(function(){
			$("#add-rows").click(function(){
				$(".rows").before('<div class="col1"><?php echo $this->lang['pic_desc']?></div><div class="col2"><input type="file" name="<?php echo ucfirst($this->ID) ?>[pic_desc][]" size="40%" /></div><div class="clear space"></div>');
				return false;
			});
		});
	</script>
<?php endif; ?>