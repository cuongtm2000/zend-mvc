<?php $this->breadcrumbs=array('Posts',);?>
<ul class="list-item">
    <?php if ($models): ?>
        <?php foreach ($models as $value): ?>
        <li>
            <h1><a href="<?php echo Yii::app()->request->baseUrl?>/posts/<?php echo NoneUnicode::convert($value->hoiitCatsCat->cat_name) ?>/<?php echo $value['post_link']?>.html"><?php echo $value['post_title']?></a></h1>
            <?php echo cutString::cut(strip_tags($value['post_detail']), 650)?>
        </li>
        <?php endforeach;?>
    <?php else:?>
        <li><strong>Not exist items</strong></li>
    <?php endif;?>
</ul>
<?php $this->widget('CLinkPager', array('pages' => $pages, 'header' => '', 'htmlOptions' => array('class' => 'yiiPager paging'))) ?>