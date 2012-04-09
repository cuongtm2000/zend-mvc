<?php $form = $this->beginWidget('CActiveForm', array('id' => 'frm', 'enableAjaxValidation' => true, 'enableClientValidation' => true)); ?>
<fieldset>
	<legend>Config language</legend>
	<p class="rows"><a href="#" id="add-rows"><?php echo $this->lang['add_row'] ?></a></p>
	<?php foreach($models as $value):?>
	<p class="clear">
		<label>Language</label>
		<input name="lang_name[]" value="<?php echo $value['lang'.LANG]?>" maxlength="30" class="txt-small" />
		<?php foreach(Yii::app()->user->numLang as $lang): $lang = ($lang=='vi') ? '' : $lang;?>
			<input name="lang<?php echo $lang?>[]" value="<?php echo $value['lang'.$lang]?>" maxlength="200" class="txt-large" />
		<?php endforeach?>
	</p>
	<?php endforeach?>

	<p class="clear">
		<label>&nbsp;</label>
		<?php echo CHtml::submitButton($this->lang['update'], array('name'=>'submit', 'class'=>'login', 'title'=>$this->lang['update'])); ?>
	</p>
</fieldset>
<?php $this->endWidget(); ?>
<script type="text/javascript">
	$(document).ready(function(){
		$("#add-rows").click(function(){
			$(".rows").before('<p class="clear"><label>Config</label> <select name="lang_name[]" class="select-110"><?php $values = Langs::getLangs(0); foreach($values as $value):?><option value="<?php echo $value['lang_name']?>"><?php echo $value['lang'.LANG]?></option><?php endforeach?></select> <?php foreach(Yii::app()->user->numLang as $lang): $lang = ($lang=='vi') ? '' : $lang;?><input name="lang<?php echo $lang?>[]" value="" maxlength="200" class="txt-large" /> <?php endforeach?></p>');
			return false;
		});
	});
</script>