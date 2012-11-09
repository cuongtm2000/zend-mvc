<?php foreach($lands_new as $value):?>
	<p>
		<?php if($value['pic_thumb']):?>
			<?php echo CHtml::link(CHtml::image(Yii::app()->baseUrl.Yii::getPathOfAlias('filePathUpload').'/image/lands/'.$value['pic_thumb'], $value->LandsLanguage[Yii::app()->language]['title']), array($this->setUrlModule('lands').'/'.$value->LandsCat->LandsCatLanguage[Yii::app()->language]['tag'].'/'.$value->LandsLanguage[Yii::app()->language]['tag'].'.html'), array('title'=>$value->LandsLanguage[Yii::app()->language]['title'])); ?>
		<?php endif?>
		
		<b><?php echo CHtml::link($value->LandsLanguage[Yii::app()->language]['title'], array($this->setUrlModule('lands').'/'.$value->LandsCat->LandsCatLanguage[Yii::app()->language]['tag'].'/'.$value->LandsLanguage[Yii::app()->language]['tag'].'.html'), array('title'=>$value->LandsLanguage[Yii::app()->language]['title'])); ?></b>
	</p>
<?php endforeach?>
