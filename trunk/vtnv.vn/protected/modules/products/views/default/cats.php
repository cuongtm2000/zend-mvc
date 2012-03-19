<h1 class="title-right"><span><a href="<?php echo Yii::app()->request->baseUrl?>/san-pham" title="sản phẩm">Sản phẩm</a> &raquo; <?php echo $info_cat['cat_title']?></span></h1>

<!-- Danh sach danh mục con -->
<?php if($list_sub_cats): ?>
	<?php foreach($list_sub_cats as $value): ?>
	<div class="frame-product">
		
		<div class="product">
			<div class="frame-img-pro">
				<a href="<?php echo Yii::app()->request->baseUrl ?>/san-pham/<?php echo $value['tag'] ?>" title="<?php echo $value['cat_title'] ?>">
					<?php if($value['pic_full']): ?>
						<img src="<?php echo Yii::app()->baseUrl.USERFILES ?>/productsCat/<?php echo $value['pic_full'] ?>" alt="<?php echo $value['cat_title'] ?>" />
					<?php else :?>
						<img src="<?php echo Yii::app()->theme->baseUrl; ?>/images/no.jpg" alt="no-product" />
					<?php endif; ?>
				</a>
			</div>
		</div>
		<div class="btom-pro"></div>
		<h2 class="title-pro"><a href="<?php echo Yii::app()->request->baseUrl ?>/san-pham/<?php echo $value['tag'] ?>" title="<?php echo $value['cat_title'] ?>"><?php echo $value['cat_title'] ?></a></h2>
	</div>
	<?php endforeach; ?>
<?php endif; ?>

<!-- San pham cua danh muc nay -->
<?php if($list_items['models']):?>
	<?php foreach($list_items['models'] as $value):?>
		<div class="frame-product">
			<div class="product">
				<div class="frame-img-pro">
					<a href="<?php echo Yii::app()->request->baseUrl ?>/san-pham/<?php echo $value->ProductsCat->tag ?>/<?php echo $value['tag'] ?>.html" title="<?php echo $value['title'] ?>">
						<?php if($value['pic_thumb']): ?>
							<img src="<?php echo Yii::app()->baseUrl.USERFILES ?>/products/<?php echo $value['pic_thumb'] ?>" alt="<?php echo $value['title'] ?>" />
						<?php else :?>
							<img src="<?php echo Yii::app()->theme->baseUrl; ?>/images/no.jpg" alt="no-product" />
						<?php endif; ?>
					</a>
				</div>
			</div>
			<div class="btom-pro"></div>
			<h2 class="title-pro"><a href="<?php echo Yii::app()->request->baseUrl ?>/san-pham/<?php echo $value->ProductsCat->tag ?>/<?php echo $value['tag'] ?>.html" title="<?php echo $value['title'] ?>"><?php echo $value['title'] ?></a></h2>
			<p class="price-pro">Giá bán : <span><?php echo number_format($value['unit'], 0, '', '.'); ?></span> VND</p>
		</div>
	<?php endforeach?> 
	<div class="clear"></div>
	<?php $this->widget('CLinkPager', array('pages' => $list_items['pages'], 'header' => '', 'htmlOptions' => array('class' => 'yiiPager paging'))) ?>
<?php else:?>
	Không tồn tại mẫu tin
<?php endif?>