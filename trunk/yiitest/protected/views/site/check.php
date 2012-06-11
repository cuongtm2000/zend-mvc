<h1 class="heading-contact marginb10">Kiểm tra tên miền </h1>

<div style="height: 320px">
	<?php if($domain):?>
			<div class="left-domain">
				<?php echo $domain;?>
			</div>
			<div class="left">
				<?php $i=1; foreach ($types as $value):?>
					<div id="result-<?php echo $i?>" class="frame-check">
						<img src="<?php echo Yii::app()->theme->baseUrl ?>/images/ajax-loader.gif" alt="loading" />
					</div>
				<?php $i++; endforeach?>  
				<p class="clear title-guide">Vui lòng Check vào ô màu xanh để đăng ký</p>
			</div> <div class="clear"></div>	
		<script type="text/javascript">
			jQuery(function($) {
				<?php $i=1; foreach ($types as $value):?>
					$("#result-<?php echo $i?>").load("/site/checkDomain/domain/<?php echo $domain?>/type/<?php echo $value?>");
				<?php $i++; endforeach?>
			});
		</script>
	<?php else:?>
	   Tên miền không được rỗng
	<?php endif?>
</div>