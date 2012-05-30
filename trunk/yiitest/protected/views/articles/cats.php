<?php $this->breadcrumbs = array(Yii::t('main', 'articles.name') => Yii::app()->session['langUrl'] . '/'. Yii::t('main', 'articles.link'), $infoCat['cat_title']);?>

<div id="leftcontent">
	<?php foreach($listItemByCat['models'] as $value):?>
	<ul class="clear masuring">
		<li>
            <?php if($value['pic_thumb']):?>
			    <div class="frame-img"><a href="<?php echo Yii::app()->session['langUrl'] . '/' . Yii::t('main', 'articles.link')?>/<?php echo $value->ArticlesCat->tag?>/<?php echo $value['tag']?>.html" title="<?php echo $value['title']?>"><img src="<?php echo Yii::app()->request->baseUrl; ?>/public/userfiles/image/dos/image/articles/<?php echo $value['pic_thumb']?>" class="imgcon" alt="<?php echo $value['title']?>" /></a></div>
			<?php endif;?>
			<h2 class="title-masuring"><strong><a href="<?php echo Yii::app()->session['langUrl'] . '/' . Yii::t('main', 'articles.link')?>/<?php echo $value->ArticlesCat->tag?>/<?php echo $value['tag']?>.html" title="<?php echo $value['title']?>"><?php echo $value['title']?></a></strong></h2>
			<?php echo $value['preview']?>
		</li>
	</ul>
	<?php endforeach?>
	<?php $this->widget('CLinkPager', array('pages' => $listItemByCat['pages'], 'header'=>'', 'lastPageLabel'=>'last', 'nextPageLabel'=>'next', 'firstPageLabel'=>'first', 'prevPageLabel'=>'prev', 'htmlOptions'=>array('class'=>'paging')))?>
</div> <!--End left content-->

<?php echo $this->renderPartial('menu', array('articles_menu'=>$articles_menu)) ?>