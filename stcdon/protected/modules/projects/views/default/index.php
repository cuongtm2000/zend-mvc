<?php $this->breadcrumbs = array($this->lang[$this->module->id]); ?>
<?php $this->pageTitle = $this->lang[$this->module->id]; $this->setDescription()?>

<?php if($listItemIndex['models']):?>
    <ul class="panel-items">
        <?php foreach($listItemIndex['models'] as $value):?>
        <li>
            <?php if($value['pic_thumb']):?>
                <div class="frame-img">
                    <?php echo CHtml::link(CHtml::image(Yii::app()->baseUrl.Yii::getPathOfAlias('filePathUpload').'/image/projects/'.$value['pic_thumb'], $value->ProjectsLanguage[Yii::app()->language]['title']) , array($this->setLangUrl().'/tin-tuc/'.$value->ProjectsCat->ProjectsCatLanguage[Yii::app()->language]['tag'].'/'.$value->ProjectsLanguage[Yii::app()->language]['tag'].'.html'), array('title'=>$value->ProjectsLanguage[Yii::app()->language]['title'])); ?>
                </div>
            <?php endif?>

            <h3 class="title-items-news">
                <?php echo CHtml::link($value->ProjectsLanguage[Yii::app()->language]['title'], array($this->setUrlModule().'/'.$value->ProjectsCat->ProjectsCatLanguage[Yii::app()->language]['tag'].'/'.$value->ProjectsLanguage[Yii::app()->language]['tag'].'.html'), array('title'=>$value->ProjectsLanguage[Yii::app()->language]['title'])); ?>
            </h3>
            <?php echo $value->ProjectsLanguage[Yii::app()->language]['preview'] ?>
            <a href="<?php echo Yii::app()->baseUrl.$this->setUrlModule().'/'.$value->ProjectsCat->ProjectsCatLanguage[Yii::app()->language]['tag'].'/'.$value->ProjectsLanguage[Yii::app()->language]['tag'].'.html'?>" title="Chi tiết"><img class="detail" src="<?php echo Yii::app()->theme->baseUrl?>/images/button-detail.png" alt="Chi tiết" /></a><div class="clear"></div>
        </li>
        <?php endforeach?>
    </ul>
    <script type="text/javascript">
        $(document).ready(function(){
            $(".panel-items li:even").addClass("alt");
        });
    </script>
    <?php $this->widget('CLinkPager', array('pages' => $listItemIndex['pages'], 'header'=>'', 'lastPageLabel'=>'<img src="'.Yii::app()->theme->baseUrl.'/images/last-paging.png" alt="last" />', 'nextPageLabel'=>'<img src="'.Yii::app()->theme->baseUrl.'/images/next-paging.png" alt="next" />', 'firstPageLabel'=>'Đầu tiên', 'prevPageLabel'=>'Lùi', 'htmlOptions'=>array('class'=>'paging')))?>
<?php else:?>
    <?php echo $this->lang['no_record']?>
<?php endif?>