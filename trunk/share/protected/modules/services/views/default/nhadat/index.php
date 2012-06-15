<?php $this->breadcrumbs=array($this->lang['services']);?>
<?php if($item): ?>
	<?php $this->pageTitle = $item['title'.LANG]; $this->description = $item['description'.LANG];?>
    <div class="frame-product-info">
		<h2 class="title-left"><span><?php echo ($item) ? $item['title' . LANG] : $this->lang[$this->module->id] ?></span></h2>
		
			<?php echo $item['content'.LANG] ?>
    </div><!--End Page tent right-->

<?php endif; ?>