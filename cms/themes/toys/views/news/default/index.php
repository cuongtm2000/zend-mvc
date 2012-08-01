<?php if($listItemIndex['models']):?>
<div class="frame-panel">
	<h2 class="title-right"><?php echo CHtml::encode($this->lang['news'])?></h2>
    <?php foreach($listItemIndex['models'] as $value):?>
	<ul class="panel-items">
        <li>
            <?php if($value['pic_thumb']):?>
                <div class="frame-img">
                    <?php echo CHtml::link(CHtml::image(Yii::app()->baseUrl.Yii::getPathOfAlias('filePathUpload').'/image/news/'.$value['pic_thumb'], $value->NewsLanguage[Yii::app()->language]['title']) , array($this->setLangUrl().'/tin-tuc/'.$value->NewsCat->NewsCatLanguage[Yii::app()->language]['tag'].'/'.$value->NewsLanguage[Yii::app()->language]['tag'].'.html'), array('title'=>$value->NewsLanguage[Yii::app()->language]['title'])); ?>
                </div>
            <?php endif?>
            <h2 class="title-items">
                <?php echo CHtml::link($value->NewsLanguage[Yii::app()->language]['title'], array($this->setLangUrl().'/tin-tuc/'.$value->NewsCat->NewsCatLanguage[Yii::app()->language]['tag'].'/'.$value->NewsLanguage[Yii::app()->language]['tag'].'.html'), array('title'=>$value->NewsLanguage[Yii::app()->language]['title'])); ?>
            </h2>
            <?php echo $value->NewsLanguage[Yii::app()->language]['preview'] ?> <div class="clear"></div>
        </li>
        <?php endforeach?>
    </ul><div class="clear"></div>
    <?php $this->widget('CLinkPager', array('pages' => $listItemIndex['pages'], 'header'=>'', 'lastPageLabel'=>'Last', 'nextPageLabel'=>'Next', 'firstPageLabel'=>'First', 'prevPageLabel'=>'Prev', 'htmlOptions'=>array('class'=>'paging')))?>
	<div class="clear"></div>
</div>
<?php else:?>
<div class="frame-panel">
    <p>khong co mau tin</p>
</div>
<?php endif?>