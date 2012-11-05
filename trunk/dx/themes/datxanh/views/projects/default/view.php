<?php $this->breadcrumbs = array($this->lang[$this->module->id] => array($this->setUrlModule()), $cat_title = $item->ProjectsCat->ProjectsCatLanguage[Yii::app()->language]['cat_title'] => array($this->setUrlModule().'/'.$item->ProjectsCat->ProjectsCatLanguage[Yii::app()->language]['tag']), $title = $item->ProjectsLanguage[Yii::app()->language]['title']); ?>
<?php $this->pageTitle = $title . ' - ' . $cat_title; $this->setDescription($item->ProjectsLanguage[Yii::app()->language]['description']) ?>

<h2 class="title-box"><span><?php echo $title?></span></h2>
<div class="frame-tent-right">
	<p style="background: red"><?php echo $item->ProjectsLanguage[Yii::app()->language]['content']?></p>
	<p style="background: blue"><?php echo $item->ProjectsLanguage[Yii::app()->language]['detail']?></p>
	<p style="background: blue"><?php echo $item['pic_desc']?></p>
	<p style="background: blue"><?php echo $item['field1']?></p>
	<p style="background: blue"><?php echo $item['field2']?></p>
</div>

<h4 class="title-item-other"><?php echo $this->lang[$this->module->id] . ' ' . $this->lang['other'] ?></h4>

<ul class="panel-items-other">
	<?php foreach($items_other as $value):?>
		<li><?php echo CHtml::link($value->ProjectsLanguage[Yii::app()->language]['title'], array($this->setUrlModule('projects').'/'.$value->ProjectsCat->ProjectsCatLanguage[Yii::app()->language]['tag'].'/'.$value->ProjectsLanguage[Yii::app()->language]['tag'].'.html'), array('title'=>$value->ProjectsLanguage[Yii::app()->language]['title'])); ?></li>
	<?php endforeach?>
</ul>
