<?php
$this->breadcrumbs = array(
    $this->lang[$this->module->id] => Yii::app()->request->baseUrl . LANGURL . '/' . Yii::t('user', $this->module->id . '.link'),
    $item[ucfirst($this->module->id) . 'Cat']['cat_title' . LANG] => '../' . $item[ucfirst($this->module->id) . 'Cat']['tag' . LANG], $item['title' . LANG]
);
$this->pageTitle = $item['title' . LANG] . ' - ' . $item[ucfirst($this->module->id) . 'Cat']['cat_title' . LANG] . ' - ' . $this->lang[$this->module->id];
$this->description = $item['description' . LANG];
?>
<div class="bg-footer-left">
	<h2 class="title-right"><span><?php echo $item['title' . LANG] ?></span></h2>
	<div class="frame-pro-info">
		<?php if ($item['pic_full']): ?>
			<table class="row-info">
				<tr>
					<td id="pb-right-column">
						<!-- product img-->
						<div id="image-block">
							<img id="bigpic" src="<?php echo Yii::app()->baseUrl . USERFILES ?>/<?php echo $this->module->id ?>/<?php echo $item['pic_full'] ?>" title="<?php echo $item['title' . LANG] ?>" alt="<?php echo $item['title' . LANG] ?>" />
						</div>
						<!-- thumbnails -->
						<div id="views_block" class="prod_detail">
							<!--Slide show Jquery Lightbox-->
							<div class="big_thumb">
								<!--Slide Prev-->
								<span class="prevsmall"><img src="<?php echo Yii::app()->theme->baseUrl; ?>/images/prev.gif" alt="" /></span>
								<div class="thumbs anyClass" id="paginate-slider2">
									<ul id="thumbs_list">
										<li><a href="<?php echo Yii::app()->baseUrl . USERFILES ?>/<?php echo $this->module->id ?>/<?php echo $item['pic_full'] ?>" rel="other-views" class="thickbox shown" title="<?php echo $item['title' . LANG] ?>"><img src="<?php echo Yii::app()->baseUrl . USERFILES ?>/<?php echo $this->module->id ?>/<?php echo $item['pic_full'] ?>" alt="<?php echo $item['title' . LANG] ?>"  /></a></li>
										<?php if ($item['pic_desc']): ?>
											<?php
											$values = explode('|', $item['pic_desc']);
											$i = 1;
											foreach ($values as $value):
												?>
												<li><a href="<?php echo Yii::app()->baseUrl . USERFILES ?>/<?php echo $this->module->id ?>/<?php echo $value ?>" rel="other-views" class="thickbox" title="<?php echo $item['title' . LANG] . ' - ' . $this->lang['pic_desc'] . ' ' . $i ?>"><img src="<?php echo Yii::app()->baseUrl . USERFILES ?>/<?php echo $this->module->id ?>/<?php echo $value ?>" alt="<?php echo $item['title' . LANG] . ' - ' . $this->lang['pic_desc'] . ' ' . $i ?>" /></a></li>
												<?php
												$i++;
											endforeach;
											?>
										<?php endif; ?>
									</ul>
								</div>
								<span class="nextsmall"><img src="<?php echo Yii::app()->theme->baseUrl; ?>/images/next.gif" alt="" /></span>
								<!--Slide Next-->
							</div><!--END Slide show Jquery Lightbox-->
						</div>
					</td>	
					
					<td class="right-info">
						<p class="price">Mã số:  <?php echo $item['record_id'] ?> </p>
						<p class="price"><strong>Giá: <span><?php echo (is_numeric($item['unit'])) ? number_format($item['unit'], 0, '', '.') . ' ' . $item['unit_currency'] . '/' . $item['unit_unit'] : (($item['unit']) ? $item['unit'] : $this->lang['contact']) ?></span></strong></p>
						<p class="price">Địa chỉ:  <?php echo $item['address'] ?> </p>
						<p class="price">Quận/huyện:  <?php echo $item['dos_districts_district_id'] ?> </p>
						<p class="price">Tỉnh/thành phố: <?php echo $item['dos_provinces_province_id'] ?></p>
						<p>Tên: <?php echo $item['contact_name'] ?></p>
						<p>Địa chỉ: <?php echo $item['contact_add'] ?></p>
						<p>ĐTDĐ: <?php echo $item['contact_mobile'] ?></p>
						<p>ĐT bàn: <?php echo $item['contact_tel'] ?></p>
						<h4 class="title-info"><span><?php echo $this->lang['description'] . ' ' . strtolower($this->lang[$this->module->id]) ?></span></h4>
						<?php echo $item['preview' . LANG] ?>
					</td>
				</tr>	
			</table>
		<?php endif; ?>
		<h4 class="title-info"><span>Thông tin:</span></h4>
		<div>
			<p><b>Diện tích khuôn viên:</b> <?php echo $item->productsFeature['area'] ?></p>
			<p><b>Diện tích xây dựng:</b> <?php echo $item->productsFeature['area_build'] ?></p>
			<p><b>Diện tích sử dụng:</b> <?php echo $item->productsFeature['area_used'] ?>m<sup>2</sup></p>
			<p><b>Tình trạng pháp lý:</b> <?php echo $item->productsFeature['legal'] ?></p>
			<p><b>Hướng:</b> <?php echo $item->productsFeature['direction'] ?></p>
			<p><b>Đường trước nhà:</b> <?php echo $item->productsFeature['road'] ?></p>
			<p><b>Số lầu:</b> <?php echo $item->productsFeature['num_floor'] ?></p>
			<p><b>Phòng tắm:</b> <?php echo $item->productsFeature['bathroom'] ?></p>
			<p><b>Phòng khách:</b> <?php echo $item->productsFeature['sittingrom'] ?></p>
			<p><b>Phòng ngủ:</b> <?php echo $item->productsFeature['bedroom'] ?></p>
			<p><b>Phòng khác:</b> <?php echo $item->productsFeature['other_room'] ?></p>
		</div>
		
		<h4 class="title-info"><span>Tiện ích:</span></h4>
		<div>
			<?php 
				$labels=  ProductsUtility::model()->attributeLabels();
	   
				foreach ($labels as $key => $value) {
					if( $item->productsUtility[$key]==1)
						echo '<p>'.$value.'</p>';
				}

			?>
		</div>
		<h4 class="title-info"><span><?php echo $this->lang['detail'] . ' ' . strtolower($this->lang[$this->module->id]) ?></span></h4>
		<div class="panel-content">
		<?php echo $item['content' . LANG] ?>
		</div>
	</div> <!--End frame tent right-->
</div>	

<?php if ($item_other): ?>
<div class="bg-footer-left">
    <h3 class="title-right"><span><?php echo $this->lang[$this->module->id] ?> <?php echo strtolower($this->lang['other']) ?></span></h3>
     <table class="table-product">
		<tbody>
			<?php foreach ($item_other as $value): ?>
			<tr>
				<td width="100">
					<div class="frame-img-pro"> <a href="<?php echo Yii::app()->request->baseUrl . LANGURL . '/' . Yii::t('user', $this->module->id . '.link') . '/' . $value[ucfirst($this->module->id) . 'Cat']['tag' . LANG] ?>/<?php echo $value['tag' . LANG] ?>.html" title="<?php echo $value['title' . LANG] ?>">
                        <?php if ($value['pic_thumb']): ?>
                            <img src="<?php echo Yii::app()->baseUrl . USERFILES ?>/<?php echo $this->module->id ?>/<?php echo $value['pic_thumb'] ?>" alt="<?php echo $value['title' . LANG] ?>" />
                        <?php else : ?>
                            <img src="<?php echo Yii::app()->theme->baseUrl; ?>/images/no-images.jpg" alt="<?php echo $value['title' . LANG] ?>" />
                        <?php endif ?>
                    </a></div>
				</td>
				<td>
					<h2 class="title-sale"><a href="<?php echo Yii::app()->request->baseUrl . LANGURL . '/' . Yii::t('user', $this->module->id . '.link') . '/' . $value[ucfirst($this->module->id) . 'Cat']['tag' . LANG] ?>/<?php echo $value['tag' . LANG] ?>.html" title="<?php echo $value['title' . LANG] ?>"><?php echo $value['title' . LANG] ?></a></h2>
					<table class="bder-none">
						<tr>
							<td width="110">
								<p><span class="position">Vị trí:</span> Hẻm Nguyễn Tri Phương, Phường 5, Quận 5</p>
							</td>
							<td>
								<p><label class="long">Dài</label>: 5m</p>
								<p><label class="wide">Rộng</label>: 10m</p>
								<p><label class="direction">Hướng</label>: Đông Nam</p>
							</td>
							<td>
								<p class="price">Giá:<span> <?php echo (is_numeric($value['unit'])) ? '<strong>'.number_format($value['unit'], 0, '', '.').'</strong>' . ' VND' : (($value['unit']) ? $value['unit'] : $this->lang['contact']) ?></span></p>
								<p>Hiện trạng: <span>Đang được sử dụng</span></p>
							</td>
						</tr>
						<tr>
							<td colspan="3"><p class="date-posted">Đăng ngày: <?php echo date('d-m-Y', strtotime($value['postdate']))?>, Xem: <?php echo $value['hits']?></p></td>
						</tr>
					</table>
				</td>
				<td>
					<h3 class="title-footer-right">Hội viên</h3>
					<img src="<?php echo Yii::app()->theme->baseUrl; ?>/images/hoivien.jpg" alt="Hoi vien" />
				</td>
			</tr>
			<?php endforeach; ?>
		</tbody>
	</table> <!--End footer left-->
</div>
<?php endif; ?>
