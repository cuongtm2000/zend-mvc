<?php $this->breadcrumbs=array($this->lang['about']);?>
<?php if($item): ?>
    <?php $this->pageTitle = $item['title'.LANG]; $this->description = $item['description'.LANG];?>
     <div class="frame-product-info">
	<h2 class="title-fter-left"><span><?php echo $item['title'.LANG] ?></span></h2>
   
    	<?php echo $item['content'.LANG] ?>
    </div> <!--End frame tent right-->

<?php endif; ?>