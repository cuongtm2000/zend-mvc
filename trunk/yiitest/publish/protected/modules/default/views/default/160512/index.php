<?php if(isset($this->function['about_home'])): ?>
	<h2 class="title-right"><span><?php echo $this->function['about_home']['title'.LANG] ?></span></h2>
	<div class="frame-tent-right">
		<?php echo $this->function['about_home']['content'.LANG] ?>
	</div> <!--End frame tent right-->
<?php endif; ?>

<div class="bg-panel">
	<div class="bg-sub-new">
		<?php if(isset($this->function['news_new']) && ($this->function['news_new'])):?>
		<h4 class="title-box"><span><?php echo CHtml::encode($this->lang['news']) . ' ' . strtolower($this->lang['new'])?></span></h4>
		<ul class="sub-new">
			<?php foreach($this->function['news_new'] as $value):?>
				<li><a href="<?php echo Yii::app()->request->baseUrl.LANGURL ?>/<?php echo Yii::t('user', 'news.link')?>/<?php echo $value['NewsCat']['tag'.LANG] ?>/<?php echo $value['tag'.LANG] ?>.html" title="<?php echo $value['title'.LANG]?>"><?php echo $value['title'.LANG]?></a></li>
			<?php endforeach?>
		</ul>
		<?php endif?>
	</div>
	<div class="bg-video">
		<?php if(isset($this->function['video_hot']) && ($this->function['video_hot'])):?>
		<h4 class="title-box"><span><?php echo $this->lang['video'] . ' ' . strtolower($this->lang['hot'])?></span></h4>
		<div class="video">
			<a href="<?php echo CHtml::encode($this->function['video_hot']['url']) ?>" rel="prettyPhoto" title="<?php echo $this->function['video_hot']['title'.LANG] ?>">
				<img src="<?php echo Yii::app()->baseUrl.USERFILES ?>/video/<?php echo $this->function['video_hot']['pic_thumb'] ?>" alt="<?php echo $this->function['video_hot']['title'.LANG] ?>"/>
			</a>
		</div>
			<script type="text/javascript">$(document).ready(function () {$(".video a[rel^='prettyPhoto']").prettyPhoto();});</script>
		<?php endif?>
		
		<?php if(isset($this->function['list_supports']) && ($this->function['list_supports'])):?>
		<h2 class="title-box"><span><?php echo $this->lang['supports'] ?></span></h2>
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
		<?php endif; ?>
	</div> <div class="clear"></div>
</div>

<?php if(isset($this->function['products_new']) && $this->function['products_new']):?>
<h2 class="title-right"><span><?php echo $this->lang['products'] . ' ' . strtolower($this->lang['new']) ?></span></h2>
<ul class="all-product">
	<?php foreach($this->function['products_new'] as $value): ?>
	<li class="product">
		<div class="product-top"></div>
		<div class="product-mid">
			<div class="tent-product">
				<?php if($value['pic_thumb']): ?>
				    <div class="product-img"><a href="<?php echo Yii::app()->request->baseUrl.LANGURL ?>/<?php echo Yii::t('user', 'products.link')?>/<?php echo $value['ProductsCat']['tag'.LANG] ?>/<?php echo $value['tag'.LANG] ?>.html" title="<?php echo $value['title'.LANG] ?>"><img src="<?php echo Yii::app()->baseUrl.USERFILES ?>/products/<?php echo $value['pic_thumb'] ?>" alt="<?php echo $value['title'.LANG] ?>" /></a></div>
				<?php else :?>
				    <div class="product-img"><a href="<?php echo Yii::app()->request->baseUrl.LANGURL ?>/<?php echo Yii::t('user', 'products.link')?>/<?php echo $value['ProductsCat']['tag'.LANG] ?>/<?php echo $value['tag'.LANG] ?>.html" title="<?php echo $value['title'.LANG] ?>"><img src="<?php echo Yii::app()->theme->baseUrl; ?>/images/no-images.jpg" alt="no-product.jpg" /></a></div>
				<?php endif; ?>
				<h3 class="title-pro"><a href="<?php echo Yii::app()->request->baseUrl.LANGURL ?>/<?php echo Yii::t('user', 'products.link')?>/<?php echo $value['ProductsCat']['tag'.LANG] ?>/<?php echo $value['tag'.LANG] ?>.html" title="<?php echo $value['title'.LANG] ?>"><?php echo $value['title'.LANG] ?></a></h3>
				<p class="price"><?php echo Common::getPrice($value['unit']) ?></p>
				<a href="<?php echo Yii::app()->baseUrl . LANGURL?>/<?php echo Yii::t('user', 'products.link')?>/<?php echo Yii::t('user', 'products.order.link')?>/<?php echo $value['tag'.LANG] ?>" title="<?php echo $this->lang['addcart']?>: <?php echo $value['title' . LANG] ?>" class="add-to-cart"><span><?php echo $this->lang['addcart']?></span></a>
			</div>
		</div>
		<div class="product-btom"></div>
	</li>
	<?php endforeach; ?>
</ul> <!--End all product-->
<?php endif; ?>