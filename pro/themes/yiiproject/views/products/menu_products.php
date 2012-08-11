<?php if($menu_products):?>
    <h1 class="title-left"><span><?php echo $this->lang['products']?></span></h1>
    <?php echo ProductsCat::model()->makeMenu($menu_products, Yii::app()->request->getQuery('cid'), '<ul class="frame-leftcontent sub-cat">', '</ul>');?>
<?php endif?>