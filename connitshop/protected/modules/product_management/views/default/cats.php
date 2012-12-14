<?php $this->breadcrumbs = array($this->lang[$this->module->id] => array($this->setUrlModule()), $info_cat['cat_title']); ?>
<?php $this->pageTitle = $info_cat['cat_title'] . ' - ' . $this->lang[$this->module->id]; $this->setDescription($info_cat['description'])?>
<div class="frame-panel">
    <?php if($items['models']):?>
    <h2 class="title-right"><?php echo $info_cat['cat_title']?></h2>
	<ul class="panel-items">
		<?php foreach($items['models'] as $value):?>
        <li>
            <?php if($value['pic_thumb']):?>
            <div class="frame-img">
                <?php echo CHtml::link(CHtml::image(Yii::app()->baseUrl.Yii::getPathOfAlias('filePathUpload').'/image/product_management/'.$value['pic_thumb'], $value->Product_managementLanguage[Yii::app()->language]['title']) , array($this->setLangUrl().'/quan-ly-san-pham/'.$value->Product_managementCat->Product_managementCatLanguage[Yii::app()->language]['tag'].'/'.$value->Product_managementLanguage[Yii::app()->language]['tag'].'.html'), array('title'=>$value->Product_managementLanguage[Yii::app()->language]['title'])); ?>
            </div>
            <?php endif?>
            <h2 class="title-items">
                <?php echo CHtml::link($value->Product_managementLanguage[Yii::app()->language]['title'], array($this->setLangUrl().'/quan-ly-san-pham/'.$value->Product_managementCat->Product_managementCatLanguage[Yii::app()->language]['tag'].'/'.$value->Product_managementLanguage[Yii::app()->language]['tag'].'.html'), array('title'=>$value->Product_managementLanguage[Yii::app()->language]['title'])); ?>
            </h2>
            <?php echo $value->Product_managementLanguage[Yii::app()->language]['preview'] ?> <div class="clear"></div>
        </li>
        <?php endforeach?>
    </ul>
    <?php $this->widget('CLinkPager', array('pages' => $items['pages'], 'header'=>'', 'lastPageLabel'=>'Last', 'nextPageLabel'=>'Next', 'firstPageLabel'=>'First', 'prevPageLabel'=>'Prev', 'htmlOptions'=>array('class'=>'paging')))?>
	<div class="clear"></div>

    <script type="text/javascript">
        $(document).ready(function(){
            $(".panel-items li:odd").addClass("alt");
        });
    </script>
    <?php else:?>
        khong co mau tin
    <?php endif;?>
</div>