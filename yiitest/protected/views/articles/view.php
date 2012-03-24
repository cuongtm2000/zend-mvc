<div class="left-content">
	<?php if ($item): ?>
	<?php $this->breadcrumbs = array(Yii::t('main', 'articles.name') => Yii::app()->session['langUrl'] . '/'. Yii::t('main', 'articles.link'), $item->ArticlesCat->cat_title => '../' . $item->ArticlesCat->tag, $item['title']); ?>
	<h1 class="heading-contact"><?php echo $item['title']?></h1>
	<?php echo $item['detail'] ?>
	<?php endif?>
</div>

<?php echo $this->renderPartial('menu', array('articles_menu' => $articles_menu)) ?>