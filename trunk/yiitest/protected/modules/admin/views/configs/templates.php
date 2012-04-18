<form action="" method="post">
Chọn ngành nghề:
<select name="bussiness" onchange="this.form.submit()">
	<?php foreach($listBusiness as $value):?>
		<option value="<?php echo $value['bussiness_id']?>"><?php echo $value['bussiness_name']?></option>
	<?php endforeach?>
</select>
</form>