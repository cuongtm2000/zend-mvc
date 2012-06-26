<?php $this->breadcrumbs=array($this->lang[$this->ID]);?>
<?php if($item['models']): ?>
    <?php foreach($item['models'] as $value):?>
           echo
    <?php endforeach?>
    <?php var_dump($item['pages'])?>
<?php $this->widget('CLinkPager', array('pages' => $list_items['pages'], 'header'=>'', 'lastPageLabel'=>'Last', 'nextPageLabel'=>'Next', 'firstPageLabel'=>'First', 'prevPageLabel'=>'Prev', 'htmlOptions'=>array('class'=>'paging')))?>
<?php endif; ?>