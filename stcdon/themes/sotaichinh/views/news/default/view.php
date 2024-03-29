<?php $this->breadcrumbs = array($this->lang[$this->module->id] => array($this->setUrlModule()), $cat_title = $item->NewsCat->NewsCatLanguage[Yii::app()->language]['cat_title'] => array($this->setUrlModule().'/'.$item->NewsCat->NewsCatLanguage[Yii::app()->language]['tag']), $title = $item->NewsLanguage[Yii::app()->language]['title']); ?>
<?php $this->pageTitle = $title . ' - ' . $cat_title; $this->setDescription($item->NewsLanguage[Yii::app()->language]['description']) ?>

<h2 class="title-right"><span><?php echo $this->lang[$this->module->id]?> <img src="<?php echo Yii::app()->theme->baseUrl; ?>/images/icon-right.png" alt="Quay lại" title="Quay lại"> <?php echo $item->NewsCat->NewsCatLanguage[Yii::app()->language]['cat_title']?> </span></h2>
<div class="frame-tent-right">
	<h2 class="title-view"><?php echo $title?></h2>
	<?php echo $item->NewsLanguage[Yii::app()->language]['content']?>
	
	<div class="ico-view">
		<a class="button_quote" href="" title=""><img src="<?php echo Yii::app()->theme->baseUrl; ?>/images/quote.gif" alt="" />Nhận xét</a>
		<a href="" title=""><img src="<?php echo Yii::app()->theme->baseUrl; ?>/images/mail.gif" alt="" />Email</a>
		<a href="JavaScript:window.print();" target="_self"><img src="<?php echo Yii::app()->theme->baseUrl; ?>/images/print.gif" alt="In trang này" title="In trang này">Print</a>
		<a href="javascript:history.back();"><img src="<?php echo Yii::app()->theme->baseUrl; ?>/images/undo.gif" alt="Quay lại" title="Quay lại">Quay lại</a>
		<a href="javascript:scroll(0,0)"><img src="<?php echo Yii::app()->theme->baseUrl; ?>/images/arrow-up.gif" alt="Đầu trang" title="Đầu trang">Đầu trang</a>
	</div>
	
	<?php if($items_other):?>
		<h4 class="title-item-other"><?php echo $this->lang[$this->module->id] . ' ' . $this->lang['other'] ?></h4>
		<ul class="items-other">
			<?php foreach($items_other as $value):?>
				<li><?php echo CHtml::link($value->NewsLanguage[Yii::app()->language]['title'], array($this->setUrlModule('news').'/'.$value->NewsCat->NewsCatLanguage[Yii::app()->language]['tag'].'/'.$value->NewsLanguage[Yii::app()->language]['tag'].'.html'), array('title'=>$value->NewsLanguage[Yii::app()->language]['title'])); ?></li>
			<?php endforeach?>
		</ul>
		
		<script type="text/javascript">
			$(document).ready(function(){
				$(".panel-items-other li:even").addClass("alt");
			});
		</script>
	<?php endif?>
</div>

