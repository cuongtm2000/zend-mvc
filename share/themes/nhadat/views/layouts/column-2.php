<?php $this->beginContent('//layouts/main'); ?>
<div id="content">
    <div id="left-content-2">
        <?php if (isset($this->function['menu_products']) && ($this->function['menu_products'])): ?>
            <ul class="nav-left">
                <?php Common::menuMultiLevel($this->function['menu_products'], 'ProductsCat', Yii::t('user', 'products.link')); ?>
            </ul>
        <?php endif; ?>
    </div> <!--End left content-->
    <div id="all-right-content">
        <?php echo $content; ?>
    </div>  <!--End all left content--><div class="clear"></div>
</div><!--End content-->
<?php $this->endContent(); ?>