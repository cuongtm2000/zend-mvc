<?php if($userImport):?>
	<?php $checked = ''; foreach($userImport as $value):?>
		<li>
			<a target="_blank" href="http://<?php echo $value['username'].'.'.$_SERVER['HTTP_HOST']?>"><img src="<?php echo Yii::app()->baseUrl; ?>/public/userfiles/images/<?php echo $value['username']?>/images/demo.jpg" alt="<?php echo $value['username']?>"  /></a>
			<input<?php echo $checked?> id="tem-<?php echo $value['username']?>" name="Username[username]" value="<?php echo $value['username']?>" type="radio"/>
			<label for="tem-<?php echo $value['username']?>"><strong><?php echo $value['username']?></strong></label>
		</li>
	<?php endforeach?>
<?php else:?>
<li style="width: 600px; text-align: left">Ngành nghề <strong><?php echo $name ?></strong> bạn chọn chưa có dữ liệu mẫu</li>
<?php endif;?>