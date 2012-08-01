<?php if($items['models']):?>
<div class="frame-panel">
    <h2 class="title-right"><?php echo CHtml::encode($items['models'][0]->NewsCat->NewsCatLanguage[Yii::app()->language]['cat_title'])?></h2>
	<ul class="panel-items">
		<?php foreach($items['models'] as $value):?>
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
</ul>
    <?php $this->widget('CLinkPager', array('pages' => $items['pages'], 'header'=>'', 'lastPageLabel'=>'Last', 'nextPageLabel'=>'Next', 'firstPageLabel'=>'First', 'prevPageLabel'=>'Prev', 'htmlOptions'=>array('class'=>'paging')))?>
	<div class="clear"></div>

	<h4 class="title-item-other">Tin tức khác</h4>
	<ul class="panel-items-other">
		<li><a href="#" title="">Thắp sáng Trường Sa bằng điện sạch</a></li>
		<li><a href="#" title="">Thắp sáng Trường Sa bằng điện sạch</a></li>
		<li><a href="#" title="">Thắp sáng Trường Sa bằng điện sạch</a></li>
		<li><a href="#" title="">Thắp sáng Trường Sa bằng điện sạch</a></li>
	</ul>
</div>
<script type="text/javascript">
	$(document).ready(function(){
		$(".panel-items li:odd").addClass("alt");
	});
</script>
<?php else:?>
<div class="frame-panel">
    <p>khong co mau tin</p>
</div>
<?php endif?>