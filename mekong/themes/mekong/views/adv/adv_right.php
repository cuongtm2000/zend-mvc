<?php if($adv_right):?>
<div class="frame-leftcontent">
	<h2 class="title-project"><span>GIẢI THƯỞNG</span></h2>
	<ul class="bg-adv">
		<?php foreach ($adv_right as $value): ?>
			<li><a href="<?php echo $value['url'] ?>" target="<?php echo $value['type'] ?>" title="<?php echo $value['title'] ?>"><img src="<?php echo Yii::app()->baseUrl.Yii::getPathOfAlias('filePathUpload') ?>/image/adv/<?php echo $value['pic_thumb'] ?>" alt="<?php echo $value['title'] ?>" /></a></li>
		<?php endforeach?>
	</ul>
</div>
<?php endif?>