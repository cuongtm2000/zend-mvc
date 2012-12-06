<?php if($news_new):?>
<?php
    Yii::app()->clientScript->registerCssFile(Yii::app()->theme->baseUrl.'/css/tab.css');
    Yii::app()->clientScript->registerScriptFile(Yii::app()->theme->baseUrl.'/js/tab-sub-right.js');
?>

<h4 class="title-box"><span><?php echo $this->lang['news'] . ' ' .$this->lang['new']?></span></h4>
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
                <li class="first-new">
                    <?php if($items[0]['pic_thumb']):?>
                        <?php echo CHtml::link(CHtml::image(Yii::app()->baseUrl.Yii::getPathOfAlias('filePathUpload').'/image/news/'.$items[0]['pic_thumb'], $items[0]->NewsLanguage[Yii::app()->language]['title']), array($this->setUrlModule('news').'/'.$items[0]->NewsCat->NewsCatLanguage[Yii::app()->language]['tag'].'/'.$items[0]->NewsLanguage[Yii::app()->language]['tag'].'.html'), array('title'=>$items[0]->NewsLanguage[Yii::app()->language]['title'])); ?>
                    <?php endif?>
                    <h4>
                        <?php echo CHtml::link($items[0]->NewsLanguage[Yii::app()->language]['title'].' '.'<span>('.date('d/m/Y', strtotime($items[0]['postdate'])).')</span>', array($this->setUrlModule('news').'/'.$items[0]->NewsCat->NewsCatLanguage[Yii::app()->language]['tag'].'/'.$items[0]->NewsLanguage[Yii::app()->language]['tag'].'.html'), array('title'=>$items[0]->NewsLanguage[Yii::app()->language]['title'])); ?>
                        
                    </h4>
                    <?php echo $items[0]->NewsLanguage[Yii::app()->language]['preview']?>
                </li>

                <?php $k=0; foreach($items as $item):?>
                    <?php if($k!=0):?>
                        <li>
                            <?php echo CHtml::link($item->NewsLanguage[Yii::app()->language]['title'].' '.'<span>('.date('d/m/Y', strtotime($item['postdate'])).')</span>', array($this->setUrlModule('news').'/'.$items[0]->NewsCat->NewsCatLanguage[Yii::app()->language]['tag'].'/'.$item->NewsLanguage[Yii::app()->language]['tag'].'.html'), array('title'=>$item->NewsLanguage[Yii::app()->language]['title'])); ?>
                        </li>
                    <?php endif?>
                <?php $k++; endforeach?>
            <?php else:?>
                <li>Đang cập nhật...</li>
            <?php endif?>
        </ul>
        <?php $i++; endforeach?>
    </div>
</div>
<?php endif?>