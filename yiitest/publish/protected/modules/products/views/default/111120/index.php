<?php $this->breadcrumbs=array($this->lang[$this->module->id]);?>

<?php foreach($items as $value):?>
    <?php if ($value['cat_parent_id'] == 0): ?>
        <h1 class="title-h2-right"><a href="<?php echo Yii::app()->request->baseUrl.LANGURL ?>/<?php echo Yii::t('user', $this->module->id.'.link')?>/<?php echo $value['tag'.LANG] ?>" title="<?php echo $value['cat_title'.LANG] ?>"><?php echo $value['cat_title'.LANG] ?></a></h1>

        <div id="all-product">
        <?php foreach($items as $sub): ?>
            <?php if ($sub['cat_parent_id'] == $value['cat_id']): ?>
                <div class="product">
                    <?php if($sub['pic_full']): ?>
                        <div class="product-img">
                            <a href="<?php echo Yii::app()->request->baseUrl.LANGURL ?>/<?php echo Yii::t('user', $this->module->id.'.link')?>/<?php echo $sub['tag'.LANG] ?>" title="<?php echo $sub['cat_title'.LANG] ?>">
                            	<img src="<?php echo Yii::app()->baseUrl.USERFILES ?>/<?php echo $this->module->id?>Cat/<?php echo $sub['pic_full'] ?>" alt="<?php echo $sub['cat_title'.LANG] ?>" />
                            </a>
                        </div><div class="clear"></div>
                    <?php endif; ?>
                    <h2 class="title-pro"><a href="<?php echo Yii::app()->request->baseUrl.LANGURL ?>/<?php echo Yii::t('user', $this->module->id.'.link')?>/<?php echo $sub['tag'.LANG] ?>" title="<?php echo $sub['cat_title'.LANG] ?>"><?php echo $sub['cat_title'.LANG] ?></a></h2>
                </div>
			<?php endif; ?>
        <?php endforeach; ?>
        </div>
    <?php endif; ?>
<?php endforeach; ?>