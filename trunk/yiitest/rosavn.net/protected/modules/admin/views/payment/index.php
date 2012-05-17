<?php if($date > 0):?>
	Tài khoản của bạn đã hết hạn: <strong><?php echo $date ?></strong> ngày
<?php else:?>
	Bạn còn <strong><?php echo abs($date) ?></strong> ngày để sử dụng
<?php endif?>