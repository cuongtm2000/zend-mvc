<h4 class="title-box"><span><?php echo $this->lang['lands']?></span></h4>
<ul class="sub-trading">
<?php foreach($lands_new as $value):?>
	<li>
		<?php if($value['pic_thumb']):?>
			<?php echo CHtml::link(CHtml::image(Yii::app()->baseUrl.Yii::getPathOfAlias('filePathUpload').'/image/lands/'.$value['pic_thumb'], $value->LandsLanguage[Yii::app()->language]['title']), array($this->setUrlModule('lands').'/'.$value->LandsCat->LandsCatLanguage[Yii::app()->language]['tag'].'/'.$value->LandsLanguage[Yii::app()->language]['tag'].'.html'), array('title'=>$value->LandsLanguage[Yii::app()->language]['title'])); ?>
		<?php endif?>

        <div class="panel-tranding"><?php echo CHtml::link($value->LandsLanguage[Yii::app()->language]['title'], array($this->setUrlModule('lands').'/'.$value->LandsCat->LandsCatLanguage[Yii::app()->language]['tag'].'/'.$value->LandsLanguage[Yii::app()->language]['tag'].'.html'), array('title'=>$value->LandsLanguage[Yii::app()->language]['title'])); ?></div>
	</li>
<?php endforeach?>
</ul>
