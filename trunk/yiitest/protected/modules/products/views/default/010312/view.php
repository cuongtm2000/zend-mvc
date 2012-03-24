<?php $this->breadcrumbs=array($this->lang[$this->module->id]=>LANGURL.'/'.$this->module->id, $item['title'.LANG]=>$item['tag']);?>

<div class="frame-tent-right">
	<div class="frame-img-info"><img src="<?php echo Yii::app()->baseUrl.USERFILES ?>/products/<?php echo $item['pic_full'] ?>" alt="<?php echo $item['title'.LANG] ?>" /></div>
	<?php echo $item['detail'.LANG] ?> 
	<p class="black"><a href="javascript: history.go(-1)" title="Trở lại" >Trở lại</a></p>
</div> <!--End frame tent right-->

<h1 class="title-box"><span>SẢN PHẨM KHÁC</span></h1>
