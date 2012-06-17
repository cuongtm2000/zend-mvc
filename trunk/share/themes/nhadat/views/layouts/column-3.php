<?php $this->beginContent('//layouts/main'); ?>
    <div id="content">
        <div id="all-left-content">
            <div id="left-content">

                <?php if (isset($this->function['menu_products']) && ($this->function['menu_products'])): ?>
                <ul class="nav-left">
                    <?php Common::menuMultiLevel($this->function['menu_products'], 'ProductsCat', Yii::t('user', 'products.link')); ?>
                </ul>
                <?php endif; ?>


            </div> <!--End left content-->


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
        </div>  <!--End all left content-->
        <div id="right-content">
			<?php if(isset($this->function['advs_right']) && ($this->function['advs_right'])):?>
			<ul class="adv-right">
				<?php foreach($this->function['advs_right'] as $value): ?>
				<li>
					<a href="<?php echo $value['url'] ?>" target="<?php echo $value['type'] ?>" title="<?php echo $value['title'.Yii::app()->session['lang']] ?>"><img src="<?php echo Yii::app()->baseUrl.USERFILES ?>/advs/<?php echo $value['pic_thumb'] ?>" alt="<?php echo $value['title'.Yii::app()->session['lang']] ?>" /></a>
				</li>
				<?php endforeach; ?>
			</ul>
			<?php endif;?>

            <div class="frame-right">
                <h1 class="title-right">Tư vấn phong thủy</h1>
                <ul id="tab1" class="sub-consultant tab_content">
                    <li><a href="#" title="">Tuổi rồng nên xây nhà theo hướng nào ?</a></li>
                    <li><a href="#" title="">Phong thủy cho phòng làm việc</a></li>
                    <li><a href="#" title="">Màu sắc và tuổi</a></li>
                    <li><a href="#" title="">Phong thủy cho nhà tuổi rồng</a></li>

                    <li><a href="#" title="">Bán</a></li>
                </ul>

                <ul id="tab2" class="sub-consultant tab_content">
                    <li><a href="#" title="">Tin tức tab 2</a></li>

                </ul>
                <ul id="tab3" class="sub-consultant tab_content">
                    <li><a href="#" title="">Tin tức tab 3</a></li>
                    <li><a href="#" title="">Tin tức tab 3</a></li>
                </ul>
                <ul id="tab4" class="sub-consultant tab_content">
                    <li><a href="#" title="">Tin tức tab 4</a></li>
                    <li><a href="#" title="">Tin tức tab 4</a></li>

                </ul>


                <ul class="tabs paging">
                    <li><a href="#tab1"><b class="pagecureent">1</b></a></li>
                    <li> <a class="pagenav" href="#tab2">2</a></li>
                    <li><a class="pagenav" href="#tab3">3</a></li>
                    <li> <a class="pagenav" href="#tab4">4</a></li>
                    <li><b class="all-view"><a href="#" title="Xem tất cả">Xem tất cả</a></b></li>
                </ul>
                <div class="clear"></div>
            </div> <!--End tu van phong thuy-->

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

        </div><!--End right content-->   <div class="clear"></div>

    </div><!--End content-->
<?php $this->endContent(); ?>