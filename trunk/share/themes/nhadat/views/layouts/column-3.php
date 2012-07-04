<?php $this->beginContent('//layouts/main'); ?>
    <div id="content">
		<div id="container_content_left">
			<div class="container_content_left">
			   <?php if (isset($this->function['menu_products']) && ($this->function['menu_products'])): ?>
				<div class="bg-nav-left">	
					<ul class="nav-left">
						<?php Common::menuMultiLevel($this->function['menu_products'], 'ProductsCat', Yii::t('user', 'products.link')); ?>
					</ul>
				</div>	
				<?php endif; ?>
				
				<?php if(isset($this->function['list_supports']) && ($this->function['list_supports'])):?>
				<div class="frame-box">
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
				</div>	
					<?php endif; ?>
			</div>	<!--End class container_content_left -->
		</div>  <!--End ID container_content_left -->	
		
		<div id="container_content_center">
			<div class="container_content_center">
					<?php echo $content; ?>
			</div> <!--End class container_content_center -->
		</div>  <!--End ID container_content_center-->	
		
		<div id="container_content_right">
			<div class="container_content_right">
				<?php if(isset($this->function['advs_right']) && ($this->function['advs_right'])):?>
				<ul class="adv-right">
					<?php foreach($this->function['advs_right'] as $value): ?>
					<li>
						<a href="<?php echo $value['url'] ?>" target="<?php echo $value['type'] ?>" title="<?php echo $value['title'.Yii::app()->session['lang']] ?>"><img src="<?php echo Yii::app()->baseUrl.USERFILES ?>/advs/<?php echo $value['pic_thumb'] ?>" alt="<?php echo $value['title'.Yii::app()->session['lang']] ?>" /></a>
					</li>
					<?php endforeach; ?>
				</ul>
				<?php endif;?>
				
				<?php if(isset($this->function['menu_news']) && ($this->function['menu_news'])):?>
				<div class="frame-right">
					<h2 class="title-right"><span><?php echo CHtml::encode($this->lang['news']) ?></span></h2>
					<ul class="sub-consultant">
						<?php Common::menuMultiLevel($this->function['menu_news'], 'NewsCat', Yii::t('user', 'news.link')); ?>
					</ul>
					<p class="all-view-new"><img src="<?php echo Yii::app()->theme->baseUrl; ?>/images/icon-2.gif" alt="allview" /><a href="<?php echo Yii::app()->baseUrl?>/tin-tuc-su-kien" title="" >Xem tất cả</a></p>
				</div>	<!--End sub news-->
				<?php endif; ?>

				<?php if(isset($this->function['menu_services']) && ($this->function['menu_services'])):?>
				<div class="frame-right">
					<h2 class="title-right"><span><?php echo $this->lang['services'] ?></span></h2>
					<ul class="sub-consultant">
						<?php foreach($this->function['menu_services'] as $value): ?>
						<li><a href="<?php echo Yii::app()->request->baseUrl.LANGURL ?>/<?php echo Yii::t('user', 'services.link')?>/<?php echo $value['tag'.Yii::app()->session['lang']]?>.html" title="<?php echo $value['title'.LANG]?>"><?php echo $value['title'.LANG]?></a></li>
						<?php endforeach; ?>
					</ul>
				</div> <!--End dich vu nha dat-->
				<?php endif;?>
			</div> <!--End class container_content_right-->	
		</div> <!--End ID container_content_right-->   <div class="clear"></div>
    </div><!--End content-->
<?php $this->endContent(); ?>