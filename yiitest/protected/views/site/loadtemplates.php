<?php if($templatesBusiness):?>
	<?php $checked = ''; foreach($templatesBusiness as $value):?>
	<li>
		<label for="tem-<?php echo $value['template']?>"><img src="<?php echo Yii::app()->baseUrl; ?>/themes/<?php echo $value['template']?>/images/tiny.png" alt="<?php echo $value['template']?>"  /></label>
		<p>
			<?php
			if (isset(Yii::app()->session['user_choose_template']) && Yii::app()->session['user_choose_template']==$value['template']){
				$checked = ' checked="checked"';
			}else{
				$checked = '';
			}
			?>
			<input<?php echo $checked?> id="tem-<?php echo $value['template']?>" name="Username[dos_templates_template]" value="<?php echo $value['template']?>" type="radio"/>
			<label for="tem-<?php echo $value['template']?>"><strong><?php echo $value['template_name']?></strong></label>
		</p>
	</li>
	<?php endforeach?>
<?php else:?>
	<li style="width: 600px; text-align: left">Ngành nghề <strong><?php echo $name ?></strong> bạn chọn chưa có mẫu web</li>
<?php endif;?>