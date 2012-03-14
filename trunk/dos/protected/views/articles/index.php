<?php $this->breadcrumbs = array('Articles',);?>
<div class="left-content">
	<h1 class="heading-contact marginb10">Articles</h1>
	<?php foreach($listItems['models'] as $value):?>
	<div class="clear masuring">
		<?php if($value['pic_thumb']):?>
		<div class="frame-img"><a href="/articles/<?php echo $value->ArticlesCat->tag?>/<?php echo $value['tag']?>.html" title="<?php echo $value['title']?>"><img src="<?php echo Yii::app()->theme->baseUrl; ?>/images/no-images.jpg" class="imgcon" alt="<?php echo $value['title']?>" /></a></div>
		<?php endif;?>
		<h2 class="title-masuring"><a href="/articles/<?php echo $value->ArticlesCat->tag?>/<?php echo $value['tag']?>.html" title="<?php echo $value['title']?>"><?php echo $value['title']?></a></h2>
		<?php echo $value['preview']?>
	</div>
	<?php endforeach?>
	<?php $this->widget('CLinkPager', array('pages' => $listItems['pages'], 'header'=>'', 'lastPageLabel'=>'last', 'nextPageLabel'=>'next', 'firstPageLabel'=>'first', 'prevPageLabel'=>'prev', 'htmlOptions'=>array('class'=>'paging')))?>
</div> <!--End left content-->

<?php echo $this->renderPartial('menu', array('articles_menu'=>$articles_menu)) ?>