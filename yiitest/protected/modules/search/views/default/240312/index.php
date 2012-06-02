<?php if($items['models']):?>
    <?php foreach ($items['models'] as $value): ?>
        <?php echo $value['title'] ?><br/>
        <?php echo $value['pic_thumb'] ?><br/>
        <?php echo Common::getPrice($value['unit']) ?><br/>
        <?php echo $value['tag'.LANG] ?><br/><br/>
    <?php endforeach; ?>

    <?php $this->widget('CLinkPager', array('pages' => $items['pages'], 'header'=>'', 'lastPageLabel'=>Yii::t('user', 'last'), 'nextPageLabel'=>Yii::t('user', 'next'), 'firstPageLabel'=>Yii::t('user', 'first'), 'prevPageLabel'=>Yii::t('user', 'prev'), 'htmlOptions'=>array('class'=>'paging')))?>

<?php else: ?>
    <?php echo $this->lang['no_record'] ?>
<?php endif?>