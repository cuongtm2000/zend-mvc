<?php $this->beginContent('//layouts/main'); ?>
<div id="content">
    <div id="container_content_left">
		<div class="container_content_left">
			<?php if (isset($this->function['menu_products']) && ($this->function['menu_products'])): ?>
			<div class="bg-nav-left">		
				<ul class="nav-left">
					<?php Common::menuMultiLevel($this->function['menu_products'], 'ProductsCat', Yii::t('user', 'products.link')); ?>
				</ul>
			</div>	
			<?php endif; ?>
		</div> <!--End class container_content_left -->
	</div> <!--End ID container_content_left -->	
    <div id="container_content_center_2">
		<div class="container_content_center_2">
			<?php echo $content; ?>
		</div>
    </div>  <!--End all left content--> <div class="clear"></div>
</div><!--End content--> 
<?php $this->endContent(); ?>