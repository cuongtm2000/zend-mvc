<?php if($news_new):?>
<?php
    Yii::app()->clientScript->registerCssFile(Yii::app()->theme->baseUrl.'/css/tab.css');
    Yii::app()->clientScript->registerScriptFile(Yii::app()->theme->baseUrl.'/js/tab-sub-right.js');
?>
<div class="infotab">
    <ul class="tabs">
        <?php $i=1; foreach($news_new as $value):?>
			<li><a href="#tab<?php echo $i?>"><?php echo $value->NewsCatLanguage[Yii::app()->language]['cat_title']?></a></li>
		<?php $i++; endforeach?>
    </ul>

    <div class="tab_container">
        <?php $i=1; foreach($news_new as $value): $items = News::model()->listItemByCatHome($value['cat_id']); ?>
        <ul id="tab<?php echo $i?>" class="tab_content sub-new-home">
			
            <?php if($items):?>			
                <?php foreach($items as $item):?>
                        <li>
							<?php if($item['pic_thumb']):?>
								<?php echo CHtml::link(CHtml::image(Yii::app()->baseUrl.Yii::getPathOfAlias('filePathUpload').'/image/news/'.$item['pic_thumb'], $item->NewsLanguage[Yii::app()->language]['title']), array($this->setUrlModule('news').'/'.$item->NewsCat->NewsCatLanguage[Yii::app()->language]['tag'].'/'.$item->NewsLanguage[Yii::app()->language]['tag'].'.html'), array('title'=>$item->NewsLanguage[Yii::app()->language]['title'])); ?>
							<?php endif?>
                            <?php echo CHtml::link($item->NewsLanguage[Yii::app()->language]['title'].' '.'<span>('.date('d/m/Y', strtotime($item['postdate'])).')</span>', array($this->setUrlModule('news').'/'.$item->NewsCat->NewsCatLanguage[Yii::app()->language]['tag'].'/'.$item->NewsLanguage[Yii::app()->language]['tag'].'.html'), array('title'=>$item->NewsLanguage[Yii::app()->language]['title'])); ?>
                        </li>
                <?php endforeach?>
            <?php else:?>
                <li>Đang cập nhật...</li>
            <?php endif?>
        </ul>
        <?php $i++; endforeach?>
    </div>
</div>
<?php endif?>