<h1 class="title-right"><span>Thông tin <?php echo $model->username; ?></span></h1>
<div class="frame-tent-right">
	<ul class="view-log frame-contact">
		<li><label class="no">Tên đăng nhập: </label><?php echo $model['username'] ?></li>
		<li><label class="retail">Ngày đăng ký: </label><?php echo $model['create_date'] ?> </li>
		<li><label class="no">Họ tên: </label><?php echo $model['full_name'] ?></li>
		<li><label class="retail">Email: </label><?php echo $model['email'] ?></li>
		<li><label class="no">Ngày sinh: </label><?php echo $model['birthday'] ?></li>
		<li><label class="retail">Địa chỉ: </label><?php echo $model['address'] ?></li>
		<li><label class="no">Số CMND: </label><?php echo $model['cmnd'] ?></li>
		<li><label class="retail">Số điện thoại: </label><?php echo $model['phone'] ?></li>
		<li><label class="no">Số TK ngân hàng: </label><?php echo $model['bank_number'] ?></li>
		<li><label class="retail">Tên ngân hàng: </label><?php echo $model['bank_name'] ?></li>
		<li><label class="no">Người giới thiệu: </label><?php echo $model['user_gioithieu'] ?></li>
		<li><label class="retail">Balance: </label><?php echo $model['balance'] ?></li>
		<li><label class="no">Level: </label><?php echo $model['level'] ?></li>
	</ul>        
</div>