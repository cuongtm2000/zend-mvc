<?php
$this->breadcrumbs=array(
	'Users'=>array('index'),
	$model->username,
);

//$this->menu=array(
//	array('label'=>'List User', 'url'=>array('index')),
//	array('label'=>'Create User', 'url'=>array('create')),
//	array('label'=>'Update User', 'url'=>array('update', 'id'=>$model->username)),
//	array('label'=>'Delete User', 'url'=>'#', 'linkOptions'=>array('submit'=>array('delete','id'=>$model->username),'confirm'=>'Are you sure you want to delete this item?')),
//	array('label'=>'Manage User', 'url'=>array('admin')),
//);
?>

<h1 class="title-right"><span>View User #<?php echo $model->username; ?></span></h1>
<div class="frame-tent-right">
	<ul class="view-log frame-contact">
		<li><label class="no">Tên đăng nhập: </label>Viptamnhinviet</li>
		<li><label class="retail">Ngày đăng ký: </label>2012-03-04 22:30:34 </li>
		<li><label class="no">Họ tên: </label>Nguyễn Văn Tèo</li>
		<li><label class="retail">Email: </label>teo@gmail.com</li>
		<li><label class="no">Ngày sinh: </label>09-09-999</li>
		<li><label class="retail">Địa chỉ: </label>Nhị Thiên Đường</li>
		<li><label class="no">Số CMND: </label>201030405</li>
		<li><label class="retail">Số điện thoại: </label>0909 009 009</li>
		<li><label class="no">Số TK ngân hàng: </label>116113</li>
		<li><label class="retail">Tên ngân hàng: </label>Ngân hàng Thế Nhất vip</li>
		<li><label class="no">Người giới thiệu: </label>diemvuong</li>
		<li><label class="retail">Balance: </label>0</li>
		<li><label class="no">Level: </label>1</li>
	</ul>        
</div> <!--End frame tent right-->
<div class="frame-tent-right">
<?php $this->widget('zii.widgets.CDetailView', array(
	'data'=>$model,
	'attributes'=>array(
		'username',
		'create_date',
		'full_name',
		'email',
		'birthday',
		'address',
		'cmnd',
		'phone',
		'bank_number',
		'bank_name',
		'user_gioithieu',
		'balance',
		'level',
	),
)); ?>
</div> <!--End frame tent right-->