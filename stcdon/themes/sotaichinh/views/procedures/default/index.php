<?php $this->breadcrumbs = array($this->lang[$this->module->id]); ?>
<?php $this->pageTitle = $this->lang[$this->module->id]; $this->setDescription()?>

<?php if($listItemIndex['models']):?>
<h2 class="title-right"><span><?php echo CHtml::encode($this->lang['procedures'])?></span></h2>
<div class="main-list-item">
<ul class="panel-items">
	<?php foreach($listItemIndex['models'] as $value):?>
	<li>
		<?php if($value['pic_thumb']):?>
			<div class="frame-img">
				<?php echo CHtml::link(CHtml::image(Yii::app()->baseUrl.Yii::getPathOfAlias('filePathUpload').'/image/procedures/'.$value['pic_thumb'], $value->ProceduresLanguage[Yii::app()->language]['title']) , array($this->setLangUrl().'/thu-tuc-hanh-chinh/'.$value->ProceduresCat->ProceduresCatLanguage[Yii::app()->language]['tag'].'/'.$value->ProceduresLanguage[Yii::app()->language]['tag'].'.html'), array('title'=>$value->ProceduresLanguage[Yii::app()->language]['title'])); ?>
			</div>
		<?php endif?>
		<h3>
			<?php echo CHtml::link($value->ProceduresLanguage[Yii::app()->language]['title'], array($this->setLangUrl().'/thu-tuc-hanh-chinh/'.$value->ProceduresCat->ProceduresCatLanguage[Yii::app()->language]['tag'].'/'.$value->ProceduresLanguage[Yii::app()->language]['tag'].'.html'), array('title'=>$value->ProceduresLanguage[Yii::app()->language]['title'])); ?>
		</h3>
		<?php echo $value->ProceduresLanguage[Yii::app()->language]['preview'] ?> <div class="clear"></div>
	</li>
	<?php endforeach?>
</ul>
<?php $this->widget('CLinkPager', array('pages' => $listItemIndex['pages'], 'header'=>'', 'lastPageLabel'=>'Last', 'nextPageLabel'=>'Next', 'firstPageLabel'=>'First', 'prevPageLabel'=>'Prev', 'htmlOptions'=>array('class'=>'paging')))?>
<div class="clear"></div>
<script type="text/javascript">
	$(document).ready(function(){
		$(".panel-items li:odd").addClass("alt");
		$(".main-list-item:last").addClass("last-list-item");
	});
</script>
</div>
<?php else:?>
	khong co mau tin
<?php endif?>
