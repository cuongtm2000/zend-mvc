<?php if($adv_left):?>
<div class="frame-leftcontent">
	<h4 class="title-project"><span>DỰ ÁN TIÊU BIỂU</span></h4>
	<ul id="scroller_2" class="bg-adv">
		<?php foreach ($adv_left as $value): ?>
			<li><a href="<?php echo $value['url'] ?>" target="<?php echo $value['type'] ?>" title="<?php echo $value['title'] ?>"><img src="<?php echo Yii::app()->baseUrl.Yii::getPathOfAlias('filePathUpload') ?>/image/adv/<?php echo $value['pic_thumb'] ?>" alt="<?php echo $value['title'] ?>" /></a></li>
		<?php endforeach?>
	</ul> <div class="clear"></div>
</div>
<?php endif?>