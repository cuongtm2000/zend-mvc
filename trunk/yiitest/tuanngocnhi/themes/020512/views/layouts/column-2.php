<?php $this->beginContent('//layouts/main'); ?>
<div id="content">
	<?php $this->widget('zii.widgets.CBreadcrumbs', array(
		'homeLink' => CHtml::link($this->lang['default'], (LANGURL) ? LANGURL : Yii::app()->homeUrl),
		'links'=>$this->breadcrumbs,
		'htmlOptions'=>array('class'=>'link'),
		'separator'=>'<b>&gt;</b>',
	)); ?> <!-- breadcrumbs -->
	<div id="leftcontent">
		<?php if(isset($this->function['menu_about']) && ($this->function['menu_about'])):?>
		<div class="frame-leftcontent">
			<h3 class="title-left"><span><?php echo $this->lang['about'] ?></span></h3>
			<ul class="sub-cat">
				<?php foreach($this->function['menu_about'] as $value): ?>
				<li><a href="<?php echo Yii::app()->request->baseUrl.LANGURL ?>/<?php echo Yii::t('user', 'about.link')?>/<?php echo $value['tag'.LANG]?>.html" title="<?php echo $value['title'.LANG]?>"><?php echo $value['title'.LANG]?></a></li>
				<?php endforeach; ?>
			</ul>
		</div> 
		<?php endif;?>

		<?php if(isset($this->function['menu_services']) && ($this->function['menu_services'])):?>
		<div class="frame-leftcontent">
			<h3 class="title-left"><span><?php echo $this->lang['services'] ?></span></h3>
			<ul class="sub-cat">
				<?php foreach($this->function['menu_services'] as $value): ?>
				<li><a href="<?php echo Yii::app()->request->baseUrl.LANGURL ?>/<?php echo Yii::t('user', 'services.link')?>/<?php echo $value['tag'.Yii::app()->session['lang']]?>.html" title="<?php echo $value['title'.LANG]?>"><?php echo $value['title'.LANG]?></a></li>
				<?php endforeach; ?>
			</ul>
		</div> 
		<?php endif;?>

		<?php if(isset($this->function['menu_news']) && ($this->function['menu_news'])):?>
		<div class="frame-leftcontent">
			<h3 class="title-left"><span><?php echo CHtml::encode($this->lang['news']) ?></span></h3>
			<ul class="sub-cat">
				<?php Common::menuMultiLevel($this->function['menu_news'], 'NewsCat', Yii::t('user', 'news.link')); ?>
			</ul>
		</div>
		<?php endif; ?>

		<?php if(isset($this->function['menu_video']) && ($this->function['menu_video'])):?>
		<div class="frame-leftcontent">
			<h3 class="title-left"><span><?php echo $this->lang['video'] ?></span></h3>
			<ul class="sub-cat">
				<?php Common::menuMultiLevel($this->function['menu_video'], 'VideoCat', Yii::t('user', 'video.link')); ?>
			</ul>
		</div>
		<?php endif; ?>

		<?php if(isset($this->function['menu_products']) && ($this->function['menu_products'])):?>
		<div class="frame-leftcontent">
			<h3 class="title-left"><span><?php echo $this->lang['products'] ?></span></h3>
			<ul class="sub-cat">
				<?php Common::menuMultiLevel($this->function['menu_products'], 'ProductsCat', Yii::t('user', 'products.link')); ?>
			</ul>
		</div>
		<?php endif;?>

		<?php if(isset($this->function['list_supports']) && ($this->function['list_supports'])):?>
		<div class="frame-leftcontent">
			<h3 class="title-left"><span><?php echo $this->lang['supports'] ?></span></h3>
			<ul class="support">
				<?php foreach($this->function['list_supports'] as $value): ?>
					<?php if($value['support_type']=='yahoo'): ?>
					<li>
						<?php if($value['support_name'.Yii::app()->session['lang']]) echo '<p>'.$value['support_name'.Yii::app()->session['lang']].'</p>'; ?>
						<?php if($value['support_phone']) echo '<p>'.$value['support_phone'].'</p>'; ?>
						<a href="ymsgr:sendIM?<?php echo $value['support_value'] ?>"><img src="http://mail.opi.yahoo.com/online?u=<?php echo $value['support_value'] ?>&amp;m=g&amp;t=2" border="0" alt="<?php echo $value['support_value'] ?>" /></a>
					</li>
					<?php else:?>
					<li>
						<?php if($value['support_name'.Yii::app()->session['lang']]) echo '<p>'.$value['support_name'.Yii::app()->session['lang']].'</p>'; ?>
						<?php if($value['support_phone']) echo '<p>'.$value['support_phone'].'</p>'; ?>
						<a href="skype:<?php echo $value['support_value'] ?>?call"><img src="http://mystatus.skype.com/bigclassic/<?php echo $value['support_value'] ?>" style="border: none;" width="130" alt="<?php echo $value['support_value'] ?>" /></a>
					</li>
					<?php endif; ?>
				<?php endforeach; ?>
			</ul>
		</div>
		<?php endif; ?>

		<div class="frame-leftcontent">	
			<h3 class="title-left"><span><?php echo $this->lang['counter'] ?></span></h3>
			<ul class="statistics">
				<li><?php echo Yii::t('user', 'online')?>: <?php echo Yii::app()->counter->getOnline(); ?></li>
				<li><?php echo Yii::t('user', 'today')?>: <?php echo Yii::app()->counter->getToday(); ?></li>
				<li><?php echo Yii::t('user', 'yesterday')?>: <?php echo Yii::app()->counter->getYesterday(); ?></li>
				<li><?php echo Yii::t('user', 'total')?>: <?php echo Yii::app()->counter->getTotal(); ?></li>
			</ul>
		</div>
		<?php if(isset($this->function['advs_left']) && ($this->function['advs_left'])):?>
		<div class="frame-leftcontent">	
			<h3 class="title-left"><span><?php echo $this->lang['advs'] ?></span></h3>
			<ul class="bg-adv">
				<?php foreach($this->function['advs_left'] as $value): ?>
				<li>
					<a href="<?php echo $value['url'] ?>" target="<?php echo $value['type'] ?>" title="<?php echo $value['title'.Yii::app()->session['lang']] ?>"><img src="<?php echo Yii::app()->baseUrl.USERFILES ?>/advs/<?php echo $value['pic_thumb'] ?>" alt="<?php echo $value['title'.Yii::app()->session['lang']] ?>" /></a>
				</li>
				<?php endforeach; ?>
			</ul>
		</div>
		<?php endif;?>
	</div> <!--END left Content-->
	<div id="rightcontent">
		<?php echo $content?>
	</div><!--END RIGHT Content--> <div class="clear"></div>
</div><!--END Content-->
<?php $this->endContent(); ?>