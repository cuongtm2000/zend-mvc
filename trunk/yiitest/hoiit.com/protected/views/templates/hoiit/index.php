<?php $this->breadcrumbs = array('Web template',); ?>
<ul class="list-templates">
    <?php foreach ($models as $model): ?>
        <li>
            <a href="templates/<?php echo $model->WebTemplatesCat->tag,'/',$model['template_id'] ?>.html"><img src="<?php echo Yii::app()->theme->baseUrl ?>/images/web.jpg" alt="web" /></a>
            <p class="add-cart"><a href="">Demo</a> - <a href="">Detail</a> - <a href="">Add to cart</a></p>
            <p><strong>Item</strong>: <?php echo $model['template_id'] ?></p>
            <p><strong>Price</strong>: <?php echo $model['price'] ?></p>
            <p><strong>Type</strong>: <?php echo $model->WebTemplatesCat->cat_name ?></p>
            <p><strong>Width</strong>: <?php echo $model['width'] ?></p>
        </li>
    <?php endforeach ?>
</ul>
<?php $this->widget('CLinkPager', array('pages' => $pages, 'header' => '', 'htmlOptions' => array('class' => 'yiiPager paging'))) ?>