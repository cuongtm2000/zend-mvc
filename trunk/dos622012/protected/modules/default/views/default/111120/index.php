<?php if(isset($this->function['about_home'])): ?>
    <h1 class="title-h2-right"><?php echo $this->function['about_home']['title'.LANG] ?></h1>
    <div id="page-tent-right">
    	<?php echo $this->function['about_home']['content'.LANG] ?>
    </div><!--End Page tent right-->
<?php endif; ?>

<?php if(isset($this->function['products_new']) && $this->function['products_new']):?>
<h1 class="title-h2-right">FEATURED PRODUCTS</h1>
<div id="all-product">
    <?php foreach($this->function['products_new'] as $value): ?>
    <div class="product">
        <?php if($value['pic_thumb']): ?>
        <div class="product-img">
            <a href="<?php echo Yii::app()->request->baseUrl.LANGURL ?>/products/<?php echo $value['tag'] ?>.html" title="<?php echo $value['title'.LANG] ?>"><img src="<?php echo Yii::app()->baseUrl.USERFILES ?>/products/<?php echo $value['pic_thumb'] ?>" alt="<?php echo $value['title'.LANG] ?>" /></a>
        </div><div class="clear"></div>
        <?php endif; ?>
                
        <h2 class="title-pro"><a href="<?php echo Yii::app()->request->baseUrl.LANGURL ?>/products/<?php echo $value['tag'] ?>.html" title="<?php echo $value['title'.LANG] ?>"><?php echo $value['title'.LANG] ?></a></h2>
        <p><?php echo $value['unit'] ?></p>
        <a href="product-info.html" class="add-to-cart" title="Add to Cart"><span>Add to Cart</span></a>
    </div>
    <?php endforeach; ?>
</div><!--End All products-->
<?php endif; ?>