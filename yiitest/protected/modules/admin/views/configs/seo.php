<form action="" method="post" id="frm" name="frm">
<div class="infotab">
	<ul class="tabs">
		<?php $i=1; foreach ($models as $value): ?>
			<li><a href="#tab<?php echo $i?>"><?php echo $value['menu']?></a></li>
		<?php $i++; endforeach; ?>
	</ul><div class="clear"></div>

	<div class="tab_container">
		<?php $i=1; foreach ($models as $value): ?>
		<input name="menu[]" value="<?php echo $value['menu'] ?>" type="hidden" maxlength="50" readonly="readonly" />
		<ul id="tab<?php echo $i?>" class="tab_content">
			<?php foreach (Yii::app()->user->numLang as $lang): $lang = ($lang == 'vi') ? '' : $lang; ?>
			<li>
				<label><?php echo $this->lang['title'.$lang] ?></label>
				<input name="title<?php echo $lang?>[]" value="<?php echo $value['title' . $lang] ?>" maxlength="100" class="txt-small"/>
			</li>
			<?php endforeach?>

			<?php foreach(Yii::app()->user->numLang as $lang): $lang = ($lang=='vi') ? '' : $lang;?>
			<li>
				<label><?php echo $this->lang['description'.$lang] ?></label>
				<textarea name="description<?php echo $lang?>[]"><?php echo $value['description'.$lang] ?></textarea>
			</li>
			<?php endforeach?>
		</div>
		<?php $i++; endforeach; ?>
	</div>
		<input type="submit" name="submit" value="  <?php echo $this->lang['update'] ?>  " title="<?php echo $this->lang['update'] ?>" class="login" />
</div> <!--En tab-->
</form>