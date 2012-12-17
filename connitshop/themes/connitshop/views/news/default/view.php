<?php $this->breadcrumbs = array($this->lang[$this->module->id] => array($this->setUrlModule()), $cat_title = $item->NewsCat->NewsCatLanguage[Yii::app()->language]['cat_title'] => array($this->setUrlModule().'/'.$item->NewsCat->NewsCatLanguage[Yii::app()->language]['tag']), $title = $item->NewsLanguage[Yii::app()->language]['title']); ?>
<?php $this->pageTitle = $title . ' - ' . $cat_title; $this->setDescription($item->NewsLanguage[Yii::app()->language]['description']) ?>

<h2 class="title-right"><span><?php echo $this->lang[$this->module->id]?> <b>&raquo;</b> <?php echo $item->NewsCat->NewsCatLanguage[Yii::app()->language]['cat_title']?> </span></h2>
<div class="frame-tent-right">
	<h2 class="title-view"><?php echo $title ?>  <span class="date">( <?php echo date('d/m/Y', strtotime($item['postdate']))?> )</span></h2>
	<?php echo $item->NewsLanguage[Yii::app()->language]['content']?>
	
	<div class="ico-view">
		<a href="javascript:history.back();"><img src="<?php echo Yii::app()->theme->baseUrl; ?>/images/undo.gif" alt="Quay lại" title="Quay lại" />Quay lại</a>
		<a href="javascript:scroll(0,0)"><img src="<?php echo Yii::app()->theme->baseUrl; ?>/images/arrow-up.gif" alt="Đầu trang" title="Đầu trang" />Đầu trang</a>
	</div>
	
	<?php if($items_other):?>
		<h4 class="title-item-other"><?php echo $this->lang[$this->module->id] . ' ' . $this->lang['other'] ?></h4>
		<ul class="items-other">
			<?php foreach($items_other as $value):?>
				<li><?php echo CHtml::link($value->NewsLanguage[Yii::app()->language]['title'].' '.'<span>('.date('d/m/Y', strtotime($value['postdate'])).')</span>' , array($this->setUrlModule('news').'/'.$value->NewsCat->NewsCatLanguage[Yii::app()->language]['tag'].'/'.$value->NewsLanguage[Yii::app()->language]['tag'].'.html'), array('title'=>$value->NewsLanguage[Yii::app()->language]['title'])); ?></li>
			<?php endforeach?>
		</ul>
		
		<script type="text/javascript">
			$(document).ready(function(){
				$(".items-other li:even").addClass("odd");
			});
		</script>
	<?php endif?>
</div>

