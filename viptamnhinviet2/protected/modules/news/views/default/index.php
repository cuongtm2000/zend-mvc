<?php foreach($listItems['models'] as $value):?>
	<p>Tieu de: <?php echo $value['title']?></p>
	<p>Mô tả: <?php echo $value['preview']?></p>
	<p>Hình ảnh: <?php echo $value['pic_thumb']?></p>

		<br /><br/>
<?php endforeach?>

<?php $this->widget('CLinkPager', array('pages' => $listItems['pages'], 'header' => '', 'htmlOptions' => array('class' => 'yiiPager paging'))) ?>