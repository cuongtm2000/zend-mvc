<?php if($this->banner): ?>
<div id="banner">
	<div class="bd-line"></div>
	<ul class="slider">
		<?php foreach($this->banner as $value): ?>
		<li class="slider-item"><a href="<?php echo $value['banner_link'] ?>" title=""><img src="<?php echo Yii::app()->request->baseUrl.USERFILES; ?>/banner/<?php echo $value['banner_url'] ?>" alt="<?php echo $value['banner_name'] ?>" /></a></li>
		<?php endforeach ?>
	</ul>
	<div class="bd-line"></div>
</div> <!--End banner-->
<?php endif; ?>
