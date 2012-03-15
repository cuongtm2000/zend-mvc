<?php foreach($listItems['models'] as $value):?>
	<p>Tieu de: <a href="<?php echo Yii::app()->request->baseUrl?>/tin-tuc/<?php echo $value->NewsCat->tag?>/<?php echo $value['tag']?>.html" title="<?php echo $value['title']?>"><?php echo $value['title']?></a></p>
	<p>Mô tả: <?php echo $value['preview']?></p>
	<p>Hình ảnh: <?php echo $value['pic_thumb']?></p>

		<br /><br/>
<?php endforeach?>

<?php $this->widget('CLinkPager', array('pages' => $listItems['pages'], 'header' => '', 'htmlOptions' => array('class' => 'yiiPager paging'))) ?>