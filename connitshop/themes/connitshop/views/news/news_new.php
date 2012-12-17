<?php if($news_new):?>
	<div class="bg-ticker">
		<img src="<?php echo Yii::app()->theme->baseUrl; ?>/images/new-item.jpg" alt="" />
		<div class='Tickerwrap'>
			<div class='Tickeritem'>
				<div id='newrun' style='float:left; width:680px;'>
					<ul id='js-news' class='js-hidden'>
						<?php foreach($news_new as $value):?>
							<li class='news-item'>
								<?php echo CHtml::link($value->NewsLanguage[Yii::app()->language]['title'], array($this->setUrlModule('news').'/'.$value->NewsCat->NewsCatLanguage[Yii::app()->language]['tag'].'/'.$value->NewsLanguage[Yii::app()->language]['tag'].'.html'), array('title'=>$value->NewsLanguage[Yii::app()->language]['title'])); ?>
							</li>
						<?php endforeach?>
					</ul>
				</div>
			</div>
		</div> <!--End Tickerwrap-->
	</div>
<?php endif?>