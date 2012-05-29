<?php $this->breadcrumbs = array(Yii::t('main', 'templates.name')) ?>
<div id="leftcontent" style="width:639px">
	<ul id="list-template">
		<?php if($templatesBusiness['models']):?>
		<?php foreach($templatesBusiness['models'] as $value):?>
			<li>
				<a href="" title="<?php echo $value['template_name']?>"><img src="<?php echo Yii::app()->baseUrl; ?>/themes/<?php echo $value['template']?>/images/tiny.png" alt="<?php echo $value['template']?>"  /></a>
				<p><a href="" title="<?php echo $value['template_name']?>"><?php echo $value['template_name']?></a></p>
			</li>
			<?php endforeach?>
		<?php else:?>
		<li style="text-align: left">Rất tiếc! <strong>Ngành nghề</strong> bạn chọn chưa có mẫu</li>
		<?php endif;?>
	</ul><div class="clear"></div>
	<?php $this->widget('CLinkPager', array('pages' => $templatesBusiness['pages'], 'header'=>'', 'lastPageLabel'=>'last', 'nextPageLabel'=>'next', 'firstPageLabel'=>'first', 'prevPageLabel'=>'prev', 'htmlOptions'=>array('class'=>'paging', 'style' => 'float:left')))?>
</div>
<?php echo $this->renderPartial('menu', array('listBusiness' => $listBusiness)) ?>