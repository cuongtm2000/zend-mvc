<?php if($menu_services):?>
	<div class="frame-leftcontent">
		<h4 class="title-left"><span><?php echo $this->lang['service']?></span></h4>
		<ul class="sub-cat">
			<?php foreach ($menu_services as $value): ?>
				<li><?php echo CHtml::link($value['title'], array($this->setUrlModule('service').'/'.$value['tag'].'.html'), array('title'=>$value['title'])); ?></li>
			<?php endforeach?>
		</ul> 
	</div><!--End frame-leftcontent-->
<?php endif?>