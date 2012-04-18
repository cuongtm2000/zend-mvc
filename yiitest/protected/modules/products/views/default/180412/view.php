<?php $this->breadcrumbs = array($this->lang[$this->module->id] => Yii::app()->request->baseUrl . LANGURL . '/' . Yii::t('user', $this->module->id.'.link'), $item[ucfirst($this->module->id).'Cat']['cat_title' . LANG] => '../'.$item[ucfirst($this->module->id).'Cat']['tag'.LANG], $item['title' . LANG]); ?>
<?php $this->pageTitle = $item['title'.LANG]; $this->description = $item['description'.LANG];?>

<h2 class="title-right"><span><?php echo $item['title'.LANG] ?></span></h2>
<div class="frame-pro-info">
	<div class="row-info">
		<div id="pb-right-column">
			<!-- product img-->
			<div id="image-block">
				<img id="bigpic" src="<?php echo Yii::app()->theme->baseUrl; ?>/images/img-default.jpg" title="Maxtor Central Axis" alt="Maxtor Central Axis"   />
			</div>
			<!-- thumbnails -->
			<div id="views_block" class="prod_detail">
				<!--Slide show Jquery Lightbox-->
				<div class="big_thumb">
					<!--Slide Prev-->
					<span class="prevsmall"><img src="<?php echo Yii::app()->theme->baseUrl; ?>/images/prev.gif" alt="" /></span>
					<div class="thumbs anyClass" id="paginate-slider2">
						<ul id="thumbs_list">
							<li><a href="<?php echo Yii::app()->theme->baseUrl; ?>/images/pig-1.jpg" rel="other-views" class="thickbox shown" title="Maxtor Central Axis"><img src="<?php echo Yii::app()->theme->baseUrl; ?>/images/phongngu.jpg" alt="Maxtor Central Axis"  /></a></li>
							<li><a href="<?php echo Yii::app()->theme->baseUrl; ?>/images/pig-2.jpg" rel="other-views" class="thickbox" title="Maxtor box block cat"><img src="<?php echo Yii::app()->theme->baseUrl; ?>/images/phongngu.jpg" alt="Maxtor Central Axis" /></a></li>
							<li><a href="<?php echo Yii::app()->theme->baseUrl; ?>/images/pig-3.jpg" rel="other-views" class="thickbox" title="Maxtor box block cat cat cat"><img src="<?php echo Yii::app()->theme->baseUrl; ?>/images/phongngu.jpg" alt="Maxtor Central Axis" /></a></li>
							<li><a href="<?php echo Yii::app()->theme->baseUrl; ?>/images/pro-2.jpg" rel="other-views" class="thickbox" title="Maxtor box block cat cat cat"><img src="<?php echo Yii::app()->theme->baseUrl; ?>/images/phongngu.jpg" alt="Maxtor Central Axis" /></a></li>
						</ul>
					</div>
					<span class="nextsmall"><img src="<?php echo Yii::app()->theme->baseUrl; ?>/images/next.gif" alt="" /></span>
					<!--Slide Next-->
				</div><!--END Slide show Jquery Lightbox-->
			</div>
		</div>
		<div class="right-info">
			<p class="price-info"><strong>Giá: <span><?php echo (is_numeric($item['unit'])) ? number_format($item['unit'], 0, '', '.') . ' VND' : (($item['unit']) ? $item['unit'] : $this->lang['contact']) ?></span></strong></p>
			<h4 class="title-info"><span>Thông tin tổng quát</span></h4>
			<?php echo $item['content'.LANG] ?>
		</div> <div class="clear"></div>
	</div>
	<h4 class="title-info"><span>Thông số kỹ thuật</span></h4>
<p>kiii</p>
</div> <!--End frame tent right-->


<?php if($item_other):?>
<h3 class="title-right"><span><?php echo $this->lang[$this->module->id]?> <?php echo strtolower($this->lang['other'])?></span></h3>
<ul class="all-product">
	<?php foreach($item_other as $value):?>
	<li class="product">
		<div class="product-img">
			<a href="<?php echo Yii::app()->request->baseUrl . LANGURL . '/' . Yii::t('user', $this->module->id . '.link') . '/' . $value[ucfirst($this->module->id).'Cat']['tag'.LANG] ?>/<?php echo $value['tag'.LANG] ?>.html" title="<?php echo $value['title'.LANG]?>">
			<?php if($value['pic_thumb']):?>
				<img src="<?php echo Yii::app()->baseUrl.USERFILES ?>/<?php echo $this->module->id?>/<?php echo $value['pic_thumb'] ?>" alt="<?php echo $value['title'.LANG] ?>" />
			<?php else :?>
				<img src="<?php echo Yii::app()->theme->baseUrl; ?>/images/no-images.jpg" alt="<?php echo $value['title'.LANG] ?>" />
			<?php endif?>
			</a>
		</div>
		<h2 class="title-pro"><a href="<?php echo Yii::app()->request->baseUrl . LANGURL . '/' . Yii::t('user', $this->module->id . '.link') . '/' . $value[ucfirst($this->module->id).'Cat']['tag'.LANG] ?>/<?php echo $value['tag'.LANG] ?>.html" title="<?php echo $value['title'.LANG]?>"><?php echo $value['title'.LANG]?></a></h2>
	</li>
	<?php endforeach?>
</ul>
<?php endif;?>

