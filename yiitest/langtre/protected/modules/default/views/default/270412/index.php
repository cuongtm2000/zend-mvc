<?php if(isset($this->function['about_home'])): ?>
	<h2 class="title-right"><span><?php echo $this->function['about_home']['title'.LANG] ?></span></h2>
	<div class="frame-tent-right">
		<?php echo $this->function['about_home']['content'.LANG] ?>
	</div> <!--End frame tent right-->
<?php endif; ?>

<?php if(isset($this->function['pictures_new']) && $this->function['pictures_new']):?>
<h2 class="title-right"><span><?php echo $this->lang['pictures'] . ' ' . strtolower($this->lang['new']) ?></span></h2>
<ul class="all-product">
	<?php foreach($this->function['pictures_new'] as $value): ?>
	<li class="product">
		<?php if($value['pic_thumb']): ?>
			<div class="product-img"><a class="group2" href="<?php echo Yii::app()->baseUrl.USERFILES ?>/pictures/<?php echo $value['pic_full'] ?>"><img src="<?php echo Yii::app()->baseUrl.USERFILES ?>/pictures/<?php echo $value['pic_thumb'] ?>" alt="<?php echo $value['title'.LANG] ?>" /></a></div>
		<?php endif; ?>
		<h3 class="title-product"><a class="group1" href="<?php echo Yii::app()->baseUrl.USERFILES ?>/pictures/<?php echo $value['pic_full'] ?>" title="<?php echo $value['title'.LANG] ?>"><?php echo $value['title'.LANG] ?></a></h3>
	</li>
	<?php endforeach; ?>
</ul> <!--End all product-->
<?php endif; ?>

<?php if(isset($this->function['news_new']) && ($this->function['news_new'])):?>
<h3 class="title-right"><span><?php echo CHtml::encode($this->lang['news']) . ' ' . strtolower($this->lang['new'])?></span></h3>
<ul class="sub-new">
	<?php $i=0; foreach($this->function['news_new'] as $value):?>
	 <?php if($i==0 && $value['pic_thumb']): ?>
        <li class="sub-new-hot">
			 <h2 class="title-sub-new"><a href="<?php echo Yii::app()->request->baseUrl.LANGURL ?>/<?php echo Yii::t('user', 'news.link')?>/<?php echo $value['NewsCat']['tag'.LANG] ?>/<?php echo $value['tag'.LANG] ?>.html" title="<?php echo $value['title'.LANG]?>"><?php echo $value['title'.LANG]?></a></h2>
            <?php if($value['pic_thumb']): ?>
              <div class="frame-img"><a href="<?php echo Yii::app()->request->baseUrl.LANGURL ?>/<?php echo Yii::t('user', 'news.link')?>/<?php echo $value['NewsCat']['tag'.LANG] ?>/<?php echo $value['tag'.LANG] ?>.html" title="<?php echo $value['title'.LANG]?>"><img class="img-new" src="<?php echo Yii::app()->baseUrl.USERFILES ?>/news/<?php echo $value['pic_thumb'] ?>" alt="<?php echo $value['title'.LANG]?>" /></a></div>
            <?php endif?>
            <?php echo $value['preview'.LANG]?>
            <div class="clear"></div>
        </li>
        <?php else:?>
		<li class="ico-disc">
			<a href="<?php echo Yii::app()->request->baseUrl.LANGURL ?>/<?php echo Yii::t('user', 'news.link')?>/<?php echo $value['NewsCat']['tag'.LANG] ?>/<?php echo $value['tag'.LANG] ?>.html" title="<?php echo $value['title'.LANG]?>"><?php echo $value['title'.LANG]?></a>
		</li>
        <?php endif?>
	<?php $i++; endforeach?>
</ul>
<?php endif?>