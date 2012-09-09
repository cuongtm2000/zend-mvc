<?php if($about_home) :?>
	<div class="panel-about">
		<?php $i = 0; foreach($about_home as $value): ?>
			<?php $class = ($i == 0) ? 'panel-about-left' : 'panel-about-right';?>
			<div class="<?php echo $class?>">
				<h3 class="title-right"><?php echo $value->AboutLanguage[Yii::app()->language]['title']?></h3>
				<?php echo $value->AboutLanguage[Yii::app()->language]['content']?>
			</div>
		<?php $i++; endforeach?>
		<div class="clear"></div>
	</div> <!--End panel-about -->
<?php endif?>
