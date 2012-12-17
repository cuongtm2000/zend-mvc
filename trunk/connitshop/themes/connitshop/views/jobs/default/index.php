<?php $this->breadcrumbs = array($this->lang[$this->module->id]); ?>
<?php $this->pageTitle = $this->lang[$this->module->id]; $this->setDescription()?>

<h2 class="title-box"><span><?php echo CHtml::encode($this->lang['jobs'])?><span></h2>
    <?php if($listItemIndex['models']):?>
        <ul class="panel-items">
            <?php foreach($listItemIndex['models'] as $value):?>
            <li>
                <?php if($value['pic_thumb']):?>
                    <div class="frame-img">
                        <?php echo CHtml::link(CHtml::image(Yii::app()->baseUrl.Yii::getPathOfAlias('filePathUpload').'/image/jobs/'.$value['pic_thumb'], $value->JobsLanguage[Yii::app()->language]['title']) , array($this->setUrlModule('jobs').'/'.$value->JobsCat->JobsCatLanguage[Yii::app()->language]['tag'].'/'.$value->JobsLanguage[Yii::app()->language]['tag'].'.html'), array('title'=>$value->JobsLanguage[Yii::app()->language]['title'])); ?>
                    </div>
                <?php endif?>
                <h2 class="title-items-news">
                    <?php echo CHtml::link($value->JobsLanguage[Yii::app()->language]['title'], array($this->setUrlModule('jobs').'/'.$value->JobsCat->JobsCatLanguage[Yii::app()->language]['tag'].'/'.$value->JobsLanguage[Yii::app()->language]['tag'].'.html'), array('title'=>$value->JobsLanguage[Yii::app()->language]['title'])); ?>
                </h2>
                <?php echo $value->JobsLanguage[Yii::app()->language]['preview'] ?> <div class="clear"></div>
                <p class="add-view"><a href="<?php echo Yii::app()->baseUrl.$this->setUrlModule('jobs').'/'.$value->JobsCat->JobsCatLanguage[Yii::app()->language]['tag'].'/'.$value->JobsLanguage[Yii::app()->language]['tag'].'.html' ?>" title=""><img src="<?php echo Yii::app()->theme->baseUrl; ?>/images/add-view.png" alt="" /></a></p>
            </li>
            <?php endforeach?>
        </ul> <div class="clear"></div>
        <?php $this->widget('CLinkPager', array('pages' => $listItemIndex['pages'], 'header'=>'', 'lastPageLabel'=>'Last', 'nextPageLabel'=>'Next', 'firstPageLabel'=>'First', 'prevPageLabel'=>'Prev', 'htmlOptions'=>array('class'=>'paging')))?> <div class="clear"></div>
        <script type="text/javascript">
            $(document).ready(function(){
                $(".panel-items li:odd").addClass("alt");
            });
        </script>
    <?php else:?>
        <div class="frame-tent-right"> khong co mau tin</div>
    <?php endif?>
