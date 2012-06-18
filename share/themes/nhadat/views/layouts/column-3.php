<?php $this->beginContent('//layouts/main'); ?>
    <div id="content">
		<div id="left-content-2">
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
		</div> <!--End left content-->
		<div id="all-right-content">
				<div class="frame-search-detail-2">
					<?php echo $content; ?>


				<div class="clear"></div>
				<div class="bg-footer-left">
					<div class="all-tent-fter">
						<h2 class="title-fter-left">MUA BÁN NHÀ ĐẤT</h2>
						<div class="item-sale">
							<div class="footer-left">
								<div class="frame-img-pro"><a href="product-info.html" title=""><img src="<?php echo Yii::app()->theme->baseUrl; ?>/images/home.jpg" alt="" /></a></div>
								<div class="info-sale">
									<h2 class="title-sale"><a href="product-info.html" title="">CẦN BÁN GẤP NHÀ HẺM NGUYỄN TRI PHƯƠNG</a></h2>
									<ul class="sub-sale">
										<li><p><span class="position">Vị trí:</span> Hẻm Nguyễn Tri Phương, Phường 5, Quận 5</p></li>
										<li>
											<p><label class="long">Dài</label>: 5m</p>
											<p><label class="wide">Rộng</label>: 10m</p>
											<p><label class="direction">Hướng</label>: Đông Nam</p>
										</li>
										<li>
											<p class="price">Giá:<span> 1 tỷ 500 triệu VND</span></p>
											<p>Hiện trạng:<span>Đang được sử dụng</span></p>
										</li>
										<li>
											<p class="ico-map tooltip">Bản đồ</p>
											<div class="product-tool product-info">
												<h2 class="product-name">Hẻm Nguyễn Tri Phương, Phường 5, Quận 5</h2>
												<img src="<?php echo Yii::app()->theme->baseUrl; ?>/images/map.jpg" alt="" />
											</div>
											<p class="ico-save"><a href="#" title="">Lưu lại</a></p>
											<p class="ico-contact"><a href="#" title="">Liên hệ</a></p>
										</li>
									</ul>
									<p class="date-posted">Đăng ngày: 20/02/2012 , Xem: 120</p>
								</div>
							</div> <!--End footer left-->
							<div class="footer-right">
								<h3 class="title-footer-right">Hội viên</h3>
								<img src="<?php echo Yii::app()->theme->baseUrl; ?>/images/hoivien.jpg" alt="Hoi vien" />
							</div> <!---End footer right hoi vien--> <div class="clear"></div>
						</div> <!--End item sale-->

					</div> <!--End all tent footer-->
					<script type="text/javascript" src="<?php echo Yii::app()->theme->baseUrl; ?>/js/tooltip-positon.js"></script>
				</div> <!--End footer left content-->
			</div> <!--End frame-search-detail -->
			
			<div id="right-content-2">
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
					<p class="all-view-new"><img src="<?php echo Yii::app()->theme->baseUrl; ?>/images/icon-2.gif" alt="allview" /><a href="/nhaphodep.vn/news" title="" >Xem tất cả</a></p>
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
			</div><!--End right content-->   
		</div>  <!--End all right content-->	<div class="clear"></div>
    </div><!--End content-->
<?php $this->endContent(); ?>