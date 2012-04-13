<?php if($userImport):?>
	<?php $checked = ''; foreach($userImport as $value):?>
		<li class="anan">
			<label for="tem-<?php echo $value['username']?>"><img src="<?php echo Yii::app()->baseUrl; ?>/public/userfiles/image/<?php echo $value['username']?>/image/demo.jpg" alt="<?php echo $value['username']?>"  /></label>
			<div class="hover">
				<a target="_blank" href="http://<?php echo $value['username'].'.'.$_SERVER['HTTP_HOST']?>" title="Xem thử website"><img src="<?php echo Yii::app()->theme->baseUrl?>/images/zoom.png" alt="Demo: <?php echo $value['username']?>" /></a>
			</div>
			<input<?php echo $checked?> id="tem-<?php echo $value['username']?>" name="Username[username]" value="<?php echo $value['username']?>" type="radio"/>
			<label for="tem-<?php echo $value['username']?>"><strong><?php echo $value['username']?></strong></label>
		</li>
	<?php endforeach?>
<?php else:?>
<li style="width: 600px; text-align: left">Ngành nghề <strong><?php echo $name ?></strong> bạn chọn chưa có dữ liệu mẫu</li>
<?php endif;?>
<script type="text/javascript">
	jQuery(function () {
		jQuery('li').hover(
			function() {
				jQuery(this).children("img").fadeTo(200, 0.25).end().children(".hover").show();
			},
			function() {
				jQuery(this).children("img").fadeTo(200, 1).end().children(".hover").hide();
			}
		);
	});
</script>