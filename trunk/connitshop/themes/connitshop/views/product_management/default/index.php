<?php $this->breadcrumbs = array($this->lang[$this->module->id]); ?>
<?php $this->pageTitle = $this->lang[$this->module->id]; $this->setDescription()?>
<div class="frame-panel">
	<ul class="list-product-mana">
		<?php foreach($items as $value):?>
		<li>
			<div class="product-img">
				<?php echo CHtml::link(($value['pic_thumb']) ? '<img src="'.Yii::app()->baseUrl.Yii::getPathOfAlias('filePathUpload').'/image/product_managementCat/'.$value['pic_thumb'].'" alt="'.$value->Product_managementCatLanguage[Yii::app()->language]['cat_title'].'" />' : '<img src="'.Yii::app()->theme->baseUrl.'/images/no-product-managementCat.jpg" alt="'.$value->Product_managementCatLanguage[Yii::app()->language]['cat_title'].'" />', array($this->setLangUrl().'/quan-ly-san-pham/'.$value->Product_managementCatLanguage[Yii::app()->language]['tag']), array('title'=>$value->Product_managementCatLanguage[Yii::app()->language]['cat_title'])); ?>
			</div>               
			<h2><?php echo CHtml::link($value->Product_managementCatLanguage[Yii::app()->language]['cat_title'], array($this->setLangUrl().'/quan-ly-san-pham/'.$value->Product_managementCatLanguage[Yii::app()->language]['tag']), array('title'=>$value->Product_managementCatLanguage[Yii::app()->language]['cat_title'])); ?></h2>
		</li>
		<?php endforeach?>
	</ul>
	
	<script type="text/javascript">
		var column =  '2';
		var width = $('.list-product-mana').width();
		var item_width = (width/column-20);
		var item_height = '<?php echo Config::getValue('product_mana_height_thumb')?>';
		$('.list-product-mana li').width(item_width);
		$('.list-product-mana li .product-img').width(item_width).height(item_height);
		$('.list-product-mana li:nth-child('+column+'n)').addClass('last-item');
	</script>	
   <!-- <?php if($listItemIndex['models']):?>
	<h2 class="title-right"><?php echo CHtml::encode($this->lang['product_management'])?></h2>
	<ul class="panel-items">
		<?php foreach($listItemIndex['models'] as $value):?>
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
    <?php $this->widget('CLinkPager', array('pages' => $listItemIndex['pages'], 'header'=>'', 'lastPageLabel'=>'Last', 'nextPageLabel'=>'Next', 'firstPageLabel'=>'First', 'prevPageLabel'=>'Prev', 'htmlOptions'=>array('class'=>'paging')))?>
	<div class="clear"></div>
    <script type="text/javascript">
        $(document).ready(function(){
            $(".panel-items li:odd").addClass("alt");
        });
    </script>
    <?php else:?>
        khong co mau tin
    <?php endif?>-->
</div>