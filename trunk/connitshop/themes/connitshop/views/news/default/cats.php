<?php $this->breadcrumbs = array($this->lang[$this->module->id] => array($this->setUrlModule()), $info_cat['cat_title']); ?>
<?php $this->pageTitle = $info_cat['cat_title'] . ' - ' . $this->lang[$this->module->id]; $this->setDescription($info_cat['description'])?>
    <?php if($items['models']):?>
    <h2 class="title-right"><span><?php echo $this->lang[$this->module->id] .' <b>'.'&raquo;'.'</b>'.' '.$info_cat['cat_title'] ?></span></h2>
	<div class="main-list-item">
	<ul class="panel-items">
		<?php foreach($items['models'] as $value):?>
        <li>
            <?php if($value['pic_thumb']):?>
            <div class="frame-img">
                <?php echo CHtml::link(CHtml::image(Yii::app()->baseUrl.Yii::getPathOfAlias('filePathUpload').'/image/news/'.$value['pic_thumb'], $value->NewsLanguage[Yii::app()->language]['title']) , array($this->setUrlModule('news').'/'.$value->NewsCat->NewsCatLanguage[Yii::app()->language]['tag'].'/'.$value->NewsLanguage[Yii::app()->language]['tag'].'.html'), array('title'=>$value->NewsLanguage[Yii::app()->language]['title'])); ?>
            </div>
            <?php endif?>
            <h2 class="title-items-news">
                <?php echo CHtml::link($value->NewsLanguage[Yii::app()->language]['title'], array($this->setUrlModule('news').'/'.$value->NewsCat->NewsCatLanguage[Yii::app()->language]['tag'].'/'.$value->NewsLanguage[Yii::app()->language]['tag'].'.html'), array('title'=>$value->NewsLanguage[Yii::app()->language]['title'])); ?>
            </h2>
            <?php echo $value->NewsLanguage[Yii::app()->language]['preview'] ?> <div class="clear"></div>
            <p class="add-view"><a href="<?php echo Yii::app()->baseUrl.$this->setUrlModule('news').'/'.$value->NewsCat->NewsCatLanguage[Yii::app()->language]['tag'].'/'.$value->NewsLanguage[Yii::app()->language]['tag'].'.html' ?>" title=""><img src="<?php echo Yii::app()->theme->baseUrl; ?>/images/add-view.png" alt="" /></a></p>
        </li>
        <?php endforeach?>
    </ul> 
	<?php $this->widget('CLinkPager', array('pages' => $items['pages'], 'header'=>'', 'lastPageLabel'=>'Last', 'nextPageLabel'=>'Next', 'firstPageLabel'=>'First', 'prevPageLabel'=>'Prev', 'htmlOptions'=>array('class'=>'paging')))?> <div class="clear"></div>
	</div>
    <script type="text/javascript">
        $(document).ready(function(){
            $(".panel-items li:even").addClass("alt");
        });
    </script>
    <?php else:?>
        khong co mau tin
    <?php endif;?>