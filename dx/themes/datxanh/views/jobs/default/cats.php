<?php $this->breadcrumbs = array($this->lang[$this->module->id] => array($this->setUrlModule()), $info_cat['cat_title']); ?>
<?php $this->pageTitle = $info_cat['cat_title'] . ' - ' . $this->lang[$this->module->id]; $this->setDescription($info_cat['description'])?>
    <?php if($items['models']):?>
    <h2 class="title-right"><span><?php echo $info_cat['cat_title']?></span></h2>
	<div class="frame-tent-right">
	<ul class="panel-items">
		<?php foreach($items['models'] as $value):?>
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
        </li>
        <?php endforeach?>
    </ul>  <div class="clear"></div>
    <?php $this->widget('CLinkPager', array('pages' => $items['pages'], 'header'=>'', 'lastPageLabel'=>'Last', 'nextPageLabel'=>'Next', 'firstPageLabel'=>'First', 'prevPageLabel'=>'Prev', 'htmlOptions'=>array('class'=>'paging')))?> <div class="clear"></div>
	</div>
    <script type="text/javascript">
        $(document).ready(function(){
            $(".panel-items li:odd").addClass("alt");
        });
    </script>
    <?php else:?>
        khong co mau tin
    <?php endif;?>