<?php $this->breadcrumbs = array($this->lang[$this->module->id]); ?>
<?php $this->pageTitle = $this->lang[$this->module->id]; $this->setDescription($item['description'])?>

<div class="frame-panel">
	<h4 class="title-right"><span><?php echo $item['title']?></span></h4>
	<div class="frame-tent-right"><?php echo $item['content']?>
		<form id="frm" action="/lien-he" method="post">	
			<div id="frm_es_" class="errorSummary" style="display:none">
				<ul><li>dummy</li></ul>
			</div>	
			<p>Quý khách có thể liên hệ với chúng tôi bằng cách điền đầy đủ thông tin vào mẫu sau:</p>
			<ul class="frame-contact">
				<li class="left-contact">
					<p><label for="ContactUserForm_fullname" class="required">Họ và tên <span class="required">*</span></label></p>		<input name="ContactUserForm[fullname]" id="ContactUserForm_fullname" type="text" />		</li>
				<li>
					<p><label for="ContactUserForm_company">Công ty</label></p>		<input name="ContactUserForm[company]" id="ContactUserForm_company" type="text" maxlength="60" />		</li>				
				<li class="left-contact">
					<p><label for="ContactUserForm_address" class="required">Địa chỉ <span class="required">*</span></label></p>			<input name="ContactUserForm[address]" id="ContactUserForm_address" type="text" />		</li>
				<li>
					<p><label for="ContactUserForm_email" class="required">Địa chỉ email <span class="required">*</span></label></p>			<input name="ContactUserForm[email]" id="ContactUserForm_email" type="text" />		</li>
				<li  class="left-contact">
					<p><label for="ContactUserForm_phone" class="required">Số điện thoại <span class="required">*</span></label></p>			<input name="ContactUserForm[phone]" id="ContactUserForm_phone" type="text" />		</li>
				<li class="clear">
					<p><label for="ContactUserForm_content" class="required">Nội dung <span class="required">*</span></label></p>			<textarea cols="10" rows="10" name="ContactUserForm[content]" id="ContactUserForm_content"></textarea>		</li>
				<li>
					<input name="submit" class="bton-dk" title="Gửi" type="submit" value="Gửi" />			<input name="reset" class="bton-dk" title="Nhập lại" type="reset" value="Nhập lại" />		</li>
			</ul>
		</form>
	</div>
</div>