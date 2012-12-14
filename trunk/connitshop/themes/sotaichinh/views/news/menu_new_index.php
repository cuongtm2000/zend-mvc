
<?php foreach($menu_new_index as $value):?>
	<h2 class="title-right"><span><?php echo $value->NewsCatLanguage[Yii::app()->language]['cat_title']?></span></h2>
		<?php $items = News::model()->listItemByCatIndex($value['cat_id']); ?>
		<div class="main-list-item">
			<ul class="list-news-index">
				<?php if($items):?>			
					<?php $i=0;foreach($items as $item):?>
						<?php if($i==0 && $item['pic_thumb']):?>
							<li class="item-first">
								<h3 class="title-item-first"><?php echo CHtml::link($item->NewsLanguage[Yii::app()->language]['title'].' '.'<span>('.date('d/m/Y', strtotime($item['postdate'])).')</span>', array($this->setUrlModule('news').'/'.$item->NewsCat->NewsCatLanguage[Yii::app()->language]['tag'].'/'.$item->NewsLanguage[Yii::app()->language]['tag'].'.html'), array('title'=>$item->NewsLanguage[Yii::app()->language]['title'])); ?></h3>
								<?php if($item['pic_thumb']):?>
									<?php echo CHtml::link(CHtml::image(Yii::app()->baseUrl.Yii::getPathOfAlias('filePathUpload').'/image/news/'.$item['pic_thumb'], $item->NewsLanguage[Yii::app()->language]['title']), array($this->setUrlModule('news').'/'.$item->NewsCat->NewsCatLanguage[Yii::app()->language]['tag'].'/'.$item->NewsLanguage[Yii::app()->language]['tag'].'.html'), array('title'=>$item->NewsLanguage[Yii::app()->language]['title'])); ?>
								<?php endif?>
								<?php echo $item->NewsLanguage[Yii::app()->language]['preview']?>
								<div class="clear"></div>
							</li>
						<?php else:?>	
							<li>
								<?php echo CHtml::link($item->NewsLanguage[Yii::app()->language]['title'].' '.'<span>('.date('d/m/Y', strtotime($item['postdate'])).')</span>', array($this->setUrlModule('news').'/'.$item->NewsCat->NewsCatLanguage[Yii::app()->language]['tag'].'/'.$item->NewsLanguage[Yii::app()->language]['tag'].'.html'), array('title'=>$item->NewsLanguage[Yii::app()->language]['title'])); ?>
							</li>
						<?php endif;?>	
					<?php $i++;endforeach?>
				<?php else:?>
					<li>Đang cập nhật...</li>
				<?php endif?>
			</ul>
		</div>
<?php endforeach?>
