<?php $this->breadcrumbs = array(Yii::t('main', 'templates.name')) ?>
<div class="left-content">
	<ul id="list-template">
		<?php if($templatesBusiness['models']):?>
		<?php foreach($templatesBusiness['models'] as $value):?>
			<li>
				<label for="tem-<?php echo $value['template']?>"><img src="<?php echo Yii::app()->baseUrl; ?>/themes/<?php echo $value['template']?>/images/tiny.jpg" alt="<?php echo $value['template']?>"  /></label>
				<p>
					<input id="tem-<?php echo $value['template']?>" name="Username[dos_templates_template]" value="<?php echo $value['template']?>" type="radio"/>
					<label for="tem-<?php echo $value['template']?>"><strong><?php echo $value['template_name']?></strong></label>
				</p>
			</li>
			<?php endforeach?>
		<?php else:?>
		<li style="text-align: left">Rất tiếc! <strong>Ngành nghề</strong> bạn chọn chưa có mẫu</li>
		<?php endif;?>
	</ul><div class="clear"></div>
	<?php $this->widget('CLinkPager', array('pages' => $templatesBusiness['pages'], 'header'=>'', 'lastPageLabel'=>'last', 'nextPageLabel'=>'next', 'firstPageLabel'=>'first', 'prevPageLabel'=>'prev', 'htmlOptions'=>array('class'=>'paging')))?>
</div>
<?php echo $this->renderPartial('menu', array('listBusiness' => $listBusiness)) ?>