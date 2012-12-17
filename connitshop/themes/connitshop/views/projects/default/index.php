<?php $this->breadcrumbs = array($this->lang[$this->module->id]); ?>
<?php $this->pageTitle = $this->lang[$this->module->id]; $this->setDescription()?>

<?php if($listItemIndex['models']):?>
<h2 class="title-right"><span><?php echo $this->lang[$this->module->id]?></span></h2>
<div class="main-list-item">
    <ul class="panel-items">
        <?php foreach($listItemIndex['models'] as $value):?>
        <li>
            <?php if($value['pic_thumb']):?>
                <div class="frame-img">																																																			
                    <?php echo CHtml::link(CHtml::image(Yii::app()->baseUrl.Yii::getPathOfAlias('filePathUpload').'/image/projects/'.$value['pic_thumb'], $value->ProjectsLanguage[Yii::app()->language]['title']) , array($this->setUrlModule().'/'.$value->ProjectsCat->ProjectsCatLanguage[Yii::app()->language]['tag'].'/'.$value->ProjectsLanguage[Yii::app()->language]['tag'].'.html'), array('title'=>$value->ProjectsLanguage[Yii::app()->language]['title'])); ?>
                </div>
            <?php endif?>

            <h3 class="title-items-news">
                <?php echo CHtml::link($value->ProjectsLanguage[Yii::app()->language]['title'], array($this->setUrlModule().'/'.$value->ProjectsCat->ProjectsCatLanguage[Yii::app()->language]['tag'].'/'.$value->ProjectsLanguage[Yii::app()->language]['tag'].'.html'), array('title'=>$value->ProjectsLanguage[Yii::app()->language]['title'])); ?>
            </h3>
            <?php echo $value->ProjectsLanguage[Yii::app()->language]['preview'] ?>
        </li>
        <?php endforeach?>
    </ul>
    <script type="text/javascript">
        jQuery(document).ready(function(){
            jQuery(".panel-items li:even").addClass("alt");
        });
    </script>
    <?php $this->widget('CLinkPager', array('pages' => $listItemIndex['pages'], 'header'=>'', 'lastPageLabel'=>'Last', 'nextPageLabel'=>'Next', 'firstPageLabel'=>'Đầu tiên', 'prevPageLabel'=>'Lùi', 'htmlOptions'=>array('class'=>'paging')))?>
</div>
<?php else:?>
    <?php echo $this->lang['no_record']?>
<?php endif?>