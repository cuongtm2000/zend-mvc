<?php $this->breadcrumbs = array($this->lang[$this->module->id] => Yii::app()->request->baseUrl . LANGURL . '/' . Yii::t('user', $this->module->id . '.link'), $info_cat['cat_title' . LANG]); ?>
<?php $this->pageTitle = $info_cat['cat_title'.LANG] . ' - ' . $this->lang[$this->module->id]; $this->description = $info_cat['description'.LANG];?>

<!-- for cat -->
<?php if($list_sub_cats): ?>
<h1 class="title-right"><span><?php echo $info_cat['cat_title'.LANG] ?></span></h1>
<ul class="all-product">
    <?php foreach($list_sub_cats as $value): ?>
        <li class="product">
			<div class="product-img">
				<a href="<?php echo Yii::app()->request->baseUrl.LANGURL ?>/<?php echo Yii::t('user', $this->module->id . '.link')?>/<?php echo $value['tag'.LANG] ?>" title="<?php echo $value['cat_title'.LANG] ?>">
					<?php if($value['pic_full']): ?>
						<img src="<?php echo Yii::app()->baseUrl.USERFILES ?>/<?php echo $this->module->id?>Cat/<?php echo $value['pic_full'] ?>" alt="<?php echo $value['cat_title'.LANG] ?>" />
					<?php else :?>
						<img src="<?php echo Yii::app()->theme->baseUrl; ?>/images/no-product.jpg" alt="" />
					<?php endif; ?>
				</a>
			</div>
			<h2 class="title-pro"><a href="<?php echo Yii::app()->request->baseUrl.LANGURL ?>/<?php echo Yii::t('user', $this->module->id . '.link')?>/<?php echo $value['tag'.LANG] ?>" title="<?php echo $value['cat_title'.LANG] ?>"><?php echo $value['cat_title'.LANG] ?></a></h2>
		</li>
    <?php endforeach; ?>
</ul>
<div class="clear"></div>
<?php endif; ?>

<?php if($list_items['models']): ?>
<div class="bg-footer-left">
<h1 class="title-right"><span><?php echo $info_cat['cat_title'.LANG] ?></span></h1>
	<table class="table-product">
		<tbody>
			<?php foreach($list_items['models'] as $value): ?>
			<tr>
				<td width="100">
					<div class="frame-img-pro"> 
						<a href="<?php echo Yii::app()->request->baseUrl . LANGURL . '/' . Yii::t('user', $this->module->id . '.link') . '/' . $info_cat['tag'.LANG] ?>/<?php echo $value['tag'.LANG] ?>.html" title="<?php echo $value['title'.LANG] ?>">
						<?php if($value['pic_thumb']): ?>
							<img src="<?php echo Yii::app()->baseUrl.USERFILES ?>/<?php echo $this->module->id?>/<?php echo $value['pic_thumb'] ?>" alt="<?php echo $value['title'.LANG] ?>" />
						<?php else :?>
							<img src="<?php echo Yii::app()->theme->baseUrl; ?>/images/no-product.jpg" alt="no product" />
						<?php endif; ?>
						</a>
					</div>
				</td>
				<td>
					<h2 class="title-sale"><a href="<?php echo Yii::app()->request->baseUrl . LANGURL . '/' . Yii::t('user', $this->module->id . '.link') . '/' . $info_cat['tag'.LANG] ?>/<?php echo $value['tag' . LANG] ?>.html" title="<?php echo $value['title' . LANG] ?>"><?php echo $value['title' . LANG] ?></a></h2>
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
		<?php $this->widget('CLinkPager', array('pages' => $list_items['pages'], 'header'=>'', 'lastPageLabel'=>Yii::t('user', 'last'), 'nextPageLabel'=>Yii::t('user', 'next'), 'firstPageLabel'=>Yii::t('user', 'first'), 'prevPageLabel'=>Yii::t('user', 'prev'), 'htmlOptions'=>array('class'=>'paging')))?>
		<div class="clear"></div>
</div>
<?php else: ?>
     <div class="bg-footer-left"> <?php echo $this->lang['no_record'] ?></div>
<?php endif; ?>