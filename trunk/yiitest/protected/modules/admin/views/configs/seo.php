<div class="infotab">
	<ul class="tabs">
		<li><a href="#tab1">Trang chủ</a></li>
		<li><a href="#tab2">Giới thiệu</a></li>
		<li><a href="#tab3">Sản phẩm</a></li>
		<li><a href="#tab4">Tin tức</a></li>
		<li><a href="#tab5">Dịch vụ</a></li>
		<li><a href="#tab6">Video</a></li>
		<li><a href="#tab7">Liên hệ</a></li>
	</ul> <div class="clear"></div>

	<div class="tab_container">
		<div id="tab1" class="tab_content">
			Content tab 1	Content tab 1	Content tab 1	Content tab 1	Content tab 1	Content tab 1	Content tab 1	Content tab 1
			Content tab 1	Content tab 1	Content tab 1	Content tab 1	Content tab 1	Content tab 1	Content tab 1	Content tab 1Content tab 1	Content tab 1	Content tab 1	Content tab 1	Content tab 1	Content tab 1	Content tab 1	Content tab 1Content tab 1	Content tab 1	Content tab 1	Content tab 1	Content tab 1	Content tab 1	Content tab 1	Content tab 1Content tab 1	Content tab 1	Content tab 1	Content tab 1	Content tab 1	Content tab 1	Content tab 1	Content tab 1Content tab 1	Content tab 1	Content tab 1	Content tab 1	Content tab 1	Content tab 1	Content tab 1	Content tab 1
		</div>
		<div id="tab2" class="tab_content">
			Content tab 2	Content tab 2	Content tab 2	Content tab 2	Content tab 2	Content tab 2 Content tab 2
			<!--Content-->
		</div>
		<div id="tab3" class="tab_content">
			Content tab 3	Content tab 3	Content tab 3	Content tab 3	Content tab 3	Content tab 3 Content tab 3
			<!--Content-->
		</div>
	</div>
</div> <!--En tab-->
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