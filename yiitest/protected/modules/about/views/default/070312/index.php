<?php $this->breadcrumbs=array($this->lang[$this->module->id]=>LANGURL.'/'.Yii::t('user', $this->module->id.'.link'));?>

<?php if($item): ?>
    <?php
        $this->pageTitle = $item['title'.LANG];
        $this->description = $item['description'.LANG];
    ?>
    <h1 class="title-right"><?php echo $item['title'.LANG] ?></h1>
    <div class="frame-tent-right">
    	<?php echo $item['content'.LANG] ?>
    </div><!--End Page tent right-->
<?php endif; ?>