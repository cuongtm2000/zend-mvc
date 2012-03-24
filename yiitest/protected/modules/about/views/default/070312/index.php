<?php $this->breadcrumbs=array($this->lang[$this->module->id]=>LANGURL.'/'.$this->module->id);?>

<?php if($item): ?>
    <?php 
        $this->pageTitle = $item['title'.LANG];
        $this->description = $item['description'];
    ?>
    <h1 class="title-right"><?php echo $item['title'.LANG] ?></h1>
    <div id="page-tent-right">
    	<?php echo $item['content'.LANG] ?>
    </div><!--End Page tent right-->
<?php endif; ?>