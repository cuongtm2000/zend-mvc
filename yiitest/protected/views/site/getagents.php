<!DOCTYPE html PUBLIC "-//W3C//DTD XHTML 1.0 Transitional//EN" "http://www.w3.org/TR/xhtml1/DTD/xhtml1-transitional.dtd">
<html xmlns="http://www.w3.org/1999/xhtml">
<head>
	<meta http-equiv="Content-Type" content="text/html; charset=utf-8"/>
	<meta http-equiv="content-language" content="vi, en"/>
	<meta name="revisit-after" content="1 days"/>
	<meta name="robots" content="noodp,index,follow"/>
	<title>Danh sách đại lý - Dos.vn</title>
	<link href="/themes/dos.vn/css/agent.css" rel="stylesheet" type="text/css"/>
	<script type="text/javascript" src="/themes/dos.vn/js/agent.js"></script>
</head>
<body>
<select name="nationals">
	<option value="VND">Việt Nam</option>
</select>
<select name="provinces" onchange="showUser(this.value)">
	<option value="0">-- Chọn tỉnh thành --</option>
	<?php foreach ($listProvinceByCountry as $value): ?>
	<option value="<?php echo $value['province_id']?>"><?php echo $value['province_name']?></option>
	<?php endforeach?>
</select>

<div id="loadContent"><b>Vui lòng chọn Tỉnh thành để có mã số đại lý bảo trợ.</b></div>
</body>
</html>