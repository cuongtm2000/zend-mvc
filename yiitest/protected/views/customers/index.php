<?php $this->breadcrumbs = array(Yii::t('main', 'customers.name'));?>
<?php $this->pageTitle = Yii::t('main', 'customers.name'); $this->description = 'Danh sách khách hàng sử dụng công nghệ tạo website của Dos.vn, mời bạn trải nghiệm tốc độ, tính năng, chất lượng của các website khách hàng của chúng tôi'?>
<div id="leftcontent">  
	<ul class="customers">
        <?php if ($items['models']): ?>
            <?php foreach($items['models'] as $value):?>
            <li>
                <div class="customers-img">
                    <a href="<?php echo Yii::app()->baseUrl .'/'. Yii::t('main', 'customers.link')?>/<?php echo $value['dos_bussiness_bussiness_id'] ?>/<?php echo $value['tag']?>.html" title="<?php echo $value['customer_name'] ?>"><img src="<?php echo Yii::app()->baseUrl; ?>/public/userfiles/image/dos/image/customers/<?php echo $value['pic_thumb']?>" alt="<?php echo $value['customer_name'] ?>" /></a>
                </div>
                <h3 class="title-tomers"><a href="<?php echo Yii::app()->baseUrl .'/'.Yii::t('main', 'customers.link')?>/<?php echo $value['dos_bussiness_bussiness_id'] ?>/<?php echo $value['tag']?>.html" title="<?php echo $value['customer_name'] ?>"><?php echo $value['customer_name'] ?></a></h3>
            </li>
            <?php endforeach?>
        <?php endif?>
	</ul><div class="clear"></div>
    <?php $this->widget('CLinkPager', array('pages' => $items['pages'], 'header'=>'', 'lastPageLabel'=>'last', 'nextPageLabel'=>'next', 'firstPageLabel'=>'first', 'prevPageLabel'=>'prev', 'htmlOptions'=>array('class'=>'paging', 'style' => 'float:left')))?>
</div>
<?php echo $this->renderPartial('menu') ?>