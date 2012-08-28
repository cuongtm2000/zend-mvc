<h1 class="title-right"><span><?php echo $this->lang['default'] ?></span></h1>
<?php if(isset($this->function['products_new']) && $this->function['products_new']):?>
	<div id="photos" class="galleryview" >
		 <?php foreach($this->function['products_new'] as $value): ?>
			<div class="panel">
				<?php if($value['pic_full']): ?>
					<a href="<?php echo Yii::app()->request->baseUrl.LANGURL ?>/<?php echo Yii::t('user', 'products.link')?>/<?php echo $value['ProductsCat']['tag'.LANG] ?>/<?php echo $value['tag'.LANG] ?>.html" title="<?php echo $value['title'.LANG] ?>">
						<img src="<?php echo Yii::app()->baseUrl.USERFILES ?>/products/<?php echo $value['pic_full'] ?>" alt="<?php echo $value['title'.LANG] ?>" />	
					</a> 
				<?php endif; ?>
				<div class="panel-overlay">      
				  <p><strong>Model: <?php echo $value['title' . LANG] ?> ,
                      <?php if($value['extra_field1']): ?>Video clip  <a href="<?php echo $value['extra_field1'] ?>" title="Video <?php echo $value['title' . LANG] ?>"><img src='<?php echo Yii::app()->theme->baseUrl; ?>/images/icon38.png' border='0'/></a>,<?php endif?>
                      <a href="<?php echo Yii::app()->request->baseUrl.LANGURL ?>/<?php echo Yii::t('user', 'products.link')?>/<?php echo $value['ProductsCat']['tag'.LANG] ?>/<?php echo $value['tag'.LANG] ?>.html" title='<?php echo $this->lang['detail']?> <?php echo strtolower($this->lang['products'])?>'><?php echo $this->lang['detail']?> <?php echo strtolower($this->lang['products'])?></a> 
					  <a href="<?php echo Yii::app()->request->baseUrl.LANGURL ?>/<?php echo Yii::t('user', 'products.link')?>/<?php echo $value['ProductsCat']['tag'.LANG] ?>/<?php echo $value['tag'.LANG] ?>.html" title="<?php echo $value['title' . LANG] ?>"><img src="<?php echo Yii::app()->theme->baseUrl; ?>/images/kedit.png" alt="kedit"/></a></strong></p>
				</div>
			</div>
		 <?php endforeach; ?>


		<ul class="filmstrip">
			 <?php foreach($this->function['products_new'] as $value): ?>
				<li>
					<?php if($value['pic_thumb']): ?>
						<img src="<?php echo Yii::app()->baseUrl.USERFILES ?>/products/<?php echo $value['pic_thumb'] ?>" alt="<?php echo $value['title'.LANG] ?>" />
					<?php endif; ?>
				</li>
			<?php endforeach; ?>
		</ul>
	</div>
	<div class="frame-view"></div> <div class="clear"></div>
<?php endif; ?>