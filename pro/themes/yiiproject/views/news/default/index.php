<?php $this->breadcrumbs = array($this->lang[$this->module->id]); ?>
<?php $this->pageTitle = $this->lang[$this->module->id]; $this->setDescription()?>

<h2 class="title-right"><span><?php echo CHtml::encode($this->lang['news'])?></span></h2>
<div class="frame-tent-right">
    <?php if($listItemIndex['models']):?>
    <ul class="panel-items">
        <?php foreach($listItemIndex['models'] as $value):?>
        <li>
            <?php if($value['pic_thumb']):?>
                <div class="frame-img">
                    <?php echo CHtml::link(CHtml::image(Yii::app()->baseUrl.Yii::getPathOfAlias('filePathUpload').'/image/news/'.$value['pic_thumb'], $value->NewsLanguage[Yii::app()->language]['title']) , array($this->setUrlModule('news').'/'.$value->NewsCat->NewsCatLanguage[Yii::app()->language]['tag'].'/'.$value->NewsLanguage[Yii::app()->language]['tag'].'.html'), array('title'=>$value->NewsLanguage[Yii::app()->language]['title'])); ?>
                </div>
            <?php endif?>
            <h2 class="title-items">
                <?php echo CHtml::link($value->NewsLanguage[Yii::app()->language]['title'], array($this->setUrlModule('news').'/'.$value->NewsCat->NewsCatLanguage[Yii::app()->language]['tag'].'/'.$value->NewsLanguage[Yii::app()->language]['tag'].'.html'), array('title'=>$value->NewsLanguage[Yii::app()->language]['title'])); ?>
            </h2>
            <?php echo $value->NewsLanguage[Yii::app()->language]['preview'] ?> <div class="clear"></div>
        </li>
        <?php endforeach?>
    </ul>
    <?php $this->widget('CLinkPager', array('pages' => $listItemIndex['pages'], 'header'=>'', 'lastPageLabel'=>'Last', 'nextPageLabel'=>'Next', 'firstPageLabel'=>'First', 'prevPageLabel'=>'Prev', 'htmlOptions'=>array('class'=>'paging')))?>
    <script type="text/javascript">
        $(document).ready(function(){
            $(".panel-items li:odd").addClass("alt");
        });
    </script>
    <?php else:?>
        No record
    <?php endif?> <div class="clear"></div>
</div>