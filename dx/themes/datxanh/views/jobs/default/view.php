<?php $this->breadcrumbs = array($this->lang[$this->module->id] => array($this->setUrlModule()), $cat_title = $item->JobsCat->JobsCatLanguage[Yii::app()->language]['cat_title'] => array($this->setUrlModule().'/'.$item->JobsCat->JobsCatLanguage[Yii::app()->language]['tag']), $title = $item->JobsLanguage[Yii::app()->language]['title']); ?>
<?php $this->pageTitle = $title . ' - ' . $cat_title; $this->setDescription($item->JobsLanguage[Yii::app()->language]['description']) ?>
	<h2 class="title-box"><span><?php echo $title?></span></h2>
	<div class="frame-tent-right"><?php echo $item->JobsLanguage[Yii::app()->language]['content']?></div>

	<?php if($items_other):?>
	<h4 class="title-item-other"><?php echo $this->lang[$this->module->id] . ' ' . $this->lang['other'] ?></h4>
	<ul class="panel-items-other">
        <?php foreach($items_other as $value):?>
            <li><?php echo CHtml::link($value->JobsLanguage[Yii::app()->language]['title'], array($this->setUrlModule('jobs').'/'.$value->JobsCat->JobsCatLanguage[Yii::app()->language]['tag'].'/'.$value->JobsLanguage[Yii::app()->language]['tag'].'.html'), array('title'=>$value->JobsLanguage[Yii::app()->language]['title'])); ?></li>
        <?php endforeach?>
	</ul>
	
    <script type="text/javascript">
        $(document).ready(function(){
            $(".panel-items-other li:even").addClass("alt");
        });
    </script>
<?php endif?>