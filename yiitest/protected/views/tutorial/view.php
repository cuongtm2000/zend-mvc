<div id="leftcontent">
	<?php if ($item): ?>
        <?php $this->pageTitle = $item['title']; $this->description = $item['description']?>
        <?php $this->breadcrumbs = array(Yii::t('main', 'tutorial.name') => Yii::app()->session['langUrl'] . '/'. Yii::t('main', 'tutorial.link'), $item->TutorialCat->cat_title => '../' . $item->TutorialCat->tag, $item['title']); ?>
        <h2 class="title-new-hdbook"><?php echo $item['title']?></h2>
        <?php echo $item['detail'] ?>
	<?php endif?>
</div>

<?php echo $this->renderPartial('menu', array('articles_menu' => $articles_menu)) ?>