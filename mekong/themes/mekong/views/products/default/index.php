<?php $this->breadcrumbs = array($this->lang[$this->module->id]); ?>
<?php $this->pageTitle = $this->lang[$this->module->id]; $this->setDescription()?>
<!-- <div class="main-all-product">
    <h2 class="title-right"><?php echo $this->lang['cat_title'] . ' ' . strtolower($this->lang[$this->module->id])?></h2>
    <?php if($items):?>
    <ul class="all-product">
        <?php foreach($items as $value): ?>
            <?php if($value['cat_parent_id']==0):?>
            <li class="product">
				<div class="product-img">
					<?php echo CHtml::link(($value['pic_thumb']) ? '<img src="'.Yii::app()->baseUrl.Yii::getPathOfAlias('filePathUpload').'/image/productsCat/'.$value['pic_thumb'].'" alt="'.$value->ProductsCatLanguage[Yii::app()->language]['cat_title'].'" />' : '<img src="'.Yii::app()->theme->baseUrl.'/images/no-products-cat.jpg" alt="'.$value->ProductsCatLanguage[Yii::app()->language]['cat_title'].'" />', array($this->setUrlModule('products').'/'.$value->ProductsCatLanguage[Yii::app()->language]['tag']), array('title'=>$value->ProductsCatLanguage[Yii::app()->language]['cat_title'])); ?>
				</div>
				<div class="line-bottom-product"></div>
				<h2 class="title-product">
					<?php echo CHtml::link($value->ProductsCatLanguage[Yii::app()->language]['cat_title'], array($this->setUrlModule('products').'/'.$value->ProductsCatLanguage[Yii::app()->language]['tag']), array('title'=>$value->ProductsCatLanguage[Yii::app()->language]['cat_title'])); ?>
				</h2>
            </li>
            <?php endif?>
        <?php endforeach; ?>
    </ul>
    <?php else:?>
        <?php echo $this->lang['no_record']?>
    <?php endif;?><div class="clear"></div>
</div> -->

<?php if($new_items['models']):?>
<div class="main-all-product">
    <!--<h2 class="title-right"><?php echo $this->lang['products'] . ' ' . $this->lang['new']?></h2>-->
    <ul class="all-product">
        <?php foreach($new_items['models'] as $item): ?>
            <li class="product">
				<div class="product-img">
					<?php echo CHtml::link(($item['pic_thumb']) ? '<img src="'.Yii::app()->baseUrl.Yii::getPathOfAlias('filePathUpload').'/image/products/'.$item['pic_thumb'].'" alt="'.$item->ProductsLanguage[Yii::app()->language]['title'].'" />' : '<img src="'.Yii::app()->theme->baseUrl.'/images/no-products.jpg" alt="'.$item->ProductsLanguage[Yii::app()->language]['title'].'" />', array($this->setUrlModule('products').'/'.$item->ProductsCat->ProductsCatLanguage[Yii::app()->language]['tag'].'/'.$item->ProductsLanguage[Yii::app()->language]['tag'].'.html'), array('title'=>$item->ProductsLanguage[Yii::app()->language]['title'])); ?>
				</div>
				<div class="line-bottom-product"></div>
				<h2 class="title-product">
					<?php echo CHtml::link($item->ProductsLanguage[Yii::app()->language]['title'], array($this->setUrlModule('products').'/'.$item->ProductsCat->ProductsCatLanguage[Yii::app()->language]['tag'].'/'.$item->ProductsLanguage[Yii::app()->language]['tag'].'.html'), array('title'=>$item->ProductsLanguage[Yii::app()->language]['title'])); ?>
				</h2>
            </li>
        <?php endforeach; ?>
    </ul> <div class="clear"></div>
	 <?php $this->widget('CLinkPager', array('pages' => $new_items['pages'], 'header'=>'', 'lastPageLabel'=>Yii::t('user', 'last'), 'nextPageLabel'=>Yii::t('user', 'next'), 'firstPageLabel'=>Yii::t('user', 'first'), 'prevPageLabel'=>Yii::t('user', 'prev'), 'htmlOptions'=>array('class'=>'paging')))?>
</div>
<?php endif;?>