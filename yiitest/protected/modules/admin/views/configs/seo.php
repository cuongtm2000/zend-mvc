<form action="" method="post" id="frm" name="frm">
	<fieldset>
		<legend>Công cụ tìm kiếm</legend>
		<p>
			<label></label>
			<label class="label-txt-small">Value</label>
			<label class="label-txt-large">Title</label>
			<label class="label-txt-small">Description</label>
		</p>
		<?php foreach ($models as $value): ?>
		<p class="clear">
			<label>Seo</label>
			<input name="menu[]" value="<?php echo $value['menu'] ?>" maxlength="50" class="txt-small" readonly="readonly" />
			<?php foreach(Yii::app()->user->numLang as $lang): $lang = ($lang=='vi') ? '' : $lang;?>
				<input name="title<?php echo $lang?>[]" value="<?php echo $value['title'.$lang] ?>" maxlength="100" class="txt-small" />
			<?php endforeach?>
			<?php foreach(Yii::app()->user->numLang as $lang): $lang = ($lang=='vi') ? '' : $lang;?>
				<input name="description<?php echo $lang?>[]" value="<?php echo $value['description'.$lang] ?>" maxlength="250" class="txt-small" />
			<?php endforeach?>
		</p>
		<?php endforeach; ?>
		<p>
			<label>&nbsp;</label>
			<input type="submit" name="submit" value="  <?php echo $this->lang['update'] ?>  " title="<?php echo $this->lang['update'] ?>" class="login" />
		</p>
	</fieldset>
</form>