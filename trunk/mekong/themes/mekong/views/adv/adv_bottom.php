<?php if($adv_bottom):?>
<div class="partner-top-line">
	<img class="partner" src="<?php echo Yii::app()->theme->baseUrl; ?>/images/partner.png" alt="partner" />
	<ul id="scroller" class="partner-group">
		<?php foreach ($adv_bottom as $value): ?>
			<li><a href="<?php echo $value['url'] ?>" target="<?php echo $value['type'] ?>" title="<?php echo $value['title'] ?>"><img src="<?php echo Yii::app()->baseUrl.Yii::getPathOfAlias('filePathUpload') ?>/image/adv/<?php echo $value['pic_thumb'] ?>" alt="<?php echo $value['title'] ?>" /></a></li>
		<?php endforeach?>
	</ul> <div class="clear"></div> 
</div>
<?php endif?>